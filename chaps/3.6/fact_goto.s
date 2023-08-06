	.file	"fact_goto.c"
	.text
	.globl	fact_goto
	.type	fact_goto, @function
fact_goto:
.LFB39:
	.cfi_startproc
	endbr64
	movl	$2, %eax
	movl	$1, %ecx
	jmp	.L2
.L4:
	imulq	%rdx, %rcx
	addl	$1, %eax
.L2:
	movslq	%eax, %rdx
	cmpq	%rdi, %rdx
	jle	.L4
	movq	%rcx, %rax
	ret
	.cfi_endproc
.LFE39:
	.size	fact_goto, .-fact_goto
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"factorial(%ld) = %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB40:
	.cfi_startproc
	endbr64
	cmpl	$1, %edi
	jle	.L8
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	8(%rsi), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol@PLT
	movslq	%eax, %rbx
	movq	%rbx, %rdi
	call	fact_goto
	movq	%rax, %rcx
	movq	%rbx, %rdx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L8:
	.cfi_restore 3
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE40:
	.size	main, .-main
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
