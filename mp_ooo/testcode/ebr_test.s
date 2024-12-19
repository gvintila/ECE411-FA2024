arith_test.s:
.align 4
.section .text
.globl _start
_start:

    li  x10, 20
    li  x11, 10
    li  x12, 1
    beq x11, x10, halt
    div x1, x12, x5
    beq x11, x10, halt
    div x10, x12, x5
    beq x11, x10, halt
    div x10, x12, x5
    beq x11, x10, halt
    beq x11, x10, halt
    mulh x10, x12, x5
    mul x1, x12, x5
    beq x11, x10, halt
    mul x10, x12, x5
    mul x1, x12, x5
    div x10, x12, x5
    div x1, x12, x5
    mul x10, x12, x5
    mul x1, x12, x5

halt:
    beq x11, x10, halt
    mul x10, x12, x5
    beq x11, x10, halt
    beq x11, x10, halt
    beq x11, x10, halt
    beq x11, x10, halt
    beq x11, x10, halt
    slti x0, x0, -256
