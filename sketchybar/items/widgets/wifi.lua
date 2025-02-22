UnDo
sbar.exec("killall network_load >/dev/null; $CONFIG_DIR/helpers/event_providers/network_load/bin/network_load en0 network_update 2.0")
gMm
gMk
gMl
sbar.exec("killall network_load >/dev/null; $CONFIG_DIR/helpers/event_providers/network_load/bin/network_load en0 network_update 2.0")
  position = "right",
  padding_left = -5,
  width = 0,
  icon = {
    padding_right = 0,
    font = {
.      style = settings.font.style_map["Bold"],
      size = 9.0,
    },
    string = icons.wifi.upload,
  },
  label = {
    font = {
%      family = settings.font.numbers,
.      style = settings.font.style_map["Bold"],
      size = 9.0,
    },
    color = colors.red,
    string = "??? Bps",
  },
  y_offset = 4,
  position = "right",
  padding_left = -5,
  icon = {
    padding_right = 0,
    font = {
.      style = settings.font.style_map["Bold"],
      size = 9.0,
    },
!    string = icons.wifi.download,
  },
  label = {
    font = {
%      family = settings.font.numbers,
.      style = settings.font.style_map["Bold"],
      size = 9.0,
    },
    color = colors.blue,
    string = "??? Bps",
  },
  y_offset = -4,
  position = "right",
  label = { drawing = false },
  wifi.name,
  wifi_up.name,
  wifi_down.name
&  background = { color = colors.bg1 },
+  popup = { align = "center", height = 30 }
+  position = "popup." .. wifi_bracket.name,
  icon = {
    font = {
-      style = settings.font.style_map["Bold"]
    },
    string = icons.wifi.router,
  },
  width = popup_width,
  align = "center",
  label = {
    font = {
      size = 15,
-      style = settings.font.style_map["Bold"]
    },
    max_chars = 18,
    string = "????????????",
  },
  background = {
    height = 2,
    color = colors.grey,
    y_offset = -15
+  position = "popup." .. wifi_bracket.name,
  icon = {
    align = "left",
    string = "Hostname:",
    width = popup_width / 2,
  },
  label = {
    max_chars = 20,
    string = "????????????",
    width = popup_width / 2,
    align = "right",
+  position = "popup." .. wifi_bracket.name,
  icon = {
    align = "left",
    string = "IP:",
    width = popup_width / 2,
  },
  label = {
    string = "???.???.???.???",
    width = popup_width / 2,
    align = "right",
+  position = "popup." .. wifi_bracket.name,
  icon = {
    align = "left",
    string = "Subnet mask:",
    width = popup_width / 2,
  },
  label = {
    string = "???.???.???.???",
    width = popup_width / 2,
    align = "right",
+  position = "popup." .. wifi_bracket.name,
  icon = {
    align = "left",
    string = "Router:",
    width = popup_width / 2,
  },
  label = {
    string = "???.???.???.???",
    width = popup_width / 2,
    align = "right",
  },
J  local up_color = (env.upload == "000 Bps") and colors.grey or colors.red
O  local down_color = (env.download == "000 Bps") and colors.grey or colors.blue
  wifi_up:set({
     icon = { color = up_color },
    label = {
      string = env.upload,
      color = up_color
    }
  })
  wifi_down:set({
"    icon = { color = down_color },
    label = {
      string = env.download,
      color = down_color
    }
  })
<wifi:subscribe({"wifi_change", "system_woke"}, function(env)
2  sbar.exec("ipconfig getifaddr en0", function(ip)
$    local connected = not (ip == "")
    wifi:set({
      icon = {
O        string = connected and icons.wifi.connected or icons.wifi.disconnected,
9        color = connected and colors.white or colors.red,
      },
    })
  end)
3  wifi_bracket:set({ popup = { drawing = false } })
A  local should_draw = wifi_bracket:query().popup.drawing == "off"
  if should_draw then
3    wifi_bracket:set({ popup = { drawing = true }})
?    sbar.exec("networksetup -getcomputername", function(result)
&      hostname:set({ label = result })
    end)
8    sbar.exec("ipconfig getifaddr en0", function(result)
       ip:set({ label = result })
    end)
f    sbar.exec("ipconfig getsummary en0 | awk -F ' SSID : '  '/ SSID : / {print $2}'", function(result)
"      ssid:set({ label = result })
    end)
t    sbar.exec("networksetup -getinfo Wi-Fi | awk -F 'Subnet mask: ' '/^Subnet mask: / {print $2}'", function(result)
"      mask:set({ label = result })
    end)
j    sbar.exec("networksetup -getinfo Wi-Fi | awk -F 'Router: ' '/^Router: / {print $2}'", function(result)
$      router:set({ label = result })
    end)
  else
    hide_details()
  end
0  local label = sbar.query(env.NAME).label.value
0  sbar.exec("echo \"" .. label .. "\" | pbcopy")
N  sbar.set(env.NAME, { label = { string = icons.clipboard, align="center" } })
  sbar.delay(1, function()
G    sbar.set(env.NAME, { label = { string = label, align = "right" } })
  end)5
