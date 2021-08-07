import 'package:openapi_base/src/openapi_base.dart';
import 'package:openapi_base/src/server/openapi_server_base.dart';
import 'package:openapi_base/src/util/internal_utils.dart';
import 'package:shelf/shelf.dart' as shelf;

/// Noop server used if no dart:io is available.
class OpenApiShelfServer extends OpenApiServerBase {
  factory OpenApiShelfServer(
    OpenApiServerRouterBase router, {
    shelf.Pipeline Function(shelf.Pipeline pipeline) customizePipeline =
        identity,
  }) =>
      throw StateError('Unsupported $router $customizePipeline');

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
