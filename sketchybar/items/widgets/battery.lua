UnDo
  position = "right",
  icon = {
    font = {
1      style = settings.font.style_map["Regular"],
      size = 19.0,
    }
  },
8  label = { font = { family = settings.font.numbers } },
  update_freq = 180,
  popup = { align = "center" }
&  position = "popup." .. battery.name,
  icon = {
    string = "Time remaining:",
    width = 100,
    align = "left"
  },
  label = {
    string = "??:??h",
    width = 100,
    align = "right"
  },
Obattery:subscribe({"routine", "power_source_change", "system_woke"}, function()
0  sbar.exec("pmset -g batt", function(batt_info)
    local icon = "!"
    local label = "?"
6    local found, _, charge = batt_info:find("(%d+)%%")
    if found then
      charge = tonumber(charge)
      label = charge .. "%"
    end
    local color = colors.green
5    local charging, _, _ = batt_info:find("AC Power")
    if charging then
#      icon = icons.battery.charging
    else
#      if found and charge > 80 then
!        icon = icons.battery._100
'      elseif found and charge > 60 then
         icon = icons.battery._75
'      elseif found and charge > 40 then
         icon = icons.battery._50
'      elseif found and charge > 20 then
         icon = icons.battery._25
        color = colors.orange
      else
        icon = icons.battery._0
        color = colors.red
      end
    end
    local lead = ""
!    if found and charge < 10 then
      lead = "0"
    end
    battery:set({
      icon = {
        string = icon,
        color = color
      },
)      label = { string = lead .. label },
    })
  end)
/  local drawing = battery:query().popup.drawing
2  battery:set( { popup = { drawing = "toggle" } })
  if drawing == "off" then
2    sbar.exec("pmset -g batt", function(batt_info)
H      local found, _, remaining = batt_info:find(" (%d+:%d+) remaining")
?      local label = found and remaining .. "h" or "No estimate"
,      remaining_time:set( { label = label })
    end)
  end
%  background = { color = colors.bg1 }
  position = "right",
!  width = settings.group_paddings5
