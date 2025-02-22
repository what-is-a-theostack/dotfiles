UnDo
)  sbar.exec("open -a 'Activity Monitor'")
gM%
gM$
3local cpu = sbar.add("graph", "widgets.cpu" , 42, {
  position = "right",
"  graph = { color = colors.blue },
  background = {
    height = 22,
    color = { alpha = 0 },
!    border_color = { alpha = 0 },
    drawing = true,
  },
   icon = { string = icons.cpu },
  label = {
    string = "cpu ??%",
    font = {
%      family = settings.font.numbers,
.      style = settings.font.style_map["Bold"],
      size = 9.0,
    },
    align = "right",
    padding_right = 0,
    width = 0,
    y_offset = 4
  },
'  padding_right = settings.paddings + 6
0  -- Also available: env.user_load, env.sys_load
'  local load = tonumber(env.total_load)
  cpu:push({ load / 100. })
  local color = colors.blue
  if load > 30 then
    if load < 60 then
      color = colors.yellow
    elseif load < 80 then
      color = colors.orange
    else
      color = colors.red
    end
  end
  cpu:set({
    graph = { color = color },
,    label = "cpu " .. env.total_load .. "%",
  })
)  sbar.exec("open -a 'Activity Monitor'")
%  background = { color = colors.bg1 }
  position = "right",
!  width = settings.group_paddings5
