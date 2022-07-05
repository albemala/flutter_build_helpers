import 'command.dart';

Future<void> runFlutterClean() async {
  await runCommand(
    'flutter',
    ['clean'],
  );
}

Future<void> runFlutterBuild(
  String platform, [
  List<String> additionalArguments = const [],
]) async {
  await runCommand(
    'flutter',
    ['build', platform, '--release', ...additionalArguments],
  );
}
