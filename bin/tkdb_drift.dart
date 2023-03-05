import 'dart:io';

import 'package:tkdb_drift/tkdb_drift.dart';

void main(List<String> arguments) async {
  await buildOrUpdateDatabase();
  exit(0);
}
