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
      keywords: TKDBKeyword.fromJson(json['keywords'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TKDBToJson(_$_TKDB instance) => <String, dynamic>{
      'version': instance.version,
      'dateOfCreation': instance.dateOfCreation,
      'radicals': instance.radicals,
      'kanji': instance.kanji,
      'keywords': instance.keywords,
    };

_$_TKDBKeyword _$$_TKDBKeywordFromJson(Map<String, dynamic> json) =>
    _$_TKDBKeyword(
      jlpt: Map<String, String>.from(json['jlpt'] as Map),
      lang: Map<String, String>.from(json['lang'] as Map),
      kanjiGrade: Map<String, String>.from(json['kanjiGrade'] as Map),
      kanjiReadingType:
          Map<String, String>.from(json['kanjiReadingType'] as Map),
    );

Map<String, dynamic> _$$_TKDBKeywordToJson(_$_TKDBKeyword instance) =>
    <String, dynamic>{
      'jlpt': instance.jlpt,
      'lang': instance.lang,
      'kanjiGrade': instance.kanjiGrade,
      'kanjiReadingType': instance.kanjiReadingType,
    };

_$_TKDBRadical _$$_TKDBRadicalFromJson(Map<String, dynamic> json) =>
    _$_TKDBRadical(
      literal: json['literal'] as String,
      hexcode: json['hexcode'] as String,
      strokes: json['strokes'] as int,
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
      'hexcode': instance.hexcode,
      'strokes': instance.strokes,
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
      reading:
          TKDBKanjiReading.fromJson(json['reading'] as Map<String, dynamic>),
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
      on: (json['on'] as List<dynamic>).map((e) => e as String).toList(),
      kun: (json['kun'] as List<dynamic>).map((e) => e as String).toList(),
      nanori:
          (json['nanori'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_TKDBKanjiReadingToJson(_$_TKDBKanjiReading instance) =>
    <String, dynamic>{
      'on': instance.on,
      'kun': instance.kun,
      'nanori': instance.nanori,
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
      hexcode: json['hexcode'] as String,
      codepoint: Map<String, String>.from(json['codepoint'] as Map),
      querycode: Map<String, String>.from(json['querycode'] as Map),
      dicref: Map<String, String>.from(json['dicref'] as Map),
      lookalike:
          (json['lookalike'] as List<dynamic>).map((e) => e as String).toList(),
      antonym:
          (json['antonym'] as List<dynamic>).map((e) => e as String).toList(),
      synonym:
          (json['synonym'] as List<dynamic>).map((e) => e as String).toList(),
      variant:
          (json['variant'] as List<dynamic>).map((e) => e as String).toList(),
      jlpt: json['jlpt'] as String?,
      grade: json['grade'] as String?,
      strokes: json['strokes'] as int?,
      frequencyJ: json['frequencyJ'] as int?,
    );

Map<String, dynamic> _$$_TKDBKanjiMiscToJson(_$_TKDBKanjiMisc instance) =>
    <String, dynamic>{
      'hexcode': instance.hexcode,
      'codepoint': instance.codepoint,
      'querycode': instance.querycode,
      'dicref': instance.dicref,
      'lookalike': instance.lookalike,
      'antonym': instance.antonym,
      'synonym': instance.synonym,
      'variant': instance.variant,
      'jlpt': instance.jlpt,
      'grade': instance.grade,
      'strokes': instance.strokes,
      'frequencyJ': instance.frequencyJ,
    };
