#!/bin/sh

# current user
current_user=$(whoami)
echo $current_user

# find all files by current user
find / -user $current_user
