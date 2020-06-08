// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:openapi_base/openapi_base.dart' as _i2;
part 'petstore.openapi.g.dart';

///
@_i1.JsonSerializable()
class Order {
  Order(
      {this.id,
      this.petId,
      this.quantity,
      this.shipDate,
      this.status,
      this.complete});

  factory Order.fromJson(Map<String, dynamic> map) => _$OrderFromJson(map);

  /// null
  final int id;

  /// null
  final int petId;

  /// null
  final int quantity;

  /// null
  final String shipDate;

  /// Order Status
  final String status;

  /// null
  final bool complete;

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}

///
@_i1.JsonSerializable()
class Category {
  Category({this.id, this.name});

  factory Category.fromJson(Map<String, dynamic> map) =>
      _$CategoryFromJson(map);

  /// null
  final int id;

  /// null
  final String name;

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

///
@_i1.JsonSerializable()
class User {
  User(
      {this.id,
      this.username,
      this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.phone,
      this.userStatus});

  factory User.fromJson(Map<String, dynamic> map) => _$UserFromJson(map);

  /// null
  final int id;

  /// null
  final String username;

  /// null
  final String firstName;

  /// null
  final String lastName;

  /// null
  final String email;

  /// null
  final String password;

  /// null
  final String phone;

  /// User Status
  final int userStatus;

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

///
@_i1.JsonSerializable()
class Tag {
  Tag({this.id, this.name});

  factory Tag.fromJson(Map<String, dynamic> map) => _$TagFromJson(map);

  /// null
  final int id;

  /// null
  final String name;

  Map<String, dynamic> toJson() => _$TagToJson(this);
}

///
@_i1.JsonSerializable()
class Pet {
  Pet(
      {this.id,
      this.category,
      this.name,
      this.photoUrls,
      this.tags,
      this.status});

  factory Pet.fromJson(Map<String, dynamic> map) => _$PetFromJson(map);

  /// null
  final int id;

  /// null
  final Category category;

  /// null
  final String name;

  /// null
  final List<String> photoUrls;

  /// null
  final List<Tag> tags;

  /// pet status in the store
  final String status;

  Map<String, dynamic> toJson() => _$PetToJson(this);
}

///
@_i1.JsonSerializable()
class ApiResponse {
  ApiResponse({this.code, this.type, this.message});

  factory ApiResponse.fromJson(Map<String, dynamic> map) =>
      _$ApiResponseFromJson(map);

  /// null
  final int code;

  /// null
  final String type;

  /// null
  final String message;

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}

class PetPutResponse extends _i2.OpenApiResponse {
  PetPutResponse._(this.status);

  /// Invalid ID supplied
  PetPutResponse.response400() : status = 400;

  /// Pet not found
  PetPutResponse.response404() : status = 404;

  /// Validation exception
  PetPutResponse.response405() : status = 405;

  @override
  final int status;
}

class PetPostResponse extends _i2.OpenApiResponse {
  PetPostResponse._(this.status);

  /// Invalid input
  PetPostResponse.response405() : status = 405;

  @override
  final int status;
}

///
@_i1.JsonSerializable()
class PetFindByStatusGetResponse200 {
  PetFindByStatusGetResponse200();

  factory PetFindByStatusGetResponse200.fromJson(Map<String, dynamic> map) =>
      _$PetFindByStatusGetResponse200FromJson(map);

  Map<String, dynamic> toJson() => _$PetFindByStatusGetResponse200ToJson(this);
}

class PetFindByStatusGetResponse extends _i2.OpenApiResponse {
  PetFindByStatusGetResponse._(this.status);

  /// successful operation
  PetFindByStatusGetResponse.response200(PetFindByStatusGetResponse200 body)
      : status = 200 {
    bodyJson = body.toJson();
  }

  /// Invalid status value
  PetFindByStatusGetResponse.response400() : status = 400;

  @override
  final int status;
}

///
@_i1.JsonSerializable()
class PetFindByTagsGetResponse200 {
  PetFindByTagsGetResponse200();

  factory PetFindByTagsGetResponse200.fromJson(Map<String, dynamic> map) =>
      _$PetFindByTagsGetResponse200FromJson(map);

  Map<String, dynamic> toJson() => _$PetFindByTagsGetResponse200ToJson(this);
}

class PetFindByTagsGetResponse extends _i2.OpenApiResponse {
  PetFindByTagsGetResponse._(this.status);

  /// successful operation
  PetFindByTagsGetResponse.response200(PetFindByTagsGetResponse200 body)
      : status = 200 {
    bodyJson = body.toJson();
  }

