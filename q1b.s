    .data

    .text
#main:
	li $s0,-11
	li $s1,0
	li $s2,1
	sll $s2,$s2,12
	and $s3,$s1,$s2
	slt $s3,$s0,$s2
	sw $s3,ra

	
