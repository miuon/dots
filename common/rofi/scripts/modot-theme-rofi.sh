#!/bin/bash

THEME=$( ~/.local/bin/modot --list-themes | rofi -dmenu -p "Theme:")

~/.local/bin/modot -t $THEME
