UnDo
  animate_detail(false)
'local whitelist = { ["Spotify"] = true,
*                    ["Music"] = true    };
  position = "right",
  background = {
    image = {
      string = "media.artwork",
      scale = 0.85,
    },
    color = colors.transparent,
  },
  label = { drawing = false },
  icon = { drawing = false },
  drawing = false,
  updates = true,
  popup = {
    align = "center",
    horizontal = true,
  position = "right",
  drawing = false,
  padding_left = 3,
  padding_right = 0,
  width = 0,
  icon = { drawing = false },
  label = {
    width = 0,
    font = { size = 9 },
1    color = colors.with_alpha(colors.white, 0.6),
    max_chars = 18,
    y_offset = 6,
  },
  position = "right",
  drawing = false,
  padding_left = 3,
  padding_right = 0,
  icon = { drawing = false },
  label = {
    font = { size = 11 },
    width = 0,
    max_chars = 16,
    y_offset = -5,
  },
*  position = "popup." .. media_cover.name,
'  icon = { string = icons.media.back },
  label = { drawing = false },
+  click_script = "nowplaying-cli previous",
*  position = "popup." .. media_cover.name,
-  icon = { string = icons.media.play_pause },
  label = { drawing = false },
2  click_script = "nowplaying-cli togglePlayPause",
*  position = "popup." .. media_cover.name,
*  icon = { string = icons.media.forward },
  label = { drawing = false },
'  click_script = "nowplaying-cli next",
4  if (not detail) then interrupt = interrupt - 1 end
3  if interrupt > 0 and (not detail) then return end
%  sbar.animate("tanh", 30, function()
G    media_artist:set({ label = { width = detail and "dynamic" or 0 } })
F    media_title:set({ label = { width = detail and "dynamic" or 0 } })
  end)
!  if whitelist[env.INFO.app] then
1    local drawing = (env.INFO.state == "playing")
E    media_artist:set({ drawing = drawing, label = env.INFO.artist, })
C    media_title:set({ drawing = drawing, label = env.INFO.title, })
*    media_cover:set({ drawing = drawing })
    if drawing then
      animate_detail(true)
      interrupt = interrupt + 1
#      sbar.delay(5, animate_detail)
    else
6      media_cover:set({ popup = { drawing = false } })
    end
  end
  interrupt = interrupt + 1
  animate_detail(true)
  animate_detail(false)
4  media_cover:set({ popup = { drawing = "toggle" }})
1  media_cover:set({ popup = { drawing = false }})5
