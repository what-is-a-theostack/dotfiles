UnDo
if not ((window['app'] == "Arc" or window['app'] == "FiveNotes" or window['app'] == "kitty") and (window['title'] == nil or window['title'] == "")) then
!sbar.add("event", "window_focus")
if not ((window['app'] == "Arc" or window['app'] == "FiveNotes" or window['app'] == "kitty") and (window['title'] == nil or window['title'] == "")) then
window_label = truncate_string(window['app'] .. ": " .. window['title'], max_length)
window_label = window['app']
local icon_lookup = app_icons[window['app']]
sbar.add("item", "apps." .. window['id'], {
highlight = window['has-focus'],
click_script = "yabai -m window --focus " .. window['id'],
local function get_apps()5
