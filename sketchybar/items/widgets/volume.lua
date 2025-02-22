UnDo
q  sbar.exec('osascript -e "set volume output volume (output volume of (get volume settings) + ' .. delta .. ')"')
gMc
gMa
gMb
 local colors = require("colors")
  position = "right",
  icon = { drawing = false },
  label = {
    string = "??%",
    padding_left = -1,
-    font = { family = settings.font.numbers }
  },
  position = "right",
  padding_right = -1,
  icon = {
    string = icons.volume._100,
    width = 0,
    align = "left",
    color = colors.grey,
    font = {
1      style = settings.font.style_map["Regular"],
      size = 14.0,
    },
  },
  label = {
    width = 25,
    align = "left",
    font = {
1      style = settings.font.style_map["Regular"],
      size = 14.0,
    },
  },
  volume_icon.name,
  volume_percent.name
&  background = { color = colors.bg1 },
  popup = { align = "center" }
  position = "right",
!  width = settings.group_paddings
-  position = "popup." .. volume_bracket.name,
  slider = {
"    highlight_color = colors.blue,
    background = {
      height = 6,
      corner_radius = 3,
      color = colors.bg2,
    },
    knob= {
      string = "
      drawing = true,
    },
  },
B  background = { color = colors.bg1, height = 2, y_offset = -20 },
F  click_script = 'osascript -e "set volume output volume $PERCENTAGE"'
#  local volume = tonumber(env.INFO)
  local icon = icons.volume._0
  if volume > 60 then
    icon = icons.volume._100
  elseif volume > 30 then
    icon = icons.volume._66
  elseif volume > 10 then
    icon = icons.volume._33
  elseif volume > 0 then
    icon = icons.volume._10
  end
  local lead = ""
  if volume < 10 then
    lead = "0"
  end
#  volume_icon:set({ label = icon })
7  volume_percent:set({ label = lead .. volume .. "%" })
9  volume_slider:set({ slider = { percentage = volume } })
>  local drawing = volume_bracket:query().popup.drawing == "on"
   if not drawing then return end
5  volume_bracket:set({ popup = { drawing = false } })
$  sbar.remove('/volume.device\\.*/')
  if env.BUTTON == "right" then
D    sbar.exec("open /System/Library/PreferencePanes/Sound.prefpane")
    return
  end
C  local should_draw = volume_bracket:query().popup.drawing == "off"
  if should_draw then
6    volume_bracket:set({ popup = { drawing = true } })
@    sbar.exec("SwitchAudioSource -t output -c", function(result)
.      current_audio_device = result:sub(1, -2)
E      sbar.exec("SwitchAudioSource -a -t output", function(available)
&        current = current_audio_device
!        local color = colors.grey
        local counter = 0
=        for device in string.gmatch(available, '[^\r\n]+') do
#          local color = colors.grey
#          if current == device then
             color = colors.white
          end
9          sbar.add("item", "volume.device." .. counter, {
7            position = "popup." .. volume_bracket.name,
             width = popup_width,
            align = "center",
7            label = { string = device, color = color },
            click_script = 'SwitchAudioSource -s "' .. device .. '" && sketchybar --set /volume.device\\.*/ label.color=' .. colors.grey .. ' --set $NAME label.color=' .. colors.white
          })
          counter = counter + 1
        end
      end)
    end)
  else
    volume_collapse_details()
  end
  local delta = env.INFO.delta
D  if not (env.INFO.modifier == "ctrl") then delta = delta * 10.0 end
q  sbar.exec('osascript -e "set volume output volume (output volume of (get volume settings) + ' .. delta .. ')"')5
