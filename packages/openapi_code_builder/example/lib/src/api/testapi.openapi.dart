// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:meta/meta.dart' as _i2;
import 'package:openapi_base/openapi_base.dart' as _i3;
part 'testapi.openapi.g.dart';

///
@_i1.JsonSerializable()
class RegisterRequest {
  RegisterRequest({@_i2.required this.email});

  factory RegisterRequest.fromJson(Map<String, dynamic> jsonMap) =>
      _$RegisterRequestFromJson(jsonMap);

  /// Email address for the current user.
  final String email;

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
  @override
  String toString() => toJson().toString();
}

///
@_i1.JsonSerializable()
class HelloRequest {
  HelloRequest({this.salutation});

  factory HelloRequest.fromJson(Map<String, dynamic> jsonMap) =>
      _$HelloRequestFromJson(jsonMap);

  /// Salutation used for greetings.
  final String salutation;

  Map<String, dynamic> toJson() => _$HelloRequestToJson(this);
  @override
  String toString() => toJson().toString();
}

///
@_i1.JsonSerializable()
class HelloResponse {
  HelloResponse({this.message});

  factory HelloResponse.fromJson(Map<String, dynamic> jsonMap) =>
      _$HelloResponseFromJson(jsonMap);

  /// The Hello World greeting ;-)
  final String message;

  Map<String, dynamic> toJson() => _$HelloResponseToJson(this);
  @override
  String toString() => toJson().toString();
}

