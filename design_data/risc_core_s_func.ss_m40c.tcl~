# 
# RISC_CORE
# scenario constraints func @ ss_m40c
#

set_driving_cell -lib_cell INVX8_LVT [get_ports clk]
set_driving_cell -lib_cell INVX8_RVT [remove_from_collection [all_inputs] [get_ports clk]]


set_clock_uncertainty -setup 0.2 [get_clocks clk]
set_clock_latency 0.4 [get_clocks clk]
set_clock_transition 0.2 [get_clocks clk]

set_input_delay  -add_delay -max 1.0 -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay -add_delay -max 0.5 -clock clk [all_outputs]
