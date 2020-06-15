import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:open_api/v3.dart';
import 'package:quiver/check.dart';
import 'package:recase/recase.dart';
import 'package:yaml/yaml.dart';

import 'package:logging/logging.dart';

final _logger = Logger('openapi_code_builder');

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
  final _openApiClientBase =
      refer('OpenApiClientBase', 'package:openapi_base/openapi_base.dart');
  final _openApiClientRequest =
      refer('OpenApiClientRequest', 'package:openapi_base/openapi_base.dart');
  final _openApiClientResponse =
      refer('OpenApiClientResponse', 'package:openapi_base/openapi_base.dart');
  final _openApiRequestSender =
      refer('OpenApiRequestSender', 'package:openapi_base/openapi_base.dart');
  final _responseMapType =
      refer('ResponseMap', 'package:openapi_base/openapi_base.dart');
  final _required = refer('required', 'package:meta/meta.dart');
  final _override = refer('override');

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
    final clientInterface = ClassBuilder()
      ..name = '${baseName.pascalCase}Client'
      ..abstract = true;
    final fields = [
      MapEntry('baseUri', refer('Uri')),
      MapEntry('requestSender', _openApiRequestSender),
    ];
    final clientClass = ClassBuilder()
      ..name = '_${baseName.pascalCase}ClientImpl'
      ..extend = _openApiClientBase
      ..implements.add(refer(clientInterface.name))
      ..constructors.add(Constructor(
        (cb) => cb
          ..name = '_'
          ..requiredParameters.addAll(fields.map((f) => Parameter((pb) => pb
            ..name = f.key
            ..toThis = true))),
      ))
      ..fields.addAll(fields.map((f) => Field((fb) => fb
        ..name = f.key
        ..type = f.value
        ..annotations.add(_override)
        ..modifier = FieldModifier.final$)));
    clientInterface.constructors.add(Constructor((cb) => cb
      ..factory = true
      ..requiredParameters.addAll(fields.map((f) => Parameter((pb) => pb
        ..name = f.key
        ..type = f.value)))
      ..body = refer(clientClass.name)
          .newInstanceNamed('_', fields.map((f) => refer(f.key)))
          .code));
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
            ..abstract = true
            ..extend = _openApiResponse
            ..constructors.add(Constructor());
