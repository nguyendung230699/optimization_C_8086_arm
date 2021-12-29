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
	.file	"b3.c"
	.text
	.comm	x,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Nhap x:\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"%d la so chan\000"
	.align	2
.LC3:
	.ascii	"%d la so le\000"
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
	ldr	r0, .L5
	bl	printf
	ldr	r1, .L5+4
	ldr	r0, .L5+8
	bl	__isoc99_scanf
	ldr	r3, .L5+4
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L2
	ldr	r3, .L5+4
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L5+12
	bl	printf
	b	.L3
.L2:
	ldr	r3, .L5+4
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L5+16
	bl	printf
.L3:
	mov	r3, #0
	mov	r0, r3
	pop	{fp, pc}
.L6:
	.align	2
.L5:
	.word	.LC0
	.word	x
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
