#!/bin/bash
while true
do	
	efa-m -u "http://efa.vagfr.de/vagfr3/XSLT_DM_REQUEST?&language=de" "Freiburg im Breisgau" "$1" | grep -v '^#' | sed -r '/^\s*$/d' >> efa.tmp
	clear
	cat efa.tmp
    cat efa.tmp | xargs -I "%1" -E '1' mosquitto_pub -h 172.16.0.69 -t 'data/fahrplan' -m "%1"
	sleep 1
	rm efa.tmp
	sleep 10
done
