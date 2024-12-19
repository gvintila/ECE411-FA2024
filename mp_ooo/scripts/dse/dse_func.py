#!/usr/bin/env python3

import json
import os
import re
from datetime import datetime

### BASIC PATHS
script_dir  = os.path.dirname(os.path.abspath(__file__))
synth_dir   = script_dir + "/../../synth"
sim_dir     = script_dir + "/../../sim"
options_dir = script_dir + "/../.."
params_dir  = script_dir + "/../../pkg"
arearpt   = "reports/area.rpt"
synthlog  = "reports/synthesis.log"
simlog    = "vcs/simulation.log"
powerrpt  = "reports/power2.rpt"
### DSE VARS
scale       = 10**-12
runs        = []

def load_runs():
    global runs
    # GET JSON OPTIONS
    cdscriptdir()
    with open("dse_runs.json") as f:
        j = json.load(f)
    runs        =   j["runs"]
    return runs

def cdscriptdir():
    os.chdir(script_dir)
    print(f"cd {script_dir}")

def cdsynthdir():
    os.chdir(synth_dir)
    print(f"cd {synth_dir}")

def cdsimdir():
    os.chdir(sim_dir)
    print(f"cd {sim_dir}")

def cdoptionsdir():
    os.chdir(options_dir)
    print(f"cd {options_dir}")

def cdparamsdir():
    os.chdir(params_dir)
    print(f"cd {params_dir}")

def check_meets_timing():
    cdsynthdir()
    # Check for synthesis errors
    if not os.path.isfile('reports/timing.rpt'):
        print("Timing report not existent")
    else:
        if re.search(r'slack \(MET\)', open('reports/timing.rpt').read(), re.IGNORECASE):
            return True
        elif re.search(r'slack \(VIOLATED\)', open('reports/timing.rpt').read(), re.IGNORECASE):
            return False
        else:
            return 'Error'

def get_slack():
    cdsynthdir()
    # Check for synthesis errors
    with open('reports/timing.rpt') as f:
        match = re.search(r'slack.*\s+(-?\d+\.\d+)', f.read())
        return float(match.group(1)) if match else None
    
def get_area():
    cdsynthdir()
    with open(arearpt, 'r') as file:
        match = re.search(r'Total cell area:\s+(\d+\.\d+)', file.read())
        return float(match.group(1)) if match else None

def get_delay():
    cdsimdir()
    with open(simlog, 'r') as file:
        match = re.search(r'Monitor:\s+Power Stop time is\s+([\d\.]+)', file.read())
        return (float(match.group(1))/1000000) if match else None

def get_ipc():
    cdsimdir()
    with open(simlog, 'r') as file:
        match = re.search(r'Monitor:\s+Segment\s+IPC:\s+([\d\.]+)', file.read())
        return float(match.group(1)) if match else None

def get_power():
    cdsynthdir()
    with open(powerrpt, 'r') as file:
        match = re.search(r'Total\s\s.*\s([\d\.e\+-]+)\s*[\w]W', file.read())
        return (float(match.group(1))/1000) if match else None

def make_copy_options_and_params():
    cdparamsdir()
    with open('types.sv', 'r') as file:
        params = file.read()
    cdoptionsdir()
    with open('options.json', 'r') as file:
        options = json.load(file)
    cdscriptdir()
    copy = {
        "params" : params,
        "options" : options
    }
    return copy

def update_options_and_params(run, copy):
    cdparamsdir()
    og_params = copy["params"]
    if (not run["params"]): 
        with open('types.sv', 'w') as file:
            file.write(og_params)
    else:
        new_params = og_params
        if isinstance(run["params"], dict):
            for key in run["params"]:
                regex = r'(.*' + key + '\s*=\s*)(\d+)'
                print(regex)
                new_params = re.sub(regex, r'\g<1>' + str(run["params"][key]), new_params)
        with open('types.sv', 'w') as file:
            file.write(new_params)
    cdoptionsdir()
    data = copy["options"]
    clock = round(run["clock"])
    if clock % 2 != 0:
        clock += 1
    data['clock'] = clock
    data['synth']['ungroup'] = run['ungroup']
    data['synth']['gate_clock'] = run['gate_clock']
    with open('options.json', 'w') as file:
        json.dump(data, file, indent=4)
    cdscriptdir()


