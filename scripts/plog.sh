#!/bin/zsh

# Get the current month name
month=$(date +%B)

# Construct the directory and file path
dir_path="$HOME/Documents/powerlog"
file_path="$dir_path/$month.md"

# Check if the directory exists, create it if it doesn't
if [[ ! -d "$dir_path" ]]; then
  print "Creating directory: $dir_path"
  mkdir -p "$dir_path"
fi

# Check if the file exists
if [[ ! -f "$file_path" ]]; then
  # File doesn't exist, inform and create it
  print "Creating powerlog file for $month..."
  touch "$file_path"

  # Add the header to the new file
  echo "## powerlog" > "$file_path"
fi

# Get the current date and time
current_datetime=$(date "+%Y-%m-%d %H:%M:%S")

# Get the current battery level (Linux - using upower)
battery_level=$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | awk '{print $2}')

# Append the entry to the file
echo "- $current_datetime - Battery: $battery_level" >> "$file_path"

print "Powerlog entry added."
