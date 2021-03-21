# add commadlline option later
# how to pass argument

f01 = "01_hello_world.asm"
f02 = "02_data_section.asm"
f03 = "03_addressing.asm"

curr = $(f02)

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
