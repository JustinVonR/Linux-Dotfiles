SCREEN= xrandr -q | grep -Eo '[-A-Z0-9a-z]+ (connected|disconnected) (primary)?+\s?([0-9x]+?)?' | tr '\n' ':' | rofi -sep ':' -dmenu
##xrandr -q | grep -Eo '[0-9]+x[0-9]+ \s?+ [0-9.+*]?+' ##finds resolutions
LINE= xrandr -q | grep -n 'eDP' | grep -Eo '^[^:]+' ##gets line number of selected display header in xrandr out + 1
RESOLUTION= xrandr -q | sed -nE "/eDP/,/HDMI-A-0/{p;/HDMI-A-0/q}" | sed '1d;$d' | rofi -sep '\n' -dmenu
