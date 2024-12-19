#!/usr/bin/env python3

from datetime import datetime
from dse_func import score_calculate, power_run, sim_run,  synth_run, load_runs, make_copy_options_and_params, update_options_and_params

# Get runs from dse_runs.json
runs = load_runs()
numruns = len(runs)

# Make copy of original params and options
copy = make_copy_options_and_params()

# Create output file
outfilename = "synth_queue_" + datetime.now().strftime('%Y-%m-%d_%H-%M-%S') + ".log"
with open(outfilename, "w") as f:
    f.write(f'Queued Synth:')

# Start doing runs
for i in range(numruns):

    runs = load_runs()
    run = runs[i]

    # Create a name for the run
    name = f"{i}"

    with open(outfilename, "a") as f:
        f.write(f'\n')
        f.write(f"\nStarting run {name}")
        f.write(f'\nclock: {run["clock"]}')
        f.write(f'\nungroup: {run["ungroup"]}')
        f.write(f'\ngate_clock: {run["gate_clock"]}')
        if (not run['params']):
            f.write(f'\nparams: none')
        else:
            f.write(f'\nparams: ')
            for key in run['params']:
                value = run['params'][key]
                f.write(f'\n\t{key}: {value}')

    # Update options and params for the run
    update_options_and_params(run, copy)

    # Run synth and save the data
    synth_data = synth_run(name)

    # record the data
    with open(outfilename, "a") as f:
        f.write(f'\n -> AREA: {synth_data["area"]}')
        f.write(f'\n -> SLACK: {synth_data["slack"]}')
        f.write(f'\n -> TIMING MET: {synth_data["timingmet"]}')



