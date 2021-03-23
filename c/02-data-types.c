#include <stdio.h>
#include <unistd.h>		// ref: https://www.ibm.com/support/knowledgecenter/ssw_ibm_i_71/rtref/stdinth.htm
#include <inttypes.h>		// ref: https://debrouxl.github.io/gcc4ti/inttypes.html

int main(){
	printf("TYPE\t\t\tMIN\t\tMAX\n\n");

	/*----INT TYPES----*/
	int8_t   eights; //use with %PRId8 to print as signed. use with %PRIu8 to print as unsigned.
	int16_t sixtins;
	int32_t thrtwos;
	int64_t  sixfrs;

	printf("uint8_t:\t\t%" PRIu8 "\t\t%" PRIu8 "\n", 0, UINT8_MAX); 
	printf("int8_t: \t\t%" PRId8 "\t\t%" PRId8 "\n\n", INT8_MIN, INT8_MAX); 

	printf("uint16_t:\t\t%" PRIu16 "\t\t%" PRIu16 "\n", 0, UINT16_MAX); 
	printf("int16_t:\t\t%" PRId16 "\t\t%" PRId16 "\t\t\n\n", INT16_MIN, INT16_MAX); 

	printf("uint32_t:\t\t%" PRIu32 "\t\t%" PRIu32 "\n", 0, UINT32_MAX); 
	printf("int32_t:\t\t%" PRId32 "\t%" PRId32 "\t\n\n", INT32_MIN, INT32_MAX); 

	printf("uint64_t:\t\t%" PRIu64 "\t\t%" PRIu64 "\n", 0, INT64_MAX); 
	printf("int64_t:\t\t%" PRId64 "\t\t%" PRId64 "\n", INT64_MIN, INT64_MAX); 


}
