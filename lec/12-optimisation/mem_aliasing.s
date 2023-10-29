	.file	"mem_aliasing.c"
	.text
	.globl	sum_rows1
	.type	sum_rows1, @function
sum_rows1:
.LFB23:
	.cfi_startproc
	endbr64
	movq	%rdi, %r10
	movl	$0, %r11d
	jmp	.L2
.L4:
	movq	%r9, %rax
	imulq	%rdx, %rax
	addq	%rdi, %rax
	movsd	(%r8), %xmm0
	addsd	(%r10,%rax,8), %xmm0
	movsd	%xmm0, (%r8)
	addl	$1, %ecx
.L3:
	movslq	%ecx, %rdi
	cmpq	%rdx, %rdi
	jl	.L4
	addl	$1, %r11d
.L2:
	movslq	%r11d, %r9
	cmpq	%rdx, %r9
	jge	.L6
	movslq	%r11d, %rax
	leaq	(%rsi,%rax,8), %r8
	movq	$0x000000000, (%r8)
	movl	$0, %ecx
	jmp	.L3
.L6:
	ret
	.cfi_endproc
.LFE23:
	.size	sum_rows1, .-sum_rows1
	.globl	sum_rows2
	.type	sum_rows2, @function
sum_rows2:
.LFB24:
	.cfi_startproc
	endbr64
	movl	$0, %r10d
	jmp	.L8
.L9:
	movq	%r9, %rax
	imulq	%rdx, %rax
	addq	%r8, %rax
	addsd	(%rdi,%rax,8), %xmm0
	addl	$1, %ecx
.L10:
	movslq	%ecx, %r8
	cmpq	%rdx, %r8
	jl	.L9
	movslq	%r10d, %rax
	movsd	%xmm0, (%rsi,%rax,8)
	addl	$1, %r10d
.L8:
	movslq	%r10d, %r9
	cmpq	%rdx, %r9
	jge	.L12
	movl	$0, %ecx
	pxor	%xmm0, %xmm0
	jmp	.L10
.L12:
	ret
	.cfi_endproc
.LFE24:
	.size	sum_rows2, .-sum_rows2
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	endbr64
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movq	$0x000000000, (%rsp)
	movq	.LC1(%rip), %rax
	movq	%rax, 8(%rsp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)
	movq	.LC3(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	.LC4(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	.LC5(%rip), %rax
	movq	%rax, 40(%rsp)
	movsd	%xmm0, 48(%rsp)
	movq	.LC6(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	.LC7(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	%rsp, %rdi
	leaq	24(%rsp), %rsi
	movl	$3, %edx
	call	sum_rows1
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L16
	movl	$0, %eax
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L16:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1073741824
	.align 8
.LC3:
	.long	0
	.long	1074790400
	.align 8
.LC4:
	.long	0
	.long	1075838976
	.align 8
.LC5:
	.long	0
	.long	1075576832
	.align 8
.LC6:
	.long	0
	.long	1075314688
	.align 8
.LC7:
	.long	0
	.long	1075970048
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
