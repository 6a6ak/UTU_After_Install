#!/bin/bash

# Prompt the user for the destination directory
read -p "Enter the full path to the directory where you want to add the font: " path

# Check if the directory exists
if [ -d "$path" ]; then
    # If directory exists, copy the font file to the destination directory
    cp your_font_file.ttf $path
    # Update the font cache
    fc-cache -f -v
    echo "Font installed successfully!"
else
    # If directory does not exist, print an error message
    echo "Error: Directory does not exist."
fi
