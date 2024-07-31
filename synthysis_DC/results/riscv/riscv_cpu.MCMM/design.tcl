if { [namespace current] != {::66AA40A1} } { error {This script [file tail [info script]] should not be sourced directly}; }
###################################################################

# Created by write_script -format dctcl for global constraints on Wed Jul 31   \
19:18:17 2024

###################################################################

# Set the current_design #
current_design riscv_cpu

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_local_link_library                                                         \
{../ref/DBs/saed32lvt_ss0p95v125c.db,../ref/DBs/saed32lvt_ss0p95v125c.db,../ref/DBs/saed32rvt_ss0p95v125c.db,../ref/DBs/saed32hvt_ss0p75v125c.db,../ref/DBs/saed32sramlp_ss0p95v125c_i0p95v.db}
set_register_merging [current_design] 17
set_multibit_options -mode non_timing_driven
set compile_inbound_cell_optimization false
set compile_inbound_max_cell_percentage 10.0
