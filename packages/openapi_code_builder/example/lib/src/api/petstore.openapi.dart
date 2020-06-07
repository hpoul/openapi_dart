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
class PetCategory {
  PetCategory({this.id, this.name});

  factory PetCategory.fromJson(Map<String, dynamic> map) =>
      _$PetCategoryFromJson(map);

  /// null
  final int id;

  /// null
  final String name;

  Map<String, dynamic> toJson() => _$PetCategoryToJson(this);
}

///
@_i1.JsonSerializable()
class PetTags {
  PetTags({this.id, this.name});

  factory PetTags.fromJson(Map<String, dynamic> map) => _$PetTagsFromJson(map);

  /// null
  final int id;

  /// null
  final String name;

  Map<String, dynamic> toJson() => _$PetTagsToJson(this);
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
  final PetCategory category;

  /// null
  final String name;

  /// null
  final List<String> photoUrls;

  /// null
  final List<PetTags> tags;

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
  PetPutResponse.response400() : this._(400);

  /// Pet not found
  PetPutResponse.response404() : this._(404);

  /// Validation exception
  PetPutResponse.response405() : this._(405);

  final int status;
}

///
@_i1.JsonSerializable()
class PetSchema {
  PetSchema(
      {this.id,
      this.category,
      this.name,
      this.photoUrls,
      this.tags,
      this.status});

  factory PetSchema.fromJson(Map<String, dynamic> map) =>
      _$PetSchemaFromJson(map);

  /// null
  final int id;

  /// null
  final PetCategory category;

  /// null
  final String name;

  /// null
  final List<String> photoUrls;

  /// null
  final List<PetTags> tags;

  /// pet status in the store
  final String status;

  Map<String, dynamic> toJson() => _$PetSchemaToJson(this);
}

class PetPostResponse extends _i2.OpenApiResponse {
  PetPostResponse._(this.status);

  /// Invalid input
  PetPostResponse.response405() : this._(405);

  final int status;
}

class PetFindByStatusGetResponse extends _i2.OpenApiResponse {
  PetFindByStatusGetResponse._(this.status);

  /// successful operation
  PetFindByStatusGetResponse.response200() : this._(200);

  /// Invalid status value
  PetFindByStatusGetResponse.response400() : this._(400);

  final int status;
}

class PetFindByTagsGetResponse extends _i2.OpenApiResponse {
  PetFindByTagsGetResponse._(this.status);

  /// successful operation
  PetFindByTagsGetResponse.response200() : this._(200);

  /// Invalid tag value
  PetFindByTagsGetResponse.response400() : this._(400);

  final int status;
}

class PetPetIdGetResponse extends _i2.OpenApiResponse {
  PetPetIdGetResponse._(this.status);

  /// successful operation
  PetPetIdGetResponse.response200() : this._(200);

  /// Invalid ID supplied
  PetPetIdGetResponse.response400() : this._(400);

  /// Pet not found
  PetPetIdGetResponse.response404() : this._(404);

  final int status;
}

class PetPetIdPostResponse extends _i2.OpenApiResponse {
  PetPetIdPostResponse._(this.status);

  /// Invalid input
  PetPetIdPostResponse.response405() : this._(405);

  final int status;
}

class PetPetIdDeleteResponse extends _i2.OpenApiResponse {
  PetPetIdDeleteResponse._(this.status);

  /// Invalid ID supplied
  PetPetIdDeleteResponse.response400() : this._(400);

  /// Pet not found
  PetPetIdDeleteResponse.response404() : this._(404);

  final int status;
}

class PetPetIdUploadImagePostResponse extends _i2.OpenApiResponse {
  PetPetIdUploadImagePostResponse._(this.status);

  /// successful operation
  PetPetIdUploadImagePostResponse.response200() : this._(200);

  final int status;
}

class StoreInventoryGetResponse extends _i2.OpenApiResponse {
  StoreInventoryGetResponse._(this.status);

  /// successful operation
  StoreInventoryGetResponse.response200() : this._(200);

  final int status;
}

class StoreOrderPostResponse extends _i2.OpenApiResponse {
  StoreOrderPostResponse._(this.status);

  /// successful operation
  StoreOrderPostResponse.response200() : this._(200);

  /// Invalid Order
  StoreOrderPostResponse.response400() : this._(400);

  final int status;
}

///
@_i1.JsonSerializable()
class StoreOrderSchema {
  StoreOrderSchema(
      {this.id,
      this.petId,
      this.quantity,
      this.shipDate,
      this.status,
      this.complete});

  factory StoreOrderSchema.fromJson(Map<String, dynamic> map) =>
      _$StoreOrderSchemaFromJson(map);

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

