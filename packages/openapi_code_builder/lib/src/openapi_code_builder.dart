import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:open_api/v3.dart';
import 'package:quiver/check.dart';
import 'package:recase/recase.dart';
import 'package:yaml/yaml.dart';

class OpenApiLibraryGenerator {
  OpenApiLibraryGenerator(this.api, this.baseName, this.partFileName);

  final APIDocument api;
  final String baseName;
  final String partFileName;

  final jsonSerializable =
      refer('JsonSerializable', 'package:json_annotation/json_annotation.dart');
  final _openApiRequest =
      refer('OpenApiRequest', 'package:openapi_base/openapi_base.dart');
  final _openApiResponse =
      refer('OpenApiResponse', 'package:openapi_base/openapi_base.dart');

  static const mediaTypeJson = 'application/json';

  final createdSchema = <APISchemaObject, Reference>{};

  final lb = LibraryBuilder();
  final routerConfig = <Expression>[];

  Library generate() {
    lb.body.add(Directive.part(partFileName));

    // create class for each schema..
    for (final schemaEntry in api.components.schemas.entries) {
      _schemaReference(schemaEntry.key, schemaEntry.value);
    }

    // Create path configs

    final c = Class((cb) {
      cb.name = baseName.pascalCase;
      cb.abstract = true;
      for (final path in api.paths.entries) {
        for (final operation in path.value.operations.entries) {
          final pathName = path.key
              .replaceAll(
                  // language=RegExp
                  RegExp(r'[{}]'),
                  '')
              .camelCase;
          final operationName = '$pathName'
              '${operation.key.pascalCase}';

          final responseClass = ClassBuilder();
          responseClass
            ..name = '${operationName.pascalCase}Response'
            ..extend = _openApiResponse
            ..constructors.add(Constructor((cb) => cb
              ..name = '_'
              ..requiredParameters.add(Parameter((pb) => pb
                ..name = 'status'
                ..toThis = true))))
            ..fields.add(Field((fb) => fb
              ..name = 'status'
              ..modifier = FieldModifier.final$
              ..type = refer('int')));
          for (final response in operation.value.responses.entries) {
            if (response.key == 'default') {
              responseClass.constructors.add(Constructor((cb) {
                cb
                  ..name = 'response'
                  ..requiredParameters.add(
                    Parameter((pb) => pb
                      ..name = 'status'
                      ..type = refer('int')),
                  )
                  ..docs.add('/// ${response.value.description}')
                  ..initializers
                      .add(refer('this').property('_')([refer('status')]).code);
              }));
            } else {
              responseClass.constructors.add(Constructor((cb) {
                cb
                  ..name = 'response${response.key}'
                  ..docs.add('/// ${response.value.description}')
                  ..initializers.add(refer('this')
                      .property('_')([literalNum(int.parse(response.key))])
                      .code);
              }));
            }
          }
          lb.body.add(responseClass.build());

          cb.methods.add(Method((mb) {
            mb
              ..name = operationName
              ..returns =
                  _referType('Future', generics: [refer(responseClass.name)]);

            final parameters = <Expression>[];

            // ignore: avoid_function_literals_in_foreach_calls
            operation.value.parameters?.forEach((param) {
              final paramType = _toDartType(operationName, param.schema);
              mb.requiredParameters.add(Parameter((pb) => pb
                ..name = param.name.camelCase
                ..type = paramType));
              final convertParameter = (Expression expression) {
                switch (param.schema.type) {
                  case APIType.string:
                    return refer('paramToString')([expression]);
                  case APIType.number:
                    break;
                  case APIType.integer:
                    return refer('paramToInt')([expression]);
                  case APIType.boolean:
                    break;
                  case APIType.array:
                    checkState(param.schema.items.type == APIType.string);
                    return expression;
                  case APIType.object:
                    return expression;
                }
              };
              switch (param.location) {
                case APIParameterLocation.query:
                  parameters.add(convertParameter(refer('request').property(
                      'queryParameter')([literalString(param.name)])));
                  break;
                case APIParameterLocation.header:
                  parameters.add(convertParameter(refer('request').property(
                      'headerParameter')([literalString(param.name)])));
                  break;
                case APIParameterLocation.path:
                  parameters.add(convertParameter(refer('request')
                      .property('pathParameter')([literalString(param.name)])));
                  break;
                case APIParameterLocation.cookie:
                  parameters.add(convertParameter(refer('request').property(
                      'cookieParameter')([literalString(param.name)])));
                  break;
              }
            });

            final body = operation.value.requestBody;
            if (body != null) {
              // TODO for now we only support application/json request body.
              final reqBody = body.content[mediaTypeJson];
//              for (final reqBody in body.content.entries) {
              if (reqBody != null) {
                print('reqBody.schema: ${reqBody.schema}');
                final reference = _schemaReference(
                    '${pathName.pascalCase}Schema', reqBody.schema);
                mb.requiredParameters.add(Parameter((pb) => pb
                  ..name = 'body'
                  ..type = reference));
                parameters.add(reference.property('fromJson')(
                    [refer('request').property('readJsonBody')([])]));
              }
            }

            _routerConfig(path.key, operation.key,
                refer('impl').property(operationName)(parameters));
          }));
        }
      }
    });
    lb.body.add(c);

    lb.body.add(Class((cb) {
      cb.name = '${baseName.pascalCase}Router';
      cb.constructors.add(Constructor((cb) => cb
        ..requiredParameters.add(Parameter((pb) => pb
          ..name = 'impl'
          ..toThis = true))));
      cb.extend = refer(
          'OpenApiServerRouterBase', 'package:openapi_base/openapi_base.dart');
      cb.fields.add(Field((fb) => fb
        ..name = 'impl'
        ..type = refer(c.name)
        ..modifier = FieldModifier.final$));
      cb.methods.add(Method((mb) => mb
        ..name = 'configure'
        ..returns = refer('void')
        ..body = Block.of(routerConfig.map((e) => e.statement))));
    }));

//       api.paths.map((key, value) => MapEntry(key, refer('ApiPathConfig').newInstance([value.])))
    return lb.build();
  }

