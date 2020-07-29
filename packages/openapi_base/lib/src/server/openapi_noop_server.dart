import 'package:openapi_base/openapi_base.dart';
import 'package:openapi_base/src/server/openapi_server_base.dart';

/// Noop server used if no dart:io is available.
abstract class OpenApiShelfServer extends OpenApiServerBase {
  // ignore: avoid_unused_constructor_parameters
  factory OpenApiShelfServer(OpenApiServerRouterBase router) =>
      throw StateError('Unsupported');

  @override
  Future<StoppableProcessBase> startServer({
    String address = 'localhost',
    int port = 8080,
  });
}
