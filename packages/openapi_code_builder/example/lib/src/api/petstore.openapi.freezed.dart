// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'petstore.openapi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Order {

@JsonKey(name: 'id', includeIfNull: false) int? get id;@JsonKey(name: 'petId', includeIfNull: false) int? get petId;@JsonKey(name: 'quantity', includeIfNull: false) int? get quantity;@JsonKey(name: 'shipDate', includeIfNull: false) DateTime? get shipDate;@JsonKey(name: 'status', includeIfNull: false) OrderStatus? get status;@JsonKey(name: 'complete', includeIfNull: false) bool get complete;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.id, id) || other.id == id)&&(identical(other.petId, petId) || other.petId == petId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.shipDate, shipDate) || other.shipDate == shipDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.complete, complete) || other.complete == complete));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,petId,quantity,shipDate,status,complete);



}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false) int? id,@JsonKey(name: 'petId', includeIfNull: false) int? petId,@JsonKey(name: 'quantity', includeIfNull: false) int? quantity,@JsonKey(name: 'shipDate', includeIfNull: false) DateTime? shipDate,@JsonKey(name: 'status', includeIfNull: false) OrderStatus? status,@JsonKey(name: 'complete', includeIfNull: false) bool complete
});




}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? petId = freezed,Object? quantity = freezed,Object? shipDate = freezed,Object? status = freezed,Object? complete = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,petId: freezed == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,shipDate: freezed == shipDate ? _self.shipDate : shipDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus?,complete: null == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Order].
extension OrderPatterns on Order {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Order value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Order value)  $default,){
final _that = this;
switch (_that) {
case _Order():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Order value)?  $default,){
final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'petId', includeIfNull: false)  int? petId, @JsonKey(name: 'quantity', includeIfNull: false)  int? quantity, @JsonKey(name: 'shipDate', includeIfNull: false)  DateTime? shipDate, @JsonKey(name: 'status', includeIfNull: false)  OrderStatus? status, @JsonKey(name: 'complete', includeIfNull: false)  bool complete)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.petId,_that.quantity,_that.shipDate,_that.status,_that.complete);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'petId', includeIfNull: false)  int? petId, @JsonKey(name: 'quantity', includeIfNull: false)  int? quantity, @JsonKey(name: 'shipDate', includeIfNull: false)  DateTime? shipDate, @JsonKey(name: 'status', includeIfNull: false)  OrderStatus? status, @JsonKey(name: 'complete', includeIfNull: false)  bool complete)  $default,) {final _that = this;
switch (_that) {
case _Order():
return $default(_that.id,_that.petId,_that.quantity,_that.shipDate,_that.status,_that.complete);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'petId', includeIfNull: false)  int? petId, @JsonKey(name: 'quantity', includeIfNull: false)  int? quantity, @JsonKey(name: 'shipDate', includeIfNull: false)  DateTime? shipDate, @JsonKey(name: 'status', includeIfNull: false)  OrderStatus? status, @JsonKey(name: 'complete', includeIfNull: false)  bool complete)?  $default,) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.petId,_that.quantity,_that.shipDate,_that.status,_that.complete);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Order extends Order {
  const _Order({@JsonKey(name: 'id', includeIfNull: false) this.id, @JsonKey(name: 'petId', includeIfNull: false) this.petId, @JsonKey(name: 'quantity', includeIfNull: false) this.quantity, @JsonKey(name: 'shipDate', includeIfNull: false) this.shipDate, @JsonKey(name: 'status', includeIfNull: false) this.status, @JsonKey(name: 'complete', includeIfNull: false) this.complete = false}): super._();
  factory _Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

@override@JsonKey(name: 'id', includeIfNull: false) final  int? id;
@override@JsonKey(name: 'petId', includeIfNull: false) final  int? petId;
@override@JsonKey(name: 'quantity', includeIfNull: false) final  int? quantity;
@override@JsonKey(name: 'shipDate', includeIfNull: false) final  DateTime? shipDate;
@override@JsonKey(name: 'status', includeIfNull: false) final  OrderStatus? status;
@override@JsonKey(name: 'complete', includeIfNull: false) final  bool complete;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCopyWith<_Order> get copyWith => __$OrderCopyWithImpl<_Order>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.id, id) || other.id == id)&&(identical(other.petId, petId) || other.petId == petId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.shipDate, shipDate) || other.shipDate == shipDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.complete, complete) || other.complete == complete));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,petId,quantity,shipDate,status,complete);



}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false) int? id,@JsonKey(name: 'petId', includeIfNull: false) int? petId,@JsonKey(name: 'quantity', includeIfNull: false) int? quantity,@JsonKey(name: 'shipDate', includeIfNull: false) DateTime? shipDate,@JsonKey(name: 'status', includeIfNull: false) OrderStatus? status,@JsonKey(name: 'complete', includeIfNull: false) bool complete
});




}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? petId = freezed,Object? quantity = freezed,Object? shipDate = freezed,Object? status = freezed,Object? complete = null,}) {
  return _then(_Order(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,petId: freezed == petId ? _self.petId : petId // ignore: cast_nullable_to_non_nullable
as int?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,shipDate: freezed == shipDate ? _self.shipDate : shipDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus?,complete: null == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Category {

@JsonKey(name: 'id', includeIfNull: false) int? get id;@JsonKey(name: 'name', includeIfNull: false) String? get name;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);



}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false) int? id,@JsonKey(name: 'name', includeIfNull: false) String? name
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'name', includeIfNull: false)  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'name', includeIfNull: false)  String? name)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.id,_that.name);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'name', includeIfNull: false)  String? name)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Category extends Category {
  const _Category({@JsonKey(name: 'id', includeIfNull: false) this.id, @JsonKey(name: 'name', includeIfNull: false) this.name}): super._();
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override@JsonKey(name: 'id', includeIfNull: false) final  int? id;
@override@JsonKey(name: 'name', includeIfNull: false) final  String? name;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);



}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false) int? id,@JsonKey(name: 'name', includeIfNull: false) String? name
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_Category(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$User {

@JsonKey(name: 'id', includeIfNull: false) int? get id;@JsonKey(name: 'username', includeIfNull: false) String? get username;@JsonKey(name: 'firstName', includeIfNull: false) String? get firstName;@JsonKey(name: 'lastName', includeIfNull: false) String? get lastName;@JsonKey(name: 'email', includeIfNull: false) String? get email;@JsonKey(name: 'password', includeIfNull: false) String? get password;@JsonKey(name: 'phone', includeIfNull: false) String? get phone;@JsonKey(name: 'userStatus', includeIfNull: false) int? get userStatus;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.userStatus, userStatus) || other.userStatus == userStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,firstName,lastName,email,password,phone,userStatus);



}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false) int? id,@JsonKey(name: 'username', includeIfNull: false) String? username,@JsonKey(name: 'firstName', includeIfNull: false) String? firstName,@JsonKey(name: 'lastName', includeIfNull: false) String? lastName,@JsonKey(name: 'email', includeIfNull: false) String? email,@JsonKey(name: 'password', includeIfNull: false) String? password,@JsonKey(name: 'phone', includeIfNull: false) String? phone,@JsonKey(name: 'userStatus', includeIfNull: false) int? userStatus
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? username = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? password = freezed,Object? phone = freezed,Object? userStatus = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,userStatus: freezed == userStatus ? _self.userStatus : userStatus // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'username', includeIfNull: false)  String? username, @JsonKey(name: 'firstName', includeIfNull: false)  String? firstName, @JsonKey(name: 'lastName', includeIfNull: false)  String? lastName, @JsonKey(name: 'email', includeIfNull: false)  String? email, @JsonKey(name: 'password', includeIfNull: false)  String? password, @JsonKey(name: 'phone', includeIfNull: false)  String? phone, @JsonKey(name: 'userStatus', includeIfNull: false)  int? userStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.username,_that.firstName,_that.lastName,_that.email,_that.password,_that.phone,_that.userStatus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'username', includeIfNull: false)  String? username, @JsonKey(name: 'firstName', includeIfNull: false)  String? firstName, @JsonKey(name: 'lastName', includeIfNull: false)  String? lastName, @JsonKey(name: 'email', includeIfNull: false)  String? email, @JsonKey(name: 'password', includeIfNull: false)  String? password, @JsonKey(name: 'phone', includeIfNull: false)  String? phone, @JsonKey(name: 'userStatus', includeIfNull: false)  int? userStatus)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.username,_that.firstName,_that.lastName,_that.email,_that.password,_that.phone,_that.userStatus);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'username', includeIfNull: false)  String? username, @JsonKey(name: 'firstName', includeIfNull: false)  String? firstName, @JsonKey(name: 'lastName', includeIfNull: false)  String? lastName, @JsonKey(name: 'email', includeIfNull: false)  String? email, @JsonKey(name: 'password', includeIfNull: false)  String? password, @JsonKey(name: 'phone', includeIfNull: false)  String? phone, @JsonKey(name: 'userStatus', includeIfNull: false)  int? userStatus)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.username,_that.firstName,_that.lastName,_that.email,_that.password,_that.phone,_that.userStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User extends User {
  const _User({@JsonKey(name: 'id', includeIfNull: false) this.id, @JsonKey(name: 'username', includeIfNull: false) this.username, @JsonKey(name: 'firstName', includeIfNull: false) this.firstName, @JsonKey(name: 'lastName', includeIfNull: false) this.lastName, @JsonKey(name: 'email', includeIfNull: false) this.email, @JsonKey(name: 'password', includeIfNull: false) this.password, @JsonKey(name: 'phone', includeIfNull: false) this.phone, @JsonKey(name: 'userStatus', includeIfNull: false) this.userStatus}): super._();
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@JsonKey(name: 'id', includeIfNull: false) final  int? id;
@override@JsonKey(name: 'username', includeIfNull: false) final  String? username;
@override@JsonKey(name: 'firstName', includeIfNull: false) final  String? firstName;
@override@JsonKey(name: 'lastName', includeIfNull: false) final  String? lastName;
@override@JsonKey(name: 'email', includeIfNull: false) final  String? email;
@override@JsonKey(name: 'password', includeIfNull: false) final  String? password;
@override@JsonKey(name: 'phone', includeIfNull: false) final  String? phone;
@override@JsonKey(name: 'userStatus', includeIfNull: false) final  int? userStatus;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.userStatus, userStatus) || other.userStatus == userStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,firstName,lastName,email,password,phone,userStatus);



}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false) int? id,@JsonKey(name: 'username', includeIfNull: false) String? username,@JsonKey(name: 'firstName', includeIfNull: false) String? firstName,@JsonKey(name: 'lastName', includeIfNull: false) String? lastName,@JsonKey(name: 'email', includeIfNull: false) String? email,@JsonKey(name: 'password', includeIfNull: false) String? password,@JsonKey(name: 'phone', includeIfNull: false) String? phone,@JsonKey(name: 'userStatus', includeIfNull: false) int? userStatus
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? username = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? password = freezed,Object? phone = freezed,Object? userStatus = freezed,}) {
  return _then(_User(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,userStatus: freezed == userStatus ? _self.userStatus : userStatus // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Tag {

@JsonKey(name: 'id', includeIfNull: false) int? get id;@JsonKey(name: 'name', includeIfNull: false) String? get name;
/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagCopyWith<Tag> get copyWith => _$TagCopyWithImpl<Tag>(this as Tag, _$identity);

  /// Serializes this Tag to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tag&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);



}

/// @nodoc
abstract mixin class $TagCopyWith<$Res>  {
  factory $TagCopyWith(Tag value, $Res Function(Tag) _then) = _$TagCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false) int? id,@JsonKey(name: 'name', includeIfNull: false) String? name
});




}
/// @nodoc
class _$TagCopyWithImpl<$Res>
    implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._self, this._then);

  final Tag _self;
  final $Res Function(Tag) _then;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Tag].
