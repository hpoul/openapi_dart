import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:openapi_base/openapi_base.dart';
import 'package:openapi_code_builder_example/src/api/testapi.openapi.dart';

final _logger = Logger('example_server');

Future<void> main() async {
  PrintAppender.setupLogging();
  _logger.fine('Starting Server ...');
  final server = OpenApiShelfServer(
    TestApiRouter(ApiEndpointProvider.static(TestApiImpl())),
  );
  server.startServer();
}

class TestApiImpl extends TestApi {
  @override
  Future<HelloNamePutResponse> helloNamePut(HelloRequest body,
      {String name}) async {
    return HelloNamePutResponse.response200(
        HelloResponse(message: 'Hello ${body.salutation} $name'));
  }

  @override
  Future<HelloNameGetResponse> helloNameGet({String name}) async {
    _logger.info('Saying hi to $name');
    return HelloNameGetResponse.response200(
        HelloResponse(message: 'Hello $name'));
  }

  @override
  Future<UserRegisterPostResponse> userRegisterPost(RegisterRequest body) {
    return null;
  }
}
