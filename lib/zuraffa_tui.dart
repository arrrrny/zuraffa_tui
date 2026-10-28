/// Zuraffa TUI — the pure-Dart terminal UI runtime for Zuraffa.
///
/// Extracted from the core package (zuraffa #393): apps that never render
/// a TUI no longer inherit `nocterm` and its dependency tree. The code
/// generator (`zfa make --with=tui`, still in core) emits screens that
/// import this package.
///
/// Exports:
/// * the runtime entry point ([ZuraffaTui.run]) and its contracts
///   (component, stateful screen, theme, key bindings, tty guard);
/// * the standard widget library (insulates apps from nocterm drift);
/// * the DI resolver and use-case bindings generated screens rely on;
/// * `zfa tdd theater` as `theaterCommand` (run via
///   `dart run zuraffa_tui:zuraffa_tui theater <feature>`).
library;

export 'src/binding/binding.dart';
export 'src/core/component.dart';
export 'src/core/stateful_screen.dart';
export 'src/di/tui_di_resolver.dart';
export 'src/edge/tty_guard.dart';
export 'src/input/key_bindings.dart';
export 'src/runtime/zuraffa_tui.dart';
export 'src/theme/theme.dart';
export 'src/theater/theater_command.dart';
export 'src/widgets/widgets.dart';
