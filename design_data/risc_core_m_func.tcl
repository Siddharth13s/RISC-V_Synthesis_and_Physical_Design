#
# RISC_CORE
# Functional mode constraints
#

#set_case_analysis 0 test_mode
#set_case_analysis 0 scan_en

# System clock
create_clock -name riscv_clock -period 10 [get_ports clk]

