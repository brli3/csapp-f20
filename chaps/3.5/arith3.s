	.file	"arith3.c"
	.text
	.globl	arith3
	.type	arith3, @function
arith3:
.LFB0:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	orl	%esi, %edx
	sarw	$9, %dx
	notl	%edx
	subl	%edx, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	arith3, .-arith3
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
