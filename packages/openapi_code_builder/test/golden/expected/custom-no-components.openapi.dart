// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides, sort_unnamed_constructors_first, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'custom-no-components.openapi.g.dart';
part 'custom-no-components.openapi.freezed.dart';

@freezed
sealed class PingResponseBody200
    with _$PingResponseBody200
    implements OpenApiContent {
  const PingResponseBody200._();

  const factory PingResponseBody200({
    @JsonKey(name: 'message', includeIfNull: false) String? message,
  }) = _PingResponseBody200;

  factory PingResponseBody200.fromJson(Map<String, dynamic> jsonMap) =>
      _$PingResponseBody200FromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

class PingResponse200 extends PingResponse implements OpenApiResponseBodyJson {
  /// OK
  PingResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final PingResponseBody200 body;

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

sealed class PingResponse extends OpenApiResponse
    implements HasSuccessResponse<PingResponseBody200> {
  PingResponse();

  /// OK
  factory PingResponse.response200(PingResponseBody200 body) =>
      PingResponse200.response200(body);

  R map<R>({
    required ResponseMap<PingResponse200, R> on200,
    ResponseMap<PingResponse, R>? onElse,
  }) {
    if (this is PingResponse200) {
      return on200((this as PingResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  PingResponseBody200 requireSuccess() {
    if (this is PingResponse200) {
      return (this as PingResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

abstract class CustomNoComponents implements ApiEndpoint {
  /// get: /ping
  Future<PingResponse> ping({String? echo});
}

abstract class CustomNoComponentsClient implements OpenApiClient {
  factory CustomNoComponentsClient(
    Uri baseUri,
    OpenApiRequestSender requestSender,
  ) => _CustomNoComponentsClientImpl._(baseUri, requestSender);

  OpenApiClientRequest createPingRequest({String? echo});

  /// get: /ping
  ///
  Future<PingResponse> ping({String? echo});
}

class _CustomNoComponentsClientImpl extends OpenApiClientBase
    implements CustomNoComponentsClient {
  _CustomNoComponentsClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  @override
  OpenApiClientRequest createPingRequest({String? echo}) {
    final request = OpenApiClientRequest('get', '/ping', []);
    request.addQueryParameter('echo', encodeString(echo));
    return request;
  }

  /// get: /ping
  ///
  @override
  Future<PingResponse> ping({String? echo}) async {
    final request = createPingRequest(echo: echo);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          PingResponse200.response200(
            PingResponseBody200.fromJson(await response.responseBodyJson()),
          ),
    });
  }
}

class CustomNoComponentsUrlResolve with OpenApiUrlEncodeMixin {
  /// get: /ping
  ///
  OpenApiClientRequest ping({String? echo}) {
    final request = OpenApiClientRequest('get', '/ping', []);
    request.addQueryParameter('echo', encodeString(echo));
    return request;
  }
}

class CustomNoComponentsRouter extends OpenApiServerRouterBase {
  CustomNoComponentsRouter(this.impl);

  final ApiEndpointProvider<CustomNoComponents> impl;

  @override
  void configure() {
    addRoute('/ping', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (CustomNoComponents impl) async => impl.ping(
          echo: paramOpt(
            name: 'echo',
            value: request.queryParameter('echo'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
  }
}

class SecuritySchemes {}
