import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:openapi_code_builder/openapi_code_builder.dart';
import 'package:url_launcher/url_launcher_string.dart';

final _logger = Logger('main');

void main() {
  PrintAppender.setupLogging();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenApi Flutter Server Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const OpenApiGenerator(),
    );
  }
}

class OpenApiGenerator extends StatefulWidget {
  const OpenApiGenerator({super.key});

  @override
  State<OpenApiGenerator> createState() => _OpenApiGeneratorState();
}

class _OpenApiGeneratorState extends State<OpenApiGenerator> {
  final _input = TextEditingController();
  final _output = TextEditingController();

  final monoFont = GoogleFonts.ubuntuMono();
  static const projectUrl = String.fromEnvironment('PROJECT_URL',
      defaultValue: 'https://github.com/hpoul/openapi_dart');

  String? _error;

  @override
  void initState() {
    super.initState();
    rootBundle.loadString('assets/petstore.schema.yaml').then((value) {
      _input.text = value;
      _updateInput(value);
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('OpenAPI Generator'),
        ),
        body: Column(
          children: [
            Markdown(
              onTapLink: (text, href, title) {
                launchUrlString(href!);
              },
              shrinkWrap: true,
              data: '''
# OpenAPI Generator

Generates dart code for client AND server applications from OpenAPI 3.0 
yaml schema file. Typically this is used in a project using
build_runner. This is just a quick example what kind of code is generated :-)

See [GitHub project for details]($projectUrl).
          ''',
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(_error ?? 'Status: OK',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: _error == null ? Colors.green : Colors.red)),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  CodeWidget(
                    labelText: 'OpenApi 3.0 yaml',
                    controller: _input,
                    onChanged: _updateInput,
                    style: monoFont,
                  ),
                  Container(
                    width: 4,
                    height: double.infinity,
                    color: Theme.of(context).primaryColor,
                  ),
                  CodeWidget(
                    labelText: 'Generated Dart Client/Server stubs',
                    controller: _output,
                    onChanged: _updateInput,
                    style: monoFont,
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Future<void> _updateInput(String value) async {
    try {
      final api = OpenApiCodeBuilderUtils.loadApiFromYaml(value);
      final generator = OpenApiLibraryGenerator(
        api,
        baseName: 'ExampleApi',
        partFileName: 'example.dart',
      );
      final out = OpenApiCodeBuilderUtils.formatLibrary(generator.generate(),
          useNullSafetySyntax: true);
      _output.text = out;
      _logger.info('Updated output.');
      setState(() => _error = null);
    } catch (e, stackTrace) {
      setState(() => _error = 'Error while generating library.\n$e');

      _logger.warning('Error while generating library.', e, stackTrace);
    }
  }
}

class CodeWidget extends StatelessWidget {
  const CodeWidget({
    Key? key,
    required this.controller,
    required this.onChanged,
    this.style,
    this.labelText,
  }) : super(key: key);

  final TextEditingController controller;
  final void Function(String changed) onChanged;
  final TextStyle? style;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            labelText: labelText,
            border: const OutlineInputBorder(),
          ),
          enabled: true,
          controller: controller,
          maxLines: null,
          onChanged: onChanged,
          style: style,
        ),
      ),
    );
  }
}
