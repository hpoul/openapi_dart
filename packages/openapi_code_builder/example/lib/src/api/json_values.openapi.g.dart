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

Schedule _$ScheduleFromJson(Map<String, dynamic> json) => Schedule();

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{};

Palette _$PaletteFromJson(Map<String, dynamic> json) => Palette();

Map<String, dynamic> _$PaletteToJson(Palette instance) => <String, dynamic>{};

_Item _$ItemFromJson(Map<String, dynamic> json) =>
    _Item(name: json['name'] as String);

Map<String, dynamic> _$ItemToJson(_Item instance) => <String, dynamic>{
  'name': instance.name,
};

const _$ColorEnumMap = {Color.red: 'red', Color.lightGreen: 'light-green'};
