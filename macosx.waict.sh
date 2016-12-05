#!/bin/bash

clear 
for x in $(netstat -an | awk {'print $5'} | grep "[0-9]\..[0-9].*" | sed 's/\./ /g' | awk {'print $1"."$2"."$3"."$4'})
do
echo
echo "IP: $x"
echo
whois $x | grep -i "netname"
done
