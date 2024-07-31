# 
# RISC_CORE
# scenario constraints func @ ff_-40c
#

set_driving_cell -lib_cell INVX8_LVT [get_ports clk]
set_driving_cell -lib_cell INVX8_RVT  [get_ports clk]


set_clock_uncertainty -setup 0.1 [get_clocks riscv_clock]
set_clock_latency 0.3 [get_clocks riscv_clock]
set_clock_transition 0.1 [get_clocks riscv_clock]

set_input_delay  -add_delay -max 0.6 -clock riscv_clock [get_ports clk]
set_output_delay -add_delay -max 0.3 -clock riscv_clock [all_outputs]

