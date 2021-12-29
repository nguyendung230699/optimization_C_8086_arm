	.file	"b5.c"
	.text
	.comm	x,4,4
	.globl	s
	.bss
	.align 4
	.type	s, @object
	.size	s, 4
s:
	.zero	4
	.comm	i,4,4
	.section	.rodata
.LC0:
	.string	"Nhap mot so nguyen duong "
.LC1:
	.string	"%d"
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
	call	puts@PLT
	leaq	x(%rip), %rsi
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
.LC2:
	.string	"%d la so hoan hao"
.LC3:
	.string	"%d khong phai la so hoan hao"
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
	movl	$1, i(%rip)
	jmp	.L3
.L5:
	movl	x(%rip), %eax
	movl	i(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L4
	movl	s(%rip), %edx
	movl	i(%rip), %eax
	addl	%edx, %eax
	movl	%eax, s(%rip)
.L4:
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L3:
	movl	i(%rip), %edx
	movl	x(%rip), %eax
	cmpl	%eax, %edx
	jl	.L5
	movl	s(%rip), %edx
	movl	x(%rip), %eax
	cmpl	%eax, %edx
	jne	.L6
	movl	x(%rip), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L7
.L6:
	movl	x(%rip), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L7:
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
