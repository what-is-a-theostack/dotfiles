UnDo
*local platform = require("utils.platform")
   options.
*local platform = require('utils.platform')
   default_prog = {},
   launch_menu = {},
/   options.default_prog = { 'pwsh', '-NoLogo' }
   options.launch_menu = {
B      { label = 'PowerShell Core', args = { 'pwsh', '-NoLogo' } },
@      { label = 'PowerShell Desktop', args = { 'powershell' } },
5      { label = 'Command Prompt', args = { 'cmd' } },
-      { label = 'Nushell', args = { 'nu' } },
      {
         label = 'Git Bash',
Q         args = { 'C:\\Users\\kevin\\scoop\\apps\\git\\current\\bin\\bash.exe' },
      },
   }
<   options.default_prog = { '/opt/homebrew/bin/fish', '-l' }
   options.launch_menu = {
2      { label = 'Bash', args = { 'bash', '-l' } },
D      { label = 'Fish', args = { '/opt/homebrew/bin/fish', '-l' } },
E      { label = 'Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
0      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
*   options.default_prog = { 'fish', '-l' }
   options.launch_menu = {
2      { label = 'Bash', args = { 'bash', '-l' } },
2      { label = 'Fish', args = { 'fish', '-l' } },
0      { label = 'Zsh', args = { 'zsh', '-l' } },
   }5
g@A[
options.default_prog = { "/opt/homebrew/bin/fish", "-l" }5
args = { "C:\\Users\\kevin\\scoop\\apps\\git\\current\\bin\\bash.exe" },5
*local platform = require("utils.platform")
default_prog = {},
launch_menu = {},
options.default_prog = { "pwsh", "-NoLogo" }
options.launch_menu = {
{ label = "PowerShell Core", args = { "pwsh", "-NoLogo" } },
{ label = "PowerShell Desktop", args = { "powershell" } },
{ label = "Command Prompt", args = { "cmd" } },
{ label = "Nushell", args = { "nu" } },
label = "Git Bash",
args = { "C:\\Users\\matthewholden\\scoop\\apps\\git\\current\\bin\\bash.exe" },
options.default_prog = { "zsh", "-l" }
options.launch_menu = {
{ label = "Bash", args = { "bash", "-l" } },
{ label = "Fish", args = { "/opt/homebrew/bin/fish", "-l" } },
{ label = "Nushell", args = { "/opt/homebrew/bin/nu", "-l" } },
{ label = "Zsh", args = { "zsh", "-l" } },
options.default_prog = { "fish", "-l" }
options.launch_menu = {
{ label = "Bash", args = { "bash", "-l" } },
{ label = "Fish", args = { "fish", "-l" } },
{ label = "Zsh", args = { "zsh", "-l" } },
