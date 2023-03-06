import 'package:tkdb_drift/src/sqlite/model/sqlite.model.dart';
import 'package:tkdb_drift/src/sqlite/sqlite.dart';

import 'src/json/json.dart';
import 'src/json/model/tkdb.model.dart';

buildOrUpdateDatabase() async {
  final TKDB tkdbJson = await getTKDBInJson();
  final TKDBDatabase database = TKDBDatabase();

  final TKDBDriftMapper mapper = TKDBDriftMapper(
    database: database,
    tkdbJson: tkdbJson,
  );

  await mapper.upsertTKDB();
}
