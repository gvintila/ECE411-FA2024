.section .text
.globl _start, _br1, _br2, _br3, _br4
_start:
	lui x1, 0x64006
	addi x1, x1, 343
	lui x2, 0x78071
	addi x2, x2, 866
	lui x3, 0x68445
	addi x3, x3, 686
	lui x4, 0x75503
	addi x4, x4, 167
	lui x5, 0x95878
	addi x5, x5, 575
	lui x6, 0x94163
	addi x6, x6, 303
	lui x7, 0x80514
	addi x7, x7, 636
	lui x8, 0x42836
	addi x8, x8, 600
	lui x9, 0x12225
	addi x9, x9, 322
	lui x10, 0x74568
	addi x10, x10, 290
	lui x11, 0x57985
	addi x11, x11, 382
	lui x12, 0x97962
	addi x12, x12, 298
	lui x13, 0x85802
	addi x13, x13, 579
	lui x14, 0x52614
	addi x14, x14, 604
	lui x15, 0x95568
	addi x15, x15, 848
	lui x16, 0x25332
	addi x16, x16, 734
	lui x17, 0x82461
	addi x17, x17, 182
	lui x18, 0x85116
	addi x18, x18, 830
	lui x19, 0x82230
	addi x19, x19, 224
	lui x20, 0x47034
	addi x20, x20, 255
	lui x21, 0x72658
	addi x21, x21, 171
	lui x22, 0x25638
	addi x22, x22, 160
	lui x23, 0x27501
	addi x23, x23, 338
	lui x24, 0x82015
	addi x24, x24, 469
	lui x25, 0x79698
	addi x25, x25, 120
	lui x26, 0x56689
	addi x26, x26, 729
	lui x27, 0x35262
	addi x27, x27, 538
	lui x28, 0x89490
	addi x28, x28, 285
	lui x29, 0x17802
	addi x29, x29, 548
	lui x30, 0x40044
	addi x30, x30, 236
	sltu x6, x2, x3
	srl x4, x7, x3
	sub x5, x7, x6
	sll x7, x8, x8
	xor x9, x6, x9
	sll x1, x8, x5
	slt x6, x6, x2
	add x7, x1, x2
	sltu x7, x6, x9
	xor x7, x8, x3
	add x1, x4, x8
	and x5, x9, x5
	slt x1, x3, x4
	add x6, x7, x7
	and x8, x1, x1
	sll x5, x5, x4
	sra x9, x2, x4
	xor x9, x5, x7
	or x7, x8, x2
	sll x6, x2, x8
	sltu x4, x7, x6
	and x4, x8, x4
	srl x2, x9, x6
	xor x3, x5, x9
	xor x2, x4, x4
	add x3, x2, x2
	sra x3, x7, x8
	and x9, x1, x2
	xor x5, x4, x1
	sra x2, x1, x7
	add x7, x9, x2
	sll x8, x2, x3
	and x7, x3, x9
	and x2, x8, x8
	srl x4, x9, x8
	srl x7, x5, x8
	srl x7, x8, x2
	or x8, x2, x9
	and x2, x8, x2
	srl x4, x5, x5
	slt x4, x4, x8
	sub x7, x7, x9
	sub x2, x7, x2
	sub x4, x6, x4
	srl x1, x9, x2
	srl x8, x4, x6
	sltu x2, x7, x7
	sra x6, x9, x7
	and x5, x9, x8
	srl x4, x2, x4
	sra x5, x2, x9
	srl x5, x4, x2
	or x9, x4, x6
	sltu x5, x7, x1
	sra x7, x5, x1
	add x4, x9, x6
	xor x9, x4, x1
	sra x8, x3, x8
	xor x9, x6, x8
	sltu x7, x3, x4
	srl x1, x5, x7
	sub x9, x9, x3
	xor x7, x4, x6
	sub x4, x7, x7
	srl x8, x6, x5
	sltu x8, x1, x3
	slt x5, x3, x4
	sra x9, x5, x8
	xor x2, x7, x5
	add x8, x3, x6
	xor x7, x1, x4
	sltu x1, x1, x6
	sll x3, x4, x1
	slt x6, x2, x2
	or x9, x7, x9
	xor x5, x9, x7
	add x3, x8, x1
	sra x2, x7, x6
	sub x9, x5, x4
	and x6, x6, x3
	srl x8, x9, x9
	sra x3, x6, x8
	slt x1, x1, x5
	and x2, x3, x2
	sra x3, x5, x9
	sltu x7, x9, x1
	sra x1, x1, x6
	sra x6, x2, x3
	srl x4, x7, x8
	add x4, x1, x1
	srl x9, x9, x3
	add x4, x4, x7
	sra x4, x8, x2
	and x5, x5, x6
	xor x8, x3, x2
	sltu x3, x7, x1
	and x5, x4, x7
	sll x9, x3, x4
	or x9, x3, x5
	sub x7, x3, x2
	add x4, x5, x4
	sltu x9, x5, x2
	and x3, x4, x2
	srl x2, x4, x1
	sra x6, x1, x5
	xor x5, x3, x9
	srl x8, x4, x4
	xor x5, x3, x6
	srl x6, x3, x8
	add x7, x2, x1
	xor x5, x8, x6
	sra x7, x3, x8
	sll x7, x5, x1
	or x5, x1, x9
	add x4, x9, x8
	sll x3, x9, x6
	sll x6, x9, x3
	sltu x1, x2, x5
	xor x9, x6, x6
	and x7, x9, x1
	srl x5, x1, x2
	sra x5, x3, x9
	sub x3, x4, x3
	sub x9, x3, x2
	sll x2, x1, x5
	sll x6, x7, x8
	sub x8, x2, x9
	and x9, x3, x8
	srl x1, x7, x6
	sub x7, x8, x4
	srl x4, x8, x8
	slt x3, x9, x8
	add x7, x6, x4
	or x5, x3, x9
	xor x7, x4, x1
	xor x4, x2, x2
	slt x4, x7, x4
	or x7, x8, x2
	and x5, x3, x2
	add x7, x8, x7
	sub x8, x1, x8
	srl x9, x6, x7
	srl x4, x3, x5
	srl x7, x1, x2
	sll x4, x9, x4
	sltu x4, x1, x9
	xor x2, x9, x8
	sltu x2, x5, x2
	sub x7, x9, x8
	srl x3, x6, x6
	and x6, x5, x4
	srl x5, x9, x8
	or x9, x3, x8
	add x6, x4, x4
	sltu x3, x8, x9
	srl x8, x4, x5
	or x2, x1, x2
	slt x6, x4, x3
	add x8, x2, x6
	sub x2, x2, x3
	xor x3, x5, x3
	xor x1, x9, x9
	sra x3, x3, x9
	slt x5, x4, x7
	or x2, x8, x4
	or x5, x5, x4
	sra x9, x7, x6
	add x6, x8, x7
	or x7, x9, x3
	sra x2, x3, x7
	sra x6, x3, x4
	sltu x4, x4, x7
	slt x4, x9, x5
	slt x8, x2, x6
	sub x8, x6, x3
	sltu x1, x5, x4
	sltu x6, x5, x1
	xor x1, x8, x9
	srl x9, x1, x2
	sll x7, x1, x6
	or x8, x8, x3
	add x2, x4, x9
	sra x5, x6, x3
	sra x8, x1, x4
	sll x9, x8, x2
	or x2, x4, x3
	add x6, x9, x3
	add x6, x2, x9
	and x4, x2, x2
	slt x1, x9, x5
	and x2, x4, x2
	srl x3, x4, x1
	add x5, x4, x3
	sll x8, x1, x5
	sltu x3, x2, x8
	sltu x7, x2, x1
	srl x6, x5, x3
	srl x4, x3, x5
	sub x2, x2, x5
	and x9, x8, x2
	or x7, x4, x2
	slt x6, x7, x4
	add x8, x5, x6
	and x8, x7, x8
	or x8, x6, x5
	sltu x1, x6, x9
	sra x3, x6, x8
	or x4, x8, x9
	add x9, x7, x8
	add x1, x8, x3
	xor x5, x9, x9
	or x3, x5, x5
	add x9, x3, x7
	srl x5, x6, x8
	xor x5, x9, x2
	and x8, x8, x5
	or x2, x1, x7
	srl x1, x5, x3
	sltu x3, x6, x8
	srl x3, x4, x9
	sltu x8, x1, x9
	or x9, x6, x8
	sll x3, x6, x3
	add x5, x4, x8
	and x1, x9, x4
	slt x5, x3, x8
	slt x1, x8, x1
	slt x9, x3, x4
	or x3, x6, x1
	sll x1, x1, x3
	xor x9, x6, x1
	sub x1, x6, x2
	add x1, x1, x4
	srl x9, x3, x4
	sltu x4, x2, x4
	sra x9, x8, x8
	xor x5, x2, x3
	sub x2, x1, x6
	sltu x1, x2, x8
	sltu x8, x2, x7
	sll x3, x9, x9
	srl x2, x7, x3
	srl x6, x3, x7
	add x5, x9, x3
	add x8, x8, x7
	srl x1, x8, x4
	xor x4, x3, x3
	xor x3, x2, x5
	sltu x2, x1, x9
	sltu x6, x2, x3
	sra x4, x2, x6
	sll x2, x9, x8
	srl x4, x8, x8
	sra x8, x1, x4
	xor x8, x1, x1
	sra x2, x2, x1
	and x7, x6, x4
	add x1, x5, x3
	sub x5, x2, x1
	add x4, x2, x3
	add x9, x7, x8
	sra x8, x1, x4
	or x2, x3, x9
	and x6, x6, x6
	and x6, x7, x8
	or x3, x5, x2
	or x9, x7, x7
	add x3, x7, x1
	sra x4, x8, x7
	sra x8, x7, x1
	xor x9, x6, x5
	srl x1, x9, x2
	sub x3, x7, x1
	or x9, x3, x4
	sltu x8, x1, x5
	and x3, x6, x9
	slt x1, x8, x9
	or x1, x9, x1
	sll x4, x5, x2
	and x3, x7, x7
	or x3, x5, x7
	sltu x5, x4, x1
	or x8, x1, x2
	or x7, x2, x9
	sll x4, x1, x4
	sra x4, x3, x7
	sll x6, x3, x4
	sltu x8, x2, x8
	and x3, x9, x5
	add x7, x4, x3
	sll x8, x9, x3
	xor x1, x5, x2
	sra x2, x1, x3
	sll x3, x6, x3
	slt x2, x6, x5
	and x9, x7, x4
	sltu x7, x2, x1
	or x3, x6, x3
	add x7, x3, x9
	srl x7, x3, x6
	and x5, x5, x9
	or x7, x7, x1
	sll x1, x1, x7
	sll x5, x4, x1
	sll x3, x1, x3
	xor x4, x8, x7
	sra x4, x4, x8
	slt x4, x8, x6
	sra x3, x6, x3
	srl x1, x6, x3
	sra x7, x5, x3
	srl x4, x7, x5
	and x2, x5, x9
	xor x6, x2, x5
	sll x5, x4, x2
	sra x3, x7, x2
	srl x1, x4, x3
	srl x4, x4, x1
	srl x3, x3, x4
	or x5, x7, x5
	sltu x2, x5, x1
	slt x3, x2, x4
	srl x5, x6, x7
	or x1, x8, x2
	srl x9, x7, x7
	sll x7, x2, x3
	xor x6, x6, x8
	or x4, x3, x6
	or x5, x3, x5
	slt x4, x5, x3
	sltu x4, x3, x1
	and x5, x1, x7
	sra x7, x6, x8
	srl x3, x8, x9
	sra x4, x4, x9
	sll x9, x8, x8
	sra x3, x3, x1
	sra x3, x5, x9
	xor x1, x9, x4
	srl x4, x3, x1
	xor x1, x7, x8
	srl x1, x7, x1
	sra x6, x4, x3
	sra x3, x5, x9
	sra x2, x1, x2
	xor x2, x7, x1
	sra x4, x1, x6
	or x6, x4, x3
	srl x1, x8, x3
	add x8, x4, x5
	add x9, x3, x2
	sll x3, x3, x9
	add x2, x8, x9
	sll x7, x2, x9
	or x2, x5, x9
	and x5, x8, x4
	sra x5, x4, x2
	sra x4, x6, x4
	sra x7, x9, x9
	sltu x3, x9, x6
	or x1, x3, x4
	sra x1, x9, x9
	sltu x4, x6, x9
	xor x6, x1, x2
	xor x8, x5, x2
	or x9, x5, x4
	or x5, x4, x7
	xor x4, x3, x7
	xor x3, x3, x2
	sub x8, x1, x3
	or x1, x5, x1
	sub x1, x7, x9
	and x2, x4, x5
	sub x6, x6, x7
	add x4, x4, x2
	sub x1, x7, x9
	sltu x5, x4, x7
	sra x4, x3, x1
	sub x2, x2, x3
	add x9, x2, x1
	sub x4, x5, x5
	and x2, x6, x4
	xor x5, x1, x7
	slt x3, x7, x7
	and x6, x5, x8
	sltu x2, x3, x6
	sub x9, x2, x1
	sra x4, x1, x3
	slt x7, x2, x5
	sll x2, x6, x5
	sll x3, x9, x1
	or x4, x9, x3
	sll x2, x8, x1
	add x4, x4, x2
	or x2, x7, x5
	and x1, x1, x2
	and x2, x2, x8
	and x3, x5, x3
	and x7, x3, x6
	and x3, x1, x3
	sll x1, x7, x7
	srl x8, x9, x1
	sra x3, x1, x1
	xor x2, x5, x3
	sltu x7, x8, x1
	slt x4, x2, x9
	add x3, x2, x2
	xor x3, x1, x8
	srl x5, x1, x7
	or x5, x2, x9
	slt x9, x5, x3
	srl x2, x3, x4
	srl x4, x2, x8
	add x4, x9, x3
	sub x8, x9, x2
	xor x2, x9, x2
	srl x5, x6, x3
	xor x4, x1, x2
	xor x2, x4, x6
	slt x5, x4, x8
	sltu x8, x4, x4
	and x9, x8, x7
	sll x9, x5, x1
	sub x6, x3, x9
	or x8, x8, x5
	sltu x4, x2, x6
	srl x3, x5, x1
	or x8, x4, x3
	slt x9, x6, x4
	sub x9, x5, x6
	sub x8, x9, x4
	srl x5, x8, x7
	sltu x6, x7, x7
	slt x3, x6, x8
	add x6, x9, x6
	and x8, x7, x3
	slt x5, x5, x4
	add x8, x8, x1
	add x5, x4, x3
	sub x5, x7, x6
	xor x8, x1, x7
	sltu x3, x8, x3
	and x3, x9, x2
	sra x3, x2, x7
	or x6, x1, x7
	add x6, x3, x2
	sra x8, x8, x6
	sll x8, x3, x4
	slt x3, x7, x8
	or x9, x2, x2
	and x9, x3, x8
	add x3, x9, x8
	sub x5, x1, x3
	slt x7, x8, x2
	sll x8, x8, x4
	sub x4, x1, x3
	sra x3, x7, x4
	sll x8, x4, x4
	or x4, x5, x4
	xor x8, x9, x6
	slt x1, x1, x2
	slt x5, x4, x9
	add x6, x1, x7
	srl x7, x9, x9
	sll x4, x9, x6
	sltu x7, x9, x4
	sra x3, x1, x9
	or x6, x4, x8
	add x6, x8, x6
	srl x4, x3, x5
	sll x7, x3, x9
	sub x4, x6, x9
	sltu x9, x8, x1
	xor x8, x5, x8
	xor x5, x9, x4
	sll x5, x2, x6
	sll x4, x5, x4
	or x3, x9, x7
	sub x5, x1, x2
	xor x5, x6, x5
	or x2, x5, x9
	sub x5, x4, x2
	sub x5, x3, x5
	sltu x5, x2, x6
	or x7, x8, x6
	sll x5, x4, x9
	add x9, x1, x8
	srl x5, x9, x4
	srl x2, x1, x8
	sub x3, x3, x1
	sub x7, x2, x5
	slt x3, x5, x6
	xor x9, x6, x2
	xor x3, x5, x2
	srl x1, x5, x9
	slt x4, x6, x3
	or x8, x6, x9
	srl x8, x2, x4
	sra x6, x6, x5
	add x4, x5, x2
	sltu x4, x3, x5
	and x8, x1, x1
	sltu x1, x5, x5
	sub x6, x6, x5
	srl x1, x5, x7
	and x6, x1, x5
	and x5, x6, x4
	slt x3, x1, x4
	slt x2, x3, x3
	sll x5, x2, x3
	slt x4, x4, x5
	or x9, x1, x7
	sll x4, x7, x6
	sub x2, x1, x5
	and x9, x1, x6
	srl x2, x4, x4
	sll x3, x6, x8
	or x5, x9, x5
	xor x2, x9, x4
	add x2, x2, x9
	or x5, x5, x8
	sltu x9, x6, x1
	and x4, x3, x7
	srl x3, x4, x7
	slt x3, x6, x6
	sltu x5, x5, x3
	or x8, x1, x5
	and x5, x3, x4
	or x4, x5, x5
	srl x9, x9, x7
	sll x1, x7, x3
	srl x8, x6, x4
	srl x1, x7, x4
	sll x4, x1, x1
	sll x2, x8, x4
	and x3, x7, x4
	srl x8, x8, x6
	srl x1, x5, x6
	sll x1, x4, x3
	add x6, x4, x1
	xor x1, x1, x1
	xor x3, x1, x5
	or x1, x1, x1
	srl x2, x7, x7
	xor x3, x9, x2
	sub x7, x8, x9
	sll x6, x1, x8
	add x7, x3, x3
	sll x3, x3, x8
	and x2, x2, x7
	add x2, x9, x9
	sub x3, x3, x4
	sub x1, x5, x9
	sltu x9, x2, x2
	sra x7, x7, x4
	sra x2, x2, x9
	sltu x9, x9, x9
	add x4, x9, x1
	add x3, x7, x2
	sra x4, x1, x3
	sltu x1, x3, x8
	sltu x8, x9, x1
	sub x2, x8, x1
	srl x3, x6, x5
	add x6, x5, x4
	slt x6, x4, x3
	srl x6, x1, x9
	slt x6, x8, x4
	sub x3, x2, x4
	srl x6, x4, x2
	add x1, x8, x1
	srl x9, x6, x6
	xor x6, x8, x8
	or x7, x2, x6
	srl x3, x2, x1
	and x5, x1, x5
	xor x1, x1, x9
	srl x7, x2, x2
	sltu x1, x7, x1
	slt x7, x3, x9
	xor x1, x3, x4
	sub x3, x4, x5
	sub x6, x4, x2
	and x3, x5, x6
	slt x1, x6, x3
	add x4, x8, x5
	sra x9, x9, x5
	slt x9, x9, x6
	or x9, x8, x5
	and x1, x1, x2
	and x7, x1, x3
	sll x4, x3, x6
	slt x3, x3, x6
	and x2, x7, x7
	or x7, x2, x4
	slt x8, x7, x5
	sub x6, x5, x2
	sll x2, x3, x7
	sra x6, x4, x2
	and x8, x3, x2
	sll x9, x6, x8
	slt x9, x7, x5
	slt x2, x4, x2
	sll x8, x1, x9
	sra x4, x1, x7
	and x2, x7, x5
	slt x3, x5, x9
	slt x4, x3, x3
	add x9, x5, x6
	srl x7, x2, x2
	add x1, x7, x9
	sll x9, x6, x8
	slt x2, x5, x1
	sll x1, x8, x3
	and x5, x5, x4
	sltu x5, x6, x2
	and x2, x6, x9
	add x5, x2, x7
	xor x2, x2, x6
	sub x9, x4, x8
	sll x6, x5, x9
	srl x7, x6, x7
	xor x1, x7, x9
	slt x5, x5, x2
	add x3, x4, x7
	sll x9, x9, x5
	add x2, x4, x7
	or x9, x1, x7
	sltu x2, x4, x5
	add x7, x4, x3
	srl x4, x5, x3
	and x4, x4, x8
	sltu x8, x1, x2
	srl x9, x9, x3
	slt x8, x8, x7
	sll x6, x7, x4
	sub x3, x3, x3
	sra x3, x7, x1
	add x3, x5, x8
	and x6, x2, x4
	or x7, x2, x9
	add x3, x5, x6
	xor x7, x6, x6
	and x1, x7, x8
	xor x6, x9, x8
	sub x7, x5, x6
	srl x6, x7, x2
	or x4, x6, x9
	sll x3, x4, x7
	sub x9, x2, x8
	sra x5, x2, x3
	sll x2, x8, x2
	sll x8, x7, x1
	add x8, x6, x7
	xor x8, x9, x2
	sub x5, x2, x2
	sub x3, x4, x1
	slt x1, x1, x3
	xor x1, x1, x4
	and x7, x2, x7
	and x7, x3, x8
	sra x4, x8, x6
	sll x9, x7, x2
	and x9, x5, x6
	or x1, x9, x3
	srl x7, x5, x5
	slt x6, x1, x8
	add x4, x7, x1
	sub x1, x6, x8
	or x7, x1, x9
	sra x9, x5, x3
	xor x8, x7, x8
	sltu x1, x8, x4
	srl x4, x4, x4
	and x8, x8, x6
	sltu x1, x3, x5
	add x5, x8, x6
	sra x1, x7, x2
	sltu x1, x5, x9
	add x8, x5, x1
	sub x7, x1, x5
	srl x9, x8, x4
	sll x9, x3, x2
	srl x1, x3, x4
	sltu x6, x6, x9
	xor x5, x5, x1
	slt x3, x4, x4
	sltu x7, x1, x8
	slt x8, x4, x2
	sub x1, x4, x6
	sll x5, x7, x5
	and x2, x6, x8
	xor x8, x6, x2
	sll x7, x2, x6
	srl x2, x3, x3
	srl x5, x2, x5
	or x9, x3, x8
	and x5, x3, x9
	sll x6, x9, x8
	xor x1, x9, x1
	add x8, x5, x7
	srl x8, x8, x6
	slt x4, x3, x9
	sll x7, x8, x4
	srl x6, x2, x2
	sra x7, x2, x5
	srl x1, x5, x5
	slt x7, x4, x9
	srl x4, x4, x7
	or x8, x2, x7
	srl x7, x7, x4
	add x7, x4, x3
	xor x8, x8, x5
	sltu x3, x2, x9
	xor x1, x9, x7
	srl x9, x9, x6
	and x4, x8, x8
	sra x7, x5, x6
	slt x5, x4, x1
	add x9, x6, x8
	sra x7, x3, x9
	srl x5, x7, x3
	add x9, x5, x5
	sub x5, x4, x5
	sra x4, x4, x6
	sub x1, x7, x9
	add x7, x5, x6
	or x3, x4, x5
	sra x8, x7, x8
	srl x9, x2, x9
	sll x4, x5, x2
	sra x8, x8, x1
	slt x6, x9, x6
	and x3, x3, x3
	sll x7, x5, x7
	xor x2, x1, x2
	sra x2, x6, x2
	add x7, x1, x2
	sra x9, x7, x1
	sltu x4, x3, x4
	sll x5, x8, x5
	slt x9, x3, x2
	sltu x6, x9, x3
	xor x6, x3, x8
	sltu x2, x5, x6
	xor x4, x9, x9
	add x5, x1, x2
	slt x9, x5, x2
	or x4, x3, x1
	sra x4, x6, x1
	xor x3, x1, x4
	sltu x2, x2, x2
	sll x1, x3, x1
	sll x8, x6, x2
	slt x5, x6, x8
	sll x5, x6, x8
	and x1, x6, x2
	add x6, x8, x6
	or x9, x4, x5
	xor x9, x2, x6
	or x4, x5, x3
	add x8, x7, x4
	sltu x7, x7, x2
	sltu x8, x2, x9
	sll x3, x1, x8
	and x3, x8, x4
	and x8, x3, x8
	slt x7, x2, x8
	sltu x4, x9, x3
	sll x6, x7, x7
	sub x4, x3, x4
	slt x5, x6, x5
	or x1, x2, x3
	slt x2, x3, x2
	srl x9, x1, x4
	sra x5, x9, x7
	and x6, x2, x1
	sub x9, x7, x3
	sltu x8, x9, x8
	slt x4, x2, x3
	srl x3, x4, x5
	add x7, x7, x7
	sll x7, x2, x3
	or x8, x4, x8
	xor x9, x5, x3
	sra x6, x8, x8
	and x8, x1, x8
	srl x8, x2, x6
	add x4, x9, x2
	add x4, x9, x2
	xor x3, x1, x6
	srl x8, x9, x2
	slt x6, x6, x3
	or x5, x8, x8
	srl x9, x4, x6
	slt x3, x4, x2
	xor x8, x9, x6
	and x3, x9, x2
	or x4, x7, x8
	sll x4, x7, x1
	sll x4, x7, x6
	sll x1, x1, x2
	and x8, x3, x7
	add x9, x1, x9
	sll x8, x1, x8
	and x7, x5, x5
	srl x2, x3, x6
	sub x1, x6, x7
	or x6, x2, x6
	sll x3, x2, x1
	sra x1, x4, x9
	or x5, x2, x8
	or x1, x1, x6
	slt x3, x3, x4
	and x6, x8, x7
	slt x9, x3, x5
	and x9, x5, x2
	srl x6, x9, x2
	sub x7, x4, x1
	srl x6, x5, x1
	and x3, x1, x6
	slt x1, x3, x5
	slt x6, x9, x2
	xor x4, x6, x9
	sll x1, x5, x8
	sra x1, x6, x6
	slt x4, x8, x8
	sll x5, x2, x1
	srl x5, x7, x4
	sra x8, x8, x5
	xor x7, x1, x4
	or x6, x4, x7
	srl x5, x4, x4
	and x7, x3, x5
	sub x8, x8, x2
	sub x5, x6, x8
	and x5, x9, x5
	add x1, x1, x2
	sra x3, x3, x3
	sll x8, x2, x9
	sll x4, x2, x8
	xor x3, x1, x8
	add x3, x7, x1
	sub x8, x8, x9
	sll x1, x9, x7
	and x5, x2, x4
	sltu x8, x2, x7
	sra x6, x5, x8
	add x6, x3, x7
	add x4, x7, x4
	xor x3, x6, x7
	slt x2, x2, x5
	add x5, x8, x3
	sltu x6, x9, x9
	sra x3, x5, x1
	and x3, x1, x4
	xor x4, x3, x2
	add x2, x2, x4
	sltu x5, x5, x7
	sub x1, x6, x4
	sub x8, x9, x7
	sub x8, x6, x9
	and x7, x2, x3
	sub x1, x5, x7
	and x2, x3, x3
	and x5, x4, x7
	sub x1, x7, x2
	sub x7, x5, x1
	add x9, x2, x9
	xor x5, x6, x1
	add x4, x2, x5
	sra x4, x1, x7
	sll x1, x3, x7
	add x8, x2, x9
	sll x6, x4, x5
	sra x5, x3, x7
	sltu x1, x1, x1
	sra x1, x2, x2
	and x7, x5, x2
	sub x6, x5, x7
	sra x5, x1, x5
	xor x9, x5, x1
	sra x9, x4, x1
	or x4, x7, x4
	add x9, x6, x4
	or x1, x7, x5
	sltu x2, x5, x7
	slt x9, x5, x4
	slt x8, x9, x2
	xor x6, x8, x7
	sub x3, x9, x1
	sll x8, x6, x6
	sub x2, x1, x9
	sub x7, x1, x6
	sll x5, x2, x2
	xor x9, x2, x7
	add x6, x4, x5
	sll x8, x5, x1
	sub x6, x2, x1
	sub x4, x6, x5
	or x5, x8, x6
	sll x6, x8, x9
	sub x1, x9, x4
	sll x9, x6, x6
	sub x4, x3, x8
	srl x7, x3, x6
	slt x2, x5, x2
	add x4, x1, x7
	and x4, x8, x1
	or x5, x3, x8
	srl x9, x5, x6
	slt x6, x4, x9
	add x8, x9, x6
	slt x5, x6, x6
	add x6, x8, x9
	or x5, x6, x5
	srl x2, x3, x1
	srl x2, x5, x6
	and x8, x3, x8
	xor x6, x4, x9
	slt x7, x2, x5
	and x4, x2, x4
	xor x7, x4, x1
	srl x8, x2, x3
	sll x7, x1, x8
	sltu x4, x9, x9
	xor x1, x7, x6
	sltu x1, x4, x5
	sub x9, x3, x9
	add x9, x7, x6
	sub x1, x3, x9
	sll x4, x8, x5
	sra x1, x8, x4
	and x5, x4, x7
	sll x1, x2, x1
	and x4, x3, x6
	srl x9, x4, x8
	add x1, x5, x7
	and x4, x2, x5
	sra x8, x4, x9
	xor x5, x1, x2
	sra x1, x4, x9
	slt x9, x7, x9
	or x4, x8, x2
	sub x4, x2, x2
	or x2, x1, x5
	srl x8, x2, x4
	add x8, x4, x3
	sra x4, x5, x7
	srl x8, x7, x4
	and x5, x8, x4
	sub x2, x1, x6
	or x3, x5, x2
	xor x4, x2, x6
	or x4, x2, x9
	sll x2, x2, x8
	xor x5, x9, x9
	sra x4, x3, x2
	and x7, x9, x4
	srl x9, x2, x4
	sra x8, x2, x4
	add x4, x1, x5
	srl x9, x5, x5
	sll x9, x1, x6
	sltu x3, x5, x2
	sltu x4, x1, x5
	xor x3, x4, x8
	srl x4, x6, x4
	sltu x6, x9, x6
	add x5, x9, x3
	slt x6, x7, x4
	or x5, x5, x2
	sll x2, x2, x7
	srl x1, x5, x2
	and x6, x8, x9
	slt x1, x3, x5
	srl x3, x7, x8
	add x1, x7, x4
	sra x8, x5, x3
	sub x2, x5, x1
	sll x8, x3, x9
	sll x2, x2, x4
	and x8, x5, x9
	and x5, x1, x6
	sub x2, x5, x1
	sra x7, x8, x1
	srl x8, x5, x2
	sub x6, x1, x6
	sll x9, x9, x1
	sra x2, x9, x6
	sra x5, x9, x9
	sub x6, x5, x5
	sub x7, x3, x6
	sub x8, x5, x7
	or x4, x9, x6
	sll x4, x3, x7
	sll x3, x8, x6
	sra x4, x8, x5
	srl x8, x6, x7
	sll x1, x8, x4
	lui x5, 0x50000
	lui x6, 0x60000
	lui x7, 0x70000
	lui x8, 0x80000
	lui x9, 0x90000
	lui x1, 0x49634
	addi x1, x1, 484
	lui x2, 0x54684
	addi x2, x2, 751
	lui x3, 0x16925
	addi x3, x3, 592
	lui x4, 0x37487
	addi x4, x4, 918
	sw x1, 0(x5)
	sw x2, 0(x6)
	sw x3, 0(x7)
	sw x4, 0(x8)
	lui x1, 0x98884
	addi x1, x1, 313
	lui x2, 0x69172
	addi x2, x2, 689
	lui x3, 0x90160
	addi x3, x3, 525
	lui x4, 0x79007
	addi x4, x4, 233
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 1(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 0(x7)
	lb x4, 2(x8)
	lb x1, 2(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 3(x5)
	lb x2, 2(x6)
	lb x3, 2(x7)
	lb x4, 1(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 3(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 1(x8)
	lb x1, 3(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 2(x8)
	lb x1, 2(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 2(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 1(x8)
	lb x1, 3(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 1(x7)
	lb x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lui x5, 0x50000
	lui x6, 0x60000
	lui x7, 0x70000
	lui x8, 0x80000
	lui x9, 0x90000
	lui x1, 0x22428
	addi x1, x1, 169
	lui x2, 0x33713
	addi x2, x2, 559
	lui x3, 0x27240
	addi x3, x3, 924
	lui x4, 0x42947
	addi x4, x4, 550
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 3(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 1(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 1(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 2(x7)
	lb x4, 1(x8)
	lb x1, 2(x5)
	lb x2, 1(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 1(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 3(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 0(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 1(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 0(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 3(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 0(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 3(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 2(x6)
	lb x3, 2(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lb x1, 2(x5)
	lb x2, 2(x6)
	lb x3, 1(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 1(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lui x1, 0x24428
	addi x1, x1, 193
	lui x2, 0x43565
	addi x2, x2, 140
	lui x3, 0x37898
	addi x3, x3, 458
	lui x4, 0x65681
	addi x4, x4, 559
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 1(x8)
	lb x1, 3(x5)
	lb x2, 3(x6)
	lb x3, 2(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 0(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 1(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 1(x8)
	lb x1, 1(x5)
	lb x2, 2(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 2(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 3(x7)
	lb x4, 1(x8)
	lb x1, 1(x5)
	lb x2, 2(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 2(x6)
	lb x3, 1(x7)
	lb x4, 0(x8)
	lb x1, 3(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 2(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 2(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 0(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 0(x7)
	lb x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lui x5, 0x50000
	lui x6, 0x60000
	lui x7, 0x70000
	lui x8, 0x80000
	lui x9, 0x90000
	lui x1, 0x49061
	addi x1, x1, 353
	lui x2, 0x82357
	addi x2, x2, 683
	lui x3, 0x21024
	addi x3, x3, 936
	lui x4, 0x98226
	addi x4, x4, 670
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 0(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 0(x6)
	lb x3, 0(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 3(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 3(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 2(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 0(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 2(x7)
	lb x4, 1(x8)
	lb x1, 1(x5)
	lb x2, 1(x6)
	lb x3, 1(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 0(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 0(x8)
	lb x1, 1(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 3(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lui x1, 0x48313
	addi x1, x1, 326
	lui x2, 0x75464
	addi x2, x2, 691
	lui x3, 0x21187
	addi x3, x3, 423
	lui x4, 0x26456
	addi x4, x4, 742
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 3(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 1(x6)
	lb x3, 0(x7)
	lb x4, 2(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 1(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 2(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 3(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 0(x7)
	lb x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lui x5, 0x50000
	lui x6, 0x60000
	lui x7, 0x70000
	lui x8, 0x80000
	lui x9, 0x90000
	lui x1, 0x74607
	addi x1, x1, 895
	lui x2, 0x72799
	addi x2, x2, 240
	lui x3, 0x55381
	addi x3, x3, 913
	lui x4, 0x21976
	addi x4, x4, 386
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 2(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 0(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 0(x5)
	sh x2, 2(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 2(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 2(x6)
	lb x3, 1(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 2(x6)
	lb x3, 2(x7)
	lb x4, 1(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 1(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 2(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 0(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 2(x6)
	lb x3, 2(x7)
	lb x4, 1(x8)
	lb x1, 3(x5)
	lb x2, 2(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 1(x8)
	lb x1, 3(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 0(x5)
	lb x2, 2(x6)
	lb x3, 2(x7)
	lb x4, 1(x8)
	lb x1, 2(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 2(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 1(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lb x1, 2(x5)
	lb x2, 2(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lui x1, 0x35453
	addi x1, x1, 332
	lui x2, 0x44307
	addi x2, x2, 379
	lui x3, 0x11475
	addi x3, x3, 724
	lui x4, 0x83850
	addi x4, x4, 191
	lw x1, 0(x5)
	lw x2, 0(x6)
	lw x3, 0(x7)
	lw x4, 0(x8)
	or x3, x1, x4
	sra x7, x8, x1
	sub x8, x3, x5
	or x5, x8, x4
	srl x2, x5, x8
	sub x1, x3, x1
	sll x8, x7, x2
	srl x1, x8, x2
	xor x5, x6, x2
	xor x2, x4, x5
	sra x6, x2, x2
	or x7, x8, x4
	srl x9, x3, x3
	and x3, x4, x6
	srl x5, x4, x2
	sra x1, x6, x5
	xor x2, x5, x8
	and x1, x2, x5
	add x9, x5, x1
	sra x2, x9, x5
	sra x7, x6, x5
	sltu x7, x2, x1
	add x5, x6, x2
	sll x9, x3, x3
	add x2, x6, x1
	slt x2, x5, x7
	slt x8, x6, x9
	or x9, x1, x3
	or x5, x7, x6
	xor x5, x3, x2
	and x3, x8, x8
	sltu x8, x8, x7
	add x8, x5, x8
	sub x6, x8, x5
	sltu x3, x6, x2
	or x4, x6, x9
	srl x4, x3, x9
	xor x5, x1, x8
	sra x9, x9, x3
	and x5, x5, x5
	slt x1, x4, x4
	sll x2, x1, x1
	sll x3, x1, x5
	or x8, x7, x5
	srl x8, x5, x6
	sltu x2, x4, x6
	add x7, x2, x1
	sub x7, x4, x5
	sltu x3, x7, x6
	srl x6, x1, x3
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	addi x1, x1, 111
	lui x5, 0x50000
	lui x6, 0x60000
	lui x7, 0x70000
	lui x8, 0x80000
	lui x9, 0x90000
	lui x1, 0x52467
	addi x1, x1, 996
	lui x2, 0x95809
	addi x2, x2, 119
	lui x3, 0x61585
	addi x3, x3, 216
	lui x4, 0x70101
	addi x4, x4, 538
	sw x1, 0(x5)
	sw x2, 0(x6)
	sw x3, 0(x7)
	sw x4, 0(x8)
	lui x1, 0x91597
	addi x1, x1, 254
	lui x2, 0x47706
	addi x2, x2, 165
	lui x3, 0x11473
	addi x3, x3, 150
	lui x4, 0x42200
	addi x4, x4, 660
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	lw x2, 0(x5)
	addi x1, x2, 11
	sw x1, 0(x5)
	addi x4, x0, 10
	nop
_br1:
	addi x4, x4, -1
	nop
	bne x4, x0, _br1
	addi x3, x0, 10
	addi x2, x0, 100
_br2:
	addi x3, x3, 10
	nop
	blt x3, x2, _br2
	addi x3, x0, 10
	addi x2, x0, 100
_br3:
	addi x3, x3, 10
	nop
	bge x3, x2, _br4
	jal x1, _br3
_br4:
	lui x1, 0x83631
	addi x1, x1, 895
	lui x2, 0x66603
	addi x2, x2, 341
	lui x3, 0x68229
	addi x3, x3, 742
	lui x4, 0x91792
	addi x4, x4, 386
	lui x5, 0x46520
	addi x5, x5, 798
	lui x6, 0x84887
	addi x6, x6, 444
	lui x7, 0x48809
	addi x7, x7, 701
	lui x8, 0x19661
	addi x8, x8, 225
	lui x9, 0x55762
	addi x9, x9, 805
	or x9, x4, x4
	sltu x6, x1, x6
	xor x3, x2, x3
	slt x4, x1, x5
	srl x9, x4, x3
	sll x2, x1, x2
	sub x9, x6, x2
	srl x2, x4, x3
	sll x9, x6, x1
	srl x3, x5, x7
	add x5, x4, x5
	slt x4, x9, x4
	or x1, x3, x3
	sll x5, x1, x1
	add x2, x8, x6
	add x9, x4, x7
	srl x6, x7, x5
	xor x9, x6, x5
	slt x7, x8, x5
	sll x8, x1, x9
	srl x2, x2, x3
	srl x5, x4, x4
	sub x4, x9, x9
	sra x8, x8, x3
	slt x6, x2, x9
	sra x7, x7, x4
	sra x6, x8, x5
	sltu x7, x4, x8
	add x4, x3, x7
	sll x6, x3, x7
	sra x6, x8, x5
	or x9, x2, x1
	srl x9, x8, x7
	and x7, x9, x6
	sltu x4, x5, x2
	sll x6, x7, x5
	xor x6, x6, x4
	add x1, x3, x5
	slt x3, x2, x5
	sltu x1, x7, x5
	add x6, x9, x7
	sll x1, x1, x9
	and x9, x5, x8
	sll x7, x9, x4
	and x7, x1, x8
	xor x2, x1, x4
	slt x9, x3, x4
	slt x2, x6, x2
	srl x1, x6, x5
	sra x7, x4, x2
	slt x4, x6, x4
	slt x1, x2, x4
	add x1, x8, x8
	sltu x3, x6, x2
	xor x7, x9, x5
	srl x7, x1, x9
	sra x3, x2, x1
	slt x6, x9, x9
	sra x4, x8, x6
	sll x5, x2, x4
	sltu x2, x2, x9
	sra x8, x9, x4
	xor x3, x3, x1
	sra x8, x9, x7
	and x5, x6, x5
	and x1, x3, x3
	slt x4, x7, x7
	add x3, x1, x8
	and x1, x4, x7
	and x9, x3, x8
	sra x3, x4, x2
	sra x6, x8, x9
	add x3, x8, x7
	or x4, x3, x5
	slt x8, x9, x1
	sra x7, x4, x4
	xor x2, x8, x9
	slt x5, x1, x1
	sub x6, x7, x5
	srl x7, x9, x1
	xor x4, x9, x3
	xor x4, x4, x4
	slt x2, x8, x9
	or x5, x9, x2
	sltu x8, x3, x9
	sra x3, x4, x3
	and x6, x9, x3
	or x5, x3, x4
	srl x6, x6, x2
	and x9, x8, x8
	slt x1, x3, x9
	sub x2, x5, x8
	or x8, x4, x2
	xor x8, x4, x3
	sltu x6, x1, x5
	sltu x3, x8, x6
	sub x8, x9, x1
	sra x4, x3, x9
	srl x8, x4, x3
	sub x5, x7, x5
	lui x5, 0x50000
	lui x6, 0x60000
	lui x7, 0x70000
	lui x8, 0x80000
	lui x9, 0x90000
	addi x4, x0, 10
_fl1:
	addi x4, x4, -1
	sw x4, 0(x6)
	bne x4, x0, _fl1
	addi x3, x0, 10
	addi x2, x0, 100
_fl2:
	addi x3, x3, 10
	sw x3, 0(x8)
	lw x3, 0(x8)
	blt x3, x2, _fl2
	addi x3, x0, 10
	addi x2, x0, 100
_fl3:
	addi x3, x3, 10
	sw x3, 0(x7)
	lw x3, 0(x7)
	sw x3, 0(x6)
	bge x3, x2, _fl4
	jal x1, _fl3
_fl4:
	lui x1, 0x62144
	addi x1, x1, 632
	lui x2, 0x18985
	addi x2, x2, 349
	lui x3, 0x45506
	addi x3, x3, 808
	lui x4, 0x11720
	addi x4, x4, 605
	lui x5, 0x53567
	addi x5, x5, 925
	lui x6, 0x79356
	addi x6, x6, 755
	lui x7, 0x92813
	addi x7, x7, 582
	lui x8, 0x18419
	addi x8, x8, 775
	lui x9, 0x28946
	addi x9, x9, 604
	and x9, x3, x7
	srl x2, x7, x3
	add x2, x1, x9
	sra x7, x8, x8
	sub x6, x9, x6
	sltu x6, x6, x4
	xor x7, x5, x6
	add x2, x1, x9
	and x4, x6, x9
	sra x3, x3, x9
	sub x8, x1, x8
	add x7, x6, x7
	sub x4, x3, x9
	srl x7, x8, x6
	sub x1, x3, x9
	slt x6, x1, x8
	sltu x3, x3, x1
	sub x4, x4, x6
	sll x7, x5, x4
	sub x2, x6, x3
	and x5, x3, x4
	sltu x3, x3, x6
	or x5, x2, x8
	sltu x2, x4, x8
	sra x4, x1, x3
	sltu x3, x9, x5
	add x3, x1, x2
	sll x1, x7, x6
	sll x2, x3, x2
	add x3, x2, x2
	slt x9, x2, x9
	sub x5, x6, x9
	sll x3, x5, x2
	slt x8, x5, x5
	or x6, x7, x5
	and x5, x6, x5
	xor x3, x4, x6
	sll x7, x3, x7
	sltu x3, x2, x7
	sltu x7, x3, x1
	srl x9, x3, x5
	and x4, x6, x6
	sltu x1, x7, x7
	sltu x4, x5, x5
	add x8, x3, x2
	sra x6, x8, x2
	or x4, x6, x6
	xor x2, x5, x5
	slt x7, x7, x1
	xor x8, x8, x5
	sltu x2, x8, x6
	xor x7, x2, x9
	sltu x1, x1, x9
	sra x1, x7, x2
	and x9, x3, x1
	srl x9, x7, x1
	sra x4, x9, x5
	sltu x1, x7, x7
	sltu x7, x9, x9
	slt x7, x2, x6
	sra x6, x5, x1
	slt x2, x2, x8
	sll x9, x6, x1
	sra x3, x3, x2
	sub x7, x4, x1
	or x1, x2, x7
	xor x1, x8, x4
	sub x4, x8, x2
	slt x8, x5, x3
	add x1, x2, x5
	add x7, x7, x4
	sltu x3, x2, x9
	slt x7, x8, x1
	sra x2, x4, x3
	xor x1, x8, x4
	sll x5, x5, x7
	sll x5, x6, x9
	xor x9, x2, x5
	add x8, x7, x1
	xor x3, x8, x5
	add x3, x8, x8
	add x2, x1, x9
	sra x7, x1, x7
	srl x7, x1, x4
	slt x9, x3, x6
	srl x2, x4, x7
	sll x9, x5, x4
	sll x4, x9, x8
	sll x6, x5, x8
	sltu x5, x5, x7
	or x7, x4, x6
	add x2, x7, x5
	or x4, x6, x6
	sub x3, x9, x7
	slt x5, x7, x1
	and x3, x8, x4
	sub x6, x1, x2
	srl x9, x2, x1
	sltu x3, x8, x3
	sltu x7, x7, x3
	jal x2, _fjump1
	sll x3, x9, x7
	srl x3, x4, x2
	add x7, x6, x4
	or x6, x4, x5
	add x6, x1, x5
	xor x4, x5, x1
	sll x6, x2, x1
	sltu x9, x1, x9
	sub x5, x5, x3
	xor x9, x4, x3
	sltu x5, x4, x8
	and x7, x7, x7
	xor x6, x8, x6
	or x7, x2, x1
	sll x8, x2, x5
	or x7, x4, x6
	add x4, x3, x7
	add x1, x1, x4
	slt x6, x9, x1
	and x8, x8, x9
	sltu x4, x5, x4
	xor x6, x7, x4
	slt x6, x3, x7
	sll x2, x3, x2
	sltu x2, x6, x8
	and x3, x3, x4
	sltu x4, x8, x6
	add x6, x2, x7
	slt x4, x2, x4
	add x5, x3, x8
	sra x9, x6, x3
	slt x6, x4, x8
	sltu x4, x8, x6
	sub x2, x9, x1
	and x6, x9, x7
	and x1, x3, x1
	sra x4, x6, x3
	sub x9, x6, x5
	add x7, x5, x7
	slt x8, x3, x5
	sltu x2, x9, x3
	xor x2, x1, x3
	xor x2, x1, x6
	and x8, x3, x5
	sub x8, x5, x3
	sra x5, x5, x3
	srl x7, x9, x5
	or x9, x9, x9
	sub x6, x4, x7
	sll x6, x2, x7
	sltu x3, x5, x5
	srl x3, x5, x9
	srl x9, x8, x5
	sll x9, x2, x6
	and x8, x5, x5
	add x4, x4, x7
	or x9, x4, x9
	slt x4, x4, x9
	sltu x2, x7, x4
	sll x4, x9, x3
	srl x5, x2, x3
	xor x4, x8, x6
	xor x3, x2, x8
	xor x5, x5, x3
	or x1, x8, x3
	sra x7, x1, x7
	add x3, x9, x7
	sltu x1, x7, x3
	slt x1, x3, x9
	srl x6, x9, x7
	sra x6, x5, x7
	sra x6, x6, x2
	sra x7, x2, x4
	and x1, x8, x8
	slt x2, x9, x2
	srl x2, x3, x2
	srl x1, x1, x3
	xor x7, x1, x8
	sltu x2, x3, x7
	and x9, x8, x6
	sra x5, x6, x2
	xor x5, x5, x9
	or x1, x1, x6
	add x1, x5, x3
	sub x3, x3, x8
	sub x4, x6, x1
	sra x1, x8, x5
	slt x9, x3, x1
	srl x9, x1, x6
	sll x6, x1, x6
	or x3, x6, x1
	slt x7, x3, x7
	sll x8, x5, x4
	and x7, x8, x3
	xor x2, x4, x1
	and x6, x8, x2
	sub x2, x9, x3
	sra x3, x6, x7
	slt x3, x2, x5
	and x2, x1, x8
	srl x3, x7, x2
	add x4, x9, x3
	sll x9, x6, x6
	sub x4, x6, x5
	sub x8, x3, x4
	xor x5, x3, x1
	sll x5, x2, x1
	sra x8, x8, x7
	slt x4, x8, x2
	xor x6, x5, x7
	srl x7, x4, x1
	or x2, x6, x9
	or x3, x9, x6
	sub x4, x5, x8
	sltu x7, x4, x3
	add x2, x2, x5
	add x7, x9, x7
	srl x2, x3, x8
	sltu x4, x3, x8
	sra x4, x5, x4
	or x5, x6, x9
	and x1, x2, x6
	sltu x7, x4, x7
	sub x7, x8, x2
	sltu x4, x1, x8
	xor x1, x7, x3
	sra x9, x8, x9
	slt x5, x8, x6
	xor x2, x9, x5
	sub x9, x2, x3
	and x8, x8, x4
	sltu x4, x4, x2
	srl x8, x7, x7
	sra x2, x9, x9
	sra x7, x8, x2
	sra x3, x7, x9
	sra x2, x6, x2
	sll x5, x3, x2
	slt x2, x5, x1
	sra x5, x3, x3
	or x3, x8, x3
	slt x7, x7, x7
	add x7, x5, x3
	add x9, x3, x7
	sub x6, x5, x4
	sll x3, x6, x6
	sub x4, x6, x3
	or x5, x2, x2
	sra x8, x7, x5
	or x7, x8, x6
	sra x2, x5, x2
	sub x1, x9, x3
	sub x6, x6, x3
	sub x5, x4, x5
	and x2, x5, x4
	sltu x5, x9, x3
	or x2, x1, x8
	sltu x4, x9, x6
	or x5, x7, x7
	or x3, x3, x9
	sltu x5, x2, x2
	slt x6, x9, x8
	xor x9, x7, x6
	sub x1, x6, x5
	slt x3, x8, x8
	sll x5, x8, x9
	add x1, x1, x7
	sltu x6, x1, x7
	slt x9, x3, x4
	and x9, x4, x1
	add x3, x4, x1
	add x1, x7, x4
	sub x7, x5, x2
	sll x9, x1, x6
	srl x9, x1, x4
	xor x7, x8, x7
	slt x4, x9, x3
	sra x3, x3, x2
	add x5, x7, x8
	or x1, x2, x2
	sra x9, x5, x2
	srl x8, x8, x7
	and x9, x5, x1
	xor x8, x3, x9
	add x1, x2, x9
	sltu x6, x2, x7
	sub x9, x1, x5
	sltu x1, x8, x9
	or x7, x1, x8
	sll x5, x3, x4
	sub x4, x6, x2
	xor x4, x1, x1
	xor x5, x3, x1
	add x7, x9, x3
	sra x8, x4, x2
	sra x1, x6, x2
	sub x4, x2, x6
	sra x7, x6, x6
	sra x4, x8, x8
	slt x3, x6, x8
	sltu x6, x4, x7
	sltu x1, x5, x1
	sltu x1, x7, x6
	slt x9, x2, x3
	sra x2, x9, x3
	or x6, x3, x6
	xor x5, x2, x3
	or x3, x1, x9
	sll x3, x4, x3
	sltu x1, x5, x4
	sltu x8, x1, x6
	and x9, x1, x6
	add x3, x9, x5
	srl x4, x5, x3
	sra x9, x7, x2
	or x3, x7, x8
	xor x7, x5, x1
	srl x8, x1, x5
	or x9, x7, x7
	xor x8, x4, x1
	sll x7, x8, x3
	xor x8, x6, x3
	and x7, x9, x7
	sra x1, x5, x6
	and x1, x3, x7
	or x7, x3, x4
	xor x9, x1, x6
	add x8, x6, x9
	srl x2, x1, x5
	sra x9, x6, x9
	xor x1, x4, x8
	add x2, x3, x2
	sra x7, x5, x1
	xor x7, x9, x5
	and x9, x1, x5
	srl x9, x5, x7
	sltu x2, x7, x1
	xor x6, x1, x4
	or x2, x2, x1
	and x8, x6, x4
	xor x2, x7, x3
	or x7, x3, x3
	srl x6, x8, x3
	xor x5, x3, x1
	xor x4, x5, x2
	slt x4, x8, x9
	slt x9, x9, x1
	sub x8, x9, x7
	sll x6, x2, x4
	srl x8, x4, x8
	and x1, x7, x7
	sltu x2, x1, x8
	slt x5, x2, x6
	and x1, x3, x6
	srl x7, x2, x1
	sub x1, x9, x5
	sltu x2, x5, x5
	sll x1, x4, x9
	xor x4, x6, x8
	sub x6, x9, x3
	sra x9, x6, x4
	and x9, x6, x2
	sub x5, x5, x1
	xor x7, x3, x3
	srl x5, x9, x8
	xor x5, x9, x7
	and x9, x4, x5
	slt x1, x4, x8
	sub x2, x6, x8
	sltu x1, x1, x5
	xor x5, x2, x1
	xor x1, x6, x5
	add x5, x2, x4
	or x6, x9, x5
	or x4, x1, x9
	and x8, x7, x1
	sltu x9, x2, x6
	slt x5, x7, x3
	sra x8, x5, x8
	or x7, x7, x6
	xor x6, x1, x1
	xor x8, x6, x7
	add x2, x6, x4
	and x4, x8, x3
	slt x7, x1, x6
	slt x4, x5, x3
	sub x5, x1, x9
	sra x4, x8, x9
	slt x8, x9, x9
	sra x8, x3, x5
	sub x7, x4, x6
	add x1, x2, x6
	slt x8, x9, x9
	sll x3, x2, x9
	and x7, x3, x6
	slt x2, x7, x4
	sub x3, x6, x6
	or x6, x5, x3
	and x2, x6, x9
	and x3, x6, x6
	sub x1, x6, x7
	sll x8, x3, x5
	or x4, x3, x4
	sra x6, x4, x3
	sll x7, x7, x3
	sub x3, x9, x1
	or x3, x6, x1
	srl x7, x2, x9
	sra x8, x8, x3
	xor x3, x3, x3
	sll x7, x3, x3
	sltu x9, x7, x8
	srl x1, x6, x5
	sub x9, x3, x9
	sra x2, x9, x1
	or x3, x8, x3
	add x6, x5, x2
	srl x1, x5, x2
	add x3, x1, x9
	sltu x3, x4, x7
	slt x5, x7, x6
	add x5, x2, x1
	srl x5, x6, x8
	and x4, x5, x2
	add x3, x9, x8
	sra x5, x4, x2
	sltu x5, x4, x2
	sra x4, x6, x6
	srl x6, x2, x3
	slt x5, x3, x1
	sub x8, x1, x8
	add x7, x7, x5
	add x9, x8, x1
	add x8, x2, x9
	srl x2, x4, x5
	slt x7, x8, x4
	xor x1, x4, x7
	sll x3, x1, x4
	xor x2, x3, x3
	srl x3, x7, x3
	add x1, x8, x5
	add x4, x6, x8
	add x7, x9, x7
	xor x4, x9, x4
	srl x7, x5, x9
	srl x6, x4, x3
	or x7, x5, x5
	xor x3, x1, x1
	slt x6, x5, x9
	sll x7, x8, x8
	srl x7, x6, x4
	add x7, x9, x9
	and x2, x3, x7
	and x9, x4, x9
	xor x6, x3, x8
	sra x2, x4, x1
	slt x6, x8, x6
	sltu x6, x2, x7
	xor x3, x2, x8
	sub x2, x5, x2
	sltu x9, x8, x4
	and x8, x4, x9
	slt x5, x3, x3
	xor x6, x7, x1
	and x3, x3, x9
	xor x2, x5, x4
	or x5, x9, x8
	sltu x2, x6, x3
	sra x9, x8, x3
	or x7, x7, x4
	xor x1, x9, x6
	slt x2, x8, x3
	srl x4, x5, x9
	srl x5, x3, x5
	sll x4, x3, x5
	or x7, x6, x2
	and x3, x6, x5
	slt x2, x4, x3
	add x3, x6, x8
	or x5, x4, x7
	srl x5, x5, x9
	sra x9, x8, x2
	sra x9, x4, x7
	sub x3, x1, x2
	srl x2, x8, x7
	sub x3, x2, x4
	or x8, x8, x3
	sll x7, x9, x3
	sub x3, x2, x8
	sltu x6, x2, x4
	slt x7, x8, x2
	sub x2, x8, x9
	srl x9, x3, x9
	slt x5, x7, x1
	sltu x3, x2, x3
	slt x5, x3, x6
	sll x7, x9, x8
	sll x8, x3, x6
	xor x4, x5, x8
	slt x1, x1, x7
	srl x6, x7, x6
	sltu x3, x1, x9
	slt x9, x5, x7
	and x4, x3, x6
	sltu x7, x4, x2
	sub x2, x9, x9
	sltu x7, x7, x8
	xor x3, x7, x7
	srl x9, x4, x6
	sll x5, x1, x2
	and x5, x4, x8
	sltu x3, x1, x8
	and x7, x7, x3
	sll x2, x5, x3
	or x4, x2, x3
	sub x8, x5, x6
	sub x2, x5, x2
	slt x1, x5, x1
	slt x7, x2, x4
	and x4, x6, x7
	add x5, x7, x1
	sub x4, x9, x6
	slt x7, x6, x6
	add x1, x6, x8
	srl x4, x2, x5
	or x7, x3, x2
	srl x4, x2, x3
	and x8, x8, x5
	sll x1, x7, x3
	add x5, x9, x8
	xor x5, x7, x4
	sll x4, x3, x2
	srl x3, x3, x6
	add x6, x1, x5
	sra x3, x9, x9
	or x8, x3, x8
	sub x3, x7, x6
	and x1, x5, x5
	slt x7, x2, x9
	sll x1, x1, x5
	slt x7, x6, x5
	add x8, x3, x6
	or x7, x9, x5
	sub x3, x4, x5
	sub x7, x4, x3
	or x9, x8, x9
	slt x7, x6, x5
	or x1, x8, x6
	and x1, x9, x6
	and x8, x2, x8
	sll x1, x8, x3
	slt x5, x5, x6
	srl x2, x1, x7
	or x1, x4, x1
	slt x5, x3, x3
	or x2, x9, x2
	xor x4, x7, x9
	slt x8, x2, x1
	srl x3, x6, x9
	add x3, x3, x8
	srl x6, x3, x7
	or x3, x9, x6
	srl x2, x3, x2
	slt x5, x9, x8
	add x5, x9, x2
	sub x5, x1, x3
	xor x4, x2, x5
	and x7, x1, x9
	add x1, x9, x5
	sll x9, x1, x7
	add x8, x1, x2
	and x8, x1, x1
	xor x6, x4, x4
	and x6, x9, x4
	sltu x7, x5, x8
	or x2, x7, x4
	add x9, x6, x4
	slt x5, x6, x3
	srl x8, x5, x4
	sub x2, x5, x6
	or x6, x6, x7
	xor x3, x3, x3
	srl x8, x9, x4
	slt x1, x3, x8
	srl x2, x9, x7
	sub x5, x5, x9
	xor x8, x3, x6
	sll x2, x8, x4
	or x1, x6, x7
	xor x8, x5, x2
	srl x5, x3, x1
	sra x3, x3, x1
	and x7, x6, x8
	sub x1, x2, x6
	sub x9, x2, x5
	sra x6, x8, x2
	sub x9, x7, x8
	srl x6, x6, x4
	sltu x1, x8, x8
	srl x4, x6, x3
	sltu x3, x2, x3
	xor x3, x2, x1
	slt x7, x2, x4
	or x1, x7, x6
	sra x4, x9, x1
	sub x2, x7, x6
	sub x5, x7, x1
	srl x5, x9, x5
	slt x8, x4, x3
	or x5, x6, x8
	slt x3, x7, x7
	sltu x6, x3, x3
	sra x5, x7, x6
	sltu x9, x6, x7
	or x4, x3, x5
	sra x3, x1, x8
	add x2, x1, x5
	slt x1, x7, x4
	slt x9, x2, x9
	sub x2, x2, x9
	or x5, x3, x7
	or x9, x8, x1
	sll x4, x1, x7
	or x7, x6, x4
	slt x8, x8, x4
	and x5, x2, x2
	or x7, x6, x3
	or x7, x9, x9
	sll x9, x8, x6
	sltu x5, x3, x4
	or x3, x7, x2
	and x8, x6, x5
	srl x1, x4, x1
	or x8, x4, x2
	sltu x3, x6, x8
	add x2, x9, x6
	sra x4, x8, x5
	or x3, x8, x9
	and x9, x5, x5
	sub x9, x2, x6
	sltu x6, x2, x6
	srl x1, x3, x4
	sltu x3, x1, x5
	sltu x9, x3, x1
	xor x7, x6, x2
	srl x5, x3, x6
	slt x5, x7, x6
	xor x9, x4, x5
	sra x1, x6, x3
	sll x4, x8, x7
	sub x4, x6, x8
	sub x2, x1, x5
	srl x8, x9, x9
	add x4, x5, x7
	and x5, x1, x7
	sub x3, x9, x9
	sub x4, x7, x5
	add x3, x5, x5
	xor x2, x2, x7
	xor x5, x2, x2
	sub x1, x6, x9
	or x7, x1, x9
	or x1, x9, x6
	slt x8, x8, x8
	add x8, x7, x5
	and x4, x1, x9
	sltu x8, x3, x5
	sra x4, x4, x3
	sra x8, x9, x3
	xor x2, x4, x8
	add x3, x2, x2
	sll x9, x9, x8
	xor x2, x2, x1
	slt x8, x6, x1
	sll x9, x3, x9
	sll x6, x2, x2
	sltu x7, x9, x8
	srl x8, x7, x3
	sub x9, x4, x5
	sltu x1, x5, x4
	sltu x7, x9, x2
	xor x8, x9, x4
	sub x4, x7, x3
	sll x3, x2, x8
	sll x3, x8, x5
	sll x3, x2, x1
	sub x5, x8, x7
	srl x1, x4, x6
	add x1, x6, x1
	sub x2, x8, x3
	sra x3, x3, x7
	sra x2, x5, x8
	and x3, x8, x1
	and x1, x1, x9
	and x7, x8, x3
	xor x2, x6, x7
	xor x6, x2, x1
	and x8, x7, x9
	sra x3, x9, x9
	sll x8, x1, x7
	and x9, x4, x1
	and x8, x6, x2
	sltu x5, x5, x9
	add x5, x3, x8
	sra x2, x3, x7
	xor x8, x2, x5
	and x3, x3, x2
	xor x5, x7, x8
	and x8, x8, x1
	xor x5, x9, x3
	sll x4, x3, x6
	sub x1, x7, x7
	srl x2, x1, x8
	xor x5, x9, x8
	srl x9, x6, x8
	sltu x7, x3, x5
	sll x5, x1, x8
	sll x4, x3, x5
	sltu x8, x4, x4
	xor x5, x8, x3
	sra x8, x8, x9
	add x6, x9, x5
	sll x4, x6, x1
	xor x1, x4, x1
	slt x4, x3, x5
	sub x1, x3, x2
	and x7, x5, x5
	sll x1, x2, x3
	add x2, x3, x2
	slt x7, x6, x8
	sll x7, x2, x4
	sll x6, x3, x2
	sra x1, x7, x9
	slt x8, x7, x3
	slt x4, x4, x9
	sll x9, x4, x5
	xor x7, x2, x7
	or x5, x8, x3
	sll x5, x1, x6
	add x4, x3, x9
	xor x7, x3, x3
	xor x8, x1, x1
	or x1, x5, x4
	and x5, x8, x8
	sra x2, x8, x6
	sra x4, x1, x1
	srl x8, x3, x6
	srl x3, x6, x3
	sub x9, x2, x3
	sra x5, x1, x9
	or x5, x9, x9
	srl x2, x3, x5
	sltu x1, x1, x7
	add x7, x6, x6
	sltu x7, x5, x3
	add x2, x9, x3
	xor x5, x9, x8
	srl x5, x4, x7
	sltu x3, x8, x3
	srl x5, x5, x3
	sra x2, x7, x9
	sra x2, x1, x1
	sll x9, x5, x2
	or x7, x7, x6
	slt x9, x3, x1
	or x8, x9, x1
	sltu x2, x3, x5
	srl x5, x7, x2
	slt x8, x4, x6
	srl x5, x7, x6
	or x5, x2, x5
	or x7, x5, x1
	sub x6, x7, x9
	and x4, x9, x8
	sub x6, x2, x9
	srl x1, x9, x6
	srl x9, x1, x4
	sub x1, x4, x1
	or x4, x1, x7
	sll x6, x9, x2
	sltu x6, x8, x7
	sll x3, x3, x7
	or x2, x3, x1
	add x9, x7, x7
	sub x4, x9, x4
	add x6, x1, x4
	add x9, x1, x9
	xor x6, x1, x1
	srl x4, x2, x9
	srl x8, x4, x5
	sub x4, x3, x2
	sll x2, x4, x5
	sub x8, x8, x7
	slt x8, x9, x4
	or x9, x2, x6
	sll x9, x1, x3
	and x1, x6, x6
	xor x8, x6, x1
	sra x3, x8, x6
	slt x7, x5, x1
	or x8, x2, x8
	xor x5, x9, x8
	sra x3, x3, x1
	slt x2, x8, x6
	add x5, x6, x5
	xor x5, x3, x1
	srl x4, x1, x2
	sltu x5, x9, x8
	or x7, x2, x1
	sub x4, x8, x8
	slt x3, x8, x2
	sra x1, x3, x1
	add x1, x8, x2
	slt x4, x1, x3
	sltu x1, x2, x4
	or x8, x9, x8
	and x8, x8, x1
	xor x5, x5, x2
	sub x1, x1, x1
	sltu x3, x1, x7
	or x7, x5, x2
	or x3, x6, x3
	sub x1, x9, x9
	sltu x3, x9, x8
	xor x2, x9, x3
	add x4, x7, x9
	sub x8, x9, x2
	and x6, x9, x7
	and x2, x5, x4
	or x3, x1, x8
	xor x1, x1, x9
	and x9, x6, x8
	srl x4, x2, x1
	xor x7, x2, x3
	sra x3, x2, x9
	sra x1, x1, x8
	and x3, x1, x8
	sub x7, x5, x5
	sub x2, x8, x9
	or x9, x5, x9
	add x9, x8, x1
	xor x1, x1, x7
	xor x2, x6, x3
	sub x1, x6, x3
	sll x4, x1, x7
	srl x6, x3, x8
	sltu x5, x5, x5
	or x3, x1, x3
	add x8, x5, x5
	xor x9, x7, x3
	sll x9, x4, x8
	xor x2, x4, x1
	sra x7, x8, x1
	or x5, x9, x6
	xor x7, x5, x3
	add x1, x2, x7
	add x3, x8, x8
	xor x5, x3, x8
	and x3, x8, x1
	sub x3, x8, x6
	sltu x1, x9, x2
	or x4, x4, x2
	xor x3, x6, x3
	sra x6, x3, x4
	and x3, x1, x1
	slt x2, x9, x8
	xor x9, x9, x8
	xor x7, x3, x6
	sra x1, x4, x7
	sra x3, x4, x3
	xor x8, x1, x4
	sltu x9, x3, x3
	slt x4, x1, x4
	sra x7, x1, x9
	sll x7, x6, x5
	xor x9, x4, x4
	slt x1, x2, x6
	sub x6, x7, x8
	sltu x3, x9, x1
	sra x3, x6, x8
	slt x6, x4, x5
	xor x3, x9, x1
	sll x4, x5, x9
	sltu x1, x2, x1
	xor x5, x9, x6
	add x3, x4, x1
	add x9, x8, x3
	add x9, x3, x9
	sub x7, x1, x2
	sltu x5, x9, x9
	sll x4, x6, x3
	sll x6, x2, x5
	slt x4, x8, x3
	slt x6, x8, x7
	sra x2, x5, x6
	slt x2, x4, x2
	sra x2, x3, x6
	sltu x3, x6, x8
	and x5, x4, x2
	or x8, x5, x8
	sub x9, x8, x8
	add x6, x2, x4
	or x4, x7, x1
	sra x2, x1, x8
	add x7, x1, x9
	sub x7, x3, x5
	add x6, x6, x4
	xor x7, x4, x7
	sra x3, x4, x1
	xor x9, x5, x2
	srl x2, x9, x9
	sll x2, x3, x4
	slt x3, x2, x1
	sub x4, x7, x9
	xor x2, x9, x3
	sub x5, x1, x2
	add x2, x4, x1
	srl x4, x7, x1
	slt x8, x1, x1
	sub x2, x8, x6
	xor x3, x5, x2
	slt x4, x3, x4
	sll x8, x9, x1
	or x6, x3, x4
	sltu x7, x9, x9
	sub x8, x1, x2
	slt x2, x7, x2
	or x2, x7, x2
	sub x6, x9, x7
	sltu x4, x4, x8
	sub x3, x3, x3
	add x8, x6, x2
	srl x3, x4, x3
	and x1, x9, x9
	and x2, x5, x2
	xor x1, x6, x6
	add x2, x6, x5
	add x4, x5, x8
	slt x4, x9, x4
	srl x9, x1, x1
	xor x2, x9, x1
	add x2, x3, x8
	add x6, x8, x1
	sll x4, x8, x7
	sub x9, x1, x8
	sll x1, x1, x8
	sll x8, x3, x8
	sra x2, x9, x7
	sll x8, x4, x3
	and x4, x8, x1
	srl x9, x1, x6
	add x5, x5, x3
	or x9, x9, x1
	xor x4, x6, x4
	add x8, x4, x5
	or x8, x9, x5
	or x6, x1, x1
	add x4, x3, x3
	add x5, x7, x9
	sll x6, x6, x1
	sra x8, x4, x2
	srl x5, x4, x6
	or x3, x6, x1
	slt x1, x8, x3
	srl x4, x9, x3
	add x3, x8, x8
	xor x1, x4, x3
	add x9, x7, x3
	xor x3, x9, x9
	sltu x6, x6, x3
	or x1, x3, x5
	or x5, x9, x9
	add x1, x8, x5
	sub x5, x5, x3
	xor x1, x2, x3
	sll x3, x7, x9
	xor x1, x7, x8
	xor x7, x6, x7
	srl x6, x9, x5
	sltu x6, x1, x7
	sra x1, x4, x7
	or x2, x9, x2
	sll x5, x6, x3
	srl x6, x9, x4
	sltu x3, x1, x4
	sub x8, x5, x5
	sra x2, x9, x8
	add x6, x2, x6
	add x4, x5, x9
	xor x8, x1, x4
	sll x7, x8, x2
	srl x5, x8, x5
	srl x5, x2, x5
	and x9, x9, x1
	add x8, x1, x5
	sra x6, x2, x1
	and x4, x7, x7
	add x4, x7, x4
	sra x4, x1, x7
	sra x1, x4, x2
	and x9, x8, x8
	srl x3, x8, x5
	xor x4, x9, x6
	add x4, x7, x9
	sra x6, x8, x4
	sra x7, x2, x7
	or x7, x3, x1
	slt x3, x1, x5
	and x6, x4, x1
	xor x9, x6, x3
	sub x5, x9, x3
	or x8, x9, x3
	slt x1, x2, x7
	srl x8, x2, x5
	and x2, x8, x6
	sll x6, x8, x3
	or x1, x3, x1
	xor x6, x9, x2
	sltu x4, x3, x6
	and x7, x6, x9
	and x7, x5, x7
	slt x8, x8, x3
	sra x3, x1, x4
	add x1, x9, x3
	xor x7, x2, x6
	srl x4, x4, x4
	and x9, x6, x6
	srl x3, x1, x2
	sltu x3, x8, x9
	sltu x5, x1, x4
	add x5, x6, x4
	slt x3, x9, x6
	and x4, x1, x4
	srl x5, x7, x4
	sltu x4, x9, x9
	or x4, x3, x1
	sll x2, x9, x8
	sub x6, x2, x9
	or x1, x5, x4
	and x7, x2, x1
	xor x5, x3, x5
	sll x4, x9, x2
	sll x8, x1, x2
	or x2, x4, x5
	and x9, x9, x3
	and x3, x6, x8
	or x1, x8, x6
	slt x2, x7, x7
	srl x1, x9, x5
	add x2, x7, x4
	sltu x9, x6, x5
	xor x3, x6, x3
	slt x7, x4, x8
	sltu x9, x6, x7
	sll x6, x4, x9
	xor x9, x6, x2
	and x4, x2, x6
	srl x7, x9, x8
	sltu x8, x5, x6
	or x8, x1, x6
	and x6, x5, x6
	or x4, x7, x7
	sltu x8, x8, x3
	and x8, x4, x8
	or x3, x3, x5
	sub x5, x8, x7
	or x1, x4, x1
	sltu x6, x4, x2
	or x3, x5, x8
	sra x6, x3, x9
	sltu x4, x5, x8
	slt x4, x8, x6
	add x4, x6, x7
	xor x5, x4, x6
	sll x1, x6, x4
	sub x2, x6, x7
	sra x1, x5, x9
	sra x2, x8, x4
	sll x7, x5, x5
	sll x3, x7, x7
	sltu x2, x4, x7
	or x4, x4, x1
	slt x6, x7, x3
	sra x9, x6, x3
	add x8, x2, x6
	srl x3, x3, x3
	sra x3, x3, x5
	add x3, x1, x4
	sltu x1, x2, x4
	slt x1, x2, x6
	slt x5, x3, x6
	srl x8, x3, x2
	srl x9, x3, x4
	or x7, x5, x6
	sub x4, x8, x6
	sra x7, x2, x7
	sll x3, x9, x8
	sll x5, x5, x1
	sll x8, x1, x1
	and x3, x3, x2
	xor x5, x9, x5
	slt x1, x5, x2
	sltu x5, x4, x2
	or x1, x7, x3
	or x5, x9, x1
	or x2, x3, x1
	xor x3, x7, x2
	or x3, x9, x3
	slt x2, x7, x1
	and x4, x9, x4
	and x4, x6, x7
	sltu x1, x8, x5
	sltu x2, x3, x2
	add x4, x3, x3
	sra x6, x9, x2
	add x3, x1, x3
	and x2, x8, x2
	sub x5, x4, x1
	add x8, x9, x5
	slt x5, x9, x9
	add x2, x3, x9
	sra x3, x4, x5
	xor x2, x4, x8
	xor x7, x3, x9
	sll x3, x9, x5
	sra x3, x6, x1
	sub x4, x7, x1
	sll x2, x2, x2
	sltu x1, x1, x9
	or x1, x5, x7
	sltu x9, x5, x3
	srl x9, x2, x9
	sll x6, x1, x1
	slt x8, x7, x1
	srl x5, x2, x8
	sltu x2, x3, x7
	sltu x1, x9, x2
	srl x7, x3, x2
	and x4, x6, x6
	sra x6, x7, x7
	and x4, x1, x9
	sub x1, x3, x4
	add x8, x6, x8
	slt x7, x1, x7
	sll x3, x9, x7
	and x7, x8, x1
	sltu x2, x4, x3
	srl x4, x6, x3
	xor x7, x8, x6
	or x8, x1, x4
	sra x3, x9, x1
	and x6, x8, x6
	sra x5, x9, x2
	sra x5, x4, x3
	sltu x2, x2, x3
	sll x5, x4, x1
	sltu x9, x3, x8
	sltu x3, x4, x7
	sub x2, x5, x7
	xor x1, x9, x6
	srl x1, x1, x2
	sub x8, x2, x7
	add x7, x5, x3
	and x7, x7, x6
	slt x3, x7, x8
	or x3, x6, x8
	sub x9, x2, x5
	or x9, x5, x5
	sub x7, x9, x1
	slt x6, x1, x1
	add x3, x3, x5
	and x2, x6, x2
	srl x3, x9, x4
	and x1, x6, x9
	sub x5, x3, x9
	slt x2, x3, x5
	sltu x9, x8, x2
	slt x8, x5, x4
	and x5, x7, x9
	srl x8, x7, x9
	sra x5, x7, x8
	sltu x3, x9, x2
	sltu x2, x5, x4
	srl x3, x3, x3
	srl x3, x1, x8
	sra x1, x3, x8
	slt x4, x7, x2
	and x9, x5, x8
	sll x5, x9, x7
	sra x2, x2, x7
	sll x7, x2, x8
	and x3, x3, x3
	sltu x8, x3, x1
	sltu x7, x4, x3
	sub x4, x4, x6
	and x8, x7, x7
	sll x4, x3, x7
	sll x9, x2, x7
	or x2, x4, x5
	sll x7, x3, x5
	srl x6, x8, x5
	sltu x8, x8, x6
	sub x7, x9, x6
	sra x8, x3, x3
	add x4, x3, x3
	and x1, x6, x4
	slt x5, x8, x4
	or x9, x5, x8
	srl x5, x1, x2
	srl x5, x5, x3
	sub x4, x4, x7
	srl x4, x7, x9
	sltu x4, x2, x5
	sll x8, x2, x3
	sll x4, x6, x5
	sll x6, x4, x3
	sll x7, x5, x9
	sltu x6, x6, x2
	sltu x2, x5, x6
	xor x1, x3, x6
	xor x7, x6, x6
	sll x3, x8, x1
	srl x9, x9, x9
	or x9, x3, x3
	sub x3, x4, x9
	slt x5, x7, x7
	sra x1, x4, x1
	and x5, x6, x7
	srl x9, x1, x6
	add x7, x9, x7
	sll x9, x9, x7
	xor x3, x7, x9
	sra x9, x1, x9
	or x5, x4, x6
	add x8, x3, x6
	sll x1, x4, x1
	srl x2, x7, x5
	sra x6, x7, x4
	sltu x7, x4, x2
	sra x9, x8, x3
	xor x9, x9, x4
	sll x3, x7, x5
	sra x3, x1, x1
	slt x9, x9, x6
	and x4, x9, x2
	xor x4, x4, x2
	sub x1, x9, x4
	add x2, x8, x4
	sll x1, x4, x4
	sub x5, x3, x3
	sub x7, x7, x2
	sltu x7, x4, x6
	sub x1, x3, x9
	sub x2, x3, x6
	xor x2, x8, x7
	sltu x8, x9, x4
	xor x3, x9, x7
	srl x1, x2, x7
	sra x3, x5, x6
	xor x8, x5, x7
	sltu x8, x4, x8
	sub x3, x3, x2
	sltu x7, x3, x3
	xor x9, x4, x2
	slt x6, x6, x5
	sltu x4, x1, x9
	slt x2, x7, x9
	add x7, x9, x9
	add x4, x6, x6
	add x5, x6, x8
	slt x3, x3, x9
	or x8, x6, x6
	and x2, x3, x9
	or x1, x2, x9
	add x6, x8, x1
	xor x4, x2, x6
	and x1, x7, x1
	or x7, x9, x3
	or x6, x4, x9
	add x3, x7, x5
	srl x9, x3, x2
	or x7, x8, x5
	or x1, x6, x1
	slt x4, x1, x1
	sub x7, x3, x7
	add x4, x4, x5
	sub x5, x9, x7
	sub x1, x6, x2
	sub x6, x2, x5
	sltu x7, x7, x4
	sltu x1, x5, x3
	sra x8, x9, x3
	add x9, x2, x5
	srl x9, x8, x3
	slt x2, x8, x7
	add x5, x3, x3
	and x1, x3, x6
	and x1, x6, x3
	and x2, x2, x9
	sltu x7, x9, x8
	xor x1, x1, x8
	sll x7, x9, x6
	xor x8, x4, x6
	sra x9, x8, x4
	sll x3, x1, x1
	sub x1, x6, x9
	srl x2, x8, x6
	sub x8, x4, x1
	sll x8, x3, x9
	slt x3, x9, x4
	add x3, x8, x3
	sub x1, x9, x9
	sra x1, x4, x4
	sltu x6, x1, x8
	or x3, x5, x5
	and x8, x8, x9
	or x2, x4, x5
	sltu x9, x9, x8
	and x2, x8, x8
	slt x7, x3, x1
	slt x5, x2, x7
	and x6, x1, x3
	and x8, x1, x7
	add x5, x1, x5
	add x9, x4, x7
	sll x6, x7, x9
	or x2, x1, x9
	sub x8, x6, x9
	or x7, x1, x6
	add x6, x2, x5
	srl x1, x6, x9
	slt x3, x1, x4
	add x1, x8, x6
	sra x4, x4, x8
	sltu x6, x6, x7
	slt x5, x7, x3
	sltu x3, x4, x7
	slt x6, x9, x5
	slt x7, x3, x2
	xor x1, x7, x2
	sub x5, x3, x9
	sra x9, x2, x1
	xor x4, x2, x4
	or x9, x3, x5
	add x5, x6, x6
	srl x7, x3, x3
	sub x6, x4, x4
	and x8, x8, x6
	slt x3, x4, x4
	slt x5, x3, x9
	sll x3, x8, x8
	or x1, x5, x6
	sub x7, x3, x4
	xor x8, x9, x1
	xor x4, x5, x5
	xor x1, x8, x8
	sltu x5, x3, x3
	srl x2, x4, x3
	slt x4, x2, x7
	add x7, x6, x6
	or x6, x1, x8
	sltu x8, x6, x7
	and x5, x3, x9
	slt x2, x3, x5
	and x4, x7, x3
	srl x9, x8, x5
	sub x6, x6, x8
	sll x6, x7, x7
	or x2, x5, x8
	and x4, x8, x1
	sll x5, x9, x5
	and x1, x7, x4
	and x8, x1, x8
	sltu x9, x8, x4
	sll x8, x3, x3
	srl x1, x7, x3
	slt x8, x7, x4
	sub x1, x8, x8
	sll x5, x2, x1
	srl x1, x4, x5
	or x9, x3, x1
	sll x1, x2, x9
	or x4, x2, x5
	sltu x1, x4, x3
	srl x6, x2, x6
	xor x9, x1, x7
	and x5, x7, x3
	add x6, x1, x8
	sra x2, x8, x1
	and x9, x1, x7
	sltu x1, x8, x6
	or x5, x4, x9
	sra x4, x8, x9
	sub x1, x5, x3
	and x1, x1, x2
	sub x2, x9, x1
	sltu x1, x7, x1
	srl x5, x5, x9
	srl x6, x1, x6
	or x4, x1, x4
	sll x3, x7, x7
	slt x4, x8, x1
	xor x1, x7, x9
	or x9, x9, x8
	srl x9, x7, x5
	sra x4, x9, x5
	add x8, x1, x2
	sll x1, x5, x4
	or x2, x3, x2
	sra x3, x4, x7
	or x5, x7, x5
	srl x1, x1, x1
	add x1, x6, x1
	sll x6, x6, x5
	sll x4, x2, x7
	sra x2, x1, x4
	sra x6, x7, x1
	sub x5, x6, x3
	or x9, x7, x5
	and x2, x1, x7
	sub x6, x1, x8
	add x4, x4, x2
	xor x4, x2, x6
	sltu x1, x5, x5
	xor x1, x9, x8
	xor x8, x3, x2
	and x7, x2, x7
	sub x5, x4, x6
	sll x6, x1, x5
	sub x1, x7, x6
	xor x3, x2, x8
	sub x6, x7, x8
	or x9, x7, x9
	add x7, x3, x6
	srl x5, x2, x5
	sra x1, x1, x9
	xor x7, x4, x7
	slt x9, x7, x8
	and x6, x1, x6
	or x7, x7, x1
	sub x3, x3, x7
	xor x2, x6, x5
	sub x7, x9, x1
	sll x6, x4, x2
	add x2, x9, x6
	sra x3, x5, x9
	sll x3, x1, x3
	add x4, x2, x1
	sra x3, x9, x3
	and x2, x7, x3
	and x1, x1, x1
	and x9, x5, x4
	slt x5, x6, x7
	sra x6, x7, x4
	and x5, x3, x1
	and x6, x2, x2
	srl x1, x9, x1
	and x3, x6, x9
	add x8, x8, x4
	sltu x5, x5, x9
	srl x5, x3, x4
	slt x6, x7, x8
	or x6, x3, x8
	sra x4, x9, x7
	sra x1, x3, x5
	srl x7, x7, x1
	sll x5, x1, x5
	or x2, x2, x6
	srl x3, x1, x9
	sub x6, x6, x2
	sltu x6, x1, x7
	and x8, x1, x5
	sltu x3, x2, x4
	srl x9, x3, x1
	sra x2, x6, x9
	sra x6, x8, x6
	add x6, x7, x4
	sll x1, x8, x5
	and x9, x2, x1
	sra x4, x3, x2
	add x6, x1, x2
	and x1, x3, x6
	sll x6, x9, x6
	sll x5, x7, x4
	or x7, x8, x6
	sltu x7, x2, x1
	sra x5, x7, x8
	srl x1, x9, x8
	sltu x6, x1, x4
	xor x3, x4, x8
	sub x6, x6, x8
	sra x8, x2, x1
	sltu x4, x4, x7
	sub x2, x4, x5
	add x9, x9, x7
	or x8, x7, x1
	sra x1, x6, x3
	and x8, x2, x4
	xor x5, x6, x2
	sll x2, x1, x9
	xor x3, x9, x7
	or x6, x1, x9
	sltu x9, x7, x8
	and x4, x3, x2
	or x7, x9, x4
	sub x2, x8, x9
	and x9, x1, x6
	sll x2, x5, x1
	slt x2, x8, x5
	sra x6, x2, x6
	sub x8, x1, x1
	xor x1, x9, x3
	add x9, x1, x9
	slt x5, x4, x2
	xor x5, x5, x9
	sll x5, x2, x9
	or x8, x2, x9
	xor x3, x5, x7
	sub x8, x2, x4
	sll x4, x2, x9
	sub x9, x5, x9
	xor x7, x5, x4
	sra x2, x2, x2
	sra x1, x2, x6
	sra x7, x8, x3
	or x7, x1, x5
	or x4, x9, x1
	or x6, x1, x3
	sll x6, x5, x1
	sub x2, x3, x1
	or x4, x9, x8
	sra x7, x6, x5
	sub x2, x9, x1
	srl x2, x2, x4
	xor x4, x7, x6
	xor x3, x3, x6
	sub x3, x4, x2
	xor x9, x3, x8
	sra x6, x5, x8
	srl x5, x3, x7
	add x6, x4, x7
	srl x1, x1, x7
	or x8, x6, x3
	and x7, x2, x9
	or x2, x3, x3
	sltu x6, x9, x3
	srl x1, x5, x8
	and x9, x7, x6
	srl x1, x6, x4
	srl x3, x9, x9
	sub x5, x6, x7
	slt x8, x9, x8
	add x2, x1, x5
	sltu x7, x4, x8
	sra x4, x1, x3
	sub x4, x8, x1
	srl x5, x6, x7
	add x5, x5, x4
	sltu x4, x7, x3
	add x8, x2, x6
	xor x7, x6, x9
	xor x2, x1, x9
	sltu x5, x4, x2
	sll x6, x5, x8
	sltu x6, x2, x4
	xor x1, x4, x3
	sltu x3, x3, x4
	sll x7, x2, x4
	sra x2, x5, x9
	slt x7, x9, x4
	sltu x4, x4, x3
	add x1, x3, x7
	sub x9, x4, x5
	and x9, x1, x8
	sra x8, x9, x3
	sll x9, x2, x3
	slt x6, x4, x3
	sub x2, x8, x7
	sra x5, x1, x9
	and x5, x1, x9
	xor x9, x3, x4
	sll x7, x5, x5
	sltu x8, x1, x7
	slt x5, x8, x9
	and x2, x8, x2
	and x6, x2, x1
	xor x5, x2, x8
	sll x1, x5, x3
	or x1, x3, x7
	slt x9, x6, x7
	add x6, x3, x2
	sub x4, x5, x1
	srl x9, x1, x5
	xor x9, x2, x3
	and x5, x5, x7
	and x9, x3, x4
	xor x4, x8, x2
	srl x1, x3, x3
	sra x5, x9, x6
	sltu x1, x3, x9
	srl x2, x5, x9
	sltu x8, x9, x3
	xor x6, x7, x8
	add x6, x8, x4
	and x5, x9, x4
	and x7, x4, x1
	sltu x6, x2, x4
	slt x5, x1, x5
	slt x6, x5, x4
	sra x1, x8, x2
	slt x6, x5, x2
	sub x7, x7, x2
	sltu x5, x3, x6
	sub x2, x2, x9
	sra x6, x3, x7
	add x4, x6, x9
	add x1, x5, x3
	sltu x1, x8, x6
	sll x5, x7, x9
	add x1, x7, x8
	slt x8, x3, x4
	add x9, x7, x9
	add x7, x7, x2
	sra x5, x5, x9
	srl x6, x3, x8
	or x7, x1, x6
	add x5, x6, x9
	xor x1, x1, x7
	and x5, x8, x5
	srl x6, x1, x2
	srl x4, x8, x8
	srl x4, x4, x8
	srl x9, x9, x4
	and x4, x6, x9
	sra x1, x2, x4
	slt x6, x9, x5
	sub x1, x3, x6
	srl x3, x4, x6
	add x7, x3, x6
	xor x6, x4, x4
	and x9, x5, x3
	sra x6, x9, x6
	or x1, x2, x4
	sltu x3, x9, x7
	xor x1, x3, x1
	sra x2, x7, x4
	and x3, x3, x5
	srl x1, x9, x3
	sltu x8, x1, x4
	xor x4, x2, x5
	xor x4, x9, x1
	and x8, x6, x3
	srl x1, x4, x8
	and x6, x1, x6
	slt x3, x5, x7
	srl x3, x5, x3
	and x9, x2, x6
	sub x2, x7, x6
	slt x9, x9, x5
	slt x7, x3, x4
	sra x1, x5, x4
	and x3, x8, x4
	srl x9, x1, x2
	slt x7, x3, x7
	sltu x5, x6, x4
	sub x5, x1, x3
	xor x2, x8, x2
	slt x2, x5, x3
	sll x8, x3, x3
	sra x2, x7, x1
	sub x6, x4, x6
	slt x5, x8, x1
	sub x4, x3, x4
	and x8, x8, x1
	and x6, x7, x8
	srl x8, x7, x2
	or x1, x4, x3
	sltu x8, x5, x1
	sra x6, x1, x8
	sub x6, x4, x1
	and x8, x8, x2
	srl x9, x5, x9
	or x8, x6, x1
	srl x5, x9, x3
	sll x9, x1, x6
	srl x3, x9, x5
	sll x5, x8, x2
	srl x9, x1, x5
	and x8, x1, x9
	xor x4, x2, x3
	sra x8, x3, x2
	sltu x5, x2, x6
	xor x4, x6, x4
	sra x2, x3, x2
	and x7, x5, x5
	and x7, x2, x8
	sra x5, x8, x2
	slt x1, x4, x7
	sra x8, x5, x1
	sll x1, x4, x1
	slt x3, x2, x7
	add x6, x6, x2
	srl x5, x3, x1
	xor x7, x5, x7
	sll x2, x9, x6
	add x4, x4, x6
	slt x2, x7, x9
	sub x8, x7, x6
	and x3, x5, x5
	sub x5, x2, x5
	or x7, x4, x7
	or x1, x1, x5
	or x3, x3, x6
	slt x5, x5, x3
	sll x3, x5, x1
	slt x2, x6, x1
	sltu x5, x7, x4
	or x2, x5, x4
	sub x4, x5, x3
	add x1, x4, x1
	sub x3, x8, x6
	and x8, x8, x5
	sll x7, x4, x4
	slt x5, x7, x5
	sub x3, x6, x6
	sltu x5, x7, x1
	sub x5, x5, x7
	sra x7, x2, x9
	xor x2, x7, x2
	sltu x1, x4, x4
	sub x8, x6, x3
	srl x6, x2, x5
	and x6, x5, x7
	add x9, x6, x1
	srl x8, x6, x9
	add x2, x6, x1
	and x9, x1, x4
	add x5, x8, x3
	xor x8, x2, x9
	sll x4, x5, x9
	xor x7, x1, x6
	sub x9, x4, x4
	srl x2, x8, x2
	sll x1, x7, x6
	and x8, x9, x3
	srl x6, x3, x2
	or x8, x3, x6
	srl x9, x7, x5
	srl x5, x3, x6
	xor x8, x6, x3
	srl x3, x1, x7
	srl x8, x4, x8
	sra x5, x1, x4
	sra x2, x3, x8
	or x2, x7, x5
	slt x3, x6, x8
	sub x4, x7, x4
	add x5, x7, x7
	xor x9, x7, x4
	add x2, x8, x2
	xor x4, x9, x3
	slt x5, x6, x4
	sra x1, x4, x3
	sra x8, x7, x6
	srl x4, x4, x9
	sll x1, x2, x4
	sra x1, x9, x9
	sltu x9, x5, x7
	or x6, x1, x6
	sll x3, x5, x5
	xor x5, x9, x4
	or x2, x6, x8
	sltu x8, x2, x1
	slt x7, x3, x3
	slt x5, x8, x6
	sll x7, x3, x1
	sub x4, x6, x6
	srl x9, x6, x1
	xor x7, x9, x2
	or x6, x8, x3
	or x2, x5, x7
	sub x4, x7, x6
	and x5, x1, x2
	add x8, x2, x1
	sra x3, x6, x2
	add x9, x3, x1
	sll x6, x2, x4
	sll x9, x8, x2
	sll x9, x2, x5
	srl x8, x7, x2
	and x5, x5, x5
	add x9, x7, x4
	add x7, x5, x8
	srl x4, x8, x6
	and x8, x9, x1
	sra x7, x7, x7
	sltu x5, x2, x7
	slt x7, x3, x8
	add x6, x6, x2
	xor x2, x6, x4
	slt x5, x8, x8
	sll x5, x1, x7
	srl x1, x8, x8
	sltu x2, x9, x8
	srl x8, x5, x9
	sll x1, x3, x9
	and x9, x6, x7
	sra x9, x4, x7
	sra x9, x3, x5
	xor x8, x7, x8
	slt x8, x1, x2
	sub x2, x9, x3
	srl x1, x4, x3
	srl x5, x4, x2
	sra x9, x9, x9
	sltu x1, x7, x6
	or x5, x2, x5
	add x4, x4, x1
	and x3, x9, x5
	srl x6, x6, x4
	add x5, x2, x4
	sra x3, x8, x1
	sra x6, x9, x2
	sub x9, x2, x4
	srl x3, x7, x9
	and x3, x2, x2
	slt x7, x6, x1
	srl x5, x6, x9
	sll x2, x9, x8
	sub x3, x8, x6
	sltu x4, x9, x2
	sltu x8, x6, x3
	add x6, x9, x6
	slt x8, x1, x1
	srl x1, x9, x1
	sub x1, x9, x8
	slt x2, x1, x6
	add x9, x7, x7
	slt x9, x3, x6
	add x2, x8, x7
	sltu x2, x8, x1
	sra x3, x1, x1
	sub x2, x2, x3
	slt x9, x7, x8
	sra x1, x1, x4
	slt x2, x4, x3
	slt x3, x7, x1
	sra x5, x7, x2
	sltu x6, x3, x7
	sra x8, x3, x3
	srl x2, x3, x4
	sra x6, x9, x1
	sub x5, x4, x3
	add x8, x5, x9
	sra x9, x7, x3
	sra x7, x1, x7
	xor x4, x3, x8
	sub x8, x1, x9
	or x9, x1, x3
	sub x3, x3, x7
	sll x8, x7, x5
	srl x5, x7, x2
	sra x4, x8, x4
	slt x1, x7, x7
	sra x7, x6, x4
	sra x2, x4, x6
	sra x3, x7, x3
	sltu x6, x7, x1
	and x9, x1, x1
	sra x3, x5, x5
	slt x8, x4, x4
	xor x1, x3, x4
	sll x5, x9, x3
	xor x1, x8, x7
	xor x4, x5, x4
	or x2, x8, x3
	xor x9, x6, x7
	sltu x2, x1, x3
	and x9, x6, x5
	sltu x5, x4, x7
	and x3, x5, x8
	sll x2, x2, x8
	sltu x7, x4, x7
	srl x1, x8, x4
	sra x8, x7, x6
	sub x4, x8, x8
	xor x1, x9, x5
	and x5, x4, x7
	srl x5, x8, x9
	slt x2, x5, x4
	and x1, x5, x2
	srl x6, x6, x6
	sltu x5, x9, x6
	sll x2, x9, x7
	sll x1, x8, x1
	srl x6, x2, x4
	slt x4, x2, x8
	srl x4, x7, x5
	sra x7, x7, x5
	or x8, x3, x3
	sub x7, x3, x4
	srl x9, x2, x9
	sltu x4, x5, x3
	xor x9, x4, x9
	srl x4, x5, x3
	or x1, x2, x8
	sltu x4, x4, x7
	sll x5, x2, x9
	srl x2, x3, x5
	sub x4, x6, x4
	sll x7, x3, x9
	sra x6, x4, x7
	slt x9, x5, x5
	sltu x4, x2, x5
	or x8, x9, x8
	add x2, x7, x2
	sra x8, x1, x7
	slt x7, x2, x8
	and x1, x3, x7
	sub x1, x8, x5
	and x4, x8, x7
	add x5, x7, x4
	and x8, x4, x8
	and x9, x6, x4
	xor x4, x3, x1
	sra x1, x7, x1
	slt x2, x4, x7
	slt x3, x4, x6
	xor x7, x7, x2
	sra x1, x1, x4
	and x4, x8, x7
	add x7, x2, x1
	sll x4, x8, x3
	sub x5, x7, x2
	sltu x1, x9, x8
	sll x6, x3, x7
	xor x8, x4, x2
	xor x4, x9, x8
	sub x1, x8, x7
	sltu x8, x1, x3
	sll x3, x4, x4
	add x4, x1, x6
	slt x5, x3, x4
	xor x9, x6, x7
	slt x1, x3, x6
	add x5, x6, x5
	add x4, x7, x3
	sra x3, x8, x4
	sll x5, x3, x9
	or x7, x8, x7
	sltu x1, x3, x3
	sltu x3, x7, x5
	sub x4, x7, x3
	sra x6, x5, x1
	sll x5, x1, x7
	sll x8, x4, x4
	and x6, x7, x7
	sltu x2, x1, x1
	sub x9, x9, x9
	sltu x9, x5, x7
	or x5, x3, x7
	sub x5, x5, x8
	and x5, x9, x2
	add x4, x8, x6
	srl x6, x7, x5
	and x9, x9, x7
	xor x6, x4, x9
	sra x7, x3, x1
	srl x8, x6, x5
	srl x6, x3, x7
	slt x3, x2, x8
	or x4, x6, x3
	sll x2, x8, x3
	and x2, x5, x9
	sltu x5, x6, x8
	add x7, x9, x6
	sltu x5, x6, x3
	and x1, x7, x1
	xor x4, x1, x5
	srl x9, x9, x7
	srl x8, x9, x2
	sltu x1, x6, x3
	sltu x1, x1, x7
	or x5, x2, x6
	srl x9, x1, x1
	sub x2, x5, x6
	sra x6, x7, x1
	sll x2, x5, x4
	slt x8, x8, x6
	sll x3, x1, x6
	sltu x9, x4, x4
	sra x5, x8, x8
	srl x5, x4, x3
	xor x7, x9, x1
	and x8, x4, x1
	srl x3, x7, x2
	sltu x1, x6, x6
	sra x3, x2, x9
	sltu x3, x4, x2
	sll x6, x7, x9
	srl x3, x2, x3
	add x5, x6, x5
	and x2, x8, x2
	xor x6, x5, x5
	sra x9, x6, x6
	srl x5, x2, x8
	sub x7, x1, x8
	sltu x5, x2, x5
	sltu x2, x2, x8
	sll x9, x1, x1
	sra x8, x3, x1
	slt x6, x3, x4
	or x2, x7, x6
	srl x6, x6, x6
	add x2, x7, x4
	srl x7, x3, x4
	and x7, x1, x7
	sub x1, x6, x6
	sub x6, x6, x3
	srl x3, x2, x2
	or x9, x7, x6
	xor x4, x6, x8
	sra x7, x9, x4
	xor x7, x1, x6
	xor x9, x4, x1
	or x9, x5, x1
	sra x6, x6, x1
	and x3, x4, x5
	xor x5, x9, x1
	srl x4, x3, x8
	xor x6, x5, x5
	sub x4, x4, x2
	add x7, x2, x5
	or x5, x7, x1
	sub x1, x6, x3
	sll x4, x6, x8
	sll x7, x3, x9
	and x4, x1, x5
	slt x6, x7, x9
	sub x1, x3, x5
	srl x4, x9, x2
	xor x1, x9, x9
	sll x3, x1, x2
	add x6, x3, x2
	and x1, x7, x9
	sltu x5, x4, x3
	xor x7, x7, x1
	sub x2, x3, x9
	xor x8, x8, x1
	sltu x4, x6, x1
	slt x5, x2, x8
	slt x6, x1, x2
	sra x2, x8, x1
	sll x4, x6, x3
	sra x7, x5, x6
	sub x7, x8, x8
	or x6, x8, x8
	sll x4, x4, x8
	xor x2, x6, x6
	sra x2, x7, x3
	add x8, x6, x9
	sll x4, x2, x3
	sra x3, x3, x2
	sltu x3, x3, x4
	sra x6, x2, x9
	sub x3, x9, x2
	sub x2, x9, x1
	sra x6, x6, x6
	slt x1, x1, x8
	xor x8, x8, x5
	sra x9, x1, x8
	slt x4, x3, x8
	sll x2, x4, x6
	sub x3, x3, x9
	sll x8, x2, x8
	sll x3, x1, x9
	and x2, x1, x8
	sll x2, x6, x7
	slt x4, x2, x5
	srl x7, x7, x2
	sra x2, x6, x7
	slt x1, x5, x9
	and x4, x4, x6
	xor x1, x2, x5
	sltu x7, x2, x6
	sltu x5, x5, x1
	sltu x5, x8, x1
	or x7, x3, x2
	xor x8, x2, x2
	add x9, x7, x8
	xor x4, x9, x5
	xor x5, x7, x3
	sll x7, x9, x9
	slt x5, x4, x6
	sll x9, x3, x7
	or x2, x4, x5
	or x3, x1, x3
	sll x4, x1, x4
	add x8, x7, x6
	or x2, x8, x8
	add x7, x3, x4
	slt x1, x5, x9
	or x3, x8, x6
	and x9, x6, x5
	and x2, x4, x1
	xor x9, x1, x3
	sltu x9, x4, x7
	or x8, x9, x5
	sll x5, x9, x9
	add x2, x6, x4
	sltu x6, x6, x7
	slt x5, x6, x8
	slt x7, x7, x2
	sll x8, x8, x4
	or x5, x6, x1
	sra x3, x8, x8
	srl x2, x4, x2
	sra x2, x1, x2
	sub x3, x2, x8
	srl x8, x9, x7
	and x1, x7, x7
	sra x1, x8, x4
	or x2, x8, x1
	add x3, x4, x3
	sub x5, x1, x7
	sll x3, x1, x5
	and x1, x5, x1
	sll x6, x8, x6
	sltu x1, x9, x8
	and x9, x8, x7
	sll x5, x5, x1
	or x9, x6, x6
	srl x8, x9, x9
	add x5, x9, x4
	sltu x4, x1, x8
	and x3, x4, x2
	add x6, x5, x6
	sltu x9, x9, x2
	and x6, x6, x1
	sub x2, x5, x8
	sll x7, x6, x9
	sub x5, x3, x8
	srl x7, x9, x3
	and x7, x3, x8
	sll x5, x9, x3
	slt x3, x9, x1
	sub x7, x6, x2
	sub x9, x4, x1
	srl x2, x4, x4
	sll x7, x2, x2
	sub x7, x6, x4
	sub x2, x6, x8
	slt x4, x7, x2
	sltu x7, x4, x8
	sub x3, x3, x3
	sub x9, x3, x6
	slt x3, x1, x9
	sltu x3, x8, x6
	add x6, x4, x6
	and x6, x7, x4
	add x2, x6, x4
	srl x1, x3, x2
	and x3, x9, x8
	or x4, x6, x4
	add x1, x4, x6
	srl x1, x1, x5
	sra x3, x9, x2
	sra x7, x4, x6
	slt x4, x2, x6
	or x6, x9, x9
	sll x3, x1, x2
	sll x1, x1, x4
	or x5, x4, x6
	sub x8, x6, x4
	and x9, x5, x2
	and x2, x3, x7
	slt x5, x3, x7
	xor x8, x8, x2
	slt x6, x4, x2
	or x5, x2, x8
	xor x3, x3, x9
	sll x1, x4, x6
	sll x5, x1, x3
	sra x1, x3, x2
	xor x2, x4, x1
	sub x2, x7, x8
	slt x6, x7, x4
	xor x6, x8, x5
	add x9, x5, x6
	slt x8, x3, x7
	or x4, x4, x6
	xor x7, x2, x6
	add x5, x4, x5
	xor x9, x3, x8
	or x4, x3, x4
	sll x1, x5, x9
	or x4, x6, x8
	sltu x5, x9, x4
	sra x6, x6, x2
	srl x3, x5, x2
	add x8, x1, x2
	sltu x8, x5, x9
	sra x8, x6, x8
	xor x4, x4, x8
	or x1, x4, x1
	srl x1, x6, x5
	xor x6, x7, x9
	srl x2, x8, x4
	slt x7, x3, x6
	sub x9, x1, x7
	sub x7, x2, x6
	add x2, x5, x3
	sra x5, x5, x1
	add x9, x6, x3
	sub x1, x2, x7
	add x4, x4, x2
	sra x6, x6, x6
	xor x6, x7, x8
	xor x1, x2, x9
	slt x8, x6, x9
	sll x6, x9, x3
	sltu x9, x6, x4
	srl x8, x9, x1
	sll x1, x4, x1
	or x6, x5, x2
	add x7, x2, x5
	slt x8, x4, x5
	sll x6, x1, x5
	sltu x9, x1, x2
	sra x2, x1, x1
	sub x1, x1, x2
	sub x7, x8, x2
	or x9, x2, x5
	sub x5, x6, x9
	slt x2, x9, x4
	or x4, x2, x2
	slt x1, x5, x2
	add x3, x9, x6
	and x4, x4, x4
	slt x9, x7, x9
	slt x8, x9, x1
	and x9, x9, x6
	srl x4, x3, x8
	add x3, x5, x2
	sltu x5, x8, x5
	or x5, x1, x3
	srl x7, x1, x8
	sltu x5, x1, x6
	sll x7, x7, x5
	add x8, x9, x7
	sltu x1, x8, x6
	and x2, x2, x2
	sub x8, x2, x5
	and x1, x7, x9
	sra x8, x4, x3
	srl x4, x2, x3
	sub x4, x6, x9
	or x8, x9, x1
	or x2, x1, x7
	xor x7, x5, x5
	sltu x8, x2, x2
	xor x4, x2, x5
	srl x2, x4, x4
	srl x7, x5, x1
	sltu x6, x3, x9
	sub x6, x3, x4
	add x8, x4, x4
	sub x4, x9, x4
	srl x4, x2, x1
	sll x7, x5, x4
	srl x3, x6, x9
	or x4, x1, x3
	xor x2, x9, x7
	slt x3, x1, x3
	add x3, x6, x6
	sra x7, x5, x5
	slt x7, x6, x3
	or x4, x5, x7
	sub x2, x1, x1
	and x6, x9, x2
	sub x5, x7, x2
	sra x2, x6, x6
	srl x8, x6, x3
	or x2, x2, x9
	add x1, x5, x4
	xor x7, x9, x7
	add x3, x5, x3
	and x2, x4, x2
	sra x4, x4, x4
	or x2, x5, x9
	sub x3, x5, x7
	sra x9, x7, x7
	and x1, x1, x5
	slt x7, x4, x9
	slt x3, x9, x8
	sll x5, x9, x5
	xor x3, x6, x3
	and x3, x3, x8
	add x5, x4, x9
	slt x9, x6, x1
	add x8, x5, x8
	sub x1, x5, x4
	sltu x2, x2, x7
	slt x8, x7, x8
	add x6, x3, x4
	sll x1, x1, x3
	sltu x7, x6, x1
	sra x2, x5, x2
	sll x4, x9, x8
	and x7, x4, x5
	and x1, x2, x2
	sra x7, x7, x1
	sub x8, x1, x2
	xor x9, x7, x3
	xor x2, x9, x6
	sub x7, x2, x1
	sll x2, x8, x5
	sub x7, x3, x5
	sltu x8, x5, x2
	slt x6, x5, x5
	and x6, x6, x1
	xor x6, x2, x2
	sltu x9, x4, x7
	srl x9, x1, x5
	sll x4, x4, x7
	or x5, x2, x3
	and x8, x7, x8
	sltu x2, x3, x2
	xor x6, x3, x5
	sub x4, x1, x8
	sltu x9, x8, x7
	add x8, x4, x8
	sub x1, x9, x4
	srl x5, x5, x3
	slt x6, x1, x7
	srl x6, x1, x5
	and x6, x3, x2
	sra x1, x7, x8
	srl x6, x6, x3
	sub x3, x3, x7
	sltu x1, x9, x5
	add x8, x6, x2
	slt x8, x3, x1
	srl x9, x2, x9
	xor x9, x1, x3
	add x4, x3, x4
	slt x4, x7, x8
	sltu x8, x5, x6
	sra x4, x6, x3
	add x7, x6, x7
	or x1, x8, x6
	sll x2, x9, x4
	xor x3, x6, x8
	srl x4, x5, x9
	or x8, x5, x2
	or x1, x6, x5
	sll x3, x6, x6
	sub x9, x8, x4
	sll x2, x4, x1
	xor x6, x9, x6
	sltu x7, x6, x4
	and x6, x5, x2
	or x7, x7, x5
	sll x5, x1, x7
	sltu x7, x9, x4
	add x8, x2, x2
	or x7, x6, x4
	or x8, x5, x5
	sll x2, x2, x8
	sra x2, x8, x7
	sra x6, x2, x3
	sll x2, x2, x6
	srl x1, x5, x4
	sra x7, x7, x9
	add x6, x2, x1
	sra x2, x2, x5
	sra x7, x9, x6
	or x3, x3, x2
	sra x1, x5, x7
	sll x8, x6, x4
	slt x4, x2, x6
	sll x8, x3, x4
	and x9, x7, x3
	sltu x3, x4, x6
	add x2, x1, x5
	or x2, x1, x6
	slt x9, x2, x9
	sra x7, x7, x1
	or x6, x6, x8
	or x1, x8, x6
	add x9, x9, x5
	sra x8, x8, x1
	srl x2, x9, x3
	add x9, x8, x2
	sltu x9, x1, x5
	sra x6, x6, x7
	srl x2, x3, x1
	and x5, x1, x1
	and x9, x1, x9
	and x5, x5, x7
	sltu x4, x9, x9
	sltu x7, x2, x6
	sll x1, x5, x4
	srl x4, x4, x7
	sltu x6, x7, x4
	sltu x9, x5, x3
	srl x2, x5, x6
	srl x7, x5, x1
	add x4, x2, x8
	slt x4, x2, x6
	add x5, x1, x9
	slt x6, x6, x3
	sra x1, x8, x4
	sltu x3, x6, x9
	sub x3, x1, x5
	srl x9, x5, x6
	and x7, x5, x4
	sltu x4, x5, x6
	sltu x3, x1, x7
	sra x8, x2, x4
	or x1, x1, x1
	and x5, x1, x1
	sra x1, x3, x9
	srl x6, x6, x1
	xor x7, x3, x2
	sltu x2, x3, x4
	slt x8, x7, x8
	sltu x9, x9, x8
	or x1, x2, x7
	add x6, x5, x2
	xor x8, x3, x1
	sll x2, x9, x5
	sra x3, x4, x1
	sra x4, x9, x5
	sltu x7, x9, x1
	add x6, x2, x8
	srl x1, x1, x1
	srl x8, x8, x8
	add x8, x6, x5
	and x6, x8, x9
	sll x1, x5, x1
	srl x6, x8, x9
	and x7, x4, x9
	sub x4, x3, x7
	slt x9, x9, x3
	and x4, x8, x1
	sra x7, x2, x1
	xor x6, x4, x2
	sltu x1, x1, x9
	or x1, x6, x8
	srl x2, x3, x8
	and x6, x3, x8
	sra x8, x1, x7
	xor x3, x1, x8
	srl x2, x6, x2
	and x2, x9, x8
	slt x8, x5, x2
	add x3, x8, x7
	sll x3, x7, x7
	slt x5, x8, x3
	add x7, x2, x8
	sub x7, x5, x2
	sltu x8, x3, x1
	and x5, x6, x8
	sltu x5, x3, x5
	and x3, x7, x3
	sra x5, x2, x9
	slt x4, x7, x2
	or x3, x8, x3
	xor x1, x6, x1
	xor x4, x5, x6
	srl x1, x2, x4
	xor x9, x1, x5
	add x7, x4, x5
	or x2, x2, x6
	sll x7, x7, x4
	sra x3, x5, x8
	slt x1, x5, x7
	add x7, x4, x5
	sra x4, x8, x1
	srl x6, x4, x9
	srl x1, x2, x4
	and x5, x5, x4
	sll x5, x9, x3
	and x1, x1, x8
	or x3, x9, x8
	or x6, x2, x3
	sub x8, x9, x5
	xor x9, x2, x1
	sra x9, x5, x3
	or x3, x5, x6
	sra x9, x6, x6
	add x6, x6, x6
	sll x8, x2, x2
	sltu x8, x2, x9
	or x4, x1, x7
	or x8, x2, x5
	sra x2, x4, x9
	sub x1, x6, x9
	or x7, x2, x1
	sra x4, x7, x6
	sll x9, x6, x7
	sll x8, x8, x9
	sra x3, x7, x8
	xor x4, x4, x3
	add x8, x1, x8
	slt x6, x6, x8
	srl x1, x9, x8
	sra x7, x4, x1
	sub x7, x3, x3
	slt x4, x5, x7
	or x7, x5, x5
	xor x9, x6, x7
	sub x6, x3, x7
	and x9, x1, x8
	xor x7, x6, x8
	and x3, x3, x8
	or x7, x7, x2
	add x5, x3, x2
	sll x1, x9, x4
	sub x9, x9, x1
	and x5, x4, x2
	slt x1, x9, x2
	sltu x6, x2, x4
	slt x2, x6, x6
	sltu x8, x1, x9
	xor x5, x4, x6
	and x3, x8, x8
	xor x3, x7, x9
	sltu x6, x2, x3
	sll x7, x6, x1
	xor x3, x1, x6
	xor x3, x1, x8
	srl x7, x8, x3
	sll x5, x9, x4
	add x8, x9, x9
	srl x5, x5, x8
	or x9, x4, x1
	slt x8, x3, x8
	and x8, x8, x7
	xor x5, x5, x5
	srl x6, x4, x8
	slt x7, x8, x7
	sub x8, x3, x2
	and x1, x5, x7
	sll x4, x1, x2
	srl x7, x2, x8
	sltu x4, x3, x2
	or x5, x9, x1
	sra x3, x5, x7
	add x4, x6, x2
	sll x4, x4, x4
	xor x6, x2, x8
	sub x6, x4, x7
	or x5, x3, x2
	or x5, x9, x3
	and x7, x7, x2
	sll x6, x1, x8
	add x3, x3, x7
	or x9, x8, x9
	sll x8, x5, x2
	and x5, x3, x3
	add x8, x1, x4
	sltu x6, x9, x5
	add x3, x3, x4
	srl x4, x1, x8
	srl x5, x5, x1
	sra x9, x5, x3
	slt x5, x2, x9
	or x7, x9, x3
	sltu x4, x9, x7
	xor x9, x9, x6
	sll x3, x7, x4
	sll x7, x6, x4
	sll x7, x5, x8
	sltu x1, x1, x2
	sll x8, x5, x3
	xor x9, x1, x9
	and x6, x6, x3
	sll x2, x1, x9
	or x5, x2, x2
	sub x3, x7, x3
	slt x2, x3, x7
	sub x2, x2, x5
	sll x4, x8, x6
	sra x3, x9, x3
	add x2, x6, x4
	or x9, x9, x9
	sltu x7, x1, x6
	srl x5, x6, x2
	xor x3, x4, x4
	and x8, x8, x6
	srl x5, x1, x1
	slt x6, x6, x9
	xor x1, x2, x9
	sub x5, x1, x8
	sltu x3, x3, x2
	slt x6, x2, x1
	add x5, x8, x8
	xor x2, x3, x8
	sll x2, x4, x9
	srl x1, x8, x2
	sll x6, x5, x8
	sub x1, x7, x1
	slt x7, x6, x9
	sub x4, x3, x9
	xor x5, x8, x3
	or x2, x8, x1
	srl x3, x7, x4
	xor x3, x4, x3
	sll x9, x3, x8
	sll x5, x5, x4
	or x6, x8, x3
	xor x8, x3, x2
	sra x7, x8, x8
	sub x7, x1, x4
	add x3, x2, x2
	add x9, x7, x2
	or x6, x8, x3
	xor x9, x9, x6
	sll x1, x1, x8
	slt x1, x2, x1
	sub x1, x2, x8
	slt x7, x5, x2
	slt x1, x4, x2
	and x4, x5, x3
	or x9, x8, x7
	and x3, x5, x6
	sltu x8, x2, x3
	or x8, x5, x1
	slt x1, x8, x8
	sll x4, x6, x4
	sltu x6, x4, x9
	xor x5, x6, x4
	add x9, x9, x3
	or x6, x5, x5
	xor x5, x5, x8
	sra x5, x9, x7
	sub x9, x2, x1
	and x6, x9, x1
	or x1, x9, x9
	and x3, x6, x7
	or x1, x1, x3
	add x1, x7, x6
	sll x2, x8, x5
	sub x7, x2, x6
	slt x8, x5, x9
	srl x8, x3, x7
	or x9, x8, x8
	add x2, x3, x8
	srl x2, x4, x1
	add x7, x4, x7
	srl x3, x2, x3
	sll x2, x5, x8
	slt x8, x5, x9
	sll x8, x6, x1
	or x9, x9, x7
	sll x6, x5, x1
	or x2, x4, x8
	xor x5, x2, x2
	slt x6, x7, x4
	or x2, x5, x3
	or x4, x4, x7
	and x2, x3, x2
	sra x4, x2, x3
	and x2, x4, x4
	add x3, x4, x9
	sltu x3, x2, x1
	add x7, x9, x3
	add x1, x7, x9
	and x2, x2, x6
	sltu x6, x5, x2
	sltu x2, x6, x4
	sll x9, x2, x1
	xor x4, x1, x4
	sub x4, x8, x9
	xor x7, x9, x6
	add x1, x8, x2
	sll x8, x5, x5
	sra x9, x2, x5
	or x9, x7, x5
	and x2, x1, x1
	sll x7, x7, x1
	sra x7, x5, x2
	sub x7, x1, x5
	slt x9, x1, x4
	slt x5, x1, x8
	sra x4, x3, x7
	slt x8, x4, x9
	sub x4, x8, x9
	sra x6, x6, x5
	sub x3, x1, x3
	or x1, x4, x5
	sra x2, x2, x9
	sra x6, x4, x2
	sltu x9, x4, x7
	srl x6, x2, x9
	sltu x6, x5, x2
	srl x3, x8, x6
	srl x3, x5, x9
	and x1, x4, x5
	sltu x7, x7, x2
	sub x5, x3, x4
	sll x9, x2, x4
	sltu x1, x7, x1
	sltu x4, x6, x3
	or x2, x8, x2
	sub x2, x8, x8
	and x2, x5, x9
	sltu x4, x5, x5
	xor x5, x9, x7
	sub x9, x9, x7
	slt x8, x7, x7
	xor x3, x1, x5
	slt x8, x2, x3
	xor x6, x7, x3
	xor x7, x6, x9
	sll x8, x5, x5
	add x4, x5, x7
	xor x5, x4, x2
	xor x5, x6, x5
	slt x9, x4, x4
	add x2, x1, x9
	xor x5, x6, x2
	add x7, x8, x7
	sra x3, x6, x7
	add x8, x3, x7
	sltu x2, x1, x8
	sra x1, x5, x4
	and x2, x3, x3
	xor x2, x6, x7
	sltu x9, x6, x4
	and x9, x5, x2
	or x9, x8, x6
	or x4, x6, x7
	sll x8, x1, x2
	or x6, x3, x9
	or x7, x1, x4
	sltu x6, x5, x6
	srl x9, x6, x3
	sub x1, x1, x5
	xor x5, x3, x8
	slt x6, x7, x2
	sra x9, x2, x2
	and x2, x6, x1
	or x5, x7, x4
	xor x9, x5, x4
	srl x8, x4, x6
	srl x9, x7, x1
	sltu x6, x9, x9
	srl x1, x5, x6
	srl x8, x2, x4
	and x4, x1, x9
	srl x9, x9, x5
	and x5, x9, x8
	srl x5, x2, x3
	sra x3, x3, x4
	add x2, x4, x8
	and x5, x2, x7
	xor x5, x3, x1
	and x4, x4, x3
	srl x3, x8, x3
	slt x1, x9, x8
	add x5, x1, x1
	sra x1, x6, x7
	sltu x2, x6, x4
	and x1, x4, x2
	sll x6, x4, x3
	sltu x9, x5, x1
	xor x9, x1, x1
	sra x2, x4, x5
	sltu x9, x4, x8
	sub x5, x5, x7
	sra x1, x9, x1
	sll x7, x5, x1
	slt x8, x7, x4
	slt x1, x4, x4
	sra x9, x2, x3
	srl x2, x7, x7
	and x8, x7, x9
	sra x3, x6, x7
	sltu x8, x5, x3
	or x5, x3, x4
	add x6, x2, x2
	xor x2, x2, x6
	or x4, x1, x5
	sra x8, x3, x2
	sub x6, x4, x4
	sltu x2, x5, x7
	and x8, x8, x4
	and x3, x1, x2
	or x7, x1, x1
	sub x5, x6, x2
	sra x5, x6, x4
	add x3, x3, x6
	add x3, x7, x6
	sll x6, x3, x8
	sub x9, x3, x3
	sll x9, x8, x9
	slt x4, x3, x1
	sra x4, x9, x6
	srl x1, x2, x4
	or x3, x4, x2
	sltu x3, x6, x5
	and x5, x4, x1
	and x5, x8, x9
	sltu x2, x2, x2
	or x9, x2, x7
	sll x7, x8, x1
	and x1, x2, x7
	srl x1, x6, x1
	sra x8, x4, x6
	add x5, x5, x4
	or x4, x8, x8
	slt x1, x7, x2
	or x2, x6, x8
	slt x9, x2, x7
	sltu x3, x3, x8
	sll x1, x3, x7
	sub x3, x4, x8
	add x2, x6, x3
	sltu x5, x1, x2
	xor x5, x6, x4
	add x3, x2, x1
	xor x2, x8, x1
	sll x5, x3, x5
	xor x8, x7, x3
	and x6, x5, x3
	xor x7, x5, x1
	sll x3, x7, x5
	sub x4, x3, x6
	srl x1, x6, x6
	srl x4, x2, x6
	srl x2, x9, x8
	sra x9, x6, x8
	sltu x4, x3, x7
	sra x4, x2, x6
	sra x5, x2, x4
	srl x7, x8, x2
	or x4, x1, x6
	slt x1, x5, x3
	sra x5, x3, x3
	sub x3, x6, x4
	sltu x7, x7, x8
	sra x4, x2, x9
	sra x3, x4, x8
	srl x8, x9, x7
	add x3, x3, x1
	sll x1, x1, x1
	sltu x9, x9, x4
	or x2, x8, x4
	sra x2, x8, x2
	srl x6, x3, x9
	sll x7, x2, x4
	xor x1, x7, x3
	xor x6, x3, x7
	and x6, x8, x7
	slt x6, x4, x4
	sub x3, x7, x5
	sltu x9, x4, x1
	sll x5, x3, x5
	slt x3, x1, x5
	sra x7, x6, x3
	or x3, x7, x6
	srl x9, x7, x4
	srl x9, x2, x1
	sra x6, x7, x9
	srl x4, x8, x3
	xor x9, x9, x3
	slt x7, x9, x2
	and x9, x4, x9
	or x8, x1, x1
	slt x6, x5, x6
	slt x8, x6, x3
	sll x9, x9, x3
	sll x2, x5, x6
	sra x3, x4, x8
	sll x9, x4, x9
	add x1, x4, x8
	sub x6, x7, x9
	xor x8, x3, x5
	sub x3, x3, x4
	and x5, x6, x2
	sll x5, x2, x6
	add x7, x7, x9
	sltu x9, x7, x2
	or x5, x8, x5
	sra x2, x5, x4
	slt x4, x1, x4
	or x9, x7, x9
	sll x3, x1, x4
	srl x9, x1, x6
	xor x7, x3, x6
	and x9, x7, x9
	or x1, x1, x4
	sra x3, x4, x3
	add x5, x3, x8
	slt x4, x9, x9
	xor x3, x1, x5
	srl x4, x3, x3
	sra x5, x3, x5
	add x1, x9, x4
	sra x6, x2, x8
	slt x8, x4, x9
	xor x6, x2, x7
	xor x1, x6, x7
	srl x4, x2, x6
	slt x9, x4, x4
	add x9, x2, x5
	srl x4, x3, x1
	slt x3, x9, x8
	sra x5, x2, x5
	add x6, x8, x1
	xor x8, x2, x9
	srl x7, x1, x5
	sltu x5, x1, x9
	sub x1, x2, x6
	or x5, x5, x2
	srl x5, x4, x5
	add x6, x5, x1
	and x5, x1, x6
	sltu x1, x7, x7
	xor x2, x7, x7
	srl x7, x8, x2
	srl x4, x5, x3
	srl x5, x5, x5
	sll x9, x1, x3
	xor x4, x8, x8
	slt x1, x5, x2
	srl x2, x6, x8
	add x1, x7, x7
	sltu x5, x2, x6
	slt x8, x8, x2
	xor x9, x6, x9
	srl x1, x4, x5
	xor x4, x6, x7
	xor x6, x8, x8
	xor x5, x6, x6
	slt x1, x3, x4
	add x6, x7, x9
	and x4, x8, x4
	srl x3, x2, x8
	sub x1, x7, x8
	sltu x4, x9, x9
	slt x3, x8, x6
	sll x6, x9, x9
	sra x6, x3, x6
	xor x3, x6, x3
	srl x8, x3, x8
	sll x6, x7, x6
	sltu x8, x9, x7
	sub x3, x1, x6
	or x6, x3, x5
	xor x5, x6, x1
	or x2, x1, x9
	sll x6, x7, x2
	or x2, x1, x5
	and x1, x2, x5
	slt x9, x8, x4
	and x4, x1, x4
	or x5, x3, x6
	sll x7, x4, x1
	sra x9, x5, x8
	slt x2, x8, x9
	and x2, x1, x4
	and x6, x2, x8
	sub x3, x2, x7
	add x4, x6, x1
	sub x9, x3, x8
	sra x3, x3, x6
	slt x3, x6, x5
	slt x3, x4, x6
	sra x8, x2, x6
	and x1, x9, x4
	slt x5, x6, x6
	sltu x7, x6, x9
	add x9, x6, x5
	sub x6, x7, x5
	slt x6, x5, x7
	add x8, x6, x4
	sub x9, x6, x5
	add x3, x2, x5
	sra x9, x4, x9
	sll x7, x9, x2
	add x1, x3, x1
	sra x8, x9, x7
	sra x8, x2, x8
	and x6, x1, x3
	srl x8, x2, x3
	srl x7, x6, x7
	slt x9, x1, x9
	and x6, x2, x9
	sra x4, x3, x1
	and x5, x9, x2
	sll x7, x6, x4
	sltu x4, x7, x5
	and x7, x1, x1
	add x7, x1, x8
	slt x3, x9, x2
	xor x7, x1, x7
	sll x6, x9, x2
	srl x8, x4, x6
	sra x4, x2, x3
	sra x2, x6, x6
	and x6, x2, x2
	srl x8, x5, x4
	sub x5, x1, x6
	srl x8, x4, x8
	sll x7, x7, x6
	sra x6, x7, x8
	sll x7, x3, x3
	and x8, x8, x6
	sra x4, x2, x7
	slt x3, x8, x3
	srl x1, x2, x4
	sltu x4, x9, x8
	srl x6, x6, x5
	or x2, x1, x1
	sll x1, x4, x7
	srl x7, x6, x6
	sub x6, x7, x5
	sra x7, x7, x4
	srl x5, x6, x7
	srl x4, x1, x5
	add x5, x9, x9
	add x7, x9, x8
	add x1, x7, x6
	sll x6, x9, x6
	srl x2, x4, x3
	sub x5, x7, x2
	add x1, x9, x3
	sltu x8, x1, x9
	sra x4, x3, x3
	sltu x8, x2, x3
	or x7, x2, x7
	sub x7, x2, x1
	sra x6, x4, x1
	slt x1, x6, x8
	srl x2, x5, x8
	sll x8, x6, x4
	sra x4, x2, x7
	or x6, x3, x3
	sub x9, x9, x2
	xor x6, x7, x6
	add x9, x9, x5
	xor x8, x4, x3
	or x4, x3, x2
	or x8, x4, x1
	srl x7, x4, x9
	sltu x6, x7, x7
	xor x1, x2, x8
	xor x5, x9, x7
	srl x1, x2, x9
	sll x8, x2, x8
	slt x5, x4, x8
	or x7, x1, x3
	sltu x8, x6, x1
	sltu x2, x9, x3
	srl x8, x1, x5
	sra x2, x1, x1
	and x6, x2, x4
	xor x1, x7, x2
	xor x4, x8, x5
	sra x9, x9, x2
	sra x2, x1, x4
	sltu x7, x9, x4
	slt x2, x5, x1
	add x1, x8, x4
	slt x2, x8, x4
	and x2, x6, x4
	sra x2, x4, x6
	sub x7, x4, x5
	or x9, x5, x7
	sltu x3, x3, x1
	xor x5, x6, x8
	sll x1, x1, x1
	sra x7, x3, x4
	and x7, x5, x3
	srl x1, x5, x9
	add x3, x7, x6
	sltu x9, x9, x2
	slt x5, x1, x6
	slt x5, x9, x2
	sll x5, x3, x4
	or x2, x8, x7
	sltu x9, x6, x3
	add x2, x8, x8
	sll x1, x7, x2
	or x2, x3, x8
	or x9, x7, x6
	sltu x5, x2, x1
	xor x4, x2, x1
	sra x8, x2, x7
	sltu x3, x6, x9
	sll x3, x3, x7
	slt x3, x2, x2
	xor x6, x7, x4
	sll x2, x4, x5
	and x4, x6, x3
	sub x2, x1, x7
	sra x1, x1, x2
	slt x1, x2, x4
	add x1, x4, x3
	or x3, x1, x8
	add x3, x9, x9
	or x3, x9, x8
	add x7, x6, x4
	slt x9, x6, x1
	sll x8, x2, x8
	xor x3, x1, x9
	sltu x6, x6, x1
	and x1, x7, x9
	xor x1, x7, x1
	sll x5, x5, x7
	xor x9, x4, x7
	xor x6, x9, x7
	add x3, x7, x8
	sub x5, x7, x6
	srl x6, x3, x1
	or x2, x2, x3
	add x7, x7, x5
	sra x1, x4, x9
	or x2, x4, x9
	sll x6, x7, x9
	slt x7, x7, x4
	sub x1, x8, x5
	sra x2, x6, x7
	and x9, x4, x2
	xor x1, x2, x3
	and x1, x7, x7
	and x6, x1, x9
	slt x7, x5, x2
	add x1, x1, x5
	sra x4, x2, x5
	and x1, x2, x8
	sll x2, x1, x8
	sub x3, x6, x4
	add x1, x4, x5
	srl x1, x2, x2
	slt x4, x9, x8
	slt x1, x6, x2
	sra x8, x5, x5
	sub x8, x6, x6
	sra x9, x1, x1
	slt x5, x1, x3
	sll x2, x8, x9
	sll x6, x1, x1
	srl x3, x5, x8
	sra x9, x9, x3
	add x5, x2, x4
	sll x1, x6, x9
	add x4, x3, x6
	sra x5, x9, x6
	or x1, x9, x8
	sltu x1, x1, x2
	sub x8, x3, x7
	sltu x4, x8, x4
	slt x2, x2, x2
	or x9, x2, x8
	sll x9, x3, x2
	sra x5, x6, x8
	xor x6, x5, x1
	and x8, x2, x3
	sra x2, x1, x2
	and x5, x3, x3
	sll x9, x1, x8
	or x9, x1, x5
	sltu x8, x6, x4
	or x9, x9, x2
	xor x4, x7, x6
	and x6, x4, x8
	sltu x4, x9, x6
	slt x6, x6, x5
	or x1, x9, x5
	or x2, x8, x7
	sub x9, x4, x3
	and x4, x1, x2
	sltu x2, x8, x4
	srl x5, x5, x3
	or x4, x3, x1
	slt x1, x4, x5
	and x1, x1, x9
	slt x1, x5, x7
	slt x5, x5, x5
	sltu x4, x9, x1
	xor x5, x4, x2
	sub x5, x8, x7
	xor x5, x4, x4
	srl x4, x7, x9
	sra x3, x1, x3
	and x7, x8, x7
	or x8, x5, x4
	sra x3, x3, x8
	sltu x9, x1, x6
	add x4, x4, x6
	sltu x9, x6, x3
	or x6, x4, x4
	xor x6, x5, x8
	sub x3, x9, x2
	xor x2, x2, x1
	srl x3, x9, x4
	or x4, x6, x5
	and x2, x8, x5
	sub x3, x5, x2
	sra x7, x8, x4
	srl x3, x6, x7
	xor x7, x7, x1
	srl x6, x8, x7
	and x9, x7, x5
	sub x1, x1, x5
	xor x4, x3, x9
	sltu x5, x6, x8
	slt x9, x4, x8
	sll x3, x6, x5
	sll x7, x9, x9
	slt x6, x7, x7
	slt x2, x6, x7
	xor x6, x2, x6
	slt x2, x2, x6
	add x3, x6, x9
	srl x2, x1, x6
	sra x9, x6, x4
	sltu x6, x9, x6
	add x6, x5, x4
	srl x4, x3, x4
	sll x4, x1, x2
	sll x4, x6, x1
	slt x1, x7, x3
	slt x3, x6, x6
	and x1, x9, x6
	slt x8, x9, x7
	and x1, x3, x7
	slt x8, x6, x4
	sltu x6, x7, x5
	sra x1, x9, x2
	xor x3, x4, x2
	sltu x1, x6, x1
	slt x9, x6, x6
	or x2, x5, x6
	or x7, x7, x2
	sra x6, x9, x8
	add x8, x8, x9
	slt x2, x7, x6
	slt x9, x4, x2
	sll x4, x5, x1
	and x3, x6, x1
	or x2, x3, x2
	sra x4, x4, x3
	xor x6, x5, x9
	sll x2, x8, x4
	sltu x3, x7, x1
	sll x8, x1, x8
	sub x9, x9, x9
	slt x3, x2, x6
	add x2, x5, x4
	sra x3, x7, x7
	sra x9, x6, x5
	add x2, x6, x4
	and x8, x1, x8
	sub x8, x1, x2
	slt x9, x3, x1
	sra x5, x1, x4
	add x5, x4, x4
	sltu x9, x8, x8
	sra x4, x6, x3
	xor x9, x9, x8
	sub x4, x8, x2
	slt x4, x8, x4
	sltu x1, x2, x6
	sltu x9, x5, x6
	sub x9, x4, x8
	slt x2, x1, x4
	xor x7, x3, x2
	sra x8, x3, x8
	and x3, x9, x1
	sub x5, x1, x2
	sll x3, x9, x1
	sub x9, x6, x6
	srl x6, x3, x1
	add x8, x1, x7
	sub x4, x3, x2
	or x5, x5, x3
	sll x4, x4, x9
	srl x1, x5, x9
	and x3, x4, x3
	srl x5, x1, x7
	add x8, x3, x6
	and x9, x1, x9
	and x5, x7, x3
	add x7, x6, x2
	or x8, x4, x9
	xor x5, x7, x8
	srl x1, x1, x8
	or x5, x6, x1
	srl x9, x1, x7
	or x2, x5, x5
	srl x9, x4, x9
	add x8, x7, x9
	or x2, x7, x1
	xor x9, x8, x6
	or x4, x8, x9
	add x2, x1, x5
	xor x4, x5, x2
	add x6, x8, x6
	sub x8, x6, x3
	sll x6, x2, x7
	sll x7, x9, x3
	sub x7, x7, x2
	slt x9, x8, x8
	and x9, x3, x5
	srl x6, x2, x1
	slt x1, x6, x2
	xor x7, x4, x7
	srl x1, x9, x8
	sltu x6, x3, x5
	or x9, x1, x5
	sra x7, x7, x1
	sra x9, x8, x7
	add x3, x4, x7
	slt x1, x8, x4
	srl x8, x8, x6
	and x9, x7, x4
	xor x4, x3, x2
	slt x5, x2, x5
	sra x3, x5, x2
	or x8, x8, x8
	xor x5, x8, x5
	sub x3, x6, x5
	add x5, x2, x7
	sltu x6, x9, x6
	sll x7, x3, x4
	sll x3, x6, x6
	slt x1, x5, x3
	sub x3, x9, x1
	sll x5, x8, x3
	sra x2, x2, x9
	or x8, x7, x1
	sll x9, x3, x2
	or x6, x8, x9
	srl x5, x1, x8
	sll x5, x8, x4
	slt x9, x4, x7
	and x9, x2, x7
	sub x9, x3, x3
	sltu x9, x6, x2
	sra x3, x4, x2
	or x3, x9, x7
	or x5, x4, x5
	slt x3, x3, x6
	add x8, x6, x3
	sll x9, x2, x1
	add x8, x8, x7
	add x7, x1, x6
	sll x9, x5, x3
	srl x7, x5, x3
	sub x1, x3, x3
	sltu x7, x3, x8
	sub x9, x6, x1
	sltu x1, x2, x5
	sll x7, x5, x2
	or x2, x1, x1
	srl x2, x5, x2
	or x2, x1, x7
	sltu x1, x9, x6
	and x2, x5, x1
	sll x3, x8, x5
	sll x5, x6, x9
	slt x6, x2, x8
	slt x3, x1, x6
	srl x2, x2, x9
	srl x2, x3, x4
	slt x4, x7, x5
	sll x1, x1, x8
	srl x4, x6, x9
	slt x6, x6, x3
	sub x2, x3, x2
	slt x1, x2, x6
	sll x1, x2, x7
	xor x5, x9, x3
	sll x8, x9, x8
	xor x6, x9, x7
	sra x5, x9, x1
	sub x8, x6, x7
	sra x1, x4, x8
	slt x9, x1, x4
	srl x2, x2, x8
	slt x1, x2, x7
	or x8, x9, x4
	xor x3, x1, x8
	sll x2, x3, x2
	sll x3, x4, x4
	sll x5, x8, x8
	slt x9, x5, x1
	or x4, x3, x9
	add x8, x3, x6
	sub x2, x8, x6
	add x5, x6, x2
	or x4, x7, x6
	and x9, x7, x8
	or x1, x9, x7
	and x9, x3, x7
	slt x3, x1, x7
	slt x2, x3, x3
	xor x2, x8, x1
	sub x7, x4, x4
	sltu x7, x1, x2
	add x8, x6, x7
	or x1, x9, x8
	srl x2, x6, x8
	add x2, x1, x3
	sub x5, x3, x5
	or x3, x3, x3
	sub x1, x7, x5
	and x6, x3, x3
	srl x1, x1, x9
	slt x8, x3, x3
	and x8, x9, x8
	or x2, x9, x6
	sll x5, x8, x3
	sll x2, x6, x9
	slt x1, x1, x4
	sll x9, x8, x6
	slt x2, x6, x5
	slt x2, x3, x7
	xor x8, x1, x5
	sub x1, x8, x5
	slt x4, x9, x2
	sltu x1, x8, x6
	xor x9, x7, x6
	xor x4, x3, x8
	sra x2, x8, x4
	and x1, x7, x7
	sll x8, x3, x1
	slt x7, x3, x5
	sra x2, x2, x1
	sltu x3, x1, x7
	srl x1, x6, x3
	srl x2, x6, x8
	and x3, x4, x6
	slt x6, x5, x9
	sll x6, x8, x4
	sll x5, x4, x7
	add x4, x9, x7
	or x8, x2, x2
	srl x2, x6, x8
	slt x6, x4, x5
	sll x1, x9, x8
	or x2, x3, x1
	sll x1, x8, x4
	or x9, x8, x3
	srl x1, x7, x2
	xor x2, x6, x1
	sra x2, x6, x6
	xor x8, x9, x2
	sltu x6, x3, x8
	or x3, x1, x8
	slt x8, x3, x4
	sra x3, x9, x1
	sltu x3, x3, x3
	xor x1, x3, x1
	slt x5, x8, x9
	add x5, x5, x1
	xor x7, x8, x1
	sra x2, x7, x2
	and x1, x4, x5
	slt x7, x5, x4
	or x2, x4, x4
	xor x1, x9, x8
	xor x3, x4, x8
	xor x4, x7, x2
	xor x3, x6, x3
	srl x3, x6, x3
	xor x3, x3, x3
	and x1, x5, x9
	add x5, x5, x7
	sll x3, x7, x2
	add x3, x5, x6
	sub x1, x5, x7
	srl x1, x2, x9
	sltu x7, x5, x3
	sltu x1, x4, x3
	add x7, x2, x5
	sltu x2, x6, x9
	xor x4, x3, x7
	slt x1, x4, x4
	or x4, x7, x3
	and x4, x7, x9
	sll x4, x4, x1
	or x7, x2, x6
	xor x8, x1, x1
	srl x4, x5, x2
	or x8, x4, x4
	sll x2, x3, x4
	slt x8, x6, x3
	sra x3, x8, x4
	sub x5, x9, x9
	or x7, x3, x1
	sub x8, x4, x7
	xor x6, x3, x9
	slt x2, x1, x1
	and x7, x2, x5
	or x1, x2, x4
	xor x1, x4, x1
	srl x7, x2, x6
	sra x2, x3, x5
	or x1, x5, x5
	xor x2, x7, x2
	sltu x5, x7, x5
	slt x5, x2, x9
	add x7, x7, x8
	sltu x8, x8, x4
	srl x1, x1, x6
	xor x3, x2, x8
	srl x3, x9, x4
	sra x8, x7, x1
	and x9, x8, x8
	sltu x9, x7, x7
	or x2, x9, x7
	srl x2, x5, x7
	or x7, x3, x2
	sra x9, x5, x9
	sltu x8, x6, x9
	and x2, x2, x8
	sub x7, x4, x1
	slt x4, x4, x2
	or x4, x8, x6
	srl x2, x1, x2
	sltu x7, x9, x2
	and x9, x1, x2
	sltu x6, x6, x6
	and x7, x5, x2
	sltu x5, x5, x3
	srl x8, x3, x4
	and x2, x1, x5
	sra x9, x3, x3
	srl x2, x9, x4
	or x3, x1, x4
	xor x9, x5, x2
	slt x3, x4, x5
	or x9, x1, x2
	sltu x4, x5, x3
	and x5, x1, x2
	srl x7, x1, x4
	sub x2, x1, x5
	sra x9, x9, x8
	sll x6, x3, x6
	srl x1, x4, x7
	add x4, x4, x3
	or x6, x6, x4
	sub x8, x8, x8
	srl x5, x1, x9
	sub x9, x3, x8
	sll x7, x4, x6
	sra x3, x2, x5
	sll x5, x2, x7
	and x3, x7, x6
	xor x1, x8, x5
	xor x6, x6, x6
	sra x4, x5, x5
	srl x4, x5, x3
	and x2, x3, x6
	add x6, x3, x6
	sra x5, x7, x1
	add x4, x4, x4
	and x3, x1, x4
	and x4, x8, x8
	or x7, x3, x9
	xor x5, x9, x6
	slt x1, x6, x6
	slt x2, x4, x8
	xor x4, x3, x2
	or x1, x9, x2
	sll x6, x6, x7
	or x1, x7, x6
	xor x9, x6, x8
	sra x4, x5, x9
	slt x1, x4, x3
	sltu x4, x8, x1
	slt x6, x8, x8
	and x7, x9, x2
	xor x4, x1, x8
	add x7, x5, x4
	sltu x2, x8, x2
	xor x4, x9, x7
	and x5, x6, x2
	sra x6, x4, x2
	add x1, x7, x4
	sub x3, x8, x6
	add x1, x5, x2
	sub x6, x7, x8
	add x9, x8, x5
	xor x2, x3, x1
	srl x6, x7, x3
	add x4, x1, x6
	xor x4, x9, x7
	xor x3, x5, x8
	srl x2, x4, x8
	xor x6, x2, x3
	xor x2, x2, x8
	sra x8, x2, x3
	and x4, x7, x6
	or x6, x7, x7
	srl x6, x5, x2
	srl x5, x1, x7
	sub x2, x7, x5
	and x3, x9, x9
	sra x2, x2, x5
	sub x1, x2, x2
	sub x9, x1, x3
	sra x2, x2, x4
	xor x4, x2, x4
	sra x8, x1, x4
	xor x2, x3, x8
	xor x4, x4, x1
	sll x5, x4, x3
	sltu x4, x7, x7
	sub x3, x3, x6
	add x3, x2, x1
	sra x2, x4, x4
	sll x8, x6, x6
	and x4, x9, x3
	add x1, x6, x3
	sra x4, x1, x9
	sub x2, x8, x6
	and x8, x2, x7
	add x7, x3, x5
	sll x1, x8, x5
	sll x2, x4, x1
	sll x3, x4, x2
	and x5, x6, x6
	srl x5, x6, x5
	sra x7, x3, x1
	sra x6, x1, x2
	srl x5, x3, x1
	sra x5, x4, x4
	srl x4, x8, x8
	or x1, x2, x8
	add x9, x2, x9
	sra x7, x6, x6
	sub x5, x7, x4
	add x6, x9, x3
	and x8, x8, x7
	and x3, x9, x3
	and x5, x8, x4
	xor x2, x2, x8
	sltu x9, x1, x9
	xor x1, x8, x7
	or x5, x5, x4
	sll x4, x4, x8
	xor x1, x8, x7
	slt x2, x6, x9
	add x2, x4, x6
	or x8, x7, x6
	or x5, x3, x6
	slt x7, x1, x6
	sltu x7, x8, x6
	add x5, x6, x4
	sub x2, x2, x7
	sll x2, x9, x7
	srl x9, x7, x7
	xor x1, x4, x4
	srl x9, x6, x4
	sltu x8, x9, x3
	sub x4, x1, x3
	sub x5, x6, x1
	or x2, x3, x8
	add x1, x8, x1
	xor x2, x8, x9
	and x9, x4, x3
	srl x2, x3, x1
	sra x7, x2, x9
	sra x3, x3, x9
	sub x5, x3, x5
	and x3, x4, x7
	slt x2, x8, x4
	xor x5, x2, x5
	xor x8, x9, x7
	and x1, x3, x9
	xor x8, x2, x5
	slt x5, x8, x1
	slt x6, x8, x8
	and x5, x9, x6
	srl x6, x3, x3
	xor x6, x7, x8
	add x4, x2, x7
	sltu x6, x2, x4
	xor x3, x1, x4
	slt x7, x3, x2
	or x9, x8, x7
	add x2, x9, x3
	sll x5, x8, x6
	slt x9, x7, x9
	or x2, x5, x4
	sra x7, x5, x5
	slt x2, x7, x3
	and x8, x3, x1
	sltu x4, x9, x8
	srl x6, x3, x3
	sltu x3, x1, x5
	and x2, x3, x2
	and x7, x7, x7
	add x1, x7, x9
	sll x5, x7, x8
	and x4, x2, x1
	add x6, x1, x7
	srl x1, x1, x4
	slt x4, x2, x2
	xor x9, x6, x4
	sub x5, x7, x7
	or x6, x6, x3
	or x7, x5, x6
	and x7, x2, x7
	xor x8, x8, x4
	sll x2, x9, x9
	sub x4, x9, x4
	sra x3, x7, x7
	and x3, x4, x9
	sltu x3, x8, x3
	srl x2, x3, x5
	add x3, x4, x1
	and x1, x6, x2
	sra x1, x3, x9
	add x2, x2, x7
	slt x9, x8, x9
	slt x2, x9, x2
	sll x1, x8, x4
	or x6, x9, x7
	sll x8, x6, x5
	sub x7, x2, x2
	sub x1, x5, x2
	sub x7, x1, x7
	sub x4, x5, x6
	sll x5, x9, x7
	xor x3, x3, x9
	xor x4, x9, x3
	xor x7, x4, x6
	and x6, x8, x5
	sltu x2, x5, x4
	xor x3, x7, x6
	sll x6, x5, x3
	xor x3, x7, x6
	slt x9, x7, x9
	and x6, x6, x7
	and x4, x4, x5
	sra x8, x6, x5
	sub x4, x7, x1
	and x8, x2, x2
	sub x3, x2, x4
	sub x4, x6, x8
	or x2, x6, x3
	or x4, x1, x5
	add x3, x3, x3
	srl x8, x9, x2
	sub x8, x2, x3
	add x2, x3, x3
	or x4, x3, x5
	or x7, x6, x8
	and x3, x2, x4
	sll x9, x9, x9
	slt x8, x9, x6
	sub x1, x9, x8
	sltu x6, x9, x1
	sltu x6, x7, x9
	sltu x9, x6, x8
	sll x4, x6, x2
	slt x7, x9, x8
	sll x6, x2, x7
	slt x5, x8, x3
	xor x4, x6, x9
	slt x1, x7, x3
	xor x2, x7, x2
	sltu x6, x8, x4
	sra x2, x8, x4
	slt x9, x9, x8
	or x6, x3, x6
	or x8, x5, x5
	sltu x5, x9, x1
	slt x8, x8, x6
	xor x5, x4, x9
	slt x3, x5, x3
	or x7, x9, x1
	or x9, x5, x3
	sub x9, x9, x1
	xor x2, x7, x5
	sra x5, x6, x6
	sub x5, x5, x9
	srl x3, x9, x4
	or x2, x7, x1
	srl x2, x9, x8
	xor x3, x6, x1
	or x8, x4, x3
	sub x2, x2, x7
	add x4, x1, x6
	add x4, x7, x8
	slt x6, x3, x6
	or x7, x7, x4
	srl x6, x3, x7
	and x4, x4, x5
	xor x4, x2, x6
	and x6, x4, x1
	sub x6, x2, x3
	sub x3, x7, x9
	sub x2, x6, x1
	srl x1, x1, x3
	sll x9, x5, x9
	sra x1, x7, x5
	sll x6, x2, x5
	slt x2, x1, x5
	add x3, x5, x8
	or x4, x3, x2
	sub x5, x5, x7
	srl x5, x2, x2
	sra x3, x7, x9
	sub x6, x1, x1
	sub x5, x2, x1
	or x1, x8, x4
	sll x1, x9, x3
	srl x9, x8, x4
	srl x5, x6, x6
	sub x1, x5, x7
	or x4, x5, x2
	sltu x7, x9, x1
	and x5, x4, x8
	or x2, x3, x8
	srl x6, x2, x9
	sra x7, x4, x4
	sra x1, x3, x1
	and x5, x6, x4
	add x2, x9, x5
	srl x7, x8, x4
	sub x4, x8, x6
	sra x8, x9, x7
	srl x5, x4, x9
	or x5, x1, x4
	sub x9, x2, x4
	add x8, x9, x1
	sra x7, x2, x5
	sub x9, x2, x4
	sub x4, x9, x1
	and x4, x2, x6
	add x7, x7, x8
	slt x5, x2, x6
	slt x5, x4, x2
	sll x4, x5, x1
	sra x4, x6, x8
	xor x3, x5, x9
	sub x6, x6, x6
	xor x8, x1, x6
	srl x5, x8, x7
	add x3, x1, x7
	srl x6, x1, x4
	sub x2, x7, x8
	sltu x4, x9, x1
	and x3, x1, x3
	and x8, x8, x1
	sltu x2, x4, x2
	srl x5, x4, x7
	sra x5, x1, x3
	and x7, x6, x1
	add x8, x1, x1
	and x9, x9, x7
	xor x2, x4, x9
	sltu x8, x8, x7
	sra x6, x3, x3
	slt x9, x2, x2
	sltu x6, x9, x4
	slt x4, x4, x7
	xor x9, x8, x8
	or x1, x1, x4
	or x8, x4, x2
	sltu x9, x5, x6
	slt x8, x4, x2
	sltu x4, x9, x6
	slt x8, x6, x5
	sltu x8, x2, x1
	or x3, x1, x5
	sub x8, x2, x5
	slt x5, x5, x2
	xor x3, x4, x1
	sll x4, x8, x2
	sll x9, x1, x9
	sll x2, x9, x1
	sub x9, x4, x7
	sub x6, x7, x6
	sra x5, x4, x6
	srl x7, x6, x6
	sltu x2, x4, x2
	sltu x2, x1, x8
	add x3, x1, x3
	slt x7, x9, x9
	slt x5, x1, x2
	sll x2, x5, x6
	sra x9, x1, x8
	xor x6, x2, x8
	or x1, x1, x4
	sra x1, x6, x1
	slt x7, x9, x2
	add x4, x5, x2
	sltu x7, x8, x4
	srl x8, x6, x3
	sra x7, x2, x2
	srl x7, x5, x7
	sra x7, x5, x6
	slt x6, x3, x1
	sra x9, x3, x6
	or x8, x8, x3
	sll x8, x5, x6
	add x4, x2, x5
	sub x5, x1, x7
	sll x1, x1, x2
	sub x8, x1, x2
	sltu x5, x7, x6
	srl x2, x8, x3
	srl x1, x5, x6
	sub x6, x4, x9
	sltu x9, x8, x4
	slt x2, x3, x1
	add x7, x8, x1
	srl x9, x3, x7
	or x8, x3, x4
	sra x6, x5, x3
	xor x1, x8, x4
	srl x1, x7, x7
	sltu x4, x2, x3
	or x9, x3, x8
	slt x7, x4, x1
	add x4, x5, x2
	slt x9, x7, x7
	or x1, x5, x4
	sub x6, x7, x8
	slt x1, x2, x9
	or x9, x6, x7
	sra x5, x7, x9
	add x7, x1, x1
	or x8, x4, x5
	sra x4, x4, x7
	sub x7, x3, x2
	and x6, x6, x7
	add x1, x3, x6
	and x9, x1, x8
	sub x9, x2, x9
	sll x6, x4, x5
	sll x9, x3, x9
	and x3, x6, x9
	add x1, x2, x3
	or x8, x8, x7
	sll x5, x3, x9
	xor x8, x5, x4
	sub x4, x2, x4
	slt x5, x4, x6
	and x3, x1, x4
	sub x3, x5, x4
	slt x5, x4, x1
	sra x2, x7, x7
	slt x3, x2, x6
	srl x1, x8, x8
	srl x7, x3, x9
	add x1, x1, x2
	sra x7, x6, x2
	add x5, x8, x3
	srl x3, x7, x4
	srl x9, x5, x4
	sltu x7, x2, x6
	srl x4, x8, x1
	sra x4, x6, x7
	srl x3, x9, x8
	sub x9, x2, x6
	sll x6, x4, x1
	srl x9, x6, x4
	sub x1, x5, x4
	and x8, x8, x8
	slt x8, x3, x2
	sltu x9, x4, x1
	and x3, x3, x8
	and x3, x6, x9
	or x4, x9, x5
	xor x9, x8, x8
	slt x7, x8, x5
	sltu x5, x7, x6
	sra x8, x6, x5
	srl x3, x6, x2
	slt x8, x5, x2
	sub x5, x2, x1
	or x9, x3, x2
	sltu x2, x1, x9
	srl x8, x1, x6
	srl x4, x2, x6
	sra x9, x8, x5
	or x3, x8, x1
	sltu x4, x6, x1
	sltu x8, x3, x3
	sltu x7, x9, x2
	xor x8, x2, x7
	and x1, x1, x9
	sltu x5, x3, x1
	sll x7, x3, x3
	sra x9, x8, x7
	or x8, x3, x6
	sltu x3, x4, x1
	add x7, x6, x7
	and x9, x9, x8
	srl x8, x5, x1
	sra x8, x2, x7
	add x8, x9, x6
	xor x8, x2, x1
	srl x2, x4, x6
	sra x3, x5, x7
	srl x4, x5, x3
	add x7, x4, x5
	or x7, x7, x1
	sll x7, x1, x2
	sltu x7, x2, x5
	sltu x5, x5, x8
	srl x9, x4, x4
	srl x8, x1, x1
	sltu x6, x4, x3
	or x9, x2, x6
	slt x1, x6, x3
	srl x8, x4, x2
	sub x1, x3, x8
	add x5, x3, x1
	or x8, x2, x8
	sra x6, x1, x3
	and x8, x2, x8
	xor x5, x7, x7
	sltu x4, x5, x4
	or x4, x2, x8
	sll x2, x2, x6
	slt x7, x5, x7
	sltu x1, x8, x9
	srl x6, x3, x2
	sub x7, x9, x3
	srl x2, x3, x8
	xor x3, x5, x6
	sub x4, x1, x2
	sltu x4, x7, x4
	xor x6, x2, x7
	add x4, x6, x5
	sltu x8, x7, x8
	sra x2, x7, x1
	xor x6, x3, x6
	xor x2, x2, x5
	sra x2, x9, x3
	xor x4, x2, x3
	sll x7, x8, x3
	srl x1, x7, x8
	sltu x6, x6, x1
	sra x4, x7, x2
	slt x8, x8, x6
	sub x4, x1, x6
	slt x1, x1, x2
	sub x3, x7, x4
	sra x9, x7, x5
	slt x1, x6, x9
	sra x8, x2, x4
	sra x6, x3, x5
	add x3, x8, x8
	or x6, x7, x7
	slt x2, x9, x5
	xor x1, x7, x1
	sub x2, x7, x9
	sltu x7, x6, x6
	and x2, x1, x8
	or x7, x7, x9
	slt x9, x6, x1
	slt x6, x6, x4
	and x2, x5, x8
	and x9, x9, x3
	sra x9, x7, x4
	or x2, x5, x6
	or x6, x3, x8
	srl x3, x4, x1
	and x7, x4, x5
	and x2, x1, x9
	sub x3, x3, x2
	slt x5, x2, x2
	and x1, x4, x9
	or x8, x6, x8
	sra x5, x9, x5
	sub x8, x4, x7
	slt x3, x1, x1
	sra x2, x1, x2
	sll x9, x4, x4
	sll x5, x6, x4
	sra x3, x7, x6
	sll x5, x1, x5
	or x4, x5, x4
	sub x4, x1, x3
	sub x2, x5, x6
	srl x7, x2, x5
	sll x3, x6, x3
	sra x7, x5, x1
	sub x1, x9, x4
	slt x9, x1, x7
	sra x5, x2, x5
	slt x6, x5, x4
	slt x6, x2, x5
	add x4, x1, x1
	sub x5, x5, x3
	sll x5, x2, x4
	sltu x4, x8, x2
	slt x3, x6, x7
	or x8, x4, x4
	or x9, x1, x7
	add x5, x7, x3
	srl x9, x9, x1
	sll x2, x3, x3
	sra x5, x4, x7
	srl x1, x4, x1
	slt x6, x7, x8
	add x2, x4, x9
	slt x5, x1, x3
	sub x4, x3, x7
	xor x8, x3, x2
	slt x9, x2, x3
	sll x4, x6, x1
	or x9, x5, x8
	add x7, x5, x8
	add x8, x7, x1
	add x4, x3, x4
	slt x2, x9, x6
	sll x5, x4, x4
	add x1, x2, x3
	or x2, x5, x8
	srl x5, x7, x9
	slt x2, x2, x7
	or x4, x3, x9
	and x9, x3, x1
	sll x7, x5, x9
	srl x9, x3, x9
	or x9, x8, x7
	sltu x9, x5, x4
	sra x2, x2, x1
	sltu x9, x9, x2
	sub x9, x9, x6
	slt x2, x9, x7
	sltu x1, x3, x3
	sltu x4, x3, x7
	srl x4, x5, x2
	and x5, x4, x9
	or x3, x7, x2
	xor x8, x7, x6
	xor x1, x2, x9
	slt x8, x5, x5
	sra x5, x1, x7
	slt x7, x3, x1
	sra x5, x5, x7
	sll x3, x5, x8
	or x4, x9, x9
	xor x5, x9, x7
	sll x4, x5, x6
	srl x6, x4, x8
	slt x1, x6, x2
	slt x8, x8, x7
	or x9, x4, x9
	srl x1, x5, x5
	sll x7, x2, x4
	add x3, x3, x7
	sltu x3, x5, x4
	xor x9, x8, x2
	add x1, x1, x9
	xor x5, x9, x7
	xor x5, x4, x4
	srl x2, x1, x7
	add x8, x9, x4
	sll x4, x5, x9
	sub x5, x4, x5
	srl x2, x1, x2
	srl x6, x7, x9
	xor x5, x3, x6
	and x5, x8, x5
	sra x4, x6, x1
	or x1, x8, x1
	sltu x1, x5, x4
	sltu x9, x1, x7
	srl x8, x9, x2
	xor x6, x5, x7
	or x3, x4, x3
	sltu x7, x6, x3
	and x4, x1, x7
	or x9, x3, x1
	sub x8, x3, x2
	or x4, x3, x2
	add x9, x9, x2
	or x2, x5, x4
	srl x5, x5, x6
	and x3, x3, x3
	sll x5, x5, x2
	xor x3, x7, x3
	sub x3, x3, x5
	sra x1, x9, x8
	sub x9, x4, x4
	add x3, x5, x7
	sltu x1, x7, x5
	sub x2, x6, x8
	sll x3, x8, x2
	srl x9, x2, x9
	or x7, x7, x6
	srl x2, x1, x6
	sub x1, x5, x7
	or x6, x9, x7
	slt x3, x3, x2
	srl x8, x8, x5
	slt x9, x1, x1
	sltu x4, x2, x7
	sll x5, x2, x8
	xor x4, x3, x2
	add x6, x5, x6
	sub x9, x4, x1
	slt x6, x6, x6
	xor x3, x7, x9
	srl x1, x2, x2
	sra x2, x6, x5
	sltu x3, x9, x2
	sra x1, x9, x9
	or x8, x3, x6
	sra x8, x2, x9
	or x7, x9, x4
	add x2, x7, x9
	slt x1, x5, x5
	srl x4, x5, x8
	and x3, x7, x6
	srl x3, x4, x9
	xor x1, x9, x1
	xor x2, x4, x4
	srl x9, x8, x7
	or x5, x7, x1
	add x5, x1, x1
	sltu x3, x7, x6
	add x6, x8, x8
	sra x4, x4, x2
	and x8, x1, x4
	xor x4, x6, x1
	xor x1, x8, x4
	srl x2, x9, x8
	xor x1, x9, x8
	or x3, x5, x2
	sltu x6, x9, x8
	sub x7, x8, x2
	add x6, x5, x2
	or x4, x3, x5
	and x7, x8, x4
	sub x1, x5, x6
	sll x5, x7, x3
	sra x2, x7, x8
	sub x3, x8, x6
	and x2, x5, x8
	xor x1, x7, x6
	xor x5, x4, x4
	sll x2, x6, x2
	or x9, x2, x3
	slt x2, x4, x6
	xor x7, x7, x3
	slt x9, x8, x7
	add x5, x8, x3
	sub x6, x6, x5
	add x6, x6, x5
	or x8, x2, x9
	xor x9, x3, x8
	or x4, x1, x3
	slt x9, x3, x4
	slt x1, x9, x8
	and x5, x5, x8
	sll x8, x1, x8
	xor x6, x8, x5
	slt x4, x6, x8
	sltu x9, x6, x9
	xor x3, x2, x4
	slt x1, x1, x7
	sll x8, x6, x9
	sra x6, x3, x1
	xor x6, x4, x1
	xor x1, x1, x7
	add x9, x7, x1
	add x6, x2, x4
	xor x8, x4, x4
	add x9, x4, x1
	sltu x2, x7, x4
	add x2, x9, x4
	and x3, x6, x2
	srl x2, x9, x2
	xor x3, x2, x8
	sub x3, x6, x9
	srl x4, x8, x1
	xor x8, x1, x8
	or x1, x5, x4
	srl x5, x9, x1
	and x8, x1, x9
	srl x2, x7, x9
	add x5, x3, x9
	sll x7, x5, x3
	add x5, x3, x7
	sub x6, x2, x2
	sra x8, x8, x8
	sra x3, x7, x7
	sltu x4, x1, x6
	sra x5, x3, x2
	sll x3, x7, x3
	slt x8, x7, x9
	sltu x5, x6, x1
	add x6, x5, x4
	sll x8, x2, x6
	sub x8, x7, x1
	xor x2, x3, x1
	add x9, x7, x6
	or x6, x2, x7
	sll x3, x8, x4
	slt x7, x8, x8
	and x9, x9, x3
	srl x4, x4, x6
	sub x8, x1, x5
	xor x7, x7, x2
	slt x2, x4, x9
	slt x4, x2, x8
	sra x4, x1, x3
	or x8, x9, x5
	slt x7, x3, x3
	sltu x2, x4, x8
	sll x5, x3, x7
	srl x2, x5, x4
	xor x7, x2, x8
	srl x6, x5, x4
	and x6, x7, x6
	sub x6, x3, x9
	sra x4, x4, x3
	sub x6, x4, x9
	and x6, x3, x3
	xor x3, x3, x4
	sltu x1, x1, x9
	sub x3, x6, x6
	and x6, x8, x5
	sra x7, x4, x1
	sra x6, x3, x8
	xor x5, x7, x3
	or x2, x5, x5
	srl x5, x3, x5
	sub x6, x4, x2
	sll x8, x3, x3
	and x5, x3, x1
	add x5, x8, x1
	sub x2, x3, x3
	xor x1, x9, x3
	add x9, x2, x1
	or x5, x8, x1
	slt x7, x4, x9
	slt x5, x4, x1
	add x8, x7, x1
	sra x7, x7, x8
	xor x8, x9, x8
	slt x5, x3, x9
	xor x8, x9, x3
	slt x7, x2, x1
	slt x4, x8, x4
	xor x6, x4, x7
	slt x5, x1, x2
	xor x9, x3, x3
	xor x3, x8, x8
	sra x2, x4, x4
	sltu x4, x6, x9
	sll x9, x4, x2
	or x4, x1, x9
	srl x5, x1, x5
	srl x6, x1, x7
	add x3, x1, x1
	sll x3, x2, x7
	sub x5, x2, x9
	slt x8, x2, x2
	xor x8, x8, x7
	and x3, x5, x4
	and x1, x9, x2
	srl x1, x3, x6
	and x9, x3, x6
	slt x5, x5, x7
	slt x9, x2, x5
	sra x1, x3, x3
	sll x4, x2, x5
	xor x5, x4, x8
	or x1, x6, x7
	sll x5, x2, x9
	sltu x9, x1, x7
	or x9, x8, x1
	sub x1, x4, x2
	sra x2, x8, x8
	or x8, x2, x1
	srl x5, x6, x3
	slt x1, x5, x3
	xor x3, x2, x9
	add x1, x1, x5
	xor x9, x3, x3
	or x5, x4, x7
	slt x5, x9, x2
	xor x7, x1, x2
	sltu x8, x9, x5
	and x8, x3, x1
	or x5, x2, x3
	sltu x4, x5, x3
	add x2, x4, x9
	srl x3, x9, x5
	srl x2, x7, x2
	slt x8, x5, x6
	add x7, x3, x5
	slt x6, x3, x9
	sra x6, x5, x7
	slt x2, x8, x8
	slt x7, x3, x9
	or x9, x5, x1
	sub x1, x5, x4
	sra x5, x2, x1
	sra x6, x8, x9
	srl x4, x1, x9
	and x1, x7, x7
	srl x3, x7, x2
	sll x5, x6, x1
	sub x2, x1, x8
	sll x4, x3, x9
	xor x3, x2, x9
	srl x2, x9, x4
	slt x7, x6, x4
	slt x8, x6, x1
	sra x9, x5, x7
	sll x3, x5, x7
	sra x7, x8, x8
	sra x8, x6, x4
	add x1, x8, x3
	or x4, x8, x6
	sra x4, x4, x9
	srl x4, x9, x2
	add x3, x1, x2
	sub x4, x6, x1
	sll x5, x6, x3
	or x6, x8, x3
	sll x1, x7, x4
	sll x3, x2, x9
	sra x6, x1, x6
	sll x6, x2, x4
	and x4, x1, x2
	sub x4, x3, x5
	sub x1, x8, x3
	sltu x8, x8, x9
	xor x1, x2, x3
	sll x6, x7, x8
	srl x7, x2, x5
	add x2, x3, x9
	sltu x6, x4, x6
	sub x3, x2, x7
	slt x6, x6, x1
	add x8, x8, x2
	xor x9, x2, x6
	sltu x3, x8, x9
	and x3, x3, x9
	xor x1, x8, x3
	sub x5, x2, x4
	sll x5, x5, x9
	sra x1, x7, x7
	srl x4, x3, x5
	sra x5, x1, x5
	sra x2, x8, x4
	or x2, x7, x4
	and x7, x3, x9
	and x6, x5, x1
	sra x3, x6, x2
	sltu x1, x7, x9
	sra x9, x4, x4
	sltu x1, x6, x9
	or x9, x1, x9
	sra x5, x5, x2
	xor x9, x4, x8
	srl x6, x5, x2
	sra x6, x7, x6
	sra x4, x7, x6
	sltu x6, x5, x4
	and x7, x1, x6
	xor x1, x9, x3
	srl x5, x7, x2
	xor x6, x6, x5
	sub x5, x2, x7
	sra x5, x9, x4
	sll x6, x2, x2
	srl x7, x1, x5
	and x9, x1, x2
	add x8, x4, x5
	or x9, x8, x3
	srl x8, x8, x3
	sll x6, x1, x7
	slt x5, x5, x5
	sltu x1, x5, x1
	or x3, x4, x2
	sltu x8, x6, x3
	or x6, x7, x8
	xor x4, x2, x8
	or x5, x7, x4
	sra x3, x1, x6
	add x8, x7, x4
	slt x9, x6, x5
	sra x6, x6, x5
	sub x2, x1, x2
	add x5, x9, x1
	add x7, x2, x8
	sra x9, x3, x8
	add x5, x5, x3
	sub x7, x8, x3
	and x6, x2, x7
	sll x2, x7, x6
	sll x1, x3, x4
	or x7, x6, x9
	and x8, x3, x5
	sra x5, x5, x2
	and x7, x9, x5
	sltu x9, x9, x5
	xor x7, x5, x8
	sltu x8, x2, x4
	xor x8, x5, x3
	and x8, x5, x8
	sub x5, x4, x3
	sll x4, x9, x3
	sub x7, x5, x7
	xor x1, x5, x8
	add x6, x6, x6
	add x4, x8, x2
	sll x7, x4, x6
	sra x8, x4, x9
	or x2, x4, x4
	sltu x2, x4, x4
	add x8, x2, x5
	sub x2, x7, x8
	and x6, x3, x3
	add x7, x5, x1
	sra x5, x1, x7
	sltu x3, x6, x3
	sll x3, x5, x3
	or x7, x2, x4
	srl x4, x9, x4
	xor x3, x4, x6
	add x3, x1, x7
	add x5, x4, x8
	and x4, x8, x6
	sll x4, x6, x1
	sra x2, x5, x6
	sltu x3, x1, x9
	xor x1, x2, x9
	and x8, x7, x5
	slt x9, x8, x3
	sll x9, x3, x3
	add x3, x7, x7
	add x1, x1, x1
	sll x2, x5, x7
	sltu x6, x6, x6
	sltu x6, x7, x6
	sltu x8, x8, x7
	xor x8, x5, x8
	or x3, x3, x8
	sltu x8, x6, x5
	sll x7, x1, x9
	or x8, x8, x7
	sub x3, x7, x4
	sltu x1, x8, x5
	xor x7, x1, x1
	sll x6, x2, x8
	sra x4, x9, x6
	slt x5, x4, x3
	add x3, x8, x1
	sll x6, x6, x3
	srl x5, x5, x9
	sltu x3, x9, x9
	add x7, x7, x3
	and x2, x2, x9
	sltu x5, x9, x5
	or x6, x6, x2
	or x8, x4, x7
	xor x2, x3, x7
	and x1, x8, x9
	srl x4, x4, x9
	sub x3, x7, x2
	srl x9, x6, x3
	srl x9, x8, x4
	and x2, x4, x1
	add x6, x8, x1
	sll x6, x4, x4
	add x7, x5, x1
	and x2, x6, x3
	sll x5, x8, x9
	sub x1, x9, x1
	or x3, x1, x5
	xor x4, x1, x4
	slt x3, x2, x1
	sub x6, x9, x6
	sra x6, x1, x3
	sll x5, x5, x7
	sltu x5, x9, x2
	sltu x2, x4, x9
	slt x9, x1, x5
	sra x3, x9, x4
	and x6, x6, x4
	slt x9, x7, x6
	and x2, x1, x9
	sll x8, x2, x7
	srl x5, x7, x1
	and x5, x3, x8
	slt x4, x4, x1
	sltu x7, x7, x6
	or x4, x6, x7
	and x2, x5, x3
	slt x8, x8, x3
	or x2, x1, x2
	sub x4, x5, x9
	srl x5, x3, x8
	xor x3, x9, x8
	sll x5, x3, x5
	slt x1, x2, x7
	sra x8, x4, x4
	srl x4, x6, x3
	sra x3, x9, x6
	slt x9, x5, x2
	srl x7, x8, x7
	sll x4, x4, x4
	slt x7, x7, x4
	xor x5, x3, x6
	or x8, x1, x5
	and x8, x5, x6
	and x3, x1, x6
	slt x8, x3, x7
	srl x6, x1, x8
	sub x4, x8, x1
	sra x7, x9, x9
	sra x8, x7, x3
	sltu x4, x1, x5
	or x8, x2, x2
	add x3, x6, x4
	srl x7, x6, x3
	sll x1, x6, x1
	or x3, x5, x1
	slt x8, x9, x2
	sltu x1, x3, x2
	srl x3, x4, x3
	or x6, x1, x4
	and x9, x9, x4
	add x5, x8, x1
	add x8, x9, x5
	sra x5, x4, x6
	or x3, x6, x8
	or x2, x4, x9
	xor x9, x7, x2
	sll x6, x1, x2
	add x6, x1, x2
	and x8, x7, x6
	sra x2, x4, x5
	srl x2, x3, x8
	sltu x4, x9, x5
	srl x1, x4, x3
	or x5, x5, x7
	slt x1, x9, x2
	xor x5, x5, x4
	sub x7, x3, x1
	sltu x3, x4, x6
	sltu x2, x5, x2
	sra x1, x6, x1
	sub x9, x3, x1
	add x8, x5, x7
	srl x5, x3, x9
	sltu x5, x2, x2
	sll x3, x5, x5
	sltu x6, x6, x4
	slt x7, x8, x1
	and x8, x3, x2
	slt x4, x9, x8
	add x1, x7, x3
	xor x5, x4, x4
	sll x8, x4, x1
	sll x1, x3, x1
	and x2, x3, x3
	or x9, x4, x4
	sltu x8, x6, x5
	sra x1, x1, x1
	sll x9, x8, x1
	sltu x8, x2, x2
	xor x9, x8, x2
	and x6, x6, x7
	sra x3, x8, x9
	sub x4, x4, x3
	sll x3, x5, x4
	or x9, x6, x4
	slt x5, x8, x4
	xor x4, x8, x4
	slt x3, x1, x3
	slt x3, x7, x5
	and x3, x8, x6
	sub x7, x2, x8
	sltu x5, x9, x3
	add x9, x6, x9
	xor x8, x6, x8
	srl x6, x8, x1
	sll x6, x3, x6
	sll x7, x9, x2
	slt x6, x9, x3
	xor x2, x2, x7
	add x4, x3, x3
	slt x2, x9, x4
	add x4, x3, x6
	srl x4, x1, x6
	sll x7, x3, x4
	sub x6, x5, x4
	xor x3, x4, x8
	srl x9, x8, x5
	slt x4, x1, x5
	and x2, x6, x9
	slt x5, x3, x1
	xor x7, x4, x3
	srl x7, x8, x5
	and x5, x4, x6
	slt x6, x5, x9
	srl x4, x4, x7
	srl x9, x7, x3
	xor x9, x6, x6
	and x7, x8, x8
	sll x6, x7, x5
	slt x1, x2, x9
	and x6, x9, x3
	slt x2, x7, x7
	sltu x2, x2, x5
	sra x4, x8, x4
	and x1, x3, x4
	sub x3, x3, x5
	sub x6, x5, x2
	slt x4, x6, x2
	sltu x4, x8, x8
	sll x3, x9, x4
	sltu x9, x9, x4
	sll x5, x1, x9
	srl x9, x9, x9
	xor x1, x8, x5
	sra x8, x6, x4
	xor x4, x8, x2
	xor x7, x7, x7
	sltu x9, x6, x1
	slt x1, x1, x9
	sub x7, x4, x7
	srl x9, x2, x9
	sub x7, x7, x1
	add x2, x9, x7
	sub x6, x9, x9
	sub x3, x2, x3
	slt x4, x9, x5
	slt x6, x8, x9
	slt x8, x3, x7
	and x5, x7, x6
	add x3, x5, x5
	and x3, x4, x3
	slt x3, x5, x6
	srl x9, x6, x1
	sra x2, x5, x5
	srl x1, x3, x6
	sll x2, x5, x4
	srl x1, x2, x3
	xor x2, x9, x2
	slt x2, x2, x3
	or x8, x3, x9
	xor x2, x1, x9
	add x5, x2, x9
	or x3, x2, x1
	add x5, x5, x7
	xor x8, x5, x1
	or x9, x4, x6
	or x6, x8, x1
	slt x9, x8, x6
	xor x6, x9, x9
	add x9, x9, x8
	add x5, x4, x3
	xor x7, x8, x8
	slt x6, x4, x5
	sll x7, x1, x3
	and x7, x9, x3
	sltu x8, x4, x6
	srl x3, x8, x9
	sltu x6, x8, x8
	xor x6, x6, x3
	sll x1, x6, x2
	srl x3, x7, x4
	sltu x4, x8, x6
	xor x6, x4, x7
	add x7, x9, x3
	xor x9, x5, x6
	add x7, x1, x8
	or x3, x6, x9
	sub x4, x1, x7
	sub x5, x8, x9
	sltu x3, x4, x1
	sll x8, x3, x9
	srl x1, x1, x2
	sub x6, x1, x1
	xor x4, x7, x6
	sltu x6, x7, x7
	and x8, x3, x5
	sll x7, x7, x8
	add x3, x9, x2
	sra x7, x8, x2
	sra x7, x7, x6
	sll x1, x4, x7
	and x5, x5, x4
	sra x8, x5, x7
	xor x4, x5, x7
	sltu x9, x3, x7
	srl x8, x4, x9
	add x2, x9, x3
	or x9, x1, x7
	sll x2, x3, x8
	add x9, x4, x7
	srl x3, x3, x3
	sll x5, x7, x1
	or x4, x5, x4
	sra x2, x5, x9
	slt x2, x7, x3
	sltu x8, x2, x9
	and x9, x5, x1
	xor x6, x9, x2
	or x2, x8, x2
	slt x2, x8, x5
	or x8, x4, x2
	sra x5, x8, x4
	sll x4, x9, x1
	sub x6, x3, x2
	sub x4, x3, x1
	xor x6, x9, x1
	slt x7, x2, x6
	sra x1, x9, x9
	xor x7, x9, x9
	sltu x5, x1, x4
	sra x9, x5, x6
	add x4, x6, x8
	or x5, x9, x1
	srl x1, x3, x3
	or x3, x3, x4
	srl x5, x1, x8
	sub x6, x9, x6
	xor x2, x4, x5
	srl x4, x8, x3
	sll x8, x1, x6
	sra x8, x9, x1
	srl x6, x5, x4
	or x7, x3, x3
	sra x5, x2, x2
	slt x7, x5, x6
	or x7, x9, x2
	sra x9, x6, x1
	sll x3, x3, x9
	srl x8, x8, x2
	sll x5, x3, x7
	add x5, x9, x3
	sub x6, x9, x4
	sll x7, x1, x1
	sra x5, x8, x7
	sub x2, x1, x9
	sra x1, x2, x8
	sltu x8, x5, x4
	xor x7, x2, x7
	sub x3, x6, x2
	or x7, x7, x2
	sub x4, x2, x5
	and x6, x3, x9
	or x6, x4, x2
	xor x6, x3, x6
	sub x6, x6, x3
	or x2, x2, x6
	slt x6, x8, x9
	or x6, x3, x7
	add x2, x5, x8
	sll x4, x9, x3
	xor x3, x5, x2
	add x1, x4, x6
	srl x6, x9, x2
	sltu x5, x8, x5
	and x9, x9, x3
	sub x8, x7, x3
	sra x6, x8, x6
	add x9, x4, x3
	srl x9, x3, x9
	or x4, x9, x8
	sra x2, x6, x4
	srl x6, x9, x6
	sll x7, x2, x2
	sra x2, x5, x6
	and x5, x6, x1
	slt x7, x2, x5
	add x5, x2, x3
	sll x7, x1, x4
	and x6, x2, x5
	sra x9, x8, x6
	sra x6, x4, x6
	sll x2, x8, x6
	or x4, x2, x2
	xor x9, x8, x2
	srl x2, x1, x9
	sub x8, x4, x1
	slt x6, x8, x5
	sra x3, x9, x6
	and x8, x9, x5
	sra x6, x4, x4
	xor x2, x8, x9
	xor x2, x7, x3
	add x6, x4, x1
	sll x1, x2, x5
	sub x8, x7, x2
	sltu x6, x2, x1
	xor x6, x1, x9
	or x9, x9, x3
	srl x5, x9, x6
	or x7, x9, x1
	sra x9, x7, x1
	sra x7, x9, x6
	sra x7, x6, x2
	and x6, x8, x1
	slt x1, x2, x1
	sltu x5, x4, x1
	sltu x7, x8, x9
	add x7, x9, x7
	sub x9, x6, x7
	srl x2, x3, x9
	and x6, x3, x7
	xor x8, x5, x6
	and x3, x7, x7
	add x7, x2, x3
	sll x9, x6, x7
	add x3, x1, x5
	srl x3, x1, x8
	sub x4, x3, x4
	sub x3, x7, x3
	or x7, x4, x8
	or x6, x4, x7
	sll x6, x8, x8
	sll x5, x5, x3
	add x9, x3, x7
	or x4, x6, x2
	or x4, x5, x5
	sub x2, x4, x9
	and x2, x2, x7
	sll x6, x2, x3
	sra x1, x8, x3
	srl x9, x7, x9
	xor x1, x4, x2
	sub x6, x9, x6
	and x8, x7, x8
	slt x8, x7, x2
	sub x6, x2, x7
	add x5, x4, x6
	slt x1, x3, x1
	and x9, x5, x5
	and x2, x5, x3
	xor x2, x8, x6
	srl x4, x1, x4
	sub x7, x5, x3
	and x9, x3, x9
	sub x2, x4, x8
	and x8, x1, x2
	sll x9, x4, x8
	srl x1, x4, x6
	or x8, x9, x5
	sltu x9, x1, x8
	srl x6, x6, x1
	or x5, x3, x7
	sll x2, x2, x8
	sra x5, x6, x4
	sll x9, x4, x6
	srl x6, x3, x9
	srl x2, x8, x2
	xor x7, x4, x9
	sll x7, x3, x4
	sra x3, x5, x6
	add x4, x5, x3
	sltu x8, x1, x7
	srl x9, x4, x5
	srl x9, x2, x4
	xor x6, x3, x7
	or x3, x5, x3
	xor x8, x3, x2
	srl x9, x7, x4
	xor x1, x9, x6
	sub x3, x9, x6
	sltu x7, x5, x2
	sltu x5, x1, x2
	sll x8, x4, x2
	sltu x5, x2, x1
	sltu x4, x3, x7
	and x5, x5, x2
	srl x7, x5, x8
	xor x4, x4, x4
	sll x9, x1, x3
	add x5, x1, x6
	add x7, x6, x2
	xor x3, x9, x3
	sub x7, x2, x3
	xor x8, x8, x5
	srl x8, x3, x8
	sltu x2, x7, x5
	add x4, x6, x9
	and x9, x6, x3
	xor x4, x5, x4
	xor x2, x7, x1
	xor x6, x7, x2
	and x9, x2, x5
	srl x1, x6, x2
	and x4, x4, x5
	sll x7, x3, x6
	sll x7, x6, x7
	srl x7, x6, x3
	and x6, x1, x8
	slt x8, x2, x7
	or x7, x6, x7
	sltu x8, x1, x7
	and x7, x3, x2
	and x4, x3, x3
	slt x5, x1, x3
	xor x3, x5, x8
	slt x5, x9, x2
	slt x9, x7, x4
	xor x9, x6, x5
	and x9, x5, x5
	sll x1, x2, x7
	sub x6, x3, x9
	and x9, x6, x3
	sub x8, x2, x3
	slt x4, x9, x8
	or x7, x1, x2
	or x6, x6, x6
	slt x9, x8, x4
	xor x8, x2, x6
	srl x9, x8, x7
	add x5, x1, x6
	add x2, x5, x6
	sltu x3, x3, x7
	add x7, x4, x3
	add x1, x2, x3
	srl x2, x6, x2
	xor x7, x2, x7
	sll x4, x6, x5
	add x9, x8, x5
	add x4, x6, x6
	xor x6, x6, x8
	sltu x4, x3, x7
	sra x9, x4, x4
	slt x4, x1, x1
	add x2, x2, x7
	add x6, x3, x5
	sltu x9, x9, x6
	sll x7, x9, x6
	and x2, x5, x2
	xor x6, x2, x5
	sll x8, x3, x1
	slt x8, x9, x7
	xor x9, x4, x4
	sll x5, x8, x5
	sltu x3, x4, x4
	slt x3, x3, x7
	sltu x8, x6, x3
	sra x4, x9, x6
	or x1, x9, x1
	sltu x5, x2, x3
	sub x3, x6, x6
	xor x6, x8, x2
	sll x5, x5, x9
	add x9, x8, x2
	or x4, x5, x6
	xor x5, x7, x5
	xor x9, x9, x3
	sll x9, x3, x6
	srl x5, x7, x1
	add x5, x4, x6
	and x3, x8, x8
	add x9, x5, x9
	add x4, x3, x6
	sra x9, x5, x4
	and x9, x6, x9
	or x4, x7, x1
	xor x2, x8, x5
	add x5, x5, x2
	sltu x6, x5, x9
	and x9, x7, x6
	sll x2, x3, x4
	and x5, x5, x1
	sra x5, x6, x8
	add x4, x4, x1
	slt x1, x3, x5
	sra x3, x3, x7
	xor x3, x8, x1
	add x9, x7, x6
	or x6, x9, x1
	and x6, x1, x8
	sub x8, x1, x3
	add x1, x5, x2
	sra x2, x3, x7
	sltu x1, x3, x6
	add x9, x2, x4
	add x4, x4, x6
	add x2, x6, x5
	and x8, x3, x6
	add x6, x6, x2
	add x3, x9, x3
	and x9, x9, x8
	sra x4, x4, x1
	srl x2, x7, x9
	sltu x3, x5, x2
	or x6, x9, x8
_fjump1:
	sltu x3, x4, x7
	xor x2, x4, x7
	sra x5, x6, x7
	sll x4, x4, x8
	or x7, x6, x9
	add x4, x8, x4
	xor x9, x8, x3
	sll x5, x4, x8
	add x1, x2, x2
	sll x7, x7, x8
	sra x5, x2, x1
	slt x1, x3, x9
	sll x9, x6, x7
	sltu x5, x8, x7
	xor x8, x9, x5
	sub x5, x2, x8
	sll x6, x4, x8
	srl x5, x8, x6
	and x9, x4, x6
	add x4, x3, x3
	jal x2, _fjump2
	xor x9, x5, x4
	add x3, x3, x6
	sll x1, x1, x6
	or x1, x9, x1
	sll x2, x3, x2
	sltu x3, x3, x8
	add x1, x4, x3
	or x3, x5, x8
	and x7, x6, x6
	sltu x8, x8, x1
	and x4, x3, x3
	slt x9, x8, x1
	slt x9, x8, x6
	add x9, x5, x4
	or x2, x7, x5
	srl x5, x9, x8
	slt x1, x3, x1
	sll x1, x7, x1
	srl x7, x4, x3
	and x2, x7, x9
	and x8, x8, x8
	sra x9, x7, x3
	xor x7, x9, x1
	sub x6, x5, x5
	sltu x2, x7, x7
	srl x6, x5, x3
	add x7, x1, x8
	sltu x4, x3, x9
	sltu x3, x6, x6
	or x7, x2, x8
	sltu x4, x9, x8
	and x8, x7, x6
	slt x6, x5, x2
	slt x7, x2, x5
	or x7, x8, x1
	sll x8, x4, x8
	xor x2, x2, x1
	slt x7, x7, x5
	sltu x5, x1, x4
	sra x8, x2, x9
	sra x2, x4, x9
	sll x2, x4, x7
	srl x7, x8, x6
	or x3, x5, x9
	sra x3, x3, x6
	add x1, x1, x4
	sll x2, x1, x1
	and x8, x2, x1
	sub x6, x8, x8
	srl x5, x4, x6
	sra x4, x6, x2
	xor x7, x6, x3
	or x6, x1, x6
	or x1, x3, x4
	sll x4, x3, x1
	slt x8, x2, x4
	sra x7, x7, x2
	sra x2, x9, x2
	srl x3, x3, x9
	sltu x7, x3, x7
	sub x7, x7, x6
	xor x9, x1, x9
	and x3, x7, x4
	xor x5, x2, x8
	sltu x4, x7, x5
	sra x2, x8, x9
	add x5, x9, x6
	sll x2, x8, x3
	and x6, x7, x9
	and x8, x6, x5
	or x4, x1, x4
	and x2, x1, x7
	sub x1, x6, x7
	sra x4, x1, x4
	or x3, x2, x5
	slt x5, x9, x4
	xor x7, x1, x5
	add x5, x8, x1
	sub x9, x1, x3
	xor x5, x1, x1
	sub x9, x6, x9
	slt x9, x3, x6
	slt x7, x2, x1
	or x4, x8, x5
	srl x7, x2, x1
	sra x3, x4, x2
	sltu x4, x3, x5
	slt x4, x2, x2
	sub x3, x1, x4
	and x9, x5, x6
	sra x7, x8, x9
	and x1, x9, x8
	add x9, x6, x8
	add x3, x3, x1
	slt x3, x7, x6
	sra x2, x4, x8
	srl x7, x4, x5
	sll x6, x3, x2
	xor x6, x8, x5
	sra x5, x2, x2
	and x1, x3, x7
	add x6, x8, x5
	and x8, x9, x5
	xor x8, x6, x8
	xor x9, x9, x6
	or x7, x3, x4
	sll x6, x1, x2
	slt x9, x1, x6
	or x8, x6, x3
	sltu x7, x3, x1
	srl x7, x8, x3
	sub x7, x4, x1
	and x5, x4, x7
	sll x1, x2, x5
	sll x9, x1, x3
	srl x9, x9, x3
	sub x4, x1, x4
	sub x9, x7, x7
	add x7, x1, x1
	add x5, x3, x5
	and x9, x2, x4
	slt x7, x1, x6
	add x5, x2, x8
	sltu x3, x1, x4
	sltu x5, x3, x7
	slt x6, x9, x7
	sub x6, x2, x1
	xor x5, x4, x2
	sltu x5, x5, x4
	slt x7, x7, x7
	srl x3, x9, x5
	and x1, x9, x1
	xor x2, x2, x3
	and x1, x3, x1
	sll x8, x7, x7
	and x4, x7, x4
	slt x2, x3, x4
	and x8, x7, x4
	sub x9, x9, x6
	sra x6, x1, x7
	or x4, x3, x3
	sll x6, x1, x3
	and x2, x5, x1
	slt x5, x7, x4
	sra x1, x7, x9
	slt x1, x1, x6
	or x8, x1, x1
	xor x7, x1, x3
	add x1, x5, x4
	sub x7, x2, x3
	or x3, x4, x8
	slt x3, x1, x2
	and x7, x7, x9
	sltu x6, x1, x1
	and x1, x9, x5
	sll x3, x9, x6
	or x8, x6, x4
	sub x9, x9, x5
	sub x4, x6, x2
	add x5, x7, x7
	add x9, x4, x8
	sra x1, x1, x3
	and x8, x4, x2
	and x8, x5, x8
	and x5, x7, x3
	srl x7, x5, x6
	sll x6, x5, x7
	sltu x5, x6, x5
	add x3, x9, x9
	slt x5, x6, x4
	xor x4, x3, x4
	or x7, x8, x5
	and x5, x2, x5
	slt x3, x9, x8
	srl x2, x9, x9
	or x9, x6, x1
	sltu x2, x9, x2
	sltu x7, x5, x6
	and x6, x9, x8
	sltu x8, x3, x1
	slt x3, x4, x1
	or x5, x2, x8
	sub x9, x7, x1
	srl x7, x4, x2
	and x1, x7, x2
	sub x2, x1, x2
	slt x3, x7, x4
	sll x4, x2, x5
	srl x5, x5, x2
	add x1, x2, x2
	add x9, x5, x9
	sltu x3, x9, x1
	sltu x1, x4, x4
	sltu x1, x3, x7
	add x8, x6, x4
	add x6, x6, x5
	sub x9, x2, x6
	and x9, x5, x7
	sra x8, x3, x4
	sltu x7, x1, x6
	srl x8, x8, x2
	slt x4, x9, x4
	slt x3, x5, x3
	sll x2, x1, x8
	or x4, x1, x4
	or x1, x9, x5
	and x2, x7, x9
	add x4, x4, x7
	or x8, x1, x4
	or x8, x5, x7
	sltu x4, x2, x3
	xor x9, x1, x9
	sll x1, x5, x8
	xor x3, x4, x6
	sub x6, x9, x6
	sub x9, x1, x5
	sltu x1, x7, x8
	xor x5, x9, x9
	sll x1, x9, x9
	xor x1, x8, x9
	or x7, x9, x8
	srl x8, x5, x2
	sub x8, x8, x9
	srl x6, x8, x7
	and x1, x5, x5
	add x4, x9, x9
	srl x3, x3, x4
	and x9, x6, x1
	and x6, x8, x1
	xor x1, x1, x2
	srl x2, x8, x5
	and x3, x9, x4
	slt x2, x4, x9
	srl x1, x1, x9
	xor x9, x9, x5
	sltu x2, x4, x2
	add x3, x7, x7
	xor x1, x5, x5
	xor x5, x1, x9
	sra x8, x7, x3
	add x9, x3, x2
	xor x5, x7, x2
	sltu x9, x7, x3
	sub x7, x6, x7
	sll x1, x3, x1
	sll x6, x4, x1
	add x3, x2, x8
	srl x8, x2, x1
	sub x4, x4, x9
	sll x5, x9, x8
	sll x3, x1, x5
	xor x5, x7, x3
	and x1, x6, x7
	sll x3, x6, x9
	xor x7, x5, x4
	sltu x2, x4, x4
	and x4, x6, x4
	and x3, x6, x1
	sub x7, x7, x9
	slt x8, x6, x4
	and x7, x1, x8
	and x8, x8, x4
	sub x3, x3, x4
	srl x4, x7, x9
	and x3, x8, x9
	sra x1, x3, x4
	sltu x3, x4, x5
	slt x7, x5, x6
	sll x4, x9, x9
	sra x5, x4, x9
	or x9, x6, x9
	and x3, x3, x7
	srl x3, x2, x8
	and x7, x8, x8
	xor x4, x5, x2
	sll x4, x5, x1
	srl x7, x1, x8
	slt x5, x4, x5
	srl x3, x6, x3
	sll x2, x8, x2
	add x8, x4, x6
	add x8, x1, x1
	or x6, x8, x5
	add x7, x5, x5
	add x2, x1, x9
	xor x4, x9, x6
	sra x1, x5, x7
	sll x2, x8, x8
	srl x7, x4, x3
	sll x5, x6, x3
	or x8, x9, x5
	xor x8, x5, x7
	or x2, x4, x5
	sll x4, x4, x3
	slt x2, x1, x7
	sra x2, x6, x6
	add x4, x1, x1
	sll x9, x9, x7
	sra x6, x8, x6
	sra x1, x5, x1
	srl x8, x6, x6
	or x9, x4, x3
	sub x3, x7, x8
	sub x1, x7, x7
	sltu x8, x9, x1
	add x3, x8, x7
	add x2, x9, x4
	srl x8, x9, x6
	sra x5, x4, x6
	slt x6, x9, x5
	and x2, x9, x9
	xor x1, x2, x5
	srl x5, x9, x5
	sub x2, x9, x4
	xor x3, x9, x5
	and x8, x7, x2
	sub x9, x3, x5
	sltu x7, x6, x6
	add x1, x2, x5
	sll x9, x7, x5
	sltu x5, x8, x5
	sub x8, x3, x4
	or x7, x6, x5
	and x9, x6, x6
	xor x9, x3, x1
	or x6, x1, x8
	sltu x7, x5, x1
	or x3, x8, x8
	sub x9, x2, x7
	and x4, x7, x9
	sra x3, x3, x8
	sltu x5, x2, x6
	add x8, x6, x3
	sra x5, x8, x1
	add x4, x4, x2
	sll x8, x1, x1
	add x9, x8, x3
	and x4, x5, x4
	srl x8, x9, x6
	sra x5, x6, x9
	or x6, x4, x9
	sltu x1, x1, x3
	and x1, x9, x5
	srl x2, x1, x8
	sub x3, x9, x4
	add x8, x6, x7
	add x1, x3, x2
	xor x1, x4, x4
	srl x3, x1, x5
	sltu x3, x3, x3
	add x1, x7, x2
	sub x5, x1, x4
	sll x1, x1, x3
	sll x4, x8, x9
	or x9, x3, x4
	sub x5, x7, x9
	sltu x3, x2, x4
	xor x5, x5, x2
	sll x6, x6, x3
	slt x8, x8, x3
	and x7, x9, x2
	or x4, x4, x6
	add x3, x6, x5
	sub x7, x8, x5
	slt x3, x7, x5
	xor x6, x9, x4
	sltu x6, x3, x3
	sltu x9, x3, x6
	sub x8, x3, x8
	sra x6, x9, x2
	sltu x9, x5, x8
	slt x9, x3, x8
	add x4, x1, x2
	sra x7, x3, x2
	srl x9, x8, x4
	xor x7, x2, x2
	sltu x7, x4, x7
	sub x5, x4, x6
	sll x8, x9, x9
	slt x4, x1, x8
	sltu x7, x5, x5
	sltu x6, x9, x8
	or x4, x8, x9
	sub x8, x5, x5
	sub x6, x8, x7
	or x7, x7, x8
	and x6, x6, x1
	slt x4, x4, x9
	add x9, x7, x6
	slt x1, x7, x7
	and x3, x5, x9
	slt x9, x3, x7
	add x9, x2, x4
	xor x7, x1, x9
	sll x4, x9, x9
	sub x6, x7, x3
	sll x8, x5, x9
	slt x6, x5, x2
	sra x4, x8, x8
	sra x2, x7, x4
	xor x2, x5, x2
	and x3, x3, x3
	srl x4, x8, x5
	sll x4, x5, x3
	slt x1, x1, x1
	or x1, x6, x3
	xor x8, x8, x8
	xor x5, x5, x6
	xor x5, x8, x6
	sub x9, x7, x3
	sltu x3, x6, x1
	slt x4, x3, x2
	add x6, x8, x4
	sll x3, x8, x3
	sub x1, x3, x7
	sra x7, x9, x8
	sra x8, x4, x1
	or x8, x9, x6
	xor x1, x2, x6
	or x9, x3, x7
	sub x7, x6, x4
	slt x2, x6, x8
	and x2, x7, x9
	sub x5, x7, x6
	srl x1, x8, x8
	sll x1, x7, x9
	slt x5, x2, x2
	and x8, x6, x3
	or x9, x3, x7
	sub x5, x9, x7
	sll x5, x3, x2
	srl x1, x2, x8
	sltu x7, x3, x7
	srl x8, x6, x2
	slt x8, x6, x2
	sll x4, x7, x9
	sub x6, x3, x9
	slt x2, x3, x1
	or x3, x2, x2
	srl x4, x1, x2
	xor x8, x8, x3
	or x5, x1, x3
	sra x8, x4, x9
	and x9, x8, x1
	sll x3, x6, x4
	add x2, x5, x9
	srl x8, x9, x3
	and x3, x5, x6
	sub x8, x3, x9
	srl x9, x4, x1
	slt x2, x9, x1
	and x4, x7, x9
	sltu x9, x9, x7
	srl x1, x4, x4
	sltu x2, x9, x3
	sltu x6, x9, x8
	xor x1, x2, x1
	sub x5, x7, x2
	and x3, x8, x1
	sra x6, x3, x4
	srl x4, x9, x2
	slt x7, x4, x6
	add x1, x1, x7
	add x4, x2, x2
	xor x4, x7, x4
	xor x2, x3, x8
	sub x7, x9, x9
	and x4, x1, x4
	and x3, x5, x9
	slt x4, x2, x6
	sub x9, x2, x1
	sltu x2, x4, x8
	sub x3, x5, x3
	sub x5, x2, x9
	xor x8, x5, x6
	sub x6, x4, x6
	sltu x1, x6, x9
	xor x6, x6, x5
	srl x7, x7, x2
	or x5, x6, x9
	srl x2, x8, x5
	slt x1, x9, x5
	sll x5, x6, x3
	slt x1, x2, x4
	or x1, x8, x9
	xor x7, x6, x1
	sltu x6, x1, x4
	sltu x5, x8, x8
	srl x4, x8, x6
	or x2, x7, x4
	slt x4, x4, x1
	srl x7, x3, x3
	sltu x8, x3, x2
	srl x9, x8, x1
	sub x2, x1, x3
	sltu x1, x2, x6
	slt x2, x8, x4
	and x3, x4, x4
	slt x2, x7, x6
	slt x8, x4, x3
	add x7, x9, x7
	srl x2, x7, x1
	and x8, x7, x5
	xor x2, x3, x5
	sll x2, x8, x3
	slt x9, x9, x3
	add x4, x1, x5
	sra x7, x2, x8
	sll x7, x1, x5
	srl x3, x7, x6
	slt x8, x7, x6
	sltu x3, x8, x4
	xor x2, x4, x3
	sltu x6, x1, x7
	sra x5, x3, x3
	sra x9, x3, x4
	slt x2, x5, x5
	srl x6, x3, x4
	add x2, x5, x1
	or x4, x2, x9
	sub x6, x6, x3
	or x8, x6, x4
	sra x1, x1, x2
	add x9, x2, x8
	sra x4, x9, x9
	or x3, x4, x1
	and x1, x2, x2
	sltu x5, x5, x5
	slt x3, x9, x5
	xor x6, x1, x3
	xor x7, x2, x3
	add x8, x6, x6
	add x3, x8, x2
	sll x7, x4, x8
	sra x5, x7, x6
	srl x3, x7, x7
	and x1, x3, x9
	srl x6, x1, x7
	add x3, x4, x7
	and x1, x5, x5
	or x6, x6, x7
	sub x6, x5, x5
	sub x6, x7, x7
	or x8, x6, x6
	srl x5, x5, x6
	sra x4, x1, x6
	slt x8, x8, x7
	and x6, x7, x5
	sra x1, x1, x7
	srl x6, x1, x4
	sltu x8, x7, x5
	add x8, x9, x6
	or x9, x3, x4
	add x9, x7, x6
	sll x4, x9, x2
	sra x6, x9, x4
	sub x3, x8, x9
	sltu x4, x5, x6
	srl x8, x2, x7
	slt x3, x8, x9
	slt x6, x3, x8
	or x1, x5, x5
	srl x5, x1, x4
	srl x7, x7, x6
	sra x2, x3, x8
	or x9, x9, x3
	or x5, x7, x6
	or x2, x2, x7
	xor x4, x5, x4
	or x5, x2, x8
	or x5, x4, x6
	add x7, x1, x2
	and x8, x1, x6
	xor x6, x8, x7
	sub x8, x9, x2
	sll x1, x7, x9
	xor x3, x6, x1
	or x1, x3, x4
	srl x4, x7, x5
	srl x7, x4, x7
	srl x4, x1, x7
	add x8, x9, x8
	srl x2, x3, x2
	sub x9, x1, x6
	sll x4, x6, x7
	srl x3, x5, x6
	srl x8, x1, x9
	sra x4, x7, x2
	xor x3, x9, x7
	sll x8, x6, x9
	sltu x6, x1, x7
	sltu x1, x3, x9
	slt x8, x7, x5
	or x8, x9, x8
	sll x3, x2, x2
	slt x8, x3, x3
	sll x5, x9, x2
	sltu x7, x7, x1
	sub x1, x8, x3
	sltu x5, x5, x8
	add x2, x1, x8
	sll x6, x2, x3
	sub x3, x7, x4
	or x2, x5, x8
	and x4, x8, x4
	srl x3, x5, x6
	or x4, x4, x9
	slt x7, x3, x3
	add x2, x7, x1
	sltu x7, x5, x4
	and x2, x6, x1
	slt x2, x4, x9
	xor x9, x5, x9
	and x8, x7, x9
	xor x2, x4, x2
	xor x1, x6, x1
	sltu x7, x9, x6
	add x5, x9, x3
	or x2, x6, x2
	or x1, x3, x3
	sll x5, x9, x9
	add x8, x5, x3
	or x3, x5, x3
	sltu x4, x2, x9
	sll x2, x6, x2
	sra x8, x8, x6
	xor x3, x8, x5
	srl x8, x9, x6
	sltu x9, x6, x8
	sra x3, x2, x6
	sub x6, x4, x7
	or x8, x2, x6
	and x4, x7, x6
	or x4, x9, x3
	and x5, x1, x4
	sltu x9, x1, x6
	xor x3, x1, x2
	srl x3, x7, x4
	slt x8, x8, x6
	sub x6, x8, x7
	xor x5, x3, x6
	sra x6, x9, x5
	and x7, x2, x9
	sll x6, x9, x8
	add x4, x4, x8
	sll x1, x6, x6
	sub x5, x3, x6
	slt x3, x9, x3
	srl x2, x3, x4
	sra x9, x5, x7
	or x4, x7, x9
	slt x7, x8, x4
	slt x1, x5, x5
	xor x2, x5, x9
	sra x9, x7, x6
	xor x5, x1, x5
	sub x6, x2, x6
	sra x2, x2, x7
	srl x4, x4, x4
	srl x9, x2, x2
	or x1, x9, x6
	sub x7, x1, x1
	and x3, x9, x1
	sll x8, x7, x9
	sub x5, x2, x3
	sra x9, x9, x8
	and x8, x4, x5
	add x4, x7, x3
	slt x5, x9, x5
	slt x8, x5, x4
	slt x9, x2, x4
	sra x5, x9, x9
	xor x5, x6, x5
	sub x5, x1, x2
	sub x6, x7, x4
	and x1, x5, x8
	sra x7, x5, x1
	slt x1, x5, x3
	sub x2, x6, x1
	or x9, x2, x8
	srl x5, x9, x4
	sub x4, x2, x3
	or x4, x2, x1
	slt x1, x7, x9
	xor x6, x2, x3
	sll x4, x6, x9
	add x1, x4, x1
	sub x5, x1, x4
	add x9, x1, x5
	or x3, x5, x6
	or x6, x9, x7
	srl x3, x4, x2
	add x6, x3, x2
	and x9, x2, x9
	or x2, x5, x9
	xor x6, x8, x1
	and x9, x8, x1
	sll x2, x1, x9
	srl x2, x5, x9
	sll x7, x5, x7
	sra x7, x8, x3
	sltu x9, x6, x1
	slt x2, x3, x3
	srl x4, x4, x1
	slt x4, x4, x7
	sra x7, x4, x2
	sub x8, x6, x8
	slt x6, x6, x7
	sltu x7, x3, x9
	sll x7, x3, x2
	add x5, x5, x8
	slt x9, x1, x8
	and x2, x4, x5
	slt x6, x2, x6
	and x7, x5, x7
	sra x8, x8, x3
	sltu x5, x4, x9
	sltu x6, x8, x8
	or x8, x9, x7
	xor x9, x5, x4
	srl x4, x6, x2
	sra x2, x3, x3
	and x6, x9, x4
	or x3, x9, x4
	or x9, x5, x3
	and x6, x2, x1
	sltu x3, x2, x6
	xor x9, x4, x9
	sltu x7, x9, x1
	sltu x3, x2, x7
	sub x5, x8, x6
	sra x3, x9, x6
	sltu x8, x3, x8
	sltu x4, x1, x7
	sltu x1, x3, x2
	sll x1, x6, x8
	sll x4, x7, x2
	srl x5, x9, x9
	xor x1, x2, x5
	or x1, x2, x3
	sub x8, x8, x3
	sltu x8, x2, x5
	sra x3, x1, x1
	or x5, x6, x9
	sra x9, x4, x8
	slt x3, x7, x3
	srl x1, x7, x3
	sll x1, x5, x1
	add x5, x2, x2
	add x4, x6, x9
	sub x9, x8, x6
	sltu x8, x7, x7
	add x6, x6, x2
	or x7, x7, x5
	sltu x6, x4, x2
	xor x4, x6, x3
	sra x3, x8, x8
	sltu x8, x2, x3
	sub x6, x5, x1
	sll x6, x8, x8
	sll x6, x3, x8
	srl x7, x7, x8
	xor x2, x2, x5
	sra x4, x1, x6
	sltu x5, x3, x1
	sub x3, x5, x3
	add x4, x4, x2
	sltu x5, x2, x6
	xor x1, x5, x7
	xor x6, x2, x3
	slt x2, x2, x7
	sll x4, x4, x9
	sll x1, x9, x2
	or x3, x2, x2
	sll x4, x6, x5
	sll x1, x3, x8
	sra x6, x8, x1
	sll x2, x1, x9
	add x7, x4, x2
	xor x4, x9, x3
	slt x9, x3, x6
	sra x6, x6, x5
	add x1, x3, x5
	add x5, x4, x9
	slt x9, x8, x6
	slt x6, x1, x6
	sub x9, x8, x6
	srl x5, x7, x5
	sltu x6, x6, x6
	xor x6, x7, x7
	xor x5, x6, x8
	xor x7, x6, x8
	xor x3, x9, x5
	slt x7, x1, x9
	or x1, x8, x3
	sra x1, x6, x3
	xor x9, x7, x1
	sltu x8, x9, x1
	srl x4, x1, x4
	and x2, x3, x7
	sll x5, x9, x5
	slt x5, x5, x2
	xor x4, x4, x9
	sra x2, x5, x8
	sub x1, x1, x7
	or x3, x9, x8
	and x6, x5, x4
	sltu x5, x9, x7
	xor x5, x6, x7
	srl x1, x1, x1
	sltu x3, x9, x3
	sub x8, x5, x2
	sll x6, x9, x6
	sub x5, x8, x8
	sub x6, x3, x4
	srl x6, x8, x2
	add x7, x7, x7
	srl x5, x1, x9
	slt x5, x3, x4
	sltu x8, x9, x5
	srl x6, x1, x2
	sub x7, x7, x9
	srl x9, x1, x9
	sra x5, x3, x5
	sra x1, x1, x9
	sub x3, x5, x9
	sra x2, x4, x6
	sub x2, x2, x4
	or x8, x9, x9
	or x8, x2, x6
	or x4, x2, x2
	xor x3, x1, x6
	xor x4, x3, x1
	sra x9, x8, x9
	sltu x1, x2, x8
	xor x5, x7, x1
	and x6, x7, x4
	add x7, x5, x2
	sll x9, x5, x9
	xor x4, x5, x4
	sub x7, x9, x4
	sub x4, x3, x4
	slt x1, x4, x1
	sltu x4, x2, x9
	or x1, x2, x5
	and x3, x9, x8
	xor x4, x3, x3
	or x5, x9, x8
	sub x7, x5, x6
	or x4, x7, x3
	sltu x1, x2, x4
	xor x6, x9, x5
	sll x2, x3, x8
	and x9, x2, x5
	srl x1, x1, x8
	slt x6, x4, x5
	add x4, x4, x9
	and x9, x5, x3
	sra x3, x4, x6
	sll x1, x1, x4
	xor x3, x5, x1
	and x7, x3, x7
	sub x9, x7, x5
	sll x8, x3, x6
	sra x5, x9, x7
	sltu x7, x7, x6
	xor x2, x8, x2
	slt x2, x4, x4
	srl x6, x7, x1
	sll x6, x9, x4
	sra x3, x6, x2
	srl x8, x5, x7
	sra x3, x3, x6
	and x3, x4, x5
	sub x5, x8, x8
	sra x3, x5, x1
	sra x8, x5, x7
	add x5, x3, x6
	slt x3, x4, x9
	slt x3, x1, x2
	sltu x3, x9, x2
	and x5, x7, x8
	xor x7, x2, x1
	sra x5, x9, x3
	srl x7, x2, x4
	xor x5, x3, x7
	sll x1, x2, x3
	sltu x5, x3, x1
	srl x9, x2, x2
	or x2, x5, x4
	sll x6, x5, x1
	sltu x1, x3, x2
	sub x9, x7, x3
	sltu x5, x5, x4
	sll x2, x5, x1
	sll x3, x9, x8
	sltu x7, x1, x5
	sll x5, x7, x5
	slt x7, x1, x2
	and x4, x7, x6
	sra x4, x3, x5
	srl x9, x9, x8
	sra x3, x9, x9
	slt x2, x9, x7
	or x6, x6, x6
	sra x4, x2, x5
	sub x4, x7, x3
	and x7, x3, x6
	or x1, x3, x9
	slt x7, x4, x5
	or x2, x4, x2
	add x5, x4, x7
	or x5, x2, x8
	and x4, x5, x2
	add x2, x8, x4
	xor x4, x4, x6
	slt x4, x9, x6
	srl x3, x1, x5
	xor x5, x1, x8
	and x4, x8, x7
	xor x4, x7, x1
	xor x7, x9, x6
	sra x8, x9, x3
	slt x1, x9, x1
	slt x9, x4, x7
	and x3, x4, x5
	sll x6, x1, x9
	srl x5, x6, x1
	slt x1, x3, x9
	xor x6, x3, x8
	or x1, x2, x3
	sll x8, x7, x8
	add x9, x3, x6
	sra x8, x6, x5
	add x7, x8, x8
	or x8, x8, x4
	srl x7, x5, x3
	and x5, x9, x8
	sll x8, x2, x4
	sub x4, x5, x6
	add x2, x7, x4
	or x2, x9, x2
	xor x5, x9, x1
	sra x8, x3, x7
	sltu x4, x8, x2
	sub x2, x8, x6
	add x2, x1, x4
	and x2, x4, x9
	slt x5, x6, x7
	or x8, x7, x2
	sltu x6, x6, x9
	sll x6, x6, x4
	sll x1, x6, x2
	add x3, x8, x3
	srl x9, x6, x1
	slt x6, x3, x5
	slt x4, x9, x4
	sub x6, x6, x6
	sub x5, x3, x6
	add x5, x3, x9
	sltu x1, x6, x7
	or x4, x1, x5
	sra x2, x9, x6
	slt x3, x5, x8
	add x9, x1, x4
	add x4, x1, x9
	or x8, x2, x4
	sub x7, x8, x9
	sll x5, x5, x6
	sub x1, x2, x2
	xor x1, x5, x4
	and x3, x2, x4
	sub x4, x8, x3
	sll x9, x9, x4
	or x7, x8, x2
	sub x6, x6, x8
	and x3, x1, x6
	and x6, x2, x7
	sub x4, x9, x9
	add x8, x8, x2
	sub x2, x6, x8
	sll x6, x1, x3
	srl x2, x7, x8
	add x1, x2, x6
	sra x4, x6, x1
	xor x9, x6, x5
	xor x9, x1, x8
	add x4, x7, x1
	srl x5, x8, x9
	or x4, x7, x2
	slt x4, x6, x7
	and x1, x7, x2
	slt x3, x3, x4
	or x5, x4, x4
	and x6, x1, x4
	xor x7, x7, x1
	and x3, x4, x2
	slt x8, x5, x5
	sub x3, x5, x9
	sra x7, x7, x1
	srl x2, x4, x8
	sll x7, x5, x5
	xor x8, x2, x9
	sra x5, x7, x3
	sltu x1, x8, x2
	add x3, x6, x4
	add x2, x1, x3
	sra x7, x7, x4
	add x8, x5, x4
	or x3, x5, x5
	sltu x7, x6, x6
	sub x1, x9, x8
	add x8, x8, x7
	sltu x2, x1, x2
	xor x6, x5, x1
	xor x7, x5, x9
	slt x1, x6, x8
	slt x4, x9, x7
	or x2, x8, x7
	sub x3, x1, x6
	slt x9, x1, x1
	sll x7, x7, x4
	xor x2, x2, x6
	sra x9, x8, x6
	sra x8, x6, x7
	sll x1, x3, x3
	srl x9, x1, x3
	and x3, x1, x8
	xor x9, x2, x5
	sub x5, x8, x5
	sra x3, x5, x3
	srl x5, x2, x4
	add x2, x7, x7
	sra x2, x6, x3
	srl x9, x6, x5
	sub x3, x8, x4
	xor x3, x2, x5
	or x2, x1, x3
	and x2, x6, x1
	slt x9, x3, x2
	or x8, x9, x1
	or x8, x5, x2
	and x5, x3, x2
	sll x2, x1, x2
	add x5, x3, x7
	and x5, x6, x1
	or x4, x5, x8
	srl x2, x7, x7
	and x9, x8, x2
	xor x9, x9, x1
	or x2, x9, x7
	add x1, x1, x1
	add x5, x4, x3
	add x7, x5, x3
	sltu x5, x5, x4
	or x6, x8, x4
	xor x2, x2, x6
	sra x7, x7, x9
	xor x8, x9, x4
	add x8, x8, x7
	sub x7, x9, x7
	xor x3, x7, x7
	slt x2, x8, x1
	slt x9, x2, x4
	xor x3, x7, x6
	sra x2, x7, x6
	add x8, x2, x8
	or x5, x7, x9
	sra x6, x1, x2
	sra x6, x3, x3
	sll x1, x9, x4
	xor x5, x9, x3
	sll x3, x2, x6
	slt x8, x2, x9
	or x5, x4, x8
	xor x3, x1, x4
	sll x2, x1, x7
	slt x1, x6, x7
	sltu x4, x2, x1
	sll x5, x9, x1
	add x9, x8, x7
	sra x3, x1, x8
	sltu x1, x5, x9
	add x2, x5, x5
	or x8, x2, x7
	and x1, x4, x4
	srl x8, x2, x1
	slt x1, x6, x6
	or x5, x6, x7
	srl x2, x1, x5
	sra x1, x8, x9
	sltu x1, x3, x9
	sub x2, x4, x1
	slt x1, x2, x7
	sltu x7, x6, x5
	sub x6, x5, x9
	xor x1, x2, x3
	sra x3, x2, x8
	srl x9, x7, x6
	slt x2, x7, x4
	slt x2, x1, x8
	or x4, x8, x2
	slt x6, x1, x2
	or x7, x5, x2
	sra x8, x2, x2
	add x7, x4, x6
	sra x6, x3, x3
	srl x9, x5, x7
	sll x4, x4, x8
	sll x8, x3, x1
	or x1, x6, x5
	sub x7, x7, x2
	sltu x1, x9, x6
	srl x5, x4, x6
	add x8, x5, x5
	sub x6, x2, x3
	add x4, x9, x5
	add x5, x5, x1
	slt x6, x2, x4
	sltu x2, x7, x9
	xor x4, x5, x7
	slt x9, x6, x9
	sltu x8, x1, x5
	xor x3, x2, x2
	sll x1, x9, x6
	srl x5, x6, x9
	srl x1, x7, x5
	sub x1, x8, x6
	sub x3, x3, x6
	sra x3, x5, x9
	sub x4, x5, x3
	sltu x4, x1, x6
	sra x6, x7, x2
	sltu x9, x3, x7
	sub x9, x9, x3
	xor x6, x2, x3
	xor x7, x3, x3
	and x3, x6, x1
	and x4, x7, x3
	slt x4, x5, x5
	sll x2, x5, x8
	or x1, x7, x4
	add x3, x7, x9
	and x1, x6, x5
	sra x3, x6, x3
	sra x9, x6, x2
	or x1, x3, x6
	sub x1, x4, x6
	sub x3, x6, x9
	sltu x1, x3, x5
	sub x1, x3, x9
	xor x4, x1, x1
	sub x3, x4, x9
	xor x2, x9, x1
	xor x1, x4, x5
	xor x8, x5, x9
	add x9, x4, x6
	srl x4, x7, x5
	sll x2, x4, x8
	sra x8, x2, x2
	xor x8, x5, x4
	sub x3, x2, x3
	slt x3, x1, x4
	sub x3, x5, x1
	add x3, x9, x3
	sra x9, x9, x9
	xor x9, x7, x9
	srl x7, x6, x5
	sltu x6, x9, x6
	or x3, x5, x5
	or x9, x3, x2
	sub x1, x7, x2
	sltu x2, x8, x9
	srl x6, x7, x4
	sra x5, x3, x5
	srl x7, x4, x1
	and x1, x6, x4
	slt x4, x4, x4
	sltu x3, x7, x9
	or x3, x8, x4
	sra x2, x2, x6
	xor x6, x4, x5
	or x9, x5, x6
	slt x4, x1, x8
	srl x5, x1, x1
	add x6, x8, x9
	sll x9, x5, x4
	xor x3, x8, x1
	add x5, x9, x9
	add x5, x8, x7
	add x9, x5, x1
	add x3, x5, x1
	xor x3, x6, x7
	sltu x3, x6, x7
	sltu x4, x7, x7
	and x6, x2, x5
	and x7, x9, x8
	and x1, x2, x3
	sltu x1, x3, x6
	and x1, x4, x4
	xor x2, x5, x7
	and x6, x8, x1
	sub x7, x6, x6
	add x3, x7, x6
	or x5, x6, x7
	xor x2, x2, x4
	sltu x2, x9, x3
	srl x3, x4, x2
	sltu x3, x1, x6
	srl x1, x8, x2
	srl x3, x5, x2
	add x3, x3, x9
	sra x2, x2, x1
	and x1, x9, x7
	srl x9, x1, x8
	slt x3, x3, x8
	and x1, x5, x8
	xor x5, x3, x3
	slt x4, x2, x5
	sltu x1, x8, x6
	and x7, x5, x2
	sll x9, x2, x1
	sll x8, x9, x3
	and x1, x9, x7
	sub x7, x7, x9
	sltu x5, x3, x9
	sub x8, x8, x9
	srl x5, x9, x1
	slt x1, x2, x7
	slt x8, x4, x7
	sub x7, x4, x4
	srl x4, x7, x2
	add x7, x2, x9
	sll x4, x1, x7
	xor x9, x2, x1
	slt x6, x3, x7
	sltu x8, x2, x2
	slt x7, x2, x4
	slt x3, x8, x3
	sub x8, x8, x4
	and x1, x6, x3
	and x7, x3, x2
	sltu x5, x6, x1
	sub x7, x7, x2
	and x4, x1, x8
	slt x8, x4, x5
	sub x8, x9, x8
	add x4, x2, x3
	sll x7, x6, x5
	sra x7, x8, x7
	or x3, x3, x6
	sub x8, x6, x3
	and x6, x5, x8
	and x8, x1, x5
	add x7, x2, x3
	sra x5, x7, x7
	sra x3, x9, x6
	slt x2, x8, x4
	slt x7, x4, x5
	and x6, x8, x4
	or x4, x5, x5
	sltu x8, x7, x5
	add x9, x3, x1
	sll x4, x7, x9
	and x3, x1, x6
	add x4, x7, x5
	srl x8, x4, x4
	srl x4, x1, x9
	srl x4, x3, x5
	sll x6, x8, x1
	or x4, x9, x1
	or x3, x7, x9
	sub x8, x1, x7
	sll x8, x9, x7
	sub x9, x2, x5
	sra x6, x4, x8
	slt x5, x6, x4
	sltu x9, x7, x8
	slt x1, x7, x1
	srl x6, x5, x2
	and x3, x6, x6
	add x7, x4, x8
	sra x3, x9, x7
	sub x9, x8, x2
	xor x3, x2, x5
	slt x4, x3, x9
	sll x4, x3, x1
	xor x6, x9, x1
	sub x9, x7, x8
	or x7, x6, x6
	slt x8, x5, x1
	xor x7, x7, x5
	or x8, x1, x3
	xor x1, x9, x8
	sltu x7, x4, x4
	sll x8, x6, x6
	sll x2, x3, x1
	sub x5, x9, x6
	and x3, x5, x3
	srl x7, x9, x8
	or x9, x5, x9
	sub x8, x3, x2
	slt x1, x5, x8
	xor x5, x4, x8
	or x8, x3, x1
	xor x5, x4, x3
	or x3, x3, x2
	and x2, x6, x2
	xor x4, x5, x5
	srl x5, x2, x4
	slt x7, x1, x9
	add x9, x6, x2
	slt x9, x8, x8
	slt x6, x2, x8
	sub x4, x4, x1
	sll x7, x5, x7
	sub x1, x3, x7
	xor x4, x6, x4
	srl x5, x8, x2
	sll x9, x8, x5
	xor x8, x8, x1
	xor x3, x9, x8
	sub x3, x8, x7
	xor x5, x1, x9
	and x4, x1, x2
	srl x8, x5, x7
	sltu x7, x8, x3
	sub x8, x6, x6
	sll x7, x5, x1
	sra x8, x9, x2
	srl x7, x2, x3
	slt x7, x1, x6
	sltu x5, x1, x1
	xor x8, x9, x9
	sll x3, x1, x2
	slt x5, x6, x4
	sra x4, x9, x8
	srl x8, x3, x9
	and x3, x5, x9
	sub x8, x4, x4
	sltu x1, x1, x8
	sll x5, x4, x6
	sltu x2, x9, x9
	sll x3, x2, x8
	add x4, x6, x5
	and x3, x4, x5
	sll x9, x7, x2
	add x9, x8, x3
	add x5, x6, x3
	sltu x7, x7, x2
	sltu x7, x8, x7
	add x5, x4, x7
	srl x4, x8, x2
	srl x9, x4, x1
	srl x6, x5, x3
	or x3, x1, x1
	sub x7, x8, x3
	sra x5, x6, x9
	sra x1, x7, x9
	sll x2, x5, x7
	xor x5, x2, x6
	or x5, x3, x4
	and x7, x6, x6
	slt x5, x6, x4
	sub x9, x1, x3
	srl x3, x6, x5
	xor x3, x6, x9
	sll x5, x9, x1
	sltu x3, x2, x6
	sltu x6, x7, x5
	sltu x4, x2, x5
	or x6, x1, x3
	or x8, x8, x1
	srl x2, x3, x8
	add x9, x5, x9
	slt x5, x8, x1
	srl x9, x4, x7
	sub x2, x1, x7
	xor x4, x3, x2
	sltu x2, x2, x6
	and x3, x1, x2
	slt x4, x1, x8
	slt x5, x9, x6
	sra x6, x6, x1
	sub x1, x9, x7
	srl x5, x2, x5
	xor x1, x3, x8
	add x9, x7, x6
	sll x9, x7, x2
	add x2, x8, x8
	sll x7, x1, x8
	and x8, x7, x6
	sltu x4, x2, x5
	and x4, x7, x2
	slt x6, x6, x3
	sll x2, x1, x9
	sra x1, x8, x7
	slt x3, x6, x6
	xor x8, x9, x9
	and x9, x4, x2
	and x8, x5, x8
	slt x8, x9, x1
	slt x7, x1, x6
	sltu x5, x8, x9
	sll x7, x5, x9
	sra x7, x7, x7
	sltu x4, x2, x5
	sll x5, x1, x4
	srl x5, x4, x4
	or x1, x9, x4
	sltu x1, x2, x8
	srl x7, x7, x7
	srl x7, x3, x1
	sll x9, x1, x8
	or x5, x2, x1
	or x4, x2, x2
	sltu x6, x4, x8
	sub x8, x7, x1
	and x2, x5, x3
	and x8, x6, x9
	sra x1, x3, x5
	sltu x7, x7, x9
	or x3, x6, x1
	sltu x6, x7, x6
	or x4, x8, x1
	sub x7, x9, x1
	xor x3, x1, x5
	slt x9, x9, x1
	slt x7, x1, x7
	xor x5, x7, x1
	sll x9, x9, x7
	slt x9, x1, x4
	slt x9, x4, x4
	sra x2, x4, x1
	add x3, x7, x6
	sll x3, x5, x8
	srl x1, x6, x9
	sub x5, x7, x2
	slt x8, x1, x3
	slt x8, x4, x9
	xor x8, x9, x2
	xor x6, x6, x8
	xor x4, x8, x9
	srl x9, x2, x9
	or x8, x9, x8
	sub x9, x7, x2
	sll x8, x4, x6
	srl x1, x4, x3
	sra x8, x4, x8
	or x4, x4, x1
	sra x5, x8, x3
	sltu x6, x5, x8
	or x7, x5, x7
	sll x3, x4, x9
	xor x8, x4, x8
	xor x4, x6, x8
	add x3, x9, x8
	and x5, x4, x3
	and x2, x4, x1
	sltu x1, x9, x5
	sll x7, x4, x4
	sll x6, x1, x8
	slt x6, x3, x6
	add x7, x8, x2
	srl x9, x9, x3
	and x8, x6, x6
	sll x3, x9, x1
	sll x3, x7, x1
	srl x4, x9, x6
	xor x3, x5, x4
	add x2, x5, x4
	sra x7, x3, x2
	or x5, x8, x1
	slt x9, x3, x1
	sra x5, x6, x5
	xor x2, x1, x8
	slt x2, x1, x8
	or x5, x7, x3
	sltu x8, x7, x7
	slt x6, x2, x4
	sltu x5, x4, x7
	sll x9, x5, x9
	sra x6, x1, x5
	sub x6, x2, x6
	sra x9, x2, x3
	or x3, x7, x6
	sra x8, x3, x4
	add x3, x9, x5
	slt x3, x8, x8
	add x5, x1, x5
	and x4, x4, x7
	add x9, x1, x5
	sub x9, x5, x8
	sra x3, x2, x4
	or x1, x7, x9
	or x3, x2, x8
	sra x8, x8, x9
	add x5, x4, x5
	xor x4, x7, x5
	slt x4, x3, x6
	and x6, x8, x7
	sra x2, x2, x6
	sra x6, x9, x3
	sub x7, x2, x4
	sll x1, x5, x4
	sub x1, x4, x3
	sra x3, x3, x9
	sltu x7, x9, x9
	sub x2, x9, x8
	and x7, x7, x7
	add x2, x4, x8
	and x2, x9, x2
	sltu x5, x5, x4
	sltu x8, x7, x9
	sra x8, x5, x9
	srl x5, x7, x5
	xor x5, x1, x3
	xor x5, x1, x6
	slt x4, x9, x9
	sll x8, x5, x2
	and x6, x7, x8
	sll x9, x6, x3
	sltu x7, x6, x2
	sra x7, x4, x7
	sltu x2, x7, x1
	xor x8, x1, x2
	slt x8, x6, x3
	xor x1, x2, x7
	slt x5, x6, x5
	sub x1, x4, x8
	add x1, x5, x6
	sltu x3, x4, x2
	and x6, x2, x7
	or x1, x2, x1
	and x4, x4, x6
	srl x3, x1, x6
	sll x4, x6, x3
	or x9, x6, x7
	or x9, x3, x6
	sll x6, x9, x9
	sra x3, x6, x2
	sll x8, x5, x1
	sltu x5, x4, x5
	sltu x9, x8, x4
	and x5, x5, x6
	sll x1, x4, x6
	and x9, x7, x1
	and x8, x5, x8
	sll x6, x3, x6
	and x9, x8, x9
	add x2, x6, x7
	sltu x2, x4, x1
	add x3, x1, x6
	xor x3, x4, x8
	sltu x7, x6, x8
	and x4, x9, x1
	sltu x3, x8, x9
	slt x8, x1, x4
	sub x4, x8, x5
	slt x6, x7, x8
	xor x7, x6, x5
	xor x2, x3, x4
	sltu x3, x6, x8
	sub x7, x5, x6
	slt x8, x3, x8
	add x3, x8, x3
	slt x3, x3, x8
	sll x6, x3, x3
	sltu x8, x4, x1
	and x5, x1, x6
	add x1, x3, x1
	xor x2, x5, x5
	and x2, x4, x8
	sltu x6, x8, x5
	and x5, x1, x7
	sra x3, x2, x7
	or x5, x6, x4
	sltu x4, x3, x7
	slt x4, x8, x3
	srl x8, x5, x5
	xor x6, x3, x5
	and x6, x3, x9
	xor x5, x5, x4
	xor x7, x8, x4
	add x9, x7, x9
	sra x5, x3, x8
	slt x7, x8, x3
	sll x5, x9, x6
	and x1, x3, x8
	or x2, x8, x8
	sltu x8, x1, x6
	sll x3, x5, x4
	sll x7, x8, x5
	sltu x2, x4, x9
	xor x3, x9, x1
	sub x6, x2, x8
	srl x8, x8, x7
	sltu x4, x3, x9
	sltu x1, x3, x3
	sll x5, x3, x2
	or x2, x1, x1
	xor x3, x5, x5
	add x2, x7, x6
	sll x5, x2, x1
	xor x4, x7, x2
	add x4, x5, x3
	sra x5, x6, x2
	sltu x4, x4, x7
	sll x4, x6, x6
	or x1, x5, x8
	add x3, x4, x7
	sll x6, x3, x1
	sltu x8, x1, x6
	sll x5, x8, x2
	add x6, x7, x5
	slt x3, x7, x5
	srl x3, x1, x2
	sub x2, x7, x4
	xor x9, x4, x3
	and x9, x1, x4
	and x2, x3, x5
	or x7, x9, x3
	add x4, x9, x2
	or x1, x1, x8
	and x1, x2, x9
	xor x6, x6, x9
	sll x9, x6, x9
	sub x7, x3, x3
	srl x8, x4, x5
	srl x4, x5, x7
	slt x9, x4, x7
	sltu x9, x4, x1
	sra x6, x9, x8
	and x7, x1, x8
	xor x9, x5, x4
	sltu x6, x1, x7
	and x6, x1, x8
	xor x8, x2, x3
	sra x8, x4, x5
	or x1, x7, x4
	sra x9, x4, x9
	or x1, x2, x2
	slt x8, x4, x5
	xor x6, x6, x5
	slt x9, x7, x6
	or x9, x7, x9
	add x8, x5, x3
	add x6, x2, x7
	sra x9, x6, x9
	and x3, x1, x1
	xor x7, x2, x4
	add x4, x3, x1
	or x9, x9, x3
	srl x9, x8, x8
	sra x2, x5, x6
	sra x9, x6, x6
	or x3, x3, x9
	sltu x3, x5, x6
	sra x6, x9, x1
	sub x1, x8, x6
	sra x4, x9, x2
	or x7, x5, x8
	sltu x1, x8, x1
	srl x1, x5, x1
	or x3, x7, x2
	sltu x8, x4, x2
	sub x8, x8, x2
	or x2, x1, x8
	sll x3, x1, x5
	and x9, x4, x5
	slt x6, x1, x4
	xor x7, x3, x3
	srl x3, x3, x9
	sub x9, x4, x8
	sub x6, x4, x6
	and x2, x4, x2
	srl x9, x2, x1
	slt x1, x4, x9
	xor x6, x8, x1
	sll x8, x5, x2
	sltu x9, x5, x3
	and x5, x3, x7
	sll x7, x7, x2
	srl x6, x9, x2
	xor x8, x8, x9
	sll x3, x5, x9
	slt x2, x2, x1
	sltu x2, x4, x6
	sll x1, x8, x6
	and x8, x5, x3
	srl x5, x1, x9
	sll x1, x4, x9
	add x7, x9, x4
	and x1, x4, x3
	and x5, x4, x5
	srl x9, x8, x4
	or x1, x7, x7
	sll x2, x7, x1
	srl x5, x1, x8
	srl x6, x8, x4
	sra x6, x4, x7
	sltu x7, x5, x1
	srl x3, x8, x8
	and x2, x5, x3
	add x4, x2, x8
	or x4, x8, x3
	slt x5, x4, x2
	slt x1, x8, x3
	sub x7, x1, x4
	srl x5, x5, x5
	xor x5, x1, x1
	add x4, x9, x7
	and x5, x1, x5
	xor x8, x8, x9
	add x3, x5, x3
	slt x3, x7, x7
	sra x5, x1, x5
	sra x6, x1, x8
	and x5, x1, x8
	or x1, x2, x8
	or x9, x8, x5
	add x6, x5, x9
	add x8, x4, x3
	sltu x1, x6, x6
	sltu x5, x1, x7
	sub x9, x9, x8
	sll x1, x5, x7
	sub x6, x5, x8
	and x2, x4, x7
	sub x1, x5, x6
	or x4, x8, x8
	xor x2, x4, x5
	slt x7, x7, x7
	sub x4, x4, x1
	sub x4, x4, x7
	and x2, x1, x5
	or x9, x2, x1
	srl x5, x9, x2
	sub x8, x8, x6
	add x7, x4, x6
	srl x7, x7, x1
	slt x6, x5, x2
	add x4, x8, x5
	sltu x6, x1, x8
	xor x5, x8, x8
	sltu x2, x8, x6
	sll x9, x6, x6
	add x8, x8, x4
	sltu x7, x6, x9
	add x9, x4, x6
	add x4, x5, x1
	slt x3, x3, x3
	slt x2, x4, x1
	or x7, x5, x9
	sub x9, x2, x7
	slt x1, x1, x6
	srl x7, x2, x2
	sll x2, x3, x1
	slt x6, x6, x5
	and x2, x2, x2
	slt x5, x4, x6
	sll x3, x3, x3
	sra x7, x3, x1
	srl x8, x5, x5
	sltu x2, x2, x6
	sll x5, x9, x3
	srl x4, x2, x8
	sltu x4, x1, x6
	or x9, x3, x8
	slt x4, x6, x2
	sltu x9, x4, x7
	sub x4, x3, x9
	slt x9, x2, x1
	and x7, x1, x8
	sub x7, x8, x2
	or x5, x3, x1
	sltu x8, x2, x7
	sub x3, x1, x2
	add x9, x9, x3
	sub x8, x2, x6
	srl x2, x5, x1
	sltu x5, x3, x2
	sub x8, x3, x8
	and x7, x5, x1
	and x4, x9, x8
	add x1, x3, x9
	sub x5, x2, x1
	sub x5, x4, x4
	sltu x4, x3, x9
	sll x6, x8, x9
	sltu x7, x5, x9
	sll x1, x2, x7
	xor x5, x5, x2
	xor x7, x6, x6
	and x7, x4, x4
	srl x9, x3, x2
	or x7, x5, x6
	sll x8, x6, x4
	and x9, x5, x7
	sub x3, x4, x1
	sltu x4, x3, x7
	xor x9, x4, x9
	srl x4, x7, x1
	xor x9, x8, x3
	sltu x3, x1, x6
	sll x6, x9, x5
	add x7, x3, x3
	srl x1, x3, x9
	xor x4, x3, x7
	sll x8, x5, x2
	sll x8, x4, x2
	xor x7, x3, x2
	sll x8, x5, x2
	srl x4, x4, x7
	srl x6, x9, x4
	srl x8, x4, x7
	add x3, x2, x8
	sra x4, x3, x1
	sub x8, x9, x6
	xor x3, x4, x9
	sll x7, x4, x3
	xor x8, x9, x2
	sub x9, x7, x7
	sra x9, x2, x6
	sra x4, x1, x9
	sub x7, x6, x4
	sra x7, x7, x2
	slt x7, x1, x2
	slt x5, x8, x3
	and x9, x8, x1
	sub x4, x7, x5
	sra x7, x2, x8
	sra x8, x9, x2
	sub x5, x9, x5
	add x7, x9, x3
	slt x1, x3, x4
	sub x8, x1, x3
	add x6, x4, x3
	sltu x2, x3, x7
	sltu x6, x5, x9
	srl x9, x6, x1
	sra x3, x9, x3
	add x2, x5, x6
	slt x1, x8, x5
	add x6, x3, x4
	add x7, x9, x7
	sub x5, x9, x8
	slt x4, x9, x9
	or x8, x9, x2
	sltu x3, x8, x5
	sra x1, x7, x5
	xor x2, x7, x8
	or x4, x5, x9
	xor x7, x9, x7
	srl x7, x1, x9
	and x3, x1, x6
	srl x2, x7, x5
	and x1, x6, x7
	and x9, x5, x5
	add x5, x9, x8
	srl x2, x8, x9
	or x6, x3, x9
	or x1, x9, x7
	or x4, x9, x4
	add x3, x8, x9
	sra x3, x8, x1
	sll x2, x8, x1
	sltu x9, x1, x3
	srl x9, x6, x7
	sll x2, x5, x9
	sll x1, x7, x1
	xor x6, x3, x6
	or x7, x6, x4
	sltu x8, x4, x3
	add x5, x6, x9
	slt x4, x3, x1
	sll x2, x8, x6
	sll x5, x4, x5
	slt x4, x4, x4
	srl x3, x8, x7
	sll x2, x3, x8
	and x3, x1, x4
	sra x6, x5, x9
	sub x8, x9, x5
	or x1, x2, x9
	slt x7, x5, x7
	srl x6, x1, x5
	slt x4, x3, x5
	sub x2, x9, x7
	sra x6, x5, x8
	sll x9, x8, x4
	or x7, x2, x2
	and x3, x7, x4
	sub x2, x4, x9
	sub x8, x2, x2
	sub x4, x5, x3
	xor x7, x9, x2
	add x2, x3, x8
	sub x5, x7, x3
	srl x7, x5, x1
	or x2, x5, x2
	sub x4, x5, x4
	sltu x9, x9, x5
	slt x9, x3, x5
	or x7, x5, x9
	slt x7, x3, x8
	sub x5, x5, x8
	slt x7, x4, x3
	sra x5, x9, x3
	sll x9, x1, x6
	or x8, x2, x8
	and x8, x4, x3
	xor x6, x4, x1
	sra x3, x8, x5
	srl x6, x5, x3
	sltu x6, x1, x1
	or x9, x6, x3
	sll x8, x5, x9
	sltu x8, x3, x6
	add x3, x8, x3
	xor x8, x7, x2
	slt x3, x5, x9
	sll x2, x9, x6
	and x6, x4, x7
	sub x6, x7, x6
	slt x2, x9, x1
	srl x9, x2, x8
	sub x7, x8, x5
	sub x5, x5, x6
	sra x4, x2, x7
	xor x6, x6, x7
	slt x9, x3, x4
	sltu x2, x3, x4
	sub x3, x9, x1
	and x8, x5, x8
	or x7, x3, x5
	slt x4, x7, x5
	slt x1, x2, x6
	or x6, x2, x4
	srl x6, x6, x5
	sub x6, x4, x4
	srl x1, x2, x6
	xor x8, x9, x5
	slt x4, x9, x2
	xor x2, x1, x4
	add x4, x3, x4
	sltu x3, x9, x7
	and x4, x6, x4
	sra x1, x3, x9
	and x8, x4, x1
	sra x1, x4, x4
	add x2, x3, x5
	sub x1, x9, x4
	add x9, x8, x8
	sra x6, x5, x6
	and x7, x7, x4
	and x5, x3, x8
	sltu x3, x8, x4
	sll x2, x3, x8
	sub x9, x4, x4
	and x9, x8, x9
	slt x3, x1, x3
	sltu x7, x2, x1
	and x8, x2, x6
	sll x6, x9, x1
	sra x2, x7, x5
	add x4, x5, x3
	and x5, x4, x9
	srl x5, x1, x3
	or x3, x4, x2
	sltu x6, x8, x5
	srl x9, x9, x2
	sub x5, x9, x7
	sltu x2, x2, x4
	sra x5, x3, x3
	sub x7, x1, x1
	sub x6, x2, x9
	xor x3, x9, x1
	add x7, x9, x2
	xor x3, x3, x2
	or x6, x2, x2
	slt x8, x1, x4
	sub x1, x7, x9
	or x5, x4, x9
	xor x5, x9, x6
	srl x3, x8, x4
	sub x6, x5, x2
	or x9, x7, x6
	and x8, x8, x7
	slt x6, x3, x1
	xor x5, x5, x6
	sltu x9, x2, x7
	sltu x8, x6, x1
	srl x1, x1, x9
	srl x1, x6, x4
	or x3, x4, x1
	sll x2, x1, x5
	sra x2, x3, x7
	srl x3, x9, x4
	or x5, x7, x1
	sltu x2, x6, x1
	or x2, x7, x3
	sltu x9, x6, x6
	sra x4, x6, x1
	sub x9, x5, x6
	sub x6, x7, x2
	sra x9, x4, x3
	sltu x4, x3, x9
	xor x7, x5, x6
	xor x4, x1, x9
	sll x1, x9, x1
	sra x5, x1, x7
	srl x2, x6, x2
	sra x6, x9, x4
	and x4, x4, x3
	srl x6, x2, x4
	sltu x1, x8, x4
	sub x9, x6, x4
	add x4, x7, x2
	or x3, x9, x8
	and x1, x1, x7
	xor x1, x7, x1
	sub x8, x7, x9
	sll x8, x2, x8
	sra x1, x7, x7
	slt x2, x9, x6
	srl x2, x3, x1
	xor x1, x7, x4
	sra x1, x3, x3
	slt x4, x7, x8
	sltu x5, x3, x7
	sltu x6, x5, x5
	sub x6, x2, x7
	sll x9, x6, x2
	and x1, x7, x3
	sltu x3, x4, x4
	sra x3, x2, x1
	sub x4, x6, x3
	slt x3, x4, x5
	sltu x7, x5, x1
	slt x6, x1, x6
	sltu x6, x3, x7
	and x2, x2, x7
	add x8, x4, x7
	srl x8, x1, x6
	srl x9, x7, x1
	sltu x1, x2, x1
	or x8, x5, x7
	or x5, x3, x1
	srl x3, x1, x2
	xor x9, x4, x4
	sll x3, x2, x4
	sltu x9, x8, x1
	sra x9, x6, x5
	xor x2, x5, x6
	sub x8, x2, x5
	sub x4, x9, x7
	and x9, x6, x3
	and x1, x6, x5
	add x1, x3, x2
	sub x3, x1, x1
	srl x5, x7, x7
	srl x1, x9, x8
	sra x6, x6, x7
	sll x8, x9, x9
	sra x4, x5, x5
	slt x6, x7, x3
	sra x2, x1, x9
	sltu x9, x1, x2
	sra x6, x8, x5
	sub x5, x2, x6
	slt x1, x2, x7
	sub x7, x5, x5
	slt x5, x7, x7
	xor x1, x4, x6
	sub x7, x7, x7
	sll x5, x5, x6
	xor x8, x9, x8
	or x1, x5, x2
	and x7, x8, x4
	sra x2, x7, x7
	sll x9, x8, x9
	xor x4, x2, x3
	and x4, x5, x1
	and x5, x6, x4
	and x7, x9, x5
	sll x3, x3, x8
	sub x5, x3, x8
	sll x7, x3, x7
	xor x7, x9, x3
	add x8, x7, x6
	and x3, x9, x1
	sub x1, x9, x9
	add x1, x7, x7
	sltu x4, x5, x3
	or x9, x4, x2
	and x8, x3, x3
	sll x7, x6, x4
	or x8, x2, x1
	and x5, x3, x5
	sltu x2, x9, x9
	sra x8, x7, x2
	sub x1, x6, x8
	sll x1, x9, x6
	slt x3, x1, x8
	srl x7, x5, x3
	add x3, x2, x1
	slt x1, x8, x8
	slt x1, x8, x2
	slt x8, x6, x1
	sltu x3, x8, x1
	sll x8, x3, x2
	sltu x5, x7, x7
	slt x1, x5, x7
	slt x4, x3, x6
	srl x7, x1, x5
	sltu x9, x2, x9
	sltu x9, x8, x4
	and x8, x6, x9
	sltu x4, x1, x7
	add x3, x5, x2
	sll x3, x9, x5
	sub x5, x9, x9
	sltu x8, x4, x8
	srl x5, x2, x6
	slt x8, x5, x4
	and x5, x4, x7
	or x7, x4, x4
	srl x1, x9, x8
	or x9, x1, x8
	slt x4, x9, x6
	sra x3, x6, x9
	and x9, x8, x3
	sub x9, x2, x2
	or x5, x8, x5
	and x8, x9, x5
	xor x8, x5, x6
	slt x4, x3, x1
	sltu x7, x5, x6
	sltu x2, x6, x7
	slt x1, x3, x1
	add x2, x7, x5
	sll x7, x1, x2
	slt x9, x8, x9
	sub x1, x7, x5
	srl x2, x3, x2
	add x3, x4, x8
	add x9, x1, x1
	sub x4, x5, x2
	sltu x4, x1, x5
	sra x6, x6, x3
	sra x3, x7, x1
	sub x9, x3, x6
	xor x3, x8, x4
	or x2, x5, x2
	add x9, x9, x7
	sltu x6, x1, x4
	and x2, x4, x1
	slt x9, x2, x4
	sub x5, x1, x6
	srl x3, x8, x1
	add x9, x4, x7
	slt x7, x4, x1
	srl x1, x4, x2
	sltu x1, x9, x8
	add x2, x7, x6
	sub x6, x8, x3
	srl x2, x6, x6
	slt x8, x6, x6
	sub x8, x3, x7
	and x8, x1, x8
	sub x2, x3, x7
	slt x1, x3, x7
	sll x5, x7, x5
	slt x7, x7, x2
	sra x9, x2, x4
	sub x8, x4, x7
	and x8, x9, x5
	sltu x1, x9, x7
	xor x1, x6, x2
	add x5, x2, x8
	xor x3, x2, x4
	srl x6, x2, x1
	or x8, x8, x1
	sll x4, x3, x3
	or x8, x1, x7
	xor x3, x6, x9
	xor x2, x1, x1
	xor x1, x3, x4
	sltu x6, x4, x6
	sltu x1, x5, x4
	add x1, x1, x5
	slt x7, x7, x4
	sra x7, x7, x4
	xor x7, x5, x5
	and x1, x9, x7
	or x9, x8, x8
	xor x9, x2, x8
	or x5, x3, x6
	sub x7, x1, x5
	sub x2, x9, x2
	sltu x2, x3, x8
	slt x9, x6, x8
	slt x4, x2, x9
	add x3, x6, x7
	sll x8, x8, x1
	and x4, x6, x3
	slt x4, x4, x8
	sub x4, x8, x4
	xor x8, x1, x7
	or x6, x4, x9
	sll x3, x4, x4
	sra x3, x5, x5
	sra x4, x5, x6
	or x7, x5, x4
	or x6, x8, x9
	add x5, x1, x6
	sra x2, x7, x3
	and x5, x2, x7
	sub x1, x7, x1
	slt x5, x1, x6
	xor x2, x7, x6
	or x3, x6, x4
	srl x1, x4, x1
	and x7, x2, x3
	sra x9, x2, x4
	or x9, x6, x3
	sll x2, x6, x4
	and x7, x3, x4
	slt x8, x7, x5
	xor x3, x3, x6
	srl x6, x6, x5
	xor x2, x7, x5
	xor x7, x1, x5
	sltu x7, x5, x1
	or x1, x8, x7
	add x3, x2, x6
	sub x2, x7, x6
	xor x3, x3, x6
	and x1, x1, x6
	and x8, x8, x6
	sub x7, x4, x9
	srl x5, x8, x5
	sltu x4, x6, x4
	and x4, x5, x2
	add x5, x4, x4
	sub x5, x1, x3
	or x7, x9, x9
	srl x6, x8, x4
	or x6, x6, x7
	and x4, x8, x6
	add x4, x2, x6
	sra x1, x8, x1
	or x4, x5, x5
	sll x6, x4, x8
	add x8, x7, x2
	sll x1, x3, x7
	srl x5, x1, x8
	and x2, x4, x4
	sll x6, x7, x4
	add x9, x1, x3
	srl x7, x2, x5
	sll x8, x6, x4
	srl x1, x7, x5
	sltu x6, x3, x1
	srl x7, x8, x6
	sll x8, x2, x9
	sub x8, x9, x1
	add x2, x7, x5
	sub x2, x4, x5
	sub x5, x5, x9
	sub x9, x8, x7
	add x3, x5, x9
	sub x6, x7, x9
	sra x4, x8, x3
	or x1, x1, x8
	slt x1, x6, x4
	slt x1, x1, x7
	and x1, x6, x1
	srl x3, x1, x5
	and x6, x5, x9
	add x3, x7, x8
	sub x4, x5, x6
	sltu x7, x7, x2
	xor x3, x9, x1
	xor x2, x1, x8
	sub x6, x6, x1
	and x8, x7, x2
	and x6, x8, x2
	srl x4, x6, x5
	add x4, x8, x9
	sub x9, x3, x5
	xor x3, x9, x2
	sub x7, x1, x8
	slt x1, x6, x2
	sltu x8, x9, x7
	srl x2, x5, x5
	and x2, x3, x6
	sll x3, x9, x2
	and x9, x5, x7
	sltu x2, x7, x2
	sra x2, x8, x3
	sra x9, x3, x8
	add x3, x1, x4
	slt x5, x6, x1
	and x8, x9, x2
	sub x6, x2, x8
	slt x5, x4, x5
	sub x8, x7, x5
	and x6, x3, x2
	add x3, x9, x7
	sltu x1, x9, x2
	srl x6, x2, x8
	srl x9, x7, x2
	and x4, x4, x1
	and x5, x7, x3
	sub x8, x7, x3
	add x2, x9, x1
	add x1, x4, x2
	or x3, x7, x6
	sll x7, x4, x2
	sll x7, x1, x3
	add x1, x6, x2
	or x2, x5, x6
	sltu x7, x5, x1
	xor x5, x3, x8
	sra x3, x1, x2
	srl x8, x1, x9
	and x2, x8, x9
	and x7, x5, x3
	or x2, x2, x5
	sll x1, x8, x6
	add x8, x6, x2
	or x2, x5, x9
	or x5, x4, x3
	srl x7, x4, x2
	sltu x3, x3, x5
	add x1, x7, x3
	slt x2, x4, x5
	sub x4, x7, x1
	sra x5, x5, x6
	sll x3, x8, x3
	add x9, x7, x2
	sll x6, x1, x9
	or x8, x4, x9
	or x3, x8, x9
	srl x2, x7, x8
	and x4, x3, x2
	and x7, x9, x1
	srl x2, x5, x1
	add x7, x5, x6
	xor x6, x6, x3
	xor x6, x5, x7
	add x9, x5, x6
	srl x6, x8, x9
	or x2, x3, x7
	srl x5, x9, x9
	xor x8, x2, x7
	or x9, x9, x1
	sra x3, x7, x1
	slt x8, x1, x9
	add x5, x1, x5
	sub x9, x4, x2
	sll x4, x7, x5
	sll x3, x4, x4
	sra x1, x9, x3
	sra x6, x1, x5
	slt x4, x6, x3
	sll x7, x6, x2
	sll x2, x4, x5
	sltu x3, x4, x6
	sll x9, x4, x8
	sra x1, x8, x4
	srl x6, x7, x8
	sll x7, x9, x5
	sub x5, x6, x8
	add x8, x9, x1
	sll x9, x3, x7
	sra x5, x2, x2
	add x9, x8, x5
	sltu x5, x1, x9
	and x5, x1, x2
	slt x5, x8, x5
	slt x2, x7, x3
	srl x5, x6, x4
	sltu x4, x6, x4
	sltu x1, x4, x9
	xor x5, x5, x7
	slt x6, x7, x8
	sra x9, x8, x9
	slt x7, x9, x5
	sra x3, x7, x1
	sll x6, x3, x9
	sub x9, x9, x1
	sltu x7, x5, x1
	sll x3, x1, x9
	add x2, x4, x8
	sra x8, x7, x9
	or x8, x6, x5
	sltu x6, x2, x7
	or x6, x9, x6
	and x8, x6, x7
	xor x7, x9, x9
	sll x2, x1, x8
	sub x9, x5, x4
	slt x2, x8, x6
	add x3, x2, x8
	sll x5, x1, x8
	sll x2, x1, x7
	or x5, x2, x9
	srl x2, x3, x9
	sub x8, x4, x3
	srl x6, x5, x8
	sll x6, x8, x9
	add x4, x7, x7
	sra x9, x7, x3
	xor x7, x6, x5
	and x9, x8, x4
	srl x6, x5, x8
	sll x1, x3, x3
	slt x7, x4, x7
	and x1, x5, x5
	slt x4, x8, x8
	or x4, x6, x3
	xor x1, x2, x1
	sub x1, x6, x6
	xor x5, x6, x3
	or x2, x1, x9
	sra x8, x6, x6
	sltu x1, x2, x2
	slt x1, x6, x3
	sltu x3, x5, x4
	srl x6, x9, x1
	sltu x6, x4, x1
	add x2, x9, x9
	or x6, x8, x7
	sltu x3, x3, x7
	srl x3, x9, x2
	sltu x6, x2, x4
	or x1, x5, x7
	sll x8, x1, x8
	sra x5, x8, x9
	and x5, x4, x4
	slt x2, x6, x3
	srl x3, x2, x4
	slt x9, x3, x4
	sub x5, x4, x5
	or x5, x2, x9
	srl x9, x5, x4
	xor x7, x7, x4
	xor x3, x9, x2
	slt x5, x6, x3
	sub x2, x2, x6
	sub x8, x2, x2
	xor x8, x7, x3
	xor x6, x2, x3
	sltu x6, x6, x9
	add x3, x3, x5
	sll x9, x3, x6
	sra x1, x7, x2
	or x7, x5, x7
	or x3, x1, x2
	sra x1, x3, x2
	sll x4, x1, x6
	srl x3, x9, x8
	sltu x2, x3, x1
	srl x9, x7, x1
	sra x1, x9, x6
	sll x9, x9, x1
	sub x8, x4, x1
	sltu x8, x9, x2
	sra x5, x7, x1
	sll x8, x3, x4
	slt x1, x9, x1
	sub x5, x7, x1
	add x6, x4, x9
	sltu x6, x5, x4
	slt x4, x4, x2
	sll x2, x7, x2
	sltu x1, x8, x3
	srl x9, x5, x1
	sra x6, x2, x1
	slt x2, x9, x6
	slt x2, x2, x5
	sra x5, x1, x7
	slt x7, x3, x7
	srl x6, x8, x4
	or x9, x2, x2
	srl x8, x5, x5
	srl x8, x8, x7
	and x3, x7, x6
	sll x4, x3, x5
	and x2, x6, x1
	sub x5, x4, x1
	slt x9, x8, x2
	add x1, x6, x3
	sll x6, x1, x2
	or x1, x9, x1
	sra x5, x6, x1
	sra x6, x2, x1
	or x1, x9, x4
	sltu x2, x3, x9
	and x5, x7, x8
	slt x9, x8, x2
	srl x5, x8, x3
	srl x8, x7, x1
	and x5, x4, x8
	add x6, x7, x6
	sub x5, x5, x4
	sltu x6, x9, x5
	sub x6, x2, x6
	sra x9, x6, x2
	sub x1, x3, x6
	slt x4, x7, x4
	sra x8, x3, x4
	slt x1, x9, x3
	sra x5, x9, x3
	sll x9, x2, x6
	and x3, x3, x5
	srl x6, x9, x3
	sll x2, x4, x4
	and x7, x7, x5
	or x6, x9, x8
	srl x7, x4, x1
	add x2, x5, x1
	or x7, x4, x4
	sltu x7, x6, x6
	add x6, x9, x2
	slt x9, x3, x6
	sll x3, x6, x2
	sra x5, x4, x4
	srl x2, x3, x6
	xor x1, x1, x6
	srl x5, x7, x6
	or x9, x2, x2
	srl x2, x5, x1
	and x1, x3, x7
	xor x1, x3, x6
	sra x2, x4, x6
	sra x4, x8, x2
	add x8, x8, x8
	add x5, x1, x1
	slt x4, x9, x6
	add x6, x7, x4
	sub x4, x8, x4
	srl x2, x8, x4
	sub x4, x6, x2
	and x2, x9, x4
	and x7, x8, x8
	slt x8, x1, x6
	slt x9, x1, x1
	xor x8, x8, x9
	sub x7, x3, x6
	and x8, x1, x4
	and x6, x4, x7
	or x1, x7, x6
	add x3, x9, x3
	and x4, x9, x8
	sub x7, x6, x6
	sll x4, x3, x3
	or x6, x8, x9
	xor x9, x4, x3
	sub x9, x7, x8
	slt x9, x8, x5
	sra x5, x1, x8
	or x5, x1, x1
	sra x1, x5, x9
	xor x2, x4, x8
	srl x4, x9, x6
	sltu x4, x6, x8
	sub x2, x1, x4
	sub x4, x7, x4
	srl x7, x9, x1
	xor x1, x8, x1
	sll x9, x7, x9
	add x9, x7, x6
	xor x7, x9, x7
	sra x6, x3, x8
	sll x5, x1, x6
	sra x2, x6, x1
	srl x7, x5, x5
	xor x3, x7, x7
	add x9, x5, x3
	srl x2, x3, x2
	sltu x5, x9, x1
	add x9, x4, x2
	and x2, x9, x1
	add x5, x4, x2
	or x7, x7, x1
	slt x6, x4, x5
	sub x2, x7, x7
	sltu x6, x7, x1
	slt x8, x2, x5
	and x3, x6, x2
	slt x3, x4, x1
	add x9, x5, x5
	xor x7, x9, x8
	or x1, x3, x1
	or x4, x6, x9
	slt x7, x1, x4
	xor x6, x1, x3
	add x1, x7, x9
	xor x4, x6, x1
	add x9, x3, x3
	add x3, x7, x1
	or x7, x4, x4
	and x8, x6, x9
	add x8, x3, x8
	sub x5, x8, x3
	srl x6, x9, x5
	or x3, x6, x3
	slt x8, x1, x9
	or x7, x6, x9
	sltu x7, x1, x8
	and x7, x2, x2
	srl x8, x2, x2
	add x9, x6, x1
	slt x3, x7, x7
	sub x5, x4, x9
	xor x1, x8, x1
	sub x2, x5, x6
	srl x9, x4, x4
	sra x5, x2, x9
	sltu x6, x7, x4
	or x6, x7, x7
	sra x4, x7, x6
	sub x4, x4, x2
	srl x9, x6, x9
	add x8, x4, x4
	sltu x8, x4, x1
	xor x1, x9, x3
	xor x4, x8, x9
	xor x8, x2, x2
	sll x3, x9, x8
	sub x1, x2, x7
	sra x8, x1, x8
	add x1, x5, x9
	add x9, x2, x1
	and x7, x7, x5
	or x5, x5, x4
	sub x3, x3, x2
	srl x4, x2, x4
	slt x9, x4, x8
	add x3, x4, x7
	srl x5, x3, x1
	xor x2, x4, x1
	slt x6, x3, x2
	sra x1, x3, x4
	sltu x5, x3, x8
	sra x9, x4, x8
	xor x8, x6, x7
	slt x4, x6, x9
	sra x3, x4, x4
	add x4, x1, x1
	srl x3, x4, x9
	and x1, x6, x5
	sltu x1, x3, x6
	or x5, x1, x5
	sub x6, x6, x7
	and x6, x5, x2
	sll x8, x1, x1
	srl x3, x6, x6
	and x9, x9, x7
	and x1, x5, x5
	sra x1, x9, x4
	xor x3, x2, x9
	add x8, x1, x2
	or x1, x1, x7
	and x4, x7, x9
	add x3, x2, x4
	sltu x6, x3, x8
	add x3, x6, x6
	and x8, x2, x4
	add x5, x9, x8
	add x5, x7, x1
	sub x6, x6, x6
	sll x9, x8, x2
	sll x4, x9, x7
	add x8, x6, x5
	sltu x5, x9, x4
	slt x8, x5, x8
	or x3, x6, x8
	xor x9, x5, x8
	xor x3, x9, x5
	sra x9, x1, x5
	sub x6, x7, x6
	slt x4, x3, x7
	sll x5, x8, x7
	sll x4, x3, x5
	xor x9, x3, x7
	xor x2, x5, x4
	sltu x8, x5, x3
	and x8, x4, x9
	add x3, x8, x5
	xor x3, x4, x2
	or x8, x1, x2
	xor x5, x6, x9
	sltu x1, x6, x3
	slt x7, x9, x5
	sra x8, x1, x1
	sll x9, x3, x3
	sll x5, x4, x7
	srl x9, x7, x3
	and x2, x6, x5
	xor x2, x3, x3
	sltu x1, x4, x4
	sltu x3, x4, x5
	and x5, x2, x1
	add x1, x8, x2
	xor x7, x1, x2
	sll x8, x6, x2
	srl x1, x2, x7
	sra x3, x8, x7
	sub x1, x4, x6
	sll x3, x8, x3
	srl x9, x6, x8
	sub x6, x2, x3
	add x7, x1, x2
	xor x2, x2, x5
	sltu x7, x2, x5
	and x8, x4, x1
	sll x3, x4, x9
	slt x3, x2, x9
	srl x8, x1, x4
	or x9, x7, x5
	sltu x4, x8, x4
	xor x9, x8, x7
	and x1, x7, x2
	add x6, x8, x4
	sll x7, x2, x4
	srl x7, x1, x8
	sltu x7, x7, x8
	or x1, x4, x7
	slt x9, x1, x6
	add x3, x8, x3
	slt x1, x1, x3
	add x5, x6, x6
	add x9, x6, x1
	sll x6, x1, x6
	xor x8, x8, x2
	sra x7, x3, x6
	or x2, x9, x7
	slt x2, x3, x6
	add x5, x9, x8
	sltu x1, x4, x2
	sub x5, x8, x2
	sub x5, x5, x1
	sra x2, x8, x1
	srl x8, x7, x3
	and x1, x3, x5
	sra x3, x5, x2
	and x4, x7, x9
	xor x1, x4, x3
	or x3, x1, x2
	sra x5, x4, x4
	or x6, x2, x7
	sub x3, x6, x7
	sltu x5, x2, x7
	srl x1, x4, x3
	slt x1, x5, x3
	xor x6, x8, x8
	xor x6, x8, x3
	and x3, x7, x3
	or x2, x3, x8
	slt x5, x4, x4
	or x3, x8, x4
	sll x3, x6, x8
	sltu x3, x6, x4
	add x2, x5, x6
	srl x1, x8, x8
	sll x1, x6, x5
	sll x7, x3, x5
	sub x9, x1, x7
	sra x8, x4, x9
	srl x1, x2, x2
	srl x5, x5, x2
	xor x8, x9, x8
	sub x8, x5, x7
	and x5, x7, x9
	and x8, x1, x1
	sll x4, x2, x2
	add x8, x2, x7
	or x1, x5, x2
	sub x4, x4, x8
	sltu x1, x6, x3
	sub x9, x1, x1
	or x9, x5, x3
	sub x3, x1, x6
	xor x2, x5, x3
	slt x7, x8, x1
	srl x7, x2, x3
	sll x9, x8, x2
	sub x2, x8, x5
	and x4, x2, x5
	sll x5, x6, x2
	slt x7, x5, x1
	and x8, x4, x2
	sll x2, x3, x2
	srl x1, x2, x1
	sltu x6, x7, x5
	sub x1, x6, x8
	srl x6, x1, x6
	sltu x3, x1, x2
	and x2, x6, x5
	sll x1, x6, x6
	srl x3, x5, x2
	or x5, x3, x7
	srl x3, x4, x8
	xor x2, x6, x5
	add x5, x2, x2
	xor x5, x9, x3
	or x2, x3, x8
	add x7, x1, x2
	xor x1, x4, x7
	srl x4, x3, x7
	sub x3, x6, x3
	sll x3, x5, x7
	srl x4, x1, x9
	and x9, x6, x2
	sltu x5, x8, x9
	slt x7, x7, x7
	xor x3, x4, x7
	slt x7, x5, x5
	slt x9, x6, x1
	srl x6, x7, x6
	sra x5, x8, x9
	slt x4, x7, x2
	add x9, x5, x6
	slt x6, x8, x8
	slt x6, x2, x5
	add x1, x3, x4
	sltu x7, x9, x4
	or x9, x8, x5
	xor x6, x8, x9
	slt x5, x3, x6
	sltu x1, x5, x7
	sra x3, x2, x1
	slt x2, x3, x4
	sub x7, x3, x4
	sltu x5, x9, x3
	add x6, x1, x4
	slt x3, x6, x9
	and x2, x9, x5
	sltu x1, x2, x9
	slt x2, x3, x3
	srl x3, x9, x7
	sra x1, x5, x5
	or x4, x7, x1
	sltu x9, x4, x5
	xor x1, x6, x9
	xor x4, x3, x8
	srl x2, x6, x6
	and x9, x2, x6
	xor x5, x2, x3
	and x7, x3, x3
	sltu x2, x8, x7
	add x1, x5, x1
	slt x1, x6, x7
	and x7, x7, x6
	slt x9, x5, x1
	and x7, x4, x2
	slt x5, x5, x5
	slt x1, x6, x1
	xor x5, x3, x1
	and x6, x7, x2
	and x3, x2, x3
	sll x3, x5, x5
	sltu x1, x1, x3
	add x8, x3, x3
	sll x9, x5, x9
	and x9, x7, x2
	srl x7, x4, x4
	srl x3, x4, x6
	slt x8, x8, x2
	and x4, x2, x7
	or x8, x3, x7
	or x8, x3, x8
	sra x9, x3, x9
	xor x1, x3, x1
	xor x7, x5, x5
	sra x9, x8, x5
	and x7, x8, x3
	slt x6, x8, x7
	xor x9, x6, x4
	sub x3, x8, x8
	xor x7, x2, x2
	sub x8, x4, x5
	sub x4, x4, x3
	or x5, x8, x6
	sll x7, x6, x6
	slt x1, x2, x4
	sltu x5, x9, x8
	xor x2, x6, x3
	sll x4, x3, x3
	srl x8, x8, x5
	and x4, x5, x9
	and x7, x6, x5
	xor x7, x9, x9
	sub x8, x8, x7
	xor x6, x9, x9
	sll x4, x8, x9
	sub x1, x2, x9
	and x4, x2, x2
	sll x2, x8, x8
	sub x4, x8, x3
	srl x3, x3, x1
	or x5, x3, x7
	sra x7, x8, x2
	sra x9, x7, x1
	sra x8, x3, x2
	sltu x4, x4, x1
	sll x8, x6, x5
	slt x6, x9, x6
	sra x5, x5, x5
	add x1, x8, x4
	sub x6, x2, x5
	srl x8, x9, x7
	sra x9, x1, x9
	sub x6, x9, x9
	srl x8, x4, x3
	and x8, x2, x3
	xor x2, x3, x7
	and x4, x3, x6
	sltu x7, x3, x6
	and x6, x3, x3
	or x8, x4, x5
	or x2, x9, x8
	slt x9, x3, x3
	sltu x9, x6, x8
	sltu x3, x4, x4
	sra x4, x5, x4
	srl x6, x8, x9
	sll x8, x1, x4
	or x2, x6, x7
	srl x7, x6, x3
	add x5, x1, x4
	or x7, x1, x7
	srl x5, x4, x8
	and x3, x2, x1
	and x1, x1, x3
	slt x2, x3, x6
	add x8, x6, x7
	sub x3, x9, x3
	sra x7, x1, x1
	sltu x3, x4, x2
	srl x3, x4, x2
	and x9, x1, x3
	and x1, x2, x9
	or x9, x6, x7
	sltu x2, x4, x2
	sub x8, x4, x6
	sltu x4, x7, x7
	or x5, x1, x4
	slt x6, x9, x6
	sub x2, x3, x3
	and x4, x4, x5
	srl x9, x2, x1
	sra x7, x7, x9
	sltu x2, x8, x6
	sub x1, x6, x6
	or x7, x2, x1
	sub x7, x8, x9
	sll x9, x7, x5
	or x1, x3, x2
	and x4, x9, x6
	or x1, x7, x2
	sub x3, x6, x3
	add x5, x3, x2
	sub x8, x1, x2
	or x5, x3, x2
	and x3, x9, x6
	and x9, x2, x1
	sll x5, x8, x1
	sll x1, x2, x6
	add x7, x6, x1
	sltu x7, x5, x2
	sll x4, x8, x4
	sltu x7, x7, x9
	sub x5, x5, x3
	sll x6, x6, x1
	sll x3, x5, x2
	slt x7, x8, x9
	or x1, x6, x6
	add x5, x9, x8
	sub x3, x6, x8
	or x5, x8, x7
	srl x3, x8, x4
	add x5, x9, x6
	or x7, x3, x8
	sra x5, x3, x7
	slt x7, x2, x1
	sub x3, x1, x2
	sra x3, x9, x3
	slt x4, x7, x8
	and x6, x1, x5
	sltu x2, x2, x1
	srl x1, x1, x4
	sub x1, x3, x4
	sub x7, x9, x8
	sra x8, x8, x3
	sltu x8, x5, x1
	xor x4, x4, x2
	add x5, x9, x4
	xor x6, x8, x3
	add x1, x1, x5
	sll x2, x4, x1
	xor x1, x7, x5
	slt x9, x7, x4
	add x5, x1, x3
	sra x4, x5, x6
	sltu x5, x1, x7
	sra x9, x7, x4
	slt x8, x9, x3
	add x4, x3, x3
	xor x6, x8, x3
	add x4, x3, x9
	slt x5, x6, x8
	slt x3, x8, x5
	sltu x2, x1, x1
	sub x1, x3, x3
	add x2, x5, x1
	srl x8, x1, x6
	sub x8, x6, x7
	xor x9, x5, x8
	srl x9, x8, x3
	or x6, x2, x3
	or x2, x8, x3
	add x2, x7, x9
	sub x2, x4, x3
	add x8, x9, x8
	sltu x7, x1, x5
	and x1, x5, x1
	sltu x8, x9, x6
	srl x4, x2, x5
	xor x3, x5, x3
	xor x7, x2, x9
	sll x1, x1, x9
	xor x7, x7, x4
	or x9, x3, x2
	sub x8, x7, x9
	and x9, x5, x4
	sltu x2, x5, x2
	sub x5, x9, x7
	sra x1, x3, x1
	slt x8, x9, x2
	sra x2, x6, x4
	or x6, x3, x3
	sltu x6, x5, x7
	sra x3, x4, x6
	and x4, x4, x2
	sll x3, x1, x7
	or x5, x6, x7
	srl x8, x2, x4
	sra x8, x7, x5
	xor x2, x8, x1
	sub x8, x4, x1
	and x7, x7, x3
	sra x9, x2, x1
	sra x3, x2, x2
	add x9, x4, x7
	sll x1, x2, x9
	sub x6, x1, x4
	or x9, x7, x2
	and x3, x6, x1
	sltu x8, x6, x9
	sltu x1, x6, x2
	sub x2, x3, x2
	srl x4, x8, x7
	add x2, x7, x8
	xor x3, x1, x6
	and x1, x7, x8
	sltu x5, x6, x3
	add x1, x2, x3
	sra x6, x2, x1
	sub x3, x7, x6
	sltu x7, x4, x1
	sltu x7, x6, x5
	xor x6, x1, x9
	sra x9, x9, x1
	sra x6, x5, x8
	or x1, x2, x1
	srl x8, x7, x2
	sltu x3, x2, x6
	sra x4, x7, x9
	srl x1, x7, x1
	slt x3, x1, x3
	add x7, x4, x4
	sltu x9, x1, x6
	and x5, x1, x6
	add x9, x5, x4
	add x5, x6, x7
	and x8, x4, x7
	srl x7, x5, x4
	slt x6, x8, x1
	or x5, x8, x4
	add x3, x5, x5
	sub x4, x6, x2
	and x8, x6, x7
	slt x5, x5, x6
	sra x4, x3, x9
	sub x2, x2, x9
	sll x7, x5, x9
	sll x8, x8, x3
	sll x8, x2, x8
	xor x4, x3, x8
	or x2, x1, x1
	sub x5, x9, x7
	slt x9, x7, x2
	srl x8, x4, x9
	or x4, x4, x4
	sra x1, x2, x5
	sltu x6, x4, x8
	add x4, x7, x4
	slt x9, x8, x9
	sra x3, x1, x6
	xor x2, x7, x5
	srl x3, x6, x4
	xor x7, x8, x5
	sltu x1, x7, x5
	xor x1, x8, x6
	or x1, x2, x3
	sll x5, x5, x7
	add x7, x9, x8
	sra x3, x2, x1
	srl x3, x1, x3
	xor x5, x2, x9
	or x9, x8, x5
	add x5, x4, x3
	srl x4, x6, x3
	or x3, x9, x1
	xor x5, x5, x8
	sub x5, x9, x2
	srl x7, x4, x8
	slt x2, x3, x3
	sll x9, x3, x2
	sra x8, x3, x1
	sll x6, x4, x4
	srl x2, x2, x4
	slt x7, x6, x3
	sub x9, x4, x5
	sltu x3, x8, x6
	sll x9, x6, x8
	sra x1, x8, x5
	srl x8, x1, x2
	slt x7, x7, x2
	or x7, x7, x4
	sub x8, x9, x5
	or x9, x7, x1
	or x3, x3, x2
	srl x6, x6, x4
	xor x8, x2, x8
	sub x4, x9, x4
	and x7, x2, x4
	sub x8, x2, x2
	sra x3, x7, x1
	add x8, x4, x7
	sll x3, x6, x7
	or x9, x3, x3
	slt x2, x2, x5
	sra x4, x7, x6
	sra x3, x5, x2
	sltu x8, x1, x1
	sll x2, x6, x4
	sra x5, x1, x7
	add x1, x8, x5
	add x5, x5, x6
	and x9, x7, x4
	sltu x3, x1, x8
	xor x9, x5, x5
	xor x5, x5, x7
	or x9, x7, x1
	add x5, x1, x3
	sltu x7, x1, x2
	sltu x1, x2, x8
	sub x5, x9, x3
	sll x9, x5, x2
	sub x9, x2, x2
	add x7, x7, x9
	sra x5, x1, x2
	add x8, x3, x3
	slt x3, x7, x1
	xor x4, x2, x8
	sll x6, x7, x5
	sra x8, x2, x3
	sll x1, x2, x2
	sltu x3, x9, x9
	sra x2, x8, x7
	srl x9, x1, x6
	and x1, x9, x3
	sltu x1, x6, x8
	sll x7, x2, x5
	sra x5, x8, x6
	sra x6, x5, x9
	or x4, x5, x4
	and x4, x1, x5
	sll x9, x5, x4
	sub x3, x2, x7
	slt x5, x7, x9
	xor x2, x4, x4
	srl x9, x2, x3
	sltu x6, x1, x1
	sub x2, x7, x3
	sub x9, x1, x4
	slt x7, x2, x9
	slt x8, x5, x8
	xor x5, x9, x9
	slt x9, x9, x8
	sub x7, x7, x3
	xor x3, x6, x7
	sub x3, x9, x1
	sub x1, x5, x8
	xor x8, x7, x4
	srl x1, x6, x4
	add x8, x8, x1
	sra x3, x9, x3
	sll x1, x9, x3
	and x2, x1, x1
	srl x9, x3, x4
	sra x4, x5, x5
	sll x2, x8, x1
	add x4, x1, x6
	sll x7, x9, x9
	sll x3, x2, x9
	slt x6, x2, x5
	sltu x9, x7, x7
	srl x3, x4, x2
	sra x9, x5, x2
	xor x2, x2, x8
	srl x6, x1, x6
	add x2, x5, x7
	srl x6, x2, x8
	sltu x8, x6, x9
	sub x9, x8, x5
	sltu x4, x9, x5
	sra x5, x4, x2
	sra x1, x2, x5
	sra x1, x9, x7
	sltu x3, x5, x5
	xor x5, x1, x9
	or x6, x4, x4
	add x9, x2, x7
	sub x8, x7, x8
	add x1, x9, x9
	xor x1, x4, x3
	sub x2, x1, x3
	and x8, x7, x7
	add x2, x7, x2
	and x7, x1, x7
	and x6, x3, x4
	and x5, x7, x5
	sra x2, x9, x7
	and x6, x1, x9
	sll x9, x3, x4
	slt x4, x6, x4
	sub x1, x3, x5
	or x3, x4, x9
	slt x7, x1, x5
	sltu x8, x1, x5
	xor x9, x9, x3
	xor x1, x2, x1
	srl x7, x6, x2
	srl x1, x2, x7
	srl x4, x7, x5
	and x9, x6, x9
	sub x4, x3, x2
	sll x9, x7, x6
	xor x4, x8, x2
	or x7, x6, x1
	xor x7, x7, x7
	or x6, x7, x2
	sltu x5, x8, x4
	sub x3, x6, x1
	srl x6, x7, x3
	sra x7, x5, x1
	or x4, x6, x4
	xor x9, x1, x4
	xor x3, x9, x8
	sub x8, x5, x6
	sub x4, x9, x4
	add x2, x4, x3
	add x6, x8, x3
	sll x9, x4, x2
	add x7, x1, x7
	sra x7, x6, x2
	xor x1, x7, x3
	sub x4, x8, x4
	and x1, x1, x1
	slt x2, x8, x4
	xor x1, x7, x5
	sll x8, x9, x9
	srl x6, x8, x5
	add x4, x3, x1
	sub x7, x4, x9
	add x5, x8, x5
	slt x3, x7, x2
	sub x9, x2, x4
	sltu x2, x1, x6
	sltu x9, x2, x5
	or x7, x4, x5
	slt x8, x5, x1
	and x1, x6, x5
	or x7, x5, x7
	or x6, x3, x4
	sra x1, x8, x6
	xor x9, x3, x2
	sll x5, x3, x8
	add x8, x6, x2
	xor x5, x2, x1
	or x1, x5, x3
	add x5, x5, x7
	sltu x1, x8, x4
	sll x6, x1, x7
	sra x8, x3, x4
	sra x1, x7, x5
	srl x9, x7, x6
	sra x4, x6, x3
	sll x6, x6, x2
	sra x7, x8, x8
	sltu x5, x7, x7
	xor x5, x1, x1
	or x2, x8, x1
	sltu x7, x7, x5
	sra x5, x6, x9
	srl x5, x9, x4
	or x9, x4, x8
	srl x3, x6, x8
	sll x1, x7, x1
	sltu x3, x2, x5
	add x7, x8, x4
	srl x9, x4, x4
	sltu x1, x7, x4
	slt x1, x9, x5
	and x1, x2, x2
	sll x8, x7, x8
	add x8, x1, x9
	sra x6, x9, x1
	srl x9, x1, x7
	srl x8, x4, x2
	srl x9, x5, x9
	slt x6, x9, x9
	sll x3, x6, x1
	slt x6, x4, x1
	or x1, x5, x4
	srl x6, x7, x2
	add x2, x2, x6
	sll x7, x6, x5
	sll x2, x6, x3
	slt x7, x9, x7
	and x5, x2, x3
	or x9, x2, x2
	add x7, x5, x3
	xor x2, x3, x5
	xor x9, x6, x6
	or x4, x5, x5
	srl x4, x8, x1
	sra x4, x8, x5
	add x7, x3, x8
	sll x2, x1, x7
	xor x1, x4, x5
	sub x9, x2, x3
	srl x4, x9, x3
	add x2, x3, x8
	sll x6, x1, x8
	sra x9, x2, x6
	or x3, x9, x6
	add x2, x2, x2
	sub x8, x8, x1
	and x1, x8, x2
	sub x9, x3, x7
	sra x6, x7, x1
	srl x7, x8, x7
	sub x1, x7, x4
	sra x7, x5, x6
	sltu x1, x1, x5
	add x7, x4, x9
	or x2, x4, x7
	sltu x9, x5, x6
	xor x1, x8, x1
	sra x9, x8, x7
	and x1, x5, x2
	and x7, x3, x5
	sltu x9, x7, x9
	slt x7, x6, x1
	and x8, x1, x5
	sll x1, x8, x5
	and x4, x9, x9
	sll x1, x4, x4
	sll x5, x2, x5
	srl x7, x4, x8
	slt x1, x6, x9
	sll x1, x6, x9
	sltu x5, x6, x4
	sra x4, x4, x5
	or x6, x4, x6
	sll x2, x2, x3
	or x5, x7, x1
	or x9, x5, x6
	sltu x3, x1, x9
	sll x7, x6, x4
	or x1, x6, x9
	xor x4, x3, x3
	srl x9, x5, x8
	sltu x1, x7, x3
	slt x1, x2, x8
	srl x7, x8, x8
	sltu x2, x7, x8
	slt x8, x8, x5
	or x7, x4, x4
	sub x6, x1, x5
	xor x2, x6, x5
	sltu x6, x3, x8
	sll x7, x5, x3
	srl x1, x6, x9
	srl x3, x5, x2
	sltu x2, x7, x8
	or x3, x1, x4
	or x7, x7, x9
	sra x5, x3, x5
	sll x8, x8, x3
	sltu x2, x9, x7
	or x4, x6, x7
	and x2, x5, x6
	xor x6, x1, x9
	sub x7, x9, x2
	srl x4, x2, x2
	and x3, x3, x4
	slt x4, x6, x6
	add x5, x4, x2
	or x4, x6, x7
	srl x4, x3, x2
	add x8, x8, x9
	slt x7, x3, x3
	slt x3, x7, x2
	sltu x5, x7, x7
	sub x3, x7, x6
	sra x3, x6, x7
	add x2, x8, x1
	srl x6, x8, x1
	add x2, x7, x7
	and x7, x3, x5
	add x1, x7, x2
	sra x9, x7, x4
	srl x8, x6, x1
	srl x1, x5, x4
	sll x8, x5, x1
	and x8, x1, x6
	sra x5, x3, x8
	xor x4, x6, x2
	sra x6, x5, x7
	or x3, x1, x1
	slt x8, x1, x3
	slt x1, x7, x5
	srl x5, x3, x1
	sra x9, x3, x8
	and x8, x8, x3
	or x4, x1, x5
	add x2, x3, x3
	sll x4, x1, x7
	or x6, x2, x3
	or x8, x3, x3
	sll x4, x9, x3
	srl x9, x9, x7
	sltu x4, x1, x8
	sll x9, x6, x6
	and x3, x4, x9
	sra x4, x5, x5
	and x8, x9, x5
	sub x2, x6, x5
	sltu x8, x2, x3
	sra x2, x9, x2
	sll x8, x6, x5
	sub x2, x2, x2
	or x3, x6, x9
	and x3, x9, x8
	sll x4, x8, x5
	srl x3, x3, x7
	add x7, x6, x4
	add x1, x5, x6
	sub x5, x4, x1
	xor x7, x6, x6
	srl x9, x9, x5
	sltu x9, x7, x4
	sra x4, x2, x7
	slt x7, x1, x6
	or x3, x6, x5
	srl x6, x8, x7
	add x3, x7, x1
	srl x3, x6, x4
	sra x8, x1, x3
	sll x3, x3, x7
	sub x3, x1, x2
	add x9, x2, x9
	and x6, x5, x2
	or x5, x8, x7
	and x2, x3, x7
	xor x9, x7, x3
	sra x4, x8, x7
	sltu x2, x3, x7
	srl x5, x8, x8
	slt x6, x9, x7
	sub x8, x2, x4
	slt x5, x3, x5
	srl x7, x3, x2
	sub x5, x3, x8
	sltu x7, x5, x2
	or x8, x1, x3
	xor x1, x5, x1
	sltu x9, x3, x1
	xor x7, x9, x6
	and x6, x6, x4
	or x9, x4, x8
	add x2, x9, x5
	add x8, x1, x6
	xor x5, x3, x3
	srl x5, x3, x8
	sltu x2, x4, x4
	srl x2, x3, x4
	and x3, x8, x1
	srl x3, x9, x3
	and x8, x3, x9
	sll x6, x7, x8
	sub x7, x9, x6
	sll x6, x9, x6
	sra x8, x9, x3
	and x2, x1, x9
	sra x9, x3, x7
	sub x2, x7, x5
	sltu x3, x5, x3
	sra x9, x8, x7
	or x1, x2, x9
	add x3, x3, x3
	add x3, x3, x2
	srl x6, x7, x4
	add x4, x8, x1
	sll x9, x6, x2
	sltu x1, x3, x5
	xor x8, x8, x8
	sll x6, x6, x2
	sra x8, x7, x8
	or x7, x7, x1
	or x8, x5, x3
	sra x4, x7, x1
	sra x4, x7, x3
	sltu x7, x8, x8
	slt x5, x4, x2
	or x9, x6, x5
	add x4, x3, x6
	add x7, x6, x5
	and x8, x6, x5
	xor x5, x5, x8
	srl x8, x7, x7
	srl x7, x6, x3
	slt x3, x1, x3
	xor x7, x4, x1
	and x5, x8, x7
	sra x9, x6, x4
	srl x5, x2, x9
	xor x1, x7, x2
	srl x7, x7, x1
	sltu x8, x6, x4
	sub x3, x8, x7
	sll x3, x3, x8
	and x9, x1, x7
	sub x3, x6, x8
	sra x2, x4, x4
	srl x1, x3, x5
	xor x7, x7, x7
	or x8, x6, x9
	sltu x1, x9, x9
	or x4, x2, x4
	sll x2, x7, x8
	sub x6, x9, x4
	sll x7, x1, x9
	xor x9, x7, x8
	and x1, x9, x9
	and x5, x7, x5
	sltu x3, x5, x7
	srl x3, x9, x7
	sra x1, x8, x9
	or x5, x6, x5
	sll x7, x5, x1
	add x3, x9, x6
	slt x3, x1, x2
	sltu x9, x9, x7
	sra x2, x2, x9
	or x1, x9, x1
	sub x2, x9, x6
	sltu x3, x9, x2
	sltu x4, x7, x4
	and x8, x4, x6
	xor x5, x9, x6
	sra x5, x6, x3
	add x9, x1, x7
	sra x3, x1, x8
	slt x4, x2, x3
	srl x8, x8, x5
	sub x1, x4, x5
	add x1, x4, x6
	sltu x7, x6, x4
	sltu x2, x8, x5
	sll x8, x6, x5
	and x9, x1, x8
	xor x9, x8, x8
	sll x1, x1, x5
	add x8, x9, x8
	sra x6, x2, x3
	sub x6, x1, x8
	and x2, x2, x4
	add x1, x2, x6
	sltu x1, x6, x7
	sll x4, x1, x1
	or x6, x1, x8
	or x7, x4, x6
	sra x3, x3, x6
	sub x7, x4, x5
	add x9, x7, x9
	slt x5, x8, x9
	sll x1, x3, x6
	slt x5, x4, x8
	and x2, x9, x1
	srl x2, x4, x4
	and x5, x6, x8
	add x3, x1, x9
	sll x8, x5, x3
	sra x8, x4, x7
	sub x5, x5, x6
	xor x6, x5, x7
	xor x1, x9, x3
	sltu x1, x8, x2
	xor x6, x5, x3
	sltu x8, x6, x8
	sra x8, x3, x9
	sll x9, x8, x5
	add x1, x3, x5
	sub x2, x5, x4
	slt x6, x2, x3
	xor x3, x6, x4
	sll x2, x1, x2
	sll x6, x4, x6
	and x7, x2, x1
	slt x5, x2, x4
	sub x5, x3, x8
	srl x7, x8, x9
	sll x2, x9, x6
	slt x5, x6, x6
	srl x4, x9, x1
	xor x4, x8, x6
	and x5, x3, x3
	add x2, x4, x5
	add x1, x1, x4
	or x2, x9, x4
	sltu x2, x6, x7
	add x9, x8, x9
	sub x3, x4, x7
	xor x3, x3, x7
	srl x9, x1, x3
	add x7, x3, x7
	add x1, x6, x3
	xor x5, x2, x3
	sll x9, x3, x6
	sra x9, x8, x3
	xor x5, x8, x5
	xor x9, x5, x7
	add x8, x9, x3
	sltu x6, x6, x9
	srl x2, x3, x8
	sra x7, x6, x7
	or x2, x4, x9
	srl x1, x9, x6
	slt x6, x8, x1
	sub x3, x7, x8
	slt x1, x6, x1
	srl x5, x2, x5
	sra x6, x6, x7
	slt x3, x2, x6
	sll x7, x5, x9
	add x2, x7, x1
	sra x8, x4, x7
	sra x1, x1, x7
	sltu x9, x8, x1
	or x8, x3, x6
	add x3, x1, x6
	sub x3, x8, x2
	sub x4, x9, x8
	and x6, x7, x4
	or x6, x2, x2
	sub x6, x4, x9
	and x6, x3, x7
	or x9, x8, x4
	add x7, x1, x4
	and x2, x2, x9
	sll x8, x8, x1
	slt x2, x8, x6
	sltu x8, x3, x7
	sltu x3, x6, x4
	slt x8, x5, x5
	xor x5, x9, x9
	sltu x3, x7, x3
	sltu x9, x8, x1
	sltu x6, x4, x8
	sub x9, x1, x7
	sub x8, x3, x9
	sub x5, x1, x1
	sltu x7, x6, x6
	sub x8, x5, x5
	xor x4, x9, x8
	srl x6, x6, x2
	sub x2, x8, x5
	slt x2, x3, x4
	sra x6, x1, x2
	srl x6, x7, x6
	add x7, x3, x6
	srl x6, x8, x9
	xor x4, x2, x7
	sll x8, x3, x9
	slt x3, x3, x6
	sll x2, x5, x8
	sra x4, x3, x6
	add x2, x3, x8
	and x7, x2, x5
	add x9, x3, x5
	sll x6, x4, x1
	sll x5, x7, x8
	xor x2, x5, x8
	srl x4, x7, x7
	srl x4, x4, x4
	sra x4, x7, x9
	or x4, x9, x3
	sub x2, x1, x4
	or x5, x5, x6
	or x7, x9, x7
	sub x7, x6, x1
	xor x9, x5, x4
	and x3, x2, x7
	sltu x3, x5, x3
	sub x9, x2, x3
	xor x9, x3, x4
	sltu x7, x2, x5
	srl x1, x6, x5
	sra x1, x3, x3
	and x7, x3, x4
	sltu x9, x7, x3
	sltu x3, x9, x3
	or x1, x8, x6
	slt x1, x4, x3
	sll x8, x4, x8
	sub x5, x5, x5
	xor x5, x6, x6
	add x3, x9, x4
	or x3, x7, x4
	sltu x1, x6, x2
	sltu x1, x4, x1
	sra x7, x8, x3
	and x2, x9, x6
	xor x9, x2, x7
	and x2, x4, x2
	sll x8, x6, x3
	sra x7, x7, x5
	and x2, x3, x1
	sltu x5, x4, x3
	or x1, x8, x2
	sltu x8, x7, x7
	srl x3, x4, x5
	xor x6, x9, x8
	xor x2, x3, x5
	or x6, x9, x6
	add x7, x1, x7
	slt x2, x6, x6
	or x2, x8, x6
	sra x7, x1, x8
	sltu x2, x8, x8
	or x9, x3, x1
	sra x7, x7, x3
	and x2, x5, x6
	add x2, x9, x8
	or x8, x2, x4
	and x8, x7, x4
	sltu x5, x9, x9
	sra x6, x1, x6
	xor x3, x3, x8
	srl x6, x6, x6
	srl x7, x1, x7
	add x3, x7, x1
	xor x9, x1, x5
	sll x6, x1, x1
	slt x9, x8, x9
	and x5, x4, x4
	and x3, x9, x1
	sub x4, x8, x7
	srl x6, x1, x6
	sra x3, x4, x5
	sub x1, x6, x8
	slt x4, x7, x2
	slt x7, x2, x9
	slt x8, x7, x8
	srl x4, x2, x5
	add x4, x9, x3
	add x2, x1, x2
	add x7, x4, x1
	sltu x3, x6, x3
	or x9, x6, x3
	sra x2, x8, x9
	add x4, x5, x3
	or x4, x4, x7
	and x6, x4, x6
	srl x6, x1, x2
	xor x1, x8, x7
	add x5, x1, x3
	slt x7, x5, x5
	slt x8, x8, x8
	xor x9, x6, x4
	sra x7, x5, x5
	slt x3, x8, x8
	sra x2, x7, x6
	sll x9, x1, x9
	or x2, x6, x4
	sub x5, x5, x9
	sll x7, x3, x6
	sub x4, x9, x8
	sll x8, x3, x6
	srl x7, x8, x7
	sra x5, x4, x7
	sub x7, x6, x6
	sub x2, x1, x8
	and x1, x8, x1
	sra x1, x4, x8
	sltu x6, x3, x6
	slt x6, x2, x3
	sll x7, x2, x6
	and x6, x9, x4
	slt x7, x3, x4
	add x8, x3, x8
	add x7, x7, x1
	and x7, x2, x6
	sub x4, x7, x3
	srl x6, x5, x5
	sll x1, x6, x4
	slt x3, x1, x7
	sll x8, x1, x6
	sra x9, x9, x2
	sll x8, x1, x8
	sltu x1, x5, x4
	sub x5, x7, x2
	xor x1, x8, x1
	sub x7, x3, x1
	xor x3, x2, x8
	srl x2, x1, x3
	and x4, x8, x7
	sub x3, x2, x4
	sltu x7, x6, x3
	sub x5, x1, x2
	sll x7, x9, x6
	and x9, x7, x7
	sub x5, x2, x9
	sub x8, x9, x8
	add x3, x1, x7
	srl x1, x4, x3
	xor x1, x9, x7
	xor x5, x3, x5
	and x4, x5, x8
	or x9, x8, x7
	or x7, x5, x4
	or x9, x4, x1
	or x9, x2, x6
	srl x3, x3, x1
	and x3, x3, x9
	or x3, x1, x1
	srl x6, x8, x8
	slt x1, x9, x5
	add x5, x4, x9
	or x9, x3, x1
	and x3, x6, x9
	or x1, x6, x2
	slt x9, x9, x2
	add x8, x5, x2
	or x5, x9, x8
	xor x7, x7, x7
	sub x2, x4, x9
	sll x1, x3, x3
	srl x5, x6, x3
	sub x2, x5, x2
	sltu x4, x9, x5
	and x4, x5, x6
	or x2, x8, x9
	xor x7, x7, x6
	slt x2, x6, x9
	xor x2, x2, x1
	xor x5, x1, x1
	xor x6, x6, x4
	slt x7, x7, x5
	sltu x8, x1, x6
	srl x9, x5, x8
	add x1, x6, x7
	and x5, x1, x8
	sll x8, x4, x6
	sub x2, x6, x5
	xor x9, x5, x2
	xor x2, x2, x8
	sltu x4, x5, x8
	srl x9, x5, x8
	and x6, x9, x6
	and x1, x1, x5
	slt x9, x1, x5
	add x4, x5, x9
	add x4, x9, x1
	xor x6, x5, x3
	xor x5, x4, x9
	add x9, x9, x5
	srl x5, x8, x5
	or x6, x9, x6
	or x1, x7, x5
	sra x4, x1, x7
	slt x3, x4, x8
	or x4, x3, x5
	srl x4, x6, x1
	sltu x2, x4, x6
	xor x3, x6, x9
	sub x4, x7, x9
	srl x9, x9, x9
	sll x3, x8, x7
	srl x7, x6, x8
	xor x8, x3, x8
	sub x2, x1, x2
	sltu x2, x1, x6
	xor x3, x1, x9
	slt x6, x5, x2
	sll x2, x2, x2
	sll x2, x2, x4
	add x2, x1, x3
	sub x5, x2, x9
	or x1, x2, x9
	add x7, x3, x4
	sub x9, x1, x5
	add x2, x4, x1
	or x1, x8, x6
	sub x2, x8, x5
	and x5, x8, x1
	srl x8, x2, x4
	srl x2, x3, x7
	slt x2, x3, x8
	sra x3, x5, x3
	sltu x6, x9, x4
	add x5, x5, x9
	and x8, x7, x3
	sra x4, x2, x6
	add x3, x6, x8
	add x6, x4, x3
	or x4, x6, x3
	xor x8, x1, x5
	or x3, x7, x5
	sltu x9, x1, x9
	sltu x9, x5, x1
	xor x5, x8, x2
	sra x6, x7, x8
	xor x8, x2, x2
	or x4, x3, x4
	slt x8, x1, x3
	add x6, x6, x9
	xor x3, x5, x5
	and x5, x6, x8
	sll x4, x8, x7
	sra x1, x3, x8
	sll x8, x1, x9
	or x7, x9, x6
	xor x2, x3, x1
	xor x5, x9, x5
	srl x7, x7, x3
	and x3, x8, x8
	and x7, x6, x1
	add x8, x1, x6
	xor x6, x3, x1
	and x9, x8, x5
	slt x2, x2, x3
	or x2, x3, x8
	or x4, x2, x9
	add x9, x9, x6
	slt x4, x5, x7
	add x8, x5, x1
	sra x4, x3, x1
	sub x3, x8, x5
	sra x1, x7, x9
	sra x8, x1, x6
	sltu x4, x2, x8
	srl x1, x3, x3
	sra x9, x8, x6
	sll x1, x5, x7
	sltu x4, x8, x8
	sra x4, x9, x2
	or x7, x3, x7
	and x7, x1, x6
	xor x5, x1, x4
	xor x9, x7, x4
	sub x7, x5, x7
	and x8, x3, x2
	sltu x3, x8, x4
	xor x5, x3, x9
	add x4, x3, x9
	sra x8, x2, x8
	and x5, x8, x7
	add x9, x2, x6
	sltu x6, x1, x5
	and x4, x7, x7
	xor x6, x2, x7
	or x1, x6, x4
	srl x8, x2, x7
	sll x3, x2, x4
	srl x2, x2, x5
	or x1, x7, x3
	sll x4, x9, x4
	sub x3, x4, x2
	srl x2, x2, x4
	and x9, x8, x4
	sltu x3, x4, x2
	and x7, x8, x1
	add x6, x5, x6
	xor x4, x9, x5
	sub x3, x3, x3
	sltu x6, x5, x4
	sra x4, x2, x3
	sltu x5, x1, x7
	sll x7, x4, x4
	xor x1, x7, x4
	sra x6, x1, x6
	sub x9, x5, x9
	or x7, x2, x2
	or x1, x4, x8
	or x3, x6, x2
	sltu x9, x5, x7
	sll x9, x7, x5
	or x9, x4, x9
	sub x3, x5, x3
	sub x4, x9, x6
	sltu x5, x8, x1
	add x8, x7, x3
	sub x7, x9, x5
	slt x4, x1, x9
	and x9, x8, x7
	xor x3, x3, x3
	sra x1, x2, x3
	slt x3, x6, x1
	sub x7, x6, x4
	sll x2, x2, x2
	srl x3, x5, x5
	add x1, x7, x4
	and x2, x2, x3
	srl x6, x6, x1
	slt x2, x7, x1
	srl x5, x5, x2
	sltu x2, x7, x1
	sra x5, x8, x9
	and x2, x1, x1
	and x9, x1, x9
	xor x3, x9, x7
	slt x7, x5, x8
	sltu x2, x6, x3
	sltu x7, x6, x2
	srl x1, x1, x2
	sll x7, x2, x8
	slt x1, x9, x7
	or x4, x8, x9
	sub x9, x5, x3
	slt x9, x4, x3
	or x8, x1, x4
	sll x5, x9, x6
	slt x5, x7, x6
	srl x2, x1, x7
	xor x3, x9, x2
	sll x3, x2, x5
	or x3, x4, x1
	add x2, x1, x1
	add x7, x4, x2
	sltu x1, x5, x8
	sra x3, x7, x6
	and x7, x3, x6
	sra x6, x8, x2
	add x2, x6, x4
	and x5, x2, x3
	add x4, x4, x8
	sll x9, x4, x9
	or x3, x7, x8
	or x6, x7, x6
	sra x2, x9, x6
	srl x8, x2, x9
	add x6, x1, x2
	sra x3, x8, x9
	xor x4, x8, x5
	sltu x1, x5, x2
	or x2, x7, x7
	slt x4, x7, x5
	sltu x4, x9, x2
	sub x9, x1, x8
	sra x7, x7, x7
	sltu x5, x3, x1
	sra x9, x8, x9
	srl x1, x3, x4
	slt x8, x2, x7
	or x4, x9, x5
	add x3, x6, x3
	srl x1, x8, x6
	sll x1, x2, x8
	add x6, x2, x7
	slt x5, x8, x2
	xor x8, x7, x9
	add x7, x6, x6
	and x1, x4, x2
	sra x5, x4, x9
	sra x4, x8, x5
	sra x6, x5, x3
	slt x5, x7, x5
	xor x5, x9, x8
	xor x4, x9, x1
	xor x4, x9, x9
	srl x8, x7, x7
	sra x1, x2, x4
	sltu x1, x9, x8
	sltu x8, x6, x4
	xor x1, x3, x3
	srl x5, x4, x4
	slt x5, x3, x5
	slt x1, x3, x8
	add x2, x4, x5
	and x4, x1, x8
	and x7, x4, x6
	sra x7, x2, x6
	srl x4, x4, x4
	sra x3, x6, x2
	sll x8, x6, x2
	and x3, x4, x2
	or x2, x3, x2
	sub x5, x9, x6
	or x8, x1, x6
	xor x1, x2, x4
	srl x8, x7, x6
	sub x8, x6, x5
	sra x1, x4, x8
	sra x3, x1, x7
	xor x1, x4, x8
	srl x7, x7, x2
	and x5, x5, x6
	srl x6, x8, x2
	sltu x4, x3, x1
	add x1, x5, x6
	xor x4, x4, x9
	slt x7, x1, x1
	add x6, x1, x5
	sltu x8, x1, x6
	and x2, x5, x8
	sra x9, x7, x8
	sll x5, x7, x8
	sub x4, x4, x6
	or x9, x5, x8
	sll x1, x7, x4
	srl x1, x8, x2
	sra x9, x4, x4
	add x2, x8, x4
	sltu x9, x7, x5
	add x3, x5, x9
	sll x9, x2, x7
	slt x5, x2, x9
	slt x6, x4, x8
	and x2, x6, x4
	xor x4, x9, x3
	sll x7, x3, x2
	xor x2, x4, x5
	add x6, x9, x2
	sub x8, x3, x9
	sub x6, x1, x3
	sll x1, x3, x7
	sub x4, x3, x5
	sll x8, x5, x9
	slt x1, x7, x4
	xor x6, x3, x2
	sll x4, x5, x5
	sll x9, x9, x4
	or x3, x2, x4
	and x9, x5, x4
	xor x7, x2, x6
	and x6, x8, x2
	sltu x9, x7, x8
	sll x4, x7, x1
	slt x5, x4, x7
	sltu x4, x9, x7
	sltu x5, x3, x1
	sub x1, x1, x1
	srl x2, x3, x6
	sll x7, x6, x7
	sra x6, x2, x9
	and x4, x8, x5
	sll x7, x1, x8
	sll x2, x3, x8
	sltu x4, x9, x2
	xor x2, x7, x8
	sra x5, x3, x5
	sltu x9, x8, x5
	sll x5, x2, x5
	xor x4, x6, x8
	sll x6, x9, x9
	sll x6, x4, x7
	srl x1, x4, x1
	add x4, x1, x4
	sra x9, x5, x1
	sra x2, x2, x4
	srl x2, x7, x9
	sll x4, x4, x6
	or x8, x6, x4
	sra x1, x4, x3
	sll x1, x7, x6
	and x6, x4, x8
	slt x4, x4, x2
	and x2, x3, x1
	xor x7, x8, x4
	sltu x8, x5, x9
	slt x7, x7, x2
	add x6, x9, x4
	or x5, x8, x7
	and x3, x6, x1
	sll x7, x8, x6
	sltu x5, x8, x2
	sub x8, x4, x7
	slt x3, x5, x7
	or x4, x2, x9
	sra x5, x5, x3
	or x4, x1, x5
	or x8, x6, x8
	sub x7, x8, x9
	slt x6, x1, x3
	sra x4, x6, x7
	sltu x2, x4, x7
	or x3, x4, x3
	slt x6, x3, x1
	slt x8, x7, x3
	sra x3, x3, x9
	sub x2, x4, x9
	add x4, x1, x6
	and x5, x8, x9
	and x6, x2, x7
	and x8, x2, x9
	sra x2, x2, x4
	add x5, x4, x8
	xor x9, x8, x3
	slt x8, x3, x7
	sll x9, x6, x1
	sll x8, x2, x7
	sltu x5, x8, x9
	add x6, x6, x3
	srl x7, x8, x2
	and x1, x1, x2
	sub x3, x1, x7
	sra x3, x1, x8
	sltu x8, x9, x6
	and x4, x3, x2
	or x7, x2, x6
	add x8, x7, x2
	sltu x6, x5, x8
	sll x2, x2, x9
	sll x9, x4, x5
	and x9, x8, x5
	sll x4, x6, x9
	sll x6, x5, x6
	sra x4, x7, x1
	sra x8, x5, x6
	xor x8, x3, x7
	srl x6, x7, x8
	srl x4, x5, x5
	slt x1, x9, x9
	sll x1, x2, x4
	sub x8, x4, x7
	xor x4, x7, x5
	or x3, x6, x6
	xor x8, x4, x5
	add x8, x3, x9
	xor x8, x3, x5
	add x2, x3, x7
	sll x6, x1, x7
	srl x6, x3, x7
	add x6, x9, x7
	add x4, x5, x3
	xor x7, x5, x4
	sub x3, x2, x8
	slt x1, x7, x3
	sub x7, x6, x9
	sub x8, x8, x7
	srl x3, x2, x4
	xor x7, x9, x3
	sub x6, x8, x5
	srl x9, x9, x6
	sub x6, x3, x2
	and x2, x9, x3
	add x3, x6, x3
	srl x5, x9, x2
	sltu x6, x4, x4
	srl x2, x2, x2
	add x5, x4, x1
	sra x9, x9, x3
	sltu x2, x3, x2
	slt x1, x5, x8
	sltu x4, x4, x6
	sra x9, x5, x6
	sll x3, x5, x5
	or x7, x9, x2
	sra x3, x5, x8
	sub x9, x1, x9
	add x9, x8, x2
	or x5, x3, x9
	or x1, x2, x2
	xor x4, x2, x9
	slt x6, x9, x9
	srl x8, x9, x8
	add x7, x3, x1
	slt x3, x5, x7
	xor x4, x2, x5
	sra x2, x2, x3
	sll x2, x7, x8
	and x1, x3, x3
	slt x9, x4, x7
	srl x7, x5, x7
	or x7, x8, x9
	and x8, x1, x8
	or x2, x1, x7
	xor x1, x5, x3
	xor x6, x3, x4
	and x6, x9, x6
	xor x8, x6, x2
	or x3, x5, x5
	or x2, x9, x2
	sll x8, x4, x4
	slt x7, x8, x6
	sub x4, x7, x2
	srl x4, x2, x8
	sltu x3, x4, x1
	or x6, x3, x5
	sll x5, x6, x2
	sub x4, x5, x7
	sub x2, x2, x6
	xor x4, x5, x7
	sub x9, x1, x1
	sra x9, x7, x2
	xor x3, x6, x7
	and x1, x5, x3
	sll x2, x2, x6
	sltu x4, x7, x1
	xor x5, x3, x6
	sltu x3, x2, x6
	sub x4, x2, x9
	sub x4, x2, x8
	sra x7, x1, x1
	xor x1, x9, x4
	add x4, x5, x5
	sub x1, x8, x6
	sub x3, x8, x9
	sll x6, x8, x3
	sltu x1, x5, x3
	add x8, x5, x3
	xor x9, x4, x8
	and x6, x8, x5
	add x2, x5, x1
	sub x9, x6, x8
	sltu x6, x5, x6
	sra x3, x9, x1
	add x4, x3, x8
	sub x5, x9, x3
	and x7, x2, x7
	sll x4, x6, x2
	sltu x4, x2, x3
	sltu x1, x2, x1
	sub x4, x5, x5
	sltu x5, x2, x3
	slt x5, x9, x3
	and x1, x8, x3
	sra x2, x9, x3
	and x3, x9, x5
	sll x9, x3, x8
	add x3, x3, x2
	sll x5, x2, x3
	srl x3, x2, x2
	sll x2, x5, x9
	and x4, x6, x5
	or x4, x3, x8
	and x8, x8, x9
	add x5, x3, x4
	or x7, x8, x9
	sltu x3, x3, x6
	sltu x8, x1, x8
	sra x1, x2, x5
	sltu x4, x1, x2
	add x1, x9, x2
	add x7, x4, x1
	and x5, x2, x5
	srl x4, x7, x4
	sub x4, x6, x2
	sra x5, x6, x9
	and x7, x4, x9
	add x4, x9, x4
	srl x5, x4, x2
	add x6, x7, x7
	add x6, x6, x2
	xor x3, x7, x9
	sll x3, x2, x1
	xor x3, x4, x3
	and x8, x6, x6
	add x9, x7, x1
	sll x3, x6, x2
	srl x4, x1, x7
	or x4, x1, x5
	slt x1, x9, x4
	and x2, x5, x2
	sll x1, x6, x5
	slt x4, x4, x8
	sub x7, x7, x7
	sub x3, x7, x3
	sub x1, x8, x4
	or x3, x2, x2
	sltu x7, x3, x7
	sra x4, x5, x9
	sltu x2, x4, x3
	or x2, x4, x9
	sub x5, x7, x3
	add x9, x7, x2
	sub x2, x9, x7
	or x3, x7, x5
	srl x3, x4, x4
	sll x9, x1, x8
	add x9, x1, x8
	srl x5, x8, x7
	slt x1, x3, x4
	srl x3, x6, x9
	sll x9, x6, x7
	and x3, x8, x2
	add x5, x2, x5
	srl x2, x2, x6
	sub x1, x1, x3
	and x6, x6, x3
	add x1, x2, x8
	or x6, x6, x8
	or x2, x7, x1
	slt x2, x5, x9
	xor x1, x4, x5
	slt x8, x6, x7
	or x4, x6, x5
	sra x9, x4, x7
	sll x5, x9, x6
	add x3, x5, x3
	or x6, x6, x2
	sltu x7, x1, x5
	xor x2, x4, x5
	srl x2, x5, x6
	or x4, x7, x5
	add x6, x1, x9
	srl x6, x3, x1
	srl x6, x4, x4
	xor x7, x8, x2
	sub x8, x7, x3
	slt x5, x7, x1
	add x4, x5, x7
	sra x3, x5, x6
	sltu x2, x1, x6
	sra x4, x2, x5
	xor x7, x4, x7
	sll x4, x1, x2
	or x7, x5, x4
	slt x2, x3, x4
	sub x9, x8, x2
	xor x9, x3, x3
	and x6, x8, x7
	sub x2, x2, x8
	slt x2, x5, x4
	sll x3, x7, x6
	and x7, x9, x2
	sub x4, x2, x9
	sll x7, x5, x4
	xor x3, x4, x4
	or x2, x2, x2
	sra x2, x5, x1
	sra x2, x5, x4
	add x9, x6, x8
	sltu x1, x7, x7
	xor x2, x6, x9
	and x6, x6, x3
	srl x2, x1, x3
	and x7, x8, x6
	slt x7, x4, x5
	add x6, x8, x4
	and x3, x5, x5
	srl x7, x4, x6
	sub x9, x6, x5
	or x5, x3, x6
	sltu x4, x8, x6
	srl x9, x1, x9
	and x7, x8, x5
	slt x4, x7, x4
	sub x8, x7, x9
	and x5, x4, x3
	xor x6, x8, x6
	sltu x8, x6, x7
	xor x8, x5, x3
	srl x9, x9, x1
	srl x7, x2, x4
	srl x6, x5, x1
	sra x3, x4, x5
	sub x4, x3, x5
	sub x7, x8, x9
	sub x4, x9, x8
	srl x7, x4, x4
	sll x6, x7, x2
	srl x8, x9, x8
	sltu x1, x2, x2
	sltu x3, x5, x9
	sub x8, x7, x9
	sltu x6, x3, x5
	xor x9, x1, x4
	slt x1, x5, x5
	sll x2, x9, x1
	and x7, x9, x6
	sra x1, x6, x9
	xor x7, x3, x8
	sra x9, x9, x2
	srl x9, x8, x5
	sub x2, x7, x3
	add x8, x4, x3
	sub x9, x5, x4
	or x5, x7, x9
	xor x1, x2, x9
	slt x5, x4, x4
	sltu x4, x1, x3
	xor x9, x4, x2
	add x4, x2, x1
	xor x9, x5, x5
	and x6, x3, x7
	sltu x7, x1, x3
	add x5, x3, x9
	sll x8, x4, x4
	add x6, x6, x7
	slt x1, x8, x6
	add x4, x5, x3
	sll x8, x1, x4
	sll x9, x6, x2
	sltu x2, x1, x2
	xor x1, x2, x2
	sub x4, x3, x8
	slt x4, x7, x7
	sub x1, x6, x8
	srl x1, x7, x3
	or x4, x4, x1
	srl x5, x1, x5
	sltu x6, x2, x5
	srl x2, x7, x2
	or x7, x5, x3
	sll x9, x4, x8
	slt x7, x4, x4
	srl x1, x2, x5
	srl x5, x7, x4
	or x1, x9, x1
	sll x1, x4, x4
	sub x3, x6, x5
	xor x6, x8, x3
	xor x3, x3, x9
	srl x8, x9, x2
	sub x4, x1, x4
	sub x9, x7, x8
	sub x2, x4, x1
	slt x3, x7, x6
	and x7, x2, x8
	sltu x1, x7, x4
	srl x4, x6, x1
	or x9, x5, x3
	add x5, x4, x2
	sub x4, x8, x6
	sltu x8, x4, x2
	srl x2, x7, x9
	and x8, x6, x7
	sra x8, x5, x7
	add x2, x7, x6
	or x4, x4, x3
	add x6, x7, x8
	and x1, x6, x2
	or x9, x5, x3
	slt x4, x1, x6
	srl x6, x3, x9
	and x1, x9, x8
	xor x2, x6, x1
	sltu x9, x8, x1
	sub x7, x1, x6
	sra x7, x5, x2
	slt x5, x5, x5
	sub x8, x3, x7
	slt x5, x5, x8
	and x8, x1, x4
	sltu x8, x5, x9
	sra x3, x7, x2
	or x2, x6, x5
	srl x5, x5, x7
	sll x9, x7, x5
	sll x2, x1, x5
	sll x4, x8, x4
	and x1, x9, x2
	sra x1, x7, x5
	add x8, x3, x4
	sltu x6, x8, x7
	sra x1, x3, x2
	or x4, x4, x9
	xor x4, x3, x8
	sra x2, x1, x9
	sra x1, x2, x8
	sll x4, x7, x9
	slt x2, x3, x2
	srl x4, x1, x9
	add x3, x8, x9
	sll x4, x1, x9
	sra x9, x9, x2
	sra x9, x8, x8
	add x4, x5, x6
	slt x2, x5, x4
	or x1, x3, x3
	or x1, x3, x6
	sub x9, x1, x4
	sll x8, x2, x3
	add x2, x5, x7
	sltu x6, x5, x8
	or x7, x9, x3
	sra x2, x8, x4
	sra x7, x1, x2
	or x3, x8, x4
	sll x7, x4, x8
	add x2, x3, x8
	sub x2, x2, x7
	srl x2, x2, x1
	add x5, x4, x8
	srl x4, x2, x1
	sltu x1, x7, x3
	sra x5, x3, x8
	srl x2, x1, x5
	xor x7, x1, x1
	xor x1, x9, x3
	sub x5, x2, x3
	slt x5, x1, x4
	and x7, x7, x9
	and x9, x1, x9
	or x9, x1, x6
	sll x6, x6, x7
	and x7, x1, x3
	and x5, x6, x3
	slt x7, x1, x4
	sltu x4, x5, x7
	xor x5, x8, x6
	srl x2, x8, x2
	and x6, x8, x3
	sra x5, x9, x3
	add x7, x7, x1
	sra x9, x1, x5
	sltu x1, x9, x5
	srl x3, x2, x3
	and x6, x4, x6
	or x1, x3, x7
	xor x7, x6, x5
	sub x7, x3, x2
	xor x6, x8, x9
	slt x6, x5, x8
	sltu x8, x2, x5
	slt x3, x8, x2
	and x8, x1, x5
	add x8, x2, x4
	slt x1, x9, x3
	add x3, x8, x4
	slt x5, x8, x2
	and x5, x8, x6
	sltu x2, x9, x9
	sub x7, x9, x8
	xor x4, x9, x2
	slt x2, x9, x4
	sub x7, x1, x1
	or x7, x1, x6
	slt x6, x2, x8
	add x9, x5, x7
	xor x5, x2, x4
	sll x5, x4, x2
	srl x5, x6, x7
	or x1, x9, x6
	sra x9, x2, x6
	slt x3, x7, x1
	srl x7, x6, x3
	and x5, x1, x4
	add x9, x6, x2
	slt x7, x2, x4
	sra x3, x9, x8
	or x5, x3, x7
	sll x4, x6, x8
	slt x8, x7, x6
	and x1, x5, x6
	add x9, x4, x8
	and x3, x4, x8
	xor x7, x3, x5
	srl x3, x7, x6
	or x6, x9, x2
	sltu x7, x2, x9
	xor x9, x2, x1
	sll x4, x7, x9
	slt x2, x5, x1
	and x7, x8, x4
	xor x8, x2, x9
	sub x7, x9, x2
	slt x7, x2, x3
	slt x6, x9, x4
	and x1, x9, x2
	add x5, x4, x2
	xor x4, x9, x6
	slt x2, x3, x1
	sll x6, x2, x4
	sll x9, x4, x8
	sll x1, x9, x6
	add x4, x4, x1
	and x7, x6, x7
	sub x5, x7, x1
	sra x2, x5, x6
	sub x2, x2, x2
	xor x7, x8, x9
	and x5, x6, x2
	sra x6, x8, x4
	xor x2, x4, x2
	sll x1, x8, x4
	sltu x3, x5, x8
	or x5, x7, x4
	sltu x9, x4, x5
	sll x5, x3, x4
	slt x3, x6, x3
	add x2, x6, x6
	or x6, x3, x2
	or x2, x4, x1
	sra x6, x3, x6
	sub x5, x4, x4
	or x1, x4, x5
	sra x5, x1, x3
	sra x9, x3, x5
	add x5, x4, x6
	srl x9, x2, x6
	sub x4, x2, x8
	sra x1, x2, x4
	and x3, x5, x6
	slt x4, x9, x4
	or x6, x6, x3
	xor x3, x3, x1
	sra x7, x2, x2
	sub x1, x8, x8
	sltu x2, x4, x9
	or x3, x7, x9
	and x7, x7, x8
	add x8, x1, x8
	sll x4, x3, x7
	sltu x7, x8, x3
	sltu x9, x5, x1
	and x8, x2, x5
	srl x1, x1, x6
	sll x7, x6, x6
	slt x8, x2, x5
	add x8, x1, x5
	slt x7, x4, x4
	srl x7, x7, x6
	or x6, x1, x6
	add x6, x5, x8
	slt x7, x2, x8
	xor x7, x5, x5
	and x8, x4, x2
	slt x4, x2, x2
	add x1, x4, x7
	sub x4, x2, x5
	sll x7, x5, x7
	xor x8, x7, x3
	slt x8, x4, x4
	sra x8, x9, x3
	sltu x1, x1, x1
	sub x1, x9, x2
	sll x2, x5, x9
	slt x8, x1, x2
	xor x7, x7, x6
	sltu x1, x6, x4
	and x2, x1, x1
	slt x2, x8, x7
	sll x6, x2, x1
	sltu x2, x7, x8
	xor x7, x1, x9
	xor x7, x1, x2
	xor x9, x4, x3
	slt x2, x2, x7
	sub x6, x5, x1
	sll x9, x3, x7
	add x9, x1, x6
	and x7, x8, x3
	sub x5, x2, x6
	sub x8, x8, x7
	slt x8, x1, x2
	sltu x6, x1, x9
	xor x7, x9, x2
	add x8, x6, x1
	sra x9, x6, x5
	or x1, x7, x6
	or x9, x8, x6
	sltu x1, x4, x2
	xor x5, x2, x7
	xor x8, x7, x6
	slt x5, x9, x4
	or x2, x4, x6
	xor x1, x7, x6
	slt x1, x1, x1
	xor x4, x2, x6
	sltu x9, x1, x4
	sra x8, x8, x4
	sub x6, x4, x8
	add x1, x7, x3
	or x2, x2, x5
	and x1, x7, x1
	xor x7, x1, x5
	sll x5, x3, x9
	sltu x2, x7, x2
	xor x8, x5, x4
	or x3, x7, x5
	or x6, x4, x8
	and x4, x8, x3
	xor x2, x5, x2
	slt x4, x6, x6
	or x4, x7, x2
	slt x2, x1, x9
	add x6, x7, x6
	sll x8, x1, x9
	sll x3, x8, x7
	srl x7, x4, x3
	and x3, x4, x2
	sub x7, x2, x2
	slt x3, x4, x8
	xor x5, x8, x4
	slt x9, x2, x9
	sll x8, x4, x2
	sra x3, x6, x4
	or x4, x8, x5
	or x7, x6, x9
	sub x3, x9, x6
	or x8, x3, x9
	slt x9, x7, x2
	or x1, x1, x9
	and x4, x9, x3
	or x1, x7, x3
	srl x5, x9, x9
	and x3, x1, x9
	sltu x1, x7, x9
	and x4, x4, x2
	sra x9, x4, x1
	srl x9, x5, x6
	sra x2, x4, x7
	sub x2, x3, x4
	xor x7, x9, x4
	sltu x4, x4, x3
	sub x4, x7, x7
	sll x8, x5, x3
	sll x6, x4, x7
	or x6, x3, x1
	and x6, x1, x5
	sub x1, x3, x6
	and x7, x9, x3
	sll x1, x4, x7
	sra x4, x6, x1
	xor x8, x1, x2
	and x5, x6, x9
	slt x5, x5, x2
	or x3, x8, x9
	and x9, x7, x8
	or x3, x3, x2
	or x9, x1, x8
	or x7, x3, x4
	or x4, x8, x9
	sll x8, x3, x1
	or x1, x7, x3
	sub x5, x3, x7
	or x7, x2, x5
	sra x8, x5, x9
	add x2, x4, x7
	or x9, x7, x4
	add x7, x1, x5
	sub x5, x1, x4
	sltu x9, x9, x8
	sltu x5, x8, x3
	add x6, x8, x5
	srl x4, x1, x9
	slt x1, x4, x1
	sltu x8, x2, x3
	add x5, x4, x8
	or x6, x7, x5
	or x7, x3, x2
	and x9, x5, x5
	sra x3, x4, x7
	sll x1, x6, x5
	add x1, x3, x5
	or x6, x6, x3
	add x2, x4, x3
	sra x5, x1, x5
	add x8, x4, x8
	or x4, x8, x9
	sltu x7, x8, x2
	sub x4, x2, x3
	srl x2, x2, x6
	sll x7, x1, x8
	sll x3, x4, x9
	srl x2, x7, x4
	or x2, x9, x9
	xor x9, x6, x8
	slt x1, x6, x9
	sll x7, x8, x8
	srl x1, x9, x3
	sub x9, x5, x5
	and x2, x5, x1
	sra x9, x4, x3
	xor x6, x6, x7
	sra x7, x2, x8
	and x8, x4, x1
	sra x6, x9, x3
	sltu x9, x5, x2
	sra x1, x1, x2
	sub x5, x1, x3
	sub x9, x8, x9
	or x6, x2, x7
	and x7, x7, x5
	sll x1, x9, x9
	sra x9, x6, x5
	sub x8, x3, x9
	sra x7, x4, x1
	add x7, x4, x9
	srl x3, x8, x1
	sltu x8, x5, x6
	and x5, x6, x3
	slt x1, x4, x3
	sra x9, x1, x6
	slt x4, x7, x6
	sub x2, x6, x2
	sll x2, x1, x1
	sub x5, x3, x3
	add x5, x4, x4
	xor x9, x1, x4
	xor x9, x3, x7
	slt x5, x9, x2
	or x3, x4, x5
	sub x4, x7, x9
	and x8, x8, x5
	sra x1, x5, x2
	srl x9, x3, x3
	sra x1, x1, x6
	add x7, x3, x7
	sra x9, x1, x5
	xor x6, x3, x7
	sra x7, x2, x3
	srl x1, x6, x1
	or x5, x2, x4
	slt x4, x2, x6
	xor x4, x1, x6
	sll x9, x9, x5
	sltu x7, x3, x9
	xor x6, x7, x9
	sll x9, x5, x5
	sltu x1, x4, x9
	sra x3, x6, x8
	slt x2, x3, x1
	sll x3, x8, x4
	sltu x6, x2, x5
	sll x1, x9, x2
	sub x9, x9, x7
	slt x3, x2, x8
	add x4, x2, x6
	sltu x5, x1, x6
	sra x5, x1, x8
	slt x8, x3, x8
	and x3, x6, x9
	srl x7, x6, x1
	slt x4, x2, x6
	slt x2, x3, x6
	srl x2, x2, x5
	xor x6, x9, x8
	and x7, x2, x1
	sltu x3, x4, x8
	sub x7, x8, x9
	and x9, x9, x7
	srl x7, x2, x8
	and x8, x9, x3
	sub x7, x2, x4
	slt x2, x3, x4
	sra x3, x8, x1
	sltu x2, x9, x1
	sra x9, x1, x7
	or x7, x9, x8
	add x7, x3, x7
	sltu x9, x5, x8
	sra x4, x2, x8
	xor x6, x4, x5
	sltu x8, x1, x4
	sltu x5, x4, x7
	and x4, x4, x7
	sll x9, x4, x2
	srl x7, x6, x3
	sltu x7, x5, x9
	or x5, x8, x7
	add x8, x2, x7
	sll x6, x7, x1
	slt x5, x9, x6
	or x6, x5, x2
	xor x1, x3, x7
_fjump2:
	xor x2, x1, x8
	add x7, x9, x1
	sub x9, x9, x3
	sub x4, x4, x5
	sub x1, x9, x9
	sltu x8, x9, x6
	sra x7, x7, x6
	sltu x2, x1, x9
	sra x1, x6, x1
	and x6, x5, x8
	or x2, x4, x3
	sll x7, x3, x2
	sub x6, x6, x1
	add x4, x3, x6
	sub x1, x6, x7
	slt x7, x4, x7
	and x4, x2, x6
	sra x6, x8, x1
	sll x3, x8, x9
	add x4, x4, x4
	jal x2, _fjump3
	srl x4, x8, x1
	xor x9, x1, x1
	add x7, x8, x9
	add x9, x1, x5
	and x1, x1, x1
	srl x2, x9, x5
	xor x4, x6, x8
	sll x7, x4, x2
	slt x9, x3, x1
	sll x3, x9, x1
	and x6, x6, x1
	sll x7, x3, x1
	srl x3, x8, x3
	slt x8, x5, x6
	sra x8, x8, x6
	add x4, x8, x5
	or x2, x6, x9
	sub x6, x3, x2
	xor x6, x5, x7
	sltu x8, x4, x3
	sll x7, x2, x5
	and x7, x9, x7
	xor x3, x9, x9
	srl x3, x6, x5
	srl x3, x8, x7
	sra x2, x7, x3
	slt x2, x3, x4
	sub x6, x4, x8
	or x8, x3, x9
	sra x2, x3, x7
	sra x5, x4, x6
	add x3, x5, x3
	sltu x3, x5, x1
	add x1, x3, x1
	slt x5, x4, x9
	and x3, x1, x7
	and x1, x6, x6
	and x3, x8, x1
	srl x6, x7, x4
	sltu x8, x3, x2
	srl x5, x1, x1
	srl x6, x8, x5
	sll x3, x8, x4
	or x2, x9, x8
	srl x8, x2, x3
	sra x8, x4, x6
	srl x7, x5, x2
	srl x1, x7, x3
	sra x8, x5, x3
	srl x8, x6, x2
	sll x7, x2, x2
	sltu x3, x4, x8
	sub x1, x8, x6
	add x8, x5, x8
	srl x6, x5, x7
	and x7, x4, x4
	srl x4, x2, x5
	sra x8, x2, x9
	xor x1, x9, x2
	sltu x8, x3, x5
	sll x5, x8, x1
	slt x8, x2, x9
	sra x3, x6, x6
	sub x3, x4, x5
	slt x8, x8, x7
	sltu x1, x5, x5
	xor x8, x6, x7
	sll x9, x5, x6
	or x7, x6, x4
	srl x3, x4, x5
	slt x2, x2, x2
	sll x7, x4, x4
	slt x4, x2, x6
	xor x7, x5, x1
	or x9, x6, x9
	sra x8, x6, x3
	add x3, x1, x9
	and x9, x5, x6
	sll x8, x7, x4
	or x7, x4, x5
	and x4, x6, x2
	srl x7, x7, x3
	sll x5, x6, x3
	and x4, x4, x3
	sltu x6, x9, x1
	slt x4, x4, x6
	sltu x6, x2, x6
	or x7, x6, x8
	slt x3, x5, x5
	sra x2, x9, x6
	or x9, x8, x5
	or x4, x3, x1
	sub x3, x9, x8
	sub x1, x8, x4
	xor x8, x3, x8
	sub x3, x5, x8
	srl x5, x4, x5
	sll x5, x5, x2
	sltu x1, x5, x7
	add x9, x3, x3
	srl x5, x5, x2
	sra x6, x5, x8
	sltu x6, x1, x8
	xor x2, x8, x3
	and x2, x5, x3
	xor x9, x2, x1
	or x3, x9, x2
	and x7, x8, x3
	sll x2, x7, x6
	sub x7, x9, x9
	xor x8, x7, x2
	sltu x8, x9, x8
	or x7, x2, x3
	sra x3, x3, x9
	or x5, x6, x5
	or x4, x5, x3
	sltu x7, x2, x3
	and x1, x3, x3
	add x7, x8, x9
	srl x7, x9, x5
	srl x8, x6, x9
	add x2, x1, x4
	sltu x5, x1, x6
	add x6, x7, x9
	add x5, x3, x9
	sltu x9, x2, x3
	and x6, x8, x7
	sltu x1, x6, x3
	and x7, x2, x8
	srl x1, x8, x4
	sltu x1, x5, x3
	sra x7, x8, x9
	slt x3, x6, x1
	sltu x1, x5, x5
	or x9, x3, x9
	or x5, x2, x9
	xor x1, x4, x2
	srl x8, x7, x3
	xor x2, x5, x1
	slt x9, x8, x2
	sll x4, x7, x3
	sll x9, x8, x2
	add x6, x2, x2
	and x3, x6, x3
	sub x9, x8, x2
	sll x7, x9, x4
	sub x6, x8, x4
	srl x7, x7, x1
	add x5, x5, x4
	sub x6, x5, x4
	sltu x5, x4, x4
	and x7, x2, x4
	or x5, x3, x7
	sub x3, x1, x6
	sltu x7, x7, x8
	and x4, x9, x8
	sltu x6, x2, x3
	or x5, x8, x5
	sll x8, x1, x9
	sub x1, x2, x9
	sra x1, x4, x2
	or x3, x2, x5
	xor x9, x4, x9
	sub x6, x4, x2
	sltu x6, x2, x7
	slt x8, x3, x9
	sll x8, x6, x1
	sra x2, x7, x6
	sra x1, x4, x4
	sll x5, x5, x5
	or x6, x8, x2
	slt x4, x6, x2
	sra x7, x9, x8
	srl x2, x1, x4
	xor x2, x5, x2
	slt x2, x7, x3
	xor x9, x9, x5
	sltu x6, x8, x2
	sra x5, x9, x3
	or x9, x9, x8
	sltu x8, x9, x4
	sltu x4, x7, x5
	and x2, x6, x9
	xor x8, x9, x5
	slt x3, x7, x4
	and x1, x6, x2
	or x2, x7, x9
	add x7, x1, x2
	add x3, x7, x9
	xor x2, x4, x3
	add x7, x3, x7
	add x5, x4, x2
	sltu x7, x8, x8
	add x3, x5, x6
	sub x3, x2, x2
	add x2, x4, x9
	and x8, x5, x4
	sra x1, x9, x8
	sub x4, x1, x7
	and x9, x4, x1
	sub x6, x5, x2
	or x6, x8, x3
	slt x4, x8, x6
	sltu x8, x4, x1
	or x9, x5, x9
	slt x1, x7, x6
	sll x2, x5, x3
	slt x5, x2, x7
	or x4, x1, x4
	sll x2, x9, x4
	slt x3, x4, x2
	sltu x6, x7, x7
	xor x3, x6, x5
	sltu x9, x4, x7
	or x7, x5, x1
	or x2, x3, x1
	srl x6, x5, x6
	srl x3, x4, x4
	sll x1, x9, x4
	slt x6, x4, x7
	add x5, x7, x3
	add x4, x9, x2
	or x9, x9, x5
	sub x9, x1, x9
	and x3, x9, x5
	sll x8, x6, x6
	xor x2, x3, x4
	sub x8, x2, x7
	xor x1, x6, x8
	slt x4, x9, x5
	or x2, x7, x2
	sra x8, x4, x5
	and x7, x6, x5
	sra x5, x2, x4
	add x6, x7, x9
	srl x5, x4, x9
	xor x2, x6, x3
	xor x9, x8, x9
	srl x4, x8, x2
	xor x9, x5, x9
	sub x1, x7, x9
	sub x8, x5, x6
	sll x3, x5, x7
	sltu x2, x7, x1
	xor x3, x1, x8
	slt x1, x2, x1
	sltu x7, x6, x1
	sra x9, x3, x6
	and x6, x3, x7
	srl x1, x5, x8
	slt x2, x4, x4
	add x3, x1, x9
	and x7, x2, x3
	sltu x4, x1, x2
	or x5, x5, x3
	and x5, x6, x7
	sltu x7, x3, x1
	and x1, x3, x2
	add x8, x9, x3
	sll x3, x2, x6
	sll x5, x2, x3
	srl x4, x6, x9
	srl x4, x3, x9
	sll x9, x8, x9
	sltu x3, x8, x9
	xor x6, x6, x8
	sub x6, x8, x7
	slt x7, x7, x5
	or x1, x6, x7
	srl x5, x6, x7
	sltu x7, x6, x8
	sra x3, x9, x8
	slt x8, x5, x2
	sll x3, x8, x8
	sll x3, x6, x5
	add x8, x6, x9
	sltu x1, x3, x9
	xor x8, x2, x1
	sra x7, x8, x5
	xor x6, x4, x6
	or x4, x3, x4
	or x1, x6, x4
	sra x4, x7, x9
	and x6, x2, x1
	slt x2, x8, x6
	slt x5, x5, x5
	sll x2, x2, x3
	or x7, x6, x3
	sll x1, x4, x9
	slt x7, x8, x1
	or x1, x8, x8
	sra x3, x9, x7
	and x4, x2, x9
	sltu x7, x2, x2
	and x8, x6, x7
	slt x1, x1, x7
	and x5, x1, x2
	sra x8, x4, x6
	sra x4, x1, x5
	xor x7, x8, x5
	add x2, x1, x5
	add x3, x2, x5
	srl x9, x1, x1
	sltu x8, x1, x5
	sub x5, x7, x9
	add x7, x8, x8
	and x6, x8, x2
	or x8, x6, x6
	sub x3, x9, x6
	add x9, x1, x2
	sltu x5, x7, x3
	slt x3, x5, x9
	sltu x3, x7, x1
	sltu x1, x3, x5
	xor x5, x1, x9
	slt x1, x2, x6
	sll x1, x2, x5
	sll x7, x6, x5
	and x3, x9, x1
	or x7, x1, x3
	or x1, x8, x6
	sll x7, x4, x2
	sra x7, x7, x7
	slt x4, x1, x4
	sll x4, x6, x7
	sub x9, x4, x6
	slt x8, x2, x1
	and x1, x1, x4
	srl x7, x9, x7
	sub x2, x9, x3
	xor x7, x3, x7
	sub x3, x5, x6
	xor x3, x6, x5
	xor x6, x7, x7
	xor x4, x8, x4
	sll x3, x4, x2
	sltu x6, x3, x2
	add x9, x7, x5
	xor x2, x2, x9
	and x4, x6, x5
	slt x2, x4, x4
	or x7, x3, x2
	or x2, x4, x9
	slt x6, x4, x4
	and x3, x8, x2
	sltu x2, x1, x1
	sltu x1, x7, x5
	xor x1, x7, x6
	and x1, x4, x6
	sra x6, x2, x7
	sra x4, x9, x9
	add x8, x5, x7
	sub x5, x5, x3
	add x2, x6, x9
	and x7, x7, x6
	sra x2, x5, x8
	slt x8, x2, x8
	srl x6, x5, x2
	sll x1, x9, x4
	srl x1, x5, x7
	sll x6, x2, x7
	sub x9, x9, x5
	sra x4, x2, x4
	sub x7, x9, x5
	srl x5, x9, x9
	sra x7, x8, x6
	xor x8, x7, x5
	or x3, x4, x4
	xor x2, x9, x1
	srl x6, x1, x7
	srl x4, x5, x8
	sll x1, x5, x7
	sra x1, x4, x1
	srl x9, x6, x9
	or x3, x5, x6
	sra x9, x6, x7
	sll x9, x3, x7
	sub x3, x9, x4
	or x2, x1, x6
	sub x9, x9, x4
	add x9, x2, x4
	sll x8, x9, x3
	slt x3, x5, x4
	add x3, x4, x6
	srl x6, x5, x7
	srl x7, x8, x6
	and x4, x8, x6
	xor x6, x5, x2
	xor x7, x4, x5
	add x7, x6, x9
	sll x9, x6, x1
	and x2, x6, x8
	sltu x3, x6, x3
	xor x5, x6, x1
	xor x3, x3, x2
	slt x3, x9, x7
	srl x8, x8, x6
	sub x8, x4, x5
	sltu x1, x9, x1
	sra x1, x1, x9
	sub x6, x1, x1
	sub x2, x4, x6
	add x4, x3, x5
	sub x7, x3, x4
	sltu x8, x7, x2
	sra x2, x7, x6
	or x6, x8, x5
	sltu x3, x3, x9
	slt x1, x6, x6
	sll x7, x1, x3
	sub x1, x6, x1
	sltu x3, x9, x9
	slt x2, x8, x8
	sra x1, x3, x3
	sra x4, x5, x4
	xor x1, x7, x2
	sra x9, x4, x6
	sll x8, x9, x9
	sltu x7, x8, x1
	sra x1, x6, x6
	sll x4, x4, x6
	sra x3, x8, x4
	slt x5, x7, x6
	slt x7, x6, x6
	or x1, x1, x7
	and x1, x1, x2
	add x4, x8, x7
	sub x9, x8, x4
	sub x2, x1, x5
	xor x5, x5, x6
	or x1, x3, x2
	sub x6, x8, x2
	srl x6, x7, x1
	sll x1, x6, x6
	sll x3, x8, x6
	sub x2, x6, x3
	xor x7, x1, x5
	xor x5, x1, x1
	xor x3, x8, x4
	xor x9, x9, x4
	add x9, x1, x8
	sltu x6, x4, x7
	sub x7, x6, x1
	or x5, x1, x5
	slt x6, x8, x8
	srl x7, x8, x7
	slt x4, x3, x7
	sra x2, x1, x4
	sltu x4, x3, x8
	sll x9, x1, x4
	sll x2, x5, x2
	sra x3, x9, x8
	add x3, x8, x6
	slt x6, x5, x8
	srl x5, x2, x7
	srl x9, x5, x6
	sltu x9, x2, x9
	srl x6, x9, x2
	or x2, x6, x2
	and x9, x9, x1
	xor x5, x7, x3
	sra x3, x5, x8
	sub x4, x5, x3
	and x2, x2, x7
	or x1, x6, x2
	xor x2, x8, x3
	sra x7, x2, x5
	sll x7, x1, x2
	and x4, x9, x4
	srl x8, x2, x2
	sll x6, x5, x8
	xor x5, x3, x5
	or x1, x6, x1
	sra x7, x6, x3
	srl x8, x7, x1
	sll x7, x9, x2
	sltu x8, x7, x3
	srl x4, x9, x2
	or x7, x3, x2
	xor x1, x4, x4
	xor x2, x2, x1
	sltu x3, x2, x6
	sltu x3, x6, x6
	add x6, x8, x2
	slt x2, x4, x9
	slt x8, x4, x7
	sub x9, x7, x5
	sra x1, x5, x6
	srl x8, x5, x7
	or x4, x9, x1
	sll x9, x4, x2
	sltu x3, x7, x8
	sra x5, x5, x7
	sll x2, x9, x9
	srl x5, x7, x1
	add x5, x7, x3
	xor x6, x3, x7
	add x3, x7, x8
	sltu x9, x5, x2
	or x1, x2, x2
	sub x4, x1, x6
	slt x1, x4, x5
	sub x2, x5, x6
	and x4, x4, x5
	sltu x8, x1, x1
	xor x9, x9, x5
	and x3, x3, x4
	srl x5, x2, x3
	slt x2, x6, x1
	sltu x9, x9, x4
	add x9, x1, x3
	srl x6, x5, x7
	and x7, x1, x3
	sltu x1, x7, x8
	sll x9, x8, x2
	slt x2, x2, x7
	and x6, x1, x1
	sltu x6, x9, x5
	sltu x6, x7, x5
	sub x6, x7, x5
	sltu x1, x3, x7
	add x6, x2, x3
	or x5, x8, x3
	sra x3, x8, x1
	and x3, x3, x6
	srl x3, x4, x8
	sltu x2, x5, x3
	or x5, x2, x4
	and x8, x9, x4
	slt x4, x3, x5
	and x4, x4, x8
	sra x7, x1, x6
	sltu x9, x3, x2
	and x5, x4, x4
	or x4, x1, x6
	or x2, x5, x7
	xor x3, x6, x2
	sll x3, x1, x1
	and x1, x7, x7
	xor x4, x8, x3
	sra x7, x9, x1
	sub x3, x7, x7
	sra x4, x7, x7
	sll x5, x2, x3
	sltu x9, x2, x7
	slt x6, x9, x4
	sra x1, x8, x7
	slt x9, x2, x9
	sll x2, x9, x5
	or x5, x1, x5
	add x7, x2, x9
	or x7, x8, x7
	sub x6, x2, x3
	srl x3, x2, x6
	add x6, x3, x9
	sll x9, x1, x3
	and x5, x8, x8
	sub x7, x5, x3
	and x7, x6, x4
	sra x6, x4, x9
	srl x3, x6, x2
	srl x3, x5, x6
	and x6, x1, x9
	or x5, x7, x6
	sra x4, x4, x3
	add x7, x6, x2
	sll x1, x4, x2
	xor x9, x5, x4
	slt x4, x5, x9
	sra x9, x2, x9
	slt x6, x2, x4
	sub x8, x9, x9
	add x8, x8, x1
	xor x6, x5, x1
	sltu x4, x7, x8
	sra x2, x6, x8
	and x2, x5, x5
	sll x3, x7, x6
	xor x6, x7, x1
	slt x6, x3, x8
	slt x2, x5, x7
	slt x9, x6, x3
	sra x7, x6, x7
	slt x2, x2, x9
	sra x8, x2, x9
	srl x6, x8, x6
	xor x2, x9, x1
	sll x2, x8, x7
	sltu x3, x8, x6
	xor x8, x5, x3
	add x1, x1, x9
	sub x8, x7, x1
	xor x3, x7, x2
	and x9, x1, x9
	slt x7, x5, x3
	srl x1, x2, x2
	sll x1, x3, x9
	and x1, x8, x6
	slt x4, x4, x4
	srl x3, x3, x7
	sra x9, x7, x4
	sub x9, x4, x1
	slt x2, x1, x9
	slt x3, x1, x5
	or x2, x3, x6
	add x5, x9, x2
	or x8, x7, x4
	srl x6, x1, x2
	srl x9, x7, x5
	sltu x2, x1, x9
	sra x6, x2, x5
	add x9, x2, x6
	and x6, x2, x1
	sra x5, x1, x9
	add x2, x8, x2
	and x9, x7, x5
	srl x5, x6, x8
	and x6, x4, x1
	srl x1, x3, x1
	sltu x5, x9, x7
	sra x3, x9, x9
	add x3, x6, x9
	xor x6, x5, x2
	add x6, x2, x2
	slt x8, x6, x3
	add x1, x9, x4
	sub x9, x4, x2
	add x2, x2, x2
	slt x5, x1, x9
	slt x5, x5, x3
	sub x1, x5, x3
	sub x7, x2, x6
	sub x4, x1, x8
	and x4, x4, x5
	slt x2, x9, x4
	and x3, x6, x2
	srl x4, x5, x1
	add x7, x8, x8
	sltu x1, x6, x9
	add x4, x6, x9
	sll x5, x2, x6
	sltu x1, x6, x9
	slt x1, x5, x5
	sll x4, x8, x5
	sltu x8, x1, x4
	sra x7, x4, x3
	sra x7, x5, x1
	and x9, x8, x8
	add x1, x8, x9
	slt x6, x6, x3
	sra x8, x4, x2
	slt x9, x3, x5
	sltu x6, x8, x3
	srl x7, x8, x2
	sll x5, x1, x8
	sll x8, x8, x6
	and x8, x2, x5
	or x1, x6, x1
	add x2, x4, x6
	sll x8, x1, x3
	sll x5, x4, x2
	sltu x9, x5, x2
	xor x9, x9, x9
	sub x6, x1, x7
	slt x7, x7, x9
	slt x4, x3, x5
	sra x3, x8, x8
	and x1, x9, x1
	srl x7, x4, x8
	sll x8, x6, x1
	sll x1, x9, x2
	sltu x6, x1, x8
	and x4, x5, x8
	sltu x9, x5, x7
	sra x6, x7, x8
	sra x9, x1, x2
	and x3, x2, x9
	sltu x3, x3, x4
	sll x9, x2, x4
	sll x1, x9, x3
	xor x6, x2, x7
	and x8, x2, x6
	xor x2, x9, x3
	or x2, x9, x1
	srl x5, x4, x6
	sll x1, x7, x9
	sub x6, x1, x3
	sra x7, x2, x4
	xor x2, x8, x6
	add x7, x5, x5
	srl x6, x3, x8
	sra x7, x4, x7
	xor x2, x8, x9
	xor x1, x2, x5
	sub x7, x3, x9
	and x7, x8, x1
	and x7, x4, x7
	and x1, x3, x6
	sll x9, x7, x7
	sra x5, x2, x1
	sll x2, x4, x4
	srl x6, x7, x4
	slt x4, x6, x8
	srl x1, x6, x1
	add x9, x1, x6
	add x9, x8, x2
	or x2, x6, x6
	sra x3, x5, x9
	srl x4, x7, x9
	sra x2, x8, x6
	add x8, x6, x1
	or x9, x2, x2
	sll x1, x4, x9
	or x7, x1, x2
	add x2, x8, x3
	srl x3, x6, x8
	sub x4, x3, x3
	sra x3, x5, x9
	add x7, x6, x7
	or x6, x4, x2
	xor x5, x1, x8
	xor x6, x8, x2
	sltu x7, x1, x5
	slt x8, x3, x4
	add x8, x1, x5
	sll x9, x9, x5
	or x5, x4, x7
	sub x8, x6, x9
	xor x1, x4, x7
	slt x6, x9, x2
	sll x9, x2, x7
	srl x5, x4, x3
	srl x7, x6, x4
	sltu x3, x9, x3
	sra x4, x3, x2
	or x1, x5, x2
	or x5, x6, x2
	sltu x4, x9, x5
	sltu x2, x6, x3
	srl x3, x4, x3
	sub x1, x1, x1
	add x4, x1, x8
	sll x6, x8, x7
	and x7, x6, x6
	sra x7, x5, x1
	sll x7, x4, x1
	sltu x5, x6, x5
	and x1, x2, x7
	sll x9, x6, x5
	or x2, x7, x2
	sltu x5, x7, x3
	add x3, x5, x8
	add x4, x3, x9
	sll x7, x9, x4
	sub x7, x7, x8
	xor x1, x7, x3
	slt x7, x9, x5
	sub x7, x7, x1
	and x4, x4, x7
	xor x1, x2, x9
	srl x3, x3, x1
	sll x6, x5, x2
	sltu x6, x9, x9
	add x4, x9, x7
	sra x3, x3, x2
	srl x8, x4, x3
	xor x7, x5, x8
	xor x1, x7, x4
	or x4, x7, x9
	and x9, x4, x4
	sll x2, x8, x5
	sub x4, x7, x4
	slt x4, x7, x5
	or x8, x4, x9
	or x7, x1, x9
	sub x4, x1, x5
	xor x1, x7, x6
	xor x3, x8, x4
	sra x2, x8, x1
	and x1, x3, x5
	slt x2, x8, x6
	and x9, x2, x9
	sra x8, x2, x8
	and x2, x5, x2
	add x3, x2, x9
	slt x6, x2, x4
	sll x6, x2, x5
	or x5, x6, x9
	xor x4, x3, x4
	xor x4, x3, x5
	or x4, x7, x2
	sra x3, x7, x6
	sll x8, x2, x5
	slt x9, x9, x7
	and x5, x3, x5
	and x3, x7, x3
	and x7, x8, x1
	sra x8, x2, x6
	sra x8, x3, x4
	sub x6, x4, x5
	xor x8, x7, x2
	sll x8, x2, x7
	sra x2, x5, x7
	sra x7, x5, x2
	add x8, x8, x1
	sra x4, x9, x5
	sub x6, x2, x9
	slt x2, x4, x2
	srl x2, x9, x2
	xor x7, x8, x4
	add x9, x6, x8
	sra x3, x9, x6
	or x9, x4, x4
	srl x9, x4, x4
	or x3, x9, x1
	srl x8, x9, x5
	sra x4, x3, x5
	and x1, x9, x7
	add x8, x4, x7
	sub x5, x5, x6
	sltu x2, x3, x3
	slt x7, x8, x8
	or x8, x7, x9
	or x9, x7, x8
	or x9, x8, x1
	sub x8, x7, x6
	and x3, x1, x5
	xor x2, x5, x2
	sll x4, x1, x8
	sll x9, x3, x3
	srl x6, x4, x3
	xor x8, x8, x1
	sub x5, x3, x4
	srl x9, x3, x1
	sra x6, x4, x9
	and x3, x2, x1
	add x8, x3, x4
	xor x9, x2, x4
	add x3, x7, x7
	slt x3, x5, x1
	sra x1, x5, x4
	xor x9, x3, x5
	sra x8, x1, x5
	or x9, x7, x3
	and x3, x2, x4
	xor x7, x5, x5
	add x8, x3, x3
	slt x9, x9, x4
	sll x1, x8, x1
	sra x2, x8, x2
	srl x7, x6, x1
	add x1, x4, x1
	add x9, x7, x1
	slt x5, x2, x1
	or x5, x7, x4
	sll x5, x2, x3
	add x4, x3, x6
	or x4, x7, x3
	sub x1, x2, x2
	slt x8, x8, x1
	slt x1, x1, x7
	xor x6, x4, x9
	sub x8, x6, x4
	and x5, x6, x5
	sra x1, x8, x7
	sll x9, x6, x5
	or x4, x4, x2
	and x8, x6, x2
	sll x2, x8, x7
	sub x3, x9, x9
	and x5, x3, x6
	sltu x5, x6, x5
	slt x6, x9, x8
	xor x9, x6, x5
	slt x4, x2, x4
	or x3, x5, x3
	sub x4, x5, x2
	sub x3, x9, x8
	srl x7, x8, x2
	sra x9, x3, x4
	and x6, x6, x2
	sll x9, x9, x2
	slt x7, x3, x2
	srl x5, x6, x3
	srl x3, x3, x3
	sra x3, x3, x7
	and x8, x7, x4
	or x8, x4, x1
	sll x6, x3, x3
	sll x2, x7, x4
	xor x6, x5, x2
	srl x7, x4, x8
	srl x1, x5, x6
	sltu x4, x6, x1
	sub x2, x6, x3
	add x5, x5, x8
	add x2, x6, x5
	xor x3, x8, x7
	sub x2, x7, x9
	sub x7, x6, x6
	slt x8, x3, x6
	or x2, x1, x6
	sub x1, x7, x3
	or x9, x4, x9
	sll x5, x7, x6
	slt x3, x7, x1
	add x1, x7, x2
	sltu x5, x4, x4
	add x5, x1, x6
	and x2, x5, x4
	srl x9, x7, x5
	sub x7, x3, x5
	sll x8, x7, x2
	slt x3, x7, x1
	sltu x4, x3, x4
	sll x2, x3, x8
	srl x1, x7, x5
	or x1, x8, x6
	sra x8, x2, x5
	add x7, x9, x8
	sltu x6, x3, x7
	and x5, x5, x7
	sll x4, x4, x7
	slt x4, x1, x5
	or x4, x6, x1
	or x6, x8, x2
	or x7, x4, x5
	sra x4, x5, x2
	sra x6, x5, x3
	add x7, x9, x6
	xor x4, x5, x7
	sub x3, x6, x1
	sra x3, x5, x5
	or x7, x2, x5
	slt x5, x5, x6
	sra x8, x8, x1
	or x7, x6, x5
	sra x2, x3, x8
	sll x1, x8, x1
	add x3, x3, x9
	or x3, x5, x4
	xor x8, x2, x1
	sra x7, x3, x2
	add x7, x2, x1
	sub x9, x1, x2
	sub x4, x7, x1
	xor x8, x2, x5
	sra x1, x7, x9
	sltu x2, x7, x5
	add x5, x2, x3
	sub x5, x8, x5
	sll x5, x7, x8
	sra x8, x6, x5
	slt x3, x6, x4
	srl x7, x1, x6
	or x1, x9, x8
	srl x6, x4, x8
	or x7, x5, x9
	and x3, x3, x2
	sub x8, x7, x9
	sll x5, x2, x4
	srl x8, x3, x6
	slt x3, x4, x6
	xor x6, x8, x4
	sll x8, x3, x2
	sra x1, x3, x8
	xor x3, x6, x9
	or x1, x1, x4
	sll x3, x6, x1
	or x3, x6, x8
	xor x1, x4, x9
	sll x2, x1, x9
	or x4, x1, x3
	srl x6, x9, x8
	sub x3, x3, x1
	add x6, x4, x8
	or x9, x9, x1
	srl x1, x9, x4
	sub x4, x2, x4
	or x4, x1, x3
	and x2, x4, x7
	add x8, x5, x1
	srl x9, x5, x9
	or x8, x4, x4
	srl x5, x8, x4
	add x9, x2, x9
	sra x3, x5, x9
	sra x1, x9, x1
	srl x1, x8, x3
	sll x2, x3, x6
	xor x6, x3, x7
	sub x2, x4, x5
	sll x3, x4, x4
	sltu x8, x5, x2
	sltu x9, x6, x2
	sll x9, x3, x6
	slt x2, x3, x4
	sltu x5, x9, x7
	sra x7, x9, x1
	and x8, x5, x7
	srl x4, x9, x8
	sll x2, x7, x3
	or x4, x4, x2
	sub x4, x6, x5
	xor x9, x1, x4
	add x2, x2, x5
	slt x6, x3, x4
	srl x4, x1, x2
	sub x8, x8, x7
	and x8, x8, x1
	sltu x6, x5, x7
	xor x3, x3, x4
	add x3, x3, x1
	xor x9, x3, x2
	srl x9, x3, x3
	sra x4, x8, x2
	and x6, x8, x1
	sltu x6, x8, x2
	sltu x6, x8, x6
	sll x5, x2, x6
	sub x3, x5, x2
	sll x2, x1, x4
	slt x3, x3, x9
	slt x4, x8, x3
	slt x9, x7, x6
	add x9, x9, x4
	sub x3, x7, x2
	sll x1, x3, x2
	and x7, x9, x9
	sub x7, x8, x2
	sltu x5, x9, x7
	slt x6, x8, x2
	and x9, x6, x6
	slt x7, x9, x7
	and x6, x2, x3
	sll x2, x4, x1
	add x9, x1, x7
	xor x8, x8, x4
	sra x8, x2, x4
	or x2, x7, x9
	xor x6, x3, x5
	and x7, x1, x9
	xor x4, x4, x5
	and x2, x6, x2
	or x4, x8, x2
	srl x8, x8, x9
	sltu x4, x7, x9
	and x5, x3, x3
	xor x9, x5, x8
	sltu x1, x4, x9
	sra x2, x7, x4
	and x2, x7, x2
	sub x1, x7, x2
	slt x1, x3, x7
	xor x6, x1, x2
	or x8, x8, x8
	sltu x9, x3, x4
	and x1, x8, x9
	and x7, x6, x3
	sub x5, x6, x6
	slt x5, x8, x6
	sra x9, x3, x5
	srl x2, x3, x1
	sltu x7, x9, x2
	or x1, x9, x9
	srl x7, x9, x1
	slt x5, x9, x3
	srl x4, x3, x5
	sub x2, x4, x5
	xor x9, x9, x3
	sub x7, x4, x2
	slt x7, x1, x8
	sll x5, x8, x4
	srl x8, x2, x4
	sll x5, x4, x7
	srl x9, x5, x6
	slt x1, x8, x9
	srl x7, x8, x8
	sub x5, x8, x5
	sll x6, x8, x8
	and x2, x1, x2
	slt x7, x3, x6
	sra x2, x1, x3
	xor x9, x6, x5
	xor x7, x7, x7
	srl x5, x5, x2
	and x8, x6, x7
	slt x2, x9, x3
	sll x6, x3, x9
	srl x9, x5, x6
	and x8, x3, x3
	sltu x6, x6, x5
	sll x6, x3, x2
	slt x6, x7, x3
	add x6, x8, x6
	sll x5, x2, x7
	add x8, x7, x2
	sub x6, x5, x6
	add x7, x2, x3
	srl x6, x2, x3
	and x1, x8, x9
	sltu x4, x9, x3
	and x5, x5, x7
	and x9, x5, x3
	slt x9, x3, x2
	add x4, x8, x7
	slt x2, x4, x3
	sub x6, x2, x8
	sra x4, x5, x8
	add x9, x3, x9
	and x8, x3, x5
	sll x5, x6, x2
	srl x2, x5, x4
	sltu x9, x3, x8
	sra x5, x5, x6
	slt x2, x4, x6
	sltu x7, x3, x8
	add x2, x1, x4
	and x5, x6, x6
	sub x8, x2, x7
	sra x8, x4, x2
	and x3, x8, x3
	sra x1, x2, x4
	slt x1, x5, x5
	sra x8, x4, x9
	xor x6, x4, x4
	or x1, x5, x8
	srl x8, x6, x1
	add x3, x2, x2
	sll x3, x4, x2
	add x2, x9, x1
	and x1, x5, x9
	slt x5, x8, x3
	sub x6, x4, x1
	sub x1, x1, x4
	xor x9, x8, x3
	or x9, x4, x9
	sub x7, x6, x5
	sub x9, x3, x4
	add x3, x8, x1
	sra x6, x1, x1
	or x5, x7, x5
	xor x4, x5, x5
	sra x6, x7, x1
	or x2, x7, x3
	slt x3, x6, x3
	sra x1, x8, x2
	sub x4, x7, x2
	sub x5, x7, x5
	or x3, x8, x2
	sltu x6, x7, x8
	sll x4, x8, x5
	sub x7, x5, x7
	and x6, x1, x4
	or x2, x4, x4
	sub x9, x3, x7
	sra x6, x1, x9
	srl x4, x2, x1
	slt x1, x3, x6
	sra x3, x3, x7
	add x3, x6, x1
	add x2, x3, x6
	sltu x1, x8, x3
	sll x4, x3, x2
	srl x9, x4, x3
	sltu x8, x2, x3
	sra x7, x3, x9
	sll x3, x8, x7
	xor x1, x6, x8
	sub x1, x4, x3
	sltu x1, x4, x5
	sll x5, x5, x6
	sltu x9, x7, x9
	add x3, x5, x6
	xor x3, x1, x2
	srl x6, x8, x5
	sll x1, x2, x7
	and x9, x4, x4
	and x5, x2, x2
	sub x6, x7, x2
	srl x7, x4, x1
	sub x6, x7, x8
	add x9, x7, x9
	sltu x7, x7, x7
	or x1, x4, x7
	sltu x7, x6, x6
	sltu x3, x8, x3
	sltu x1, x2, x7
	sll x9, x8, x7
	xor x4, x7, x5
	sub x6, x4, x7
	sltu x5, x8, x8
	slt x4, x5, x7
	sra x1, x4, x8
	slt x2, x9, x7
	sra x3, x9, x8
	and x8, x8, x8
	xor x9, x1, x7
	slt x2, x4, x6
	sll x7, x4, x8
	sub x2, x9, x3
	and x1, x7, x4
	sltu x2, x6, x5
	slt x4, x1, x3
	and x2, x3, x9
	and x5, x9, x6
	or x4, x4, x1
	and x4, x4, x2
	add x3, x2, x9
	sltu x8, x7, x1
	slt x5, x1, x6
	sub x8, x3, x6
	xor x6, x1, x5
	xor x1, x6, x6
	and x6, x8, x6
	srl x3, x4, x9
	sll x8, x7, x2
	sll x4, x2, x8
	and x9, x4, x1
	sub x8, x4, x5
	xor x7, x3, x8
	xor x4, x5, x9
	slt x8, x3, x8
	or x5, x2, x7
	sub x9, x9, x6
	slt x3, x5, x1
	sra x5, x8, x2
	xor x4, x5, x8
	sra x3, x3, x7
	sra x5, x6, x7
	sltu x7, x2, x9
	and x5, x3, x6
	or x8, x8, x3
	xor x3, x9, x2
	xor x9, x7, x5
	sltu x1, x3, x2
	xor x9, x4, x2
	and x4, x9, x2
	xor x3, x5, x1
	sll x8, x2, x1
	add x1, x9, x6
	sub x4, x9, x7
	add x2, x1, x2
	add x8, x2, x5
	slt x6, x9, x2
	sub x9, x3, x4
	sub x5, x6, x7
	add x6, x2, x5
	and x6, x2, x2
	sub x5, x6, x5
	add x9, x3, x7
	and x9, x2, x3
	sub x5, x3, x5
	sll x6, x7, x5
	and x4, x8, x3
	add x3, x7, x4
	sub x7, x1, x2
	srl x6, x5, x2
	srl x8, x6, x5
	sra x1, x7, x6
	sltu x4, x2, x8
	and x7, x1, x4
	and x7, x6, x9
	sub x8, x7, x4
	and x8, x2, x5
	sll x5, x7, x8
	add x9, x6, x7
	or x2, x1, x5
	sll x5, x1, x2
	sll x2, x9, x1
	xor x3, x4, x4
	sltu x9, x1, x8
	srl x7, x1, x4
	sltu x8, x6, x2
	sll x1, x9, x8
	slt x6, x3, x7
	srl x7, x8, x3
	and x5, x7, x3
	srl x1, x5, x2
	sub x6, x3, x8
	sra x7, x3, x1
	slt x9, x5, x2
	sub x8, x9, x7
	or x6, x6, x5
	srl x8, x1, x9
	xor x4, x9, x3
	sltu x3, x1, x3
	srl x8, x3, x5
	and x3, x4, x2
	slt x2, x8, x4
	slt x8, x8, x7
	sll x1, x5, x3
	sltu x1, x2, x1
	and x1, x2, x3
	xor x9, x1, x8
	sra x2, x1, x7
	sltu x4, x3, x1
	xor x7, x4, x8
	sll x2, x1, x6
	slt x6, x3, x5
	and x3, x7, x4
	sll x7, x7, x1
	srl x5, x8, x4
	sll x1, x9, x3
	or x6, x5, x7
	sra x1, x9, x5
	and x6, x5, x1
	sub x7, x3, x9
	srl x6, x8, x2
	and x3, x7, x5
	sltu x4, x6, x3
	or x7, x7, x6
	and x6, x3, x1
	add x6, x1, x3
	sra x4, x4, x9
	or x6, x6, x5
	sltu x5, x3, x8
	sra x4, x2, x7
	sra x7, x6, x1
	sll x3, x4, x3
	sub x2, x3, x2
	sub x3, x1, x2
	sub x9, x4, x6
	srl x7, x6, x7
	srl x2, x6, x5
	sra x3, x6, x2
	sra x8, x5, x8
	sltu x8, x1, x3
	slt x9, x2, x7
	sra x1, x4, x5
	sltu x3, x9, x2
	sll x7, x7, x9
	sltu x7, x4, x8
	sra x9, x2, x9
	sra x5, x1, x8
	and x2, x1, x6
	xor x5, x1, x2
	srl x6, x5, x2
	and x8, x6, x5
	sra x4, x3, x1
	and x1, x2, x2
	sra x4, x3, x6
	sltu x8, x5, x6
	sll x1, x5, x9
	slt x9, x1, x8
	xor x9, x4, x2
	srl x8, x4, x5
	sub x1, x1, x8
	slt x3, x5, x4
	sub x6, x4, x1
	xor x8, x6, x2
	sltu x4, x5, x2
	sll x8, x5, x8
	sltu x7, x3, x4
	sub x4, x6, x7
	or x6, x7, x4
	sub x2, x7, x8
	add x4, x2, x3
	xor x5, x1, x6
	and x5, x5, x6
	slt x7, x7, x2
	xor x1, x1, x4
	sltu x4, x3, x2
	sub x6, x7, x8
	sra x1, x9, x3
	or x4, x8, x8
	sra x2, x9, x6
	and x7, x5, x8
	sltu x2, x8, x7
	slt x4, x1, x8
	xor x2, x4, x2
	slt x5, x7, x7
	slt x8, x1, x9
	and x1, x4, x7
	sra x5, x8, x9
	sltu x6, x3, x4
	sub x8, x7, x2
	or x6, x5, x8
	xor x8, x7, x4
	slt x1, x8, x2
	and x6, x3, x5
	sltu x5, x9, x2
	srl x8, x9, x6
	sub x6, x9, x9
	xor x9, x8, x5
	sra x6, x4, x6
	or x7, x8, x1
	sra x2, x7, x1
	srl x7, x2, x6
	sll x4, x8, x7
	xor x5, x2, x7
	sltu x5, x4, x5
	sub x7, x9, x2
	sra x1, x4, x2
	sub x2, x8, x9
	sltu x2, x4, x9
	add x6, x3, x5
	add x3, x9, x6
	sra x8, x4, x4
	and x4, x8, x4
	xor x1, x6, x4
	sub x2, x4, x4
	sub x1, x1, x3
	and x9, x1, x6
	and x7, x2, x9
	sra x9, x6, x7
	and x3, x9, x7
	add x6, x4, x1
	sra x4, x2, x7
	and x3, x7, x8
	sll x8, x8, x7
	slt x4, x5, x7
	sra x2, x5, x9
	and x5, x3, x4
	srl x2, x6, x7
	sra x7, x4, x1
	sll x9, x9, x9
	xor x2, x5, x4
	srl x5, x1, x2
	sra x2, x7, x8
	add x7, x4, x8
	srl x8, x7, x4
	srl x6, x6, x5
	sub x2, x1, x4
	slt x8, x2, x9
	xor x9, x8, x6
	sra x5, x1, x5
	sub x2, x8, x5
	sra x2, x9, x2
	srl x3, x1, x5
	sra x6, x2, x2
	slt x4, x3, x7
	add x7, x7, x5
	sub x3, x7, x4
	sll x5, x3, x5
	sra x7, x9, x8
	or x4, x8, x4
	sra x4, x3, x6
	srl x6, x1, x3
	and x3, x5, x5
	slt x4, x7, x4
	sub x8, x9, x4
	xor x3, x3, x7
	slt x5, x9, x9
	sub x6, x6, x1
	sub x6, x4, x9
	and x9, x5, x5
	srl x6, x7, x8
	slt x5, x9, x1
	xor x9, x3, x2
	sub x5, x7, x6
	sll x2, x7, x1
	add x4, x6, x1
	xor x4, x2, x3
	xor x9, x1, x1
	sub x1, x5, x6
	srl x9, x5, x7
	add x3, x7, x6
	sub x1, x7, x3
	srl x2, x8, x6
	and x7, x7, x7
	or x4, x8, x7
	xor x3, x8, x5
	and x2, x3, x6
	srl x9, x2, x6
	slt x1, x7, x1
	sra x7, x5, x5
	sll x3, x9, x9
	or x9, x4, x5
	xor x2, x9, x7
	slt x4, x3, x1
	sltu x1, x7, x6
	or x5, x6, x8
	and x5, x8, x8
	slt x8, x7, x1
	and x2, x5, x6
	sub x7, x1, x4
	xor x8, x8, x2
	sltu x5, x5, x9
	sltu x3, x8, x8
	sll x5, x8, x5
	srl x2, x2, x1
	sra x9, x1, x5
	and x8, x2, x4
	srl x4, x7, x1
	slt x5, x3, x1
	add x2, x2, x8
	srl x5, x3, x8
	or x4, x1, x4
	sll x3, x2, x6
	sltu x2, x9, x9
	xor x5, x3, x1
	sltu x9, x9, x4
	xor x8, x8, x1
	sltu x1, x2, x5
	srl x5, x4, x1
	xor x2, x3, x4
	sll x8, x1, x8
	or x2, x7, x6
	and x3, x3, x3
	srl x1, x5, x3
	or x5, x7, x8
	sltu x8, x1, x4
	and x7, x8, x5
	srl x1, x8, x1
	sll x3, x5, x2
	sub x6, x1, x7
	sll x5, x4, x3
	sll x7, x2, x3
	sltu x4, x1, x8
	sltu x6, x1, x7
	sub x8, x3, x9
	and x7, x1, x5
	sll x5, x8, x4
	slt x2, x9, x4
	sltu x9, x5, x1
	slt x4, x6, x3
	srl x1, x9, x5
	sltu x5, x6, x8
	sll x5, x5, x7
	sll x7, x9, x9
	sub x6, x5, x2
	and x8, x7, x7
	sra x3, x6, x8
	slt x5, x7, x9
	sub x8, x2, x3
	srl x4, x4, x6
	sra x3, x3, x8
	slt x9, x5, x5
	sub x7, x3, x9
	and x9, x5, x7
	sltu x9, x2, x5
	sra x8, x9, x7
	srl x5, x8, x5
	slt x8, x5, x7
	sltu x8, x5, x5
	sll x4, x7, x2
	sub x4, x4, x2
	sll x3, x2, x5
	slt x3, x4, x3
	sra x1, x4, x7
	add x1, x7, x9
	and x1, x5, x3
	sra x1, x7, x1
	sub x3, x2, x4
	slt x1, x7, x2
	add x2, x1, x2
	and x3, x8, x2
	slt x2, x2, x4
	sltu x9, x4, x8
	and x1, x8, x4
	and x8, x7, x7
	slt x4, x3, x7
	or x6, x6, x2
	sltu x1, x7, x7
	sub x3, x1, x3
	sll x1, x4, x1
	sub x2, x9, x3
	or x7, x3, x6
	sll x4, x7, x3
	or x2, x8, x8
	xor x1, x4, x2
	xor x7, x8, x3
	xor x1, x3, x6
	xor x3, x9, x7
	or x7, x8, x8
	xor x4, x1, x6
	or x3, x6, x8
	xor x6, x1, x4
	and x3, x3, x5
	or x8, x7, x4
	srl x6, x5, x4
	slt x7, x4, x3
	sub x5, x2, x8
	slt x9, x7, x2
	or x6, x1, x9
	sra x4, x3, x4
	sltu x2, x5, x6
	sll x3, x2, x8
	slt x4, x5, x6
	sra x2, x6, x6
	sltu x8, x7, x5
	and x6, x3, x5
	xor x8, x9, x7
	sltu x5, x7, x5
	srl x8, x8, x3
	sltu x2, x2, x5
	xor x3, x3, x1
	and x5, x9, x7
	and x5, x8, x3
	sll x7, x1, x3
	sra x3, x1, x9
	or x4, x7, x2
	sra x9, x6, x4
	slt x5, x9, x4
	sltu x7, x2, x2
	sll x2, x3, x7
	sltu x5, x1, x4
	sll x9, x7, x5
	sltu x1, x3, x6
	and x8, x1, x5
	and x7, x1, x1
	xor x2, x8, x6
	sltu x9, x7, x4
	or x8, x8, x3
	sltu x2, x2, x8
	add x5, x9, x2
	sltu x5, x1, x8
	and x5, x7, x6
	sll x3, x9, x3
	and x1, x6, x5
	sll x5, x4, x4
	add x9, x2, x3
	srl x7, x8, x4
	slt x5, x3, x2
	sra x9, x8, x2
	sub x1, x9, x8
	sra x9, x7, x2
	xor x3, x2, x2
	slt x9, x4, x8
	add x3, x4, x2
	and x2, x8, x6
	sra x8, x5, x9
	slt x4, x4, x9
	add x3, x4, x8
	sll x5, x1, x6
	add x9, x6, x1
	srl x8, x5, x9
	sll x6, x4, x2
	sra x1, x9, x5
	or x2, x8, x6
	srl x5, x4, x3
	xor x9, x2, x2
	add x9, x8, x9
	slt x8, x2, x6
	add x7, x8, x5
	xor x7, x7, x7
	srl x4, x4, x3
	and x4, x9, x1
	add x5, x3, x8
	xor x3, x9, x7
	sltu x3, x8, x2
	or x9, x4, x3
	add x2, x4, x8
	sub x9, x4, x7
	xor x7, x3, x4
	sll x9, x9, x1
	add x1, x3, x3
	and x3, x9, x2
	sltu x1, x7, x9
	or x1, x7, x6
	sltu x5, x1, x9
	srl x8, x7, x9
	slt x2, x8, x7
	sra x8, x7, x3
	sra x1, x9, x7
	sra x7, x8, x5
	or x1, x9, x7
	sra x4, x2, x8
	sra x9, x6, x8
	sra x1, x1, x6
	sra x2, x4, x1
	sub x7, x5, x7
	slt x9, x2, x9
	sub x9, x8, x5
	and x3, x3, x7
	xor x9, x6, x4
	srl x2, x6, x7
	add x6, x8, x4
	sub x4, x7, x8
	or x9, x2, x5
	xor x5, x2, x6
	slt x1, x5, x7
	slt x6, x2, x9
	sltu x2, x9, x6
	and x3, x8, x5
	sub x7, x6, x4
	sll x5, x6, x4
	slt x1, x5, x6
	xor x6, x6, x6
	sltu x4, x6, x4
	add x1, x2, x3
	sub x6, x9, x6
	add x9, x4, x8
	and x5, x6, x5
	slt x1, x1, x3
	slt x3, x4, x6
	sra x5, x1, x3
	or x8, x7, x3
	slt x6, x6, x3
	srl x8, x1, x9
	sll x8, x5, x9
	sra x7, x2, x6
	srl x7, x3, x9
	slt x6, x9, x8
	sll x1, x8, x3
	sltu x2, x4, x9
	or x4, x5, x4
	sll x8, x3, x8
	sub x2, x5, x2
	sub x3, x8, x7
	sub x8, x5, x5
	and x3, x8, x4
	srl x7, x7, x6
	sub x8, x8, x7
	slt x1, x3, x7
	add x1, x4, x2
	sub x9, x7, x9
	sltu x5, x2, x3
	xor x3, x8, x8
	sll x3, x3, x8
	or x8, x4, x3
	sll x6, x9, x8
	sub x2, x2, x8
	slt x8, x6, x6
	sub x3, x1, x9
	srl x8, x6, x2
	slt x9, x8, x1
	or x9, x4, x9
	sra x7, x1, x2
	or x8, x4, x7
	srl x5, x7, x2
	and x4, x1, x2
	and x6, x2, x5
	or x5, x5, x4
	sra x6, x8, x3
	srl x3, x7, x6
	sll x9, x5, x7
	slt x4, x2, x6
	and x4, x2, x7
	add x8, x3, x3
	add x9, x9, x7
	or x5, x1, x8
	slt x6, x5, x8
	or x5, x8, x8
	sub x6, x5, x4
	sll x1, x7, x8
	sltu x8, x2, x5
	srl x6, x9, x6
	sll x2, x5, x6
	add x5, x2, x8
	xor x7, x3, x4
	add x2, x1, x9
	xor x4, x4, x4
	sub x4, x2, x2
	and x1, x3, x6
	sra x1, x9, x6
	and x7, x1, x6
	slt x8, x2, x4
	srl x1, x3, x7
	sll x8, x9, x6
	sltu x6, x5, x7
	or x8, x7, x2
	or x8, x6, x9
	sltu x6, x4, x4
	sub x9, x4, x3
	or x1, x7, x5
	sll x7, x7, x2
	sub x3, x8, x4
	srl x8, x8, x8
	and x6, x9, x5
	sll x1, x9, x8
	sltu x3, x8, x8
	srl x1, x7, x7
	and x3, x6, x2
	srl x9, x4, x7
	srl x6, x3, x1
	and x8, x8, x7
	add x9, x3, x1
	srl x9, x9, x8
	slt x2, x4, x5
	sltu x2, x4, x8
	sltu x3, x8, x1
	slt x7, x7, x3
	sll x2, x4, x9
	or x1, x6, x6
	sll x1, x6, x3
	sltu x5, x5, x9
	sub x4, x4, x2
	and x8, x6, x7
	add x9, x3, x9
	xor x7, x6, x3
	slt x5, x7, x6
	sltu x3, x1, x4
	srl x4, x8, x6
	slt x2, x1, x9
	add x1, x4, x5
	sub x7, x5, x1
	or x9, x7, x4
	sra x4, x9, x6
	or x7, x2, x7
	xor x7, x3, x2
	sub x5, x4, x1
	sltu x4, x8, x3
	or x1, x2, x4
	xor x5, x2, x1
	slt x5, x4, x2
	sltu x4, x6, x4
	sra x9, x3, x4
	srl x2, x4, x2
	xor x6, x6, x3
	xor x9, x5, x8
	or x9, x7, x5
	xor x4, x2, x2
	sub x8, x1, x2
	add x5, x3, x2
	sltu x3, x5, x6
	and x5, x2, x6
	and x3, x5, x2
	sra x5, x8, x6
	slt x9, x6, x9
	sltu x9, x4, x8
	slt x6, x9, x2
	slt x6, x4, x4
	sub x5, x4, x7
	or x6, x7, x6
	srl x1, x1, x5
	slt x2, x7, x2
	sltu x7, x2, x9
	sll x1, x7, x6
	or x2, x2, x9
	xor x4, x8, x7
	sra x7, x3, x8
	sltu x2, x9, x8
	srl x7, x2, x9
	or x4, x6, x8
	sra x4, x8, x5
	sll x2, x3, x6
	slt x9, x9, x7
	sll x4, x4, x5
	sltu x9, x8, x3
	or x7, x7, x6
	add x5, x4, x2
	sub x2, x6, x6
	sra x1, x1, x5
	slt x6, x5, x9
	and x3, x1, x9
	add x1, x6, x1
	srl x7, x5, x3
	slt x5, x6, x7
	sltu x2, x4, x1
	add x2, x6, x1
	sra x4, x3, x2
	srl x7, x3, x4
	add x6, x6, x8
	sltu x7, x9, x5
	xor x6, x3, x3
	sra x9, x1, x4
	sll x8, x3, x7
	sll x1, x9, x7
	slt x9, x2, x9
	xor x8, x1, x9
	srl x3, x2, x2
	xor x7, x2, x7
	srl x4, x7, x6
	and x3, x8, x2
	xor x5, x6, x6
	srl x7, x5, x9
	sub x2, x8, x9
	or x2, x6, x1
	and x1, x4, x9
	slt x8, x6, x4
	add x8, x9, x5
	xor x6, x5, x3
	sll x2, x5, x7
	sltu x6, x3, x3
	sra x9, x1, x4
	slt x3, x5, x3
	or x5, x8, x6
	sub x4, x5, x7
	add x8, x1, x5
	sltu x3, x5, x1
	and x5, x8, x8
	sub x5, x1, x9
	sra x4, x1, x8
	sltu x2, x6, x1
	xor x8, x9, x5
	add x2, x1, x1
	and x9, x1, x1
	srl x4, x9, x9
	add x3, x3, x3
	add x4, x5, x4
	or x3, x8, x9
	sub x5, x2, x2
	or x5, x7, x5
	sltu x8, x4, x5
	sltu x4, x3, x8
	sltu x2, x2, x3
	sltu x4, x2, x3
	and x2, x7, x5
	and x4, x6, x7
	sltu x6, x2, x9
	and x7, x7, x4
	sra x8, x1, x4
	xor x1, x4, x6
	and x7, x9, x2
	sll x7, x1, x4
	sra x1, x2, x3
	srl x6, x2, x9
	sra x7, x4, x5
	slt x4, x9, x2
	sltu x3, x5, x7
	add x7, x1, x1
	xor x5, x1, x1
	slt x3, x5, x6
	sub x4, x9, x4
	slt x2, x7, x6
	slt x8, x8, x5
	slt x8, x3, x4
	and x2, x9, x9
	xor x1, x2, x8
	or x9, x5, x1
	and x4, x3, x9
	sub x3, x3, x8
	and x2, x4, x1
	sub x3, x7, x2
	sra x4, x4, x3
	sll x4, x3, x7
	sltu x9, x2, x3
	sll x8, x8, x8
	and x4, x4, x7
	sra x4, x4, x4
	sra x1, x2, x9
	add x6, x9, x4
	srl x7, x1, x1
	slt x2, x3, x7
	add x9, x8, x5
	or x9, x2, x3
	srl x5, x1, x3
	sra x3, x8, x5
	or x8, x6, x4
	slt x5, x3, x5
	or x2, x3, x5
	xor x4, x7, x6
	srl x4, x2, x9
	sub x6, x5, x8
	and x5, x2, x1
	sltu x3, x4, x6
	and x2, x6, x4
	xor x4, x9, x5
	sra x7, x3, x1
	or x1, x4, x8
	srl x1, x6, x2
	and x3, x6, x9
	sltu x2, x7, x3
	srl x8, x2, x4
	or x6, x1, x4
	add x3, x7, x1
	srl x1, x2, x6
	srl x2, x6, x2
	sltu x5, x3, x6
	xor x7, x1, x4
	or x6, x6, x7
	sub x5, x4, x8
	slt x3, x7, x8
	sltu x7, x8, x4
	srl x9, x5, x3
	sll x5, x4, x8
	slt x4, x5, x6
	add x8, x9, x1
	sra x1, x9, x8
	srl x7, x7, x5
	sub x5, x7, x9
	srl x6, x7, x7
	xor x4, x4, x1
	srl x5, x4, x5
	add x7, x2, x9
	sub x7, x9, x2
	sltu x7, x6, x6
	and x9, x5, x5
	sll x9, x4, x7
	xor x4, x9, x1
	add x7, x6, x7
	sll x8, x7, x5
	sltu x6, x1, x2
	sub x8, x8, x5
	sub x7, x7, x2
	sra x8, x7, x6
	sll x5, x1, x6
	or x6, x8, x3
	srl x2, x4, x4
	srl x6, x6, x7
	sub x3, x7, x8
	srl x5, x5, x1
	sltu x3, x2, x8
	xor x7, x1, x9
	sub x1, x4, x8
	sll x1, x7, x1
	and x3, x1, x7
	xor x6, x8, x2
	or x2, x9, x3
	or x3, x2, x6
	xor x4, x1, x7
	sltu x8, x3, x6
	or x7, x5, x6
	xor x3, x2, x3
	sub x8, x6, x5
	sll x7, x1, x8
	srl x7, x9, x7
	sltu x4, x5, x2
	sub x2, x4, x1
	or x2, x9, x9
	sltu x9, x6, x1
	slt x5, x5, x2
	or x2, x3, x7
	xor x6, x2, x9
	or x3, x2, x7
	srl x4, x3, x7
	sra x4, x3, x5
	sub x3, x9, x7
	srl x5, x8, x2
	sub x9, x1, x2
	sltu x3, x7, x6
	add x1, x9, x9
	slt x1, x7, x1
	sra x5, x5, x5
	sll x4, x6, x3
	and x6, x6, x3
	slt x4, x3, x4
	sra x5, x3, x6
	or x8, x2, x9
	slt x5, x8, x2
	srl x4, x4, x8
	add x3, x8, x2
	sll x2, x1, x6
	srl x5, x8, x6
	or x2, x4, x3
	sra x9, x8, x1
	slt x2, x3, x4
	and x7, x4, x2
	slt x6, x5, x9
	sll x4, x1, x6
	or x4, x6, x7
	or x3, x2, x9
	sltu x6, x9, x8
	sub x4, x2, x6
	sub x7, x7, x7
	srl x8, x4, x1
	and x8, x4, x5
	sra x4, x3, x7
	slt x5, x7, x4
	or x3, x3, x7
	sltu x8, x5, x9
	slt x3, x3, x4
	and x5, x4, x5
	sub x9, x2, x6
	add x8, x3, x9
	sltu x1, x6, x8
	add x2, x7, x3
	sra x8, x9, x2
	srl x5, x9, x7
	srl x2, x1, x3
	sll x7, x8, x6
	sll x1, x7, x8
	srl x9, x5, x7
	xor x2, x2, x7
	or x2, x1, x6
	sra x9, x2, x5
	xor x1, x1, x5
	xor x6, x6, x7
	xor x2, x6, x9
	xor x9, x5, x2
	xor x1, x1, x7
	and x4, x2, x8
	slt x5, x9, x7
	sub x5, x6, x1
	sltu x8, x1, x8
	sra x2, x2, x9
	and x1, x9, x1
	or x5, x9, x1
	add x8, x4, x2
	sltu x7, x7, x7
	slt x7, x7, x5
	sub x1, x6, x5
	srl x4, x9, x4
	xor x2, x2, x4
	sra x4, x5, x1
	slt x6, x6, x7
	srl x7, x5, x6
	slt x5, x5, x6
	and x2, x8, x3
	and x7, x1, x2
	sub x6, x4, x5
	sra x2, x5, x7
	add x8, x3, x5
	slt x3, x2, x8
	or x2, x8, x4
	sra x1, x4, x3
	or x3, x6, x1
	sra x4, x2, x6
	add x9, x3, x6
	sub x7, x3, x7
	sub x6, x5, x5
	sra x7, x7, x6
	xor x2, x3, x7
	add x1, x2, x2
	sub x4, x4, x5
	sub x5, x5, x7
	sra x3, x2, x8
	srl x7, x5, x3
	sll x4, x1, x6
	and x4, x6, x4
	xor x1, x4, x7
	sub x1, x3, x6
	sltu x7, x1, x9
	or x1, x2, x4
	sub x1, x2, x5
	sra x5, x9, x7
	srl x7, x1, x7
	sra x5, x6, x4
	and x1, x8, x3
	sub x6, x1, x6
	or x6, x8, x5
	add x2, x4, x3
	and x3, x7, x4
	sll x2, x7, x8
	slt x9, x2, x2
	xor x8, x9, x1
	srl x7, x2, x7
	or x1, x5, x4
	sra x1, x9, x5
	xor x8, x9, x6
	sra x4, x9, x9
	add x8, x9, x2
	srl x1, x7, x5
	sub x9, x7, x6
	sltu x6, x2, x9
	srl x2, x8, x7
	add x6, x2, x1
	or x4, x3, x4
	srl x6, x8, x2
	sltu x7, x2, x2
	sra x6, x9, x9
	sll x5, x9, x1
	and x3, x2, x9
	sub x3, x6, x6
	sll x8, x2, x8
	add x4, x7, x8
	and x9, x8, x2
	and x2, x3, x8
	slt x4, x5, x3
	xor x3, x3, x4
	slt x9, x4, x2
	srl x9, x8, x7
	srl x7, x6, x4
	or x3, x8, x9
	slt x2, x5, x3
	add x7, x7, x6
	srl x6, x8, x5
	slt x2, x3, x4
	or x4, x9, x7
	srl x5, x4, x5
	srl x2, x4, x1
	sub x5, x4, x9
	sll x3, x4, x6
	srl x4, x3, x8
	sub x8, x3, x1
	sltu x7, x1, x1
	sltu x7, x8, x5
	xor x4, x6, x5
	sll x6, x6, x1
	add x5, x4, x3
	sub x2, x1, x7
	sub x2, x7, x1
	sub x1, x2, x6
	and x5, x4, x8
	slt x6, x2, x7
	sll x7, x7, x4
	slt x1, x8, x5
	add x6, x8, x9
	xor x2, x1, x4
	sltu x1, x5, x4
	srl x6, x5, x8
	slt x3, x9, x7
	slt x8, x9, x3
	srl x1, x3, x3
	sltu x1, x3, x2
	sltu x3, x3, x6
	sub x8, x3, x4
	or x6, x9, x6
	xor x5, x9, x2
	xor x8, x5, x3
	sltu x2, x6, x4
	xor x1, x9, x5
	sll x2, x5, x5
	add x5, x5, x1
	sra x7, x1, x1
	sub x9, x6, x1
	add x1, x7, x1
	or x5, x4, x5
	sub x8, x1, x3
	sub x6, x2, x3
	sll x1, x4, x4
	or x3, x5, x4
	xor x6, x8, x1
	add x2, x7, x3
	sll x3, x5, x9
	slt x4, x5, x4
	and x7, x2, x5
	sra x6, x7, x3
	add x9, x4, x8
	sra x2, x6, x4
	sltu x8, x8, x2
	sll x9, x9, x8
	sltu x2, x9, x8
	sll x9, x6, x7
	srl x8, x4, x2
	or x2, x8, x9
	sra x8, x5, x8
	sra x7, x3, x3
	srl x7, x3, x8
	slt x5, x7, x5
	sltu x7, x4, x1
	add x4, x6, x3
	slt x5, x5, x6
	sltu x2, x3, x7
	xor x4, x9, x1
	add x5, x8, x8
	xor x6, x9, x7
	sra x1, x3, x1
	sll x6, x5, x5
	or x6, x7, x2
	sra x4, x9, x3
	srl x1, x6, x8
	slt x8, x3, x8
	slt x2, x3, x5
	and x6, x2, x1
	slt x8, x6, x7
	sll x5, x4, x7
	add x1, x6, x6
	sub x1, x5, x1
	or x8, x8, x2
	srl x6, x4, x2
	sub x6, x5, x9
	xor x2, x4, x8
	sub x8, x3, x3
	srl x1, x7, x7
	srl x5, x3, x1
	sll x2, x4, x7
	sra x8, x3, x5
	sub x5, x9, x6
	xor x6, x6, x2
	and x3, x6, x9
	srl x8, x1, x5
	or x6, x7, x1
	sra x4, x9, x8
	slt x6, x5, x3
	and x8, x4, x9
	srl x3, x2, x9
	slt x7, x7, x5
	add x7, x5, x7
	slt x2, x9, x7
	add x7, x2, x3
	srl x6, x8, x7
	and x7, x5, x9
	sra x2, x8, x6
	and x2, x5, x2
	slt x3, x2, x1
	add x9, x1, x1
	sltu x4, x9, x4
	add x5, x3, x7
	slt x1, x9, x9
	sll x7, x6, x5
	srl x9, x1, x4
	srl x3, x5, x9
	sub x1, x8, x7
	sltu x7, x2, x3
	sltu x9, x5, x6
	xor x3, x8, x9
	sub x8, x5, x6
	sltu x4, x2, x4
	srl x6, x2, x2
	or x8, x7, x9
	or x2, x9, x4
	sltu x8, x1, x7
	or x5, x5, x3
	sra x5, x1, x3
	sll x5, x4, x7
	slt x7, x6, x6
	slt x7, x9, x6
	sltu x8, x3, x4
	sra x4, x3, x4
	sra x5, x5, x9
	slt x1, x9, x9
	and x9, x1, x6
	add x2, x5, x6
	srl x1, x1, x6
	and x3, x3, x5
	sub x8, x9, x1
	sll x5, x6, x2
	sra x1, x6, x8
	sra x8, x2, x4
	sub x2, x3, x6
	sltu x8, x1, x8
	sltu x1, x7, x2
	sub x2, x3, x4
	xor x9, x6, x5
	add x5, x9, x6
	slt x1, x3, x5
	slt x3, x7, x6
	and x9, x4, x3
	sltu x1, x9, x2
	sub x7, x8, x5
	sra x3, x3, x9
	srl x7, x7, x5
	and x4, x9, x6
	or x4, x7, x3
	and x8, x7, x1
	xor x6, x4, x6
	sll x6, x8, x5
	slt x1, x6, x5
	add x1, x8, x3
	and x4, x1, x6
	add x7, x7, x1
	or x5, x6, x3
	sll x1, x2, x8
	add x5, x2, x7
	sra x1, x5, x7
	xor x7, x4, x7
	sra x1, x4, x8
	and x7, x5, x4
	xor x6, x4, x3
	add x1, x4, x7
	sra x6, x2, x8
	sra x6, x8, x5
	and x1, x7, x6
	and x8, x7, x3
	sra x8, x8, x1
	slt x8, x7, x2
	and x9, x3, x6
	sra x1, x4, x7
	and x5, x2, x7
	slt x5, x8, x3
	xor x6, x6, x9
	sll x5, x2, x7
	sub x7, x3, x8
	sub x5, x7, x7
	sll x5, x5, x5
	sll x8, x2, x1
	xor x4, x8, x6
	slt x8, x1, x4
	sltu x3, x2, x5
	xor x7, x1, x1
	slt x9, x7, x5
	slt x2, x6, x1
	xor x9, x6, x4
	slt x5, x3, x6
	slt x8, x8, x4
	sll x9, x2, x5
	and x7, x1, x4
	add x1, x5, x6
	sra x8, x3, x9
	sltu x3, x5, x5
	xor x4, x1, x1
	or x2, x5, x6
	slt x7, x4, x6
	sub x3, x6, x9
	or x7, x4, x4
	or x1, x7, x9
	slt x4, x1, x5
	sub x9, x4, x4
	add x7, x7, x4
	add x9, x7, x1
	or x6, x8, x4
	add x8, x6, x9
	sra x5, x9, x7
	slt x1, x1, x1
	sra x7, x5, x6
	and x2, x1, x1
	or x8, x7, x6
	add x3, x5, x1
	or x7, x9, x2
	add x4, x4, x1
	xor x8, x1, x5
	sub x3, x8, x9
	sub x1, x6, x2
	add x5, x9, x3
	srl x8, x8, x1
	slt x4, x4, x5
	or x1, x6, x7
	slt x8, x1, x5
	slt x7, x6, x9
	srl x8, x3, x2
	and x7, x5, x4
	add x6, x5, x6
	add x8, x8, x4
	sra x5, x4, x1
	add x7, x3, x8
	and x7, x9, x1
	sltu x2, x9, x6
	and x5, x7, x1
	add x3, x8, x8
	sll x4, x8, x1
	sub x3, x4, x6
	sub x8, x1, x2
	sltu x3, x4, x6
	and x3, x8, x5
	slt x4, x8, x3
	sltu x4, x9, x2
	sra x8, x1, x1
	sltu x5, x5, x8
	and x1, x2, x5
	sll x8, x9, x7
	and x6, x9, x9
	and x6, x7, x1
	sra x7, x6, x2
	slt x8, x8, x2
	sra x9, x8, x5
	sub x8, x4, x7
	xor x7, x2, x6
	sra x8, x9, x6
	or x4, x9, x6
	add x6, x2, x4
	sra x3, x6, x2
	sll x1, x9, x2
	sltu x4, x9, x9
	sltu x3, x2, x7
	srl x1, x4, x9
	srl x8, x3, x3
	sub x1, x3, x3
	xor x9, x7, x1
	sltu x3, x3, x2
	srl x1, x8, x1
	or x9, x1, x6
	sltu x5, x5, x5
	add x5, x5, x4
	and x1, x7, x4
	sltu x8, x9, x8
	slt x4, x2, x7
	and x6, x2, x6
	sra x2, x6, x4
	add x4, x7, x5
	slt x7, x2, x6
	srl x1, x3, x8
	sra x7, x9, x3
	add x3, x7, x9
	sll x7, x8, x3
	sra x6, x2, x2
	or x5, x2, x9
	sra x7, x7, x6
	sltu x9, x4, x6
	add x3, x3, x5
	sll x3, x4, x1
	sub x7, x3, x1
	add x4, x5, x5
	sra x7, x3, x3
	sra x5, x6, x3
	sltu x7, x5, x8
	and x9, x7, x9
	add x7, x1, x4
	slt x3, x5, x1
	or x7, x8, x8
	sub x4, x9, x6
	slt x8, x6, x1
	sltu x2, x7, x2
	sll x6, x4, x5
	or x2, x9, x5
	or x9, x1, x2
	sub x1, x3, x6
	and x4, x9, x8
	slt x5, x7, x6
	sra x4, x1, x8
	sltu x6, x9, x4
	srl x3, x8, x6
	sltu x7, x7, x4
	sub x7, x4, x1
	or x3, x4, x7
	xor x1, x8, x9
	sltu x2, x8, x7
	sra x7, x1, x4
	sub x1, x9, x4
	sltu x2, x2, x2
	add x6, x7, x4
	or x9, x4, x4
	sub x3, x6, x2
	sltu x7, x4, x8
	and x4, x4, x9
	srl x5, x9, x3
	sltu x1, x5, x2
	or x2, x3, x7
	slt x1, x6, x9
	sltu x6, x7, x8
	and x7, x4, x2
	sra x6, x4, x8
	xor x5, x3, x2
	and x3, x5, x9
	sltu x1, x3, x4
	sltu x1, x1, x5
	srl x2, x9, x2
	slt x7, x3, x6
	and x4, x5, x4
	add x4, x9, x8
	xor x9, x4, x4
	sub x1, x1, x1
	and x7, x7, x5
	and x9, x7, x3
	slt x3, x8, x5
	slt x4, x6, x4
	add x8, x8, x2
	sltu x5, x2, x8
	xor x5, x4, x1
	sll x6, x3, x9
	sra x7, x3, x3
	add x6, x3, x8
	add x5, x6, x5
	srl x5, x7, x7
	xor x3, x5, x7
	add x8, x9, x3
	sra x2, x6, x8
	slt x5, x4, x1
	and x3, x5, x6
	srl x6, x2, x3
	and x2, x6, x1
	sub x7, x1, x4
	sltu x1, x2, x4
	add x7, x7, x4
	slt x8, x4, x4
	slt x2, x1, x8
	sll x8, x7, x8
	or x5, x7, x6
	sltu x6, x6, x4
	sltu x9, x8, x1
	xor x6, x4, x7
	and x3, x6, x6
	sra x5, x9, x4
	add x1, x8, x7
	sub x3, x3, x5
	add x9, x4, x9
	xor x4, x2, x2
	or x6, x2, x5
	sltu x1, x1, x3
	sltu x6, x9, x9
	sltu x1, x8, x6
	sra x5, x8, x6
	slt x4, x5, x7
	srl x4, x2, x3
	sub x1, x4, x6
	sltu x8, x4, x4
	xor x1, x4, x4
	or x8, x3, x1
	add x1, x6, x2
	and x8, x4, x1
	and x7, x6, x4
	sltu x3, x6, x3
	xor x8, x7, x1
	and x5, x5, x7
	xor x2, x1, x1
	srl x4, x1, x7
	slt x5, x3, x6
	slt x3, x4, x3
	add x2, x6, x3
	and x5, x3, x2
	sll x7, x5, x5
	sll x7, x9, x4
	srl x7, x2, x3
	sra x1, x7, x8
	and x2, x4, x6
	sltu x6, x4, x7
	and x8, x2, x9
	slt x7, x2, x2
	or x8, x6, x8
	add x2, x5, x2
	sub x6, x5, x1
	and x4, x4, x5
	srl x6, x2, x7
	sub x3, x6, x8
	srl x2, x3, x8
	or x7, x5, x6
	add x4, x2, x1
	sltu x3, x2, x5
	slt x4, x1, x1
	add x2, x2, x5
	sltu x1, x9, x9
	slt x9, x7, x1
	sltu x2, x4, x4
	add x6, x5, x3
	xor x4, x8, x7
	srl x6, x3, x2
	and x7, x9, x8
	add x3, x5, x7
	sltu x8, x8, x6
	sltu x5, x2, x6
	slt x9, x3, x9
	or x9, x1, x9
	srl x8, x5, x4
	sltu x7, x3, x2
	or x1, x9, x2
	sra x5, x7, x8
	sll x3, x9, x5
	srl x6, x3, x1
	add x7, x1, x3
	xor x3, x5, x2
	sra x2, x4, x8
	add x6, x1, x4
	sll x5, x9, x3
	slt x9, x8, x1
	sltu x9, x7, x9
	sll x1, x8, x9
	or x5, x8, x8
	sltu x2, x1, x2
	sra x1, x8, x1
	sra x7, x5, x9
	and x8, x7, x3
	or x6, x1, x7
	or x9, x8, x4
	or x4, x5, x5
	add x6, x1, x6
	xor x6, x3, x3
	sra x3, x2, x7
	sra x1, x8, x1
	sll x4, x6, x5
	sra x7, x7, x6
	or x5, x2, x1
	add x6, x3, x5
	add x5, x5, x4
	sub x7, x8, x1
	or x7, x9, x7
	add x4, x9, x4
	slt x4, x4, x8
	slt x3, x7, x3
	or x6, x2, x3
	slt x5, x6, x8
	xor x4, x6, x1
	and x1, x1, x6
	slt x2, x4, x7
	add x3, x3, x7
	add x6, x1, x3
	add x2, x8, x1
	sub x3, x3, x3
	xor x6, x6, x2
	sra x5, x8, x4
	add x7, x4, x3
	sra x1, x2, x4
	sll x7, x1, x5
	sra x5, x1, x7
	and x1, x6, x6
	slt x2, x1, x3
	sra x6, x8, x2
	xor x7, x3, x1
	sra x9, x6, x1
	slt x5, x6, x2
	xor x5, x5, x5
	srl x4, x4, x1
	sll x1, x8, x6
	srl x9, x9, x1
	slt x7, x4, x4
	add x5, x5, x8
	xor x1, x6, x8
	add x6, x5, x4
	srl x2, x6, x1
	add x8, x8, x8
	srl x3, x4, x3
	sub x3, x6, x9
	sub x3, x9, x9
	srl x9, x2, x4
	or x3, x6, x1
	sub x6, x2, x6
	xor x6, x5, x5
	sll x8, x4, x3
	sltu x3, x1, x4
	sltu x9, x7, x2
	sub x4, x8, x8
	srl x3, x8, x6
	add x6, x7, x2
	sub x9, x8, x7
	xor x7, x6, x9
	slt x9, x2, x9
	sra x3, x8, x5
	sub x7, x7, x2
	xor x8, x9, x1
	sra x9, x6, x3
	sub x5, x9, x1
	srl x4, x6, x4
	sub x8, x6, x6
	sub x4, x3, x8
	sub x2, x7, x9
	add x4, x1, x3
	xor x4, x2, x2
	sltu x3, x8, x1
	xor x9, x1, x8
	sll x9, x4, x9
	and x8, x5, x4
	xor x7, x4, x5
	xor x4, x3, x1
	sra x7, x3, x9
	srl x7, x1, x8
	sltu x1, x8, x4
	sub x8, x5, x1
	sll x3, x9, x2
	sll x8, x3, x8
	sub x6, x4, x3
	sub x6, x3, x5
	sll x4, x6, x1
	sll x2, x2, x5
	srl x3, x9, x4
	sub x7, x4, x7
	sltu x1, x7, x4
	xor x9, x3, x2
	sltu x4, x3, x5
	srl x5, x3, x8
	add x3, x3, x1
	slt x3, x9, x3
	sub x2, x1, x1
	sll x9, x8, x1
	srl x4, x1, x2
	sll x2, x6, x1
	srl x2, x2, x6
	xor x3, x2, x2
	or x2, x1, x4
	slt x5, x4, x9
	sub x3, x5, x9
	xor x8, x8, x3
	add x8, x1, x3
	sub x7, x1, x3
	sub x3, x7, x4
	xor x3, x6, x7
	sltu x7, x7, x6
	and x3, x5, x5
	sra x1, x9, x6
	xor x2, x2, x7
	sltu x4, x1, x9
	sll x4, x1, x2
	sub x7, x8, x4
	sra x8, x4, x3
	or x9, x8, x3
	add x2, x3, x2
	sltu x8, x3, x4
	sltu x5, x8, x5
	sltu x4, x1, x8
	slt x8, x4, x5
	slt x6, x5, x1
	add x2, x8, x3
	and x5, x6, x2
	srl x4, x1, x8
	or x1, x9, x9
	sub x7, x1, x1
	and x7, x6, x9
	srl x5, x2, x8
	srl x6, x5, x8
	sltu x8, x3, x7
	srl x1, x7, x8
	xor x2, x8, x5
	sub x9, x2, x5
	and x7, x1, x3
	srl x1, x1, x6
	sub x5, x3, x2
	and x8, x7, x9
	sub x5, x5, x8
	xor x7, x9, x5
	xor x8, x5, x9
	sll x3, x4, x9
	slt x3, x2, x8
	add x5, x8, x9
	sll x9, x4, x7
	or x8, x6, x1
	sra x2, x3, x1
	sltu x5, x3, x6
	slt x7, x7, x9
	sltu x4, x4, x5
	sra x5, x5, x1
	slt x6, x2, x1
	sll x1, x3, x7
	or x7, x8, x5
	xor x4, x6, x9
	sra x7, x5, x6
	slt x2, x8, x4
	add x5, x3, x1
	sub x4, x3, x4
	sub x8, x5, x8
	srl x9, x3, x1
	slt x4, x7, x9
	sra x3, x5, x7
	srl x3, x7, x5
	sub x3, x7, x7
	sub x8, x5, x9
	sub x2, x4, x5
	sltu x2, x8, x4
	srl x1, x2, x8
	slt x8, x3, x1
	xor x7, x2, x3
	srl x2, x8, x8
	sub x9, x4, x7
	and x9, x5, x1
	or x9, x6, x3
	sra x2, x9, x6
	sll x5, x3, x1
	slt x1, x9, x5
	sub x2, x1, x6
	add x5, x7, x8
	xor x7, x2, x9
	or x2, x9, x5
	sub x7, x5, x1
	slt x6, x8, x7
	sll x8, x8, x1
	srl x3, x1, x2
	or x9, x5, x1
	sltu x4, x5, x8
	add x5, x4, x9
	xor x2, x3, x3
	or x9, x3, x6
	xor x6, x6, x7
	sra x6, x4, x8
	sltu x9, x7, x6
	and x9, x8, x7
	xor x2, x5, x2
	slt x6, x1, x5
	or x2, x3, x5
	xor x9, x2, x3
	xor x6, x5, x3
	srl x7, x7, x9
	and x3, x1, x2
	sll x2, x8, x9
	sra x3, x8, x6
	sltu x5, x1, x4
	srl x3, x6, x3
	xor x9, x4, x1
	sub x1, x3, x9
	or x4, x1, x6
	slt x9, x9, x3
	slt x6, x7, x1
	sub x8, x4, x3
	add x3, x3, x1
	and x5, x3, x1
	slt x6, x1, x8
	sub x4, x3, x8
	xor x8, x3, x9
	or x2, x1, x8
	sub x4, x5, x4
	xor x4, x4, x8
	and x2, x6, x9
	slt x9, x5, x4
	xor x5, x2, x1
	and x8, x4, x1
	or x1, x1, x8
	sltu x7, x2, x6
	sll x9, x8, x2
	srl x1, x3, x7
	sub x8, x3, x8
	add x9, x6, x3
	or x5, x6, x4
	xor x6, x1, x5
	sra x4, x1, x3
	sub x4, x1, x5
	sra x6, x3, x4
	xor x1, x4, x7
	sll x1, x9, x6
	sll x2, x9, x7
	add x5, x6, x6
	or x1, x5, x3
	srl x1, x2, x7
	sub x4, x7, x5
	xor x3, x2, x9
	and x6, x6, x5
	slt x8, x7, x7
	and x1, x9, x6
	srl x4, x2, x4
	sra x9, x1, x2
	add x5, x5, x1
	sll x2, x9, x5
	and x5, x4, x2
	slt x2, x5, x5
	sll x4, x7, x9
	sub x7, x3, x2
	xor x6, x7, x1
	sll x5, x4, x1
	or x7, x8, x1
	sra x6, x1, x1
	sub x9, x3, x2
	xor x3, x3, x4
	and x7, x3, x9
	sltu x2, x3, x5
	sltu x2, x7, x8
	and x7, x6, x2
	srl x6, x6, x1
	sra x4, x1, x5
	sub x8, x5, x7
	and x5, x8, x4
	sll x8, x3, x3
	sub x8, x8, x4
	srl x9, x8, x7
	add x1, x2, x7
	sra x7, x6, x5
	srl x1, x5, x8
	sltu x1, x7, x8
	xor x3, x2, x6
	slt x4, x4, x5
	add x5, x8, x2
	xor x6, x3, x1
	add x8, x6, x8
	and x2, x9, x6
	sra x2, x8, x4
	slt x2, x7, x9
	sub x7, x1, x3
	sra x8, x3, x2
	sltu x1, x2, x6
	sll x9, x7, x3
	srl x7, x1, x5
	xor x4, x3, x8
	and x6, x7, x9
	and x1, x4, x4
	xor x9, x4, x4
	xor x7, x4, x4
	srl x7, x1, x8
	slt x6, x7, x4
	and x4, x2, x9
	srl x4, x2, x3
	srl x8, x7, x6
	and x2, x1, x1
	or x7, x7, x8
	srl x8, x1, x1
	sra x9, x9, x5
	slt x3, x9, x4
	and x5, x7, x3
	srl x6, x4, x6
	or x4, x3, x8
	sra x6, x7, x5
	xor x6, x8, x3
	srl x4, x4, x1
	sll x3, x5, x5
	or x5, x3, x6
	srl x6, x3, x5
	or x5, x3, x4
	sltu x8, x2, x8
	sll x4, x8, x2
	sltu x7, x8, x9
	sll x4, x3, x1
	xor x2, x8, x5
	and x1, x2, x2
	and x8, x4, x2
	sltu x6, x3, x6
	or x5, x7, x5
	or x5, x3, x3
	and x5, x1, x9
	xor x3, x1, x4
	add x5, x8, x6
	sub x7, x7, x7
	sub x5, x8, x4
	slt x6, x7, x9
	sltu x9, x6, x7
	sll x2, x8, x7
	sll x2, x5, x7
	sub x4, x2, x9
	slt x1, x9, x7
	srl x7, x9, x1
	slt x8, x7, x7
	srl x4, x5, x1
	sltu x9, x3, x4
	srl x6, x5, x7
	sub x6, x8, x6
	add x3, x1, x1
	slt x1, x9, x5
	sll x3, x8, x6
	xor x4, x4, x2
	slt x9, x1, x2
	or x9, x3, x7
	sra x1, x9, x8
	sub x8, x5, x6
	sltu x6, x7, x9
	add x3, x6, x5
	and x2, x5, x1
	or x2, x5, x3
	sll x1, x2, x2
	sltu x6, x2, x2
	srl x2, x5, x8
	or x9, x9, x3
	or x8, x4, x3
	sll x1, x7, x1
	xor x5, x3, x9
	slt x7, x7, x6
	sltu x2, x9, x6
	srl x6, x7, x1
	or x5, x4, x2
	or x8, x8, x8
	and x5, x2, x2
	sltu x6, x2, x9
	and x9, x1, x1
	sll x7, x8, x2
	xor x1, x2, x6
	sltu x9, x1, x2
	or x9, x8, x7
	xor x3, x8, x9
	add x2, x9, x5
	xor x2, x1, x4
	sra x5, x6, x5
	sll x6, x3, x1
	or x6, x9, x2
	sll x5, x7, x3
	sll x8, x3, x9
	sll x8, x4, x6
	srl x9, x2, x9
	add x4, x7, x3
	slt x7, x9, x1
	and x5, x9, x9
	sltu x6, x1, x7
	add x6, x1, x5
	xor x4, x5, x9
	sub x7, x1, x1
	add x8, x1, x7
	sub x1, x8, x5
	xor x7, x2, x6
	sll x2, x1, x9
	srl x9, x5, x5
	or x9, x7, x9
	sra x6, x9, x5
	xor x7, x5, x9
	add x2, x1, x7
	or x7, x9, x3
	or x5, x8, x3
	or x1, x2, x1
	or x4, x5, x8
	and x3, x1, x6
	sub x9, x9, x1
	sub x9, x7, x5
	sltu x4, x3, x7
	sra x5, x1, x3
	or x2, x7, x5
	add x4, x8, x1
	xor x1, x8, x1
	sltu x4, x8, x5
	xor x6, x5, x3
	sll x2, x3, x6
	add x7, x4, x2
	srl x8, x1, x9
	slt x3, x4, x6
	sltu x2, x4, x2
	add x7, x9, x8
	or x8, x9, x4
	sra x1, x3, x3
	sll x7, x6, x5
	sltu x1, x4, x8
	xor x9, x1, x2
	xor x5, x5, x1
	slt x9, x7, x5
	or x5, x6, x6
	srl x4, x9, x4
	xor x5, x3, x6
	sll x4, x4, x7
	and x3, x5, x3
	slt x4, x2, x1
	slt x7, x1, x3
	and x2, x3, x3
	sub x8, x8, x8
	sra x6, x6, x7
	xor x9, x4, x6
	and x6, x2, x7
	slt x8, x9, x6
	sll x7, x4, x9
	slt x5, x7, x7
	or x6, x4, x6
	and x2, x2, x3
	slt x9, x6, x8
	sub x3, x5, x3
	and x4, x1, x3
	xor x9, x2, x2
	sra x4, x3, x1
	xor x4, x8, x9
	and x7, x5, x3
	or x7, x7, x2
	sra x3, x7, x3
	sltu x6, x8, x1
	add x7, x3, x4
	sra x9, x7, x4
	slt x5, x6, x7
	or x1, x2, x8
	sltu x3, x9, x7
	and x1, x9, x7
	slt x6, x9, x6
	add x1, x7, x4
	sltu x4, x2, x7
	and x3, x2, x3
	srl x6, x6, x5
	xor x7, x4, x9
	srl x7, x7, x6
	sub x5, x9, x9
	sub x9, x6, x6
	slt x2, x8, x4
	sll x5, x8, x2
	sltu x4, x9, x3
	sra x3, x8, x3
	sra x1, x6, x5
	sltu x5, x5, x8
	add x6, x7, x7
	srl x5, x3, x8
	and x8, x6, x1
	srl x3, x6, x3
	and x9, x4, x1
	slt x4, x6, x8
	xor x4, x3, x3
	xor x6, x8, x9
	sra x3, x5, x5
	or x9, x8, x3
	add x7, x8, x4
	add x3, x9, x7
	srl x7, x7, x2
	or x7, x3, x2
	and x3, x8, x6
	add x6, x3, x6
	and x5, x8, x9
	sra x5, x9, x4
	slt x5, x4, x4
	or x3, x5, x3
	sub x7, x3, x3
	or x3, x8, x4
	sltu x2, x7, x5
	and x7, x3, x3
	or x9, x1, x5
	slt x6, x5, x9
	srl x6, x2, x4
	sra x8, x1, x3
	xor x1, x4, x1
	sra x4, x2, x4
	add x5, x1, x4
	sub x7, x9, x7
	add x1, x9, x1
	slt x7, x6, x2
	and x5, x7, x7
	sra x3, x9, x7
	sra x9, x3, x4
	add x9, x2, x8
	and x2, x3, x8
	add x7, x3, x5
	add x3, x5, x4
	sub x3, x9, x1
	sra x3, x5, x1
	sub x5, x2, x7
	xor x1, x6, x2
	xor x7, x5, x1
	sll x7, x7, x4
	srl x9, x2, x2
	add x5, x2, x4
	sll x8, x2, x7
	sra x6, x9, x2
	sub x9, x1, x2
	srl x4, x4, x1
	slt x9, x8, x2
	or x6, x9, x9
	sltu x8, x9, x2
	srl x5, x8, x9
	and x8, x6, x2
	sltu x5, x9, x6
	sra x4, x4, x2
	sub x9, x6, x7
	slt x2, x5, x7
	xor x3, x1, x5
	sub x7, x3, x8
	add x7, x7, x1
	add x9, x5, x6
	sltu x6, x7, x8
	sra x4, x4, x6
	sub x8, x6, x1
	sll x2, x3, x3
	xor x7, x2, x1
	or x9, x3, x3
	srl x5, x7, x6
	add x8, x5, x4
	xor x4, x1, x2
	sll x9, x1, x3
	add x7, x1, x3
	sub x2, x1, x5
	xor x7, x6, x5
	add x9, x6, x5
	and x3, x9, x6
	xor x5, x2, x1
	and x6, x7, x9
	srl x4, x6, x7
	and x4, x6, x2
	add x7, x7, x9
	srl x6, x8, x7
	add x1, x6, x2
	sll x2, x3, x8
	slt x1, x9, x6
	or x8, x4, x5
	slt x5, x6, x4
	slt x1, x9, x5
	sra x8, x2, x8
	slt x3, x9, x6
	sub x6, x7, x5
	srl x8, x8, x7
	sra x6, x4, x2
	or x9, x9, x9
	add x2, x4, x2
	or x6, x1, x6
	srl x8, x2, x5
	add x1, x9, x7
	or x8, x1, x7
	sll x9, x9, x6
	sll x7, x9, x9
	xor x7, x2, x4
	srl x5, x9, x5
	xor x6, x4, x2
	sub x3, x7, x1
	add x1, x3, x9
	or x8, x3, x1
	sub x3, x5, x2
	add x1, x6, x5
	sltu x6, x7, x8
	sll x9, x7, x8
	sll x9, x6, x9
	sra x2, x3, x3
	sltu x1, x5, x1
	add x5, x4, x1
	xor x4, x3, x8
	sra x7, x2, x5
	srl x1, x5, x1
	slt x3, x6, x7
	sra x7, x9, x8
	or x6, x9, x3
	xor x8, x7, x7
	sll x9, x9, x9
	xor x8, x8, x7
	add x4, x9, x1
	or x7, x5, x5
	sra x6, x9, x9
	add x8, x3, x9
	slt x2, x3, x3
	add x5, x4, x1
	add x5, x6, x1
	sll x5, x7, x2
	or x4, x8, x9
	sra x6, x1, x9
	xor x2, x1, x6
	sltu x2, x7, x2
	add x5, x4, x2
	xor x1, x8, x9
	sub x9, x3, x5
	sll x2, x6, x8
	add x1, x4, x8
	xor x7, x6, x8
	slt x5, x2, x7
	srl x2, x1, x8
	and x1, x6, x2
	xor x6, x7, x2
	slt x8, x6, x2
	sra x9, x8, x4
	sra x9, x1, x8
	xor x9, x6, x5
	and x1, x4, x6
	srl x3, x1, x5
	sub x9, x4, x8
	and x9, x8, x3
	add x8, x4, x4
	slt x4, x4, x4
	sra x9, x3, x2
	and x1, x8, x4
	xor x9, x5, x7
	srl x9, x1, x7
	or x8, x1, x2
	slt x8, x6, x2
	sub x9, x7, x3
	sll x8, x8, x3
	xor x7, x5, x5
	srl x7, x1, x9
	slt x5, x9, x9
	add x8, x3, x9
	srl x3, x3, x9
	srl x7, x7, x1
	sltu x9, x8, x7
	add x8, x2, x4
	srl x3, x7, x6
	slt x3, x3, x7
	and x4, x3, x9
	sub x7, x1, x6
	sra x7, x5, x2
	sra x7, x2, x2
	xor x8, x4, x5
	and x1, x3, x5
	sub x7, x5, x8
	xor x7, x8, x4
	xor x5, x2, x4
	sra x8, x9, x8
	sll x5, x4, x2
	sltu x5, x2, x5
	slt x5, x8, x8
	add x6, x1, x2
	and x9, x1, x2
	add x7, x5, x5
	sll x1, x5, x5
	or x8, x1, x1
	add x5, x3, x7
	sub x7, x8, x3
	sltu x7, x1, x1
	xor x5, x6, x1
	xor x3, x3, x1
	add x9, x8, x4
	sll x6, x1, x4
	slt x7, x9, x3
	srl x7, x7, x6
	sltu x6, x1, x1
	sll x5, x6, x1
	add x3, x3, x2
	and x1, x2, x3
	or x3, x5, x6
	sub x6, x3, x1
	and x4, x6, x7
	slt x4, x3, x5
	add x9, x8, x7
	sra x6, x7, x5
	or x4, x6, x1
	sub x1, x2, x7
	xor x9, x5, x6
	slt x8, x1, x5
	or x8, x8, x3
	and x1, x2, x4
	and x5, x3, x5
	or x1, x2, x1
	add x1, x1, x7
	srl x6, x4, x9
	sub x5, x8, x6
	sub x3, x4, x1
	srl x1, x7, x4
	srl x3, x8, x1
	sra x9, x2, x2
	sub x3, x1, x3
	and x9, x8, x2
	sltu x6, x5, x2
	or x4, x9, x2
	xor x8, x7, x6
	sra x1, x1, x4
	sra x5, x2, x6
	sub x4, x1, x2
	slt x6, x7, x2
	sra x8, x4, x3
	sll x7, x6, x4
	srl x8, x6, x5
	sub x9, x9, x1
	sub x3, x1, x6
	sra x7, x9, x8
	sra x6, x4, x6
	slt x7, x6, x1
	srl x8, x8, x1
	and x8, x6, x4
	add x4, x7, x4
	sll x4, x2, x5
	slt x8, x4, x7
	srl x6, x1, x2
	slt x4, x6, x3
	sub x9, x5, x3
	sll x8, x8, x8
	add x7, x1, x2
	or x5, x4, x4
	or x4, x9, x8
	sltu x9, x5, x6
	sll x9, x1, x1
	sub x8, x3, x2
	sltu x4, x4, x9
	sra x9, x2, x5
	add x5, x3, x3
	or x2, x5, x9
	or x3, x7, x5
	sll x6, x5, x7
	or x5, x5, x5
	sub x6, x4, x9
	slt x9, x3, x2
	and x1, x1, x2
	sra x9, x9, x3
	srl x8, x5, x5
	xor x7, x9, x3
	sra x5, x2, x9
	sltu x6, x4, x1
	sltu x3, x8, x3
	and x3, x8, x8
	add x1, x7, x3
	and x3, x1, x2
	or x2, x2, x1
	add x8, x7, x9
	and x7, x4, x3
	sra x2, x3, x4
	sll x2, x4, x8
	srl x7, x9, x5
	slt x7, x9, x1
	sltu x1, x9, x1
	add x2, x2, x2
	slt x5, x7, x8
	or x6, x1, x3
	xor x8, x5, x1
	sra x7, x5, x7
	sltu x5, x7, x9
	xor x7, x6, x2
	sub x4, x6, x3
	sub x4, x4, x1
	sra x1, x8, x6
	srl x2, x6, x8
	add x5, x5, x1
	sltu x2, x2, x7
	sltu x5, x7, x7
	add x4, x5, x5
	add x3, x2, x3
	sltu x3, x8, x9
	xor x1, x5, x5
	and x7, x1, x8
	sll x9, x5, x1
	srl x7, x8, x1
	sltu x1, x9, x1
	sra x1, x1, x3
	sltu x7, x7, x6
	sll x9, x6, x3
	sltu x3, x8, x6
	and x3, x8, x6
	add x6, x2, x9
	sra x8, x7, x2
	add x6, x9, x7
	sltu x4, x4, x1
	and x2, x8, x4
	and x5, x3, x2
	sra x1, x3, x4
	add x7, x5, x5
	sra x9, x7, x4
	sub x5, x4, x3
	slt x5, x1, x2
	or x8, x3, x8
	sub x2, x2, x3
	slt x2, x1, x9
	sll x2, x3, x4
	srl x2, x7, x1
	add x3, x4, x2
	sll x8, x6, x1
	sub x7, x6, x9
	sra x7, x8, x9
	xor x1, x4, x8
	xor x6, x8, x2
	and x4, x6, x1
	xor x2, x6, x4
	sll x9, x6, x2
	sub x6, x4, x8
	sltu x6, x1, x4
	sra x2, x5, x4
	sll x9, x9, x7
	srl x8, x4, x2
	srl x6, x2, x4
	sltu x6, x1, x1
	and x2, x8, x4
	sltu x8, x8, x3
	and x6, x4, x3
	sra x7, x3, x2
	sra x2, x6, x5
	add x3, x7, x6
	sub x2, x4, x4
	add x9, x5, x4
	or x9, x4, x9
	or x4, x2, x5
	sra x2, x1, x4
	sll x3, x9, x5
	slt x7, x7, x1
	srl x7, x7, x1
	srl x1, x9, x6
	and x5, x2, x1
	srl x3, x3, x6
	sub x8, x4, x2
	sra x6, x5, x4
	xor x2, x2, x9
	sll x4, x5, x8
	sltu x8, x5, x7
	sll x9, x6, x7
	sra x8, x8, x5
	sltu x4, x5, x2
	or x8, x8, x7
	add x6, x1, x4
	sll x5, x7, x2
	srl x3, x8, x9
	or x3, x7, x6
	sltu x5, x6, x7
	or x4, x5, x7
	sub x3, x7, x9
	slt x7, x9, x3
	add x9, x1, x1
	srl x4, x9, x7
	sub x7, x3, x8
	sll x6, x7, x5
	xor x4, x1, x6
	slt x3, x1, x5
	sra x2, x5, x7
	or x6, x2, x7
	add x1, x1, x9
	and x2, x4, x6
	sra x7, x3, x9
	srl x6, x3, x1
	sll x3, x2, x5
	srl x7, x9, x2
	xor x6, x8, x7
	sll x2, x1, x8
	add x6, x2, x6
	slt x4, x4, x2
	srl x4, x4, x6
	or x9, x7, x7
	sub x5, x1, x2
	slt x5, x9, x2
	or x3, x7, x3
	xor x5, x2, x2
	srl x3, x9, x4
	slt x4, x1, x1
	or x7, x8, x8
	sll x5, x1, x9
	and x2, x5, x7
	sub x5, x6, x4
	slt x7, x4, x5
	srl x9, x2, x7
	sll x2, x6, x1
	slt x1, x9, x5
	or x4, x1, x8
	sra x4, x6, x3
	sll x6, x6, x6
	xor x7, x1, x8
	slt x1, x4, x7
	sll x5, x2, x8
	xor x7, x9, x1
	xor x6, x5, x2
	slt x2, x3, x5
	xor x6, x4, x4
	sra x1, x3, x9
	srl x1, x8, x4
	sub x1, x5, x3
	sub x5, x9, x9
	sub x3, x5, x3
	sub x9, x9, x6
	or x4, x5, x9
	sra x7, x7, x4
	or x9, x3, x3
	srl x3, x8, x6
	and x7, x8, x2
	sra x1, x1, x9
	and x2, x6, x4
	srl x2, x4, x3
	sll x8, x6, x5
	slt x6, x3, x1
	sll x3, x4, x1
	sll x4, x2, x8
	xor x2, x9, x3
	sra x2, x3, x4
	or x8, x8, x5
	add x3, x8, x8
	sra x6, x6, x3
	or x2, x1, x1
	srl x9, x2, x4
	xor x7, x5, x8
	sltu x3, x1, x8
	and x5, x7, x7
	sub x6, x9, x1
	sltu x9, x5, x6
	or x4, x8, x4
	sra x8, x6, x3
	add x6, x5, x2
	add x5, x9, x4
	add x5, x2, x1
	add x4, x1, x6
	srl x7, x9, x6
	srl x6, x1, x9
	slt x1, x5, x3
	srl x1, x1, x3
	and x5, x3, x5
	slt x6, x8, x3
	add x4, x7, x4
	sll x5, x4, x4
	or x6, x3, x7
	srl x9, x9, x8
	xor x7, x2, x1
	xor x7, x3, x2
	slt x3, x8, x1
	slt x1, x2, x7
	xor x4, x7, x1
	srl x7, x3, x9
	srl x1, x8, x2
	xor x5, x8, x5
	sub x8, x7, x7
	add x5, x2, x5
	sll x7, x1, x7
	xor x3, x6, x9
	slt x7, x3, x2
	sra x5, x4, x6
	or x9, x9, x4
	sll x8, x9, x3
	sub x2, x6, x3
	and x1, x2, x8
	slt x1, x1, x9
	sll x6, x1, x3
	sub x4, x7, x5
	sltu x7, x3, x2
	or x8, x5, x8
	srl x9, x8, x8
	sra x7, x2, x5
	sll x3, x4, x2
	or x2, x7, x3
	sub x7, x7, x4
	sub x8, x5, x1
	sll x6, x3, x8
	xor x3, x1, x3
	sub x6, x1, x6
	sltu x4, x8, x6
	or x6, x3, x7
	srl x1, x8, x2
	sra x2, x1, x7
	add x6, x5, x5
	srl x5, x2, x1
	sub x1, x5, x5
	xor x7, x5, x2
	slt x3, x9, x6
	xor x9, x3, x8
	or x4, x2, x2
	sra x6, x6, x6
	sll x5, x5, x3
	sub x1, x9, x5
	xor x5, x9, x3
	sub x6, x9, x8
	slt x8, x5, x3
	and x5, x6, x1
	sra x3, x2, x4
	slt x1, x1, x8
	and x8, x4, x8
	or x4, x4, x3
	slt x1, x2, x4
	slt x8, x9, x1
	sub x1, x8, x5
	srl x8, x4, x1
	srl x1, x6, x7
	add x2, x7, x3
	slt x2, x7, x7
	srl x7, x2, x5
	add x6, x2, x4
	and x8, x3, x5
	add x8, x4, x1
	xor x1, x4, x2
	srl x8, x1, x5
	or x2, x2, x6
	and x1, x8, x8
	and x7, x6, x9
	add x2, x4, x7
	sub x9, x2, x9
	xor x4, x2, x4
	slt x8, x5, x5
	slt x2, x8, x9
	xor x1, x7, x7
	and x5, x4, x3
	sra x2, x8, x9
	or x5, x4, x5
	and x5, x5, x3
	xor x2, x1, x9
	sra x3, x7, x3
	and x1, x5, x1
	add x7, x8, x7
	sll x3, x3, x6
	add x9, x3, x9
	add x8, x5, x4
	srl x1, x6, x2
	sub x5, x9, x3
	sltu x1, x2, x2
	sub x1, x1, x7
	or x6, x9, x7
	xor x7, x5, x7
	sra x5, x1, x8
	and x1, x2, x8
	srl x3, x3, x3
	and x7, x9, x5
	sll x7, x4, x5
	srl x4, x8, x3
	sra x1, x8, x4
	or x3, x7, x7
	add x5, x9, x4
	slt x8, x5, x4
	or x1, x9, x9
	add x5, x7, x1
	sltu x4, x3, x6
	slt x7, x9, x6
	srl x1, x9, x9
	sub x6, x3, x6
	slt x2, x8, x6
	xor x4, x7, x1
	slt x9, x4, x7
	add x9, x2, x2
	add x9, x2, x9
	sub x9, x9, x8
	sra x1, x2, x7
	add x9, x4, x1
	sub x6, x3, x4
	xor x2, x9, x4
	sub x2, x8, x9
	add x4, x3, x4
	and x8, x5, x7
	sub x3, x1, x1
	sll x9, x1, x7
	sltu x3, x9, x2
	sra x2, x3, x9
	and x4, x1, x5
	xor x8, x7, x5
	or x4, x2, x2
	add x1, x1, x1
	srl x1, x3, x6
	slt x6, x3, x5
	or x3, x4, x7
	sra x8, x5, x9
	sra x2, x6, x8
	add x4, x4, x8
	sltu x4, x1, x6
	and x8, x6, x7
	sltu x8, x7, x3
	sra x6, x8, x5
	sub x8, x4, x6
	xor x8, x6, x5
	or x2, x4, x9
	add x8, x9, x7
	slt x7, x7, x2
	and x7, x7, x3
	add x9, x8, x5
	sll x8, x1, x9
	slt x7, x1, x5
	srl x6, x1, x5
	srl x7, x7, x7
	slt x9, x4, x7
	or x6, x7, x8
	srl x4, x4, x9
	add x1, x9, x8
	and x9, x2, x1
	sub x3, x9, x6
	sll x7, x7, x2
	sll x9, x7, x4
	sub x3, x4, x6
	sub x3, x8, x9
	sltu x6, x4, x1
	or x1, x4, x7
	add x6, x7, x7
	and x6, x9, x4
	or x8, x2, x6
	add x9, x7, x4
	sltu x7, x5, x9
	xor x7, x2, x6
	sra x9, x5, x1
	slt x9, x2, x6
	srl x6, x2, x7
	or x8, x6, x8
	and x9, x2, x4
	sub x1, x2, x6
	slt x9, x6, x9
	and x5, x7, x4
	srl x4, x5, x4
	sll x6, x6, x2
	xor x2, x6, x1
	srl x3, x3, x3
	xor x3, x8, x2
	sll x7, x4, x7
	sll x6, x9, x8
	or x7, x2, x1
	sub x8, x7, x8
	sra x1, x6, x6
	srl x1, x7, x6
	slt x4, x9, x8
	sll x8, x9, x2
	xor x7, x6, x5
	srl x8, x2, x8
	sub x5, x7, x1
	or x1, x7, x4
	slt x1, x5, x7
	and x5, x7, x9
	sra x9, x7, x1
	add x1, x6, x6
	sll x9, x8, x6
	sub x4, x4, x1
	srl x4, x4, x5
	sra x6, x2, x5
	sll x8, x9, x6
	or x6, x7, x9
	sub x7, x2, x4
	sra x7, x2, x5
	add x7, x2, x2
	sub x3, x2, x3
	xor x5, x2, x6
	and x2, x8, x5
	sltu x3, x6, x8
	srl x2, x8, x3
	sll x5, x8, x5
	slt x8, x3, x5
	slt x7, x8, x2
	add x4, x6, x8
	srl x4, x7, x2
	or x6, x3, x7
	or x5, x6, x9
	and x5, x8, x7
	add x1, x7, x7
	sll x6, x7, x3
	or x3, x8, x3
	and x3, x2, x3
	sub x5, x2, x3
	sub x5, x9, x9
	sll x1, x7, x6
	or x3, x5, x6
	sll x6, x4, x2
	sltu x5, x9, x7
	sll x9, x6, x3
	srl x2, x8, x4
	or x2, x9, x3
	sltu x8, x5, x4
	add x8, x1, x1
	srl x7, x5, x6
	sltu x6, x9, x2
	and x9, x9, x9
	or x3, x1, x2
	and x8, x6, x2
	sltu x7, x2, x2
	slt x5, x4, x9
	add x5, x5, x1
	sub x2, x7, x3
	sub x5, x4, x8
	slt x2, x4, x9
	slt x2, x3, x2
	slt x2, x7, x3
	srl x6, x6, x7
	slt x3, x4, x9
	xor x3, x2, x5
	srl x1, x3, x3
	srl x2, x5, x6
	slt x6, x9, x2
	sub x6, x6, x2
	xor x2, x8, x5
	and x3, x4, x9
	sub x6, x2, x2
	and x9, x9, x4
	xor x9, x1, x7
	sll x4, x9, x4
	and x4, x1, x5
	srl x1, x9, x9
	srl x2, x2, x8
	xor x7, x5, x6
	add x8, x4, x3
	sub x7, x5, x7
	sub x7, x6, x7
	add x3, x7, x3
	sll x8, x4, x8
	srl x8, x2, x6
	sll x7, x2, x1
	sll x9, x8, x4
	sra x1, x2, x2
	slt x8, x8, x9
	sltu x2, x8, x4
	slt x6, x7, x1
	xor x9, x7, x1
	sub x6, x7, x5
	and x2, x1, x3
	srl x2, x3, x1
	srl x7, x5, x1
	add x1, x4, x2
	sub x5, x9, x1
	xor x1, x7, x9
	slt x4, x5, x7
	and x7, x1, x7
	or x2, x7, x8
	sra x3, x5, x5
	sub x5, x8, x2
	sra x7, x8, x3
	slt x7, x9, x8
	slt x4, x8, x1
	add x3, x3, x6
	and x1, x4, x7
	slt x9, x1, x3
	srl x6, x4, x3
	sra x6, x8, x9
	sll x2, x9, x9
	sub x9, x9, x8
	sltu x8, x5, x3
	and x3, x1, x4
	xor x3, x2, x8
	sltu x5, x1, x1
	or x7, x2, x9
	sltu x9, x2, x2
	xor x6, x1, x9
	sltu x1, x6, x6
	and x8, x3, x5
	slt x3, x2, x9
	sra x4, x1, x3
	sub x6, x1, x3
	sra x2, x3, x2
	sub x7, x7, x4
	sra x1, x8, x8
	xor x5, x8, x5
	xor x5, x2, x4
	srl x2, x8, x4
	sltu x4, x7, x7
	sub x1, x6, x3
	sra x6, x1, x4
	sra x7, x6, x7
	add x3, x7, x2
	sltu x7, x6, x3
	or x4, x7, x1
	add x7, x2, x3
	sll x4, x4, x5
	srl x5, x7, x1
	sub x7, x5, x1
	sll x8, x5, x5
	srl x5, x6, x9
	srl x6, x7, x6
	add x3, x5, x6
	or x1, x3, x2
	slt x7, x8, x7
	srl x7, x1, x1
	sltu x9, x9, x4
	slt x2, x4, x6
	srl x9, x9, x9
	sltu x3, x5, x7
	srl x2, x3, x3
	and x7, x4, x2
	xor x9, x3, x7
	and x9, x5, x9
	sltu x8, x1, x3
	sltu x7, x1, x3
	xor x8, x3, x2
	sra x6, x3, x3
	sub x6, x5, x4
	or x3, x8, x3
	sll x2, x3, x3
	sra x8, x4, x3
	slt x9, x4, x5
	and x2, x9, x8
	srl x7, x9, x6
	xor x2, x1, x3
	sra x1, x4, x6
	srl x6, x7, x1
	add x4, x6, x6
	add x1, x9, x4
	add x3, x7, x4
	and x9, x8, x9
	add x1, x2, x3
	add x1, x1, x5
	slt x9, x8, x6
	srl x2, x6, x9
	xor x5, x6, x8
	xor x1, x7, x4
	add x2, x3, x1
	xor x2, x6, x8
	and x6, x7, x5
	or x8, x3, x9
	or x9, x2, x8
	sll x3, x1, x2
	srl x7, x6, x6
	xor x5, x6, x6
	sltu x3, x7, x9
	sll x9, x7, x5
	sub x5, x9, x3
	sub x8, x6, x7
	add x8, x9, x2
	sra x6, x2, x1
	sra x3, x1, x5
	add x6, x4, x9
	slt x5, x5, x3
	and x5, x2, x2
	sll x3, x4, x9
	and x5, x5, x3
	slt x8, x4, x8
	xor x3, x3, x8
	slt x8, x9, x6
	add x7, x8, x3
	sll x2, x7, x7
	and x7, x4, x3
	slt x7, x9, x8
	slt x2, x9, x8
	xor x8, x8, x3
	slt x6, x7, x2
	sltu x6, x7, x6
	slt x4, x7, x8
	sll x8, x4, x9
	sra x6, x9, x6
	and x1, x1, x9
	srl x5, x7, x9
	srl x8, x2, x4
	sub x8, x3, x7
	add x7, x5, x1
	slt x4, x9, x8
	sltu x2, x7, x4
	sltu x8, x7, x4
	and x9, x9, x1
	slt x2, x9, x4
	srl x8, x6, x9
	and x6, x3, x2
	and x1, x7, x1
	sub x9, x3, x3
	or x5, x9, x7
	and x2, x8, x9
	xor x1, x4, x7
	sra x9, x1, x1
	or x3, x4, x3
	sra x2, x3, x6
	sll x3, x7, x4
	srl x2, x6, x4
	sll x3, x3, x6
	srl x1, x3, x6
	sltu x5, x5, x6
	sra x7, x2, x3
	and x5, x8, x5
	sltu x2, x6, x8
	sra x1, x6, x1
	sll x9, x9, x4
	slt x4, x7, x7
	sll x1, x7, x2
	and x9, x4, x9
	or x3, x5, x5
	add x8, x2, x2
	or x4, x9, x1
	sub x8, x4, x3
	or x6, x5, x7
	add x1, x7, x1
	sra x4, x4, x9
	add x4, x5, x1
	slt x7, x1, x2
	and x9, x2, x6
	and x7, x5, x8
	add x2, x6, x5
	add x3, x3, x5
	xor x6, x9, x6
	and x9, x1, x9
	sra x3, x7, x6
	and x5, x2, x4
	add x9, x2, x5
	add x7, x1, x2
	sra x7, x8, x9
	sltu x4, x9, x8
	and x5, x2, x5
	sra x3, x4, x9
	sll x5, x1, x9
	srl x7, x4, x5
	slt x8, x4, x4
	slt x2, x6, x1
	and x8, x9, x4
	and x9, x7, x8
	sub x6, x1, x8
	sll x7, x2, x6
	sltu x8, x7, x9
	sra x4, x5, x5
	sub x2, x4, x4
	xor x9, x7, x8
	sra x5, x2, x4
	slt x9, x2, x8
	xor x1, x2, x5
	sll x9, x4, x1
	sltu x6, x9, x6
	xor x4, x2, x9
	xor x4, x7, x2
	srl x2, x3, x3
	or x6, x7, x2
	or x9, x1, x3
	sub x7, x6, x7
	sll x5, x7, x6
	sra x8, x7, x4
	xor x3, x9, x8
	sltu x4, x8, x2
	and x3, x8, x1
	add x1, x9, x7
	xor x6, x4, x3
	sra x3, x2, x2
	sltu x7, x2, x6
	add x2, x4, x5
	or x2, x1, x3
	sll x6, x5, x6
	and x7, x8, x3
	xor x5, x8, x4
	slt x9, x5, x7
	or x1, x4, x5
	srl x8, x3, x9
	sll x4, x5, x6
	slt x9, x9, x2
	sub x8, x6, x7
	or x3, x5, x9
	and x4, x9, x8
	add x1, x2, x3
	and x9, x2, x4
	srl x6, x7, x6
	sll x4, x1, x5
	sll x9, x7, x8
	srl x8, x8, x5
	sltu x2, x6, x9
	xor x5, x5, x1
	xor x9, x2, x9
	xor x1, x3, x5
	add x1, x9, x1
	add x5, x9, x5
	xor x4, x9, x3
	sll x7, x4, x1
	and x8, x5, x6
	srl x3, x4, x4
	or x2, x6, x5
	srl x3, x1, x2
	and x3, x3, x7
	sltu x1, x2, x7
	add x5, x3, x4
	slt x8, x4, x1
	or x9, x1, x3
	xor x6, x8, x3
	slt x3, x6, x4
	add x9, x1, x6
	slt x9, x9, x8
	slt x1, x7, x1
	sra x1, x8, x3
	sll x9, x5, x5
	and x2, x2, x8
	srl x1, x7, x9
	and x6, x6, x3
	sltu x8, x6, x5
	sra x1, x4, x5
	sll x4, x5, x1
	sll x7, x2, x5
	add x1, x3, x2
	srl x5, x9, x7
	sra x7, x3, x4
	or x9, x9, x3
	srl x8, x7, x6
	add x8, x8, x8
	or x8, x2, x2
	slt x8, x6, x8
	slt x7, x7, x9
	or x5, x3, x2
	or x2, x1, x6
	xor x1, x3, x2
	add x7, x5, x9
	or x7, x2, x5
	srl x9, x6, x3
	sll x4, x2, x3
	or x1, x3, x5
	add x5, x1, x7
	and x8, x9, x8
	sub x2, x3, x6
	slt x6, x1, x8
	xor x3, x3, x9
	sra x1, x7, x2
	slt x2, x2, x4
	add x2, x6, x9
	slt x4, x5, x8
	sra x9, x9, x1
	xor x4, x8, x6
	sra x9, x9, x9
	and x8, x9, x3
	sra x3, x4, x5
	sltu x7, x6, x4
	slt x7, x8, x1
	and x1, x1, x4
	sra x1, x4, x8
	and x8, x5, x6
	sll x3, x6, x5
	sra x4, x4, x9
	sll x3, x9, x1
	sub x4, x4, x2
	sll x9, x9, x5
	add x3, x5, x7
	add x9, x2, x4
	or x7, x9, x3
	sll x6, x7, x1
	and x2, x2, x8
	sltu x2, x9, x3
	xor x9, x6, x7
	sltu x1, x1, x9
	or x1, x9, x6
	sub x5, x9, x2
	slt x5, x9, x3
	and x9, x8, x2
	sub x1, x8, x1
	sub x1, x8, x6
	sll x6, x2, x6
	slt x9, x2, x9
	xor x1, x3, x6
	sltu x7, x3, x5
	slt x5, x7, x5
	and x1, x5, x7
	sltu x3, x5, x3
	sll x1, x6, x2
	sra x6, x7, x7
	srl x8, x4, x1
	add x8, x3, x3
	sra x1, x2, x6
	sub x9, x2, x2
	or x1, x9, x9
	slt x3, x3, x4
	sltu x5, x4, x8
	sra x4, x1, x3
	sll x6, x4, x1
	xor x4, x6, x9
	or x5, x9, x6
	srl x7, x3, x7
	or x2, x6, x3
	and x3, x1, x8
	and x7, x4, x4
	sub x7, x5, x3
	slt x9, x7, x8
	and x5, x8, x3
	xor x9, x7, x2
	and x5, x1, x2
	add x1, x9, x8
	srl x4, x1, x6
	sll x5, x2, x4
	or x1, x2, x1
	sub x2, x5, x7
	or x4, x2, x3
	sll x6, x3, x1
	xor x4, x7, x1
	sll x3, x7, x7
	sll x5, x8, x5
	sll x4, x4, x1
	sub x5, x7, x6
	srl x5, x1, x4
	sltu x6, x2, x5
	srl x1, x6, x9
	sll x7, x1, x8
	sll x1, x1, x6
	sub x3, x6, x9
	or x7, x2, x3
	sub x4, x2, x3
	add x5, x4, x1
	srl x9, x5, x1
	sll x5, x9, x5
	sub x6, x9, x6
	and x3, x3, x1
	or x3, x2, x7
	sub x3, x5, x1
	add x1, x7, x1
	and x3, x1, x2
	srl x2, x8, x4
	sltu x3, x9, x9
	sub x4, x8, x8
	and x4, x9, x9
	and x7, x1, x6
	sltu x7, x7, x1
	sub x4, x8, x5
	sub x1, x4, x2
	sub x4, x8, x4
	sltu x8, x1, x8
	sub x2, x4, x5
	xor x7, x9, x1
	and x4, x6, x6
	or x8, x7, x2
	or x6, x8, x7
	xor x1, x4, x2
	or x8, x6, x5
	and x1, x6, x2
	xor x2, x3, x2
	xor x5, x9, x2
	slt x4, x8, x8
	srl x6, x8, x3
	add x5, x4, x8
	srl x8, x1, x8
	sltu x4, x9, x6
	and x1, x7, x9
	slt x4, x5, x4
	sll x2, x7, x1
	sub x4, x1, x3
	sll x2, x5, x3
	and x7, x7, x6
	sub x7, x6, x7
	slt x5, x2, x4
	sltu x7, x1, x6
	sub x7, x5, x9
	sra x3, x7, x2
	xor x2, x7, x8
	sub x8, x7, x2
	sll x9, x2, x9
	slt x1, x1, x8
	slt x6, x9, x5
	slt x8, x7, x1
	sll x2, x4, x9
	slt x8, x5, x8
	add x9, x1, x1
	sra x8, x2, x5
	sltu x1, x7, x6
	sltu x8, x7, x6
	sra x2, x6, x1
	sub x1, x3, x6
	xor x3, x1, x8
	add x6, x1, x4
	sltu x1, x9, x5
	or x1, x9, x8
	sll x1, x1, x1
	and x4, x3, x5
	xor x6, x9, x4
	xor x1, x8, x6
	and x6, x4, x1
	sll x9, x6, x2
	sra x3, x6, x1
	and x6, x5, x8
	srl x8, x6, x3
	xor x1, x8, x3
	or x5, x4, x4
	slt x1, x1, x7
	srl x3, x4, x7
	sltu x8, x2, x4
	slt x6, x6, x4
	sll x7, x5, x3
	sll x3, x4, x2
	and x6, x5, x6
	sub x5, x1, x2
	add x8, x5, x4
	and x6, x5, x2
	slt x7, x5, x3
	add x7, x4, x3
	xor x6, x9, x2
	xor x4, x5, x7
	add x6, x6, x6
	add x3, x3, x4
	sra x2, x8, x6
	or x8, x9, x2
	srl x6, x5, x1
	sltu x3, x1, x9
	add x9, x1, x1
	xor x4, x6, x6
	sra x9, x9, x1
	xor x1, x8, x2
	sltu x6, x8, x6
	or x2, x9, x2
	xor x5, x3, x5
	sll x7, x3, x7
	sll x9, x3, x7
	and x5, x5, x6
	sub x1, x8, x6
	srl x8, x7, x5
	xor x3, x7, x6
	sll x3, x8, x6
	sltu x6, x8, x3
	sltu x2, x6, x6
	sra x5, x2, x1
	sltu x3, x2, x1
	and x5, x3, x4
	and x9, x6, x8
	srl x4, x8, x5
	slt x8, x3, x2
	add x9, x4, x8
	srl x8, x8, x6
	sltu x7, x4, x8
	sltu x5, x7, x5
	srl x2, x2, x7
	sll x4, x5, x7
	or x5, x6, x2
	sll x2, x5, x1
	sub x5, x3, x1
	sra x1, x5, x1
	and x7, x8, x6
	sub x4, x6, x6
	srl x4, x9, x8
	slt x8, x9, x5
	slt x9, x3, x2
	add x5, x4, x6
	or x5, x5, x5
	xor x6, x1, x8
	and x4, x9, x6
	srl x6, x5, x6
	xor x4, x1, x4
	sub x2, x7, x4
	srl x3, x4, x9
	sra x8, x5, x6
	add x3, x4, x2
	sll x6, x5, x5
	slt x2, x8, x5
	sra x5, x2, x8
	slt x3, x2, x9
	and x2, x8, x8
	sra x7, x1, x3
	slt x6, x7, x7
	slt x1, x4, x9
	srl x4, x6, x5
	sltu x6, x9, x5
	sll x1, x8, x3
	sll x4, x6, x8
	and x1, x7, x7
	srl x5, x5, x1
	sll x6, x2, x2
	sll x5, x4, x1
	srl x5, x1, x7
	sub x7, x7, x2
	add x8, x5, x8
	sll x7, x7, x3
	sll x8, x7, x4
	and x7, x8, x3
	sub x4, x2, x2
	sra x8, x8, x5
	and x2, x4, x4
	slt x6, x1, x7
	slt x7, x2, x4
	slt x9, x9, x9
	sll x5, x9, x8
	sltu x3, x6, x2
	sub x1, x3, x4
	srl x3, x6, x8
	sub x7, x8, x9
	xor x7, x7, x6
	add x5, x7, x4
	add x7, x7, x1
	xor x6, x3, x4
	slt x2, x5, x9
	sub x4, x9, x8
	or x2, x2, x8
	add x1, x5, x1
	and x7, x8, x4
	add x5, x1, x8
	slt x8, x9, x7
	xor x8, x2, x6
	xor x6, x4, x7
	sra x7, x1, x1
	slt x6, x8, x3
	srl x1, x1, x5
	slt x1, x7, x1
	srl x7, x7, x1
	slt x6, x6, x2
	and x8, x3, x2
	xor x5, x1, x7
	srl x7, x7, x4
	and x8, x5, x4
	sub x8, x5, x7
	sra x1, x5, x8
	xor x5, x6, x6
	and x1, x3, x7
	srl x6, x8, x6
	sltu x2, x3, x2
	sll x6, x8, x9
	slt x4, x8, x2
	and x3, x2, x7
	and x7, x1, x4
	xor x7, x2, x2
	sub x4, x1, x5
	xor x3, x3, x4
	add x8, x8, x2
	or x9, x7, x4
	sra x3, x7, x5
	slt x5, x8, x6
	sll x5, x1, x5
	or x7, x8, x5
	xor x8, x5, x3
	sltu x1, x6, x6
	srl x6, x4, x6
	sra x2, x3, x7
	sltu x2, x4, x8
	add x7, x9, x1
	add x5, x4, x3
	srl x8, x9, x3
	sltu x6, x7, x4
	sltu x1, x9, x9
	xor x2, x8, x4
	sra x7, x1, x2
	srl x7, x9, x8
	slt x5, x9, x8
	sub x2, x7, x6
	xor x7, x2, x6
	xor x8, x2, x3
	sltu x8, x7, x4
	sra x3, x8, x4
	sll x6, x3, x3
	sltu x1, x1, x7
	slt x7, x7, x6
	sub x5, x7, x1
	slt x1, x5, x4
	sll x3, x7, x6
	slt x3, x2, x6
	sub x6, x4, x4
	and x5, x5, x3
	sra x1, x6, x6
	srl x4, x8, x2
	sltu x9, x9, x8
	and x8, x8, x2
	srl x1, x6, x4
	sra x7, x1, x2
	and x5, x6, x3
	slt x6, x5, x5
	and x2, x8, x2
	sra x4, x3, x2
	sltu x4, x4, x8
	xor x8, x2, x2
	xor x1, x5, x6
	sltu x7, x7, x8
	srl x2, x3, x2
	or x3, x5, x1
	slt x2, x9, x1
	add x8, x8, x1
	and x5, x4, x1
	sll x9, x6, x3
	sub x8, x1, x1
	sll x4, x1, x7
	sltu x5, x1, x1
	sltu x3, x1, x8
	or x5, x2, x6
	sub x3, x1, x6
	slt x2, x2, x4
	and x1, x9, x2
	sll x1, x3, x9
	slt x8, x2, x1
	sub x9, x6, x6
	xor x7, x1, x1
	or x7, x9, x3
	sltu x5, x1, x2
	and x3, x6, x3
	sll x3, x3, x2
	sltu x2, x1, x2
	srl x6, x1, x2
	sll x7, x4, x2
	sra x7, x3, x6
	or x2, x9, x3
	sll x6, x7, x6
	or x4, x8, x5
	srl x3, x4, x1
	sltu x8, x6, x3
	srl x7, x7, x5
	sub x9, x8, x8
	sub x8, x1, x3
	xor x7, x1, x4
	sub x3, x4, x2
	sub x5, x9, x9
	slt x4, x8, x4
	add x3, x5, x1
	or x1, x3, x5
	srl x2, x9, x1
	sll x6, x1, x8
	srl x6, x9, x2
	sub x2, x5, x9
	slt x7, x4, x8
	xor x5, x3, x3
	sra x7, x4, x7
	srl x8, x8, x3
	xor x1, x4, x9
	or x6, x2, x4
	sltu x8, x9, x4
	or x5, x1, x3
	or x5, x4, x6
	sra x2, x8, x3
	add x5, x9, x8
	sra x3, x6, x5
	add x9, x2, x4
	sra x9, x6, x3
	and x1, x6, x1
	sub x7, x6, x8
	sltu x7, x6, x4
	sub x1, x6, x5
	sltu x4, x3, x1
	xor x1, x1, x2
	slt x1, x8, x1
	sra x3, x8, x8
	sub x9, x1, x3
	slt x4, x4, x2
	srl x6, x4, x5
	slt x4, x5, x9
	sra x6, x9, x2
	sub x7, x5, x8
	xor x6, x9, x7
	sll x1, x6, x9
	or x4, x1, x2
	srl x2, x5, x2
	sra x8, x7, x5
	slt x8, x7, x2
	xor x1, x8, x2
	add x5, x7, x9
	xor x3, x4, x2
	srl x8, x8, x8
	sub x1, x3, x1
	slt x9, x3, x4
	sub x4, x7, x7
	xor x3, x2, x7
	and x9, x7, x3
	or x1, x5, x3
	and x9, x8, x2
	sub x3, x1, x5
	sltu x4, x4, x5
	sll x7, x8, x2
	or x6, x2, x9
	and x6, x3, x8
	slt x5, x3, x1
	sltu x5, x6, x6
	add x2, x1, x3
	add x7, x1, x1
	sltu x4, x2, x4
	or x1, x2, x8
	sltu x7, x3, x1
	or x9, x8, x1
	srl x2, x1, x6
	or x8, x8, x2
	or x5, x9, x2
	sra x8, x2, x1
	xor x7, x8, x2
	srl x9, x3, x9
	xor x7, x7, x8
	sra x2, x2, x3
	or x1, x4, x1
	add x1, x9, x8
	sll x9, x8, x3
	xor x2, x8, x4
	sra x2, x4, x6
	sll x4, x6, x1
	sll x6, x4, x4
	sll x4, x9, x4
	xor x4, x3, x2
	sra x4, x4, x9
	and x7, x9, x4
	xor x5, x1, x4
	and x4, x3, x2
	add x5, x9, x1
	or x4, x9, x1
	xor x2, x9, x8
	xor x1, x4, x5
	sltu x2, x5, x3
	sltu x2, x8, x4
	sub x3, x8, x7
	add x1, x7, x5
	sub x1, x9, x7
	sub x4, x8, x7
	sltu x9, x9, x6
	sltu x3, x5, x9
	sub x5, x5, x5
	slt x4, x3, x4
	sub x6, x3, x3
	slt x7, x1, x6
	sltu x9, x5, x3
	and x3, x2, x9
	sub x3, x9, x8
	sltu x3, x3, x5
	sltu x5, x6, x8
	slt x7, x4, x9
	or x5, x3, x9
	and x6, x2, x8
	xor x9, x5, x2
	sra x6, x2, x1
	xor x8, x8, x5
	slt x5, x8, x7
	slt x6, x3, x2
	slt x9, x1, x8
	add x9, x8, x2
	sra x7, x5, x1
	xor x6, x1, x1
	sltu x1, x8, x2
	sra x6, x4, x9
	sra x8, x4, x5
	srl x8, x7, x6
	slt x3, x5, x8
	sll x1, x9, x6
	sra x2, x4, x2
	srl x7, x8, x8
	sub x7, x5, x4
	and x5, x1, x8
	sra x1, x3, x3
	sub x3, x4, x8
	sll x6, x6, x7
	sll x5, x9, x3
	slt x8, x9, x8
	add x6, x2, x1
	slt x8, x5, x9
	and x5, x5, x7
	sll x2, x2, x2
	slt x1, x1, x5
	sltu x9, x4, x2
	and x1, x8, x9
	slt x9, x5, x9
	slt x3, x8, x2
	and x4, x6, x9
	slt x6, x5, x4
	sub x2, x3, x1
	srl x1, x4, x8
	sub x6, x6, x5
	sra x4, x1, x1
	xor x9, x6, x4
	xor x1, x1, x3
	sra x6, x7, x2
	xor x8, x8, x5
	or x4, x8, x7
	or x9, x5, x7
	xor x8, x9, x9
	sub x8, x6, x1
	xor x2, x5, x5
	add x6, x1, x4
	and x2, x1, x8
	add x7, x3, x8
	xor x4, x3, x3
	sub x4, x9, x4
	sll x6, x6, x1
	sltu x2, x7, x1
	srl x9, x7, x6
	slt x4, x5, x3
	srl x2, x3, x7
	or x5, x1, x2
	sub x7, x3, x8
	xor x7, x3, x2
	sra x6, x4, x9
	xor x7, x1, x2
	sub x2, x5, x6
	srl x7, x3, x9
	sra x3, x5, x7
	slt x5, x3, x9
	sltu x8, x7, x1
	sra x4, x4, x5
	sltu x8, x2, x2
	slt x2, x7, x8
	or x3, x7, x4
	srl x5, x4, x3
	srl x2, x4, x8
	slt x1, x9, x2
	srl x3, x2, x8
	or x3, x9, x7
	and x8, x8, x3
	sra x5, x5, x9
	sra x7, x3, x4
	sub x9, x5, x2
	add x4, x2, x2
	sub x7, x5, x1
	sra x7, x5, x8
	sub x1, x2, x1
	sltu x5, x8, x5
	or x3, x6, x8
	sltu x3, x9, x1
	and x5, x5, x3
	xor x4, x6, x8
	sltu x4, x3, x9
	sra x4, x2, x9
	xor x3, x3, x1
	srl x7, x5, x3
	add x1, x8, x5
	slt x1, x3, x5
	sll x6, x5, x8
	or x1, x6, x8
	sub x5, x4, x4
	sra x6, x1, x9
	and x4, x2, x4
	sra x8, x1, x2
	sub x9, x3, x4
	sltu x6, x4, x5
	sltu x7, x7, x5
	and x2, x5, x6
	srl x9, x3, x4
	srl x9, x6, x9
	xor x9, x3, x7
	sra x1, x4, x3
	srl x9, x2, x6
	sra x2, x8, x2
	sltu x7, x2, x1
	or x2, x6, x8
	sltu x3, x4, x6
	sra x6, x9, x5
	or x9, x3, x2
	or x4, x4, x4
	slt x5, x2, x9
	sltu x6, x2, x9
	srl x2, x5, x5
	slt x5, x9, x1
	add x6, x1, x7
	add x1, x5, x9
	and x4, x1, x5
	and x2, x3, x8
	xor x5, x3, x7
	add x6, x9, x7
	sltu x4, x7, x8
	and x1, x5, x4
	srl x2, x4, x9
	slt x9, x2, x1
	sub x9, x7, x1
	sub x3, x1, x9
	srl x4, x5, x3
	sra x8, x5, x4
	xor x1, x4, x5
	srl x7, x7, x4
	add x5, x7, x8
	sltu x4, x8, x8
	xor x2, x9, x8
	sra x7, x4, x5
	sub x7, x1, x1
	or x9, x1, x6
	and x4, x1, x1
	or x5, x7, x1
	sub x7, x9, x4
	and x3, x3, x6
	slt x3, x8, x5
	sub x9, x2, x3
	or x9, x5, x1
	sra x4, x3, x8
	srl x8, x2, x6
	sra x7, x8, x2
	xor x4, x5, x9
	xor x3, x8, x6
	srl x3, x1, x4
	sra x9, x5, x1
	add x6, x4, x6
	add x8, x5, x3
	xor x3, x5, x2
	sll x1, x8, x7
	and x8, x1, x6
	sll x5, x1, x4
	sll x6, x9, x3
	sra x6, x2, x1
	sll x9, x7, x6
	xor x6, x5, x6
	xor x1, x5, x7
	sub x2, x5, x9
	srl x9, x5, x1
	or x9, x7, x8
	or x5, x1, x2
	xor x3, x7, x5
	sub x2, x2, x4
	sll x8, x3, x7
	sra x1, x4, x5
	sll x5, x3, x6
	slt x4, x6, x4
	xor x4, x4, x1
	or x9, x3, x2
	xor x3, x1, x2
	add x7, x1, x5
	sub x5, x1, x8
	sub x8, x3, x5
	sra x1, x4, x8
	slt x5, x4, x1
	sub x7, x9, x3
	and x3, x9, x7
	slt x7, x7, x6
	add x8, x6, x9
	or x1, x7, x6
	and x5, x2, x6
	sltu x3, x9, x6
	sltu x9, x6, x9
	sra x6, x1, x8
	add x8, x4, x9
	xor x5, x7, x9
	sub x4, x2, x1
	add x9, x1, x7
	or x7, x8, x7
	add x3, x8, x1
	add x8, x7, x6
	sltu x1, x7, x5
	add x4, x1, x6
	xor x8, x2, x9
	sub x5, x9, x2
	or x6, x2, x1
	and x3, x4, x8
	sll x7, x3, x1
	srl x5, x6, x6
	sra x2, x4, x9
	srl x3, x1, x3
	or x8, x8, x6
	and x7, x2, x2
	and x1, x4, x9
	or x9, x9, x9
	sll x1, x2, x7
	slt x7, x7, x9
	or x4, x8, x7
	add x3, x5, x7
	slt x7, x1, x4
	slt x5, x1, x9
	add x4, x7, x9
	or x9, x8, x9
	xor x2, x4, x4
	or x7, x8, x1
	sltu x6, x2, x4
	sll x7, x9, x3
	slt x3, x2, x5
	sub x2, x2, x1
	and x2, x6, x9
	sll x5, x4, x8
	add x1, x7, x2
	srl x9, x9, x4
	add x4, x7, x5
	sub x7, x2, x1
	or x7, x5, x6
	and x5, x6, x7
	slt x3, x6, x8
	sll x8, x6, x3
	srl x9, x3, x5
	and x1, x8, x9
	sltu x1, x5, x5
	sub x4, x9, x2
	and x6, x3, x9
	slt x1, x9, x1
	sll x5, x6, x8
	or x7, x3, x6
	sll x2, x1, x4
	add x1, x1, x8
	slt x9, x1, x9
	add x3, x1, x6
	slt x6, x1, x9
	add x6, x7, x8
	sra x5, x5, x7
	xor x8, x8, x9
	srl x8, x8, x6
	xor x1, x7, x4
	sra x3, x8, x7
	or x5, x2, x5
	sll x2, x7, x5
	or x5, x8, x4
	slt x3, x4, x9
	xor x5, x2, x8
	sub x2, x2, x2
	or x8, x9, x8
	srl x4, x8, x1
	add x7, x3, x8
	sll x7, x2, x4
	sub x7, x5, x9
	or x8, x6, x3
	sltu x1, x5, x7
	slt x8, x7, x7
	xor x6, x6, x3
	add x4, x3, x2
	slt x3, x7, x6
	srl x4, x1, x1
	add x9, x6, x1
	srl x1, x5, x1
	add x7, x2, x9
	slt x6, x4, x6
	and x3, x2, x8
	or x7, x6, x1
	sub x2, x2, x8
	slt x1, x6, x2
	or x6, x2, x4
	sltu x4, x7, x6
	sub x5, x7, x3
	sub x1, x7, x4
	slt x5, x2, x7
	srl x8, x3, x6
	srl x6, x2, x8
	slt x6, x9, x9
	sltu x3, x1, x4
	add x8, x6, x1
	sra x4, x4, x4
	srl x4, x8, x3
	and x5, x9, x2
	and x3, x3, x2
	srl x5, x3, x2
	or x6, x3, x3
	slt x1, x7, x5
	or x6, x8, x6
	sltu x2, x7, x8
	sra x7, x4, x4
	sltu x3, x7, x8
	xor x7, x1, x9
	or x9, x9, x1
	sra x1, x8, x1
	or x3, x2, x7
	sll x3, x5, x3
	sltu x3, x9, x3
	sra x9, x9, x9
	sub x2, x5, x8
	sra x9, x3, x9
	and x7, x7, x5
	or x4, x5, x6
	and x6, x6, x3
	sub x7, x6, x9
	srl x8, x9, x5
	or x8, x4, x1
	sltu x7, x4, x9
	sltu x7, x7, x1
	xor x8, x7, x4
	sll x9, x2, x4
	sll x4, x2, x1
	sltu x4, x2, x5
	or x2, x4, x1
	and x4, x9, x9
	sub x3, x1, x2
	srl x5, x4, x4
	sub x4, x5, x3
	or x7, x5, x2
	sra x5, x2, x1
	sra x8, x9, x8
	add x5, x7, x6
	or x6, x6, x8
	sra x9, x4, x3
	slt x8, x1, x3
	and x5, x8, x2
	sltu x7, x2, x7
	sra x3, x3, x4
	sra x2, x6, x1
	or x1, x2, x5
	sll x7, x3, x8
	xor x6, x4, x7
	sll x3, x3, x3
	or x9, x4, x6
	slt x1, x9, x2
	sll x9, x1, x7
	sra x1, x6, x1
	xor x2, x5, x3
	slt x6, x4, x3
	and x8, x2, x8
	sub x9, x8, x5
	sll x5, x6, x6
	sra x6, x1, x1
	srl x9, x6, x3
	add x9, x2, x8
	add x4, x6, x1
	sltu x2, x8, x9
	sra x7, x2, x3
	sll x3, x7, x4
	sra x1, x5, x2
	sll x2, x2, x2
	sub x7, x3, x4
	xor x4, x3, x2
	add x3, x9, x4
	sra x1, x6, x9
	or x1, x1, x1
	sll x4, x4, x1
	or x6, x1, x7
	sub x4, x4, x7
	sltu x3, x2, x9
	add x5, x1, x2
	slt x3, x8, x4
	and x8, x5, x9
	sltu x6, x7, x1
	sll x9, x4, x6
	and x6, x1, x6
	xor x1, x2, x6
	add x4, x2, x5
	sll x5, x7, x4
	or x4, x9, x9
	and x6, x3, x5
	sub x6, x7, x4
	and x6, x2, x7
	xor x6, x3, x3
	xor x3, x9, x6
	or x6, x1, x4
	srl x2, x8, x5
	and x3, x7, x5
	add x3, x1, x9
	sra x7, x4, x5
	sll x5, x4, x6
	sub x8, x8, x3
_fjump3:
	xor x3, x9, x9
	add x4, x4, x9
	sll x5, x2, x6
	sll x6, x4, x1
	xor x6, x2, x5
	srl x3, x1, x5
	slt x6, x8, x8
	sub x1, x5, x6
	srl x7, x2, x3
	xor x7, x5, x7
	and x8, x1, x5
	sll x9, x2, x3
	sltu x6, x4, x5
	sltu x7, x3, x2
	and x2, x9, x5
	sra x2, x4, x7
	and x3, x5, x9
	sra x5, x5, x5
	sll x5, x3, x7
	srl x1, x9, x1
	slti x0, x0, -256
