import 'package:freezed_annotation/freezed_annotation.dart';

part 'tkdb.model.freezed.dart';
part 'tkdb.model.g.dart';

@freezed
class TKDB with _$TKDB {
  const factory TKDB({
    required String version,
    required String dateOfCreation,
    required List<TKDBRadical> radicals,
  }) = _TKDB;

  factory TKDB.fromJson(Map<String, Object?> json) => _$TKDBFromJson(json);
}

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
