#!/bin/bash

sbin=`dirname "$0"`
sbin=`cd "$sbin"; pwd`

SLAVES=`cat ${sbin}/hosts`

LABEL="--delete"

. "$sbin/copy-dir.sh" $LABEL $sbin

for slave in $SLAVES; do
    IFS='.' read -a ids <<< "${slave}"
    echo "start $sbin/config_${ids[3]}.sh on $slave"
    exec ssh $slave $sbin/config_${ids[3]}.sh & 
done



