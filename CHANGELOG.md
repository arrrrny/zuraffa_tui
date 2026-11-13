## 7.4.2 - 2026-11-13

- Mono-version fleet alignment to 7.4.2; internal dependencies refreshed; xml override 7.1.0.

## 7.4.1 - 2026-11-11

Fleet release 7.4.1: core adds zfa tunnel (Cloudflare-hosted MCP servers), MCP streamable-HTTP transport with usecase tools, blocking lifecycle hooks (#2032), typed tool param coercion (#2061); whole fleet mono-aligned to 7.4.1.

## 7.3.6 - 2026-11-02

- Mono-version fleet alignment to 7.3.6; internal dependencies refreshed; xml override 7.1.0.

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
