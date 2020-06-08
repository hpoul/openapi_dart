import 'dart:convert';
import 'dart:io';

import 'package:openapi_base/openapi_base.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_cookie/shelf_cookie.dart';

import 'package:logging/logging.dart';
import 'package:uri/uri.dart';

final _logger = Logger('openapi_shelf_server');

class OpenApiShelfServer {
  OpenApiShelfServer(this.router);

  final OpenApiServerRouterBase router;

  void startServer({int port = 8080}) {
    var handler = const shelf.Pipeline()
        .addMiddleware(cookieParser())
        .addMiddleware(shelf.logRequests())
        .addHandler(_handleRequest);

    io.serve(handler, 'localhost', port).then((server) {
      _logger.info('Serving at http://${server.address.host}:${server.port}');
    });
  }

  Future<shelf.Response> _handleRequest(shelf.Request request) async {
    final operation = operationFromString(request.method);
    _logger.info('handling request.');
    final url = request.url.replace(path: '/${request.url.path}');
    for (final config in router.configs) {
      _logger.finest('Matching $operation to $config');
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
      final body =
          response.bodyJson == null ? null : json.encode(response.bodyJson);

      return shelf.Response(response.status, body: body, headers: {
        HttpHeaders.contentTypeHeader: ContentType.json.toString()
      });
//      return shelf.Response.ok('Ok found. $response');
    }
    return shelf.Response.notFound('Not Found :-(');
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
    // TODO: implement queryParameter
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> readJsonBody() async {
    return json.decode(await _request.readAsString()) as Map<String, dynamic>;
  }
}
