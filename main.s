	.cpu cortex-m0plus
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.word	34
	.word	201
	.word	190
	.word	154
	.word	8
	.word	194
	.word	2
	.word	6
	.word	114
	.word	88
	.word	45
	.word	76
	.word	123
	.word	87
	.word	25
	.word	23
	.word	200
	.word	122
	.word	150
	.word	90
	.word	92
	.word	87
	.word	177
	.word	244
	.word	201
	.word	6
	.word	12
	.word	60
	.word	8
	.word	2
	.word	5
	.word	67
	.word	7
	.word	87
	.word	250
	.word	230
	.word	99
	.word	3
	.word	100
	.word	90
	.text
	.align	1
	.global	main
	.arch armv6s-m
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #160
	add	r7, sp, #0
	movs	r2, r7
	ldr	r3, .L2
	movs	r0, r2
	movs	r1, r3
	movs	r3, #160
	movs	r2, r3
	bl	memcpy
	movs	r3, r7
	movs	r1, #40
	movs	r0, r3
	bl	print_statistics
	nop
	mov	sp, r7
	add	sp, sp, #160
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	.LC0
	.size	main, .-main
	.section	.rodata
	.align	2
.LC2:
	.ascii	"\012The mean is %d\000"
	.align	2
.LC4:
	.ascii	"\012The median is %d\000"
	.align	2
.LC6:
	.ascii	"\012The maximum is %d\000"
	.text
	.align	1
	.global	print_statistics
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	print_statistics, %function
print_statistics:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	print_array
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	find_mean
	movs	r2, r0
	ldr	r3, .L5
	movs	r1, r2
	movs	r0, r3
	bl	printf
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	find_median
	movs	r2, r0
	ldr	r3, .L5+4
	movs	r1, r2
	movs	r0, r3
	bl	printf
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	find_maximum
	movs	r2, r0
	ldr	r3, .L5+8
	movs	r1, r2
	movs	r0, r3
	bl	printf
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	find_minimum
	movs	r2, r0
	ldr	r3, .L5+4
	movs	r1, r2
	movs	r0, r3
	bl	printf
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L6:
	.align	2
.L5:
	.word	.LC2
	.word	.LC4
	.word	.LC6
	.size	print_statistics, .-print_statistics
	.section	.rodata
	.align	2
.LC8:
	.ascii	"The array is : \000"
	.align	2
.LC10:
	.ascii	"%d \000"
	.text
	.align	1
	.global	print_array
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	print_array, %function
print_array:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, .L10
	movs	r0, r3
	bl	printf
	b	.L8
.L9:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, .L10+4
	movs	r1, r2
	movs	r0, r3
	bl	printf
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L8:
	ldr	r3, [r7]
	subs	r2, r3, #1
	str	r2, [r7]
	cmp	r3, #0
	bne	.L9
	nop
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L11:
	.align	2
.L10:
	.word	.LC8
	.word	.LC10
	.size	print_array, .-print_array
	.align	1
	.global	swap
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	swap, %function
swap:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.size	swap, .-swap
	.align	1
	.global	sort_array
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	sort_array, %function
sort_array:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L14
.L18:
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L15
.L17:
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7, #4]
	adds	r3, r1, r3
	ldr	r3, [r3]
	cmp	r2, r3
	bcs	.L16
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r0, r2, r3
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	movs	r1, r3
	bl	swap
.L16:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L15:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	subs	r3, r3, #1
	ldr	r2, [r7, #8]
	cmp	r2, r3
	blt	.L17
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L14:
	ldr	r3, [r7]
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	cmp	r2, r3
	blt	.L18
	ldr	r3, [r7, #4]
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.size	sort_array, .-sort_array
	.align	1
	.global	find_median
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	find_median, %function
find_median:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, r2
	movs	r0, r3
	bl	sort_array
	movs	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	cmp	r3, #0
	bge	.L21
	adds	r3, r3, #1
.L21:
	asrs	r3, r3, #1
	subs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	ldr	r3, [r3]
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.size	find_median, .-find_median
	.global	__aeabi_uidiv
	.align	1
	.global	find_mean
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	find_mean, %function
find_mean:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L24
.L25:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	adds	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L24:
	ldr	r3, [r7]
	ldr	r2, [r7, #16]
	cmp	r2, r3
	bcc	.L25
	ldr	r3, [r7]
	movs	r1, r3
	ldr	r0, [r7, #20]
	bl	__aeabi_uidiv
	movs	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.size	find_mean, .-find_mean
	.align	1
	.global	find_maximum
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	find_maximum, %function
find_maximum:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
	.size	find_maximum, .-find_maximum
	.align	1
	.global	find_minimum
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	find_minimum, %function
find_minimum:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, .L31
	mov	ip, r2
	add	r3, r3, ip
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	ldr	r3, [r3]
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7, pc}
.L32:
	.align	2
.L31:
	.word	1073741823
	.size	find_minimum, .-find_minimum
	.ident	"GCC: (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
