# add commadlline option later
# how to pass argument

f01 = "01_hello_world.asm"
f02 = "02_data_section.asm"

curr = $(f02)

exec: 
	nasm -f elf32 -o obj.o $(curr)
	ld -m elf_i386 -o exec.elf obj.o
	./exec.elf

clean:
	rm obj.o
	rm exec.elf
