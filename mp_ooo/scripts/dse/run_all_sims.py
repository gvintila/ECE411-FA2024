#!/usr/bin/env python3

import re
from datetime import datetime
from dse_func import sim_run, make_copy_options_and_params, update_options_and_params

run =       {
    "clock" : 2000,
    "ungroup" : False,
    "gate_clock" : True,
    "prog" : "../testcode/coremark_im.elf",
    "params" : {}
}

tbs = [
    "../testcode/coremark_im.elf",
    "../testcode/cp3_release_benches/aes_sha.c",
    "../testcode/cp3_release_benches/fft.c",
    "../testcode/cp3_release_benches/mergesort.c",
    "../testcode/additional_testcases/compression_im.elf"
]

copy = make_copy_options_and_params()
update_options_and_params(run, copy)

# Create output file
outfilename = "all_sims_" + datetime.now().strftime('%Y-%m-%d_%H-%M-%S') + ".log"
with open(outfilename, "w") as f:
    f.write(f'Report:')

for tb in tbs:

    match = re.search(r'[^/\\]+$', tb)
    if match:
        name = match.group(0)
    
    run["prog"] = tb

    sim_data = sim_run(run, name)

    # record the data
    with open(outfilename, "w") as f:
        f.write(f'\n')
        f.write(f"\nStarting run {name}")
        f.write(f'\n -> DELAY: {sim_data["delay"]}')
        f.write(f'\n -> IPC: {sim_data["ipc"]}')



