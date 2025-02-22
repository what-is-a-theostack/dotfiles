UnDo
eNo}
2  local space = sbar.add("space", "space." .. i, {
    space = i,
    icon = {
0      font = { family = settings.font.numbers },
      string = i,
      padding_left = 15,
      padding_right = 8,
      color = colors.white,
#      highlight_color = colors.red,
    },
    label = {
      padding_right = 20,
      color = colors.grey,
%      highlight_color = colors.white,
0      font = "sketchybar-app-font:Regular:16.0",
      y_offset = -1,
    },
    padding_right = 1,
    padding_left = 1,
    background = {
      color = colors.bg1,
      border_width = 1,
      height = 26,
"      border_color = colors.black,
    },
N    popup = { background = { border_width = 5, border_color = colors.black } }
  })
  spaces[i] = space
N  -- Single item bracket for space items to achieve double border on highlight
=  local space_bracket = sbar.add("bracket", { space.name }, {
    background = {
!      color = colors.transparent,
       border_color = colors.bg2,
      height = 28,
      border_width = 2
    }
  })
  -- Padding space
,  sbar.add("space", "space.padding." .. i, {
    space = i,
    script = "",
$    width = settings.group_paddings,
  })
(  local space_popup = sbar.add("item", {
&    position = "popup." .. space.name,
    padding_left= 5,
    padding_right= 0,
    background = {
      drawing = true,
      image = {
        corner_radius = 9,
        scale = 0.2
      }
    }
  })
/  space:subscribe("space_change", function(env)
+    local selected = env.SELECTED == "true"
8    local color = selected and colors.grey or colors.bg2
    space:set({
'      icon = { highlight = selected, },
'      label = { highlight = selected },
M      background = { border_color = selected and colors.black or colors.bg2 }
    })
    space_bracket:set({
L      background = { border_color = selected and colors.grey or colors.bg2 }
    })
  end)
0  space:subscribe("mouse.clicked", function(env)
!    if env.BUTTON == "other" then
G      space_popup:set({ background = { image = "space." .. env.SID } })
3      space:set({ popup = { drawing = "toggle" } })
    else
E      local op = (env.BUTTON == "right") and "--destroy" or "--focus"
:      sbar.exec("yabai -m space " .. op .. " " .. env.SID)
    end
  end)
-  space:subscribe("mouse.exited", function(_)
.    space:set({ popup = { drawing = false } })
  end)
  drawing = false,
  updates = true,
  padding_left = -3,
  padding_right = 0,
  icon = {
    padding_left = 8,
    padding_right = 9,
    color = colors.grey,
    string = icons.switch.on,
  },
  label = {
    width = 0,
    padding_left = 0,
    padding_right = 8,
    string = "Spaces",
    color = colors.bg1,
  },
  background = {
0    color = colors.with_alpha(colors.grey, 0.0),
6    border_color = colors.with_alpha(colors.bg1, 0.0),
  local icon_line = ""
  local no_app = true
+  for app, count in pairs(env.INFO.apps) do
    no_app = false
!    local lookup = app_icons[app]
E    local icon = ((lookup == nil) and app_icons["Default"] or lookup)
!    icon_line = icon_line .. icon
  end
  if (no_app) then
    icon_line = " 
  end
%  sbar.animate("tanh", 10, function()
5    spaces[env.INFO.space]:set({ label = icon_line })
  end)
M  local currently_on = spaces_indicator:query().icon.value == icons.switch.on
  spaces_indicator:set({
?    icon = currently_on and icons.switch.off or icons.switch.on
  })
%  sbar.animate("tanh", 30, function()
    spaces_indicator:set({
      background = {
         color = { alpha = 1.0 },
'        border_color = { alpha = 1.0 },
      },
$      icon = { color = colors.bg1 },
#      label = { width = "dynamic" }
    })
  end)
%  sbar.animate("tanh", 30, function()
    spaces_indicator:set({
      background = {
         color = { alpha = 0.0 },
'        border_color = { alpha = 0.0 },
      },
%      icon = { color = colors.grey },
      label = { width = 0, }
    })
  end)
'  sbar.trigger("swap_menus_and_spaces")5
local aerospace_spaces = sb5
local aerospace_spaces = sbar.5
"local aerospace_spaces = sbar.exec5
*local aerospace_spaces = sbar.exec("aero")5
<local aerospace_spaces = sbar.exec("aerospace list-workspa")5
for i = 1, 10, 1 do5
for index,5
for index, item in ip5
local space = sbar.add("space", "space." .. i, {5
local space = sbar.add("space", "space." .. item., {5
space = i,5
space = item.,5
font = { family = settings.font.numbers },5
Llocal aerospace_spaces = sbar.exec("aerospace list-workspaces --json --all")5
Mlocal aerospace_spaces = sbar.exec("aerospace list-workspaces --json --all",)5
_local aerospace_spaces = sbar.exec("aerospace list-workspaces --json --all", function (result,)5
ilocal aerospace_spaces = sbar.exec("aerospace list-workspaces --json --all", function (result, exit_code)5
  re5
local space = sbar.add("space", "space." .. item.workspace, {5
local space = sbar.add("space", "space." item.workspace, {5
local space = sbar.add("space", "space." .workspace, {5
local space = sbar.add("space", "space." workspace, {5
local space = sbar.add("space", "space." , {5
local space = sbar.add("space", "space."  {5
local space = sbar.add("space", space."  {5
local space = sbar.add("space", ."  {5
local space = sbar.add("space", "  {5
local space = sbar.add("space",   {5
local space = sbar.add("space",  {5
    
    associated_space = item.5
space = item.workspace,5
font = { family = settings.font.},5
string = i,5
string = item.,5
padding_left = 15,5
padding_right = 8,5
padding_right = 1,5
padding_left = 1,5
y_offset = -1,5
      dr5
ilocal aerospace_spaces = sbar.exec("aerospace list-workspaces --json --all", function (result, exit_code)
  return result
&    associated_space = item.workspace,
      drawing = false5
popup = { background = { border_width = 5, border_color = colors.black } },5
spaces[i] = space5
sbar.5
sbar.ad5
sbar.add("event")5
sbar.add("event",)5
2  space:subscribe("space_change", space_selection)
/  space:subscribe("mouse.clicked", mouse_click)5
local space = sbar.add("space", {5
local space = sbar.add("item", {5
spaces[index] = space5
spaces[index] = space.5
space:subscribe("space_change", space_selection)5
space:subscribe("aer", space_selection)5
hlocal aerospace_spaces = sbar.exec("aerospace list-workspaces --json --all", function(result, exit_code)
return result
end)
/sbar.add("event", "aerospace_workspace_change")
.for index, item in ipairs(aerospace_spaces) do
local space = sbar.add("space", {
associated_space = item.workspace,
icon = {
string = item.workspace,
padding_left = 10,
padding_right = 10,
color = colors.white,
highlight_color = colors.red,
label = {
padding_right = 20,
color = colors.grey,
highlight_color = colors.white,
font = "sketchybar-app-font:Regular:16.0",
y_offset = -1,
drawing = false,
padding_right = 2,
padding_left = 2,
background = {
color = colors.bg1,
border_width = 1,
height = 26,
border_color = colors.black,
spaces[index] = space.name
space:subscribe("aerospace_workspace_change", space_selection)
space:subscribe("mouse.clicked", mouse_click)
-- Single item bracket for space items to achieve double border on highlight
local space_bracket = sbar.add("bracket", { space.name }, {
background = {
color = colors.transparent,
border_color = colors.bg2,
height = 28,
border_width = 2,
-- Padding space
sbar.add("space", "space.padding." .. i, {
space = i,
script = "",
width = settings.group_paddings,
local space_popup = sbar.add("item", {
position = "popup." .. space.name,
padding_left = 5,
padding_right = 0,
background = {
drawing = true,
image = {
corner_radius = 9,
scale = 0.2,
space:subscribe("space_change", function(env)
local selected = env.SELECTED == "true"
local color = selected and colors.grey or colors.bg2
space:set({
icon = { highlight = selected },
label = { highlight = selected },
background = { border_color = selected and colors.black or colors.bg2 },
space_bracket:set({
background = { border_color = selected and colors.grey or colors.bg2 },
end)
space:subscribe("mouse.clicked", function(env)
if env.BUTTON == "other" then
space_popup:set({ background = { image = "space." .. env.SID } })
space:set({ popup = { drawing = "toggle" } })
else
local op = (env.BUTTON == "right") and "--destroy" or "--focus"
sbar.exec("yabai -m space " .. op .. " " .. env.SID)
end)
space:subscribe("mouse.exited", function(_)
space:set({ popup = { drawing = false } })
end)
0local space_window_observer = sbar.add("item", {
drawing = false,
updates = true,
+local spaces_indicator = sbar.add("item", {
padding_left = -3,
padding_right = 0,
icon = {
padding_left = 8,
padding_right = 9,
color = colors.grey,
string = icons.switch.on,
label = {
width = 0,
padding_left = 0,
padding_right = 8,
string = "Spaces",
color = colors.bg1,
background = {
color = colors.with_alpha(colors.grey, 0.0),
border_color = colors.with_alpha(colors.bg1, 0.0),
Espace_window_observer:subscribe("space_windows_change", function(env)
local icon_line = ""
local no_app = true
for app, count in pairs(env.INFO.apps) do
no_app = false
local lookup = app_icons[app]
local icon = ((lookup == nil) and app_icons["Default"] or lookup)
icon_line = icon_line .. icon
if no_app then
icon_line = " 
sbar.animate("tanh", 10, function()
spaces[env.INFO.space]:set({ label = icon_line })
end)
end)
Aspaces_indicator:subscribe("swap_menus_and_spaces", function(env)
local currently_on = spaces_indicator:query().icon.value == icons.switch.on
spaces_indicator:set({
icon = currently_on and icons.switch.off or icons.switch.on,
end)
9spaces_indicator:subscribe("mouse.entered", function(env)
sbar.animate("tanh", 30, function()
spaces_indicator:set({
background = {
color = { alpha = 1.0 },
border_color = { alpha = 1.0 },
icon = { color = colors.bg1 },
label = { width = "dynamic" },
end)
end)
8spaces_indicator:subscribe("mouse.exited", function(env)
sbar.animate("tanh", 30, function()
spaces_indicator:set({
background = {
color = { alpha = 0.0 },
border_color = { alpha = 0.0 },
icon = { color = colors.grey },
label = { width = 0 },
end)
end)
9spaces_indicator:subscribe("mouse.clicked", function(env)
sbar.trigger("swap_menus_and_spaces")
end)5
-    for id in string.gmatch(result, "%S+") do
'        table.insert(workspace_ids, id)
    end5
*    for _, sid in ipairs(workspace_ids) do5
0    for _, workspace in ipairs(workspace_ids) do5
    
        local sid = workspace.5
O            script = os.getenv("CONFIG_DIR") .. "/plugins/aerospace.sh " .. sid5
R            script = os.getenv("CONFIG_DIR") .. "aer/plugins/aerospace.sh " .. sid5
      
    
        print5
    local workspace_ids = {}
%    -- Iterate over the workspace IDs
)    for _, workspace in ipairs(result) do
'        local sid = workspace.workspace
        print(sid)
        -- Add the item
G        local item = sbar.add("item", "space." .. sid, { label = sid })
        -- Set item properties
        item:set({
            position = "left",
            background = {
#                color = 0x44ffffff,
"                corner_radius = 5,
                height = 20,
                drawing = "off"
            },
9            click_script = "aerospace workspace " .. sid,
X            script = os.getenv("CONFIG_DIR") .. "aerospace/plugins/aerospace.sh " .. sid
        })
!        -- Subscribe to the event
B        item:subscribe("aerospace_workspace_change", function(env)
)            -- Handle the event if needed
        end)
    end5
print(sid)5
  pr5
  print(result)5
    
    pri5
print(result)5
    print(workspace)5
local workspace_ids = {}5
print(workspace)5
for _, workspace in ipairs(result) do5
for _, sid in ipairs(result) do5
local sid = workspace.workspace5
    
    print5
local workspace_ids = {}
-    for id in string.gmatch(result, "%S+") do
'        table.insert(workspace_ids, id)
    end
    print(sid)5
    
    pri5
    print(os5
N    print(os.getenv("CONFIG_DIR") .. "aerospace/plugins/aerospace.sh " .. sid)5
print(os.getenv("CONFIG_DIR") .. "aerospace/plugins/aerospace.sh " .. sid)5
script = os.getenv("CONFIG_DIR") .. "aerospace/plugins/aerospace.sh " .. sid,5
print(os.getenv("CONFIG_DIR") .. "/aerospace/plugins/aerospace.sh " .. sid)5
k-- local aerospace_spaces = sbar.exec("aerospace list-workspaces --json --all", function(result, exit_code)
return result
-- end)
2-- sbar.add("event", "aerospace_workspace_change")5
print(sid)5
local item = sbar.add("item", "space." .. sid, { label = sid })5
local item = sbar.add("item", "space." .. sid, { label = sid,})5
local item = sbar.add("item", "space." .. sid, { label = sid })5
      
local item = sbar.add("item", { label = sid })5
      string = sid,5
      string = sid
    }})5
string = sid,5
string = sid,,5
      high5
"      highlight_color = colors.red5
local item = sbar.add("item", { label = {5
local item = sbar.add("item", {icon = {}, label = {5
local item = sbar.add("item", { icon = {}, label = {5
string = sid,5
local item = sbar.add("item", { icon = {string = sid}, label = {5
local item = sbar.add("item", { icon = { string = sid }, label = {5
local item = sbar.add("item", { icon = { string = sid,}, label = {5
local item = sbar.add("item", { icon = { string = sid, padding_left = 10,}, label = {5
local item = sbar.add("item", { icon = { string = sid, padding_left = 10, padding_right = 10}, label = {
highlight_color = colors.red,
} })5
icon = { string = sid, padding_left = 10, padding_right = 10 },5
icon = { string = sid, padding_left = 10, padding_right = 10, },5
icon = { string = sid, padding_left = 10, padding_right = 10, color = colors. },5
icon = { string = sid, padding_left = 10, padding_right = 10, color = colors.white, },5
icon = { string = sid, padding_left = 10, padding_right = 10, color = colors.white, highlight_color = colors. },5
local item = sbar.add(
"item",
icon = { string = sid, padding_left = 10, padding_right = 10, color = colors.white, highlight_color = colors.red },
label = {
highlight_color = colors.red,
highlight_color = colors.red,5
        
        pa5
        padding_right = 20,5
padding_right = 20,5
        c5
        color = colors.grey,5
color = colors.grey,5
        hi5
'        highlight_color = colors.white,5
      
      pa5
      p5
      padding_right = 2,
      padding_left = 2,5
        
highlight_color = colors.white,5
2        font = "sketchybar-app-font:Regular:16.0",
      y_offset = -1,
      drawing = false,5
      -- 
      sb5
      sbar.5
      sbar.set(env.)5
        
      sbar.set(env.NAME,5
        ic5
$        icon = { highlight = true },5
"        icon = { highlight = en },5
6        icon = { highlight = env.SELECTED == "true" },5
2        icon = { highlight = env.SELECTED == "" },5
1        icon = { highlight = env.SELECTED == " },5
0        icon = { highlight = env.SELECTED ==  },5
/        icon = { highlight = env.SELECTED =  },5
.        icon = { highlight = env.SELECTED   },5
      }5
-        icon = { highlight = env.SELECTED  },5
        la5
        ba5
K        background = { color = env.SELECTED and colors.bg1 or colors.bg2 },5
        background = 5
      
        background = {}5
        background = {bor}5
K        local color = env.SELECTED == "true" and colors.white or colors.bg2
      sbar.set(env.NAME, {
-        icon = { highlight = env.SELECTED  },
-        label = { highlight = env.SELECTED },
,        background = {border_color = color},
      })5
      -- 
      print(env)5
local item = sbar.add("item", {5
local item = sbar.add("item", "space." {5
local item = sbar.add("item", "space." . {5
local item = sbar.add("item", "space." .. {5
print(env)5
print(env.)5
print(env.Na)5
print(env.NaME)5
print(env.NAME)5
print(env.S)5
print(env.SELECTED)5
      -- 
      for index,5
"      for index, item in ipairs(t)5
$      for index, item in ipairs(env)5
        pr5
'      for index, item in ipairs(env) do
        print(index, item)
      end5
for index, item in ipairs(env) do5
for key, item in ipairs(env) do5
print(index, item)5
print(key, item)5
print(key, va)5
for key, value in ipairs(env) do5
print(key, value)5
end5
      -- 
      print(env.)5
"      print(env.FOCUSED_WORKSPACE)5
sbar.set(env.NAME, {5
sbar.set("space.", {5
sbar.set("space." ., {5
sbar.set("space." .., {5
sbar.set("space." .. env., {5
icon = { highlight = env.SELECTED },5
icon = { highlight = true},5
print(env.FOCUSED_WORKSPACE)5
-- Create the container bracket5
local con5
)local container = sbar.add("bracket", {},5
  ba5
    border_color = colors.bg2,5
    height = 28,5
  pa5
  pa
  padding_left = 10,5
  padding_right = 105
  background = {
    color = colors.bg2,
    border_color = colors.bg2,
    border_width = 2,
    height = 28,
  },5
  background = {
    color = colors.bg2,
    border_color = colors.bg1,
    border_width = 2,
  },
  padding_left = 10,
  padding_right = 10,
+local container = sbar.add("bracket", {}, {5
con5
conta5
for i = 1,5
for i = 1, 10,5
2  local space = sbar.add("space", "space." .. i, {
popup = { background = { border_width = 5, border_color = colors.black } }5
  tab5
  sp5
  spaces[i] = space.name5
local spaces = {}5
local spaces = {}
3  table.insert(container_bracket.items, space.name)
  spaces[i] = space5
:  -- Single item bracket for space items to achieve double5
  local space_bracket = sbar.5
'  local space_bracket = sbar.add("bra")5
+  local space_bracket = sbar.add("bracket")5
,  local space_bracket = sbar.add("bracket",)5
5  local space_bracket = sbar.add("bracket", {space.})5
9  local space_bracket = sbar.add("bracket", {space.name})5
      
    
:  local space_bracket = sbar.add("bracket", {space.name},)5
      co5
      b5
      he5
      height = 26,5
      b5
N  -- Single item bracket for space items to achieve double border on highlight
;  local space_bracket = sbar.add("bracket", {space.name}, {
    background = {
!      color = colors.transparent,
       border_color = colors.bg2,
      height = 26,
      border_width = 2,
    }
  })5
  sba5
    script = "",5
,  sbar.add("space", "space.padding." .. i, {
    space = i,
$    width = settings.group_paddings,
  })5
  local space_popup = sbar.5
'  local space_popup = sbar.add("item.")5
&  local space_popup = sbar.add("item")5
    
'  local space_popup = sbar.add("item",)5
    pos5
    pa5
      
    b
    pa5
        
      d5
        co5
        scale = 0.5
        scale = 0.15
(  local space_popup = sbar.add("item", {
&    position = "popup." .. space.name,
    padding_left = 5,
    padding_right = 0,
    background = {
      drawing = true,
      image = {
        corner_radius = 9,
        scale = 0.2
      }
    }
  })5
  sp
  space:su5
  space:subscribe("sp")5
  space:subscribe("space_chan")5
!  space:subscribe("space_change")5
"  space:subscribe("space_change",)5
    
    local selected = env.5
    local selected = env.SEL5
    
      
    space.5
      icon = {string = se}5
[      icon = {string = selected and icons.space_indicator.on or icons.space_indicator.off},5
\      icon = {string = selected and icons.space_indicator.on or icons.space_indicator.off,},5
f      icon = {string = selected and icons.space_indicator.on or icons.space_indicator.off, color = s},5
      icon = {string = selected and icons.space_indicator.on or icons.space_indicator.off, color = selected and colors.white or colors.grey},5
      icon = {string = selected and icons.space_indicator.on or icons.space_indicator.off, color = selected and colors.red or colors.grey},5
0  space:subscribe("space_change", function (env)
+    local selected = env.SELECTED == "true"
    space:set({
      icon = {string = selected and icons.space_indicator.on or icons.space_indicator.off, color = selected and colors.red or colors.dirty_white},
    })
    
  end)5
/  space:subscribe("space_change", function(env)5
/  space:subscribe("space_change", function(env)
icon = { string = selected and icons.space_indicator.on or icons.space_indicator.off, color = selected and colors.red or colors.dirty_white },
0  space:subscribe("mouse.clicked", function(env)5
sbar.5
sbar.add5
    border_width = 2,5
    he5
  padding_left = 10,5
  padding_right = 10,5
  background = {
    color = colors.bg2,
    border_color = colors.bg1,
    border_width = 2,
    height = 28,
  },5
  drawing = false,
  updates = true,5
space_window_observer:su5
4space_window_observer:subscribe("space_windows_cha")5
7space_window_observer:subscribe("space_windows_change")5
8space_window_observer:subscribe("space_windows_change",)5
Mspace_window_observer:subscribe("space_windows_change", "front_app_switched")5
Nspace_window_observer:subscribe("space_windows_change", "front_app_switched",)5
\space_window_observer:subscribe("space_windows_change", "front_app_switched", function (env)5
\space_window_observer:subscribe("space_windows_change", "front_app_switched", function (env)5
\space_window_observer:subscribe("space_windows_change", "front_app_switched", function (env)
local icon_line = ""
if (no_app) then
end)5
sbar.set("space." .. env.FOCUSED_WORKSPACE, {5
      -- 
      
print(env.SELECTED)
print(env .. sid,)5
/      sb:log("aerospace_workspace_change", env)5
local item = sbar.add("item", "space." .. sid, { label = sid, highlight_color = })5
local item = sbar.add("item", "space." .. sid, { label = sid, highlicght_color = })5
local item = sbar.add("item", "space." .. sid, { label = sid, highlight_color = colors.ght_color = })5
local item = sbar.add("item", "space." .. sid, { label = sid, highlight_color = colors.whiteght_color = })5
local item = sbar.add("item", "space." .. sid, { label = sid, highlight_color = colors.white })5
local item = sbar.add("item", "space." .. sid, { label = {label = sid}})5
local item = sbar.add("item", "space." .. sid, { label = { label = sid } })5
    
    local space = sbar.5
#    local space = sbar.add("space")5
$    local space = sbar.add("space",)5
%    local space = sbar.add("space", {
    })
      
      a5
for index, sid in ipairs(workspace_ids) do5
      as5
      associated_space = index,5
      associated_space = sid,5
      associated_space = sid,
      
      icon = {
      string = i,
      padding_left = 10,
      padding_right = 10,
      color = colors.white,
#      highlight_color = colors.red,
    },
    padding_left = 2,
    padding_right = 2,
    label = {
      padding_right = 20,
      color = colors.grey,
%      highlight_color = colors.white,
0      font = "sketchybar-app-font:Regular:16.0",
      y_offset = -1,
      drawing = false,
    },5
local space = sbar.add("space", {
associated_space = sid,
icon = {
string = i,
padding_left = 10,
padding_right = 10,
color = colors.white,
highlight_color = colors.red,
padding_left = 2,
padding_right = 2,
label = {
padding_right = 20,
color = colors.grey,
highlight_color = colors.white,
font = "sketchybar-app-font:Regular:16.0",
y_offset = -1,
drawing = false,
    
    sp
    spaces[index]5
    spaces[index] = space.5
    spaces[index] = space.name5
spaces[index] = space.name5
=sbar.exec("aerospace list-workspaces --all", function(result)5
#local function space_selection(env)
E  local color = env.SELECTED == "true" and colors.white or colors.bg2
  sbar.set(env.NAME, {
)    icon = { highlight = env.SELECTED, },
*    label = { highlight = env.SELECTED, },
)    background = { border_color = color }
  })
sbar.set(env.NAME, {
icon = { highlight = env.SELECTED },
label = { highlight = env.SELECTED },
background = { border_color = color },
local color = env.SELECTED == "true" and colors.white or colors.bg25
  local spaces = {}
local spaces = {}
#local function space_selection(env)5
local spaces = {}
-- Iterate over the workspace IDs
local spaces = {}
#local function space_selection(env)5
    
    sp
    space:su5
#    space:subscribe("space_change")5
$    space:subscribe("space_change",)5
(    space:subscribe("space_change", spa)5
4    space:subscribe("space_change", space_selection)5
space:subscribe("space_change", space_selection)5
local function mouse_click(env)
  if env.BUTTON == "right" then
5    sbar.exec("yabai -m space --destroy " .. env.SID)
  else
3    sbar.exec("yabai -m space --focus " .. env.SID)
  end
3    sbar.exec("aer -m space --destroy " .. env.SID)5
9    sbar.exec("aerospace -m space --destroy " .. env.SID)5
    
    spa5
1    space:subscribe("mouse.clicked", mouse_click)5
8    sbar.exec("aerospace m space --destroy " .. env.SID)5
7    sbar.exec("aerospace  space --destroy " .. env.SID)5
1    sbar.exec("aer -m space --focus " .. env.SID)5
7    sbar.exec("aerospace -m space --focus " .. env.SID)5
6    sbar.exec("aerospace m space --focus " .. env.SID)5
5    sbar.exec("aerospace  space --focus " .. env.SID)5
7    sbar.exec("aerospace  wospace --focus " .. env.SID)5
>    sbar.exec("aerospace  workspacespace --focus " .. env.SID)5
/    sbar.exec("aerospace  --focus " .. env.SID)5
2    sbar.exec("aerospace work--focus " .. env.SID)5
8    sbar.exec("aerospace workspace --focus " .. env.SID)5
6    sbar.exec("aerospace workspace focus " .. env.SID)5
5    sbar.exec("aerospace workspace ocus " .. env.SID)5
4    sbar.exec("aerospace workspace cus " .. env.SID)5
3    sbar.exec("aerospace workspace us " .. env.SID)5
2    sbar.exec("aerospace workspace s " .. env.SID)5
1    sbar.exec("aerospace workspace  " .. env.SID)5
0    sbar.exec("aerospace workspace " .. env.SID)5
string = sid,5
  if env.BUTTON == "left" then5
space:subscribe("mouse.clicked", mouse_click)
if env.BUTTON == "left" then
sbar.exec("aerospace workspace " .. env.SID)
local function mouse_click(env)5
-- local item = sbar.add("item", "space." .. sid, { label = sid })5
-- item:set({
position = "left",
background = {
color = 0x44ffffff,
corner_radius = 5,
height = 20,
drawing = "off",
click_script = "aerospace workspace " .. sid,
script = os.getenv("CONFIG_DIR") .. "/aerospace/plugins/aerospace.sh " .. sid,
-- })
-- end)5
-- item:subscribe("aerospace_workspace_change", function(env)5
-- Handle the event if needed5
    
    print(env.)5
    print(env.S)5
    print(env.SID)5
print(env.SID)5
      
local space = sbar.add("space", {5
-- item:subscribe("aerospace_workspace_change", function(env)5
6    sbar.exec("aerospace space --destroy " .. env.SID)5
0    sbar.exec("aerospace --destroy " .. env.SID)5
:    sbar.exec("aerospace worskpace --destroy " .. env.SID)5
local workspace_idslocal workspace_ids = {}
-    for id in string.gmatch(result, "%S+") do
'        table.insert(workspace_ids, id)
    end = {}5
sbar.add("item", {
  position = "popup.space",
  background = {
    color = colors.bg1,
     border_color = colors.black,
    border_width = 1,
  },
?local aerospace_spaces = sb.require("helpers.aerospace_spaces")5
local fun
local function ad()
end5
' local function add_workspace_item(sid)
    sketchybar({
1        "--add", "item", "space." .. sid, "left",
E        "--subscribe", "space." .. sid, "aerospace_workspace_change",
!        "--set", "space." .. sid,
&        "background.color=0x44ffffff",
%        "background.corner_radius=5",
        "background.height=20",
!        "background.drawing=off",
        "label=" .. sid,
3        "click_script=aerospace workspace " .. sid,
O        "script=" .. os.getenv("CONFIG_DIR") .. "/plugins/aerospace.sh " .. sid
    })
end 5
sbar.trigger("swap_menus_and_spaces")
sbar.animate("tanh", 30, function()
spaces_indicator:set({
background = {
color = { alpha = 0.0 },
border_color = { alpha = 0.0 },
icon = { color = colors.grey },
label = { width = 0 },
end)
sbar.animate("tanh", 30, function()
spaces_indicator:set({
background = {
color = { alpha = 1.0 },
border_color = { alpha = 1.0 },
icon = { color = colors.bg1 },
label = { width = "dynamic" },
end)
local currently_on = spaces_indicator:query().icon.value == icons.switch.on
spaces_indicator:set({
icon = currently_on and icons.switch.off or icons.switch.on,
if no_app then
icon_line = " 
sbar.animate("tanh", 10, function()
spaces[env.INFO.space]:set({ label = icon_line })
end)
local icon_line = ""
local no_app = true
for app, count in pairs(env.INFO.apps) do
no_app = false
local lookup = app_icons[app]
local icon = ((lookup == nil) and app_icons["Default"] or lookup)
icon_line = icon_line .. icon
padding_left = -3,
padding_right = 0,
icon = {
padding_left = 8,
padding_right = 9,
color = colors.grey,
string = icons.switch.on,
label = {
width = 0,
padding_left = 0,
padding_right = 8,
string = "Spaces",
color = colors.bg1,
background = {
color = colors.with_alpha(colors.grey, 0.0),
border_color = colors.with_alpha(colors.bg1, 0.0),
drawing = false,
updates = true,
space:subscribe("mouse.exited", function(_)
space:set({ popup = { drawing = false } })
end)
space:subscribe("mouse.clicked", function(env)
if env.BUTTON == "other" then
space_popup:set({ background = { image = "space." .. env.SID } })
space:set({ popup = { drawing = "toggle" } })
else
local op = (env.BUTTON == "right") and "--destroy" or "--focus"
sbar.exec("yabai -m space " .. op .. " " .. env.SID)
end)
space:subscribe("space_change", function(env)
local selected = env.SELECTED == "true"
local color = selected and colors.grey or colors.bg2
space:set({
icon = { highlight = selected },
label = { highlight = selected },
background = { border_color = selected and colors.black or colors.bg2 },
space_bracket:set({
background = { border_color = selected and colors.grey or colors.bg2 },
end)
local space_popup = sbar.add("item", {
position = "popup." .. space.name,
padding_left = 5,
padding_right = 0,
background = {
drawing = true,
image = {
corner_radius = 9,
scale = 0.2,
-- Padding space
sbar.add("space", "space.padding." .. i, {
space = i,
script = "",
width = settings.group_paddings,
-- Single item bracket for space items to achieve double border on highlight
local space_bracket = sbar.add("bracket", { space.name }, {
background = {
color = colors.transparent,
border_color = colors.bg2,
height = 28,
border_width = 2,
spaces[i] = space
local space = sbar.add("space", "space." .. i, {
space = i,
icon = {
font = { family = settings.font.numbers },
string = i,
padding_left = 15,
padding_right = 8,
color = colors.white,
highlight_color = colors.red,
label = {
padding_right = 20,
color = colors.grey,
highlight_color = colors.white,
font = "sketchybar-app-font:Regular:16.0",
y_offset = -1,
padding_right = 1,
padding_left = 1,
background = {
color = colors.bg1,
border_width = 1,
height = 26,
border_color = colors.black,
popup = { background = { border_width = 5, border_color = colors.black } },
&local function add_workspace_item(sid)
sketchybar({
"--add",
"item",
"space." .. sid,
"left",
"--subscribe",
"space." .. sid,
"aerospace_workspace_change",
"--set",
"space." .. sid,
"background.color=0x44ffffff",
"background.corner_radius=5",
"background.height=20",
"background.drawing=off",
"label=" .. sid,
"click_script=aerospace workspace " .. sid,
"script=" .. os.getenv("CONFIG_DIR") .. "/plugins/aerospace.sh " .. sid,
end5
sbar({5
  sbar.5
  sbar.add5
%  sbar.add("item", "space." .. sid, {
    label = sid,
H    script = os.getenv("CONFIG_DIR") .. "/plugins/aerospace.sh " .. sid,
1    click_script = "aerospace workspace " .. sid,
    background = {
      color = colors.bg1,
      corner_radius = 5,
      height = 20,
      drawing = false,
    },
  })5
%  sbar.add("item", "space." .. sid, {
    5
-- sbar({
"--add",
"item",
"space." .. sid,
"left",
"--subscribe",
"space." .. sid,
"aerospace_workspace_change",
"--set",
"space." .. sid,
"background.color=0x44ffffff",
"background.corner_radius=5",
"background.height=20",
"background.drawing=off",
"label=" .. sid,
"click_script=aerospace workspace " .. sid,
"script=" .. os.getenv("CONFIG_DIR") .. "/plugins/aerospace.sh " .. sid,
-- })5
    
    space = sid,5
L        script = os.getenv("CONFIG_DIR") .. "/plugins/aerospace.sh " .. sid,
    label = {
padding_right = 20,
color = colors.grey,
highlight_color = colors.white,
font = "sketchybar-app-font:Regular:16.0",
y_offset = -1,
H    script = os.getenv("CONFIG_DIR") .. "/plugins/aerospace.sh " .. sid,5
      color = 0x44ffffff,5
      color = co,5
      color = colors.bg1,.5
      color = colors.bg1,5
      color = colors.bg1,
      bor5
      border_width = 1,5
      height = 26,5
      
      bord5
"      birder_color = colors.black,5
    
    pa5
    padding_right = 1,
    pa5
    padding_left = 1,5
    space = sid,
    ic5
    icon = {
      fo5
0      font = { family = settings.font.numbers },5
    
    popup = {b}5
K    popup = {background = {border_width = 5, border_color = colors.black}},5
padding_right = 1,
padding_left = 1,
script = os.getenv("CONFIG_DIR") .. "/plugins/aerospace.sh " .. sid,
click_script = "aerospace workspace " .. sid,
background = {
color = colors.bg1,
border_width = 1,
corner_radius = 5,
birder_color = colors.black,
height = 26,
popup = { background = { border_width = 5, border_color = colors.black } },
sbar.add("item", "space." .. sid, {
space = sid,
label = {5
popup = { background = { border_width = 5, border_color = colors.black } },
    cl
    click_script = "aer"5
!    click_script = "aerospace wo"5
+    click_script = "aerospace workspace " .5
,    click_script = "aerospace workspace " ..5
1    click_script = "aerospace workspace " .. sid,5
script = os.getenv("CONFIG_DIR") .. "/plugins/aerospace.sh " .. sid,5
click_script = "aerospace workspace " .. sid,5
  sb5
  sbar.5
  sbar.add("event")5
  sbar.add("event",)5
  sbar.add("event", "aer")5
  sbar.add("event", "a")5
1  sbar.add("event", "aerospace_workspace_change")5
end5
/sbar.add("event", "aerospace_workspace_change")
end5
local handle = io.5
$local handle = io.popen(prog, mode?)5
(local handle = io.popen("aerosp", mode?)5
Alocal handle = io.popen("aerospace list-workspaces --all", mode?)5
=local handle = io.popen("aerospace list-workspaces --all", ?)5
<local handle = io.popen("aerospace list-workspaces --all", )5
;local handle = io.popen("aerospace list-workspaces --all" )5
:local handle = io.popen("aerospace list-workspaces --all")5
local output = han5
 local output = handle:read("*a")
han5
handle:close()
for sid in ou
for sid in output:gmatch("%S+")5
"for sid in output:gmatch("%S+") do
  add
end5
  add_workspace_item(sid)5
add_workspace_item(sid)5
-- Single item bracket for space items to achieve double border on highlight
local space_bracket = sbar.add("bracket", { space.name }, {
background = {
color = colors.transparent,
border_color = colors.bg2,
height = 28,
border_width = 2,
-- Padding space
-- Single item bracket for space items to achieve double border on highlight5
for i = 1, 10, 1 do5
-- for i = 1, 10, 1 do
4-- 
local space = sbar.add("space", "space." .. i, {
space = i,
icon = {
0-- 
font = { family = settings.font.numbers },
string = i,
padding_left = 15,
padding_right = 8,
color = colors.white,
#-- 
highlight_color = colors.red,
label = {
padding_right = 20,
color = colors.grey,
%-- 
highlight_color = colors.white,
0-- 
font = "sketchybar-app-font:Regular:16.0",
y_offset = -1,
padding_right = 1,
padding_left = 1,
background = {
color = colors.bg1,
border_width = 1,
height = 26,
"-- 
border_color = colors.black,
P-- 
popup = { background = { border_width = 5, border_color = colors.black } },
spaces[i] = space
-- Padding space
.-- 
sbar.add("space", "space.padding." .. i, {
space = i,
script = "",
%-- 
width = settings.group_paddings,
*-- 
local space_popup = sbar.add("item", {
'-- 
position = "popup." .. space.name,
padding_left = 5,
padding_right = 0,
background = {
drawing = true,
image = {
corner_radius = 9,
scale = 0.2,
1-- 
space:subscribe("space_change", function(env)
,-- 
local selected = env.SELECTED == "true"
9-- 
local color = selected and colors.grey or colors.bg2
space:set({
&-- 
icon = { highlight = selected },
'-- 
label = { highlight = selected },
N-- 
background = { border_color = selected and colors.black or colors.bg2 },
space_bracket:set({
M-- 
background = { border_color = selected and colors.grey or colors.bg2 },
end)
2-- 
space:subscribe("mouse.clicked", function(env)
"-- 
if env.BUTTON == "other" then
G-- 
space_popup:set({ background = { image = "space." .. env.SID } })
3-- 
space:set({ popup = { drawing = "toggle" } })
else
E-- 
local op = (env.BUTTON == "right") and "--destroy" or "--focus"
:-- 
sbar.exec("yabai -m space " .. op .. " " .. env.SID)
end)
/-- 
space:subscribe("mouse.exited", function(_)
/-- 
space:set({ popup = { drawing = false } })
end)
-- end
3-- local space_window_observer = sbar.add("item", {
drawing = false,
updates = true,
-- })
.-- local spaces_indicator = sbar.add("item", {
padding_left = -3,
padding_right = 0,
-- 
icon = {
padding_left = 8,
padding_right = 9,
color = colors.grey,
string = icons.switch.on,
label = {
width = 0,
padding_left = 0,
padding_right = 8,
string = "Spaces",
color = colors.bg1,
background = {
1-- 
color = colors.with_alpha(colors.grey, 0.0),
7-- 
border_color = colors.with_alpha(colors.bg1, 0.0),
-- })
H-- space_window_observer:subscribe("space_windows_change", function(env)
local icon_line = ""
local no_app = true
--- 
for app, count in pairs(env.INFO.apps) do
no_app = false
"-- 
local lookup = app_icons[app]
F-- 
local icon = ((lookup == nil) and app_icons["Default"] or lookup)
"-- 
icon_line = icon_line .. icon
if no_app then
icon_line = " 
'-- 
sbar.animate("tanh", 10, function()
6-- 
spaces[env.INFO.space]:set({ label = icon_line })
end)
-- end)
D-- spaces_indicator:subscribe("swap_menus_and_spaces", function(env)
O-- 
local currently_on = spaces_indicator:query().icon.value == icons.switch.on
spaces_indicator:set({
A-- 
icon = currently_on and icons.switch.off or icons.switch.on,
-- end)
<-- spaces_indicator:subscribe("mouse.entered", function(env)
'-- 
sbar.animate("tanh", 30, function()
spaces_indicator:set({
background = {
color = { alpha = 1.0 },
&-- 
border_color = { alpha = 1.0 },
$-- 
icon = { color = colors.bg1 },
$-- 
label = { width = "dynamic" },
end)
-- end)
;-- spaces_indicator:subscribe("mouse.exited", function(env)
'-- 
sbar.animate("tanh", 30, function()
spaces_indicator:set({
background = {
color = { alpha = 0.0 },
&-- 
border_color = { alpha = 0.0 },
%-- 
icon = { color = colors.grey },
label = { width = 0 },
end)
-- end)
<-- spaces_indicator:subscribe("mouse.clicked", function(env)
)-- 
sbar.trigger("swap_menus_and_spaces")
-- end)5
-- -- Single item bracket for space items to achieve double border on highlight
-- local space_bracket = sbar.add("bracket", { space.name }, {
background = {
color = colors.transparent,
border_color = colors.bg2,
height = 28,
border_width = 2,
-- })5
sbar.add("space", "space." .. sid, {5
space = sid,
    subscribe5
&local function add_workspace_item(sid)
sketchybar({
1        "--add", "item", "space." .. sid, "left",
E        "--subscribe", "space." .. sid, "aerospace_workspace_change",
!        "--set", "space." .. sid,
&        "background.color=0x44ffffff",
%        "background.corner_radius=5",
        "background.height=20",
!        "background.drawing=off",
        "label=" .. sid,
3        "click_script=aerospace workspace " .. sid,
O        "script=" .. os.getenv("CONFIG_DIR") .. "/plugins/aerospace.sh " .. sid
    })5
sbar.({5
sbar.ex({5
sbar.exec({5
sbar.exec({
1        "--add", "item", "space." .. sid, "left",
E        "--subscribe", "space." .. sid, "aerospace_workspace_change",
!        "--set", "space." .. sid,
&        "background.color=0x44ffffff",
%        "background.corner_radius=5",
        "background.height=20",
!        "background.drawing=off",
        "label=" .. sid,
3        "click_script=aerospace workspace " .. sid,
O        "script=" .. os.getenv("CONFIG_DIR") .. "/plugins/aerospace.sh " .. sid
    })5
sbar.exec({
"--add",
"item",
"space." .. sid,
"left",
"--subscribe",
"space." .. sid,
"aerospace_workspace_change",
"--set",
"space." .. sid,
"background.color=0x44ffffff",
"background.corner_radius=5",
"background.height=20",
"background.drawing=off",
"label=" .. sid,
"click_script=aerospace workspace " .. sid,
"script=" .. os.getenv("CONFIG_DIR") .. "/plugins/aerospace.sh " .. sid,
*local function add_workspace_item(sid) end5
0sbar.exec("event", "aerospace_workspace_change")5
8local handle = .popen("aerospace list-workspaces --all")5
7local handle = popen("aerospace list-workspaces --all")5
2local handle = ("aerospace list-workspaces --all")5
7local handle = sbar.("aerospace list-workspaces --all")5
9local handle = sbar.ex("aerospace list-workspaces --all")5
;local handle = sbar.exec("aerospace list-workspaces --all")5
<local handle = sbar.exec("aerospace list-workspaces --all",)5
Nlocal handle = sbar.exec("aerospace list-workspaces --all", function (result,)
end)5
Xlocal handle = sbar.exec("aerospace list-workspaces --all", function (result, exit_code)
sbar.5
sbar.add("event")5
sbar.add("event",)5
sbar.add("event", "a")5
/sbar.add("event", "aerospace_workspace_change")5
/sbar.add("event", "aerospace_workspace_change")5
sbar.add({5
sbar.5
sbar.exe5
-sbar.exec("aterospace list-workspaces --all")5
@local workspaces = sbar.exec("aterospace list-workspaces --all")5
?local workspaces = sbar.exec("aerospace list-workspaces --all")5
for sid in :gmatch("%S+") do5
for sid in gmatch("%S+") do5
for sid in ("%S+") do5
for sid in wo("%S+") do5
for sid in w5
for sid in wo5
&for sid in workspaces:gmatch("%S+") do5
Flocal workspaces = sbar.exec("aerospace list-workspaces --json --all")5
#local output = handle:rea ftd("*a")5
sbar.exec(5
-- for i = 1, 10, 1 do
4-- 
local space = sbar.add("space", "space." .. i, {
space = i,
icon = {
0-- 
font = { family = settings.font.numbers },
string = i,
padding_left = 15,
padding_right = 8,
color = colors.white,
#-- 
highlight_color = colors.red,
label = {
padding_right = 20,
color = colors.grey,
%-- 
highlight_color = colors.white,
0-- 
font = "sketchybar-app-font:Regular:16.0",
y_offset = -1,
padding_right = 1,
padding_left = 1,
background = {
color = colors.bg1,
border_width = 1,
height = 26,
"-- 
border_color = colors.black,
P-- 
popup = { background = { border_width = 5, border_color = colors.black } },
spaces[i] = space
-- Padding space
.-- 
sbar.add("space", "space.padding." .. i, {
space = i,
script = "",
%-- 
width = settings.group_paddings,
*-- 
local space_popup = sbar.add("item", {
'-- 
position = "popup." .. space.name,
padding_left = 5,
padding_right = 0,
background = {
drawing = true,
image = {
corner_radius = 9,
scale = 0.2,
1-- 
space:subscribe("space_change", function(env)
,-- 
local selected = env.SELECTED == "true"
9-- 
local color = selected and colors.grey or colors.bg2
space:set({
&-- 
icon = { highlight = selected },
'-- 
label = { highlight = selected },
N-- 
background = { border_color = selected and colors.black or colors.bg2 },
space_bracket:set({
M-- 
background = { border_color = selected and colors.grey or colors.bg2 },
end)
2-- 
space:subscribe("mouse.clicked", function(env)
"-- 
if env.BUTTON == "other" then
G-- 
space_popup:set({ background = { image = "space." .. env.SID } })
3-- 
space:set({ popup = { drawing = "toggle" } })
else
E-- 
local op = (env.BUTTON == "right") and "--destroy" or "--focus"
:-- 
sbar.exec("yabai -m space " .. op .. " " .. env.SID)
end)
/-- 
space:subscribe("mouse.exited", function(_)
/-- 
space:set({ popup = { drawing = false } })
end)
-- end
3-- local space_window_observer = sbar.add("item", {
drawing = false,
updates = true,
-- })
.-- local spaces_indicator = sbar.add("item", {
padding_left = -3,
padding_right = 0,
-- 
icon = {
padding_left = 8,
padding_right = 9,
color = colors.grey,
string = icons.switch.on,
label = {
width = 0,
padding_left = 0,
padding_right = 8,
string = "Spaces",
color = colors.bg1,
background = {
1-- 
color = colors.with_alpha(colors.grey, 0.0),
7-- 
border_color = colors.with_alpha(colors.bg1, 0.0),
-- })
H-- space_window_observer:subscribe("space_windows_change", function(env)
local icon_line = ""
local no_app = true
--- 
for app, count in pairs(env.INFO.apps) do
no_app = false
"-- 
local lookup = app_icons[app]
F-- 
local icon = ((lookup == nil) and app_icons["Default"] or lookup)
"-- 
icon_line = icon_line .. icon
if no_app then
icon_line = " 
'-- 
sbar.animate("tanh", 10, function()
6-- 
spaces[env.INFO.space]:set({ label = icon_line })
end)
-- end)
D-- spaces_indicator:subscribe("swap_menus_and_spaces", function(env)
O-- 
local currently_on = spaces_indicator:query().icon.value == icons.switch.on
spaces_indicator:set({
A-- 
icon = currently_on and icons.switch.off or icons.switch.on,
-- end)
<-- spaces_indicator:subscribe("mouse.entered", function(env)
'-- 
sbar.animate("tanh", 30, function()
spaces_indicator:set({
background = {
color = { alpha = 1.0 },
&-- 
border_color = { alpha = 1.0 },
$-- 
icon = { color = colors.bg1 },
$-- 
label = { width = "dynamic" },
end)
-- end)
;-- spaces_indicator:subscribe("mouse.exited", function(env)
'-- 
sbar.animate("tanh", 30, function()
spaces_indicator:set({
background = {
color = { alpha = 0.0 },
&-- 
border_color = { alpha = 0.0 },
%-- 
icon = { color = colors.grey },
label = { width = 0 },
end)
-- end)
<-- spaces_indicator:subscribe("mouse.clicked", function(env)
)-- 
sbar.trigger("swap_menus_and_spaces")
-- end)5
& sbar.add("bracket", { space.name }, {5
'  sbar.add("bracket", { space.name }, {5
--  sbar.add("bracket", { space.name }, {
background = {
color = colors.transparent,
border_color = colors.bg2,
height = 28,
border_width = 2,
-- })5
Q-- Function to update workspace background drawing based on the focused workspace
Blocal function update_workspace_background(sid, focused_workspace)
$    local background_drawing = "off"
$    if sid == focused_workspace then
!        background_drawing = "on"
    end
    sketchybar({
!        "--set", "space." .. sid,
3        "background.drawing=" .. background_drawing
    })
-- Fetch the focused workspace
nlocal handle = io.popen("aerospace get-focused-workspace") -- Assuming this command gets the focused workspace
Nlocal focused_workspace = handle:read("*a"):gsub("%s+", "") -- Trim whitespace
handle:close()
+-- Update the background for each workspace
Elocal workspaces_handle = io.popen("aerospace list-workspaces --all")
5local workspace_output = workspaces_handle:read("*a")
workspaces_handle:close()
,for sid in workspace_output:gmatch("%S+") do
7    update_workspace_background(sid, focused_workspace)
end5
%-- for sid in output:gmatch("%S+") do
add_workspace_item(sid)5
-- end5
L-- Single item bracket for space items to achieve double border on highlight
)--  sbar.add("bracket", { space.name }, {
background = {
 -- 
color = colors.transparent,
border_color = colors.bg2,
height = 28,
border_width = 2,
-- })
update_workspace_background(sid, focused_workspace)
sketchybar({
"--set",
"space." .. sid,
"background.drawing=" .. background_drawing,
local background_drawing = "off"
if sid == focused_workspace then
background_drawing = "on"
end5
"for sid in output:gmatch("%S+") do
  local count = 15
local space = sbar.add("item", "space." .. sid, {5
  re5
  return space5
local space = add_workspace_item(sid)5
local space = add_workspace_item(sid)
  spac
  spaces[i]5
  spaces[i] = space5
  -- Padding space
sbar.add("space", "space.padding." .. i, {
space = i,
script = "",
width = settings.group_paddings,
&  sbar.add("event", "space." .. sid, {
)    event = "aerospace_workspace_change",
H    script = os.getenv("CONFIG_DIR") .. "/plugins/aerospace.sh " .. sid,5
      color = "0x44ffffff"",5
      color = "0x44ffffff,5
color = ,5
    app_icons5
7local function adlocal function add_workspace_item(sid)
    sketchybar({
1        "--add", "item", "space." .. sid, "left",
E        "--subscribe", "space." .. sid, "aerospace_workspace_change",
!        "--set", "space." .. sid,
&        "background.color=0x44ffffff",
%        "background.corner_radius=5",
        "background.height=20",
!        "background.drawing=off",
        "label=" .. sid,
3        "click_script=aerospace workspace " .. sid,
O        "script=" .. os.getenv("CONFIG_DIR") .. "/plugins/aerospace.sh " .. sid
    })
end()5
