# zuraffa_tui

Pure-Dart terminal UI runtime for [Zuraffa](https://zuraffa.com) — nocterm-based
screens, widgets, DI resolver, use-case bindings, and the TDD theater replay.

Extracted from the `zuraffa` core package ([zuraffa#393](https://github.com/arrrrny/zuraffa/issues/393)):
apps that never render a TUI no longer inherit `nocterm` and its dependency
tree (~25 transitive packages, including `equatable ^2`, which conflicted with
`equatable ^3` apps).

## Install

```yaml
dependencies:
  zuraffa: ^7.3.2
  zuraffa_tui: ^7.3.2
```

## Usage

```dart
import 'package:zuraffa_tui/zuraffa_tui.dart';

Future<void> main() async {
  await ZuraffaTui.run(const HelloScreen());
}
```

The `zfa make --with=tui` generator (in core) emits list/detail screens bound
to an entity's use cases; the generated code imports this package.

## Theater

The read-only TDD journal replay (formerly `zfa tdd theater`) ships here:

```sh
dart run zuraffa_tui:zuraffa_tui theater specs/004-login-ui
```

## Development

```sh
dart pub get
dart test
dart analyze
```

CI: see `.github/workflows/test.yml` (Linux + macOS).
