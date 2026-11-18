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

/// Spec with non-object `application/json` bodies: arrays of every item kind,
/// and a nullable primitive.
///
/// Regression test for https://github.com/hpoul/openapi_dart/pull/18 : array
/// items used to be decoded with `<Item>.fromJson(item as Map)` whatever
/// their type, and the server sent `{}` for every array body.
const String _jsonValueSpec = '''
openapi: 3.0.0
info:
  version: 0.1.0
  title: Json Value Bodies
  x-dart-name: JsonValueTestApi
paths:
  /names:
    get:
      operationId: getNames
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: array
                items:
                  type: string
  /colors:
    get:
      operationId: getColors
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: array
                items:
                  type: string
                  enum: [red, green]
    post:
      operationId: postColors
      requestBody:
        content:
          application/json:
            schema:
              type: array
              items:
                type: string
                enum: [red, green]
      responses:
        '200':
          description: OK
  /dates:
    get:
      operationId: getDates
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: array
                items:
                  type: string
                  format: date-time
  /sparse:
    get:
      operationId: getSparse
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: array
                items:
                  type: integer
                  nullable: true
  /matrix:
    get:
      operationId: getMatrix
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: array
                items:
                  type: array
                  items:
                    type: number
  /items:
    get:
      operationId: getItems
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: array
                items:
                  \$ref: '#/components/schemas/Item'
  /maybe:
    get:
      operationId: getMaybe
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: string
                format: date-time
                nullable: true
components:
  schemas:
    Item:
      type: object
      properties:
        name:
          type: string
    Bag:
      type: object
      additionalProperties:
        type: integer
        nullable: true
''';

/// Inline enum bodies at two status codes of one operation, which used to
/// share one enum.
const String _enumBodiesSpec = '''
openapi: 3.0.0
info:
  version: 0.1.0
  title: Enum Bodies
  x-dart-name: EnumBodiesTestApi
paths:
  /status:
    get:
      operationId: getStatus
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: string
                enum: [ok, done]
        '404':
          description: Not found
          content:
            application/json:
              schema:
                type: string
                enum: [missing, gone]
components:
  schemas: {}
''';

/// A json array body without the required `items`.
const String _arrayWithoutItemsSpec = '''
openapi: 3.0.0
info:
  version: 0.1.0
  title: No Items
  x-dart-name: NoItemsTestApi
paths:
  /list:
    get:
      operationId: getList
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: array
components:
  schemas: {}
''';

/// A json body of `format: binary` strings, which has no json encoding.
const String _binarySpec = '''
openapi: 3.0.0
info:
  version: 0.1.0
  title: Binary Items
  x-dart-name: BinaryTestApi
paths:
  /files:
    get:
      operationId: getFiles
      responses:
        '200':
          description: OK
          content:
            application/json:
              schema:
                type: array
                items:
                  type: string
                  format: binary
components:
  schemas: {}
''';

/// Collapse all whitespace so expectations don't depend on formatter output.
String _normalize(String source) => source.replaceAll(RegExp(r'\s+'), ' ');

/// Generates the library for [spec], with normalized whitespace.
String _generate(String spec) {
  final api = OpenApiCodeBuilderUtils.loadApiFromYaml(spec);
  final library = OpenApiLibraryGenerator(
    api,
    baseName: 'TestApi',
    partFileName: 'test_api.g.dart',
    freezedPartFileName: 'test_api.freezed.dart',
    useNullSafetySyntax: true,
    ignoreSecuritySchemes: true,
  ).generate();
  return _normalize(
    OpenApiCodeBuilderUtils.formatLibrary(
      library,
      orderDirectives: true,
      useNullSafetySyntax: true,
    ),
  );
}

