#!/bin/bash

# Check if at least one file is provided
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 file1 [file2 ...]"
  exit 1
fi

# Create a temporary file to concatenate contents
temp_file=$(mktemp)

# Loop through all the files provided as arguments
for file in "$@"; do
  if [ -f "$file" ]; then
    cat "$file" >>"$temp_file"
    echo "" >>"$temp_file" # Add a newline between file contents
  else
    echo "Warning: $file is not a valid file."
  fi
done

# Copy the contents of the temporary file to the clipboard using xclip
# cat "$temp_file"
cat "$temp_file" | wl-copy

# Remove the temporary file
rm "$temp_file"

echo "Text copied to clipboard."
