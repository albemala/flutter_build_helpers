import 'command.dart';

Future<void> createSentryRelease({
  required String sentryOrg,
  required String sentryProject,
  required String sentryRelease,
}) async {
  await runCommand(
    'sentry-cli',
    ['releases', '-o', sentryOrg, '-p', sentryProject, 'new', sentryRelease],
  );
}

Future<void> uploadSentrySourcemaps({
  required String sentryOrg,
  required String sentryProject,
  required String sentryRelease,
}) async {
  await runCommand(
    'sentry-cli',
    [
      'releases',
      '-o',
      sentryOrg,
      '-p',
      sentryProject,
      'files',
      sentryRelease,
      'upload-sourcemaps',
      'build/web',
      '--ext',
      'map',
      '--ext',
      'js'
    ],
  );
}

Future<void> finalizeSentryRelease({
  required String sentryOrg,
  required String sentryProject,
  required String sentryRelease,
}) async {
  await runCommand(
    'sentry-cli',
    ['releases', '-o', sentryOrg, '-p', sentryProject, 'finalize', sentryRelease],
  );
}
