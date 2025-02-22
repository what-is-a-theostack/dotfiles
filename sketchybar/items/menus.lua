UnDo
\:kJ=s
  menu_items[i] = menu
  drawing = false,
  updates = false,
  drawing = false,
  updates = true,
/  local menu = sbar.add("item", "menu." .. i, {
%    padding_left = settings.paddings,
&    padding_right = settings.paddings,
    drawing = false,
    icon = { drawing = false },
    label = {
      font = {
I        style = settings.font.style_map[i == 1 and "Heavy" or "Semibold"]
      },
      padding_left = 6,
      padding_right = 6,
    },
B    click_script = "$CONFIG_DIR/helpers/menus/bin/menus -s " .. i,
  })
  menu_items[i] = menu
(sbar.add("bracket", { '/menu\\..*/' }, {
%  background = { color = colors.bg1 }
  drawing = false,
  width = 5
E  sbar.exec("$CONFIG_DIR/helpers/menus/bin/menus -l", function(menus)
0    sbar.set('/menu\\..*/', { drawing = false })
(    menu_padding:set({ drawing = true })
    id = 1
3    for menu in string.gmatch(menus, '[^\r\n]+') do
      if id < max_items then
>        menu_items[id]:set( { label = menu, drawing = true } )
      else break end
      id = id + 1
    end
  end)
@  local drawing = menu_items[1]:query().geometry.drawing == "on"
  if drawing then
*    menu_watcher:set( { updates = false })
0    sbar.set("/menu\\..*/", { drawing = false })
0    sbar.set("/space\\..*/", { drawing = true })
-    sbar.set("front_app", { drawing = true })
  else
)    menu_watcher:set( { updates = true })
1    sbar.set("/space\\..*/", { drawing = false })
.    sbar.set("front_app", { drawing = false })
    update_menus()
  end5
