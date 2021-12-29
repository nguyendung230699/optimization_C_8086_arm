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
	.file	"b4.c"
	.text
	.comm	x,4,4
	.comm	y,4,4
	.comm	a,4,4
	.comm	b,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Nhap a,b = \000"
	.align	2
.LC1:
	.ascii	"%d%d\000"
	.align	2
.LC2:
	.ascii	"Uoc chung lon nhat la %d\000"
	.global	__aeabi_idiv
	.align	2
.LC3:
	.ascii	"\012Boi chung nho nhat la %d\000"
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
.L2:
	ldr	r0, .L7
	bl	printf
	ldr	r2, .L7+4
	ldr	r1, .L7+8
	ldr	r0, .L7+12
	bl	__isoc99_scanf
	ldr	r3, .L7+8
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L2
	ldr	r3, .L7+4
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L2
	ldr	r3, .L7+8
	ldr	r3, [r3]
	ldr	r2, .L7+16
	str	r3, [r2]
	ldr	r3, .L7+4
	ldr	r3, [r3]
	ldr	r2, .L7+20
	str	r3, [r2]
	b	.L3
.L5:
	ldr	r3, .L7+8
	ldr	r2, [r3]
	ldr	r3, .L7+4
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L4
	ldr	r3, .L7+8
	ldr	r2, [r3]
	ldr	r3, .L7+4
	ldr	r3, [r3]
	sub	r3, r2, r3
	ldr	r2, .L7+8
	str	r3, [r2]
	b	.L3
.L4:
	ldr	r3, .L7+4
	ldr	r2, [r3]
	ldr	r3, .L7+8
	ldr	r3, [r3]
	sub	r3, r2, r3
	ldr	r2, .L7+4
	str	r3, [r2]
.L3:
	ldr	r3, .L7+8
	ldr	r2, [r3]
	ldr	r3, .L7+4
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L5
	ldr	r3, .L7+8
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L7+24
	bl	printf
	ldr	r3, .L7+16
	ldr	r3, [r3]
	ldr	r2, .L7+20
	ldr	r1, [r2]
	mul	r2, r3, r1
	ldr	r3, .L7+8
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r1, r3
	ldr	r0, .L7+28
	bl	printf
	mov	r3, #0
	mov	r0, r3
	pop	{fp, pc}
.L8:
	.align	2
.L7:
	.word	.LC0
	.word	b
	.word	a
	.word	.LC1
	.word	x
	.word	y
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
