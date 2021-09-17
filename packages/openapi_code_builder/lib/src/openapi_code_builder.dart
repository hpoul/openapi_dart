import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';
import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:code_builder/src/visitors.dart'; // ignore: implementation_imports
import 'package:collection/collection.dart' show IterableExtension;
import 'package:dart_style/dart_style.dart';
import 'package:logging/logging.dart';
import 'package:open_api_forked/v3.dart';
import 'package:openapi_base/openapi_base.dart';
import 'package:openapi_code_builder/src/custom_allocator.dart';
import 'package:quiver/check.dart';
import 'package:recase/recase.dart';
import 'package:yaml/yaml.dart';

final _logger = Logger('openapi_code_builder');

class OpenApiLibraryGenerator {
  OpenApiLibraryGenerator(
    this.api,
    this.baseName,
    this.partFileName, {
    this.useNullSafetySyntax = false,
    this.apiMethodsWithRequest = false,
  });

  final APIDocument api;

  /// base name for this API. Should be in `PascalCase`
  final String baseName;
  final String partFileName;
  final bool useNullSafetySyntax;
  final bool apiMethodsWithRequest;

  final jsonSerializable =
      refer('JsonSerializable', 'package:json_annotation/json_annotation.dart');
  final jsonValue =
      refer('JsonValue', 'package:json_annotation/json_annotation.dart');
  final jsonKey =
      refer('JsonKey', 'package:json_annotation/json_annotation.dart');
  final _openApiContent =
      refer('OpenApiContent', 'package:openapi_base/openapi_base.dart');
  final _openApiRequest =
      refer('OpenApiRequest', 'package:openapi_base/openapi_base.dart');
  final _openApiResponse =
      refer('OpenApiResponse', 'package:openapi_base/openapi_base.dart');
  final _openApiResponseBodyJson = refer(
      'OpenApiResponseBodyJson', 'package:openapi_base/openapi_base.dart');
  final _openApiResponseBodyString = refer(
      'OpenApiResponseBodyString', 'package:openapi_base/openapi_base.dart');
  final _openApiResponseBodyBinary = refer(
      'OpenApiResponseBodyBinary', 'package:openapi_base/openapi_base.dart');
  final _openApiEndpoint =
      refer('ApiEndpoint', 'package:openapi_base/openapi_base.dart');
  final _endpointProvider =
      refer('ApiEndpointProvider', 'package:openapi_base/openapi_base.dart');
  final _openApiUrlEncodeMixin =
      refer('OpenApiUrlEncodeMixin', 'package:openapi_base/openapi_base.dart');
  final _openApiClient =
      refer('OpenApiClient', 'package:openapi_base/openapi_base.dart');
  final _openApiClientBase =
      refer('OpenApiClientBase', 'package:openapi_base/openapi_base.dart');
  final _hasSuccessResponse =
      refer('HasSuccessResponse', 'package:openapi_base/openapi_base.dart');
//  final _openApiHttpHeaders =
//      refer('OpenApiHttpHeaders', 'package:openapi_base/openapi_base.dart');
  final _openApiClientRequestBodyJson = refer(
      'OpenApiClientRequestBodyJson', 'package:openapi_base/openapi_base.dart');
  final _openApiClientRequestBodyText = refer(
      'OpenApiClientRequestBodyText', 'package:openapi_base/openapi_base.dart');
  final _openApiClientRequestBodyBinary = refer(
      'OpenApiClientRequestBodyBinary',
      'package:openapi_base/openapi_base.dart');
  final _openApiClientRequest =
      refer('OpenApiClientRequest', 'package:openapi_base/openapi_base.dart');
  final _openApiClientResponse =
      refer('OpenApiClientResponse', 'package:openapi_base/openapi_base.dart');
  final _openApiRequestSender =
      refer('OpenApiRequestSender', 'package:openapi_base/openapi_base.dart');
  final _responseMapType =
      refer('ResponseMap', 'package:openapi_base/openapi_base.dart');
  final _securityRequirement =
      refer('SecurityRequirement', 'package:openapi_base/openapi_base.dart');
  final _securityRequirementScheme = refer(
      'SecurityRequirementScheme', 'package:openapi_base/openapi_base.dart');
  final _securitySchemeHttp =
      refer('SecuritySchemeHttp', 'package:openapi_base/openapi_base.dart');
  final _securitySchemeHttpScheme = refer(
      'SecuritySchemeHttpScheme', 'package:openapi_base/openapi_base.dart');
  final _securitySchemeApiKey =
      refer('SecuritySchemeApiKey', 'package:openapi_base/openapi_base.dart');
  final _openApiContentType =
      refer('OpenApiContentType', 'package:openapi_base/openapi_base.dart');
  final _openApiContentTypeNullable =
      (refer('OpenApiContentType', 'package:openapi_base/openapi_base.dart')
              .type as TypeReference)
          .rebuild((b) => b.isNullable = true);
  final _apiUuid = refer('ApiUuid', 'package:openapi_base/openapi_base.dart');
  final _apiUuidJsonConverter =
      refer('ApiUuidJsonConverter', 'package:openapi_base/openapi_base.dart');
  final _required = refer('required', 'package:meta/meta.dart');
  final _override = refer('override');
  final _void = refer('void');
  final _uint8List = refer('Uint8List', 'dart:typed_data');
  final _typeString = refer('String');
  final _literalNullCode = literalNull.code;

  static const mediaTypeJson = OpenApiContentType.json;

  final createdSchema = <APISchemaObject, Reference>{};
  final createdEnums = <String, Reference>{};
  final securitySchemes = <String, Expression>{};

