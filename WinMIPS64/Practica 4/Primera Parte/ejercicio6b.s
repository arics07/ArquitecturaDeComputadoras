.data
V: .word 5, 2, 6

.code
dadd $t0, $0, $0 #$t0 va a guardar los desplazamientos
daddi $t1, $0, 3 #$t1 guarda el tamaño del vector
dadd $t2, $0, $0 #va sumando los valores

loop: 	ld $t3, V($t0)
		dadd $t2, $t2, $t3
		daddi $t0, $t0, 8
		daddi $t1, $t1, -1
		bnez $t1, loop

halt