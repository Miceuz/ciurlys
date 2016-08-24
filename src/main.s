	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__CCP__ = 0x3c
__tmp_reg__ = 16
__zero_reg__ = 17
	.section	.text.__vector_4,"ax",@progbits
.global	__vector_4
	.type	__vector_4, @function
__vector_4:
	push r17
	push r16
	in r16,__SREG__
	push r16
	ldi __zero_reg__,0
	push r20
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	ldi r20,lo8(1)
	ldi r30,lo8(inputTimeout)
	ldi r31,hi8(inputTimeout)
	st Z,r20
	ldi r30,lo8(outputPulseDone)
	ldi r31,hi8(outputPulseDone)
	st Z,r20
	out 0x2d,__zero_reg__
/* epilogue start */
	pop r31
	pop r30
	pop r20
	pop r16
	out __SREG__,r16
	pop r16
	pop r17
	reti
	.size	__vector_4, .-__vector_4
	.section	.text.__vector_5,"ax",@progbits
.global	__vector_5
	.type	__vector_5, @function
__vector_5:
	push r17
	push r16
	in r16,__SREG__
	push r16
	ldi __zero_reg__,0
	push r20
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	ldi r20,lo8(1)
	ldi r30,lo8(outputPulseDone)
	ldi r31,hi8(outputPulseDone)
	st Z,r20
/* epilogue start */
	pop r31
	pop r30
	pop r20
	pop r16
	out __SREG__,r16
	pop r16
	pop r17
	reti
	.size	__vector_5, .-__vector_5
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r20,0x1
	ori r20,lo8(3)
	out 0x1,r20
	sbi 0x2,0
	ldi r20,lo8(249)
	ldi r21,hi8(249)
1:	subi r20,1
	sbci r21,0
	brne 1b
	rjmp .
	nop
/* #APP */
 ;  76 "main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r30,lo8(inputTimeout)
	ldi r31,hi8(inputTimeout)
	ldi r21,lo8(1)
	ldi r20,lo8(3)
	ldi r26,lo8(pulseLength)
	ldi r27,hi8(pulseLength)
	ldi r28,lo8(outputPulseDone)
	ldi r29,hi8(outputPulseDone)
.L5:
	sbic 0,2
	rjmp .L5
	st Z,__zero_reg__
	out 0x2e,__zero_reg__
	out 0x28+1,__zero_reg__
	out 0x28,__zero_reg__
	out 0x2b,r21
	out 0x2d,r20
.L7:
	sbic 0,2
	rjmp .L8
	ld r22,Z
	cpse r22,__zero_reg__
	rjmp .L8
	in r22,0x28
	in r23,0x28+1
	cpi r22,16
	cpc r23,__zero_reg__
	brlo .L7
	sbi 0x2,1
	rjmp .L7
.L8:
	in r22,0x28
	in r23,0x28+1
	subi r26,lo8(-(1))
	sbci r27,hi8(-(1))
	st X,r23
	st -X,r22
	out 0x2d,__zero_reg__
	cbi 0x2,1
	ld r22,Z
	tst r22
	breq .L10
.L18:
	sbis 0,2
	rjmp .L18
	rjmp .L5
.L10:
	in r22,0x28
	in r23,0x28+1
	cpi r22,16
	cpc r23,__zero_reg__
	brlo .L5
	cbi 0x2,0
	st Y,__zero_reg__
	out 0x2e,__zero_reg__
	in r22,0x2a
	ori r22,lo8(2)
	out 0x2a,r22
	out 0x2b,r20
	ld r22,X
	subi r26,lo8(-(1))
	sbci r27,hi8(-(1))
	ld r23,X
	subi r26,lo8((1))
	sbci r27,hi8((1))
	out 0x26+1,r23
	out 0x26,r22
	out 0x28+1,__zero_reg__
	out 0x28,__zero_reg__
	out 0x2d,r20
.L13:
	ld r22,Y
	tst r22
	breq .L13
	out 0x2d,__zero_reg__
	sbi 0x2,0
	rjmp .L5
	.size	main, .-main
	.comm	pulseLength,2,1
	.comm	outputPulseDone,1,1
	.comm	inputTimeout,1,1
	.ident	"GCC: (GNU) 5.4.0"
.global __do_clear_bss
