// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sqlite.model.dart';

// ignore_for_file: type=lint
class SearchKanji extends Table
    with
        TableInfo<SearchKanji, SearchKanjiData>,
        VirtualTableInfo<SearchKanji, SearchKanjiData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  SearchKanji(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _kanjiIdMeta =
      const VerificationMeta('kanjiId');
  late final GeneratedColumn<String> kanjiId = GeneratedColumn<String>(
      'kanjiId', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _kanjiOnReadingsMeta =
      const VerificationMeta('kanjiOnReadings');
  late final GeneratedColumn<String> kanjiOnReadings = GeneratedColumn<String>(
      'kanjiOnReadings', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _kanjiKunReadingsMeta =
      const VerificationMeta('kanjiKunReadings');
  late final GeneratedColumn<String> kanjiKunReadings = GeneratedColumn<String>(
      'kanjiKunReadings', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _kanjiMeaningsMeta =
      const VerificationMeta('kanjiMeanings');
  late final GeneratedColumn<String> kanjiMeanings = GeneratedColumn<String>(
      'kanjiMeanings', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _kanjiFrequencyMeta =
      const VerificationMeta('kanjiFrequency');
  late final GeneratedColumn<String> kanjiFrequency = GeneratedColumn<String>(
      'kanjiFrequency', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        kanjiId,
        kanjiOnReadings,
        kanjiKunReadings,
        kanjiMeanings,
        kanjiFrequency
      ];
  @override
  String get aliasedName => _alias ?? 'search_kanji';
  @override
  String get actualTableName => 'search_kanji';
  @override
  VerificationContext validateIntegrity(Insertable<SearchKanjiData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('kanjiId')) {
      context.handle(_kanjiIdMeta,
          kanjiId.isAcceptableOrUnknown(data['kanjiId']!, _kanjiIdMeta));
    } else if (isInserting) {
      context.missing(_kanjiIdMeta);
    }
    if (data.containsKey('kanjiOnReadings')) {
      context.handle(
          _kanjiOnReadingsMeta,
          kanjiOnReadings.isAcceptableOrUnknown(
              data['kanjiOnReadings']!, _kanjiOnReadingsMeta));
    } else if (isInserting) {
      context.missing(_kanjiOnReadingsMeta);
    }
    if (data.containsKey('kanjiKunReadings')) {
      context.handle(
          _kanjiKunReadingsMeta,
          kanjiKunReadings.isAcceptableOrUnknown(
              data['kanjiKunReadings']!, _kanjiKunReadingsMeta));
    } else if (isInserting) {
      context.missing(_kanjiKunReadingsMeta);
    }
    if (data.containsKey('kanjiMeanings')) {
      context.handle(
          _kanjiMeaningsMeta,
          kanjiMeanings.isAcceptableOrUnknown(
              data['kanjiMeanings']!, _kanjiMeaningsMeta));
    } else if (isInserting) {
      context.missing(_kanjiMeaningsMeta);
    }
    if (data.containsKey('kanjiFrequency')) {
      context.handle(
          _kanjiFrequencyMeta,
          kanjiFrequency.isAcceptableOrUnknown(
              data['kanjiFrequency']!, _kanjiFrequencyMeta));
    } else if (isInserting) {
      context.missing(_kanjiFrequencyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  SearchKanjiData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SearchKanjiData(
      kanjiId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kanjiId'])!,
      kanjiOnReadings: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}kanjiOnReadings'])!,
      kanjiKunReadings: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}kanjiKunReadings'])!,
      kanjiMeanings: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kanjiMeanings'])!,
      kanjiFrequency: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kanjiFrequency'])!,
    );
  }

  @override
  SearchKanji createAlias(String alias) {
    return SearchKanji(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
  @override
  String get moduleAndArgs =>
      'fts5(kanjiId, kanjiOnReadings, kanjiKunReadings, kanjiMeanings, kanjiFrequency UNINDEXED)';
}

class SearchKanjiData extends DataClass implements Insertable<SearchKanjiData> {
  final String kanjiId;
  final String kanjiOnReadings;
  final String kanjiKunReadings;
  final String kanjiMeanings;
  final String kanjiFrequency;
  const SearchKanjiData(
      {required this.kanjiId,
      required this.kanjiOnReadings,
      required this.kanjiKunReadings,
      required this.kanjiMeanings,
      required this.kanjiFrequency});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['kanjiId'] = Variable<String>(kanjiId);
    map['kanjiOnReadings'] = Variable<String>(kanjiOnReadings);
    map['kanjiKunReadings'] = Variable<String>(kanjiKunReadings);
    map['kanjiMeanings'] = Variable<String>(kanjiMeanings);
    map['kanjiFrequency'] = Variable<String>(kanjiFrequency);
    return map;
  }

  SearchKanjiCompanion toCompanion(bool nullToAbsent) {
    return SearchKanjiCompanion(
      kanjiId: Value(kanjiId),
      kanjiOnReadings: Value(kanjiOnReadings),
      kanjiKunReadings: Value(kanjiKunReadings),
      kanjiMeanings: Value(kanjiMeanings),
      kanjiFrequency: Value(kanjiFrequency),
    );
  }

  factory SearchKanjiData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SearchKanjiData(
      kanjiId: serializer.fromJson<String>(json['kanjiId']),
      kanjiOnReadings: serializer.fromJson<String>(json['kanjiOnReadings']),
      kanjiKunReadings: serializer.fromJson<String>(json['kanjiKunReadings']),
      kanjiMeanings: serializer.fromJson<String>(json['kanjiMeanings']),
      kanjiFrequency: serializer.fromJson<String>(json['kanjiFrequency']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'kanjiId': serializer.toJson<String>(kanjiId),
      'kanjiOnReadings': serializer.toJson<String>(kanjiOnReadings),
      'kanjiKunReadings': serializer.toJson<String>(kanjiKunReadings),
      'kanjiMeanings': serializer.toJson<String>(kanjiMeanings),
      'kanjiFrequency': serializer.toJson<String>(kanjiFrequency),
    };
  }

  SearchKanjiData copyWith(
          {String? kanjiId,
          String? kanjiOnReadings,
          String? kanjiKunReadings,
          String? kanjiMeanings,
          String? kanjiFrequency}) =>
      SearchKanjiData(
        kanjiId: kanjiId ?? this.kanjiId,
        kanjiOnReadings: kanjiOnReadings ?? this.kanjiOnReadings,
        kanjiKunReadings: kanjiKunReadings ?? this.kanjiKunReadings,
        kanjiMeanings: kanjiMeanings ?? this.kanjiMeanings,
        kanjiFrequency: kanjiFrequency ?? this.kanjiFrequency,
      );
  @override
  String toString() {
    return (StringBuffer('SearchKanjiData(')
          ..write('kanjiId: $kanjiId, ')
          ..write('kanjiOnReadings: $kanjiOnReadings, ')
          ..write('kanjiKunReadings: $kanjiKunReadings, ')
          ..write('kanjiMeanings: $kanjiMeanings, ')
          ..write('kanjiFrequency: $kanjiFrequency')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(kanjiId, kanjiOnReadings, kanjiKunReadings,
      kanjiMeanings, kanjiFrequency);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SearchKanjiData &&
          other.kanjiId == this.kanjiId &&
          other.kanjiOnReadings == this.kanjiOnReadings &&
          other.kanjiKunReadings == this.kanjiKunReadings &&
          other.kanjiMeanings == this.kanjiMeanings &&
          other.kanjiFrequency == this.kanjiFrequency);
}

class SearchKanjiCompanion extends UpdateCompanion<SearchKanjiData> {
  final Value<String> kanjiId;
  final Value<String> kanjiOnReadings;
  final Value<String> kanjiKunReadings;
  final Value<String> kanjiMeanings;
  final Value<String> kanjiFrequency;
  const SearchKanjiCompanion({
    this.kanjiId = const Value.absent(),
    this.kanjiOnReadings = const Value.absent(),
    this.kanjiKunReadings = const Value.absent(),
    this.kanjiMeanings = const Value.absent(),
    this.kanjiFrequency = const Value.absent(),
  });
  SearchKanjiCompanion.insert({
    required String kanjiId,
    required String kanjiOnReadings,
    required String kanjiKunReadings,
    required String kanjiMeanings,
    required String kanjiFrequency,
  })  : kanjiId = Value(kanjiId),
        kanjiOnReadings = Value(kanjiOnReadings),
        kanjiKunReadings = Value(kanjiKunReadings),
        kanjiMeanings = Value(kanjiMeanings),
        kanjiFrequency = Value(kanjiFrequency);
  static Insertable<SearchKanjiData> custom({
    Expression<String>? kanjiId,
    Expression<String>? kanjiOnReadings,
    Expression<String>? kanjiKunReadings,
    Expression<String>? kanjiMeanings,
    Expression<String>? kanjiFrequency,
  }) {
    return RawValuesInsertable({
      if (kanjiId != null) 'kanjiId': kanjiId,
      if (kanjiOnReadings != null) 'kanjiOnReadings': kanjiOnReadings,
      if (kanjiKunReadings != null) 'kanjiKunReadings': kanjiKunReadings,
      if (kanjiMeanings != null) 'kanjiMeanings': kanjiMeanings,
      if (kanjiFrequency != null) 'kanjiFrequency': kanjiFrequency,
    });
  }

  SearchKanjiCompanion copyWith(
      {Value<String>? kanjiId,
      Value<String>? kanjiOnReadings,
      Value<String>? kanjiKunReadings,
      Value<String>? kanjiMeanings,
      Value<String>? kanjiFrequency}) {
    return SearchKanjiCompanion(
      kanjiId: kanjiId ?? this.kanjiId,
      kanjiOnReadings: kanjiOnReadings ?? this.kanjiOnReadings,
      kanjiKunReadings: kanjiKunReadings ?? this.kanjiKunReadings,
      kanjiMeanings: kanjiMeanings ?? this.kanjiMeanings,
      kanjiFrequency: kanjiFrequency ?? this.kanjiFrequency,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (kanjiId.present) {
      map['kanjiId'] = Variable<String>(kanjiId.value);
    }
    if (kanjiOnReadings.present) {
      map['kanjiOnReadings'] = Variable<String>(kanjiOnReadings.value);
    }
    if (kanjiKunReadings.present) {
      map['kanjiKunReadings'] = Variable<String>(kanjiKunReadings.value);
    }
    if (kanjiMeanings.present) {
      map['kanjiMeanings'] = Variable<String>(kanjiMeanings.value);
    }
    if (kanjiFrequency.present) {
      map['kanjiFrequency'] = Variable<String>(kanjiFrequency.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchKanjiCompanion(')
          ..write('kanjiId: $kanjiId, ')
          ..write('kanjiOnReadings: $kanjiOnReadings, ')
          ..write('kanjiKunReadings: $kanjiKunReadings, ')
          ..write('kanjiMeanings: $kanjiMeanings, ')
          ..write('kanjiFrequency: $kanjiFrequency')
          ..write(')'))
        .toString();
  }
}

class $JlptLevelsTable extends JlptLevels
    with TableInfo<$JlptLevelsTable, JlptLevel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $JlptLevelsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _jlptIdMeta = const VerificationMeta('jlptId');
  @override
  late final GeneratedColumn<String> jlptId = GeneratedColumn<String>(
      'jlpt_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descrMeta = const VerificationMeta('descr');
  @override
  late final GeneratedColumn<String> descr = GeneratedColumn<String>(
      'descr', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  @override
  List<GeneratedColumn> get $columns => [jlptId, descr];
  @override
  String get aliasedName => _alias ?? 'jlpt';
  @override
  String get actualTableName => 'jlpt';
  @override
  VerificationContext validateIntegrity(Insertable<JlptLevel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('jlpt_id')) {
      context.handle(_jlptIdMeta,
          jlptId.isAcceptableOrUnknown(data['jlpt_id']!, _jlptIdMeta));
    } else if (isInserting) {
      context.missing(_jlptIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {jlptId};
  @override
  JlptLevel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return JlptLevel(
      jlptId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}jlpt_id'])!,
      descr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}descr'])!,
    );
  }

  @override
  $JlptLevelsTable createAlias(String alias) {
    return $JlptLevelsTable(attachedDatabase, alias);
  }
}

class JlptLevel extends DataClass implements Insertable<JlptLevel> {
  final String jlptId;
  final String descr;
  const JlptLevel({required this.jlptId, required this.descr});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['jlpt_id'] = Variable<String>(jlptId);
    map['descr'] = Variable<String>(descr);
    return map;
  }

  JlptLevelsCompanion toCompanion(bool nullToAbsent) {
    return JlptLevelsCompanion(
      jlptId: Value(jlptId),
      descr: Value(descr),
    );
  }

  factory JlptLevel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return JlptLevel(
      jlptId: serializer.fromJson<String>(json['jlptId']),
      descr: serializer.fromJson<String>(json['descr']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'jlptId': serializer.toJson<String>(jlptId),
      'descr': serializer.toJson<String>(descr),
    };
  }

  JlptLevel copyWith({String? jlptId, String? descr}) => JlptLevel(
        jlptId: jlptId ?? this.jlptId,
        descr: descr ?? this.descr,
      );
  @override
  String toString() {
    return (StringBuffer('JlptLevel(')
          ..write('jlptId: $jlptId, ')
          ..write('descr: $descr')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(jlptId, descr);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JlptLevel &&
          other.jlptId == this.jlptId &&
          other.descr == this.descr);
}

class JlptLevelsCompanion extends UpdateCompanion<JlptLevel> {
  final Value<String> jlptId;
  final Value<String> descr;
  const JlptLevelsCompanion({
    this.jlptId = const Value.absent(),
    this.descr = const Value.absent(),
  });
  JlptLevelsCompanion.insert({
    required String jlptId,
    required String descr,
  })  : jlptId = Value(jlptId),
        descr = Value(descr);
  static Insertable<JlptLevel> custom({
    Expression<String>? jlptId,
    Expression<String>? descr,
  }) {
    return RawValuesInsertable({
      if (jlptId != null) 'jlpt_id': jlptId,
      if (descr != null) 'descr': descr,
    });
  }

  JlptLevelsCompanion copyWith({Value<String>? jlptId, Value<String>? descr}) {
    return JlptLevelsCompanion(
      jlptId: jlptId ?? this.jlptId,
      descr: descr ?? this.descr,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (jlptId.present) {
      map['jlpt_id'] = Variable<String>(jlptId.value);
    }
    if (descr.present) {
      map['descr'] = Variable<String>(descr.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('JlptLevelsCompanion(')
          ..write('jlptId: $jlptId, ')
          ..write('descr: $descr')
          ..write(')'))
        .toString();
  }
}

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
  static const VerificationMeta _hexcodeMeta =
      const VerificationMeta('hexcode');
  @override
  late final GeneratedColumn<String> hexcode = GeneratedColumn<String>(
      'hexcode', aliasedName, false,
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
      [radicalId, hexcode, number, strokes, variantOf];
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
    if (data.containsKey('hexcode')) {
      context.handle(_hexcodeMeta,
          hexcode.isAcceptableOrUnknown(data['hexcode']!, _hexcodeMeta));
    } else if (isInserting) {
      context.missing(_hexcodeMeta);
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
      hexcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hexcode'])!,
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
  final String hexcode;
  final int number;
  final int strokes;
  final String? variantOf;
  const Radical(
      {required this.radicalId,
      required this.hexcode,
      required this.number,
      required this.strokes,
      this.variantOf});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['radical_id'] = Variable<String>(radicalId);
    map['hexcode'] = Variable<String>(hexcode);
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
      hexcode: Value(hexcode),
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
      hexcode: serializer.fromJson<String>(json['hexcode']),
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
      'hexcode': serializer.toJson<String>(hexcode),
      'number': serializer.toJson<int>(number),
      'strokes': serializer.toJson<int>(strokes),
      'variantOf': serializer.toJson<String?>(variantOf),
    };
  }

  Radical copyWith(
          {String? radicalId,
          String? hexcode,
          int? number,
          int? strokes,
          Value<String?> variantOf = const Value.absent()}) =>
      Radical(
        radicalId: radicalId ?? this.radicalId,
        hexcode: hexcode ?? this.hexcode,
        number: number ?? this.number,
        strokes: strokes ?? this.strokes,
        variantOf: variantOf.present ? variantOf.value : this.variantOf,
      );
  @override
  String toString() {
    return (StringBuffer('Radical(')
          ..write('radicalId: $radicalId, ')
          ..write('hexcode: $hexcode, ')
          ..write('number: $number, ')
          ..write('strokes: $strokes, ')
          ..write('variantOf: $variantOf')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(radicalId, hexcode, number, strokes, variantOf);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Radical &&
          other.radicalId == this.radicalId &&
          other.hexcode == this.hexcode &&
          other.number == this.number &&
          other.strokes == this.strokes &&
          other.variantOf == this.variantOf);
}

class RadicalsCompanion extends UpdateCompanion<Radical> {
  final Value<String> radicalId;
  final Value<String> hexcode;
  final Value<int> number;
  final Value<int> strokes;
  final Value<String?> variantOf;
  const RadicalsCompanion({
    this.radicalId = const Value.absent(),
    this.hexcode = const Value.absent(),
    this.number = const Value.absent(),
    this.strokes = const Value.absent(),
    this.variantOf = const Value.absent(),
  });
  RadicalsCompanion.insert({
    required String radicalId,
    required String hexcode,
    required int number,
    required int strokes,
    this.variantOf = const Value.absent(),
  })  : radicalId = Value(radicalId),
        hexcode = Value(hexcode),
        number = Value(number),
        strokes = Value(strokes);
  static Insertable<Radical> custom({
    Expression<String>? radicalId,
    Expression<String>? hexcode,
    Expression<int>? number,
    Expression<int>? strokes,
    Expression<String>? variantOf,
  }) {
    return RawValuesInsertable({
      if (radicalId != null) 'radical_id': radicalId,
      if (hexcode != null) 'hexcode': hexcode,
      if (number != null) 'number': number,
      if (strokes != null) 'strokes': strokes,
      if (variantOf != null) 'variant_of': variantOf,
    });
  }

  RadicalsCompanion copyWith(
      {Value<String>? radicalId,
      Value<String>? hexcode,
      Value<int>? number,
      Value<int>? strokes,
      Value<String?>? variantOf}) {
    return RadicalsCompanion(
      radicalId: radicalId ?? this.radicalId,
      hexcode: hexcode ?? this.hexcode,
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
    if (hexcode.present) {
      map['hexcode'] = Variable<String>(hexcode.value);
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
          ..write('hexcode: $hexcode, ')
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

class $KanjiGradesTable extends KanjiGrades
    with TableInfo<$KanjiGradesTable, KanjiGrade> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KanjiGradesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _kanjiGradeIdMeta =
      const VerificationMeta('kanjiGradeId');
  @override
  late final GeneratedColumn<String> kanjiGradeId = GeneratedColumn<String>(
      'kanji_grade_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descrMeta = const VerificationMeta('descr');
  @override
  late final GeneratedColumn<String> descr = GeneratedColumn<String>(
      'descr', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [kanjiGradeId, descr];
  @override
  String get aliasedName => _alias ?? 'kanji_grade';
  @override
  String get actualTableName => 'kanji_grade';
  @override
  VerificationContext validateIntegrity(Insertable<KanjiGrade> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('kanji_grade_id')) {
      context.handle(
          _kanjiGradeIdMeta,
          kanjiGradeId.isAcceptableOrUnknown(
              data['kanji_grade_id']!, _kanjiGradeIdMeta));
    } else if (isInserting) {
      context.missing(_kanjiGradeIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {kanjiGradeId};
  @override
  KanjiGrade map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return KanjiGrade(
      kanjiGradeId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kanji_grade_id'])!,
      descr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}descr'])!,
    );
  }

  @override
  $KanjiGradesTable createAlias(String alias) {
    return $KanjiGradesTable(attachedDatabase, alias);
  }
}

class KanjiGrade extends DataClass implements Insertable<KanjiGrade> {
  final String kanjiGradeId;
  final String descr;
  const KanjiGrade({required this.kanjiGradeId, required this.descr});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['kanji_grade_id'] = Variable<String>(kanjiGradeId);
    map['descr'] = Variable<String>(descr);
    return map;
  }

  KanjiGradesCompanion toCompanion(bool nullToAbsent) {
    return KanjiGradesCompanion(
      kanjiGradeId: Value(kanjiGradeId),
      descr: Value(descr),
    );
  }

  factory KanjiGrade.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KanjiGrade(
      kanjiGradeId: serializer.fromJson<String>(json['kanjiGradeId']),
      descr: serializer.fromJson<String>(json['descr']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'kanjiGradeId': serializer.toJson<String>(kanjiGradeId),
      'descr': serializer.toJson<String>(descr),
    };
  }

  KanjiGrade copyWith({String? kanjiGradeId, String? descr}) => KanjiGrade(
        kanjiGradeId: kanjiGradeId ?? this.kanjiGradeId,
        descr: descr ?? this.descr,
      );
  @override
  String toString() {
    return (StringBuffer('KanjiGrade(')
          ..write('kanjiGradeId: $kanjiGradeId, ')
          ..write('descr: $descr')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(kanjiGradeId, descr);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KanjiGrade &&
          other.kanjiGradeId == this.kanjiGradeId &&
          other.descr == this.descr);
}

class KanjiGradesCompanion extends UpdateCompanion<KanjiGrade> {
  final Value<String> kanjiGradeId;
  final Value<String> descr;
  const KanjiGradesCompanion({
    this.kanjiGradeId = const Value.absent(),
    this.descr = const Value.absent(),
  });
  KanjiGradesCompanion.insert({
    required String kanjiGradeId,
    required String descr,
  })  : kanjiGradeId = Value(kanjiGradeId),
        descr = Value(descr);
  static Insertable<KanjiGrade> custom({
    Expression<String>? kanjiGradeId,
    Expression<String>? descr,
  }) {
    return RawValuesInsertable({
      if (kanjiGradeId != null) 'kanji_grade_id': kanjiGradeId,
      if (descr != null) 'descr': descr,
    });
  }

  KanjiGradesCompanion copyWith(
      {Value<String>? kanjiGradeId, Value<String>? descr}) {
    return KanjiGradesCompanion(
      kanjiGradeId: kanjiGradeId ?? this.kanjiGradeId,
      descr: descr ?? this.descr,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (kanjiGradeId.present) {
      map['kanji_grade_id'] = Variable<String>(kanjiGradeId.value);
    }
    if (descr.present) {
      map['descr'] = Variable<String>(descr.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KanjiGradesCompanion(')
          ..write('kanjiGradeId: $kanjiGradeId, ')
          ..write('descr: $descr')
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
  static const VerificationMeta _hexcodeMeta =
      const VerificationMeta('hexcode');
  @override
  late final GeneratedColumn<String> hexcode = GeneratedColumn<String>(
      'hexcode', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _strokesMeta =
      const VerificationMeta('strokes');
  @override
  late final GeneratedColumn<int> strokes = GeneratedColumn<int>(
      'strokes', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _frequencyJMeta =
      const VerificationMeta('frequencyJ');
  @override
  late final GeneratedColumn<int> frequencyJ = GeneratedColumn<int>(
      'frequency_j', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _jlptIdMeta = const VerificationMeta('jlptId');
  @override
  late final GeneratedColumn<String> jlptId = GeneratedColumn<String>(
      'jlpt_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES jlpt (jlpt_id)'));
  static const VerificationMeta _kanjiGradeIdMeta =
      const VerificationMeta('kanjiGradeId');
  @override
  late final GeneratedColumn<String> kanjiGradeId = GeneratedColumn<String>(
      'kanji_grade_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES kanji_grade (kanji_grade_id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [kanjiId, hexcode, strokes, frequencyJ, jlptId, kanjiGradeId];
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
    if (data.containsKey('hexcode')) {
      context.handle(_hexcodeMeta,
          hexcode.isAcceptableOrUnknown(data['hexcode']!, _hexcodeMeta));
    } else if (isInserting) {
      context.missing(_hexcodeMeta);
    }
    if (data.containsKey('strokes')) {
      context.handle(_strokesMeta,
          strokes.isAcceptableOrUnknown(data['strokes']!, _strokesMeta));
    }
    if (data.containsKey('frequency_j')) {
      context.handle(
          _frequencyJMeta,
          frequencyJ.isAcceptableOrUnknown(
              data['frequency_j']!, _frequencyJMeta));
    }
    if (data.containsKey('jlpt_id')) {
      context.handle(_jlptIdMeta,
          jlptId.isAcceptableOrUnknown(data['jlpt_id']!, _jlptIdMeta));
    }
    if (data.containsKey('kanji_grade_id')) {
      context.handle(
          _kanjiGradeIdMeta,
          kanjiGradeId.isAcceptableOrUnknown(
              data['kanji_grade_id']!, _kanjiGradeIdMeta));
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
      hexcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hexcode'])!,
      strokes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}strokes']),
      frequencyJ: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}frequency_j']),
      jlptId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}jlpt_id']),
      kanjiGradeId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kanji_grade_id']),
    );
  }

  @override
  $KanjisTable createAlias(String alias) {
    return $KanjisTable(attachedDatabase, alias);
  }
}

class Kanji extends DataClass implements Insertable<Kanji> {
  final String kanjiId;
  final String hexcode;
  final int? strokes;
  final int? frequencyJ;
  final String? jlptId;
  final String? kanjiGradeId;
  const Kanji(
      {required this.kanjiId,
      required this.hexcode,
      this.strokes,
      this.frequencyJ,
      this.jlptId,
      this.kanjiGradeId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['kanji_id'] = Variable<String>(kanjiId);
    map['hexcode'] = Variable<String>(hexcode);
    if (!nullToAbsent || strokes != null) {
      map['strokes'] = Variable<int>(strokes);
    }
    if (!nullToAbsent || frequencyJ != null) {
      map['frequency_j'] = Variable<int>(frequencyJ);
    }
    if (!nullToAbsent || jlptId != null) {
      map['jlpt_id'] = Variable<String>(jlptId);
    }
    if (!nullToAbsent || kanjiGradeId != null) {
      map['kanji_grade_id'] = Variable<String>(kanjiGradeId);
    }
    return map;
  }

  KanjisCompanion toCompanion(bool nullToAbsent) {
    return KanjisCompanion(
      kanjiId: Value(kanjiId),
      hexcode: Value(hexcode),
      strokes: strokes == null && nullToAbsent
          ? const Value.absent()
          : Value(strokes),
      frequencyJ: frequencyJ == null && nullToAbsent
          ? const Value.absent()
          : Value(frequencyJ),
      jlptId:
          jlptId == null && nullToAbsent ? const Value.absent() : Value(jlptId),
      kanjiGradeId: kanjiGradeId == null && nullToAbsent
          ? const Value.absent()
          : Value(kanjiGradeId),
    );
  }

  factory Kanji.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Kanji(
      kanjiId: serializer.fromJson<String>(json['kanjiId']),
      hexcode: serializer.fromJson<String>(json['hexcode']),
      strokes: serializer.fromJson<int?>(json['strokes']),
      frequencyJ: serializer.fromJson<int?>(json['frequencyJ']),
      jlptId: serializer.fromJson<String?>(json['jlptId']),
      kanjiGradeId: serializer.fromJson<String?>(json['kanjiGradeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'kanjiId': serializer.toJson<String>(kanjiId),
      'hexcode': serializer.toJson<String>(hexcode),
      'strokes': serializer.toJson<int?>(strokes),
      'frequencyJ': serializer.toJson<int?>(frequencyJ),
      'jlptId': serializer.toJson<String?>(jlptId),
      'kanjiGradeId': serializer.toJson<String?>(kanjiGradeId),
    };
  }

  Kanji copyWith(
          {String? kanjiId,
          String? hexcode,
          Value<int?> strokes = const Value.absent(),
          Value<int?> frequencyJ = const Value.absent(),
          Value<String?> jlptId = const Value.absent(),
          Value<String?> kanjiGradeId = const Value.absent()}) =>
      Kanji(
        kanjiId: kanjiId ?? this.kanjiId,
        hexcode: hexcode ?? this.hexcode,
        strokes: strokes.present ? strokes.value : this.strokes,
        frequencyJ: frequencyJ.present ? frequencyJ.value : this.frequencyJ,
        jlptId: jlptId.present ? jlptId.value : this.jlptId,
        kanjiGradeId:
            kanjiGradeId.present ? kanjiGradeId.value : this.kanjiGradeId,
      );
  @override
  String toString() {
    return (StringBuffer('Kanji(')
          ..write('kanjiId: $kanjiId, ')
          ..write('hexcode: $hexcode, ')
          ..write('strokes: $strokes, ')
          ..write('frequencyJ: $frequencyJ, ')
          ..write('jlptId: $jlptId, ')
          ..write('kanjiGradeId: $kanjiGradeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(kanjiId, hexcode, strokes, frequencyJ, jlptId, kanjiGradeId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Kanji &&
          other.kanjiId == this.kanjiId &&
          other.hexcode == this.hexcode &&
          other.strokes == this.strokes &&
          other.frequencyJ == this.frequencyJ &&
          other.jlptId == this.jlptId &&
          other.kanjiGradeId == this.kanjiGradeId);
}

class KanjisCompanion extends UpdateCompanion<Kanji> {
  final Value<String> kanjiId;
  final Value<String> hexcode;
  final Value<int?> strokes;
  final Value<int?> frequencyJ;
  final Value<String?> jlptId;
  final Value<String?> kanjiGradeId;
  const KanjisCompanion({
    this.kanjiId = const Value.absent(),
    this.hexcode = const Value.absent(),
    this.strokes = const Value.absent(),
    this.frequencyJ = const Value.absent(),
    this.jlptId = const Value.absent(),
    this.kanjiGradeId = const Value.absent(),
  });
  KanjisCompanion.insert({
    required String kanjiId,
    required String hexcode,
    this.strokes = const Value.absent(),
    this.frequencyJ = const Value.absent(),
    this.jlptId = const Value.absent(),
    this.kanjiGradeId = const Value.absent(),
  })  : kanjiId = Value(kanjiId),
        hexcode = Value(hexcode);
  static Insertable<Kanji> custom({
    Expression<String>? kanjiId,
    Expression<String>? hexcode,
    Expression<int>? strokes,
    Expression<int>? frequencyJ,
    Expression<String>? jlptId,
    Expression<String>? kanjiGradeId,
  }) {
    return RawValuesInsertable({
      if (kanjiId != null) 'kanji_id': kanjiId,
      if (hexcode != null) 'hexcode': hexcode,
      if (strokes != null) 'strokes': strokes,
      if (frequencyJ != null) 'frequency_j': frequencyJ,
      if (jlptId != null) 'jlpt_id': jlptId,
      if (kanjiGradeId != null) 'kanji_grade_id': kanjiGradeId,
    });
  }

  KanjisCompanion copyWith(
      {Value<String>? kanjiId,
      Value<String>? hexcode,
      Value<int?>? strokes,
      Value<int?>? frequencyJ,
      Value<String?>? jlptId,
      Value<String?>? kanjiGradeId}) {
    return KanjisCompanion(
      kanjiId: kanjiId ?? this.kanjiId,
      hexcode: hexcode ?? this.hexcode,
      strokes: strokes ?? this.strokes,
      frequencyJ: frequencyJ ?? this.frequencyJ,
      jlptId: jlptId ?? this.jlptId,
      kanjiGradeId: kanjiGradeId ?? this.kanjiGradeId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (kanjiId.present) {
      map['kanji_id'] = Variable<String>(kanjiId.value);
    }
    if (hexcode.present) {
      map['hexcode'] = Variable<String>(hexcode.value);
    }
    if (strokes.present) {
      map['strokes'] = Variable<int>(strokes.value);
    }
    if (frequencyJ.present) {
      map['frequency_j'] = Variable<int>(frequencyJ.value);
    }
    if (jlptId.present) {
      map['jlpt_id'] = Variable<String>(jlptId.value);
    }
    if (kanjiGradeId.present) {
      map['kanji_grade_id'] = Variable<String>(kanjiGradeId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KanjisCompanion(')
          ..write('kanjiId: $kanjiId, ')
          ..write('hexcode: $hexcode, ')
          ..write('strokes: $strokes, ')
          ..write('frequencyJ: $frequencyJ, ')
          ..write('jlptId: $jlptId, ')
          ..write('kanjiGradeId: $kanjiGradeId')
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

class $LangsTable extends Langs with TableInfo<$LangsTable, Lang> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LangsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _langIdMeta = const VerificationMeta('langId');
  @override
  late final GeneratedColumn<String> langId = GeneratedColumn<String>(
      'lang_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _englishNameMeta =
      const VerificationMeta('englishName');
  @override
  late final GeneratedColumn<String> englishName = GeneratedColumn<String>(
      'english_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  @override
  List<GeneratedColumn> get $columns => [langId, englishName];
  @override
  String get aliasedName => _alias ?? 'lang';
  @override
  String get actualTableName => 'lang';
  @override
  VerificationContext validateIntegrity(Insertable<Lang> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('lang_id')) {
      context.handle(_langIdMeta,
          langId.isAcceptableOrUnknown(data['lang_id']!, _langIdMeta));
    } else if (isInserting) {
      context.missing(_langIdMeta);
    }
    if (data.containsKey('english_name')) {
      context.handle(
          _englishNameMeta,
          englishName.isAcceptableOrUnknown(
              data['english_name']!, _englishNameMeta));
    } else if (isInserting) {
      context.missing(_englishNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {langId};
  @override
  Lang map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Lang(
      langId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lang_id'])!,
      englishName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}english_name'])!,
    );
  }

  @override
  $LangsTable createAlias(String alias) {
    return $LangsTable(attachedDatabase, alias);
  }
}

class Lang extends DataClass implements Insertable<Lang> {
  final String langId;
  final String englishName;
  const Lang({required this.langId, required this.englishName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['lang_id'] = Variable<String>(langId);
    map['english_name'] = Variable<String>(englishName);
    return map;
  }

  LangsCompanion toCompanion(bool nullToAbsent) {
    return LangsCompanion(
      langId: Value(langId),
      englishName: Value(englishName),
    );
  }

  factory Lang.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Lang(
      langId: serializer.fromJson<String>(json['langId']),
      englishName: serializer.fromJson<String>(json['englishName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'langId': serializer.toJson<String>(langId),
      'englishName': serializer.toJson<String>(englishName),
    };
  }

  Lang copyWith({String? langId, String? englishName}) => Lang(
        langId: langId ?? this.langId,
        englishName: englishName ?? this.englishName,
      );
  @override
  String toString() {
    return (StringBuffer('Lang(')
          ..write('langId: $langId, ')
          ..write('englishName: $englishName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(langId, englishName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Lang &&
          other.langId == this.langId &&
          other.englishName == this.englishName);
}

class LangsCompanion extends UpdateCompanion<Lang> {
  final Value<String> langId;
  final Value<String> englishName;
  const LangsCompanion({
    this.langId = const Value.absent(),
    this.englishName = const Value.absent(),
  });
  LangsCompanion.insert({
    required String langId,
    required String englishName,
  })  : langId = Value(langId),
        englishName = Value(englishName);
  static Insertable<Lang> custom({
    Expression<String>? langId,
    Expression<String>? englishName,
  }) {
    return RawValuesInsertable({
      if (langId != null) 'lang_id': langId,
      if (englishName != null) 'english_name': englishName,
    });
  }

  LangsCompanion copyWith({Value<String>? langId, Value<String>? englishName}) {
    return LangsCompanion(
      langId: langId ?? this.langId,
      englishName: englishName ?? this.englishName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (langId.present) {
      map['lang_id'] = Variable<String>(langId.value);
    }
    if (englishName.present) {
      map['english_name'] = Variable<String>(englishName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LangsCompanion(')
          ..write('langId: $langId, ')
          ..write('englishName: $englishName')
          ..write(')'))
        .toString();
  }
}

class $KanjiMeaningsTable extends KanjiMeanings
    with TableInfo<$KanjiMeaningsTable, KanjiMeaning> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KanjiMeaningsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _kanjiIdMeta =
      const VerificationMeta('kanjiId');
  @override
  late final GeneratedColumn<String> kanjiId = GeneratedColumn<String>(
      'kanji_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES kanji (kanji_id)'));
  static const VerificationMeta _langIdMeta = const VerificationMeta('langId');
  @override
  late final GeneratedColumn<String> langId = GeneratedColumn<String>(
      'lang_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES lang (lang_id)'));
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
  List<GeneratedColumn> get $columns => [kanjiId, langId, position, value];
  @override
  String get aliasedName => _alias ?? 'kanji_meaning';
  @override
  String get actualTableName => 'kanji_meaning';
  @override
  VerificationContext validateIntegrity(Insertable<KanjiMeaning> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('kanji_id')) {
      context.handle(_kanjiIdMeta,
          kanjiId.isAcceptableOrUnknown(data['kanji_id']!, _kanjiIdMeta));
    } else if (isInserting) {
      context.missing(_kanjiIdMeta);
    }
    if (data.containsKey('lang_id')) {
      context.handle(_langIdMeta,
          langId.isAcceptableOrUnknown(data['lang_id']!, _langIdMeta));
    } else if (isInserting) {
      context.missing(_langIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {kanjiId, langId, position};
  @override
  KanjiMeaning map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return KanjiMeaning(
      kanjiId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kanji_id'])!,
      langId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lang_id'])!,
      position: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}position'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
    );
  }

  @override
  $KanjiMeaningsTable createAlias(String alias) {
    return $KanjiMeaningsTable(attachedDatabase, alias);
  }
}

class KanjiMeaning extends DataClass implements Insertable<KanjiMeaning> {
  final String kanjiId;
  final String langId;
  final int position;
  final String value;
  const KanjiMeaning(
      {required this.kanjiId,
      required this.langId,
      required this.position,
      required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['kanji_id'] = Variable<String>(kanjiId);
    map['lang_id'] = Variable<String>(langId);
    map['position'] = Variable<int>(position);
    map['value'] = Variable<String>(value);
    return map;
  }

  KanjiMeaningsCompanion toCompanion(bool nullToAbsent) {
    return KanjiMeaningsCompanion(
      kanjiId: Value(kanjiId),
      langId: Value(langId),
      position: Value(position),
      value: Value(value),
    );
  }

  factory KanjiMeaning.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KanjiMeaning(
      kanjiId: serializer.fromJson<String>(json['kanjiId']),
      langId: serializer.fromJson<String>(json['langId']),
      position: serializer.fromJson<int>(json['position']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'kanjiId': serializer.toJson<String>(kanjiId),
      'langId': serializer.toJson<String>(langId),
      'position': serializer.toJson<int>(position),
      'value': serializer.toJson<String>(value),
    };
  }

  KanjiMeaning copyWith(
          {String? kanjiId, String? langId, int? position, String? value}) =>
      KanjiMeaning(
        kanjiId: kanjiId ?? this.kanjiId,
        langId: langId ?? this.langId,
        position: position ?? this.position,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('KanjiMeaning(')
          ..write('kanjiId: $kanjiId, ')
          ..write('langId: $langId, ')
          ..write('position: $position, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(kanjiId, langId, position, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KanjiMeaning &&
          other.kanjiId == this.kanjiId &&
          other.langId == this.langId &&
          other.position == this.position &&
          other.value == this.value);
}

class KanjiMeaningsCompanion extends UpdateCompanion<KanjiMeaning> {
  final Value<String> kanjiId;
  final Value<String> langId;
  final Value<int> position;
  final Value<String> value;
  const KanjiMeaningsCompanion({
    this.kanjiId = const Value.absent(),
    this.langId = const Value.absent(),
    this.position = const Value.absent(),
    this.value = const Value.absent(),
  });
  KanjiMeaningsCompanion.insert({
    required String kanjiId,
    required String langId,
    required int position,
    required String value,
  })  : kanjiId = Value(kanjiId),
        langId = Value(langId),
        position = Value(position),
        value = Value(value);
  static Insertable<KanjiMeaning> custom({
    Expression<String>? kanjiId,
    Expression<String>? langId,
    Expression<int>? position,
    Expression<String>? value,
  }) {
    return RawValuesInsertable({
      if (kanjiId != null) 'kanji_id': kanjiId,
      if (langId != null) 'lang_id': langId,
      if (position != null) 'position': position,
      if (value != null) 'value': value,
    });
  }

  KanjiMeaningsCompanion copyWith(
      {Value<String>? kanjiId,
      Value<String>? langId,
      Value<int>? position,
      Value<String>? value}) {
    return KanjiMeaningsCompanion(
      kanjiId: kanjiId ?? this.kanjiId,
      langId: langId ?? this.langId,
      position: position ?? this.position,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (kanjiId.present) {
      map['kanji_id'] = Variable<String>(kanjiId.value);
    }
    if (langId.present) {
      map['lang_id'] = Variable<String>(langId.value);
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
    return (StringBuffer('KanjiMeaningsCompanion(')
          ..write('kanjiId: $kanjiId, ')
          ..write('langId: $langId, ')
          ..write('position: $position, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $KanjiPartsTable extends KanjiParts
    with TableInfo<$KanjiPartsTable, KanjiPart> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KanjiPartsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _partKanjiIdMeta =
      const VerificationMeta('partKanjiId');
  @override
  late final GeneratedColumn<String> partKanjiId = GeneratedColumn<String>(
      'part_kanji_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES kanji (kanji_id)'));
  static const VerificationMeta _partRadicalIdMeta =
      const VerificationMeta('partRadicalId');
  @override
  late final GeneratedColumn<String> partRadicalId = GeneratedColumn<String>(
      'part_radical_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES radical (radical_id)'));
  static const VerificationMeta _partComponentMeta =
      const VerificationMeta('partComponent');
  @override
  late final GeneratedColumn<String> partComponent = GeneratedColumn<String>(
      'part_component', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [kanjiId, position, partKanjiId, partRadicalId, partComponent];
  @override
  String get aliasedName => _alias ?? 'kanji_part';
  @override
  String get actualTableName => 'kanji_part';
  @override
  VerificationContext validateIntegrity(Insertable<KanjiPart> instance,
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
    if (data.containsKey('part_kanji_id')) {
      context.handle(
          _partKanjiIdMeta,
          partKanjiId.isAcceptableOrUnknown(
              data['part_kanji_id']!, _partKanjiIdMeta));
    }
    if (data.containsKey('part_radical_id')) {
      context.handle(
          _partRadicalIdMeta,
          partRadicalId.isAcceptableOrUnknown(
              data['part_radical_id']!, _partRadicalIdMeta));
    }
    if (data.containsKey('part_component')) {
      context.handle(
          _partComponentMeta,
          partComponent.isAcceptableOrUnknown(
              data['part_component']!, _partComponentMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {kanjiId, position};
  @override
  KanjiPart map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return KanjiPart(
      kanjiId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kanji_id'])!,
      position: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}position'])!,
      partKanjiId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}part_kanji_id']),
      partRadicalId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}part_radical_id']),
      partComponent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}part_component']),
    );
  }

  @override
  $KanjiPartsTable createAlias(String alias) {
    return $KanjiPartsTable(attachedDatabase, alias);
  }
}

class KanjiPart extends DataClass implements Insertable<KanjiPart> {
  final String kanjiId;
  final int position;
  final String? partKanjiId;
  final String? partRadicalId;
  final String? partComponent;
  const KanjiPart(
      {required this.kanjiId,
      required this.position,
      this.partKanjiId,
      this.partRadicalId,
      this.partComponent});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['kanji_id'] = Variable<String>(kanjiId);
    map['position'] = Variable<int>(position);
    if (!nullToAbsent || partKanjiId != null) {
      map['part_kanji_id'] = Variable<String>(partKanjiId);
    }
    if (!nullToAbsent || partRadicalId != null) {
      map['part_radical_id'] = Variable<String>(partRadicalId);
    }
    if (!nullToAbsent || partComponent != null) {
      map['part_component'] = Variable<String>(partComponent);
    }
    return map;
  }

  KanjiPartsCompanion toCompanion(bool nullToAbsent) {
    return KanjiPartsCompanion(
      kanjiId: Value(kanjiId),
      position: Value(position),
      partKanjiId: partKanjiId == null && nullToAbsent
          ? const Value.absent()
          : Value(partKanjiId),
      partRadicalId: partRadicalId == null && nullToAbsent
          ? const Value.absent()
          : Value(partRadicalId),
      partComponent: partComponent == null && nullToAbsent
          ? const Value.absent()
          : Value(partComponent),
    );
  }

  factory KanjiPart.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KanjiPart(
      kanjiId: serializer.fromJson<String>(json['kanjiId']),
      position: serializer.fromJson<int>(json['position']),
      partKanjiId: serializer.fromJson<String?>(json['partKanjiId']),
      partRadicalId: serializer.fromJson<String?>(json['partRadicalId']),
      partComponent: serializer.fromJson<String?>(json['partComponent']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'kanjiId': serializer.toJson<String>(kanjiId),
      'position': serializer.toJson<int>(position),
      'partKanjiId': serializer.toJson<String?>(partKanjiId),
      'partRadicalId': serializer.toJson<String?>(partRadicalId),
      'partComponent': serializer.toJson<String?>(partComponent),
    };
  }

  KanjiPart copyWith(
          {String? kanjiId,
          int? position,
          Value<String?> partKanjiId = const Value.absent(),
          Value<String?> partRadicalId = const Value.absent(),
          Value<String?> partComponent = const Value.absent()}) =>
      KanjiPart(
        kanjiId: kanjiId ?? this.kanjiId,
        position: position ?? this.position,
        partKanjiId: partKanjiId.present ? partKanjiId.value : this.partKanjiId,
        partRadicalId:
            partRadicalId.present ? partRadicalId.value : this.partRadicalId,
        partComponent:
            partComponent.present ? partComponent.value : this.partComponent,
      );
  @override
  String toString() {
    return (StringBuffer('KanjiPart(')
          ..write('kanjiId: $kanjiId, ')
          ..write('position: $position, ')
          ..write('partKanjiId: $partKanjiId, ')
          ..write('partRadicalId: $partRadicalId, ')
          ..write('partComponent: $partComponent')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(kanjiId, position, partKanjiId, partRadicalId, partComponent);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KanjiPart &&
          other.kanjiId == this.kanjiId &&
          other.position == this.position &&
          other.partKanjiId == this.partKanjiId &&
          other.partRadicalId == this.partRadicalId &&
          other.partComponent == this.partComponent);
}

class KanjiPartsCompanion extends UpdateCompanion<KanjiPart> {
  final Value<String> kanjiId;
  final Value<int> position;
  final Value<String?> partKanjiId;
  final Value<String?> partRadicalId;
  final Value<String?> partComponent;
  const KanjiPartsCompanion({
    this.kanjiId = const Value.absent(),
    this.position = const Value.absent(),
    this.partKanjiId = const Value.absent(),
    this.partRadicalId = const Value.absent(),
    this.partComponent = const Value.absent(),
  });
  KanjiPartsCompanion.insert({
    required String kanjiId,
    required int position,
    this.partKanjiId = const Value.absent(),
    this.partRadicalId = const Value.absent(),
    this.partComponent = const Value.absent(),
  })  : kanjiId = Value(kanjiId),
        position = Value(position);
  static Insertable<KanjiPart> custom({
    Expression<String>? kanjiId,
    Expression<int>? position,
    Expression<String>? partKanjiId,
    Expression<String>? partRadicalId,
    Expression<String>? partComponent,
  }) {
    return RawValuesInsertable({
      if (kanjiId != null) 'kanji_id': kanjiId,
      if (position != null) 'position': position,
      if (partKanjiId != null) 'part_kanji_id': partKanjiId,
      if (partRadicalId != null) 'part_radical_id': partRadicalId,
      if (partComponent != null) 'part_component': partComponent,
    });
  }

  KanjiPartsCompanion copyWith(
      {Value<String>? kanjiId,
      Value<int>? position,
      Value<String?>? partKanjiId,
      Value<String?>? partRadicalId,
      Value<String?>? partComponent}) {
    return KanjiPartsCompanion(
      kanjiId: kanjiId ?? this.kanjiId,
      position: position ?? this.position,
      partKanjiId: partKanjiId ?? this.partKanjiId,
      partRadicalId: partRadicalId ?? this.partRadicalId,
      partComponent: partComponent ?? this.partComponent,
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
    if (partKanjiId.present) {
      map['part_kanji_id'] = Variable<String>(partKanjiId.value);
    }
    if (partRadicalId.present) {
      map['part_radical_id'] = Variable<String>(partRadicalId.value);
    }
    if (partComponent.present) {
      map['part_component'] = Variable<String>(partComponent.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KanjiPartsCompanion(')
          ..write('kanjiId: $kanjiId, ')
          ..write('position: $position, ')
          ..write('partKanjiId: $partKanjiId, ')
          ..write('partRadicalId: $partRadicalId, ')
          ..write('partComponent: $partComponent')
          ..write(')'))
        .toString();
  }
}

class $KanjiLookalikesTable extends KanjiLookalikes
    with TableInfo<$KanjiLookalikesTable, KanjiLookalike> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KanjiLookalikesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _kanjiIdMeta =
      const VerificationMeta('kanjiId');
  @override
  late final GeneratedColumn<String> kanjiId = GeneratedColumn<String>(
      'kanji_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES kanji (kanji_id)'));
  static const VerificationMeta _lookalikeKanjiIdMeta =
      const VerificationMeta('lookalikeKanjiId');
  @override
  late final GeneratedColumn<String> lookalikeKanjiId = GeneratedColumn<String>(
      'lookalike_kanji_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES kanji (kanji_id)'));
  @override
  List<GeneratedColumn> get $columns => [kanjiId, lookalikeKanjiId];
  @override
  String get aliasedName => _alias ?? 'kanji_lookalike';
  @override
  String get actualTableName => 'kanji_lookalike';
  @override
  VerificationContext validateIntegrity(Insertable<KanjiLookalike> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('kanji_id')) {
      context.handle(_kanjiIdMeta,
          kanjiId.isAcceptableOrUnknown(data['kanji_id']!, _kanjiIdMeta));
    } else if (isInserting) {
      context.missing(_kanjiIdMeta);
    }
    if (data.containsKey('lookalike_kanji_id')) {
      context.handle(
          _lookalikeKanjiIdMeta,
          lookalikeKanjiId.isAcceptableOrUnknown(
              data['lookalike_kanji_id']!, _lookalikeKanjiIdMeta));
    } else if (isInserting) {
      context.missing(_lookalikeKanjiIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {kanjiId, lookalikeKanjiId};
  @override
  KanjiLookalike map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return KanjiLookalike(
      kanjiId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kanji_id'])!,
      lookalikeKanjiId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}lookalike_kanji_id'])!,
    );
  }

  @override
  $KanjiLookalikesTable createAlias(String alias) {
    return $KanjiLookalikesTable(attachedDatabase, alias);
  }
}

class KanjiLookalike extends DataClass implements Insertable<KanjiLookalike> {
  final String kanjiId;
  final String lookalikeKanjiId;
  const KanjiLookalike({required this.kanjiId, required this.lookalikeKanjiId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['kanji_id'] = Variable<String>(kanjiId);
    map['lookalike_kanji_id'] = Variable<String>(lookalikeKanjiId);
    return map;
  }

  KanjiLookalikesCompanion toCompanion(bool nullToAbsent) {
    return KanjiLookalikesCompanion(
      kanjiId: Value(kanjiId),
      lookalikeKanjiId: Value(lookalikeKanjiId),
    );
  }

  factory KanjiLookalike.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KanjiLookalike(
      kanjiId: serializer.fromJson<String>(json['kanjiId']),
      lookalikeKanjiId: serializer.fromJson<String>(json['lookalikeKanjiId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'kanjiId': serializer.toJson<String>(kanjiId),
      'lookalikeKanjiId': serializer.toJson<String>(lookalikeKanjiId),
    };
  }

  KanjiLookalike copyWith({String? kanjiId, String? lookalikeKanjiId}) =>
      KanjiLookalike(
        kanjiId: kanjiId ?? this.kanjiId,
        lookalikeKanjiId: lookalikeKanjiId ?? this.lookalikeKanjiId,
      );
  @override
  String toString() {
    return (StringBuffer('KanjiLookalike(')
          ..write('kanjiId: $kanjiId, ')
          ..write('lookalikeKanjiId: $lookalikeKanjiId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(kanjiId, lookalikeKanjiId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KanjiLookalike &&
          other.kanjiId == this.kanjiId &&
          other.lookalikeKanjiId == this.lookalikeKanjiId);
}

class KanjiLookalikesCompanion extends UpdateCompanion<KanjiLookalike> {
  final Value<String> kanjiId;
  final Value<String> lookalikeKanjiId;
  const KanjiLookalikesCompanion({
    this.kanjiId = const Value.absent(),
    this.lookalikeKanjiId = const Value.absent(),
  });
  KanjiLookalikesCompanion.insert({
    required String kanjiId,
    required String lookalikeKanjiId,
  })  : kanjiId = Value(kanjiId),
        lookalikeKanjiId = Value(lookalikeKanjiId);
  static Insertable<KanjiLookalike> custom({
    Expression<String>? kanjiId,
    Expression<String>? lookalikeKanjiId,
  }) {
    return RawValuesInsertable({
      if (kanjiId != null) 'kanji_id': kanjiId,
      if (lookalikeKanjiId != null) 'lookalike_kanji_id': lookalikeKanjiId,
    });
  }

  KanjiLookalikesCompanion copyWith(
      {Value<String>? kanjiId, Value<String>? lookalikeKanjiId}) {
    return KanjiLookalikesCompanion(
      kanjiId: kanjiId ?? this.kanjiId,
      lookalikeKanjiId: lookalikeKanjiId ?? this.lookalikeKanjiId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (kanjiId.present) {
      map['kanji_id'] = Variable<String>(kanjiId.value);
    }
    if (lookalikeKanjiId.present) {
      map['lookalike_kanji_id'] = Variable<String>(lookalikeKanjiId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KanjiLookalikesCompanion(')
          ..write('kanjiId: $kanjiId, ')
          ..write('lookalikeKanjiId: $lookalikeKanjiId')
          ..write(')'))
        .toString();
  }
}

class $KanjiAntonymsTable extends KanjiAntonyms
    with TableInfo<$KanjiAntonymsTable, KanjiAntonym> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KanjiAntonymsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _kanjiIdMeta =
      const VerificationMeta('kanjiId');
  @override
  late final GeneratedColumn<String> kanjiId = GeneratedColumn<String>(
      'kanji_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES kanji (kanji_id)'));
  static const VerificationMeta _antonymKanjiIdMeta =
      const VerificationMeta('antonymKanjiId');
  @override
  late final GeneratedColumn<String> antonymKanjiId = GeneratedColumn<String>(
      'antonym_kanji_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES kanji (kanji_id)'));
  @override
  List<GeneratedColumn> get $columns => [kanjiId, antonymKanjiId];
  @override
  String get aliasedName => _alias ?? 'kanji_antonym';
  @override
  String get actualTableName => 'kanji_antonym';
  @override
  VerificationContext validateIntegrity(Insertable<KanjiAntonym> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('kanji_id')) {
      context.handle(_kanjiIdMeta,
          kanjiId.isAcceptableOrUnknown(data['kanji_id']!, _kanjiIdMeta));
    } else if (isInserting) {
      context.missing(_kanjiIdMeta);
    }
    if (data.containsKey('antonym_kanji_id')) {
      context.handle(
          _antonymKanjiIdMeta,
          antonymKanjiId.isAcceptableOrUnknown(
              data['antonym_kanji_id']!, _antonymKanjiIdMeta));
    } else if (isInserting) {
      context.missing(_antonymKanjiIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {kanjiId, antonymKanjiId};
  @override
  KanjiAntonym map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return KanjiAntonym(
      kanjiId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kanji_id'])!,
      antonymKanjiId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}antonym_kanji_id'])!,
    );
  }

  @override
  $KanjiAntonymsTable createAlias(String alias) {
    return $KanjiAntonymsTable(attachedDatabase, alias);
  }
}

class KanjiAntonym extends DataClass implements Insertable<KanjiAntonym> {
  final String kanjiId;
  final String antonymKanjiId;
  const KanjiAntonym({required this.kanjiId, required this.antonymKanjiId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['kanji_id'] = Variable<String>(kanjiId);
    map['antonym_kanji_id'] = Variable<String>(antonymKanjiId);
    return map;
  }

  KanjiAntonymsCompanion toCompanion(bool nullToAbsent) {
    return KanjiAntonymsCompanion(
      kanjiId: Value(kanjiId),
      antonymKanjiId: Value(antonymKanjiId),
    );
  }

  factory KanjiAntonym.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KanjiAntonym(
      kanjiId: serializer.fromJson<String>(json['kanjiId']),
      antonymKanjiId: serializer.fromJson<String>(json['antonymKanjiId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'kanjiId': serializer.toJson<String>(kanjiId),
      'antonymKanjiId': serializer.toJson<String>(antonymKanjiId),
    };
  }

  KanjiAntonym copyWith({String? kanjiId, String? antonymKanjiId}) =>
      KanjiAntonym(
        kanjiId: kanjiId ?? this.kanjiId,
        antonymKanjiId: antonymKanjiId ?? this.antonymKanjiId,
      );
  @override
  String toString() {
    return (StringBuffer('KanjiAntonym(')
          ..write('kanjiId: $kanjiId, ')
          ..write('antonymKanjiId: $antonymKanjiId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(kanjiId, antonymKanjiId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KanjiAntonym &&
          other.kanjiId == this.kanjiId &&
          other.antonymKanjiId == this.antonymKanjiId);
}

class KanjiAntonymsCompanion extends UpdateCompanion<KanjiAntonym> {
  final Value<String> kanjiId;
  final Value<String> antonymKanjiId;
  const KanjiAntonymsCompanion({
    this.kanjiId = const Value.absent(),
    this.antonymKanjiId = const Value.absent(),
  });
  KanjiAntonymsCompanion.insert({
    required String kanjiId,
    required String antonymKanjiId,
  })  : kanjiId = Value(kanjiId),
        antonymKanjiId = Value(antonymKanjiId);
  static Insertable<KanjiAntonym> custom({
    Expression<String>? kanjiId,
    Expression<String>? antonymKanjiId,
  }) {
    return RawValuesInsertable({
      if (kanjiId != null) 'kanji_id': kanjiId,
      if (antonymKanjiId != null) 'antonym_kanji_id': antonymKanjiId,
    });
  }

  KanjiAntonymsCompanion copyWith(
      {Value<String>? kanjiId, Value<String>? antonymKanjiId}) {
    return KanjiAntonymsCompanion(
      kanjiId: kanjiId ?? this.kanjiId,
      antonymKanjiId: antonymKanjiId ?? this.antonymKanjiId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (kanjiId.present) {
      map['kanji_id'] = Variable<String>(kanjiId.value);
    }
    if (antonymKanjiId.present) {
      map['antonym_kanji_id'] = Variable<String>(antonymKanjiId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KanjiAntonymsCompanion(')
          ..write('kanjiId: $kanjiId, ')
          ..write('antonymKanjiId: $antonymKanjiId')
          ..write(')'))
        .toString();
  }
}

class $KanjiSynonymsTable extends KanjiSynonyms
    with TableInfo<$KanjiSynonymsTable, KanjiSynonym> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KanjiSynonymsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _kanjiIdMeta =
      const VerificationMeta('kanjiId');
  @override
  late final GeneratedColumn<String> kanjiId = GeneratedColumn<String>(
      'kanji_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES kanji (kanji_id)'));
  static const VerificationMeta _synonymKanjiIdMeta =
      const VerificationMeta('synonymKanjiId');
  @override
  late final GeneratedColumn<String> synonymKanjiId = GeneratedColumn<String>(
      'synonym_kanji_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES kanji (kanji_id)'));
  @override
  List<GeneratedColumn> get $columns => [kanjiId, synonymKanjiId];
  @override
  String get aliasedName => _alias ?? 'kanji_synonym';
  @override
  String get actualTableName => 'kanji_synonym';
  @override
  VerificationContext validateIntegrity(Insertable<KanjiSynonym> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('kanji_id')) {
      context.handle(_kanjiIdMeta,
          kanjiId.isAcceptableOrUnknown(data['kanji_id']!, _kanjiIdMeta));
    } else if (isInserting) {
      context.missing(_kanjiIdMeta);
    }
    if (data.containsKey('synonym_kanji_id')) {
      context.handle(
          _synonymKanjiIdMeta,
          synonymKanjiId.isAcceptableOrUnknown(
              data['synonym_kanji_id']!, _synonymKanjiIdMeta));
    } else if (isInserting) {
      context.missing(_synonymKanjiIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {kanjiId, synonymKanjiId};
  @override
  KanjiSynonym map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return KanjiSynonym(
      kanjiId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kanji_id'])!,
      synonymKanjiId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}synonym_kanji_id'])!,
    );
  }

  @override
  $KanjiSynonymsTable createAlias(String alias) {
    return $KanjiSynonymsTable(attachedDatabase, alias);
  }
}

class KanjiSynonym extends DataClass implements Insertable<KanjiSynonym> {
  final String kanjiId;
  final String synonymKanjiId;
  const KanjiSynonym({required this.kanjiId, required this.synonymKanjiId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['kanji_id'] = Variable<String>(kanjiId);
    map['synonym_kanji_id'] = Variable<String>(synonymKanjiId);
    return map;
  }

  KanjiSynonymsCompanion toCompanion(bool nullToAbsent) {
    return KanjiSynonymsCompanion(
      kanjiId: Value(kanjiId),
      synonymKanjiId: Value(synonymKanjiId),
    );
  }

  factory KanjiSynonym.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KanjiSynonym(
      kanjiId: serializer.fromJson<String>(json['kanjiId']),
      synonymKanjiId: serializer.fromJson<String>(json['synonymKanjiId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'kanjiId': serializer.toJson<String>(kanjiId),
      'synonymKanjiId': serializer.toJson<String>(synonymKanjiId),
    };
  }

  KanjiSynonym copyWith({String? kanjiId, String? synonymKanjiId}) =>
      KanjiSynonym(
        kanjiId: kanjiId ?? this.kanjiId,
        synonymKanjiId: synonymKanjiId ?? this.synonymKanjiId,
      );
  @override
  String toString() {
    return (StringBuffer('KanjiSynonym(')
          ..write('kanjiId: $kanjiId, ')
          ..write('synonymKanjiId: $synonymKanjiId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(kanjiId, synonymKanjiId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KanjiSynonym &&
          other.kanjiId == this.kanjiId &&
          other.synonymKanjiId == this.synonymKanjiId);
}

class KanjiSynonymsCompanion extends UpdateCompanion<KanjiSynonym> {
  final Value<String> kanjiId;
  final Value<String> synonymKanjiId;
  const KanjiSynonymsCompanion({
    this.kanjiId = const Value.absent(),
    this.synonymKanjiId = const Value.absent(),
  });
  KanjiSynonymsCompanion.insert({
    required String kanjiId,
    required String synonymKanjiId,
  })  : kanjiId = Value(kanjiId),
        synonymKanjiId = Value(synonymKanjiId);
  static Insertable<KanjiSynonym> custom({
    Expression<String>? kanjiId,
    Expression<String>? synonymKanjiId,
  }) {
    return RawValuesInsertable({
      if (kanjiId != null) 'kanji_id': kanjiId,
      if (synonymKanjiId != null) 'synonym_kanji_id': synonymKanjiId,
    });
  }

  KanjiSynonymsCompanion copyWith(
      {Value<String>? kanjiId, Value<String>? synonymKanjiId}) {
    return KanjiSynonymsCompanion(
      kanjiId: kanjiId ?? this.kanjiId,
      synonymKanjiId: synonymKanjiId ?? this.synonymKanjiId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (kanjiId.present) {
      map['kanji_id'] = Variable<String>(kanjiId.value);
    }
    if (synonymKanjiId.present) {
      map['synonym_kanji_id'] = Variable<String>(synonymKanjiId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KanjiSynonymsCompanion(')
          ..write('kanjiId: $kanjiId, ')
          ..write('synonymKanjiId: $synonymKanjiId')
          ..write(')'))
        .toString();
  }
}

class $KanjiVariantsTable extends KanjiVariants
    with TableInfo<$KanjiVariantsTable, KanjiVariant> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KanjiVariantsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _kanjiIdMeta =
      const VerificationMeta('kanjiId');
  @override
  late final GeneratedColumn<String> kanjiId = GeneratedColumn<String>(
      'kanji_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES kanji (kanji_id)'));
  static const VerificationMeta _variantKanjiIdMeta =
      const VerificationMeta('variantKanjiId');
  @override
  late final GeneratedColumn<String> variantKanjiId = GeneratedColumn<String>(
      'variant_kanji_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES kanji (kanji_id)'));
  @override
  List<GeneratedColumn> get $columns => [kanjiId, variantKanjiId];
  @override
  String get aliasedName => _alias ?? 'kanji_variant';
  @override
  String get actualTableName => 'kanji_variant';
  @override
  VerificationContext validateIntegrity(Insertable<KanjiVariant> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('kanji_id')) {
      context.handle(_kanjiIdMeta,
          kanjiId.isAcceptableOrUnknown(data['kanji_id']!, _kanjiIdMeta));
    } else if (isInserting) {
      context.missing(_kanjiIdMeta);
    }
    if (data.containsKey('variant_kanji_id')) {
      context.handle(
          _variantKanjiIdMeta,
          variantKanjiId.isAcceptableOrUnknown(
              data['variant_kanji_id']!, _variantKanjiIdMeta));
    } else if (isInserting) {
      context.missing(_variantKanjiIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {kanjiId, variantKanjiId};
  @override
  KanjiVariant map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return KanjiVariant(
      kanjiId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kanji_id'])!,
      variantKanjiId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}variant_kanji_id'])!,
    );
  }

  @override
  $KanjiVariantsTable createAlias(String alias) {
    return $KanjiVariantsTable(attachedDatabase, alias);
  }
}

class KanjiVariant extends DataClass implements Insertable<KanjiVariant> {
  final String kanjiId;
  final String variantKanjiId;
  const KanjiVariant({required this.kanjiId, required this.variantKanjiId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['kanji_id'] = Variable<String>(kanjiId);
    map['variant_kanji_id'] = Variable<String>(variantKanjiId);
    return map;
  }

  KanjiVariantsCompanion toCompanion(bool nullToAbsent) {
    return KanjiVariantsCompanion(
      kanjiId: Value(kanjiId),
      variantKanjiId: Value(variantKanjiId),
    );
  }

  factory KanjiVariant.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KanjiVariant(
      kanjiId: serializer.fromJson<String>(json['kanjiId']),
      variantKanjiId: serializer.fromJson<String>(json['variantKanjiId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'kanjiId': serializer.toJson<String>(kanjiId),
      'variantKanjiId': serializer.toJson<String>(variantKanjiId),
    };
  }

  KanjiVariant copyWith({String? kanjiId, String? variantKanjiId}) =>
      KanjiVariant(
        kanjiId: kanjiId ?? this.kanjiId,
        variantKanjiId: variantKanjiId ?? this.variantKanjiId,
      );
  @override
  String toString() {
    return (StringBuffer('KanjiVariant(')
          ..write('kanjiId: $kanjiId, ')
          ..write('variantKanjiId: $variantKanjiId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(kanjiId, variantKanjiId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KanjiVariant &&
          other.kanjiId == this.kanjiId &&
          other.variantKanjiId == this.variantKanjiId);
}

class KanjiVariantsCompanion extends UpdateCompanion<KanjiVariant> {
  final Value<String> kanjiId;
  final Value<String> variantKanjiId;
  const KanjiVariantsCompanion({
    this.kanjiId = const Value.absent(),
    this.variantKanjiId = const Value.absent(),
  });
  KanjiVariantsCompanion.insert({
    required String kanjiId,
    required String variantKanjiId,
  })  : kanjiId = Value(kanjiId),
        variantKanjiId = Value(variantKanjiId);
  static Insertable<KanjiVariant> custom({
    Expression<String>? kanjiId,
    Expression<String>? variantKanjiId,
  }) {
    return RawValuesInsertable({
      if (kanjiId != null) 'kanji_id': kanjiId,
      if (variantKanjiId != null) 'variant_kanji_id': variantKanjiId,
    });
  }

  KanjiVariantsCompanion copyWith(
      {Value<String>? kanjiId, Value<String>? variantKanjiId}) {
    return KanjiVariantsCompanion(
      kanjiId: kanjiId ?? this.kanjiId,
      variantKanjiId: variantKanjiId ?? this.variantKanjiId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (kanjiId.present) {
      map['kanji_id'] = Variable<String>(kanjiId.value);
    }
    if (variantKanjiId.present) {
      map['variant_kanji_id'] = Variable<String>(variantKanjiId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KanjiVariantsCompanion(')
          ..write('kanjiId: $kanjiId, ')
          ..write('variantKanjiId: $variantKanjiId')
          ..write(')'))
        .toString();
  }
}

abstract class _$TKDBDatabase extends GeneratedDatabase {
  _$TKDBDatabase(QueryExecutor e) : super(e);
  late final SearchKanji searchKanji = SearchKanji(this);
  late final $JlptLevelsTable jlptLevels = $JlptLevelsTable(this);
  late final $RadicalsTable radicals = $RadicalsTable(this);
  late final $RadicalMeaningsTable radicalMeanings =
      $RadicalMeaningsTable(this);
  late final $RadicalReadingsTable radicalReadings =
      $RadicalReadingsTable(this);
  late final $KanjiGradesTable kanjiGrades = $KanjiGradesTable(this);
  late final $KanjisTable kanjis = $KanjisTable(this);
  late final $KanjiReadingTypesTable kanjiReadingTypes =
      $KanjiReadingTypesTable(this);
  late final $KanjiReadingsTable kanjiReadings = $KanjiReadingsTable(this);
  late final $LangsTable langs = $LangsTable(this);
  late final $KanjiMeaningsTable kanjiMeanings = $KanjiMeaningsTable(this);
  late final $KanjiPartsTable kanjiParts = $KanjiPartsTable(this);
  late final $KanjiLookalikesTable kanjiLookalikes =
      $KanjiLookalikesTable(this);
  late final $KanjiAntonymsTable kanjiAntonyms = $KanjiAntonymsTable(this);
  late final $KanjiSynonymsTable kanjiSynonyms = $KanjiSynonymsTable(this);
  late final $KanjiVariantsTable kanjiVariants = $KanjiVariantsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        searchKanji,
        jlptLevels,
        radicals,
        radicalMeanings,
        radicalReadings,
        kanjiGrades,
        kanjis,
        kanjiReadingTypes,
        kanjiReadings,
        langs,
        kanjiMeanings,
        kanjiParts,
        kanjiLookalikes,
        kanjiAntonyms,
        kanjiSynonyms,
        kanjiVariants
      ];
}
