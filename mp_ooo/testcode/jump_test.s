jump_test.s:
.align 4
.section .text
.globl _start
    # This program will provide a simple test for
    # demonstrating jumps

    # This test is NOT exhaustive
_start:

# initialize

# these instructions should  resolve before the multiply
    nop
    nop
    nop
_loop1:
    nop
    nop
    jal x1, _loop2
    nop
    nop
    nop
    nop
    nop
_loop2:
    nop
    nop
    nop
    jal x2, _end
    nop
    nop
    nop
    nop
_end:
    nop
    nop

halt:
    slti x0, x0, -256
