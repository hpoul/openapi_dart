// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'openapi31.openapi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Owner {

@JsonKey(name: 'name', includeIfNull: false) String get name;@JsonKey(name: 'email') String? get email;
/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OwnerCopyWith<Owner> get copyWith => _$OwnerCopyWithImpl<Owner>(this as Owner, _$identity);

  /// Serializes this Owner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Owner&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email);



}

/// @nodoc
abstract mixin class $OwnerCopyWith<$Res>  {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) _then) = _$OwnerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name', includeIfNull: false) String name,@JsonKey(name: 'email') String? email
});




}
/// @nodoc
class _$OwnerCopyWithImpl<$Res>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._self, this._then);

  final Owner _self;
  final $Res Function(Owner) _then;

/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Owner].
extension OwnerPatterns on Owner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Owner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Owner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Owner value)  $default,){
final _that = this;
switch (_that) {
case _Owner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Owner value)?  $default,){
final _that = this;
switch (_that) {
case _Owner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name', includeIfNull: false)  String name, @JsonKey(name: 'email')  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Owner() when $default != null:
return $default(_that.name,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name', includeIfNull: false)  String name, @JsonKey(name: 'email')  String? email)  $default,) {final _that = this;
switch (_that) {
case _Owner():
return $default(_that.name,_that.email);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name', includeIfNull: false)  String name, @JsonKey(name: 'email')  String? email)?  $default,) {final _that = this;
switch (_that) {
case _Owner() when $default != null:
return $default(_that.name,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Owner extends Owner {
  const _Owner({@JsonKey(name: 'name', includeIfNull: false) required this.name, @JsonKey(name: 'email') this.email}): super._();
  factory _Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

@override@JsonKey(name: 'name', includeIfNull: false) final  String name;
@override@JsonKey(name: 'email') final  String? email;

/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OwnerCopyWith<_Owner> get copyWith => __$OwnerCopyWithImpl<_Owner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OwnerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Owner&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email);



}

/// @nodoc
abstract mixin class _$OwnerCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$OwnerCopyWith(_Owner value, $Res Function(_Owner) _then) = __$OwnerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name', includeIfNull: false) String name,@JsonKey(name: 'email') String? email
});




}
/// @nodoc
class __$OwnerCopyWithImpl<$Res>
    implements _$OwnerCopyWith<$Res> {
  __$OwnerCopyWithImpl(this._self, this._then);

  final _Owner _self;
  final $Res Function(_Owner) _then;

/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = freezed,}) {
  return _then(_Owner(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Pet {

@JsonKey(name: 'id', includeIfNull: false) int get id;@JsonKey(name: 'name', includeIfNull: false) String get name;@JsonKey(name: 'kind', includeIfNull: false) String get kind;@JsonKey(name: 'tag') String? get tag;@JsonKey(name: 'weight') num? get weight;@JsonKey(name: 'owner') Owner? get owner;@JsonKey(name: 'previousOwner') Owner? get previousOwner;@JsonKey(name: 'nicknames') List<String>? get nicknames;@JsonKey(name: 'idOrName', includeIfNull: false) Object? get idOrName;
/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PetCopyWith<Pet> get copyWith => _$PetCopyWithImpl<Pet>(this as Pet, _$identity);

  /// Serializes this Pet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pet&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.previousOwner, previousOwner) || other.previousOwner == previousOwner)&&const DeepCollectionEquality().equals(other.nicknames, nicknames)&&const DeepCollectionEquality().equals(other.idOrName, idOrName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kind,tag,weight,owner,previousOwner,const DeepCollectionEquality().hash(nicknames),const DeepCollectionEquality().hash(idOrName));



}

/// @nodoc
abstract mixin class $PetCopyWith<$Res>  {
  factory $PetCopyWith(Pet value, $Res Function(Pet) _then) = _$PetCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false) int id,@JsonKey(name: 'name', includeIfNull: false) String name,@JsonKey(name: 'kind', includeIfNull: false) String kind,@JsonKey(name: 'tag') String? tag,@JsonKey(name: 'weight') num? weight,@JsonKey(name: 'owner') Owner? owner,@JsonKey(name: 'previousOwner') Owner? previousOwner,@JsonKey(name: 'nicknames') List<String>? nicknames,@JsonKey(name: 'idOrName', includeIfNull: false) Object? idOrName
});


$OwnerCopyWith<$Res>? get owner;$OwnerCopyWith<$Res>? get previousOwner;

}
/// @nodoc
class _$PetCopyWithImpl<$Res>
    implements $PetCopyWith<$Res> {
  _$PetCopyWithImpl(this._self, this._then);

  final Pet _self;
  final $Res Function(Pet) _then;

/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? kind = null,Object? tag = freezed,Object? weight = freezed,Object? owner = freezed,Object? previousOwner = freezed,Object? nicknames = freezed,Object? idOrName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as num?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner?,previousOwner: freezed == previousOwner ? _self.previousOwner : previousOwner // ignore: cast_nullable_to_non_nullable
as Owner?,nicknames: freezed == nicknames ? _self.nicknames : nicknames // ignore: cast_nullable_to_non_nullable
as List<String>?,idOrName: freezed == idOrName ? _self.idOrName : idOrName ,
  ));
}
/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $OwnerCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerCopyWith<$Res>? get previousOwner {
    if (_self.previousOwner == null) {
    return null;
  }

  return $OwnerCopyWith<$Res>(_self.previousOwner!, (value) {
    return _then(_self.copyWith(previousOwner: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', includeIfNull: false)  int id, @JsonKey(name: 'name', includeIfNull: false)  String name, @JsonKey(name: 'kind', includeIfNull: false)  String kind, @JsonKey(name: 'tag')  String? tag, @JsonKey(name: 'weight')  num? weight, @JsonKey(name: 'owner')  Owner? owner, @JsonKey(name: 'previousOwner')  Owner? previousOwner, @JsonKey(name: 'nicknames')  List<String>? nicknames, @JsonKey(name: 'idOrName', includeIfNull: false)  Object? idOrName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pet() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.tag,_that.weight,_that.owner,_that.previousOwner,_that.nicknames,_that.idOrName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', includeIfNull: false)  int id, @JsonKey(name: 'name', includeIfNull: false)  String name, @JsonKey(name: 'kind', includeIfNull: false)  String kind, @JsonKey(name: 'tag')  String? tag, @JsonKey(name: 'weight')  num? weight, @JsonKey(name: 'owner')  Owner? owner, @JsonKey(name: 'previousOwner')  Owner? previousOwner, @JsonKey(name: 'nicknames')  List<String>? nicknames, @JsonKey(name: 'idOrName', includeIfNull: false)  Object? idOrName)  $default,) {final _that = this;
switch (_that) {
case _Pet():
return $default(_that.id,_that.name,_that.kind,_that.tag,_that.weight,_that.owner,_that.previousOwner,_that.nicknames,_that.idOrName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id', includeIfNull: false)  int id, @JsonKey(name: 'name', includeIfNull: false)  String name, @JsonKey(name: 'kind', includeIfNull: false)  String kind, @JsonKey(name: 'tag')  String? tag, @JsonKey(name: 'weight')  num? weight, @JsonKey(name: 'owner')  Owner? owner, @JsonKey(name: 'previousOwner')  Owner? previousOwner, @JsonKey(name: 'nicknames')  List<String>? nicknames, @JsonKey(name: 'idOrName', includeIfNull: false)  Object? idOrName)?  $default,) {final _that = this;
switch (_that) {
case _Pet() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.tag,_that.weight,_that.owner,_that.previousOwner,_that.nicknames,_that.idOrName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pet extends Pet {
  const _Pet({@JsonKey(name: 'id', includeIfNull: false) required this.id, @JsonKey(name: 'name', includeIfNull: false) required this.name, @JsonKey(name: 'kind', includeIfNull: false) required this.kind, @JsonKey(name: 'tag') this.tag, @JsonKey(name: 'weight') this.weight, @JsonKey(name: 'owner') this.owner, @JsonKey(name: 'previousOwner') this.previousOwner, @JsonKey(name: 'nicknames') final  List<String>? nicknames, @JsonKey(name: 'idOrName', includeIfNull: false) this.idOrName}): _nicknames = nicknames,super._();
  factory _Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

@override@JsonKey(name: 'id', includeIfNull: false) final  int id;
@override@JsonKey(name: 'name', includeIfNull: false) final  String name;
@override@JsonKey(name: 'kind', includeIfNull: false) final  String kind;
@override@JsonKey(name: 'tag') final  String? tag;
@override@JsonKey(name: 'weight') final  num? weight;
@override@JsonKey(name: 'owner') final  Owner? owner;
@override@JsonKey(name: 'previousOwner') final  Owner? previousOwner;
 final  List<String>? _nicknames;
@override@JsonKey(name: 'nicknames') List<String>? get nicknames {
  final value = _nicknames;
  if (value == null) return null;
  if (_nicknames is EqualUnmodifiableListView) return _nicknames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'idOrName', includeIfNull: false) final  Object? idOrName;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pet&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.previousOwner, previousOwner) || other.previousOwner == previousOwner)&&const DeepCollectionEquality().equals(other._nicknames, _nicknames)&&const DeepCollectionEquality().equals(other.idOrName, idOrName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kind,tag,weight,owner,previousOwner,const DeepCollectionEquality().hash(_nicknames),const DeepCollectionEquality().hash(idOrName));



}

/// @nodoc
abstract mixin class _$PetCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory _$PetCopyWith(_Pet value, $Res Function(_Pet) _then) = __$PetCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id', includeIfNull: false) int id,@JsonKey(name: 'name', includeIfNull: false) String name,@JsonKey(name: 'kind', includeIfNull: false) String kind,@JsonKey(name: 'tag') String? tag,@JsonKey(name: 'weight') num? weight,@JsonKey(name: 'owner') Owner? owner,@JsonKey(name: 'previousOwner') Owner? previousOwner,@JsonKey(name: 'nicknames') List<String>? nicknames,@JsonKey(name: 'idOrName', includeIfNull: false) Object? idOrName
});


@override $OwnerCopyWith<$Res>? get owner;@override $OwnerCopyWith<$Res>? get previousOwner;

}
/// @nodoc
class __$PetCopyWithImpl<$Res>
    implements _$PetCopyWith<$Res> {
  __$PetCopyWithImpl(this._self, this._then);

  final _Pet _self;
  final $Res Function(_Pet) _then;

/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? kind = null,Object? tag = freezed,Object? weight = freezed,Object? owner = freezed,Object? previousOwner = freezed,Object? nicknames = freezed,Object? idOrName = freezed,}) {
  return _then(_Pet(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as num?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner?,previousOwner: freezed == previousOwner ? _self.previousOwner : previousOwner // ignore: cast_nullable_to_non_nullable
as Owner?,nicknames: freezed == nicknames ? _self._nicknames : nicknames // ignore: cast_nullable_to_non_nullable
as List<String>?,idOrName: freezed == idOrName ? _self.idOrName : idOrName ,
  ));
}

/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $OwnerCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}/// Create a copy of Pet
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerCopyWith<$Res>? get previousOwner {
    if (_self.previousOwner == null) {
    return null;
  }

  return $OwnerCopyWith<$Res>(_self.previousOwner!, (value) {
    return _then(_self.copyWith(previousOwner: value));
  });
}
}

// dart format on
