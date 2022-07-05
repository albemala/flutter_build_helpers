import 'dart:io';

Future<void> runCommand(
  String executable,
  List<String> arguments, {
  String? workingDirectory,
  Map<String, String>? environment,
}) async {
  print('Running command: $executable ${arguments.join(' ')}');
  _evaluateResult(
    await Process.run(
      executable,
      arguments,
      workingDirectory: workingDirectory,
      environment: environment,
    ),
  );
}

void _evaluateResult(ProcessResult processResult) {
  print(processResult.stdout);
  if (processResult.exitCode != 0) {
    print('exitCode: ${processResult.exitCode}');
    throw Exception(processResult.stderr);
  }
}
