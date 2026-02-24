// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'testapi.openapi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterRequest {

@JsonKey(name: 'email', includeIfNull: false) String get email;
/// Create a copy of RegisterRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterRequestCopyWith<RegisterRequest> get copyWith => _$RegisterRequestCopyWithImpl<RegisterRequest>(this as RegisterRequest, _$identity);

  /// Serializes this RegisterRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterRequest&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email);



}

/// @nodoc
abstract mixin class $RegisterRequestCopyWith<$Res>  {
  factory $RegisterRequestCopyWith(RegisterRequest value, $Res Function(RegisterRequest) _then) = _$RegisterRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'email', includeIfNull: false) String email
});




}
/// @nodoc
class _$RegisterRequestCopyWithImpl<$Res>
    implements $RegisterRequestCopyWith<$Res> {
  _$RegisterRequestCopyWithImpl(this._self, this._then);

  final RegisterRequest _self;
  final $Res Function(RegisterRequest) _then;

/// Create a copy of RegisterRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterRequest].
extension RegisterRequestPatterns on RegisterRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterRequest value)  $default,){
final _that = this;
switch (_that) {
case _RegisterRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'email', includeIfNull: false)  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterRequest() when $default != null:
return $default(_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'email', includeIfNull: false)  String email)  $default,) {final _that = this;
switch (_that) {
case _RegisterRequest():
return $default(_that.email);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'email', includeIfNull: false)  String email)?  $default,) {final _that = this;
switch (_that) {
case _RegisterRequest() when $default != null:
return $default(_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterRequest extends RegisterRequest {
  const _RegisterRequest({@JsonKey(name: 'email', includeIfNull: false) required this.email}): super._();
  factory _RegisterRequest.fromJson(Map<String, dynamic> json) => _$RegisterRequestFromJson(json);

@override@JsonKey(name: 'email', includeIfNull: false) final  String email;

/// Create a copy of RegisterRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterRequestCopyWith<_RegisterRequest> get copyWith => __$RegisterRequestCopyWithImpl<_RegisterRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterRequest&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email);



}

/// @nodoc
abstract mixin class _$RegisterRequestCopyWith<$Res> implements $RegisterRequestCopyWith<$Res> {
  factory _$RegisterRequestCopyWith(_RegisterRequest value, $Res Function(_RegisterRequest) _then) = __$RegisterRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'email', includeIfNull: false) String email
});




}
/// @nodoc
class __$RegisterRequestCopyWithImpl<$Res>
    implements _$RegisterRequestCopyWith<$Res> {
  __$RegisterRequestCopyWithImpl(this._self, this._then);

  final _RegisterRequest _self;
  final $Res Function(_RegisterRequest) _then;

/// Create a copy of RegisterRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_RegisterRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$HelloRequest {

@JsonKey(name: 'salutation', includeIfNull: false) String? get salutation;
/// Create a copy of HelloRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HelloRequestCopyWith<HelloRequest> get copyWith => _$HelloRequestCopyWithImpl<HelloRequest>(this as HelloRequest, _$identity);

  /// Serializes this HelloRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HelloRequest&&(identical(other.salutation, salutation) || other.salutation == salutation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,salutation);



}

