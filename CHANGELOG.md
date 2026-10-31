## 7.3.2 - 2026-10-31

Mono-version fleet alignment to 7.3.2: outbound send port lands in zuraffa_intents (shareText/shareFiles behind ShareIntentService); the whole family ships at one version.

# Changelog

## 7.3.0 - 2026-10-28

- Initial release: the TUI runtime extracted from `zuraffa` 7.3.0 (issue
  arrrrny/zuraffa#393, completing the #1661 dependency trim). Screens,
  widgets, theme, key bindings, tty guard, DI resolver, use-case bindings,
  and the TDD theater replay (`dart run zuraffa_tui:zuraffa_tui theater`).
- `zfa make --with=tui` (core) now emits screens importing
  `package:zuraffa_tui`; generated projects depend on this package instead
  of the core carrying nocterm.
