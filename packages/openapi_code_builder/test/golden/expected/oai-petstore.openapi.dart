// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides, sort_unnamed_constructors_first, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'oai-petstore.openapi.g.dart';
part 'oai-petstore.openapi.freezed.dart';

@freezed
sealed class Pet with _$Pet implements OpenApiContent {
  const Pet._();

  const factory Pet({
    @JsonKey(name: 'id', includeIfNull: false) required int id,
    @JsonKey(name: 'name', includeIfNull: false) required String name,
    @JsonKey(name: 'tag', includeIfNull: false) String? tag,
  }) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> jsonMap) => _$PetFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@freezed
sealed class Pets with _$Pets implements OpenApiContent {
  const Pets._();

  const factory Pets() = _Pets;

  factory Pets.fromJson(Map<String, dynamic> jsonMap) =>
      _$PetsFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@freezed
sealed class Error with _$Error implements OpenApiContent {
  const Error._();

  const factory Error({
    @JsonKey(name: 'code', includeIfNull: false) required int code,
    @JsonKey(name: 'message', includeIfNull: false) required String message,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> jsonMap) =>
      _$ErrorFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

class ListPetsResponse200 extends ListPetsResponse
    implements OpenApiResponseBodyJsonValue {
  /// A paged array of pets
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

class ListPetsResponseDefault extends ListPetsResponse
    implements OpenApiResponseBodyJson {
  /// unexpected error
  ListPetsResponseDefault.responseDefault(int status, this.body)
    : status = status,
      bodyJson = body.toJson();

  @override
  final int status;

  final Error body;

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

sealed class ListPetsResponse extends OpenApiResponse
    implements HasSuccessResponse<List<Pet>> {
  ListPetsResponse();

  /// A paged array of pets
  factory ListPetsResponse.response200(List<Pet> body) =>
      ListPetsResponse200.response200(body);

  /// unexpected error
  factory ListPetsResponse.responseDefault(int status, Error body) =>
      ListPetsResponseDefault.responseDefault(status, body);

  R map<R>({
    required ResponseMap<ListPetsResponse200, R> on200,
    required ResponseMap<ListPetsResponseDefault, R> onDefault,
    ResponseMap<ListPetsResponse, R>? onElse,
  }) {
    if (this is ListPetsResponse200) {
      return on200((this as ListPetsResponse200));
    } else if (this is ListPetsResponseDefault) {
      return onDefault((this as ListPetsResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  A paged array of pets
  @override
  List<Pet> requireSuccess() {
    if (this is ListPetsResponse200) {
      return (this as ListPetsResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class CreatePetsResponse201 extends CreatePetsResponse {
  /// Null response
  CreatePetsResponse201.response201() : status = 201;

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

class CreatePetsResponseDefault extends CreatePetsResponse
    implements OpenApiResponseBodyJson {
  /// unexpected error
  CreatePetsResponseDefault.responseDefault(int status, this.body)
    : status = status,
      bodyJson = body.toJson();

  @override
  final int status;

  final Error body;

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

sealed class CreatePetsResponse extends OpenApiResponse
    implements HasSuccessResponse<Error> {
  CreatePetsResponse();

  /// Null response
  factory CreatePetsResponse.response201() =>
      CreatePetsResponse201.response201();

  /// unexpected error
  factory CreatePetsResponse.responseDefault(int status, Error body) =>
      CreatePetsResponseDefault.responseDefault(status, body);

  R map<R>({
    required ResponseMap<CreatePetsResponse201, R> on201,
    required ResponseMap<CreatePetsResponseDefault, R> onDefault,
    ResponseMap<CreatePetsResponse, R>? onElse,
  }) {
    if (this is CreatePetsResponse201) {
      return on201((this as CreatePetsResponse201));
    } else if (this is CreatePetsResponseDefault) {
      return onDefault((this as CreatePetsResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status default:  unexpected error
  @override
  Error requireSuccess() {
    if (this is CreatePetsResponseDefault) {
      return (this as CreatePetsResponseDefault).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class ShowPetByIdResponse200 extends ShowPetByIdResponse
    implements OpenApiResponseBodyJson {
  /// Expected response to a valid request
  ShowPetByIdResponse200.response200(this.body)
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

class ShowPetByIdResponseDefault extends ShowPetByIdResponse
    implements OpenApiResponseBodyJson {
  /// unexpected error
  ShowPetByIdResponseDefault.responseDefault(int status, this.body)
    : status = status,
      bodyJson = body.toJson();

  @override
  final int status;

  final Error body;

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

sealed class ShowPetByIdResponse extends OpenApiResponse
    implements HasSuccessResponse<Pet> {
  ShowPetByIdResponse();

  /// Expected response to a valid request
  factory ShowPetByIdResponse.response200(Pet body) =>
      ShowPetByIdResponse200.response200(body);

  /// unexpected error
  factory ShowPetByIdResponse.responseDefault(int status, Error body) =>
      ShowPetByIdResponseDefault.responseDefault(status, body);

  R map<R>({
    required ResponseMap<ShowPetByIdResponse200, R> on200,
    required ResponseMap<ShowPetByIdResponseDefault, R> onDefault,
    ResponseMap<ShowPetByIdResponse, R>? onElse,
  }) {
    if (this is ShowPetByIdResponse200) {
      return on200((this as ShowPetByIdResponse200));
    } else if (this is ShowPetByIdResponseDefault) {
      return onDefault((this as ShowPetByIdResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  Expected response to a valid request
  @override
  Pet requireSuccess() {
    if (this is ShowPetByIdResponse200) {
      return (this as ShowPetByIdResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

abstract class OaiPetstore implements ApiEndpoint {
  /// List all pets
  /// get: /pets
  Future<ListPetsResponse> listPets({int? limit});

  /// Create a pet
  /// post: /pets
  Future<CreatePetsResponse> createPets();

  /// Info for a specific pet
  /// get: /pets/{petId}
  Future<ShowPetByIdResponse> showPetById({required String petId});
}

abstract class OaiPetstoreClient implements OpenApiClient {
  factory OaiPetstoreClient(Uri baseUri, OpenApiRequestSender requestSender) =>
      _OaiPetstoreClientImpl._(baseUri, requestSender);

  OpenApiClientRequest createListPetsRequest({int? limit});

  /// List all pets
  /// get: /pets
  ///
  /// * [limit]: How many items to return at one time (max 100)
  Future<ListPetsResponse> listPets({int? limit});
  OpenApiClientRequest createCreatePetsRequest();

  /// Create a pet
  /// post: /pets
  ///
  Future<CreatePetsResponse> createPets();
  OpenApiClientRequest createShowPetByIdRequest({required String petId});

  /// Info for a specific pet
  /// get: /pets/{petId}
  ///
  /// * [petId]: The id of the pet to retrieve
  Future<ShowPetByIdResponse> showPetById({required String petId});
}

class _OaiPetstoreClientImpl extends OpenApiClientBase
    implements OaiPetstoreClient {
  _OaiPetstoreClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  @override
  OpenApiClientRequest createListPetsRequest({int? limit}) {
    final request = OpenApiClientRequest('get', '/pets', []);
    request.addQueryParameter('limit', encodeInt(limit));
    return request;
  }

  /// List all pets
  /// get: /pets
  ///
  /// * [limit]: How many items to return at one time (max 100)
  @override
  Future<ListPetsResponse> listPets({int? limit}) async {
    final request = createListPetsRequest(limit: limit);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          ListPetsResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map((e) => Pet.fromJson((e as Map<String, dynamic>)))
                .toList(),
          ),
      'default': (OpenApiClientResponse response) async =>
          ListPetsResponseDefault.responseDefault(
            response.status,
            Error.fromJson(await response.responseBodyJson()),
          ),
    });
  }

  @override
  OpenApiClientRequest createCreatePetsRequest() {
    final request = OpenApiClientRequest('post', '/pets', []);
    return request;
  }

  /// Create a pet
  /// post: /pets
  ///
  @override
  Future<CreatePetsResponse> createPets() async {
    final request = createCreatePetsRequest();
    return await sendRequest(request, {
      '201': (OpenApiClientResponse response) async =>
          CreatePetsResponse201.response201(),
      'default': (OpenApiClientResponse response) async =>
          CreatePetsResponseDefault.responseDefault(
            response.status,
            Error.fromJson(await response.responseBodyJson()),
          ),
    });
  }

  @override
  OpenApiClientRequest createShowPetByIdRequest({required String petId}) {
    final request = OpenApiClientRequest('get', '/pets/{petId}', []);
    request.addPathParameter('petId', encodeString(petId));
    return request;
  }

  /// Info for a specific pet
  /// get: /pets/{petId}
  ///
  /// * [petId]: The id of the pet to retrieve
  @override
  Future<ShowPetByIdResponse> showPetById({required String petId}) async {
    final request = createShowPetByIdRequest(petId: petId);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          ShowPetByIdResponse200.response200(
            Pet.fromJson(await response.responseBodyJson()),
          ),
      'default': (OpenApiClientResponse response) async =>
          ShowPetByIdResponseDefault.responseDefault(
            response.status,
            Error.fromJson(await response.responseBodyJson()),
          ),
    });
  }
}

class OaiPetstoreUrlResolve with OpenApiUrlEncodeMixin {
  /// List all pets
  /// get: /pets
  ///
  /// * [limit]: How many items to return at one time (max 100)
  OpenApiClientRequest listPets({int? limit}) {
    final request = OpenApiClientRequest('get', '/pets', []);
    request.addQueryParameter('limit', encodeInt(limit));
    return request;
  }

  /// Create a pet
  /// post: /pets
  ///
  OpenApiClientRequest createPets() {
    final request = OpenApiClientRequest('post', '/pets', []);
    return request;
  }

  /// Info for a specific pet
  /// get: /pets/{petId}
  ///
  /// * [petId]: The id of the pet to retrieve
  OpenApiClientRequest showPetById({required String petId}) {
    final request = OpenApiClientRequest('get', '/pets/{petId}', []);
    request.addPathParameter('petId', encodeString(petId));
    return request;
  }
}

class OaiPetstoreRouter extends OpenApiServerRouterBase {
  OaiPetstoreRouter(this.impl);

  final ApiEndpointProvider<OaiPetstore> impl;

  @override
  void configure() {
    addRoute('/pets', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (OaiPetstore impl) async => impl.listPets(
          limit: paramOpt(
            name: 'limit',
            value: request.queryParameter('limit'),
            decode: (value) => paramToInt(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/pets', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (OaiPetstore impl) async => impl.createPets(),
      );
    }, security: []);
    addRoute('/pets/{petId}', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (OaiPetstore impl) async => impl.showPetById(
          petId: paramRequired(
            name: 'petId',
            value: request.pathParameter('petId'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
  }
}

class SecuritySchemes {}