  Map<String, dynamic> toJson() => _$StoreOrderSchemaToJson(this);
}

class StoreOrderOrderIdGetResponse extends _i2.OpenApiResponse {
  StoreOrderOrderIdGetResponse._(this.status);

  /// successful operation
  StoreOrderOrderIdGetResponse.response200() : this._(200);

  /// Invalid ID supplied
  StoreOrderOrderIdGetResponse.response400() : this._(400);

  /// Order not found
  StoreOrderOrderIdGetResponse.response404() : this._(404);

  final int status;
}

class StoreOrderOrderIdDeleteResponse extends _i2.OpenApiResponse {
  StoreOrderOrderIdDeleteResponse._(this.status);

  /// Invalid ID supplied
  StoreOrderOrderIdDeleteResponse.response400() : this._(400);

  /// Order not found
  StoreOrderOrderIdDeleteResponse.response404() : this._(404);

  final int status;
}

class UserPostResponse extends _i2.OpenApiResponse {
  UserPostResponse._(this.status);

  /// successful operation
  UserPostResponse.response(int status) : this._(status);

  final int status;
}

///
@_i1.JsonSerializable()
class UserSchema {
  UserSchema(
      {this.id,
      this.username,
      this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.phone,
      this.userStatus});

  factory UserSchema.fromJson(Map<String, dynamic> map) =>
      _$UserSchemaFromJson(map);

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

  Map<String, dynamic> toJson() => _$UserSchemaToJson(this);
}

class UserCreateWithArrayPostResponse extends _i2.OpenApiResponse {
  UserCreateWithArrayPostResponse._(this.status);

  /// successful operation
  UserCreateWithArrayPostResponse.response(int status) : this._(status);

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

  final int status;
}

class UserLoginGetResponse extends _i2.OpenApiResponse {
  UserLoginGetResponse._(this.status);

  /// successful operation
  UserLoginGetResponse.response200() : this._(200);

  /// Invalid username/password supplied
  UserLoginGetResponse.response400() : this._(400);

  final int status;
}

class UserLogoutGetResponse extends _i2.OpenApiResponse {
  UserLogoutGetResponse._(this.status);

  /// successful operation
  UserLogoutGetResponse.response(int status) : this._(status);

  final int status;
}

class UserUsernameGetResponse extends _i2.OpenApiResponse {
  UserUsernameGetResponse._(this.status);

  /// successful operation
  UserUsernameGetResponse.response200() : this._(200);

  /// Invalid username supplied
  UserUsernameGetResponse.response400() : this._(400);

  /// User not found
  UserUsernameGetResponse.response404() : this._(404);

  final int status;
}

class UserUsernamePutResponse extends _i2.OpenApiResponse {
  UserUsernamePutResponse._(this.status);

  /// Invalid user supplied
  UserUsernamePutResponse.response400() : this._(400);

  /// User not found
  UserUsernamePutResponse.response404() : this._(404);

  final int status;
}

///
@_i1.JsonSerializable()
class UserUsernameSchema {
  UserUsernameSchema(
      {this.id,
      this.username,
      this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.phone,
      this.userStatus});

  factory UserUsernameSchema.fromJson(Map<String, dynamic> map) =>
      _$UserUsernameSchemaFromJson(map);

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

  Map<String, dynamic> toJson() => _$UserUsernameSchemaToJson(this);
}

class UserUsernameDeleteResponse extends _i2.OpenApiResponse {
  UserUsernameDeleteResponse._(this.status);

  /// Invalid username supplied
  UserUsernameDeleteResponse.response400() : this._(400);

  /// User not found
  UserUsernameDeleteResponse.response404() : this._(404);

  final int status;
}

abstract class Petstore {
  Future<PetPutResponse> petPut(PetSchema body);
  Future<PetPostResponse> petPost(PetSchema body);
  Future<PetFindByStatusGetResponse> petFindByStatusGet(List<String> status);
  Future<PetFindByTagsGetResponse> petFindByTagsGet(List<String> tags);
  Future<PetPetIdGetResponse> petPetIdGet(int petId);
  Future<PetPetIdPostResponse> petPetIdPost(int petId);
  Future<PetPetIdDeleteResponse> petPetIdDelete(String apiKey, int petId);
  Future<PetPetIdUploadImagePostResponse> petPetIdUploadImagePost(int petId);
  Future<StoreInventoryGetResponse> storeInventoryGet();
  Future<StoreOrderPostResponse> storeOrderPost(StoreOrderSchema body);
  Future<StoreOrderOrderIdGetResponse> storeOrderOrderIdGet(int orderId);
  Future<StoreOrderOrderIdDeleteResponse> storeOrderOrderIdDelete(int orderId);
  Future<UserPostResponse> userPost(UserSchema body);
  Future<UserCreateWithArrayPostResponse> userCreateWithArrayPost(
      UserCreateWithArraySchema body);
  Future<UserCreateWithListPostResponse> userCreateWithListPost(
      UserCreateWithArraySchema body);
  Future<UserLoginGetResponse> userLoginGet(String username, String password);
  Future<UserLogoutGetResponse> userLogoutGet();
  Future<UserUsernameGetResponse> userUsernameGet(String username);
  Future<UserUsernamePutResponse> userUsernamePut(
      String username, UserUsernameSchema body);
  Future<UserUsernameDeleteResponse> userUsernameDelete(String username);
}

