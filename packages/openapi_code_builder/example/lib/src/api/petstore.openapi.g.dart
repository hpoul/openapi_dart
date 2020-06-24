// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'petstore.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
    id: json['id'] as int,
    petId: json['petId'] as int,
    quantity: json['quantity'] as int,
    shipDate: json['shipDate'] as String,
    status: _$enumDecodeNullable(_$OrderStatusEnumMap, json['status']),
    complete: json['complete'] as bool,
  );
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'petId': instance.petId,
      'quantity': instance.quantity,
      'shipDate': instance.shipDate,
      'status': _$OrderStatusEnumMap[instance.status],
      'complete': instance.complete,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$OrderStatusEnumMap = {
  OrderStatus.placed: 'placed',
  OrderStatus.approved: 'approved',
  OrderStatus.delivered: 'delivered',
};

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
    id: json['id'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int,
    username: json['username'] as String,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
    phone: json['phone'] as String,
    userStatus: json['userStatus'] as int,
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
    id: json['id'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Pet _$PetFromJson(Map<String, dynamic> json) {
  return Pet(
    id: json['id'] as int,
    category: json['category'] == null
        ? null
        : Category.fromJson(json['category'] as Map<String, dynamic>),
    name: json['name'] as String,
    photoUrls: (json['photoUrls'] as List)?.map((e) => e as String)?.toList(),
    tags: (json['tags'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
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
    code: json['code'] as int,
    type: json['type'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'message': instance.message,
    };

PetFindByStatusGetResponseBody200 _$PetFindByStatusGetResponseBody200FromJson(
    Map<String, dynamic> json) {
  return PetFindByStatusGetResponseBody200();
}

Map<String, dynamic> _$PetFindByStatusGetResponseBody200ToJson(
        PetFindByStatusGetResponseBody200 instance) =>
    <String, dynamic>{};

PetFindByTagsGetResponseBody200 _$PetFindByTagsGetResponseBody200FromJson(
    Map<String, dynamic> json) {
  return PetFindByTagsGetResponseBody200();
}

Map<String, dynamic> _$PetFindByTagsGetResponseBody200ToJson(
        PetFindByTagsGetResponseBody200 instance) =>
    <String, dynamic>{};

StoreInventoryGetResponseBody200 _$StoreInventoryGetResponseBody200FromJson(
    Map<String, dynamic> json) {
  return StoreInventoryGetResponseBody200();
}

Map<String, dynamic> _$StoreInventoryGetResponseBody200ToJson(
        StoreInventoryGetResponseBody200 instance) =>
    <String, dynamic>{};

UserCreateWithArraySchema _$UserCreateWithArraySchemaFromJson(
    Map<String, dynamic> json) {
  return UserCreateWithArraySchema();
}

Map<String, dynamic> _$UserCreateWithArraySchemaToJson(
        UserCreateWithArraySchema instance) =>
    <String, dynamic>{};

UserLoginGetResponseBody200 _$UserLoginGetResponseBody200FromJson(
    Map<String, dynamic> json) {
  return UserLoginGetResponseBody200();
}

Map<String, dynamic> _$UserLoginGetResponseBody200ToJson(
        UserLoginGetResponseBody200 instance) =>
    <String, dynamic>{};
