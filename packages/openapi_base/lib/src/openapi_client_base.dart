import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:openapi_base/src/openapi_base.dart';
import 'package:openapi_base/src/openapi_content_type.dart';
import 'package:uri/uri.dart';

final _logger = Logger('openapi_client_base');

typedef ResponseMap<T> = void Function(T response);

typedef ResponseParser<T extends OpenApiResponse> = Future<T> Function(
    OpenApiClientResponse response);

/// Api sender implementing the actual HTTP protocol.
/// See [HttpRequestSender].
abstract class OpenApiRequestSender {
  Future<OpenApiClientResponse> sendRequest(
      Uri baseUri, OpenApiClientRequest request);
}

mixin OpenApiUrlEncodeMixin {
  @protected
  List<String> encodeString(String? value) => value == null ? [] : [value];

  @protected
  List<String> encodeInt(int value) => encodeObject(value);

  @protected
  List<String> encodeBool(bool value) => encodeObject(value);

  List<String> encodeObject(Object? value) =>
      value == null ? [] : [value.toString()];
}

/// Base class for generated client classes for OpenAPI apis.
abstract class OpenApiClient {
  Map<SecurityScheme, SecuritySchemeData> get _securitySchemeData;

  void setAuth<U extends SecuritySchemeData, T extends SecurityScheme<U>>(
      T security, U data);
}

abstract class OpenApiClientBase
    with OpenApiUrlEncodeMixin
    implements OpenApiClient {
  Uri get baseUri;

  OpenApiRequestSender get requestSender;

  @override
  final Map<SecurityScheme, SecuritySchemeData> _securitySchemeData = {};

  @override
  void setAuth<U extends SecuritySchemeData, T extends SecurityScheme<U>>(
      T security, U data) {
    _securitySchemeData[security] = data;
  }

  Future<T> sendRequest<T extends OpenApiResponse>(OpenApiClientRequest request,
      Map<String, ResponseParser<T>> parserMap) async {
    for (final security in request.securityRequirement) {
      for (final scheme in security.schemes) {
        final data = _securitySchemeData[scheme.scheme];
        if (data == null) {
          _logger.warning('Missing security scheme data for request.'
              ' $scheme to ${request.path}');
          continue;
        }
        scheme.scheme.applyToRequest(request, data);
      }
    }
    final response = await requestSender.sendRequest(baseUri, request);
    final parser =
        parserMap[response.status.toString()] ?? parserMap['default'];
    if (parser == null) {
      throw StateError('Unexpected response from server ${response.status}');
    }
    final parsedResponse = await parser(response);
    parsedResponse.headers.addAll(response.headers);
    return parsedResponse;
  }
}

extension SecuritySchemeClient<T extends SecuritySchemeData>
    on SecurityScheme<T> {
  T? getForClient(OpenApiClient client) {
    return client._securitySchemeData[this] as T?;
  }

  void setForClient(OpenApiClient client, T data) {
    client._securitySchemeData[this] = data;
  }
}

abstract class OpenApiClientRequestBody {
  bool get isBytes => false;

  String encodeToString();

  List<int> encodeToBytes() => throw UnimplementedError();
}

class OpenApiClientRequestBodyJson extends OpenApiClientRequestBody {
  OpenApiClientRequestBodyJson(this.jsonMap);

  final Map<String, dynamic> jsonMap;

  @override
  String encodeToString() => json.encode(jsonMap);
}

class OpenApiClientRequestBodyText extends OpenApiClientRequestBody {
  OpenApiClientRequestBodyText(this.body);

  final String body;

  @override
  String encodeToString() => body;
}

class OpenApiClientRequestBodyBinary extends OpenApiClientRequestBody {
  OpenApiClientRequestBodyBinary(this.body);

  @override
  bool get isBytes => true;

  final Uint8List body;

  @override
  List<int> encodeToBytes() => body;

  @override
  String encodeToString() => throw UnimplementedError();
}

class OpenApiClientRequest {
  OpenApiClientRequest(this.operation, this.path, this.securityRequirement);

  final String operation;
  final String path;
  final List<SecurityRequirement> securityRequirement;
  final Map<String, List<String>> paramHeader = {};
  final Map<String, List<String>> paramCookie = {};
  final Map<String, List<String>> paramPath = {};
  final Map<String, List<String>> paramQuery = {};
  OpenApiClientRequestBody? body;

  void setHeader(String name, String value) => paramHeader[name] = [value];

