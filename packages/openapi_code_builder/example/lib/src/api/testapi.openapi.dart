// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:openapi_base/openapi_base.dart' as _i2;
part 'testapi.openapi.g.dart';

///
@_i1.JsonSerializable()
class RegisterRequest {
  RegisterRequest({this.email});

  factory RegisterRequest.fromJson(Map<String, dynamic> map) =>
      _$RegisterRequestFromJson(map);

  /// Email address for the current user.
  final String email;

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}

class UserRegisterPostResponse extends _i2.OpenApiResponse {
  UserRegisterPostResponse._(this.status);

  /// OK
  UserRegisterPostResponse.response200() : this._(200);

  final int status;
}

///
@_i1.JsonSerializable()
class UserRegisterSchema {
  UserRegisterSchema({this.email});

  factory UserRegisterSchema.fromJson(Map<String, dynamic> map) =>
      _$UserRegisterSchemaFromJson(map);

  /// Email address for the current user.
  final String email;

  Map<String, dynamic> toJson() => _$UserRegisterSchemaToJson(this);
}

abstract class Testapi {
  Future<UserRegisterPostResponse> userRegisterPost(UserRegisterSchema body);
}

class TestapiRouter extends _i2.OpenApiServerRouterBase {
  TestapiRouter(this.impl);

  final Testapi impl;

  void configure() {
    addRoute('/user/register', 'post', (_i2.OpenApiRequest request) async {
      return await impl.userRegisterPost(
          UserRegisterSchema.fromJson(request.readJsonBody()));
    });
  }
}
