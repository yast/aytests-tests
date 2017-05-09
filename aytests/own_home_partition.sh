#!/bin/bash

set -e -x

# Checking if /home has an own partition

line=$(mount|grep "on /home") || HOME_SET=0
partition=($line) || HOME_SET=0
HOME_SET=$(mount|grep $partition|wc -l) || HOME_SET=0

test $HOME_SET -eq 1 && echo "AUTOYAST OK"
