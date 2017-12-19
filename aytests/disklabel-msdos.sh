#!/bin/bash

set -e -x

# Check the used partition type (bsc#1073307)

partprobe --summary --dry-run /dev/vda | grep msdos
echo "AUTOYAST OK"
