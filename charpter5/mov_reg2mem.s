#mov_mem.s a simple example for mov.
.section .data
	value:
	     .int 1
.section .text
.global _start
	_start:
		movl $1000,%eax
		movl %eax,value
		#exit()
		movl $1,%eax
		movl $0,%ebx
		int $0x80 
