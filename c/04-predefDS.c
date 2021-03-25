#include <stdio.h>

enum arrtype {INT, CHAR, DOUBLE};

void print1darr (int *p, int size, int type){
	switch(type) {

		case INT:
			for (int i =0; i < size; i++) {
				printf("int-arr[%d]: %d\t", i, *(p+i));
			}
			printf("\n");
			break;

		case DOUBLE:
			for (int i =0; i < size; i++) {
				printf("double-arr[%d]: %lf\t", i, *(p+i));
			}
			printf("\n");
			break;

	}
}



int main(){

	/*----ARRAYS----*/
	int intarr[5] = {0, 1, 2, 3, 4};
	double doubarr[] = {1.1, 2.22, 3.333, 4.4444};
	char str[] = "an array of characters"; 
	char arrofstr[][4] = {"str1", "str2", "str3", "str4"};


	print1darr(intarr, sizeof(intarr)/sizeof(int), INT);
	print1darr(doubarr, sizeof(doubarr)/sizeof(double), DOUBLE);


}
