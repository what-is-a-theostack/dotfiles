UnDo
HQX 
state=$(sketchybar --query separator_right | jq -r .icon.value)
#!/usr/bin/env bash
cpu.percent
memory
disk
network
args=()
for item in "${stats[@]}"; do
args+=(--set "$item" drawing=off)
done
sketchybar "${args[@]}" \
--set separator_right \
icon=
args=()
for item in "${stats[@]}"; do
args+=(--set "$item" drawing=on)
done
sketchybar "${args[@]}" \
--set separator_right \
icon=
state=$(sketchybar --query separator_right | jq -r .icon.value)
case $state in
show_stats
hide_stats
esac
hide_stats
show_stats
toggle_stats
