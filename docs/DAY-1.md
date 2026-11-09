# DAY 1 - Tue 10 Nov 2026. Tick means 100% done.

## Before coffee (one-time, needs you at the keyboard - 5 min)
- [ ] Open a terminal in `D:\Dev\random-variables`, run `gh auth login` (GitHub, HTTPS, browser). Nobody else can do this.
- [ ] Then: `gh repo create random-variables --public --source=. --remote=origin --push`
- [ ] Open Blender once; Edit > Preferences > Add-ons: confirm "Blender MCP" is enabled (ticked). If not: Install from `D:\Dev\tools\blender-mcp\addon.py`.

## The work (Claude Code drives; you decide)
- [ ] `code D:\Dev\random-variables` -> open terminal -> `claude`
- [ ] Say: `/feature third-person player controller` -> this is M1 task 1
- [ ] At the end: `/standup`, then commit + PR per CLAUDE.md

## If something is off
- Godot won't open the project: open Godot, Import, pick `D:\Dev\random-variables\project.godot`, accept any version-convert prompt.
- `claude` can't see the godot MCP: check `.mcp.json` GODOT_PATH points at the real godot.exe (setup wrote the path; see docs/SETUP-REPORT.md).
