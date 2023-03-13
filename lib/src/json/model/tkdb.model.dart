import 'package:freezed_annotation/freezed_annotation.dart';

part 'tkdb.model.freezed.dart';
part 'tkdb.model.g.dart';

@freezed
class TKDB with _$TKDB {
  const factory TKDB({
    required String version,
    required String dateOfCreation,
    required List<TKDBRadical> radicals,
    required List<TKDBKanji> kanji,
    required TKDBKeyword keywords,
  }) = _TKDB;

  factory TKDB.fromJson(Map<String, Object?> json) => _$TKDBFromJson(json);
}

//
// Tags
//

@freezed
class TKDBKeyword with _$TKDBKeyword {
  const factory TKDBKeyword({
    required Map<String, String> jlpt,
    required Map<String, String> lang,
    required Map<String, String> kanjiGrade,
    required Map<String, String> kanjiReadingType,
  }) = _TKDBKeyword;

  factory TKDBKeyword.fromJson(Map<String, Object?> json) =>
      _$TKDBKeywordFromJson(json);
}

//
// Radical
//

@freezed
class TKDBRadical with _$TKDBRadical {
  const factory TKDBRadical({
    required String literal,
    required String hexcode,
    required int strokes,
    required int number,
    required List<String> meaning,
    required List<String> reading,
    String? variantOf,
  }) = _TKDBRadical;

  factory TKDBRadical.fromJson(Map<String, Object?> json) =>
      _$TKDBRadicalFromJson(json);
}

//
// Kanji
//

@freezed
class TKDBKanji with _$TKDBKanji {
  const factory TKDBKanji({
    required String literal,
    required List<TKDBKanjiMeaning> meaning,
    required TKDBKanjiReading reading,
    required List<TKDBKanjiPart> part,
    required TKDBKanjiMisc misc,
  }) = _TKDBKanji;

  factory TKDBKanji.fromJson(Map<String, Object?> json) =>
      _$TKDBKanjiFromJson(json);
}

@freezed
class TKDBKanjiMeaning with _$TKDBKanjiMeaning {
  const factory TKDBKanjiMeaning({
    required String lang,
    required String value,
  }) = _TKDBKanjiMeaning;

  factory TKDBKanjiMeaning.fromJson(Map<String, Object?> json) =>
      _$TKDBKanjiMeaningFromJson(json);
}

@freezed
class TKDBKanjiReading with _$TKDBKanjiReading {
  const factory TKDBKanjiReading({
    required List<String> on,
    required List<String> kun,
    required List<String> nanori,
  }) = _TKDBKanjiReading;

  factory TKDBKanjiReading.fromJson(Map<String, Object?> json) =>
      _$TKDBKanjiReadingFromJson(json);
}

@freezed
class TKDBKanjiPart with _$TKDBKanjiPart {
  const factory TKDBKanjiPart({
    required String literal,
    required TKDBKanjiPartType type,
  }) = _TKDBKanjiPart;

  factory TKDBKanjiPart.fromJson(Map<String, Object?> json) =>
      _$TKDBKanjiPartFromJson(json);
}

enum TKDBKanjiPartType {
  @JsonValue("kanji")
  kanji,
  @JsonValue("radical")
  radical,
  @JsonValue("component")
  component,
}

@freezed
class TKDBKanjiMisc with _$TKDBKanjiMisc {
  const factory TKDBKanjiMisc({
    required String hexcode,
    required Map<String, String> codepoint,
    required Map<String, String> querycode,
    required Map<String, String> dicref,
    required List<String> lookalike,
    required List<String> antonym,
    required List<String> synonym,
    required List<String> variant,
    String? jlpt,
    String? grade,
    int? strokes,
    int? frequencyJ,
  }) = _TKDBKanjiMisc;

  factory TKDBKanjiMisc.fromJson(Map<String, Object?> json) =>
      _$TKDBKanjiMiscFromJson(json);
}
