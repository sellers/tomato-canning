#!/bin/env sh
# Paste this script into any scheduled job - weekly at least
# requires a USB mount or some other path
#
# Tested with Netgear WNDR3400 series

BASEDIR=/tmp/mnt/sda1
DEVICEDIR=$(nvram get t_fix1)

INIT=$(ls $BASEDIR/$DEVICEDIR || mkdir $BASEDIR/$DEVICEDIR)
NOW=$(date +%W)

set -x

nvram export -dump | tee $BASEDIR/$DEVICEDIR/backup.cfg
cp $BASEDIR/$DEVICEDIR/backup.cfg $BASEDIR/$DEVICEDIR/backup.$NOW.cfg


