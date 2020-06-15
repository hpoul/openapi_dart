// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:meta/meta.dart' as _i3;
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

  factory Order.fromJson(Map<String, dynamic> jsonMap) =>
      _$OrderFromJson(jsonMap);

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

  factory Category.fromJson(Map<String, dynamic> jsonMap) =>
      _$CategoryFromJson(jsonMap);

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

  factory User.fromJson(Map<String, dynamic> jsonMap) =>
      _$UserFromJson(jsonMap);

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

  factory Tag.fromJson(Map<String, dynamic> jsonMap) => _$TagFromJson(jsonMap);

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

  factory Pet.fromJson(Map<String, dynamic> jsonMap) => _$PetFromJson(jsonMap);

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

  factory ApiResponse.fromJson(Map<String, dynamic> jsonMap) =>
      _$ApiResponseFromJson(jsonMap);

  /// null
  final int code;

  /// null
  final String type;

  /// null
  final String message;

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}

class PetPutResponse400 extends PetPutResponse {
  /// Invalid ID supplied
  PetPutResponse400.response400() : status = 400;

  @override
  final int status;
}

class PetPutResponse404 extends PetPutResponse {
  /// Pet not found
  PetPutResponse404.response404() : status = 404;

  @override
  final int status;
}

class PetPutResponse405 extends PetPutResponse {
  /// Validation exception
  PetPutResponse405.response405() : status = 405;

  @override
  final int status;
}

abstract class PetPutResponse extends _i2.OpenApiResponse {
  PetPutResponse();

  /// Invalid ID supplied
  factory PetPutResponse.response400() => PetPutResponse400.response400();

  /// Pet not found
  factory PetPutResponse.response404() => PetPutResponse404.response404();

  /// Validation exception
  factory PetPutResponse.response405() => PetPutResponse405.response405();

