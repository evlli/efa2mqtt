#!/bin/bash
while true
do	
	hafas-m  "Freiburg Hbf" | grep -v '^#' | sed -r '/^\s*$/d' >> efa.tmp
	clear
	cat efa.tmp
	sleep 1
	rm efa.tmp
	sleep 10
done
