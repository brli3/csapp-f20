	.file	"char2unsigned.c"
	.text
	.globl	char2unsigned
	.type	char2unsigned, @function
char2unsigned:
.LFB0:
	.cfi_startproc
	endbr64
	movsbl	(%rdi), %eax
	movl	%eax, (%rsi)
	ret
	.cfi_endproc
.LFE0:
	.size	char2unsigned, .-char2unsigned
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04.1) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
