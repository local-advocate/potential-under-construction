#! /bin/bash

echo Directory name: 
read dirName

if [ -d $dirName ]; then
	echo $dirName exists
elif [ -d ../$dirName ]; then
	echo $dirName exists in parent directory 
else
	echo $dirName not found
fi

echo

echo File name:
read fileName

if [ -f $fileName ]; then
	echo $fileName exists
else
	echo $fileName not found
fi

