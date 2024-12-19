SHELL=/bin/bash -o pipefail
.SHELLFLAGS += -e

PKG_SRCS  := $(PWD)/../pkg/types.sv
HDL_SRCS  := $(shell find $(PWD)/../hdl -name '*.sv')
COMM_HVL  := $(shell find $(PWD)/../hvl/common -name '*.sv' -o -name '*.v')
VCS_HVL   := $(COMM_HVL) $(shell find $(PWD)/../hvl/vcs -name '*.sv' -o -name '*.v')
VER_HVL   := $(COMM_HVL) $(shell find $(PWD)/../hvl/verilator -name '*.sv' -o -name '*.v')
SRAM_SRCS := $(shell find $(PWD)/../sram/output -name '*.v')
HDRS      := $(shell find $(PWD)/../hvl -name '*.svh') $(PWD)/../hvl/common/rvfi_reference.json
DW_IP     := $(shell python3 $(PWD)/../bin/get_options.py dw_ip)
VCS_SRCS  := $(PKG_SRCS) $(HDL_SRCS) $(VCS_HVL) $(SRAM_SRCS) $(DW_IP)
VER_SRCS  := $(PKG_SRCS) $(HDL_SRCS) $(VER_HVL) $(SRAM_SRCS) $(DW_IP)
VER_EX    := $(PWD)/../hvl/verilator/verilator_harness.cpp
DEBUG     := +define+DEBUG

TIMEOUT   ?= 10000000


export VCS_ARCH_OVERRIDE=linux
VCS_FLAGS= -licqueue -full64 -lca -sverilog -timescale=1ps/1ps -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -msg_config=../vcs_warn.config -xprop=../xprop.config -xprop=flowctrl +incdir+$(DW)/sim_ver +define+DW_SUPPRESS_WARN +incdir+$(PWD)/../hvl/vcs +incdir+$(PWD)/../hvl/common
VER_FLAGS= -Wall --timescale 1ps/1ps --trace-structs --trace-max-array 128 -Mdir build -O3 -CFLAGS "-Ofast -march=native" --x-assign fast --x-initial fast --noassert --cc ../verilator_warn.vlt +define+DW_SUPPRESS_WARN +incdir+$(DW)/sim_ver +incdir+$(PWD)/../hvl/vcs +incdir+$(PWD)/../hvl/common

MTB_MEM := ../testcode/memfile
MTB_VCS_FLAGS= -full64 -lca -sverilog -timescale=1ps/1ps -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -msg_config=../vcs_warn.config +incdir+$(DW)/sim_ver +define+DW_SUPPRESS_WARN +incdir+$(PWD)/../hvl/vcs +incdir+$(PWD)/../hvl/common

vcs/master_tb: $(VCS_SRCS) $(HDRS)
	mkdir -p vcs
	python3 check_sus.py
	cd vcs && vcs $(VCS_SRCS) $(MTB_VCS_FLAGS) -l compile.log -top master_tb -o master_tb
	bash check_compile_error.sh

.PHONY: run_vcs_master_tb
run_vcs_master_tb: vcs/master_tb 
	rm -f vcs/dump.fsdb
	cd vcs && ./master_tb -l simulation.log -exitstatus \
		+MEMLST_ECE411="$(PWD)/../testcode/memfile_32.lst"

vcs/top_tb: $(VCS_SRCS) $(HDRS)
	mkdir -p vcs
	python3 check_sus.py
	python3 ../bin/rvfi_reference.py
	cd vcs && vcs $(VCS_SRCS) $(VCS_FLAGS) -l compile.log -top top_tb -o top_tb
	bash check_compile_error.sh

.PHONY: run_vcs_top_tb
run_vcs_top_tb: vcs/top_tb $(PROG)
	mkdir -p spike
	python3 ../bin/generate_memory_file.py -32 $(PROG)
	rm -f vcs/dump.fsdb
	python3 $(PWD)/../bin/get_options.py clock
	python3 $(PWD)/../bin/get_options.py bmem_x
	cd vcs && ./top_tb -l simulation.log -exitstatus \
		+TIMEOUT_ECE411=$(TIMEOUT) \
		+CLOCK_PERIOD_PS_ECE411=$(shell python3 $(PWD)/../bin/get_options.py clock) \
		+MEMLST_ECE411="$(PWD)/bin/memory_32.lst" \
		+BRAM_0_ON_X_ECE411=$(shell python3 $(PWD)/../bin/get_options.py bmem_x)

verilator/build/Vtop_tb: $(VER_SRCS) $(HDRS) $(VER_EX)
	mkdir -p verilator
	python3 check_sus.py
	python3 ../bin/rvfi_reference.py
	cd verilator ;\
	verilator -trace-fst +define+ECE411_VER_DUMP +define+ECE411_FST_DUMP $(VER_FLAGS) $(VER_SRCS) --top-module top_tb --exe $(VER_EX)
	cd verilator/build ;\
	$(MAKE) --jobs=$(shell echo $(shell nproc)-2 | bc) -f Vtop_tb.mk

