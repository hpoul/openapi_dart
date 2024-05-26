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

Map<String, dynamic> _$HelloRequestToJson(HelloRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('salutation', instance.salutation);
  return val;
}

HelloResponse _$HelloResponseFromJson(Map<String, dynamic> json) =>
    HelloResponse(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$HelloResponseToJson(HelloResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}

InheritanceBase _$InheritanceBaseFromJson(Map<String, dynamic> json) =>
    InheritanceBase(
      test1: json['test1'] as String?,
    );

Map<String, dynamic> _$InheritanceBaseToJson(InheritanceBase instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('test1', instance.test1);
  return val;
}

InheritanceChildBase _$InheritanceChildBaseFromJson(
        Map<String, dynamic> json) =>
    InheritanceChildBase(
      test2: json['test2'] as String?,
    );

Map<String, dynamic> _$InheritanceChildBaseToJson(
    InheritanceChildBase instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('test2', instance.test2);
  return val;
}

InheritanceChild _$InheritanceChildFromJson(Map<String, dynamic> json) =>
    InheritanceChild(
      test2: json['test2'] as String?,
      test1: json['test1'] as String?,
    );

Map<String, dynamic> _$InheritanceChildToJson(InheritanceChild instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('test2', instance.test2);
  writeNotNull('test1', instance.test1);
  return val;
}

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
