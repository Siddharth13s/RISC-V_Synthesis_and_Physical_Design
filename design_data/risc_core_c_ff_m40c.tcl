#
# RISC_CORE
# Corner ff_m40c constraints
#

set_parasitic_parameters -early_spec minTLU -late_spec minTLU

set_temperature -40
set_process_number 1.01
set_process_label fast

set_voltage 1.16  -object_list VDD
set_voltage 0.00  -object_list VSS

set_timing_derate -late 1.05 -cell_delay -net_delay

set_load 20 [all_outputs]
