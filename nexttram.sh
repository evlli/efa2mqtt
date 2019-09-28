#!/bin/bash
while true
do	
	efa-m -u "http://efa.vagfr.de/vagfr3/XSLT_DM_REQUEST?&language=de" "Freiburg im Breisgau" "$1" | grep -v '^#' | sed -r '/^\s*$/d' >> efa.tmp
	clear
	cat efa.tmp
	sleep 1
	rm efa.tmp
	sleep 10
done
