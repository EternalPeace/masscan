#!/bin/bash
if [ $# != 1 ];then
	echo "usage: 	$0 port"
	echo "example:: $0 22"
	exit 
fi


cat my.log  | grep addr |grep portid=\"$1\" | awk '{print $3}' | awk -F\" '{print $2}' > masscanport$1.log
