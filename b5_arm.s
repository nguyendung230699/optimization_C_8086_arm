	.arch armv5t
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"b5.c"
	.text
	.comm	x,4,4
	.global	s
	.bss
	.align	2
	.type	s, %object
	.size	s, 4
s:
	.space	4
	.comm	i,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Nhap mot so nguyen duong \000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.text
	.align	2
	.global	nhap
	.syntax unified
	.arm
	.fpu softvfp
	.type	nhap, %function
nhap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r0, .L2
	bl	puts
	ldr	r1, .L2+4
	ldr	r0, .L2+8
	bl	__isoc99_scanf
	nop
	pop	{fp, pc}
.L3:
	.align	2
.L2:
	.word	.LC0
	.word	x
	.word	.LC1
	.size	nhap, .-nhap
	.global	__aeabi_idivmod
	.section	.rodata
	.align	2
.LC2:
	.ascii	"%d la so hoan hao\000"
	.align	2
.LC3:
	.ascii	"%d khong phai la so hoan hao\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	bl	nhap
	ldr	r3, .L11
	mov	r2, #1
	str	r2, [r3]
	b	.L5
.L7:
	ldr	r3, .L11+4
	ldr	r2, [r3]
	ldr	r3, .L11
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_idivmod
	mov	r3, r1
	cmp	r3, #0
	bne	.L6
	ldr	r3, .L11+8
	ldr	r2, [r3]
	ldr	r3, .L11
	ldr	r3, [r3]
	add	r3, r2, r3
	ldr	r2, .L11+8
	str	r3, [r2]
.L6:
	ldr	r3, .L11
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L11
	str	r3, [r2]
.L5:
	ldr	r3, .L11
	ldr	r2, [r3]
	ldr	r3, .L11+4
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L7
	ldr	r3, .L11+8
	ldr	r2, [r3]
	ldr	r3, .L11+4
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L8
	ldr	r3, .L11+4
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L11+12
	bl	printf
	b	.L9
.L8:
	ldr	r3, .L11+4
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L11+16
	bl	printf
.L9:
	mov	r3, #0
	mov	r0, r3
	pop	{fp, pc}
.L12:
	.align	2
.L11:
	.word	i
	.word	x
	.word	s
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
