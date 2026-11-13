<!-- ZURAFFA-LAUNCH-PROMO (valid until Dec 1, 2026) -->
## 🦒 [Zuraffa Browser](https://zuraffa.com) — now live

<div align="center">
  <a href="https://zuraffa.com"><img src="https://zuraffa.com/img/zuraffa-browser-home.jpg" alt="Zuraffa Browser — 10 Browsers. One window." width="800"></a>
</div>

**[Zuraffa Browser](https://zuraffa.com)** — the multi-tasking browser for AI agents & humans — is live on the [Mac App Store](https://apps.apple.com/app/id6811352058).

🎁 **Launch offer: 6 months free with code `ZURAFFA`** — no credit card, no subscription, no payment. Redeem in-app until **Dec 1, 2026**.

---

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
  zuraffa: ^7.4.2
  zuraffa_tui: ^7.3.8
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
