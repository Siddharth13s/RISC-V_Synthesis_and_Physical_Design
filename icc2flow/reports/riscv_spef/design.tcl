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


set_budget_options -adjust_latency prects  -top_level
set_app_options -name shell.common.enable_line_editing -value false -quiet
set_app_options -name lib.setting.enable_process_number_scaling -value false \
    -quiet
set_app_options -as_user_default -name design.high_fanout_net_threshold -value \
    1000 -quiet
set_app_options -as_user_default -name time.port_slew_lower_threshold_rise \
    -value 20 -quiet
set_app_options -as_user_default -name time.port_slew_lower_threshold_fall \
    -value 20 -quiet
set_app_options -as_user_default -name time.port_slew_upper_threshold_rise \
    -value 80 -quiet
set_app_options -as_user_default -name time.port_slew_upper_threshold_fall \
    -value 80 -quiet
set_app_options -as_user_default -name time.port_input_threshold_rise -value 50 \
    -quiet
set_app_options -as_user_default -name time.port_input_threshold_fall -value 50 \
    -quiet
set_app_options -as_user_default -name time.port_output_threshold_rise -value \
    50 -quiet
set_app_options -as_user_default -name time.port_output_threshold_fall -value \
    50 -quiet
set_app_options -as_user_default -name time.port_slew_derate_from_library \
    -value 1 -quiet
set_app_options -name gui.graphics_system -value native -quiet
set_app_options -name gui.batch_x_display -value default -quiet
set_app_options -name gui.follow_mouse_mode -value false -quiet
set_app_options -block [current_block] -name \
    time.remove_clock_reconvergence_pessimism -value true -quiet
set_app_options -block [current_block] -name \
    mv.pg.default_power_supply_net_name -value VDD -quiet
set_app_options -block [current_block] -name \
    mv.pg.default_ground_supply_net_name -value VSS -quiet
set_app_options -block [current_block] -name \
    mv.pg.default_power_supply_port_name -value VDD -quiet
set_app_options -block [current_block] -name \
    mv.pg.default_ground_supply_port_name -value VSS -quiet
set_app_options -block [current_block] -name \
    place.coarse.fix_cells_on_soft_blockages -value true -quiet
set_app_options -block [current_block] -name route.common.verbose_level -value \
    0 -quiet
set_app_options -block [current_block] -name route.global.timing_driven -value \
    false -quiet
set_app_options -block [current_block] -name \
    route.detail.eco_route_use_soft_spacing_for_timing_optimization -value true \
    -quiet
set_app_options -block [current_block] -name \
    route.detail.force_end_on_preferred_grid -value false -quiet

## Encrypted set_app_options
set dirName [file dirname [file normalize [info script]]]
if {[file exists  ${dirName}/top.tcl___synenc_proc_]} {
  redirect /dev/null {source -continue_on_error \
    ${dirName}/top.tcl___synenc_proc_ }
}
set_attribute -objects [get_layers M1] -name routing_direction -value horizontal
set_attribute -objects [get_layers M2] -name routing_direction -value vertical
set_attribute -objects [get_layers M3] -name routing_direction -value horizontal
set_attribute -objects [get_layers M4] -name routing_direction -value vertical
set_attribute -objects [get_layers M5] -name routing_direction -value horizontal
set_attribute -objects [get_layers M6] -name routing_direction -value vertical
set_attribute -objects [get_layers M7] -name routing_direction -value horizontal
set_attribute -objects [get_layers M8] -name routing_direction -value vertical
set_attribute -objects [get_layers M9] -name routing_direction -value horizontal
set_attribute -objects [get_layers MRDL] -name routing_direction -value vertical

# MD5_SIGNATURE: DCFE2C4EE83B39E96F42F0F584D3211D 
