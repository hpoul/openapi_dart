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

PetCategory _$PetCategoryFromJson(Map<String, dynamic> json) {
  return PetCategory(
    id: json['id'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$PetCategoryToJson(PetCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

PetTags _$PetTagsFromJson(Map<String, dynamic> json) {
  return PetTags(
    id: json['id'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$PetTagsToJson(PetTags instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Pet _$PetFromJson(Map<String, dynamic> json) {
  return Pet(
    id: json['id'] as int,
    category: json['category'] == null
        ? null
        : PetCategory.fromJson(json['category'] as Map<String, dynamic>),
    name: json['name'] as String,
    photoUrls: (json['photoUrls'] as List)?.map((e) => e as String)?.toList(),
    tags: (json['tags'] as List)
        ?.map((e) =>
            e == null ? null : PetTags.fromJson(e as Map<String, dynamic>))
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

PetSchema _$PetSchemaFromJson(Map<String, dynamic> json) {
  return PetSchema(
    id: json['id'] as int,
    category: json['category'] == null
        ? null
        : PetCategory.fromJson(json['category'] as Map<String, dynamic>),
    name: json['name'] as String,
    photoUrls: (json['photoUrls'] as List)?.map((e) => e as String)?.toList(),
    tags: (json['tags'] as List)
        ?.map((e) =>
            e == null ? null : PetTags.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$PetSchemaToJson(PetSchema instance) => <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'photoUrls': instance.photoUrls,
      'tags': instance.tags,
      'status': instance.status,
    };

StoreOrderSchema _$StoreOrderSchemaFromJson(Map<String, dynamic> json) {
  return StoreOrderSchema(
    id: json['id'] as int,
    petId: json['petId'] as int,
    quantity: json['quantity'] as int,
    shipDate: json['shipDate'] as String,
    status: json['status'] as String,
    complete: json['complete'] as bool,
  );
}

Map<String, dynamic> _$StoreOrderSchemaToJson(StoreOrderSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'petId': instance.petId,
      'quantity': instance.quantity,
      'shipDate': instance.shipDate,
      'status': instance.status,
      'complete': instance.complete,
    };

UserSchema _$UserSchemaFromJson(Map<String, dynamic> json) {
  return UserSchema(
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

Map<String, dynamic> _$UserSchemaToJson(UserSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'userStatus': instance.userStatus,
    };

UserCreateWithArraySchema _$UserCreateWithArraySchemaFromJson(
    Map<String, dynamic> json) {
  return UserCreateWithArraySchema();
}

Map<String, dynamic> _$UserCreateWithArraySchemaToJson(
        UserCreateWithArraySchema instance) =>
    <String, dynamic>{};

UserUsernameSchema _$UserUsernameSchemaFromJson(Map<String, dynamic> json) {
  return UserUsernameSchema(
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

Map<String, dynamic> _$UserUsernameSchemaToJson(UserUsernameSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'userStatus': instance.userStatus,
    };
