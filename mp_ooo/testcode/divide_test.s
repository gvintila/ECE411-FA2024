divide_test.s:
.align 4
.section .text
.globl _start
    # This program will provide a simple test for
    # demonstrating OOO-ness

    # This test is NOT exhaustive
_start:

# initialize
li x1, -2147483648
li x2, -1
li x3, 50


# this should take many cycles
# if this writes back to the ROB after the following instructions, you get credit for CP2
rem x3, x1, x2
nop
nop
nop
nop
div x3, x1, x2
nop
nop
nop
nop
remu x3, x1, x2
nop
nop
nop
nop
divu x3, x1, x2
nop
nop
nop
nop


# these instructions should  resolve before the multiply

halt:
    slti x0, x0, -256
