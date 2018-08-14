#!/bin/sh

echo $1

# location, size, owner, file permissons
location=$(find /home/student -name $1)
echo $location
stat -c "%s %U %A" $location
