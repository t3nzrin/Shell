#!/bin/bash
echo "enter the source file:"
read src
echo "enter the destination file:"
read dest

cp "$src" "$dest"
echo "file copied $dest"