  /// Invalid tag value
  PetFindByTagsGetResponse.response400() : status = 400;

  @override
  final int status;
}

class PetPetIdGetResponse extends _i2.OpenApiResponse {
  PetPetIdGetResponse._(this.status);

  /// successful operation
  PetPetIdGetResponse.response200(Pet body) : status = 200 {
    bodyJson = body.toJson();
  }

  /// Invalid ID supplied
  PetPetIdGetResponse.response400() : status = 400;

  /// Pet not found
  PetPetIdGetResponse.response404() : status = 404;

  @override
  final int status;
}

class PetPetIdPostResponse extends _i2.OpenApiResponse {
  PetPetIdPostResponse._(this.status);

  /// Invalid input
  PetPetIdPostResponse.response405() : status = 405;

  @override
  final int status;
}

class PetPetIdDeleteResponse extends _i2.OpenApiResponse {
  PetPetIdDeleteResponse._(this.status);

  /// Invalid ID supplied
  PetPetIdDeleteResponse.response400() : status = 400;

  /// Pet not found
  PetPetIdDeleteResponse.response404() : status = 404;

  @override
  final int status;
}

class PetPetIdUploadImagePostResponse extends _i2.OpenApiResponse {
  PetPetIdUploadImagePostResponse._(this.status);

  /// successful operation
  PetPetIdUploadImagePostResponse.response200(ApiResponse body) : status = 200 {
    bodyJson = body.toJson();
  }

  @override
  final int status;
}

///
@_i1.JsonSerializable()
class StoreInventoryGetResponse200 {
  StoreInventoryGetResponse200();

  factory StoreInventoryGetResponse200.fromJson(Map<String, dynamic> map) =>
      _$StoreInventoryGetResponse200FromJson(map);

  Map<String, dynamic> toJson() => _$StoreInventoryGetResponse200ToJson(this);
}

class StoreInventoryGetResponse extends _i2.OpenApiResponse {
  StoreInventoryGetResponse._(this.status);

  /// successful operation
  StoreInventoryGetResponse.response200(StoreInventoryGetResponse200 body)
      : status = 200 {
    bodyJson = body.toJson();
  }

  @override
  final int status;
}

class StoreOrderPostResponse extends _i2.OpenApiResponse {
  StoreOrderPostResponse._(this.status);

  /// successful operation
  StoreOrderPostResponse.response200(Order body) : status = 200 {
    bodyJson = body.toJson();
  }

  /// Invalid Order
  StoreOrderPostResponse.response400() : status = 400;

  @override
  final int status;
}

class StoreOrderOrderIdGetResponse extends _i2.OpenApiResponse {
  StoreOrderOrderIdGetResponse._(this.status);

  /// successful operation
  StoreOrderOrderIdGetResponse.response200(Order body) : status = 200 {
    bodyJson = body.toJson();
  }

  /// Invalid ID supplied
  StoreOrderOrderIdGetResponse.response400() : status = 400;

  /// Order not found
  StoreOrderOrderIdGetResponse.response404() : status = 404;

  @override
  final int status;
}

class StoreOrderOrderIdDeleteResponse extends _i2.OpenApiResponse {
  StoreOrderOrderIdDeleteResponse._(this.status);

  /// Invalid ID supplied
  StoreOrderOrderIdDeleteResponse.response400() : status = 400;

  /// Order not found
  StoreOrderOrderIdDeleteResponse.response404() : status = 404;

  @override
  final int status;
}

class UserPostResponse extends _i2.OpenApiResponse {
  UserPostResponse._(this.status);

  /// successful operation
  UserPostResponse.response(int status) : this._(status);

  @override
  final int status;
}

class UserCreateWithArrayPostResponse extends _i2.OpenApiResponse {
  UserCreateWithArrayPostResponse._(this.status);

  /// successful operation
  UserCreateWithArrayPostResponse.response(int status) : this._(status);

  @override
  final int status;
}

///
@_i1.JsonSerializable()
class UserCreateWithArraySchema {
  UserCreateWithArraySchema();

  factory UserCreateWithArraySchema.fromJson(Map<String, dynamic> map) =>
      _$UserCreateWithArraySchemaFromJson(map);

  Map<String, dynamic> toJson() => _$UserCreateWithArraySchemaToJson(this);
}

class UserCreateWithListPostResponse extends _i2.OpenApiResponse {
  UserCreateWithListPostResponse._(this.status);

  /// successful operation
  UserCreateWithListPostResponse.response(int status) : this._(status);

