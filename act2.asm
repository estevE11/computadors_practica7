.text
.globl main
main:
	addi $t0, $0, 0x5
	addi $t1, $0, 0xc
	addi $t2, $0, 0x4
	xori $t2, $t2, 0xffffffff
	add $t2, $t2, 0x1
	add $t3, $t0, $t1
	add $t3, $t3, $t2
	