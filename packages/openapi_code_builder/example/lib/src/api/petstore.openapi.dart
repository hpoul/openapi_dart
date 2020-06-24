// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:meta/meta.dart' as _i2;
import 'package:openapi_base/openapi_base.dart' as _i3;
part 'petstore.openapi.g.dart';

enum OrderStatus {
  @_i1.JsonValue('placed')
  placed,
  @_i1.JsonValue('approved')
  approved,
  @_i1.JsonValue('delivered')
  delivered,
}

extension OrderStatusExt on OrderStatus {
  static final Map<String, OrderStatus> _names = {
    'placed': OrderStatus.placed,
    'approved': OrderStatus.approved,
    'delivered': OrderStatus.delivered
  };
  static OrderStatus fromName(String name) => _names[name];
  String get name => toString().substring(12);
}

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
  final OrderStatus status;

  /// null
  final bool complete;

  Map<String, dynamic> toJson() => _$OrderToJson(this);
  @override
  String toString() => toJson().toString();
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
  @override
  String toString() => toJson().toString();
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
  @override
  String toString() => toJson().toString();
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
  @override
  String toString() => toJson().toString();
}

enum PetStatus {
  @_i1.JsonValue('available')
  available,
  @_i1.JsonValue('pending')
  pending,
  @_i1.JsonValue('sold')
  sold,
}

extension PetStatusExt on PetStatus {
  static final Map<String, PetStatus> _names = {
    'available': PetStatus.available,
    'pending': PetStatus.pending,
    'sold': PetStatus.sold
  };
  static PetStatus fromName(String name) => _names[name];
  String get name => toString().substring(10);
}

