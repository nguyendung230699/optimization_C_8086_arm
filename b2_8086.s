	.file	"b2.c"
	.text
	.comm	a,4,4
	.comm	b,4,4
	.comm	c,4,4
	.comm	max,4,4
	.section	.rodata
.LC0:
	.string	"Nhap a="
.LC1:
	.string	"%d"
.LC2:
	.string	"Nhap b="
.LC3:
	.string	"Nhap c="
	.text
	.globl	nhap
	.type	nhap, @function
nhap:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	a(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	b(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	c(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	nhap, .-nhap
	.section	.rodata
.LC4:
	.string	"gia tri lon nhat la: %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	call	nhap
	movl	a(%rip), %eax
	movl	%eax, max(%rip)
	movl	b(%rip), %edx
	movl	max(%rip), %eax
	cmpl	%eax, %edx
	jle	.L3
	movl	b(%rip), %eax
	movl	%eax, max(%rip)
.L3:
	movl	c(%rip), %edx
	movl	max(%rip), %eax
	cmpl	%eax, %edx
	jle	.L4
	movl	c(%rip), %eax
	movl	%eax, max(%rip)
.L4:
	movl	max(%rip), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
