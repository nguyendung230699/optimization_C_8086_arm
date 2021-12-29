	.file	"b4.c"
	.text
	.comm	x,4,4
	.comm	y,4,4
	.comm	a,4,4
	.comm	b,4,4
	.section	.rodata
.LC0:
	.string	"Nhap a,b = "
.LC1:
	.string	"%d%d"
.LC2:
	.string	"Uoc chung lon nhat la %d"
.LC3:
	.string	"\nBoi chung nho nhat la %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
.L2:
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	b(%rip), %rdx
	leaq	a(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	a(%rip), %eax
	testl	%eax, %eax
	jle	.L2
	movl	b(%rip), %eax
	testl	%eax, %eax
	jle	.L2
	movl	a(%rip), %eax
	movl	%eax, x(%rip)
	movl	b(%rip), %eax
	movl	%eax, y(%rip)
	jmp	.L3
.L5:
	movl	a(%rip), %edx
	movl	b(%rip), %eax
	cmpl	%eax, %edx
	jle	.L4
	movl	a(%rip), %edx
	movl	b(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, a(%rip)
	jmp	.L3
.L4:
	movl	b(%rip), %edx
	movl	a(%rip), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, b(%rip)
.L3:
	movl	a(%rip), %edx
	movl	b(%rip), %eax
	cmpl	%eax, %edx
	jne	.L5
	movl	a(%rip), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	x(%rip), %edx
	movl	y(%rip), %eax
	imull	%edx, %eax
	movl	a(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
