import 'package:collection/collection.dart';
import 'package:console_bars/console_bars.dart';

import '../json/model/tkdb.model.dart';
import 'model/sqlite.model.dart';

class TKDBDriftMapper {
  final TKDB tkdbJson;
  final TKDBDatabase database;

  TKDBDriftMapper({
    required this.tkdbJson,
    required this.database,
  });

  Future<void> upsertTKDB() async {
    await _upsertKeywords(tkdbJson.keywords);
    await _upsertRadicals(tkdbJson.radicals);
    await _upsertKanjis(tkdbJson.kanji);

    await _upsertSearchKanji();
  }

  //
  // Tags
  //

  Future<void> _upsertKeywords(TKDBKeyword keywords) async {
    await _upsertJLPTs(keywords.jlpt);
    await _upsertLangs(keywords.lang);
    await _upsertKanjiReadingTypes(keywords.kanjiReadingType);
    await _upsertKanjiGrades(keywords.kanjiGrade);
  }

  Future<void> _upsertJLPTs(Map<String, String> jlpt) async {
    for (final key in jlpt.keys) {
      final descr = jlpt[key];
      if (descr != null) {
        final entry = JlptLevel(
          jlptId: key,
          descr: descr,
        );
        await database.into(database.jlptLevels).insertOnConflictUpdate(entry);
      }
    }
  }

  Future<void> _upsertLangs(Map<String, String> lang) async {
    for (final key in lang.keys) {
      final descr = lang[key];
      if (descr != null) {
        final entry = Lang(
          langId: key,
          englishName: descr,
        );
        await database.into(database.langs).insertOnConflictUpdate(entry);
      }
    }
  }

  Future<void> _upsertKanjiGrades(Map<String, String> grade) async {
    for (final key in grade.keys) {
      final descr = grade[key];
      if (descr != null) {
        final entry = KanjiGrade(
          kanjiGradeId: key,
          descr: descr,
        );
        await database.into(database.kanjiGrades).insertOnConflictUpdate(entry);
      }
    }
  }

  Future<void> _upsertKanjiReadingTypes(Map<String, String> type) async {
    for (final key in type.keys) {
      final descr = type[key];
      if (descr != null) {
        final entry = KanjiReadingType(
          kanjiReadingTypeId: key,
          descr: descr,
        );
        await database
            .into(database.kanjiReadingTypes)
            .insertOnConflictUpdate(entry);
      }
    }
  }

  //
  // Radicals
  //

  Future<void> _upsertRadicals(List<TKDBRadical> radicals) async {
    final p = FillingBar(
        desc: "Radicals", total: radicals.length, time: true, percentage: true);

    for (final radical in radicals) {
      final variantOf = radicals
          .firstWhereOrNull((r) => r.literal == radical.variantOf)
          ?.literal;

      final entry = Radical(
        radicalId: radical.literal,
        hexcode: radical.hexcode,
        number: radical.number,
        strokes: radical.strokes,
        variantOf: variantOf,
      );
      await database.into(database.radicals).insertOnConflictUpdate(entry);

      await _upsertRadicalMeanings(radical);
      await _upsertRadicalReadings(radical);

      p.increment();
    }
  }

  Future<void> _upsertRadicalMeanings(TKDBRadical radical) async {
    int position = 0;
    for (final meaning in radical.meaning) {
      final entry = RadicalMeaning(
        radicalId: radical.literal,
        position: position,
        value: meaning,
      );

      await database
          .into(database.radicalMeanings)
          .insertOnConflictUpdate(entry);
      position++;
    }
  }

  Future<void> _upsertRadicalReadings(TKDBRadical radical) async {
    int position = 0;
    for (final reading in radical.reading) {
      final entry = RadicalReading(
        radicalId: radical.literal,
        position: position,
        value: reading,
      );

      await database
          .into(database.radicalReadings)
          .insertOnConflictUpdate(entry);
      position++;
    }
  }

  //
  // Kanji
  //

  Future<void> _upsertKanjis(List<TKDBKanji> kanjis) async {
    final p = FillingBar(
        desc: "Kanjis", total: kanjis.length, time: true, percentage: true);

    for (final kanji in kanjis) {
      final kanjiId = kanji.literal;
      final hexcode = kanji.misc.hexcode;
      final strokes = kanji.misc.strokes;
      final frequencyJ = kanji.misc.frequencyJ;

      final jlpt = await (database.select(database.jlptLevels)
            ..where((t) => t.jlptId.equals(kanji.misc.jlpt ?? '')))
          .getSingleOrNull();
      final jlptId = jlpt?.jlptId;

      final kanjiGrade = await (database.select(database.kanjiGrades)
            ..where((t) => t.kanjiGradeId.equals(kanji.misc.grade ?? '')))
          .getSingleOrNull();
      final kanjiGradeId = kanjiGrade?.kanjiGradeId;

      final entry = Kanji(
        kanjiId: kanjiId,
        hexcode: hexcode,
        strokes: strokes,
        frequencyJ: frequencyJ,
        jlptId: jlptId,
        kanjiGradeId: kanjiGradeId,
      );

      await database.into(database.kanjis).insertOnConflictUpdate(entry);
      await _upsertKanjiReading(kanjiId, kanji.reading);
      await _upsertKanjiMeaning(kanjiId, kanji.meaning);
      await _upsertKanjiAntonym(kanjiId, kanji.misc.antonym);
      await _upsertKanjiSynonym(kanjiId, kanji.misc.synonym);
      await _upsertKanjiLookalike(kanjiId, kanji.misc.lookalike);
      await _upsertKanjiVariant(kanjiId, kanji.misc.variant);
      await _upsertKanjiPart(kanjiId, kanji.part);

      p.increment();
    }
  }

