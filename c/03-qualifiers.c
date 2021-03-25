#include <stdio.h>
#include "03-qualifiers.h"		// declaration of extint1

int extint1 = 99;			// definition of extint1 (accessible by any file that declare it)

int main(){

	/*
	 * QUALIFIER CATEGORY
	 * ref  : https://stackoverflow.com/questions/5103726/what-are-qualifiers-in-the-c-language
	 * type	: signed, unsigned, short, long, long long, const, volatile, static, auto, extern, register
	 * func : static, extern, inline, auto?
	 * data structs?
	 */


	/*----data----*/

	/* (see 02-data-types.c for signed, unsigned, short, long, long long) */
	int temp1 = 0;
    	int temp2 = 0;
 

	// STATIC (access right) 
	static int stint1 = 10;			// cant be accessed through different file


	// CONST (unmodifiable)
	const int conint1 = -1;			// cannot be modified
	int const conint2 =  9;			// same as above. illegal conint+=1

	const int *ptr1 = &conint1;		// pointer to constant. illegal: *ptr = x; legal ptr = &x;
	int const *ptr2 = &conint2;		// same as above. ptr to a const.

	int *const ptr3 = &temp1;		// constant pointer to int. illegal ptr = &x. legal *ptr = x;

	const int *const ptr4 = &conint1;	// const int const ptr. illegal ptr = &x, *ptr = x;


	// VOLATILE


	/* 
	 * EXTERN (see global vars) [global variables from other file can't be accessed without extern dec]
	 * - used to tell linker that variable is defined somewhere else (globally)
	 * - declaration (extern int x) usually done in header file
	 * - definition (int x = f) done in one file only	
	 */
	//extern int extint1;			// declared in "03-qualifiers.h". defined in this file.
	printextern();				// declared in "03-qualifiers.h". defined in 03-extern-test.c
	

	// REGISTER
	

	/*
	 * AUTO
	 * - mainly kept due to backwards compatibality
	 * - used to declare variable with function (local to it) [var destroyed when out of scope]
	 * - done automatically in c though, so no use 
	 */  
}