class PetstoreRouter extends _i2.OpenApiServerRouterBase {
  PetstoreRouter(this.impl);

  final Petstore impl;

  void configure() {
    addRoute('/pet', 'put', (_i2.OpenApiRequest request) async {
      return await impl.petPut(PetSchema.fromJson(request.readJsonBody()));
    });
    addRoute('/pet', 'post', (_i2.OpenApiRequest request) async {
      return await impl.petPost(PetSchema.fromJson(request.readJsonBody()));
    });
    addRoute('/pet/findByStatus', 'get', (_i2.OpenApiRequest request) async {
      return await impl.petFindByStatusGet(request.queryParameter('status'));
    });
    addRoute('/pet/findByTags', 'get', (_i2.OpenApiRequest request) async {
      return await impl.petFindByTagsGet(request.queryParameter('tags'));
    });
    addRoute('/pet/{petId}', 'get', (_i2.OpenApiRequest request) async {
      return await impl.petPetIdGet(paramToInt(request.pathParameter('petId')));
    });
    addRoute('/pet/{petId}', 'post', (_i2.OpenApiRequest request) async {
      return await impl
          .petPetIdPost(paramToInt(request.pathParameter('petId')));
    });
    addRoute('/pet/{petId}', 'delete', (_i2.OpenApiRequest request) async {
      return await impl.petPetIdDelete(
          paramToString(request.headerParameter('api_key')),
          paramToInt(request.pathParameter('petId')));
    });
    addRoute('/pet/{petId}/uploadImage', 'post',
        (_i2.OpenApiRequest request) async {
      return await impl
          .petPetIdUploadImagePost(paramToInt(request.pathParameter('petId')));
    });
    addRoute('/store/inventory', 'get', (_i2.OpenApiRequest request) async {
      return await impl.storeInventoryGet();
    });
    addRoute('/store/order', 'post', (_i2.OpenApiRequest request) async {
      return await impl
          .storeOrderPost(StoreOrderSchema.fromJson(request.readJsonBody()));
    });
    addRoute('/store/order/{orderId}', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl
          .storeOrderOrderIdGet(paramToInt(request.pathParameter('orderId')));
    });
    addRoute('/store/order/{orderId}', 'delete',
        (_i2.OpenApiRequest request) async {
      return await impl.storeOrderOrderIdDelete(
          paramToInt(request.pathParameter('orderId')));
    });
    addRoute('/user', 'post', (_i2.OpenApiRequest request) async {
      return await impl.userPost(UserSchema.fromJson(request.readJsonBody()));
    });
    addRoute('/user/createWithArray', 'post',
        (_i2.OpenApiRequest request) async {
      return await impl.userCreateWithArrayPost(
          UserCreateWithArraySchema.fromJson(request.readJsonBody()));
    });
    addRoute('/user/createWithList', 'post',
        (_i2.OpenApiRequest request) async {
      return await impl.userCreateWithListPost(
          UserCreateWithArraySchema.fromJson(request.readJsonBody()));
    });
    addRoute('/user/login', 'get', (_i2.OpenApiRequest request) async {
      return await impl.userLoginGet(
          paramToString(request.queryParameter('username')),
          paramToString(request.queryParameter('password')));
    });
    addRoute('/user/logout', 'get', (_i2.OpenApiRequest request) async {
      return await impl.userLogoutGet();
    });
    addRoute('/user/{username}', 'get', (_i2.OpenApiRequest request) async {
      return await impl
          .userUsernameGet(paramToString(request.pathParameter('username')));
    });
    addRoute('/user/{username}', 'put', (_i2.OpenApiRequest request) async {
      return await impl.userUsernamePut(
          paramToString(request.pathParameter('username')),
          UserUsernameSchema.fromJson(request.readJsonBody()));
    });
    addRoute('/user/{username}', 'delete', (_i2.OpenApiRequest request) async {
      return await impl
          .userUsernameDelete(paramToString(request.pathParameter('username')));
    });
  }
}
