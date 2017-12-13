.section .data
data:
	.int 10
.section .text
.global _start
_start:
	movl $10,%eax
	movl $5,%ebx
	cmpxchg %ebx,data
	#exit
	movl $1,%eax
	int $0x80
