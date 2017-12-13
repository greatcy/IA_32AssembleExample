#An example of using the bswap instruction.

.section .text
.global _start
_start:
	movl $0x12345678,%ebx
	bswap %ebx
	#exit
	movl $1,%eax
	int $0x80
