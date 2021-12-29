	.file	"b1.c"
	.text
	.comm	i,4,4
	.globl	s
	.bss
	.align 4
	.type	s, @object
	.size	s, 4
s:
	.zero	4
	.comm	n,4,4
	.section	.rodata
.LC0:
	.string	"Nhap n:"
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"Tong binh phuong cac so le be hon %d la: %d"
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
	movl	$1, i(%rip)
	jmp	.L2
.L4:
	movl	i(%rip), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L3
	movl	i(%rip), %edx
	movl	i(%rip), %eax
	imull	%eax, %edx
	movl	s(%rip), %eax
	addl	%edx, %eax
	movl	%eax, s(%rip)
.L3:
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L2:
	movl	i(%rip), %edx
	movl	n(%rip), %eax
	cmpl	%eax, %edx
	jl	.L4
	movl	s(%rip), %edx
	movl	n(%rip), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
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
