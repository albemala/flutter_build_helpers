import 'dart:io';

import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';

/// Note: [to] must be a File path, not a Directory path.
File copyFile({
  required String from,
  required String to,
}) {
  return File(from).copySync(to);
}

void copyFiles({
  required String pattern,
  required String to,
}) {
  final glob = Glob(pattern);
  for (final item in glob.listSync()) {
    if (item is File) {
      final file = item as File;
      file.parent.createSync(recursive: true);
      file.copySync(to);
    }
  }
}
