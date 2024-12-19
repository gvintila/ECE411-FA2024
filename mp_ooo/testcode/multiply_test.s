divide_test.s:
.align 4
.section .text
.globl _start
    # This program will provide a simple test for
    # demonstrating OOO-ness

    # This test is NOT exhaustive
_start:

# initialize
li x0, 1203180240
li x1, 1203180240
li x2, 20
li x3, 50


# this should take many cycles
# if this writes back to the ROB after the following instructions, you get credit for CP2
mul x3, x1, x2
mulh x3, x1, x2
mulhu x3, x1, x2
mulhsu x3, x1, x2

li x4, 40
li x4, 40
li x4, 40
li x4, 40
li x4, 40
li x4, 40
li x4, 40
li x4, 40
li x4, 40
li x4, 40
li x4, 40
li x4, 40


# these instructions should  resolve before the multiply

halt:
    slti x0, x0, -256
