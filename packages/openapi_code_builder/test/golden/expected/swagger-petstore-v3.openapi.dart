// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals, library_private_types_in_public_api, annotate_overrides, sort_unnamed_constructors_first, unnecessary_import

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i1;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:openapi_base/openapi_base.dart';
part 'swagger-petstore-v3.openapi.g.dart';
part 'swagger-petstore-v3.openapi.freezed.dart';

@JsonEnum(alwaysCreate: true)
enum OrderStatus {
  @JsonValue('placed')
  placed,
  @JsonValue('approved')
  approved,
  @JsonValue('delivered')
  delivered,
}

extension OrderStatusExt on OrderStatus {
  static OrderStatus fromName(String name) {
    return $enumDecode(_$OrderStatusEnumMap, name);
  }

  String get jsonValue =>
      _$OrderStatusEnumMap[this] ?? (() => throw StateError('Invalid enum.'))();
}

@freezed
sealed class Order with _$Order implements OpenApiContent {
  const Order._();

  const factory Order({
    @JsonKey(name: 'id', includeIfNull: false) int? id,
    @JsonKey(name: 'petId', includeIfNull: false) int? petId,
    @JsonKey(name: 'quantity', includeIfNull: false) int? quantity,
    @JsonKey(name: 'shipDate', includeIfNull: false) DateTime? shipDate,
    @JsonKey(name: 'status', includeIfNull: false) OrderStatus? status,
    @JsonKey(name: 'complete', includeIfNull: false) bool? complete,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> jsonMap) =>
      _$OrderFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@freezed
sealed class Category with _$Category implements OpenApiContent {
  const Category._();

  const factory Category({
    @JsonKey(name: 'id', includeIfNull: false) int? id,
    @JsonKey(name: 'name', includeIfNull: false) String? name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> jsonMap) =>
      _$CategoryFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@freezed
sealed class User with _$User implements OpenApiContent {
  const User._();

  const factory User({
    @JsonKey(name: 'id', includeIfNull: false) int? id,
    @JsonKey(name: 'username', includeIfNull: false) String? username,
    @JsonKey(name: 'firstName', includeIfNull: false) String? firstName,
    @JsonKey(name: 'lastName', includeIfNull: false) String? lastName,
    @JsonKey(name: 'email', includeIfNull: false) String? email,
    @JsonKey(name: 'password', includeIfNull: false) String? password,
    @JsonKey(name: 'phone', includeIfNull: false) String? phone,
    @JsonKey(name: 'userStatus', includeIfNull: false) int? userStatus,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> jsonMap) =>
      _$UserFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@freezed
sealed class Tag with _$Tag implements OpenApiContent {
  const Tag._();

  const factory Tag({
    @JsonKey(name: 'id', includeIfNull: false) int? id,
    @JsonKey(name: 'name', includeIfNull: false) String? name,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> jsonMap) => _$TagFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@JsonEnum(alwaysCreate: true)
enum PetStatus {
  @JsonValue('available')
  available,
  @JsonValue('pending')
  pending,
  @JsonValue('sold')
  sold,
}

extension PetStatusExt on PetStatus {
  static PetStatus fromName(String name) {
    return $enumDecode(_$PetStatusEnumMap, name);
  }

  String get jsonValue =>
      _$PetStatusEnumMap[this] ?? (() => throw StateError('Invalid enum.'))();
}

@freezed
sealed class Pet with _$Pet implements OpenApiContent {
  const Pet._();

  const factory Pet({
    @JsonKey(name: 'id', includeIfNull: false) int? id,
    @JsonKey(name: 'name', includeIfNull: false) required String name,
    @JsonKey(name: 'category', includeIfNull: false) Category? category,
    @JsonKey(name: 'photoUrls', includeIfNull: false)
    required List<String> photoUrls,
    @JsonKey(name: 'tags', includeIfNull: false) List<Tag>? tags,
    @JsonKey(name: 'status', includeIfNull: false) PetStatus? status,
  }) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> jsonMap) => _$PetFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

@freezed
sealed class ApiResponse with _$ApiResponse implements OpenApiContent {
  const ApiResponse._();

  const factory ApiResponse({
    @JsonKey(name: 'code', includeIfNull: false) int? code,
    @JsonKey(name: 'type', includeIfNull: false) String? type,
    @JsonKey(name: 'message', includeIfNull: false) String? message,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> jsonMap) =>
      _$ApiResponseFromJson(jsonMap);

  @override
  String toString() => toJson().toString();
}

class UpdatePetResponse200 extends UpdatePetResponse
    implements OpenApiResponseBodyJson {
  /// Successful operation
  UpdatePetResponse200.response200(this.body)
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

class UpdatePetResponse422 extends UpdatePetResponse {
  /// Validation exception
  UpdatePetResponse422.response422() : status = 422;

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

class UpdatePetResponseDefault extends UpdatePetResponse {
  /// Unexpected error
  UpdatePetResponseDefault.responseDefault(int status) : status = status;

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

sealed class UpdatePetResponse extends OpenApiResponse
    implements HasSuccessResponse<Pet> {
  UpdatePetResponse();

  /// Successful operation
  factory UpdatePetResponse.response200(Pet body) =>
      UpdatePetResponse200.response200(body);

  /// Invalid ID supplied
  factory UpdatePetResponse.response400() => UpdatePetResponse400.response400();

  /// Pet not found
  factory UpdatePetResponse.response404() => UpdatePetResponse404.response404();

  /// Validation exception
  factory UpdatePetResponse.response422() => UpdatePetResponse422.response422();

  /// Unexpected error
  factory UpdatePetResponse.responseDefault(int status) =>
      UpdatePetResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<UpdatePetResponse200, R> on200,
    required ResponseMap<UpdatePetResponse400, R> on400,
    required ResponseMap<UpdatePetResponse404, R> on404,
    required ResponseMap<UpdatePetResponse422, R> on422,
    required ResponseMap<UpdatePetResponseDefault, R> onDefault,
    ResponseMap<UpdatePetResponse, R>? onElse,
  }) {
    if (this is UpdatePetResponse200) {
      return on200((this as UpdatePetResponse200));
    } else if (this is UpdatePetResponse400) {
      return on400((this as UpdatePetResponse400));
    } else if (this is UpdatePetResponse404) {
      return on404((this as UpdatePetResponse404));
    } else if (this is UpdatePetResponse422) {
      return on422((this as UpdatePetResponse422));
    } else if (this is UpdatePetResponseDefault) {
      return onDefault((this as UpdatePetResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  Successful operation
  @override
  Pet requireSuccess() {
    if (this is UpdatePetResponse200) {
      return (this as UpdatePetResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class AddPetResponse200 extends AddPetResponse
    implements OpenApiResponseBodyJson {
  /// Successful operation
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

class AddPetResponse400 extends AddPetResponse {
  /// Invalid input
  AddPetResponse400.response400() : status = 400;

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

class AddPetResponse422 extends AddPetResponse {
  /// Validation exception
  AddPetResponse422.response422() : status = 422;

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

class AddPetResponseDefault extends AddPetResponse {
  /// Unexpected error
  AddPetResponseDefault.responseDefault(int status) : status = status;

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

sealed class AddPetResponse extends OpenApiResponse
    implements HasSuccessResponse<Pet> {
  AddPetResponse();

  /// Successful operation
  factory AddPetResponse.response200(Pet body) =>
      AddPetResponse200.response200(body);

  /// Invalid input
  factory AddPetResponse.response400() => AddPetResponse400.response400();

  /// Validation exception
  factory AddPetResponse.response422() => AddPetResponse422.response422();

  /// Unexpected error
  factory AddPetResponse.responseDefault(int status) =>
      AddPetResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<AddPetResponse200, R> on200,
    required ResponseMap<AddPetResponse400, R> on400,
    required ResponseMap<AddPetResponse422, R> on422,
    required ResponseMap<AddPetResponseDefault, R> onDefault,
    ResponseMap<AddPetResponse, R>? onElse,
  }) {
    if (this is AddPetResponse200) {
      return on200((this as AddPetResponse200));
    } else if (this is AddPetResponse400) {
      return on400((this as AddPetResponse400));
    } else if (this is AddPetResponse422) {
      return on422((this as AddPetResponse422));
    } else if (this is AddPetResponseDefault) {
      return onDefault((this as AddPetResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  Successful operation
  @override
  Pet requireSuccess() {
    if (this is AddPetResponse200) {
      return (this as AddPetResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class FindPetsByStatusResponse200 extends FindPetsByStatusResponse
    implements OpenApiResponseBodyJsonValue {
  /// successful operation
  FindPetsByStatusResponse200.response200(this.body)
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

class FindPetsByStatusResponseDefault extends FindPetsByStatusResponse {
  /// Unexpected error
  FindPetsByStatusResponseDefault.responseDefault(int status) : status = status;

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

  /// Unexpected error
  factory FindPetsByStatusResponse.responseDefault(int status) =>
      FindPetsByStatusResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<FindPetsByStatusResponse200, R> on200,
    required ResponseMap<FindPetsByStatusResponse400, R> on400,
    required ResponseMap<FindPetsByStatusResponseDefault, R> onDefault,
    ResponseMap<FindPetsByStatusResponse, R>? onElse,
  }) {
    if (this is FindPetsByStatusResponse200) {
      return on200((this as FindPetsByStatusResponse200));
    } else if (this is FindPetsByStatusResponse400) {
      return on400((this as FindPetsByStatusResponse400));
    } else if (this is FindPetsByStatusResponseDefault) {
      return onDefault((this as FindPetsByStatusResponseDefault));
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
      throw OpenApiRequireSuccessException(this);
    }
  }
}

@JsonEnum(alwaysCreate: true)
enum FindPetsByStatus {
  @JsonValue('available')
  available,
  @JsonValue('pending')
  pending,
  @JsonValue('sold')
  sold,
}

extension FindPetsByStatusExt on FindPetsByStatus {
  static FindPetsByStatus fromName(String name) {
    return $enumDecode(_$FindPetsByStatusEnumMap, name);
  }

  String get jsonValue =>
      _$FindPetsByStatusEnumMap[this] ??
      (() => throw StateError('Invalid enum.'))();
}

class FindPetsByTagsResponse200 extends FindPetsByTagsResponse
    implements OpenApiResponseBodyJsonValue {
  /// successful operation
  FindPetsByTagsResponse200.response200(this.body)
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

class FindPetsByTagsResponseDefault extends FindPetsByTagsResponse {
  /// Unexpected error
  FindPetsByTagsResponseDefault.responseDefault(int status) : status = status;

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

  /// Unexpected error
  factory FindPetsByTagsResponse.responseDefault(int status) =>
      FindPetsByTagsResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<FindPetsByTagsResponse200, R> on200,
    required ResponseMap<FindPetsByTagsResponse400, R> on400,
    required ResponseMap<FindPetsByTagsResponseDefault, R> onDefault,
    ResponseMap<FindPetsByTagsResponse, R>? onElse,
  }) {
    if (this is FindPetsByTagsResponse200) {
      return on200((this as FindPetsByTagsResponse200));
    } else if (this is FindPetsByTagsResponse400) {
      return on400((this as FindPetsByTagsResponse400));
    } else if (this is FindPetsByTagsResponseDefault) {
      return onDefault((this as FindPetsByTagsResponseDefault));
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
      throw OpenApiRequireSuccessException(this);
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

class GetPetByIdResponseDefault extends GetPetByIdResponse {
  /// Unexpected error
  GetPetByIdResponseDefault.responseDefault(int status) : status = status;

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

  /// Unexpected error
  factory GetPetByIdResponse.responseDefault(int status) =>
      GetPetByIdResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<GetPetByIdResponse200, R> on200,
    required ResponseMap<GetPetByIdResponse400, R> on400,
    required ResponseMap<GetPetByIdResponse404, R> on404,
    required ResponseMap<GetPetByIdResponseDefault, R> onDefault,
    ResponseMap<GetPetByIdResponse, R>? onElse,
  }) {
    if (this is GetPetByIdResponse200) {
      return on200((this as GetPetByIdResponse200));
    } else if (this is GetPetByIdResponse400) {
      return on400((this as GetPetByIdResponse400));
    } else if (this is GetPetByIdResponse404) {
      return on404((this as GetPetByIdResponse404));
    } else if (this is GetPetByIdResponseDefault) {
      return onDefault((this as GetPetByIdResponseDefault));
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
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class UpdatePetWithFormResponse200 extends UpdatePetWithFormResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  UpdatePetWithFormResponse200.response200(this.body)
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

class UpdatePetWithFormResponse400 extends UpdatePetWithFormResponse {
  /// Invalid input
  UpdatePetWithFormResponse400.response400() : status = 400;

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

class UpdatePetWithFormResponseDefault extends UpdatePetWithFormResponse {
  /// Unexpected error
  UpdatePetWithFormResponseDefault.responseDefault(int status)
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

sealed class UpdatePetWithFormResponse extends OpenApiResponse
    implements HasSuccessResponse<Pet> {
  UpdatePetWithFormResponse();

  /// successful operation
  factory UpdatePetWithFormResponse.response200(Pet body) =>
      UpdatePetWithFormResponse200.response200(body);

  /// Invalid input
  factory UpdatePetWithFormResponse.response400() =>
      UpdatePetWithFormResponse400.response400();

  /// Unexpected error
  factory UpdatePetWithFormResponse.responseDefault(int status) =>
      UpdatePetWithFormResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<UpdatePetWithFormResponse200, R> on200,
    required ResponseMap<UpdatePetWithFormResponse400, R> on400,
    required ResponseMap<UpdatePetWithFormResponseDefault, R> onDefault,
    ResponseMap<UpdatePetWithFormResponse, R>? onElse,
  }) {
    if (this is UpdatePetWithFormResponse200) {
      return on200((this as UpdatePetWithFormResponse200));
    } else if (this is UpdatePetWithFormResponse400) {
      return on400((this as UpdatePetWithFormResponse400));
    } else if (this is UpdatePetWithFormResponseDefault) {
      return onDefault((this as UpdatePetWithFormResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  successful operation
  @override
  Pet requireSuccess() {
    if (this is UpdatePetWithFormResponse200) {
      return (this as UpdatePetWithFormResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class DeletePetResponse200 extends DeletePetResponse {
  /// Pet deleted
  DeletePetResponse200.response200() : status = 200;

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

class DeletePetResponse400 extends DeletePetResponse {
  /// Invalid pet value
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

class DeletePetResponseDefault extends DeletePetResponse {
  /// Unexpected error
  DeletePetResponseDefault.responseDefault(int status) : status = status;

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

sealed class DeletePetResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  DeletePetResponse();

  /// Pet deleted
  factory DeletePetResponse.response200() => DeletePetResponse200.response200();

  /// Invalid pet value
  factory DeletePetResponse.response400() => DeletePetResponse400.response400();

  /// Unexpected error
  factory DeletePetResponse.responseDefault(int status) =>
      DeletePetResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<DeletePetResponse200, R> on200,
    required ResponseMap<DeletePetResponse400, R> on400,
    required ResponseMap<DeletePetResponseDefault, R> onDefault,
    ResponseMap<DeletePetResponse, R>? onElse,
  }) {
    if (this is DeletePetResponse200) {
      return on200((this as DeletePetResponse200));
    } else if (this is DeletePetResponse400) {
      return on400((this as DeletePetResponse400));
    } else if (this is DeletePetResponseDefault) {
      return onDefault((this as DeletePetResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status default:  Unexpected error
  @override
  void requireSuccess() {
    if (this is DeletePetResponseDefault) {
      return;
    } else {
      throw OpenApiRequireSuccessException(this);
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

class UploadFileResponse400 extends UploadFileResponse {
  /// No file uploaded
  UploadFileResponse400.response400() : status = 400;

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

class UploadFileResponse404 extends UploadFileResponse {
  /// Pet not found
  UploadFileResponse404.response404() : status = 404;

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

class UploadFileResponseDefault extends UploadFileResponse {
  /// Unexpected error
  UploadFileResponseDefault.responseDefault(int status) : status = status;

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

sealed class UploadFileResponse extends OpenApiResponse
    implements HasSuccessResponse<ApiResponse> {
  UploadFileResponse();

  /// successful operation
  factory UploadFileResponse.response200(ApiResponse body) =>
      UploadFileResponse200.response200(body);

  /// No file uploaded
  factory UploadFileResponse.response400() =>
      UploadFileResponse400.response400();

  /// Pet not found
  factory UploadFileResponse.response404() =>
      UploadFileResponse404.response404();

  /// Unexpected error
  factory UploadFileResponse.responseDefault(int status) =>
      UploadFileResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<UploadFileResponse200, R> on200,
    required ResponseMap<UploadFileResponse400, R> on400,
    required ResponseMap<UploadFileResponse404, R> on404,
    required ResponseMap<UploadFileResponseDefault, R> onDefault,
    ResponseMap<UploadFileResponse, R>? onElse,
  }) {
    if (this is UploadFileResponse200) {
      return on200((this as UploadFileResponse200));
    } else if (this is UploadFileResponse400) {
      return on400((this as UploadFileResponse400));
    } else if (this is UploadFileResponse404) {
      return on404((this as UploadFileResponse404));
    } else if (this is UploadFileResponseDefault) {
      return onDefault((this as UploadFileResponseDefault));
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
      throw OpenApiRequireSuccessException(this);
    }
  }
}

@JsonSerializable()
@ApiUuidJsonConverter()
class GetInventoryResponseBody200 implements OpenApiContent {
  GetInventoryResponseBody200();

  factory GetInventoryResponseBody200.fromJson(Map<String, dynamic> jsonMap) =>
      _$GetInventoryResponseBody200FromJson(jsonMap)
        .._additionalProperties.addEntries(
          jsonMap.entries
              .where((e) => !const <String>{}.contains(e.key))
              .map((e) => MapEntry(e.key, (e.value as int))),
        );

  final Map<String, int> _additionalProperties = <String, int>{};

  Map<String, dynamic> toJson() =>
      Map.from(_additionalProperties)
        ..addAll(_$GetInventoryResponseBody200ToJson(this));

  @override
  String toString() => toJson().toString();

  Map<String, int> get additionalProperties => _additionalProperties;

  void operator []=(String key, int value) =>
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

class GetInventoryResponseDefault extends GetInventoryResponse {
  /// Unexpected error
  GetInventoryResponseDefault.responseDefault(int status) : status = status;

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

sealed class GetInventoryResponse extends OpenApiResponse
    implements HasSuccessResponse<GetInventoryResponseBody200> {
  GetInventoryResponse();

  /// successful operation
  factory GetInventoryResponse.response200(GetInventoryResponseBody200 body) =>
      GetInventoryResponse200.response200(body);

  /// Unexpected error
  factory GetInventoryResponse.responseDefault(int status) =>
      GetInventoryResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<GetInventoryResponse200, R> on200,
    required ResponseMap<GetInventoryResponseDefault, R> onDefault,
    ResponseMap<GetInventoryResponse, R>? onElse,
  }) {
    if (this is GetInventoryResponse200) {
      return on200((this as GetInventoryResponse200));
    } else if (this is GetInventoryResponseDefault) {
      return onDefault((this as GetInventoryResponseDefault));
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
      throw OpenApiRequireSuccessException(this);
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

class PlaceOrderResponse400 extends PlaceOrderResponse {
  /// Invalid input
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

class PlaceOrderResponse422 extends PlaceOrderResponse {
  /// Validation exception
  PlaceOrderResponse422.response422() : status = 422;

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

class PlaceOrderResponseDefault extends PlaceOrderResponse {
  /// Unexpected error
  PlaceOrderResponseDefault.responseDefault(int status) : status = status;

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

  /// Invalid input
  factory PlaceOrderResponse.response400() =>
      PlaceOrderResponse400.response400();

  /// Validation exception
  factory PlaceOrderResponse.response422() =>
      PlaceOrderResponse422.response422();

  /// Unexpected error
  factory PlaceOrderResponse.responseDefault(int status) =>
      PlaceOrderResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<PlaceOrderResponse200, R> on200,
    required ResponseMap<PlaceOrderResponse400, R> on400,
    required ResponseMap<PlaceOrderResponse422, R> on422,
    required ResponseMap<PlaceOrderResponseDefault, R> onDefault,
    ResponseMap<PlaceOrderResponse, R>? onElse,
  }) {
    if (this is PlaceOrderResponse200) {
      return on200((this as PlaceOrderResponse200));
    } else if (this is PlaceOrderResponse400) {
      return on400((this as PlaceOrderResponse400));
    } else if (this is PlaceOrderResponse422) {
      return on422((this as PlaceOrderResponse422));
    } else if (this is PlaceOrderResponseDefault) {
      return onDefault((this as PlaceOrderResponseDefault));
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
      throw OpenApiRequireSuccessException(this);
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

class GetOrderByIdResponseDefault extends GetOrderByIdResponse {
  /// Unexpected error
  GetOrderByIdResponseDefault.responseDefault(int status) : status = status;

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

  /// Unexpected error
  factory GetOrderByIdResponse.responseDefault(int status) =>
      GetOrderByIdResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<GetOrderByIdResponse200, R> on200,
    required ResponseMap<GetOrderByIdResponse400, R> on400,
    required ResponseMap<GetOrderByIdResponse404, R> on404,
    required ResponseMap<GetOrderByIdResponseDefault, R> onDefault,
    ResponseMap<GetOrderByIdResponse, R>? onElse,
  }) {
    if (this is GetOrderByIdResponse200) {
      return on200((this as GetOrderByIdResponse200));
    } else if (this is GetOrderByIdResponse400) {
      return on400((this as GetOrderByIdResponse400));
    } else if (this is GetOrderByIdResponse404) {
      return on404((this as GetOrderByIdResponse404));
    } else if (this is GetOrderByIdResponseDefault) {
      return onDefault((this as GetOrderByIdResponseDefault));
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
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class DeleteOrderResponse200 extends DeleteOrderResponse {
  /// order deleted
  DeleteOrderResponse200.response200() : status = 200;

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

class DeleteOrderResponseDefault extends DeleteOrderResponse {
  /// Unexpected error
  DeleteOrderResponseDefault.responseDefault(int status) : status = status;

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

sealed class DeleteOrderResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  DeleteOrderResponse();

  /// order deleted
  factory DeleteOrderResponse.response200() =>
      DeleteOrderResponse200.response200();

  /// Invalid ID supplied
  factory DeleteOrderResponse.response400() =>
      DeleteOrderResponse400.response400();

  /// Order not found
  factory DeleteOrderResponse.response404() =>
      DeleteOrderResponse404.response404();

  /// Unexpected error
  factory DeleteOrderResponse.responseDefault(int status) =>
      DeleteOrderResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<DeleteOrderResponse200, R> on200,
    required ResponseMap<DeleteOrderResponse400, R> on400,
    required ResponseMap<DeleteOrderResponse404, R> on404,
    required ResponseMap<DeleteOrderResponseDefault, R> onDefault,
    ResponseMap<DeleteOrderResponse, R>? onElse,
  }) {
    if (this is DeleteOrderResponse200) {
      return on200((this as DeleteOrderResponse200));
    } else if (this is DeleteOrderResponse400) {
      return on400((this as DeleteOrderResponse400));
    } else if (this is DeleteOrderResponse404) {
      return on404((this as DeleteOrderResponse404));
    } else if (this is DeleteOrderResponseDefault) {
      return onDefault((this as DeleteOrderResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status default:  Unexpected error
  @override
  void requireSuccess() {
    if (this is DeleteOrderResponseDefault) {
      return;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class CreateUserResponse200 extends CreateUserResponse
    implements OpenApiResponseBodyJson {
  /// successful operation
  CreateUserResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final User body;

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

class CreateUserResponseDefault extends CreateUserResponse {
  /// Unexpected error
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
    implements HasSuccessResponse<User> {
  CreateUserResponse();

  /// successful operation
  factory CreateUserResponse.response200(User body) =>
      CreateUserResponse200.response200(body);

  /// Unexpected error
  factory CreateUserResponse.responseDefault(int status) =>
      CreateUserResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<CreateUserResponse200, R> on200,
    required ResponseMap<CreateUserResponseDefault, R> onDefault,
    ResponseMap<CreateUserResponse, R>? onElse,
  }) {
    if (this is CreateUserResponse200) {
      return on200((this as CreateUserResponse200));
    } else if (this is CreateUserResponseDefault) {
      return onDefault((this as CreateUserResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  successful operation
  @override
  User requireSuccess() {
    if (this is CreateUserResponse200) {
      return (this as CreateUserResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class CreateUsersWithListInputResponse200
    extends CreateUsersWithListInputResponse
    implements OpenApiResponseBodyJson {
  /// Successful operation
  CreateUsersWithListInputResponse200.response200(this.body)
    : status = 200,
      bodyJson = body.toJson();

  @override
  final int status;

  final User body;

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

class CreateUsersWithListInputResponseDefault
    extends CreateUsersWithListInputResponse {
  /// Unexpected error
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
    implements HasSuccessResponse<User> {
  CreateUsersWithListInputResponse();

  /// Successful operation
  factory CreateUsersWithListInputResponse.response200(User body) =>
      CreateUsersWithListInputResponse200.response200(body);

  /// Unexpected error
  factory CreateUsersWithListInputResponse.responseDefault(int status) =>
      CreateUsersWithListInputResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<CreateUsersWithListInputResponse200, R> on200,
    required ResponseMap<CreateUsersWithListInputResponseDefault, R> onDefault,
    ResponseMap<CreateUsersWithListInputResponse, R>? onElse,
  }) {
    if (this is CreateUsersWithListInputResponse200) {
      return on200((this as CreateUsersWithListInputResponse200));
    } else if (this is CreateUsersWithListInputResponseDefault) {
      return onDefault((this as CreateUsersWithListInputResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status 200:  Successful operation
  @override
  User requireSuccess() {
    if (this is CreateUsersWithListInputResponse200) {
      return (this as CreateUsersWithListInputResponse200).body;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class LoginUserResponse200 extends LoginUserResponse
    implements OpenApiResponseBodyJsonValue {
  /// successful operation
  LoginUserResponse200.response200(this.body)
    : status = 200,
      bodyJsonValue = body;

  @override
  final int status;

  final String body;

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

class LoginUserResponseDefault extends LoginUserResponse {
  /// Unexpected error
  LoginUserResponseDefault.responseDefault(int status) : status = status;

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

  /// Unexpected error
  factory LoginUserResponse.responseDefault(int status) =>
      LoginUserResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<LoginUserResponse200, R> on200,
    required ResponseMap<LoginUserResponse400, R> on400,
    required ResponseMap<LoginUserResponseDefault, R> onDefault,
    ResponseMap<LoginUserResponse, R>? onElse,
  }) {
    if (this is LoginUserResponse200) {
      return on200((this as LoginUserResponse200));
    } else if (this is LoginUserResponse400) {
      return on400((this as LoginUserResponse400));
    } else if (this is LoginUserResponseDefault) {
      return onDefault((this as LoginUserResponseDefault));
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
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class LogoutUserResponse200 extends LogoutUserResponse {
  /// successful operation
  LogoutUserResponse200.response200() : status = 200;

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

class LogoutUserResponseDefault extends LogoutUserResponse {
  /// Unexpected error
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
  factory LogoutUserResponse.response200() =>
      LogoutUserResponse200.response200();

  /// Unexpected error
  factory LogoutUserResponse.responseDefault(int status) =>
      LogoutUserResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<LogoutUserResponse200, R> on200,
    required ResponseMap<LogoutUserResponseDefault, R> onDefault,
    ResponseMap<LogoutUserResponse, R>? onElse,
  }) {
    if (this is LogoutUserResponse200) {
      return on200((this as LogoutUserResponse200));
    } else if (this is LogoutUserResponseDefault) {
      return onDefault((this as LogoutUserResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status default:  Unexpected error
  @override
  void requireSuccess() {
    if (this is LogoutUserResponseDefault) {
      return;
    } else {
      throw OpenApiRequireSuccessException(this);
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

class GetUserByNameResponseDefault extends GetUserByNameResponse {
  /// Unexpected error
  GetUserByNameResponseDefault.responseDefault(int status) : status = status;

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

  /// Unexpected error
  factory GetUserByNameResponse.responseDefault(int status) =>
      GetUserByNameResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<GetUserByNameResponse200, R> on200,
    required ResponseMap<GetUserByNameResponse400, R> on400,
    required ResponseMap<GetUserByNameResponse404, R> on404,
    required ResponseMap<GetUserByNameResponseDefault, R> onDefault,
    ResponseMap<GetUserByNameResponse, R>? onElse,
  }) {
    if (this is GetUserByNameResponse200) {
      return on200((this as GetUserByNameResponse200));
    } else if (this is GetUserByNameResponse400) {
      return on400((this as GetUserByNameResponse400));
    } else if (this is GetUserByNameResponse404) {
      return on404((this as GetUserByNameResponse404));
    } else if (this is GetUserByNameResponseDefault) {
      return onDefault((this as GetUserByNameResponseDefault));
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
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class UpdateUserResponse200 extends UpdateUserResponse {
  /// successful operation
  UpdateUserResponse200.response200() : status = 200;

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

class UpdateUserResponse400 extends UpdateUserResponse {
  /// bad request
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
  /// user not found
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

class UpdateUserResponseDefault extends UpdateUserResponse {
  /// Unexpected error
  UpdateUserResponseDefault.responseDefault(int status) : status = status;

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

sealed class UpdateUserResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  UpdateUserResponse();

  /// successful operation
  factory UpdateUserResponse.response200() =>
      UpdateUserResponse200.response200();

  /// bad request
  factory UpdateUserResponse.response400() =>
      UpdateUserResponse400.response400();

  /// user not found
  factory UpdateUserResponse.response404() =>
      UpdateUserResponse404.response404();

  /// Unexpected error
  factory UpdateUserResponse.responseDefault(int status) =>
      UpdateUserResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<UpdateUserResponse200, R> on200,
    required ResponseMap<UpdateUserResponse400, R> on400,
    required ResponseMap<UpdateUserResponse404, R> on404,
    required ResponseMap<UpdateUserResponseDefault, R> onDefault,
    ResponseMap<UpdateUserResponse, R>? onElse,
  }) {
    if (this is UpdateUserResponse200) {
      return on200((this as UpdateUserResponse200));
    } else if (this is UpdateUserResponse400) {
      return on400((this as UpdateUserResponse400));
    } else if (this is UpdateUserResponse404) {
      return on404((this as UpdateUserResponse404));
    } else if (this is UpdateUserResponseDefault) {
      return onDefault((this as UpdateUserResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status default:  Unexpected error
  @override
  void requireSuccess() {
    if (this is UpdateUserResponseDefault) {
      return;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

class DeleteUserResponse200 extends DeleteUserResponse {
  /// User deleted
  DeleteUserResponse200.response200() : status = 200;

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

class DeleteUserResponseDefault extends DeleteUserResponse {
  /// Unexpected error
  DeleteUserResponseDefault.responseDefault(int status) : status = status;

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

sealed class DeleteUserResponse extends OpenApiResponse
    implements HasSuccessResponse<void> {
  DeleteUserResponse();

  /// User deleted
  factory DeleteUserResponse.response200() =>
      DeleteUserResponse200.response200();

  /// Invalid username supplied
  factory DeleteUserResponse.response400() =>
      DeleteUserResponse400.response400();

  /// User not found
  factory DeleteUserResponse.response404() =>
      DeleteUserResponse404.response404();

  /// Unexpected error
  factory DeleteUserResponse.responseDefault(int status) =>
      DeleteUserResponseDefault.responseDefault(status);

  R map<R>({
    required ResponseMap<DeleteUserResponse200, R> on200,
    required ResponseMap<DeleteUserResponse400, R> on400,
    required ResponseMap<DeleteUserResponse404, R> on404,
    required ResponseMap<DeleteUserResponseDefault, R> onDefault,
    ResponseMap<DeleteUserResponse, R>? onElse,
  }) {
    if (this is DeleteUserResponse200) {
      return on200((this as DeleteUserResponse200));
    } else if (this is DeleteUserResponse400) {
      return on400((this as DeleteUserResponse400));
    } else if (this is DeleteUserResponse404) {
      return on404((this as DeleteUserResponse404));
    } else if (this is DeleteUserResponseDefault) {
      return onDefault((this as DeleteUserResponseDefault));
    } else if (onElse != null) {
      return onElse(this);
    } else {
      throw StateError('Invalid instance of type $this');
    }
  }

  /// status default:  Unexpected error
  @override
  void requireSuccess() {
    if (this is DeleteUserResponseDefault) {
      return;
    } else {
      throw OpenApiRequireSuccessException(this);
    }
  }
}

abstract class SwaggerPetstoreV3 implements ApiEndpoint {
  /// Update an existing pet.
  /// Update an existing pet by Id.
  /// put: /pet
  Future<UpdatePetResponse> updatePet(Pet body);

  /// Add a new pet to the store.
  /// Add a new pet to the store.
  /// post: /pet
  Future<AddPetResponse> addPet(Pet body);

  /// Finds Pets by status.
  /// Multiple status values can be provided with comma separated strings.
  /// get: /pet/findByStatus
  Future<FindPetsByStatusResponse> findPetsByStatus({
    required FindPetsByStatus status,
  });

  /// Finds Pets by tags.
  /// Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  Future<FindPetsByTagsResponse> findPetsByTags({required List<String> tags});

  /// Find pet by ID.
  /// Returns a single pet.
  /// get: /pet/{petId}
  Future<GetPetByIdResponse> getPetById({required int petId});

  /// Updates a pet in the store with form data.
  /// Updates a pet resource based on the form data.
  /// post: /pet/{petId}
  Future<UpdatePetWithFormResponse> updatePetWithForm({
    required int petId,
    String? name,
    String? status,
  });

  /// Deletes a pet.
  /// Delete a pet.
  /// delete: /pet/{petId}
  Future<DeletePetResponse> deletePet({String? apiKey, required int petId});

  /// Uploads an image.
  /// Upload image of the pet.
  /// post: /pet/{petId}/uploadImage
  Future<UploadFileResponse> uploadFile(
    _i1.Uint8List body, {
    required int petId,
    String? additionalMetadata,
  });

  /// Returns pet inventories by status.
  /// Returns a map of status codes to quantities.
  /// get: /store/inventory
  Future<GetInventoryResponse> getInventory();

  /// Place an order for a pet.
  /// Place a new order in the store.
  /// post: /store/order
  Future<PlaceOrderResponse> placeOrder(Order body);

  /// Find purchase order by ID.
  /// For valid response try integer IDs with value <= 5 or > 10. Other values will generate exceptions.
  /// get: /store/order/{orderId}
  Future<GetOrderByIdResponse> getOrderById({required int orderId});

  /// Delete purchase order by identifier.
  /// For valid response try integer IDs with value < 1000. Anything above 1000 or non-integers will generate API errors.
  /// delete: /store/order/{orderId}
  Future<DeleteOrderResponse> deleteOrder({required int orderId});

  /// Create user.
  /// This can only be done by the logged in user.
  /// post: /user
  Future<CreateUserResponse> createUser(User body);

  /// Creates list of users with given input array.
  /// Creates list of users with given input array.
  /// post: /user/createWithList
  Future<CreateUsersWithListInputResponse> createUsersWithListInput(
    List<User> body,
  );

  /// Logs user into the system.
  /// Log into the system.
  /// get: /user/login
  Future<LoginUserResponse> loginUser({String? username, String? password});

  /// Logs out current logged in user session.
  /// Log user out of the system.
  /// get: /user/logout
  Future<LogoutUserResponse> logoutUser();

  /// Get user by user name.
  /// Get user detail based on username.
  /// get: /user/{username}
  Future<GetUserByNameResponse> getUserByName({required String username});

  /// Update user resource.
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  Future<UpdateUserResponse> updateUser(User body, {required String username});

  /// Delete user resource.
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  Future<DeleteUserResponse> deleteUser({required String username});
}

abstract class SwaggerPetstoreV3Client implements OpenApiClient {
  factory SwaggerPetstoreV3Client(
    Uri baseUri,
    OpenApiRequestSender requestSender,
  ) => _SwaggerPetstoreV3ClientImpl._(baseUri, requestSender);

  OpenApiClientRequest createUpdatePetRequest(Pet body);

  /// Update an existing pet.
  /// Update an existing pet by Id.
  /// put: /pet
  ///
  Future<UpdatePetResponse> updatePet(Pet body);
  OpenApiClientRequest createAddPetRequest(Pet body);

  /// Add a new pet to the store.
  /// Add a new pet to the store.
  /// post: /pet
  ///
  Future<AddPetResponse> addPet(Pet body);
  OpenApiClientRequest createFindPetsByStatusRequest({
    required FindPetsByStatus status,
  });

  /// Finds Pets by status.
  /// Multiple status values can be provided with comma separated strings.
  /// get: /pet/findByStatus
  ///
  /// * [status]: Status values that need to be considered for filter
  Future<FindPetsByStatusResponse> findPetsByStatus({
    required FindPetsByStatus status,
  });
  OpenApiClientRequest createFindPetsByTagsRequest({
    required List<String> tags,
  });

  /// Finds Pets by tags.
  /// Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  ///
  /// * [tags]: Tags to filter by
  Future<FindPetsByTagsResponse> findPetsByTags({required List<String> tags});
  OpenApiClientRequest createGetPetByIdRequest({required int petId});

  /// Find pet by ID.
  /// Returns a single pet.
  /// get: /pet/{petId}
  ///
  /// * [petId]: ID of pet to return
  Future<GetPetByIdResponse> getPetById({required int petId});
  OpenApiClientRequest createUpdatePetWithFormRequest({
    required int petId,
    String? name,
    String? status,
  });

  /// Updates a pet in the store with form data.
  /// Updates a pet resource based on the form data.
  /// post: /pet/{petId}
  ///
  /// * [petId]: ID of pet that needs to be updated
  /// * [name]: Name of pet that needs to be updated
  /// * [status]: Status of pet that needs to be updated
  Future<UpdatePetWithFormResponse> updatePetWithForm({
    required int petId,
    String? name,
    String? status,
  });
  OpenApiClientRequest createDeletePetRequest({
    String? apiKey,
    required int petId,
  });

  /// Deletes a pet.
  /// Delete a pet.
  /// delete: /pet/{petId}
  ///
  /// * [apiKey]:
  /// * [petId]: Pet id to delete
  Future<DeletePetResponse> deletePet({String? apiKey, required int petId});
  OpenApiClientRequest createUploadFileRequest(
    _i1.Uint8List body, {
    required int petId,
    String? additionalMetadata,
  });

  /// Uploads an image.
  /// Upload image of the pet.
  /// post: /pet/{petId}/uploadImage
  ///
  /// * [petId]: ID of pet to update
  /// * [additionalMetadata]: Additional Metadata
  Future<UploadFileResponse> uploadFile(
    _i1.Uint8List body, {
    required int petId,
    String? additionalMetadata,
  });
  OpenApiClientRequest createGetInventoryRequest();

  /// Returns pet inventories by status.
  /// Returns a map of status codes to quantities.
  /// get: /store/inventory
  ///
  Future<GetInventoryResponse> getInventory();
  OpenApiClientRequest createPlaceOrderRequest(Order body);

  /// Place an order for a pet.
  /// Place a new order in the store.
  /// post: /store/order
  ///
  Future<PlaceOrderResponse> placeOrder(Order body);
  OpenApiClientRequest createGetOrderByIdRequest({required int orderId});

  /// Find purchase order by ID.
  /// For valid response try integer IDs with value <= 5 or > 10. Other values will generate exceptions.
  /// get: /store/order/{orderId}
  ///
  /// * [orderId]: ID of order that needs to be fetched
  Future<GetOrderByIdResponse> getOrderById({required int orderId});
  OpenApiClientRequest createDeleteOrderRequest({required int orderId});

  /// Delete purchase order by identifier.
  /// For valid response try integer IDs with value < 1000. Anything above 1000 or non-integers will generate API errors.
  /// delete: /store/order/{orderId}
  ///
  /// * [orderId]: ID of the order that needs to be deleted
  Future<DeleteOrderResponse> deleteOrder({required int orderId});
  OpenApiClientRequest createCreateUserRequest(User body);

  /// Create user.
  /// This can only be done by the logged in user.
  /// post: /user
  ///
  Future<CreateUserResponse> createUser(User body);
  OpenApiClientRequest createCreateUsersWithListInputRequest(List<User> body);

  /// Creates list of users with given input array.
  /// Creates list of users with given input array.
  /// post: /user/createWithList
  ///
  Future<CreateUsersWithListInputResponse> createUsersWithListInput(
    List<User> body,
  );
  OpenApiClientRequest createLoginUserRequest({
    String? username,
    String? password,
  });

  /// Logs user into the system.
  /// Log into the system.
  /// get: /user/login
  ///
  /// * [username]: The user name for login
  /// * [password]: The password for login in clear text
  Future<LoginUserResponse> loginUser({String? username, String? password});
  OpenApiClientRequest createLogoutUserRequest();

  /// Logs out current logged in user session.
  /// Log user out of the system.
  /// get: /user/logout
  ///
  Future<LogoutUserResponse> logoutUser();
  OpenApiClientRequest createGetUserByNameRequest({required String username});

  /// Get user by user name.
  /// Get user detail based on username.
  /// get: /user/{username}
  ///
  /// * [username]: The name that needs to be fetched. Use user1 for testing
  Future<GetUserByNameResponse> getUserByName({required String username});
  OpenApiClientRequest createUpdateUserRequest(
    User body, {
    required String username,
  });

  /// Update user resource.
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  ///
  /// * [username]: name that need to be deleted
  Future<UpdateUserResponse> updateUser(User body, {required String username});
  OpenApiClientRequest createDeleteUserRequest({required String username});

  /// Delete user resource.
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  ///
  /// * [username]: The name that needs to be deleted
  Future<DeleteUserResponse> deleteUser({required String username});
}

class _SwaggerPetstoreV3ClientImpl extends OpenApiClientBase
    implements SwaggerPetstoreV3Client {
  _SwaggerPetstoreV3ClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final OpenApiRequestSender requestSender;

  @override
  OpenApiClientRequest createUpdatePetRequest(Pet body) {
    final request = OpenApiClientRequest('put', '/pet', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return request;
  }

  /// Update an existing pet.
  /// Update an existing pet by Id.
  /// put: /pet
  ///
  @override
  Future<UpdatePetResponse> updatePet(Pet body) async {
    final request = createUpdatePetRequest(body);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          UpdatePetResponse200.response200(
            Pet.fromJson(await response.responseBodyJson()),
          ),
      '400': (OpenApiClientResponse response) async =>
          UpdatePetResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          UpdatePetResponse404.response404(),
      '422': (OpenApiClientResponse response) async =>
          UpdatePetResponse422.response422(),
      'default': (OpenApiClientResponse response) async =>
          UpdatePetResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createAddPetRequest(Pet body) {
    final request = OpenApiClientRequest('post', '/pet', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return request;
  }

  /// Add a new pet to the store.
  /// Add a new pet to the store.
  /// post: /pet
  ///
  @override
  Future<AddPetResponse> addPet(Pet body) async {
    final request = createAddPetRequest(body);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          AddPetResponse200.response200(
            Pet.fromJson(await response.responseBodyJson()),
          ),
      '400': (OpenApiClientResponse response) async =>
          AddPetResponse400.response400(),
      '422': (OpenApiClientResponse response) async =>
          AddPetResponse422.response422(),
      'default': (OpenApiClientResponse response) async =>
          AddPetResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createFindPetsByStatusRequest({
    required FindPetsByStatus status,
  }) {
    final request = OpenApiClientRequest('get', '/pet/findByStatus', []);
    request.addQueryParameter('status', encodeString(status.jsonValue));
    return request;
  }

  /// Finds Pets by status.
  /// Multiple status values can be provided with comma separated strings.
  /// get: /pet/findByStatus
  ///
  /// * [status]: Status values that need to be considered for filter
  @override
  Future<FindPetsByStatusResponse> findPetsByStatus({
    required FindPetsByStatus status,
  }) async {
    final request = createFindPetsByStatusRequest(status: status);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          FindPetsByStatusResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map((e) => Pet.fromJson((e as Map<String, dynamic>)))
                .toList(),
          ),
      '400': (OpenApiClientResponse response) async =>
          FindPetsByStatusResponse400.response400(),
      'default': (OpenApiClientResponse response) async =>
          FindPetsByStatusResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createFindPetsByTagsRequest({
    required List<String> tags,
  }) {
    final request = OpenApiClientRequest('get', '/pet/findByTags', []);
    request.addQueryParameter('tags', tags.expand((e) => encodeString(e)));
    return request;
  }

  /// Finds Pets by tags.
  /// Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  ///
  /// * [tags]: Tags to filter by
  @override
  Future<FindPetsByTagsResponse> findPetsByTags({
    required List<String> tags,
  }) async {
    final request = createFindPetsByTagsRequest(tags: tags);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          FindPetsByTagsResponse200.response200(
            (await response.responseBodyJsonDynamic() as List<dynamic>)
                .map((e) => Pet.fromJson((e as Map<String, dynamic>)))
                .toList(),
          ),
      '400': (OpenApiClientResponse response) async =>
          FindPetsByTagsResponse400.response400(),
      'default': (OpenApiClientResponse response) async =>
          FindPetsByTagsResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createGetPetByIdRequest({required int petId}) {
    final request = OpenApiClientRequest('get', '/pet/{petId}', []);
    request.addPathParameter('petId', encodeInt(petId));
    return request;
  }

  /// Find pet by ID.
  /// Returns a single pet.
  /// get: /pet/{petId}
  ///
  /// * [petId]: ID of pet to return
  @override
  Future<GetPetByIdResponse> getPetById({required int petId}) async {
    final request = createGetPetByIdRequest(petId: petId);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetPetByIdResponse200.response200(
            Pet.fromJson(await response.responseBodyJson()),
          ),
      '400': (OpenApiClientResponse response) async =>
          GetPetByIdResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          GetPetByIdResponse404.response404(),
      'default': (OpenApiClientResponse response) async =>
          GetPetByIdResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createUpdatePetWithFormRequest({
    required int petId,
    String? name,
    String? status,
  }) {
    final request = OpenApiClientRequest('post', '/pet/{petId}', []);
    request.addPathParameter('petId', encodeInt(petId));
    request.addQueryParameter('name', encodeString(name));
    request.addQueryParameter('status', encodeString(status));
    return request;
  }

  /// Updates a pet in the store with form data.
  /// Updates a pet resource based on the form data.
  /// post: /pet/{petId}
  ///
  /// * [petId]: ID of pet that needs to be updated
  /// * [name]: Name of pet that needs to be updated
  /// * [status]: Status of pet that needs to be updated
  @override
  Future<UpdatePetWithFormResponse> updatePetWithForm({
    required int petId,
    String? name,
    String? status,
  }) async {
    final request = createUpdatePetWithFormRequest(
      petId: petId,
      name: name,
      status: status,
    );
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          UpdatePetWithFormResponse200.response200(
            Pet.fromJson(await response.responseBodyJson()),
          ),
      '400': (OpenApiClientResponse response) async =>
          UpdatePetWithFormResponse400.response400(),
      'default': (OpenApiClientResponse response) async =>
          UpdatePetWithFormResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createDeletePetRequest({
    String? apiKey,
    required int petId,
  }) {
    final request = OpenApiClientRequest('delete', '/pet/{petId}', []);
    request.addHeaderParameter('api_key', encodeString(apiKey));
    request.addPathParameter('petId', encodeInt(petId));
    return request;
  }

  /// Deletes a pet.
  /// Delete a pet.
  /// delete: /pet/{petId}
  ///
  /// * [apiKey]:
  /// * [petId]: Pet id to delete
  @override
  Future<DeletePetResponse> deletePet({
    String? apiKey,
    required int petId,
  }) async {
    final request = createDeletePetRequest(apiKey: apiKey, petId: petId);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          DeletePetResponse200.response200(),
      '400': (OpenApiClientResponse response) async =>
          DeletePetResponse400.response400(),
      'default': (OpenApiClientResponse response) async =>
          DeletePetResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createUploadFileRequest(
    _i1.Uint8List body, {
    required int petId,
    String? additionalMetadata,
  }) {
    final request = OpenApiClientRequest(
      'post',
      '/pet/{petId}/uploadImage',
      [],
    );
    request.addPathParameter('petId', encodeInt(petId));
    request.addQueryParameter(
      'additionalMetadata',
      encodeString(additionalMetadata),
    );
    request.setHeader('content-type', 'application/octet-stream');
    request.setBody(OpenApiClientRequestBodyBinary(body));
    return request;
  }

  /// Uploads an image.
  /// Upload image of the pet.
  /// post: /pet/{petId}/uploadImage
  ///
  /// * [petId]: ID of pet to update
  /// * [additionalMetadata]: Additional Metadata
  @override
  Future<UploadFileResponse> uploadFile(
    _i1.Uint8List body, {
    required int petId,
    String? additionalMetadata,
  }) async {
    final request = createUploadFileRequest(
      body,
      petId: petId,
      additionalMetadata: additionalMetadata,
    );
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          UploadFileResponse200.response200(
            ApiResponse.fromJson(await response.responseBodyJson()),
          ),
      '400': (OpenApiClientResponse response) async =>
          UploadFileResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          UploadFileResponse404.response404(),
      'default': (OpenApiClientResponse response) async =>
          UploadFileResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createGetInventoryRequest() {
    final request = OpenApiClientRequest('get', '/store/inventory', []);
    return request;
  }

  /// Returns pet inventories by status.
  /// Returns a map of status codes to quantities.
  /// get: /store/inventory
  ///
  @override
  Future<GetInventoryResponse> getInventory() async {
    final request = createGetInventoryRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetInventoryResponse200.response200(
            GetInventoryResponseBody200.fromJson(
              await response.responseBodyJson(),
            ),
          ),
      'default': (OpenApiClientResponse response) async =>
          GetInventoryResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createPlaceOrderRequest(Order body) {
    final request = OpenApiClientRequest('post', '/store/order', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return request;
  }

  /// Place an order for a pet.
  /// Place a new order in the store.
  /// post: /store/order
  ///
  @override
  Future<PlaceOrderResponse> placeOrder(Order body) async {
    final request = createPlaceOrderRequest(body);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          PlaceOrderResponse200.response200(
            Order.fromJson(await response.responseBodyJson()),
          ),
      '400': (OpenApiClientResponse response) async =>
          PlaceOrderResponse400.response400(),
      '422': (OpenApiClientResponse response) async =>
          PlaceOrderResponse422.response422(),
      'default': (OpenApiClientResponse response) async =>
          PlaceOrderResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createGetOrderByIdRequest({required int orderId}) {
    final request = OpenApiClientRequest('get', '/store/order/{orderId}', []);
    request.addPathParameter('orderId', encodeInt(orderId));
    return request;
  }

  /// Find purchase order by ID.
  /// For valid response try integer IDs with value <= 5 or > 10. Other values will generate exceptions.
  /// get: /store/order/{orderId}
  ///
  /// * [orderId]: ID of order that needs to be fetched
  @override
  Future<GetOrderByIdResponse> getOrderById({required int orderId}) async {
    final request = createGetOrderByIdRequest(orderId: orderId);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetOrderByIdResponse200.response200(
            Order.fromJson(await response.responseBodyJson()),
          ),
      '400': (OpenApiClientResponse response) async =>
          GetOrderByIdResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          GetOrderByIdResponse404.response404(),
      'default': (OpenApiClientResponse response) async =>
          GetOrderByIdResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createDeleteOrderRequest({required int orderId}) {
    final request = OpenApiClientRequest(
      'delete',
      '/store/order/{orderId}',
      [],
    );
    request.addPathParameter('orderId', encodeInt(orderId));
    return request;
  }

  /// Delete purchase order by identifier.
  /// For valid response try integer IDs with value < 1000. Anything above 1000 or non-integers will generate API errors.
  /// delete: /store/order/{orderId}
  ///
  /// * [orderId]: ID of the order that needs to be deleted
  @override
  Future<DeleteOrderResponse> deleteOrder({required int orderId}) async {
    final request = createDeleteOrderRequest(orderId: orderId);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          DeleteOrderResponse200.response200(),
      '400': (OpenApiClientResponse response) async =>
          DeleteOrderResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          DeleteOrderResponse404.response404(),
      'default': (OpenApiClientResponse response) async =>
          DeleteOrderResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createCreateUserRequest(User body) {
    final request = OpenApiClientRequest('post', '/user', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return request;
  }

  /// Create user.
  /// This can only be done by the logged in user.
  /// post: /user
  ///
  @override
  Future<CreateUserResponse> createUser(User body) async {
    final request = createCreateUserRequest(body);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          CreateUserResponse200.response200(
            User.fromJson(await response.responseBodyJson()),
          ),
      'default': (OpenApiClientResponse response) async =>
          CreateUserResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createCreateUsersWithListInputRequest(List<User> body) {
    final request = OpenApiClientRequest('post', '/user/createWithList', []);
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body));
    return request;
  }

  /// Creates list of users with given input array.
  /// Creates list of users with given input array.
  /// post: /user/createWithList
  ///
  @override
  Future<CreateUsersWithListInputResponse> createUsersWithListInput(
    List<User> body,
  ) async {
    final request = createCreateUsersWithListInputRequest(body);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          CreateUsersWithListInputResponse200.response200(
            User.fromJson(await response.responseBodyJson()),
          ),
      'default': (OpenApiClientResponse response) async =>
          CreateUsersWithListInputResponseDefault.responseDefault(
            response.status,
          ),
    });
  }

  @override
  OpenApiClientRequest createLoginUserRequest({
    String? username,
    String? password,
  }) {
    final request = OpenApiClientRequest('get', '/user/login', []);
    request.addQueryParameter('username', encodeString(username));
    request.addQueryParameter('password', encodeString(password));
    return request;
  }

  /// Logs user into the system.
  /// Log into the system.
  /// get: /user/login
  ///
  /// * [username]: The user name for login
  /// * [password]: The password for login in clear text
  @override
  Future<LoginUserResponse> loginUser({
    String? username,
    String? password,
  }) async {
    final request = createLoginUserRequest(
      username: username,
      password: password,
    );
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          LoginUserResponse200.response200(
            (await response.responseBodyJsonDynamic() as String),
          ),
      '400': (OpenApiClientResponse response) async =>
          LoginUserResponse400.response400(),
      'default': (OpenApiClientResponse response) async =>
          LoginUserResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createLogoutUserRequest() {
    final request = OpenApiClientRequest('get', '/user/logout', []);
    return request;
  }

  /// Logs out current logged in user session.
  /// Log user out of the system.
  /// get: /user/logout
  ///
  @override
  Future<LogoutUserResponse> logoutUser() async {
    final request = createLogoutUserRequest();
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          LogoutUserResponse200.response200(),
      'default': (OpenApiClientResponse response) async =>
          LogoutUserResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createGetUserByNameRequest({required String username}) {
    final request = OpenApiClientRequest('get', '/user/{username}', []);
    request.addPathParameter('username', encodeString(username));
    return request;
  }

  /// Get user by user name.
  /// Get user detail based on username.
  /// get: /user/{username}
  ///
  /// * [username]: The name that needs to be fetched. Use user1 for testing
  @override
  Future<GetUserByNameResponse> getUserByName({
    required String username,
  }) async {
    final request = createGetUserByNameRequest(username: username);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          GetUserByNameResponse200.response200(
            User.fromJson(await response.responseBodyJson()),
          ),
      '400': (OpenApiClientResponse response) async =>
          GetUserByNameResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          GetUserByNameResponse404.response404(),
      'default': (OpenApiClientResponse response) async =>
          GetUserByNameResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createUpdateUserRequest(
    User body, {
    required String username,
  }) {
    final request = OpenApiClientRequest('put', '/user/{username}', []);
    request.addPathParameter('username', encodeString(username));
    request.setHeader('content-type', 'application/json');
    request.setBody(OpenApiClientRequestBodyJson(body.toJson()));
    return request;
  }

  /// Update user resource.
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  ///
  /// * [username]: name that need to be deleted
  @override
  Future<UpdateUserResponse> updateUser(
    User body, {
    required String username,
  }) async {
    final request = createUpdateUserRequest(body, username: username);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          UpdateUserResponse200.response200(),
      '400': (OpenApiClientResponse response) async =>
          UpdateUserResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          UpdateUserResponse404.response404(),
      'default': (OpenApiClientResponse response) async =>
          UpdateUserResponseDefault.responseDefault(response.status),
    });
  }

  @override
  OpenApiClientRequest createDeleteUserRequest({required String username}) {
    final request = OpenApiClientRequest('delete', '/user/{username}', []);
    request.addPathParameter('username', encodeString(username));
    return request;
  }

  /// Delete user resource.
  /// This can only be done by the logged in user.
  /// delete: /user/{username}
  ///
  /// * [username]: The name that needs to be deleted
  @override
  Future<DeleteUserResponse> deleteUser({required String username}) async {
    final request = createDeleteUserRequest(username: username);
    return await sendRequest(request, {
      '200': (OpenApiClientResponse response) async =>
          DeleteUserResponse200.response200(),
      '400': (OpenApiClientResponse response) async =>
          DeleteUserResponse400.response400(),
      '404': (OpenApiClientResponse response) async =>
          DeleteUserResponse404.response404(),
      'default': (OpenApiClientResponse response) async =>
          DeleteUserResponseDefault.responseDefault(response.status),
    });
  }
}

class SwaggerPetstoreV3UrlResolve with OpenApiUrlEncodeMixin {
  /// Update an existing pet.
  /// Update an existing pet by Id.
  /// put: /pet
  ///
  OpenApiClientRequest updatePet() {
    final request = OpenApiClientRequest('put', '/pet', []);
    return request;
  }

  /// Add a new pet to the store.
  /// Add a new pet to the store.
  /// post: /pet
  ///
  OpenApiClientRequest addPet() {
    final request = OpenApiClientRequest('post', '/pet', []);
    return request;
  }

  /// Finds Pets by status.
  /// Multiple status values can be provided with comma separated strings.
  /// get: /pet/findByStatus
  ///
  /// * [status]: Status values that need to be considered for filter
  OpenApiClientRequest findPetsByStatus({required FindPetsByStatus status}) {
    final request = OpenApiClientRequest('get', '/pet/findByStatus', []);
    request.addQueryParameter('status', encodeString(status.jsonValue));
    return request;
  }

  /// Finds Pets by tags.
  /// Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
  /// get: /pet/findByTags
  ///
  /// * [tags]: Tags to filter by
  OpenApiClientRequest findPetsByTags({required List<String> tags}) {
    final request = OpenApiClientRequest('get', '/pet/findByTags', []);
    request.addQueryParameter('tags', tags.expand((e) => encodeString(e)));
    return request;
  }

  /// Find pet by ID.
  /// Returns a single pet.
  /// get: /pet/{petId}
  ///
  /// * [petId]: ID of pet to return
  OpenApiClientRequest getPetById({required int petId}) {
    final request = OpenApiClientRequest('get', '/pet/{petId}', []);
    request.addPathParameter('petId', encodeInt(petId));
    return request;
  }

  /// Updates a pet in the store with form data.
  /// Updates a pet resource based on the form data.
  /// post: /pet/{petId}
  ///
  /// * [petId]: ID of pet that needs to be updated
  /// * [name]: Name of pet that needs to be updated
  /// * [status]: Status of pet that needs to be updated
  OpenApiClientRequest updatePetWithForm({
    required int petId,
    String? name,
    String? status,
  }) {
    final request = OpenApiClientRequest('post', '/pet/{petId}', []);
    request.addPathParameter('petId', encodeInt(petId));
    request.addQueryParameter('name', encodeString(name));
    request.addQueryParameter('status', encodeString(status));
    return request;
  }

  /// Deletes a pet.
  /// Delete a pet.
  /// delete: /pet/{petId}
  ///
  /// * [apiKey]:
  /// * [petId]: Pet id to delete
  OpenApiClientRequest deletePet({String? apiKey, required int petId}) {
    final request = OpenApiClientRequest('delete', '/pet/{petId}', []);
    request.addHeaderParameter('api_key', encodeString(apiKey));
    request.addPathParameter('petId', encodeInt(petId));
    return request;
  }

  /// Uploads an image.
  /// Upload image of the pet.
  /// post: /pet/{petId}/uploadImage
  ///
  /// * [petId]: ID of pet to update
  /// * [additionalMetadata]: Additional Metadata
  OpenApiClientRequest uploadFile({
    required int petId,
    String? additionalMetadata,
  }) {
    final request = OpenApiClientRequest(
      'post',
      '/pet/{petId}/uploadImage',
      [],
    );
    request.addPathParameter('petId', encodeInt(petId));
    request.addQueryParameter(
      'additionalMetadata',
      encodeString(additionalMetadata),
    );
    return request;
  }

  /// Returns pet inventories by status.
  /// Returns a map of status codes to quantities.
  /// get: /store/inventory
  ///
  OpenApiClientRequest getInventory() {
    final request = OpenApiClientRequest('get', '/store/inventory', []);
    return request;
  }

  /// Place an order for a pet.
  /// Place a new order in the store.
  /// post: /store/order
  ///
  OpenApiClientRequest placeOrder() {
    final request = OpenApiClientRequest('post', '/store/order', []);
    return request;
  }

  /// Find purchase order by ID.
  /// For valid response try integer IDs with value <= 5 or > 10. Other values will generate exceptions.
  /// get: /store/order/{orderId}
  ///
  /// * [orderId]: ID of order that needs to be fetched
  OpenApiClientRequest getOrderById({required int orderId}) {
    final request = OpenApiClientRequest('get', '/store/order/{orderId}', []);
    request.addPathParameter('orderId', encodeInt(orderId));
    return request;
  }

  /// Delete purchase order by identifier.
  /// For valid response try integer IDs with value < 1000. Anything above 1000 or non-integers will generate API errors.
  /// delete: /store/order/{orderId}
  ///
  /// * [orderId]: ID of the order that needs to be deleted
  OpenApiClientRequest deleteOrder({required int orderId}) {
    final request = OpenApiClientRequest(
      'delete',
      '/store/order/{orderId}',
      [],
    );
    request.addPathParameter('orderId', encodeInt(orderId));
    return request;
  }

  /// Create user.
  /// This can only be done by the logged in user.
  /// post: /user
  ///
  OpenApiClientRequest createUser() {
    final request = OpenApiClientRequest('post', '/user', []);
    return request;
  }

  /// Creates list of users with given input array.
  /// Creates list of users with given input array.
  /// post: /user/createWithList
  ///
  OpenApiClientRequest createUsersWithListInput() {
    final request = OpenApiClientRequest('post', '/user/createWithList', []);
    return request;
  }

  /// Logs user into the system.
  /// Log into the system.
  /// get: /user/login
  ///
  /// * [username]: The user name for login
  /// * [password]: The password for login in clear text
  OpenApiClientRequest loginUser({String? username, String? password}) {
    final request = OpenApiClientRequest('get', '/user/login', []);
    request.addQueryParameter('username', encodeString(username));
    request.addQueryParameter('password', encodeString(password));
    return request;
  }

  /// Logs out current logged in user session.
  /// Log user out of the system.
  /// get: /user/logout
  ///
  OpenApiClientRequest logoutUser() {
    final request = OpenApiClientRequest('get', '/user/logout', []);
    return request;
  }

  /// Get user by user name.
  /// Get user detail based on username.
  /// get: /user/{username}
  ///
  /// * [username]: The name that needs to be fetched. Use user1 for testing
  OpenApiClientRequest getUserByName({required String username}) {
    final request = OpenApiClientRequest('get', '/user/{username}', []);
    request.addPathParameter('username', encodeString(username));
    return request;
  }

  /// Update user resource.
  /// This can only be done by the logged in user.
  /// put: /user/{username}
  ///
  /// * [username]: name that need to be deleted
  OpenApiClientRequest updateUser({required String username}) {
    final request = OpenApiClientRequest('put', '/user/{username}', []);
    request.addPathParameter('username', encodeString(username));
    return request;
  }

  /// Delete user resource.
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

class SwaggerPetstoreV3Router extends OpenApiServerRouterBase {
  SwaggerPetstoreV3Router(this.impl);

  final ApiEndpointProvider<SwaggerPetstoreV3> impl;

  @override
  void configure() {
    addRoute('/pet', 'put', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async =>
            impl.updatePet(Pet.fromJson(await request.readJsonBody())),
      );
    }, security: []);
    addRoute('/pet', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async =>
            impl.addPet(Pet.fromJson(await request.readJsonBody())),
      );
    }, security: []);
    addRoute('/pet/findByStatus', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.findPetsByStatus(
          status: paramRequired(
            name: 'status',
            value: request.queryParameter('status'),
            decode: (value) =>
                FindPetsByStatusExt.fromName(paramToString(value)),
          ),
        ),
      );
    }, security: []);
    addRoute('/pet/findByTags', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.findPetsByTags(
          tags: paramRequired(
            name: 'tags',
            value: request.queryParameter('tags'),
            decode: (value) => value.map((e) => paramToString([e])).toList(),
          ),
        ),
      );
    }, security: []);
    addRoute('/pet/{petId}', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.getPetById(
          petId: paramRequired(
            name: 'petId',
            value: request.pathParameter('petId'),
            decode: (value) => paramToInt(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/pet/{petId}', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.updatePetWithForm(
          petId: paramRequired(
            name: 'petId',
            value: request.pathParameter('petId'),
            decode: (value) => paramToInt(value),
          ),
          name: paramOpt(
            name: 'name',
            value: request.queryParameter('name'),
            decode: (value) => paramToString(value),
          ),
          status: paramOpt(
            name: 'status',
            value: request.queryParameter('status'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/pet/{petId}', 'delete', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.deletePet(
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
    }, security: []);
    addRoute('/pet/{petId}/uploadImage', 'post', (
      OpenApiRequest request,
    ) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.uploadFile(
          await request.readBodyBytes(),
          petId: paramRequired(
            name: 'petId',
            value: request.pathParameter('petId'),
            decode: (value) => paramToInt(value),
          ),
          additionalMetadata: paramOpt(
            name: 'additionalMetadata',
            value: request.queryParameter('additionalMetadata'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/store/inventory', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.getInventory(),
      );
    }, security: []);
    addRoute('/store/order', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async =>
            impl.placeOrder(Order.fromJson(await request.readJsonBody())),
      );
    }, security: []);
    addRoute('/store/order/{orderId}', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.getOrderById(
          orderId: paramRequired(
            name: 'orderId',
            value: request.pathParameter('orderId'),
            decode: (value) => paramToInt(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/store/order/{orderId}', 'delete', (
      OpenApiRequest request,
    ) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.deleteOrder(
          orderId: paramRequired(
            name: 'orderId',
            value: request.pathParameter('orderId'),
            decode: (value) => paramToInt(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/user', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async =>
            impl.createUser(User.fromJson(await request.readJsonBody())),
      );
    }, security: []);
    addRoute('/user/createWithList', 'post', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.createUsersWithListInput(
          (await request.readJsonBodyDynamic() as List<dynamic>)
              .map((e) => User.fromJson((e as Map<String, dynamic>)))
              .toList(),
        ),
      );
    }, security: []);
    addRoute('/user/login', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.loginUser(
          username: paramOpt(
            name: 'username',
            value: request.queryParameter('username'),
            decode: (value) => paramToString(value),
          ),
          password: paramOpt(
            name: 'password',
            value: request.queryParameter('password'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/user/logout', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.logoutUser(),
      );
    }, security: []);
    addRoute('/user/{username}', 'get', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.getUserByName(
          username: paramRequired(
            name: 'username',
            value: request.pathParameter('username'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/user/{username}', 'put', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.updateUser(
          User.fromJson(await request.readJsonBody()),
          username: paramRequired(
            name: 'username',
            value: request.pathParameter('username'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
    addRoute('/user/{username}', 'delete', (OpenApiRequest request) async {
      return await impl.invoke(
        request,
        (SwaggerPetstoreV3 impl) async => impl.deleteUser(
          username: paramRequired(
            name: 'username',
            value: request.pathParameter('username'),
            decode: (value) => paramToString(value),
          ),
        ),
      );
    }, security: []);
  }
}

class SecuritySchemes {}