  @override
  final int status;
}

///
@_i1.JsonSerializable()
class UserLoginGetResponse200 {
  UserLoginGetResponse200();

  factory UserLoginGetResponse200.fromJson(Map<String, dynamic> map) =>
      _$UserLoginGetResponse200FromJson(map);

  Map<String, dynamic> toJson() => _$UserLoginGetResponse200ToJson(this);
}

class UserLoginGetResponse extends _i2.OpenApiResponse {
  UserLoginGetResponse._(this.status);

  /// successful operation
  UserLoginGetResponse.response200(UserLoginGetResponse200 body)
      : status = 200 {
    bodyJson = body.toJson();
  }

  /// Invalid username/password supplied
  UserLoginGetResponse.response400() : status = 400;

  @override
  final int status;
}

class UserLogoutGetResponse extends _i2.OpenApiResponse {
  UserLogoutGetResponse._(this.status);

  /// successful operation
  UserLogoutGetResponse.response(int status) : this._(status);

  @override
  final int status;
}

class UserUsernameGetResponse extends _i2.OpenApiResponse {
  UserUsernameGetResponse._(this.status);

  /// successful operation
  UserUsernameGetResponse.response200(User body) : status = 200 {
    bodyJson = body.toJson();
  }

  /// Invalid username supplied
  UserUsernameGetResponse.response400() : status = 400;

  /// User not found
  UserUsernameGetResponse.response404() : status = 404;

  @override
  final int status;
}

class UserUsernamePutResponse extends _i2.OpenApiResponse {
  UserUsernamePutResponse._(this.status);

  /// Invalid user supplied
  UserUsernamePutResponse.response400() : status = 400;

  /// User not found
  UserUsernamePutResponse.response404() : status = 404;

  @override
  final int status;
}

class UserUsernameDeleteResponse extends _i2.OpenApiResponse {
  UserUsernameDeleteResponse._(this.status);

  /// Invalid username supplied
  UserUsernameDeleteResponse.response400() : status = 400;

  /// User not found
  UserUsernameDeleteResponse.response404() : status = 404;

  @override
  final int status;
}

abstract class Petstore {
  /// null
  Future<PetPutResponse> petPut(_i2.OpenApiRequest request, Pet body);

  /// null
  Future<PetPostResponse> petPost(_i2.OpenApiRequest request, Pet body);

  /// Multiple status values can be provided with comma separated strings
  Future<PetFindByStatusGetResponse> petFindByStatusGet(
      _i2.OpenApiRequest request, List<String> status);

  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  Future<PetFindByTagsGetResponse> petFindByTagsGet(
      _i2.OpenApiRequest request, List<String> tags);

  /// Returns a single pet
  Future<PetPetIdGetResponse> petPetIdGet(
      _i2.OpenApiRequest request, int petId);

  /// null
  Future<PetPetIdPostResponse> petPetIdPost(
      _i2.OpenApiRequest request, int petId);

  /// null
  Future<PetPetIdDeleteResponse> petPetIdDelete(
      _i2.OpenApiRequest request, String apiKey, int petId);

  /// null
  Future<PetPetIdUploadImagePostResponse> petPetIdUploadImagePost(
      _i2.OpenApiRequest request, int petId);

  /// Returns a map of status codes to quantities
  Future<StoreInventoryGetResponse> storeInventoryGet(
      _i2.OpenApiRequest request);

  /// null
  Future<StoreOrderPostResponse> storeOrderPost(
      _i2.OpenApiRequest request, Order body);

  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  Future<StoreOrderOrderIdGetResponse> storeOrderOrderIdGet(
      _i2.OpenApiRequest request, int orderId);

  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  Future<StoreOrderOrderIdDeleteResponse> storeOrderOrderIdDelete(
      _i2.OpenApiRequest request, int orderId);

  /// This can only be done by the logged in user.
  Future<UserPostResponse> userPost(_i2.OpenApiRequest request, User body);

  /// null
  Future<UserCreateWithArrayPostResponse> userCreateWithArrayPost(
      _i2.OpenApiRequest request, UserCreateWithArraySchema body);

  /// null
  Future<UserCreateWithListPostResponse> userCreateWithListPost(
      _i2.OpenApiRequest request, UserCreateWithArraySchema body);

  /// null
  Future<UserLoginGetResponse> userLoginGet(
      _i2.OpenApiRequest request, String username, String password);

  /// null
  Future<UserLogoutGetResponse> userLogoutGet(_i2.OpenApiRequest request);

