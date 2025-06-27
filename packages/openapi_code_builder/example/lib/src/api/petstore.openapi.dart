// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i1;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'petstore.openapi.g.dart';

enum OrderStatus {
  @JsonValue('placed')
  placed,
  @JsonValue('approved')
  approved,
  @JsonValue('delivered')
  delivered,
}

extension OrderStatusExt on OrderStatus {
  static final Map<String, OrderStatus> _names = {
    'placed': OrderStatus.placed,
    'approved': OrderStatus.approved,
    'delivered': OrderStatus.delivered,
  };
  static OrderStatus fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for OrderStatus');
  String get name => toString().substring(12);
}

@JsonSerializable()
@ApiUuidJsonConverter()
class Order implements OpenApiContent {
  const Order({
    this.id,
    this.petId,
    this.quantity,
    this.shipDate,
    this.status,
    this.complete = false,
  });

  factory Order.fromJson(Map<String, dynamic> jsonMap) =>
      _$OrderFromJson(jsonMap);

  @JsonKey(
    name: 'id',
    includeIfNull: false,
  )
  final int? id;

  @JsonKey(
    name: 'petId',
    includeIfNull: false,
  )
  final int? petId;

  @JsonKey(
    name: 'quantity',
    includeIfNull: false,
  )
  final int? quantity;

  @JsonKey(
    name: 'shipDate',
    includeIfNull: false,
  )
  final DateTime? shipDate;

  /// Order Status
  @JsonKey(
    name: 'status',
    includeIfNull: false,
  )
  final OrderStatus? status;

