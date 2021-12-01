.data
	primer: .asciiz "Entra el primer nombre: "
	segon: .asciiz "Entra el segon nombre: "
	op: .asciiz "Escull la operacio (0. Sumar, 1. Restar): "
	res: .asciiz "El resultat es : "

.text
	addi $s0, $0, 0x10010000
	
	li $v0, 4 #imprimir string primer nombre
	la $a0, primer
	syscall
	
	li $v0, 5 #obtenir primer nombre
	syscall
	move $t0, $v0
	
	li $v0, 4 #imprimir string segon nombre
	la $a0, segon
	syscall
	
	li $v0, 5 #obtenir segon nombre
	syscall
	move $t1, $v0

	li $v0, 4 #imprimir string operiacio
	la $a0, op
	syscall
	
	li $v0, 5  #opternir nombre operacio
	syscall
	move $t2, $v0
	
	beq $t2, 0, suma
	sub $t3, $t0, $t1
	j final
	
	
suma:
	add $t3, $t0, $t1
	j final	

final:
	li $v0, 4
	la $a0, res
	syscall

	li $v0, 1
	move $a0, $t3
	syscall
	