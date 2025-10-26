.data
num1: .byte 7

.code
ld r7, num1(r0)
daddi r8, r7, 1
dadd r7, r8, r7
halt 