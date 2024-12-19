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
    addi x1, x0, 69
    addi x2, x0, 420
    addi x3, x0, 80
    addi x4, x0, 80
    addi x5, x0, 80
    addi x8, x0, 80
    addi x9, x0, 80
    addi x10, x0, 20

halt:
    slti x0, x0, -256
