.data
	primer: .asciiz "entra el primer nombre: "
	segon: .asciiz "entra el segon nombre:"
	suma: .asciiz "la suma es: "
.text
	li $v0, 4
	la $a0, primer #syscall per imprimir string primer
	syscall
	li $v0, 5 #syscall per llegir un enter
	syscall
	move $t0, $v0
	li $v0, 4
	la $a0, segon
	syscall
	li $v0, 5
	syscall
	move $t1, $v0
	add $t2, $t1,$t0
	li $v0, 4
	la $a0, suma
	syscall
	move $a0, $t2
	li $v0, 1 #syscall print un enter
	syscall
	li $v0, 10 #syscall exit
	syscall