//            ..constructors.add(Constructor((cb) => cb
//              ..name = '_'
//              ..requiredParameters.add(Parameter((pb) => pb
//                ..name = 'status'
//                ..toThis = true))))
          final mapMethod = MethodBuilder()
            ..name = 'map'
            ..returns = refer('void');
          final mapCode = <Code>[];
          Reference successResponseType;
          final clientResponseParse = <String, Expression>{};
          for (final response in operation.value.responses.entries) {
            final statusAsParameter = response.key == 'default';
            final codeName = response.key.pascalCase;
            final responseCodeClass = ClassBuilder()
              ..extend = refer(responseClass.name)
              ..name = '${responseClass.name}$codeName'
              ..fields.add(Field((fb) => fb
                ..name = 'status'
                ..annotations.add(_override)
                ..modifier = FieldModifier.final$
                ..type = refer('int')));
            mapMethod.optionalParameters.add(Parameter((pb) => pb
              ..name = 'on$codeName'
              ..annotations.add(_required)
              ..named = true
              ..type =
                  _responseMapType.addGenerics(refer(responseCodeClass.name))));
            if (mapCode.isNotEmpty) {
              mapCode.add(const Code(' else '));
            }
            mapCode.add(const Code('if (this is '));
            mapCode.add(refer(responseCodeClass.name).code);
            mapCode.add(const Code(') {'));
            mapCode.add(refer('on$codeName')(
                [refer('this').asA(refer(responseCodeClass.name))]).statement);
            mapCode.add(const Code('}'));
            final clientResponseParseParams = <Expression>[];
            final constructor = Constructor((cb) {
              cb
                ..name = 'response$codeName'
                ..docs.add('/// ${response.value.description}');

              refer(cb.name);
              if (statusAsParameter) {
                cb
                  ..requiredParameters.add(
                    Parameter((pb) => pb
                      ..name = 'status'
                      ..type = refer('int')),
                  )
                  ..initializers
                      .add(refer('status').assign(refer('status')).code);
                clientResponseParseParams
                    .add(refer('response').property('status'));
              } else {
                cb.initializers.add(refer('status')
                    .assign(literalNum(int.parse(response.key)))
                    .code);
              }
              final content = (response.value.content ?? {})[mediaTypeJson];
              if (content != null) {
                final bodyType = _schemaReference(
                    '${responseClass.name}Body$codeName', content.schema);
                if (response.key.startsWith('2') ||
                    (response.key == 'default' &&
                        successResponseType == null)) {
                  successResponseType = bodyType;
                }
                responseCodeClass.fields.add(Field((fb) => fb
                  ..name = 'body'
                  ..type = bodyType
                  ..modifier = FieldModifier.final$));
                cb.requiredParameters.add(Parameter((pb) => pb
                  ..name = 'body'
                  ..type = bodyType
                  ..toThis = true));
                cb.body = Block.of([
                  refer('bodyJson')
                      .assign(refer('body').property('toJson')([]))
                      .statement
                ]);
                clientResponseParseParams.add(bodyType.newInstanceNamed(
                    'fromJson', [
                  refer('response').property('responseBodyJson')([]).awaited
                ]));
              }
            });

            responseCodeClass.constructors.add((constructor.toBuilder()
                  ..requiredParameters.map((pb) => (pb.toBuilder()
                        ..type = pb.toThis ? null : pb.type)
                      .build()))
                .build());
            responseClass.constructors.add((constructor.toBuilder()
                  ..factory = true
                  ..initializers.clear()
                  ..requiredParameters
                      .map((pb) => (pb.toBuilder()..toThis = false).build())
                  ..body = refer(responseCodeClass.name)
                      .newInstanceNamed(
                          constructor.name,
                          constructor.requiredParameters
                              .map((e) => refer(e.name))
                              .toList())
                      .code)
                .build());
            clientResponseParse[response.key] = Method((mb) => mb
              ..modifier = MethodModifier.async
              ..requiredParameters.add(Parameter((pb) => pb
                ..name = 'response'
                ..type = _openApiClientResponse))
              ..body = refer(responseCodeClass.name)
                  .newInstanceNamed(constructor.name, clientResponseParseParams)
                  .code).closure;
            lb.body.add(responseCodeClass.build());
          }
          if (mapCode.isNotEmpty) {
            mapCode.add(const Code('else {'));
            mapCode.add(const Code(
                r'''  throw StateError('Invalid instance type $this');'''));
            mapCode.add(const Code('}'));
          }
          mapMethod.body = Block.of(mapCode);
          responseClass.methods.add(mapMethod.build());
          lb.body.add(responseClass.build());

          final clientMethod = MethodBuilder()
            ..name = operationName
            ..addDartDoc(operation.value.summary)
            ..addDartDoc(operation.value.description)
            ..docs.add('/// ${operation.key}: ${path.key}')
            ..docs.add('///')
            ..returns =
                _referType('Future', generics: [refer(responseClass.name)])
            ..modifier = MethodModifier.async;
          final clientCode = <Code>[
            _openApiClientRequest
                .newInstance([
                  literalString(operation.key),
                  literalString(path.key),
                ])
                .assignFinal('request')
                .statement,
          ];

          cb.methods.add(Method((mb) {
            mb
              ..name = operationName
              ..addDartDoc(operation.value.summary)
              ..addDartDoc(operation.value.description)
              ..docs.add('/// ${operation.key}: ${path.key}')
              ..returns =
                  _referType('Future', generics: [refer(responseClass.name)]);

            final parameters = <Expression>[];

            mb.requiredParameters.add(Parameter((pb) => pb
              ..name = 'request'
              ..type = _openApiRequest));
            parameters.add(refer('request'));

            // ignore: avoid_function_literals_in_foreach_calls
            final allParameters = [
              ...?path.value.parameters,
              ...?operation.value.parameters
            ];
            for (final param in allParameters) {
              final paramType = _toDartType(operationName, param.schema);
              final paramName = param.name.camelCase;
              if (param.description != null) {
                clientMethod.docs
                    .add('/// * [$paramName]: ${param.description}');
              }
              final p = Parameter((pb) => pb
                ..name = paramName
                ..type = paramType
                ..named = true);
              mb.requiredParameters.add(p);
              if (param.isRequired) {
                clientMethod.requiredParameters.add(p);
              } else {
                clientMethod.optionalParameters.add(p);
              }
              final decodeParameter = (Expression expression) {
                switch (param.schema.type) {
                  case APIType.string:
                    return refer('paramToString')([expression]);
                  case APIType.number:
                    break;
                  case APIType.integer:
                    return refer('paramToInt')([expression]);
                  case APIType.boolean:
                    return refer('paramToBool')([expression]);
                  case APIType.array:
                    checkState(param.schema.items.type == APIType.string);
                    return expression;
                  case APIType.object:
                    return expression;
                }
                throw StateError('Invalid schema type ${param.schema.type}}');
              };
              final encodeParameter = (Expression expression) {
                switch (param.schema.type) {
                  case APIType.string:
                    return refer('encodeString')([expression]);
                  case APIType.number:
                    break;
                  case APIType.integer:
                    return refer('encodeInt')([expression]);
                  case APIType.boolean:
                    return refer('encodeBool')([expression]);
                  case APIType.array:
                    checkState(param.schema.items.type == APIType.string);
                    return expression;
                  case APIType.object:
                    return expression;
                }
                throw StateError('Invalid schema type ${param.schema.type}}');
              };
              switch (param.location) {
                case APIParameterLocation.query:
                  parameters.add(decodeParameter(refer('request').property(
                      'queryParameter')([literalString(param.name)])));
                  clientCode.add(refer('request')
                      .property('addQueryParameter')([
                        literalString(param.name),
                        encodeParameter(refer(paramName)),
                      ])
                      .statement);
                  break;
                case APIParameterLocation.header:
                  parameters.add(decodeParameter(refer('request').property(
                      'headerParameter')([literalString(param.name)])));
                  clientCode.add(refer('request')
                      .property('addHeaderParameter')([
                        literalString(param.name),
                        encodeParameter(refer(paramName)),
                      ])
                      .statement);
                  break;
                case APIParameterLocation.path:
                  parameters.add(decodeParameter(refer('request')
                      .property('pathParameter')([literalString(param.name)])));
                  clientCode.add(refer('request')
                      .property('addPathParameter')([
                        literalString(param.name),
                        encodeParameter(refer(paramName)),
                      ])
                      .statement);
                  break;
                case APIParameterLocation.cookie:
                  parameters.add(decodeParameter(refer('request').property(
                      'cookieParameter')([literalString(param.name)])));
                  clientCode.add(refer('req')
                      .property('addCookieParameter')([
                        literalString(param.name),
                        encodeParameter(refer(paramName)),
                      ])
                      .statement);
                  break;
              }
            }

            final body = operation.value.requestBody;
            if (body != null) {
              // TODO for now we only support application/json request body.
              final reqBody = body.content[mediaTypeJson];
//              for (final reqBody in body.content.entries) {
              if (reqBody != null) {
                _logger.finer('reqBody.schema: ${reqBody.schema}');
                final reference = _schemaReference(
                    '${pathName.pascalCase}Schema', reqBody.schema);

                mb.requiredParameters.add(Parameter((pb) => pb
                  ..name = 'body'
                  ..type = reference));
                parameters.add(reference.property('fromJson')(
                  [
                    refer('request').property('readJsonBody')([]).awaited,
                  ],
                ));
                clientMethod.requiredParameters.add(Parameter((pb) => pb
                  ..name = 'body'
                  ..type = reference));
                clientCode.add(refer('request')
                    .property('setJsonBody')([
                      refer('body').property('toJson')(
                          []) /*.asA(_referType('Map',
                          generics: [refer('String'), refer('dynamic')]))*/
                    ])
                    .statement);
              }
            }

            _routerConfig(path.key, operation.key,
                refer('impl').property(operationName)(parameters));
          }));

          clientCode.add(refer('sendRequest')(
                  [refer('request'), literalMap(clientResponseParse)])
              .awaited
              .returned
              .statement);

          clientMethod.body = Block.of(clientCode);
          clientClass.methods
              .add((clientMethod..annotations.add(_override)).build());
          clientInterface.methods.add((clientMethod.build().toBuilder()
                ..annotations.clear()
                ..body = null)
              .build());
        }
      }
    });
    lb.body.add(c);
    lb.body.add(clientInterface.build());
    lb.body.add(clientClass.build());

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

  String _classNameForComponent(String componentName) {
    return componentName.pascalCase;
  }

  Reference _schemaReference(String key, APISchemaObject schemaObject) {
    _logger.finer('Looking up ${schemaObject.referenceURI}');
    final uri = schemaObject.referenceURI;
    if (uri != null) {
      final segments = uri.pathSegments;
      if (segments[0] == 'components' && segments[1] == 'schemas') {
        final name = _classNameForComponent(segments[2]);
        final found = createdSchema.values.firstWhere(
            (element) => element.symbol == name,
            orElse: () => null);
        if (found != null) {
          _logger.finest('We found it.');
          return found;
        }
      }
    }
    final reference = createdSchema.putIfAbsent(schemaObject, () {
      _logger.finer(
          'Creating schema class. for ${schemaObject.referenceURI} / $key');
      final c = _createSchemaClass(_classNameForComponent(key), schemaObject);
      lb.body.add(c);

      return refer(c.name);
    });
    return reference;
  }

  Class _createSchemaClass(String className, APISchemaObject obj) {
    final properties = obj.properties?.entries ?? [];
    final fields = properties.map((e) => Field((fb) => fb
      ..docs.add('/// ${e.value.description}')
      ..name = e.key
      ..modifier = FieldModifier.final$
      ..type = _toDartType('$className${e.key.pascalCase}', e.value)));

    final c = Class(
      (cb) => cb
        ..annotations.add(jsonSerializable([]))
        ..name = className
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
                ..name = 'jsonMap'
                ..type = refer('Map<String, dynamic>')))
              ..lambda = true
              ..body =
                  refer('_\$${className}FromJson').call([refer('jsonMap')]).code
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
              ..body = refer('_\$${className}ToJson')([refer('this')]).code,
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
    switch (schema.type ?? APIType.object) {
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
    throw StateError(
        'Invalid type ${schema.type} - $schema - ${schema.referenceURI}');
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

    final emitter = DartEmitter(Allocator.simplePrefixing(), true, true);
//    print(DartFormatter().format('${l.accept(emitter)}'));
//    print('inputId: $inputId / outputId: $outputId');
    await buildStep.writeAsString(
        outputId,
        DartFormatter().format('// GENERATED CODE - DO NOT MODIFY BY HAND\n\n\n'
            '// ignore_for_file: prefer_initializing_formals\n\n'
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

extension on Reference {
  Reference addGenerics(Reference type) {
    final baseTypes =
        this is TypeReference ? (this as TypeReference).types : null;
    return TypeReference((trb) => trb
      ..symbol = symbol
      ..url = url
      ..types.addAll([...?baseTypes, type]));
  }
}

extension on MethodBuilder {
  /// adds the given helpText as `docs` if it is not null.
  void addDartDoc(String helpText) {
    if (helpText != null) {
      docs.add('/// $helpText');
    }
  }
}
