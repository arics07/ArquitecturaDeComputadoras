.data
N: .word 32
L: .word 0

.code
			ld $t0, N($0)
			ld $t1, L($0)
			daddi $t2, $0, 1
			daddi $t3, $0, 2
			
divisiones: beq $t0, $t2, fin
			ddiv $t0, $t0, $t3
			daddi $t1, $t1, 1
			j divisiones


fin:        sd $t1, L($0)
			halt