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
      kanji: (json['kanji'] as List<dynamic>)
          .map((e) => TKDBKanji.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: TKDBTag.fromJson(json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TKDBToJson(_$_TKDB instance) => <String, dynamic>{
      'version': instance.version,
      'dateOfCreation': instance.dateOfCreation,
      'radicals': instance.radicals,
      'kanji': instance.kanji,
      'tags': instance.tags,
    };

_$_TKDBTag _$$_TKDBTagFromJson(Map<String, dynamic> json) => _$_TKDBTag(
      kanjiReadingType:
          Map<String, String>.from(json['kanjiReadingType'] as Map),
    );

Map<String, dynamic> _$$_TKDBTagToJson(_$_TKDBTag instance) =>
    <String, dynamic>{
      'kanjiReadingType': instance.kanjiReadingType,
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

_$_TKDBKanji _$$_TKDBKanjiFromJson(Map<String, dynamic> json) => _$_TKDBKanji(
      literal: json['literal'] as String,
      meaning: (json['meaning'] as List<dynamic>)
          .map((e) => TKDBKanjiMeaning.fromJson(e as Map<String, dynamic>))
          .toList(),
      reading: (json['reading'] as List<dynamic>)
          .map((e) => TKDBKanjiReading.fromJson(e as Map<String, dynamic>))
          .toList(),
      part: (json['part'] as List<dynamic>)
          .map((e) => TKDBKanjiPart.fromJson(e as Map<String, dynamic>))
          .toList(),
      misc: TKDBKanjiMisc.fromJson(json['misc'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TKDBKanjiToJson(_$_TKDBKanji instance) =>
    <String, dynamic>{
      'literal': instance.literal,
      'meaning': instance.meaning,
      'reading': instance.reading,
      'part': instance.part,
      'misc': instance.misc,
    };

_$_TKDBKanjiMeaning _$$_TKDBKanjiMeaningFromJson(Map<String, dynamic> json) =>
    _$_TKDBKanjiMeaning(
      lang: json['lang'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_TKDBKanjiMeaningToJson(_$_TKDBKanjiMeaning instance) =>
    <String, dynamic>{
      'lang': instance.lang,
      'value': instance.value,
    };

_$_TKDBKanjiReading _$$_TKDBKanjiReadingFromJson(Map<String, dynamic> json) =>
    _$_TKDBKanjiReading(
      value: json['value'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_TKDBKanjiReadingToJson(_$_TKDBKanjiReading instance) =>
    <String, dynamic>{
      'value': instance.value,
      'type': instance.type,
    };

_$_TKDBKanjiPart _$$_TKDBKanjiPartFromJson(Map<String, dynamic> json) =>
    _$_TKDBKanjiPart(
      literal: json['literal'] as String,
      type: $enumDecode(_$TKDBKanjiPartTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_TKDBKanjiPartToJson(_$_TKDBKanjiPart instance) =>
    <String, dynamic>{
      'literal': instance.literal,
      'type': _$TKDBKanjiPartTypeEnumMap[instance.type]!,
    };

const _$TKDBKanjiPartTypeEnumMap = {
  TKDBKanjiPartType.kanji: 'kanji',
  TKDBKanjiPartType.radical: 'radical',
  TKDBKanjiPartType.component: 'component',
};

_$_TKDBKanjiMisc _$$_TKDBKanjiMiscFromJson(Map<String, dynamic> json) =>
    _$_TKDBKanjiMisc(
      kvgHexcode: json['kvgHexcode'] as String,
    );

Map<String, dynamic> _$$_TKDBKanjiMiscToJson(_$_TKDBKanjiMisc instance) =>
    <String, dynamic>{
      'kvgHexcode': instance.kvgHexcode,
    };
