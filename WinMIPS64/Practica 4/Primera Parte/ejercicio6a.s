.data
V: .word 5, 2, 6

.code
dadd $t0, $0, $0
ld $t1, V($t0) #carga el primer elemento del vector en $t1

daddi $t0, $t0, 8
ld $t2, V($t0) #carga el 2 en $t2

daddi $t0, $t0, 8
ld $t3, V($t0) #carga el 6 en $t3

dadd $t4, $t1, $t2 #5+2=7 -> t4
dadd $t4, $t4, $t3 #7+6=13 -> t4

halt