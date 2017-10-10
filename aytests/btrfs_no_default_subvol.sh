#!/bin/bash

# The user has defined that no subvolumes will be created.
# (bnc#1059617)

set -e -x

! grep "subvol=@/var" /etc/fstab && echo "AUTOYAST OK"
