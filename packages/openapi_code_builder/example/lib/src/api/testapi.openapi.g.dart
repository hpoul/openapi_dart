// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testapi.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InheritanceBase _$InheritanceBaseFromJson(Map<String, dynamic> json) =>
    InheritanceBase(test1: json['test1'] as String?);

Map<String, dynamic> _$InheritanceBaseToJson(InheritanceBase instance) =>
    <String, dynamic>{'test1': ?instance.test1};

InheritanceChildBase _$InheritanceChildBaseFromJson(
  Map<String, dynamic> json,
) => InheritanceChildBase(test2: json['test2'] as String?);

Map<String, dynamic> _$InheritanceChildBaseToJson(
  InheritanceChildBase instance,
) => <String, dynamic>{'test2': ?instance.test2};

InheritanceChild _$InheritanceChildFromJson(Map<String, dynamic> json) =>
    InheritanceChild(
      test2: json['test2'] as String?,
      test1: json['test1'] as String?,
    );

Map<String, dynamic> _$InheritanceChildToJson(InheritanceChild instance) =>
    <String, dynamic>{'test2': ?instance.test2, 'test1': ?instance.test1};

TypedAdditionalProperties _$TypedAdditionalPropertiesFromJson(
  Map<String, dynamic> json,
) => TypedAdditionalProperties();

Map<String, dynamic> _$TypedAdditionalPropertiesToJson(
  TypedAdditionalProperties instance,
) => <String, dynamic>{};

_RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) =>
    _RegisterRequest(email: json['email'] as String);

Map<String, dynamic> _$RegisterRequestToJson(_RegisterRequest instance) =>
    <String, dynamic>{'email': instance.email};

_HelloRequest _$HelloRequestFromJson(Map<String, dynamic> json) =>
    _HelloRequest(salutation: json['salutation'] as String?);

Map<String, dynamic> _$HelloRequestToJson(_HelloRequest instance) =>
    <String, dynamic>{'salutation': ?instance.salutation};

_HelloResponse _$HelloResponseFromJson(Map<String, dynamic> json) =>
    _HelloResponse(message: json['message'] as String?);

Map<String, dynamic> _$HelloResponseToJson(_HelloResponse instance) =>
    <String, dynamic>{'message': ?instance.message};

_RecursiveObject _$RecursiveObjectFromJson(Map<String, dynamic> json) =>
    _RecursiveObject(
      parent: json['parent'] == null
          ? null
          : RecursiveObject.fromJson(json['parent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecursiveObjectToJson(_RecursiveObject instance) =>
    <String, dynamic>{'parent': ?instance.parent};

_TypedAdditionalPropertiesAddProp _$TypedAdditionalPropertiesAddPropFromJson(
  Map<String, dynamic> json,
) => _TypedAdditionalPropertiesAddProp(
  foo: (json['foo'] as num?)?.toInt(),
  bar: json['bar'] as num?,
);

Map<String, dynamic> _$TypedAdditionalPropertiesAddPropToJson(
  _TypedAdditionalPropertiesAddProp instance,
) => <String, dynamic>{'foo': ?instance.foo, 'bar': ?instance.bar};

_UuidExampleMessageIdGetResponseBody200
_$UuidExampleMessageIdGetResponseBody200FromJson(Map<String, dynamic> json) =>
    _UuidExampleMessageIdGetResponseBody200(
      id: const ApiUuidJsonConverter().fromJson(json['id'] as String),
    );

Map<String, dynamic> _$UuidExampleMessageIdGetResponseBody200ToJson(
  _UuidExampleMessageIdGetResponseBody200 instance,
) => <String, dynamic>{'id': const ApiUuidJsonConverter().toJson(instance.id)};
