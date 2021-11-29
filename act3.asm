.text
.globl main
main:
	addi $t0, $0, 0x6
	mul $t0, $t0, 0x5
	mflo $t0
	sub $t0, $t0, 12
	