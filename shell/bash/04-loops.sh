#! /bin/bash

i=0

# ------------WHILE-------------
echo "WHILE LOOP"
while (( $i < 10 ))			# [ $i < 1] file op. not while = until
do
	echo $i
	i=$(( i+1 ))			# $i+1 string op. 
done


# -----------FOR---------------
echo "FOR LOOP (python)"		# {start..end..step}
for i in {0..10..2}
do
	echo $i
done

echo "FOR LOOP (c)"
for (( i=0; i<=10; i++ ))
do

	if [ $i -gt 4 ]
	then
		break
	else
		echo $i
		continue		# jump back to loop
	fi

	echo "will never get executed"

done
