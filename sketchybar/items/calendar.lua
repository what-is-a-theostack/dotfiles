UnDo
#w'\
E  cal:set({ icon = os.date("%a. %d %b."), label = os.date("%H:%M") })
  icon = {
    color = colors.white,
    padding_left = 8,
    font = {
/      style = settings.font.style_map["Black"],
      size = 12.0,
    },
  },
  label = {
    color = colors.white,
    padding_right = 8,
    width = 49,
    align = "right",
.    font = { family = settings.font.numbers },
  },
  position = "right",
  update_freq = 30,
  padding_left = 1,
  padding_right = 1,
  background = {
    color = colors.bg2,
     border_color = colors.black,
    border_width = 1
  },
  background = {
    color = colors.transparent,
    height = 30,
    border_color = colors.grey,
E  cal:set({ icon = os.date("%a. %d %b."), label = os.date("%H:%M") })5
