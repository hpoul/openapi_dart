import 'dart:convert';

import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:openapi_base/openapi_base.dart';
import 'package:uri/uri.dart';

import 'package:logging/logging.dart';

final _logger = Logger('openapi_client_base');

typedef ResponseMap<T> = void Function(T response);

typedef ResponseParser<T extends OpenApiResponse> = Future<T> Function(
    OpenApiClientResponse response);

abstract class OpenApiRequestSender {
  Future<OpenApiClientResponse> sendRequest(
      Uri baseUri, OpenApiClientRequest request);
}

mixin OpenApiUrlEncodeMixin {
  @protected
  List<String> encodeString(String value) => [value];

  @protected
  List<String> encodeInt(int value) => ['$value'];

  @protected
  List<String> encodeBool(bool value) => ['$value'];
}

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
    return await parser(response);
  }
}

extension SecuritySchemeClient<T extends SecuritySchemeData>
    on SecurityScheme<T> {
  T getForClient(OpenApiClient client) {
    return client._securitySchemeData[this] as T;
  }

  void setForClient(OpenApiClient client, T data) {
    client._securitySchemeData[this] = data;
  }
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
  Map<String, dynamic> jsonBody;

  void addHeaderParameter(String name, Iterable<String> value) =>
      _addParam(paramHeader, name, value);
  void addCookieParameter(String name, Iterable<String> value) =>
      _addParam(paramCookie, name, value);
  void addPathParameter(String name, Iterable<String> value) =>
      _addParam(paramPath, name, value);
  void addQueryParameter(String name, Iterable<String> value) =>
      _addParam(paramQuery, name, value);

  void _addParam(
      Map<String, List<String>> paramMap, String name, Iterable<String> value) {
    // TODO add it, if it already exists?
    paramMap[name] = value.toList();
  }

  void setJsonBody(Map<String, dynamic> json) {
    jsonBody = json;
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

  Future<Map<String, dynamic>> responseBodyJson();
  Future<String> responseBodyString();
}

class HttpRequestSender extends OpenApiRequestSender {
  Client _client;

  @override
  Future<OpenApiClientResponse> sendRequest(
      Uri baseUri, OpenApiClientRequest request) async {
    _client ??= Client();

    final uri = request.resolveUri(baseUri);
    _logger.finest('Expanded Uri for request to $uri '
        ' (baseUri: $baseUri)');

    final req = Request(request.operation, uri);
    if (request.jsonBody != null) {
      req.body = json.encode(request.jsonBody);
    }
    request.paramHeader.forEach((key, value) {
      req.headers[key] = value?.first;
    });
    final response = await _client.send(req);
    return HttpClientResponse(await Response.fromStream(response));
  }

  void dispose() {
    _client.close();
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
  Future<String> responseBodyString() async {
    return response.body;
  }
}

abstract class HasSuccessResponse<BODY_TYPE> implements OpenApiResponse {
  BODY_TYPE requireSuccess();
}

extension HasSuccessFuture<BODY_TYPE, T extends HasSuccessResponse<BODY_TYPE>>
    on Future<T> {
  Future<BODY_TYPE> requireSuccess() => then((value) => value.requireSuccess());
}
