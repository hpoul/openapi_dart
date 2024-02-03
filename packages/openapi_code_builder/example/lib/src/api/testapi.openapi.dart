// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'testapi.openapi.g.dart';

@JsonSerializable()
@ApiUuidJsonConverter()
@Uint8ListConverter()
class RegisterRequest implements OpenApiContent {
  RegisterRequest({required this.email});

  factory RegisterRequest.fromJson(Map<String, dynamic> jsonMap) =>
      _$RegisterRequestFromJson(jsonMap);

  /// Email address for the current user.
  @JsonKey(
    name: 'email',
    includeIfNull: false,
  )
  final String email;

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
@Uint8ListConverter()
class HelloRequest implements OpenApiContent {
  HelloRequest({this.salutation});

  factory HelloRequest.fromJson(Map<String, dynamic> jsonMap) =>
      _$HelloRequestFromJson(jsonMap);

  /// Salutation used for greetings.
  @JsonKey(
    name: 'salutation',
    includeIfNull: false,
  )
  final String? salutation;

  Map<String, dynamic> toJson() => _$HelloRequestToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
@Uint8ListConverter()
class HelloResponse implements OpenApiContent {
  HelloResponse({this.message});

  factory HelloResponse.fromJson(Map<String, dynamic> jsonMap) =>
      _$HelloResponseFromJson(jsonMap);

  /// The Hello World greeting ;-)
  @JsonKey(
    name: 'message',
    includeIfNull: false,
  )
  final String? message;

  Map<String, dynamic> toJson() => _$HelloResponseToJson(this);

  @override
  String toString() => toJson().toString();
}

class UserRegisterPostResponse200 extends UserRegisterPostResponse {
  /// OK
  UserRegisterPostResponse200.response200() : status = 200;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'contentType': contentType,
      };
}

sealed class UserRegisterPostResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  UserRegisterPostResponse();

  /// OK
  factory UserRegisterPostResponse.response200() =>
      UserRegisterPostResponse200.response200();

