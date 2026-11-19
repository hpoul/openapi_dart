// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides, sort_unnamed_constructors_first, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'custom-security-and-shared-schemas.openapi.g.dart';
part 'custom-security-and-shared-schemas.openapi.freezed.dart';

@freezed
sealed class AddressGeo with _$AddressGeo implements OpenApiContent {
  const AddressGeo._();

  const factory AddressGeo({
    @JsonKey(name: 'lat', includeIfNull: false) num? lat,
    @JsonKey(name: 'lng', includeIfNull: false) num? lng,
  }) = _AddressGeo;

  factory AddressGeo.fromJson(Map<String, dynamic> jsonMap) =>
      _$AddressGeoFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@freezed
sealed class Address with _$Address implements OpenApiContent {
  const Address._();

  const factory Address({
    @JsonKey(name: 'street', includeIfNull: false) required String street,
    @JsonKey(name: 'geo', includeIfNull: false) AddressGeo? geo,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> jsonMap) =>
      _$AddressFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@freezed
sealed class Order with _$Order implements OpenApiContent {
  const Order._();

  const factory Order({
    @JsonKey(name: 'id', includeIfNull: false) String? id,
    @JsonKey(name: 'billing', includeIfNull: false) Address? billing,
    @JsonKey(name: 'shipping', includeIfNull: false) Address? shipping,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> jsonMap) =>
      _$OrderFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@freezed
sealed class Shipment with _$Shipment implements OpenApiContent {
  const Shipment._();

  const factory Shipment({
    @JsonKey(name: 'destination', includeIfNull: false) Address? destination,
  }) = _Shipment;

  factory Shipment.fromJson(Map<String, dynamic> jsonMap) =>
      _$ShipmentFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

class GetInheritedResponse200 extends GetInheritedResponse
    implements OpenApiResponseBodyJson {
  /// OK
  GetInheritedResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final Order body;

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

sealed class GetInheritedResponse extends OpenApiResponse
    implements HasSuccessResponse<Order> {
  GetInheritedResponse();

  /// OK
  factory GetInheritedResponse.response200(Order body) =>
      GetInheritedResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetInheritedResponse200, R> on200,
    ResponseMap<GetInheritedResponse, R>? onElse,
  }) {
    if (this is GetInheritedResponse200) {
      return on200((this as GetInheritedResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  Order requireSuccess() {
    if (this is GetInheritedResponse200) {
      return (this as GetInheritedResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class GetOverriddenResponse200 extends GetOverriddenResponse
    implements OpenApiResponseBodyJson {
  /// OK
  GetOverriddenResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final Order body;

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

sealed class GetOverriddenResponse extends OpenApiResponse
    implements HasSuccessResponse<Order> {
  GetOverriddenResponse();

  /// OK
  factory GetOverriddenResponse.response200(Order body) =>
      GetOverriddenResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetOverriddenResponse200, R> on200,
    ResponseMap<GetOverriddenResponse, R>? onElse,
  }) {
    if (this is GetOverriddenResponse200) {
      return on200((this as GetOverriddenResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  Order requireSuccess() {
    if (this is GetOverriddenResponse200) {
      return (this as GetOverriddenResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class GetPublicResponse200 extends GetPublicResponse
    implements OpenApiResponseBodyJson {
  /// OK
  GetPublicResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final Shipment body;

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

sealed class GetPublicResponse extends OpenApiResponse
    implements HasSuccessResponse<Shipment> {
  GetPublicResponse();

  /// OK
  factory GetPublicResponse.response200(Shipment body) =>
      GetPublicResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetPublicResponse200, R> on200,
    ResponseMap<GetPublicResponse, R>? onElse,
  }) {
    if (this is GetPublicResponse200) {
      return on200((this as GetPublicResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  OK
  @override
  Shipment requireSuccess() {
    if (this is GetPublicResponse200) {
      return (this as GetPublicResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

abstract class CustomSecurityAndSharedSchemas implements ApiEndpoint {
  /// get: /inherited
  Future<GetInheritedResponse> getInherited();

  /// get: /overridden
  Future<GetOverriddenResponse> getOverridden();

  /// get: /public
  Future<GetPublicResponse> getPublic();
}

abstract class CustomSecurityAndSharedSchemasClient implements OpenApiClient {
  factory CustomSecurityAndSharedSchemasClient(
    Uri baseUri,
    OpenApiRequestSender requestSender,
  ) => _CustomSecurityAndSharedSchemasClientImpl._(baseUri, requestSender);

  OpenApiClientRequest createGetInheritedRequest();

  /// get: /inherited
  ///
  Future<GetInheritedResponse> getInherited();
  OpenApiClientRequest createGetOverriddenRequest();

  /// get: /overridden
  ///
  Future<GetOverriddenResponse> getOverridden();
  OpenApiClientRequest createGetPublicRequest();

  /// get: /public
  ///
  Future<GetPublicResponse> getPublic();
}

class _CustomSecurityAndSharedSchemasClientImpl extends OpenApiClientBase
    implements CustomSecurityAndSharedSchemasClient {
  _CustomSecurityAndSharedSchemasClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  @override
  OpenApiClientRequest createGetInheritedRequest() {
    final request = OpenApiClientRequest('get', '/inherited', [
      SecurityRequirement(
        schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.bearerAuth,
            scopes: [],
          ),
        ],
      ),
    ]);
    return request;
  }

  /// get: /inherited
  ///
  @override
  Future<GetInheritedResponse> getInherited() async {
    final request = createGetInheritedRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetInheritedResponse200.response200(
            Order.fromJson(await response.responseBodyJson()),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetOverriddenRequest() {
    final request = OpenApiClientRequest('get', '/overridden', [
      SecurityRequirement(
        schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.apiKeyAuth,
            scopes: [],
          ),
        ],
      ),
    ]);
    return request;
  }

  /// get: /overridden
  ///
  @override
  Future<GetOverriddenResponse> getOverridden() async {
    final request = createGetOverriddenRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetOverriddenResponse200.response200(
            Order.fromJson(await response.responseBodyJson()),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetPublicRequest() {
    final request = OpenApiClientRequest('get', '/public', []);
    return request;
  }

  /// get: /public
  ///
  @override
  Future<GetPublicResponse> getPublic() async {
    final request = createGetPublicRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetPublicResponse200.response200(
            Shipment.fromJson(await response.responseBodyJson()),
          ),
    });
  }
}

class CustomSecurityAndSharedSchemasUrlResolve with OpenApiUrlEncodeMixin {
  /// get: /inherited
  ///
  OpenApiClientRequest getInherited() {
    final request = OpenApiClientRequest('get', '/inherited', [
      SecurityRequirement(
        schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.bearerAuth,
            scopes: [],
          ),
        ],
      ),
    ]);
    return request;
  }

  /// get: /overridden
  ///
  OpenApiClientRequest getOverridden() {
    final request = OpenApiClientRequest('get', '/overridden', [
      SecurityRequirement(
        schemes: [
          SecurityRequirementScheme(
            scheme: SecuritySchemes.apiKeyAuth,
            scopes: [],
          ),
        ],
      ),
    ]);
    return request;
  }

  /// get: /public
  ///
  OpenApiClientRequest getPublic() {
    final request = OpenApiClientRequest('get', '/public', []);
    return request;
  }
}

class CustomSecurityAndSharedSchemasRouter extends OpenApiServerRouterBase {
  CustomSecurityAndSharedSchemasRouter(this.impl);

  final ApiEndpointProvider<CustomSecurityAndSharedSchemas> impl;

  @override
  void configure() {
    addRoute(
      '/inherited',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (CustomSecurityAndSharedSchemas impl) async => impl.getInherited(),
        );
      },
      security: [
        SecurityRequirement(
          schemes: [
            SecurityRequirementScheme(
              scheme: SecuritySchemes.bearerAuth,
              scopes: [],
            ),
          ],
        ),
      ],
    );
    addRoute(
      '/overridden',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (CustomSecurityAndSharedSchemas impl) async => impl.getOverridden(),
        );
      },
      security: [
        SecurityRequirement(
          schemes: [
            SecurityRequirementScheme(
              scheme: SecuritySchemes.apiKeyAuth,
              scopes: [],
            ),
          ],
        ),
      ],
    );
    addRoute('/public', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (CustomSecurityAndSharedSchemas impl) async => impl.getPublic(),
      );
    }, security: []);
  }
}

class SecuritySchemes {
  static final bearerAuth = SecuritySchemeHttp(
    scheme: SecuritySchemeHttpScheme.bearer,
  );

  static final apiKeyAuth = SecuritySchemeApiKey(
    name: 'X-API-Key',
    readFromRequest: (OpenApiRequest request) =>
        request.headerParameter('X-API-Key'),
    writeToRequest: (OpenApiClientRequest request, String value) =>
        request.addHeaderParameter('X-API-Key', [value]),
  );
}
