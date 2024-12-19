store_load.s:
.align 4
.section .text
.globl _start
    # This program will provide a simple test for
    # demonstrating load store

    # This test is NOT exhaustive
_start:

    # initialize
    li x4, 0xecebfffc
    li x1, 0
    li x2, 0x12345678
    sw x2, 0(x4)
    lw x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lw x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lw x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lw x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lw x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lw x1, 0(x4)
    addi x2, x1, 1

    sw x2, 0(x4)
    lb x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lb x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lb x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lb x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lb x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lb x1, 0(x4)
    addi x2, x1, 1

    sw x2, 0(x4)
    lh x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lh x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lh x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lh x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lh x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lh x1, 0(x4)
    addi x2, x1, 1

    sw x2, 0(x4)
    lbu x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lbu x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lbu x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lbu x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lbu x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lbu x1, 0(x4)
    addi x2, x1, 1

    sw x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sw x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1

    sb x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sb x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sb x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sb x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sb x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sb x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1

    sh x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sh x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sh x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sh x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sh x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1
    sh x2, 0(x4)
    lhu x1, 0(x4)
    addi x2, x1, 1

halt:
    slti x0, x0, -256
