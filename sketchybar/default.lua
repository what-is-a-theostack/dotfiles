UnDo
      border_width = 1
    color = colors.white,5
2      style = settings.font.style_map["Semibold"],5
    color = colors.white,5
    color = colors.dirty_,5
/      style = settings.font.style_map["Light"],5
,      style = settings.font.style_map["Bo"],5
.      style = settings.font.style_map["Bold"],5
!      border_color = colors.grey,5
      border_width = 15
  updates = "when_shown",
  icon = {
    font = {
"      family = settings.font.text,
.      style = settings.font.style_map["Bold"],
      size = 14.0
    },
    color = colors.dirty_white,
%    padding_left = settings.paddings,
&    padding_right = settings.paddings,
3    background = { image = { corner_radius = 9 } },
  },
  label = {
    font = {
"      family = settings.font.text,
/      style = settings.font.style_map["Light"],
      size = 13.0
    },
    color = colors.dirty_white,
%    padding_left = settings.paddings,
&    padding_right = settings.paddings,
  },
  background = {
    height = 28,
    corner_radius = 9,
    border_width = 2,
    border_color = colors.bg2,
    image = {
      corner_radius = 9,
'      border_color = colors.lightblack,
      border_width = 1,
    }
  },
  popup = {
    background = {
      border_width = 2,
      corner_radius = 9,
)      border_color = colors.popup.border,
      color = colors.popup.bg,
"      shadow = { drawing = true },
    },
    blur_radius = 50,
  },
  padding_left = 5,
  padding_right = 5,
  scroll_texts = true,5
