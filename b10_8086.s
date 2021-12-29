	.file	"b10.c"
	.text
	.globl	MAX
	.section	.rodata
	.align 4
	.type	MAX, @object
	.size	MAX, 4
MAX:
	.long	100
.LC0:
	.string	"\nNhap phan tu a[%d] = "
.LC1:
	.string	"%d"
	.text
	.globl	NhapMang
	.type	NhapMang, @function
NhapMang:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L3
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	NhapMang, .-NhapMang
	.globl	TimKiem
	.type	TimKiem, @function
TimKiem:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L5
.L8:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jne	.L6
	movl	-4(%rbp), %eax
	jmp	.L7
.L6:
	addl	$1, -4(%rbp)
.L5:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L8
	movl	$-1, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	TimKiem, .-TimKiem
	.section	.rodata
.LC2:
	.string	"\nNhap so luong phan tu: "
.LC3:
	.string	"\nNhap lai so luong phan tu: "
.LC4:
	.string	"\n======NHAP MANG====="
.LC5:
	.string	"\nNhap vao gia tri can tim: "
	.align 8
.LC6:
	.string	"\nTim thay so %d tai chi so %d!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	$100, %eax
	cltq
	subq	$1, %rax
	movq	%rax, -40(%rbp)
	movl	$100, %eax
	cltq
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$100, %eax
	cltq
	movq	%rax, %rdx
	movl	$0, %ecx
	movl	$100, %eax
	cltq
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -32(%rbp)
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L12:
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	jle	.L10
	movl	-48(%rbp), %eax
	movl	$100, %edx
	cmpl	%edx, %eax
	jle	.L11
.L10:
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L11:
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	jle	.L12
	movl	-48(%rbp), %eax
	movl	$100, %edx
	cmpl	%edx, %eax
	jg	.L12
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	-48(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	NhapMang
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	TimKiem
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	%rbx, %rsp
	movl	$0, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
