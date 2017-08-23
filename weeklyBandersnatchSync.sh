
#!/bin/bash

#unmount and remount share drive to ensure a proper sync

umount -l /mnt/patches

mount -a

#Define sync directory, source directory, and amount of days to be synced. 
SRC_DIR=/home/bandersnatch
DEST_DIR=/mnt/patches/PyPi-Export-$(date +%Y-%m-%d_%H:%M)
DAYS_SINCE=27

mkdir $DEST_DIR

#Find command to retrieve the files to copy

find "${SRC_DIR}" -type f -mtime -"${DAYS_SINCE}" -exec cp '{}' "${DEST_DIR}" ';'
