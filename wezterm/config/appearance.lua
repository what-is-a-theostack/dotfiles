UnDo
  -- 
g@>7
g@>=
local gpu_adapters = re5
g@>C
4local gpu_adapters = require("wezterm-gpu-adapters")5
g@>F
&local gpu_adapters = require("utils.")5
g@>b
'local config = wezterm.config_builder()5
g@>c
$-- This will hold the configuration.5
g@>d
7-- This is where you actually apply your config choices5
g@>d
g@>g
return {}5
g@>n
  max_fps = 120,5
6   webgpu_preferred_adapter = gpu_adapters:pick_best()5
/   webgpu_power_preference = 'HighPerformance',5
  font = 5
(  font = wezterm.font("JetBrains Mono"),5
5config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 19
config.enable_tab_bar = false
$config.window_decorations = "RESIZE"
&config.window_background_opacity = 0.8
(config.macos_window_background_blur = 10
-- my coolnight colorscheme:
config.colors = {
foreground = "#CBE0F0",
background = "#011423",
cursor_bg = "#47FF9C",
cursor_border = "#47FF9C",
cursor_fg = "#011423",
selection_bg = "#033259",
selection_fg = "#CBE0F0",
ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
3-- and finally, return the configuration to wezterm
return config5
return {
  max_fps = 120,
  front_end = 'WebGpu',
.  webgpu_power_preference = 'HighPerformance',
5  webgpu_preferred_adapter = gpu_adapters:pick_best()
  e5
  en5
    
  enable_tab_bar = false,5
 -- cursor
   animation_fps = 120,
$   cursor_blink_ease_in = 'EaseOut',
%   cursor_blink_ease_out = 'EaseOut',
*   default_cursor_style = 'BlinkingBlock',
   cursor_blink_rate = 650,
   -- color scheme
   colors = colors,
   -- background
(   background = backdrops:create_opts(),
   -- scrollbar
   enable_scroll_bar = true,
   -- tab bar
   enable_tab_bar = true,
(   hide_tab_bar_if_only_one_tab = false,
   use_fancy_tab_bar = false,
   tab_max_width = 25,
%   show_tab_index_in_tab_bar = false,
5   switch_to_last_active_tab_when_closing_tab = true,
   -- window
   window_padding = {
      left = 0,
      right = 0,
      top = 10,
      bottom = 7.5,
   },
6   adjust_window_size_when_changing_font_size = false,
-   window_close_confirmation = 'NeverPrompt',
   window_frame = {
%      active_titlebar_bg = '#090909',
      -- font = fonts.font,
%      -- font_size = fonts.font_size,
   },
   -- inactive_pane_hsb = {
   --    saturation = 0.9,
   --    brightness = 0.65,
   -- },
   inactive_pane_hsb = {
      saturation = 1,
      brightness = 1,
   },5
hide_tab_bar_if_only_one_tab = false,
use_fancy_tab_bar = false,
tab_max_width = 25,
show_tab_index_in_tab_bar = false,
switch_to_last_active_tab_when_closing_tab = true,5
enable_tab_bar = true,5
g@? 
background = backdrops:create_opts(),5
g@? 
-- background5
g@?"
-- color scheme5
g@?#
colors = colors,5
g@?$
g@?$
2local gpu_adapters = require("utils.gpu_adapters")5
g@H"
-- tab bar
enable_tab_bar = false,5
g@H$
1local gpu_adapters = require("utils.gpu_adapter")
"local wezterm = require("wezterm")
max_fps = 120,
front_end = "WebGpu",
webgpu_power_preference = "HighPerformance",
webgpu_preferred_adapter = gpu_adapters:pick_best(),
-- cursor
animation_fps = 120,
cursor_blink_ease_in = "EaseOut",
cursor_blink_ease_out = "EaseOut",
default_cursor_style = "BlinkingBlock",
cursor_blink_rate = 650,
-- scrollbar
enable_scroll_bar = true,
-- window
window_padding = {
left = 0,
right = 0,
top = 10,
bottom = 7.5,
adjust_window_size_when_changing_font_size = false,
window_close_confirmation = "NeverPrompt",
window_frame = {
active_titlebar_bg = "#090909",
-- font = fonts.font,
-- font_size = fonts.font_size,
-- inactive_pane_hsb = {
--    saturation = 0.9,
--    brightness = 0.65,
-- },
inactive_pane_hsb = {
saturation = 1,
brightness = 1,
g@Hr
g@H|
  -- color scheme5
)  local colors = require('colors.custom')5
  -- 
  col5
  -- color scheme
  colors = colors,5
