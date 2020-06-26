import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:openapi_base/openapi_base.dart';
import 'package:openapi_base/src/server/stoppable_process.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_cookie/shelf_cookie.dart';

import 'package:logging/logging.dart';
import 'package:uri/uri.dart';

final _logger = Logger('openapi_shelf_server');

class OpenApiShelfServer {
  OpenApiShelfServer(this.router);

  final OpenApiServerRouterBase router;

  @protected
  shelf.Handler preparePipeline() => const shelf.Pipeline()
      .addMiddleware(cookieParser())
      .addMiddleware(shelf.logRequests())
      .addHandler(_handleRequestWithExceptions);

  Future<StoppableProcess> startServer({
    String address = 'localhost',
    int port = 8080,
  }) async {
    final server = await io.serve(preparePipeline(), address, port);
    _logger.info('Serving at http://${server.address.host}:${server.port}');
    return StoppableProcess((reason) async {
      _logger.info('Stopping server... ($reason)');
      await server.close();
      _logger.info('Successfully stopped server.');
    });
  }

  Future<shelf.Response> _handleRequestWithExceptions(
      shelf.Request request) async {
    try {
      return await _handleRequest(request);
    } on OpenApiResponseException catch (e, stackTrace) {
      _logger.fine('response exception during request handling', e, stackTrace);
      return shelf.Response(e.status, body: e.message);
    } catch (e, stackTrace) {
      _logger.warning('Error while handling requet.', e, stackTrace);
      rethrow;
    }
  }

  Future<shelf.Response> _handleRequest(shelf.Request request) async {
    final operation = operationFromString(request.method);
    _logger.info('handling request.');
    final url = request.url.replace(path: '/${request.url.path}');
    for (final config in router.configs) {
      _logger.finest(
          'Matching $operation to $config (${config.operation} vs. $operation)');
      if (config.operation != operation) {
        continue;
      }
      final match = config.uriParser.match(url);
      _logger.finer('Matching $url against ${config.uriParser}: '
          '$match');
      if (match == null) {
        continue;
      }
      final shelfRequest = ShelfRequest(request, match);
      final response = await config.handler(shelfRequest);
//      if (response.contentType.isJson) {
      if (response is OpenApiResponseBodyJson) {
        assert(response.contentType.isJson);
        final responseJson = response as OpenApiResponseBodyJson;
        return shelf.Response(
          response.status,
          body: responseJson.bodyJson == null
              ? null
              : json.encode(responseJson.bodyJson),
          headers: {
            HttpHeaders.contentTypeHeader: response.contentType.toString(),
          },
        );
      } else if (response is OpenApiResponseBodyString) {
        assert(response.contentType.isString);
        final responseString = response as OpenApiResponseBodyString;
//        body = response.body;
        return shelf.Response(
          response.status,
          body: responseString.body,
          headers: {
            HttpHeaders.contentTypeHeader: response.contentType.toString(),
          },
        );
      } else {
        return shelf.Response(response.status);
//        throw StateError('Invalid response $response');
      }

//      return shelf.Response.ok('Ok found. $response');
    }
    return shelf.Response.notFound('Not Found.');
  }
}

class ShelfRequest extends OpenApiRequest {
  ShelfRequest(this._request, this._match);

  final shelf.Request _request;
  final UriMatch _match;

  List<String> _wrapValue(String value) {
    if (value == null) {
      return [];
    }
    return [value];
  }

  @override
  List<String> cookieParameter(String name) {
    final cookies = _request.context['cookies'] as CookieParser;
    return _wrapValue(cookies.get(name)?.value);
  }

  @override
  List<String> headerParameter(String name) {
    return _wrapValue(_request.headers[name]);
  }

  @override
  List<String> pathParameter(String name) {
    return _wrapValue(_match.parameters[name]);
  }

  @override
  List<String> queryParameter(String name) {
    return _request.url.queryParametersAll[name];
  }

  @override
  Future<Map<String, dynamic>> readJsonBody() async {
    return json.decode(await _request.readAsString()) as Map<String, dynamic>;
  }

  @override
  Future<Map<String, List<String>>> readUrlEncodedBody() async {
    final query = await _request.readAsString();
    final map = Uri.splitQueryString(query);
    return map.map((key, value) => MapEntry(key, [value]));
  }
}
