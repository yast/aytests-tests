#!/bin/bash

set -e x
 
grep "^master: master.example.com" /etc/salt/minion.d/master.conf && echo "AUTOYAST OK"
