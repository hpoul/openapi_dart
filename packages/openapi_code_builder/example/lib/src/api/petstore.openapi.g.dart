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
    status: json['status'] as String,
    complete: json['complete'] as bool,
  );
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'petId': instance.petId,
      'quantity': instance.quantity,
      'shipDate': instance.shipDate,
      'status': instance.status,
      'complete': instance.complete,
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
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$PetToJson(Pet instance) => <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'tags': instance.tags,
      'status': instance.status,
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

PetFindByStatusGetResponse200 _$PetFindByStatusGetResponse200FromJson(
    Map<String, dynamic> json) {
  return PetFindByStatusGetResponse200();
}

Map<String, dynamic> _$PetFindByStatusGetResponse200ToJson(
        PetFindByStatusGetResponse200 instance) =>
    <String, dynamic>{};

PetFindByTagsGetResponse200 _$PetFindByTagsGetResponse200FromJson(
    Map<String, dynamic> json) {
  return PetFindByTagsGetResponse200();
}

Map<String, dynamic> _$PetFindByTagsGetResponse200ToJson(
        PetFindByTagsGetResponse200 instance) =>
    <String, dynamic>{};

StoreInventoryGetResponse200 _$StoreInventoryGetResponse200FromJson(
    Map<String, dynamic> json) {
  return StoreInventoryGetResponse200();
}

Map<String, dynamic> _$StoreInventoryGetResponse200ToJson(
        StoreInventoryGetResponse200 instance) =>
    <String, dynamic>{};

UserCreateWithArraySchema _$UserCreateWithArraySchemaFromJson(
    Map<String, dynamic> json) {
  return UserCreateWithArraySchema();
}

Map<String, dynamic> _$UserCreateWithArraySchemaToJson(
        UserCreateWithArraySchema instance) =>
    <String, dynamic>{};

UserLoginGetResponse200 _$UserLoginGetResponse200FromJson(
    Map<String, dynamic> json) {
  return UserLoginGetResponse200();
}

Map<String, dynamic> _$UserLoginGetResponse200ToJson(
        UserLoginGetResponse200 instance) =>
    <String, dynamic>{};
