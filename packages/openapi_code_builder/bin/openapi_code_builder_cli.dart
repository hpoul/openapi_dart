import 'dart:io';

import 'package:logging_appenders/logging_appenders.dart';
import 'package:openapi_code_builder/openapi_code_builder.dart';
import 'package:path/path.dart' as path;
import 'package:recase/recase.dart';

Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    print('Usage: ${Platform.executable} <file>');
    exit(1);
  }
  PrintAppender.setupLogging();
  final fileName = args[0];
  final file = File(fileName);
  final source = await file.readAsString();
  final api = OpenApiCodeBuilderUtils.loadApiFromYaml(source);
  final baseName = path.basenameWithoutExtension(fileName).pascalCase;

  final library = OpenApiLibraryGenerator(
    api,
    baseName: baseName,
    partFileName: '${path.basenameWithoutExtension(fileName)}.g.dart',
    useNullSafetySyntax: true,
    ignoreSecuritySchemes: true,
  ).generate();
  final libraryOutput = OpenApiCodeBuilderUtils.formatLibrary(
    library,
    orderDirectives: true,
    useNullSafetySyntax: true,
  );
  print(libraryOutput);
}
