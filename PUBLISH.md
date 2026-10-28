# Publish Configuration for `zuraffa_tui`

- **Package manager**: pub.dev
- **Package**: `zuraffa_tui` — pure-Dart TUI runtime companion to `zuraffa`.
  Published **after** `zuraffa` (depends on `zuraffa: ^<version>`).
- **Publish**: `dart pub publish` from this directory once the matching core
  version is resolvable on pub.dev.

**Mono version policy:** every package in the zuraffa fleet shares one version number. Bump the whole fleet with `../zuraffa/scripts/update_fleet.sh <version>`. Whenever a version is updated, the install guide in this repo's README.md MUST be updated to that release version in the same change — no old version constraints may linger in README install snippets. Dependency constraints on `zuraffa` itself must move to `^<version>` in the same bump.
