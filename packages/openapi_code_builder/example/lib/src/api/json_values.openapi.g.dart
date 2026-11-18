// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_values.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bag _$BagFromJson(Map<String, dynamic> json) =>
    Bag(label: json['label'] as String?);

Map<String, dynamic> _$BagToJson(Bag instance) => <String, dynamic>{
  'label': ?instance.label,
};

_Item _$ItemFromJson(Map<String, dynamic> json) =>
    _Item(name: json['name'] as String);

Map<String, dynamic> _$ItemToJson(_Item instance) => <String, dynamic>{
  'name': instance.name,
};

const _$ColorEnumMap = {Color.red: 'red', Color.lightGreen: 'light-green'};
