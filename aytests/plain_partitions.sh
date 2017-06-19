#!/bin/bash

set -e -x

# Checking / and /home labels/filesystems
#
# * label
# * filesystem

function part_info {
  local info=$(mount -l | grep "on $1 " | cut -f5,7 -d" ")
  echo $info
}

root_info=$(part_info "/")
test "$root_info" == "ext4 [root]"

home_info=$(part_info "/home")
test "$home_info" == "xfs [sweet-home]"

echo "AUTOYAST OK"
