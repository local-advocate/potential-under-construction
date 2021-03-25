#include <stdio.h>


void print1darr(void *p, int size, char *type){
	switch(type){
		case "int":
			p = (int *) p;
			printf("in int\n");
			break;
	}
}



int main(){

	/*----ARRAYS----*/
	int intarr[5] = {0, 1, 2, 3, 4};
	double doubarr[] = {1.1, 2.22, 3.333, 4.4444};
	char str[] = "an array of characters"; 
	char arrofstr[][4] = {"str1", "str2", "str3", "str4"};
	print1darr(intarr, sizeof(intarr)/sizeof(int), "int");


}
