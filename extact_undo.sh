#!/bin/bash
mkdir -p /Users/matthewholden/recovered-config
cd /Users/matthewholden/.local/state/nvim/undo/
for undo in $(ls | grep "%.config%"); do
  filename=$(echo "$undo" | sed 's/%/\//g' | sed 's/.*\.config\///')
  target="/Users/matthewholden/recovered-config/$filename"
  mkdir -p "$(dirname "$target")"
  strings "$undo" > "$target"
  if [ -s "$target" ]; then
    echo "Extracted: $filename to $target"
  else
    echo "Empty: $filename"
    rm "$target"
  fi
done
