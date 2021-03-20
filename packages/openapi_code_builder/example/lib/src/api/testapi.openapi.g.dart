// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testapi.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) {
  return RegisterRequest(
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

HelloRequest _$HelloRequestFromJson(Map<String, dynamic> json) {
  return HelloRequest(
    salutation: json['salutation'] as String?,
  );
}

Map<String, dynamic> _$HelloRequestToJson(HelloRequest instance) =>
    <String, dynamic>{
      'salutation': instance.salutation,
    };

HelloResponse _$HelloResponseFromJson(Map<String, dynamic> json) {
  return HelloResponse(
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$HelloResponseToJson(HelloResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

UuidExampleMessageIdGetResponseBody200
    _$UuidExampleMessageIdGetResponseBody200FromJson(
        Map<String, dynamic> json) {
  return UuidExampleMessageIdGetResponseBody200(
    id: const ApiUuidJsonConverter().fromJson(json['id'] as String),
  );
}

Map<String, dynamic> _$UuidExampleMessageIdGetResponseBody200ToJson(
        UuidExampleMessageIdGetResponseBody200 instance) =>
    <String, dynamic>{
      'id': const ApiUuidJsonConverter().toJson(instance.id),
    };