extension TagPatterns on Tag {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Tag value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Tag() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Tag value)  $default,){
final _that = this;
switch (_that) {
case _Tag():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Tag value)?  $default,){
final _that = this;
switch (_that) {
case _Tag() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'name', includeIfNull: false)  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Tag() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'name', includeIfNull: false)  String? name)  $default,) {final _that = this;
switch (_that) {
case _Tag():
return $default(_that.id,_that.name);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'name', includeIfNull: false)  String? name)?  $default,) {final _that = this;
switch (_that) {
case _Tag() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Tag extends Tag {
  const _Tag({@JsonKey(name: 'id', includeIfNull: false) this.id, @JsonKey(name: 'name', includeIfNull: false) this.name}): super._();
  factory _Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

@override@JsonKey(name: 'id', includeIfNull: false) final  int? id;
@override@JsonKey(name: 'name', includeIfNull: false) final  String? name;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagCopyWith<_Tag> get copyWith => __$TagCopyWithImpl<_Tag>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TagToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tag&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);



}

/// @nodoc
abstract mixin class _$TagCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$TagCopyWith(_Tag value, $Res Function(_Tag) _then) = __$TagCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false) int? id,@JsonKey(name: 'name', includeIfNull: false) String? name
});




}
/// @nodoc
class __$TagCopyWithImpl<$Res>
    implements _$TagCopyWith<$Res> {
  __$TagCopyWithImpl(this._self, this._then);

  final _Tag _self;
  final $Res Function(_Tag) _then;

/// Create a copy of Tag
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_Tag(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Pet {

@JsonKey(name: 'id', includeIfNull: false) int? get id;@JsonKey(name: 'category', includeIfNull: false) Category? get category;@JsonKey(name: 'name', includeIfNull: false) String get name;@JsonKey(name: 'photoUrls', includeIfNull: false) List<String> get photoUrls;@JsonKey(name: 'tags', includeIfNull: false) List<Tag>? get tags;@JsonKey(name: 'status', includeIfNull: false) PetStatus? get status;
/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PetCopyWith<Pet> get copyWith => _$PetCopyWithImpl<Pet>(this as Pet, _$identity);

  /// Serializes this Pet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pet&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.photoUrls, photoUrls)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,name,const DeepCollectionEquality().hash(photoUrls),const DeepCollectionEquality().hash(tags),status);



}

/// @nodoc
abstract mixin class $PetCopyWith<$Res>  {
  factory $PetCopyWith(Pet value, $Res Function(Pet) _then) = _$PetCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false) int? id,@JsonKey(name: 'category', includeIfNull: false) Category? category,@JsonKey(name: 'name', includeIfNull: false) String name,@JsonKey(name: 'photoUrls', includeIfNull: false) List<String> photoUrls,@JsonKey(name: 'tags', includeIfNull: false) List<Tag>? tags,@JsonKey(name: 'status', includeIfNull: false) PetStatus? status
});


$CategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$PetCopyWithImpl<$Res>
    implements $PetCopyWith<$Res> {
  _$PetCopyWithImpl(this._self, this._then);

  final Pet _self;
  final $Res Function(Pet) _then;

/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? category = freezed,Object? name = null,Object? photoUrls = null,Object? tags = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrls: null == photoUrls ? _self.photoUrls : photoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PetStatus?,
  ));
}
/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [Pet].
extension PetPatterns on Pet {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pet() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pet value)  $default,){
final _that = this;
switch (_that) {
case _Pet():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pet value)?  $default,){
final _that = this;
switch (_that) {
case _Pet() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'category', includeIfNull: false)  Category? category, @JsonKey(name: 'name', includeIfNull: false)  String name, @JsonKey(name: 'photoUrls', includeIfNull: false)  List<String> photoUrls, @JsonKey(name: 'tags', includeIfNull: false)  List<Tag>? tags, @JsonKey(name: 'status', includeIfNull: false)  PetStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pet() when $default != null:
return $default(_that.id,_that.category,_that.name,_that.photoUrls,_that.tags,_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'category', includeIfNull: false)  Category? category, @JsonKey(name: 'name', includeIfNull: false)  String name, @JsonKey(name: 'photoUrls', includeIfNull: false)  List<String> photoUrls, @JsonKey(name: 'tags', includeIfNull: false)  List<Tag>? tags, @JsonKey(name: 'status', includeIfNull: false)  PetStatus? status)  $default,) {final _that = this;
switch (_that) {
case _Pet():
return $default(_that.id,_that.category,_that.name,_that.photoUrls,_that.tags,_that.status);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id', includeIfNull: false)  int? id, @JsonKey(name: 'category', includeIfNull: false)  Category? category, @JsonKey(name: 'name', includeIfNull: false)  String name, @JsonKey(name: 'photoUrls', includeIfNull: false)  List<String> photoUrls, @JsonKey(name: 'tags', includeIfNull: false)  List<Tag>? tags, @JsonKey(name: 'status', includeIfNull: false)  PetStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _Pet() when $default != null:
return $default(_that.id,_that.category,_that.name,_that.photoUrls,_that.tags,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pet extends Pet {
  const _Pet({@JsonKey(name: 'id', includeIfNull: false) this.id, @JsonKey(name: 'category', includeIfNull: false) this.category, @JsonKey(name: 'name', includeIfNull: false) required this.name, @JsonKey(name: 'photoUrls', includeIfNull: false) required final  List<String> photoUrls, @JsonKey(name: 'tags', includeIfNull: false) final  List<Tag>? tags, @JsonKey(name: 'status', includeIfNull: false) this.status}): _photoUrls = photoUrls,_tags = tags,super._();
  factory _Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

@override@JsonKey(name: 'id', includeIfNull: false) final  int? id;
@override@JsonKey(name: 'category', includeIfNull: false) final  Category? category;
@override@JsonKey(name: 'name', includeIfNull: false) final  String name;
 final  List<String> _photoUrls;
@override@JsonKey(name: 'photoUrls', includeIfNull: false) List<String> get photoUrls {
  if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photoUrls);
}

 final  List<Tag>? _tags;
@override@JsonKey(name: 'tags', includeIfNull: false) List<Tag>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'status', includeIfNull: false) final  PetStatus? status;

/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PetCopyWith<_Pet> get copyWith => __$PetCopyWithImpl<_Pet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pet&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._photoUrls, _photoUrls)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,name,const DeepCollectionEquality().hash(_photoUrls),const DeepCollectionEquality().hash(_tags),status);



}

