#!/bin/bash

# 将所有空白的Space销毁
yabai -m query --spaces | jq 'reverse |. [] | select((.windows | length) == 0) | .index' | xargs -I{} yabai -m space --destroy {}

# 当前space窗口数量大于2，新建space并将新窗口移动到新space中
num_windows=$(yabai -m query --spaces --space | jq '.windows | length')
if [ $num_windows -gt 2 ]; then
    yabai -m space --create
    yabai -m window --space last &&  yabai -m space --focus last
fi