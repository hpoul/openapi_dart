// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides, sort_unnamed_constructors_first, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'oai-petstore-expanded.openapi.g.dart';
part 'oai-petstore-expanded.openapi.freezed.dart';

@JsonSerializable()
@ApiUuidJsonConverter()
class NewPet implements OpenApiContent {
  const NewPet({required this.name, this.tag});

  factory NewPet.fromJson(Map<String, dynamic> jsonMap) =>
      _$NewPetFromJson(jsonMap);

  @JsonKey(name: 'name', includeIfNull: false)
  final String name;

  @JsonKey(name: 'tag', includeIfNull: false)
  final String? tag;

  Map<String, dynamic> toJson() => _$NewPetToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class PetBase implements OpenApiContent {
  const PetBase({required this.id});

  factory PetBase.fromJson(Map<String, dynamic> jsonMap) =>
      _$PetBaseFromJson(jsonMap);

  @JsonKey(name: 'id', includeIfNull: false)
  final int id;

  Map<String, dynamic> toJson() => _$PetBaseToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class Pet implements OpenApiContent, NewPet, PetBase {
  const Pet({required this.id, required this.name, this.tag});

  factory Pet.fromJson(Map<String, dynamic> jsonMap) => _$PetFromJson(jsonMap);

  @JsonKey(name: 'id', includeIfNull: false)
  @override
  final int id;

  @JsonKey(name: 'name', includeIfNull: false)
  @override
  final String name;

  @JsonKey(name: 'tag', includeIfNull: false)
  @override
  final String? tag;

  @override
  Map<String, dynamic> toJson() => _$PetToJson(this);

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

class FindPetsResponse200 extends FindPetsResponse
    implements OpenApiResponseBodyJsonValue {
  /// pet response
  FindPetsResponse200.response200(this.body)
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

class FindPetsResponseDefault extends FindPetsResponse
    implements OpenApiResponseBodyJson {
  /// unexpected error
  FindPetsResponseDefault.responseDefault(int status, this.body)
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

sealed class FindPetsResponse extends OpenApiResponse
    implements HasSuccessResponse<List<Pet>> {
  FindPetsResponse();

  /// pet response
  factory FindPetsResponse.response200(List<Pet> body) =>
      FindPetsResponse200.response200(body);

  /// unexpected error
  factory FindPetsResponse.responseDefault(int status, Error body) =>
      FindPetsResponseDefault.responseDefault(status, body);

  R map<R>({
    required ResponseMap<FindPetsResponse200, R> on200,
    required ResponseMap<FindPetsResponseDefault, R> onDefault,
    ResponseMap<FindPetsResponse, R>? onElse,
  }) {
    if (this is FindPetsResponse200) {
      return on200((this as FindPetsResponse200));
    } else if (this is FindPetsResponseDefault) {
      return onDefault((this as FindPetsResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  pet response
  @override
  List<Pet> requireSuccess() {
    if (this is FindPetsResponse200) {
      return (this as FindPetsResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class AddPetResponse200 extends AddPetResponse
    implements OpenApiResponseBodyJson {
  /// pet response
  AddPetResponse200.response200(this.body)
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

class AddPetResponseDefault extends AddPetResponse
    implements OpenApiResponseBodyJson {
  /// unexpected error
  AddPetResponseDefault.responseDefault(int status, this.body)
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

sealed class AddPetResponse extends OpenApiResponse
    implements HasSuccessResponse<Pet> {
  AddPetResponse();

  /// pet response
  factory AddPetResponse.response200(Pet body) =>
      AddPetResponse200.response200(body);

  /// unexpected error
  factory AddPetResponse.responseDefault(int status, Error body) =>
      AddPetResponseDefault.responseDefault(status, body);

  R map<R>({
    required ResponseMap<AddPetResponse200, R> on200,
    required ResponseMap<AddPetResponseDefault, R> onDefault,
    ResponseMap<AddPetResponse, R>? onElse,
  }) {
    if (this is AddPetResponse200) {
      return on200((this as AddPetResponse200));
    } else if (this is AddPetResponseDefault) {
      return onDefault((this as AddPetResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  pet response
  @override
  Pet requireSuccess() {
    if (this is AddPetResponse200) {
      return (this as AddPetResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class FindPetByIdResponse200 extends FindPetByIdResponse
    implements OpenApiResponseBodyJson {
  /// pet response
  FindPetByIdResponse200.response200(this.body)
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

class FindPetByIdResponseDefault extends FindPetByIdResponse
    implements OpenApiResponseBodyJson {
  /// unexpected error
  FindPetByIdResponseDefault.responseDefault(int status, this.body)
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

sealed class FindPetByIdResponse extends OpenApiResponse
    implements HasSuccessResponse<Pet> {
  FindPetByIdResponse();

  /// pet response
  factory FindPetByIdResponse.response200(Pet body) =>
      FindPetByIdResponse200.response200(body);

  /// unexpected error
  factory FindPetByIdResponse.responseDefault(int status, Error body) =>
      FindPetByIdResponseDefault.responseDefault(status, body);

  R map<R>({
    required ResponseMap<FindPetByIdResponse200, R> on200,
    required ResponseMap<FindPetByIdResponseDefault, R> onDefault,
    ResponseMap<FindPetByIdResponse, R>? onElse,
  }) {
    if (this is FindPetByIdResponse200) {
      return on200((this as FindPetByIdResponse200));
    } else if (this is FindPetByIdResponseDefault) {
      return onDefault((this as FindPetByIdResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  pet response
  @override
  Pet requireSuccess() {
    if (this is FindPetByIdResponse200) {
      return (this as FindPetByIdResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class DeletePetResponse204 extends DeletePetResponse {
  /// pet deleted
  DeletePetResponse204.response204() : status = 204;

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

class DeletePetResponseDefault extends DeletePetResponse
    implements OpenApiResponseBodyJson {
  /// unexpected error
  DeletePetResponseDefault.responseDefault(int status, this.body)
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

sealed class DeletePetResponse extends OpenApiResponse
    implements HasSuccessResponse<Error> {
  DeletePetResponse();

  /// pet deleted
  factory DeletePetResponse.response204() => DeletePetResponse204.response204();

  /// unexpected error
  factory DeletePetResponse.responseDefault(int status, Error body) =>
      DeletePetResponseDefault.responseDefault(status, body);

  R map<R>({
    required ResponseMap<DeletePetResponse204, R> on204,
    required ResponseMap<DeletePetResponseDefault, R> onDefault,
    ResponseMap<DeletePetResponse, R>? onElse,
  }) {
    if (this is DeletePetResponse204) {
      return on204((this as DeletePetResponse204));
    } else if (this is DeletePetResponseDefault) {
      return onDefault((this as DeletePetResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status default:  unexpected error
  @override
  Error requireSuccess() {
    if (this is DeletePetResponseDefault) {
      return (this as DeletePetResponseDefault).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

abstract class OaiPetstoreExpanded implements ApiEndpoint {
  /// Returns all pets from the system that the user has access to
  /// Nam sed condimentum est. Maecenas tempor sagittis sapien, nec rhoncus sem sagittis sit amet. Aenean at gravida augue, ac iaculis sem. Curabitur odio lorem, ornare eget elementum nec, cursus id lectus. Duis mi turpis, pulvinar ac eros ac, tincidunt varius justo. In hac habitasse platea dictumst. Integer at adipiscing ante, a sagittis ligula. Aenean pharetra tempor ante molestie imperdiet. Vivamus id aliquam diam. Cras quis velit non tortor eleifend sagittis. Praesent at enim pharetra urna volutpat venenatis eget eget mauris. In eleifend fermentum facilisis. Praesent enim enim, gravida ac sodales sed, placerat id erat. Suspendisse lacus dolor, consectetur non augue vel, vehicula interdum libero. Morbi euismod sagittis libero sed lacinia.
  ///
  /// Sed tempus felis lobortis leo pulvinar rutrum. Nam mattis velit nisl, eu condimentum ligula luctus nec. Phasellus semper velit eget aliquet faucibus. In a mattis elit. Phasellus vel urna viverra, condimentum lorem id, rhoncus nibh. Ut pellentesque posuere elementum. Sed a varius odio. Morbi rhoncus ligula libero, vel eleifend nunc tristique vitae. Fusce et sem dui. Aenean nec scelerisque tortor. Fusce malesuada accumsan magna vel tempus. Quisque mollis felis eu dolor tristique, sit amet auctor felis gravida. Sed libero lorem, molestie sed nisl in, accumsan tempor nisi. Fusce sollicitudin massa ut lacinia mattis. Sed vel eleifend lorem. Pellentesque vitae felis pretium, pulvinar elit eu, euismod sapien.
  ///
  /// get: /pets
  Future<FindPetsResponse> findPets({List<String>? tags, int? limit});

  /// Creates a new pet in the store. Duplicates are allowed
  /// post: /pets
  Future<AddPetResponse> addPet(NewPet body);

  /// Returns a user based on a single ID, if the user does not have access to the pet
  /// get: /pets/{id}
  Future<FindPetByIdResponse> findPetById({required int id});

  /// deletes a single pet based on the ID supplied
  /// delete: /pets/{id}
  Future<DeletePetResponse> deletePet({required int id});
}

abstract class OaiPetstoreExpandedClient implements OpenApiClient {
  factory OaiPetstoreExpandedClient(
    Uri baseUri,
    OpenApiRequestSender requestSender,
  ) => _OaiPetstoreExpandedClientImpl._(baseUri, requestSender);

  OpenApiClientRequest createFindPetsRequest({List<String>? tags, int? limit});

  /// Returns all pets from the system that the user has access to
  /// Nam sed condimentum est. Maecenas tempor sagittis sapien, nec rhoncus sem sagittis sit amet. Aenean at gravida augue, ac iaculis sem. Curabitur odio lorem, ornare eget elementum nec, cursus id lectus. Duis mi turpis, pulvinar ac eros ac, tincidunt varius justo. In hac habitasse platea dictumst. Integer at adipiscing ante, a sagittis ligula. Aenean pharetra tempor ante molestie imperdiet. Vivamus id aliquam diam. Cras quis velit non tortor eleifend sagittis. Praesent at enim pharetra urna volutpat venenatis eget eget mauris. In eleifend fermentum facilisis. Praesent enim enim, gravida ac sodales sed, placerat id erat. Suspendisse lacus dolor, consectetur non augue vel, vehicula interdum libero. Morbi euismod sagittis libero sed lacinia.
  ///
  /// Sed tempus felis lobortis leo pulvinar rutrum. Nam mattis velit nisl, eu condimentum ligula luctus nec. Phasellus semper velit eget aliquet faucibus. In a mattis elit. Phasellus vel urna viverra, condimentum lorem id, rhoncus nibh. Ut pellentesque posuere elementum. Sed a varius odio. Morbi rhoncus ligula libero, vel eleifend nunc tristique vitae. Fusce et sem dui. Aenean nec scelerisque tortor. Fusce malesuada accumsan magna vel tempus. Quisque mollis felis eu dolor tristique, sit amet auctor felis gravida. Sed libero lorem, molestie sed nisl in, accumsan tempor nisi. Fusce sollicitudin massa ut lacinia mattis. Sed vel eleifend lorem. Pellentesque vitae felis pretium, pulvinar elit eu, euismod sapien.
  ///
  /// get: /pets
  ///
  /// * [tags]: tags to filter by
  /// * [limit]: maximum number of results to return
  Future<FindPetsResponse> findPets({List<String>? tags, int? limit});
  OpenApiClientRequest createAddPetRequest(NewPet body);

  /// Creates a new pet in the store. Duplicates are allowed
  /// post: /pets
  ///
  Future<AddPetResponse> addPet(NewPet body);
  OpenApiClientRequest createFindPetByIdRequest({required int id});

  /// Returns a user based on a single ID, if the user does not have access to the pet
  /// get: /pets/{id}
  ///
  /// * [id]: ID of pet to fetch
  Future<FindPetByIdResponse> findPetById({required int id});
  OpenApiClientRequest createDeletePetRequest({required int id});

  /// deletes a single pet based on the ID supplied
  /// delete: /pets/{id}
  ///
  /// * [id]: ID of pet to delete
  Future<DeletePetResponse> deletePet({required int id});
}

class _OaiPetstoreExpandedClientImpl extends OpenApiClientBase
    implements OaiPetstoreExpandedClient {
  _OaiPetstoreExpandedClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  @override
  OpenApiClientRequest createFindPetsRequest({List<String>? tags, int? limit}) {
    final request = OpenApiClientRequest('get', '/pets', []);
    request.addQueryParameter('tags', tags?.expand((e) => encodeString(e)));
    request.addQueryParameter('limit', encodeInt(limit));
    return request;
  }

  /// Returns all pets from the system that the user has access to
  /// Nam sed condimentum est. Maecenas tempor sagittis sapien, nec rhoncus sem sagittis sit amet. Aenean at gravida augue, ac iaculis sem. Curabitur odio lorem, ornare eget elementum nec, cursus id lectus. Duis mi turpis, pulvinar ac eros ac, tincidunt varius justo. In hac habitasse platea dictumst. Integer at adipiscing ante, a sagittis ligula. Aenean pharetra tempor ante molestie imperdiet. Vivamus id aliquam diam. Cras quis velit non tortor eleifend sagittis. Praesent at enim pharetra urna volutpat venenatis eget eget mauris. In eleifend fermentum facilisis. Praesent enim enim, gravida ac sodales sed, placerat id erat. Suspendisse lacus dolor, consectetur non augue vel, vehicula interdum libero. Morbi euismod sagittis libero sed lacinia.
  ///
  /// Sed tempus felis lobortis leo pulvinar rutrum. Nam mattis velit nisl, eu condimentum ligula luctus nec. Phasellus semper velit eget aliquet faucibus. In a mattis elit. Phasellus vel urna viverra, condimentum lorem id, rhoncus nibh. Ut pellentesque posuere elementum. Sed a varius odio. Morbi rhoncus ligula libero, vel eleifend nunc tristique vitae. Fusce et sem dui. Aenean nec scelerisque tortor. Fusce malesuada accumsan magna vel tempus. Quisque mollis felis eu dolor tristique, sit amet auctor felis gravida. Sed libero lorem, molestie sed nisl in, accumsan tempor nisi. Fusce sollicitudin massa ut lacinia mattis. Sed vel eleifend lorem. Pellentesque vitae felis pretium, pulvinar elit eu, euismod sapien.
  ///
  /// get: /pets
  ///
  /// * [tags]: tags to filter by
  /// * [limit]: maximum number of results to return
  @override
  Future<FindPetsResponse> findPets({List<String>? tags, int? limit}) async {
    final request = createFindPetsRequest(tags: tags, limit: limit);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          FindPetsResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map((e) => Pet.fromJson((e as Map<String, dynamic>)))
                .toList(),
          ),
      'default': (OpenApiClientResponse response) async =>
          FindPetsResponseDefault.responseDefault(
            response.status,
            Error.fromJson(await response.responseBodyJson()),
          ),
    });
  }

  @override
  OpenApiClientRequest createAddPetRequest(NewPet body) {
    final request = OpenApiClientRequest('post', '/pets', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return request;
  }

  /// Creates a new pet in the store. Duplicates are allowed
  /// post: /pets
  ///
  @override
  Future<AddPetResponse> addPet(NewPet body) async {
    final request = createAddPetRequest(body);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          AddPetResponse200.response200(
            Pet.fromJson(await response.responseBodyJson()),
          ),
      'default': (OpenApiClientResponse response) async =>
          AddPetResponseDefault.responseDefault(
            response.status,
            Error.fromJson(await response.responseBodyJson()),
          ),
    });
  }

  @override
  OpenApiClientRequest createFindPetByIdRequest({required int id}) {
    final request = OpenApiClientRequest('get', '/pets/{id}', []);
    request.addPathParameter('id', encodeInt(id));
    return request;
  }

  /// Returns a user based on a single ID, if the user does not have access to the pet
  /// get: /pets/{id}
  ///
  /// * [id]: ID of pet to fetch
  @override
  Future<FindPetByIdResponse> findPetById({required int id}) async {
    final request = createFindPetByIdRequest(id: id);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          FindPetByIdResponse200.response200(
            Pet.fromJson(await response.responseBodyJson()),
          ),
      'default': (OpenApiClientResponse response) async =>
          FindPetByIdResponseDefault.responseDefault(
            response.status,
            Error.fromJson(await response.responseBodyJson()),
          ),
    });
  }

  @override
  OpenApiClientRequest createDeletePetRequest({required int id}) {
    final request = OpenApiClientRequest('delete', '/pets/{id}', []);
    request.addPathParameter('id', encodeInt(id));
    return request;
  }

  /// deletes a single pet based on the ID supplied
  /// delete: /pets/{id}
  ///
  /// * [id]: ID of pet to delete
  @override
  Future<DeletePetResponse> deletePet({required int id}) async {
    final request = createDeletePetRequest(id: id);
    return await sendRequest(request, {
      '204': (OpenApiClientResponse response) async =>
          DeletePetResponse204.response204(),
      'default': (OpenApiClientResponse response) async =>
          DeletePetResponseDefault.responseDefault(
            response.status,
            Error.fromJson(await response.responseBodyJson()),
          ),
    });
  }
}

class OaiPetstoreExpandedUrlResolve with OpenApiUrlEncodeMixin {
  /// Returns all pets from the system that the user has access to
  /// Nam sed condimentum est. Maecenas tempor sagittis sapien, nec rhoncus sem sagittis sit amet. Aenean at gravida augue, ac iaculis sem. Curabitur odio lorem, ornare eget elementum nec, cursus id lectus. Duis mi turpis, pulvinar ac eros ac, tincidunt varius justo. In hac habitasse platea dictumst. Integer at adipiscing ante, a sagittis ligula. Aenean pharetra tempor ante molestie imperdiet. Vivamus id aliquam diam. Cras quis velit non tortor eleifend sagittis. Praesent at enim pharetra urna volutpat venenatis eget eget mauris. In eleifend fermentum facilisis. Praesent enim enim, gravida ac sodales sed, placerat id erat. Suspendisse lacus dolor, consectetur non augue vel, vehicula interdum libero. Morbi euismod sagittis libero sed lacinia.
  ///
  /// Sed tempus felis lobortis leo pulvinar rutrum. Nam mattis velit nisl, eu condimentum ligula luctus nec. Phasellus semper velit eget aliquet faucibus. In a mattis elit. Phasellus vel urna viverra, condimentum lorem id, rhoncus nibh. Ut pellentesque posuere elementum. Sed a varius odio. Morbi rhoncus ligula libero, vel eleifend nunc tristique vitae. Fusce et sem dui. Aenean nec scelerisque tortor. Fusce malesuada accumsan magna vel tempus. Quisque mollis felis eu dolor tristique, sit amet auctor felis gravida. Sed libero lorem, molestie sed nisl in, accumsan tempor nisi. Fusce sollicitudin massa ut lacinia mattis. Sed vel eleifend lorem. Pellentesque vitae felis pretium, pulvinar elit eu, euismod sapien.
  ///
  /// get: /pets
  ///
  /// * [tags]: tags to filter by
  /// * [limit]: maximum number of results to return
  OpenApiClientRequest findPets({List<String>? tags, int? limit}) {
    final request = OpenApiClientRequest('get', '/pets', []);
    request.addQueryParameter('tags', tags?.expand((e) => encodeString(e)));
    request.addQueryParameter('limit', encodeInt(limit));
    return request;
  }

  /// Creates a new pet in the store. Duplicates are allowed
  /// post: /pets
  ///
  OpenApiClientRequest addPet() {
    final request = OpenApiClientRequest('post', '/pets', []);
    return request;
  }

  /// Returns a user based on a single ID, if the user does not have access to the pet
  /// get: /pets/{id}
  ///
  /// * [id]: ID of pet to fetch
  OpenApiClientRequest findPetById({required int id}) {
    final request = OpenApiClientRequest('get', '/pets/{id}', []);
    request.addPathParameter('id', encodeInt(id));
    return request;
  }

  /// deletes a single pet based on the ID supplied
  /// delete: /pets/{id}
  ///
  /// * [id]: ID of pet to delete
  OpenApiClientRequest deletePet({required int id}) {
    final request = OpenApiClientRequest('delete', '/pets/{id}', []);
    request.addPathParameter('id', encodeInt(id));
    return request;
  }
}

class OaiPetstoreExpandedRouter extends OpenApiServerRouterBase {
  OaiPetstoreExpandedRouter(this.impl);

  final ApiEndpointProvider<OaiPetstoreExpanded> impl;

  @override
  void configure() {
    addRoute('/pets', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (OaiPetstoreExpanded impl) async => impl.findPets(
          tags: paramOpt(
            name: 'tags',
            value: request.queryParameter('tags'),
            decode: (value) => value.map((e) => paramToString([e])).toList(),
          ),
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
        (OaiPetstoreExpanded impl) async =>
            impl.addPet(NewPet.fromJson(await request.readJsonBody())),
      );
    }, security: []);
    addRoute('/pets/{id}', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (OaiPetstoreExpanded impl) async => impl.findPetById(
          id: paramRequired(
            name: 'id',
            value: request.pathParameter('id'),
            decode: (value) => paramToInt(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/pets/{id}', 'delete', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (OaiPetstoreExpanded impl) async => impl.deletePet(
          id: paramRequired(
            name: 'id',
            value: request.pathParameter('id'),
            decode: (value) => paramToInt(value),
          ),
        ),
      );
    }, security: []);
  }
}

class SecuritySchemes {}
