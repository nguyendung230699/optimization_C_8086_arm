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
	.file	"b8.c"
	.text
	.comm	a,200,4
	.comm	i,4,4
	.comm	n,4,4
	.comm	tg,4,4
	.comm	max,4,4
	.comm	j,4,4
	.global	s
	.bss
	.align	2
	.type	s, %object
	.size	s, 4
s:
	.space	4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"nhap vao so phan tu: \000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"\012So lon nhat =%d\000"
	.align	2
.LC3:
	.ascii	"\012vi tri cua gia tri lon nhat trong day la: \000"
	.align	2
.LC4:
	.ascii	"%6d\000"
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
	ldr	r0, .L11
	bl	printf
	ldr	r1, .L11+4
	ldr	r0, .L11+8
	bl	__isoc99_scanf
	ldr	r3, .L11+12
	mov	r2, #0
	str	r2, [r3]
	b	.L2
.L3:
	ldr	r3, .L11+12
	ldr	r3, [r3]
	lsl	r3, r3, #2
	ldr	r2, .L11+16
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, .L11+8
	bl	__isoc99_scanf
	ldr	r3, .L11+12
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L11+12
	str	r3, [r2]
.L2:
	ldr	r3, .L11+12
	ldr	r2, [r3]
	ldr	r3, .L11+4
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L3
	ldr	r3, .L11+16
	ldr	r3, [r3]
	ldr	r2, .L11+20
	str	r3, [r2]
	ldr	r3, .L11+12
	mov	r2, #1
	str	r2, [r3]
	b	.L4
.L6:
	ldr	r3, .L11+12
	ldr	r3, [r3]
	ldr	r2, .L11+16
	ldr	r2, [r2, r3, lsl #2]
	ldr	r3, .L11+20
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L5
	ldr	r3, .L11+12
	ldr	r3, [r3]
	ldr	r2, .L11+16
	ldr	r3, [r2, r3, lsl #2]
	ldr	r2, .L11+20
	str	r3, [r2]
.L5:
	ldr	r3, .L11+12
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L11+12
	str	r3, [r2]
.L4:
	ldr	r3, .L11+12
	ldr	r2, [r3]
	ldr	r3, .L11+4
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L6
	ldr	r3, .L11+20
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L11+24
	bl	printf
	ldr	r0, .L11+28
	bl	printf
	ldr	r3, .L11+12
	mov	r2, #0
	str	r2, [r3]
	b	.L7
.L9:
	ldr	r3, .L11+12
	ldr	r3, [r3]
	ldr	r2, .L11+16
	ldr	r2, [r2, r3, lsl #2]
	ldr	r3, .L11+20
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L8
	ldr	r3, .L11+12
	ldr	r3, [r3]
	add	r3, r3, #1
	mov	r1, r3
	ldr	r0, .L11+32
	bl	printf
.L8:
	ldr	r3, .L11+12
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L11+12
	str	r3, [r2]
.L7:
	ldr	r3, .L11+12
	ldr	r2, [r3]
	ldr	r3, .L11+4
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L9
	mov	r3, #0
	mov	r0, r3
	pop	{fp, pc}
.L12:
	.align	2
.L11:
	.word	.LC0
	.word	n
	.word	.LC1
	.word	i
	.word	a
	.word	max
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