  R map<R>({
    required ResponseMap<UserRegisterPostResponse200, R> on200,
    ResponseMap<UserRegisterPostResponse, R>? onElse,
  }) {
    if (this is UserRegisterPostResponse200) {
      return on200((this as UserRegisterPostResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  void requireSuccess() {
    if (this is UserRegisterPostResponse200) {
      return;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class HelloNameHtmlGetResponse200 extends HelloNameHtmlGetResponse
    implements OpenApiResponseBodyString {
  /// OK
  HelloNameHtmlGetResponse200.response200(this.body) : status = 200;

  @override
  final int status;

  @override
  final String body;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse('text/html');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'contentType': contentType,
      };
}

sealed class HelloNameHtmlGetResponse extends OpenApiResponse
    implements HasSuccessResponse<String> {
  HelloNameHtmlGetResponse();

  /// OK
  factory HelloNameHtmlGetResponse.response200(String body) =>
      HelloNameHtmlGetResponse200.response200(body);

  R map<R>({
    required ResponseMap<HelloNameHtmlGetResponse200, R> on200,
    ResponseMap<HelloNameHtmlGetResponse, R>? onElse,
  }) {
    if (this is HelloNameHtmlGetResponse200) {
      return on200((this as HelloNameHtmlGetResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  String requireSuccess() {
    if (this is HelloNameHtmlGetResponse200) {
      return (this as HelloNameHtmlGetResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class HelloNameGetResponse200 extends HelloNameGetResponse
    implements OpenApiResponseBodyJson {
  /// OK
  HelloNameGetResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final HelloResponse body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

sealed class HelloNameGetResponse extends OpenApiResponse
    implements HasSuccessResponse<HelloResponse> {
  HelloNameGetResponse();

  /// OK
  factory HelloNameGetResponse.response200(HelloResponse body) =>
      HelloNameGetResponse200.response200(body);

  R map<R>({
    required ResponseMap<HelloNameGetResponse200, R> on200,
    ResponseMap<HelloNameGetResponse, R>? onElse,
  }) {
    if (this is HelloNameGetResponse200) {
      return on200((this as HelloNameGetResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  HelloResponse requireSuccess() {
    if (this is HelloNameGetResponse200) {
      return (this as HelloNameGetResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class HelloNamePutResponse200 extends HelloNamePutResponse
    implements OpenApiResponseBodyJson {
  /// OK
  HelloNamePutResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final HelloResponse body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

sealed class HelloNamePutResponse extends OpenApiResponse
    implements HasSuccessResponse<HelloResponse> {
  HelloNamePutResponse();

  /// OK
  factory HelloNamePutResponse.response200(HelloResponse body) =>
      HelloNamePutResponse200.response200(body);

  R map<R>({
    required ResponseMap<HelloNamePutResponse200, R> on200,
    ResponseMap<HelloNamePutResponse, R>? onElse,
  }) {
    if (this is HelloNamePutResponse200) {
      return on200((this as HelloNamePutResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  HelloResponse requireSuccess() {
    if (this is HelloNamePutResponse200) {
      return (this as HelloNamePutResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

@JsonSerializable()
@ApiUuidJsonConverter()
@Uint8ListConverter()
class UuidExampleMessageIdGetResponseBody200 implements OpenApiContent {
  UuidExampleMessageIdGetResponseBody200({required this.id});

  factory UuidExampleMessageIdGetResponseBody200.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$UuidExampleMessageIdGetResponseBody200FromJson(jsonMap);

  @JsonKey(
    name: 'id',
    includeIfNull: false,
  )
  @ApiUuidJsonConverter()
  final ApiUuid id;

  Map<String, dynamic> toJson() =>
      _$UuidExampleMessageIdGetResponseBody200ToJson(this);

  @override
  String toString() => toJson().toString();
}

class UuidExampleMessageIdGetResponse200 extends UuidExampleMessageIdGetResponse
    implements OpenApiResponseBodyJson {
  /// OK
  UuidExampleMessageIdGetResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final UuidExampleMessageIdGetResponseBody200 body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType,
      };
}

sealed class UuidExampleMessageIdGetResponse extends OpenApiResponse
    implements HasSuccessResponse<UuidExampleMessageIdGetResponseBody200> {
  UuidExampleMessageIdGetResponse();

  /// OK
  factory UuidExampleMessageIdGetResponse.response200(
          UuidExampleMessageIdGetResponseBody200 body) =>
      UuidExampleMessageIdGetResponse200.response200(body);

  R map<R>({
    required ResponseMap<UuidExampleMessageIdGetResponse200, R> on200,
    ResponseMap<UuidExampleMessageIdGetResponse, R>? onElse,
  }) {
    if (this is UuidExampleMessageIdGetResponse200) {
      return on200((this as UuidExampleMessageIdGetResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  UuidExampleMessageIdGetResponseBody200 requireSuccess() {
    if (this is UuidExampleMessageIdGetResponse200) {
      return (this as UuidExampleMessageIdGetResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

abstract class TestApi implements ApiEndpoint {
  /// Create new user
  /// post: /user/register
  Future<UserRegisterPostResponse> userRegisterPost(RegisterRequest body);

  /// Say Hello World to {name} with a nice html page.
  /// get: /hello/{name}/html
  Future<HelloNameHtmlGetResponse> helloNameHtmlGet({required String name});

  /// Say Hello World to {name}
  /// get: /hello/{name}
  Future<HelloNameGetResponse> helloNameGet({
    required String name,
    String? salutation,
  });

  /// Say Hello World to {name} with some parameters
  /// put: /hello/{name}
  Future<HelloNamePutResponse> helloNamePut(
    HelloRequest body, {
    required String name,
  });

  /// details of uuid.
  /// get: /uuidExample/{messageId}
  Future<UuidExampleMessageIdGetResponse> uuidExampleMessageIdGet(
      {required ApiUuid messageId});
}

abstract class TestApiClient implements OpenApiClient {
  factory TestApiClient(
    Uri baseUri,
    OpenApiRequestSender requestSender,
  ) =>
      _TestApiClientImpl._(
        baseUri,
        requestSender,
      );

  /// Create new user
  /// post: /user/register
  ///
  Future<UserRegisterPostResponse> userRegisterPost(RegisterRequest body);

  /// Say Hello World to {name} with a nice html page.
  /// get: /hello/{name}/html
  ///
  Future<HelloNameHtmlGetResponse> helloNameHtmlGet({required String name});

  /// Say Hello World to {name}
  /// get: /hello/{name}
  ///
  /// * [salutation]: Optional salutation
  Future<HelloNameGetResponse> helloNameGet({
    required String name,
    String? salutation,
  });

  /// Say Hello World to {name} with some parameters
  /// put: /hello/{name}
  ///
  Future<HelloNamePutResponse> helloNamePut(
    HelloRequest body, {
    required String name,
  });

  /// details of uuid.
  /// get: /uuidExample/{messageId}
  ///
  Future<UuidExampleMessageIdGetResponse> uuidExampleMessageIdGet(
      {required ApiUuid messageId});
}

class _TestApiClientImpl extends OpenApiClientBase implements TestApiClient {
  _TestApiClientImpl._(
    this.baseUri,
    this.requestSender,
  );

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  /// Create new user
  /// post: /user/register
  ///
  @override
  Future<UserRegisterPostResponse> userRegisterPost(
      RegisterRequest body) async {
    final request = OpenApiClientRequest(
      'post',
      '/user/register',
      [],
    );
    request.setHeader(
      'content-type',
      'application/json',
    );
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            UserRegisterPostResponse200.response200()
      },
    );
  }

  /// Say Hello World to {name} with a nice html page.
  /// get: /hello/{name}/html
  ///
  @override
  Future<HelloNameHtmlGetResponse> helloNameHtmlGet(
      {required String name}) async {
    final request = OpenApiClientRequest(
      'get',
      '/hello/{name}/html',
      [],
    );
    request.addPathParameter(
      'name',
      encodeString(name),
    );
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            HelloNameHtmlGetResponse200.response200(
                await response.responseBodyString())
      },
    );
  }

  /// Say Hello World to {name}
  /// get: /hello/{name}
  ///
  /// * [salutation]: Optional salutation
  @override
  Future<HelloNameGetResponse> helloNameGet({
    required String name,
    String? salutation,
  }) async {
    final request = OpenApiClientRequest(
      'get',
      '/hello/{name}',
      [],
    );
    request.addPathParameter(
      'name',
      encodeString(name),
    );
    request.addQueryParameter(
      'salutation',
      encodeString(salutation),
    );
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            HelloNameGetResponse200.response200(
                HelloResponse.fromJson(await response.responseBodyJson()))
      },
    );
  }

  /// Say Hello World to {name} with some parameters
  /// put: /hello/{name}
  ///
  @override
  Future<HelloNamePutResponse> helloNamePut(
    HelloRequest body, {
    required String name,
  }) async {
    final request = OpenApiClientRequest(
      'put',
      '/hello/{name}',
      [],
    );
    request.addPathParameter(
      'name',
      encodeString(name),
    );
    request.setHeader(
      'content-type',
      'application/json',
    );
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            HelloNamePutResponse200.response200(
                HelloResponse.fromJson(await response.responseBodyJson()))
      },
    );
  }

  /// details of uuid.
  /// get: /uuidExample/{messageId}
  ///
  @override
  Future<UuidExampleMessageIdGetResponse> uuidExampleMessageIdGet(
      {required ApiUuid messageId}) async {
    final request = OpenApiClientRequest(
      'get',
      '/uuidExample/{messageId}',
      [],
    );
    request.addPathParameter(
      'messageId',
      encodeString(messageId.encodeToString()),
    );
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            UuidExampleMessageIdGetResponse200.response200(
                UuidExampleMessageIdGetResponseBody200.fromJson(
                    await response.responseBodyJson()))
      },
    );
  }
}

class TestApiUrlResolve with OpenApiUrlEncodeMixin {
  /// Create new user
  /// post: /user/register
  ///
  OpenApiClientRequest userRegisterPost() {
    final request = OpenApiClientRequest(
      'post',
      '/user/register',
      [],
    );
    return request;
  }

  /// Say Hello World to {name} with a nice html page.
  /// get: /hello/{name}/html
  ///
  OpenApiClientRequest helloNameHtmlGet({required String name}) {
    final request = OpenApiClientRequest(
      'get',
      '/hello/{name}/html',
      [],
    );
    request.addPathParameter(
      'name',
      encodeString(name),
    );
    return request;
  }

  /// Say Hello World to {name}
  /// get: /hello/{name}
  ///
  /// * [salutation]: Optional salutation
  OpenApiClientRequest helloNameGet({
    required String name,
    String? salutation,
  }) {
    final request = OpenApiClientRequest(
      'get',
      '/hello/{name}',
      [],
    );
    request.addPathParameter(
      'name',
      encodeString(name),
    );
    request.addQueryParameter(
      'salutation',
      encodeString(salutation),
    );
    return request;
  }

  /// Say Hello World to {name} with some parameters
  /// put: /hello/{name}
  ///
  OpenApiClientRequest helloNamePut({required String name}) {
    final request = OpenApiClientRequest(
      'put',
      '/hello/{name}',
      [],
    );
    request.addPathParameter(
      'name',
      encodeString(name),
    );
    return request;
  }

  /// details of uuid.
  /// get: /uuidExample/{messageId}
  ///
  OpenApiClientRequest uuidExampleMessageIdGet({required ApiUuid messageId}) {
    final request = OpenApiClientRequest(
      'get',
      '/uuidExample/{messageId}',
      [],
    );
    request.addPathParameter(
      'messageId',
      encodeString(messageId.encodeToString()),
    );
    return request;
  }
}

class TestApiRouter extends OpenApiServerRouterBase {
  TestApiRouter(this.impl);

  final ApiEndpointProvider<TestApi> impl;

  @override
  void configure() {
    addRoute(
      '/user/register',
      'post',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (TestApi impl) async => impl.userRegisterPost(
              RegisterRequest.fromJson(await request.readJsonBody())),
        );
      },
      security: [],
    );
    addRoute(
      '/hello/{name}/html',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (TestApi impl) async => impl.helloNameHtmlGet(
              name: paramRequired(
            name: 'name',
            value: request.pathParameter('name'),
            decode: (value) => paramToString(value),
          )),
        );
      },
      security: [],
    );
    addRoute(
      '/hello/{name}',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (TestApi impl) async => impl.helloNameGet(
            name: paramRequired(
              name: 'name',
              value: request.pathParameter('name'),
              decode: (value) => paramToString(value),
            ),
            salutation: paramOpt(
              name: 'salutation',
              value: request.queryParameter('salutation'),
              decode: (value) => paramToString(value),
            ),
          ),
        );
      },
      security: [],
    );
    addRoute(
      '/hello/{name}',
      'put',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (TestApi impl) async => impl.helloNamePut(
            HelloRequest.fromJson(await request.readJsonBody()),
            name: paramRequired(
              name: 'name',
              value: request.pathParameter('name'),
              decode: (value) => paramToString(value),
            ),
          ),
        );
      },
      security: [],
    );
    addRoute(
      '/uuidExample/{messageId}',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (TestApi impl) async => impl.uuidExampleMessageIdGet(
              messageId: paramRequired(
            name: 'messageId',
            value: request.pathParameter('messageId'),
            decode: (value) => ApiUuid.parse(paramToString(value)),
          )),
        );
      },
      security: [],
    );
  }
}

class SecuritySchemes {}

T _throwStateError<T>(String message) => throw StateError(message);
