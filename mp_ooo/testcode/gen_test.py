import random

def do_nop(asm):
    for i in range(5):
        asm.append("\tnop\n")

def fill_regs(asm, n):
    for i in range(1, n):
        r1 = random.randint(11111, 99999)
        r2 = random.randint(111, 999)
        asm.append("\tlui x" + str(i) + ", 0x" + str(r1) + "\n")
        # do_nop(asm)
        asm.append("\taddi x" + str(i) + ", x" + str(i) + ", " + str(r2) + "\n")
        # do_nop(asm)

def fill_regs_mem(asm):
    for i in range(5, 10):
        r = i * 10000
        asm.append("\tlui x" + str(i) + ", 0x" + str(r) + "\n")
        # do_no(asm)

def sw_regs_mem(asm):
    for i in range(1, 5):
        r = i + 4
        asm.append("\tsw x" + str(i) + ", 0(x" + str(r) + ")\n")
        # do_no(asm)

def sh_regs_mem(asm):
    for i in range(1, 5):
        mem = i + 4
        r = random.choice([0, 2])
        asm.append("\tsh x" + str(i) + ", " + str(r) + "(x" + str(mem) + ")\n")
        # do_no(asm)

def sb_regs_mem(asm):
    for i in range(1, 5):
        mem = i + 4
        r = random.randint(0, 3)
        asm.append("\tsb x" + str(i) + ", " + str(r) + "(x" + str(mem) + ")\n")
        # do_no(asm)

def lw_regs_mem(asm):
    for i in range(1, 5):
        r = i + 4
        asm.append("\tlw x" + str(i) + ", 0(x" + str(r) + ")\n")
        # do_nop(asm)

def lh_regs_mem(asm):
    for i in range(1, 5):
        mem = i + 4
        r = random.choice([0, 2])
        asm.append("\tlh x" + str(i) + ", " + str(r) + "(x" + str(mem) + ")\n")
        # do_nop(asm)

def lb_regs_mem(asm):
    for i in range(1, 5):
        mem = i + 4
        r = random.randint(0, 3)
        asm.append("\tlb x" + str(i) + ", " + str(r) + "(x" + str(mem) + ")\n")
        # do_nop(asm)

def gen_instr(n, asm):
    insts = ["\tadd",
             "\tsub",
             "\tsll",
             "\tslt",
             "\tsltu",
             "\txor",
             "\tsrl",
             "\tsra",
             "\tor",
             "\tand"]
    
    for i in range(n):
        rs1 = random.randint(1, 9)
        rs2 = random.randint(1, 9)
        rd = random.randint(1, 9)
        r = random.randint(0, len(insts)-1)
        r_inst = insts[r]
        r_inst += " x" +  str(rd) + ", x" + str(rs1) + ", x" + str(rs2) + "\n"
        asm.append(r_inst)
        # do_nop(asm)
    
def forward_test1(asm):
    for i in range(50):
        asm.append("\taddi x1, x1, 111\n")
    
def forward_test2(asm):
    # Prepare memory locations
    fill_regs_mem(asm)

    # Fill regs
    fill_regs(asm, 5)

    # Store values into memory locations
    sw_regs_mem(asm)

    # Fill regs
    fill_regs(asm, 5)

    for i in range(50):
        asm.append("\tlw x2, 0(x5)\n")
        asm.append("\taddi x1, x2, 11\n")
        asm.append("\tsw x1, 0(x5)\n")
    
def branch_test1(asm):
    asm.append("\taddi x4, x0, 10\n")
    asm.append("\tnop\n")
    asm.append("_br1:\n")
    asm.append("\taddi x4, x4, -1\n")
    asm.append("\tnop\n")
    asm.append("\tbne x4, x0, _br1\n")

    asm.append("\taddi x3, x0, 10\n")
    asm.append("\taddi x2, x0, 100\n")
    asm.append("_br2:\n")
    asm.append("\taddi x3, x3, 10\n")
    asm.append("\tnop\n")
    asm.append("\tblt x3, x2, _br2\n")

    asm.append("\taddi x3, x0, 10\n")
    asm.append("\taddi x2, x0, 100\n")
    asm.append("_br3:\n")
    asm.append("\taddi x3, x3, 10\n")
    asm.append("\tnop\n")
    asm.append("\tbge x3, x2, _br4\n")
    asm.append("\tjal x1, _br3\n")

    asm.append("_br4:\n")

    # Fill regs
    fill_regs(asm, 10)

    # Do random instr
    gen_instr(100, asm)

