#!/bin/bash

#  ver .2
#  tell the last time apt update was run

LAST_UPDATED=$( stat --format="%X" /var/cache/apt/pkgcache.bin )
UNIX_TIME=$( date +%s )
TIME_DIFF=$((( UNIX_TIME - LAST_UPDATED ) / 86400))
#GTIME="stat --format='%X' /etc/pihole/gravity.db"
#GRAVITY_TIME=strftime($GTIME,"%m/%d/%y %H:%M:%S")

echo "the last time apt update ran was: $LAST_UPDATED.  This was $TIME_DIFF days ago."
echo "pihole gravity db was last updated: $GRAVITY_TIME"
