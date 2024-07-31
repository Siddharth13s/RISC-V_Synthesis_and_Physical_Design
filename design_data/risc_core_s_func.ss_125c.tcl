# 
# RISC_CORE
# scenario constraints func @ ss_125c
#

set_driving_cell -lib_cell INVX8_LVT [get_ports clk]
set_driving_cell -lib_cell INVX8_RVT [get_ports clk]


set_clock_uncertainty -setup 0.3 [get_clocks riscv_clock]
set_clock_latency 0.6 [get_clocks riscv_clock]
set_clock_transition 0.2 [get_clocks riscv_clock]

set_input_delay  -add_delay -max 1.0 -clock riscv_clock [get_ports clk]
set_output_delay -add_delay -max 0.5 -clock riscv_clock [all_outputs]