/// @nodoc
abstract mixin class _$PetCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory _$PetCopyWith(_Pet value, $Res Function(_Pet) _then) = __$PetCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false) int? id,@JsonKey(name: 'category', includeIfNull: false) Category? category,@JsonKey(name: 'name', includeIfNull: false) String name,@JsonKey(name: 'photoUrls', includeIfNull: false) List<String> photoUrls,@JsonKey(name: 'tags', includeIfNull: false) List<Tag>? tags,@JsonKey(name: 'status', includeIfNull: false) PetStatus? status
});


@override $CategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$PetCopyWithImpl<$Res>
    implements _$PetCopyWith<$Res> {
  __$PetCopyWithImpl(this._self, this._then);

  final _Pet _self;
  final $Res Function(_Pet) _then;

/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? category = freezed,Object? name = null,Object? photoUrls = null,Object? tags = freezed,Object? status = freezed,}) {
  return _then(_Pet(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrls: null == photoUrls ? _self._photoUrls : photoUrls // ignore: cast_nullable_to_non_nullable
as List<String>,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<Tag>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PetStatus?,
  ));
}

/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$ApiResponse {

@JsonKey(name: 'code', includeIfNull: false) int? get code;@JsonKey(name: 'type', includeIfNull: false) String? get type;@JsonKey(name: 'message', includeIfNull: false) String? get message;
/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseCopyWith<ApiResponse> get copyWith => _$ApiResponseCopyWithImpl<ApiResponse>(this as ApiResponse, _$identity);

  /// Serializes this ApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.type, type) || other.type == type)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,type,message);



}

