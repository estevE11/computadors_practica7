.data
	.word 0x44,22,33,55
	.text
main:
	lw $t0, 0x10010000
	lw $t1, 0x10010004
	lw $t2, 0x10010008
	lw $t3, 0x1001000c
	add $t0, $t0, $t1
	add $t0, $t0, $t2
	add $t0, $t0, $t3
	
	
