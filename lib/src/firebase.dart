import 'command.dart';

Future<void> uploadToFirebaseHosting() async {
  await runCommand(
    'firebase',
    ['deploy', '--only', 'hosting'],
  );
}
