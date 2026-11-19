// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openapi31.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Owner _$OwnerFromJson(Map<String, dynamic> json) =>
    _Owner(name: json['name'] as String, email: json['email'] as String?);

Map<String, dynamic> _$OwnerToJson(_Owner instance) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
};

_Pet _$PetFromJson(Map<String, dynamic> json) => _Pet(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  kind: json['kind'] as String,
  tag: json['tag'] as String?,
  weight: json['weight'] as num?,
  owner: json['owner'] == null
      ? null
      : Owner.fromJson(json['owner'] as Map<String, dynamic>),
  previousOwner: json['previousOwner'] == null
      ? null
      : Owner.fromJson(json['previousOwner'] as Map<String, dynamic>),
  nicknames: (json['nicknames'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  status: json['status'] as String? ?? 'available',
  idOrName: json['idOrName'],
);

Map<String, dynamic> _$PetToJson(_Pet instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'kind': instance.kind,
  'tag': instance.tag,
  'weight': instance.weight,
  'owner': instance.owner,
  'previousOwner': instance.previousOwner,
  'nicknames': instance.nicknames,
  'status': instance.status,
  'idOrName': ?instance.idOrName,
};

_Adoption _$AdoptionFromJson(Map<String, dynamic> json) => _Adoption(
  pet: Pet.fromJson(json['pet'] as Map<String, dynamic>),
  adopter: json['adopter'] == null
      ? null
      : Owner.fromJson(json['adopter'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdoptionToJson(_Adoption instance) => <String, dynamic>{
  'pet': instance.pet,
  'adopter': instance.adopter,
};
