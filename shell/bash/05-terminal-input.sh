#! /bin/bash

# echo $0 $1 $2 $3			# $0: file name and the consecutive inputs

arg_arr=("$@")				# array of input arguments 

<<useless
i=0
for (( i = 0; i < $#; i++ ))		# $#: length of array/args
do
	echo ${arg_arr[i]}
done
useless

echo $@					# print all args