/// @nodoc
abstract mixin class $ApiResponseCopyWith<$Res>  {
  factory $ApiResponseCopyWith(ApiResponse value, $Res Function(ApiResponse) _then) = _$ApiResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'code', includeIfNull: false) int? code,@JsonKey(name: 'type', includeIfNull: false) String? type,@JsonKey(name: 'message', includeIfNull: false) String? message
});




}
/// @nodoc
class _$ApiResponseCopyWithImpl<$Res>
    implements $ApiResponseCopyWith<$Res> {
  _$ApiResponseCopyWithImpl(this._self, this._then);

  final ApiResponse _self;
  final $Res Function(ApiResponse) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? type = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiResponse].
extension ApiResponsePatterns on ApiResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _ApiResponse():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ApiResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'code', includeIfNull: false)  int? code, @JsonKey(name: 'type', includeIfNull: false)  String? type, @JsonKey(name: 'message', includeIfNull: false)  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiResponse() when $default != null:
return $default(_that.code,_that.type,_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'code', includeIfNull: false)  int? code, @JsonKey(name: 'type', includeIfNull: false)  String? type, @JsonKey(name: 'message', includeIfNull: false)  String? message)  $default,) {final _that = this;
switch (_that) {
case _ApiResponse():
return $default(_that.code,_that.type,_that.message);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'code', includeIfNull: false)  int? code, @JsonKey(name: 'type', includeIfNull: false)  String? type, @JsonKey(name: 'message', includeIfNull: false)  String? message)?  $default,) {final _that = this;
switch (_that) {
case _ApiResponse() when $default != null:
return $default(_that.code,_that.type,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiResponse extends ApiResponse {
  const _ApiResponse({@JsonKey(name: 'code', includeIfNull: false) this.code, @JsonKey(name: 'type', includeIfNull: false) this.type, @JsonKey(name: 'message', includeIfNull: false) this.message}): super._();
  factory _ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);

@override@JsonKey(name: 'code', includeIfNull: false) final  int? code;
@override@JsonKey(name: 'type', includeIfNull: false) final  String? type;
@override@JsonKey(name: 'message', includeIfNull: false) final  String? message;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiResponseCopyWith<_ApiResponse> get copyWith => __$ApiResponseCopyWithImpl<_ApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.type, type) || other.type == type)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,type,message);



}

