UnDo
eah3
DOWN_FORMAT=$(echo "$DOWN" | awk '{ printf "%03.0f Mbps", $1 / 1000}')
DOWN_FORMAT=$(echo "$DOWN" | awk '{ printf "%03.0f Mbps", $1 / 1000}')
DOWN_FORMAT=$(echo "$DOWN" | awk '{ printf "%03.0f kbps", $1}')
UP_FORMAT=$(echo "$UP" | awk '{ printf "%03.0f Mbps", $1 / 1000}')
UP_FORMAT=$(echo "$UP" | awk '{ printf "%03.0f kbps", $1}')
--set network.up label="$UP_FORMAT" icon.highlight=$(if [ "$UP" -gt "0" ]; then echo "on"; else echo "off"; fi)5
