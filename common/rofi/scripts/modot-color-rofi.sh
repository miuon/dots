#!/bin/bash

COLOR=$( ~/.local/bin/modot --list-colors | rofi -dmenu -p "Color:")

~/.local/bin/modot -c $COLOR