///
@_i1.JsonSerializable()
class Pet {
  Pet(
      {this.id,
      this.category,
      @_i2.required this.name,
      @_i2.required this.photoUrls,
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
  final PetStatus status;

  Map<String, dynamic> toJson() => _$PetToJson(this);
  @override
  String toString() => toJson().toString();
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
  @override
  String toString() => toJson().toString();
}

class _PetPutResponse400 extends PetPutResponse {
  /// Invalid ID supplied
  _PetPutResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _PetPutResponse404 extends PetPutResponse {
  /// Pet not found
  _PetPutResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _PetPutResponse405 extends PetPutResponse {
  /// Validation exception
  _PetPutResponse405.response405() : status = 405;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class PetPutResponse extends _i3.OpenApiResponse {
  PetPutResponse();

  /// Invalid ID supplied
  factory PetPutResponse.response400() => _PetPutResponse400.response400();

  /// Pet not found
  factory PetPutResponse.response404() => _PetPutResponse404.response404();

  /// Validation exception
  factory PetPutResponse.response405() => _PetPutResponse405.response405();

  void map(
      {@_i2.required _i3.ResponseMap<_PetPutResponse400> on400,
      @_i2.required _i3.ResponseMap<_PetPutResponse404> on404,
      @_i2.required _i3.ResponseMap<_PetPutResponse405> on405}) {
    if (this is _PetPutResponse400) {
      on400((this as _PetPutResponse400));
    } else if (this is _PetPutResponse404) {
      on404((this as _PetPutResponse404));
    } else if (this is _PetPutResponse405) {
      on405((this as _PetPutResponse405));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _PetPostResponse405 extends PetPostResponse {
  /// Invalid input
  _PetPostResponse405.response405() : status = 405;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class PetPostResponse extends _i3.OpenApiResponse {
  PetPostResponse();

  /// Invalid input
  factory PetPostResponse.response405() => _PetPostResponse405.response405();

  void map({@_i2.required _i3.ResponseMap<_PetPostResponse405> on405}) {
    if (this is _PetPostResponse405) {
      on405((this as _PetPostResponse405));
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
  @override
  String toString() => toJson().toString();
}

class _PetFindByStatusGetResponse200 extends PetFindByStatusGetResponse
    implements _i3.OpenApiResponseBodyJson {
  /// successful operation
  _PetFindByStatusGetResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final PetFindByStatusGetResponseBody200 body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final _i3.OpenApiContentType contentType =
      _i3.OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

class _PetFindByStatusGetResponse400 extends PetFindByStatusGetResponse {
  /// Invalid status value
  _PetFindByStatusGetResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class PetFindByStatusGetResponse extends _i3.OpenApiResponse {
  PetFindByStatusGetResponse();

  /// successful operation
  factory PetFindByStatusGetResponse.response200(
          PetFindByStatusGetResponseBody200 body) =>
      _PetFindByStatusGetResponse200.response200(body);

  /// Invalid status value
  factory PetFindByStatusGetResponse.response400() =>
      _PetFindByStatusGetResponse400.response400();

  void map(
      {@_i2.required _i3.ResponseMap<_PetFindByStatusGetResponse200> on200,
      @_i2.required _i3.ResponseMap<_PetFindByStatusGetResponse400> on400}) {
    if (this is _PetFindByStatusGetResponse200) {
      on200((this as _PetFindByStatusGetResponse200));
    } else if (this is _PetFindByStatusGetResponse400) {
      on400((this as _PetFindByStatusGetResponse400));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

enum PetFindByStatusGet {
  @_i1.JsonValue('available')
  available,
  @_i1.JsonValue('pending')
  pending,
  @_i1.JsonValue('sold')
  sold,
}

extension PetFindByStatusGetExt on PetFindByStatusGet {
  static final Map<String, PetFindByStatusGet> _names = {
    'available': PetFindByStatusGet.available,
    'pending': PetFindByStatusGet.pending,
    'sold': PetFindByStatusGet.sold
  };
  static PetFindByStatusGet fromName(String name) => _names[name];
  String get name => toString().substring(19);
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
  @override
  String toString() => toJson().toString();
}

class _PetFindByTagsGetResponse200 extends PetFindByTagsGetResponse
    implements _i3.OpenApiResponseBodyJson {
  /// successful operation
  _PetFindByTagsGetResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final PetFindByTagsGetResponseBody200 body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final _i3.OpenApiContentType contentType =
      _i3.OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

class _PetFindByTagsGetResponse400 extends PetFindByTagsGetResponse {
  /// Invalid tag value
  _PetFindByTagsGetResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class PetFindByTagsGetResponse extends _i3.OpenApiResponse {
  PetFindByTagsGetResponse();

  /// successful operation
  factory PetFindByTagsGetResponse.response200(
          PetFindByTagsGetResponseBody200 body) =>
      _PetFindByTagsGetResponse200.response200(body);

  /// Invalid tag value
  factory PetFindByTagsGetResponse.response400() =>
      _PetFindByTagsGetResponse400.response400();

  void map(
      {@_i2.required _i3.ResponseMap<_PetFindByTagsGetResponse200> on200,
      @_i2.required _i3.ResponseMap<_PetFindByTagsGetResponse400> on400}) {
    if (this is _PetFindByTagsGetResponse200) {
      on200((this as _PetFindByTagsGetResponse200));
    } else if (this is _PetFindByTagsGetResponse400) {
      on400((this as _PetFindByTagsGetResponse400));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _PetPetIdGetResponse200 extends PetPetIdGetResponse
    implements _i3.OpenApiResponseBodyJson {
  /// successful operation
  _PetPetIdGetResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final Pet body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final _i3.OpenApiContentType contentType =
      _i3.OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

class _PetPetIdGetResponse400 extends PetPetIdGetResponse {
  /// Invalid ID supplied
  _PetPetIdGetResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _PetPetIdGetResponse404 extends PetPetIdGetResponse {
  /// Pet not found
  _PetPetIdGetResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class PetPetIdGetResponse extends _i3.OpenApiResponse {
  PetPetIdGetResponse();

  /// successful operation
  factory PetPetIdGetResponse.response200(Pet body) =>
      _PetPetIdGetResponse200.response200(body);

  /// Invalid ID supplied
  factory PetPetIdGetResponse.response400() =>
      _PetPetIdGetResponse400.response400();

  /// Pet not found
  factory PetPetIdGetResponse.response404() =>
      _PetPetIdGetResponse404.response404();

  void map(
      {@_i2.required _i3.ResponseMap<_PetPetIdGetResponse200> on200,
      @_i2.required _i3.ResponseMap<_PetPetIdGetResponse400> on400,
      @_i2.required _i3.ResponseMap<_PetPetIdGetResponse404> on404}) {
    if (this is _PetPetIdGetResponse200) {
      on200((this as _PetPetIdGetResponse200));
    } else if (this is _PetPetIdGetResponse400) {
      on400((this as _PetPetIdGetResponse400));
    } else if (this is _PetPetIdGetResponse404) {
      on404((this as _PetPetIdGetResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _PetPetIdPostResponse405 extends PetPetIdPostResponse {
  /// Invalid input
  _PetPetIdPostResponse405.response405() : status = 405;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class PetPetIdPostResponse extends _i3.OpenApiResponse {
  PetPetIdPostResponse();

  /// Invalid input
  factory PetPetIdPostResponse.response405() =>
      _PetPetIdPostResponse405.response405();

  void map({@_i2.required _i3.ResponseMap<_PetPetIdPostResponse405> on405}) {
    if (this is _PetPetIdPostResponse405) {
      on405((this as _PetPetIdPostResponse405));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _PetPetIdDeleteResponse400 extends PetPetIdDeleteResponse {
  /// Invalid ID supplied
  _PetPetIdDeleteResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _PetPetIdDeleteResponse404 extends PetPetIdDeleteResponse {
  /// Pet not found
  _PetPetIdDeleteResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class PetPetIdDeleteResponse extends _i3.OpenApiResponse {
  PetPetIdDeleteResponse();

  /// Invalid ID supplied
  factory PetPetIdDeleteResponse.response400() =>
      _PetPetIdDeleteResponse400.response400();

  /// Pet not found
  factory PetPetIdDeleteResponse.response404() =>
      _PetPetIdDeleteResponse404.response404();

  void map(
      {@_i2.required _i3.ResponseMap<_PetPetIdDeleteResponse400> on400,
      @_i2.required _i3.ResponseMap<_PetPetIdDeleteResponse404> on404}) {
    if (this is _PetPetIdDeleteResponse400) {
      on400((this as _PetPetIdDeleteResponse400));
    } else if (this is _PetPetIdDeleteResponse404) {
      on404((this as _PetPetIdDeleteResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _PetPetIdUploadImagePostResponse200
    extends PetPetIdUploadImagePostResponse
    implements _i3.OpenApiResponseBodyJson {
  /// successful operation
  _PetPetIdUploadImagePostResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final ApiResponse body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final _i3.OpenApiContentType contentType =
      _i3.OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

abstract class PetPetIdUploadImagePostResponse extends _i3.OpenApiResponse {
  PetPetIdUploadImagePostResponse();

  /// successful operation
  factory PetPetIdUploadImagePostResponse.response200(ApiResponse body) =>
      _PetPetIdUploadImagePostResponse200.response200(body);

  void map(
      {@_i2.required
          _i3.ResponseMap<_PetPetIdUploadImagePostResponse200> on200}) {
    if (this is _PetPetIdUploadImagePostResponse200) {
      on200((this as _PetPetIdUploadImagePostResponse200));
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
  @override
  String toString() => toJson().toString();
}

class _StoreInventoryGetResponse200 extends StoreInventoryGetResponse
    implements _i3.OpenApiResponseBodyJson {
  /// successful operation
  _StoreInventoryGetResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final StoreInventoryGetResponseBody200 body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final _i3.OpenApiContentType contentType =
      _i3.OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

abstract class StoreInventoryGetResponse extends _i3.OpenApiResponse {
  StoreInventoryGetResponse();

  /// successful operation
  factory StoreInventoryGetResponse.response200(
          StoreInventoryGetResponseBody200 body) =>
      _StoreInventoryGetResponse200.response200(body);

  void map(
      {@_i2.required _i3.ResponseMap<_StoreInventoryGetResponse200> on200}) {
    if (this is _StoreInventoryGetResponse200) {
      on200((this as _StoreInventoryGetResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _StoreOrderPostResponse200 extends StoreOrderPostResponse
    implements _i3.OpenApiResponseBodyJson {
  /// successful operation
  _StoreOrderPostResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final Order body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final _i3.OpenApiContentType contentType =
      _i3.OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

class _StoreOrderPostResponse400 extends StoreOrderPostResponse {
  /// Invalid Order
  _StoreOrderPostResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class StoreOrderPostResponse extends _i3.OpenApiResponse {
  StoreOrderPostResponse();

  /// successful operation
  factory StoreOrderPostResponse.response200(Order body) =>
      _StoreOrderPostResponse200.response200(body);

  /// Invalid Order
  factory StoreOrderPostResponse.response400() =>
      _StoreOrderPostResponse400.response400();

  void map(
      {@_i2.required _i3.ResponseMap<_StoreOrderPostResponse200> on200,
      @_i2.required _i3.ResponseMap<_StoreOrderPostResponse400> on400}) {
    if (this is _StoreOrderPostResponse200) {
      on200((this as _StoreOrderPostResponse200));
    } else if (this is _StoreOrderPostResponse400) {
      on400((this as _StoreOrderPostResponse400));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _StoreOrderOrderIdGetResponse200 extends StoreOrderOrderIdGetResponse
    implements _i3.OpenApiResponseBodyJson {
  /// successful operation
  _StoreOrderOrderIdGetResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final Order body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final _i3.OpenApiContentType contentType =
      _i3.OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

class _StoreOrderOrderIdGetResponse400 extends StoreOrderOrderIdGetResponse {
  /// Invalid ID supplied
  _StoreOrderOrderIdGetResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _StoreOrderOrderIdGetResponse404 extends StoreOrderOrderIdGetResponse {
  /// Order not found
  _StoreOrderOrderIdGetResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class StoreOrderOrderIdGetResponse extends _i3.OpenApiResponse {
  StoreOrderOrderIdGetResponse();

  /// successful operation
  factory StoreOrderOrderIdGetResponse.response200(Order body) =>
      _StoreOrderOrderIdGetResponse200.response200(body);

  /// Invalid ID supplied
  factory StoreOrderOrderIdGetResponse.response400() =>
      _StoreOrderOrderIdGetResponse400.response400();

  /// Order not found
  factory StoreOrderOrderIdGetResponse.response404() =>
      _StoreOrderOrderIdGetResponse404.response404();

  void map(
      {@_i2.required _i3.ResponseMap<_StoreOrderOrderIdGetResponse200> on200,
      @_i2.required _i3.ResponseMap<_StoreOrderOrderIdGetResponse400> on400,
      @_i2.required _i3.ResponseMap<_StoreOrderOrderIdGetResponse404> on404}) {
    if (this is _StoreOrderOrderIdGetResponse200) {
      on200((this as _StoreOrderOrderIdGetResponse200));
    } else if (this is _StoreOrderOrderIdGetResponse400) {
      on400((this as _StoreOrderOrderIdGetResponse400));
    } else if (this is _StoreOrderOrderIdGetResponse404) {
      on404((this as _StoreOrderOrderIdGetResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _StoreOrderOrderIdDeleteResponse400
    extends StoreOrderOrderIdDeleteResponse {
  /// Invalid ID supplied
  _StoreOrderOrderIdDeleteResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _StoreOrderOrderIdDeleteResponse404
    extends StoreOrderOrderIdDeleteResponse {
  /// Order not found
  _StoreOrderOrderIdDeleteResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class StoreOrderOrderIdDeleteResponse extends _i3.OpenApiResponse {
  StoreOrderOrderIdDeleteResponse();

  /// Invalid ID supplied
  factory StoreOrderOrderIdDeleteResponse.response400() =>
      _StoreOrderOrderIdDeleteResponse400.response400();

  /// Order not found
  factory StoreOrderOrderIdDeleteResponse.response404() =>
      _StoreOrderOrderIdDeleteResponse404.response404();

  void map(
      {@_i2.required
          _i3.ResponseMap<_StoreOrderOrderIdDeleteResponse400> on400,
      @_i2.required
          _i3.ResponseMap<_StoreOrderOrderIdDeleteResponse404> on404}) {
    if (this is _StoreOrderOrderIdDeleteResponse400) {
      on400((this as _StoreOrderOrderIdDeleteResponse400));
    } else if (this is _StoreOrderOrderIdDeleteResponse404) {
      on404((this as _StoreOrderOrderIdDeleteResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _UserPostResponseDefault extends UserPostResponse {
  /// successful operation
  _UserPostResponseDefault.responseDefault(int status) : status = status;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class UserPostResponse extends _i3.OpenApiResponse {
  UserPostResponse();

  /// successful operation
  factory UserPostResponse.responseDefault(int status) =>
      _UserPostResponseDefault.responseDefault(status);

  void map(
      {@_i2.required _i3.ResponseMap<_UserPostResponseDefault> onDefault}) {
    if (this is _UserPostResponseDefault) {
      onDefault((this as _UserPostResponseDefault));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _UserCreateWithArrayPostResponseDefault
    extends UserCreateWithArrayPostResponse {
  /// successful operation
  _UserCreateWithArrayPostResponseDefault.responseDefault(int status)
      : status = status;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class UserCreateWithArrayPostResponse extends _i3.OpenApiResponse {
  UserCreateWithArrayPostResponse();

  /// successful operation
  factory UserCreateWithArrayPostResponse.responseDefault(int status) =>
      _UserCreateWithArrayPostResponseDefault.responseDefault(status);

  void map(
      {@_i2.required
          _i3.ResponseMap<_UserCreateWithArrayPostResponseDefault> onDefault}) {
    if (this is _UserCreateWithArrayPostResponseDefault) {
      onDefault((this as _UserCreateWithArrayPostResponseDefault));
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
  @override
  String toString() => toJson().toString();
}

class _UserCreateWithListPostResponseDefault
    extends UserCreateWithListPostResponse {
  /// successful operation
  _UserCreateWithListPostResponseDefault.responseDefault(int status)
      : status = status;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class UserCreateWithListPostResponse extends _i3.OpenApiResponse {
  UserCreateWithListPostResponse();

  /// successful operation
  factory UserCreateWithListPostResponse.responseDefault(int status) =>
      _UserCreateWithListPostResponseDefault.responseDefault(status);

  void map(
      {@_i2.required
          _i3.ResponseMap<_UserCreateWithListPostResponseDefault> onDefault}) {
    if (this is _UserCreateWithListPostResponseDefault) {
      onDefault((this as _UserCreateWithListPostResponseDefault));
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
  @override
  String toString() => toJson().toString();
}

class _UserLoginGetResponse200 extends UserLoginGetResponse
    implements _i3.OpenApiResponseBodyJson {
  /// successful operation
  _UserLoginGetResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final UserLoginGetResponseBody200 body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final _i3.OpenApiContentType contentType =
      _i3.OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

class _UserLoginGetResponse400 extends UserLoginGetResponse {
  /// Invalid username/password supplied
  _UserLoginGetResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class UserLoginGetResponse extends _i3.OpenApiResponse {
  UserLoginGetResponse();

  /// successful operation
  factory UserLoginGetResponse.response200(UserLoginGetResponseBody200 body) =>
      _UserLoginGetResponse200.response200(body);

  /// Invalid username/password supplied
  factory UserLoginGetResponse.response400() =>
      _UserLoginGetResponse400.response400();

  void map(
      {@_i2.required _i3.ResponseMap<_UserLoginGetResponse200> on200,
      @_i2.required _i3.ResponseMap<_UserLoginGetResponse400> on400}) {
    if (this is _UserLoginGetResponse200) {
      on200((this as _UserLoginGetResponse200));
    } else if (this is _UserLoginGetResponse400) {
      on400((this as _UserLoginGetResponse400));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _UserLogoutGetResponseDefault extends UserLogoutGetResponse {
  /// successful operation
  _UserLogoutGetResponseDefault.responseDefault(int status) : status = status;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class UserLogoutGetResponse extends _i3.OpenApiResponse {
  UserLogoutGetResponse();

  /// successful operation
  factory UserLogoutGetResponse.responseDefault(int status) =>
      _UserLogoutGetResponseDefault.responseDefault(status);

  void map(
      {@_i2.required
          _i3.ResponseMap<_UserLogoutGetResponseDefault> onDefault}) {
    if (this is _UserLogoutGetResponseDefault) {
      onDefault((this as _UserLogoutGetResponseDefault));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _UserUsernameGetResponse200 extends UserUsernameGetResponse
    implements _i3.OpenApiResponseBodyJson {
  /// successful operation
  _UserUsernameGetResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final User body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final _i3.OpenApiContentType contentType =
      _i3.OpenApiContentType.parse('application/json');

  @override
  Map<String, Object> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

class _UserUsernameGetResponse400 extends UserUsernameGetResponse {
  /// Invalid username supplied
  _UserUsernameGetResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _UserUsernameGetResponse404 extends UserUsernameGetResponse {
  /// User not found
  _UserUsernameGetResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class UserUsernameGetResponse extends _i3.OpenApiResponse {
  UserUsernameGetResponse();

  /// successful operation
  factory UserUsernameGetResponse.response200(User body) =>
      _UserUsernameGetResponse200.response200(body);

  /// Invalid username supplied
  factory UserUsernameGetResponse.response400() =>
      _UserUsernameGetResponse400.response400();

  /// User not found
  factory UserUsernameGetResponse.response404() =>
      _UserUsernameGetResponse404.response404();

  void map(
      {@_i2.required _i3.ResponseMap<_UserUsernameGetResponse200> on200,
      @_i2.required _i3.ResponseMap<_UserUsernameGetResponse400> on400,
      @_i2.required _i3.ResponseMap<_UserUsernameGetResponse404> on404}) {
    if (this is _UserUsernameGetResponse200) {
      on200((this as _UserUsernameGetResponse200));
    } else if (this is _UserUsernameGetResponse400) {
      on400((this as _UserUsernameGetResponse400));
    } else if (this is _UserUsernameGetResponse404) {
      on404((this as _UserUsernameGetResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _UserUsernamePutResponse400 extends UserUsernamePutResponse {
  /// Invalid user supplied
  _UserUsernamePutResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _UserUsernamePutResponse404 extends UserUsernamePutResponse {
  /// User not found
  _UserUsernamePutResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class UserUsernamePutResponse extends _i3.OpenApiResponse {
  UserUsernamePutResponse();

  /// Invalid user supplied
  factory UserUsernamePutResponse.response400() =>
      _UserUsernamePutResponse400.response400();

  /// User not found
  factory UserUsernamePutResponse.response404() =>
      _UserUsernamePutResponse404.response404();

  void map(
      {@_i2.required _i3.ResponseMap<_UserUsernamePutResponse400> on400,
      @_i2.required _i3.ResponseMap<_UserUsernamePutResponse404> on404}) {
    if (this is _UserUsernamePutResponse400) {
      on400((this as _UserUsernamePutResponse400));
    } else if (this is _UserUsernamePutResponse404) {
      on404((this as _UserUsernamePutResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _UserUsernameDeleteResponse400 extends UserUsernameDeleteResponse {
  /// Invalid username supplied
  _UserUsernameDeleteResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _UserUsernameDeleteResponse404 extends UserUsernameDeleteResponse {
  /// User not found
  _UserUsernameDeleteResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final _i3.OpenApiContentType contentType = null;

  @override
  Map<String, Object> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class UserUsernameDeleteResponse extends _i3.OpenApiResponse {
  UserUsernameDeleteResponse();

  /// Invalid username supplied
  factory UserUsernameDeleteResponse.response400() =>
      _UserUsernameDeleteResponse400.response400();

  /// User not found
  factory UserUsernameDeleteResponse.response404() =>
      _UserUsernameDeleteResponse404.response404();

  void map(
      {@_i2.required _i3.ResponseMap<_UserUsernameDeleteResponse400> on400,
      @_i2.required _i3.ResponseMap<_UserUsernameDeleteResponse404> on404}) {
    if (this is _UserUsernameDeleteResponse400) {
      on400((this as _UserUsernameDeleteResponse400));
    } else if (this is _UserUsernameDeleteResponse404) {
      on404((this as _UserUsernameDeleteResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

abstract class Petstore implements _i3.ApiEndpoint {
  /// Update an existing pet
  /// put: /pet
  Future<PetPutResponse> petPut(Pet body);

  /// Add a new pet to the store
  /// post: /pet
  Future<PetPostResponse> petPost(Pet body);

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  /// get: /pet/findByStatus
  Future<PetFindByStatusGetResponse> petFindByStatusGet(
      {@_i2.required List<PetFindByStatusGet> status});

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  Future<PetFindByTagsGetResponse> petFindByTagsGet(
      {@_i2.required List<String> tags});

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  Future<PetPetIdGetResponse> petPetIdGet({@_i2.required int petId});

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  Future<PetPetIdPostResponse> petPetIdPost({@_i2.required int petId});

  /// Deletes a pet
  /// delete: /pet/{petId}
  Future<PetPetIdDeleteResponse> petPetIdDelete(
      {String apiKey, @_i2.required int petId});

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  Future<PetPetIdUploadImagePostResponse> petPetIdUploadImagePost(
      {@_i2.required int petId});

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  Future<StoreInventoryGetResponse> storeInventoryGet();

  /// Place an order for a pet
  /// post: /store/order
  Future<StoreOrderPostResponse> storeOrderPost(Order body);

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  Future<StoreOrderOrderIdGetResponse> storeOrderOrderIdGet(
      {@_i2.required int orderId});

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  Future<StoreOrderOrderIdDeleteResponse> storeOrderOrderIdDelete(
      {@_i2.required int orderId});

  /// Create user
  /// This can only be done by the logged in user.
  /// post: /user
  Future<UserPostResponse> userPost(User body);

  /// Creates list of users with given input array
  /// post: /user/createWithArray
  Future<UserCreateWithArrayPostResponse> userCreateWithArrayPost(
      UserCreateWithArraySchema body);

  /// Creates list of users with given input array
  /// post: /user/createWithList
  Future<UserCreateWithListPostResponse> userCreateWithListPost(
      UserCreateWithArraySchema body);

  /// Logs user into the system
  /// get: /user/login
  Future<UserLoginGetResponse> userLoginGet(
      {@_i2.required String username, @_i2.required String password});

  /// Logs out current logged in user session
  /// get: /user/logout
  Future<UserLogoutGetResponse> userLogoutGet();

  /// Get user by user name
  /// get: /user/{username}
  Future<UserUsernameGetResponse> userUsernameGet(
      {@_i2.required String username});

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  Future<UserUsernamePutResponse> userUsernamePut(User body,
      {@_i2.required String username});

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  Future<UserUsernameDeleteResponse> userUsernameDelete(
      {@_i2.required String username});
}

abstract class PetstoreClient {
  factory PetstoreClient(Uri baseUri, _i3.OpenApiRequestSender requestSender) =>
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
  Future<PetFindByStatusGetResponse> petFindByStatusGet(
      {@_i2.required List<PetFindByStatusGet> status});

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  ///
  /// * [tags]: Tags to filter by
  Future<PetFindByTagsGetResponse> petFindByTagsGet(
      {@_i2.required List<String> tags});

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  ///
  /// * [petId]: ID of pet to return
  Future<PetPetIdGetResponse> petPetIdGet({@_i2.required int petId});

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  ///
  /// * [petId]: ID of pet that needs to be updated
  Future<PetPetIdPostResponse> petPetIdPost({@_i2.required int petId});

  /// Deletes a pet
  /// delete: /pet/{petId}
  ///
  /// * [petId]: Pet id to delete
  Future<PetPetIdDeleteResponse> petPetIdDelete(
      {String apiKey, @_i2.required int petId});

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  ///
  /// * [petId]: ID of pet to update
  Future<PetPetIdUploadImagePostResponse> petPetIdUploadImagePost(
      {@_i2.required int petId});

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
  Future<StoreOrderOrderIdGetResponse> storeOrderOrderIdGet(
      {@_i2.required int orderId});

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  ///
  /// * [orderId]: ID of the order that needs to be deleted
  Future<StoreOrderOrderIdDeleteResponse> storeOrderOrderIdDelete(
      {@_i2.required int orderId});

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
  Future<UserLoginGetResponse> userLoginGet(
      {@_i2.required String username, @_i2.required String password});

  /// Logs out current logged in user session
  /// get: /user/logout
  ///
  Future<UserLogoutGetResponse> userLogoutGet();

  /// Get user by user name
  /// get: /user/{username}
  ///
  /// * [username]: The name that needs to be fetched. Use user1 for testing.
  Future<UserUsernameGetResponse> userUsernameGet(
      {@_i2.required String username});

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  ///
  /// * [username]: name that need to be updated
  Future<UserUsernamePutResponse> userUsernamePut(User body,
      {@_i2.required String username});

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  ///
  /// * [username]: The name that needs to be deleted
  Future<UserUsernameDeleteResponse> userUsernameDelete(
      {@_i2.required String username});
}

class _PetstoreClientImpl extends _i3.OpenApiClientBase
    implements PetstoreClient {
  _PetstoreClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final _i3.OpenApiRequestSender requestSender;

  /// Update an existing pet
  /// put: /pet
  ///
  @override
  Future<PetPutResponse> petPut(Pet body) async {
    final request = _i3.OpenApiClientRequest('put', '/pet');
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '400': (_i3.OpenApiClientResponse response) async =>
          _PetPutResponse400.response400(),
      '404': (_i3.OpenApiClientResponse response) async =>
          _PetPutResponse404.response404(),
      '405': (_i3.OpenApiClientResponse response) async =>
          _PetPutResponse405.response405()
    });
  }

  /// Add a new pet to the store
  /// post: /pet
  ///
  @override
  Future<PetPostResponse> petPost(Pet body) async {
    final request = _i3.OpenApiClientRequest('post', '/pet');
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '405': (_i3.OpenApiClientResponse response) async =>
          _PetPostResponse405.response405()
    });
  }

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  /// get: /pet/findByStatus
  ///
  /// * [status]: Status values that need to be considered for filter
  @override
  Future<PetFindByStatusGetResponse> petFindByStatusGet(
      {@_i2.required List<PetFindByStatusGet> status}) async {
    final request = _i3.OpenApiClientRequest('get', '/pet/findByStatus');
    request.addQueryParameter('status', status.map((e) => e.name));
    return await sendRequest(request, {
      '200': (_i3.OpenApiClientResponse response) async =>
          _PetFindByStatusGetResponse200.response200(
              PetFindByStatusGetResponseBody200.fromJson(
                  await response.responseBodyJson())),
      '400': (_i3.OpenApiClientResponse response) async =>
          _PetFindByStatusGetResponse400.response400()
    });
  }

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  ///
  /// * [tags]: Tags to filter by
  @override
  Future<PetFindByTagsGetResponse> petFindByTagsGet(
      {@_i2.required List<String> tags}) async {
    final request = _i3.OpenApiClientRequest('get', '/pet/findByTags');
    request.addQueryParameter('tags', tags);
    return await sendRequest(request, {
      '200': (_i3.OpenApiClientResponse response) async =>
          _PetFindByTagsGetResponse200.response200(
              PetFindByTagsGetResponseBody200.fromJson(
                  await response.responseBodyJson())),
      '400': (_i3.OpenApiClientResponse response) async =>
          _PetFindByTagsGetResponse400.response400()
    });
  }

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  ///
  /// * [petId]: ID of pet to return
  @override
  Future<PetPetIdGetResponse> petPetIdGet({@_i2.required int petId}) async {
    final request = _i3.OpenApiClientRequest('get', '/pet/{petId}');
    request.addPathParameter('petId', encodeInt(petId));
    return await sendRequest(request, {
      '200': (_i3.OpenApiClientResponse response) async =>
          _PetPetIdGetResponse200.response200(
              Pet.fromJson(await response.responseBodyJson())),
      '400': (_i3.OpenApiClientResponse response) async =>
          _PetPetIdGetResponse400.response400(),
      '404': (_i3.OpenApiClientResponse response) async =>
          _PetPetIdGetResponse404.response404()
    });
  }

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  ///
  /// * [petId]: ID of pet that needs to be updated
  @override
  Future<PetPetIdPostResponse> petPetIdPost({@_i2.required int petId}) async {
    final request = _i3.OpenApiClientRequest('post', '/pet/{petId}');
    request.addPathParameter('petId', encodeInt(petId));
    return await sendRequest(request, {
      '405': (_i3.OpenApiClientResponse response) async =>
          _PetPetIdPostResponse405.response405()
    });
  }

  /// Deletes a pet
  /// delete: /pet/{petId}
  ///
  /// * [petId]: Pet id to delete
  @override
  Future<PetPetIdDeleteResponse> petPetIdDelete(
      {String apiKey, @_i2.required int petId}) async {
    final request = _i3.OpenApiClientRequest('delete', '/pet/{petId}');
    request.addHeaderParameter('api_key', encodeString(apiKey));
    request.addPathParameter('petId', encodeInt(petId));
    return await sendRequest(request, {
      '400': (_i3.OpenApiClientResponse response) async =>
          _PetPetIdDeleteResponse400.response400(),
      '404': (_i3.OpenApiClientResponse response) async =>
          _PetPetIdDeleteResponse404.response404()
    });
  }

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  ///
  /// * [petId]: ID of pet to update
  @override
  Future<PetPetIdUploadImagePostResponse> petPetIdUploadImagePost(
      {@_i2.required int petId}) async {
    final request =
        _i3.OpenApiClientRequest('post', '/pet/{petId}/uploadImage');
    request.addPathParameter('petId', encodeInt(petId));
    return await sendRequest(request, {
      '200': (_i3.OpenApiClientResponse response) async =>
          _PetPetIdUploadImagePostResponse200.response200(
              ApiResponse.fromJson(await response.responseBodyJson()))
    });
  }

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  ///
  @override
  Future<StoreInventoryGetResponse> storeInventoryGet() async {
    final request = _i3.OpenApiClientRequest('get', '/store/inventory');
    return await sendRequest(request, {
      '200': (_i3.OpenApiClientResponse response) async =>
          _StoreInventoryGetResponse200.response200(
              StoreInventoryGetResponseBody200.fromJson(
                  await response.responseBodyJson()))
    });
  }

  /// Place an order for a pet
  /// post: /store/order
  ///
  @override
  Future<StoreOrderPostResponse> storeOrderPost(Order body) async {
    final request = _i3.OpenApiClientRequest('post', '/store/order');
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '200': (_i3.OpenApiClientResponse response) async =>
          _StoreOrderPostResponse200.response200(
              Order.fromJson(await response.responseBodyJson())),
      '400': (_i3.OpenApiClientResponse response) async =>
          _StoreOrderPostResponse400.response400()
    });
  }

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  ///
  /// * [orderId]: ID of pet that needs to be fetched
  @override
  Future<StoreOrderOrderIdGetResponse> storeOrderOrderIdGet(
      {@_i2.required int orderId}) async {
    final request = _i3.OpenApiClientRequest('get', '/store/order/{orderId}');
    request.addPathParameter('orderId', encodeInt(orderId));
    return await sendRequest(request, {
      '200': (_i3.OpenApiClientResponse response) async =>
          _StoreOrderOrderIdGetResponse200.response200(
              Order.fromJson(await response.responseBodyJson())),
      '400': (_i3.OpenApiClientResponse response) async =>
          _StoreOrderOrderIdGetResponse400.response400(),
      '404': (_i3.OpenApiClientResponse response) async =>
          _StoreOrderOrderIdGetResponse404.response404()
    });
  }

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  ///
  /// * [orderId]: ID of the order that needs to be deleted
  @override
  Future<StoreOrderOrderIdDeleteResponse> storeOrderOrderIdDelete(
      {@_i2.required int orderId}) async {
    final request =
        _i3.OpenApiClientRequest('delete', '/store/order/{orderId}');
    request.addPathParameter('orderId', encodeInt(orderId));
    return await sendRequest(request, {
      '400': (_i3.OpenApiClientResponse response) async =>
          _StoreOrderOrderIdDeleteResponse400.response400(),
      '404': (_i3.OpenApiClientResponse response) async =>
          _StoreOrderOrderIdDeleteResponse404.response404()
    });
  }

  /// Create user
  /// This can only be done by the logged in user.
  /// post: /user
  ///
  @override
  Future<UserPostResponse> userPost(User body) async {
    final request = _i3.OpenApiClientRequest('post', '/user');
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      'default': (_i3.OpenApiClientResponse response) async =>
          _UserPostResponseDefault.responseDefault(response.status)
    });
  }

  /// Creates list of users with given input array
  /// post: /user/createWithArray
  ///
  @override
  Future<UserCreateWithArrayPostResponse> userCreateWithArrayPost(
      UserCreateWithArraySchema body) async {
    final request = _i3.OpenApiClientRequest('post', '/user/createWithArray');
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      'default': (_i3.OpenApiClientResponse response) async =>
          _UserCreateWithArrayPostResponseDefault.responseDefault(
              response.status)
    });
  }

  /// Creates list of users with given input array
  /// post: /user/createWithList
  ///
  @override
  Future<UserCreateWithListPostResponse> userCreateWithListPost(
      UserCreateWithArraySchema body) async {
    final request = _i3.OpenApiClientRequest('post', '/user/createWithList');
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      'default': (_i3.OpenApiClientResponse response) async =>
          _UserCreateWithListPostResponseDefault.responseDefault(
              response.status)
    });
  }

  /// Logs user into the system
  /// get: /user/login
  ///
  /// * [username]: The user name for login
  /// * [password]: The password for login in clear text
  @override
  Future<UserLoginGetResponse> userLoginGet(
      {@_i2.required String username, @_i2.required String password}) async {
    final request = _i3.OpenApiClientRequest('get', '/user/login');
    request.addQueryParameter('username', encodeString(username));
    request.addQueryParameter('password', encodeString(password));
    return await sendRequest(request, {
      '200': (_i3.OpenApiClientResponse response) async =>
          _UserLoginGetResponse200.response200(
              UserLoginGetResponseBody200.fromJson(
                  await response.responseBodyJson())),
      '400': (_i3.OpenApiClientResponse response) async =>
          _UserLoginGetResponse400.response400()
    });
  }

  /// Logs out current logged in user session
  /// get: /user/logout
  ///
  @override
  Future<UserLogoutGetResponse> userLogoutGet() async {
    final request = _i3.OpenApiClientRequest('get', '/user/logout');
    return await sendRequest(request, {
      'default': (_i3.OpenApiClientResponse response) async =>
          _UserLogoutGetResponseDefault.responseDefault(response.status)
    });
  }

  /// Get user by user name
  /// get: /user/{username}
  ///
  /// * [username]: The name that needs to be fetched. Use user1 for testing.
  @override
  Future<UserUsernameGetResponse> userUsernameGet(
      {@_i2.required String username}) async {
    final request = _i3.OpenApiClientRequest('get', '/user/{username}');
    request.addPathParameter('username', encodeString(username));
    return await sendRequest(request, {
      '200': (_i3.OpenApiClientResponse response) async =>
          _UserUsernameGetResponse200.response200(
              User.fromJson(await response.responseBodyJson())),
      '400': (_i3.OpenApiClientResponse response) async =>
          _UserUsernameGetResponse400.response400(),
      '404': (_i3.OpenApiClientResponse response) async =>
          _UserUsernameGetResponse404.response404()
    });
  }

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  ///
  /// * [username]: name that need to be updated
  @override
  Future<UserUsernamePutResponse> userUsernamePut(User body,
      {@_i2.required String username}) async {
    final request = _i3.OpenApiClientRequest('put', '/user/{username}');
    request.addPathParameter('username', encodeString(username));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '400': (_i3.OpenApiClientResponse response) async =>
          _UserUsernamePutResponse400.response400(),
      '404': (_i3.OpenApiClientResponse response) async =>
          _UserUsernamePutResponse404.response404()
    });
  }

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  ///
  /// * [username]: The name that needs to be deleted
  @override
  Future<UserUsernameDeleteResponse> userUsernameDelete(
      {@_i2.required String username}) async {
    final request = _i3.OpenApiClientRequest('delete', '/user/{username}');
    request.addPathParameter('username', encodeString(username));
    return await sendRequest(request, {
      '400': (_i3.OpenApiClientResponse response) async =>
          _UserUsernameDeleteResponse400.response400(),
      '404': (_i3.OpenApiClientResponse response) async =>
          _UserUsernameDeleteResponse404.response404()
    });
  }
}

class PetstoreUrlResolve with _i3.OpenApiUrlEncodeMixin {
  /// Update an existing pet
  /// put: /pet
  ///
  _i3.OpenApiClientRequest petPut() {
    final request = _i3.OpenApiClientRequest('put', '/pet');
    return request;
  }

  /// Add a new pet to the store
  /// post: /pet
  ///
  _i3.OpenApiClientRequest petPost() {
    final request = _i3.OpenApiClientRequest('post', '/pet');
    return request;
  }

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  /// get: /pet/findByStatus
  ///
  /// * [status]: Status values that need to be considered for filter
  _i3.OpenApiClientRequest petFindByStatusGet(
      {@_i2.required List<PetFindByStatusGet> status}) {
    final request = _i3.OpenApiClientRequest('get', '/pet/findByStatus');
    request.addQueryParameter('status', status.map((e) => e.name));
    return request;
  }

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  ///
  /// * [tags]: Tags to filter by
  _i3.OpenApiClientRequest petFindByTagsGet({@_i2.required List<String> tags}) {
    final request = _i3.OpenApiClientRequest('get', '/pet/findByTags');
    request.addQueryParameter('tags', tags);
    return request;
  }

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  ///
  /// * [petId]: ID of pet to return
  _i3.OpenApiClientRequest petPetIdGet({@_i2.required int petId}) {
    final request = _i3.OpenApiClientRequest('get', '/pet/{petId}');
    request.addPathParameter('petId', encodeInt(petId));
    return request;
  }

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  ///
  /// * [petId]: ID of pet that needs to be updated
  _i3.OpenApiClientRequest petPetIdPost({@_i2.required int petId}) {
    final request = _i3.OpenApiClientRequest('post', '/pet/{petId}');
    request.addPathParameter('petId', encodeInt(petId));
    return request;
  }

  /// Deletes a pet
  /// delete: /pet/{petId}
  ///
  /// * [petId]: Pet id to delete
  _i3.OpenApiClientRequest petPetIdDelete(
      {String apiKey, @_i2.required int petId}) {
    final request = _i3.OpenApiClientRequest('delete', '/pet/{petId}');
    request.addHeaderParameter('api_key', encodeString(apiKey));
    request.addPathParameter('petId', encodeInt(petId));
    return request;
  }

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  ///
  /// * [petId]: ID of pet to update
  _i3.OpenApiClientRequest petPetIdUploadImagePost({@_i2.required int petId}) {
    final request =
        _i3.OpenApiClientRequest('post', '/pet/{petId}/uploadImage');
    request.addPathParameter('petId', encodeInt(petId));
    return request;
  }

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  ///
  _i3.OpenApiClientRequest storeInventoryGet() {
    final request = _i3.OpenApiClientRequest('get', '/store/inventory');
    return request;
  }

  /// Place an order for a pet
  /// post: /store/order
  ///
  _i3.OpenApiClientRequest storeOrderPost() {
    final request = _i3.OpenApiClientRequest('post', '/store/order');
    return request;
  }

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  ///
  /// * [orderId]: ID of pet that needs to be fetched
  _i3.OpenApiClientRequest storeOrderOrderIdGet({@_i2.required int orderId}) {
    final request = _i3.OpenApiClientRequest('get', '/store/order/{orderId}');
    request.addPathParameter('orderId', encodeInt(orderId));
    return request;
  }

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  ///
  /// * [orderId]: ID of the order that needs to be deleted
  _i3.OpenApiClientRequest storeOrderOrderIdDelete(
      {@_i2.required int orderId}) {
    final request =
        _i3.OpenApiClientRequest('delete', '/store/order/{orderId}');
    request.addPathParameter('orderId', encodeInt(orderId));
    return request;
  }

  /// Create user
  /// This can only be done by the logged in user.
  /// post: /user
  ///
  _i3.OpenApiClientRequest userPost() {
    final request = _i3.OpenApiClientRequest('post', '/user');
    return request;
  }

  /// Creates list of users with given input array
  /// post: /user/createWithArray
  ///
  _i3.OpenApiClientRequest userCreateWithArrayPost() {
    final request = _i3.OpenApiClientRequest('post', '/user/createWithArray');
    return request;
  }

  /// Creates list of users with given input array
  /// post: /user/createWithList
  ///
  _i3.OpenApiClientRequest userCreateWithListPost() {
    final request = _i3.OpenApiClientRequest('post', '/user/createWithList');
    return request;
  }

  /// Logs user into the system
  /// get: /user/login
  ///
  /// * [username]: The user name for login
  /// * [password]: The password for login in clear text
  _i3.OpenApiClientRequest userLoginGet(
      {@_i2.required String username, @_i2.required String password}) {
    final request = _i3.OpenApiClientRequest('get', '/user/login');
    request.addQueryParameter('username', encodeString(username));
    request.addQueryParameter('password', encodeString(password));
    return request;
  }

  /// Logs out current logged in user session
  /// get: /user/logout
  ///
  _i3.OpenApiClientRequest userLogoutGet() {
    final request = _i3.OpenApiClientRequest('get', '/user/logout');
    return request;
  }

  /// Get user by user name
  /// get: /user/{username}
  ///
  /// * [username]: The name that needs to be fetched. Use user1 for testing.
  _i3.OpenApiClientRequest userUsernameGet({@_i2.required String username}) {
    final request = _i3.OpenApiClientRequest('get', '/user/{username}');
    request.addPathParameter('username', encodeString(username));
    return request;
  }

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  ///
  /// * [username]: name that need to be updated
  _i3.OpenApiClientRequest userUsernamePut({@_i2.required String username}) {
    final request = _i3.OpenApiClientRequest('put', '/user/{username}');
    request.addPathParameter('username', encodeString(username));
    return request;
  }

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  ///
  /// * [username]: The name that needs to be deleted
  _i3.OpenApiClientRequest userUsernameDelete({@_i2.required String username}) {
    final request = _i3.OpenApiClientRequest('delete', '/user/{username}');
    request.addPathParameter('username', encodeString(username));
    return request;
  }
}

class PetstoreRouter extends _i3.OpenApiServerRouterBase {
  PetstoreRouter(this.impl);

  final _i3.ApiEndpointProvider<Petstore> impl;

  @override
  void configure() {
    addRoute('/pet', 'put', (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async =>
          impl.petPut(Pet.fromJson(await request.readJsonBody())));
    }, security: []);
    addRoute('/pet', 'post', (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async =>
          impl.petPost(Pet.fromJson(await request.readJsonBody())));
    }, security: []);
    addRoute('/pet/findByStatus', 'get', (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async => impl.petFindByStatusGet(
          status: request
              .queryParameter('status')
              .map((e) => PetFindByStatusGetExt.fromName(e))
              .toList()));
    }, security: []);
    addRoute('/pet/findByTags', 'get', (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async =>
          impl.petFindByTagsGet(tags: request.queryParameter('tags')));
    }, security: []);
    addRoute('/pet/{petId}', 'get', (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async =>
          impl.petPetIdGet(petId: paramToInt(request.pathParameter('petId'))));
    }, security: []);
    addRoute('/pet/{petId}', 'post', (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async =>
          impl.petPetIdPost(petId: paramToInt(request.pathParameter('petId'))));
    }, security: []);
    addRoute('/pet/{petId}', 'delete', (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async => impl.petPetIdDelete(
          apiKey: paramToString(request.headerParameter('api_key')),
          petId: paramToInt(request.pathParameter('petId'))));
    }, security: []);
    addRoute('/pet/{petId}/uploadImage', 'post',
        (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async =>
          impl.petPetIdUploadImagePost(
              petId: paramToInt(request.pathParameter('petId'))));
    }, security: []);
    addRoute('/store/inventory', 'get', (_i3.OpenApiRequest request) async {
      return await impl
          .invoke((Petstore impl) async => impl.storeInventoryGet());
    }, security: []);
    addRoute('/store/order', 'post', (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async =>
          impl.storeOrderPost(Order.fromJson(await request.readJsonBody())));
    }, security: []);
    addRoute('/store/order/{orderId}', 'get',
        (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async =>
          impl.storeOrderOrderIdGet(
              orderId: paramToInt(request.pathParameter('orderId'))));
    }, security: []);
    addRoute('/store/order/{orderId}', 'delete',
        (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async =>
          impl.storeOrderOrderIdDelete(
              orderId: paramToInt(request.pathParameter('orderId'))));
    }, security: []);
    addRoute('/user', 'post', (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async =>
          impl.userPost(User.fromJson(await request.readJsonBody())));
    }, security: []);
    addRoute('/user/createWithArray', 'post',
        (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async =>
          impl.userCreateWithArrayPost(UserCreateWithArraySchema.fromJson(
              await request.readJsonBody())));
    }, security: []);
    addRoute('/user/createWithList', 'post',
        (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async =>
          impl.userCreateWithListPost(UserCreateWithArraySchema.fromJson(
              await request.readJsonBody())));
    }, security: []);
    addRoute('/user/login', 'get', (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async => impl.userLoginGet(
          username: paramToString(request.queryParameter('username')),
          password: paramToString(request.queryParameter('password'))));
    }, security: []);
    addRoute('/user/logout', 'get', (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async => impl.userLogoutGet());
    }, security: []);
    addRoute('/user/{username}', 'get', (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async => impl.userUsernameGet(
          username: paramToString(request.pathParameter('username'))));
    }, security: []);
    addRoute('/user/{username}', 'put', (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async => impl.userUsernamePut(
          User.fromJson(await request.readJsonBody()),
          username: paramToString(request.pathParameter('username'))));
    }, security: []);
    addRoute('/user/{username}', 'delete', (_i3.OpenApiRequest request) async {
      return await impl.invoke((Petstore impl) async => impl.userUsernameDelete(
          username: paramToString(request.pathParameter('username'))));
    }, security: []);
  }
}

class SecuritySchemes {}
