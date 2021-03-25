#include <stdio.h>

int main(){

	/*----ARRAYS----*/
	int intarr[5] = {0, 1, 2, 3, 4};				// 1d array
	double doubarr[] = {1.1, 2.22, 3.333, 4.4444};
	char str[] = "an array of characters";				// size = sizeof(str)/sizeof(char) 
	char arrofstr[][4] = {"str1", "str2", "str3", "str4"};		// 2d arr 


	/*----STRUCT----*/
	struct health {
		int height;
		double weight;
		char *bloodtype;
	};

	typedef struct {
		unsigned int cores : 5;		// max 5 bits
		float weight;
		unsigned int mem   : 5; 	// in gb
	} laptop;

	struct health h1;
	h1.height = 78; h1.weight = 190.88; h1.bloodtype = "o+";

	laptop l1 = {4, 10.99, 8};
	laptop l2 = {.cores = 2, .mem = 4, .weight = 3.99};

}
