	.file	"cond_goto.c"
	.text
	.globl	cond_goto
	.type	cond_goto, @function
cond_goto:
.LFB0:
	.cfi_startproc
	endbr64
	testw	%di, %di
	je	.L1
	cmpw	%di, (%rsi)
	jge	.L1
	movw	%di, (%rsi)
.L2:
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	cond_goto, .-cond_goto
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
