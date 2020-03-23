#!/bin/bash
s=`date +%F`
dir=/home/zhang/log

if [ ! -d $dir ]
then
	mkdir -p $dir
fi

df -h > $dir/$s.log 
find $dir/ -mtime +365 | xargs rm 2>/dev/null
