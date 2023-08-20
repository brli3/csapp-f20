	.file	"read_numbers.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d %d %d %d %d %d"
	.text
	.globl	read_numbers
	.type	read_numbers, @function
read_numbers:
.LFB23:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	pushq	16(%rsp)
	.cfi_def_cfa_offset 24
	pushq	%r9
	.cfi_def_cfa_offset 32
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	leaq	.LC0(%rip), %rsi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	read_numbers, .-read_numbers
	.section	.rodata.str1.1
.LC1:
	.string	"Usage: %s a1 a2 a3 a4 a5 a6\n"
.LC2:
	.string	"sscanf failed"
.LC3:
	.string	"Numbers: %d %d %d %d %d %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jle	.L9
	leaq	8(%rsp), %rcx
	leaq	4(%rsp), %rdx
	movq	%rsp, %rax
	movq	8(%rsi), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 56
	leaq	28(%rsp), %rsi
	pushq	%rsi
	.cfi_def_cfa_offset 64
	leaq	32(%rsp), %r9
	leaq	28(%rsp), %r8
	movq	%rax, %rsi
	call	read_numbers
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L10
	movl	20(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 56
	movl	24(%rsp), %eax
	pushq	%rax
	.cfi_def_cfa_offset 64
	movl	28(%rsp), %r9d
	movl	24(%rsp), %r8d
	movl	20(%rsp), %ecx
	movl	16(%rsp), %edx
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	movl	$0, %eax
.L3:
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L11
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L9:
	.cfi_restore_state
	movq	(%rsi), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	$1, %eax
	jmp	.L3
.L10:
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	movl	$1, %eax
	jmp	.L3
.L11:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE24:
	.size	main, .-main
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
