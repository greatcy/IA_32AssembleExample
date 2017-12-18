#cpuid.s Simple program to get cpu vendor ID.

.section .data
output:
      .ascii "The processor Vendor ID is %s\n"
.section .bss
	.lcomm buffer,12
.section .text
.global _start
_start:
	movl $0,%eax
	cpuid
	movl $buffer,%edi
	movl %ebx,(%edi)
	movl %edx,4(%edi)
	movl %ecx,8(%edi)
	#print
	movl %edi,%esi
	movl $output,%edi
	call printf	

	#exit
	movl $1,%eax
	movl $0,%ebx
	int $0x80