/// @nodoc
abstract mixin class $HelloRequestCopyWith<$Res>  {
  factory $HelloRequestCopyWith(HelloRequest value, $Res Function(HelloRequest) _then) = _$HelloRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'salutation', includeIfNull: false) String? salutation
});




}
/// @nodoc
class _$HelloRequestCopyWithImpl<$Res>
    implements $HelloRequestCopyWith<$Res> {
  _$HelloRequestCopyWithImpl(this._self, this._then);

  final HelloRequest _self;
  final $Res Function(HelloRequest) _then;

/// Create a copy of HelloRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? salutation = freezed,}) {
  return _then(_self.copyWith(
salutation: freezed == salutation ? _self.salutation : salutation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HelloRequest].
extension HelloRequestPatterns on HelloRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HelloRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HelloRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HelloRequest value)  $default,){
final _that = this;
switch (_that) {
case _HelloRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HelloRequest value)?  $default,){
final _that = this;
switch (_that) {
case _HelloRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'salutation', includeIfNull: false)  String? salutation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HelloRequest() when $default != null:
return $default(_that.salutation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'salutation', includeIfNull: false)  String? salutation)  $default,) {final _that = this;
switch (_that) {
case _HelloRequest():
return $default(_that.salutation);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'salutation', includeIfNull: false)  String? salutation)?  $default,) {final _that = this;
switch (_that) {
case _HelloRequest() when $default != null:
return $default(_that.salutation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HelloRequest extends HelloRequest {
  const _HelloRequest({@JsonKey(name: 'salutation', includeIfNull: false) this.salutation}): super._();
  factory _HelloRequest.fromJson(Map<String, dynamic> json) => _$HelloRequestFromJson(json);

@override@JsonKey(name: 'salutation', includeIfNull: false) final  String? salutation;

/// Create a copy of HelloRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HelloRequestCopyWith<_HelloRequest> get copyWith => __$HelloRequestCopyWithImpl<_HelloRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HelloRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HelloRequest&&(identical(other.salutation, salutation) || other.salutation == salutation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,salutation);



}

/// @nodoc
abstract mixin class _$HelloRequestCopyWith<$Res> implements $HelloRequestCopyWith<$Res> {
  factory _$HelloRequestCopyWith(_HelloRequest value, $Res Function(_HelloRequest) _then) = __$HelloRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'salutation', includeIfNull: false) String? salutation
});




}
/// @nodoc
class __$HelloRequestCopyWithImpl<$Res>
    implements _$HelloRequestCopyWith<$Res> {
  __$HelloRequestCopyWithImpl(this._self, this._then);

  final _HelloRequest _self;
  final $Res Function(_HelloRequest) _then;

/// Create a copy of HelloRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? salutation = freezed,}) {
  return _then(_HelloRequest(
salutation: freezed == salutation ? _self.salutation : salutation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$HelloResponse {

@JsonKey(name: 'message', includeIfNull: false) String? get message;
/// Create a copy of HelloResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HelloResponseCopyWith<HelloResponse> get copyWith => _$HelloResponseCopyWithImpl<HelloResponse>(this as HelloResponse, _$identity);

  /// Serializes this HelloResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HelloResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);



}

/// @nodoc
abstract mixin class $HelloResponseCopyWith<$Res>  {
  factory $HelloResponseCopyWith(HelloResponse value, $Res Function(HelloResponse) _then) = _$HelloResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message', includeIfNull: false) String? message
});




}
/// @nodoc
class _$HelloResponseCopyWithImpl<$Res>
    implements $HelloResponseCopyWith<$Res> {
  _$HelloResponseCopyWithImpl(this._self, this._then);

  final HelloResponse _self;
  final $Res Function(HelloResponse) _then;

/// Create a copy of HelloResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HelloResponse].
extension HelloResponsePatterns on HelloResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HelloResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HelloResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HelloResponse value)  $default,){
final _that = this;
switch (_that) {
case _HelloResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HelloResponse value)?  $default,){
final _that = this;
switch (_that) {
case _HelloResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'message', includeIfNull: false)  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HelloResponse() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'message', includeIfNull: false)  String? message)  $default,) {final _that = this;
switch (_that) {
case _HelloResponse():
return $default(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'message', includeIfNull: false)  String? message)?  $default,) {final _that = this;
switch (_that) {
case _HelloResponse() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HelloResponse extends HelloResponse {
  const _HelloResponse({@JsonKey(name: 'message', includeIfNull: false) this.message}): super._();
  factory _HelloResponse.fromJson(Map<String, dynamic> json) => _$HelloResponseFromJson(json);

@override@JsonKey(name: 'message', includeIfNull: false) final  String? message;

/// Create a copy of HelloResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HelloResponseCopyWith<_HelloResponse> get copyWith => __$HelloResponseCopyWithImpl<_HelloResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HelloResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HelloResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);



}

/// @nodoc
abstract mixin class _$HelloResponseCopyWith<$Res> implements $HelloResponseCopyWith<$Res> {
  factory _$HelloResponseCopyWith(_HelloResponse value, $Res Function(_HelloResponse) _then) = __$HelloResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'message', includeIfNull: false) String? message
});




}
/// @nodoc
class __$HelloResponseCopyWithImpl<$Res>
    implements _$HelloResponseCopyWith<$Res> {
  __$HelloResponseCopyWithImpl(this._self, this._then);

  final _HelloResponse _self;
  final $Res Function(_HelloResponse) _then;

/// Create a copy of HelloResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_HelloResponse(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RecursiveObject {

@JsonKey(name: 'parent', includeIfNull: false) RecursiveObject? get parent;
/// Create a copy of RecursiveObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecursiveObjectCopyWith<RecursiveObject> get copyWith => _$RecursiveObjectCopyWithImpl<RecursiveObject>(this as RecursiveObject, _$identity);

  /// Serializes this RecursiveObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecursiveObject&&(identical(other.parent, parent) || other.parent == parent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parent);



}

