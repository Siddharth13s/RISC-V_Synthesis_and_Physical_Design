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


# Set latency for io paths.
# -origin user
set_clock_latency -min 0.17604 [get_clocks {riscv_clock}]
# -origin user
set_clock_latency -max 0.205657 [get_clocks {riscv_clock}]
# ICC2: Set propagated on clock object does not remove IO path latency.
set_propagated_clock [get_clocks {riscv_clock}]
set_clock_uncertainty -setup 0.2 [get_clocks {riscv_clock}]
set_clock_transition 0.2 [get_clocks {riscv_clock}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {clk}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_rwe_o[3]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_rwe_o[2]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_rwe_o[1]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_rwe_o[0]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[31]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[30]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[29]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[28]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[27]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[26]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[25]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[24]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[23]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[22]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[21]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[20]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[19]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[18]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[17]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[16]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[15]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[14]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[13]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[12]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[11]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[10]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[9]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[8]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[7]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[6]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[5]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[4]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[3]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[2]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[1]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_addr_o[0]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_sel_o[7]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_sel_o[6]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_sel_o[5]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_sel_o[4]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_sel_o[3]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_sel_o[2]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_sel_o[1]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_sel_o[0]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[31]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[30]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[29]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[28]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[27]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[26]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[25]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[24]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[23]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[22]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[21]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[20]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[19]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[18]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[17]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[16]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[15]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[14]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[13]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[12]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[11]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[10]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[9]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[8]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[7]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[6]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[5]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[4]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[3]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[2]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[1]}]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {riscv_clock}] -max 0.5 [get_ports \
    {mem_data_o[0]}]

# MD5_SIGNATURE: 3500E660BB4E3ADF2CCCDB2483C7D8FD 
