// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides, sort_unnamed_constructors_first, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'oai-callback-example.openapi.g.dart';
part 'oai-callback-example.openapi.freezed.dart';

/// subscription information
@freezed
sealed class StreamsPostResponseBody201
    with _$StreamsPostResponseBody201
    implements OpenApiContent {
  const StreamsPostResponseBody201._();

  const factory StreamsPostResponseBody201({
    @JsonKey(name: 'subscriptionId', includeIfNull: false)
    required String subscriptionId,
  }) = _StreamsPostResponseBody201;

  factory StreamsPostResponseBody201.fromJson(Map<String, dynamic> jsonMap) =>
      _$StreamsPostResponseBody201FromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

class StreamsPostResponse201 extends StreamsPostResponse
    implements OpenApiResponseBodyJson {
  /// subscription successfully created
  StreamsPostResponse201.response201(this.body)
    : status = 201,
      bodyJson = body.toJson();

  @override
  final int status;

  final StreamsPostResponseBody201 body;

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

sealed class StreamsPostResponse extends OpenApiResponse
    implements HasSuccessResponse<StreamsPostResponseBody201> {
  StreamsPostResponse();

  /// subscription successfully created
  factory StreamsPostResponse.response201(StreamsPostResponseBody201 body) =>
      StreamsPostResponse201.response201(body);

  R map<R>({
    required ResponseMap<StreamsPostResponse201, R> on201,
    ResponseMap<StreamsPostResponse, R>? onElse,
  }) {
    if (this is StreamsPostResponse201) {
      return on201((this as StreamsPostResponse201));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 201:  subscription successfully created
  @override
  StreamsPostResponseBody201 requireSuccess() {
    if (this is StreamsPostResponse201) {
      return (this as StreamsPostResponse201).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

abstract class OaiCallbackExample implements ApiEndpoint {
  /// subscribes a client to receive out-of-band data
  /// post: /streams
  Future<StreamsPostResponse> streamsPost({required String callbackUrl});
}

abstract class OaiCallbackExampleClient implements OpenApiClient {
  factory OaiCallbackExampleClient(
    Uri baseUri,
    OpenApiRequestSender requestSender,
  ) => _OaiCallbackExampleClientImpl._(baseUri, requestSender);

  OpenApiClientRequest createStreamsPostRequest({required String callbackUrl});

  /// subscribes a client to receive out-of-band data
  /// post: /streams
  ///
  /// * [callbackUrl]: the location where data will be sent.  Must be network accessible
  /// by the source server
  ///
  Future<StreamsPostResponse> streamsPost({required String callbackUrl});
}

class _OaiCallbackExampleClientImpl extends OpenApiClientBase
    implements OaiCallbackExampleClient {
  _OaiCallbackExampleClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  @override
  OpenApiClientRequest createStreamsPostRequest({required String callbackUrl}) {
    final request = OpenApiClientRequest('post', '/streams', []);
    request.addQueryParameter('callbackUrl', encodeString(callbackUrl));
    return request;
  }

  /// subscribes a client to receive out-of-band data
  /// post: /streams
  ///
  /// * [callbackUrl]: the location where data will be sent.  Must be network accessible
  /// by the source server
  ///
  @override
  Future<StreamsPostResponse> streamsPost({required String callbackUrl}) async {
    final request = createStreamsPostRequest(callbackUrl: callbackUrl);
    return await sendRequest(request, {
      '201': (OpenApiClientResponse response) async =>
          StreamsPostResponse201.response201(
            StreamsPostResponseBody201.fromJson(
              await response.responseBodyJson(),
            ),
          ),
    });
  }
}

class OaiCallbackExampleUrlResolve with OpenApiUrlEncodeMixin {
  /// subscribes a client to receive out-of-band data
  /// post: /streams
  ///
  /// * [callbackUrl]: the location where data will be sent.  Must be network accessible
  /// by the source server
  ///
  OpenApiClientRequest streamsPost({required String callbackUrl}) {
    final request = OpenApiClientRequest('post', '/streams', []);
    request.addQueryParameter('callbackUrl', encodeString(callbackUrl));
    return request;
  }
}

class OaiCallbackExampleRouter extends OpenApiServerRouterBase {
  OaiCallbackExampleRouter(this.impl);

  final ApiEndpointProvider<OaiCallbackExample> impl;

  @override
  void configure() {
    addRoute('/streams', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (OaiCallbackExample impl) async => impl.streamsPost(
          callbackUrl: paramRequired(
            name: 'callbackUrl',
            value: request.queryParameter('callbackUrl'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
  }
}

class SecuritySchemes {}
