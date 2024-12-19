import sys
import re
import tinyrv

def main():
    # Check if a log file argument is provided
    if len(sys.argv) != 3:
        print("Usage: python riscv_decoder.py <log_file> <out_file>")
        sys.exit(1)
    
    log_file = sys.argv[1]  # Get the log file path from command-line arguments
    out_file = sys.argv[2]
    
    with open(out_file, 'w') as o:
        try:
            with open(log_file, 'r') as f:
                for line in f:
                    # Find the 4th column which contains the instruction in hex
                    match = re.match(r'.*\s\((0x[0-9a-fA-F]+)\)\s*', line)
                    if match:
                        hex = match.group(1)
                        op = tinyrv.decode(int(hex,16))
                        o.write(hex)
                        o.write(" ")
                        o.write(op.name)
                        o.write("\n")
        except FileNotFoundError:
            print(f"Error: The file '{log_file}' was not found.")
    

if __name__ == '__main__':
    main()
