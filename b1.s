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
	.file	"b1.c"
	.text
	.comm	i,4,4
	.global	s
	.bss
	.align	2
	.type	s, %object
	.size	s, 4
s:
	.space	4
	.comm	n,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Nhap n:\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"Tong binh phuong cac so le be hon %d la: %d\000"
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
	ldr	r0, .L6
	bl	printf
	ldr	r1, .L6+4
	ldr	r0, .L6+8
	bl	__isoc99_scanf
	ldr	r3, .L6+12
	mov	r2, #1
	str	r2, [r3]
	b	.L2
.L4:
	ldr	r3, .L6+12
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L3
	ldr	r3, .L6+12
	ldr	r3, [r3]
	ldr	r2, .L6+12
	ldr	r1, [r2]
	mul	r2, r3, r1
	ldr	r3, .L6+16
	ldr	r3, [r3]
	add	r3, r2, r3
	ldr	r2, .L6+16
	str	r3, [r2]
.L3:
	ldr	r3, .L6+12
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L6+12
	str	r3, [r2]
.L2:
	ldr	r3, .L6+12
	ldr	r2, [r3]
	ldr	r3, .L6+4
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L4
	ldr	r3, .L6+4
	ldr	r1, [r3]
	ldr	r3, .L6+16
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r0, .L6+20
	bl	printf
	mov	r3, #0
	mov	r0, r3
	pop	{fp, pc}
.L7:
	.align	2
.L6:
	.word	.LC0
	.word	n
	.word	.LC1
	.word	i
	.word	s
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
