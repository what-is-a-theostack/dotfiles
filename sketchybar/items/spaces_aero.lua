UnDo
sbar.exec(LIST_CURRENT, function(focusedWorkspaceOutput)
border_color
sbar.ex
local spaces = {}
.local function addWorkspaceItem(workspaceName)
background = { border_color = isSelected and colors.lightblack or colors.lightblack }
background = { border_color = isSelected and colors.grey or colors.transparent }
-- Function to add Workspaces
background = { border_color = isSelected and colors.lightblack or colors.bg2 }
Aspaces_indicator:subscribe("swap_menus_and_spaces", function(env)
icon = currently_on and icons.switch.off or icons.switch.on
label = { width = "dynamic" }
label = { width = 0, }5
 local colors = require("colors")
local icons = require("icons")
$local settings = require("settings")
.local app_icons = require("helpers.app_icons")
2local LIST_ALL = "aerospace list-workspaces --all"
:local LIST_CURRENT = "aerospace list-workspaces --focused"
local spaces = {}
 local colors = require("colors")5
2local LIST_ALL = "aerospace list-workspaces --all"5
:local LIST_CURRENT = "aerospace list-workspaces --focused"5
sbar.exec(LIST_CURRENT, function(focusedWorkspaceOutput)5
.sbar.exec(LIST_ALL, function(workspacesOutput)5
sbar.exec(LIST_CURRENT, function(focusedWorkspaceOutput)5
