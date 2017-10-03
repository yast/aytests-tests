#!/bin/bash

set -e -x

[[ rpm -qf /etc/os-release =~ sled.* ]]
