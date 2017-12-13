#!/bin/bash

if [ -n "$1" ];then
	echo "compiling $1"
	name=$(echo $1|sed 's/\..*$//')
	#echo "deal name is"$name
	as -gstabs -o $name".o" $1
	if [ $? -eq 0 ];then
		ld -o $name $name".o"
	fi
	if [ -f $name ];then
		#if [ -f $name ];then
		#	rm $name".o"
		#fi
		echo "done!"
	fi
else
	echo "param is empty"
fi
