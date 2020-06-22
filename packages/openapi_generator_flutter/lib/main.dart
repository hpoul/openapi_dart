import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:openapi_code_builder/openapi_code_builder.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:logging/logging.dart';

final _logger = Logger('main');

void main() {
  PrintAppender.setupLogging();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OpenApiGenerator(),
    );
  }
}

class OpenApiGenerator extends StatefulWidget {
  @override
  _OpenApiGeneratorState createState() => _OpenApiGeneratorState();
}

class _OpenApiGeneratorState extends State<OpenApiGenerator> {
  final _input = TextEditingController();
  final _output = TextEditingController();

  @override
  void initState() {
    super.initState();
    rootBundle.loadString('assets/petstore.schema.yaml').then((value) {
      _input.text = value;
      _updateInput(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    final monoFont = GoogleFonts.ubuntuMono();
    return Scaffold(
      appBar: AppBar(
        title: Text('OpenAPI Generator'),
      ),
      body: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: double.infinity,
              child: TextField(
                controller: _input,
                maxLines: null,
                onChanged: (value) {
                  _updateInput(value);
                },
                style: monoFont,
              ),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Expanded(
            child: TextField(
              controller: _output,
              maxLines: null,
              enabled: false,
              style: monoFont,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _updateInput(String value) async {
    try {
      final api = OpenApiCodeBuilderUtils.loadApiFromYaml(value);
      final generator =
          OpenApiLibraryGenerator(api, 'ExampleApi', 'example.dart');
      final out = OpenApiCodeBuilderUtils.formatLibrary(generator.generate());
      _output.text = out;
      _logger.info('Updated output.');
    } catch (e, stackTrace) {
      _logger.warning('Error while generating library.', e, stackTrace);
    }
  }
}
