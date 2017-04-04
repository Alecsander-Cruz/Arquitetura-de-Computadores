	.data
	
str1: .word 0
str2: .asciiz "Digite seu nome: "
str3: .asciiz "Seu nome é "

	.text
	
li $v0, 4
la $a0, str2
syscall
	
li $v0, 8
la $a0, str1
la $a1, 15
syscall

li $v0, 4
la $a0, str3
syscall

li $v0, 4
la $a0, str1
syscall