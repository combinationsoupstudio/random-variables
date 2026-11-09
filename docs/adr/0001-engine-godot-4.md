# ADR-0001: Engine - Godot 4 (GDScript)
Date: 2026-11-09. Status: ACCEPTED (BOSS call on Chris's "Go"; reversible until first vertical slice).

## Context
Solo developer, first full-SDLC game, low-poly 3D multiplayer, Steam release, AI-assisted development
(Claude Code + MCP). Candidates: Godot 4, Unity 6, Unreal 5.

## Decision
Godot 4.5+ with GDScript as the primary language. C# (.NET is installed) allowed later per-system if a
library demands it.

## Why
- Free, MIT, no revenue share or seat licence; the whole toolchain is scriptable and source-available.
- Built-in high-level multiplayer (ENet, RPCs, MultiplayerSpawner/Synchronizer) covers the first
  playable; GodotSteam covers Steam networking + achievements later.
- Lightest install, fastest iteration; the editor is driveable from Claude Code via the godot MCP server.
- Low-poly target needs none of Unreal's rendering weight.
- Unity's advantages (asset store, job-market C#) do not outweigh licence friction for a solo indie.

## Consequences
- No console export without a third-party porting partner (acceptable: Steam/Windows first).
- GDScript is less transferable on a CV than C#; mitigated by clean architecture, ADRs and a public repo
  that shows process, and by the option to write a system in C#.
- Revisit only if a blocking engine limitation is hit before the vertical slice.
