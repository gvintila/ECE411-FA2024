    .section .text
    .globl _start

_start:
    li x5, 1             
    li x6, 10             

lolcow:
    addi    x5, x5, 1         
    blt     x5, x6, lolcow      # If x5 < 10, branch to label add_ten

    # If the value in x5 is already >= 10, exit (or could handle in another way)
    j halt # Jump to the end of the program


halt:
    slti x0, x0, -256