  final lb = LibraryBuilder();
  final securitySchemesClass = ClassBuilder()..name = 'SecuritySchemes';
  final List<Expression?> routerConfig = <Expression>[];

  Library generate() {
    lb.body.add(Directive.part(partFileName));

    // create class for each schema..
    for (final schemaEntry in api.components!.schemas!.entries) {
      _schemaReference(schemaEntry.key, schemaEntry.value!);
    }
    if (api.components!.securitySchemes != null) {
      for (final securityScheme in api.components!.securitySchemes!.entries) {
        _securitySchemeReference(securityScheme.key, securityScheme.value!);
      }
    }

    // Create path configs
    final clientInterface = ClassBuilder()
      ..name = '${baseName}Client'
      ..implements.add(_openApiClient)
      ..abstract = true;
    final fields = [
      MapEntry('baseUri', refer('Uri')),
      MapEntry('requestSender', _openApiRequestSender),
    ];
    final urlResolveClass = ClassBuilder()
      ..name = '${baseName}UrlResolve'
      ..mixins.add(_openApiUrlEncodeMixin);
    final clientClass = ClassBuilder()
      ..name = '_${baseName}ClientImpl'
      ..extend = _openApiClientBase
      ..implements.add(refer(clientInterface.name!))
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
      ..body = refer(clientClass.name!)
          .newInstanceNamed('_', fields.map((f) => refer(f.key)))
          .code));
    final c = Class((cb) {
      cb.name = baseName;
      cb.implements.add(_openApiEndpoint);
//      cb.types.add(TypeReference((b) => b
//        ..symbol = 'T'
//        ..bound = _openApiRequest));
      cb.abstract = true;
      for (final path in api.paths!.entries) {
        for (final operation in path.value!.operations.entries) {
          final pathName = path.key
              .replaceAll(
                  // language=RegExp
                  RegExp(r'[{}]'),
                  '')
              .camelCase;
          final operationName = operation.value!.id == null
              ? '$pathName'
                  '${operation.key.pascalCase}'
              : operation.value!.id!.camelCase;

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
          Reference? successResponseBodyType;
          Reference? successResponseCodeType;
          MapEntry<String, APIResponse?>? successApiResponse;
          final clientResponseParse = <String, Expression>{};
          for (final response in operation.value!.responses!.entries) {
            final statusAsParameter = response.key == 'default';
            final codeName = response.key.pascalCase;
            final responseCodeClass = ClassBuilder()
              ..extend = refer(responseClass.name!)
              ..name = '_${responseClass.name}$codeName'
              ..fields.add(Field((fb) => fb
                ..name = 'status'
                ..annotations.add(_override)
                ..modifier = FieldModifier.final$
                ..type = refer('int')));
            mapMethod.optionalParameters.add(Parameter((pb) => pb
              ..name = 'on$codeName'
              ..asRequired(this, true)
              ..named = true
              ..type = _responseMapType
                  .addGenerics(refer(responseCodeClass.name!))));
            if (mapCode.isNotEmpty) {
              mapCode.add(const Code(' else '));
            }
            mapCode.add(const Code('if (this is '));
            mapCode.add(refer(responseCodeClass.name!).code);
            mapCode.add(const Code(') {'));
            mapCode.add(refer('on$codeName')(
                [refer('this').asA(refer(responseCodeClass.name!))]).statement);
            mapCode.add(const Code('}'));
            final clientResponseParseParams = <Expression>[];
            final constructor = Constructor((cb) {
              cb
                ..name = 'response$codeName'
                ..docs.addDartDoc(response.value!.description);

              refer(cb.name!);
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
              final content =
                  (response.value!.content ?? {})[mediaTypeJson.contentType];
//              OpenApiContentType responseContentType;
              Code? responseContentTypeAssignment = _literalNullCode;
              Reference? bodyType;
              if (content != null) {
                const responseContentType = OpenApiContentType.json;
                responseContentTypeAssignment = _openApiContentType
                    .newInstanceNamed('parse',
                        [literalString(responseContentType.toString())]).code;
                bodyType = _schemaReference(
                    '${responseClass.name}Body$codeName', content.schema!);
                responseCodeClass.fields.add(Field((fb) => fb
                  ..name = 'body'
                  ..type = bodyType
                  ..modifier = FieldModifier.final$));
                responseCodeClass.fields.add(Field((fb) => fb
                  ..name = 'bodyJson'
                  ..annotations.add(_override)
                  ..type = _referType('Map',
                      generics: [_typeString, refer('dynamic')])
                  ..modifier = FieldModifier.final$));
                cb.requiredParameters.add(Parameter((pb) => pb
                  ..name = 'body'
                  ..type = bodyType
                  ..toThis = true));
                cb.initializers.add(refer('bodyJson')
                    .assign(refer('body').property('toJson')([]))
                    .code);
                responseCodeClass.implements.add(_openApiResponseBodyJson);

                clientResponseParseParams.add(bodyType.newInstanceNamed(
                    'fromJson', [
                  refer('response').property('responseBodyJson')([]).awaited
                ]));
              } else {
                if (response.value!.content?.length == 1) {
                  final responseContent =
                      response.value!.content!.entries.first;
                  final responseContentType =
                      OpenApiContentType.parse(responseContent.key);
                  responseContentTypeAssignment = _openApiContentType
                      .newInstanceNamed('parse',
                          [literalString(responseContentType.toString())]).code;
                  bodyType = _toDartType('${responseCodeClass}Content',
                      responseContent.value!.schema!);
                  checkState(
                      responseContent.value!.schema!.type == APIType.string,
                      message: 'schema type not supported for content type '
                          '${responseContent.key}: '
                          '${responseContent.value!.schema!.type}');
                  responseCodeClass.fields.add(Field((fb) => fb
                    ..name = 'body'
                    ..type = bodyType
                    ..annotations.add(_override)
                    ..modifier = FieldModifier.final$));
                  if (responseContent.key.contains('*')) {
                    responseContentTypeAssignment = null;
                    cb.requiredParameters.add(Parameter((pb) => pb
                      ..type = _openApiContentType
                      ..name = 'contentType'
                      ..toThis = true));
                    clientResponseParseParams.add(
                        refer('response').property('responseContentType')([]));
                  }
                  cb.requiredParameters.add(Parameter((pb) => pb
                    ..name = 'body'
                    ..type = bodyType
                    ..toThis = true));
                  if (_typeString == bodyType) {
                    responseCodeClass.implements
                        .add(_openApiResponseBodyString);
                    clientResponseParseParams.add(refer('response')
                        .property('responseBodyString')([])
                        .awaited);
                  } else if (_uint8List == bodyType) {
                    responseCodeClass.implements
                        .add(_openApiResponseBodyBinary);
                    clientResponseParseParams.add(refer('response')
                        .property('responseBodyBytes')([])
                        .awaited);
                  } else {
                    throw StateError(
                        'Unsupported bodyType $bodyType for responses.');
                  }
                }
              }
              if (response.key.startsWith('2') ||
                  (response.key == 'default' &&
                      successResponseBodyType == null)) {
                successResponseCodeType = refer(responseCodeClass.name!);
                successResponseBodyType = bodyType;
                successApiResponse = response;
              }
              responseCodeClass.fields.add(Field(
                (fb) => fb
                  ..name = 'contentType'
                  ..type = responseContentTypeAssignment == _literalNullCode
                      ? _openApiContentTypeNullable
                      : _openApiContentType
                  ..annotations.add(_override)
                  ..modifier = FieldModifier.final$
                  ..assignment = responseContentTypeAssignment,
              ));
            });

            responseCodeClass.constructors.add((constructor.toBuilder()
                  ..requiredParameters.map((pb) => (pb.toBuilder()
                        ..type = pb.toThis ? null : pb.type)
                      .build()))
                .build());
            responseCodeClass.methods.add(Method((mb) => mb
              ..name = 'propertiesToString'
              ..annotations.add(_override)
              ..returns = _referType('Map',
                  generics: [_typeString, refer('Object').asNullable(true)])
              ..lambda = true
              ..body = literalMap(
                Map.fromEntries(responseCodeClass.fields.build().map(
                    (f) => MapEntry(literalString(f.name), refer(f.name)))),
              ).code));
            responseClass.constructors.add((constructor.toBuilder()
                  ..factory = true
                  ..initializers.clear()
                  ..requiredParameters
                      .map((pb) => (pb.toBuilder()..toThis = false).build())
                  ..body = refer(responseCodeClass.name!)
                      .newInstanceNamed(
                          constructor.name!,
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
              ..body = refer(responseCodeClass.name!)
                  .newInstanceNamed(
                      constructor.name!, clientResponseParseParams)
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

          if (successApiResponse != null) {
            ArgumentError.checkNotNull(
                successResponseCodeType, 'successResponseCodeType');
            responseClass.implements.add(_hasSuccessResponse
                .addGenerics(successResponseBodyType ?? _void));
            responseClass.methods.add(
              Method((mb) => mb
                ..name = 'requireSuccess'
                ..addDartDoc(successApiResponse!.value!.description,
                    prefix: 'status ${successApiResponse!.key}: ')
                ..annotations.add(_override)
                ..returns = successResponseBodyType ?? _void
                ..body = Block.of([
                  const Code('if (this is '),
                  successResponseCodeType!.code,
                  const Code(') {'),
                  successResponseBodyType == null
                      // success, but no body.
                      ? const Code('return;')
                      : refer('this')
                          .asA(successResponseCodeType!)
                          .property('body')
                          .returned
                          .statement,
                  const Code('} else {'),
                  const Code(
                      r'''throw StateError('Expected success response, but got $this');'''),
                  const Code('}'),
                ])),
            );
          }

          lb.body.add(responseClass.build());

          final clientMethod = MethodBuilder()
            ..name = operationName
            ..addDartDoc(operation.value!.summary)
            ..addDartDoc(operation.value!.description)
            ..docs.add('/// ${operation.key}: ${path.key}')
            ..docs.add('///')
            ..returns =
                _referType('Future', generics: [refer(responseClass.name!)])
            ..modifier = MethodModifier.async;
          final clientCode = <Code>[
            _openApiClientRequest
                .newInstance([
                  literalString(operation.key),
                  literalString(path.key),
                  _operationSecurityRequirements(
                      operation.value!.security ?? api.security),
                ])
                .assignFinal('request')
                .statement,
          ];
          final clientCodeRequest = refer('request');

          cb.methods.add(Method((mb) {
            mb
              ..name = operationName
              ..addDartDoc(operation.value!.summary)
              ..addDartDoc(operation.value!.description)
              ..docs.add('/// ${operation.key}: ${path.key}')
              ..returns =
                  _referType('Future', generics: [refer(responseClass.name!)]);

            final routerParams = <Expression>[];
            final routerParamsNamed = <String, Expression>{};

            if (apiMethodsWithRequest) {
              mb.requiredParameters.add(Parameter((pb) => pb
                ..name = 'request'
                ..type = _openApiRequest));
              routerParams.add(refer('request'));
            }

            // ignore: avoid_function_literals_in_foreach_calls
            final allParameters = [
              ...?path.value!.parameters,
              ...?operation.value!.parameters
            ];
            for (final param in allParameters) {
              final paramType = _toDartType(operationName, param!.schema!);
              final paramNameCamelCase = param.name!.camelCase;
              if (param.description != null) {
                clientMethod.docs
                    .add('/// * [$paramNameCamelCase]: ${param.description}');
              }
              final p = Parameter((pb) => pb
                ..name = paramNameCamelCase
                ..type = paramType.asNullable(!param.isRequired)
                ..asRequired(this, param.isRequired)
                ..named = true);
              mb.optionalParameters.add(p);
              clientMethod.optionalParameters.add(p);
              final decodeParameterFrom =
                  (APIParameter param, Expression expression) {
                final schemaType = ArgumentError.checkNotNull(
                    param.schema?.type, 'param.schema.type');
                switch (schemaType) {
                  case APIType.string:
                    final Expression? asString =
                        refer('paramToString')([expression]);
                    if (param.schema!.format == 'uuid') {
                      assert(paramType == _apiUuid);
                      return _apiUuid.newInstanceNamed('parse', [asString!]);
                    } else if (paramType != _typeString) {
                      throw StateError(
                          'Unsupported paramType for string $paramType');
                    }
                    return asString;
                  case APIType.number:
                    break;
                  case APIType.integer:
                    return refer('paramToInt')([expression]);
                  case APIType.boolean:
                    return refer('paramToBool')([expression]);
                  case APIType.array:
                    checkState(param.schema!.items!.type == APIType.string);
                    if (param.schema!.items!.enumerated != null &&
                        param.schema!.items!.enumerated!.isNotEmpty) {
                      final paramEnumType =
                          (paramType as TypeReference).types.first;
                      return expression
                          .property('map')([
                            Method(
                              (mb) => mb
                                ..lambda = true
                                ..requiredParameters
                                    .add(Parameter((pb) => pb..name = 'e'))
                                ..body = refer(paramEnumType.symbol! + 'Ext')
                                    .property('fromName')([refer('e')])
                                    .code,
                            ).closure
                          ])
                          .property('toList')([]);
                    }
                    return expression;
                  case APIType.object:
                    return expression;
                  default:
                    throw StateError('Invalid schema type $schemaType');
                }
              };
              final decodeParameter = (Expression? expression) {
                return refer(
                    param.isRequired ? 'paramRequired' : 'paramOpt')([], {
                  'name': literalString(param.name!),
                  'value': expression!,
                  'decode': Method((mb) => mb
                        ..lambda = true
                        ..requiredParameters
                            .add(Parameter((pb) => pb..name = 'value'))
                        ..body =
                            decodeParameterFrom(param, refer('value'))!.code)
                      .closure,
                });
              };
              final encodeParameter = (Expression expression) {
                final schemaType = ArgumentError.checkNotNull(
                    param.schema?.type, 'param.schema.type');
                switch (schemaType) {
                  case APIType.string:
                    if (param.schema!.format == 'uuid') {
                      assert(paramType == _apiUuid);
                      expression = expression.property('encodeToString')([]);
                    } else if (paramType != _typeString) {
                      // TODO not sure if this makes sense, maybe we should just
                      //      use `toString`?
                      throw StateError(
                          'Unsupported paramType for string $paramType');
                    }
                    return refer('encodeString')([expression]);
                  case APIType.number:
                    break;
                  case APIType.integer:
                    return refer('encodeInt')([expression]);
                  case APIType.boolean:
                    return refer('encodeBool')([expression]);
                  case APIType.array:
                    checkState(param.schema!.items!.type == APIType.string);
                    if (param.schema!.items!.enumerated != null &&
                        param.schema!.items!.enumerated!.isNotEmpty) {
                      return expression.property('map')([
                        Method(
                          (mb) => mb
                            ..lambda = true
                            ..requiredParameters
                                .add(Parameter((pb) => pb..name = 'e'))
                            ..body = refer('e').property('name').code,
                        ).closure
                      ]);
                    }
                    return expression;
                  case APIType.object:
                    return expression;
                }
                throw StateError('Invalid schema type ${param.schema!.type}}');
              };
              final paramLocation = ArgumentError.checkNotNull(param.location);
              final paramName = ArgumentError.checkNotNull(param.name);
              routerParamsNamed[paramNameCamelCase] =
                  decodeParameter(_readFromRequest(paramLocation, paramName));
              clientCode.add(_writeToRequest(
                clientCodeRequest,
                paramLocation,
                paramName,
                encodeParameter(refer(paramNameCamelCase)),
              ).statement);
            }
            final urlResolverMethod = clientMethod.build().toBuilder()
              ..returns = _openApiClientRequest
              ..modifier = null
              ..body =
                  Block.of(clientCode + [clientCodeRequest.returned.statement]);
            urlResolveClass.methods.add(urlResolverMethod.build());

            final body = operation.value!.requestBody;
            if (body != null && body.content!.isNotEmpty) {
              final entry = body.content!.entries.first;

              if (body.content!.length > 1) {
                _logger.warning('Right now we only support one request body, '
                    'but found: ${body.content!.keys}, only using $entry');
              }

              Map.fromEntries([entry]).forEach((key, reqBody) {
                final contentType = OpenApiContentType.parse(key);
//                final ct = OpenApiContentType.allKnown
//                    .firstWhere((element) => element.matches(contentType));
                _createRequestBody(
                  contentType,
                  reqBody!,
                  operationName,
                  mb,
                  routerParams,
                  clientMethod,
                  clientCode,
                );
              });
            }

            _routerConfig(
              path.key,
              operation.key,
              refer('impl').property('invoke')([
                refer('request'),
                Method((m) => m
                  ..requiredParameters.add(Parameter((pb) => pb
                    ..type = refer(baseName)
                    ..name = 'impl'))
                  ..lambda = true
                  ..body = refer('impl')
                      .property(operationName)(routerParams, routerParamsNamed)
//                        .returned
                      .code
                  ..modifier = MethodModifier.async).closure
              ]),
              operation.value!.security ?? api.security,
            ); //.property(operationName)(parameters));
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
    lb.body.add(urlResolveClass.build());

    lb.body.add(Class((cb) {
      cb.name = '${baseName}Router';
      cb.constructors.add(Constructor((cb) => cb
        ..requiredParameters.add(Parameter((pb) => pb
          ..name = 'impl'
          ..toThis = true))));
      cb.extend = refer(
          'OpenApiServerRouterBase', 'package:openapi_base/openapi_base.dart');
      cb.fields.add(Field((fb) => fb
        ..name = 'impl'
        ..type = _endpointProvider.addGenerics(refer(c.name))
        ..modifier = FieldModifier.final$));
      cb.methods.add(Method((mb) => mb
        ..name = 'configure'
        ..annotations.add(_override)
        ..returns = refer('void')
        ..body = Block.of(routerConfig.map((e) => e!.statement))));
    }));
    lb.body.add(securitySchemesClass.build());

//       api.paths.map((key, value) => MapEntry(key, refer('ApiPathConfig').newInstance([value.])))
    return lb.build();
  }

  Expression _readFromRequest(APIParameterLocation location, String name) {
    switch (location) {
      case APIParameterLocation.query:
        return refer('request')
            .property('queryParameter')([literalString(name)]);
      case APIParameterLocation.header:
        return refer('request')
            .property('headerParameter')([literalString(name)]);
      case APIParameterLocation.path:
        return refer('request')
            .property('pathParameter')([literalString(name)]);
      case APIParameterLocation.cookie:
        return refer('request')
            .property('cookieParameter')([literalString(name)]);
    }
    // throw StateError('Invalid location: $location');
  }

  Expression _writeToRequest(Reference request, APIParameterLocation location,
      String name, Expression value) {
    switch (location) {
      case APIParameterLocation.query:
        return request
            .property('addQueryParameter')([literalString(name), value]);
      case APIParameterLocation.header:
        return request
            .property('addHeaderParameter')([literalString(name), value]);
      case APIParameterLocation.path:
        return request
            .property('addPathParameter')([literalString(name), value]);
      case APIParameterLocation.cookie:
        return request
            .property('addCookieParameter')([literalString(name), value]);
    }
    // throw StateError('Invalid location: $location');
  }

  void _createRequestBody(
      OpenApiContentType contentType,
      APIMediaType reqBody,
      String operationName,
      MethodBuilder mb,
      List<Expression?> routerParams,
      MethodBuilder clientMethod,
      List<Code> clientCode) {
    _logger.finer('reqBody.schema: ${reqBody.schema}');

    void _addRequestBody(
        Reference bodyType, Expression encodeBody, Expression? decodeBody) {
      mb.addDartDoc(reqBody.schema!.description, prefix: '[body]:');
      mb.requiredParameters.add(
        Parameter((pb) => pb
          ..name = 'body'
          ..type = bodyType),
      );
      clientMethod.addDartDoc(reqBody.schema!.description, prefix: '[body]:');
      clientMethod.requiredParameters.add(Parameter((pb) => pb
        ..name = 'body'
        ..type = bodyType));

      clientCode.add(
        refer('request').property('setBody')([encodeBody]).statement,
      );
      routerParams.add(decodeBody);
    }

    clientCode.add(refer('request')
        .property('setHeader')([
          literalString(OpenApiHttpHeaders.contentType),
          literalString(contentType.toString())
        ])
        .statement);

    if (contentType.matches(OpenApiContentType.textPlain)) {
      _addRequestBody(
        _typeString,
        _openApiClientRequestBodyText.newInstance([refer('body')]),
        refer('request').property('readBodyString')([]).awaited,
      );
    } else if (contentType.matches(OpenApiContentType.octetStream)) {
      _addRequestBody(
        _toDartType(operationName, reqBody.schema!),
        _openApiClientRequestBodyBinary.newInstance([refer('body')]),
        refer('request').property('readBodyBytes')([]).awaited,
      );
    } else {
      final reference = _schemaReference(
          '${operationName.pascalCase}Schema', reqBody.schema!);

      final mapExpression = contentType.matches(OpenApiContentType.json)
          ? refer('request').property('readJsonBody')([]).awaited
          : (contentType.matches(OpenApiContentType.urlencoded)
              ? refer('request').property('readUrlEncodedBodyFlat')([]).awaited
              : literalConstMap({}, refer('String'), refer('dynamic')));
      _addRequestBody(
          reference,
          _openApiClientRequestBodyJson
              .newInstance([refer('body').property('toJson')([])]),
          reference.property('fromJson')(
            [mapExpression],
          ));
    }
  }

  void _routerConfig(String path, String operation, Expression? handler,
      List<APISecurityRequirement?>? security) {
    _logger.fine('RouteConfig for $path - security: $security');
    routerConfig.add(refer('addRoute')(
      [
        literalString(path),
        literalString(operation),
        Method((mb) => mb
          ..modifier = MethodModifier.async
          ..requiredParameters.add(Parameter((pb) => pb
            ..name = 'request'
            ..type = _openApiRequest))
          ..body = Block.of([
            handler!.awaited.returned.statement,
          ])).closure,
      ],
      {
        'security': _operationSecurityRequirements(security),
      },
    ));
  }

  LiteralListExpression _operationSecurityRequirements(
      List<APISecurityRequirement?>? security) {
    return literalList(
      security?.map(
            (security) => _securityRequirement(
              [],
              {
                'schemes': literalList(security!.requirements.entries
                    .map((req) => _securityRequirementScheme.newInstance([], {
                          'scheme': refer(securitySchemesClass.name!)
                              .property(req.key.camelCase),
                          'scopes': literalList(req.value),
                        }))),
              },
            ),
          ) ??
          [],
    );
  }

  String _classNameForComponent(String componentName) {
    return componentName.pascalCase;
  }

  String? _componentNameFromReferenceUri(Uri? referenceUri) {
    if (referenceUri == null) {
      return null;
    }
    final segments = referenceUri.pathSegments;
    if (segments[0] == 'components' && segments[1] == 'schemas') {
      final name = _classNameForComponent(segments[2]);
      return name;
    }
    return null;
  }

  Reference _schemaReference(String key, APISchemaObject schemaObject) {
    _logger.finer('Looking up ${schemaObject.referenceURI}');
    final uri = schemaObject.referenceURI;
    final componentName =
        _componentNameFromReferenceUri(uri) ?? _classNameForComponent(key);

    final found = createdSchema.values
        .firstWhereOrNull((element) => element.symbol == componentName);
    if (found != null) {
      _logger.finest('We found it.');
      return found;
    }

    final reference = createdSchema.putIfAbsent(schemaObject, () {
      _logger.finer(
          'Creating schema class. for ${schemaObject.referenceURI} / $key');
      if (schemaObject.enumerated?.isNotEmpty == true) {
        final e = _createEnum(componentName, schemaObject.enumerated!);
        return e;
      }
      final c = _createSchemaClass(componentName, schemaObject);
      lb.body.add(c);

      return refer(c.name);
    });
    return reference;
  }

  Class _createSchemaClass(String className, APISchemaObject obj) {
    var properties = obj.properties ?? {};
    final override = <String>{};
    final required = obj.required ?? [];
    final implements = <Reference>[];

    // check for inheritance
    if (obj.allOf != null) {
      for (final baseObj in obj.allOf!) {
        implements.add(_schemaReference('${className}Base', baseObj!));
        properties = {
          ...baseObj.properties!,
          ...properties,
        };
        override.addAll(baseObj.properties!.entries.map((e) => e.key));
        required.addAll(baseObj.required ?? []);
      }
    }

    final fields = properties.map((key, e) => MapEntry(key, Field((fb) {
          final fieldType = _toDartType('$className${key.pascalCase}', e!);
          fb
            ..addDartDoc(e.description)
            ..annotations.add(jsonKey([], {'name': literalString(key)}))
            ..annotations.addAll(override.contains(key) ? [_override] : [])
            ..name = key.camelCase
            ..modifier = FieldModifier.final$
            ..type = fieldType
                .asNullable(!required.contains(key) && e.defaultValue == null);
          if (fieldType == _apiUuid) {
            fb.annotations.add(_apiUuidJsonConverter([]));
          }
        })));
    // ignore: avoid_function_literals_in_foreach_calls
    required.forEach((element) {
      if (fields[element] == null) {
        throw StateError('Invalid required "$element" was not '
            'defined as property of $className');
      }
    });

    final c = Class((cb) {
      Expression? toJsonExpression =
          refer('_\$${className}ToJson')([refer('this')]);
      Expression? fromJsonExpression =
          refer('_\$${className}FromJson').call([refer('jsonMap')]);

      if (obj.additionalPropertyPolicy ==
          APISchemaAdditionalPropertyPolicy.freeForm) {
        toJsonExpression = refer('Map')
            .property('from')([refer('_additionalProperties')])
            .cascade('addAll')([toJsonExpression]);
        fromJsonExpression = fromJsonExpression
            .cascade('_additionalProperties')
            .property('addEntries')([
          refer('jsonMap').property('entries').property('where')([
            Method((mb) => mb
              ..lambda = true
              ..requiredParameters.add(Parameter((pb) => pb..name = 'e'))
              ..body = literalConstSet(
                      fields.entries.map((e) => literalString(e.key)).toSet(),
                      _typeString)
                  .property('contains')([refer('e').property('key')])
                  .negate()
                  .code).closure
          ])
        ]);
      }

      for (final requiredKey in required) {
        if (!fields.keys.contains(requiredKey)) {
          throw StateError('$requiredKey defined as required for $className -'
              ' but no field found with that name.');
        }
      }
      cb
        ..annotations.add(jsonSerializable([]))
        ..name = className
        ..implements.add(_openApiContent)
        ..implements.addAll(implements)
        ..docs.addDartDoc(obj.description)
        ..constructors.add(
          Constructor(
            (cb) => cb
              ..optionalParameters
                  .addAll(fields.entries.map((f) => Parameter((pb) => pb
//            ..docs.addAll(f.docs)
                    ..name = f.value.name
                    ..asRequired(this, required.contains(f.key))
                    ..defaultTo = (properties[f.key]?.defaultValue as Object?)
                        ?.let((dynamic it) => literal(it))
                        .code
                    ..named = true
                    ..toThis = true)))
              ..initializers.addAll(useNullSafetySyntax
                  ? []
                  : required.map((e) => refer('assert')(
                      [refer(fields[e]!.name).notEqualTo(literalNull)]).code)),
          ),
        )
        ..constructors.add(Constructor((cb) => cb
              ..name = 'fromJson'
              ..factory = true
              ..requiredParameters.add(Parameter((pb) => pb
                ..name = 'jsonMap'
                ..type = refer('Map<String, dynamic>')))
              ..lambda = true
              ..body = fromJsonExpression!.code
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
        ..fields.addAll(fields.values)
        ..methods.add(
          Method(
            (mb) => mb
              ..name = 'toJson'
              ..returns = refer('Map<String, dynamic>')
              ..annotations.addAll(implements.isEmpty ? [] : [_override])
              ..lambda = true
              ..body = toJsonExpression!.code,
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
//            _typeString,
//            refer('dynamic'),
//          ).code,
//      ),
        )
        ..methods.add(Method((mb) => mb
          ..name = 'toString'
          ..returns = _typeString
          ..annotations.add(_override)
          ..lambda = true
          ..body = refer('toJson')([]).property('toString')([]).code));

      if (obj.additionalPropertyPolicy ==
          APISchemaAdditionalPropertyPolicy.freeForm) {
        cb.fields.add(Field((fb) => fb
          ..name = '_additionalProperties'
          ..type = _referType(
            'Map',
            generics: [_typeString, refer('Object')],
          )
          ..assignment = literalMap({}, _typeString, refer('Object')).code
          ..modifier = FieldModifier.final$));
        cb.methods.add(
          Method((mb) => mb
            ..name = 'operator[]='
            ..returns = refer('void')
            ..requiredParameters.add(Parameter((pb) => pb
              ..name = 'key'
              ..type = _typeString))
            ..requiredParameters.add(Parameter((pb) => pb
              ..name = 'value'
              ..type = refer('Object')))
            ..lambda = true
            ..body = refer('_additionalProperties')
                .index(refer('key'))
                .assign(refer('value'))
                .code),
        );
        cb.methods.add(
          Method((mb) => mb
            ..name = 'operator[]'
            ..returns = refer('Object')
            ..requiredParameters.add(Parameter((pb) => pb
              ..name = 'key'
              ..type = _typeString))
            ..lambda = true
            ..body = refer('_additionalProperties').index(refer('key')).code),
        );
      }
    });
    return c;
  }

  Reference _createEnum(String name, List<dynamic>? values) {
    return createdEnums.putIfAbsent(name, () {
      lb.body.add(EnumSpec(
        name: name,
        values: values!
            .map(
              (dynamic e) => EnumValueSpec(
                annotations: [
                  jsonValue([literalString(e.toString())])
                ],
                name: e.toString(),
              ),
            )
            .toList(),
      ));
      return refer(name);
    });
  }

  Reference _toDartType(String parent, APISchemaObject schema) {
    switch (schema.type ?? APIType.object) {
      case APIType.string:
        if (schema.enumerated != null && schema.enumerated!.isNotEmpty) {
          return _schemaReference(parent, schema);
        }
        if (schema.format == 'date-time') {
          return refer('DateTime');
        }
        if (schema.format == 'uuid') {
          return _apiUuid;
        }
        if (schema.format == 'binary') {
          return _uint8List;
        }
        return _typeString;
      case APIType.number:
        return refer('num');
      case APIType.integer:
        return refer('int');
      case APIType.boolean:
        return refer('bool');
      case APIType.array:
        final type = _toDartType(parent, schema.items!);
        return _referType('List', generics: [type]);
      case APIType.object:
        return _schemaReference(parent, schema);
//        return refer('dynamic');
    }
    // throw StateError(
    //     'Invalid type ${schema.type} - $schema - ${schema.referenceURI}');
  }

  Expression _securitySchemeReference(String name, APISecurityScheme value) {
    final schemaType = ArgumentError.checkNotNull(value.type);
    switch (schemaType) {
      case APISecuritySchemeType.http:
        assert(value.scheme == 'bearer');
        securitySchemesClass.fields.add(
          Field((fb) => fb
            ..name = name.camelCase
            ..modifier = FieldModifier.final$
            ..static = true
            ..assignment = _securitySchemeHttp.newInstance([],
                {'scheme': _securitySchemeHttpScheme.property('bearer')}).code),
        );
        return refer(securitySchemesClass.name!).property(name.camelCase);
      case APISecuritySchemeType.apiKey:
        final location = ArgumentError.checkNotNull(value.location);
        final valueName = ArgumentError.checkNotNull(value.name);
        securitySchemesClass.fields.add(
          Field((fb) => fb
            ..name = name.camelCase
            ..modifier = FieldModifier.final$
            ..static = true
            ..assignment = _securitySchemeApiKey.newInstance([], {
              'name': literalString(value.name!),
              'readFromRequest': Method((mb) => mb
                ..requiredParameters.add(Parameter((pb) => pb
                  ..name = 'request'
                  ..type = _openApiRequest))
                ..body = _readFromRequest(location, valueName).code).closure,
              'writeToRequest': Method((mb) => mb
                ..requiredParameters.add(Parameter((pb) => pb
                  ..name = 'request'
                  ..type = _openApiClientRequest))
                ..requiredParameters.add(Parameter((pb) => pb
                  ..name = 'value'
                  ..type = _typeString))
                ..body = _writeToRequest(refer('request'), location, valueName,
                    literalList([refer('value')])).code).closure,
            }).code),
        );
        return refer(securitySchemesClass.name!).property(name.camelCase);
      case APISecuritySchemeType.oauth2:
      case APISecuritySchemeType.openID:
        throw StateError('Unsupported security scheme ${value.type}');
    }
    // throw StateError(
    //     'Should not happen - unsupported security scheme ${value.type}');
  }
}

class EnumSpec extends Spec {
  EnumSpec({this.name, this.values});

  final String? name;
  final List<EnumValueSpec>? values;

  @override
  R accept<R>(SpecVisitor<R> visitor, [R? context]) {
    assert(context is StringSink);
    final ctx = context as StringSink;
    ctx.write('enum $name {');
    for (final value in values!) {
      visitor.visitSpec(value, context);
      ctx.write(',');
    }
    ctx.writeln('}');
    ctx.write('extension ${name}Ext on $name {');
    ctx.write('static final Map<String, $name> _names = ');
    visitor.visitSpec(
        literalMap(Map.fromEntries(values!.map((e) =>
            MapEntry(literalString(e.name!), refer(name!).property(e.name!))))),
        context);
    ctx.write(';');
    ctx.write('static $name fromName(String name) => _names[name] ??'
        ' _throwStateError(\'Invalid enum name: \$name for $name\');');
    ctx.write('String get name => toString().substring(${name!.length + 1});');
    ctx.writeln('}');
    return context;
  }
}

class EnumValueSpec extends Spec {
  EnumValueSpec({this.annotations, this.name});

  final List<Expression?>? annotations;
  final String? name;

  @override
  R accept<R>(SpecVisitor<R> visitor, [R? context]) {
    assert(context is StringSink);
    final ctx = context as StringSink;
    for (final annotation in annotations!) {
      visitor.visitAnnotation(annotation!, context);
    }
    ctx.write(name);
    return context;
  }
}

class OpenApiCodeBuilderUtils {
  static Map<String, dynamic>? _loadYaml(String source) {
    final dynamic tmp = loadYaml(source) as dynamic;
    return json.decode(json.encode(tmp)) as Map<String, dynamic>?;
  }

  static APIDocument loadApiFromYaml(String yamlSource) {
    final decoded = _loadYaml(yamlSource)!;
    final api = APIDocument.fromMap(
        Map<String, dynamic>.from(decoded.cast<String, dynamic>()));
    return api;
  }

  static String formatLibrary(Library library,
      {bool orderDirectives = false, required bool useNullSafetySyntax}) {
    final emitter = DartEmitter(
      allocator: CustomAllocator(),
      orderDirectives: orderDirectives,
      useNullSafetySyntax: useNullSafetySyntax,
    );
    final libraryOutput = DartFormatter().format(
        '// GENERATED CODE - DO NOT MODIFY BY HAND\n\n\n'
        '// ignore_for_file: prefer_initializing_formals\n\n'
        '${library.accept(emitter)}\n\n'
        'T _throwStateError<T>(String message) => throw StateError(message);\n\n');
    return libraryOutput;
  }
}

class OpenApiCodeBuilder extends Builder {
  OpenApiCodeBuilder(
      {this.orderDirectives = false, required this.useNullSafetySyntax});

  final bool orderDirectives;
  final bool useNullSafetySyntax;

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
    OpenApiCodeBuilderUtils.loadApiFromYaml(source);
    final api = OpenApiCodeBuilderUtils.loadApiFromYaml(source);

    final baseName = api.info!.extensions['x-dart-name'] as String? ??
        inputIdBasename.pascalCase;

    final l = OpenApiLibraryGenerator(
      api,
      baseName,
      outputId.changeExtension('.g.dart').pathSegments.last,
      useNullSafetySyntax: useNullSafetySyntax,
    ).generate();

    final libraryOutput = OpenApiCodeBuilderUtils.formatLibrary(
      l,
      orderDirectives: true,
      useNullSafetySyntax: useNullSafetySyntax,
    );
//    print(DartFormatter().format('${l.accept(emitter)}'));
//    print('inputId: $inputId / outputId: $outputId');
    await buildStep.writeAsString(outputId, libraryOutput);
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        '.openapi.yaml': ['.openapi.dart']
      };
}

TypeReference _referType(String name,
        {String? url, List<Reference>? generics}) =>
    TypeReference((trb) => trb
      ..symbol = name
      ..url = url
      ..types.addAll(generics!));

extension on Reference {
  Reference addGenerics(Reference type) {
    final baseTypes =
        this is TypeReference ? (this as TypeReference).types : null;
    return TypeReference((trb) => trb
      ..symbol = symbol
      ..url = url
      ..types.addAll([...?baseTypes, type]));
  }

  Reference asNullable(bool isNullable) {
    if (!isNullable) {
      return this;
    }
    return ((type as TypeReference).toBuilder()..isNullable = true).build();
  }
}

extension on ListBuilder<String> {
  /// adds the given helpText as `docs` if it is not null.
  void addDartDoc(String? helpText, {String? prefix}) {
    if (helpText != null) {
      if (prefix == null) {
        add('/// $helpText');
      } else {
        add('/// $prefix $helpText');
      }
    }
  }
}

extension on FieldBuilder {
  /// adds the given helpText as `docs` if it is not null.
  void addDartDoc(String? helpText, {String? prefix}) =>
      docs.addDartDoc(helpText, prefix: prefix);
}

extension on MethodBuilder {
  /// adds the given helpText as `docs` if it is not null.
  void addDartDoc(String? helpText, {String? prefix}) =>
      docs.addDartDoc(helpText, prefix: prefix);
}

extension on ParameterBuilder {
  void asRequired(OpenApiLibraryGenerator generator, [bool isRequired = true]) {
    if (generator.useNullSafetySyntax) {
      required = isRequired;
    } else if (isRequired) {
      annotations.add(generator._required);
    }
  }
}

extension DynamicExt<T> on dynamic {
  R let<R>(R Function(dynamic that) op) => op(this);
}

extension ObjectExt<T> on T {
  T? takeIf(bool Function(T that) predicate) => predicate(this) ? this : null;
  R let<R>(R Function(T that) op) => op(this);
}
