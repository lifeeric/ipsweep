#!/bin/bash

# Basic Script for Ip Sweeping
# show the UP IP only

# if non paramerter passed

if [ -z $1 ]
then
	echo "ipsweep : not found ip";
	echo "Syntax: ipsweep 192.168.1"
	exit 0
fi

for ip in `seq 1 254`;
do
	ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f4 | tr -d ":" &
done



exit 0