void main() {
  late String generated;

  setUpAll(() {
    generated = _generate(_spec);
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

    test('number body is cast from dynamic json', () {
      expect(generated, contains(_normalize('final num body;')));
      expect(
        generated,
        contains(
          _normalize(
            'GetRatioResponse200.response200('
            ' (await response.responseBodyJsonDynamic() as num)',
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

    test('server sends the primitive itself', () {
      expect(
        generated,
        contains(
          _normalize(
            'class GetCountResponse200 extends GetCountResponse'
            ' implements OpenApiResponseBodyJsonValue {',
          ),
        ),
      );
      expect(
        generated,
        contains(
          _normalize(
            'GetCountResponse200.response200(this.body)'
            ' : status = 200, bodyJsonValue = body;',
          ),
        ),
      );
      expect(generated, isNot(contains('bodyJson =')));
    });
  });

  group('json value bodies', () {
    late String generated;

    setUpAll(() {
      generated = _generate(_jsonValueSpec);
    });

    test('primitive items are cast', () {
      expect(generated, contains(_normalize('final List<String> body;')));
      expect(
        generated,
        contains(
          _normalize(
            'GetNamesResponse200.response200('
            ' (await response.responseBodyJsonDynamic() as List<dynamic>)'
            ' .map((e) => (e as String)) .toList(),',
          ),
        ),
      );
    });

    test('enum items are decoded by name and encoded as json values', () {
      expect(
        generated,
        contains(_normalize('final List<GetColorsResponseBody200> body;')),
      );
      expect(
        generated,
        contains(
          _normalize(
            '.map((e) => GetColorsResponseBody200Ext.fromName((e as String)))',
          ),
        ),
      );
      expect(
        generated,
        contains(
          _normalize('bodyJsonValue = body.map((e) => e.jsonValue).toList();'),
        ),
      );
    });

    test('date-time items are parsed and encoded as iso 8601', () {
      expect(generated, contains(_normalize('final List<DateTime> body;')));
      expect(
        generated,
        contains(_normalize('.map((e) => DateTime.parse((e as String)))')),
      );
      expect(
        generated,
        contains(
          _normalize(
            'bodyJsonValue = body.map((e) => e.toIso8601String()).toList();',
          ),
        ),
      );
    });

    test('nullable items keep nulls', () {
      expect(generated, contains(_normalize('final List<int?> body;')));
      expect(
        generated,
        contains(_normalize('.map((e) => e == null ? null : (e as int))')),
      );
    });

    test('nested arrays are decoded recursively', () {
      expect(generated, contains(_normalize('final List<List<num>> body;')));
      expect(
        generated,
        contains(
          _normalize(
            '.map( (e) => (e as List<dynamic>).map((e) => (e as num)).toList(), )',
          ),
        ),
      );
    });

    test('object items use fromJson', () {
      expect(generated, contains(_normalize('final List<Item> body;')));
      expect(
        generated,
        contains(
          _normalize('.map((e) => Item.fromJson((e as Map<String, dynamic>)))'),
        ),
      );
    });

    test('nullable primitive body is null checked once', () {
      expect(generated, contains(_normalize('final DateTime? body;')));
      expect(
        generated,
        contains(
          _normalize(
            '((v) => v == null ? null : DateTime.parse((v as String)))('
            ' await response.responseBodyJsonDynamic(), )',
          ),
        ),
      );
      expect(
        generated,
        contains(_normalize('bodyJsonValue = body?.toIso8601String();')),
      );
    });

    test('server sends json values as the body', () {
      expect(
        generated,
        contains(
          _normalize(
            'class GetNamesResponse200 extends GetNamesResponse'
            ' implements OpenApiResponseBodyJsonValue {',
          ),
        ),
      );
      expect(
        generated,
        contains(
          _normalize(
            'GetNamesResponse200.response200(this.body)'
            ' : status = 200, bodyJsonValue = body;',
          ),
        ),
      );
      expect(generated, isNot(contains('bodyJson =')));
    });

    test('nullable additionalProperties are typed and decoded nullable', () {
      expect(
        generated,
        contains(_normalize('final Map<String, int?> _additionalProperties')),
      );
      expect(
        generated,
        contains(
          _normalize(
            'MapEntry( e.key,'
            ' ((v) => v == null ? null : (v as int))(e.value), )',
          ),
        ),
      );
    });

    test('enum array request bodies are decoded on the server', () {
      expect(
        generated,
        contains(
          _normalize(
            'impl.postColors( (await request.readJsonBodyDynamic()'
            ' as List<dynamic>)'
            ' .map((e) => PostColorsSchemaExt.fromName((e as String)))'
            ' .toList(), )',
          ),
        ),
      );
    });
  });

  test('binary items in json bodies fail generation', () {
    expect(
      () => _generate(_binarySpec),
      throwsA(
        isA<UnsupportedError>().having(
          (e) => e.message,
          'message',
          contains('format: binary'),
        ),
      ),
    );
  });

  test('array without items fails generation naming the body', () {
    expect(
      () => _generate(_arrayWithoutItemsSpec),
      throwsA(
        isA<ArgumentError>().having(
          (e) => e.message,
          'message',
          'GetListResponseBody200: `type: array` requires `items`.',
        ),
      ),
    );
  });

  test('inline enum bodies of different status codes get own enums', () {
    final generated = _generate(_enumBodiesSpec);
    // The first keeps the name it always had.
    expect(generated, contains(_normalize('enum GetStatusResponseBody {')));
    expect(generated, contains(_normalize('enum GetStatusResponseBody404 {')));
    expect(
      generated,
      contains(_normalize('final GetStatusResponseBody404 body;')),
    );
    expect(
      generated,
      contains(_normalize('GetStatusResponseBody404Ext.fromName(')),
    );
  });
}
