// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testapi.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) =>
    RegisterRequest(email: json['email'] as String);

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{'email': instance.email};

HelloRequest _$HelloRequestFromJson(Map<String, dynamic> json) =>
    HelloRequest(salutation: json['salutation'] as String?);

Map<String, dynamic> _$HelloRequestToJson(HelloRequest instance) =>
    <String, dynamic>{'salutation': ?instance.salutation};

HelloResponse _$HelloResponseFromJson(Map<String, dynamic> json) =>
    HelloResponse(message: json['message'] as String?);

Map<String, dynamic> _$HelloResponseToJson(HelloResponse instance) =>
    <String, dynamic>{'message': ?instance.message};

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

RecursiveObject _$RecursiveObjectFromJson(Map<String, dynamic> json) =>
    RecursiveObject(
      parent: json['parent'] == null
          ? null
          : RecursiveObject.fromJson(json['parent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecursiveObjectToJson(RecursiveObject instance) =>
    <String, dynamic>{'parent': ?instance.parent};

TypedAdditionalPropertiesAddProp _$TypedAdditionalPropertiesAddPropFromJson(
  Map<String, dynamic> json,
) => TypedAdditionalPropertiesAddProp(
  foo: (json['foo'] as num?)?.toInt(),
  bar: json['bar'] as num?,
);

Map<String, dynamic> _$TypedAdditionalPropertiesAddPropToJson(
  TypedAdditionalPropertiesAddProp instance,
) => <String, dynamic>{'foo': ?instance.foo, 'bar': ?instance.bar};

TypedAdditionalProperties _$TypedAdditionalPropertiesFromJson(
  Map<String, dynamic> json,
) => TypedAdditionalProperties();

Map<String, dynamic> _$TypedAdditionalPropertiesToJson(
  TypedAdditionalProperties instance,
) => <String, dynamic>{};

UuidExampleMessageIdGetResponseBody200
_$UuidExampleMessageIdGetResponseBody200FromJson(Map<String, dynamic> json) =>
    UuidExampleMessageIdGetResponseBody200(
      id: const ApiUuidJsonConverter().fromJson(json['id'] as String),
    );

Map<String, dynamic> _$UuidExampleMessageIdGetResponseBody200ToJson(
  UuidExampleMessageIdGetResponseBody200 instance,
) => <String, dynamic>{'id': const ApiUuidJsonConverter().toJson(instance.id)};
