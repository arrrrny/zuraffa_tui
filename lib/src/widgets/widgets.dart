/// Standard widget library for Zuraffa TUIs (FR-004).
///
/// This barrel re-exports the canonical set of TUI widgets every Zuraffa
/// TUI uses, so screen code has a single import:
///
/// ```dart
/// import 'package:zuraffa_tui/src/widgets/widgets.dart';
/// ```
///
/// Most widgets are re-exports of nocterm's widgets — the Zuraffa wrapper
/// layer exists so:
///   * upstream API drift is a one-file fix here (insulate apps), and
///   * apps get a documented, stable surface independent of nocterm's
///     version numbering.
///
/// [Table] is a Zuraffa-specific widget (nocterm does not ship one) built
/// from Row + Column + Text. [Progress] wraps [ProgressBar] with the
/// ZuraffaTuiTheme status color vocabulary.
library;

// Primitive + layout primitives (FR-004).
export 'package:nocterm/nocterm.dart'
    show Text, SizedBox, Row, Column, Center, Divider, Spacer, Stack, Scrollbar;

// Standard interactive widgets (FR-004).
export 'package:nocterm/nocterm.dart'
    show ListView, TextField, Focusable, FocusScope, Navigator, ProgressBar;

// Zuraffa-specific widget additions.
export 'package:zuraffa_tui/src/widgets/table.dart' show Table;
export 'package:zuraffa_tui/src/widgets/progress.dart' show Progress;
export 'package:zuraffa_tui/src/widgets/container.dart' show Container;
export 'package:zuraffa_tui/src/widgets/scrollable.dart' show Scrollable;
export 'package:zuraffa_tui/src/widgets/grid_view.dart' show GridView;
