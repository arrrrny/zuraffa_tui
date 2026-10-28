import 'dart:io';

import 'package:args/command_runner.dart';

import 'package:zuraffa_tui/src/theater/theater_command.dart';

/// `zuraffa_tui` — the companion CLI for the TUI runtime.
///
/// Today it carries the `theater` command (`zfa tdd theater`'s extraction
/// from core, zuraffa #393):
///
/// ```sh
/// dart run zuraffa_tui:zuraffa_tui theater <feature-dir>
/// ```
Future<void> main(List<String> arguments) async {
  final runner = CommandRunner<void>(
    'zuraffa_tui',
    'Zuraffa TUI runtime commands (pure-Dart terminal UI for Zuraffa).',
  )
    ..addCommand(TheaterCommand());

  try {
    await runner.run(arguments);
  } on UsageException catch (error) {
    stderr.writeln(error);
    exitCode = 64;
  }
}
