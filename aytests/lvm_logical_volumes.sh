#!/bin/bash

set -e -x

# Checking / and /home labels/filesystems

function part_info {
  local info=$(findmnt $1 --noheadings --output SOURCE,FSTYPE,LABEL)
  echo $info
}

root_info=$(part_info "/")
test "$root_info" == "/dev/mapper/system-root ext4 root"

home_info=$(part_info "/home")
test "$home_info" == "/dev/mapper/system-home xfs sweet-home"

echo "AUTOYAST OK"
