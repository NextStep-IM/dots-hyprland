#!/bin/bash

# Define the file to be edited
file_path="$HOME/.config/hypr/hyprlock.conf"

# Check if the file exists
if [[ ! -f "$file_path" ]]; then
  notify-send "hyprlock.conf not found!"
  exit 1
fi

# Check if the file contains 'fortune discworld'
if grep -q 'fortune discworld' "$file_path"; then
  # Replace 'fortune discworld' with 'fortune'
  sed -i 's/fortune discworld/fortune/g' "$file_path"
  notify-send "Replaced 'fortune discworld' with 'fortune'."
elif grep -q '\bfortune\b' "$file_path"; then
  # Replace 'fortune' with 'fortune discworld'
  sed -i 's/\bfortune\b/fortune discworld/g' "$file_path"
  notify-send "Replaced 'fortune' with 'fortune discworld'."
else
  notify-send "No matching patterns found."
fi