/// @nodoc
abstract mixin class $RecursiveObjectCopyWith<$Res>  {
  factory $RecursiveObjectCopyWith(RecursiveObject value, $Res Function(RecursiveObject) _then) = _$RecursiveObjectCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'parent', includeIfNull: false) RecursiveObject? parent
});


$RecursiveObjectCopyWith<$Res>? get parent;

}
/// @nodoc
class _$RecursiveObjectCopyWithImpl<$Res>
    implements $RecursiveObjectCopyWith<$Res> {
  _$RecursiveObjectCopyWithImpl(this._self, this._then);

  final RecursiveObject _self;
  final $Res Function(RecursiveObject) _then;

/// Create a copy of RecursiveObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parent = freezed,}) {
  return _then(_self.copyWith(
parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as RecursiveObject?,
  ));
}
/// Create a copy of RecursiveObject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecursiveObjectCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $RecursiveObjectCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// Adds pattern-matching-related methods to [RecursiveObject].
extension RecursiveObjectPatterns on RecursiveObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecursiveObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecursiveObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecursiveObject value)  $default,){
final _that = this;
switch (_that) {
case _RecursiveObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecursiveObject value)?  $default,){
final _that = this;
switch (_that) {
case _RecursiveObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent', includeIfNull: false)  RecursiveObject? parent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecursiveObject() when $default != null:
return $default(_that.parent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'parent', includeIfNull: false)  RecursiveObject? parent)  $default,) {final _that = this;
switch (_that) {
case _RecursiveObject():
return $default(_that.parent);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'parent', includeIfNull: false)  RecursiveObject? parent)?  $default,) {final _that = this;
switch (_that) {
case _RecursiveObject() when $default != null:
return $default(_that.parent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecursiveObject extends RecursiveObject {
  const _RecursiveObject({@JsonKey(name: 'parent', includeIfNull: false) this.parent}): super._();
  factory _RecursiveObject.fromJson(Map<String, dynamic> json) => _$RecursiveObjectFromJson(json);

@override@JsonKey(name: 'parent', includeIfNull: false) final  RecursiveObject? parent;

/// Create a copy of RecursiveObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecursiveObjectCopyWith<_RecursiveObject> get copyWith => __$RecursiveObjectCopyWithImpl<_RecursiveObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecursiveObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecursiveObject&&(identical(other.parent, parent) || other.parent == parent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parent);



}

/// @nodoc
abstract mixin class _$RecursiveObjectCopyWith<$Res> implements $RecursiveObjectCopyWith<$Res> {
  factory _$RecursiveObjectCopyWith(_RecursiveObject value, $Res Function(_RecursiveObject) _then) = __$RecursiveObjectCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'parent', includeIfNull: false) RecursiveObject? parent
});


@override $RecursiveObjectCopyWith<$Res>? get parent;

}
/// @nodoc
class __$RecursiveObjectCopyWithImpl<$Res>
    implements _$RecursiveObjectCopyWith<$Res> {
  __$RecursiveObjectCopyWithImpl(this._self, this._then);

  final _RecursiveObject _self;
  final $Res Function(_RecursiveObject) _then;

/// Create a copy of RecursiveObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parent = freezed,}) {
  return _then(_RecursiveObject(
parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as RecursiveObject?,
  ));
}

