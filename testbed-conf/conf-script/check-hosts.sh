#!/bin/bash

sbin=`dirname "$0"`
sbin=`cd "$sbin"; pwd`

PINGS=`cat ${sbin}/ping_list`

ARRAY=(10 20 30 40)

for ip in $PINGS; do
	if [[ "$ip" == \#* ]]; then
		continue
	fi
	echo "ping host $ip got"
	echo `ping -c 5 -w 5 $ip | grep "packet loss"`

	#ping path
	IFS='.' read -a ids <<< "${ip}"
	for pid in ${ARRAY[@]}; do
		PIP="${ids[0]}.${ids[1]}.${ids[2]}.$((${ids[3]} + ${pid}))"
		echo "ping path $PIP got"
		echo `ping -c 5 -w 5 $PIP | grep "packet loss"`
	done
		
done



