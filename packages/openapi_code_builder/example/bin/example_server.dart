import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:openapi_base/openapi_base.dart';
import 'package:openapi_code_builder_example/src/api/testapi.openapi.dart';

final _logger = Logger('example_server');

Future<void> main() async {
  PrintAppender.setupLogging();
  _logger.fine('Starting Server ...');
  final server = OpenApiShelfServer(TestapiRouter(TestapiImpl())..configure());
  server.startServer();
}

class TestapiImpl extends Testapi {
  @override
  Future<HelloNameGetResponse> helloNameGet(
      OpenApiRequest request, String name) async {
    _logger.info('Saying hi to $name');
    return HelloNameGetResponse.response200(
        HelloResponse(message: 'Hello $name'));
  }

  @override
  Future<UserRegisterPostResponse> userRegisterPost(
      OpenApiRequest request, RegisterRequest body) {
    return null;
  }
}
