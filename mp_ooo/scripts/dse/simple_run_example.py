#!/usr/bin/env python3

from datetime import datetime
from dse_func import score_calculate, power_run, sim_run,  synth_run, load_runs, make_copy_options_and_params, update_options_and_params

# Get runs from dse_runs.json
runs = load_runs()

# Make copy of original params and options
copy = make_copy_options_and_params()

# Create output file
outfilename = "simple_run_" + datetime.now().strftime('%Y-%m-%d_%H-%M-%S') + ".log"
with open(outfilename, "w") as f:
    f.write(f'Queued Report:')

# Start doing runs
index = 0
for run in runs:

    # Create a name for the run
    name = f"run{index}"

    # Update options and params for the run
    update_options_and_params(run, copy)

    # Run synth and save the data
    synth_data = synth_run(name)

    # If synth timing met, try sim and power
    if synth_data["timingmet"]:
        sim_data = sim_run(run, name)
        power_data = power_run(name)
        # calculate the score
        score = score_calculate(power_data["power"], sim_data["delay"], synth_data["area"])

    # record the data
    with open(outfilename, "w") as f:
        f.write(f'\n')
        f.write(f"\nStarting run {name}")
        f.write(f'\nclock: {run["clock"]}')
        f.write(f'\nungroup: {run["ungroup"]}')
        f.write(f'\ngate_clock: {run["gate_clock"]}')
        f.write(f'\nprog: {run["prog"]}')
        if (not run['params']):
            f.write(f'\nparams: none')
        else:
            f.write(f'\nparams: ')
            for key in run['params']:
                value = run['params'][key]
                f.write(f'\n\t{key}: {value}')
        f.write(f'\n -> AREA: {synth_data["area"]}')
        f.write(f'\n -> SLACK: {synth_data["slack"]}')
        f.write(f'\n -> TIMING MET: {synth_data["timingmet"]}')
        if synth_data["timingmet"]:
            f.write(f'\n -> DELAY: {sim_data["delay"]}')
            f.write(f'\n -> IPC: {sim_data["ipc"]}')
            f.write(f'\n -> POWER: {power_data["power"]}')
            f.write(f'\n -> SCORE: {score}')



