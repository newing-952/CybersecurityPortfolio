#!/bin/bash

output=$HOME/research/sys_info.txt

if [ -d ~/research ]
then
# Do nothing
tmp1="Doing Nothing"
#	echo "Doing nothing"
else
	mkdir ~/research
fi

if [ -f ~/research/sys_info.txt ]
then
	rm ~/research/sys_info.txt
fi

var1=$(ip addr | grep inet | tail -2 | head -1)
var2=$(find /home -type f -perm 777)

# echo $var1
# echo $var2

if [ $(whoami) = 'root' ]
then
	echo "Don't run this as root"
fi


NOW=$(date +"%d-%m-%Y")
echo -e "System Information as of $NOW\n" >> $output
echo "Operating System is $(uname -a)" >> $output
ipadd=$(ip addr show dev enp0s3 | grep inet | head -1 | awk {'print$2'})
echo "The IP Address is $ipadd" >> $output
echo "The Hostname is $HOSTNAME" >> $output

