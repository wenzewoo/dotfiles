#!/bin/bash

# 将所有空白的Space销毁
yabai -m query --spaces | jq 'reverse |. [] | select((.windows | length) == 0) | .index' | xargs -I{} yabai -m space --destroy {}

# 当前非浮动窗口数量大于2，则将焦点窗口移动到新的Space
front_window_nums=$(yabai -m query --windows --space | jq '. | map(select(.["is-floating"]==false and .["is-minimized"]==false)) | length')
echo $(yabai -m query --windows --space)
if [ $front_window_nums -gt 2 ]; then
    echo 'current front_window_nums gt 2, create new sace...'
    yabai -m space --create
    yabai -m window --space last &&  yabai -m space --focus last
fi