#cmovtest.s - An example of the CMOV instructions

.section .data
output:
	.asciz "xxxx"
values:
	.int 105,235,61,315,134,221,53,145,117,5
.section .text
.global _start
_start:
	movl values,%ebx
	movl $1,%edi
loop:
	movl values(,%edi,4),%eax
	cmp %ebx,%eax
	cmova %eax,%ebx
	inc %edi
	cmp $10,%edi
	jne loop
	
	#TODO how to print integer
	#print param
	#movl $output,%edi
	#movl %ebx,(%edi)
	
	#TODO how to print integer
	#print
	#call value
	#movl $4,%eax
	#ouput file descriptor
	#movl $1,%ebx
	#string heander pointer
	#movl $output,%ecx
	#string length
	#movl $4,%ebx
	#int $0x80
	
	#exit
	movl $1,%eax
	movl $0,%ebx
	int $0x80
