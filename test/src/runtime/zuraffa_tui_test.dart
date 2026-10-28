import 'package:test/test.dart';
import 'package:zuraffa_tui/src/runtime/zuraffa_tui.dart';
import 'package:zuraffa_tui/src/core/component.dart';
import 'package:zuraffa_tui/src/di/tui_di_resolver.dart';
import 'package:zuraffa_tui/src/theme/theme.dart';
import 'package:zuraffa_tui/src/input/key_bindings.dart';

void main() {
  group('ZuraffaTui entry point (FR-001, SC-001, SC-006)', () {
    test(
      'A1: ZuraffaTui.run is a public static entry point accepting a root Screen',
      () {
        // Proves the public API surface exists with the right signature.
        // The actual boot/render happens through nocterm's runApp; we only
        // assert the type contract here so a downstream TUI developer can call
        //   await ZuraffaTui.run(MyRootScreen());
        // from a pure-Dart main().
        final run = ZuraffaTui.run;
        expect(
          run,
          isA<
            Future<void> Function(
              Screen, {
              ZuraffaDIContainer? di,
              ZuraffaTuiTheme? theme,
              KeyBindings? keys,
            })
          >(),
          reason: 'ZuraffaTui.run must accept a Screen + named di/theme/keys',
        );
      },
    );
  });
}
