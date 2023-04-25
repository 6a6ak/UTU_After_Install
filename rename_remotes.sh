#!/bin/bash

# Check if the new-origin remote exists
if git remote | grep -q '^new-origin$'; then
  # Check if the upstream remote exists
  if git remote | grep -q '^upstream$'; then
    # Rename the existing upstream remote
    git remote rename upstream old-upstream
    echo "Renamed existing 'upstream' remote to 'old-upstream'"
  fi

  # Rename new-origin remote to upstream
  git remote rename new-origin upstream
  echo "Renamed 'new-origin' remote to 'upstream'"
else
  echo "Remote 'new-origin' not found. Please ensure it exists before running this script."
fi
