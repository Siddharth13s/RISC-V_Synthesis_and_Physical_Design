################################################################################
#
# Design name:  riscv_cpu
#
# Created by icc2 write_sdc on Wed Jul 31 19:39:56 2024
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

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


# Mode: func
# Corner: ff_m40c
# Scenario: func.ff_m40c

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
set_load -pin_load 20 [get_ports {mem_rwe_o[3]}]
set_load -pin_load 20 [get_ports {mem_rwe_o[2]}]
set_load -pin_load 20 [get_ports {mem_rwe_o[1]}]
set_load -pin_load 20 [get_ports {mem_rwe_o[0]}]
set_load -pin_load 20 [get_ports {mem_addr_o[31]}]
set_load -pin_load 20 [get_ports {mem_addr_o[30]}]
set_load -pin_load 20 [get_ports {mem_addr_o[29]}]
set_load -pin_load 20 [get_ports {mem_addr_o[28]}]
set_load -pin_load 20 [get_ports {mem_addr_o[27]}]
set_load -pin_load 20 [get_ports {mem_addr_o[26]}]
set_load -pin_load 20 [get_ports {mem_addr_o[25]}]
set_load -pin_load 20 [get_ports {mem_addr_o[24]}]
set_load -pin_load 20 [get_ports {mem_addr_o[23]}]
set_load -pin_load 20 [get_ports {mem_addr_o[22]}]
set_load -pin_load 20 [get_ports {mem_addr_o[21]}]
set_load -pin_load 20 [get_ports {mem_addr_o[20]}]
set_load -pin_load 20 [get_ports {mem_addr_o[19]}]
set_load -pin_load 20 [get_ports {mem_addr_o[18]}]
set_load -pin_load 20 [get_ports {mem_addr_o[17]}]
set_load -pin_load 20 [get_ports {mem_addr_o[16]}]
set_load -pin_load 20 [get_ports {mem_addr_o[15]}]
set_load -pin_load 20 [get_ports {mem_addr_o[14]}]
set_load -pin_load 20 [get_ports {mem_addr_o[13]}]
set_load -pin_load 20 [get_ports {mem_addr_o[12]}]
set_load -pin_load 20 [get_ports {mem_addr_o[11]}]
set_load -pin_load 20 [get_ports {mem_addr_o[10]}]
set_load -pin_load 20 [get_ports {mem_addr_o[9]}]
set_load -pin_load 20 [get_ports {mem_addr_o[8]}]
set_load -pin_load 20 [get_ports {mem_addr_o[7]}]
set_load -pin_load 20 [get_ports {mem_addr_o[6]}]
set_load -pin_load 20 [get_ports {mem_addr_o[5]}]
set_load -pin_load 20 [get_ports {mem_addr_o[4]}]
set_load -pin_load 20 [get_ports {mem_addr_o[3]}]
set_load -pin_load 20 [get_ports {mem_addr_o[2]}]
set_load -pin_load 20 [get_ports {mem_addr_o[1]}]
set_load -pin_load 20 [get_ports {mem_addr_o[0]}]
set_load -pin_load 20 [get_ports {mem_sel_o[7]}]
set_load -pin_load 20 [get_ports {mem_sel_o[6]}]
set_load -pin_load 20 [get_ports {mem_sel_o[5]}]
set_load -pin_load 20 [get_ports {mem_sel_o[4]}]
set_load -pin_load 20 [get_ports {mem_sel_o[3]}]
set_load -pin_load 20 [get_ports {mem_sel_o[2]}]
set_load -pin_load 20 [get_ports {mem_sel_o[1]}]
set_load -pin_load 20 [get_ports {mem_sel_o[0]}]
set_load -pin_load 20 [get_ports {mem_data_o[31]}]
set_load -pin_load 20 [get_ports {mem_data_o[30]}]
set_load -pin_load 20 [get_ports {mem_data_o[29]}]
set_load -pin_load 20 [get_ports {mem_data_o[28]}]
set_load -pin_load 20 [get_ports {mem_data_o[27]}]
set_load -pin_load 20 [get_ports {mem_data_o[26]}]
set_load -pin_load 20 [get_ports {mem_data_o[25]}]
set_load -pin_load 20 [get_ports {mem_data_o[24]}]
set_load -pin_load 20 [get_ports {mem_data_o[23]}]
set_load -pin_load 20 [get_ports {mem_data_o[22]}]
set_load -pin_load 20 [get_ports {mem_data_o[21]}]
set_load -pin_load 20 [get_ports {mem_data_o[20]}]
set_load -pin_load 20 [get_ports {mem_data_o[19]}]
set_load -pin_load 20 [get_ports {mem_data_o[18]}]
set_load -pin_load 20 [get_ports {mem_data_o[17]}]
set_load -pin_load 20 [get_ports {mem_data_o[16]}]
set_load -pin_load 20 [get_ports {mem_data_o[15]}]
set_load -pin_load 20 [get_ports {mem_data_o[14]}]
set_load -pin_load 20 [get_ports {mem_data_o[13]}]
set_load -pin_load 20 [get_ports {mem_data_o[12]}]
set_load -pin_load 20 [get_ports {mem_data_o[11]}]
set_load -pin_load 20 [get_ports {mem_data_o[10]}]
set_load -pin_load 20 [get_ports {mem_data_o[9]}]
set_load -pin_load 20 [get_ports {mem_data_o[8]}]
set_load -pin_load 20 [get_ports {mem_data_o[7]}]
set_load -pin_load 20 [get_ports {mem_data_o[6]}]
set_load -pin_load 20 [get_ports {mem_data_o[5]}]
set_load -pin_load 20 [get_ports {mem_data_o[4]}]
set_load -pin_load 20 [get_ports {mem_data_o[3]}]
set_load -pin_load 20 [get_ports {mem_data_o[2]}]
set_load -pin_load 20 [get_ports {mem_data_o[1]}]
set_load -pin_load 20 [get_ports {mem_data_o[0]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_c_ff_m40c.tcl, \
#   line 12
set_voltage 1.16 -object_list {VDD}
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_c_ff_m40c.tcl, \
#   line 13
set_voltage 0 -object_list {VSS}
# Warning: Libcell power domain derates are skipped!

# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_c_ff_m40c.tcl, \
#   line 15
set_timing_derate -late 1.05 -cell_delay -clock [current_design]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_c_ff_m40c.tcl, \
#   line 15
set_timing_derate -late 1.05 -cell_delay -data [current_design]
set_timing_derate -late 1.05 -net_delay -clock 
set_timing_derate -late 1.05 -net_delay -data 
# Set latency for io paths.
# -origin user
set_clock_latency -min 0.0607155 [get_clocks {riscv_clock}]
# -origin user
set_clock_latency -max 0.0670652 [get_clocks {riscv_clock}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {clk}]
set_clock_uncertainty -setup 0.1 [get_clocks {riscv_clock}]
set_clock_transition 0.1 [get_clocks {riscv_clock}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {clk}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 14
set_input_delay -clock [get_clocks {riscv_clock}] -max 0.6 [get_ports {clk}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_rwe_o[3]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_rwe_o[2]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_rwe_o[1]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_rwe_o[0]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[31]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[30]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[29]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[28]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[27]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[26]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[25]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[24]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[23]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[22]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[21]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[20]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[19]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[18]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[17]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[16]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[15]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[14]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[13]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[12]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[11]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[10]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[9]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[8]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[7]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[6]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[5]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[4]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[3]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[2]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[1]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_addr_o[0]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_sel_o[7]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_sel_o[6]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_sel_o[5]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_sel_o[4]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_sel_o[3]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_sel_o[2]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_sel_o[1]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_sel_o[0]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[31]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[30]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[29]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[28]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[27]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[26]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[25]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[24]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[23]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[22]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[21]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[20]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[19]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[18]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[17]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[16]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[15]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[14]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[13]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[12]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[11]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[10]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[9]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[8]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[7]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[6]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[5]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[4]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[3]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[2]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[1]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.3 [get_ports \
    {mem_data_o[0]}]
