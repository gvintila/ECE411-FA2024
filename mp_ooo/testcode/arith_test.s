arith_test.s:
.align 4
.section .text
.globl _start
    # This program will provide a simple test for
    # demonstrating arith

    # This test is NOT exhaustive
_start:

# initialize

# these instructions should  resolve before the multiply
    add x4, x5, x6
    xor x7, x8, x9
    sll x10, x11, x12
    and x13, x14, x15
    add x4, x5, x6
    xor x7, x8, x9
    sll x10, x11, x12
    and x13, x14, x15
    add x4, x5, x6
    xor x7, x8, x9
    sll x10, x11, x12
    and x13, x14, x15
    add x4, x5, x6
    xor x7, x8, x9
    sll x10, x11, x12
    and x13, x14, x15
    add x4, x5, x6
    xor x7, x8, x9
    sll x10, x11, x12
    and x13, x14, x15

halt:
    slti x0, x0, -256
