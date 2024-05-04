source "$HOME/.config/sketchybar/icons.sh"
source "$HOME/.config/sketchybar/colors.sh"

if [ "$1" = $(yabai -m query --spaces index --space | jq .index) ]; then
    sketchybar --set $NAME background.color=$2 label.color=$BLACK icon.color=$BLACK
else
    sketchybar --set $NAME background.color=$BLACK label.color=$2 icon.color=$2
fi