#!/bin/bash

set -e -x

[[ $(rpm -qf /etc/os-release) =~ sles.* ]]

echo "AUTOYAST OK"