  @JsonKey(
    name: 'complete',
    includeIfNull: false,
  )
  final bool complete;

  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class Category implements OpenApiContent {
  const Category({
    this.id,
    this.name,
  });

  factory Category.fromJson(Map<String, dynamic> jsonMap) =>
      _$CategoryFromJson(jsonMap);

  @JsonKey(
    name: 'id',
    includeIfNull: false,
  )
  final int? id;

  @JsonKey(
    name: 'name',
    includeIfNull: false,
  )
  final String? name;

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class User implements OpenApiContent {
  const User({
    this.id,
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.phone,
    this.userStatus,
  });

  factory User.fromJson(Map<String, dynamic> jsonMap) =>
      _$UserFromJson(jsonMap);

  @JsonKey(
    name: 'id',
    includeIfNull: false,
  )
  final int? id;

  @JsonKey(
    name: 'username',
    includeIfNull: false,
  )
  final String? username;

  @JsonKey(
    name: 'firstName',
    includeIfNull: false,
  )
  final String? firstName;

  @JsonKey(
    name: 'lastName',
    includeIfNull: false,
  )
  final String? lastName;

  @JsonKey(
    name: 'email',
    includeIfNull: false,
  )
  final String? email;

  @JsonKey(
    name: 'password',
    includeIfNull: false,
  )
  final String? password;

  @JsonKey(
    name: 'phone',
    includeIfNull: false,
  )
  final String? phone;

  /// User Status
  @JsonKey(
    name: 'userStatus',
    includeIfNull: false,
  )
  final int? userStatus;

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class Tag implements OpenApiContent {
  const Tag({
    this.id,
    this.name,
  });

  factory Tag.fromJson(Map<String, dynamic> jsonMap) => _$TagFromJson(jsonMap);

  @JsonKey(
    name: 'id',
    includeIfNull: false,
  )
  final int? id;

  @JsonKey(
    name: 'name',
    includeIfNull: false,
  )
  final String? name;

  Map<String, dynamic> toJson() => _$TagToJson(this);

  @override
  String toString() => toJson().toString();
}

enum PetStatus {
  @JsonValue('available')
  available,
  @JsonValue('pending')
  pending,
  @JsonValue('sold')
  sold,
}

extension PetStatusExt on PetStatus {
  static final Map<String, PetStatus> _names = {
    'available': PetStatus.available,
    'pending': PetStatus.pending,
    'sold': PetStatus.sold,
  };
  static PetStatus fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for PetStatus');
  String get name => toString().substring(10);
}

@JsonSerializable()
@ApiUuidJsonConverter()
class Pet implements OpenApiContent {
  const Pet({
    this.id,
    this.category,
    required this.name,
    required this.photoUrls,
    this.tags,
    this.status,
  });

  factory Pet.fromJson(Map<String, dynamic> jsonMap) => _$PetFromJson(jsonMap);

  @JsonKey(
    name: 'id',
    includeIfNull: false,
  )
  final int? id;

  @JsonKey(
    name: 'category',
    includeIfNull: false,
  )
  final Category? category;

  @JsonKey(
    name: 'name',
    includeIfNull: false,
  )
  final String name;

  @JsonKey(
    name: 'photoUrls',
    includeIfNull: false,
  )
  final List<String> photoUrls;

  @JsonKey(
    name: 'tags',
    includeIfNull: false,
  )
  final List<Tag>? tags;

  /// pet status in the store
  @JsonKey(
    name: 'status',
    includeIfNull: false,
  )
  final PetStatus? status;

  Map<String, dynamic> toJson() => _$PetToJson(this);

  @override
  String toString() => toJson().toString();
}

@JsonSerializable()
@ApiUuidJsonConverter()
class ApiResponse implements OpenApiContent {
  const ApiResponse({
    this.code,
    this.type,
    this.message,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> jsonMap) =>
      _$ApiResponseFromJson(jsonMap);

  @JsonKey(
    name: 'code',
    includeIfNull: false,
  )
  final int? code;

  @JsonKey(
    name: 'type',
    includeIfNull: false,
  )
  final String? type;

  @JsonKey(
    name: 'message',
    includeIfNull: false,
  )
  final String? message;

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);

  @override
  String toString() => toJson().toString();
}

class UpdatePetResponse400 extends UpdatePetResponse {
  /// Invalid ID supplied
  UpdatePetResponse400.response400() : status = 400;

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

class UpdatePetResponse404 extends UpdatePetResponse {
  /// Pet not found
  UpdatePetResponse404.response404() : status = 404;

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

class UpdatePetResponse405 extends UpdatePetResponse {
  /// Validation exception
  UpdatePetResponse405.response405() : status = 405;

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

sealed class UpdatePetResponse extends OpenApiResponse {
  UpdatePetResponse();

  /// Invalid ID supplied
  factory UpdatePetResponse.response400() => UpdatePetResponse400.response400();

  /// Pet not found
  factory UpdatePetResponse.response404() => UpdatePetResponse404.response404();

  /// Validation exception
  factory UpdatePetResponse.response405() => UpdatePetResponse405.response405();

  R map<R>({
    required ResponseMap<UpdatePetResponse400, R> on400,
    required ResponseMap<UpdatePetResponse404, R> on404,
    required ResponseMap<UpdatePetResponse405, R> on405,
    ResponseMap<UpdatePetResponse, R>? onElse,
  }) {
    if (this is UpdatePetResponse400) {
      return on400((this as UpdatePetResponse400));
    } else if (this is UpdatePetResponse404) {
      return on404((this as UpdatePetResponse404));
    } else if (this is UpdatePetResponse405) {
      return on405((this as UpdatePetResponse405));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }
}

class AddPetResponse405 extends AddPetResponse {
  /// Invalid input
  AddPetResponse405.response405() : status = 405;

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

sealed class AddPetResponse extends OpenApiResponse {
  AddPetResponse();

  /// Invalid input
  factory AddPetResponse.response405() => AddPetResponse405.response405();

  R map<R>({
    required ResponseMap<AddPetResponse405, R> on405,
    ResponseMap<AddPetResponse, R>? onElse,
  }) {
    if (this is AddPetResponse405) {
      return on405((this as AddPetResponse405));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }
}

class FindPetsByStatusResponse200 extends FindPetsByStatusResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  FindPetsByStatusResponse200.response200(this.body)
      : status = 200,
        bodyJson = {};

  @override
  final int status;

  final List<Pet> body;

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
        'contentType': contentType,
      };
}

class FindPetsByStatusResponse400 extends FindPetsByStatusResponse {
  /// Invalid status value
  FindPetsByStatusResponse400.response400() : status = 400;

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

sealed class FindPetsByStatusResponse extends OpenApiResponse
    implements HasSuccessResponse<List<Pet>> {
  FindPetsByStatusResponse();

  /// successful operation
  factory FindPetsByStatusResponse.response200(List<Pet> body) =>
      FindPetsByStatusResponse200.response200(body);

  /// Invalid status value
  factory FindPetsByStatusResponse.response400() =>
      FindPetsByStatusResponse400.response400();

  R map<R>({
    required ResponseMap<FindPetsByStatusResponse200, R> on200,
    required ResponseMap<FindPetsByStatusResponse400, R> on400,
    ResponseMap<FindPetsByStatusResponse, R>? onElse,
  }) {
    if (this is FindPetsByStatusResponse200) {
      return on200((this as FindPetsByStatusResponse200));
    } else if (this is FindPetsByStatusResponse400) {
      return on400((this as FindPetsByStatusResponse400));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  successful operation
  @override
  List<Pet> requireSuccess() {
    if (this is FindPetsByStatusResponse200) {
      return (this as FindPetsByStatusResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

enum FindPetsByStatus {
  @JsonValue('available')
  available,
  @JsonValue('pending')
  pending,
  @JsonValue('sold')
  sold,
}

extension FindPetsByStatusExt on FindPetsByStatus {
  static final Map<String, FindPetsByStatus> _names = {
    'available': FindPetsByStatus.available,
    'pending': FindPetsByStatus.pending,
    'sold': FindPetsByStatus.sold,
  };
  static FindPetsByStatus fromName(String name) =>
      _names[name] ??
      _throwStateError('Invalid enum name: $name for FindPetsByStatus');
  String get name => toString().substring(17);
}

class FindPetsByTagsResponse200 extends FindPetsByTagsResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  FindPetsByTagsResponse200.response200(this.body)
      : status = 200,
        bodyJson = {};

  @override
  final int status;

  final List<Pet> body;

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
        'contentType': contentType,
      };
}

class FindPetsByTagsResponse400 extends FindPetsByTagsResponse {
  /// Invalid tag value
  FindPetsByTagsResponse400.response400() : status = 400;

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

sealed class FindPetsByTagsResponse extends OpenApiResponse
    implements HasSuccessResponse<List<Pet>> {
  FindPetsByTagsResponse();

  /// successful operation
  factory FindPetsByTagsResponse.response200(List<Pet> body) =>
      FindPetsByTagsResponse200.response200(body);

  /// Invalid tag value
  factory FindPetsByTagsResponse.response400() =>
      FindPetsByTagsResponse400.response400();

  R map<R>({
    required ResponseMap<FindPetsByTagsResponse200, R> on200,
    required ResponseMap<FindPetsByTagsResponse400, R> on400,
    ResponseMap<FindPetsByTagsResponse, R>? onElse,
  }) {
    if (this is FindPetsByTagsResponse200) {
      return on200((this as FindPetsByTagsResponse200));
    } else if (this is FindPetsByTagsResponse400) {
      return on400((this as FindPetsByTagsResponse400));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  successful operation
  @override
  List<Pet> requireSuccess() {
    if (this is FindPetsByTagsResponse200) {
      return (this as FindPetsByTagsResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class GetPetByIdResponse200 extends GetPetByIdResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  GetPetByIdResponse200.response200(this.body)
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
        'contentType': contentType,
      };
}

class GetPetByIdResponse400 extends GetPetByIdResponse {
  /// Invalid ID supplied
  GetPetByIdResponse400.response400() : status = 400;

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

class GetPetByIdResponse404 extends GetPetByIdResponse {
  /// Pet not found
  GetPetByIdResponse404.response404() : status = 404;

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

sealed class GetPetByIdResponse extends OpenApiResponse
    implements HasSuccessResponse<Pet> {
  GetPetByIdResponse();

  /// successful operation
  factory GetPetByIdResponse.response200(Pet body) =>
      GetPetByIdResponse200.response200(body);

  /// Invalid ID supplied
  factory GetPetByIdResponse.response400() =>
      GetPetByIdResponse400.response400();

  /// Pet not found
  factory GetPetByIdResponse.response404() =>
      GetPetByIdResponse404.response404();

  R map<R>({
    required ResponseMap<GetPetByIdResponse200, R> on200,
    required ResponseMap<GetPetByIdResponse400, R> on400,
    required ResponseMap<GetPetByIdResponse404, R> on404,
    ResponseMap<GetPetByIdResponse, R>? onElse,
  }) {
    if (this is GetPetByIdResponse200) {
      return on200((this as GetPetByIdResponse200));
    } else if (this is GetPetByIdResponse400) {
      return on400((this as GetPetByIdResponse400));
    } else if (this is GetPetByIdResponse404) {
      return on404((this as GetPetByIdResponse404));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  successful operation
  @override
  Pet requireSuccess() {
    if (this is GetPetByIdResponse200) {
      return (this as GetPetByIdResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class UpdatePetWithFormResponse405 extends UpdatePetWithFormResponse {
  /// Invalid input
  UpdatePetWithFormResponse405.response405() : status = 405;

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

sealed class UpdatePetWithFormResponse extends OpenApiResponse {
  UpdatePetWithFormResponse();

  /// Invalid input
  factory UpdatePetWithFormResponse.response405() =>
      UpdatePetWithFormResponse405.response405();

  R map<R>({
    required ResponseMap<UpdatePetWithFormResponse405, R> on405,
    ResponseMap<UpdatePetWithFormResponse, R>? onElse,
  }) {
    if (this is UpdatePetWithFormResponse405) {
      return on405((this as UpdatePetWithFormResponse405));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }
}

@JsonSerializable()
@ApiUuidJsonConverter()
class UpdatePetWithFormSchema implements OpenApiContent {
  const UpdatePetWithFormSchema({
    this.name,
    this.status,
  });

  factory UpdatePetWithFormSchema.fromJson(Map<String, dynamic> jsonMap) =>
      _$UpdatePetWithFormSchemaFromJson(jsonMap);

  /// Updated name of the pet
  @JsonKey(
    name: 'name',
    includeIfNull: false,
  )
  final String? name;

  /// Updated status of the pet
  @JsonKey(
    name: 'status',
    includeIfNull: false,
  )
  final String? status;

  Map<String, dynamic> toJson() => _$UpdatePetWithFormSchemaToJson(this);

  @override
  String toString() => toJson().toString();
}

class DeletePetResponse400 extends DeletePetResponse {
  /// Invalid ID supplied
  DeletePetResponse400.response400() : status = 400;

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

class DeletePetResponse404 extends DeletePetResponse {
  /// Pet not found
  DeletePetResponse404.response404() : status = 404;

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

sealed class DeletePetResponse extends OpenApiResponse {
  DeletePetResponse();

  /// Invalid ID supplied
  factory DeletePetResponse.response400() => DeletePetResponse400.response400();

  /// Pet not found
  factory DeletePetResponse.response404() => DeletePetResponse404.response404();

  R map<R>({
    required ResponseMap<DeletePetResponse400, R> on400,
    required ResponseMap<DeletePetResponse404, R> on404,
    ResponseMap<DeletePetResponse, R>? onElse,
  }) {
    if (this is DeletePetResponse400) {
      return on400((this as DeletePetResponse400));
    } else if (this is DeletePetResponse404) {
      return on404((this as DeletePetResponse404));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }
}

class UploadFileResponse200 extends UploadFileResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  UploadFileResponse200.response200(this.body)
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
        'contentType': contentType,
      };
}

sealed class UploadFileResponse extends OpenApiResponse
    implements HasSuccessResponse<ApiResponse> {
  UploadFileResponse();

  /// successful operation
  factory UploadFileResponse.response200(ApiResponse body) =>
      UploadFileResponse200.response200(body);

  R map<R>({
    required ResponseMap<UploadFileResponse200, R> on200,
    ResponseMap<UploadFileResponse, R>? onElse,
  }) {
    if (this is UploadFileResponse200) {
      return on200((this as UploadFileResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  successful operation
  @override
  ApiResponse requireSuccess() {
    if (this is UploadFileResponse200) {
      return (this as UploadFileResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

@JsonSerializable()
@ApiUuidJsonConverter()
class GetInventoryResponseBody200 implements OpenApiContent {
  GetInventoryResponseBody200();

  factory GetInventoryResponseBody200.fromJson(Map<String, dynamic> jsonMap) =>
      _$GetInventoryResponseBody200FromJson(jsonMap)
        .._additionalProperties.addEntries(jsonMap.entries
            .where((e) => !const <String>{}.contains(e.key))
            .map((e) => MapEntry(
                  e.key,
                  (e.value as int),
                )));

  final Map<String, int> _additionalProperties = <String, int>{};

  Map<String, dynamic> toJson() => Map.from(_additionalProperties)
    ..addAll(_$GetInventoryResponseBody200ToJson(this));

  @override
  String toString() => toJson().toString();

  Map<String, int> get additionalProperties => _additionalProperties;

  void operator []=(
    String key,
    int value,
  ) =>
      _additionalProperties[key] = value;

  int? operator [](String key) => _additionalProperties[key];
}

class GetInventoryResponse200 extends GetInventoryResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  GetInventoryResponse200.response200(this.body)
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
        'contentType': contentType,
      };
}

sealed class GetInventoryResponse extends OpenApiResponse
    implements HasSuccessResponse<GetInventoryResponseBody200> {
  GetInventoryResponse();

  /// successful operation
  factory GetInventoryResponse.response200(GetInventoryResponseBody200 body) =>
      GetInventoryResponse200.response200(body);

  R map<R>({
    required ResponseMap<GetInventoryResponse200, R> on200,
    ResponseMap<GetInventoryResponse, R>? onElse,
  }) {
    if (this is GetInventoryResponse200) {
      return on200((this as GetInventoryResponse200));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  successful operation
  @override
  GetInventoryResponseBody200 requireSuccess() {
    if (this is GetInventoryResponse200) {
      return (this as GetInventoryResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class PlaceOrderResponse200 extends PlaceOrderResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  PlaceOrderResponse200.response200(this.body)
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
        'contentType': contentType,
      };
}

class PlaceOrderResponse400 extends PlaceOrderResponse {
  /// Invalid Order
  PlaceOrderResponse400.response400() : status = 400;

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

sealed class PlaceOrderResponse extends OpenApiResponse
    implements HasSuccessResponse<Order> {
  PlaceOrderResponse();

  /// successful operation
  factory PlaceOrderResponse.response200(Order body) =>
      PlaceOrderResponse200.response200(body);

  /// Invalid Order
  factory PlaceOrderResponse.response400() =>
      PlaceOrderResponse400.response400();

  R map<R>({
    required ResponseMap<PlaceOrderResponse200, R> on200,
    required ResponseMap<PlaceOrderResponse400, R> on400,
    ResponseMap<PlaceOrderResponse, R>? onElse,
  }) {
    if (this is PlaceOrderResponse200) {
      return on200((this as PlaceOrderResponse200));
    } else if (this is PlaceOrderResponse400) {
      return on400((this as PlaceOrderResponse400));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  successful operation
  @override
  Order requireSuccess() {
    if (this is PlaceOrderResponse200) {
      return (this as PlaceOrderResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class GetOrderByIdResponse200 extends GetOrderByIdResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  GetOrderByIdResponse200.response200(this.body)
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
        'contentType': contentType,
      };
}

class GetOrderByIdResponse400 extends GetOrderByIdResponse {
  /// Invalid ID supplied
  GetOrderByIdResponse400.response400() : status = 400;

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

class GetOrderByIdResponse404 extends GetOrderByIdResponse {
  /// Order not found
  GetOrderByIdResponse404.response404() : status = 404;

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

sealed class GetOrderByIdResponse extends OpenApiResponse
    implements HasSuccessResponse<Order> {
  GetOrderByIdResponse();

  /// successful operation
  factory GetOrderByIdResponse.response200(Order body) =>
      GetOrderByIdResponse200.response200(body);

  /// Invalid ID supplied
  factory GetOrderByIdResponse.response400() =>
      GetOrderByIdResponse400.response400();

  /// Order not found
  factory GetOrderByIdResponse.response404() =>
      GetOrderByIdResponse404.response404();

  R map<R>({
    required ResponseMap<GetOrderByIdResponse200, R> on200,
    required ResponseMap<GetOrderByIdResponse400, R> on400,
    required ResponseMap<GetOrderByIdResponse404, R> on404,
    ResponseMap<GetOrderByIdResponse, R>? onElse,
  }) {
    if (this is GetOrderByIdResponse200) {
      return on200((this as GetOrderByIdResponse200));
    } else if (this is GetOrderByIdResponse400) {
      return on400((this as GetOrderByIdResponse400));
    } else if (this is GetOrderByIdResponse404) {
      return on404((this as GetOrderByIdResponse404));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  successful operation
  @override
  Order requireSuccess() {
    if (this is GetOrderByIdResponse200) {
      return (this as GetOrderByIdResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class DeleteOrderResponse400 extends DeleteOrderResponse {
  /// Invalid ID supplied
  DeleteOrderResponse400.response400() : status = 400;

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

class DeleteOrderResponse404 extends DeleteOrderResponse {
  /// Order not found
  DeleteOrderResponse404.response404() : status = 404;

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

sealed class DeleteOrderResponse extends OpenApiResponse {
  DeleteOrderResponse();

  /// Invalid ID supplied
  factory DeleteOrderResponse.response400() =>
      DeleteOrderResponse400.response400();

  /// Order not found
  factory DeleteOrderResponse.response404() =>
      DeleteOrderResponse404.response404();

  R map<R>({
    required ResponseMap<DeleteOrderResponse400, R> on400,
    required ResponseMap<DeleteOrderResponse404, R> on404,
    ResponseMap<DeleteOrderResponse, R>? onElse,
  }) {
    if (this is DeleteOrderResponse400) {
      return on400((this as DeleteOrderResponse400));
    } else if (this is DeleteOrderResponse404) {
      return on404((this as DeleteOrderResponse404));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }
}

class CreateUserResponseDefault extends CreateUserResponse {
  /// successful operation
  CreateUserResponseDefault.responseDefault(int status) : status = status;

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

sealed class CreateUserResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  CreateUserResponse();

  /// successful operation
  factory CreateUserResponse.responseDefault(int status) =>
      CreateUserResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<CreateUserResponseDefault, R> onDefault,
    ResponseMap<CreateUserResponse, R>? onElse,
  }) {
    if (this is CreateUserResponseDefault) {
      return onDefault((this as CreateUserResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status default:  successful operation
  @override
  void requireSuccess() {
    if (this is CreateUserResponseDefault) {
      return;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class CreateUsersWithArrayInputResponseDefault
    extends CreateUsersWithArrayInputResponse {
  /// successful operation
  CreateUsersWithArrayInputResponseDefault.responseDefault(int status)
      : status = status;

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

sealed class CreateUsersWithArrayInputResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  CreateUsersWithArrayInputResponse();

  /// successful operation
  factory CreateUsersWithArrayInputResponse.responseDefault(int status) =>
      CreateUsersWithArrayInputResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<CreateUsersWithArrayInputResponseDefault, R> onDefault,
    ResponseMap<CreateUsersWithArrayInputResponse, R>? onElse,
  }) {
    if (this is CreateUsersWithArrayInputResponseDefault) {
      return onDefault((this as CreateUsersWithArrayInputResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status default:  successful operation
  @override
  void requireSuccess() {
    if (this is CreateUsersWithArrayInputResponseDefault) {
      return;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class CreateUsersWithListInputResponseDefault
    extends CreateUsersWithListInputResponse {
  /// successful operation
  CreateUsersWithListInputResponseDefault.responseDefault(int status)
      : status = status;

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

sealed class CreateUsersWithListInputResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  CreateUsersWithListInputResponse();

  /// successful operation
  factory CreateUsersWithListInputResponse.responseDefault(int status) =>
      CreateUsersWithListInputResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<CreateUsersWithListInputResponseDefault, R> onDefault,
    ResponseMap<CreateUsersWithListInputResponse, R>? onElse,
  }) {
    if (this is CreateUsersWithListInputResponseDefault) {
      return onDefault((this as CreateUsersWithListInputResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status default:  successful operation
  @override
  void requireSuccess() {
    if (this is CreateUsersWithListInputResponseDefault) {
      return;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class LoginUserResponse200 extends LoginUserResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  LoginUserResponse200.response200(this.body)
      : status = 200,
        bodyJson = {};

  @override
  final int status;

  final String body;

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
        'contentType': contentType,
      };
}

class LoginUserResponse400 extends LoginUserResponse {
  /// Invalid username/password supplied
  LoginUserResponse400.response400() : status = 400;

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

sealed class LoginUserResponse extends OpenApiResponse
    implements HasSuccessResponse<String> {
  LoginUserResponse();

  /// successful operation
  factory LoginUserResponse.response200(String body) =>
      LoginUserResponse200.response200(body);

  /// Invalid username/password supplied
  factory LoginUserResponse.response400() => LoginUserResponse400.response400();

  R map<R>({
    required ResponseMap<LoginUserResponse200, R> on200,
    required ResponseMap<LoginUserResponse400, R> on400,
    ResponseMap<LoginUserResponse, R>? onElse,
  }) {
    if (this is LoginUserResponse200) {
      return on200((this as LoginUserResponse200));
    } else if (this is LoginUserResponse400) {
      return on400((this as LoginUserResponse400));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  successful operation
  @override
  String requireSuccess() {
    if (this is LoginUserResponse200) {
      return (this as LoginUserResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class LogoutUserResponseDefault extends LogoutUserResponse {
  /// successful operation
  LogoutUserResponseDefault.responseDefault(int status) : status = status;

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

sealed class LogoutUserResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  LogoutUserResponse();

  /// successful operation
  factory LogoutUserResponse.responseDefault(int status) =>
      LogoutUserResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<LogoutUserResponseDefault, R> onDefault,
    ResponseMap<LogoutUserResponse, R>? onElse,
  }) {
    if (this is LogoutUserResponseDefault) {
      return onDefault((this as LogoutUserResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status default:  successful operation
  @override
  void requireSuccess() {
    if (this is LogoutUserResponseDefault) {
      return;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class GetUserByNameResponse200 extends GetUserByNameResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  GetUserByNameResponse200.response200(this.body)
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
        'contentType': contentType,
      };
}

class GetUserByNameResponse400 extends GetUserByNameResponse {
  /// Invalid username supplied
  GetUserByNameResponse400.response400() : status = 400;

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

class GetUserByNameResponse404 extends GetUserByNameResponse {
  /// User not found
  GetUserByNameResponse404.response404() : status = 404;

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

sealed class GetUserByNameResponse extends OpenApiResponse
    implements HasSuccessResponse<User> {
  GetUserByNameResponse();

  /// successful operation
  factory GetUserByNameResponse.response200(User body) =>
      GetUserByNameResponse200.response200(body);

  /// Invalid username supplied
  factory GetUserByNameResponse.response400() =>
      GetUserByNameResponse400.response400();

  /// User not found
  factory GetUserByNameResponse.response404() =>
      GetUserByNameResponse404.response404();

  R map<R>({
    required ResponseMap<GetUserByNameResponse200, R> on200,
    required ResponseMap<GetUserByNameResponse400, R> on400,
    required ResponseMap<GetUserByNameResponse404, R> on404,
    ResponseMap<GetUserByNameResponse, R>? onElse,
  }) {
    if (this is GetUserByNameResponse200) {
      return on200((this as GetUserByNameResponse200));
    } else if (this is GetUserByNameResponse400) {
      return on400((this as GetUserByNameResponse400));
    } else if (this is GetUserByNameResponse404) {
      return on404((this as GetUserByNameResponse404));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  successful operation
  @override
  User requireSuccess() {
    if (this is GetUserByNameResponse200) {
      return (this as GetUserByNameResponse200).body;
    } else {
      throw StateError('Expected success response, but got $this');
    }
  }
}

class UpdateUserResponse400 extends UpdateUserResponse {
  /// Invalid user supplied
  UpdateUserResponse400.response400() : status = 400;

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

class UpdateUserResponse404 extends UpdateUserResponse {
  /// User not found
  UpdateUserResponse404.response404() : status = 404;

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

sealed class UpdateUserResponse extends OpenApiResponse {
  UpdateUserResponse();

  /// Invalid user supplied
  factory UpdateUserResponse.response400() =>
      UpdateUserResponse400.response400();

  /// User not found
  factory UpdateUserResponse.response404() =>
      UpdateUserResponse404.response404();

  R map<R>({
    required ResponseMap<UpdateUserResponse400, R> on400,
    required ResponseMap<UpdateUserResponse404, R> on404,
    ResponseMap<UpdateUserResponse, R>? onElse,
  }) {
    if (this is UpdateUserResponse400) {
      return on400((this as UpdateUserResponse400));
    } else if (this is UpdateUserResponse404) {
      return on404((this as UpdateUserResponse404));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }
}

class DeleteUserResponse400 extends DeleteUserResponse {
  /// Invalid username supplied
  DeleteUserResponse400.response400() : status = 400;

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

class DeleteUserResponse404 extends DeleteUserResponse {
  /// User not found
  DeleteUserResponse404.response404() : status = 404;

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

sealed class DeleteUserResponse extends OpenApiResponse {
  DeleteUserResponse();

  /// Invalid username supplied
  factory DeleteUserResponse.response400() =>
      DeleteUserResponse400.response400();

  /// User not found
  factory DeleteUserResponse.response404() =>
      DeleteUserResponse404.response404();

  R map<R>({
    required ResponseMap<DeleteUserResponse400, R> on400,
    required ResponseMap<DeleteUserResponse404, R> on404,
    ResponseMap<DeleteUserResponse, R>? onElse,
  }) {
    if (this is DeleteUserResponse400) {
      return on400((this as DeleteUserResponse400));
    } else if (this is DeleteUserResponse404) {
      return on404((this as DeleteUserResponse404));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
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
    UpdatePetWithFormSchema body, {
    required int petId,
  });

  /// Deletes a pet
  /// delete: /pet/{petId}
  Future<DeletePetResponse> deletePet({
    String? apiKey,
    required int petId,
  });

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  Future<UploadFileResponse> uploadFile(
    _i1.Uint8List body, {
    required int petId,
  });

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
      List<User> body);

  /// Creates list of users with given input array
  /// post: /user/createWithList
  Future<CreateUsersWithListInputResponse> createUsersWithListInput(
      List<User> body);

  /// Logs user into the system
  /// get: /user/login
  Future<LoginUserResponse> loginUser({
    required String username,
    required String password,
  });

  /// Logs out current logged in user session
  /// get: /user/logout
  Future<LogoutUserResponse> logoutUser();

  /// Get user by user name
  /// get: /user/{username}
  Future<GetUserByNameResponse> getUserByName({required String username});

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  Future<UpdateUserResponse> updateUser(
    User body, {
    required String username,
  });

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  Future<DeleteUserResponse> deleteUser({required String username});
}

abstract class PetstoreClient implements OpenApiClient {
  factory PetstoreClient(
    Uri baseUri,
    OpenApiRequestSender requestSender,
  ) =>
      _PetstoreClientImpl._(
        baseUri,
        requestSender,
      );

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
    UpdatePetWithFormSchema body, {
    required int petId,
  });

  /// Deletes a pet
  /// delete: /pet/{petId}
  ///
  /// * [petId]: Pet id to delete
  Future<DeletePetResponse> deletePet({
    String? apiKey,
    required int petId,
  });

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  ///
  /// * [petId]: ID of pet to update
  Future<UploadFileResponse> uploadFile(
    _i1.Uint8List body, {
    required int petId,
  });

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
      List<User> body);

  /// Creates list of users with given input array
  /// post: /user/createWithList
  ///
  Future<CreateUsersWithListInputResponse> createUsersWithListInput(
      List<User> body);

  /// Logs user into the system
  /// get: /user/login
  ///
  /// * [username]: The user name for login
  /// * [password]: The password for login in clear text
  Future<LoginUserResponse> loginUser({
    required String username,
    required String password,
  });

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
  Future<UpdateUserResponse> updateUser(
    User body, {
    required String username,
  });

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  ///
  /// * [username]: The name that needs to be deleted
  Future<DeleteUserResponse> deleteUser({required String username});
}

class _PetstoreClientImpl extends OpenApiClientBase implements PetstoreClient {
  _PetstoreClientImpl._(
    this.baseUri,
    this.requestSender,
  );

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  /// Update an existing pet
  /// put: /pet
  ///
  @override
  Future<UpdatePetResponse> updatePet(Pet body) async {
    final request = OpenApiClientRequest(
      'put',
      '/pet',
      [],
    );
    request.setHeader(
      'content-type',
      'application/json',
    );
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(
      request,
      {
        '400': (OpenApiClientResponse response) async =>
            UpdatePetResponse400.response400(),
        '404': (OpenApiClientResponse response) async =>
            UpdatePetResponse404.response404(),
        '405': (OpenApiClientResponse response) async =>
            UpdatePetResponse405.response405(),
      },
    );
  }

  /// Add a new pet to the store
  /// post: /pet
  ///
  @override
  Future<AddPetResponse> addPet(Pet body) async {
    final request = OpenApiClientRequest(
      'post',
      '/pet',
      [],
    );
    request.setHeader(
      'content-type',
      'application/json',
    );
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(
      request,
      {
        '405': (OpenApiClientResponse response) async =>
            AddPetResponse405.response405()
      },
    );
  }

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  /// get: /pet/findByStatus
  ///
  /// * [status]: Status values that need to be considered for filter
  @override
  Future<FindPetsByStatusResponse> findPetsByStatus(
      {required List<FindPetsByStatus> status}) async {
    final request = OpenApiClientRequest(
      'get',
      '/pet/findByStatus',
      [],
    );
    request.addQueryParameter(
      'status',
      status.map((e) => e.name),
    );
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            FindPetsByStatusResponse200.response200(
                (await response.responseBodyJsonDynamic() as List<dynamic>)
                    .map((item) => Pet.fromJson((item as Map<String, dynamic>)))
                    .toList()),
        '400': (OpenApiClientResponse response) async =>
            FindPetsByStatusResponse400.response400(),
      },
    );
  }

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  ///
  /// * [tags]: Tags to filter by
  @override
  Future<FindPetsByTagsResponse> findPetsByTags(
      {required List<String> tags}) async {
    final request = OpenApiClientRequest(
      'get',
      '/pet/findByTags',
      [],
    );
    request.addQueryParameter(
      'tags',
      tags,
    );
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            FindPetsByTagsResponse200.response200(
                (await response.responseBodyJsonDynamic() as List<dynamic>)
                    .map((item) => Pet.fromJson((item as Map<String, dynamic>)))
                    .toList()),
        '400': (OpenApiClientResponse response) async =>
            FindPetsByTagsResponse400.response400(),
      },
    );
  }

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  ///
  /// * [petId]: ID of pet to return
  @override
  Future<GetPetByIdResponse> getPetById({required int petId}) async {
    final request = OpenApiClientRequest(
      'get',
      '/pet/{petId}',
      [],
    );
    request.addPathParameter(
      'petId',
      encodeInt(petId),
    );
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            GetPetByIdResponse200.response200(
                Pet.fromJson(await response.responseBodyJson())),
        '400': (OpenApiClientResponse response) async =>
            GetPetByIdResponse400.response400(),
        '404': (OpenApiClientResponse response) async =>
            GetPetByIdResponse404.response404(),
      },
    );
  }

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  ///
  /// * [petId]: ID of pet that needs to be updated
  @override
  Future<UpdatePetWithFormResponse> updatePetWithForm(
    UpdatePetWithFormSchema body, {
    required int petId,
  }) async {
    final request = OpenApiClientRequest(
      'post',
      '/pet/{petId}',
      [],
    );
    request.addPathParameter(
      'petId',
      encodeInt(petId),
    );
    request.setHeader(
      'content-type',
      'application/x-www-form-urlencoded',
    );
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(
      request,
      {
        '405': (OpenApiClientResponse response) async =>
            UpdatePetWithFormResponse405.response405()
      },
    );
  }

  /// Deletes a pet
  /// delete: /pet/{petId}
  ///
  /// * [petId]: Pet id to delete
  @override
  Future<DeletePetResponse> deletePet({
    String? apiKey,
    required int petId,
  }) async {
    final request = OpenApiClientRequest(
      'delete',
      '/pet/{petId}',
      [],
    );
    request.addHeaderParameter(
      'api_key',
      encodeString(apiKey),
    );
    request.addPathParameter(
      'petId',
      encodeInt(petId),
    );
    return await sendRequest(
      request,
      {
        '400': (OpenApiClientResponse response) async =>
            DeletePetResponse400.response400(),
        '404': (OpenApiClientResponse response) async =>
            DeletePetResponse404.response404(),
      },
    );
  }

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  ///
  /// * [petId]: ID of pet to update
  @override
  Future<UploadFileResponse> uploadFile(
    _i1.Uint8List body, {
    required int petId,
  }) async {
    final request = OpenApiClientRequest(
      'post',
      '/pet/{petId}/uploadImage',
      [],
    );
    request.addPathParameter(
      'petId',
      encodeInt(petId),
    );
    request.setHeader(
      'content-type',
      'application/octet-stream',
    );
    request.setBody(OpenApiClientRequestBodyBinary(body));
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            UploadFileResponse200.response200(
                ApiResponse.fromJson(await response.responseBodyJson()))
      },
    );
  }

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  ///
  @override
  Future<GetInventoryResponse> getInventory() async {
    final request = OpenApiClientRequest(
      'get',
      '/store/inventory',
      [],
    );
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            GetInventoryResponse200.response200(
                GetInventoryResponseBody200.fromJson(
                    await response.responseBodyJson()))
      },
    );
  }

  /// Place an order for a pet
  /// post: /store/order
  ///
  @override
  Future<PlaceOrderResponse> placeOrder(Order body) async {
    final request = OpenApiClientRequest(
      'post',
      '/store/order',
      [],
    );
    request.setHeader(
      'content-type',
      'application/json',
    );
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            PlaceOrderResponse200.response200(
                Order.fromJson(await response.responseBodyJson())),
        '400': (OpenApiClientResponse response) async =>
            PlaceOrderResponse400.response400(),
      },
    );
  }

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  ///
  /// * [orderId]: ID of pet that needs to be fetched
  @override
  Future<GetOrderByIdResponse> getOrderById({required int orderId}) async {
    final request = OpenApiClientRequest(
      'get',
      '/store/order/{orderId}',
      [],
    );
    request.addPathParameter(
      'orderId',
      encodeInt(orderId),
    );
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            GetOrderByIdResponse200.response200(
                Order.fromJson(await response.responseBodyJson())),
        '400': (OpenApiClientResponse response) async =>
            GetOrderByIdResponse400.response400(),
        '404': (OpenApiClientResponse response) async =>
            GetOrderByIdResponse404.response404(),
      },
    );
  }

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  ///
  /// * [orderId]: ID of the order that needs to be deleted
  @override
  Future<DeleteOrderResponse> deleteOrder({required int orderId}) async {
    final request = OpenApiClientRequest(
      'delete',
      '/store/order/{orderId}',
      [],
    );
    request.addPathParameter(
      'orderId',
      encodeInt(orderId),
    );
    return await sendRequest(
      request,
      {
        '400': (OpenApiClientResponse response) async =>
            DeleteOrderResponse400.response400(),
        '404': (OpenApiClientResponse response) async =>
            DeleteOrderResponse404.response404(),
      },
    );
  }

  /// Create user
  /// This can only be done by the logged in user.
  /// post: /user
  ///
  @override
  Future<CreateUserResponse> createUser(User body) async {
    final request = OpenApiClientRequest(
      'post',
      '/user',
      [],
    );
    request.setHeader(
      'content-type',
      'application/json',
    );
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(
      request,
      {
        'default': (OpenApiClientResponse response) async =>
            CreateUserResponseDefault.responseDefault(response.status)
      },
    );
  }

  /// Creates list of users with given input array
  /// post: /user/createWithArray
  ///
  @override
  Future<CreateUsersWithArrayInputResponse> createUsersWithArrayInput(
      List<User> body) async {
    final request = OpenApiClientRequest(
      'post',
      '/user/createWithArray',
      [],
    );
    request.setHeader(
      'content-type',
      'application/json',
    );
    request.setBody(OpenApiClientRequestBodyJson(body));
    return await sendRequest(
      request,
      {
        'default': (OpenApiClientResponse response) async =>
            CreateUsersWithArrayInputResponseDefault.responseDefault(
                response.status)
      },
    );
  }

  /// Creates list of users with given input array
  /// post: /user/createWithList
  ///
  @override
  Future<CreateUsersWithListInputResponse> createUsersWithListInput(
      List<User> body) async {
    final request = OpenApiClientRequest(
      'post',
      '/user/createWithList',
      [],
    );
    request.setHeader(
      'content-type',
      'application/json',
    );
    request.setBody(OpenApiClientRequestBodyJson(body));
    return await sendRequest(
      request,
      {
        'default': (OpenApiClientResponse response) async =>
            CreateUsersWithListInputResponseDefault.responseDefault(
                response.status)
      },
    );
  }

  /// Logs user into the system
  /// get: /user/login
  ///
  /// * [username]: The user name for login
  /// * [password]: The password for login in clear text
  @override
  Future<LoginUserResponse> loginUser({
    required String username,
    required String password,
  }) async {
    final request = OpenApiClientRequest(
      'get',
      '/user/login',
      [],
    );
    request.addQueryParameter(
      'username',
      encodeString(username),
    );
    request.addQueryParameter(
      'password',
      encodeString(password),
    );
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            LoginUserResponse200.response200(
                (await response.responseBodyJsonDynamic() as String)),
        '400': (OpenApiClientResponse response) async =>
            LoginUserResponse400.response400(),
      },
    );
  }

  /// Logs out current logged in user session
  /// get: /user/logout
  ///
  @override
  Future<LogoutUserResponse> logoutUser() async {
    final request = OpenApiClientRequest(
      'get',
      '/user/logout',
      [],
    );
    return await sendRequest(
      request,
      {
        'default': (OpenApiClientResponse response) async =>
            LogoutUserResponseDefault.responseDefault(response.status)
      },
    );
  }

  /// Get user by user name
  /// get: /user/{username}
  ///
  /// * [username]: The name that needs to be fetched. Use user1 for testing.
  @override
  Future<GetUserByNameResponse> getUserByName(
      {required String username}) async {
    final request = OpenApiClientRequest(
      'get',
      '/user/{username}',
      [],
    );
    request.addPathParameter(
      'username',
      encodeString(username),
    );
    return await sendRequest(
      request,
      {
        '200': (OpenApiClientResponse response) async =>
            GetUserByNameResponse200.response200(
                User.fromJson(await response.responseBodyJson())),
        '400': (OpenApiClientResponse response) async =>
            GetUserByNameResponse400.response400(),
        '404': (OpenApiClientResponse response) async =>
            GetUserByNameResponse404.response404(),
      },
    );
  }

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  ///
  /// * [username]: name that need to be updated
  @override
  Future<UpdateUserResponse> updateUser(
    User body, {
    required String username,
  }) async {
    final request = OpenApiClientRequest(
      'put',
      '/user/{username}',
      [],
    );
    request.addPathParameter(
      'username',
      encodeString(username),
    );
    request.setHeader(
      'content-type',
      'application/json',
    );
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return await sendRequest(
      request,
      {
        '400': (OpenApiClientResponse response) async =>
            UpdateUserResponse400.response400(),
        '404': (OpenApiClientResponse response) async =>
            UpdateUserResponse404.response404(),
      },
    );
  }

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  ///
  /// * [username]: The name that needs to be deleted
  @override
  Future<DeleteUserResponse> deleteUser({required String username}) async {
    final request = OpenApiClientRequest(
      'delete',
      '/user/{username}',
      [],
    );
    request.addPathParameter(
      'username',
      encodeString(username),
    );
    return await sendRequest(
      request,
      {
        '400': (OpenApiClientResponse response) async =>
            DeleteUserResponse400.response400(),
        '404': (OpenApiClientResponse response) async =>
            DeleteUserResponse404.response404(),
      },
    );
  }
}

class PetstoreUrlResolve with OpenApiUrlEncodeMixin {
  /// Update an existing pet
  /// put: /pet
  ///
  OpenApiClientRequest updatePet() {
    final request = OpenApiClientRequest(
      'put',
      '/pet',
      [],
    );
    return request;
  }

  /// Add a new pet to the store
  /// post: /pet
  ///
  OpenApiClientRequest addPet() {
    final request = OpenApiClientRequest(
      'post',
      '/pet',
      [],
    );
    return request;
  }

  /// Finds Pets by status
  /// Multiple status values can be provided with comma separated strings
  /// get: /pet/findByStatus
  ///
  /// * [status]: Status values that need to be considered for filter
  OpenApiClientRequest findPetsByStatus(
      {required List<FindPetsByStatus> status}) {
    final request = OpenApiClientRequest(
      'get',
      '/pet/findByStatus',
      [],
    );
    request.addQueryParameter(
      'status',
      status.map((e) => e.name),
    );
    return request;
  }

  /// Finds Pets by tags
  /// Muliple tags can be provided with comma separated strings. Use\ \ tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  ///
  /// * [tags]: Tags to filter by
  OpenApiClientRequest findPetsByTags({required List<String> tags}) {
    final request = OpenApiClientRequest(
      'get',
      '/pet/findByTags',
      [],
    );
    request.addQueryParameter(
      'tags',
      tags,
    );
    return request;
  }

  /// Find pet by ID
  /// Returns a single pet
  /// get: /pet/{petId}
  ///
  /// * [petId]: ID of pet to return
  OpenApiClientRequest getPetById({required int petId}) {
    final request = OpenApiClientRequest(
      'get',
      '/pet/{petId}',
      [],
    );
    request.addPathParameter(
      'petId',
      encodeInt(petId),
    );
    return request;
  }

  /// Updates a pet in the store with form data
  /// post: /pet/{petId}
  ///
  /// * [petId]: ID of pet that needs to be updated
  OpenApiClientRequest updatePetWithForm({required int petId}) {
    final request = OpenApiClientRequest(
      'post',
      '/pet/{petId}',
      [],
    );
    request.addPathParameter(
      'petId',
      encodeInt(petId),
    );
    return request;
  }

  /// Deletes a pet
  /// delete: /pet/{petId}
  ///
  /// * [petId]: Pet id to delete
  OpenApiClientRequest deletePet({
    String? apiKey,
    required int petId,
  }) {
    final request = OpenApiClientRequest(
      'delete',
      '/pet/{petId}',
      [],
    );
    request.addHeaderParameter(
      'api_key',
      encodeString(apiKey),
    );
    request.addPathParameter(
      'petId',
      encodeInt(petId),
    );
    return request;
  }

  /// uploads an image
  /// post: /pet/{petId}/uploadImage
  ///
  /// * [petId]: ID of pet to update
  OpenApiClientRequest uploadFile({required int petId}) {
    final request = OpenApiClientRequest(
      'post',
      '/pet/{petId}/uploadImage',
      [],
    );
    request.addPathParameter(
      'petId',
      encodeInt(petId),
    );
    return request;
  }

  /// Returns pet inventories by status
  /// Returns a map of status codes to quantities
  /// get: /store/inventory
  ///
  OpenApiClientRequest getInventory() {
    final request = OpenApiClientRequest(
      'get',
      '/store/inventory',
      [],
    );
    return request;
  }

  /// Place an order for a pet
  /// post: /store/order
  ///
  OpenApiClientRequest placeOrder() {
    final request = OpenApiClientRequest(
      'post',
      '/store/order',
      [],
    );
    return request;
  }

  /// Find purchase order by ID
  /// For valid response try integer IDs with value >= 1 and <= 10.\ \ Other values will generated exceptions
  /// get: /store/order/{orderId}
  ///
  /// * [orderId]: ID of pet that needs to be fetched
  OpenApiClientRequest getOrderById({required int orderId}) {
    final request = OpenApiClientRequest(
      'get',
      '/store/order/{orderId}',
      [],
    );
    request.addPathParameter(
      'orderId',
      encodeInt(orderId),
    );
    return request;
  }

  /// Delete purchase order by ID
  /// For valid response try integer IDs with positive integer value.\ \ Negative or non-integer values will generate API errors
  /// delete: /store/order/{orderId}
  ///
  /// * [orderId]: ID of the order that needs to be deleted
  OpenApiClientRequest deleteOrder({required int orderId}) {
    final request = OpenApiClientRequest(
      'delete',
      '/store/order/{orderId}',
      [],
    );
    request.addPathParameter(
      'orderId',
      encodeInt(orderId),
    );
    return request;
  }

  /// Create user
  /// This can only be done by the logged in user.
  /// post: /user
  ///
  OpenApiClientRequest createUser() {
    final request = OpenApiClientRequest(
      'post',
      '/user',
      [],
    );
    return request;
  }

  /// Creates list of users with given input array
  /// post: /user/createWithArray
  ///
  OpenApiClientRequest createUsersWithArrayInput() {
    final request = OpenApiClientRequest(
      'post',
      '/user/createWithArray',
      [],
    );
    return request;
  }

  /// Creates list of users with given input array
  /// post: /user/createWithList
  ///
  OpenApiClientRequest createUsersWithListInput() {
    final request = OpenApiClientRequest(
      'post',
      '/user/createWithList',
      [],
    );
    return request;
  }

  /// Logs user into the system
  /// get: /user/login
  ///
  /// * [username]: The user name for login
  /// * [password]: The password for login in clear text
  OpenApiClientRequest loginUser({
    required String username,
    required String password,
  }) {
    final request = OpenApiClientRequest(
      'get',
      '/user/login',
      [],
    );
    request.addQueryParameter(
      'username',
      encodeString(username),
    );
    request.addQueryParameter(
      'password',
      encodeString(password),
    );
    return request;
  }

  /// Logs out current logged in user session
  /// get: /user/logout
  ///
  OpenApiClientRequest logoutUser() {
    final request = OpenApiClientRequest(
      'get',
      '/user/logout',
      [],
    );
    return request;
  }

  /// Get user by user name
  /// get: /user/{username}
  ///
  /// * [username]: The name that needs to be fetched. Use user1 for testing.
  OpenApiClientRequest getUserByName({required String username}) {
    final request = OpenApiClientRequest(
      'get',
      '/user/{username}',
      [],
    );
    request.addPathParameter(
      'username',
      encodeString(username),
    );
    return request;
  }

  /// Updated user
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  ///
  /// * [username]: name that need to be updated
  OpenApiClientRequest updateUser({required String username}) {
    final request = OpenApiClientRequest(
      'put',
      '/user/{username}',
      [],
    );
    request.addPathParameter(
      'username',
      encodeString(username),
    );
    return request;
  }

  /// Delete user
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  ///
  /// * [username]: The name that needs to be deleted
  OpenApiClientRequest deleteUser({required String username}) {
    final request = OpenApiClientRequest(
      'delete',
      '/user/{username}',
      [],
    );
    request.addPathParameter(
      'username',
      encodeString(username),
    );
    return request;
  }
}

class PetstoreRouter extends OpenApiServerRouterBase {
  PetstoreRouter(this.impl);

  final ApiEndpointProvider<Petstore> impl;

  @override
  void configure() {
    addRoute(
      '/pet',
      'put',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async =>
              impl.updatePet(Pet.fromJson(await request.readJsonBody())),
        );
      },
      security: [],
    );
    addRoute(
      '/pet',
      'post',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async =>
              impl.addPet(Pet.fromJson(await request.readJsonBody())),
        );
      },
      security: [],
    );
    addRoute(
      '/pet/findByStatus',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.findPetsByStatus(
              status: paramRequired(
            name: 'status',
            value: request.queryParameter('status'),
            decode: (value) =>
                value.map((e) => FindPetsByStatusExt.fromName(e)).toList(),
          )),
        );
      },
      security: [],
    );
    addRoute(
      '/pet/findByTags',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.findPetsByTags(
              tags: paramRequired(
            name: 'tags',
            value: request.queryParameter('tags'),
            decode: (value) => value,
          )),
        );
      },
      security: [],
    );
    addRoute(
      '/pet/{petId}',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.getPetById(
              petId: paramRequired(
            name: 'petId',
            value: request.pathParameter('petId'),
            decode: (value) => paramToInt(value),
          )),
        );
      },
      security: [],
    );
    addRoute(
      '/pet/{petId}',
      'post',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.updatePetWithForm(
            UpdatePetWithFormSchema.fromJson(
                await request.readUrlEncodedBodyFlat()),
            petId: paramRequired(
              name: 'petId',
              value: request.pathParameter('petId'),
              decode: (value) => paramToInt(value),
            ),
          ),
        );
      },
      security: [],
    );
    addRoute(
      '/pet/{petId}',
      'delete',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.deletePet(
            apiKey: paramOpt(
              name: 'api_key',
              value: request.headerParameter('api_key'),
              decode: (value) => paramToString(value),
            ),
            petId: paramRequired(
              name: 'petId',
              value: request.pathParameter('petId'),
              decode: (value) => paramToInt(value),
            ),
          ),
        );
      },
      security: [],
    );
    addRoute(
      '/pet/{petId}/uploadImage',
      'post',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.uploadFile(
            await request.readBodyBytes(),
            petId: paramRequired(
              name: 'petId',
              value: request.pathParameter('petId'),
              decode: (value) => paramToInt(value),
            ),
          ),
        );
      },
      security: [],
    );
    addRoute(
      '/store/inventory',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.getInventory(),
        );
      },
      security: [],
    );
    addRoute(
      '/store/order',
      'post',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async =>
              impl.placeOrder(Order.fromJson(await request.readJsonBody())),
        );
      },
      security: [],
    );
    addRoute(
      '/store/order/{orderId}',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.getOrderById(
              orderId: paramRequired(
            name: 'orderId',
            value: request.pathParameter('orderId'),
            decode: (value) => paramToInt(value),
          )),
        );
      },
      security: [],
    );
    addRoute(
      '/store/order/{orderId}',
      'delete',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.deleteOrder(
              orderId: paramRequired(
            name: 'orderId',
            value: request.pathParameter('orderId'),
            decode: (value) => paramToInt(value),
          )),
        );
      },
      security: [],
    );
    addRoute(
      '/user',
      'post',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async =>
              impl.createUser(User.fromJson(await request.readJsonBody())),
        );
      },
      security: [],
    );
    addRoute(
      '/user/createWithArray',
      'post',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.createUsersWithArrayInput(
              (await request.readJsonBodyDynamic() as List<User>)),
        );
      },
      security: [],
    );
    addRoute(
      '/user/createWithList',
      'post',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.createUsersWithListInput(
              (await request.readJsonBodyDynamic() as List<User>)),
        );
      },
      security: [],
    );
    addRoute(
      '/user/login',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.loginUser(
            username: paramRequired(
              name: 'username',
              value: request.queryParameter('username'),
              decode: (value) => paramToString(value),
            ),
            password: paramRequired(
              name: 'password',
              value: request.queryParameter('password'),
              decode: (value) => paramToString(value),
            ),
          ),
        );
      },
      security: [],
    );
    addRoute(
      '/user/logout',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.logoutUser(),
        );
      },
      security: [],
    );
    addRoute(
      '/user/{username}',
      'get',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.getUserByName(
              username: paramRequired(
            name: 'username',
            value: request.pathParameter('username'),
            decode: (value) => paramToString(value),
          )),
        );
      },
      security: [],
    );
    addRoute(
      '/user/{username}',
      'put',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.updateUser(
            User.fromJson(await request.readJsonBody()),
            username: paramRequired(
              name: 'username',
              value: request.pathParameter('username'),
              decode: (value) => paramToString(value),
            ),
          ),
        );
      },
      security: [],
    );
    addRoute(
      '/user/{username}',
      'delete',
      (OpenApiRequest request) async {
        return await impl.invoke(
          request,
          (Petstore impl) async => impl.deleteUser(
              username: paramRequired(
            name: 'username',
            value: request.pathParameter('username'),
            decode: (value) => paramToString(value),
          )),
        );
      },
      security: [],
    );
  }
}

class SecuritySchemes {}

T _throwStateError<T>(String message) => throw StateError(message);
