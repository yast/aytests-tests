#!/bin/bash

set -e -x

# Test add_on_products.xml handling (bsc#992608, bsc#991935)
# checking whether a custom driver update was added.
zgrep "Add-Ons Output:.*AYDriverUpdate" /var/log/YaST2/y2log-1.gz
echo "AUTOYAST OK"
