#!/bin/bash

# List of folders to back up
folders=(
  "hypr"
  "hyprpanel"
  "cava"
  "fuzzel"
  "fish"
)

# Destination
dest=~/Dotfiles

# Create destination if it doesn't exist
mkdir -p "$dest"

# Loop through and copy each folder
for folder in "${folders[@]}"; do
  src="$HOME/.config/$folder"
  target="$dest/$folder"

  if [ -d "$src" ]; then
    echo "Backing up $folder..."
    rm -rf "$target"
    cp -r "$src" "$target"
  else
    echo "Warning: $src does not exist."
  fi
done

echo "✅ Backup complete."
