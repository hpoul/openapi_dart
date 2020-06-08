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

///
@_i1.JsonSerializable()
class HelloResponse {
  HelloResponse({this.message});

  factory HelloResponse.fromJson(Map<String, dynamic> map) =>
      _$HelloResponseFromJson(map);

  /// lorem ipsum
  final String message;

  Map<String, dynamic> toJson() => _$HelloResponseToJson(this);
}

class UserRegisterPostResponse extends _i2.OpenApiResponse {
  UserRegisterPostResponse._(this.status);

  /// OK
  UserRegisterPostResponse.response200() : status = 200;

  @override
  final int status;
}

class HelloNameGetResponse extends _i2.OpenApiResponse {
  HelloNameGetResponse._(this.status);

  /// OK
  HelloNameGetResponse.response200(HelloResponse body) : status = 200 {
    bodyJson = body.toJson();
  }

  @override
  final int status;
}

abstract class Testapi {
  /// null
  Future<UserRegisterPostResponse> userRegisterPost(
      _i2.OpenApiRequest request, RegisterRequest body);

  /// null
  Future<HelloNameGetResponse> helloNameGet(
      _i2.OpenApiRequest request, String name);
}

class TestapiRouter extends _i2.OpenApiServerRouterBase {
  TestapiRouter(this.impl);

  final Testapi impl;

  void configure() {
    addRoute('/user/register', 'post', (_i2.OpenApiRequest request) async {
      return await impl.userRegisterPost(
          request, RegisterRequest.fromJson(await request.readJsonBody()));
    });
    addRoute('/hello/{name}', 'get', (_i2.OpenApiRequest request) async {
      return await impl.helloNameGet(
          request, paramToString(request.pathParameter('name')));
    });
  }
}
