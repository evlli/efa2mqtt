#!/bin/bash
while true
do	
	efa-m  "Freiburg im Breisgau" HbF | grep -v "# ICE International" | sed -r '/^\s*$/d' >> efa.tmp
	clear
	cat efa.tmp
	sleep 1
	rm efa.tmp
	sleep 10
done
