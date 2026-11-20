# zuraffa_tui

Nocterm-based terminal-UI runtime for Zuraffa — screens, widgets and a theater
for rendering interactive TUIs. Apps that never render a TUI must not depend on
this package; the `--with=tui` generator emits screens that import it.

## Render a screen

```dart
import 'package:zuraffa_tui/zuraffa_tui.dart';

Future<void> main() async {
  final theater = Theater();
  theater.show(AppScreen());
  await theater.run();
}
```

## Build a widget

```dart
import 'package:zuraffa_tui/zuraffa_tui.dart';

final button = TuiButton(label: 'Save', onTap: () => save());
```