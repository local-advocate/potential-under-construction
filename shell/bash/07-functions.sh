#! /bin/bash

function func1() {
	echo "in func 1"
	echo "arguments: $@"
	
	return="func1 out"
	echo "func1 return: $return"

	func2 called by func1 
}

function func2() {
	echo ""
	echo "in func 2"
	echo "arguments: $@"
	
	return="func2 out"
	echo "func2 return: $return"

}

func1 called from "main" 
