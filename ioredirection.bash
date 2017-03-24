#!/bin/bash
# Reading lines from readfile.txt

File=readfile.txt

{
read line1
read line2
} < $File

echo "First line if $File is:"
echo "$line1"
echo 
echo "Second line in $File is:"
echo "$line2"

exit 0

# provide read permission using sudo chmod 777 ioredirection.bash before execution