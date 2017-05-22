#!/bin/bash

set -e -x

HO=`hostname`

echo test >/srv/tftpboot/test.txt
time tftp $HO -c get test.txt test2.txt || \
time tftp $HO -c get test.txt test2.txt

diff -u /srv/tftpboot/test.txt test2.txt && echo "AUTOYAST OK"

