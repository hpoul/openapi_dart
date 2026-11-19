// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides, sort_unnamed_constructors_first, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'custom-allof-additional-properties.openapi.g.dart';
part 'custom-allof-additional-properties.openapi.freezed.dart';

@JsonSerializable()
@ApiUuidJsonConverter()
class Base implements OpenApiContent {
  Base({this.a});

  factory Base.fromJson(Map<String, dynamic> jsonMap) =>
      _$BaseFromJson(jsonMap)
        .._additionalProperties.addEntries(
          jsonMap.entries
              .where((e) => !const <String>{'a'}.contains(e.key))
              .map((e) => MapEntry(e.key, (e.value as int))),
        );

  @JsonKey(name: 'a', includeIfNull: false)
  final String? a;

  final Map<String, int> _additionalProperties = <String, int>{};

  Map<String, dynamic> toJson() =>
      Map.from(_additionalProperties)..addAll(_$BaseToJson(this));

  @override
  String toString() => toJson().toString();

  Map<String, int> get additionalProperties => _additionalProperties;

  void operator []=(String key, int value) =>
      _additionalProperties[key] = value;

  int? operator [](String key) => _additionalProperties[key];
}

@JsonSerializable()
@ApiUuidJsonConverter()
class Child implements OpenApiContent, Base {
  Child({this.a, this.b});

  factory Child.fromJson(Map<String, dynamic> jsonMap) =>
      _$ChildFromJson(jsonMap)
        .._additionalProperties.addEntries(
          jsonMap.entries
              .where((e) => !const <String>{'a', 'b'}.contains(e.key))
              .map((e) => MapEntry(e.key, (e.value as int))),
        );

  @JsonKey(name: 'a', includeIfNull: false)
  @override
  final String? a;

  @JsonKey(name: 'b', includeIfNull: false)
  final String? b;

  final Map<String, int> _additionalProperties = <String, int>{};

  @override
  Map<String, dynamic> toJson() =>
      Map.from(_additionalProperties)..addAll(_$ChildToJson(this));

  @override
  String toString() => toJson().toString();

  Map<String, int> get additionalProperties => _additionalProperties;

  void operator []=(String key, int value) =>
      _additionalProperties[key] = value;

  int? operator [](String key) => _additionalProperties[key];
}

@JsonSerializable()
@ApiUuidJsonConverter()
class FreeBase implements OpenApiContent {
  FreeBase({this.c});

  factory FreeBase.fromJson(Map<String, dynamic> jsonMap) =>
      _$FreeBaseFromJson(jsonMap)
        .._additionalProperties.addEntries(
          jsonMap.entries.where((e) => !const <String>{'c'}.contains(e.key)),
        );

  @JsonKey(name: 'c', includeIfNull: false)
  final String? c;

  final Map<String, Object?> _additionalProperties = <String, Object?>{};

  Map<String, dynamic> toJson() =>
      Map.from(_additionalProperties)..addAll(_$FreeBaseToJson(this));

  @override
  String toString() => toJson().toString();

  Map<String, Object?> get additionalProperties => _additionalProperties;

  void operator []=(String key, Object? value) =>
      _additionalProperties[key] = value;

  Object? operator [](String key) => _additionalProperties[key];
}

@JsonSerializable()
@ApiUuidJsonConverter()
class FreeChild implements OpenApiContent, FreeBase {
  FreeChild({this.c, this.d});

  factory FreeChild.fromJson(Map<String, dynamic> jsonMap) =>
      _$FreeChildFromJson(jsonMap)
        .._additionalProperties.addEntries(
          jsonMap.entries.where(
            (e) => !const <String>{'c', 'd'}.contains(e.key),
          ),
        );

  @JsonKey(name: 'c', includeIfNull: false)
  @override
  final String? c;

  @JsonKey(name: 'd', includeIfNull: false)
  final String? d;

  final Map<String, Object?> _additionalProperties = <String, Object?>{};

  @override
  Map<String, dynamic> toJson() =>
      Map.from(_additionalProperties)..addAll(_$FreeChildToJson(this));

  @override
  String toString() => toJson().toString();

  Map<String, Object?> get additionalProperties => _additionalProperties;

  void operator []=(String key, Object? value) =>
      _additionalProperties[key] = value;

  Object? operator [](String key) => _additionalProperties[key];
}

@freezed
sealed class Plain with _$Plain implements OpenApiContent {
  const Plain._();

  const factory Plain({@JsonKey(name: 'e', includeIfNull: false) String? e}) =
      _Plain;

  factory Plain.fromJson(Map<String, dynamic> jsonMap) =>
      _$PlainFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

class ThingsGetResponse200 extends ThingsGetResponse
    implements OpenApiResponseBodyJson {
  /// ok
  ThingsGetResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final Child body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse(
    'application/json',
  );

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'body': body,
    'bodyJson': bodyJson,
    'contentType': contentType,
  };
}

sealed class ThingsGetResponse extends OpenApiResponse
    implements HasSuccessResponse<Child> {
  ThingsGetResponse();

  /// ok
  factory ThingsGetResponse.response200(Child body) =>
      ThingsGetResponse200.response200(body);

  R map<R>({
    required ResponseMap<ThingsGetResponse200, R> on200,
    ResponseMap<ThingsGetResponse, R>? onElse,
  }) {
    if (this is ThingsGetResponse200) {
      return on200((this as ThingsGetResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  ok
  @override
  Child requireSuccess() {
    if (this is ThingsGetResponse200) {
      return (this as ThingsGetResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

abstract class CustomAllofAdditionalProperties implements ApiEndpoint {
  /// get: /things
  Future<ThingsGetResponse> thingsGet();
}

abstract class CustomAllofAdditionalPropertiesClient implements OpenApiClient {
  factory CustomAllofAdditionalPropertiesClient(
    Uri baseUri,
    OpenApiRequestSender requestSender,
  ) => _CustomAllofAdditionalPropertiesClientImpl._(baseUri, requestSender);

  OpenApiClientRequest createThingsGetRequest();

  /// get: /things
  ///
  Future<ThingsGetResponse> thingsGet();
}

class _CustomAllofAdditionalPropertiesClientImpl extends OpenApiClientBase
    implements CustomAllofAdditionalPropertiesClient {
  _CustomAllofAdditionalPropertiesClientImpl._(
    this.baseUri,
    this.requestSender,
  );

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  @override
  OpenApiClientRequest createThingsGetRequest() {
    final request = OpenApiClientRequest('get', '/things', []);
    return request;
  }

  /// get: /things
  ///
  @override
  Future<ThingsGetResponse> thingsGet() async {
    final request = createThingsGetRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          ThingsGetResponse200.response200(
            Child.fromJson(await response.responseBodyJson()),
          ),
    });
  }
}

class CustomAllofAdditionalPropertiesUrlResolve with OpenApiUrlEncodeMixin {
  /// get: /things
  ///
  OpenApiClientRequest thingsGet() {
    final request = OpenApiClientRequest('get', '/things', []);
    return request;
  }
}

class CustomAllofAdditionalPropertiesRouter extends OpenApiServerRouterBase {
  CustomAllofAdditionalPropertiesRouter(this.impl);

  final ApiEndpointProvider<CustomAllofAdditionalProperties> impl;

  @override
  void configure() {
    addRoute('/things', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (CustomAllofAdditionalProperties impl) async => impl.thingsGet(),
      );
    }, security: []);
  }
}

class SecuritySchemes {}
