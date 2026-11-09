# CLAUDE.md - how work is done in this repo

## THE STANDARD (Chris, 9 Nov 2026, permanent)
"I want this project to be coded to the highest of standards and use standardised practices in all areas.
Future employers must see that the commits and pulls are all legit and not pumped for numbers. This is a product
to sell; it will be scrutinised by the best coders and AI tools alike. Top notch ACROSS the whole project, no question."
Operational meaning: CONTRIBUTING.md is binding. Conventional commits, one change per commit, PR per feature with tests
and a pasted reviewer verdict, CI green before merge, typed GDScript, no magic numbers, no filler commits. If a shortcut
is tempting, the answer is no.

This is a Godot 4 (GDScript) game: **Random Variables**. Solo developer (Chris) + Claude Code.
The goal is a Steam-quality release AND a portfolio that proves a full SDLC was followed.
Every piece of work leaves a trail: issue -> branch -> commit -> review -> test -> merge.

## Source of truth
- `docs/GDD.md` is the game. If code and GDD disagree, raise it; do not silently pick one.
- `docs/adr/` holds every decision that is hard to reverse (engine, netcode, save format, pricing). One file each, numbered.
- `docs/ROADMAP.md` is the milestone list. Work the current milestone only.

## The loop (every feature, no exceptions)
1. **Plan**: restate the feature in 3 lines (player sees / system does / done means). Check GDD. If scope is unclear, ask ONE question.
2. **Branch**: `feat/<short-name>` from `main`. Never commit straight to `main`.
3. **Build**: smallest playable slice first. One system per PR. GDScript style: `snake_case` funcs/vars, `PascalCase` classes, typed where cheap (`var speed: float = 4.0`), signals over polling, no god-scripts (>300 lines = split).
4. **Review**: run the `reviewer` subagent (`.claude/agents/reviewer.md`) on the diff BEFORE calling it done. It has not seen the build. Fix every BLOCKER; list NITS in the PR.
5. **Test**: a GUT test for pure logic (economy maths, meter decay, job-slot allocation). Scene/physics behaviour gets a 5-line manual test note in the PR. Run the game headless once: `godot --headless --quit` must exit 0.
6. **PR + merge**: `gh pr create` with WHAT / WHY / HOW TESTED. Squash-merge. Delete branch.
7. **Log**: append one line to `docs/DEVLOG.md`: date, feature, what was learned.

## Scope discipline
- One feature per session. If Chris drifts to a second idea, say so and park it in `docs/IDEAS.md`.
- No new dependency, addon, service or asset pack without an ADR line saying why nothing already here does it.
- Low-poly, beautiful, small. Never add fidelity the GDD did not ask for.

## Tools
- Godot editor via the `godot` MCP server (`.mcp.json`): launch, run scenes, read debug output, inspect the tree.
- Blender via the `blender` MCP server: generate/inspect low-poly models. Export `.glb` into `assets/models/`.
- `gh` for issues/PRs. GitHub is the portfolio - commit messages are read by hiring managers. Write them that way.

## Never
- Never commit secrets, Steam app IDs with keys, or `export_presets.cfg` with credentials.
- Never push to `main`. Never force-push. Never delete a branch with unmerged work.
- Never generate placeholder "AI slop" art and call it final: a placeholder is a flat-colour primitive, labelled.
