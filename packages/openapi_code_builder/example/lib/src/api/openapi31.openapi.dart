// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides, sort_unnamed_constructors_first, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'openapi31.openapi.g.dart';
part 'openapi31.openapi.freezed.dart';

/// Who owns the pet, if anyone.
@freezed
sealed class Owner with _$Owner implements OpenApiContent {
  const Owner._();

  const factory Owner({
    @JsonKey(name: 'name', includeIfNull: false) required String name,
    @JsonKey(name: 'email') String? email,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> jsonMap) =>
      _$OwnerFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@freezed
sealed class Pet with _$Pet implements OpenApiContent {
  const Pet._();

  const factory Pet({
    @JsonKey(name: 'id', includeIfNull: false) required int id,
    @JsonKey(name: 'name', includeIfNull: false) required String name,
    @JsonKey(name: 'kind', includeIfNull: false) required String kind,
    @JsonKey(name: 'tag') String? tag,
    @JsonKey(name: 'weight') num? weight,
    @JsonKey(name: 'owner') Owner? owner,
    @JsonKey(name: 'previousOwner') Owner? previousOwner,
    @JsonKey(name: 'nicknames') List<String>? nicknames,
    @JsonKey(name: 'idOrName', includeIfNull: false) Object? idOrName,
  }) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> jsonMap) => _$PetFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

class ListPetsResponse200 extends ListPetsResponse
    implements OpenApiResponseBodyJsonValue {
  /// All pets.
  ListPetsResponse200.response200(this.body)
    : status = 200,
      bodyJsonValue = body;

  @override
  final int status;

  final List<Pet> body;

  @override
  final Object? bodyJsonValue;

  @override
  final OpenApiContentType contentType = OpenApiContentType.parse(
    'application/json',
  );

  @override
  Map<String, Object?> propertiesToString() => {
    'status': status,
    'body': body,
    'bodyJsonValue': bodyJsonValue,
    'contentType': contentType,
  };
}

sealed class ListPetsResponse extends OpenApiResponse
    implements HasSuccessResponse<List<Pet>> {
  ListPetsResponse();

  /// All pets.
  factory ListPetsResponse.response200(List<Pet> body) =>
      ListPetsResponse200.response200(body);

  R map<R>({
    required ResponseMap<ListPetsResponse200, R> on200,
    ResponseMap<ListPetsResponse, R>? onElse,
  }) {
    if (this is ListPetsResponse200) {
      return on200((this as ListPetsResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  All pets.
  @override
  List<Pet> requireSuccess() {
    if (this is ListPetsResponse200) {
      return (this as ListPetsResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class GetPetResponse200 extends GetPetResponse
    implements OpenApiResponseBodyJson {
  /// The pet.
  GetPetResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final Pet body;

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

sealed class GetPetResponse extends OpenApiResponse
    implements HasSuccessResponse<Pet> {
  GetPetResponse();

  /// The pet.
  factory GetPetResponse.response200(Pet body) =>
      GetPetResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetPetResponse200, R> on200,
    ResponseMap<GetPetResponse, R>? onElse,
  }) {
    if (this is GetPetResponse200) {
      return on200((this as GetPetResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  The pet.
  @override
  Pet requireSuccess() {
    if (this is GetPetResponse200) {
      return (this as GetPetResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

abstract class OpenApi31Api implements ApiEndpoint {
  /// get: /pets
  Future<ListPetsResponse> listPets({String? tag});

  /// get: /pets/{petId}
  Future<GetPetResponse> getPet({required int petId});
}

abstract class OpenApi31ApiClient implements OpenApiClient {
  factory OpenApi31ApiClient(Uri baseUri, OpenApiRequestSender requestSender) =>
      _OpenApi31ApiClientImpl._(baseUri, requestSender);

  OpenApiClientRequest createListPetsRequest({String? tag});

  /// get: /pets
  ///
  Future<ListPetsResponse> listPets({String? tag});
  OpenApiClientRequest createGetPetRequest({required int petId});

  /// get: /pets/{petId}
  ///
  Future<GetPetResponse> getPet({required int petId});
}

class _OpenApi31ApiClientImpl extends OpenApiClientBase
    implements OpenApi31ApiClient {
  _OpenApi31ApiClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  @override
  OpenApiClientRequest createListPetsRequest({String? tag}) {
    final request = OpenApiClientRequest('get', '/pets', []);
    request.addQueryParameter('tag', encodeString(tag));
    return request;
  }

  /// get: /pets
  ///
  @override
  Future<ListPetsResponse> listPets({String? tag}) async {
    final request = createListPetsRequest(tag: tag);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          ListPetsResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map((e) => Pet.fromJson((e as Map<String, dynamic>)))
                .toList(),
          ),
    });
  }

  @override
  OpenApiClientRequest createGetPetRequest({required int petId}) {
    final request = OpenApiClientRequest('get', '/pets/{petId}', []);
    request.addPathParameter('petId', encodeInt(petId));
    return request;
  }

  /// get: /pets/{petId}
  ///
  @override
  Future<GetPetResponse> getPet({required int petId}) async {
    final request = createGetPetRequest(petId: petId);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetPetResponse200.response200(
            Pet.fromJson(await response.responseBodyJson()),
          ),
    });
  }
}

class OpenApi31ApiUrlResolve with OpenApiUrlEncodeMixin {
  /// get: /pets
  ///
  OpenApiClientRequest listPets({String? tag}) {
    final request = OpenApiClientRequest('get', '/pets', []);
    request.addQueryParameter('tag', encodeString(tag));
    return request;
  }

  /// get: /pets/{petId}
  ///
  OpenApiClientRequest getPet({required int petId}) {
    final request = OpenApiClientRequest('get', '/pets/{petId}', []);
    request.addPathParameter('petId', encodeInt(petId));
    return request;
  }
}

class OpenApi31ApiRouter extends OpenApiServerRouterBase {
  OpenApi31ApiRouter(this.impl);

  final ApiEndpointProvider<OpenApi31Api> impl;

  @override
  void configure() {
    addRoute('/pets', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (OpenApi31Api impl) async => impl.listPets(
          tag: paramOpt(
            name: 'tag',
            value: request.queryParameter('tag'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/pets/{petId}', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (OpenApi31Api impl) async => impl.getPet(
          petId: paramRequired(
            name: 'petId',
            value: request.pathParameter('petId'),
            decode: (value) => paramToInt(value),
          ),
        ),
      );
    }, security: []);
  }
}

class SecuritySchemes {}
