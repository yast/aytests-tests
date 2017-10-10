#!/bin/bash

set -e

FILE=/etc/hosts

grep "127.0.0.1[[:space:]]\+localhost" $FILE

# Check all of the IPv6 default entries (bsc#1039851)
grep "::1[[:space:]]\+localhost ipv6-localhost ipv6-loopback" $FILE
grep "fe00::0[[:space:]]\+ipv6-localnet" $FILE
grep "ff00::0[[:space:]]\+ipv6-mcastprefix" $FILE
grep "ff02::1[[:space:]]\+ipv6-allnodes" $FILE
grep "ff02::2[[:space:]]\+ipv6-allrouters" $FILE

grep "ff02::3[[:space:]]\+ipv6-allhosts" $FILE

echo "AUTOYAST OK"
