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
    salutation: json['salutation'] as String,
  );
}

Map<String, dynamic> _$HelloRequestToJson(HelloRequest instance) =>
    <String, dynamic>{
      'salutation': instance.salutation,
    };

HelloResponse _$HelloResponseFromJson(Map<String, dynamic> json) {
  return HelloResponse(
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$HelloResponseToJson(HelloResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
