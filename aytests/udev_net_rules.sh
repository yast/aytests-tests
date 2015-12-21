#!/bin/bash

set -e -x

if [[ -f /etc/udev/rules.d/70-persistent-net.rules.aytests ]]
then
  NET_RULES_FILE="/etc/udev/rules.d/70-persistent-net.rules.aytests"
else
  NET_RULES_FILE="/etc/udev/rules.d/70-persistent-net.rules"
fi

grep "coolname" $NET_RULES_FILE && echo "AUTOYAST OK"