class _UserRegisterPostResponse200 extends UserRegisterPostResponse {
  /// OK
  _UserRegisterPostResponse200.response200() : status = 200;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class UserRegisterPostResponse extends _i3.OpenApiResponse {
  UserRegisterPostResponse();

  /// OK
  factory UserRegisterPostResponse.response200() =>
      _UserRegisterPostResponse200.response200();

  void map(
      {@_i2.required _i3.ResponseMap<_UserRegisterPostResponse200> on200}) {
    if (this is _UserRegisterPostResponse200) {
      on200((this as _UserRegisterPostResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _HelloNameHtmlGetResponse200 extends HelloNameHtmlGetResponse
    implements _i3.OpenApiResponseBodyString {
  /// OK
  _HelloNameHtmlGetResponse200.response200(this.body) : status = 200;

  @override
  final int status;

  final String body;

  @override
  final _i3.OpenApiContentType contentType =
      _i3.OpenApiContentType.parse('text/html');

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'body': body, 'contentType': contentType};
}

abstract class HelloNameHtmlGetResponse extends _i3.OpenApiResponse {
  HelloNameHtmlGetResponse();

  /// OK
  factory HelloNameHtmlGetResponse.response200(String body) =>
      _HelloNameHtmlGetResponse200.response200(body);

  void map(
      {@_i2.required _i3.ResponseMap<_HelloNameHtmlGetResponse200> on200}) {
    if (this is _HelloNameHtmlGetResponse200) {
      on200((this as _HelloNameHtmlGetResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _HelloNameGetResponse200 extends HelloNameGetResponse
    implements _i3.OpenApiResponseBodyJson {
  /// OK
  _HelloNameGetResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final HelloResponse body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final _i3.OpenApiContentType contentType =
      _i3.OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

abstract class HelloNameGetResponse extends _i3.OpenApiResponse {
  HelloNameGetResponse();

  /// OK
  factory HelloNameGetResponse.response200(HelloResponse body) =>
      _HelloNameGetResponse200.response200(body);

  void map({@_i2.required _i3.ResponseMap<_HelloNameGetResponse200> on200}) {
    if (this is _HelloNameGetResponse200) {
      on200((this as _HelloNameGetResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _HelloNamePutResponse200 extends HelloNamePutResponse
    implements _i3.OpenApiResponseBodyJson {
  /// OK
  _HelloNamePutResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final HelloResponse body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final _i3.OpenApiContentType contentType =
      _i3.OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

abstract class HelloNamePutResponse extends _i3.OpenApiResponse {
  HelloNamePutResponse();

  /// OK
  factory HelloNamePutResponse.response200(HelloResponse body) =>
      _HelloNamePutResponse200.response200(body);

  void map({@_i2.required _i3.ResponseMap<_HelloNamePutResponse200> on200}) {
    if (this is _HelloNamePutResponse200) {
      on200((this as _HelloNamePutResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

abstract class TestApi implements _i3.ApiEndpoint {
  /// Create new user
  /// post: /user/register
  Future<UserRegisterPostResponse> userRegisterPost(RegisterRequest body);

  /// Say Hello World to {name} with a nice html page.
  /// get: /hello/{name}/html
  Future<HelloNameHtmlGetResponse> helloNameHtmlGet(
      {@_i2.required String name});

  /// Say Hello World to {name}
  /// get: /hello/{name}
  Future<HelloNameGetResponse> helloNameGet({@_i2.required String name});

  /// Say Hello World to {name} with some parameters
  /// put: /hello/{name}
  Future<HelloNamePutResponse> helloNamePut(HelloRequest body,
      {@_i2.required String name});
}

abstract class TestApiClient {
  factory TestApiClient(Uri baseUri, _i3.OpenApiRequestSender requestSender) =>
      _TestApiClientImpl._(baseUri, requestSender);

  /// Create new user
  /// post: /user/register
  ///
  Future<UserRegisterPostResponse> userRegisterPost(RegisterRequest body);

  /// Say Hello World to {name} with a nice html page.
  /// get: /hello/{name}/html
  ///
  Future<HelloNameHtmlGetResponse> helloNameHtmlGet(
      {@_i2.required String name});

  /// Say Hello World to {name}
  /// get: /hello/{name}
  ///
  Future<HelloNameGetResponse> helloNameGet({@_i2.required String name});

  /// Say Hello World to {name} with some parameters
  /// put: /hello/{name}
  ///
  Future<HelloNamePutResponse> helloNamePut(HelloRequest body,
      {@_i2.required String name});
}

class _TestApiClientImpl extends _i3.OpenApiClientBase
    implements TestApiClient {
  _TestApiClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final _i3.OpenApiRequestSender requestSender;

  /// Create new user
  /// post: /user/register
  ///
  @override
  Future<UserRegisterPostResponse> userRegisterPost(
      RegisterRequest body) async {
    final request = _i3.OpenApiClientRequest('post', '/user/register');
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '200': (_i3.OpenApiClientResponse response) async =>
          _UserRegisterPostResponse200.response200()
    });
  }

  /// Say Hello World to {name} with a nice html page.
  /// get: /hello/{name}/html
  ///
  @override
  Future<HelloNameHtmlGetResponse> helloNameHtmlGet(
      {@_i2.required String name}) async {
    final request = _i3.OpenApiClientRequest('get', '/hello/{name}/html');
    request.addPathParameter('name', encodeString(name));
    return await sendRequest(request, {
      '200': (_i3.OpenApiClientResponse response) async =>
          _HelloNameHtmlGetResponse200.response200(
              await response.responseBodyString())
    });
  }

  /// Say Hello World to {name}
  /// get: /hello/{name}
  ///
  @override
  Future<HelloNameGetResponse> helloNameGet({@_i2.required String name}) async {
    final request = _i3.OpenApiClientRequest('get', '/hello/{name}');
    request.addPathParameter('name', encodeString(name));
    return await sendRequest(request, {
      '200': (_i3.OpenApiClientResponse response) async =>
          _HelloNameGetResponse200.response200(
              HelloResponse.fromJson(await response.responseBodyJson()))
    });
  }

  /// Say Hello World to {name} with some parameters
  /// put: /hello/{name}
  ///
  @override
  Future<HelloNamePutResponse> helloNamePut(HelloRequest body,
      {@_i2.required String name}) async {
    final request = _i3.OpenApiClientRequest('put', '/hello/{name}');
    request.addPathParameter('name', encodeString(name));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '200': (_i3.OpenApiClientResponse response) async =>
          _HelloNamePutResponse200.response200(
              HelloResponse.fromJson(await response.responseBodyJson()))
    });
  }
}

class TestApiUrlResolve with _i3.OpenApiUrlEncodeMixin {
  /// Create new user
  /// post: /user/register
  ///
  _i3.OpenApiClientRequest userRegisterPost() {
    final request = _i3.OpenApiClientRequest('post', '/user/register');
    return request;
  }

  /// Say Hello World to {name} with a nice html page.
  /// get: /hello/{name}/html
  ///
  _i3.OpenApiClientRequest helloNameHtmlGet({@_i2.required String name}) {
    final request = _i3.OpenApiClientRequest('get', '/hello/{name}/html');
    request.addPathParameter('name', encodeString(name));
    return request;
  }

  /// Say Hello World to {name}
  /// get: /hello/{name}
  ///
  _i3.OpenApiClientRequest helloNameGet({@_i2.required String name}) {
    final request = _i3.OpenApiClientRequest('get', '/hello/{name}');
    request.addPathParameter('name', encodeString(name));
    return request;
  }

  /// Say Hello World to {name} with some parameters
  /// put: /hello/{name}
  ///
  _i3.OpenApiClientRequest helloNamePut({@_i2.required String name}) {
    final request = _i3.OpenApiClientRequest('put', '/hello/{name}');
    request.addPathParameter('name', encodeString(name));
    return request;
  }
}

class TestApiRouter extends _i3.OpenApiServerRouterBase {
  TestApiRouter(this.impl);

  final _i3.ApiEndpointProvider<TestApi> impl;

  @override
  void configure() {
    addRoute('/user/register', 'post', (_i3.OpenApiRequest request) async {
      return await impl.invoke((TestApi impl) async => impl.userRegisterPost(
          RegisterRequest.fromJson(await request.readJsonBody())));
    }, security: []);
    addRoute('/hello/{name}/html', 'get', (_i3.OpenApiRequest request) async {
      return await impl.invoke((TestApi impl) async => impl.helloNameHtmlGet(
          name: paramToString(request.pathParameter('name'))));
    }, security: []);
    addRoute('/hello/{name}', 'get', (_i3.OpenApiRequest request) async {
      return await impl.invoke((TestApi impl) async => impl.helloNameGet(
          name: paramToString(request.pathParameter('name'))));
    }, security: []);
    addRoute('/hello/{name}', 'put', (_i3.OpenApiRequest request) async {
      return await impl.invoke((TestApi impl) async => impl.helloNamePut(
          HelloRequest.fromJson(await request.readJsonBody()),
          name: paramToString(request.pathParameter('name'))));
    }, security: []);
  }
}

class SecuritySchemes {}
