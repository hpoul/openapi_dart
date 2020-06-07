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

UserRegisterSchema _$UserRegisterSchemaFromJson(Map<String, dynamic> json) {
  return UserRegisterSchema(
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$UserRegisterSchemaToJson(UserRegisterSchema instance) =>
    <String, dynamic>{
      'email': instance.email,
    };
