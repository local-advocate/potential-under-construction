f1 = "01-preproc.c" 
f2 = "02-data-types.c"
f3 = "03-qualifiers.c" 
# f4 = 

curr = $(f3)

exec:  
	gcc $(curr) -c -o obj.o
	gcc obj.o -o exec.out
	./exec.out
	
debug:
	gcc $(curr) -g -o debug-exec.out
	./debug-exec.out

clean:
	rm ./*.o
	rm ./*.out
