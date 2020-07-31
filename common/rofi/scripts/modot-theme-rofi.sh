#!/bin/bash

THEME=$( ~/.local/bin/modot theme list | rofi -dmenu -p "Theme:")

~/.local/bin/modot theme set $THEME
