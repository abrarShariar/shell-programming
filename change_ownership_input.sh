#!/bin/sh

file_location=$(find /home -name $1)
echo $file_location

# show current owner of file
stat -c "%U" $file_location

# change owner
chown $2 $file_location

# see changed owner name
stat -c "%U" $file_location
