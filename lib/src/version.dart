import 'dart:io';

import 'package:pub_semver/pub_semver.dart';

Future<Version> getFullVersion(File pubspecFile) async {
  final pubspec = await pubspecFile.readAsString();
  final version = RegExp(
        r'^version:\s*(.*)$',
        multiLine: true,
      ) //
          .firstMatch(pubspec)
          ?.group(1) ??
      '';
  return Version.parse(version);
}

String getVersion(Version fullVersion) => '${fullVersion.major}.${fullVersion.minor}.${fullVersion.patch}';

int getBuildNumber(Version fullVersion) => int.tryParse(fullVersion.build.first.toString()) ?? 0;
