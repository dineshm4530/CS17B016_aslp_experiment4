       .data
var1:   .word 10
var2:  .word 20
var3:  .word 0
var4:  .word 5
       .text     
#main:
	lw $s1,var1
   addi $s1,$zero,10
	lw $s2,var2
	addi $s2,$zero,20
	lw $t0,var3
	add $t0,$zero,$zero
	lw $t1,var4
	addi $t1,$zero,5
	add $t2,$zero,$s1
	
loop:
	slti $t3,$t0,30
	beq $t3,50,EXIT
	div $t2,$t1
	mfhi $t4
	mflo $t2
	addi $t0,$t0,1
	beq $t4,$zero,loop
	addi $s2,$s2,2
	j loop
	
EXIT:
	sw $s1,var1
	sw $s2,var2
	sw $t0,var3
	sw $t1,var4
	j  $ra 
	