  Future<void> _upsertKanjiReading(
      String kanjiId, TKDBKanjiReading reading) async {
    final readingTypes =
        await (database.select(database.kanjiReadingTypes)).get();
    final kunReadingTypeId = readingTypes
        .firstWhere((element) => element.kanjiReadingTypeId == 'kun')
        .kanjiReadingTypeId;
    final onReadingTypeId = readingTypes
        .firstWhere((element) => element.kanjiReadingTypeId == 'on')
        .kanjiReadingTypeId;

    int kunReadingPosition = 0;
    for (final kunReading in reading.kun) {
      final entry = KanjiReading(
        kanjiId: kanjiId,
        kanjiReadingTypeId: kunReadingTypeId,
        position: kunReadingPosition,
        value: kunReading,
      );

      await database.into(database.kanjiReadings).insertOnConflictUpdate(entry);

      ++kunReadingPosition;
    }

    int onReadingPosition = 0;
    for (final onReading in reading.on) {
      final entry = KanjiReading(
        kanjiId: kanjiId,
        kanjiReadingTypeId: onReadingTypeId,
        position: onReadingPosition,
        value: onReading,
      );

      await database.into(database.kanjiReadings).insertOnConflictUpdate(entry);

      ++onReadingPosition;
    }
  }

  Future<void> _upsertKanjiMeaning(
      String kanjiId, List<TKDBKanjiMeaning> meanings) async {
    final languages = await (database.select(database.langs)).get();

    int position = 0;
    for (final meaning in meanings) {
      final lang =
          languages.firstWhere((element) => element.langId == meaning.lang);
      final langId = lang.langId;

      final entry = KanjiMeaning(
        kanjiId: kanjiId,
        langId: langId,
        position: position,
        value: meaning.value,
      );
      await database.into(database.kanjiMeanings).insertOnConflictUpdate(entry);

      position++;
    }
  }

  Future<void> _upsertKanjiPart(
      String kanjiId, List<TKDBKanjiPart> parts) async {
    int position = 0;
    for (final part in parts) {
      final partRadicalId =
          part.type == TKDBKanjiPartType.radical ? part.literal : null;
      final partKanjiId =
          part.type == TKDBKanjiPartType.kanji ? part.literal : null;
      final partComponent =
          part.type == TKDBKanjiPartType.component ? part.literal : null;
      final entry = KanjiPart(
        kanjiId: kanjiId,
        position: position,
        partComponent: partComponent,
        partKanjiId: partKanjiId,
        partRadicalId: partRadicalId,
      );
      await database.into(database.kanjiParts).insertOnConflictUpdate(entry);
      position++;
    }
  }

  Future<void> _upsertKanjiAntonym(
      String kanjiId, List<String> antonyms) async {
    for (final antonym in antonyms) {
      final entry = KanjiAntonym(
        kanjiId: kanjiId,
        antonymKanjiId: antonym,
      );
      await database.into(database.kanjiAntonyms).insertOnConflictUpdate(entry);
    }
  }

  Future<void> _upsertKanjiSynonym(
      String kanjiId, List<String> synonyms) async {
    for (final synonym in synonyms) {
      final entry = KanjiSynonym(
        kanjiId: kanjiId,
        synonymKanjiId: synonym,
      );
      await database.into(database.kanjiSynonyms).insertOnConflictUpdate(entry);
    }
  }

  Future<void> _upsertKanjiLookalike(
      String kanjiId, List<String> lookalikes) async {
    for (final lookalike in lookalikes) {
      final entry = KanjiLookalike(
        kanjiId: kanjiId,
        lookalikeKanjiId: lookalike,
      );
      await database
          .into(database.kanjiLookalikes)
          .insertOnConflictUpdate(entry);
    }
  }

  Future<void> _upsertKanjiVariant(
      String kanjiId, List<String> variants) async {
    for (final variant in variants) {
      final entry = KanjiVariant(
        kanjiId: kanjiId,
        variantKanjiId: variant,
      );
      await database.into(database.kanjiVariants).insertOnConflictUpdate(entry);
    }
  }

  Future<void> _upsertSearchKanji() async {
    final kanjis = await database.allKanjiEntries;

    for (final kanji in kanjis) {
      final kunReadings = await database.getKanjiReadings(kanji.kanjiId, 'kun');
      final onReadings = await database.getKanjiReadings(kanji.kanjiId, 'on');
      final meanings = await database.getKanjiMeanings(kanji.kanjiId);

      final entry = SearchKanjiData(
        kanjiId: kanji.kanjiId,
        kanjiFrequency: kanji.frequencyJ.toString(),
        kanjiMeanings: meanings.join(','),
        kanjiKunReadings: kunReadings.join(','),
        kanjiOnReadings: onReadings.join(','),
      );
      await database.into(database.searchKanji).insert(entry);
    }
  }
}
