#/bin/bash

ASM=$1

nasm -f elf -F dwarf -g $ASM

comp="${ASM%%.*}"

dotO="$comp.o"

ld -m elf_i386 -o $comp $dotO
