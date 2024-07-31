#library creation
create_lib -technology ../ref/tech/saed32nm_1p9m.tf -ref_libs  \
{../ref/CLIBs/saed32_1p9m_tech.ndm ../ref/CLIBs/saed32_hvt.ndm  \
../ref/CLIBs/saed32_lvt.ndm ../ref/CLIBs/saed32_rvt.ndm  \
../ref/CLIBs/saed32_sram_lp.ndm} riscv_block

#reading netlist and SDC
read_verilog  ../synthysis_DC/results/riscv.v
read_sdc ../synthysis_DC/results/riscv.sdc

  
#parasitic reading
read_parasitic_tech -name {new_model} -tlup {../ref/tech/saed32nm_1p9m_Cmin.lv.tluplus} -layermap  \
{../ref/tech/saed32nm_tf_itf_tluplus.map}
read_parasitic_tech -layermap ../ref/tech/saed32nm_tf_itf_tluplus.map -tlup ../ref/tech/saed32nm_1p9m_Cmax.lv.nxtgrd -name maxTLU
read_parasitic_tech -layermap ../ref/tech/saed32nm_tf_itf_tluplus.map -tlup ../ref/tech/saed32nm_1p9m_Cmin.lv.nxtgrd -name minTLU


#mcmm
source -echo ../design_data/mcmm_risc_core.tcl


#floor plan  
initialize_floorplan -shape U -orientation E -side_ratio {15 5 3 3 3 3} -core_offset {5}

set_block_pin_constraints -self -allowed_layers {M3 M4} -sides 1
place_pins -ports [get_ports -filter direction==in]

set_block_pin_constraints -self -allowed_layers {M3 M4} -sides {2 3 5 7}
place_pins -ports [get_ports -filter direction==out]

set_attribute [get_ports *] physical_status fixed


#poweplan

source ./scripts/powerplan.tcl
check_pg_drc


#placement
check_design -checks pre_placement_stage
create_placement -floorplan
legalize_placement
place_pins -self
place_opt
report_placement
report_timing


#clock route
check_design -checks pre_clock_tree_stage
set_app_options -name time.remove_clock_reconvergence_pessimism -value true
report_clock_settings
report_qor -summary
report_timing
clock_opt
report_timing


#routing
#set_routing_rule all -clear -default_rule -min_routing_layer 1 -max_routing_layer 9
check_design -checks pre_route_stage
route_auto -max_detail_route_iterations 30
route_eco
route_opt
report_timing
report_routing_corridors

#signoff_check_drc -auto_eco true
check_pg_drc
check_lvs
save_block


#script writing
write_script -force -format icc2 -output ./reports/riscv_spef
write_parasitics -output ./reports/spef_generation_1
write_sdf ./results/riscv.sdf
write_verilog ./results/riscv.v
write_gds ./results/riscv.gds
write_sdc -output ./results/riscv.sdc

save_block