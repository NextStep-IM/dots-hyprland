#!/bin/bash

# Array of commands to choose from
commands=(
  "fortune"
  "fortune discworld"
  "fortune malazan"
)

# Get the length of the commands array
num_commands=${#commands[@]}

# Generate a random index to pick a command
random_index=$((RANDOM % num_commands))

# Execute the randomly chosen command
eval "${commands[random_index]}"
