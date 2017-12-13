#!/bin/bash

#TODO use makefile to compile program 
if [ -n "$1" ];then
	echo "compiling $1"
	
	if [ ! -d build ];then
		mkdir build
	fi
	buildDir=build/

	name=$(echo $1|sed 's/\..*$//')
	#echo "deal name is"$name
	as -gstabs -o $buildDir$name".o" $1
	if [ $? -eq 0 ];then
		ld -o $buildDir$name $buildDir$name".o"
	fi
	if [ -f $buildDir$name ];then
		#if [ -f $name ];then
		#	rm $name".o"
		#fi
		echo "done!"
	fi
else
	echo "param is empty"
fi
