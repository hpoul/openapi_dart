/// Golden tests: generates code for a set of OpenAPI specs and compares the
/// output with the files in `test/golden/expected`.
///
/// To update the golden files after an intended change to the generator, run:
///
///     UPDATE_GOLDENS=1 dart test test/golden_test.dart
///
/// and review the diff. Run it from the package root (`dart test` does).
library;

import 'dart:io';

import 'package:open_api_forked/v3.dart';
import 'package:openapi_code_builder/openapi_code_builder.dart';
import 'package:path/path.dart' as p;
import 'package:recase/recase.dart';
import 'package:test/test.dart';

enum _Stage { parse, generate }

/// Specs that crash today: the stage that fails, and the reason.
///
/// The test checks that the spec still fails in exactly that stage, so a
/// change (a fix, or a crash moving elsewhere) shows up.
const _knownFailures = <String, (_Stage, String)>{
  'oai-api-with-examples.yaml': (
    _Stage.generate,
    'document without components',
  ),
  'oai-callback-example.yaml': (_Stage.parse, 'callbacks'),
};

/// Specs that use security schemes the generator does not support (oauth2).
const _ignoreSecuritySchemes = {'swagger-petstore-v3.yaml'};

final _updateGoldens = Platform.environment['UPDATE_GOLDENS'] == '1';

APIDocument _parse(File specFile) =>
    OpenApiCodeBuilderUtils.loadApiFromYaml(specFile.readAsStringSync());

String _generate(File specFile, [APIDocument? parsed]) {
  final api = parsed ?? _parse(specFile);
  // Same naming as the build_runner builder (`OpenApiCodeBuilder`).
  final name = p.basename(specFile.path).replaceAll(RegExp(r'\.yaml$'), '');
  final outputBase = name.endsWith('.openapi') ? name : '$name.openapi';
  final baseName =
      api.info!.extensions['x-dart-name'] as String? ??
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
      final (stage, reason) = knownFailure;
      test('$specName fails to ${stage.name} (known: $reason)', () {
        const fixed =
            'Remove it from _knownFailures and run with UPDATE_GOLDENS=1 '
            'to add its golden file.';
        switch (stage) {
          case _Stage.parse:
            expect(
              () => _parse(spec),
              throwsA(anything),
              reason: 'This spec parses now. $fixed',
            );
          case _Stage.generate:
            final api = _parse(spec);
            expect(
              () => _generate(spec, api),
              throwsA(anything),
              reason: 'This spec generates now. $fixed',
            );
        }
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
    if (_updateGoldens) {
      for (final name in stale) {
        File(p.join(expectedDir.path, name)).deleteSync();
      }
      return;
    }
    expect(stale, isEmpty, reason: 'Golden files without a spec.');
  });
}
