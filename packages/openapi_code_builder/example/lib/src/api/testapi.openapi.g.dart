// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testapi.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) =>
    RegisterRequest(
      email: json['email'] as String,
    );

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

HelloRequest _$HelloRequestFromJson(Map<String, dynamic> json) => HelloRequest(
      salutation: json['salutation'] as String?,
    );

Map<String, dynamic> _$HelloRequestToJson(HelloRequest instance) =>
    <String, dynamic>{
      if (instance.salutation case final value?) 'salutation': value,
    };

HelloResponse _$HelloResponseFromJson(Map<String, dynamic> json) =>
    HelloResponse(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$HelloResponseToJson(HelloResponse instance) =>
    <String, dynamic>{
      if (instance.message case final value?) 'message': value,
    };

InheritanceBase _$InheritanceBaseFromJson(Map<String, dynamic> json) =>
    InheritanceBase(
      test1: json['test1'] as String?,
    );

Map<String, dynamic> _$InheritanceBaseToJson(InheritanceBase instance) =>
    <String, dynamic>{
      if (instance.test1 case final value?) 'test1': value,
    };

InheritanceChildBase _$InheritanceChildBaseFromJson(
        Map<String, dynamic> json) =>
    InheritanceChildBase(
      test2: json['test2'] as String?,
    );

Map<String, dynamic> _$InheritanceChildBaseToJson(
        InheritanceChildBase instance) =>
    <String, dynamic>{
      if (instance.test2 case final value?) 'test2': value,
    };

InheritanceChild _$InheritanceChildFromJson(Map<String, dynamic> json) =>
    InheritanceChild(
      test2: json['test2'] as String?,
      test1: json['test1'] as String?,
    );

Map<String, dynamic> _$InheritanceChildToJson(InheritanceChild instance) =>
    <String, dynamic>{
      if (instance.test2 case final value?) 'test2': value,
      if (instance.test1 case final value?) 'test1': value,
    };

RecursiveObject _$RecursiveObjectFromJson(Map<String, dynamic> json) =>
    RecursiveObject(
      parent: json['parent'] == null
          ? null
          : RecursiveObject.fromJson(json['parent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecursiveObjectToJson(RecursiveObject instance) =>
    <String, dynamic>{
      if (instance.parent case final value?) 'parent': value,
    };

TypedAdditionalPropertiesAddProp _$TypedAdditionalPropertiesAddPropFromJson(
        Map<String, dynamic> json) =>
    TypedAdditionalPropertiesAddProp(
      foo: (json['foo'] as num?)?.toInt(),
      bar: json['bar'] as num?,
    );

Map<String, dynamic> _$TypedAdditionalPropertiesAddPropToJson(
        TypedAdditionalPropertiesAddProp instance) =>
    <String, dynamic>{
      if (instance.foo case final value?) 'foo': value,
      if (instance.bar case final value?) 'bar': value,
    };

TypedAdditionalProperties _$TypedAdditionalPropertiesFromJson(
        Map<String, dynamic> json) =>
    TypedAdditionalProperties();

Map<String, dynamic> _$TypedAdditionalPropertiesToJson(
        TypedAdditionalProperties instance) =>
    <String, dynamic>{};

UuidExampleMessageIdGetResponseBody200
    _$UuidExampleMessageIdGetResponseBody200FromJson(
            Map<String, dynamic> json) =>
        UuidExampleMessageIdGetResponseBody200(
          id: const ApiUuidJsonConverter().fromJson(json['id'] as String),
        );

Map<String, dynamic> _$UuidExampleMessageIdGetResponseBody200ToJson(
        UuidExampleMessageIdGetResponseBody200 instance) =>
    <String, dynamic>{
      'id': const ApiUuidJsonConverter().toJson(instance.id),
    };