/// Create a copy of RecursiveObject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecursiveObjectCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $RecursiveObjectCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// @nodoc
mixin _$TypedAdditionalPropertiesAddProp {

@JsonKey(name: 'foo', includeIfNull: false) int? get foo;@JsonKey(name: 'bar', includeIfNull: false) num? get bar;
/// Create a copy of TypedAdditionalPropertiesAddProp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypedAdditionalPropertiesAddPropCopyWith<TypedAdditionalPropertiesAddProp> get copyWith => _$TypedAdditionalPropertiesAddPropCopyWithImpl<TypedAdditionalPropertiesAddProp>(this as TypedAdditionalPropertiesAddProp, _$identity);

  /// Serializes this TypedAdditionalPropertiesAddProp to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypedAdditionalPropertiesAddProp&&(identical(other.foo, foo) || other.foo == foo)&&(identical(other.bar, bar) || other.bar == bar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foo,bar);



}

/// @nodoc
abstract mixin class $TypedAdditionalPropertiesAddPropCopyWith<$Res>  {
  factory $TypedAdditionalPropertiesAddPropCopyWith(TypedAdditionalPropertiesAddProp value, $Res Function(TypedAdditionalPropertiesAddProp) _then) = _$TypedAdditionalPropertiesAddPropCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'foo', includeIfNull: false) int? foo,@JsonKey(name: 'bar', includeIfNull: false) num? bar
});




}
/// @nodoc
class _$TypedAdditionalPropertiesAddPropCopyWithImpl<$Res>
    implements $TypedAdditionalPropertiesAddPropCopyWith<$Res> {
  _$TypedAdditionalPropertiesAddPropCopyWithImpl(this._self, this._then);

  final TypedAdditionalPropertiesAddProp _self;
  final $Res Function(TypedAdditionalPropertiesAddProp) _then;

/// Create a copy of TypedAdditionalPropertiesAddProp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? foo = freezed,Object? bar = freezed,}) {
  return _then(_self.copyWith(
foo: freezed == foo ? _self.foo : foo // ignore: cast_nullable_to_non_nullable
as int?,bar: freezed == bar ? _self.bar : bar // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [TypedAdditionalPropertiesAddProp].
extension TypedAdditionalPropertiesAddPropPatterns on TypedAdditionalPropertiesAddProp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypedAdditionalPropertiesAddProp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypedAdditionalPropertiesAddProp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypedAdditionalPropertiesAddProp value)  $default,){
final _that = this;
switch (_that) {
case _TypedAdditionalPropertiesAddProp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypedAdditionalPropertiesAddProp value)?  $default,){
final _that = this;
switch (_that) {
case _TypedAdditionalPropertiesAddProp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'foo', includeIfNull: false)  int? foo, @JsonKey(name: 'bar', includeIfNull: false)  num? bar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TypedAdditionalPropertiesAddProp() when $default != null:
return $default(_that.foo,_that.bar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'foo', includeIfNull: false)  int? foo, @JsonKey(name: 'bar', includeIfNull: false)  num? bar)  $default,) {final _that = this;
switch (_that) {
case _TypedAdditionalPropertiesAddProp():
return $default(_that.foo,_that.bar);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'foo', includeIfNull: false)  int? foo, @JsonKey(name: 'bar', includeIfNull: false)  num? bar)?  $default,) {final _that = this;
switch (_that) {
case _TypedAdditionalPropertiesAddProp() when $default != null:
return $default(_that.foo,_that.bar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypedAdditionalPropertiesAddProp extends TypedAdditionalPropertiesAddProp {
  const _TypedAdditionalPropertiesAddProp({@JsonKey(name: 'foo', includeIfNull: false) this.foo, @JsonKey(name: 'bar', includeIfNull: false) this.bar}): super._();
  factory _TypedAdditionalPropertiesAddProp.fromJson(Map<String, dynamic> json) => _$TypedAdditionalPropertiesAddPropFromJson(json);

@override@JsonKey(name: 'foo', includeIfNull: false) final  int? foo;
@override@JsonKey(name: 'bar', includeIfNull: false) final  num? bar;

/// Create a copy of TypedAdditionalPropertiesAddProp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypedAdditionalPropertiesAddPropCopyWith<_TypedAdditionalPropertiesAddProp> get copyWith => __$TypedAdditionalPropertiesAddPropCopyWithImpl<_TypedAdditionalPropertiesAddProp>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypedAdditionalPropertiesAddPropToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypedAdditionalPropertiesAddProp&&(identical(other.foo, foo) || other.foo == foo)&&(identical(other.bar, bar) || other.bar == bar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,foo,bar);



}

/// @nodoc
abstract mixin class _$TypedAdditionalPropertiesAddPropCopyWith<$Res> implements $TypedAdditionalPropertiesAddPropCopyWith<$Res> {
  factory _$TypedAdditionalPropertiesAddPropCopyWith(_TypedAdditionalPropertiesAddProp value, $Res Function(_TypedAdditionalPropertiesAddProp) _then) = __$TypedAdditionalPropertiesAddPropCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'foo', includeIfNull: false) int? foo,@JsonKey(name: 'bar', includeIfNull: false) num? bar
});




}
/// @nodoc
class __$TypedAdditionalPropertiesAddPropCopyWithImpl<$Res>
    implements _$TypedAdditionalPropertiesAddPropCopyWith<$Res> {
  __$TypedAdditionalPropertiesAddPropCopyWithImpl(this._self, this._then);

  final _TypedAdditionalPropertiesAddProp _self;
  final $Res Function(_TypedAdditionalPropertiesAddProp) _then;

/// Create a copy of TypedAdditionalPropertiesAddProp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? foo = freezed,Object? bar = freezed,}) {
  return _then(_TypedAdditionalPropertiesAddProp(
foo: freezed == foo ? _self.foo : foo // ignore: cast_nullable_to_non_nullable
as int?,bar: freezed == bar ? _self.bar : bar // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}


/// @nodoc
mixin _$UuidExampleMessageIdGetResponseBody200 {

@JsonKey(name: 'id', includeIfNull: false)@ApiUuidJsonConverter() ApiUuid get id;
/// Create a copy of UuidExampleMessageIdGetResponseBody200
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UuidExampleMessageIdGetResponseBody200CopyWith<UuidExampleMessageIdGetResponseBody200> get copyWith => _$UuidExampleMessageIdGetResponseBody200CopyWithImpl<UuidExampleMessageIdGetResponseBody200>(this as UuidExampleMessageIdGetResponseBody200, _$identity);

  /// Serializes this UuidExampleMessageIdGetResponseBody200 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UuidExampleMessageIdGetResponseBody200&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);



}

/// @nodoc
abstract mixin class $UuidExampleMessageIdGetResponseBody200CopyWith<$Res>  {
  factory $UuidExampleMessageIdGetResponseBody200CopyWith(UuidExampleMessageIdGetResponseBody200 value, $Res Function(UuidExampleMessageIdGetResponseBody200) _then) = _$UuidExampleMessageIdGetResponseBody200CopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false)@ApiUuidJsonConverter() ApiUuid id
});




}
/// @nodoc
class _$UuidExampleMessageIdGetResponseBody200CopyWithImpl<$Res>
    implements $UuidExampleMessageIdGetResponseBody200CopyWith<$Res> {
  _$UuidExampleMessageIdGetResponseBody200CopyWithImpl(this._self, this._then);

  final UuidExampleMessageIdGetResponseBody200 _self;
  final $Res Function(UuidExampleMessageIdGetResponseBody200) _then;

/// Create a copy of UuidExampleMessageIdGetResponseBody200
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as ApiUuid,
  ));
}

}


