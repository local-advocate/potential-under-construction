#!/bin/bash

condition=0

if (( $condition > 1 )) 
then
	echo "condition is greater than one"

elif (( $condition== 1 ))
then	
	echo "condition is one"

else 
	echo "false"
fi


num=10

if [ $num -gt 1 ] && [ $num -lt 20 ]
then
	echo "num in between 1 and 20"
fi

if [[ $num -lt 0 || $num -gt 0 ]]            # if [ $num < 0 -o $num > 0 ]
then
	echo "well duh"
fi
