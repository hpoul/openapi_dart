// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:openapi_base/openapi_base.dart';
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
  static OrderStatus fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for OrderStatus');
  String get name => toString().substring(12);
}

@_i1.JsonSerializable()
class Order implements OpenApiContent {
  Order(
      {this.id,
      this.petId,
      this.quantity,
      this.shipDate,
      this.status,
      this.complete});

  factory Order.fromJson(Map<String, dynamic> jsonMap) =>
      _$OrderFromJson(jsonMap);

  @_i1.JsonKey(name: 'id')
  final int? id;

  @_i1.JsonKey(name: 'petId')
  final int? petId;

  @_i1.JsonKey(name: 'quantity')
  final int? quantity;

  @_i1.JsonKey(name: 'shipDate')
  final DateTime? shipDate;

  /// Order Status
  @_i1.JsonKey(name: 'status')
  final OrderStatus? status;

  @_i1.JsonKey(name: 'complete')
  final bool? complete;

  Map<String, dynamic> toJson() => _$OrderToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class Category implements OpenApiContent {
  Category({this.id, this.name});

  factory Category.fromJson(Map<String, dynamic> jsonMap) =>
      _$CategoryFromJson(jsonMap);

  @_i1.JsonKey(name: 'id')
  final int? id;

  @_i1.JsonKey(name: 'name')
  final String? name;

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class User implements OpenApiContent {
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

  @_i1.JsonKey(name: 'id')
  final int? id;

  @_i1.JsonKey(name: 'username')
  final String? username;

  @_i1.JsonKey(name: 'firstName')
  final String? firstName;

  @_i1.JsonKey(name: 'lastName')
  final String? lastName;

  @_i1.JsonKey(name: 'email')
  final String? email;

  @_i1.JsonKey(name: 'password')
  final String? password;

  @_i1.JsonKey(name: 'phone')
  final String? phone;

  /// User Status
  @_i1.JsonKey(name: 'userStatus')
  final int? userStatus;

  Map<String, dynamic> toJson() => _$UserToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class Tag implements OpenApiContent {
  Tag({this.id, this.name});

  factory Tag.fromJson(Map<String, dynamic> jsonMap) => _$TagFromJson(jsonMap);

  @_i1.JsonKey(name: 'id')
  final int? id;

  @_i1.JsonKey(name: 'name')
  final String? name;

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
  static PetStatus fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for PetStatus');
  String get name => toString().substring(10);
}

@_i1.JsonSerializable()
class Pet implements OpenApiContent {
  Pet(
      {this.id,
      this.category,
      required this.name,
      required this.photoUrls,
      this.tags,
      this.status});

  factory Pet.fromJson(Map<String, dynamic> jsonMap) => _$PetFromJson(jsonMap);

  @_i1.JsonKey(name: 'id')
  final int? id;

  @_i1.JsonKey(name: 'category')
  final Category? category;

  @_i1.JsonKey(name: 'name')
  final String name;

  @_i1.JsonKey(name: 'photoUrls')
  final List<String> photoUrls;

  @_i1.JsonKey(name: 'tags')
  final List<Tag>? tags;

  /// pet status in the store
  @_i1.JsonKey(name: 'status')
  final PetStatus? status;

  Map<String, dynamic> toJson() => _$PetToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class ApiResponse implements OpenApiContent {
  ApiResponse({this.code, this.type, this.message});

  factory ApiResponse.fromJson(Map<String, dynamic> jsonMap) =>
      _$ApiResponseFromJson(jsonMap);

  @_i1.JsonKey(name: 'code')
  final int? code;

  @_i1.JsonKey(name: 'type')
  final String? type;

  @_i1.JsonKey(name: 'message')
  final String? message;

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
  @override
  String toString() => toJson().toString();
}

class _UpdatePetResponse400 extends UpdatePetResponse {
  /// Invalid ID supplied
  _UpdatePetResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _UpdatePetResponse404 extends UpdatePetResponse {
  /// Pet not found
  _UpdatePetResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _UpdatePetResponse405 extends UpdatePetResponse {
  /// Validation exception
  _UpdatePetResponse405.response405() : status = 405;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class UpdatePetResponse extends OpenApiResponse {
  UpdatePetResponse();

  /// Invalid ID supplied
  factory UpdatePetResponse.response400() =>
      _UpdatePetResponse400.response400();

  /// Pet not found
  factory UpdatePetResponse.response404() =>
      _UpdatePetResponse404.response404();

  /// Validation exception
  factory UpdatePetResponse.response405() =>
      _UpdatePetResponse405.response405();

  void map(
      {required ResponseMap<_UpdatePetResponse400> on400,
      required ResponseMap<_UpdatePetResponse404> on404,
      required ResponseMap<_UpdatePetResponse405> on405}) {
    if (this is _UpdatePetResponse400) {
      on400((this as _UpdatePetResponse400));
    } else if (this is _UpdatePetResponse404) {
      on404((this as _UpdatePetResponse404));
    } else if (this is _UpdatePetResponse405) {
      on405((this as _UpdatePetResponse405));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _AddPetResponse405 extends AddPetResponse {
  /// Invalid input
  _AddPetResponse405.response405() : status = 405;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class AddPetResponse extends OpenApiResponse {
  AddPetResponse();

  /// Invalid input
  factory AddPetResponse.response405() => _AddPetResponse405.response405();

  void map({required ResponseMap<_AddPetResponse405> on405}) {
    if (this is _AddPetResponse405) {
      on405((this as _AddPetResponse405));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

@_i1.JsonSerializable()
class FindPetsByStatusResponseBody200 implements OpenApiContent {
  FindPetsByStatusResponseBody200();

  factory FindPetsByStatusResponseBody200.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$FindPetsByStatusResponseBody200FromJson(jsonMap);

  Map<String, dynamic> toJson() =>
      _$FindPetsByStatusResponseBody200ToJson(this);
  @override
  String toString() => toJson().toString();
}

class _FindPetsByStatusResponse200 extends FindPetsByStatusResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  _FindPetsByStatusResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final FindPetsByStatusResponseBody200 body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

class _FindPetsByStatusResponse400 extends FindPetsByStatusResponse {
  /// Invalid status value
  _FindPetsByStatusResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class FindPetsByStatusResponse extends OpenApiResponse
    implements HasSuccessResponse<FindPetsByStatusResponseBody200> {
  FindPetsByStatusResponse();

  /// successful operation
  factory FindPetsByStatusResponse.response200(
          FindPetsByStatusResponseBody200 body) =>
      _FindPetsByStatusResponse200.response200(body);

  /// Invalid status value
  factory FindPetsByStatusResponse.response400() =>
      _FindPetsByStatusResponse400.response400();

  void map(
      {required ResponseMap<_FindPetsByStatusResponse200> on200,
      required ResponseMap<_FindPetsByStatusResponse400> on400}) {
    if (this is _FindPetsByStatusResponse200) {
      on200((this as _FindPetsByStatusResponse200));
    } else if (this is _FindPetsByStatusResponse400) {
      on400((this as _FindPetsByStatusResponse400));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  successful operation
  @override
  FindPetsByStatusResponseBody200 requireSuccess() {
    if (this is _FindPetsByStatusResponse200) {
      return (this as _FindPetsByStatusResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

enum FindPetsByStatus {
  @_i1.JsonValue('available')
  available,
  @_i1.JsonValue('pending')
  pending,
  @_i1.JsonValue('sold')
  sold,
}

extension FindPetsByStatusExt on FindPetsByStatus {
  static final Map<String, FindPetsByStatus> _names = {
    'available': FindPetsByStatus.available,
    'pending': FindPetsByStatus.pending,
    'sold': FindPetsByStatus.sold
  };
  static FindPetsByStatus fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for FindPetsByStatus');
  String get name => toString().substring(17);
}

@_i1.JsonSerializable()
class FindPetsByTagsResponseBody200 implements OpenApiContent {
  FindPetsByTagsResponseBody200();

  factory FindPetsByTagsResponseBody200.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$FindPetsByTagsResponseBody200FromJson(jsonMap);

  Map<String, dynamic> toJson() => _$FindPetsByTagsResponseBody200ToJson(this);
  @override
  String toString() => toJson().toString();
}

class _FindPetsByTagsResponse200 extends FindPetsByTagsResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  _FindPetsByTagsResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final FindPetsByTagsResponseBody200 body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

class _FindPetsByTagsResponse400 extends FindPetsByTagsResponse {
  /// Invalid tag value
  _FindPetsByTagsResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class FindPetsByTagsResponse extends OpenApiResponse
    implements HasSuccessResponse<FindPetsByTagsResponseBody200> {
  FindPetsByTagsResponse();

  /// successful operation
  factory FindPetsByTagsResponse.response200(
          FindPetsByTagsResponseBody200 body) =>
      _FindPetsByTagsResponse200.response200(body);

  /// Invalid tag value
  factory FindPetsByTagsResponse.response400() =>
      _FindPetsByTagsResponse400.response400();

  void map(
      {required ResponseMap<_FindPetsByTagsResponse200> on200,
      required ResponseMap<_FindPetsByTagsResponse400> on400}) {
    if (this is _FindPetsByTagsResponse200) {
      on200((this as _FindPetsByTagsResponse200));
    } else if (this is _FindPetsByTagsResponse400) {
      on400((this as _FindPetsByTagsResponse400));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  successful operation
  @override
  FindPetsByTagsResponseBody200 requireSuccess() {
    if (this is _FindPetsByTagsResponse200) {
      return (this as _FindPetsByTagsResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class _GetPetByIdResponse200 extends GetPetByIdResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  _GetPetByIdResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final Pet body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

class _GetPetByIdResponse400 extends GetPetByIdResponse {
  /// Invalid ID supplied
  _GetPetByIdResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _GetPetByIdResponse404 extends GetPetByIdResponse {
  /// Pet not found
  _GetPetByIdResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class GetPetByIdResponse extends OpenApiResponse
    implements HasSuccessResponse<Pet> {
  GetPetByIdResponse();

  /// successful operation
  factory GetPetByIdResponse.response200(Pet body) =>
      _GetPetByIdResponse200.response200(body);

  /// Invalid ID supplied
  factory GetPetByIdResponse.response400() =>
      _GetPetByIdResponse400.response400();

  /// Pet not found
  factory GetPetByIdResponse.response404() =>
      _GetPetByIdResponse404.response404();

  void map(
      {required ResponseMap<_GetPetByIdResponse200> on200,
      required ResponseMap<_GetPetByIdResponse400> on400,
      required ResponseMap<_GetPetByIdResponse404> on404}) {
    if (this is _GetPetByIdResponse200) {
      on200((this as _GetPetByIdResponse200));
    } else if (this is _GetPetByIdResponse400) {
      on400((this as _GetPetByIdResponse400));
    } else if (this is _GetPetByIdResponse404) {
      on404((this as _GetPetByIdResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  successful operation
  @override
  Pet requireSuccess() {
    if (this is _GetPetByIdResponse200) {
      return (this as _GetPetByIdResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class _UpdatePetWithFormResponse405 extends UpdatePetWithFormResponse {
  /// Invalid input
  _UpdatePetWithFormResponse405.response405() : status = 405;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class UpdatePetWithFormResponse extends OpenApiResponse {
  UpdatePetWithFormResponse();

  /// Invalid input
  factory UpdatePetWithFormResponse.response405() =>
      _UpdatePetWithFormResponse405.response405();

  void map({required ResponseMap<_UpdatePetWithFormResponse405> on405}) {
    if (this is _UpdatePetWithFormResponse405) {
      on405((this as _UpdatePetWithFormResponse405));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

@_i1.JsonSerializable()
class UpdatePetWithFormSchema implements OpenApiContent {
  UpdatePetWithFormSchema({this.name, this.status});

  factory UpdatePetWithFormSchema.fromJson(Map<String, dynamic> jsonMap) =>
      _$UpdatePetWithFormSchemaFromJson(jsonMap);

  /// Updated name of the pet
  @_i1.JsonKey(name: 'name')
  final String? name;

  /// Updated status of the pet
  @_i1.JsonKey(name: 'status')
  final String? status;

  Map<String, dynamic> toJson() => _$UpdatePetWithFormSchemaToJson(this);
  @override
  String toString() => toJson().toString();
}

class _DeletePetResponse400 extends DeletePetResponse {
  /// Invalid ID supplied
  _DeletePetResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _DeletePetResponse404 extends DeletePetResponse {
  /// Pet not found
  _DeletePetResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class DeletePetResponse extends OpenApiResponse {
  DeletePetResponse();

  /// Invalid ID supplied
  factory DeletePetResponse.response400() =>
      _DeletePetResponse400.response400();

  /// Pet not found
  factory DeletePetResponse.response404() =>
      _DeletePetResponse404.response404();

  void map(
      {required ResponseMap<_DeletePetResponse400> on400,
      required ResponseMap<_DeletePetResponse404> on404}) {
    if (this is _DeletePetResponse400) {
      on400((this as _DeletePetResponse400));
    } else if (this is _DeletePetResponse404) {
      on404((this as _DeletePetResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _UploadFileResponse200 extends UploadFileResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  _UploadFileResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final ApiResponse body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

abstract class UploadFileResponse extends OpenApiResponse
    implements HasSuccessResponse<ApiResponse> {
  UploadFileResponse();

  /// successful operation
  factory UploadFileResponse.response200(ApiResponse body) =>
      _UploadFileResponse200.response200(body);

  void map({required ResponseMap<_UploadFileResponse200> on200}) {
    if (this is _UploadFileResponse200) {
      on200((this as _UploadFileResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  successful operation
  @override
  ApiResponse requireSuccess() {
    if (this is _UploadFileResponse200) {
      return (this as _UploadFileResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

@_i1.JsonSerializable()
class UploadFileSchema implements OpenApiContent {
  UploadFileSchema();

  factory UploadFileSchema.fromJson(Map<String, dynamic> jsonMap) =>
      _$UploadFileSchemaFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$UploadFileSchemaToJson(this);
  @override
  String toString() => toJson().toString();
}

@_i1.JsonSerializable()
class GetInventoryResponseBody200 implements OpenApiContent {
  GetInventoryResponseBody200();

  factory GetInventoryResponseBody200.fromJson(Map<String, dynamic> jsonMap) =>
      _$GetInventoryResponseBody200FromJson(jsonMap);

  Map<String, dynamic> toJson() => _$GetInventoryResponseBody200ToJson(this);
  @override
  String toString() => toJson().toString();
}

class _GetInventoryResponse200 extends GetInventoryResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  _GetInventoryResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final GetInventoryResponseBody200 body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

abstract class GetInventoryResponse extends OpenApiResponse
    implements HasSuccessResponse<GetInventoryResponseBody200> {
  GetInventoryResponse();

  /// successful operation
  factory GetInventoryResponse.response200(GetInventoryResponseBody200 body) =>
      _GetInventoryResponse200.response200(body);

  void map({required ResponseMap<_GetInventoryResponse200> on200}) {
    if (this is _GetInventoryResponse200) {
      on200((this as _GetInventoryResponse200));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  successful operation
  @override
  GetInventoryResponseBody200 requireSuccess() {
    if (this is _GetInventoryResponse200) {
      return (this as _GetInventoryResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class _PlaceOrderResponse200 extends PlaceOrderResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  _PlaceOrderResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final Order body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

class _PlaceOrderResponse400 extends PlaceOrderResponse {
  /// Invalid Order
  _PlaceOrderResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class PlaceOrderResponse extends OpenApiResponse
    implements HasSuccessResponse<Order> {
  PlaceOrderResponse();

  /// successful operation
  factory PlaceOrderResponse.response200(Order body) =>
      _PlaceOrderResponse200.response200(body);

  /// Invalid Order
  factory PlaceOrderResponse.response400() =>
      _PlaceOrderResponse400.response400();

  void map(
      {required ResponseMap<_PlaceOrderResponse200> on200,
      required ResponseMap<_PlaceOrderResponse400> on400}) {
    if (this is _PlaceOrderResponse200) {
      on200((this as _PlaceOrderResponse200));
    } else if (this is _PlaceOrderResponse400) {
      on400((this as _PlaceOrderResponse400));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  successful operation
  @override
  Order requireSuccess() {
    if (this is _PlaceOrderResponse200) {
      return (this as _PlaceOrderResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class _GetOrderByIdResponse200 extends GetOrderByIdResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  _GetOrderByIdResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final Order body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

class _GetOrderByIdResponse400 extends GetOrderByIdResponse {
  /// Invalid ID supplied
  _GetOrderByIdResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _GetOrderByIdResponse404 extends GetOrderByIdResponse {
  /// Order not found
  _GetOrderByIdResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class GetOrderByIdResponse extends OpenApiResponse
    implements HasSuccessResponse<Order> {
  GetOrderByIdResponse();

  /// successful operation
  factory GetOrderByIdResponse.response200(Order body) =>
      _GetOrderByIdResponse200.response200(body);

  /// Invalid ID supplied
  factory GetOrderByIdResponse.response400() =>
      _GetOrderByIdResponse400.response400();

  /// Order not found
  factory GetOrderByIdResponse.response404() =>
      _GetOrderByIdResponse404.response404();

  void map(
      {required ResponseMap<_GetOrderByIdResponse200> on200,
      required ResponseMap<_GetOrderByIdResponse400> on400,
      required ResponseMap<_GetOrderByIdResponse404> on404}) {
    if (this is _GetOrderByIdResponse200) {
      on200((this as _GetOrderByIdResponse200));
    } else if (this is _GetOrderByIdResponse400) {
      on400((this as _GetOrderByIdResponse400));
    } else if (this is _GetOrderByIdResponse404) {
      on404((this as _GetOrderByIdResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  successful operation
  @override
  Order requireSuccess() {
    if (this is _GetOrderByIdResponse200) {
      return (this as _GetOrderByIdResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class _DeleteOrderResponse400 extends DeleteOrderResponse {
  /// Invalid ID supplied
  _DeleteOrderResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _DeleteOrderResponse404 extends DeleteOrderResponse {
  /// Order not found
  _DeleteOrderResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class DeleteOrderResponse extends OpenApiResponse {
  DeleteOrderResponse();

  /// Invalid ID supplied
  factory DeleteOrderResponse.response400() =>
      _DeleteOrderResponse400.response400();

  /// Order not found
  factory DeleteOrderResponse.response404() =>
      _DeleteOrderResponse404.response404();

  void map(
      {required ResponseMap<_DeleteOrderResponse400> on400,
      required ResponseMap<_DeleteOrderResponse404> on404}) {
    if (this is _DeleteOrderResponse400) {
      on400((this as _DeleteOrderResponse400));
    } else if (this is _DeleteOrderResponse404) {
      on404((this as _DeleteOrderResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _CreateUserResponseDefault extends CreateUserResponse {
  /// successful operation
  _CreateUserResponseDefault.responseDefault(int status) : status = status;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class CreateUserResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  CreateUserResponse();

  /// successful operation
  factory CreateUserResponse.responseDefault(int status) =>
      _CreateUserResponseDefault.responseDefault(status);

  void map({required ResponseMap<_CreateUserResponseDefault> onDefault}) {
    if (this is _CreateUserResponseDefault) {
      onDefault((this as _CreateUserResponseDefault));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status default:  successful operation
  @override
  void requireSuccess() {
    if (this is _CreateUserResponseDefault) {
      return;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class _CreateUsersWithArrayInputResponseDefault
    extends CreateUsersWithArrayInputResponse {
  /// successful operation
  _CreateUsersWithArrayInputResponseDefault.responseDefault(int status)
      : status = status;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class CreateUsersWithArrayInputResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  CreateUsersWithArrayInputResponse();

  /// successful operation
  factory CreateUsersWithArrayInputResponse.responseDefault(int status) =>
      _CreateUsersWithArrayInputResponseDefault.responseDefault(status);

  void map(
      {required ResponseMap<_CreateUsersWithArrayInputResponseDefault>
          onDefault}) {
    if (this is _CreateUsersWithArrayInputResponseDefault) {
      onDefault((this as _CreateUsersWithArrayInputResponseDefault));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status default:  successful operation
  @override
  void requireSuccess() {
    if (this is _CreateUsersWithArrayInputResponseDefault) {
      return;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

@_i1.JsonSerializable()
class CreateUsersWithArrayInputSchema implements OpenApiContent {
  CreateUsersWithArrayInputSchema();

  factory CreateUsersWithArrayInputSchema.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$CreateUsersWithArrayInputSchemaFromJson(jsonMap);

  Map<String, dynamic> toJson() =>
      _$CreateUsersWithArrayInputSchemaToJson(this);
  @override
  String toString() => toJson().toString();
}

class _CreateUsersWithListInputResponseDefault
    extends CreateUsersWithListInputResponse {
  /// successful operation
  _CreateUsersWithListInputResponseDefault.responseDefault(int status)
      : status = status;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class CreateUsersWithListInputResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  CreateUsersWithListInputResponse();

  /// successful operation
  factory CreateUsersWithListInputResponse.responseDefault(int status) =>
      _CreateUsersWithListInputResponseDefault.responseDefault(status);

  void map(
      {required ResponseMap<_CreateUsersWithListInputResponseDefault>
          onDefault}) {
    if (this is _CreateUsersWithListInputResponseDefault) {
      onDefault((this as _CreateUsersWithListInputResponseDefault));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status default:  successful operation
  @override
  void requireSuccess() {
    if (this is _CreateUsersWithListInputResponseDefault) {
      return;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

@_i1.JsonSerializable()
class LoginUserResponseBody200 implements OpenApiContent {
  LoginUserResponseBody200();

  factory LoginUserResponseBody200.fromJson(Map<String, dynamic> jsonMap) =>
      _$LoginUserResponseBody200FromJson(jsonMap);

  Map<String, dynamic> toJson() => _$LoginUserResponseBody200ToJson(this);
  @override
  String toString() => toJson().toString();
}

class _LoginUserResponse200 extends LoginUserResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  _LoginUserResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final LoginUserResponseBody200 body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

class _LoginUserResponse400 extends LoginUserResponse {
  /// Invalid username/password supplied
  _LoginUserResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class LoginUserResponse extends OpenApiResponse
    implements HasSuccessResponse<LoginUserResponseBody200> {
  LoginUserResponse();

  /// successful operation
  factory LoginUserResponse.response200(LoginUserResponseBody200 body) =>
      _LoginUserResponse200.response200(body);

  /// Invalid username/password supplied
  factory LoginUserResponse.response400() =>
      _LoginUserResponse400.response400();

  void map(
      {required ResponseMap<_LoginUserResponse200> on200,
      required ResponseMap<_LoginUserResponse400> on400}) {
    if (this is _LoginUserResponse200) {
      on200((this as _LoginUserResponse200));
    } else if (this is _LoginUserResponse400) {
      on400((this as _LoginUserResponse400));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  successful operation
  @override
  LoginUserResponseBody200 requireSuccess() {
    if (this is _LoginUserResponse200) {
      return (this as _LoginUserResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class _LogoutUserResponseDefault extends LogoutUserResponse {
  /// successful operation
  _LogoutUserResponseDefault.responseDefault(int status) : status = status;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class LogoutUserResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  LogoutUserResponse();

  /// successful operation
  factory LogoutUserResponse.responseDefault(int status) =>
      _LogoutUserResponseDefault.responseDefault(status);

  void map({required ResponseMap<_LogoutUserResponseDefault> onDefault}) {
    if (this is _LogoutUserResponseDefault) {
      onDefault((this as _LogoutUserResponseDefault));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status default:  successful operation
  @override
  void requireSuccess() {
    if (this is _LogoutUserResponseDefault) {
      return;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class _GetUserByNameResponse200 extends GetUserByNameResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  _GetUserByNameResponse200.response200(this.body)
      : status = 200,
        bodyJson = body.toJson();

  @override
  final int status;

  final User body;

  @override
  final Map<String, dynamic> bodyJson;

  @override
  final OpenApiContentType contentType =
      OpenApiContentType.parse('application/json');

  @override
  Map<String, Object?> propertiesToString() => {
        'status': status,
        'body': body,
        'bodyJson': bodyJson,
        'contentType': contentType
      };
}

class _GetUserByNameResponse400 extends GetUserByNameResponse {
  /// Invalid username supplied
  _GetUserByNameResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _GetUserByNameResponse404 extends GetUserByNameResponse {
  /// User not found
  _GetUserByNameResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class GetUserByNameResponse extends OpenApiResponse
    implements HasSuccessResponse<User> {
  GetUserByNameResponse();

  /// successful operation
  factory GetUserByNameResponse.response200(User body) =>
      _GetUserByNameResponse200.response200(body);

  /// Invalid username supplied
  factory GetUserByNameResponse.response400() =>
      _GetUserByNameResponse400.response400();

  /// User not found
  factory GetUserByNameResponse.response404() =>
      _GetUserByNameResponse404.response404();

  void map(
      {required ResponseMap<_GetUserByNameResponse200> on200,
      required ResponseMap<_GetUserByNameResponse400> on400,
      required ResponseMap<_GetUserByNameResponse404> on404}) {
    if (this is _GetUserByNameResponse200) {
      on200((this as _GetUserByNameResponse200));
    } else if (this is _GetUserByNameResponse400) {
      on400((this as _GetUserByNameResponse400));
    } else if (this is _GetUserByNameResponse404) {
      on404((this as _GetUserByNameResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }

  /// status 200:  successful operation
  @override
  User requireSuccess() {
    if (this is _GetUserByNameResponse200) {
      return (this as _GetUserByNameResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class _UpdateUserResponse400 extends UpdateUserResponse {
  /// Invalid user supplied
  _UpdateUserResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _UpdateUserResponse404 extends UpdateUserResponse {
  /// User not found
  _UpdateUserResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class UpdateUserResponse extends OpenApiResponse {
  UpdateUserResponse();

  /// Invalid user supplied
  factory UpdateUserResponse.response400() =>
      _UpdateUserResponse400.response400();

  /// User not found
  factory UpdateUserResponse.response404() =>
      _UpdateUserResponse404.response404();

  void map(
      {required ResponseMap<_UpdateUserResponse400> on400,
      required ResponseMap<_UpdateUserResponse404> on404}) {
    if (this is _UpdateUserResponse400) {
      on400((this as _UpdateUserResponse400));
    } else if (this is _UpdateUserResponse404) {
      on404((this as _UpdateUserResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class _DeleteUserResponse400 extends DeleteUserResponse {
  /// Invalid username supplied
  _DeleteUserResponse400.response400() : status = 400;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

class _DeleteUserResponse404 extends DeleteUserResponse {
  /// User not found
  _DeleteUserResponse404.response404() : status = 404;

  @override
  final int status;

  @override
  final OpenApiContentType? contentType = null;

  @override
  Map<String, Object?> propertiesToString() =>
      {'status': status, 'contentType': contentType};
}

abstract class DeleteUserResponse extends OpenApiResponse {
  DeleteUserResponse();

  /// Invalid username supplied
  factory DeleteUserResponse.response400() =>
      _DeleteUserResponse400.response400();

  /// User not found
  factory DeleteUserResponse.response404() =>
      _DeleteUserResponse404.response404();

  void map(
      {required ResponseMap<_DeleteUserResponse400> on400,
      required ResponseMap<_DeleteUserResponse404> on404}) {
    if (this is _DeleteUserResponse400) {
      on400((this as _DeleteUserResponse400));
    } else if (this is _DeleteUserResponse404) {
      on404((this as _DeleteUserResponse404));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

abstract class Petstore implements ApiEndpoint {
  /// Update an existing pet
  /// put: /pet
  Future<UpdatePetResponse> updatePet(Pet body);

  /// Add a new pet to the store
  /// post: /pet
  Future<AddPetResponse> addPet(Pet body);

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  /// get: /pet/findByStatus
  Future<FindPetsByStatusResponse> findPetsByStatus(
      {required List<FindPetsByStatus> status});

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  Future<FindPetsByTagsResponse> findPetsByTags({required List<String> tags});

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  Future<GetPetByIdResponse> getPetById({required int petId});

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  Future<UpdatePetWithFormResponse> updatePetWithForm(
      UpdatePetWithFormSchema body,
      {required int petId});

  /// Deletes a pet
  /// delete: /pet/{petId}
  Future<DeletePetResponse> deletePet({String? apiKey, required int petId});

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  Future<UploadFileResponse> uploadFile(UploadFileSchema body,
      {required int petId});

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  Future<GetInventoryResponse> getInventory();

  /// Place an order for a pet
  /// post: /store/order
  Future<PlaceOrderResponse> placeOrder(Order body);

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  Future<GetOrderByIdResponse> getOrderById({required int orderId});

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  Future<DeleteOrderResponse> deleteOrder({required int orderId});

  /// Create user
  /// This can only be done by the logged in user.
  /// post: /user
  Future<CreateUserResponse> createUser(User body);

  /// Creates list of users with given input array
  /// post: /user/createWithArray
  Future<CreateUsersWithArrayInputResponse> createUsersWithArrayInput(
      CreateUsersWithArrayInputSchema body);

  /// Creates list of users with given input array
  /// post: /user/createWithList
  Future<CreateUsersWithListInputResponse> createUsersWithListInput(
      CreateUsersWithArrayInputSchema body);

  /// Logs user into the system
  /// get: /user/login
  Future<LoginUserResponse> loginUser(
      {required String username, required String password});

  /// Logs out current logged in user session
  /// get: /user/logout
  Future<LogoutUserResponse> logoutUser();

  /// Get user by user name
  /// get: /user/{username}
  Future<GetUserByNameResponse> getUserByName({required String username});

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  Future<UpdateUserResponse> updateUser(User body, {required String username});

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  Future<DeleteUserResponse> deleteUser({required String username});
}

abstract class PetstoreClient implements OpenApiClient {
  factory PetstoreClient(Uri baseUri, OpenApiRequestSender requestSender) =>
      _PetstoreClientImpl._(baseUri, requestSender);

  /// Update an existing pet
  /// put: /pet
  ///
  Future<UpdatePetResponse> updatePet(Pet body);

  /// Add a new pet to the store
  /// post: /pet
  ///
  Future<AddPetResponse> addPet(Pet body);

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  /// get: /pet/findByStatus
  ///
  /// * [status]: Status values that need to be considered for filter
  Future<FindPetsByStatusResponse> findPetsByStatus(
      {required List<FindPetsByStatus> status});

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  ///
  /// * [tags]: Tags to filter by
  Future<FindPetsByTagsResponse> findPetsByTags({required List<String> tags});

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  ///
  /// * [petId]: ID of pet to return
  Future<GetPetByIdResponse> getPetById({required int petId});

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  ///
  /// * [petId]: ID of pet that needs to be updated
  Future<UpdatePetWithFormResponse> updatePetWithForm(
      UpdatePetWithFormSchema body,
      {required int petId});

  /// Deletes a pet
  /// delete: /pet/{petId}
  ///
  /// * [petId]: Pet id to delete
  Future<DeletePetResponse> deletePet({String? apiKey, required int petId});

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  ///
  /// * [petId]: ID of pet to update
  Future<UploadFileResponse> uploadFile(UploadFileSchema body,
      {required int petId});

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  ///
  Future<GetInventoryResponse> getInventory();

  /// Place an order for a pet
  /// post: /store/order
  ///
  Future<PlaceOrderResponse> placeOrder(Order body);

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  ///
  /// * [orderId]: ID of pet that needs to be fetched
  Future<GetOrderByIdResponse> getOrderById({required int orderId});

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  ///
  /// * [orderId]: ID of the order that needs to be deleted
  Future<DeleteOrderResponse> deleteOrder({required int orderId});

  /// Create user
  /// This can only be done by the logged in user.
  /// post: /user
  ///
  Future<CreateUserResponse> createUser(User body);

  /// Creates list of users with given input array
  /// post: /user/createWithArray
  ///
  Future<CreateUsersWithArrayInputResponse> createUsersWithArrayInput(
      CreateUsersWithArrayInputSchema body);

  /// Creates list of users with given input array
  /// post: /user/createWithList
  ///
  Future<CreateUsersWithListInputResponse> createUsersWithListInput(
      CreateUsersWithArrayInputSchema body);

  /// Logs user into the system
  /// get: /user/login
  ///
  /// * [username]: The user name for login
  /// * [password]: The password for login in clear text
  Future<LoginUserResponse> loginUser(
      {required String username, required String password});

  /// Logs out current logged in user session
  /// get: /user/logout
  ///
  Future<LogoutUserResponse> logoutUser();

  /// Get user by user name
  /// get: /user/{username}
  ///
  /// * [username]: The name that needs to be fetched. Use user1 for testing.
  Future<GetUserByNameResponse> getUserByName({required String username});

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  ///
  /// * [username]: name that need to be updated
  Future<UpdateUserResponse> updateUser(User body, {required String username});

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  ///
  /// * [username]: The name that needs to be deleted
  Future<DeleteUserResponse> deleteUser({required String username});
}

class _PetstoreClientImpl extends OpenApiClientBase implements PetstoreClient {
  _PetstoreClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  /// Update an existing pet
  /// put: /pet
  ///
  @override
  Future<UpdatePetResponse> updatePet(Pet body) async {
    final request = OpenApiClientRequest('put', '/pet', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(request, {
      '400': (OpenApiClientResponse response) async =>
          _UpdatePetResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          _UpdatePetResponse404.response404(),
      '405': (OpenApiClientResponse response) async =>
          _UpdatePetResponse405.response405()
    });
  }

  /// Add a new pet to the store
  /// post: /pet
  ///
  @override
  Future<AddPetResponse> addPet(Pet body) async {
    final request = OpenApiClientRequest('post', '/pet', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(request, {
      '405': (OpenApiClientResponse response) async =>
          _AddPetResponse405.response405()
    });
  }

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  /// get: /pet/findByStatus
  ///
  /// * [status]: Status values that need to be considered for filter
  @override
  Future<FindPetsByStatusResponse> findPetsByStatus(
      {required List<FindPetsByStatus> status}) async {
    final request = OpenApiClientRequest('get', '/pet/findByStatus', []);
    request.addQueryParameter('status', status.map((e) => e.name));
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          _FindPetsByStatusResponse200.response200(
              FindPetsByStatusResponseBody200.fromJson(
                  await response.responseBodyJson())),
      '400': (OpenApiClientResponse response) async =>
          _FindPetsByStatusResponse400.response400()
    });
  }

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  ///
  /// * [tags]: Tags to filter by
  @override
  Future<FindPetsByTagsResponse> findPetsByTags(
      {required List<String> tags}) async {
    final request = OpenApiClientRequest('get', '/pet/findByTags', []);
    request.addQueryParameter('tags', tags);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          _FindPetsByTagsResponse200.response200(
              FindPetsByTagsResponseBody200.fromJson(
                  await response.responseBodyJson())),
      '400': (OpenApiClientResponse response) async =>
          _FindPetsByTagsResponse400.response400()
    });
  }

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  ///
  /// * [petId]: ID of pet to return
  @override
  Future<GetPetByIdResponse> getPetById({required int petId}) async {
    final request = OpenApiClientRequest('get', '/pet/{petId}', []);
    request.addPathParameter('petId', encodeInt(petId));
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          _GetPetByIdResponse200.response200(
              Pet.fromJson(await response.responseBodyJson())),
      '400': (OpenApiClientResponse response) async =>
          _GetPetByIdResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          _GetPetByIdResponse404.response404()
    });
  }

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  ///
  /// * [petId]: ID of pet that needs to be updated
  @override
  Future<UpdatePetWithFormResponse> updatePetWithForm(
      UpdatePetWithFormSchema body,
      {required int petId}) async {
    final request = OpenApiClientRequest('post', '/pet/{petId}', []);
    request.addPathParameter('petId', encodeInt(petId));
    request.setHeader('content-type', 'application/x-www-form-urlencoded');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(request, {
      '405': (OpenApiClientResponse response) async =>
          _UpdatePetWithFormResponse405.response405()
    });
  }

  /// Deletes a pet
  /// delete: /pet/{petId}
  ///
  /// * [petId]: Pet id to delete
  @override
  Future<DeletePetResponse> deletePet(
      {String? apiKey, required int petId}) async {
    final request = OpenApiClientRequest('delete', '/pet/{petId}', []);
    request.addHeaderParameter('api_key', encodeString(apiKey));
    request.addPathParameter('petId', encodeInt(petId));
    return await sendRequest(request, {
      '400': (OpenApiClientResponse response) async =>
          _DeletePetResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          _DeletePetResponse404.response404()
    });
  }

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  ///
  /// * [petId]: ID of pet to update
  @override
  Future<UploadFileResponse> uploadFile(UploadFileSchema body,
      {required int petId}) async {
    final request =
        OpenApiClientRequest('post', '/pet/{petId}/uploadImage', []);
    request.addPathParameter('petId', encodeInt(petId));
    request.setHeader('content-type', 'application/octet-stream');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          _UploadFileResponse200.response200(
              ApiResponse.fromJson(await response.responseBodyJson()))
    });
  }

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  ///
  @override
  Future<GetInventoryResponse> getInventory() async {
    final request = OpenApiClientRequest('get', '/store/inventory', []);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          _GetInventoryResponse200.response200(
              GetInventoryResponseBody200.fromJson(
                  await response.responseBodyJson()))
    });
  }

  /// Place an order for a pet
  /// post: /store/order
  ///
  @override
  Future<PlaceOrderResponse> placeOrder(Order body) async {
    final request = OpenApiClientRequest('post', '/store/order', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          _PlaceOrderResponse200.response200(
              Order.fromJson(await response.responseBodyJson())),
      '400': (OpenApiClientResponse response) async =>
          _PlaceOrderResponse400.response400()
    });
  }

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  ///
  /// * [orderId]: ID of pet that needs to be fetched
  @override
  Future<GetOrderByIdResponse> getOrderById({required int orderId}) async {
    final request = OpenApiClientRequest('get', '/store/order/{orderId}', []);
    request.addPathParameter('orderId', encodeInt(orderId));
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          _GetOrderByIdResponse200.response200(
              Order.fromJson(await response.responseBodyJson())),
      '400': (OpenApiClientResponse response) async =>
          _GetOrderByIdResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          _GetOrderByIdResponse404.response404()
    });
  }

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  ///
  /// * [orderId]: ID of the order that needs to be deleted
  @override
  Future<DeleteOrderResponse> deleteOrder({required int orderId}) async {
    final request =
        OpenApiClientRequest('delete', '/store/order/{orderId}', []);
    request.addPathParameter('orderId', encodeInt(orderId));
    return await sendRequest(request, {
      '400': (OpenApiClientResponse response) async =>
          _DeleteOrderResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          _DeleteOrderResponse404.response404()
    });
  }

  /// Create user
  /// This can only be done by the logged in user.
  /// post: /user
  ///
  @override
  Future<CreateUserResponse> createUser(User body) async {
    final request = OpenApiClientRequest('post', '/user', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(request, {
      'default': (OpenApiClientResponse response) async =>
          _CreateUserResponseDefault.responseDefault(response.status)
    });
  }

  /// Creates list of users with given input array
  /// post: /user/createWithArray
  ///
  @override
  Future<CreateUsersWithArrayInputResponse> createUsersWithArrayInput(
      CreateUsersWithArrayInputSchema body) async {
    final request = OpenApiClientRequest('post', '/user/createWithArray', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(request, {
      'default': (OpenApiClientResponse response) async =>
          _CreateUsersWithArrayInputResponseDefault.responseDefault(
              response.status)
    });
  }

  /// Creates list of users with given input array
  /// post: /user/createWithList
  ///
  @override
  Future<CreateUsersWithListInputResponse> createUsersWithListInput(
      CreateUsersWithArrayInputSchema body) async {
    final request = OpenApiClientRequest('post', '/user/createWithList', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(request, {
      'default': (OpenApiClientResponse response) async =>
          _CreateUsersWithListInputResponseDefault.responseDefault(
              response.status)
    });
  }

  /// Logs user into the system
  /// get: /user/login
  ///
  /// * [username]: The user name for login
  /// * [password]: The password for login in clear text
  @override
  Future<LoginUserResponse> loginUser(
      {required String username, required String password}) async {
    final request = OpenApiClientRequest('get', '/user/login', []);
    request.addQueryParameter('username', encodeString(username));
    request.addQueryParameter('password', encodeString(password));
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          _LoginUserResponse200.response200(LoginUserResponseBody200.fromJson(
              await response.responseBodyJson())),
      '400': (OpenApiClientResponse response) async =>
          _LoginUserResponse400.response400()
    });
  }

  /// Logs out current logged in user session
  /// get: /user/logout
  ///
  @override
  Future<LogoutUserResponse> logoutUser() async {
    final request = OpenApiClientRequest('get', '/user/logout', []);
    return await sendRequest(request, {
      'default': (OpenApiClientResponse response) async =>
          _LogoutUserResponseDefault.responseDefault(response.status)
    });
  }

  /// Get user by user name
  /// get: /user/{username}
  ///
  /// * [username]: The name that needs to be fetched. Use user1 for testing.
  @override
  Future<GetUserByNameResponse> getUserByName(
      {required String username}) async {
    final request = OpenApiClientRequest('get', '/user/{username}', []);
    request.addPathParameter('username', encodeString(username));
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          _GetUserByNameResponse200.response200(
              User.fromJson(await response.responseBodyJson())),
      '400': (OpenApiClientResponse response) async =>
          _GetUserByNameResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          _GetUserByNameResponse404.response404()
    });
  }

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  ///
  /// * [username]: name that need to be updated
  @override
  Future<UpdateUserResponse> updateUser(User body,
      {required String username}) async {
    final request = OpenApiClientRequest('put', '/user/{username}', []);
    request.addPathParameter('username', encodeString(username));
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(request, {
      '400': (OpenApiClientResponse response) async =>
          _UpdateUserResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          _UpdateUserResponse404.response404()
    });
  }

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  ///
  /// * [username]: The name that needs to be deleted
  @override
  Future<DeleteUserResponse> deleteUser({required String username}) async {
    final request = OpenApiClientRequest('delete', '/user/{username}', []);
    request.addPathParameter('username', encodeString(username));
    return await sendRequest(request, {
      '400': (OpenApiClientResponse response) async =>
          _DeleteUserResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          _DeleteUserResponse404.response404()
    });
  }
}

class PetstoreUrlResolve with OpenApiUrlEncodeMixin {
  /// Update an existing pet
  /// put: /pet
  ///
  OpenApiClientRequest updatePet() {
    final request = OpenApiClientRequest('put', '/pet', []);
    return request;
  }

  /// Add a new pet to the store
  /// post: /pet
  ///
  OpenApiClientRequest addPet() {
    final request = OpenApiClientRequest('post', '/pet', []);
    return request;
  }

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  /// get: /pet/findByStatus
  ///
  /// * [status]: Status values that need to be considered for filter
  OpenApiClientRequest findPetsByStatus(
      {required List<FindPetsByStatus> status}) {
    final request = OpenApiClientRequest('get', '/pet/findByStatus', []);
    request.addQueryParameter('status', status.map((e) => e.name));
    return request;
  }

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  ///
  /// * [tags]: Tags to filter by
  OpenApiClientRequest findPetsByTags({required List<String> tags}) {
    final request = OpenApiClientRequest('get', '/pet/findByTags', []);
    request.addQueryParameter('tags', tags);
    return request;
  }

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  ///
  /// * [petId]: ID of pet to return
  OpenApiClientRequest getPetById({required int petId}) {
    final request = OpenApiClientRequest('get', '/pet/{petId}', []);
    request.addPathParameter('petId', encodeInt(petId));
    return request;
  }

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  ///
  /// * [petId]: ID of pet that needs to be updated
  OpenApiClientRequest updatePetWithForm({required int petId}) {
    final request = OpenApiClientRequest('post', '/pet/{petId}', []);
    request.addPathParameter('petId', encodeInt(petId));
    return request;
  }

  /// Deletes a pet
  /// delete: /pet/{petId}
  ///
  /// * [petId]: Pet id to delete
  OpenApiClientRequest deletePet({String? apiKey, required int petId}) {
    final request = OpenApiClientRequest('delete', '/pet/{petId}', []);
    request.addHeaderParameter('api_key', encodeString(apiKey));
    request.addPathParameter('petId', encodeInt(petId));
    return request;
  }

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  ///
  /// * [petId]: ID of pet to update
  OpenApiClientRequest uploadFile({required int petId}) {
    final request =
        OpenApiClientRequest('post', '/pet/{petId}/uploadImage', []);
    request.addPathParameter('petId', encodeInt(petId));
    return request;
  }

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  ///
  OpenApiClientRequest getInventory() {
    final request = OpenApiClientRequest('get', '/store/inventory', []);
    return request;
  }

  /// Place an order for a pet
  /// post: /store/order
  ///
  OpenApiClientRequest placeOrder() {
    final request = OpenApiClientRequest('post', '/store/order', []);
    return request;
  }

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  ///
  /// * [orderId]: ID of pet that needs to be fetched
  OpenApiClientRequest getOrderById({required int orderId}) {
    final request = OpenApiClientRequest('get', '/store/order/{orderId}', []);
    request.addPathParameter('orderId', encodeInt(orderId));
    return request;
  }

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  ///
  /// * [orderId]: ID of the order that needs to be deleted
  OpenApiClientRequest deleteOrder({required int orderId}) {
    final request =
        OpenApiClientRequest('delete', '/store/order/{orderId}', []);
    request.addPathParameter('orderId', encodeInt(orderId));
    return request;
  }

  /// Create user
  /// This can only be done by the logged in user.
  /// post: /user
  ///
  OpenApiClientRequest createUser() {
    final request = OpenApiClientRequest('post', '/user', []);
    return request;
  }

  /// Creates list of users with given input array
  /// post: /user/createWithArray
  ///
  OpenApiClientRequest createUsersWithArrayInput() {
    final request = OpenApiClientRequest('post', '/user/createWithArray', []);
    return request;
  }

  /// Creates list of users with given input array
  /// post: /user/createWithList
  ///
  OpenApiClientRequest createUsersWithListInput() {
    final request = OpenApiClientRequest('post', '/user/createWithList', []);
    return request;
  }

  /// Logs user into the system
  /// get: /user/login
  ///
  /// * [username]: The user name for login
  /// * [password]: The password for login in clear text
  OpenApiClientRequest loginUser(
      {required String username, required String password}) {
    final request = OpenApiClientRequest('get', '/user/login', []);
    request.addQueryParameter('username', encodeString(username));
    request.addQueryParameter('password', encodeString(password));
    return request;
  }

  /// Logs out current logged in user session
  /// get: /user/logout
  ///
  OpenApiClientRequest logoutUser() {
    final request = OpenApiClientRequest('get', '/user/logout', []);
    return request;
  }

  /// Get user by user name
  /// get: /user/{username}
  ///
  /// * [username]: The name that needs to be fetched. Use user1 for testing.
  OpenApiClientRequest getUserByName({required String username}) {
    final request = OpenApiClientRequest('get', '/user/{username}', []);
    request.addPathParameter('username', encodeString(username));
    return request;
  }

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  ///
  /// * [username]: name that need to be updated
  OpenApiClientRequest updateUser({required String username}) {
    final request = OpenApiClientRequest('put', '/user/{username}', []);
    request.addPathParameter('username', encodeString(username));
    return request;
  }

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  ///
  /// * [username]: The name that needs to be deleted
  OpenApiClientRequest deleteUser({required String username}) {
    final request = OpenApiClientRequest('delete', '/user/{username}', []);
    request.addPathParameter('username', encodeString(username));
    return request;
  }
}

class PetstoreRouter extends OpenApiServerRouterBase {
  PetstoreRouter(this.impl);

  final ApiEndpointProvider<Petstore> impl;

  @override
  void configure() {
    addRoute('/pet', 'put', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async =>
              impl.updatePet(Pet.fromJson(await request.readJsonBody())));
    }, security: []);
    addRoute('/pet', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async =>
              impl.addPet(Pet.fromJson(await request.readJsonBody())));
    }, security: []);
    addRoute('/pet/findByStatus', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async => impl.findPetsByStatus(
              status: paramRequired(
                  name: 'status',
                  value: request.queryParameter('status'),
                  decode: (value) => value
                      .map((e) => FindPetsByStatusExt.fromName(e))
                      .toList())));
    }, security: []);
    addRoute('/pet/findByTags', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async => impl.findPetsByTags(
              tags: paramRequired(
                  name: 'tags',
                  value: request.queryParameter('tags'),
                  decode: (value) => value)));
    }, security: []);
    addRoute('/pet/{petId}', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async => impl.getPetById(
              petId: paramRequired(
                  name: 'petId',
                  value: request.pathParameter('petId'),
                  decode: (value) => paramToInt(value))));
    }, security: []);
    addRoute('/pet/{petId}', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async => impl.updatePetWithForm(
              UpdatePetWithFormSchema.fromJson(
                  await request.readUrlEncodedBodyFlat()),
              petId: paramRequired(
                  name: 'petId',
                  value: request.pathParameter('petId'),
                  decode: (value) => paramToInt(value))));
    }, security: []);
    addRoute('/pet/{petId}', 'delete', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async => impl.deletePet(
              apiKey: paramOpt(
                  name: 'api_key',
                  value: request.headerParameter('api_key'),
                  decode: (value) => paramToString(value)),
              petId: paramRequired(
                  name: 'petId',
                  value: request.pathParameter('petId'),
                  decode: (value) => paramToInt(value))));
    }, security: []);
    addRoute('/pet/{petId}/uploadImage', 'post',
        (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async => impl.uploadFile(
              UploadFileSchema.fromJson(const <String, dynamic>{}),
              petId: paramRequired(
                  name: 'petId',
                  value: request.pathParameter('petId'),
                  decode: (value) => paramToInt(value))));
    }, security: []);
    addRoute('/store/inventory', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
          request, (Petstore impl) async => impl.getInventory());
    }, security: []);
    addRoute('/store/order', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async =>
              impl.placeOrder(Order.fromJson(await request.readJsonBody())));
    }, security: []);
    addRoute('/store/order/{orderId}', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async => impl.getOrderById(
              orderId: paramRequired(
                  name: 'orderId',
                  value: request.pathParameter('orderId'),
                  decode: (value) => paramToInt(value))));
    }, security: []);
    addRoute('/store/order/{orderId}', 'delete',
        (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async => impl.deleteOrder(
              orderId: paramRequired(
                  name: 'orderId',
                  value: request.pathParameter('orderId'),
                  decode: (value) => paramToInt(value))));
    }, security: []);
    addRoute('/user', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async =>
              impl.createUser(User.fromJson(await request.readJsonBody())));
    }, security: []);
    addRoute('/user/createWithArray', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async => impl.createUsersWithArrayInput(
              CreateUsersWithArrayInputSchema.fromJson(
                  await request.readJsonBody())));
    }, security: []);
    addRoute('/user/createWithList', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async => impl.createUsersWithListInput(
              CreateUsersWithArrayInputSchema.fromJson(
                  await request.readJsonBody())));
    }, security: []);
    addRoute('/user/login', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async => impl.loginUser(
              username: paramRequired(
                  name: 'username',
                  value: request.queryParameter('username'),
                  decode: (value) => paramToString(value)),
              password: paramRequired(
                  name: 'password',
                  value: request.queryParameter('password'),
                  decode: (value) => paramToString(value))));
    }, security: []);
    addRoute('/user/logout', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
          request, (Petstore impl) async => impl.logoutUser());
    }, security: []);
    addRoute('/user/{username}', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async => impl.getUserByName(
              username: paramRequired(
                  name: 'username',
                  value: request.pathParameter('username'),
                  decode: (value) => paramToString(value))));
    }, security: []);
    addRoute('/user/{username}', 'put', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async => impl.updateUser(
              User.fromJson(await request.readJsonBody()),
              username: paramRequired(
                  name: 'username',
                  value: request.pathParameter('username'),
                  decode: (value) => paramToString(value))));
    }, security: []);
    addRoute('/user/{username}', 'delete', (OpenApiRequest request) async {
      return await impl.invoke(
          request,
          (Petstore impl) async => impl.deleteUser(
              username: paramRequired(
                  name: 'username',
                  value: request.pathParameter('username'),
                  decode: (value) => paramToString(value))));
    }, security: []);
  }
}

class SecuritySchemes {}

T _throwStateError<T>(String message) => throw StateError(message);
