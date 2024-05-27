#!/usr/bin/env bash
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
CONFIG_DIR="$XDG_CONFIG_HOME/ags"
$CONFIG_DIR/scripts/color_generation/switchwall.sh $(fd . ~/Pictures/Wallpapers-from-Haven/ -e .png -e .jpg -e .svg | xargs shuf -n1 -e)
