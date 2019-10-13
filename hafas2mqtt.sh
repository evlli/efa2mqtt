#!/bin/bash
while true
do	
	hafas-m  "Freiburg Hbf" | grep -v '^#' | sed -r '/^\s*$/d' >> efa.tmp
	clear
	cat efa.tmp
    cat efa.tmp | xargs -I "%1" -E '1' mosquitto_pub -h 172.16.0.69 -t 'data/fahrplan' -m "%1"
	sleep 1
	rm efa.tmp
	sleep 10
done
