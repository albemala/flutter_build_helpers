import 'command.dart';

Future<void> runFastlane({
  required String directory,
  required String platform,
  required String lane,
  required Map<String, String> environment,
}) async {
  await runCommand(
    'fastlane',
    [platform, lane],
    workingDirectory: directory,
    environment: environment,
  );
}
