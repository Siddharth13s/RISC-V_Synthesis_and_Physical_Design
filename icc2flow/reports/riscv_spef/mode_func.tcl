################################################################################
#
# Created by icc2 write_script on Wed Jul 31 19:39:44 2024
#
################################################################################

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_m_func.tcl, \
#   line 10; \
#   /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_125c.tcl, \
#   line 11; \
#   /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 11; \
#   /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 11
create_clock -name riscv_clock -period 10 -waveform {0 5} [get_ports {clk}]
set_propagated_clock [get_clocks {riscv_clock}]
# MD5_SIGNATURE: D92EE789DC5275E95C962EADAD3E68E7 
