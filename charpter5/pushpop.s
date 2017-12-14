.section .data
data:
	.int 125
.section .text

.global _start
_start:
	#32 bit
	movl $24420,%ecx
	#16 bit
	movw $350,%bx
	#8 bit
	movb $100,%al
	
	#see length use 64bit cpu
	pushq %rcx
	pushw %bx
	pushq %rax
	pushq data
	pushq $data

	popq %rax
	popq %rax
	popq %rax
	popw %ax
	popq %rax

	#exit
	movl $1,%eax
	movl $0,%ebx
	int $0x80