.PHONY: run_verilator_top_tb
run_verilator_top_tb: verilator/build/Vtop_tb $(PROG)
	mkdir -p spike
	find ./verilator -maxdepth 1 -type f -delete
	python3 ../bin/generate_memory_file.py -32 $(PROG)
	python3 $(PWD)/../bin/get_options.py clock
	python3 $(PWD)/../bin/get_options.py bmem_x
	cd verilator && ./build/Vtop_tb \
		+TIMEOUT_ECE411=$(TIMEOUT) \
		+CLOCK_PERIOD_PS_ECE411=$(shell python3 $(PWD)/../bin/get_options.py clock) \
		+BRAM_0_ON_X_ECE411=$(shell python3 $(PWD)/../bin/get_options.py bmem_x) \
		+MEMLST_ECE411="$(PWD)/bin/memory_32.lst"

.PHONY: run_verilator_lint
run_verilator_lint: $(VER_SRCS) $(HDRS) $(VER_EX)
	mkdir -p verilator
	python3 check_sus.py
	python3 ../bin/rvfi_reference.py
	cd verilator ;\
	verilator --lint-only +define+ECE411_VER_DUMP +define+ECE411_FST_DUMP $(VER_FLAGS) $(VER_SRCS) --top-module top_tb --exe $(VER_EX)

.PHONY: covrep
covrep: vcs/top_tb.vdb
	cd vcs && urg -dir top_tb.vdb

.PHONY: verdi
verdi:
	mkdir -p verdi
	cd verdi && timeout $(ECE411_GUI_TIMEOUT) $(VERDI_HOME)/bin/verdi -ssf $(PWD)/vcs/dump.fsdb

.PHONY: spike
spike: $(ELF)
	mkdir -p spike
	spike --isa=$(shell python3 $(PWD)/../bin/get_options.py arch) -m0x1eceb000:0xe1315000 --log-commits $(ELF) |& tail -n +6 > spike/spike.log

.PHONY: interactive_spike
interactive_spike: $(ELF)
	spike --isa=$(shell python3 $(PWD)/../bin/get_options.py arch) -m0x1eceb000:0xe1315000 --log-commits -d $(ELF)

.PHONY: clean
clean:
	rm -rf bin vcs verdi verilator spike

### BANANA BREAD RECIPE ###

# run_banana_bread_tb: $(INGRED)

# As you probably know, banana bread is a type of “quick bread”. Quick breads use baking soda and/or baking powder to rise versus using yeast. Because quick breads rely on baking soda/powder, they rise more quickly than yeast breads. Most banana breads need only 65-70 minutes or so in the oven before they have risen & are fully cooked. Therefore, great tasting & moist banana breads are easy AND relatively quick to make! They are a perfect dessert or lunch snack. 

# FYI – This easy banana bread recipe takes me about 10-15 minutes to prepare and clean up. Please be aware that this is an oven-baked banana bread recipe. It is not made with a bread machine. Watch the recipe video below if you are confused about any of the steps needed to make this easy banana bread recipe.

# Ingredients

# 3 – Bananas (RIPE & large sized) – 345 grams – Use exactly 1 1/2 cups of mashed ripe bananas for the best results.
# 8 Tablespoons – Unsalted Butter (softened) – 115 grams
# 2 – Large Eggs – 114 grams – Not extra large or jumbo eggs.
# 1 Cup – White Granulated Sugar – 200 grams – If you want a slightly “richer” taste, you should use 1/2 cup of light brown sugar (packed) & 1/2 cup of white granulated sugar.
# 2 Cups – All Purpose Flour – 240 grams
# 1 Teaspoon – Vanilla Extract – 5 milliliters
# 1 Teaspoon – Baking Soda – 5 grams
# 1 Teaspoon – Baking Powder – 4 grams
# 1/2 Teaspoon – Salt – 3 grams
# Optional – 1 Cup – Chocolate Chips, Fresh Blueberries, Chopped Walnuts or Chopped Pecans
# Servings – Roughly 12 slices

# Equipment Needed – Measuring cup & spoons, mixing bowl, long wooden spoon, 9 by 5 inch metal bread pan, oven mitts, silicon spatula, cooling rack and an oven.

# Recipe Video – Watch How To Make This Recipe

# Instructions

# Preheat oven to 325 degrees F.
# Mash bananas with a fork.
# Soften butter in a microwave. FYI – I semi-melt the butter for better mixability.
# Stir bananas, butter, eggs & sugar together in a large mixing bowl. Mix until fully blended.
# Mix in the remaining ingredients. Stir until the batter is fully mixed.
# Optional – If you want to enhance this “basic” easy banana bread, you can stir in 1 cup of your family’s favorite dessert ingredient (e.g. chocolate chips or chopped walnuts) after you have mixed the batter.
# Pour the finished batter into a nonstick bread pan. Smooth out the top of the batter within the bread pan.
# Bake in the oven for 65-70 minutes at 325 degrees F or until golden brown.
# Take out of oven and let the banana bread cool down in the bread pan for 10 minutes. Use oven mitts. Do not remove the banana bread from the bread pan during this 10 minute cool down period.
# After 10 minutes, remove the banana bread from the bread pan. Place the banana bread on a cooling rack in order to completely cool. This cool down may take 1-2 hours.