  void _routerConfig(String path, String operation, Expression handler) {
    routerConfig.add(refer('addRoute')([
      literalString(path),
      literalString(operation),
      Method((mb) => mb
        ..modifier = MethodModifier.async
        ..requiredParameters.add(Parameter((pb) => pb
          ..name = 'request'
          ..type = _openApiRequest))
        ..body = Block.of([
          handler.awaited.returned.statement,
        ])).closure,
    ]));
  }

  Reference _schemaReference(String key, APISchemaObject schemaObject) {
    final reference = createdSchema.putIfAbsent(schemaObject, () {
      final c = _createSchemaClass(key, schemaObject);
      lb.body.add(c);

      return refer(c.name);
    });
    return reference;
  }

  Class _createSchemaClass(String key, APISchemaObject obj) {
    final properties = obj.properties?.entries ?? [];
    final fields = properties.map((e) => Field((fb) => fb
      ..docs.add('/// ${e.value.description}')
      ..name = e.key
      ..modifier = FieldModifier.final$
      ..type = _toDartType('$key${e.key.pascalCase}', e.value)));

    final c = Class(
      (cb) => cb
        ..annotations.add(jsonSerializable([]))
        ..name = key
        ..docs.add('/// ${obj.description ?? ''}')
        ..constructors.add(Constructor((cb) => cb
          ..optionalParameters.addAll(fields.map((f) => Parameter((pb) => pb
//            ..docs.addAll(f.docs)
            ..name = f.name
            ..named = true
            ..toThis = true)))))
        ..constructors.add(Constructor((cb) => cb
              ..name = 'fromJson'
              ..factory = true
              ..requiredParameters.add(Parameter((pb) => pb
                ..name = 'map'
                ..type = refer('Map<String, dynamic>')))
              ..lambda = true
              ..body = refer('_\$${key}FromJson').call([refer('map')]).code
//              ..body = Block.of([
//                InvokeExpression.newOf(
//                  refer(schemaEntry.key),
//                  [],
//                  obj.properties.map((key, value) => MapEntry(
//                      key,
//                      refer('map')
//                          .index(literalString(key))
//                          .asA(_toDartType(value.type)))),
//                  [],
//                ).returned.statement,
//              ]
//            )
            ))
        ..fields.addAll(fields)
        ..methods.add(
          Method(
            (mb) => mb
              ..name = 'toJson'
              ..returns = refer('Map<String, dynamic>')
              ..lambda = true
              ..body = refer('_\$${key}ToJson')([refer('this')]).code,
          ),
//                ..methods.add(
//                Method(
//                (mb) => mb
//        ..name = 'toJson'
//        ..returns = refer('Map<String, dynamic>')
//          ..lambda = true
//          ..body = literalMap(
//            obj.properties
//                .map((key, value) => MapEntry(key, refer(key))),
//            refer('String'),
//            refer('dynamic'),
//          ).code,
//      ),
        ),
    );
    return c;
  }

  Reference _toDartType(String parent, APISchemaObject schema) {
    switch (schema.type) {
      case APIType.string:
        return refer('String');
      case APIType.number:
        return refer('num');
      case APIType.integer:
        return refer('int');
      case APIType.boolean:
        return refer('bool');
      case APIType.array:
        final type = _toDartType(parent, schema.items);
        return _referType('List', generics: [type]);
      case APIType.object:
        return _schemaReference(parent, schema);
//        return refer('dynamic');
    }
    throw StateError('Invalid type ${schema.type}');
  }
}

class OpenApiCodeBuilder extends Builder {
  @override
  FutureOr<void> build(BuildStep buildStep) async {
    final inputId = buildStep.inputId;
//    final outputId = AssetId.resolve('./generated/${inputId.pathSegments.last}',
//            from: inputId)
//        .changeExtension('.dart');
    final outputId = inputId.changeExtension('.dart');
    final source = await buildStep.readAsString(inputId);
    checkArgument(inputId.pathSegments.last.endsWith('.openapi.yaml'));
    final inputIdBasename =
        inputId.pathSegments.last.replaceAll('.openapi.yaml', '');
    final decoded = _loadYaml(source);
//    final decoded = loadYaml(source) as Map<dynamic, dynamic>;
    final api = APIDocument.fromMap(
        Map<String, dynamic>.from(decoded.cast<String, dynamic>()));

    final l = OpenApiLibraryGenerator(
      api,
      inputIdBasename,
      outputId.changeExtension('.g.dart').pathSegments.last,
    ).generate();

    final emitter = DartEmitter(
      Allocator.simplePrefixing(),
      true, /*true*/
    );
    print(DartFormatter().format('${l.accept(emitter)}'));
    print('inputId: $inputId / outputId: $outputId');
    await buildStep.writeAsString(
        outputId,
        DartFormatter().format('// GENERATED CODE - DO NOT MODIFY BY HAND\n\n\n'
            '${l.accept(emitter)}'));
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        '.openapi.yaml': ['.openapi.dart']
      };

  Map<String, dynamic> _loadYaml(String source) {
    final dynamic tmp = loadYaml(source) as dynamic;
    return json.decode(json.encode(tmp)) as Map<String, dynamic>;
  }
}

TypeReference _referType(String name, {String url, List<Reference> generics}) =>
    TypeReference((trb) => trb
      ..symbol = name
      ..url = url
      ..types.addAll(generics));
