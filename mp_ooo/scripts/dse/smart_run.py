#!/usr/bin/env python3

from datetime import datetime
from dse_func import total_run_report, load_runs, make_copy_options_and_params

# Get runs from dse_runs.json
run =  { 
            "clock" : 1900.0,
            "ungroup" : False,
            "gate_clock" : True,
            "prog" : "../testcode/coremark_im.elf",
            "params" : {
            }
        }
# Save copy of original params and options
copy = make_copy_options_and_params()

# Create output file
outfilename = "qs_run_" + datetime.now().strftime('%Y-%m-%d_%H-%M-%S') + ".log"
with open(outfilename, "w") as f:
    f.write(f'Queued Report:')

# Adjust based on previous runs
lasttimingmet = False
lastclock = 1600.0
# Adjust based on previous runs

delta = abs(lastclock - run["clock"])

for run_idx in range(7):

    # Execute run
    run_data = total_run_report(run, f"{run_idx}", outfilename, copy)

    # Adjust based on last runs
    if (lasttimingmet and run_data["timingmet"]):
        newclock = run["clock"] - delta
    elif (not lasttimingmet and not run_data["timingmet"]):
        newclock = run["clock"] + delta
    else:
        newclock = (run["clock"] + lastclock) / 2
    lastclock = run["clock"]
    lasttimingmet = run_data["timingmet"]
    delta = abs(newclock - lastclock)
    run["clock"] = newclock