/// @nodoc
abstract mixin class _$ApiResponseCopyWith<$Res> implements $ApiResponseCopyWith<$Res> {
  factory _$ApiResponseCopyWith(_ApiResponse value, $Res Function(_ApiResponse) _then) = __$ApiResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'code', includeIfNull: false) int? code,@JsonKey(name: 'type', includeIfNull: false) String? type,@JsonKey(name: 'message', includeIfNull: false) String? message
});




}
/// @nodoc
class __$ApiResponseCopyWithImpl<$Res>
    implements _$ApiResponseCopyWith<$Res> {
  __$ApiResponseCopyWithImpl(this._self, this._then);

  final _ApiResponse _self;
  final $Res Function(_ApiResponse) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? type = freezed,Object? message = freezed,}) {
  return _then(_ApiResponse(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UpdatePetWithFormSchema {

@JsonKey(name: 'name', includeIfNull: false) String? get name;@JsonKey(name: 'status', includeIfNull: false) String? get status;
/// Create a copy of UpdatePetWithFormSchema
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePetWithFormSchemaCopyWith<UpdatePetWithFormSchema> get copyWith => _$UpdatePetWithFormSchemaCopyWithImpl<UpdatePetWithFormSchema>(this as UpdatePetWithFormSchema, _$identity);

  /// Serializes this UpdatePetWithFormSchema to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePetWithFormSchema&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,status);



}

/// @nodoc
abstract mixin class $UpdatePetWithFormSchemaCopyWith<$Res>  {
  factory $UpdatePetWithFormSchemaCopyWith(UpdatePetWithFormSchema value, $Res Function(UpdatePetWithFormSchema) _then) = _$UpdatePetWithFormSchemaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name', includeIfNull: false) String? name,@JsonKey(name: 'status', includeIfNull: false) String? status
});




}
/// @nodoc
class _$UpdatePetWithFormSchemaCopyWithImpl<$Res>
    implements $UpdatePetWithFormSchemaCopyWith<$Res> {
  _$UpdatePetWithFormSchemaCopyWithImpl(this._self, this._then);

  final UpdatePetWithFormSchema _self;
  final $Res Function(UpdatePetWithFormSchema) _then;

/// Create a copy of UpdatePetWithFormSchema
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdatePetWithFormSchema].
extension UpdatePetWithFormSchemaPatterns on UpdatePetWithFormSchema {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatePetWithFormSchema value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatePetWithFormSchema() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatePetWithFormSchema value)  $default,){
final _that = this;
switch (_that) {
case _UpdatePetWithFormSchema():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatePetWithFormSchema value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatePetWithFormSchema() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name', includeIfNull: false)  String? name, @JsonKey(name: 'status', includeIfNull: false)  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatePetWithFormSchema() when $default != null:
return $default(_that.name,_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name', includeIfNull: false)  String? name, @JsonKey(name: 'status', includeIfNull: false)  String? status)  $default,) {final _that = this;
switch (_that) {
case _UpdatePetWithFormSchema():
return $default(_that.name,_that.status);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name', includeIfNull: false)  String? name, @JsonKey(name: 'status', includeIfNull: false)  String? status)?  $default,) {final _that = this;
switch (_that) {
case _UpdatePetWithFormSchema() when $default != null:
return $default(_that.name,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdatePetWithFormSchema extends UpdatePetWithFormSchema {
  const _UpdatePetWithFormSchema({@JsonKey(name: 'name', includeIfNull: false) this.name, @JsonKey(name: 'status', includeIfNull: false) this.status}): super._();
  factory _UpdatePetWithFormSchema.fromJson(Map<String, dynamic> json) => _$UpdatePetWithFormSchemaFromJson(json);

@override@JsonKey(name: 'name', includeIfNull: false) final  String? name;
@override@JsonKey(name: 'status', includeIfNull: false) final  String? status;

/// Create a copy of UpdatePetWithFormSchema
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePetWithFormSchemaCopyWith<_UpdatePetWithFormSchema> get copyWith => __$UpdatePetWithFormSchemaCopyWithImpl<_UpdatePetWithFormSchema>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdatePetWithFormSchemaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePetWithFormSchema&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,status);



}

/// @nodoc
abstract mixin class _$UpdatePetWithFormSchemaCopyWith<$Res> implements $UpdatePetWithFormSchemaCopyWith<$Res> {
  factory _$UpdatePetWithFormSchemaCopyWith(_UpdatePetWithFormSchema value, $Res Function(_UpdatePetWithFormSchema) _then) = __$UpdatePetWithFormSchemaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name', includeIfNull: false) String? name,@JsonKey(name: 'status', includeIfNull: false) String? status
});




}
/// @nodoc
class __$UpdatePetWithFormSchemaCopyWithImpl<$Res>
    implements _$UpdatePetWithFormSchemaCopyWith<$Res> {
  __$UpdatePetWithFormSchemaCopyWithImpl(this._self, this._then);

  final _UpdatePetWithFormSchema _self;
  final $Res Function(_UpdatePetWithFormSchema) _then;

/// Create a copy of UpdatePetWithFormSchema
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? status = freezed,}) {
  return _then(_UpdatePetWithFormSchema(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
