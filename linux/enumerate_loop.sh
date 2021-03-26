#!/bin/bash

#
# Given a range of IP addresses by RockStar Corp, enumerate through for analysis
#

list="15.199.94.91/28 15.199.94.91/28 11.199.158.91/28 167.172.144.11/32 11.199.141.91/28"

for ip in $list
do
	echo -en '\nCOMMAND EXECUTED: fping ' $ip '\n\n' >> enumerate.txt
	fping -g $ip >> enumerate.txt
done
for ip in $list
do
	echo -en '\nCOMMAND EXECUTED: nmap -sS ' $ip '\n\n' >> enumerate.txt
	sudo nmap -sS $ip >> enumerate.txt
done


for ip in $list
do
	echo -en '\nCOMMAND EXECUTED: nslookup ' $ip '\n\n' >> enumerate.txt
	nslookup $ip >> enumerate.txt
done
