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
    required TKDBTag tags,
  }) = _TKDB;

  factory TKDB.fromJson(Map<String, Object?> json) => _$TKDBFromJson(json);
}

//
// Tags
//

@freezed
class TKDBTag with _$TKDBTag {
  const factory TKDBTag({
    required Map<String, String> kanjiReadingType,
  }) = _TKDBTag;

  factory TKDBTag.fromJson(Map<String, Object?> json) =>
      _$TKDBTagFromJson(json);
}

//
// Radical
//

@freezed
class TKDBRadical with _$TKDBRadical {
  const factory TKDBRadical({
    required String literal,
    required String kvgHexcode,
    required int strokecount,
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
    required List<TKDBKanjiReading> reading,
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
    required String value,
    required String type,
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
    required String kvgHexcode,
  }) = _TKDBKanjiMisc;

  factory TKDBKanjiMisc.fromJson(Map<String, Object?> json) =>
      _$TKDBKanjiMiscFromJson(json);
}
