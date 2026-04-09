#!/bin/bash
echo "files eith read,write and execute permission:"
for file in *; do
if [ -f  "$file" ] || [ -r  "$file" ] || [ -w  "$file" ] || [ -x  "$file" ] ; then
echo "$file"
fi
done