/// Adds pattern-matching-related methods to [UuidExampleMessageIdGetResponseBody200].
extension UuidExampleMessageIdGetResponseBody200Patterns on UuidExampleMessageIdGetResponseBody200 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UuidExampleMessageIdGetResponseBody200 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UuidExampleMessageIdGetResponseBody200() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UuidExampleMessageIdGetResponseBody200 value)  $default,){
final _that = this;
switch (_that) {
case _UuidExampleMessageIdGetResponseBody200():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UuidExampleMessageIdGetResponseBody200 value)?  $default,){
final _that = this;
switch (_that) {
case _UuidExampleMessageIdGetResponseBody200() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', includeIfNull: false)@ApiUuidJsonConverter()  ApiUuid id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UuidExampleMessageIdGetResponseBody200() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', includeIfNull: false)@ApiUuidJsonConverter()  ApiUuid id)  $default,) {final _that = this;
switch (_that) {
case _UuidExampleMessageIdGetResponseBody200():
return $default(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id', includeIfNull: false)@ApiUuidJsonConverter()  ApiUuid id)?  $default,) {final _that = this;
switch (_that) {
case _UuidExampleMessageIdGetResponseBody200() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UuidExampleMessageIdGetResponseBody200 extends UuidExampleMessageIdGetResponseBody200 {
  const _UuidExampleMessageIdGetResponseBody200({@JsonKey(name: 'id', includeIfNull: false)@ApiUuidJsonConverter() required this.id}): super._();
  factory _UuidExampleMessageIdGetResponseBody200.fromJson(Map<String, dynamic> json) => _$UuidExampleMessageIdGetResponseBody200FromJson(json);

@override@JsonKey(name: 'id', includeIfNull: false)@ApiUuidJsonConverter() final  ApiUuid id;

/// Create a copy of UuidExampleMessageIdGetResponseBody200
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UuidExampleMessageIdGetResponseBody200CopyWith<_UuidExampleMessageIdGetResponseBody200> get copyWith => __$UuidExampleMessageIdGetResponseBody200CopyWithImpl<_UuidExampleMessageIdGetResponseBody200>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UuidExampleMessageIdGetResponseBody200ToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UuidExampleMessageIdGetResponseBody200&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);



}

/// @nodoc
abstract mixin class _$UuidExampleMessageIdGetResponseBody200CopyWith<$Res> implements $UuidExampleMessageIdGetResponseBody200CopyWith<$Res> {
  factory _$UuidExampleMessageIdGetResponseBody200CopyWith(_UuidExampleMessageIdGetResponseBody200 value, $Res Function(_UuidExampleMessageIdGetResponseBody200) _then) = __$UuidExampleMessageIdGetResponseBody200CopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false)@ApiUuidJsonConverter() ApiUuid id
});




}
/// @nodoc
class __$UuidExampleMessageIdGetResponseBody200CopyWithImpl<$Res>
    implements _$UuidExampleMessageIdGetResponseBody200CopyWith<$Res> {
  __$UuidExampleMessageIdGetResponseBody200CopyWithImpl(this._self, this._then);

  final _UuidExampleMessageIdGetResponseBody200 _self;
  final $Res Function(_UuidExampleMessageIdGetResponseBody200) _then;

/// Create a copy of UuidExampleMessageIdGetResponseBody200
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_UuidExampleMessageIdGetResponseBody200(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as ApiUuid,
  ));
}


}

// dart format on
