# Contributing / engineering standard

This repo is a commercial game and a portfolio. Every commit is read by people and tools. Standards are not optional.

## Commits
- Conventional Commits, enforced by CI: `feat:`, `fix:`, `refactor:`, `test:`, `docs:`, `chore:`, `perf:`, `build:`, `ci:`. Scope in parens when useful: `feat(player): add sprint`.
- One logical change per commit. A commit that touches two systems is two commits.
- Subject <= 72 chars, imperative, no full stop. Body explains WHY, not what the diff shows.
- No "wip", "fix", "update", "more changes", batch-of-20 or end-of-day dump commits. Squash locally before pushing if the trail is noise. History must read like a changelog.
- No commits made only to raise a count. Ever.

## Branches and PRs
- `main` is protected: PR only, CI green, no force-push, linear history (squash merge).
- Branch names: `feat/<name>`, `fix/<name>`, `chore/<name>`, `docs/<name>`.
- One feature per PR, filled template, reviewer verdict pasted in. A PR without tests for its pure logic is not mergeable.
- Issues first: every PR closes an issue (`Closes #N`).

## Code
- GDScript formatted by `gdformat`, linted by `gdlint` (CI fails otherwise). Static typing everywhere it is cheap; all public funcs typed.
- Signals over polling. Resources for data (meter rates, job slots, event tables), never magic numbers in scripts.
- Max ~300 lines per script, one responsibility. No node-path strings scattered: `@export` or `%UniqueName`.
- Every system has a GUT test for its pure logic. Physics/scene behaviour has a written manual test in the PR.
- No secrets, keys, Steam IDs with credentials, or `export_presets.cfg` with credentials in the repo.

## Docs
- GDD is the source of truth; ADR for anything hard to reverse; DEVLOG one line per session; CHANGELOG.md per release (Keep a Changelog, SemVer tags `v0.1.0`...).

## Assets
- Low-poly, consistent palette, every asset in `assets/` has a source (`.blend`) or a licence note. No unlicensed or "found" assets.
