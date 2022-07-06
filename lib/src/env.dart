import 'dart:io';

Map<String, String> readEnvFile({
  required String path,
}) {
  final envFile = File(path);
  final envFileContents = envFile //
      .readAsLinesSync()
      // Remove empty lines
      .where((line) => line.trim().isNotEmpty)
      .toList();
  return Map<String, String>.fromEntries(
    envFileContents.map(
      (line) {
        final split = line.split('=');
        return MapEntry(
          split[0],
          split[1],
        );
      },
    ),
  );
}
