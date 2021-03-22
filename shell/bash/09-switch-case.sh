#! /bin/bash

if [ $# -eq 0 ]; then
	echo usage: $0 -[1-4]\|--brk			# number of args = 0
	exit
fi


while [ $# -gt 0 ]; do					# parse arguments
	echo in while loop. argument = $1

	case $1 in 					# switch (option 1) 

		-1)					# case -1
			echo option = -1
			shift				# shift arguments to left by one
			;;				# break (case)
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
		*)					# default/case not found
			echo no such option
			break				# break (while loop)
			;;

	esac						# end switch-case (esac opp of case. if fi)

	echo arguments $@ 				# after every switch case
	echo
done							# while loop done all args passed

echo
echo while loop done
