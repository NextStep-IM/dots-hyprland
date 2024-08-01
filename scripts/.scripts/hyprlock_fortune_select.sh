#!/bin/bash

# Array of commands to choose from
commands=(
  "fortune -as pets"
  "fortune -as computers"
  "fortune -as science"
  "fortune -as cookie"
  "fortune -as education"
  "fortune -as people"
  "fortune -as discworld"
  "fortune -as malazan"
  "fortune -as magic"
  "fortune -as wisdom"
  "fortune -as paradoxum"
  "fortune -as news"
)

# Get the length of the commands array
num_commands=${#commands[@]}

# Generate a random index to pick a command
random_index=$((RANDOM % num_commands))

# Execute the randomly chosen command
eval "${commands[random_index]}"
