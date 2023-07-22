	.file	"fact.c"
	.text
	.p2align 4
	.globl	fact
	.type	fact, @function
fact:
.LFB0:
	.cfi_startproc
	endbr64
	movl	$1, %eax
	cmpq	$1, %rdi
	jle	.L1
	.p2align 4,,10
	.p2align 3
.L2:
	movq	%rdi, %rdx
	subq	$1, %rdi
	imulq	%rdx, %rax
	cmpq	$1, %rdi
	jne	.L2
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	fact, .-fact
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
