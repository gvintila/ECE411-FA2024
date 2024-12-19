.section .text
.globl _start, _br1, _br2, _br3, _br4
_start:
	lui x1, 0x27857
	addi x1, x1, 785
	lui x2, 0x65192
	addi x2, x2, 525
	lui x3, 0x42139
	addi x3, x3, 717
	lui x4, 0x26907
	addi x4, x4, 467
	lui x5, 0x20478
	addi x5, x5, 298
	lui x6, 0x15474
	addi x6, x6, 629
	lui x7, 0x16373
	addi x7, x7, 726
	lui x8, 0x81261
	addi x8, x8, 759
	lui x9, 0x47032
	addi x9, x9, 186
	and x1, x3, x4
	srl x9, x1, x4
	xor x3, x6, x5
	sll x6, x1, x8
	sll x3, x6, x3
	srl x6, x1, x4
	sra x4, x5, x7
	or x6, x6, x3
	add x9, x4, x2
	slt x5, x6, x8
	and x8, x9, x4
	sub x7, x8, x2
	and x5, x8, x8
	or x8, x5, x3
	sltu x2, x1, x2
	sub x1, x1, x1
	or x5, x6, x6
	add x6, x9, x3
	sub x2, x6, x5
	sll x4, x2, x5
	or x8, x7, x4
	xor x5, x1, x7
	slt x4, x3, x6
	sra x3, x8, x1
	sub x7, x1, x5
	sll x7, x2, x8
	sll x4, x2, x1
	or x9, x9, x8
	sub x5, x3, x7
	add x3, x8, x5
	sll x1, x6, x3
	sub x2, x8, x9
	and x1, x9, x5
	add x3, x3, x3
	sll x9, x9, x5
	slt x4, x5, x6
	slt x3, x4, x4
	xor x9, x8, x6
	add x7, x5, x8
	or x8, x3, x9
	slt x9, x4, x8
	or x2, x7, x3
	or x4, x6, x4
	sltu x9, x2, x2
	add x4, x9, x1
	srl x6, x7, x4
	add x8, x7, x1
	xor x7, x9, x6
	xor x6, x2, x8
	sub x9, x5, x4
	sll x1, x1, x1
	sra x5, x2, x7
	srl x8, x3, x5
	sub x5, x1, x8
	sll x4, x8, x4
	add x3, x7, x4
	add x4, x2, x9
	sra x8, x3, x7
	sub x3, x1, x1
	slt x8, x5, x6
	xor x3, x6, x1
	xor x9, x1, x3
	sltu x4, x5, x2
	srl x9, x9, x6
	xor x9, x6, x7
	or x5, x6, x1
	sll x9, x5, x5
	slt x3, x7, x4
	or x4, x4, x8
	xor x9, x6, x7
	xor x3, x9, x7
	or x9, x4, x6
	add x1, x8, x4
	and x4, x9, x1
	sltu x4, x4, x8
	and x4, x7, x5
	sra x6, x3, x9
	sll x5, x8, x7
	slt x2, x9, x6
	srl x4, x2, x2
	sltu x7, x4, x4
	srl x3, x4, x5
	add x1, x7, x4
	add x4, x8, x1
	or x3, x4, x7
	sltu x7, x3, x1
	sra x2, x4, x7
	xor x3, x2, x9
	sra x3, x4, x3
	slt x1, x9, x6
	srl x7, x6, x3
	sub x2, x8, x8
	slt x6, x8, x6
	slt x9, x7, x7
	or x5, x2, x4
	srl x9, x5, x3
	srl x9, x6, x2
	sll x6, x6, x3
	srl x5, x6, x8
	slt x1, x5, x9
	and x5, x5, x1
	sub x6, x1, x9
	sra x8, x1, x5
	xor x3, x4, x5
	sltu x8, x8, x8
	sll x7, x9, x1
	srl x5, x7, x1
	and x6, x9, x5
	or x7, x4, x2
	add x4, x7, x6
	add x5, x7, x5
	sra x7, x4, x2
	sra x5, x6, x4
	xor x3, x2, x7
	sub x8, x3, x1
	add x5, x9, x8
	sltu x4, x8, x3
	sll x7, x5, x8
	srl x1, x4, x9
	sltu x2, x7, x5
	sra x1, x5, x7
	or x8, x4, x2
	and x8, x5, x2
	sra x7, x9, x4
	or x9, x9, x7
	and x5, x2, x2
	and x1, x4, x8
	and x3, x6, x2
	sra x9, x4, x8
	add x2, x6, x1
	and x3, x9, x5
	slt x1, x3, x5
	sltu x4, x3, x8
	and x5, x9, x8
	add x2, x4, x1
	or x1, x2, x8
	sll x5, x8, x2
	sra x2, x4, x8
	srl x3, x2, x3
	slt x6, x8, x7
	sra x8, x9, x8
	slt x3, x2, x2
	xor x3, x7, x7
	srl x6, x4, x1
	slt x2, x6, x7
	sltu x8, x8, x3
	slt x2, x2, x1
	sra x6, x2, x3
	srl x5, x8, x5
	sra x2, x5, x3
	sub x4, x7, x1
	sltu x9, x6, x1
	srl x9, x2, x1
	and x2, x6, x5
	sub x4, x2, x9
	sll x8, x2, x5
	xor x5, x1, x6
	and x8, x5, x9
	srl x3, x6, x3
	sll x4, x3, x8
	sll x6, x8, x3
	and x1, x7, x3
	xor x2, x2, x4
	xor x4, x5, x2
	srl x7, x6, x8
	sll x2, x7, x5
	srl x7, x3, x4
	srl x6, x2, x8
	and x2, x5, x3
	or x7, x7, x9
	sltu x5, x5, x5
	sltu x6, x6, x3
	sll x1, x1, x2
	sll x3, x6, x5
	xor x3, x5, x1
	or x9, x5, x5
	sll x5, x5, x2
	sra x4, x8, x4
	add x4, x1, x3
	xor x3, x8, x7
	sll x9, x3, x8
	slt x4, x9, x8
	sub x5, x7, x9
	or x9, x7, x4
	or x8, x7, x9
	sltu x4, x2, x5
	or x9, x8, x4
	sra x4, x1, x7
	or x5, x8, x3
	and x6, x2, x1
	add x7, x9, x3
	slt x7, x4, x8
	srl x1, x2, x8
	sll x1, x1, x3
	add x8, x4, x6
	sub x5, x4, x6
	add x5, x1, x4
	and x7, x1, x5
	and x6, x3, x4
	sltu x2, x5, x3
	sra x8, x3, x3
	slt x9, x8, x5
	sll x2, x5, x7
	or x1, x4, x1
	slt x3, x1, x9
	sll x1, x5, x8
	sra x7, x7, x1
	slt x7, x8, x2
	sltu x8, x9, x9
	sub x3, x1, x7
	sra x8, x4, x4
	sll x4, x2, x3
	sub x8, x7, x9
	sub x1, x8, x7
	add x3, x7, x1
	sub x7, x2, x3
	and x4, x3, x2
	or x9, x1, x7
	sll x7, x2, x8
	add x2, x4, x2
	sra x6, x6, x2
	sub x5, x9, x5
	sll x8, x3, x1
	slt x3, x5, x8
	sltu x4, x5, x7
	sra x3, x8, x4
	xor x8, x4, x3
	add x1, x8, x3
	or x2, x8, x9
	sra x9, x1, x8
	srl x7, x6, x2
	or x4, x5, x5
	and x3, x2, x8
	sltu x1, x2, x3
	sub x3, x1, x1
	xor x2, x6, x7
	or x5, x6, x5
	add x7, x2, x8
	srl x5, x5, x6
	sll x1, x3, x9
	or x6, x8, x7
	add x1, x2, x4
	srl x9, x3, x1
	or x4, x7, x9
	slt x3, x6, x5
	xor x7, x1, x5
	xor x4, x4, x9
	and x8, x7, x6
	sub x4, x4, x1
	or x6, x4, x3
	sra x1, x1, x3
	or x8, x5, x2
	or x7, x9, x8
	xor x3, x3, x8
	sltu x1, x2, x2
	slt x1, x2, x3
	and x8, x4, x2
	xor x4, x5, x9
	sra x6, x6, x1
	sub x3, x8, x3
	sub x2, x8, x3
	srl x7, x6, x6
	sub x1, x7, x9
	sltu x5, x8, x8
	srl x2, x7, x2
	and x4, x9, x6
	xor x7, x1, x3
	and x8, x6, x8
	add x4, x4, x1
	add x9, x4, x9
	sll x5, x3, x5
	sra x5, x8, x9
	add x1, x3, x9
	and x8, x3, x3
	slt x2, x5, x5
	slt x3, x6, x9
	sltu x6, x2, x4
	add x7, x2, x8
	sra x1, x3, x6
	or x2, x8, x1
	sra x9, x9, x5
	add x6, x1, x4
	sltu x4, x6, x7
	sll x3, x7, x7
	sll x4, x8, x3
	sub x2, x6, x2
	slt x8, x4, x8
	sub x8, x7, x7
	srl x8, x1, x3
	or x1, x8, x4
	sll x4, x5, x5
	sub x3, x5, x6
	srl x1, x8, x5
	srl x6, x2, x6
	sltu x3, x5, x5
	sra x4, x4, x9
	sltu x7, x9, x6
	sra x8, x9, x4
	xor x6, x1, x7
	xor x9, x8, x6
	lui x5, 0x50000
	lui x6, 0x60000
	lui x7, 0x70000
	lui x8, 0x80000
	lui x9, 0x90000
	lui x1, 0x62775
	addi x1, x1, 914
	lui x2, 0x56194
	addi x2, x2, 918
	lui x3, 0x38192
	addi x3, x3, 174
	lui x4, 0x20014
	addi x4, x4, 535
	sw x1, 0(x5)
	sw x2, 0(x6)
	sw x3, 0(x7)
	sw x4, 0(x8)
	lui x1, 0x63331
	addi x1, x1, 666
	lui x2, 0x77935
	addi x2, x2, 926
	lui x3, 0x89136
	addi x3, x3, 164
	lui x4, 0x36082
	addi x4, x4, 305
	lb x1, 2(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 2(x5)
	lb x2, 1(x6)
	lb x3, 1(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 1(x6)
	lb x3, 1(x7)
	lb x4, 0(x8)
	lb x1, 1(x5)
	lb x2, 3(x6)
	lb x3, 0(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 1(x8)
	lb x1, 1(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 0(x7)
	lb x4, 0(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 1(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 1(x8)
	lb x1, 3(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 1(x8)
	lb x1, 1(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 2(x7)
	lb x4, 3(x8)
	lb x1, 0(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 1(x8)
	lb x1, 1(x5)
	lb x2, 3(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 1(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 1(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 1(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
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
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
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
	lh x4, 0(x8)
	lh x1, 0(x5)
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
	lh x4, 0(x8)
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
	lh x3, 0(x7)
	lh x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
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
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 0(x8)
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
	lui x1, 0x34305
	addi x1, x1, 125
	lui x2, 0x67000
	addi x2, x2, 142
	lui x3, 0x88335
	addi x3, x3, 912
	lui x4, 0x23678
	addi x4, x4, 445
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
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
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 3(x7)
	sb x4, 3(x8)
	sb x1, 0(x5)
	sb x2, 0(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 3(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 2(x8)
	sb x1, 0(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 2(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 3(x6)
	sb x3, 1(x7)
	sb x4, 1(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 1(x6)
	sb x3, 3(x7)
	sb x4, 1(x8)
	sb x1, 0(x5)
	sb x2, 1(x6)
	sb x3, 1(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 0(x6)
	sb x3, 3(x7)
	sb x4, 0(x8)
	sb x1, 3(x5)
	sb x2, 0(x6)
	sb x3, 0(x7)
	sb x4, 3(x8)
	sb x1, 1(x5)
	sb x2, 2(x6)
	sb x3, 0(x7)
	sb x4, 0(x8)
	sb x1, 0(x5)
	sb x2, 2(x6)
	sb x3, 2(x7)
	sb x4, 3(x8)
	sb x1, 2(x5)
	sb x2, 2(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
	sb x1, 1(x5)
	sb x2, 3(x6)
	sb x3, 2(x7)
	sb x4, 0(x8)
	sb x1, 2(x5)
	sb x2, 0(x6)
	sb x3, 1(x7)
	sb x4, 0(x8)
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
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 2(x7)
	sh x4, 2(x8)
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
	sh x2, 2(x6)
	sh x3, 0(x7)
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
	sh x3, 0(x7)
	sh x4, 2(x8)
	sh x1, 2(x5)
	sh x2, 0(x6)
	sh x3, 0(x7)
	sh x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 1(x7)
	lb x4, 1(x8)
	lb x1, 2(x5)
	lb x2, 3(x6)
	lb x3, 2(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 2(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 3(x5)
	lb x2, 1(x6)
	lb x3, 3(x7)
	lb x4, 0(x8)
	lb x1, 1(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 0(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 3(x7)
	lb x4, 2(x8)
	lb x1, 2(x5)
	lb x2, 1(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lb x1, 2(x5)
	lb x2, 2(x6)
	lb x3, 1(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 2(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 1(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 0(x6)
	lb x3, 0(x7)
	lb x4, 3(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 1(x5)
	lb x2, 3(x6)
	lb x3, 1(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 2(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 0(x6)
	lb x3, 3(x7)
	lb x4, 1(x8)
	lb x1, 1(x5)
	lb x2, 2(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 2(x5)
	lb x2, 1(x6)
	lb x3, 3(x7)
	lb x4, 2(x8)
	lb x1, 0(x5)
	lb x2, 2(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lb x1, 0(x5)
	lb x2, 3(x6)
	lb x3, 2(x7)
	lb x4, 2(x8)
	lb x1, 3(x5)
	lb x2, 2(x6)
	lb x3, 1(x7)
	lb x4, 2(x8)
	lb x1, 1(x5)
	lb x2, 2(x6)
	lb x3, 0(x7)
	lb x4, 1(x8)
	lb x1, 0(x5)
	lb x2, 1(x6)
	lb x3, 3(x7)
	lb x4, 3(x8)
	lb x1, 1(x5)
	lb x2, 3(x6)
	lb x3, 2(x7)
	lb x4, 0(x8)
	lh x1, 2(x5)
	lh x2, 2(x6)
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
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 2(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
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
	lh x3, 2(x7)
	lh x4, 0(x8)
	lh x1, 0(x5)
	lh x2, 2(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
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
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 2(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 2(x8)
	lh x1, 0(x5)
	lh x2, 0(x6)
	lh x3, 0(x7)
	lh x4, 0(x8)
	lui x1, 0x70381
	addi x1, x1, 668
	lui x2, 0x14508
	addi x2, x2, 453
	lui x3, 0x36848
	addi x3, x3, 432
	lui x4, 0x73297
	addi x4, x4, 665
	lw x1, 0(x5)
	lw x2, 0(x6)
	lw x3, 0(x7)
	lw x4, 0(x8)
	srl x2, x3, x9
	srl x3, x5, x9
	sra x7, x8, x3
	or x8, x9, x3
	and x3, x3, x7
	sll x9, x8, x8
	sltu x3, x3, x1
	or x8, x6, x6
	xor x4, x8, x9
	xor x7, x1, x6
	or x9, x7, x7
	sltu x3, x8, x4
	add x7, x1, x4
	or x8, x9, x2
	sra x4, x8, x5
	slt x6, x5, x5
	and x7, x2, x8
	xor x4, x9, x6
	slt x7, x3, x6
	or x1, x4, x9
	sub x4, x6, x8
	add x5, x3, x4
	add x7, x7, x2
	and x6, x7, x4
	add x3, x1, x8
	add x5, x3, x8
	srl x7, x6, x3
	add x9, x5, x1
	add x2, x8, x7
	srl x3, x5, x8
	sub x6, x8, x4
	or x2, x3, x6
	add x4, x9, x8
	sll x9, x9, x8
	add x4, x9, x1
	sra x8, x1, x8
	srl x9, x9, x7
	add x4, x3, x8
	xor x4, x5, x2
	sub x5, x3, x8
	xor x6, x1, x8
	srl x5, x9, x2
	srl x8, x3, x8
	srl x4, x2, x4
	add x4, x9, x4
	and x1, x2, x6
	sub x1, x4, x3
	or x5, x6, x2
	and x5, x4, x5
	sltu x4, x6, x2
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
	lui x1, 0x39502
	addi x1, x1, 781
	lui x2, 0x41021
	addi x2, x2, 947
	lui x3, 0x86815
	addi x3, x3, 176
	lui x4, 0x55126
	addi x4, x4, 472
	sw x1, 0(x5)
	sw x2, 0(x6)
	sw x3, 0(x7)
	sw x4, 0(x8)
	lui x1, 0x23271
	addi x1, x1, 650
	lui x2, 0x56889
	addi x2, x2, 860
	lui x3, 0x60197
	addi x3, x3, 319
	lui x4, 0x17811
	addi x4, x4, 728
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
	lui x1, 0x66579
	addi x1, x1, 790
	lui x2, 0x76385
	addi x2, x2, 440
	lui x3, 0x97526
	addi x3, x3, 299
	lui x4, 0x31515
	addi x4, x4, 389
	lui x5, 0x42798
	addi x5, x5, 407
	lui x6, 0x74292
	addi x6, x6, 419
	lui x7, 0x36518
	addi x7, x7, 252
	lui x8, 0x53562
	addi x8, x8, 126
	lui x9, 0x85286
	addi x9, x9, 768
	or x8, x7, x1
	sll x3, x4, x8
	sub x2, x1, x5
	and x6, x1, x7
	or x6, x5, x2
	and x8, x7, x3
	xor x1, x3, x7
	or x6, x4, x5
	sra x7, x2, x1
	sub x3, x9, x8
	sra x4, x7, x8
	sra x2, x7, x5
	and x7, x4, x4
	srl x7, x4, x9
	sub x6, x1, x8
	sltu x4, x8, x5
	add x4, x1, x9
	slt x9, x4, x6
	and x9, x9, x8
	sra x8, x6, x2
	sub x8, x2, x2
	sub x8, x4, x6
	slt x2, x4, x6
	add x1, x6, x9
	or x2, x6, x2
	slt x7, x4, x6
	xor x7, x6, x1
	add x4, x7, x7
	and x3, x5, x2
	slt x7, x2, x7
	sll x5, x5, x6
	slt x4, x6, x7
	sub x9, x4, x9
	sra x1, x9, x1
	xor x6, x4, x6
	or x1, x2, x8
	add x4, x8, x7
	add x2, x4, x3
	sltu x9, x8, x3
	sltu x6, x8, x1
	sub x1, x5, x9
	or x7, x7, x5
	srl x7, x9, x2
	slt x4, x1, x6
	or x3, x3, x5
	and x2, x3, x6
	sra x1, x7, x3
	sra x6, x2, x1
	slt x1, x1, x4
	or x3, x3, x2
	sub x3, x2, x3
	and x5, x5, x1
	slt x6, x2, x8
	sll x7, x1, x5
	or x4, x8, x4
	and x1, x4, x7
	srl x6, x2, x9
	add x9, x3, x5
	sra x4, x6, x1
	srl x8, x3, x9
	sub x4, x1, x7
	sltu x4, x4, x6
	and x3, x9, x7
	slt x8, x5, x4
	slt x5, x7, x3
	and x4, x9, x9
	and x7, x5, x5
	sra x1, x9, x5
	and x4, x9, x7
	and x1, x9, x2
	srl x4, x5, x7
	sra x6, x1, x4
	and x7, x2, x1
	sltu x2, x2, x7
	sll x9, x9, x3
	slt x2, x5, x9
	sub x7, x5, x4
	sltu x9, x6, x1
	or x7, x9, x1
	and x8, x9, x6
	srl x9, x4, x2
	slt x8, x9, x8
	slt x6, x4, x6
	sll x8, x1, x8
	slt x3, x5, x8
	sltu x9, x6, x9
	or x8, x6, x4
	and x7, x9, x2
	sll x8, x9, x9
	sltu x8, x1, x5
	sll x6, x7, x2
	sub x7, x1, x2
	xor x8, x4, x1
	slt x7, x1, x7
	sltu x3, x8, x6
	sra x7, x5, x3
	slt x5, x7, x4
	srl x8, x3, x7
	sltu x8, x4, x8
	and x1, x2, x6
	slti x0, x0, -256
