import 'package:openapi_code_builder/openapi_code_builder.dart';
import 'package:test/test.dart';

/// Spec with top-level primitive `application/json` response bodies.
///
/// Regression test for https://github.com/hpoul/openapi_dart/pull/16 :
/// `number`, `integer` and `boolean` responses used to fall through to the
/// object branch and generate `<Body>.fromJson(await responseBodyJson())`,
/// which is broken because `responseBodyJson()` returns a `Map`.
const String _spec = '''
openapi: 3.0.0
info:
  version: 0.1.0
  title: Primitive Bodies
  x-dart-name: PrimitiveTestApi
paths:
  /count:
    get:
      operationId: getCount
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: integer
  /ratio:
    get:
      operationId: getRatio
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: number
  /flag:
    get:
      operationId: getFlag
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: boolean
  /name:
    get:
      operationId: getName
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: string
components:
  schemas: {}
''';

/// Collapse all whitespace so expectations don't depend on formatter output.
String _normalize(String source) => source.replaceAll(RegExp(r'\s+'), ' ');

void main() {
  late String generated;

  setUpAll(() {
    final api = OpenApiCodeBuilderUtils.loadApiFromYaml(_spec);
    final library = OpenApiLibraryGenerator(
      api,
      baseName: 'PrimitiveTestApi',
      partFileName: 'primitive_test_api.g.dart',
      freezedPartFileName: 'primitive_test_api.freezed.dart',
      useNullSafetySyntax: true,
      ignoreSecuritySchemes: true,
    ).generate();
    generated = _normalize(
      OpenApiCodeBuilderUtils.formatLibrary(
        library,
        orderDirectives: true,
        useNullSafetySyntax: true,
      ),
    );
  });

  group('primitive response bodies', () {
    test('integer body is cast from dynamic json', () {
      expect(generated, contains(_normalize('final int body;')));
      expect(
        generated,
        contains(
          _normalize(
            'GetCountResponse200.response200('
            ' (await response.responseBodyJsonDynamic() as int)',
          ),
        ),
      );
    });

    test('number body is decoded to double', () {
      expect(generated, contains(_normalize('final num body;')));
      expect(
        generated,
        contains(
          _normalize(
            'GetRatioResponse200.response200('
            ' (await response.responseBodyJsonDynamic() as num).toDouble()',
          ),
        ),
      );
    });

    test('boolean body is cast from dynamic json', () {
      expect(generated, contains(_normalize('final bool body;')));
      expect(
        generated,
        contains(
          _normalize(
            'GetFlagResponse200.response200('
            ' (await response.responseBodyJsonDynamic() as bool)',
          ),
        ),
      );
    });

    test('string body keeps existing decoding', () {
      expect(generated, contains(_normalize('final String body;')));
      expect(
        generated,
        contains(
          _normalize(
            'GetNameResponse200.response200('
            ' (await response.responseBodyJsonDynamic() as String)',
          ),
        ),
      );
    });

    test('no object-style fromJson parsing for primitives', () {
      expect(generated, isNot(contains('fromJson(')));
      expect(generated, isNot(contains('responseBodyJson()')));
    });
  });
}
