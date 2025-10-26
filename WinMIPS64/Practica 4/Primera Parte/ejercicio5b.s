.data
A: .word 5
B: .word 2
C: .word 0

.code
		ld r8, A(r0)
		ld r9, B(r0)

		beqz r8, fin
		
		slt r10, r9, r8
		beqz r10, B_ES_MAYOR
		dadd r11, r8, r8
		sd r11, C(r0)
		j fin
		
B_ES_MAYOR: sd r9, C(r0)		
		
fin:    halt
		