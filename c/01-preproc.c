// default search path: cpp -v
#include <stdio.h>			// <file> searches in system path. can be prepended with -I
#include "01-preproc.h"			// "file.h" searches in local dir first. can be prepended w/ -iquote

#include "01-preproc.h"			// will only be included once

 
// --------------------MACROS-------------------
#define MACRO_STR "ref: https://gcc.gnu.org/onlinedocs/cpp/index.html#SEC_Contents\n"  
#define CONT	  "cont: https://gcc.gnu.org/onlinedocs/cpp/Computed-Includes.html#Computed-Includes\n"

#define CONST 10    			// CONST = 10

#define FUNC

int main(){
	printf(CONT);

}
