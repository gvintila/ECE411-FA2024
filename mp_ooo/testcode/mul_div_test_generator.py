import random

def generate_mul_div_instructions(num_instructions, min_value=-2147483648, max_value=2147483647):
    instructions = []
    for i in range(32):
        val = random.randint(min_value, max_value)
        instruction = f"li x{i}, {val}"
        instructions.append(instruction)
    for _ in range(num_instructions):
        x = random.randint(1, 31)
        y = random.randint(1, 31)
        z = random.randint(1, 31)
        inst_set = ['mul', 'mulh', 'mulhu', 'mulhsu', 'rem', 'remu' , 'div' , 'divu']
        inst = random.choice(inst_set)
        instruction = f"{inst} x{x}, x{y}, x{z}"
        instructions.append(instruction)
    return instructions

def main():
    num_instructions = int(input("How many addition instructions would you like to generate? "))
    instructions = generate_mul_div_instructions(num_instructions)
    
    f = open("mul_div_test.s", "w")
    asm = []

    asm.append(".section .text\n")
    asm.append(".globl _start, _br1, _br2, _br3, _br4\n")
    asm.append("_start:\n")

    print("\nGenerated Addition Instructions:")
    for instr in instructions:
        asm.append(instr + "\n")
    
    asm.append("\tslti x0, x0, -256\n")

    f.writelines(asm)
    f.close()
    
    
    

if __name__ == "__main__":
    main()