def flush_test1(asm):
    # Prepare memory locations
    fill_regs_mem(asm)

    asm.append("\taddi x4, x0, 10\n")
    asm.append("_fl1:\n")
    asm.append("\taddi x4, x4, -1\n")
    asm.append("\tsw x4, 0(x6)\n")
    asm.append("\tbne x4, x0, _fl1\n")

    asm.append("\taddi x3, x0, 10\n")
    asm.append("\taddi x2, x0, 100\n")
    asm.append("_fl2:\n")
    asm.append("\taddi x3, x3, 10\n")
    asm.append("\tsw x3, 0(x8)\n")
    asm.append("\tlw x3, 0(x8)\n")
    asm.append("\tblt x3, x2, _fl2\n")

    asm.append("\taddi x3, x0, 10\n")
    asm.append("\taddi x2, x0, 100\n")
    asm.append("_fl3:\n")
    asm.append("\taddi x3, x3, 10\n")
    asm.append("\tsw x3, 0(x7)\n")
    asm.append("\tlw x3, 0(x7)\n")
    asm.append("\tsw x3, 0(x6)\n")
    asm.append("\tbge x3, x2, _fl4\n")
    asm.append("\tjal x1, _fl3\n")

    asm.append("_fl4:\n")

    # Fill regs
    fill_regs(asm, 10)

    # Do random instr
    gen_instr(100, asm)

def far_jump_test(asm):
    asm.append("\tjal x2, _fjump1\n")

    gen_instr(5000, asm)

    asm.append("_fjump1:\n")

    gen_instr(20, asm)

    asm.append("\tjal x2, _fjump2\n")

    gen_instr(5000, asm)

    asm.append("_fjump2:\n")

    gen_instr(20, asm)

    asm.append("\tjal x2, _fjump3\n")

    gen_instr(5000, asm)

    asm.append("_fjump3:\n")

    gen_instr(20, asm)


f = open("cp3_example.s", "w")
asm = []

# Fill start for file
asm.append(".section .text\n")
asm.append(".globl _start, _br1, _br2, _br3, _br4\n")
asm.append("_start:\n")

# Fill regs
fill_regs(asm, 31)

# Do random instr
gen_instr(1000, asm)

# Prepare memory locations
fill_regs_mem(asm)

# Fill regs
fill_regs(asm, 5)

# Store values into memory locations
sw_regs_mem(asm)

for i in range(3):
    # Fill regs
    fill_regs(asm, 5)

    # Load values from memory locations
    for i in range(30):
        lb_regs_mem(asm)

    for i in range(30):
        lh_regs_mem(asm)

    # Prepare memory locations
    fill_regs_mem(asm)

    # Fill regs
    fill_regs(asm, 5)

    # Store values into memory locations
    for i in range(500):
        sb_regs_mem(asm)

    # Store values into memory locations
    for i in range(200):
        sh_regs_mem(asm)

    # Load values from memory locations
    for i in range(30):
        lb_regs_mem(asm)

    for i in range(200):
        lh_regs_mem(asm)

# Fill regs
fill_regs(asm, 5)

lw_regs_mem(asm)

# Do random instr
gen_instr(50, asm)

# Forward testing
forward_test1(asm)
forward_test2(asm)

# Branch testing
branch_test1(asm)

# Flush testing
flush_test1(asm)

# Far jump testing (for prefetcher)
far_jump_test(asm)

asm.append("\tslti x0, x0, -256\n")

f.writelines(asm)
f.close()