  /// null
  Future<UserUsernameGetResponse> userUsernameGet(
      _i2.OpenApiRequest request, String username);

  /// This can only be done by the logged in user.
  Future<UserUsernamePutResponse> userUsernamePut(
      _i2.OpenApiRequest request, String username, User body);

  /// This can only be done by the logged in user.
  Future<UserUsernameDeleteResponse> userUsernameDelete(
      _i2.OpenApiRequest request, String username);
}

class PetstoreRouter extends _i2.OpenApiServerRouterBase {
  PetstoreRouter(this.impl);

  final Petstore impl;

  void configure() {
    addRoute('/pet', 'put', (_i2.OpenApiRequest request) async {
      return await impl.petPut(
          request, Pet.fromJson(await request.readJsonBody()));
    });
    addRoute('/pet', 'post', (_i2.OpenApiRequest request) async {
      return await impl.petPost(
          request, Pet.fromJson(await request.readJsonBody()));
    });
    addRoute('/pet/findByStatus', 'get', (_i2.OpenApiRequest request) async {
      return await impl.petFindByStatusGet(
          request, request.queryParameter('status'));
    });
    addRoute('/pet/findByTags', 'get', (_i2.OpenApiRequest request) async {
      return await impl.petFindByTagsGet(
          request, request.queryParameter('tags'));
    });
    addRoute('/pet/{petId}', 'get', (_i2.OpenApiRequest request) async {
      return await impl.petPetIdGet(
          request, paramToInt(request.pathParameter('petId')));
    });
    addRoute('/pet/{petId}', 'post', (_i2.OpenApiRequest request) async {
      return await impl.petPetIdPost(
          request, paramToInt(request.pathParameter('petId')));
    });
    addRoute('/pet/{petId}', 'delete', (_i2.OpenApiRequest request) async {
      return await impl.petPetIdDelete(
          request,
          paramToString(request.headerParameter('api_key')),
          paramToInt(request.pathParameter('petId')));
    });
    addRoute('/pet/{petId}/uploadImage', 'post',
        (_i2.OpenApiRequest request) async {
      return await impl.petPetIdUploadImagePost(
          request, paramToInt(request.pathParameter('petId')));
    });
    addRoute('/store/inventory', 'get', (_i2.OpenApiRequest request) async {
      return await impl.storeInventoryGet(request);
    });
    addRoute('/store/order', 'post', (_i2.OpenApiRequest request) async {
      return await impl.storeOrderPost(
          request, Order.fromJson(await request.readJsonBody()));
    });
    addRoute('/store/order/{orderId}', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.storeOrderOrderIdGet(
          request, paramToInt(request.pathParameter('orderId')));
    });
    addRoute('/store/order/{orderId}', 'delete',
        (_i2.OpenApiRequest request) async {
      return await impl.storeOrderOrderIdDelete(
          request, paramToInt(request.pathParameter('orderId')));
    });
    addRoute('/user', 'post', (_i2.OpenApiRequest request) async {
      return await impl.userPost(
          request, User.fromJson(await request.readJsonBody()));
    });
    addRoute('/user/createWithArray', 'post',
        (_i2.OpenApiRequest request) async {
      return await impl.userCreateWithArrayPost(request,
          UserCreateWithArraySchema.fromJson(await request.readJsonBody()));
    });
    addRoute('/user/createWithList', 'post',
        (_i2.OpenApiRequest request) async {
      return await impl.userCreateWithListPost(request,
          UserCreateWithArraySchema.fromJson(await request.readJsonBody()));
    });
    addRoute('/user/login', 'get', (_i2.OpenApiRequest request) async {
      return await impl.userLoginGet(
          request,
          paramToString(request.queryParameter('username')),
          paramToString(request.queryParameter('password')));
    });
    addRoute('/user/logout', 'get', (_i2.OpenApiRequest request) async {
      return await impl.userLogoutGet(request);
    });
    addRoute('/user/{username}', 'get', (_i2.OpenApiRequest request) async {
      return await impl.userUsernameGet(
          request, paramToString(request.pathParameter('username')));
    });
    addRoute('/user/{username}', 'put', (_i2.OpenApiRequest request) async {
      return await impl.userUsernamePut(
          request,
          paramToString(request.pathParameter('username')),
          User.fromJson(await request.readJsonBody()));
    });
    addRoute('/user/{username}', 'delete', (_i2.OpenApiRequest request) async {
      return await impl.userUsernameDelete(
          request, paramToString(request.pathParameter('username')));
    });
  }
}
