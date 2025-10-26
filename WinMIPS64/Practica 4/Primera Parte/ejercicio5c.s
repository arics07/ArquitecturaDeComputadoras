.data
F: .word 1
N: .word 7

.code
		ld $t0, F(r0)
		ld $t1, N(r0)
		daddi $t2, $t0, 0

loop:	beqz $t1, fin
		dmul $t2, $t2, $t1
		daddi $t1, $t1, -1
		j loop
				
fin:    sd $t2, F(r0)
		halt