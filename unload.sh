#!/bin/sh
module="simple"
device="simple"

# invoke rmmod with all arguments we got
rmmod $module $* || exit 1

# Remove stale nodes
rm -f /dev/${device}[rn] 





