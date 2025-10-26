.data
A: .word 6
B: .word 2
S: .word 0
P: .word 0
D: .word 0

.code
ld r8, A(r0)
ld r9, B(r0)
dadd r10, r8, r9
sd r10, S(r0)

dmul r11, r8, r9
daddi r12, r11, 2
sd r12, P(r0)

dmul r13, r8, r8
ddiv r14, r13, r9
sd r14, D(r0)
 
halt