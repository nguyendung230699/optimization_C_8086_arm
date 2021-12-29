	.file	"b7.c"
	.text
	.comm	a,200,32
	.comm	i,4,4
	.comm	n,4,4
	.comm	j,4,4
	.comm	kt,4,4
	.section	.rodata
.LC0:
	.string	"Nhap so luong phan tu:"
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"\nCac so nguyen to co trong  mang va vi tri cac so do trong mang la:"
	.align 8
.LC3:
	.string	"\nso nguyen to %d vi tri %d trong mang "
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
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	n(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, i(%rip)
	jmp	.L2
.L3:
	movl	i(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L2:
	movl	i(%rip), %edx
	movl	n(%rip), %eax
	cmpl	%eax, %edx
	jl	.L3
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, i(%rip)
	jmp	.L4
.L9:
	movl	$0, kt(%rip)
	movl	$2, j(%rip)
	jmp	.L5
.L7:
	movl	i(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	j(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L6
	movl	$1, kt(%rip)
.L6:
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
.L5:
	movl	i(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	j(%rip), %eax
	cmpl	%eax, %edx
	jge	.L7
	movl	kt(%rip), %eax
	testl	%eax, %eax
	jne	.L8
	movl	i(%rip), %edx
	movl	i(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	a(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L8:
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L4:
	movl	i(%rip), %edx
	movl	n(%rip), %eax
	cmpl	%eax, %edx
	jl	.L9
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
