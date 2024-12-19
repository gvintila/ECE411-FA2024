    .section .text
    .globl _start

_start:
    li x2, 0x0000ffff
    li x3, 0xecebfff8
    li x5, 0xecebfffc             
    li x6, 2   
    li x7, 2   
    div x10, x5, x6
    sh  x2, 0(x3)
    sh  x3, 2(x3)
    lw  x1, 0(x3)
    div x11, x1, x6

halt:
    slti x0, x0, -256