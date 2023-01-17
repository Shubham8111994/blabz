#!/bin/bash

for name in `awk '`
do
	if (("$userid" >= 1000)); 
	then
	echo `cat /etc/passwd | grep $userid | awk -F : 'print $2'`;
	fi
done
