#!/bin/bash

set -e -x

# grep fits to german too
snapper list | grep -i "installation" && echo "AUTOYAST OK"
