#!/bin/bash

# Array of commands to choose from
commands=(
  "fortune -a pets"
  "fortune -a computers"
  "fortune -a science"
  "fortune -a cookie"
  "fortune -a education"
  "fortune -a people"
  "fortune -a discworld"
  "fortune -a malazan"
  "fortune -a vimtips"
)

# Get the length of the commands array
num_commands=${#commands[@]}

# Generate a random index to pick a command
random_index=$((RANDOM % num_commands))

# Execute the randomly chosen command
eval "${commands[random_index]}"
