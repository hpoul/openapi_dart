import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:open_api/v3.dart';
import 'package:recase/recase.dart';
import 'package:yaml/yaml.dart';

class OpenApiLibraryGenerator {
  OpenApiLibraryGenerator(this.api, this.baseName, this.partFileName);

  final APIDocument api;
  final String baseName;
  final String partFileName;

  final jsonSerializable =
      refer('JsonSerializable', 'package:json_annotation/json_annotation.dart');

  final createdSchema = <APISchemaObject, Reference>{};

  final lb = LibraryBuilder();

  Library generate() {
    lb.body.add(Directive.part(partFileName));

    // create class for each schema..
    for (final schemaEntry in api.components.schemas.entries) {
      _schemaReference(schemaEntry.key, schemaEntry.value);
    }

    // Create path configs
    final responseClass = ClassBuilder();
    responseClass
      ..name = '${baseName.pascalCase}Response'
      ..constructors.add(Constructor((cb) => cb
        ..name = '_'
        ..requiredParameters.add(Parameter((pb) => pb
          ..name = 'status'
          ..toThis = true))))
      ..fields.add(Field((fb) => fb
        ..name = 'status'
        ..modifier = FieldModifier.final$
        ..type = refer('int')));

    final c = Class((cb) {
      cb.name = baseName.pascalCase;
      cb.abstract = true;
      for (final path in api.paths.entries) {
        for (final operation in path.value.operations.entries) {
          for (final response in operation.value.responses.entries) {
            responseClass.constructors.add(Constructor((cb) {
              cb..name = 'response${response.key}';
              cb.initializers.add(refer('this')
                  .property('_')([literalNum(int.parse(response.key))])
                  .code);
            }));
          }
          cb.methods.add(Method((mb) {
            mb
              ..name = '${path.key.camelCase}${operation.key.pascalCase}'
              ..returns =
                  _referType('Future', generics: [refer(responseClass.name)]);
            final body = operation.value.requestBody;
            if (body != null) {
              for (final reqBody in body.content.entries) {
                print('reqBody.schema: ${reqBody.value.schema}');
                final reference = _schemaReference(
                    '${path.key.pascalCase}Schema', reqBody.value.schema);
                mb.requiredParameters.add(Parameter((pb) => pb
                  ..name = 'body'
                  ..type = reference));
              }
            }
          }));
        }
      }
    });
    lb.body.add(c);
    lb.body.add(responseClass.build());

//       api.paths.map((key, value) => MapEntry(key, refer('ApiPathConfig').newInstance([value.])))
    return lb.build();
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
    final fields = obj.properties.entries.map((e) => Field((fb) => fb
      ..docs.add('/// ${e.value.description}')
      ..name = e.key
      ..modifier = FieldModifier.final$
      ..type = _toDartType(e.value.type)));

    final c = Class(
      (cb) => cb
        ..annotations.add(jsonSerializable([]))
        ..name = key
        ..docs.add('/// ${obj.description ?? ''}')
        ..constructors.add(Constructor((cb) => cb
          ..optionalParameters.addAll(fields.map((f) => Parameter((pb) => pb
            ..docs.addAll(f.docs)
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

  Reference _toDartType(APIType type) {
    switch (type) {
      case APIType.string:
        return refer('String');
      case APIType.number:
        return refer('num');
      case APIType.integer:
        return refer('int');
      case APIType.boolean:
        return refer('bool');
      case APIType.array:
        return refer('List');
      case APIType.object:
        return refer('dynamic');
    }
    throw StateError('Invalid type $type');
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
    assert(inputId.pathSegments.last.endsWith('.openapi.dart'));
    final inputIdBasename =
        inputId.pathSegments.last.replaceAll('.openapi.dart', '');
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
        outputId, DartFormatter().format('${l.accept(emitter)}'));
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
