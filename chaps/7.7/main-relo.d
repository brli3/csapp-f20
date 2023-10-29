
main.o:     file format elf64-x86-64
main.o
architecture: i386:x86-64, flags 0x00000011:
HAS_RELOC, HAS_SYMS
start address 0x0000000000000000

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         0000002a  0000000000000000  0000000000000000  00000040  2**0
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
  1 .data         00000008  0000000000000000  0000000000000000  00000070  2**3
                  CONTENTS, ALLOC, LOAD, DATA
  2 .bss          00000000  0000000000000000  0000000000000000  00000078  2**0
                  ALLOC
  3 .comment      0000002c  0000000000000000  0000000000000000  00000078  2**0
                  CONTENTS, READONLY
  4 .note.GNU-stack 00000000  0000000000000000  0000000000000000  000000a4  2**0
                  CONTENTS, READONLY
  5 .note.gnu.property 00000020  0000000000000000  0000000000000000  000000a8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .eh_frame     00000038  0000000000000000  0000000000000000  000000c8  2**3
                  CONTENTS, ALLOC, LOAD, RELOC, READONLY, DATA
SYMBOL TABLE:
0000000000000000 l    df *ABS*	0000000000000000 main.c
0000000000000000 l    d  .text	0000000000000000 .text
0000000000000000 g     O .data	0000000000000008 array
0000000000000000 g     F .text	000000000000002a main
0000000000000000         *UND*	0000000000000000 sum



Disassembly of section .text:

0000000000000000 <main>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	be 02 00 00 00       	mov    $0x2,%esi
  11:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 18 <main+0x18>
			14: R_X86_64_PC32	array-0x4
  18:	48 89 c7             	mov    %rax,%rdi
  1b:	e8 00 00 00 00       	call   20 <main+0x20>
			1c: R_X86_64_PLT32	sum-0x4
  20:	89 45 fc             	mov    %eax,-0x4(%rbp)
  23:	b8 00 00 00 00       	mov    $0x0,%eax
  28:	c9                   	leave  
  29:	c3                   	ret    
