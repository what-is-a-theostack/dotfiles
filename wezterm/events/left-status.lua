UnDo
      local name
g@B-
g@B*
      local name
g@B,
"local wezterm = require('wezterm')
$local Cells = require('utils.cells')
0   default = { bg = '#fab387', fg = '#1c1b19' },
;   scircle = { bg = 'rgba(0, 0, 0, 0.4)', fg = '#fab387' },
X   :add_segment(1, GLYPH_SEMI_CIRCLE_LEFT, colors.scircle, attr(attr.intensity('Bold')))
E   :add_segment(2, ' ', colors.default, attr(attr.intensity('Bold')))
E   :add_segment(3, ' ', colors.default, attr(attr.intensity('Bold')))
Y   :add_segment(4, GLYPH_SEMI_CIRCLE_RIGHT, colors.scircle, attr(attr.intensity('Bold')))
<   wezterm.on('update-right-status', function(window, _pane)
,      local name = window:active_key_table()
      local res = {}
      if name then
         cells
4            :update_segment_text(2, GLYPH_KEY_TABLE)
>            :update_segment_text(3, ' ' .. string.upper(name))
!         res = cells:render_all()
      end
'      if window:leader_is_active() then
L         cells:update_segment_text(2, GLYPH_KEY):update_segment_text(3, ' ')
!         res = cells:render_all()
      end
1      window:set_left_status(wezterm.format(res))
   end)5
