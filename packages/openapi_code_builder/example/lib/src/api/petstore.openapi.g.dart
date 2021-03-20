// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'petstore.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
    id: json['id'] as int?,
    petId: json['petId'] as int?,
    quantity: json['quantity'] as int?,
    shipDate: json['shipDate'] == null
        ? null
        : DateTime.parse(json['shipDate'] as String),
    status: _$enumDecodeNullable(_$OrderStatusEnumMap, json['status']),
    complete: json['complete'] as bool?,
  );
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'petId': instance.petId,
      'quantity': instance.quantity,
      'shipDate': instance.shipDate?.toIso8601String(),
      'status': _$OrderStatusEnumMap[instance.status],
      'complete': instance.complete,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$OrderStatusEnumMap = {
  OrderStatus.placed: 'placed',
  OrderStatus.approved: 'approved',
  OrderStatus.delivered: 'delivered',
};

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
    id: json['id'] as int?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int?,
    username: json['username'] as String?,
    firstName: json['firstName'] as String?,
    lastName: json['lastName'] as String?,
    email: json['email'] as String?,
    password: json['password'] as String?,
    phone: json['phone'] as String?,
    userStatus: json['userStatus'] as int?,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'userStatus': instance.userStatus,
    };

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag(
    id: json['id'] as int?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Pet _$PetFromJson(Map<String, dynamic> json) {
  return Pet(
    id: json['id'] as int?,
    category: json['category'] == null
        ? null
        : Category.fromJson(json['category'] as Map<String, dynamic>),
    name: json['name'] as String,
    photoUrls:
        (json['photoUrls'] as List<dynamic>).map((e) => e as String).toList(),
    tags: (json['tags'] as List<dynamic>?)
        ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
        .toList(),
    status: _$enumDecodeNullable(_$PetStatusEnumMap, json['status']),
  );
}

Map<String, dynamic> _$PetToJson(Pet instance) => <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'tags': instance.tags,
      'status': _$PetStatusEnumMap[instance.status],
    };

const _$PetStatusEnumMap = {
  PetStatus.available: 'available',
  PetStatus.pending: 'pending',
  PetStatus.sold: 'sold',
};

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) {
  return ApiResponse(
    code: json['code'] as int?,
    type: json['type'] as String?,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
    };

FindPetsByStatusResponseBody200 _$FindPetsByStatusResponseBody200FromJson(
    Map<String, dynamic> json) {
  return FindPetsByStatusResponseBody200();
}

Map<String, dynamic> _$FindPetsByStatusResponseBody200ToJson(
        FindPetsByStatusResponseBody200 instance) =>
    <String, dynamic>{};

FindPetsByTagsResponseBody200 _$FindPetsByTagsResponseBody200FromJson(
    Map<String, dynamic> json) {
  return FindPetsByTagsResponseBody200();
}

Map<String, dynamic> _$FindPetsByTagsResponseBody200ToJson(
        FindPetsByTagsResponseBody200 instance) =>
    <String, dynamic>{};

UpdatePetWithFormSchema _$UpdatePetWithFormSchemaFromJson(
    Map<String, dynamic> json) {
  return UpdatePetWithFormSchema(
    name: json['name'] as String?,
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$UpdatePetWithFormSchemaToJson(
        UpdatePetWithFormSchema instance) =>
    <String, dynamic>{
      'name': instance.name,
      'status': instance.status,
    };

UploadFileSchema _$UploadFileSchemaFromJson(Map<String, dynamic> json) {
  return UploadFileSchema();
}

Map<String, dynamic> _$UploadFileSchemaToJson(UploadFileSchema instance) =>
    <String, dynamic>{};

GetInventoryResponseBody200 _$GetInventoryResponseBody200FromJson(
    Map<String, dynamic> json) {
  return GetInventoryResponseBody200();
}

Map<String, dynamic> _$GetInventoryResponseBody200ToJson(
        GetInventoryResponseBody200 instance) =>
    <String, dynamic>{};

CreateUsersWithArrayInputSchema _$CreateUsersWithArrayInputSchemaFromJson(
    Map<String, dynamic> json) {
  return CreateUsersWithArrayInputSchema();
}

Map<String, dynamic> _$CreateUsersWithArrayInputSchemaToJson(
        CreateUsersWithArrayInputSchema instance) =>
    <String, dynamic>{};

LoginUserResponseBody200 _$LoginUserResponseBody200FromJson(
    Map<String, dynamic> json) {
  return LoginUserResponseBody200();
}

Map<String, dynamic> _$LoginUserResponseBody200ToJson(
        LoginUserResponseBody200 instance) =>
    <String, dynamic>{};
