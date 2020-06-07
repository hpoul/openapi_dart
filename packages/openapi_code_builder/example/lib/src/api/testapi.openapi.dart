import 'package:json_annotation/json_annotation.dart' as _i1;
part 'testapi.openapi.g.dart';

///
@_i1.JsonSerializable()
class RegisterRequest {
  RegisterRequest(
      {

      /// Email address for the current user.
      this.email});

  factory RegisterRequest.fromJson(Map<String, dynamic> map) =>
      _$RegisterRequestFromJson(map);

  /// Email address for the current user.
  final String email;

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}

///
@_i1.JsonSerializable()
class UserRegisterSchema {
  UserRegisterSchema(
      {

      /// Email address for the current user.
      this.email});

  factory UserRegisterSchema.fromJson(Map<String, dynamic> map) =>
      _$UserRegisterSchemaFromJson(map);

  /// Email address for the current user.
  final String email;

  Map<String, dynamic> toJson() => _$UserRegisterSchemaToJson(this);
}

abstract class TestapiOpenapiYaml {
  Future<TestapiOpenapiYamlResponse> userRegisterPost(UserRegisterSchema body);
}

class TestapiOpenapiYamlResponse {
  TestapiOpenapiYamlResponse._(this.status);

  TestapiOpenapiYamlResponse.response200() : this._(200);

  final int status;
}
