#!/bin/bash
# Script 3: Disk Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Report"
echo "----------------"

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        PERM=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => $PERM | Size: $SIZE"
    else
        echo "$DIR not found"
    fi
done

# Python folder check
if [ -d "/usr/lib/python3" ]; then
    echo "Python directory exists"
    ls -ld /usr/lib/python3
fi