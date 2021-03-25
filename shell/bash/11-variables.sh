#!/bin/bash

#----int-var----#
intvar=10						# w/ _ interpreted as command
echo $intvar						# $var: gives value of var. same as ${var}
echo "intvar is ${intvar}"				# "" no interfernce with var substitution
echo 'intvar is $intvar'				# '' does not substitute $var's value
echo


#----str-var----#
strvar="A b   c     D"					# "" required if _ in variable value
echo $strvar						# does not preserve spaces. same with ${var}
echo "$strvar"						# preserves spaces
echo 'strvar is $strvar'				# again no subsitution
unset strvar						# sets its value to null
echo


#----null-var----#
nullvar=						# null value (same result as after unsetting)
if [ -z $nullvar ]; then				# -z checks for null value (works for strvar too)
	echo '$nullvar is null'
fi
echo


#----plain-var----#

