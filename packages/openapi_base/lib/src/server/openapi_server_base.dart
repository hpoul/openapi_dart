import 'dart:io';

abstract class OpenApiServerBase {
  Future<StoppableProcessBase> startServer({
    String address = 'localhost',
    int port = 8080,
    SecurityContext? securityContext,
    int? backlog,
    bool shared = false,
    String? poweredByHeader = 'Dart with package:shelf',
  });
}

abstract class StoppableProcessBase {
  Future<int> get exitCode;
  Future<void> stop(int exitCode, {String? reason});
}
