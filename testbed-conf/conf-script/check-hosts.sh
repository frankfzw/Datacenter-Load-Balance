#!/bin/bash

sbin=`dirname "$0"`
sbin=`cd "$sbin"; pwd`

PINGS=`cat ${sbin}/ping_list`



for ip in $PINGS; do
	if [[ "$ip" == \#* ]]; then
		continue
	fi
	echo "ping $ip got"
	echo `ping -c 5 -w 5 $ip | grep "packet loss"`
done