  void map(
      {@_i3.required _i2.ResponseMap<PetPutResponse400> on400,
      @_i3.required _i2.ResponseMap<PetPutResponse404> on404,
      @_i3.required _i2.ResponseMap<PetPutResponse405> on405}) {
    if (this is PetPutResponse400) {
      on400((this as PetPutResponse400));
    } else if (this is PetPutResponse404) {
      on404((this as PetPutResponse404));
    } else if (this is PetPutResponse405) {
      on405((this as PetPutResponse405));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class PetPostResponse405 extends PetPostResponse {
  /// Invalid input
  PetPostResponse405.response405() : status = 405;

  @override
  final int status;
}

abstract class PetPostResponse extends _i2.OpenApiResponse {
  PetPostResponse();

  /// Invalid input
  factory PetPostResponse.response405() => PetPostResponse405.response405();

  void map({@_i3.required _i2.ResponseMap<PetPostResponse405> on405}) {
    if (this is PetPostResponse405) {
      on405((this as PetPostResponse405));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

///
@_i1.JsonSerializable()
class PetFindByStatusGetResponseBody200 {
  PetFindByStatusGetResponseBody200();

  factory PetFindByStatusGetResponseBody200.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$PetFindByStatusGetResponseBody200FromJson(jsonMap);

  Map<String, dynamic> toJson() =>
      _$PetFindByStatusGetResponseBody200ToJson(this);
}

class PetFindByStatusGetResponse200 extends PetFindByStatusGetResponse {
  /// successful operation
  PetFindByStatusGetResponse200.response200(this.body) : status = 200 {
    bodyJson = body.toJson();
  }

  @override
  final int status;

  final PetFindByStatusGetResponseBody200 body;
}

class PetFindByStatusGetResponse400 extends PetFindByStatusGetResponse {
  /// Invalid status value
  PetFindByStatusGetResponse400.response400() : status = 400;

  @override
  final int status;
}

abstract class PetFindByStatusGetResponse extends _i2.OpenApiResponse {
  PetFindByStatusGetResponse();

  /// successful operation
  factory PetFindByStatusGetResponse.response200(
          PetFindByStatusGetResponseBody200 body) =>
      PetFindByStatusGetResponse200.response200(body);

  /// Invalid status value
  factory PetFindByStatusGetResponse.response400() =>
      PetFindByStatusGetResponse400.response400();

  void map(
      {@_i3.required _i2.ResponseMap<PetFindByStatusGetResponse200> on200,
      @_i3.required _i2.ResponseMap<PetFindByStatusGetResponse400> on400}) {
    if (this is PetFindByStatusGetResponse200) {
      on200((this as PetFindByStatusGetResponse200));
    } else if (this is PetFindByStatusGetResponse400) {
      on400((this as PetFindByStatusGetResponse400));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

///
@_i1.JsonSerializable()
class PetFindByTagsGetResponseBody200 {
  PetFindByTagsGetResponseBody200();

  factory PetFindByTagsGetResponseBody200.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$PetFindByTagsGetResponseBody200FromJson(jsonMap);

  Map<String, dynamic> toJson() =>
      _$PetFindByTagsGetResponseBody200ToJson(this);
}

class PetFindByTagsGetResponse200 extends PetFindByTagsGetResponse {
  /// successful operation
  PetFindByTagsGetResponse200.response200(this.body) : status = 200 {
    bodyJson = body.toJson();
  }

  @override
  final int status;

  final PetFindByTagsGetResponseBody200 body;
}

class PetFindByTagsGetResponse400 extends PetFindByTagsGetResponse {
  /// Invalid tag value
  PetFindByTagsGetResponse400.response400() : status = 400;

  @override
  final int status;
}

abstract class PetFindByTagsGetResponse extends _i2.OpenApiResponse {
  PetFindByTagsGetResponse();

  /// successful operation
  factory PetFindByTagsGetResponse.response200(
          PetFindByTagsGetResponseBody200 body) =>
      PetFindByTagsGetResponse200.response200(body);

  /// Invalid tag value
  factory PetFindByTagsGetResponse.response400() =>
      PetFindByTagsGetResponse400.response400();

  void map(
      {@_i3.required _i2.ResponseMap<PetFindByTagsGetResponse200> on200,
      @_i3.required _i2.ResponseMap<PetFindByTagsGetResponse400> on400}) {
    if (this is PetFindByTagsGetResponse200) {
      on200((this as PetFindByTagsGetResponse200));
    } else if (this is PetFindByTagsGetResponse400) {
      on400((this as PetFindByTagsGetResponse400));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class PetPetIdGetResponse200 extends PetPetIdGetResponse {
  /// successful operation
  PetPetIdGetResponse200.response200(this.body) : status = 200 {
    bodyJson = body.toJson();
  }

  @override
  final int status;

  final Pet body;
}

class PetPetIdGetResponse400 extends PetPetIdGetResponse {
  /// Invalid ID supplied
  PetPetIdGetResponse400.response400() : status = 400;

  @override
  final int status;
}

class PetPetIdGetResponse404 extends PetPetIdGetResponse {
  /// Pet not found
  PetPetIdGetResponse404.response404() : status = 404;

  @override
  final int status;
}

abstract class PetPetIdGetResponse extends _i2.OpenApiResponse {
  PetPetIdGetResponse();

  /// successful operation
  factory PetPetIdGetResponse.response200(Pet body) =>
      PetPetIdGetResponse200.response200(body);

  /// Invalid ID supplied
  factory PetPetIdGetResponse.response400() =>
      PetPetIdGetResponse400.response400();

  /// Pet not found
  factory PetPetIdGetResponse.response404() =>
      PetPetIdGetResponse404.response404();

  void map(
      {@_i3.required _i2.ResponseMap<PetPetIdGetResponse200> on200,
      @_i3.required _i2.ResponseMap<PetPetIdGetResponse400> on400,
      @_i3.required _i2.ResponseMap<PetPetIdGetResponse404> on404}) {
    if (this is PetPetIdGetResponse200) {
      on200((this as PetPetIdGetResponse200));
    } else if (this is PetPetIdGetResponse400) {
      on400((this as PetPetIdGetResponse400));
    } else if (this is PetPetIdGetResponse404) {
      on404((this as PetPetIdGetResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class PetPetIdPostResponse405 extends PetPetIdPostResponse {
  /// Invalid input
  PetPetIdPostResponse405.response405() : status = 405;

  @override
  final int status;
}

abstract class PetPetIdPostResponse extends _i2.OpenApiResponse {
  PetPetIdPostResponse();

  /// Invalid input
  factory PetPetIdPostResponse.response405() =>
      PetPetIdPostResponse405.response405();

  void map({@_i3.required _i2.ResponseMap<PetPetIdPostResponse405> on405}) {
    if (this is PetPetIdPostResponse405) {
      on405((this as PetPetIdPostResponse405));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class PetPetIdDeleteResponse400 extends PetPetIdDeleteResponse {
  /// Invalid ID supplied
  PetPetIdDeleteResponse400.response400() : status = 400;

  @override
  final int status;
}

class PetPetIdDeleteResponse404 extends PetPetIdDeleteResponse {
  /// Pet not found
  PetPetIdDeleteResponse404.response404() : status = 404;

  @override
  final int status;
}

abstract class PetPetIdDeleteResponse extends _i2.OpenApiResponse {
  PetPetIdDeleteResponse();

  /// Invalid ID supplied
  factory PetPetIdDeleteResponse.response400() =>
      PetPetIdDeleteResponse400.response400();

  /// Pet not found
  factory PetPetIdDeleteResponse.response404() =>
      PetPetIdDeleteResponse404.response404();

  void map(
      {@_i3.required _i2.ResponseMap<PetPetIdDeleteResponse400> on400,
      @_i3.required _i2.ResponseMap<PetPetIdDeleteResponse404> on404}) {
    if (this is PetPetIdDeleteResponse400) {
      on400((this as PetPetIdDeleteResponse400));
    } else if (this is PetPetIdDeleteResponse404) {
      on404((this as PetPetIdDeleteResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class PetPetIdUploadImagePostResponse200
    extends PetPetIdUploadImagePostResponse {
  /// successful operation
  PetPetIdUploadImagePostResponse200.response200(this.body) : status = 200 {
    bodyJson = body.toJson();
  }

  @override
  final int status;

  final ApiResponse body;
}

abstract class PetPetIdUploadImagePostResponse extends _i2.OpenApiResponse {
  PetPetIdUploadImagePostResponse();

  /// successful operation
  factory PetPetIdUploadImagePostResponse.response200(ApiResponse body) =>
      PetPetIdUploadImagePostResponse200.response200(body);

  void map(
      {@_i3.required
          _i2.ResponseMap<PetPetIdUploadImagePostResponse200> on200}) {
    if (this is PetPetIdUploadImagePostResponse200) {
      on200((this as PetPetIdUploadImagePostResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

///
@_i1.JsonSerializable()
class StoreInventoryGetResponseBody200 {
  StoreInventoryGetResponseBody200();

  factory StoreInventoryGetResponseBody200.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$StoreInventoryGetResponseBody200FromJson(jsonMap);

  Map<String, dynamic> toJson() =>
      _$StoreInventoryGetResponseBody200ToJson(this);
}

class StoreInventoryGetResponse200 extends StoreInventoryGetResponse {
  /// successful operation
  StoreInventoryGetResponse200.response200(this.body) : status = 200 {
    bodyJson = body.toJson();
  }

  @override
  final int status;

  final StoreInventoryGetResponseBody200 body;
}

abstract class StoreInventoryGetResponse extends _i2.OpenApiResponse {
  StoreInventoryGetResponse();

  /// successful operation
  factory StoreInventoryGetResponse.response200(
          StoreInventoryGetResponseBody200 body) =>
      StoreInventoryGetResponse200.response200(body);

  void map(
      {@_i3.required _i2.ResponseMap<StoreInventoryGetResponse200> on200}) {
    if (this is StoreInventoryGetResponse200) {
      on200((this as StoreInventoryGetResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class StoreOrderPostResponse200 extends StoreOrderPostResponse {
  /// successful operation
  StoreOrderPostResponse200.response200(this.body) : status = 200 {
    bodyJson = body.toJson();
  }

  @override
  final int status;

  final Order body;
}

class StoreOrderPostResponse400 extends StoreOrderPostResponse {
  /// Invalid Order
  StoreOrderPostResponse400.response400() : status = 400;

  @override
  final int status;
}

abstract class StoreOrderPostResponse extends _i2.OpenApiResponse {
  StoreOrderPostResponse();

  /// successful operation
  factory StoreOrderPostResponse.response200(Order body) =>
      StoreOrderPostResponse200.response200(body);

  /// Invalid Order
  factory StoreOrderPostResponse.response400() =>
      StoreOrderPostResponse400.response400();

  void map(
      {@_i3.required _i2.ResponseMap<StoreOrderPostResponse200> on200,
      @_i3.required _i2.ResponseMap<StoreOrderPostResponse400> on400}) {
    if (this is StoreOrderPostResponse200) {
      on200((this as StoreOrderPostResponse200));
    } else if (this is StoreOrderPostResponse400) {
      on400((this as StoreOrderPostResponse400));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class StoreOrderOrderIdGetResponse200 extends StoreOrderOrderIdGetResponse {
  /// successful operation
  StoreOrderOrderIdGetResponse200.response200(this.body) : status = 200 {
    bodyJson = body.toJson();
  }

  @override
  final int status;

  final Order body;
}

class StoreOrderOrderIdGetResponse400 extends StoreOrderOrderIdGetResponse {
  /// Invalid ID supplied
  StoreOrderOrderIdGetResponse400.response400() : status = 400;

  @override
  final int status;
}

class StoreOrderOrderIdGetResponse404 extends StoreOrderOrderIdGetResponse {
  /// Order not found
  StoreOrderOrderIdGetResponse404.response404() : status = 404;

  @override
  final int status;
}

abstract class StoreOrderOrderIdGetResponse extends _i2.OpenApiResponse {
  StoreOrderOrderIdGetResponse();

  /// successful operation
  factory StoreOrderOrderIdGetResponse.response200(Order body) =>
      StoreOrderOrderIdGetResponse200.response200(body);

  /// Invalid ID supplied
  factory StoreOrderOrderIdGetResponse.response400() =>
      StoreOrderOrderIdGetResponse400.response400();

  /// Order not found
  factory StoreOrderOrderIdGetResponse.response404() =>
      StoreOrderOrderIdGetResponse404.response404();

  void map(
      {@_i3.required _i2.ResponseMap<StoreOrderOrderIdGetResponse200> on200,
      @_i3.required _i2.ResponseMap<StoreOrderOrderIdGetResponse400> on400,
      @_i3.required _i2.ResponseMap<StoreOrderOrderIdGetResponse404> on404}) {
    if (this is StoreOrderOrderIdGetResponse200) {
      on200((this as StoreOrderOrderIdGetResponse200));
    } else if (this is StoreOrderOrderIdGetResponse400) {
      on400((this as StoreOrderOrderIdGetResponse400));
    } else if (this is StoreOrderOrderIdGetResponse404) {
      on404((this as StoreOrderOrderIdGetResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class StoreOrderOrderIdDeleteResponse400
    extends StoreOrderOrderIdDeleteResponse {
  /// Invalid ID supplied
  StoreOrderOrderIdDeleteResponse400.response400() : status = 400;

  @override
  final int status;
}

class StoreOrderOrderIdDeleteResponse404
    extends StoreOrderOrderIdDeleteResponse {
  /// Order not found
  StoreOrderOrderIdDeleteResponse404.response404() : status = 404;

  @override
  final int status;
}

abstract class StoreOrderOrderIdDeleteResponse extends _i2.OpenApiResponse {
  StoreOrderOrderIdDeleteResponse();

  /// Invalid ID supplied
  factory StoreOrderOrderIdDeleteResponse.response400() =>
      StoreOrderOrderIdDeleteResponse400.response400();

  /// Order not found
  factory StoreOrderOrderIdDeleteResponse.response404() =>
      StoreOrderOrderIdDeleteResponse404.response404();

  void map(
      {@_i3.required
          _i2.ResponseMap<StoreOrderOrderIdDeleteResponse400> on400,
      @_i3.required
          _i2.ResponseMap<StoreOrderOrderIdDeleteResponse404> on404}) {
    if (this is StoreOrderOrderIdDeleteResponse400) {
      on400((this as StoreOrderOrderIdDeleteResponse400));
    } else if (this is StoreOrderOrderIdDeleteResponse404) {
      on404((this as StoreOrderOrderIdDeleteResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UserPostResponseDefault extends UserPostResponse {
  /// successful operation
  UserPostResponseDefault.responseDefault(int status) : status = status;

  @override
  final int status;
}

abstract class UserPostResponse extends _i2.OpenApiResponse {
  UserPostResponse();

  /// successful operation
  factory UserPostResponse.responseDefault(int status) =>
      UserPostResponseDefault.responseDefault(status);

  void map({@_i3.required _i2.ResponseMap<UserPostResponseDefault> onDefault}) {
    if (this is UserPostResponseDefault) {
      onDefault((this as UserPostResponseDefault));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UserCreateWithArrayPostResponseDefault
    extends UserCreateWithArrayPostResponse {
  /// successful operation
  UserCreateWithArrayPostResponseDefault.responseDefault(int status)
      : status = status;

  @override
  final int status;
}

abstract class UserCreateWithArrayPostResponse extends _i2.OpenApiResponse {
  UserCreateWithArrayPostResponse();

  /// successful operation
  factory UserCreateWithArrayPostResponse.responseDefault(int status) =>
      UserCreateWithArrayPostResponseDefault.responseDefault(status);

  void map(
      {@_i3.required
          _i2.ResponseMap<UserCreateWithArrayPostResponseDefault> onDefault}) {
    if (this is UserCreateWithArrayPostResponseDefault) {
      onDefault((this as UserCreateWithArrayPostResponseDefault));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

///
@_i1.JsonSerializable()
class UserCreateWithArraySchema {
  UserCreateWithArraySchema();

  factory UserCreateWithArraySchema.fromJson(Map<String, dynamic> jsonMap) =>
      _$UserCreateWithArraySchemaFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$UserCreateWithArraySchemaToJson(this);
}

class UserCreateWithListPostResponseDefault
    extends UserCreateWithListPostResponse {
  /// successful operation
  UserCreateWithListPostResponseDefault.responseDefault(int status)
      : status = status;

  @override
  final int status;
}

abstract class UserCreateWithListPostResponse extends _i2.OpenApiResponse {
  UserCreateWithListPostResponse();

  /// successful operation
  factory UserCreateWithListPostResponse.responseDefault(int status) =>
      UserCreateWithListPostResponseDefault.responseDefault(status);

  void map(
      {@_i3.required
          _i2.ResponseMap<UserCreateWithListPostResponseDefault> onDefault}) {
    if (this is UserCreateWithListPostResponseDefault) {
      onDefault((this as UserCreateWithListPostResponseDefault));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

///
@_i1.JsonSerializable()
class UserLoginGetResponseBody200 {
  UserLoginGetResponseBody200();

  factory UserLoginGetResponseBody200.fromJson(Map<String, dynamic> jsonMap) =>
      _$UserLoginGetResponseBody200FromJson(jsonMap);

  Map<String, dynamic> toJson() => _$UserLoginGetResponseBody200ToJson(this);
}

class UserLoginGetResponse200 extends UserLoginGetResponse {
  /// successful operation
  UserLoginGetResponse200.response200(this.body) : status = 200 {
    bodyJson = body.toJson();
  }

  @override
  final int status;

  final UserLoginGetResponseBody200 body;
}

class UserLoginGetResponse400 extends UserLoginGetResponse {
  /// Invalid username/password supplied
  UserLoginGetResponse400.response400() : status = 400;

  @override
  final int status;
}

abstract class UserLoginGetResponse extends _i2.OpenApiResponse {
  UserLoginGetResponse();

  /// successful operation
  factory UserLoginGetResponse.response200(UserLoginGetResponseBody200 body) =>
      UserLoginGetResponse200.response200(body);

  /// Invalid username/password supplied
  factory UserLoginGetResponse.response400() =>
      UserLoginGetResponse400.response400();

  void map(
      {@_i3.required _i2.ResponseMap<UserLoginGetResponse200> on200,
      @_i3.required _i2.ResponseMap<UserLoginGetResponse400> on400}) {
    if (this is UserLoginGetResponse200) {
      on200((this as UserLoginGetResponse200));
    } else if (this is UserLoginGetResponse400) {
      on400((this as UserLoginGetResponse400));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UserLogoutGetResponseDefault extends UserLogoutGetResponse {
  /// successful operation
  UserLogoutGetResponseDefault.responseDefault(int status) : status = status;

  @override
  final int status;
}

abstract class UserLogoutGetResponse extends _i2.OpenApiResponse {
  UserLogoutGetResponse();

  /// successful operation
  factory UserLogoutGetResponse.responseDefault(int status) =>
      UserLogoutGetResponseDefault.responseDefault(status);

  void map(
      {@_i3.required _i2.ResponseMap<UserLogoutGetResponseDefault> onDefault}) {
    if (this is UserLogoutGetResponseDefault) {
      onDefault((this as UserLogoutGetResponseDefault));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UserUsernameGetResponse200 extends UserUsernameGetResponse {
  /// successful operation
  UserUsernameGetResponse200.response200(this.body) : status = 200 {
    bodyJson = body.toJson();
  }

  @override
  final int status;

  final User body;
}

class UserUsernameGetResponse400 extends UserUsernameGetResponse {
  /// Invalid username supplied
  UserUsernameGetResponse400.response400() : status = 400;

  @override
  final int status;
}

class UserUsernameGetResponse404 extends UserUsernameGetResponse {
  /// User not found
  UserUsernameGetResponse404.response404() : status = 404;

  @override
  final int status;
}

abstract class UserUsernameGetResponse extends _i2.OpenApiResponse {
  UserUsernameGetResponse();

  /// successful operation
  factory UserUsernameGetResponse.response200(User body) =>
      UserUsernameGetResponse200.response200(body);

  /// Invalid username supplied
  factory UserUsernameGetResponse.response400() =>
      UserUsernameGetResponse400.response400();

  /// User not found
  factory UserUsernameGetResponse.response404() =>
      UserUsernameGetResponse404.response404();

  void map(
      {@_i3.required _i2.ResponseMap<UserUsernameGetResponse200> on200,
      @_i3.required _i2.ResponseMap<UserUsernameGetResponse400> on400,
      @_i3.required _i2.ResponseMap<UserUsernameGetResponse404> on404}) {
    if (this is UserUsernameGetResponse200) {
      on200((this as UserUsernameGetResponse200));
    } else if (this is UserUsernameGetResponse400) {
      on400((this as UserUsernameGetResponse400));
    } else if (this is UserUsernameGetResponse404) {
      on404((this as UserUsernameGetResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UserUsernamePutResponse400 extends UserUsernamePutResponse {
  /// Invalid user supplied
  UserUsernamePutResponse400.response400() : status = 400;

  @override
  final int status;
}

class UserUsernamePutResponse404 extends UserUsernamePutResponse {
  /// User not found
  UserUsernamePutResponse404.response404() : status = 404;

  @override
  final int status;
}

abstract class UserUsernamePutResponse extends _i2.OpenApiResponse {
  UserUsernamePutResponse();

  /// Invalid user supplied
  factory UserUsernamePutResponse.response400() =>
      UserUsernamePutResponse400.response400();

  /// User not found
  factory UserUsernamePutResponse.response404() =>
      UserUsernamePutResponse404.response404();

  void map(
      {@_i3.required _i2.ResponseMap<UserUsernamePutResponse400> on400,
      @_i3.required _i2.ResponseMap<UserUsernamePutResponse404> on404}) {
    if (this is UserUsernamePutResponse400) {
      on400((this as UserUsernamePutResponse400));
    } else if (this is UserUsernamePutResponse404) {
      on404((this as UserUsernamePutResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UserUsernameDeleteResponse400 extends UserUsernameDeleteResponse {
  /// Invalid username supplied
  UserUsernameDeleteResponse400.response400() : status = 400;

  @override
  final int status;
}

class UserUsernameDeleteResponse404 extends UserUsernameDeleteResponse {
  /// User not found
  UserUsernameDeleteResponse404.response404() : status = 404;

  @override
  final int status;
}

abstract class UserUsernameDeleteResponse extends _i2.OpenApiResponse {
  UserUsernameDeleteResponse();

  /// Invalid username supplied
  factory UserUsernameDeleteResponse.response400() =>
      UserUsernameDeleteResponse400.response400();

  /// User not found
  factory UserUsernameDeleteResponse.response404() =>
      UserUsernameDeleteResponse404.response404();

  void map(
      {@_i3.required _i2.ResponseMap<UserUsernameDeleteResponse400> on400,
      @_i3.required _i2.ResponseMap<UserUsernameDeleteResponse404> on404}) {
    if (this is UserUsernameDeleteResponse400) {
      on400((this as UserUsernameDeleteResponse400));
    } else if (this is UserUsernameDeleteResponse404) {
      on404((this as UserUsernameDeleteResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

abstract class Petstore {
  /// Update an existing pet
  /// put: /pet
  Future<PetPutResponse> petPut(_i2.OpenApiRequest request, Pet body);

  /// Add a new pet to the store
  /// post: /pet
  Future<PetPostResponse> petPost(_i2.OpenApiRequest request, Pet body);

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  /// get: /pet/findByStatus
  Future<PetFindByStatusGetResponse> petFindByStatusGet(
      _i2.OpenApiRequest request, List<String> status);

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  Future<PetFindByTagsGetResponse> petFindByTagsGet(
      _i2.OpenApiRequest request, List<String> tags);

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  Future<PetPetIdGetResponse> petPetIdGet(
      _i2.OpenApiRequest request, int petId);

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  Future<PetPetIdPostResponse> petPetIdPost(
      _i2.OpenApiRequest request, int petId);

  /// Deletes a pet
  /// delete: /pet/{petId}
  Future<PetPetIdDeleteResponse> petPetIdDelete(
      _i2.OpenApiRequest request, String apiKey, int petId);

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  Future<PetPetIdUploadImagePostResponse> petPetIdUploadImagePost(
      _i2.OpenApiRequest request, int petId);

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  Future<StoreInventoryGetResponse> storeInventoryGet(
      _i2.OpenApiRequest request);

  /// Place an order for a pet
  /// post: /store/order
  Future<StoreOrderPostResponse> storeOrderPost(
      _i2.OpenApiRequest request, Order body);

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  Future<StoreOrderOrderIdGetResponse> storeOrderOrderIdGet(
      _i2.OpenApiRequest request, int orderId);

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  Future<StoreOrderOrderIdDeleteResponse> storeOrderOrderIdDelete(
      _i2.OpenApiRequest request, int orderId);

  /// Create user
  /// This can only be done by the logged in user.
  /// post: /user
  Future<UserPostResponse> userPost(_i2.OpenApiRequest request, User body);

  /// Creates list of users with given input array
  /// post: /user/createWithArray
  Future<UserCreateWithArrayPostResponse> userCreateWithArrayPost(
      _i2.OpenApiRequest request, UserCreateWithArraySchema body);

  /// Creates list of users with given input array
  /// post: /user/createWithList
  Future<UserCreateWithListPostResponse> userCreateWithListPost(
      _i2.OpenApiRequest request, UserCreateWithArraySchema body);

  /// Logs user into the system
  /// get: /user/login
  Future<UserLoginGetResponse> userLoginGet(
      _i2.OpenApiRequest request, String username, String password);

  /// Logs out current logged in user session
  /// get: /user/logout
  Future<UserLogoutGetResponse> userLogoutGet(_i2.OpenApiRequest request);

  /// Get user by user name
  /// get: /user/{username}
  Future<UserUsernameGetResponse> userUsernameGet(
      _i2.OpenApiRequest request, String username);

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  Future<UserUsernamePutResponse> userUsernamePut(
      _i2.OpenApiRequest request, String username, User body);

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  Future<UserUsernameDeleteResponse> userUsernameDelete(
      _i2.OpenApiRequest request, String username);
}

abstract class PetstoreClient {
  factory PetstoreClient(Uri baseUri, _i2.OpenApiRequestSender requestSender) =>
      _PetstoreClientImpl._(baseUri, requestSender);

  /// Update an existing pet
  /// put: /pet
  ///
  Future<PetPutResponse> petPut(Pet body);

  /// Add a new pet to the store
  /// post: /pet
  ///
  Future<PetPostResponse> petPost(Pet body);

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  /// get: /pet/findByStatus
  ///
  /// * [status]: Status values that need to be considered for filter
  Future<PetFindByStatusGetResponse> petFindByStatusGet(List<String> status);

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  ///
  /// * [tags]: Tags to filter by
  Future<PetFindByTagsGetResponse> petFindByTagsGet(List<String> tags);

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  ///
  /// * [petId]: ID of pet to return
  Future<PetPetIdGetResponse> petPetIdGet(int petId);

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  ///
  /// * [petId]: ID of pet that needs to be updated
  Future<PetPetIdPostResponse> petPetIdPost(int petId);

  /// Deletes a pet
  /// delete: /pet/{petId}
  ///
  /// * [petId]: Pet id to delete
  Future<PetPetIdDeleteResponse> petPetIdDelete(int petId, {String apiKey});

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  ///
  /// * [petId]: ID of pet to update
  Future<PetPetIdUploadImagePostResponse> petPetIdUploadImagePost(int petId);

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  ///
  Future<StoreInventoryGetResponse> storeInventoryGet();

  /// Place an order for a pet
  /// post: /store/order
  ///
  Future<StoreOrderPostResponse> storeOrderPost(Order body);

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  ///
  /// * [orderId]: ID of pet that needs to be fetched
  Future<StoreOrderOrderIdGetResponse> storeOrderOrderIdGet(int orderId);

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  ///
  /// * [orderId]: ID of the order that needs to be deleted
  Future<StoreOrderOrderIdDeleteResponse> storeOrderOrderIdDelete(int orderId);

  /// Create user
  /// This can only be done by the logged in user.
  /// post: /user
  ///
  Future<UserPostResponse> userPost(User body);

  /// Creates list of users with given input array
  /// post: /user/createWithArray
  ///
  Future<UserCreateWithArrayPostResponse> userCreateWithArrayPost(
      UserCreateWithArraySchema body);

  /// Creates list of users with given input array
  /// post: /user/createWithList
  ///
  Future<UserCreateWithListPostResponse> userCreateWithListPost(
      UserCreateWithArraySchema body);

  /// Logs user into the system
  /// get: /user/login
  ///
  /// * [username]: The user name for login
  /// * [password]: The password for login in clear text
  Future<UserLoginGetResponse> userLoginGet(String username, String password);

  /// Logs out current logged in user session
  /// get: /user/logout
  ///
  Future<UserLogoutGetResponse> userLogoutGet();

  /// Get user by user name
  /// get: /user/{username}
  ///
  /// * [username]: The name that needs to be fetched. Use user1 for testing.
  Future<UserUsernameGetResponse> userUsernameGet(String username);

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  ///
  /// * [username]: name that need to be updated
  Future<UserUsernamePutResponse> userUsernamePut(String username, User body);

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  ///
  /// * [username]: The name that needs to be deleted
  Future<UserUsernameDeleteResponse> userUsernameDelete(String username);
}

class _PetstoreClientImpl extends _i2.OpenApiClientBase
    implements PetstoreClient {
  _PetstoreClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final _i2.OpenApiRequestSender requestSender;

  /// Update an existing pet
  /// put: /pet
  ///
  @override
  Future<PetPutResponse> petPut(Pet body) async {
    final request = _i2.OpenApiClientRequest('put', '/pet');
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '400': (_i2.OpenApiClientResponse response) async =>
          PetPutResponse400.response400(),
      '404': (_i2.OpenApiClientResponse response) async =>
          PetPutResponse404.response404(),
      '405': (_i2.OpenApiClientResponse response) async =>
          PetPutResponse405.response405()
    });
  }

  /// Add a new pet to the store
  /// post: /pet
  ///
  @override
  Future<PetPostResponse> petPost(Pet body) async {
    final request = _i2.OpenApiClientRequest('post', '/pet');
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '405': (_i2.OpenApiClientResponse response) async =>
          PetPostResponse405.response405()
    });
  }

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  /// get: /pet/findByStatus
  ///
  /// * [status]: Status values that need to be considered for filter
  @override
  Future<PetFindByStatusGetResponse> petFindByStatusGet(
      List<String> status) async {
    final request = _i2.OpenApiClientRequest('get', '/pet/findByStatus');
    request.addQueryParameter('status', status);
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          PetFindByStatusGetResponse200.response200(
              PetFindByStatusGetResponseBody200.fromJson(
                  await response.responseBodyJson())),
      '400': (_i2.OpenApiClientResponse response) async =>
          PetFindByStatusGetResponse400.response400()
    });
  }

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  ///
  /// * [tags]: Tags to filter by
  @override
  Future<PetFindByTagsGetResponse> petFindByTagsGet(List<String> tags) async {
    final request = _i2.OpenApiClientRequest('get', '/pet/findByTags');
    request.addQueryParameter('tags', tags);
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          PetFindByTagsGetResponse200.response200(
              PetFindByTagsGetResponseBody200.fromJson(
                  await response.responseBodyJson())),
      '400': (_i2.OpenApiClientResponse response) async =>
          PetFindByTagsGetResponse400.response400()
    });
  }

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  ///
  /// * [petId]: ID of pet to return
  @override
  Future<PetPetIdGetResponse> petPetIdGet(int petId) async {
    final request = _i2.OpenApiClientRequest('get', '/pet/{petId}');
    request.addPathParameter('petId', encodeInt(petId));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          PetPetIdGetResponse200.response200(
              Pet.fromJson(await response.responseBodyJson())),
      '400': (_i2.OpenApiClientResponse response) async =>
          PetPetIdGetResponse400.response400(),
      '404': (_i2.OpenApiClientResponse response) async =>
          PetPetIdGetResponse404.response404()
    });
  }

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  ///
  /// * [petId]: ID of pet that needs to be updated
  @override
  Future<PetPetIdPostResponse> petPetIdPost(int petId) async {
    final request = _i2.OpenApiClientRequest('post', '/pet/{petId}');
    request.addPathParameter('petId', encodeInt(petId));
    return await sendRequest(request, {
      '405': (_i2.OpenApiClientResponse response) async =>
          PetPetIdPostResponse405.response405()
    });
  }

  /// Deletes a pet
  /// delete: /pet/{petId}
  ///
  /// * [petId]: Pet id to delete
  @override
  Future<PetPetIdDeleteResponse> petPetIdDelete(int petId,
      {String apiKey}) async {
    final request = _i2.OpenApiClientRequest('delete', '/pet/{petId}');
    request.addHeaderParameter('api_key', encodeString(apiKey));
    request.addPathParameter('petId', encodeInt(petId));
    return await sendRequest(request, {
      '400': (_i2.OpenApiClientResponse response) async =>
          PetPetIdDeleteResponse400.response400(),
      '404': (_i2.OpenApiClientResponse response) async =>
          PetPetIdDeleteResponse404.response404()
    });
  }

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  ///
  /// * [petId]: ID of pet to update
  @override
  Future<PetPetIdUploadImagePostResponse> petPetIdUploadImagePost(
      int petId) async {
    final request =
        _i2.OpenApiClientRequest('post', '/pet/{petId}/uploadImage');
    request.addPathParameter('petId', encodeInt(petId));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          PetPetIdUploadImagePostResponse200.response200(
              ApiResponse.fromJson(await response.responseBodyJson()))
    });
  }

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  ///
  @override
  Future<StoreInventoryGetResponse> storeInventoryGet() async {
    final request = _i2.OpenApiClientRequest('get', '/store/inventory');
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          StoreInventoryGetResponse200.response200(
              StoreInventoryGetResponseBody200.fromJson(
                  await response.responseBodyJson()))
    });
  }

  /// Place an order for a pet
  /// post: /store/order
  ///
  @override
  Future<StoreOrderPostResponse> storeOrderPost(Order body) async {
    final request = _i2.OpenApiClientRequest('post', '/store/order');
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          StoreOrderPostResponse200.response200(
              Order.fromJson(await response.responseBodyJson())),
      '400': (_i2.OpenApiClientResponse response) async =>
          StoreOrderPostResponse400.response400()
    });
  }

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  ///
  /// * [orderId]: ID of pet that needs to be fetched
  @override
  Future<StoreOrderOrderIdGetResponse> storeOrderOrderIdGet(int orderId) async {
    final request = _i2.OpenApiClientRequest('get', '/store/order/{orderId}');
    request.addPathParameter('orderId', encodeInt(orderId));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          StoreOrderOrderIdGetResponse200.response200(
              Order.fromJson(await response.responseBodyJson())),
      '400': (_i2.OpenApiClientResponse response) async =>
          StoreOrderOrderIdGetResponse400.response400(),
      '404': (_i2.OpenApiClientResponse response) async =>
          StoreOrderOrderIdGetResponse404.response404()
    });
  }

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  ///
  /// * [orderId]: ID of the order that needs to be deleted
  @override
  Future<StoreOrderOrderIdDeleteResponse> storeOrderOrderIdDelete(
      int orderId) async {
    final request =
        _i2.OpenApiClientRequest('delete', '/store/order/{orderId}');
    request.addPathParameter('orderId', encodeInt(orderId));
    return await sendRequest(request, {
      '400': (_i2.OpenApiClientResponse response) async =>
          StoreOrderOrderIdDeleteResponse400.response400(),
      '404': (_i2.OpenApiClientResponse response) async =>
          StoreOrderOrderIdDeleteResponse404.response404()
    });
  }

  /// Create user
  /// This can only be done by the logged in user.
  /// post: /user
  ///
  @override
  Future<UserPostResponse> userPost(User body) async {
    final request = _i2.OpenApiClientRequest('post', '/user');
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      'default': (_i2.OpenApiClientResponse response) async =>
          UserPostResponseDefault.responseDefault(response.status)
    });
  }

  /// Creates list of users with given input array
  /// post: /user/createWithArray
  ///
  @override
  Future<UserCreateWithArrayPostResponse> userCreateWithArrayPost(
      UserCreateWithArraySchema body) async {
    final request = _i2.OpenApiClientRequest('post', '/user/createWithArray');
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      'default': (_i2.OpenApiClientResponse response) async =>
          UserCreateWithArrayPostResponseDefault.responseDefault(
              response.status)
    });
  }

  /// Creates list of users with given input array
  /// post: /user/createWithList
  ///
  @override
  Future<UserCreateWithListPostResponse> userCreateWithListPost(
      UserCreateWithArraySchema body) async {
    final request = _i2.OpenApiClientRequest('post', '/user/createWithList');
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      'default': (_i2.OpenApiClientResponse response) async =>
          UserCreateWithListPostResponseDefault.responseDefault(response.status)
    });
  }

  /// Logs user into the system
  /// get: /user/login
  ///
  /// * [username]: The user name for login
  /// * [password]: The password for login in clear text
  @override
  Future<UserLoginGetResponse> userLoginGet(
      String username, String password) async {
    final request = _i2.OpenApiClientRequest('get', '/user/login');
    request.addQueryParameter('username', encodeString(username));
    request.addQueryParameter('password', encodeString(password));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UserLoginGetResponse200.response200(
              UserLoginGetResponseBody200.fromJson(
                  await response.responseBodyJson())),
      '400': (_i2.OpenApiClientResponse response) async =>
          UserLoginGetResponse400.response400()
    });
  }

  /// Logs out current logged in user session
  /// get: /user/logout
  ///
  @override
  Future<UserLogoutGetResponse> userLogoutGet() async {
    final request = _i2.OpenApiClientRequest('get', '/user/logout');
    return await sendRequest(request, {
      'default': (_i2.OpenApiClientResponse response) async =>
          UserLogoutGetResponseDefault.responseDefault(response.status)
    });
  }

  /// Get user by user name
  /// get: /user/{username}
  ///
  /// * [username]: The name that needs to be fetched. Use user1 for testing.
  @override
  Future<UserUsernameGetResponse> userUsernameGet(String username) async {
    final request = _i2.OpenApiClientRequest('get', '/user/{username}');
    request.addPathParameter('username', encodeString(username));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UserUsernameGetResponse200.response200(
              User.fromJson(await response.responseBodyJson())),
      '400': (_i2.OpenApiClientResponse response) async =>
          UserUsernameGetResponse400.response400(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UserUsernameGetResponse404.response404()
    });
  }

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  ///
  /// * [username]: name that need to be updated
  @override
  Future<UserUsernamePutResponse> userUsernamePut(
      String username, User body) async {
    final request = _i2.OpenApiClientRequest('put', '/user/{username}');
    request.addPathParameter('username', encodeString(username));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '400': (_i2.OpenApiClientResponse response) async =>
          UserUsernamePutResponse400.response400(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UserUsernamePutResponse404.response404()
    });
  }

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  ///
  /// * [username]: The name that needs to be deleted
  @override
  Future<UserUsernameDeleteResponse> userUsernameDelete(String username) async {
    final request = _i2.OpenApiClientRequest('delete', '/user/{username}');
    request.addPathParameter('username', encodeString(username));
    return await sendRequest(request, {
      '400': (_i2.OpenApiClientResponse response) async =>
          UserUsernameDeleteResponse400.response400(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UserUsernameDeleteResponse404.response404()
    });
  }
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
