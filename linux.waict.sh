#!/bin/bash

# https://github.com/geek4unix/WAICT.git

clear
for x in $(netstat -an | grep "[0-9].[0-9].[0-9].[0-9].*\:" | grep -v "0.0.0.0" | awk {'print $5'} | sed 's/:/ /g' | awk {'print $1'})
do
echo "$x"
echo
whois $x | grep -i "netname"
done
