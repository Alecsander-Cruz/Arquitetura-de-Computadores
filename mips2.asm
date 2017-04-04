	.data
str1: .asciiz "Está no salto 1"
str2: .asciiz "Finalizou"

	.text	


li $t0, 54
li $t1, 34

main:
beq $t0, $t1, salto1
bne $t0, $t1, fim

salto1:
li $v0, 4
la $a0, str1
syscall
j main

fim:
li $v0, 4
la $a0, str2
syscall