#!/bin/bash
n=`ping -c10 10.0.2.5 | grep 'packet' |awk -F'%' '{print $1}' |awk '{print $NF}' `

while :
do
	if [ $n -ge 50 ]
	then
		echo "the server may need restart"
	fi
	sleep 20
done
