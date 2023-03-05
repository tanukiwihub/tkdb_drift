// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tkdb.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TKDB _$$_TKDBFromJson(Map<String, dynamic> json) => _$_TKDB(
      version: json['version'] as String,
      dateOfCreation: json['dateOfCreation'] as String,
      radicals: (json['radicals'] as List<dynamic>)
          .map((e) => TKDBRadical.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TKDBToJson(_$_TKDB instance) => <String, dynamic>{
      'version': instance.version,
      'dateOfCreation': instance.dateOfCreation,
      'radicals': instance.radicals,
    };

_$_TKDBRadical _$$_TKDBRadicalFromJson(Map<String, dynamic> json) =>
    _$_TKDBRadical(
      literal: json['literal'] as String,
      kvgHexcode: json['kvgHexcode'] as String,
      strokecount: json['strokecount'] as int,
      number: json['number'] as int,
      meaning:
          (json['meaning'] as List<dynamic>).map((e) => e as String).toList(),
      reading:
          (json['reading'] as List<dynamic>).map((e) => e as String).toList(),
      variantOf: json['variantOf'] as String?,
    );

Map<String, dynamic> _$$_TKDBRadicalToJson(_$_TKDBRadical instance) =>
    <String, dynamic>{
      'literal': instance.literal,
      'kvgHexcode': instance.kvgHexcode,
      'strokecount': instance.strokecount,
      'number': instance.number,
      'meaning': instance.meaning,
      'reading': instance.reading,
      'variantOf': instance.variantOf,
    };
