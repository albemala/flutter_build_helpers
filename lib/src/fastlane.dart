import 'command.dart';

Future<void> updateFastlane({
  required String directory,
}) async {
  await runCommand(
    'bundle',
    ['update', 'fastlane'],
    workingDirectory: directory,
  );
}

Future<void> installFastlane({
  required String directory,
}) async {
  await runCommand(
    'bundle',
    ['install'],
    workingDirectory: directory,
  );
}

Future<void> runFastlane({
  required String directory,
  required String platform,
  required String lane,
  required Map<String, String> environment,
}) async {
  await runCommand(
    'bundle',
    ['exec', 'fastlane', platform, lane],
    workingDirectory: directory,
    environment: environment,
  );
}
