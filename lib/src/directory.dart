import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:io/io.dart';

void deleteDirectory(String path) {
  try {
    Directory(path).deleteSync(recursive: true);
  } catch (_) {}
}

void createDirectory(String path) {
  Directory(path).createSync(recursive: true);
}

void copyDirectory({
  required String from,
  required String to,
}) {
  copyPathSync(from, to);
}

void zipDirectory({
  required String path,
  required String zipFilePath,
}) {
  ZipFileEncoder().zipDirectory(
    Directory(path),
    filename: zipFilePath,
  );
}
