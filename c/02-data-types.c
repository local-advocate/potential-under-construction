#include <stdio.h>
#include <unistd.h>		// ref: https://www.ibm.com/support/knowledgecenter/ssw_ibm_i_71/rtref/stdinth.htm
#include <inttypes.h>		// ref: https://debrouxl.github.io/gcc4ti/inttypes.html

int main(){
	printf("TYPE\t\t\tMIN\t\tMAX\n\n");

	/*----INT TYPES----*/	// (x in 8, 16, 32, 64).

		
	/*
	 * --unsigned or signed (abs size)--
	 *  MACROS:
	 *  	unsigned: MAX: UNITx_MAX.
	 * 	signed  : MIN:  INTx_MIN.  MAX: INTx_MAX.
	 *  
	 *  SPECIFIER:
	 * 	%PRIuX to print as unsigned.
	 * 	%PRIdX to print as signed. 
	 *
	 */
	uint8_t  eightu;  int8_t    eights;
	uint16_t sixtinu; int16_t  sixtins;
	uint32_t thrtwou; int32_t  thrtwos;
	uint64_t  sixfru; int64_t   sixfrs;

	printf("uint8_t:\t\t%" PRIu8 "\t\t%" PRIu8 "\n", 0, UINT8_MAX); 
	printf("int8_t: \t\t%" PRId8 "\t\t%" PRId8 "\n\n", INT8_MIN, INT8_MAX); 

	printf("uint16_t:\t\t%" PRIu16 "\t\t%" PRIu16 "\n", 0, UINT16_MAX); 
	printf("int16_t:\t\t%" PRId16 "\t\t%" PRId16 "\t\t\n\n", INT16_MIN, INT16_MAX); 

	printf("uint32_t:\t\t%" PRIu32 "\t\t%" PRIu32 "\n", 0, UINT32_MAX); 
	printf("int32_t:\t\t%" PRId32 "\t%" PRId32 "\t\n\n", INT32_MIN, INT32_MAX); 

	printf("uint64_t:\t\t%" PRIu64 "\t\t%" PRIu64 "\n", 0, INT64_MAX); 
	printf("int64_t:\t\t%" PRId64 "\t\t%" PRId64 "\n", INT64_MIN, INT64_MAX); 


	/*
	 * --least ints: atleast x size--
	 *  MACROS:
	 *  	unsigned: MAX: UINT_LEASTx_MAX.
	 * 	signed  : MIN:  INT_LEASTx_MIN. MAX: UINT_LEASTx_MAX.
	 *  
	 *  SPECIFIER:
	 * 	%PRIuLEASTx to print as unsigned.
	 * 	%PRIdLEASTx to print as signed. 
	 *
	 */
	uint_least8_t  atleasteights;   int_least8_t  atleasteights;
	uint_least8_t  atleasteights;   int_least8_t  atleasteights;	
	uint_least8_t  atleasteights;   int_least8_t  atleasteights;   
	uint_least8_t  atleasteights;   int_least8_t  atleasteights;   
}
