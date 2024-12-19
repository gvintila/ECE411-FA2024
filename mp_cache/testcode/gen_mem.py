import random

def generate_random_hex(length):
    # Generates a random hex string of the specified length
    hex_chars = "0123456789abcdef"
    return "".join(random.choice(hex_chars) for _ in range(length)) + "\n"

f = open("memory.lst", "w")
asm = []

# Fill start for file
asm.append("@00000000\n")

# Fill with random 256 bit data for 1024 entries
# (I don't want to make 4GB of data)
for i in range():
    for i in range(256 // 32):
        asm.append(generate_random_hex(8))

f.writelines(asm)
f.close()