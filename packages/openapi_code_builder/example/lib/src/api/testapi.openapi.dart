// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'testapi.openapi.g.dart';

@JsonSerializable()
@ApiUuidJsonConverter()
class RegisterRequest implements OpenApiContent {
  const RegisterRequest({required this.email});

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
class HelloRequest implements OpenApiContent {
  const HelloRequest({this.salutation});

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
class HelloResponse implements OpenApiContent {
  const HelloResponse({this.message});

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

@JsonSerializable()
@ApiUuidJsonConverter()
class InheritanceBase implements OpenApiContent {
  InheritanceBase({this.test1});

  factory InheritanceBase.fromJson(Map<String, dynamic> jsonMap) =>
      _$InheritanceBaseFromJson(jsonMap)
        .._additionalProperties.addEntries(jsonMap.entries
            .where((e) => !const <String>{'test1'}.contains(e.key)));

  @JsonKey(
    name: 'test1',
    includeIfNull: false,
  )
  final String? test1;

  final Map<String, Object?> _additionalProperties = <String, Object?>{};

  Map<String, dynamic> toJson() =>
      Map.from(_additionalProperties)..addAll(_$InheritanceBaseToJson(this));

  @override
  String toString() => toJson().toString();

  Map<String, Object?> get additionalProperties => _additionalProperties;

  void operator []=(
    String key,
    Object? value,
  ) =>
      _additionalProperties[key] = value;

  Object? operator [](String key) => _additionalProperties[key];
}

@JsonSerializable()
@ApiUuidJsonConverter()
class InheritanceChildBase implements OpenApiContent {
  const InheritanceChildBase({this.test2});

  factory InheritanceChildBase.fromJson(Map<String, dynamic> jsonMap) =>
      _$InheritanceChildBaseFromJson(jsonMap);

  @JsonKey(
    name: 'test2',
    includeIfNull: false,
  )
  final String? test2;

  Map<String, dynamic> toJson() => _$InheritanceChildBaseToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class InheritanceChild
    implements OpenApiContent, InheritanceBase, InheritanceChildBase {
  InheritanceChild({
    this.test2,
    this.test1,
  });

  factory InheritanceChild.fromJson(Map<String, dynamic> jsonMap) =>
      _$InheritanceChildFromJson(jsonMap)
        .._additionalProperties
            .addEntries(jsonMap.entries.where((e) => !const <String>{
                  'test2',
                  'test1',
                }.contains(e.key)));

  @JsonKey(
    name: 'test2',
    includeIfNull: false,
  )
  @override
  final String? test2;

  @JsonKey(
    name: 'test1',
    includeIfNull: false,
  )
  @override
  final String? test1;

  final Map<String, Object?> _additionalProperties = <String, Object?>{};

  @override
  Map<String, dynamic> toJson() =>
      Map.from(_additionalProperties)..addAll(_$InheritanceChildToJson(this));

  @override
  String toString() => toJson().toString();

  Map<String, Object?> get additionalProperties => _additionalProperties;

  void operator []=(
    String key,
    Object? value,
  ) =>
      _additionalProperties[key] = value;

  Object? operator [](String key) => _additionalProperties[key];
}

@JsonSerializable()
@ApiUuidJsonConverter()
class RecursiveObject implements OpenApiContent {
  const RecursiveObject({this.parent});

  factory RecursiveObject.fromJson(Map<String, dynamic> jsonMap) =>
      _$RecursiveObjectFromJson(jsonMap);

  @JsonKey(
    name: 'parent',
    includeIfNull: false,
  )
  final RecursiveObject? parent;

  Map<String, dynamic> toJson() => _$RecursiveObjectToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class TypedAdditionalPropertiesAddProp implements OpenApiContent {
  const TypedAdditionalPropertiesAddProp({
    this.foo,
    this.bar,
  });

  factory TypedAdditionalPropertiesAddProp.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$TypedAdditionalPropertiesAddPropFromJson(jsonMap);

  @JsonKey(
    name: 'foo',
    includeIfNull: false,
  )
  final int? foo;

  @JsonKey(
    name: 'bar',
    includeIfNull: false,
  )
  final num? bar;

  Map<String, dynamic> toJson() =>
      _$TypedAdditionalPropertiesAddPropToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class TypedAdditionalProperties implements OpenApiContent {
  TypedAdditionalProperties();

  factory TypedAdditionalProperties.fromJson(Map<String, dynamic> jsonMap) =>
      _$TypedAdditionalPropertiesFromJson(jsonMap)
        .._additionalProperties.addEntries(jsonMap.entries
            .where((e) => !const <String>{}.contains(e.key))
            .map((e) => MapEntry(
                  e.key,
                  (e.value as Iterable<dynamic>)
                      .map((e) => TypedAdditionalPropertiesAddProp.fromJson(e))
                      .toList(),
                )));

  final Map<String, List<TypedAdditionalPropertiesAddProp>>
      _additionalProperties =
      <String, List<TypedAdditionalPropertiesAddProp>>{};

  Map<String, dynamic> toJson() => Map.from(_additionalProperties)
    ..addAll(_$TypedAdditionalPropertiesToJson(this));

  @override
  String toString() => toJson().toString();

  Map<String, List<TypedAdditionalPropertiesAddProp>>
      get additionalProperties => _additionalProperties;

  void operator []=(
    String key,
    List<TypedAdditionalPropertiesAddProp> value,
  ) =>
      _additionalProperties[key] = value;

  List<TypedAdditionalPropertiesAddProp>? operator [](String key) =>
      _additionalProperties[key];
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
class UuidExampleMessageIdGetResponseBody200 implements OpenApiContent {
  const UuidExampleMessageIdGetResponseBody200({required this.id});

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

class HelloIntegerPutResponse200 extends HelloIntegerPutResponse {
  /// OK
  HelloIntegerPutResponse200.response200() : status = 200;

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

sealed class HelloIntegerPutResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  HelloIntegerPutResponse();

  /// OK
  factory HelloIntegerPutResponse.response200() =>
      HelloIntegerPutResponse200.response200();

  R map<R>({
    required ResponseMap<HelloIntegerPutResponse200, R> on200,
    ResponseMap<HelloIntegerPutResponse, R>? onElse,
  }) {
    if (this is HelloIntegerPutResponse200) {
      return on200((this as HelloIntegerPutResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  void requireSuccess() {
    if (this is HelloIntegerPutResponse200) {
      return;
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

  /// put: /hello/integer
  Future<HelloIntegerPutResponse> helloIntegerPut(int body);
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

  /// put: /hello/integer
  ///
  Future<HelloIntegerPutResponse> helloIntegerPut(int body);
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

  /// put: /hello/integer
  ///
  @override
  Future<HelloIntegerPutResponse> helloIntegerPut(int body) async {
    final request = OpenApiClientRequest(
      'put',
      '/hello/integer',
      [],
    );
    request.setHeader(
      'content-type',
      'application/json',
    );
    request.setBody(OpenApiClientRequestBodyJson(body));
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            HelloIntegerPutResponse200.response200()
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

  /// put: /hello/integer
  ///
  OpenApiClientRequest helloIntegerPut() {
    final request = OpenApiClientRequest(
      'put',
      '/hello/integer',
      [],
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
    addRoute(
      '/hello/integer',
      'put',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (TestApi impl) async => impl
              .helloIntegerPut((await request.readJsonBodyDynamic() as int)),
        );
      },
      security: [],
    );
  }
}

class SecuritySchemes {}

T _throwStateError<T>(String message) => throw StateError(message);
