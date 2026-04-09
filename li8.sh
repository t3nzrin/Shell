#!/bin/bash
# Create two data files
echo "Enter data for file1 (press Ctrl+D when done):"
cat > file1.txt
echo "Enter data for file2 (press Ctrl+D when done):"
cat > file2.txt
# Display the contents of both files
echo "Contents of file1:"
cat file1.txt
echo "Contents of file2:"
cat file2.txt
# Find common entries
echo "Common entries between file1 and file2:"
comm -12 <(sort file1.txt) <(sort file2.txt)
# Find unique entries in file1
echo "Unique entries in file1:"
comm -23 <(sort file1.txt) <(sort file2.txt)
# Find unique entries in file2
echo "Unique entries in file2:"
comm -13 <(sort file1.txt) <(sort file2.txt)
