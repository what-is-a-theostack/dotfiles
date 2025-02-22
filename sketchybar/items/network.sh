UnDo
/  script="$PLUGIN_DIR/stats/scripts/network.sh"
background.padding_right=-70
y_offset=7
label.font="$FONT:Heavy:10"
label.color="$TEXT"
icon="$NETWORK_UP"
icon.font="$NERD_FONT:Bold:16.0"
icon.color="$GREEN"
icon.highlight_color="$BLUE"
update_freq=1
script="$PLUGIN_DIR/stats/scripts/network.sh"
1sketchybar 
--add item network.down right 
--set network.down "${network_down[@]}" 
--add item network.up right 
--set network.up "${network_up[@]}"5
y_offset=-7
label.font="$FONT:Heavy:10"
label.color="$TEXT"
icon="$NETWORK_DOWN"
icon.font="$NERD_FONT:Bold:16.0"
icon.color="$GREEN"
icon.highlight_color="$BLUE"
update_freq=15
/  script="$PLUGIN_DIR/stats/scripts/network.sh"5
(  script="$PLUGIN_DIR/stats//network.sh"5
!  script="$PLUGIN_DIR/network.sh"5
