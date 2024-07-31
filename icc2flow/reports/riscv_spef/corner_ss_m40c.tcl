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
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_c_ss_m40c.tcl, \
#   line 10
set_process_label slow
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_c_ss_m40c.tcl, \
#   line 9
set_process_number 0.99
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_c_ss_m40c.tcl, \
#   line 8
set_temperature -40
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_c_ss_m40c.tcl, \
#   line 12
set_voltage 0.95 -object_list {VDD}
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_c_ss_m40c.tcl, \
#   line 13
set_voltage 0 -object_list {VSS}
set_scaling_lib_group -all
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_c_ss_m40c.tcl, \
#   line 15
set_timing_derate -early 0.93 -cell_delay -clock [current_design]
# /home1/BPD20/SiddharthSahu/VLSI_PD/Project/RISCV/design_data/risc_core_c_ss_m40c.tcl, \
#   line 15
set_timing_derate -early 0.93 -cell_delay -data [current_design]
set_timing_derate -early 0.93 -net_delay -clock 
set_timing_derate -early 0.93 -net_delay -data 
set_parasitic_parameters -early_spec maxTLU -late_spec maxTLU
# MD5_SIGNATURE: C8EE22E8B1FDD609E99B6DF6D2F3E3E7 