def copy_synth_reports(i):
    cdsynthdir()
    os.system(f"mkdir -p {script_dir}/reports")
    os.system(f"cp reports/synthesis.log {script_dir}/reports/synthesis{i}.log")
    os.system(f"cp reports/timing.rpt {script_dir}/reports/timing{i}.rpt")
    os.system(f"cp reports/area.rpt {script_dir}/reports/area{i}.rpt")

def copy_sim_reports(i):
    cdsimdir()
    os.system(f"mkdir -p {script_dir}/vcs")
    os.system(f"cp vcs/simulation.log {script_dir}/vcs/simulation{i}.log")

def copy_power_reports(i):
    cdsynthdir()
    os.system(f"mkdir -p {script_dir}/reports")
    os.system(f"cp reports/power2.rpt {script_dir}/reports/power2{i}.rpt")
    os.system(f"cp reports/power.rpt {script_dir}/reports/power{i}.rpt")


def synth_run(name):
    cdsynthdir()
    os.system('make synth')
    copy_synth_reports(name)
    areatext = get_area()
    slacktext = get_slack()
    timingtext = check_meets_timing()
    cdscriptdir()
    run_data = {
        "area": areatext,
        "slack": slacktext,
        "timingmet": timingtext
    }
    return run_data

def sim_run(run, name):
    cdsimdir()
    os.system(f'make run_vcs_top_tb PROG={run["prog"]}')
    copy_sim_reports(name)
    delaytext = get_delay()
    ipctext = get_ipc()
    cdscriptdir()
    run_data = {
        "delay": delaytext,
        "ipc": ipctext,
    }
    return run_data

def power_run(name):
    cdsynthdir()
    os.system('make power')
    copy_power_reports(name)
    powertext = get_power()
    cdscriptdir()
    run_data = {
        "power": powertext
    }
    return run_data

def score_calculate(power, delay, area):
    score = scale * power * (delay**3) * (area**(1/2))
    return score

def total_run(run, name, copy):
    update_options_and_params(run, copy)
    synth_data = synth_run(name)
    if (synth_data["timingmet"] == True):
        sim_data = sim_run(run, name)
        power_data = power_run(name)
        scoretext = score_calculate(power_data["power"], sim_data["delay"], synth_data["area"])
        run_data = {
            "clock": run["clock"],
            "area": synth_data["area"],
            "slack": synth_data["slack"],
            "timingmet": synth_data["timingmet"],
            "delay": sim_data["delay"],
            "ipc": sim_data["ipc"],
            "power": power_data["power"],
            "score": scoretext
        }
    else:
        run_data = {
            "clock": run["clock"],
            "area": synth_data["area"],
            "slack": synth_data["slack"],
            "timingmet": synth_data["timingmet"],
        }
    return run_data

def total_run_report(run, name, out_file, copy):

    update_options_and_params(run, copy)

    with open(out_file, "a") as f:
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

    synth_data = synth_run(name)

    with open(out_file, "a") as f:
        f.write(f'\n -> AREA: {synth_data["area"]}')
        f.write(f'\n -> SLACK: {synth_data["slack"]}')
        f.write(f'\n -> TIMING MET: {synth_data["timingmet"]}')

    if (synth_data["timingmet"] == True):

        sim_data = sim_run(run, name)

        with open(out_file, "a") as f:
            f.write(f'\n -> DELAY: {sim_data["delay"]}')
            f.write(f'\n -> IPC: {sim_data["ipc"]}')

        power_data = power_run(name)

        with open(out_file, "a") as f:
            f.write(f'\n -> POWER: {power_data["power"]}')

        scoretext = score_calculate(power_data["power"], sim_data["delay"], synth_data["area"])

        with open(out_file, "a") as f:
            f.write(f'\n -> SCORE: {scoretext}')

    if (synth_data["timingmet"]):
        run_data = {
            "clock": run["clock"],
            "area": synth_data["area"],
            "slack": synth_data["slack"],
            "timingmet": synth_data["timingmet"],
            "delay": sim_data["delay"],
            "ipc": sim_data["ipc"],
            "power": power_data["power"],
            "score": scoretext
        }
    else:
        run_data = {
            "clock": run["clock"],
            "area": synth_data["area"],
            "slack": synth_data["slack"],
            "timingmet": synth_data["timingmet"],
        }
    return run_data


