UnDo
[   { key = 'v',          mods = 'CTRL|SHIFT|SUPER',  action = act.PasteFrom('Clipboard') },
g@F:
   { key = 'h',     mods = mod
            ---@di
.         local new_height = dimensions.pixel_h
?   { key = 'c',          mods = 'CTRL|SHIFT',  action = act.Cop
   { key = 'f',   mods
   {
      key = [[/]],
      mods = mod.SUPER,
>      action = wezterm.action_callback(function(window, _pane)
!         backdrops:random(window)
      end),
   },
   {
      key = [[,]],
      mods = mod.SUPER,
>      action = wezterm.action_callback(function(window, _pane)
%         backdrops:cycle_back(window)
      end),
   },
   {
      key = [[.]],
      mods = mod.SUPER,
>      action = wezterm.action_callback(function(window, _pane)
(         backdrops:cycle_forward(window)
      end),
   },
   {
      key = [[/]],
      mods = mod.SUPER_REV,
"      action = act.InputSelector({
4         title = 'InputSelector: Select Background',
'         choices = backdrops:choices(),
         fuzzy = true,
3         fuzzy_description = 'Select Background: ',
F         action = wezterm.action_callback(function(window, _pane, idx)
            if not idx then
               return
            end
A            ---@diagnostic disable-next-line: param-type-mismatch
4            backdrops:set_img(window, tonumber(idx))
         end),
      }),
   },5
   -- background controls --
   {
      key = 'b',
      mods = mod.SUPER,
>      action = wezterm.action_callback(function(window, _pane)
'         backdrops:toggle_focus(window)
      end)
   },5
g@I"
,local backdrops = require('utils.backdrops')5
U   { key = 'v',          mods = 'CTRL|SHIFT',  action = act.PasteFrom('Clipboard') },5
R   { key = 'c',          mods = 'CTRL|SHIFT',  action = act.CopyTo('Clipboard') },5
X   { key = 'c',          mods = 'CTRL|SHIFT|SUPER',  action = act.CopyTo('Clipboard') },5
S   { key = 'c',          mods = 'CTRL|SHIFT|',  action = act.CopyTo('Clipboard') },5
[   { key = 'v',          mods = 'CTRL|SHIFT|SUPER',  action = act.PasteFrom('Clipboard') },5
Z   { key = 'v',          mods = 'CTRL|SHIFTSUPER',  action = act.PasteFrom('Clipboard') },5
