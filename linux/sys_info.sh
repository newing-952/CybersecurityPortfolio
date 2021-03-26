#!/bin/bash

NOW=$(date +"%d-%m-%Y")
echo -e "System Information as of $NOW\n"
echo "Operating System is $(uname -a)"
ipadd=$(ip addr show dev enp0s3 | grep inet | head -1 | awk {'print$2'})
echo "The IP Address is $ipadd"
echo "The Hostname is $HOSTNAME"



