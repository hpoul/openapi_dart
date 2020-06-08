import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:openapi_base/openapi_base.dart';
import 'package:openapi_code_builder_example/src/api/testapi.openapi.dart';

final _logger = Logger('example_server');

Future<void> main() async {
  PrintAppender.setupLogging();
  _logger.fine('Starting Client ...');
  final requestSender = HttpRequestSender();
  final client = TestapiClient(
      Uri.parse('https://virtserver.swaggerhub.com/hpoul/Testapi/1.0.0'),
      requestSender);
  final blubb = await client.helloNameGet('Blubb');
  blubb.map(
    on200: (response) => _logger.info('Success! ${response.body.message}'),
  );
  _logger.info('Response: $blubb');
  requestSender.dispose();
}
