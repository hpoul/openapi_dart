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
  final process = await server.startServer();
  _logger.fine('startServer finished.');
  final exitCode = await process.exitCode;
  _logger.fine('exitCode from process: $exitCode');
}

class TestApiImpl extends TestApi {
  @override
  Future<HelloNamePutResponse> helloNamePut(HelloRequest body,
      {required String name}) async {
    return HelloNamePutResponse.response200(
        HelloResponse(message: 'Hello ${body.salutation} $name'));
  }

  @override
  Future<HelloNameGetResponse> helloNameGet(
      {required String name, String? salutation}) async {
    _logger.info('Saying hi to $name (salutation: $salutation)');
    return HelloNameGetResponse.response200(
        HelloResponse(message: 'Hello ${salutation ?? 'Dear'} $name'));
  }

  @override
  Future<UserRegisterPostResponse> userRegisterPost(RegisterRequest body) {
    // TODO: implement userRegisterPost
    throw UnimplementedError();
  }

  @override
  Future<HelloNameHtmlGetResponse> helloNameHtmlGet(
      {required String name}) async {
    // language=html
    return HelloNameHtmlGetResponse.response200('''<!DOCTYPE html>
<title>Hello World</title>
<body>
<h1>Hello $name!</h1>
<p>How are you?
    ''');
  }

  @override
  Future<UuidExampleMessageIdGetResponse> uuidExampleMessageIdGet(
      {required ApiUuid messageId}) async {
    return UuidExampleMessageIdGetResponse.response200(
        UuidExampleMessageIdGetResponseBody200(id: messageId));
  }
}
