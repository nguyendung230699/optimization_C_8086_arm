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
	.file	"b2.c"
	.text
	.comm	a,4,4
	.comm	b,4,4
	.comm	c,4,4
	.comm	max,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Nhap a=\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"Nhap b=\000"
	.align	2
.LC3:
	.ascii	"Nhap c=\000"
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
	bl	printf
	ldr	r1, .L2+4
	ldr	r0, .L2+8
	bl	__isoc99_scanf
	ldr	r0, .L2+12
	bl	printf
	ldr	r1, .L2+16
	ldr	r0, .L2+8
	bl	__isoc99_scanf
	ldr	r0, .L2+20
	bl	printf
	ldr	r1, .L2+24
	ldr	r0, .L2+8
	bl	__isoc99_scanf
	nop
	pop	{fp, pc}
.L3:
	.align	2
.L2:
	.word	.LC0
	.word	a
	.word	.LC1
	.word	.LC2
	.word	b
	.word	.LC3
	.word	c
	.size	nhap, .-nhap
	.section	.rodata
	.align	2
.LC4:
	.ascii	"gia tri lon nhat la: %d\000"
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
	ldr	r3, .L7
	ldr	r3, [r3]
	ldr	r2, .L7+4
	str	r3, [r2]
	ldr	r3, .L7+8
	ldr	r2, [r3]
	ldr	r3, .L7+4
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L5
	ldr	r3, .L7+8
	ldr	r3, [r3]
	ldr	r2, .L7+4
	str	r3, [r2]
.L5:
	ldr	r3, .L7+12
	ldr	r2, [r3]
	ldr	r3, .L7+4
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L6
	ldr	r3, .L7+12
	ldr	r3, [r3]
	ldr	r2, .L7+4
	str	r3, [r2]
.L6:
	ldr	r3, .L7+4
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L7+16
	bl	printf
	nop
	pop	{fp, pc}
.L8:
	.align	2
.L7:
	.word	a
	.word	max
	.word	b
	.word	c
	.word	.LC4
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
