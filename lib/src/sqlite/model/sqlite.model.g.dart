// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sqlite.model.dart';

// ignore_for_file: type=lint
class $RadicalsTable extends Radicals with TableInfo<$RadicalsTable, Radical> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RadicalsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _radicalIdMeta =
      const VerificationMeta('radicalId');
  @override
  late final GeneratedColumn<String> radicalId = GeneratedColumn<String>(
      'radical_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _literalMeta =
      const VerificationMeta('literal');
  @override
  late final GeneratedColumn<String> literal = GeneratedColumn<String>(
      'literal', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
      'number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _strokesMeta =
      const VerificationMeta('strokes');
  @override
  late final GeneratedColumn<int> strokes = GeneratedColumn<int>(
      'strokes', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _variantOfMeta =
      const VerificationMeta('variantOf');
  @override
  late final GeneratedColumn<String> variantOf = GeneratedColumn<String>(
      'variant_of', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES radical (radical_id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [radicalId, literal, number, strokes, variantOf];
  @override
  String get aliasedName => _alias ?? 'radical';
  @override
  String get actualTableName => 'radical';
  @override
  VerificationContext validateIntegrity(Insertable<Radical> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('radical_id')) {
      context.handle(_radicalIdMeta,
          radicalId.isAcceptableOrUnknown(data['radical_id']!, _radicalIdMeta));
    } else if (isInserting) {
      context.missing(_radicalIdMeta);
    }
    if (data.containsKey('literal')) {
      context.handle(_literalMeta,
          literal.isAcceptableOrUnknown(data['literal']!, _literalMeta));
    } else if (isInserting) {
      context.missing(_literalMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('strokes')) {
      context.handle(_strokesMeta,
          strokes.isAcceptableOrUnknown(data['strokes']!, _strokesMeta));
    } else if (isInserting) {
      context.missing(_strokesMeta);
    }
    if (data.containsKey('variant_of')) {
      context.handle(_variantOfMeta,
          variantOf.isAcceptableOrUnknown(data['variant_of']!, _variantOfMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {radicalId};
  @override
  Radical map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Radical(
      radicalId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}radical_id'])!,
      literal: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}literal'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number'])!,
      strokes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}strokes'])!,
      variantOf: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}variant_of']),
    );
  }

  @override
  $RadicalsTable createAlias(String alias) {
    return $RadicalsTable(attachedDatabase, alias);
  }
}

class Radical extends DataClass implements Insertable<Radical> {
  final String radicalId;
  final String literal;
  final int number;
  final int strokes;
  final String? variantOf;
  const Radical(
      {required this.radicalId,
      required this.literal,
      required this.number,
      required this.strokes,
      this.variantOf});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['radical_id'] = Variable<String>(radicalId);
    map['literal'] = Variable<String>(literal);
    map['number'] = Variable<int>(number);
    map['strokes'] = Variable<int>(strokes);
    if (!nullToAbsent || variantOf != null) {
      map['variant_of'] = Variable<String>(variantOf);
    }
    return map;
  }

  RadicalsCompanion toCompanion(bool nullToAbsent) {
    return RadicalsCompanion(
      radicalId: Value(radicalId),
      literal: Value(literal),
      number: Value(number),
      strokes: Value(strokes),
      variantOf: variantOf == null && nullToAbsent
          ? const Value.absent()
          : Value(variantOf),
    );
  }

  factory Radical.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Radical(
      radicalId: serializer.fromJson<String>(json['radicalId']),
      literal: serializer.fromJson<String>(json['literal']),
      number: serializer.fromJson<int>(json['number']),
      strokes: serializer.fromJson<int>(json['strokes']),
      variantOf: serializer.fromJson<String?>(json['variantOf']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'radicalId': serializer.toJson<String>(radicalId),
      'literal': serializer.toJson<String>(literal),
      'number': serializer.toJson<int>(number),
      'strokes': serializer.toJson<int>(strokes),
      'variantOf': serializer.toJson<String?>(variantOf),
    };
  }

  Radical copyWith(
          {String? radicalId,
          String? literal,
          int? number,
          int? strokes,
          Value<String?> variantOf = const Value.absent()}) =>
      Radical(
        radicalId: radicalId ?? this.radicalId,
        literal: literal ?? this.literal,
        number: number ?? this.number,
        strokes: strokes ?? this.strokes,
        variantOf: variantOf.present ? variantOf.value : this.variantOf,
      );
  @override
  String toString() {
    return (StringBuffer('Radical(')
          ..write('radicalId: $radicalId, ')
          ..write('literal: $literal, ')
          ..write('number: $number, ')
          ..write('strokes: $strokes, ')
          ..write('variantOf: $variantOf')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(radicalId, literal, number, strokes, variantOf);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Radical &&
          other.radicalId == this.radicalId &&
          other.literal == this.literal &&
          other.number == this.number &&
          other.strokes == this.strokes &&
          other.variantOf == this.variantOf);
}

class RadicalsCompanion extends UpdateCompanion<Radical> {
  final Value<String> radicalId;
  final Value<String> literal;
  final Value<int> number;
  final Value<int> strokes;
  final Value<String?> variantOf;
  const RadicalsCompanion({
    this.radicalId = const Value.absent(),
    this.literal = const Value.absent(),
    this.number = const Value.absent(),
    this.strokes = const Value.absent(),
    this.variantOf = const Value.absent(),
  });
  RadicalsCompanion.insert({
    required String radicalId,
    required String literal,
    required int number,
    required int strokes,
    this.variantOf = const Value.absent(),
  })  : radicalId = Value(radicalId),
        literal = Value(literal),
        number = Value(number),
        strokes = Value(strokes);
  static Insertable<Radical> custom({
    Expression<String>? radicalId,
    Expression<String>? literal,
    Expression<int>? number,
    Expression<int>? strokes,
    Expression<String>? variantOf,
  }) {
    return RawValuesInsertable({
      if (radicalId != null) 'radical_id': radicalId,
      if (literal != null) 'literal': literal,
      if (number != null) 'number': number,
      if (strokes != null) 'strokes': strokes,
      if (variantOf != null) 'variant_of': variantOf,
    });
  }

  RadicalsCompanion copyWith(
      {Value<String>? radicalId,
      Value<String>? literal,
      Value<int>? number,
      Value<int>? strokes,
      Value<String?>? variantOf}) {
    return RadicalsCompanion(
      radicalId: radicalId ?? this.radicalId,
      literal: literal ?? this.literal,
      number: number ?? this.number,
      strokes: strokes ?? this.strokes,
      variantOf: variantOf ?? this.variantOf,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (radicalId.present) {
      map['radical_id'] = Variable<String>(radicalId.value);
    }
    if (literal.present) {
      map['literal'] = Variable<String>(literal.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (strokes.present) {
      map['strokes'] = Variable<int>(strokes.value);
    }
    if (variantOf.present) {
      map['variant_of'] = Variable<String>(variantOf.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RadicalsCompanion(')
          ..write('radicalId: $radicalId, ')
          ..write('literal: $literal, ')
          ..write('number: $number, ')
          ..write('strokes: $strokes, ')
          ..write('variantOf: $variantOf')
          ..write(')'))
        .toString();
  }
}

class $RadicalMeaningsTable extends RadicalMeanings
    with TableInfo<$RadicalMeaningsTable, RadicalMeaning> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RadicalMeaningsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _radicalIdMeta =
      const VerificationMeta('radicalId');
  @override
  late final GeneratedColumn<String> radicalId = GeneratedColumn<String>(
      'radical_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES radical (radical_id)'));
  static const VerificationMeta _positionMeta =
      const VerificationMeta('position');
  @override
  late final GeneratedColumn<int> position = GeneratedColumn<int>(
      'position', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [radicalId, position, value];
  @override
  String get aliasedName => _alias ?? 'radical_meaning';
  @override
  String get actualTableName => 'radical_meaning';
  @override
  VerificationContext validateIntegrity(Insertable<RadicalMeaning> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('radical_id')) {
      context.handle(_radicalIdMeta,
          radicalId.isAcceptableOrUnknown(data['radical_id']!, _radicalIdMeta));
    } else if (isInserting) {
      context.missing(_radicalIdMeta);
    }
    if (data.containsKey('position')) {
      context.handle(_positionMeta,
          position.isAcceptableOrUnknown(data['position']!, _positionMeta));
    } else if (isInserting) {
      context.missing(_positionMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {radicalId, position};
  @override
  RadicalMeaning map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RadicalMeaning(
      radicalId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}radical_id'])!,
      position: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}position'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
    );
  }

  @override
  $RadicalMeaningsTable createAlias(String alias) {
    return $RadicalMeaningsTable(attachedDatabase, alias);
  }
}

class RadicalMeaning extends DataClass implements Insertable<RadicalMeaning> {
  final String radicalId;
  final int position;
  final String value;
  const RadicalMeaning(
      {required this.radicalId, required this.position, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['radical_id'] = Variable<String>(radicalId);
    map['position'] = Variable<int>(position);
    map['value'] = Variable<String>(value);
    return map;
  }

  RadicalMeaningsCompanion toCompanion(bool nullToAbsent) {
    return RadicalMeaningsCompanion(
      radicalId: Value(radicalId),
      position: Value(position),
      value: Value(value),
    );
  }

  factory RadicalMeaning.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RadicalMeaning(
      radicalId: serializer.fromJson<String>(json['radicalId']),
      position: serializer.fromJson<int>(json['position']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'radicalId': serializer.toJson<String>(radicalId),
      'position': serializer.toJson<int>(position),
      'value': serializer.toJson<String>(value),
    };
  }

  RadicalMeaning copyWith({String? radicalId, int? position, String? value}) =>
      RadicalMeaning(
        radicalId: radicalId ?? this.radicalId,
        position: position ?? this.position,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('RadicalMeaning(')
          ..write('radicalId: $radicalId, ')
          ..write('position: $position, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(radicalId, position, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RadicalMeaning &&
          other.radicalId == this.radicalId &&
          other.position == this.position &&
          other.value == this.value);
}

class RadicalMeaningsCompanion extends UpdateCompanion<RadicalMeaning> {
  final Value<String> radicalId;
  final Value<int> position;
  final Value<String> value;
  const RadicalMeaningsCompanion({
    this.radicalId = const Value.absent(),
    this.position = const Value.absent(),
    this.value = const Value.absent(),
  });
  RadicalMeaningsCompanion.insert({
    required String radicalId,
    required int position,
    required String value,
  })  : radicalId = Value(radicalId),
        position = Value(position),
        value = Value(value);
  static Insertable<RadicalMeaning> custom({
    Expression<String>? radicalId,
    Expression<int>? position,
    Expression<String>? value,
  }) {
    return RawValuesInsertable({
      if (radicalId != null) 'radical_id': radicalId,
      if (position != null) 'position': position,
      if (value != null) 'value': value,
    });
  }

  RadicalMeaningsCompanion copyWith(
      {Value<String>? radicalId, Value<int>? position, Value<String>? value}) {
    return RadicalMeaningsCompanion(
      radicalId: radicalId ?? this.radicalId,
      position: position ?? this.position,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (radicalId.present) {
      map['radical_id'] = Variable<String>(radicalId.value);
    }
    if (position.present) {
      map['position'] = Variable<int>(position.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RadicalMeaningsCompanion(')
          ..write('radicalId: $radicalId, ')
          ..write('position: $position, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $RadicalReadingsTable extends RadicalReadings
    with TableInfo<$RadicalReadingsTable, RadicalReading> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RadicalReadingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _radicalIdMeta =
      const VerificationMeta('radicalId');
  @override
  late final GeneratedColumn<String> radicalId = GeneratedColumn<String>(
      'radical_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES radical (radical_id)'));
  static const VerificationMeta _positionMeta =
      const VerificationMeta('position');
  @override
  late final GeneratedColumn<int> position = GeneratedColumn<int>(
      'position', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [radicalId, position, value];
  @override
  String get aliasedName => _alias ?? 'radical_reading';
  @override
  String get actualTableName => 'radical_reading';
  @override
  VerificationContext validateIntegrity(Insertable<RadicalReading> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('radical_id')) {
      context.handle(_radicalIdMeta,
          radicalId.isAcceptableOrUnknown(data['radical_id']!, _radicalIdMeta));
    } else if (isInserting) {
      context.missing(_radicalIdMeta);
    }
    if (data.containsKey('position')) {
      context.handle(_positionMeta,
          position.isAcceptableOrUnknown(data['position']!, _positionMeta));
    } else if (isInserting) {
      context.missing(_positionMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {radicalId, position};
  @override
  RadicalReading map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RadicalReading(
      radicalId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}radical_id'])!,
      position: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}position'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
    );
  }

  @override
  $RadicalReadingsTable createAlias(String alias) {
    return $RadicalReadingsTable(attachedDatabase, alias);
  }
}

class RadicalReading extends DataClass implements Insertable<RadicalReading> {
  final String radicalId;
  final int position;
  final String value;
  const RadicalReading(
      {required this.radicalId, required this.position, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['radical_id'] = Variable<String>(radicalId);
    map['position'] = Variable<int>(position);
    map['value'] = Variable<String>(value);
    return map;
  }

  RadicalReadingsCompanion toCompanion(bool nullToAbsent) {
    return RadicalReadingsCompanion(
      radicalId: Value(radicalId),
      position: Value(position),
      value: Value(value),
    );
  }

  factory RadicalReading.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RadicalReading(
      radicalId: serializer.fromJson<String>(json['radicalId']),
      position: serializer.fromJson<int>(json['position']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'radicalId': serializer.toJson<String>(radicalId),
      'position': serializer.toJson<int>(position),
      'value': serializer.toJson<String>(value),
    };
  }

  RadicalReading copyWith({String? radicalId, int? position, String? value}) =>
      RadicalReading(
        radicalId: radicalId ?? this.radicalId,
        position: position ?? this.position,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('RadicalReading(')
          ..write('radicalId: $radicalId, ')
          ..write('position: $position, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(radicalId, position, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RadicalReading &&
          other.radicalId == this.radicalId &&
          other.position == this.position &&
          other.value == this.value);
}

class RadicalReadingsCompanion extends UpdateCompanion<RadicalReading> {
  final Value<String> radicalId;
  final Value<int> position;
  final Value<String> value;
  const RadicalReadingsCompanion({
    this.radicalId = const Value.absent(),
    this.position = const Value.absent(),
    this.value = const Value.absent(),
  });
  RadicalReadingsCompanion.insert({
    required String radicalId,
    required int position,
    required String value,
  })  : radicalId = Value(radicalId),
        position = Value(position),
        value = Value(value);
  static Insertable<RadicalReading> custom({
    Expression<String>? radicalId,
    Expression<int>? position,
    Expression<String>? value,
  }) {
    return RawValuesInsertable({
      if (radicalId != null) 'radical_id': radicalId,
      if (position != null) 'position': position,
      if (value != null) 'value': value,
    });
  }

  RadicalReadingsCompanion copyWith(
      {Value<String>? radicalId, Value<int>? position, Value<String>? value}) {
    return RadicalReadingsCompanion(
      radicalId: radicalId ?? this.radicalId,
      position: position ?? this.position,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (radicalId.present) {
      map['radical_id'] = Variable<String>(radicalId.value);
    }
    if (position.present) {
      map['position'] = Variable<int>(position.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RadicalReadingsCompanion(')
          ..write('radicalId: $radicalId, ')
          ..write('position: $position, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $KanjisTable extends Kanjis with TableInfo<$KanjisTable, Kanji> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KanjisTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _kanjiIdMeta =
      const VerificationMeta('kanjiId');
  @override
  late final GeneratedColumn<String> kanjiId = GeneratedColumn<String>(
      'kanji_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _literalMeta =
      const VerificationMeta('literal');
  @override
  late final GeneratedColumn<String> literal = GeneratedColumn<String>(
      'literal', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  @override
  List<GeneratedColumn> get $columns => [kanjiId, literal];
  @override
  String get aliasedName => _alias ?? 'kanji';
  @override
  String get actualTableName => 'kanji';
  @override
  VerificationContext validateIntegrity(Insertable<Kanji> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('kanji_id')) {
      context.handle(_kanjiIdMeta,
          kanjiId.isAcceptableOrUnknown(data['kanji_id']!, _kanjiIdMeta));
    } else if (isInserting) {
      context.missing(_kanjiIdMeta);
    }
    if (data.containsKey('literal')) {
      context.handle(_literalMeta,
          literal.isAcceptableOrUnknown(data['literal']!, _literalMeta));
    } else if (isInserting) {
      context.missing(_literalMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {kanjiId};
  @override
  Kanji map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Kanji(
      kanjiId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kanji_id'])!,
      literal: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}literal'])!,
    );
  }

  @override
  $KanjisTable createAlias(String alias) {
    return $KanjisTable(attachedDatabase, alias);
  }
}

class Kanji extends DataClass implements Insertable<Kanji> {
  final String kanjiId;
  final String literal;
  const Kanji({required this.kanjiId, required this.literal});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['kanji_id'] = Variable<String>(kanjiId);
    map['literal'] = Variable<String>(literal);
    return map;
  }

  KanjisCompanion toCompanion(bool nullToAbsent) {
    return KanjisCompanion(
      kanjiId: Value(kanjiId),
      literal: Value(literal),
    );
  }

  factory Kanji.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Kanji(
      kanjiId: serializer.fromJson<String>(json['kanjiId']),
      literal: serializer.fromJson<String>(json['literal']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'kanjiId': serializer.toJson<String>(kanjiId),
      'literal': serializer.toJson<String>(literal),
    };
  }

  Kanji copyWith({String? kanjiId, String? literal}) => Kanji(
        kanjiId: kanjiId ?? this.kanjiId,
        literal: literal ?? this.literal,
      );
  @override
  String toString() {
    return (StringBuffer('Kanji(')
          ..write('kanjiId: $kanjiId, ')
          ..write('literal: $literal')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(kanjiId, literal);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Kanji &&
          other.kanjiId == this.kanjiId &&
          other.literal == this.literal);
}

class KanjisCompanion extends UpdateCompanion<Kanji> {
  final Value<String> kanjiId;
  final Value<String> literal;
  const KanjisCompanion({
    this.kanjiId = const Value.absent(),
    this.literal = const Value.absent(),
  });
  KanjisCompanion.insert({
    required String kanjiId,
    required String literal,
  })  : kanjiId = Value(kanjiId),
        literal = Value(literal);
  static Insertable<Kanji> custom({
    Expression<String>? kanjiId,
    Expression<String>? literal,
  }) {
    return RawValuesInsertable({
      if (kanjiId != null) 'kanji_id': kanjiId,
      if (literal != null) 'literal': literal,
    });
  }

  KanjisCompanion copyWith({Value<String>? kanjiId, Value<String>? literal}) {
    return KanjisCompanion(
      kanjiId: kanjiId ?? this.kanjiId,
      literal: literal ?? this.literal,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (kanjiId.present) {
      map['kanji_id'] = Variable<String>(kanjiId.value);
    }
    if (literal.present) {
      map['literal'] = Variable<String>(literal.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KanjisCompanion(')
          ..write('kanjiId: $kanjiId, ')
          ..write('literal: $literal')
          ..write(')'))
        .toString();
  }
}

class $KanjiReadingTypesTable extends KanjiReadingTypes
    with TableInfo<$KanjiReadingTypesTable, KanjiReadingType> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KanjiReadingTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _kanjiReadingTypeIdMeta =
      const VerificationMeta('kanjiReadingTypeId');
  @override
  late final GeneratedColumn<String> kanjiReadingTypeId =
      GeneratedColumn<String>('kanji_reading_type_id', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descrMeta = const VerificationMeta('descr');
  @override
  late final GeneratedColumn<String> descr = GeneratedColumn<String>(
      'descr', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [kanjiReadingTypeId, descr];
  @override
  String get aliasedName => _alias ?? 'kanji_reading_type';
  @override
  String get actualTableName => 'kanji_reading_type';
  @override
  VerificationContext validateIntegrity(Insertable<KanjiReadingType> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('kanji_reading_type_id')) {
      context.handle(
          _kanjiReadingTypeIdMeta,
          kanjiReadingTypeId.isAcceptableOrUnknown(
              data['kanji_reading_type_id']!, _kanjiReadingTypeIdMeta));
    } else if (isInserting) {
      context.missing(_kanjiReadingTypeIdMeta);
    }
    if (data.containsKey('descr')) {
      context.handle(
          _descrMeta, descr.isAcceptableOrUnknown(data['descr']!, _descrMeta));
    } else if (isInserting) {
      context.missing(_descrMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {kanjiReadingTypeId};
  @override
  KanjiReadingType map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return KanjiReadingType(
      kanjiReadingTypeId: attachedDatabase.typeMapping.read(DriftSqlType.string,
          data['${effectivePrefix}kanji_reading_type_id'])!,
      descr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}descr'])!,
    );
  }

  @override
  $KanjiReadingTypesTable createAlias(String alias) {
    return $KanjiReadingTypesTable(attachedDatabase, alias);
  }
}

class KanjiReadingType extends DataClass
    implements Insertable<KanjiReadingType> {
  final String kanjiReadingTypeId;
  final String descr;
  const KanjiReadingType(
      {required this.kanjiReadingTypeId, required this.descr});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['kanji_reading_type_id'] = Variable<String>(kanjiReadingTypeId);
    map['descr'] = Variable<String>(descr);
    return map;
  }

  KanjiReadingTypesCompanion toCompanion(bool nullToAbsent) {
    return KanjiReadingTypesCompanion(
      kanjiReadingTypeId: Value(kanjiReadingTypeId),
      descr: Value(descr),
    );
  }

  factory KanjiReadingType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KanjiReadingType(
      kanjiReadingTypeId:
          serializer.fromJson<String>(json['kanjiReadingTypeId']),
      descr: serializer.fromJson<String>(json['descr']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'kanjiReadingTypeId': serializer.toJson<String>(kanjiReadingTypeId),
      'descr': serializer.toJson<String>(descr),
    };
  }

  KanjiReadingType copyWith({String? kanjiReadingTypeId, String? descr}) =>
      KanjiReadingType(
        kanjiReadingTypeId: kanjiReadingTypeId ?? this.kanjiReadingTypeId,
        descr: descr ?? this.descr,
      );
  @override
  String toString() {
    return (StringBuffer('KanjiReadingType(')
          ..write('kanjiReadingTypeId: $kanjiReadingTypeId, ')
          ..write('descr: $descr')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(kanjiReadingTypeId, descr);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KanjiReadingType &&
          other.kanjiReadingTypeId == this.kanjiReadingTypeId &&
          other.descr == this.descr);
}

class KanjiReadingTypesCompanion extends UpdateCompanion<KanjiReadingType> {
  final Value<String> kanjiReadingTypeId;
  final Value<String> descr;
  const KanjiReadingTypesCompanion({
    this.kanjiReadingTypeId = const Value.absent(),
    this.descr = const Value.absent(),
  });
  KanjiReadingTypesCompanion.insert({
    required String kanjiReadingTypeId,
    required String descr,
  })  : kanjiReadingTypeId = Value(kanjiReadingTypeId),
        descr = Value(descr);
  static Insertable<KanjiReadingType> custom({
    Expression<String>? kanjiReadingTypeId,
    Expression<String>? descr,
  }) {
    return RawValuesInsertable({
      if (kanjiReadingTypeId != null)
        'kanji_reading_type_id': kanjiReadingTypeId,
      if (descr != null) 'descr': descr,
    });
  }

  KanjiReadingTypesCompanion copyWith(
      {Value<String>? kanjiReadingTypeId, Value<String>? descr}) {
    return KanjiReadingTypesCompanion(
      kanjiReadingTypeId: kanjiReadingTypeId ?? this.kanjiReadingTypeId,
      descr: descr ?? this.descr,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (kanjiReadingTypeId.present) {
      map['kanji_reading_type_id'] = Variable<String>(kanjiReadingTypeId.value);
    }
    if (descr.present) {
      map['descr'] = Variable<String>(descr.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KanjiReadingTypesCompanion(')
          ..write('kanjiReadingTypeId: $kanjiReadingTypeId, ')
          ..write('descr: $descr')
          ..write(')'))
        .toString();
  }
}

class $KanjiReadingsTable extends KanjiReadings
    with TableInfo<$KanjiReadingsTable, KanjiReading> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KanjiReadingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _kanjiIdMeta =
      const VerificationMeta('kanjiId');
  @override
  late final GeneratedColumn<String> kanjiId = GeneratedColumn<String>(
      'kanji_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES kanji (kanji_id)'));
  static const VerificationMeta _positionMeta =
      const VerificationMeta('position');
  @override
  late final GeneratedColumn<int> position = GeneratedColumn<int>(
      'position', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _kanjiReadingTypeIdMeta =
      const VerificationMeta('kanjiReadingTypeId');
  @override
  late final GeneratedColumn<String> kanjiReadingTypeId =
      GeneratedColumn<String>('kanji_reading_type_id', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'REFERENCES kanji_reading_type (kanji_reading_type_id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [kanjiId, position, value, kanjiReadingTypeId];
  @override
  String get aliasedName => _alias ?? 'kanji_reading';
  @override
  String get actualTableName => 'kanji_reading';
  @override
  VerificationContext validateIntegrity(Insertable<KanjiReading> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('kanji_id')) {
      context.handle(_kanjiIdMeta,
          kanjiId.isAcceptableOrUnknown(data['kanji_id']!, _kanjiIdMeta));
    } else if (isInserting) {
      context.missing(_kanjiIdMeta);
    }
    if (data.containsKey('position')) {
      context.handle(_positionMeta,
          position.isAcceptableOrUnknown(data['position']!, _positionMeta));
    } else if (isInserting) {
      context.missing(_positionMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('kanji_reading_type_id')) {
      context.handle(
          _kanjiReadingTypeIdMeta,
          kanjiReadingTypeId.isAcceptableOrUnknown(
              data['kanji_reading_type_id']!, _kanjiReadingTypeIdMeta));
    } else if (isInserting) {
      context.missing(_kanjiReadingTypeIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {kanjiId, kanjiReadingTypeId, position};
  @override
  KanjiReading map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return KanjiReading(
      kanjiId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kanji_id'])!,
      position: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}position'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
      kanjiReadingTypeId: attachedDatabase.typeMapping.read(DriftSqlType.string,
          data['${effectivePrefix}kanji_reading_type_id'])!,
    );
  }

  @override
  $KanjiReadingsTable createAlias(String alias) {
    return $KanjiReadingsTable(attachedDatabase, alias);
  }
}

class KanjiReading extends DataClass implements Insertable<KanjiReading> {
  final String kanjiId;
  final int position;
  final String value;
  final String kanjiReadingTypeId;
  const KanjiReading(
      {required this.kanjiId,
      required this.position,
      required this.value,
      required this.kanjiReadingTypeId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['kanji_id'] = Variable<String>(kanjiId);
    map['position'] = Variable<int>(position);
    map['value'] = Variable<String>(value);
    map['kanji_reading_type_id'] = Variable<String>(kanjiReadingTypeId);
    return map;
  }

  KanjiReadingsCompanion toCompanion(bool nullToAbsent) {
    return KanjiReadingsCompanion(
      kanjiId: Value(kanjiId),
      position: Value(position),
      value: Value(value),
      kanjiReadingTypeId: Value(kanjiReadingTypeId),
    );
  }

  factory KanjiReading.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KanjiReading(
      kanjiId: serializer.fromJson<String>(json['kanjiId']),
      position: serializer.fromJson<int>(json['position']),
      value: serializer.fromJson<String>(json['value']),
      kanjiReadingTypeId:
          serializer.fromJson<String>(json['kanjiReadingTypeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'kanjiId': serializer.toJson<String>(kanjiId),
      'position': serializer.toJson<int>(position),
      'value': serializer.toJson<String>(value),
      'kanjiReadingTypeId': serializer.toJson<String>(kanjiReadingTypeId),
    };
  }

  KanjiReading copyWith(
          {String? kanjiId,
          int? position,
          String? value,
          String? kanjiReadingTypeId}) =>
      KanjiReading(
        kanjiId: kanjiId ?? this.kanjiId,
        position: position ?? this.position,
        value: value ?? this.value,
        kanjiReadingTypeId: kanjiReadingTypeId ?? this.kanjiReadingTypeId,
      );
  @override
  String toString() {
    return (StringBuffer('KanjiReading(')
          ..write('kanjiId: $kanjiId, ')
          ..write('position: $position, ')
          ..write('value: $value, ')
          ..write('kanjiReadingTypeId: $kanjiReadingTypeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(kanjiId, position, value, kanjiReadingTypeId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KanjiReading &&
          other.kanjiId == this.kanjiId &&
          other.position == this.position &&
          other.value == this.value &&
          other.kanjiReadingTypeId == this.kanjiReadingTypeId);
}

class KanjiReadingsCompanion extends UpdateCompanion<KanjiReading> {
  final Value<String> kanjiId;
  final Value<int> position;
  final Value<String> value;
  final Value<String> kanjiReadingTypeId;
  const KanjiReadingsCompanion({
    this.kanjiId = const Value.absent(),
    this.position = const Value.absent(),
    this.value = const Value.absent(),
    this.kanjiReadingTypeId = const Value.absent(),
  });
  KanjiReadingsCompanion.insert({
    required String kanjiId,
    required int position,
    required String value,
    required String kanjiReadingTypeId,
  })  : kanjiId = Value(kanjiId),
        position = Value(position),
        value = Value(value),
        kanjiReadingTypeId = Value(kanjiReadingTypeId);
  static Insertable<KanjiReading> custom({
    Expression<String>? kanjiId,
    Expression<int>? position,
    Expression<String>? value,
    Expression<String>? kanjiReadingTypeId,
  }) {
    return RawValuesInsertable({
      if (kanjiId != null) 'kanji_id': kanjiId,
      if (position != null) 'position': position,
      if (value != null) 'value': value,
      if (kanjiReadingTypeId != null)
        'kanji_reading_type_id': kanjiReadingTypeId,
    });
  }

  KanjiReadingsCompanion copyWith(
      {Value<String>? kanjiId,
      Value<int>? position,
      Value<String>? value,
      Value<String>? kanjiReadingTypeId}) {
    return KanjiReadingsCompanion(
      kanjiId: kanjiId ?? this.kanjiId,
      position: position ?? this.position,
      value: value ?? this.value,
      kanjiReadingTypeId: kanjiReadingTypeId ?? this.kanjiReadingTypeId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (kanjiId.present) {
      map['kanji_id'] = Variable<String>(kanjiId.value);
    }
    if (position.present) {
      map['position'] = Variable<int>(position.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (kanjiReadingTypeId.present) {
      map['kanji_reading_type_id'] = Variable<String>(kanjiReadingTypeId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KanjiReadingsCompanion(')
          ..write('kanjiId: $kanjiId, ')
          ..write('position: $position, ')
          ..write('value: $value, ')
          ..write('kanjiReadingTypeId: $kanjiReadingTypeId')
          ..write(')'))
        .toString();
  }
}

abstract class _$TKDBDatabase extends GeneratedDatabase {
  _$TKDBDatabase(QueryExecutor e) : super(e);
  late final $RadicalsTable radicals = $RadicalsTable(this);
  late final $RadicalMeaningsTable radicalMeanings =
      $RadicalMeaningsTable(this);
  late final $RadicalReadingsTable radicalReadings =
      $RadicalReadingsTable(this);
  late final $KanjisTable kanjis = $KanjisTable(this);
  late final $KanjiReadingTypesTable kanjiReadingTypes =
      $KanjiReadingTypesTable(this);
  late final $KanjiReadingsTable kanjiReadings = $KanjiReadingsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        radicals,
        radicalMeanings,
        radicalReadings,
        kanjis,
        kanjiReadingTypes,
        kanjiReadings
      ];
}
