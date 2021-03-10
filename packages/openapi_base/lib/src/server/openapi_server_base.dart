abstract class OpenApiServerBase {
  Future<StoppableProcessBase> startServer({
    String address = 'localhost',
    int port = 8080,
  });
}

abstract class StoppableProcessBase {
  Future<int> get exitCode;
  Future stop(int exitCode, {String? reason});
}
