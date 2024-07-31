
remove_scenarios -all
remove_modes -all
remove_corners -all


set m_constr(func)         "risc_core_m_func.tcl"

set c_constr(ss_125c)      "risc_core_c_ss_125c.tcl"
set c_constr(ss_m40c)      "risc_core_c_ss_m40c.tcl"
set c_constr(ff_m40c)      "risc_core_c_ff_m40c.tcl"

set s_constr(func.ss_125c) "risc_core_s_func.ss_125c.tcl"
set s_constr(func.ss_m40c) "risc_core_s_func.ss_m40c.tcl"
set s_constr(func.ff_m40c) "risc_core_s_func.ff_m40c.tcl"

########################################
## Mode, corner and scenario creation
########################################

foreach m [array names m_constr] {
	create_mode $m
}

foreach c [array names c_constr] {
	create_corner $c
}

foreach s [array names s_constr] {
	lassign [split $s "."] m c
	create_scenario -name $s -mode $m -corner $c
}

########################################
## Populate modes, corners and scenarios
########################################

current_mode func
source "../design_data/risc_core_m_func.tcl"

current_corner ss_125c
source  "../design_data/risc_core_c_ss_125c.tcl"

current_corner ss_m40c
source  "../design_data/risc_core_c_ss_m40c.tcl"

current_corner ff_m40c
source "../design_data/risc_core_c_ff_m40c.tcl"

current_scenario func.ss_125c
source "../design_data/risc_core_s_func.ss_125c.tcl"

current_scenario func.ss_m40c
source "../design_data/risc_core_s_func.ss_m40c.tcl"

current_scenario func.ff_m40c
source "../design_data/risc_core_s_func.ff_m40c.tcl"

	

########################################
## Configure scenarios
########################################
set_scenario_status {*.ss_125c} -hold false
set_scenario_status * -leakage_power false -dynamic_power false
set_scenario_status func.ss_125c -leakage_power true -dynamic_power true

puts "RM-info : Completed script [info script]\n"
