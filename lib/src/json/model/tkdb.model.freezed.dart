// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tkdb.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TKDB _$TKDBFromJson(Map<String, dynamic> json) {
  return _TKDB.fromJson(json);
}

/// @nodoc
mixin _$TKDB {
  String get version => throw _privateConstructorUsedError;
  String get dateOfCreation => throw _privateConstructorUsedError;
  List<TKDBRadical> get radicals => throw _privateConstructorUsedError;
  List<TKDBKanji> get kanji => throw _privateConstructorUsedError;
  TKDBTag get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TKDBCopyWith<TKDB> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TKDBCopyWith<$Res> {
  factory $TKDBCopyWith(TKDB value, $Res Function(TKDB) then) =
      _$TKDBCopyWithImpl<$Res, TKDB>;
  @useResult
  $Res call(
      {String version,
      String dateOfCreation,
      List<TKDBRadical> radicals,
      List<TKDBKanji> kanji,
      TKDBTag tags});

  $TKDBTagCopyWith<$Res> get tags;
}

/// @nodoc
class _$TKDBCopyWithImpl<$Res, $Val extends TKDB>
    implements $TKDBCopyWith<$Res> {
  _$TKDBCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? dateOfCreation = null,
    Object? radicals = null,
    Object? kanji = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfCreation: null == dateOfCreation
          ? _value.dateOfCreation
          : dateOfCreation // ignore: cast_nullable_to_non_nullable
              as String,
      radicals: null == radicals
          ? _value.radicals
          : radicals // ignore: cast_nullable_to_non_nullable
              as List<TKDBRadical>,
      kanji: null == kanji
          ? _value.kanji
          : kanji // ignore: cast_nullable_to_non_nullable
              as List<TKDBKanji>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as TKDBTag,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TKDBTagCopyWith<$Res> get tags {
    return $TKDBTagCopyWith<$Res>(_value.tags, (value) {
      return _then(_value.copyWith(tags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TKDBCopyWith<$Res> implements $TKDBCopyWith<$Res> {
  factory _$$_TKDBCopyWith(_$_TKDB value, $Res Function(_$_TKDB) then) =
      __$$_TKDBCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String version,
      String dateOfCreation,
      List<TKDBRadical> radicals,
      List<TKDBKanji> kanji,
      TKDBTag tags});

  @override
  $TKDBTagCopyWith<$Res> get tags;
}

/// @nodoc
class __$$_TKDBCopyWithImpl<$Res> extends _$TKDBCopyWithImpl<$Res, _$_TKDB>
    implements _$$_TKDBCopyWith<$Res> {
  __$$_TKDBCopyWithImpl(_$_TKDB _value, $Res Function(_$_TKDB) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? dateOfCreation = null,
    Object? radicals = null,
    Object? kanji = null,
    Object? tags = null,
  }) {
    return _then(_$_TKDB(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfCreation: null == dateOfCreation
          ? _value.dateOfCreation
          : dateOfCreation // ignore: cast_nullable_to_non_nullable
              as String,
      radicals: null == radicals
          ? _value._radicals
          : radicals // ignore: cast_nullable_to_non_nullable
              as List<TKDBRadical>,
      kanji: null == kanji
          ? _value._kanji
          : kanji // ignore: cast_nullable_to_non_nullable
              as List<TKDBKanji>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as TKDBTag,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TKDB implements _TKDB {
  const _$_TKDB(
      {required this.version,
      required this.dateOfCreation,
      required final List<TKDBRadical> radicals,
      required final List<TKDBKanji> kanji,
      required this.tags})
      : _radicals = radicals,
        _kanji = kanji;

  factory _$_TKDB.fromJson(Map<String, dynamic> json) => _$$_TKDBFromJson(json);

  @override
  final String version;
  @override
  final String dateOfCreation;
  final List<TKDBRadical> _radicals;
  @override
  List<TKDBRadical> get radicals {
    if (_radicals is EqualUnmodifiableListView) return _radicals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_radicals);
  }

  final List<TKDBKanji> _kanji;
  @override
  List<TKDBKanji> get kanji {
    if (_kanji is EqualUnmodifiableListView) return _kanji;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_kanji);
  }

  @override
  final TKDBTag tags;

  @override
  String toString() {
    return 'TKDB(version: $version, dateOfCreation: $dateOfCreation, radicals: $radicals, kanji: $kanji, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TKDB &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.dateOfCreation, dateOfCreation) ||
                other.dateOfCreation == dateOfCreation) &&
            const DeepCollectionEquality().equals(other._radicals, _radicals) &&
            const DeepCollectionEquality().equals(other._kanji, _kanji) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      dateOfCreation,
      const DeepCollectionEquality().hash(_radicals),
      const DeepCollectionEquality().hash(_kanji),
      tags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TKDBCopyWith<_$_TKDB> get copyWith =>
      __$$_TKDBCopyWithImpl<_$_TKDB>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TKDBToJson(
      this,
    );
  }
}

abstract class _TKDB implements TKDB {
  const factory _TKDB(
      {required final String version,
      required final String dateOfCreation,
      required final List<TKDBRadical> radicals,
      required final List<TKDBKanji> kanji,
      required final TKDBTag tags}) = _$_TKDB;

  factory _TKDB.fromJson(Map<String, dynamic> json) = _$_TKDB.fromJson;

  @override
  String get version;
  @override
  String get dateOfCreation;
  @override
  List<TKDBRadical> get radicals;
  @override
  List<TKDBKanji> get kanji;
  @override
  TKDBTag get tags;
  @override
  @JsonKey(ignore: true)
  _$$_TKDBCopyWith<_$_TKDB> get copyWith => throw _privateConstructorUsedError;
}

TKDBTag _$TKDBTagFromJson(Map<String, dynamic> json) {
  return _TKDBTag.fromJson(json);
}

/// @nodoc
mixin _$TKDBTag {
  Map<String, String> get kanjiReadingType =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TKDBTagCopyWith<TKDBTag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TKDBTagCopyWith<$Res> {
  factory $TKDBTagCopyWith(TKDBTag value, $Res Function(TKDBTag) then) =
      _$TKDBTagCopyWithImpl<$Res, TKDBTag>;
  @useResult
  $Res call({Map<String, String> kanjiReadingType});
}

/// @nodoc
class _$TKDBTagCopyWithImpl<$Res, $Val extends TKDBTag>
    implements $TKDBTagCopyWith<$Res> {
  _$TKDBTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kanjiReadingType = null,
  }) {
    return _then(_value.copyWith(
      kanjiReadingType: null == kanjiReadingType
          ? _value.kanjiReadingType
          : kanjiReadingType // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TKDBTagCopyWith<$Res> implements $TKDBTagCopyWith<$Res> {
  factory _$$_TKDBTagCopyWith(
          _$_TKDBTag value, $Res Function(_$_TKDBTag) then) =
      __$$_TKDBTagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String> kanjiReadingType});
}

/// @nodoc
class __$$_TKDBTagCopyWithImpl<$Res>
    extends _$TKDBTagCopyWithImpl<$Res, _$_TKDBTag>
    implements _$$_TKDBTagCopyWith<$Res> {
  __$$_TKDBTagCopyWithImpl(_$_TKDBTag _value, $Res Function(_$_TKDBTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kanjiReadingType = null,
  }) {
    return _then(_$_TKDBTag(
      kanjiReadingType: null == kanjiReadingType
          ? _value._kanjiReadingType
          : kanjiReadingType // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TKDBTag implements _TKDBTag {
  const _$_TKDBTag({required final Map<String, String> kanjiReadingType})
      : _kanjiReadingType = kanjiReadingType;

  factory _$_TKDBTag.fromJson(Map<String, dynamic> json) =>
      _$$_TKDBTagFromJson(json);

  final Map<String, String> _kanjiReadingType;
  @override
  Map<String, String> get kanjiReadingType {
    if (_kanjiReadingType is EqualUnmodifiableMapView) return _kanjiReadingType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_kanjiReadingType);
  }

  @override
  String toString() {
    return 'TKDBTag(kanjiReadingType: $kanjiReadingType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TKDBTag &&
            const DeepCollectionEquality()
                .equals(other._kanjiReadingType, _kanjiReadingType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_kanjiReadingType));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TKDBTagCopyWith<_$_TKDBTag> get copyWith =>
      __$$_TKDBTagCopyWithImpl<_$_TKDBTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TKDBTagToJson(
      this,
    );
  }
}

abstract class _TKDBTag implements TKDBTag {
  const factory _TKDBTag(
      {required final Map<String, String> kanjiReadingType}) = _$_TKDBTag;

  factory _TKDBTag.fromJson(Map<String, dynamic> json) = _$_TKDBTag.fromJson;

  @override
  Map<String, String> get kanjiReadingType;
  @override
  @JsonKey(ignore: true)
  _$$_TKDBTagCopyWith<_$_TKDBTag> get copyWith =>
      throw _privateConstructorUsedError;
}

TKDBRadical _$TKDBRadicalFromJson(Map<String, dynamic> json) {
  return _TKDBRadical.fromJson(json);
}

/// @nodoc
mixin _$TKDBRadical {
  String get literal => throw _privateConstructorUsedError;
  String get kvgHexcode => throw _privateConstructorUsedError;
  int get strokecount => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  List<String> get meaning => throw _privateConstructorUsedError;
  List<String> get reading => throw _privateConstructorUsedError;
  String? get variantOf => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TKDBRadicalCopyWith<TKDBRadical> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TKDBRadicalCopyWith<$Res> {
  factory $TKDBRadicalCopyWith(
          TKDBRadical value, $Res Function(TKDBRadical) then) =
      _$TKDBRadicalCopyWithImpl<$Res, TKDBRadical>;
  @useResult
  $Res call(
      {String literal,
      String kvgHexcode,
      int strokecount,
      int number,
      List<String> meaning,
      List<String> reading,
      String? variantOf});
}

/// @nodoc
class _$TKDBRadicalCopyWithImpl<$Res, $Val extends TKDBRadical>
    implements $TKDBRadicalCopyWith<$Res> {
  _$TKDBRadicalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? literal = null,
    Object? kvgHexcode = null,
    Object? strokecount = null,
    Object? number = null,
    Object? meaning = null,
    Object? reading = null,
    Object? variantOf = freezed,
  }) {
    return _then(_value.copyWith(
      literal: null == literal
          ? _value.literal
          : literal // ignore: cast_nullable_to_non_nullable
              as String,
      kvgHexcode: null == kvgHexcode
          ? _value.kvgHexcode
          : kvgHexcode // ignore: cast_nullable_to_non_nullable
              as String,
      strokecount: null == strokecount
          ? _value.strokecount
          : strokecount // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reading: null == reading
          ? _value.reading
          : reading // ignore: cast_nullable_to_non_nullable
              as List<String>,
      variantOf: freezed == variantOf
          ? _value.variantOf
          : variantOf // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TKDBRadicalCopyWith<$Res>
    implements $TKDBRadicalCopyWith<$Res> {
  factory _$$_TKDBRadicalCopyWith(
          _$_TKDBRadical value, $Res Function(_$_TKDBRadical) then) =
      __$$_TKDBRadicalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String literal,
      String kvgHexcode,
      int strokecount,
      int number,
      List<String> meaning,
      List<String> reading,
      String? variantOf});
}

/// @nodoc
class __$$_TKDBRadicalCopyWithImpl<$Res>
    extends _$TKDBRadicalCopyWithImpl<$Res, _$_TKDBRadical>
    implements _$$_TKDBRadicalCopyWith<$Res> {
  __$$_TKDBRadicalCopyWithImpl(
      _$_TKDBRadical _value, $Res Function(_$_TKDBRadical) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? literal = null,
    Object? kvgHexcode = null,
    Object? strokecount = null,
    Object? number = null,
    Object? meaning = null,
    Object? reading = null,
    Object? variantOf = freezed,
  }) {
    return _then(_$_TKDBRadical(
      literal: null == literal
          ? _value.literal
          : literal // ignore: cast_nullable_to_non_nullable
              as String,
      kvgHexcode: null == kvgHexcode
          ? _value.kvgHexcode
          : kvgHexcode // ignore: cast_nullable_to_non_nullable
              as String,
      strokecount: null == strokecount
          ? _value.strokecount
          : strokecount // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      meaning: null == meaning
          ? _value._meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reading: null == reading
          ? _value._reading
          : reading // ignore: cast_nullable_to_non_nullable
              as List<String>,
      variantOf: freezed == variantOf
          ? _value.variantOf
          : variantOf // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TKDBRadical implements _TKDBRadical {
  const _$_TKDBRadical(
      {required this.literal,
      required this.kvgHexcode,
      required this.strokecount,
      required this.number,
      required final List<String> meaning,
      required final List<String> reading,
      this.variantOf})
      : _meaning = meaning,
        _reading = reading;

  factory _$_TKDBRadical.fromJson(Map<String, dynamic> json) =>
      _$$_TKDBRadicalFromJson(json);

  @override
  final String literal;
  @override
  final String kvgHexcode;
  @override
  final int strokecount;
  @override
  final int number;
  final List<String> _meaning;
  @override
  List<String> get meaning {
    if (_meaning is EqualUnmodifiableListView) return _meaning;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meaning);
  }

  final List<String> _reading;
  @override
  List<String> get reading {
    if (_reading is EqualUnmodifiableListView) return _reading;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reading);
  }

  @override
  final String? variantOf;

  @override
  String toString() {
    return 'TKDBRadical(literal: $literal, kvgHexcode: $kvgHexcode, strokecount: $strokecount, number: $number, meaning: $meaning, reading: $reading, variantOf: $variantOf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TKDBRadical &&
            (identical(other.literal, literal) || other.literal == literal) &&
            (identical(other.kvgHexcode, kvgHexcode) ||
                other.kvgHexcode == kvgHexcode) &&
            (identical(other.strokecount, strokecount) ||
                other.strokecount == strokecount) &&
            (identical(other.number, number) || other.number == number) &&
            const DeepCollectionEquality().equals(other._meaning, _meaning) &&
            const DeepCollectionEquality().equals(other._reading, _reading) &&
            (identical(other.variantOf, variantOf) ||
                other.variantOf == variantOf));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      literal,
      kvgHexcode,
      strokecount,
      number,
      const DeepCollectionEquality().hash(_meaning),
      const DeepCollectionEquality().hash(_reading),
      variantOf);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TKDBRadicalCopyWith<_$_TKDBRadical> get copyWith =>
      __$$_TKDBRadicalCopyWithImpl<_$_TKDBRadical>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TKDBRadicalToJson(
      this,
    );
  }
}

abstract class _TKDBRadical implements TKDBRadical {
  const factory _TKDBRadical(
      {required final String literal,
      required final String kvgHexcode,
      required final int strokecount,
      required final int number,
      required final List<String> meaning,
      required final List<String> reading,
      final String? variantOf}) = _$_TKDBRadical;

  factory _TKDBRadical.fromJson(Map<String, dynamic> json) =
      _$_TKDBRadical.fromJson;

  @override
  String get literal;
  @override
  String get kvgHexcode;
  @override
  int get strokecount;
  @override
  int get number;
  @override
  List<String> get meaning;
  @override
  List<String> get reading;
  @override
  String? get variantOf;
  @override
  @JsonKey(ignore: true)
  _$$_TKDBRadicalCopyWith<_$_TKDBRadical> get copyWith =>
      throw _privateConstructorUsedError;
}

TKDBKanji _$TKDBKanjiFromJson(Map<String, dynamic> json) {
  return _TKDBKanji.fromJson(json);
}

/// @nodoc
mixin _$TKDBKanji {
  String get literal => throw _privateConstructorUsedError;
  List<TKDBKanjiMeaning> get meaning => throw _privateConstructorUsedError;
  List<TKDBKanjiReading> get reading => throw _privateConstructorUsedError;
  List<TKDBKanjiPart> get part => throw _privateConstructorUsedError;
  TKDBKanjiMisc get misc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TKDBKanjiCopyWith<TKDBKanji> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TKDBKanjiCopyWith<$Res> {
  factory $TKDBKanjiCopyWith(TKDBKanji value, $Res Function(TKDBKanji) then) =
      _$TKDBKanjiCopyWithImpl<$Res, TKDBKanji>;
  @useResult
  $Res call(
      {String literal,
      List<TKDBKanjiMeaning> meaning,
      List<TKDBKanjiReading> reading,
      List<TKDBKanjiPart> part,
      TKDBKanjiMisc misc});

  $TKDBKanjiMiscCopyWith<$Res> get misc;
}

/// @nodoc
class _$TKDBKanjiCopyWithImpl<$Res, $Val extends TKDBKanji>
    implements $TKDBKanjiCopyWith<$Res> {
  _$TKDBKanjiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? literal = null,
    Object? meaning = null,
    Object? reading = null,
    Object? part = null,
    Object? misc = null,
  }) {
    return _then(_value.copyWith(
      literal: null == literal
          ? _value.literal
          : literal // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as List<TKDBKanjiMeaning>,
      reading: null == reading
          ? _value.reading
          : reading // ignore: cast_nullable_to_non_nullable
              as List<TKDBKanjiReading>,
      part: null == part
          ? _value.part
          : part // ignore: cast_nullable_to_non_nullable
              as List<TKDBKanjiPart>,
      misc: null == misc
          ? _value.misc
          : misc // ignore: cast_nullable_to_non_nullable
              as TKDBKanjiMisc,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TKDBKanjiMiscCopyWith<$Res> get misc {
    return $TKDBKanjiMiscCopyWith<$Res>(_value.misc, (value) {
      return _then(_value.copyWith(misc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TKDBKanjiCopyWith<$Res> implements $TKDBKanjiCopyWith<$Res> {
  factory _$$_TKDBKanjiCopyWith(
          _$_TKDBKanji value, $Res Function(_$_TKDBKanji) then) =
      __$$_TKDBKanjiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String literal,
      List<TKDBKanjiMeaning> meaning,
      List<TKDBKanjiReading> reading,
      List<TKDBKanjiPart> part,
      TKDBKanjiMisc misc});

  @override
  $TKDBKanjiMiscCopyWith<$Res> get misc;
}

/// @nodoc
class __$$_TKDBKanjiCopyWithImpl<$Res>
    extends _$TKDBKanjiCopyWithImpl<$Res, _$_TKDBKanji>
    implements _$$_TKDBKanjiCopyWith<$Res> {
  __$$_TKDBKanjiCopyWithImpl(
      _$_TKDBKanji _value, $Res Function(_$_TKDBKanji) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? literal = null,
    Object? meaning = null,
    Object? reading = null,
    Object? part = null,
    Object? misc = null,
  }) {
    return _then(_$_TKDBKanji(
      literal: null == literal
          ? _value.literal
          : literal // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value._meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as List<TKDBKanjiMeaning>,
      reading: null == reading
          ? _value._reading
          : reading // ignore: cast_nullable_to_non_nullable
              as List<TKDBKanjiReading>,
      part: null == part
          ? _value._part
          : part // ignore: cast_nullable_to_non_nullable
              as List<TKDBKanjiPart>,
      misc: null == misc
          ? _value.misc
          : misc // ignore: cast_nullable_to_non_nullable
              as TKDBKanjiMisc,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TKDBKanji implements _TKDBKanji {
  const _$_TKDBKanji(
      {required this.literal,
      required final List<TKDBKanjiMeaning> meaning,
      required final List<TKDBKanjiReading> reading,
      required final List<TKDBKanjiPart> part,
      required this.misc})
      : _meaning = meaning,
        _reading = reading,
        _part = part;

  factory _$_TKDBKanji.fromJson(Map<String, dynamic> json) =>
      _$$_TKDBKanjiFromJson(json);

  @override
  final String literal;
  final List<TKDBKanjiMeaning> _meaning;
  @override
  List<TKDBKanjiMeaning> get meaning {
    if (_meaning is EqualUnmodifiableListView) return _meaning;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meaning);
  }

  final List<TKDBKanjiReading> _reading;
  @override
  List<TKDBKanjiReading> get reading {
    if (_reading is EqualUnmodifiableListView) return _reading;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reading);
  }

  final List<TKDBKanjiPart> _part;
  @override
  List<TKDBKanjiPart> get part {
    if (_part is EqualUnmodifiableListView) return _part;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_part);
  }

  @override
  final TKDBKanjiMisc misc;

  @override
  String toString() {
    return 'TKDBKanji(literal: $literal, meaning: $meaning, reading: $reading, part: $part, misc: $misc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TKDBKanji &&
            (identical(other.literal, literal) || other.literal == literal) &&
            const DeepCollectionEquality().equals(other._meaning, _meaning) &&
            const DeepCollectionEquality().equals(other._reading, _reading) &&
            const DeepCollectionEquality().equals(other._part, _part) &&
            (identical(other.misc, misc) || other.misc == misc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      literal,
      const DeepCollectionEquality().hash(_meaning),
      const DeepCollectionEquality().hash(_reading),
      const DeepCollectionEquality().hash(_part),
      misc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TKDBKanjiCopyWith<_$_TKDBKanji> get copyWith =>
      __$$_TKDBKanjiCopyWithImpl<_$_TKDBKanji>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TKDBKanjiToJson(
      this,
    );
  }
}

abstract class _TKDBKanji implements TKDBKanji {
  const factory _TKDBKanji(
      {required final String literal,
      required final List<TKDBKanjiMeaning> meaning,
      required final List<TKDBKanjiReading> reading,
      required final List<TKDBKanjiPart> part,
      required final TKDBKanjiMisc misc}) = _$_TKDBKanji;

  factory _TKDBKanji.fromJson(Map<String, dynamic> json) =
      _$_TKDBKanji.fromJson;

  @override
  String get literal;
  @override
  List<TKDBKanjiMeaning> get meaning;
  @override
  List<TKDBKanjiReading> get reading;
  @override
  List<TKDBKanjiPart> get part;
  @override
  TKDBKanjiMisc get misc;
  @override
  @JsonKey(ignore: true)
  _$$_TKDBKanjiCopyWith<_$_TKDBKanji> get copyWith =>
      throw _privateConstructorUsedError;
}

TKDBKanjiMeaning _$TKDBKanjiMeaningFromJson(Map<String, dynamic> json) {
  return _TKDBKanjiMeaning.fromJson(json);
}

/// @nodoc
mixin _$TKDBKanjiMeaning {
  String get lang => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TKDBKanjiMeaningCopyWith<TKDBKanjiMeaning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TKDBKanjiMeaningCopyWith<$Res> {
  factory $TKDBKanjiMeaningCopyWith(
          TKDBKanjiMeaning value, $Res Function(TKDBKanjiMeaning) then) =
      _$TKDBKanjiMeaningCopyWithImpl<$Res, TKDBKanjiMeaning>;
  @useResult
  $Res call({String lang, String value});
}

/// @nodoc
class _$TKDBKanjiMeaningCopyWithImpl<$Res, $Val extends TKDBKanjiMeaning>
    implements $TKDBKanjiMeaningCopyWith<$Res> {
  _$TKDBKanjiMeaningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TKDBKanjiMeaningCopyWith<$Res>
    implements $TKDBKanjiMeaningCopyWith<$Res> {
  factory _$$_TKDBKanjiMeaningCopyWith(
          _$_TKDBKanjiMeaning value, $Res Function(_$_TKDBKanjiMeaning) then) =
      __$$_TKDBKanjiMeaningCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lang, String value});
}

/// @nodoc
class __$$_TKDBKanjiMeaningCopyWithImpl<$Res>
    extends _$TKDBKanjiMeaningCopyWithImpl<$Res, _$_TKDBKanjiMeaning>
    implements _$$_TKDBKanjiMeaningCopyWith<$Res> {
  __$$_TKDBKanjiMeaningCopyWithImpl(
      _$_TKDBKanjiMeaning _value, $Res Function(_$_TKDBKanjiMeaning) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = null,
    Object? value = null,
  }) {
    return _then(_$_TKDBKanjiMeaning(
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TKDBKanjiMeaning implements _TKDBKanjiMeaning {
  const _$_TKDBKanjiMeaning({required this.lang, required this.value});

  factory _$_TKDBKanjiMeaning.fromJson(Map<String, dynamic> json) =>
      _$$_TKDBKanjiMeaningFromJson(json);

  @override
  final String lang;
  @override
  final String value;

  @override
  String toString() {
    return 'TKDBKanjiMeaning(lang: $lang, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TKDBKanjiMeaning &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lang, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TKDBKanjiMeaningCopyWith<_$_TKDBKanjiMeaning> get copyWith =>
      __$$_TKDBKanjiMeaningCopyWithImpl<_$_TKDBKanjiMeaning>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TKDBKanjiMeaningToJson(
      this,
    );
  }
}

abstract class _TKDBKanjiMeaning implements TKDBKanjiMeaning {
  const factory _TKDBKanjiMeaning(
      {required final String lang,
      required final String value}) = _$_TKDBKanjiMeaning;

  factory _TKDBKanjiMeaning.fromJson(Map<String, dynamic> json) =
      _$_TKDBKanjiMeaning.fromJson;

  @override
  String get lang;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_TKDBKanjiMeaningCopyWith<_$_TKDBKanjiMeaning> get copyWith =>
      throw _privateConstructorUsedError;
}

TKDBKanjiReading _$TKDBKanjiReadingFromJson(Map<String, dynamic> json) {
  return _TKDBKanjiReading.fromJson(json);
}

/// @nodoc
mixin _$TKDBKanjiReading {
  String get value => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TKDBKanjiReadingCopyWith<TKDBKanjiReading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TKDBKanjiReadingCopyWith<$Res> {
  factory $TKDBKanjiReadingCopyWith(
          TKDBKanjiReading value, $Res Function(TKDBKanjiReading) then) =
      _$TKDBKanjiReadingCopyWithImpl<$Res, TKDBKanjiReading>;
  @useResult
  $Res call({String value, String type});
}

/// @nodoc
class _$TKDBKanjiReadingCopyWithImpl<$Res, $Val extends TKDBKanjiReading>
    implements $TKDBKanjiReadingCopyWith<$Res> {
  _$TKDBKanjiReadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TKDBKanjiReadingCopyWith<$Res>
    implements $TKDBKanjiReadingCopyWith<$Res> {
  factory _$$_TKDBKanjiReadingCopyWith(
          _$_TKDBKanjiReading value, $Res Function(_$_TKDBKanjiReading) then) =
      __$$_TKDBKanjiReadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String type});
}

/// @nodoc
class __$$_TKDBKanjiReadingCopyWithImpl<$Res>
    extends _$TKDBKanjiReadingCopyWithImpl<$Res, _$_TKDBKanjiReading>
    implements _$$_TKDBKanjiReadingCopyWith<$Res> {
  __$$_TKDBKanjiReadingCopyWithImpl(
      _$_TKDBKanjiReading _value, $Res Function(_$_TKDBKanjiReading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? type = null,
  }) {
    return _then(_$_TKDBKanjiReading(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TKDBKanjiReading implements _TKDBKanjiReading {
  const _$_TKDBKanjiReading({required this.value, required this.type});

  factory _$_TKDBKanjiReading.fromJson(Map<String, dynamic> json) =>
      _$$_TKDBKanjiReadingFromJson(json);

  @override
  final String value;
  @override
  final String type;

  @override
  String toString() {
    return 'TKDBKanjiReading(value: $value, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TKDBKanjiReading &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TKDBKanjiReadingCopyWith<_$_TKDBKanjiReading> get copyWith =>
      __$$_TKDBKanjiReadingCopyWithImpl<_$_TKDBKanjiReading>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TKDBKanjiReadingToJson(
      this,
    );
  }
}

abstract class _TKDBKanjiReading implements TKDBKanjiReading {
  const factory _TKDBKanjiReading(
      {required final String value,
      required final String type}) = _$_TKDBKanjiReading;

  factory _TKDBKanjiReading.fromJson(Map<String, dynamic> json) =
      _$_TKDBKanjiReading.fromJson;

  @override
  String get value;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_TKDBKanjiReadingCopyWith<_$_TKDBKanjiReading> get copyWith =>
      throw _privateConstructorUsedError;
}

TKDBKanjiPart _$TKDBKanjiPartFromJson(Map<String, dynamic> json) {
  return _TKDBKanjiPart.fromJson(json);
}

/// @nodoc
mixin _$TKDBKanjiPart {
  String get literal => throw _privateConstructorUsedError;
  TKDBKanjiPartType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TKDBKanjiPartCopyWith<TKDBKanjiPart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TKDBKanjiPartCopyWith<$Res> {
  factory $TKDBKanjiPartCopyWith(
          TKDBKanjiPart value, $Res Function(TKDBKanjiPart) then) =
      _$TKDBKanjiPartCopyWithImpl<$Res, TKDBKanjiPart>;
  @useResult
  $Res call({String literal, TKDBKanjiPartType type});
}

/// @nodoc
class _$TKDBKanjiPartCopyWithImpl<$Res, $Val extends TKDBKanjiPart>
    implements $TKDBKanjiPartCopyWith<$Res> {
  _$TKDBKanjiPartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? literal = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      literal: null == literal
          ? _value.literal
          : literal // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TKDBKanjiPartType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TKDBKanjiPartCopyWith<$Res>
    implements $TKDBKanjiPartCopyWith<$Res> {
  factory _$$_TKDBKanjiPartCopyWith(
          _$_TKDBKanjiPart value, $Res Function(_$_TKDBKanjiPart) then) =
      __$$_TKDBKanjiPartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String literal, TKDBKanjiPartType type});
}

/// @nodoc
class __$$_TKDBKanjiPartCopyWithImpl<$Res>
    extends _$TKDBKanjiPartCopyWithImpl<$Res, _$_TKDBKanjiPart>
    implements _$$_TKDBKanjiPartCopyWith<$Res> {
  __$$_TKDBKanjiPartCopyWithImpl(
      _$_TKDBKanjiPart _value, $Res Function(_$_TKDBKanjiPart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? literal = null,
    Object? type = null,
  }) {
    return _then(_$_TKDBKanjiPart(
      literal: null == literal
          ? _value.literal
          : literal // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TKDBKanjiPartType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TKDBKanjiPart implements _TKDBKanjiPart {
  const _$_TKDBKanjiPart({required this.literal, required this.type});

  factory _$_TKDBKanjiPart.fromJson(Map<String, dynamic> json) =>
      _$$_TKDBKanjiPartFromJson(json);

  @override
  final String literal;
  @override
  final TKDBKanjiPartType type;

  @override
  String toString() {
    return 'TKDBKanjiPart(literal: $literal, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TKDBKanjiPart &&
            (identical(other.literal, literal) || other.literal == literal) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, literal, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TKDBKanjiPartCopyWith<_$_TKDBKanjiPart> get copyWith =>
      __$$_TKDBKanjiPartCopyWithImpl<_$_TKDBKanjiPart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TKDBKanjiPartToJson(
      this,
    );
  }
}

abstract class _TKDBKanjiPart implements TKDBKanjiPart {
  const factory _TKDBKanjiPart(
      {required final String literal,
      required final TKDBKanjiPartType type}) = _$_TKDBKanjiPart;

  factory _TKDBKanjiPart.fromJson(Map<String, dynamic> json) =
      _$_TKDBKanjiPart.fromJson;

  @override
  String get literal;
  @override
  TKDBKanjiPartType get type;
  @override
  @JsonKey(ignore: true)
  _$$_TKDBKanjiPartCopyWith<_$_TKDBKanjiPart> get copyWith =>
      throw _privateConstructorUsedError;
}

TKDBKanjiMisc _$TKDBKanjiMiscFromJson(Map<String, dynamic> json) {
  return _TKDBKanjiMisc.fromJson(json);
}

/// @nodoc
mixin _$TKDBKanjiMisc {
  String get kvgHexcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TKDBKanjiMiscCopyWith<TKDBKanjiMisc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TKDBKanjiMiscCopyWith<$Res> {
  factory $TKDBKanjiMiscCopyWith(
          TKDBKanjiMisc value, $Res Function(TKDBKanjiMisc) then) =
      _$TKDBKanjiMiscCopyWithImpl<$Res, TKDBKanjiMisc>;
  @useResult
  $Res call({String kvgHexcode});
}

/// @nodoc
class _$TKDBKanjiMiscCopyWithImpl<$Res, $Val extends TKDBKanjiMisc>
    implements $TKDBKanjiMiscCopyWith<$Res> {
  _$TKDBKanjiMiscCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kvgHexcode = null,
  }) {
    return _then(_value.copyWith(
      kvgHexcode: null == kvgHexcode
          ? _value.kvgHexcode
          : kvgHexcode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TKDBKanjiMiscCopyWith<$Res>
    implements $TKDBKanjiMiscCopyWith<$Res> {
  factory _$$_TKDBKanjiMiscCopyWith(
          _$_TKDBKanjiMisc value, $Res Function(_$_TKDBKanjiMisc) then) =
      __$$_TKDBKanjiMiscCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String kvgHexcode});
}

/// @nodoc
class __$$_TKDBKanjiMiscCopyWithImpl<$Res>
    extends _$TKDBKanjiMiscCopyWithImpl<$Res, _$_TKDBKanjiMisc>
    implements _$$_TKDBKanjiMiscCopyWith<$Res> {
  __$$_TKDBKanjiMiscCopyWithImpl(
      _$_TKDBKanjiMisc _value, $Res Function(_$_TKDBKanjiMisc) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kvgHexcode = null,
  }) {
    return _then(_$_TKDBKanjiMisc(
      kvgHexcode: null == kvgHexcode
          ? _value.kvgHexcode
          : kvgHexcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TKDBKanjiMisc implements _TKDBKanjiMisc {
  const _$_TKDBKanjiMisc({required this.kvgHexcode});

  factory _$_TKDBKanjiMisc.fromJson(Map<String, dynamic> json) =>
      _$$_TKDBKanjiMiscFromJson(json);

  @override
  final String kvgHexcode;

  @override
  String toString() {
    return 'TKDBKanjiMisc(kvgHexcode: $kvgHexcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TKDBKanjiMisc &&
            (identical(other.kvgHexcode, kvgHexcode) ||
                other.kvgHexcode == kvgHexcode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kvgHexcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TKDBKanjiMiscCopyWith<_$_TKDBKanjiMisc> get copyWith =>
      __$$_TKDBKanjiMiscCopyWithImpl<_$_TKDBKanjiMisc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TKDBKanjiMiscToJson(
      this,
    );
  }
}

abstract class _TKDBKanjiMisc implements TKDBKanjiMisc {
  const factory _TKDBKanjiMisc({required final String kvgHexcode}) =
      _$_TKDBKanjiMisc;

  factory _TKDBKanjiMisc.fromJson(Map<String, dynamic> json) =
      _$_TKDBKanjiMisc.fromJson;

  @override
  String get kvgHexcode;
  @override
  @JsonKey(ignore: true)
  _$$_TKDBKanjiMiscCopyWith<_$_TKDBKanjiMisc> get copyWith =>
      throw _privateConstructorUsedError;
}
