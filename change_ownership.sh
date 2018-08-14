#!/bin/sh

# show current owner
current_user=$(whoami)
temp=$(find /home \! -user $current_user -name $1)
echo $temp

stat -c "%U" $temp
#change ownership
chown $current_user $temp
stat -c "%U" $temp
