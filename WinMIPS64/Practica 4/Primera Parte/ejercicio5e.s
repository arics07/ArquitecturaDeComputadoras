.data
A: .word 7
B: .word 0

.code
ld $t0, A($0)

andi $t1, $t0, 1
sd $t1, B($0)
halt
 