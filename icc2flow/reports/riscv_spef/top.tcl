################################################################################
#
# Design name:  riscv_cpu
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


set dirName [file dirname [file normalize [info script]]]
set extName "tcl"
set_user_units -input -type time -value 1ns
set_user_units -input -type resistance -value 1MOhm
set_user_units -input -type capacitance -value 1fF
set_user_units -input -type voltage -value 1V
set_user_units -input -type current -value 1uA
set_user_units -output -type time -value 1ns
set_user_units -output -type resistance -value 1MOhm
set_user_units -output -type capacitance -value 1fF
set_user_units -output -type voltage -value 1V
set_user_units -output -type current -value 1uA

set cornerNames [list ss_125c ss_m40c ff_m40c]
foreach cornerName $cornerNames {
  create_corner $cornerName
}

set modeNames [list func]
foreach modeName $modeNames {
  create_mode $modeName
}

create_scenario -name func.ss_125c -mode func -corner ss_125c
set_scenario_status func.ss_125c -setup true -hold false -leakage_power true \
    -dynamic_power true -max_transition true -max_capacitance true \
    -min_capacitance true -cell_em false -signal_em false -active true
set_scenario_si_filtering func.ss_125c -si_xtalk_composite_aggr_mode statistical

create_scenario -name func.ss_m40c -mode func -corner ss_m40c
set_scenario_status func.ss_m40c -setup true -hold true -leakage_power false \
    -dynamic_power false -max_transition true -max_capacitance true \
    -min_capacitance true -cell_em false -signal_em false -active true
set_scenario_si_filtering func.ss_m40c -si_xtalk_composite_aggr_mode statistical

create_scenario -name func.ff_m40c -mode func -corner ff_m40c
set_scenario_status func.ff_m40c -setup true -hold true -leakage_power false \
    -dynamic_power false -max_transition true -max_capacitance true \
    -min_capacitance true -cell_em false -signal_em false -active true
set_scenario_si_filtering func.ff_m40c -si_xtalk_composite_aggr_mode statistical

foreach cornerName $cornerNames {
  current_corner $cornerName
  source ${dirName}/corner_${cornerName}.${extName}
}

foreach modeName $modeNames {
  current_mode $modeName
  source ${dirName}/mode_${modeName}.${extName}
}

current_scenario func.ss_125c
source ${dirName}/scenario_func.ss_125c.${extName}
if {[file exists ${dirName}/func.ss_125c_act.${extName}]} {
  source ${dirName}/func.ss_125c_act.${extName}
}
current_scenario func.ss_m40c
source ${dirName}/scenario_func.ss_m40c.${extName}
if {[file exists ${dirName}/func.ss_m40c_act.${extName}]} {
  source ${dirName}/func.ss_m40c_act.${extName}
}
current_scenario func.ff_m40c
source ${dirName}/scenario_func.ff_m40c.${extName}
if {[file exists ${dirName}/func.ff_m40c_act.${extName}]} {
  source ${dirName}/func.ff_m40c_act.${extName}
}

source ${dirName}/design.${extName}

if {[file exists ${dirName}/cts.${extName}]} {
  source ${dirName}/cts.${extName}
}
current_mode func
current_corner ff_m40c
# End of script
# MD5_SIGNATURE: 7844DDEF1FCB1238679A7B63E08CF5E1 
