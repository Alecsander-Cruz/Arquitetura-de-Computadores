
	.data
str1: .asciiz "Digite um valor: "
str2: .asciiz "Digite outro valor: "
str3: .asciiz "A soma dos dois valores é "		


	.text
	
li $v0, 4
la $a0, str1
syscall

li $v0, 5
syscall

move $t0, $v0

li $v0, 4
la $a0, str2
syscall

li $v0, 5
syscall

move $t1, $v0

add $t0, $t0, $t1

li $v0, 4
la $a0, str3
syscall

li $v0, 1
la $a0, ($t0)
syscall