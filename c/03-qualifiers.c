#include <stdio.h>

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



	// AUTO


	
	// EXTERN
	

	
	// REGISTER
}

