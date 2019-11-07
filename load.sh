#!/bin/sh
module="simple"
device="simple"
mode="664"

# Group: since distributions do it differently, look for wheel or use staff
if grep '^staff:' /etc/group > /dev/null; then
    group="staff"
else
    group="wheel"
fi

# invoke insmod with all arguments we got
# and use a pathname, as newer modutils don't look in . by default
insmod ./$module.ko $* || exit 1

major=`cat /proc/devices | awk "\\$2==\"$module\" {print \\$1}"`

# Remove stale nodes and replace them, then give gid and perms
# Usually the script is shorter, it's simple that has several devices in it.

rm -f /dev/${device}[rn]
mknod /dev/${device}r c $major 0
mknod /dev/${device}n c $major 1
chgrp $group /dev/${device}[rn] 
chmod $mode  /dev/${device}[rn]