  void addHeaderParameter(String name, Iterable<String> value) =>
      _addParam(paramHeader, name, value);

  void addCookieParameter(String name, Iterable<String> value) =>
      _addParam(paramCookie, name, value);

  void addPathParameter(String name, Iterable<String> value) =>
      _addParam(paramPath, name, value);

  void addQueryParameter(String name, Iterable<String> value) =>
      _addParam(paramQuery, name, value);

  void _addParam(Map<String, List<String>> paramMap, String name,
      Iterable<String>? value) {
    // TODO add it, if it already exists?
    if (value == null) {
      return;
    }
    paramMap[name] = value.toList();
  }

  void setBody(OpenApiClientRequestBody body) {
    this.body = body;
  }

  Uri resolveUri(Uri baseUri) {
    if (!baseUri.path.endsWith('/') && baseUri.pathSegments.isNotEmpty) {
      baseUri = baseUri.resolve(baseUri.pathSegments.last + '/');
    }

    final uriTemplate = UriTemplate(path);
    final expanded = uriTemplate.expand(paramPath);
    final expandedUri = Uri.parse(expanded.replaceFirst(RegExp(r'^/+'), ''))
        .replace(queryParameters: paramQuery.isEmpty ? null : paramQuery);

    return baseUri.resolveUri(expandedUri);
  }
}

abstract class OpenApiClientResponse {
  int get status;

  Map<String, List<String>> get headers;

  OpenApiContentType responseContentType();

  Future<Map<String, dynamic>> responseBodyJson();

  Future<String> responseBodyString();

  Future<Uint8List> responseBodyBytes();
}

/// Add a user-agent adder to the given value.
class UserAgentClient extends BaseClient {
  UserAgentClient(this.userAgent, this._inner);

  final String userAgent;
  final Client _inner;

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    request.headers['user-agent'] = userAgent;
    return _inner.send(request);
  }
}

/// Allows to customize how a Client is created.
/// For example acn be used to use [UserAgentClient] to add user agent header.
typedef ClientCreator = Client Function();

/// [OpenApiRequestSender] implementation based on package:http for
/// cross platform compatibility.
class HttpRequestSender extends OpenApiRequestSender {
  HttpRequestSender({
    ClientCreator? clientCreator,
  }) : clientCreator = clientCreator ?? defaultClientCreator;

  static var defaultClientCreator = () => Client();

  Client? _client;
  ClientCreator clientCreator;

  @override
  Future<OpenApiClientResponse> sendRequest(
      Uri baseUri, OpenApiClientRequest request) async {
    _client ??= clientCreator();

    final uri = request.resolveUri(baseUri);
    _logger.finest('Expanded Uri for request to $uri '
        ' (baseUri: $baseUri)');

    final req = Request(request.operation, uri);
    final requestBody = request.body;
    if (requestBody != null) {
      if (requestBody.isBytes) {
        req.bodyBytes = requestBody.encodeToBytes();
      } else {
        req.body = requestBody.encodeToString();
      }
    }
    request.paramHeader.forEach((key, value) {
      if (value.isNotEmpty) {
        req.headers[key] = value.first;
      }
    });
    final response = await _client!.send(req);
    return HttpClientResponse(await Response.fromStream(response));
  }

  void dispose() {
    _client!.close();
    _client = null;
  }
}

class HttpClientResponse extends OpenApiClientResponse {
  HttpClientResponse(this.response);

  final Response response;

  @override
  Future<Map<String, dynamic>> responseBodyJson() async {
    return json.decode(response.body) as Map<String, dynamic>;
  }

  @override
  int get status => response.statusCode;

  @override
  late final Map<String, List<String>> headers =
      response.headers.map((key, value) => MapEntry(key, [value]));

  @override
  OpenApiContentType responseContentType() {
    final contentTypeString = response.headers['content-type']!;
    return OpenApiContentType.parse(contentTypeString);
  }

  @override
  Future<String> responseBodyString() async {
    return response.body;
  }

  @override
  Future<Uint8List> responseBodyBytes() async {
    return response.bodyBytes;
  }
}

abstract class HasSuccessResponse<BODY_TYPE> implements OpenApiResponse {
  BODY_TYPE requireSuccess();
}

extension HasSuccessFuture<BODY_TYPE> on Future<HasSuccessResponse<BODY_TYPE>> {
  Future<BODY_TYPE> requireSuccess() => then((value) => value.requireSuccess());
}
