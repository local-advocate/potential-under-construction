#! /bin/bash

int_arr=(1 2, '3', 4,"5")			# elements separated by space
str_arr=(hi, 'hello', "bye")


echo first char ${int_arr[0]}
echo len of int_arr: ${#int_arr}
echo int_arr:	     ${int_arr[@]}

echo

echo len of str_arr: ${#str_arr}
echo str_arr:	     ${str_arr[@]}
