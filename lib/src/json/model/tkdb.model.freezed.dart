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
      {String version, String dateOfCreation, List<TKDBRadical> radicals});
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TKDBCopyWith<$Res> implements $TKDBCopyWith<$Res> {
  factory _$$_TKDBCopyWith(_$_TKDB value, $Res Function(_$_TKDB) then) =
      __$$_TKDBCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String version, String dateOfCreation, List<TKDBRadical> radicals});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TKDB implements _TKDB {
  const _$_TKDB(
      {required this.version,
      required this.dateOfCreation,
      required final List<TKDBRadical> radicals})
      : _radicals = radicals;

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

  @override
  String toString() {
    return 'TKDB(version: $version, dateOfCreation: $dateOfCreation, radicals: $radicals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TKDB &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.dateOfCreation, dateOfCreation) ||
                other.dateOfCreation == dateOfCreation) &&
            const DeepCollectionEquality().equals(other._radicals, _radicals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, version, dateOfCreation,
      const DeepCollectionEquality().hash(_radicals));

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
      required final List<TKDBRadical> radicals}) = _$_TKDB;

  factory _TKDB.fromJson(Map<String, dynamic> json) = _$_TKDB.fromJson;

  @override
  String get version;
  @override
  String get dateOfCreation;
  @override
  List<TKDBRadical> get radicals;
  @override
  @JsonKey(ignore: true)
  _$$_TKDBCopyWith<_$_TKDB> get copyWith => throw _privateConstructorUsedError;
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
