#!/bin/bash

COLOR=$( ~/.local/bin/modot color list | rofi -dmenu -p "Color:")

~/.local/bin/modot color set $COLOR
