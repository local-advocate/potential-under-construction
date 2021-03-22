#! /bin/bash

while [ $# -gt 0 ]; do
	echo in while loop
	case $1 in 
		-1)
			echo option = -1
			shift
			;;
		-2)
			echo option = -2
			shift
			;;
		-3)
			echo option = -3
			shift
			;;
		-4)
			echo option = -4
			shift
			;;
		--brk)
			echo breaking loop
			break
			;;
		*)
			echo no such option
			break
			;;
	esac

done
