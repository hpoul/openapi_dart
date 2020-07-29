// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:meta/meta.dart' as _i3;
import 'package:openapi_base/openapi_base.dart' as _i2;
part 'testapi.openapi.g.dart';

@_i1.JsonSerializable()
class RegisterRequest implements _i2.OpenApiContent {
  RegisterRequest({@_i3.required this.email}) : assert(email != null);

  factory RegisterRequest.fromJson(Map<String, dynamic> jsonMap) =>
      _$RegisterRequestFromJson(jsonMap);

  /// Email address for the current user.
  @_i1.JsonKey(name: 'email')
  final String email;

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class HelloRequest implements _i2.OpenApiContent {
  HelloRequest({this.salutation});

  factory HelloRequest.fromJson(Map<String, dynamic> jsonMap) =>
      _$HelloRequestFromJson(jsonMap);

  /// Salutation used for greetings.
  @_i1.JsonKey(name: 'salutation')
  final String salutation;

  Map<String, dynamic> toJson() => _$HelloRequestToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class HelloResponse implements _i2.OpenApiContent {
  HelloResponse({this.message});

  factory HelloResponse.fromJson(Map<String, dynamic> jsonMap) =>
      _$HelloResponseFromJson(jsonMap);

  /// The Hello World greeting ;-)
  @_i1.JsonKey(name: 'message')
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
  final _i2.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class UserRegisterPostResponse extends _i2.OpenApiResponse
    implements _i2.HasSuccessResponse<void> {
  UserRegisterPostResponse();

  /// OK
  factory UserRegisterPostResponse.response200() =>
      _UserRegisterPostResponse200.response200();

  void map(
      {@_i3.required _i2.ResponseMap<_UserRegisterPostResponse200> on200}) {
    if (this is _UserRegisterPostResponse200) {
      on200((this as _UserRegisterPostResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  OK
  @override
  void requireSuccess() {
    if (this is _UserRegisterPostResponse200) {
      return;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class _HelloNameHtmlGetResponse200 extends HelloNameHtmlGetResponse
    implements _i2.OpenApiResponseBodyString {
  /// OK
  _HelloNameHtmlGetResponse200.response200(this.body) : status = 200;

  @override
  final int status;

  @override
  final String body;

  @override
  final _i2.OpenApiContentType contentType =
      _i2.OpenApiContentType.parse('text/html');

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'body': body, 'contentType': contentType};
}

abstract class HelloNameHtmlGetResponse extends _i2.OpenApiResponse
    implements _i2.HasSuccessResponse<String> {
  HelloNameHtmlGetResponse();

  /// OK
  factory HelloNameHtmlGetResponse.response200(String body) =>
      _HelloNameHtmlGetResponse200.response200(body);

  void map(
      {@_i3.required _i2.ResponseMap<_HelloNameHtmlGetResponse200> on200}) {
    if (this is _HelloNameHtmlGetResponse200) {
      on200((this as _HelloNameHtmlGetResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  OK
  @override
  String requireSuccess() {
    if (this is _HelloNameHtmlGetResponse200) {
      return (this as _HelloNameHtmlGetResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class _HelloNameGetResponse200 extends HelloNameGetResponse
    implements _i2.OpenApiResponseBodyJson {
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
  final _i2.OpenApiContentType contentType =
      _i2.OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

abstract class HelloNameGetResponse extends _i2.OpenApiResponse
    implements _i2.HasSuccessResponse<HelloResponse> {
  HelloNameGetResponse();

  /// OK
  factory HelloNameGetResponse.response200(HelloResponse body) =>
      _HelloNameGetResponse200.response200(body);

  void map({@_i3.required _i2.ResponseMap<_HelloNameGetResponse200> on200}) {
    if (this is _HelloNameGetResponse200) {
      on200((this as _HelloNameGetResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  OK
  @override
  HelloResponse requireSuccess() {
    if (this is _HelloNameGetResponse200) {
      return (this as _HelloNameGetResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class _HelloNamePutResponse200 extends HelloNamePutResponse
    implements _i2.OpenApiResponseBodyJson {
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
  final _i2.OpenApiContentType contentType =
      _i2.OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

abstract class HelloNamePutResponse extends _i2.OpenApiResponse
    implements _i2.HasSuccessResponse<HelloResponse> {
  HelloNamePutResponse();

  /// OK
  factory HelloNamePutResponse.response200(HelloResponse body) =>
      _HelloNamePutResponse200.response200(body);

  void map({@_i3.required _i2.ResponseMap<_HelloNamePutResponse200> on200}) {
    if (this is _HelloNamePutResponse200) {
      on200((this as _HelloNamePutResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  OK
  @override
  HelloResponse requireSuccess() {
    if (this is _HelloNamePutResponse200) {
      return (this as _HelloNamePutResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

abstract class TestApi implements _i2.ApiEndpoint {
  /// Create new user
  /// post: /user/register
  Future<UserRegisterPostResponse> userRegisterPost(RegisterRequest body);

  /// Say Hello World to {name} with a nice html page.
  /// get: /hello/{name}/html
  Future<HelloNameHtmlGetResponse> helloNameHtmlGet(
      {@_i3.required String name});

  /// Say Hello World to {name}
  /// get: /hello/{name}
  Future<HelloNameGetResponse> helloNameGet(
      {@_i3.required String name, String salutation});

  /// Say Hello World to {name} with some parameters
  /// put: /hello/{name}
  Future<HelloNamePutResponse> helloNamePut(HelloRequest body,
      {@_i3.required String name});
}

abstract class TestApiClient implements _i2.OpenApiClient {
  factory TestApiClient(Uri baseUri, _i2.OpenApiRequestSender requestSender) =>
      _TestApiClientImpl._(baseUri, requestSender);

  /// Create new user
  /// post: /user/register
  ///
  Future<UserRegisterPostResponse> userRegisterPost(RegisterRequest body);

  /// Say Hello World to {name} with a nice html page.
  /// get: /hello/{name}/html
  ///
  Future<HelloNameHtmlGetResponse> helloNameHtmlGet(
      {@_i3.required String name});

  /// Say Hello World to {name}
  /// get: /hello/{name}
  ///
  /// * [salutation]: Optional salutation
  Future<HelloNameGetResponse> helloNameGet(
      {@_i3.required String name, String salutation});

  /// Say Hello World to {name} with some parameters
  /// put: /hello/{name}
  ///
  Future<HelloNamePutResponse> helloNamePut(HelloRequest body,
      {@_i3.required String name});
}

class _TestApiClientImpl extends _i2.OpenApiClientBase
    implements TestApiClient {
  _TestApiClientImpl._(this.baseUri, this.requestSender);

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
    final request = _i2.OpenApiClientRequest('post', '/user/register', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(_i2.OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          _UserRegisterPostResponse200.response200()
    });
  }

  /// Say Hello World to {name} with a nice html page.
  /// get: /hello/{name}/html
  ///
  @override
  Future<HelloNameHtmlGetResponse> helloNameHtmlGet(
      {@_i3.required String name}) async {
    final request = _i2.OpenApiClientRequest('get', '/hello/{name}/html', []);
    request.addPathParameter('name', encodeString(name));
    request.addQueryParameter('name', encodeString(name));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          _HelloNameHtmlGetResponse200.response200(
              await response.responseBodyString())
    });
  }

  /// Say Hello World to {name}
  /// get: /hello/{name}
  ///
  /// * [salutation]: Optional salutation
  @override
  Future<HelloNameGetResponse> helloNameGet(
      {@_i3.required String name, String salutation}) async {
    final request = _i2.OpenApiClientRequest('get', '/hello/{name}', []);
    request.addPathParameter('name', encodeString(name));
    request.addQueryParameter('name', encodeString(name));
    request.addQueryParameter('salutation', encodeString(salutation));
    request.addQueryParameter('salutation', encodeString(salutation));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          _HelloNameGetResponse200.response200(
              HelloResponse.fromJson(await response.responseBodyJson()))
    });
  }

  /// Say Hello World to {name} with some parameters
  /// put: /hello/{name}
  ///
  @override
  Future<HelloNamePutResponse> helloNamePut(HelloRequest body,
      {@_i3.required String name}) async {
    final request = _i2.OpenApiClientRequest('put', '/hello/{name}', []);
    request.addPathParameter('name', encodeString(name));
    request.addQueryParameter('name', encodeString(name));
    request.setHeader('content-type', 'application/json');
    request.setBody(_i2.OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          _HelloNamePutResponse200.response200(
              HelloResponse.fromJson(await response.responseBodyJson()))
    });
  }
}

class TestApiUrlResolve with _i2.OpenApiUrlEncodeMixin {
  /// Create new user
  /// post: /user/register
  ///
  _i2.OpenApiClientRequest userRegisterPost() {
    final request = _i2.OpenApiClientRequest('post', '/user/register', []);
    return request;
  }

  /// Say Hello World to {name} with a nice html page.
  /// get: /hello/{name}/html
  ///
  _i2.OpenApiClientRequest helloNameHtmlGet({@_i3.required String name}) {
    final request = _i2.OpenApiClientRequest('get', '/hello/{name}/html', []);
    request.addPathParameter('name', encodeString(name));
    request.addQueryParameter('name', encodeString(name));
    return request;
  }

  /// Say Hello World to {name}
  /// get: /hello/{name}
  ///
  /// * [salutation]: Optional salutation
  _i2.OpenApiClientRequest helloNameGet(
      {@_i3.required String name, String salutation}) {
    final request = _i2.OpenApiClientRequest('get', '/hello/{name}', []);
    request.addPathParameter('name', encodeString(name));
    request.addQueryParameter('name', encodeString(name));
    request.addQueryParameter('salutation', encodeString(salutation));
    request.addQueryParameter('salutation', encodeString(salutation));
    return request;
  }

  /// Say Hello World to {name} with some parameters
  /// put: /hello/{name}
  ///
  _i2.OpenApiClientRequest helloNamePut({@_i3.required String name}) {
    final request = _i2.OpenApiClientRequest('put', '/hello/{name}', []);
    request.addPathParameter('name', encodeString(name));
    request.addQueryParameter('name', encodeString(name));
    return request;
  }
}

class TestApiRouter extends _i2.OpenApiServerRouterBase {
  TestApiRouter(this.impl);

  final _i2.ApiEndpointProvider<TestApi> impl;

  @override
  void configure() {
    addRoute('/user/register', 'post', (_i2.OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (TestApi impl) async => impl.userRegisterPost(
              RegisterRequest.fromJson(await request.readJsonBody())));
    }, security: []);
    addRoute('/hello/{name}/html', 'get', (_i2.OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (TestApi impl) async => impl.helloNameHtmlGet(
              name: param(
                  isRequired: true,
                  name: 'name',
                  value: request.pathParameter('name'),
                  decode: (value) => paramToString(value))));
    }, security: []);
    addRoute('/hello/{name}', 'get', (_i2.OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (TestApi impl) async => impl.helloNameGet(
              name: param(
                  isRequired: true,
                  name: 'name',
                  value: request.pathParameter('name'),
                  decode: (value) => paramToString(value)),
              salutation: param(
                  isRequired: false,
                  name: 'salutation',
                  value: request.queryParameter('salutation'),
                  decode: (value) => paramToString(value))));
    }, security: []);
    addRoute('/hello/{name}', 'put', (_i2.OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (TestApi impl) async => impl.helloNamePut(
              HelloRequest.fromJson(await request.readJsonBody()),
              name: param(
                  isRequired: true,
                  name: 'name',
                  value: request.pathParameter('name'),
                  decode: (value) => paramToString(value))));
    }, security: []);
  }
}

class SecuritySchemes {}
