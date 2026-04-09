#!/bin/bash
# Prompt the user to enter the full path of the source file
echo "Enter the full path of the source file:"
read source_file
# Prompt the user to enter the destination directory
echo "Enter the destination directory:"
read destination_dir
# Create the destination directory if it doesn't exist
mkdir -p "$destination_dir"
# Copy the file to the destination directory
cp "$source_file" "$destination_dir"
echo "File copied successfully to $destination_dir"
