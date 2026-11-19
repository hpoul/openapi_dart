/// Golden tests: generates code for a set of OpenAPI specs and compares the
/// output with the files in `test/golden/expected`.
///
/// To update the golden files after an intended change to the generator, run:
///
///     UPDATE_GOLDENS=1 dart test test/golden_test.dart
///
/// and review the diff.
library;

import 'dart:io';

import 'package:openapi_code_builder/openapi_code_builder.dart';
import 'package:path/path.dart' as p;
import 'package:recase/recase.dart';
import 'package:test/test.dart';

/// Specs the generator cannot handle yet, with the reason.
const _knownFailures = <String, String>{
  'oai-api-with-examples.yaml': 'document without components',
  'oai-callback-example.yaml': 'callbacks',
};

/// Specs that use security schemes the generator does not support (oauth2).
const _ignoreSecuritySchemes = {'swagger-petstore-v3.yaml'};

final _updateGoldens = Platform.environment['UPDATE_GOLDENS'] == '1';

String _generate(File specFile) {
  final api = OpenApiCodeBuilderUtils.loadApiFromYaml(
    specFile.readAsStringSync(),
  );
  // Same naming as the build_runner builder (`OpenApiCodeBuilder`).
  final name = p.basename(specFile.path).replaceAll(RegExp(r'\.yaml$'), '');
  final outputBase = name.endsWith('.openapi') ? name : '$name.openapi';
  final baseName =
      api.info?.extensions['x-dart-name'] as String? ??
      p.basenameWithoutExtension(outputBase).pascalCase;
  final library = OpenApiLibraryGenerator(
    api,
    baseName: baseName,
    partFileName: '$outputBase.g.dart',
    freezedPartFileName: '$outputBase.freezed.dart',
    useNullSafetySyntax: true,
    ignoreSecuritySchemes: _ignoreSecuritySchemes.contains(
      p.basename(specFile.path),
    ),
  ).generate();
  return OpenApiCodeBuilderUtils.formatLibrary(
    library,
    orderDirectives: true,
    useNullSafetySyntax: true,
  );
}

String _goldenName(File specFile) {
  final name = p.basename(specFile.path).replaceAll(RegExp(r'\.yaml$'), '');
  return name.endsWith('.openapi') ? '$name.dart' : '$name.openapi.dart';
}

List<File> _yamlFiles(String dir, {String suffix = '.yaml'}) =>
    Directory(dir)
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith(suffix))
        .toList()
      ..sort((a, b) => a.path.compareTo(b.path));

void main() {
  final specs = [
    ..._yamlFiles('test/golden/specs'),
    ..._yamlFiles('example/lib/src/api', suffix: '.openapi.yaml'),
  ];
  final expectedDir = Directory('test/golden/expected');

  test('found specs', () {
    expect(specs, isNotEmpty);
  });

  for (final spec in specs) {
    final specName = p.basename(spec.path);
    final knownFailure = _knownFailures[specName];
    if (knownFailure != null) {
      test('$specName fails to generate (known: $knownFailure)', () {
        expect(
          () => _generate(spec),
          throwsA(anything),
          reason:
              'This spec generates now. Remove it from _knownFailures and '
              'run with UPDATE_GOLDENS=1 to add its golden file.',
        );
      });
      continue;
    }
    test('$specName matches golden output', () {
      final actual = _generate(spec);
      final golden = File(p.join(expectedDir.path, _goldenName(spec)));
      if (_updateGoldens) {
        golden
          ..parent.createSync(recursive: true)
          ..writeAsStringSync(actual);
        return;
      }
      expect(
        golden.existsSync(),
        isTrue,
        reason:
            'Missing golden file ${golden.path}. '
            'Run with UPDATE_GOLDENS=1 to create it.',
      );
      expect(
        actual,
        golden.readAsStringSync(),
        reason:
            'Generated code for $specName changed. If this is intended, '
            'run with UPDATE_GOLDENS=1 and review the diff.',
      );
    });
  }

  test('no stale golden files', () {
    if (_updateGoldens) {
      return;
    }
    final expectedNames = specs
        .where((s) => !_knownFailures.containsKey(p.basename(s.path)))
        .map(_goldenName)
        .toSet();
    final stale = expectedDir
        .listSync()
        .whereType<File>()
        .map((f) => p.basename(f.path))
        .where((n) => !expectedNames.contains(n))
        .toList();
    expect(stale, isEmpty, reason: 'Golden files without a spec.');
  });
}
