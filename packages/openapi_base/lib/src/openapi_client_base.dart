import 'dart:convert';

import 'package:http/http.dart';
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

abstract class OpenApiClientBase {
  Uri get baseUri;
  OpenApiRequestSender get requestSender;

  Future<T> sendRequest<T extends OpenApiResponse>(OpenApiClientRequest request,
      Map<String, ResponseParser<T>> parserMap) async {
    final response = await requestSender.sendRequest(baseUri, request);
    final parser =
        parserMap[response.status.toString()] ?? parserMap['default'];
    if (parser == null) {
      throw StateError('Unexpected response from server ${response.status}');
    }
    return await parser(response);
  }

  List<String> encodeString(String value) => [value];
  List<String> encodeInt(int value) => ['$value'];
  List<String> encodeBool(bool value) => ['$value'];
}

class OpenApiClientRequest {
  OpenApiClientRequest(this.operation, this.path);

  final String operation;
  final String path;
  final Map<String, List<String>> paramHeader = {};
  final Map<String, List<String>> paramCookie = {};
  final Map<String, List<String>> paramPath = {};
  final Map<String, List<String>> paramQuery = {};
  Map<String, dynamic> jsonBody;

  void addHeaderParameter(String name, List<String> value) =>
      _addParam(paramHeader, name, value);
  void addCookieParameter(String name, List<String> value) =>
      _addParam(paramCookie, name, value);
  void addPathParameter(String name, List<String> value) =>
      _addParam(paramPath, name, value);
  void addQueryParameter(String name, List<String> value) =>
      _addParam(paramQuery, name, value);

  void _addParam(
      Map<String, List<String>> paramMap, String name, List<String> value) {
    // TODO add it, if it already exists?
    paramMap[name] = value;
  }

  void setJsonBody(Map<String, dynamic> json) {
    jsonBody = json;
  }
}

abstract class OpenApiClientResponse {
  int get status;

  Future<Map<String, dynamic>> responseBodyJson();
}

class HttpRequestSender extends OpenApiRequestSender {
  Client _client;

  @override
  Future<OpenApiClientResponse> sendRequest(
      Uri baseUri, OpenApiClientRequest request) async {
    _client ??= Client();

    if (!baseUri.path.endsWith('/')) {
      baseUri = baseUri.resolve(baseUri.pathSegments.last + '/');
    }

    final uriTemplate = UriTemplate(request.path);
    final expanded = uriTemplate.expand(request.paramPath);
    final expandedUri = Uri.parse(expanded.replaceFirst(RegExp(r'^/+'), ''));
    final uri = baseUri.resolveUri(expandedUri);

    _logger.finest('Expanded Uri: $expandedUri resolved: $uri'
        ' (baseUri: $baseUri)');

    final req = Request(request.operation, uri);
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
}
