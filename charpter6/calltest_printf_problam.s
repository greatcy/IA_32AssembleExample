#calltest.s
.section .data
output:
	.asciz "this is a section %d\n"
.section .text
.globl _start
_start:
	#movq $0,%rax
	xor %rax,%rax
	pushq $1
	pushq $output
	call printf
	movl $4,%ebx
	
