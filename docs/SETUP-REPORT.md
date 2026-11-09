# SETUP REPORT — 2026-11-09T11:54:26.294Z

| step | ok | note |
|---|---|---|
| preflight D:\Dev | OK | D:\Dev |
| winget Godot 4 | OK | t *Can Not* Create Command Line Alias(es) unless Admin Privileges are provided, as without Admin Privileges Winget *Can Not* Create Symbolic Links for those Command Lines Aliases. More Details:   https://github.com/microsoft/winget-cli/issues/549   https://github.com/microsoft/winget-cli/issues/361  |
| winget GitHub CLI | OK | nsed to you by its owner. Microsoft is not responsible for, nor does it grant any licenses to, third-party packages. Downloading https://github.com/cli/cli/releases/download/v2.103.3/gh_2.103.3_windows_amd64.msi Successfully verified installer hash Starting package install... Successfully installed  |
| winget uv (Blender MCP runner) | OK | verified installer hash Extracting archive... Successfully extracted archive Starting package install... Path environment variable modified; restart your shell to use the new value. Command line alias added: "uvx" Command line alias added: "uv" Command line alias added: "uvw" Successfully installed  |
| locate godot.exe | OK | C:\Users\Chris\AppData\Local\Microsoft\WinGet\Packages\GodotEngine.GodotEngine_Microsoft.Winget.Source_8wekyb3d8bbwe\Godot_v4.7.2-stable_win64.exe |
| locate gh.exe | OK | C:\Program Files\GitHub CLI\gh.exe |
| locate uvx.exe | **FAIL** |  |
| locate blender.exe | OK | C:\Program Files\Blender Foundation\Blender 5.2\blender.exe |
| VS Code godot-tools ext | OK | rors that have security implications. Use the WHATWG URL API instead. CVEs are not issued for `url.parse()` vulnerabilities. (Use `Code --trace-deprecation ...` to show where the warning was created)  |
| clone godot-mcp | OK | Cloning into 'D:\Dev\tools\godot-mcp'...  |
| godot-mcp npm install | OK | epare > npm run build > godot-mcp@0.1.1 build > tsc && node scripts/build.js Successfully copied godot_operations.gd to build/scripts Build scripts completed successfully! added 44 packages in 8s  |
| godot-mcp build | OK |  > godot-mcp@0.1.1 build > tsc && node scripts/build.js Successfully copied godot_operations.gd to build/scripts Build scripts completed successfully!  |
| clone blender-mcp | OK | Cloning into 'D:\Dev\tools\blender-mcp'...  |
| Blender MCP add-on enabled | OK | Chris\\AppData\\Roaming\\Blender Foundation\\Blender\\5.2\\scripts\\addons' BlenderMCP addon registered Info: Preferences saved ADDON_OK BlenderMCP addon unregistered Blender 5.2.1 LTS (hash 9e2066aef7ef built 2026-08-25 02:38:20) Blender quit  |
| copy scaffold -> repo | OK | D:\Dev\random-variables |
| write GODOT_PATH into .mcp.json + .vscode | OK | C:/Users/Chris/AppData/Local/Microsoft/WinGet/Packages/GodotEngine.GodotEngine_Microsoft.Winget.Source_8wekyb3d8bbwe/Godot_v4.7.2-stable_win64.exe |
| user-scope MCP (~/.claude.json) | OK | godot + blender added, .bak taken |
| git identity | OK | Combination Soup Studio <combinationsoupstudio@gmail.com> |
| git init + first commit | OK |  working copy of 'project.godot', LF will be replaced by CRLF the next time Git touches it warning: in the working copy of 'scenes/main.tscn', LF will be replaced by CRLF the next time Git touches it  |
| godot --headless --quit exit 0 | OK | exit 0 Godot Engine v4.7.2.stable.official.ed1daf0bf - https://godotengine.org  |

godot: C:\Users\Chris\AppData\Local\Microsoft\WinGet\Packages\GodotEngine.GodotEngine_Microsoft.Winget.Source_8wekyb3d8bbwe\Godot_v4.7.2-stable_win64.exe
gh: C:\Program Files\GitHub CLI\gh.exe
uvx: null
blender: C:\Program Files\Blender Foundation\Blender 5.2\blender.exe

Written by jobs/INIT-random-variables/tools/setup-workstation.js (UNREVIEWED).