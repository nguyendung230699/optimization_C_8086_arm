	.file	"b8.c"
	.text
	.comm	a,200,32
	.comm	i,4,4
	.comm	n,4,4
	.comm	tg,4,4
	.comm	max,4,4
	.comm	j,4,4
	.globl	s
	.bss
	.align 4
	.type	s, @object
	.size	s, 4
s:
	.zero	4
	.section	.rodata
.LC0:
	.string	"nhap vao so phan tu: "
.LC1:
	.string	"%d"
.LC2:
	.string	"\nSo lon nhat =%d"
	.align 8
.LC3:
	.string	"\nvi tri cua gia tri lon nhat trong day la: "
.LC4:
	.string	"%6d"
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
	movl	a(%rip), %eax
	movl	%eax, max(%rip)
	movl	$1, i(%rip)
	jmp	.L4
.L6:
	movl	i(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	max(%rip), %eax
	cmpl	%eax, %edx
	jle	.L5
	movl	i(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, max(%rip)
.L5:
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L4:
	movl	i(%rip), %edx
	movl	n(%rip), %eax
	cmpl	%eax, %edx
	jl	.L6
	movl	max(%rip), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, i(%rip)
	jmp	.L7
.L9:
	movl	i(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	max(%rip), %eax
	cmpl	%eax, %edx
	jne	.L8
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L8:
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L7:
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
