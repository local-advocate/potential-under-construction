#include <stdio.h>
#include <unistd.h>		// ref: https://www.ibm.com/support/knowledgecenter/ssw_ibm_i_71/rtref/stdinth.htm
#include <inttypes.h>		// ref: https://debrouxl.github.io/gcc4ti/inttypes.html
#include <stddef.h>		// for size_t and ptrdiff_t and wchar_t
#include <wchar.h>		// for wint_t and wchar_t

int main(){
	
	/*----COMMON C TYPES----*/

	/*
	 * SPECIFIERS : https://www.tutorialspoint.com/format-specifiers-in-c (reference)
     	 * 	%c	Character
	 *	%d	Signed integer
	 *	%e or %E	Scientific notation of floats
	 *	%f	Float values
	 *	%g or %G	Similar as %e or %E
	 *	%hi	Signed integer (short)
	 *	%hu	Unsigned Integer (short)
	 *	%i	Unsigned integer
	 *	%l or %ld or %li	Long
	 *	%lf	Double
	 *	%Lf	Long double
	 *	%lu	Unsigned int or unsigned long
	 *	%lli or %lld	Long long
	 *	%llu	Unsigned long long
	 *	%o	Octal representation
	 *	%p	Pointer
	 *	%s	String
	 *	%u	Unsigned int
	 *	%x or %X	Hexadecimal representation
	 *	%n	Prints nothing
	 *	%%	Prints % character
	 */
	
	printf("--------common data types--------\n");
	printf("TYPE\t\t\tSIZE\t\t\tVALUE\t\t\tSPECIFIER\n\n");
	
	char c = 'c';		// 1 byte
	
	int i  = -10;		// 4 bytes  machine dependent use sizeof(int) to confirm
	unsigned int ui = -10;
	
	float f;		// 

	double d;
	long double ld;

	short s;
	unsigned short sui;

	long l;
	unsigned long ul;
	long long ll;
	unsigned long long ull;

	char *str = "hi";


	printf("char:\t\t\t %d\t\t\t %c\t\t  %s", sizeof(char), c, "\t%s\n\n");
	printf("int:\t\t\t %d\t\t\t %c\t\t  %s", sizeof(int)    , i, "\t%s\n");
	printf("uint:\t\t\t %d\t\t\t %c\t\t  %s", sizeof(char), c, "\t%s\n\n");
	printf("float:\t\t\t %d\t\t\t %c\t\t  %s",  sizeof(char), c, "\t%s\n");
	printf("float:\t\t\t %d\t\t\t %c\t\t  %s", sizeof(char),c, "\t%s\n\n");
	printf("double:\t\t\t %d\t\t\t %d\t\t  %s", sizeof(int),  i, "\t%s\n");
	printf("ldouble:\t\t %d\t\t\t %d\t\t  %s", sizeof(int), c, "\t%s\n\n");
	printf("short:\t\t\t %d\t\t\t %d\t\t  %s", sizeof(int),   i, "\t%s\n");
	printf("ushort:\t\t\t %d\t\t\t %d\t\t  %s", sizeof(int),c, "\t%s\n\n");
	printf("long:\t\t\t %d\t\t\t %d\t\t  %s", sizeof(int),    i, "\t%s\n");
	printf("ulong:\t\t\t %d\t\t\t %d\t\t  %s", sizeof(int),   i, "\t%s\n");
	printf("llong:\t\t\t %d\t\t\t %d\t\t  %s", sizeof(int),   i, "\t%s\n");
	printf("ullong:\t\t\t %d\t\t\t %d\t\t  %s", sizeof(int),i, "\t%s\n\n");
	printf("str:\t\t\t %d\t\t\t %d\t\t %s", sizeof(int),   i, "\t%s\n\n");
	printf("pointer:\t\t %d \t\t\t %d", sizeof(int),       i, "\t%s\n\n");
			
			
			

	/*----OTHER INT TYPES----*/	// (x in 8, 16, 32, 64). for scanning change PRI to SCN

	printf("\n\n--------other int types--------\n");
	printf("TYPE\t\t\tMIN\t\t\tMAX\t\t\n\n");
		
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

	printf("uint8_t:\t\t%" PRIu8 "\t\t\t%" PRIu8 "\n", 0, UINT8_MAX); 
	printf("int8_t: \t\t%" PRId8 "\t\t\t%" PRId8 "\n\n", INT8_MIN, INT8_MAX); 

	printf("uint16_t:\t\t%" PRIu16 "\t\t\t%" PRIu16 "\n", 0, UINT16_MAX); 
	printf("int16_t:\t\t%" PRId16 "\t\t\t%" PRId16 "\t\t\t\n\n", INT16_MIN, INT16_MAX); 

	printf("uint32_t:\t\t%" PRIu32 "\t\t\t%" PRIu32 "\n", 0, UINT32_MAX); 
	printf("int32_t:\t\t%" PRId32 "\t\t%" PRId32 "\t\t\n\n", INT32_MIN, INT32_MAX); 

	printf("uint64_t:\t\t%" PRIu64 "\t\t\t%" PRIu64 "\n", 0, INT64_MAX); 
	printf("int64_t:\t\t%" PRId64 "\t%" PRId64 "\n\n", INT64_MIN, INT64_MAX); 


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
	uint_least8_t   atleasteightu;   int_least8_t   atleasteights;
	uint_least8_t  atleastsixtinu;   int_least8_t  atleastsixtins;	
	uint_least8_t  atleastthrtwou;   int_least8_t  atleastthrtwos;   
	uint_least8_t   atleastsixfru;   int_least8_t   atleastsixfrs;   


	/*
	 * --fast ints: format same as least [fast in place of list]--
	 * fast for hardware; doesn't necessarily boost performance
	 */


	/*
	 * max pointers 
	 * MACROS:
	 * 	unsigned: MAX: UINTPTR_MAX. 
	 * 	signed  : MIN:  INTPTR_MIN. MAX:  INTPTR_MAX. 
	 *
	 * SPECIFIER:
	 * 	%PRIuPTR to print intptr_t or uintptr_t as unsigned dec int
	 * 	%PRIdPTR to print intptr_t or uintptr_t as signed dec int (same as %PRIiPTR)	
	 */
	uintptr_t  intptru; intptr_t intptrs;
	
	printf("uintptr_t:\t\t%" PRIuPTR "\t\t\t%" PRIuPTR "\n", 0, UINTPTR_MAX); 
	printf("intptr   :\t\t%" PRIdPTR "\t%" PRIiPTR "\n\n", INTPTR_MIN, INTPTR_MAX); 


	/*
	 * max integers 
	 * MACROS:
	 * 	unsigned: MAX: UINTMAX_MAX. 
	 * 	signed  : MIN:  INTMAX_MIN. MAX:  INTMAX_MAX. 
	 *
	 * SPECIFIER:
	 * 	%PRIu64 to print uintmax_t as unsigned 
	 * 	%PRId64 to print intmax_t or uintptr_t as signed dec int (%lld not portable)	
	 */
	uintmax_t  intmaxu; intmax_t intmaxs;
	
	printf("uintmax_t:\t\t%" PRIu64 "\t\t\t%" PRIu64 "\n", 0, UINTMAX_MAX); 
	printf("intmax_t :\t\t%" PRId64 "\t%" PRId64 "\n\n", INTMAX_MIN, INTMAX_MAX); 
	
}
