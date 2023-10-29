	.file	"cacheExperiment.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	endbr64
	movl	$0, %r8d
	jmp	.L2
.L3:
	movslq	%edi, %rcx
	movslq	%edx, %rax
	salq	$11, %rax
	addq	%rcx, %rax
	leaq	src(%rip), %rcx
	movl	(%rcx,%rax,4), %esi
	leaq	dst(%rip), %rcx
	movl	%esi, (%rcx,%rax,4)
	addl	$1, %edx
.L4:
	cmpl	$2047, %edx
	jle	.L3
	addl	$1, %edi
.L5:
	cmpl	$2047, %edi
	jg	.L8
	movl	$0, %edx
	jmp	.L4
.L8:
	addl	$1, %r8d
.L2:
	cmpl	$9, %r8d
	jg	.L9
	movl	$0, %edi
	jmp	.L5
.L9:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.globl	dst
	.bss
	.align 32
	.type	dst, @object
	.size	dst, 16777216
dst:
	.zero	16777216
	.globl	src
	.align 32
	.type	src, @object
	.size	src, 16777216
src:
	.zero	16777216
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
