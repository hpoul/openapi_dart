// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:meta/meta.dart' as _i3;
import 'package:openapi_base/openapi_base.dart' as _i2;
part 'testapi.openapi.g.dart';

///
@_i1.JsonSerializable()
class RegisterRequest {
  RegisterRequest({this.email});

  factory RegisterRequest.fromJson(Map<String, dynamic> jsonMap) =>
      _$RegisterRequestFromJson(jsonMap);

  /// Email address for the current user.
  final String email;

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}

///
@_i1.JsonSerializable()
class HelloResponse {
  HelloResponse({this.message});

  factory HelloResponse.fromJson(Map<String, dynamic> jsonMap) =>
      _$HelloResponseFromJson(jsonMap);

  /// lorem ipsum
  final String message;

  Map<String, dynamic> toJson() => _$HelloResponseToJson(this);
}

class UserRegisterPostResponse200 extends UserRegisterPostResponse {
  /// OK
  UserRegisterPostResponse200.response200() : status = 200;

  @override
  final int status;
}

abstract class UserRegisterPostResponse extends _i2.OpenApiResponse {
  UserRegisterPostResponse();

  /// OK
  factory UserRegisterPostResponse.response200() =>
      UserRegisterPostResponse200.response200();

  void map({@_i3.required _i2.ResponseMap<UserRegisterPostResponse200> on200}) {
    if (this is UserRegisterPostResponse200) {
      on200((this as UserRegisterPostResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class HelloNameGetResponse200 extends HelloNameGetResponse {
  /// OK
  HelloNameGetResponse200.response200(this.body) : status = 200 {
    bodyJson = body.toJson();
  }

  @override
  final int status;

  final HelloResponse body;
}

abstract class HelloNameGetResponse extends _i2.OpenApiResponse {
  HelloNameGetResponse();

  /// OK
  factory HelloNameGetResponse.response200(HelloResponse body) =>
      HelloNameGetResponse200.response200(body);

  void map({@_i3.required _i2.ResponseMap<HelloNameGetResponse200> on200}) {
    if (this is HelloNameGetResponse200) {
      on200((this as HelloNameGetResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

abstract class Testapi {
  /// Create new user
  /// post: /user/register
  Future<UserRegisterPostResponse> userRegisterPost(
      _i2.OpenApiRequest request, RegisterRequest body);

  /// Say Hello World to {name}
  /// get: /hello/{name}
  Future<HelloNameGetResponse> helloNameGet(
      _i2.OpenApiRequest request, String name);
}

abstract class TestapiClient {
  factory TestapiClient(Uri baseUri, _i2.OpenApiRequestSender requestSender) =>
      _TestapiClientImpl._(baseUri, requestSender);

  /// Create new user
  /// post: /user/register
  ///
  Future<UserRegisterPostResponse> userRegisterPost(RegisterRequest body);

  /// Say Hello World to {name}
  /// get: /hello/{name}
  ///
  Future<HelloNameGetResponse> helloNameGet(String name);
}

class _TestapiClientImpl extends _i2.OpenApiClientBase
    implements TestapiClient {
  _TestapiClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final _i2.OpenApiRequestSender requestSender;

  /// Create new user
  /// post: /user/register
  ///
  @override
  Future<UserRegisterPostResponse> userRegisterPost(
      RegisterRequest body) async {
    final request = _i2.OpenApiClientRequest('post', '/user/register');
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UserRegisterPostResponse200.response200()
    });
  }

  /// Say Hello World to {name}
  /// get: /hello/{name}
  ///
  @override
  Future<HelloNameGetResponse> helloNameGet(String name) async {
    final request = _i2.OpenApiClientRequest('get', '/hello/{name}');
    request.addPathParameter('name', encodeString(name));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          HelloNameGetResponse200.response200(
              HelloResponse.fromJson(await response.responseBodyJson()))
    });
  }
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
