# add commadlline option later
# how to pass argument

f01 = "01_hello_world.asm"
f02 = "02_data_section.asm"
f03 = "03_nasm_directives.asm"
f04 = "04_addressing.asm"
f05 = "05_loops_and_math.asm"
tmp = "temp.asm"

curr = $(f04)

exec: 
	nasm -f elf32 -o obj.o $(curr)
	ld -m elf_i386 -o exec.out obj.o
	./exec.out
debug:
	nasm -f elf32 -g -o debug_obj.o $(curr)
	ld -m elf_i386 -o debug_exec.out debug_obj.o
	./debug_exec.out

clean:
	rm obj.o
	rm exec.elf
