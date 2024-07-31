
##################################################################
# Created by :	Design Compiler (Topographical)
# Version    :	T-2022.03-SP4 Aug 24, 2022
# Date       :	Wed Jul 31 19:18:17 2024
# Command    :	write_icc2_files -environment_only	\
#		-o ./results/riscv/riscv_cpu.settings.tcl 
##################################################################

##################################################################
# Set application variables for app 
##################################################################
set_app_var search_path "$search_path .                                        \
/home/cad/eda/SYNOPSYS/Design_Compiler_2022.03/syn/T-2022.03-SP4/libraries/syn \
/home/cad/eda/SYNOPSYS/Design_Compiler_2022.03/syn/T-2022.03-SP4/dw/syn_ver    \
/home/cad/eda/SYNOPSYS/Design_Compiler_2022.03/syn/T-2022.03-SP4/dw/sim_ver "

##################################################################
# Set application variables for design 
##################################################################
set_app_options -name design.bus_delimiters -value {[]}

##################################################################
# Set application variables for mv 
##################################################################
set_app_options -name mv.cells.no_main_power_violations -value true 

##################################################################
# Set application variables for power 
##################################################################
set_app_options -name power.default_static_probability -value 0.5 
set_app_options -name power.default_toggle_rate -value 0.1 
set_app_options -name power.default_toggle_rate_reference_clock -value fastest
set_app_options -name mv.upf.enable_golden_upf -value false 

##################################################################
# Set application variables for time 
##################################################################
set_app_options -name time.enable_clock_to_data_analysis -value false 
set_app_options -name time.high_fanout_net_pin_capacitance -value 1000pF
set_app_options -name time.high_fanout_net_threshold -value 1000 
set_app_options -name time.use_special_default_path_groups -value false 
set_app_options -name time.remove_clock_reconvergence_pessimism -value false 
set_app_options -name time.gclock_source_network_num_master_registers -value   \
10000000 
set_app_options -name time.disable_cond_default_arcs -value false 
set_app_options -name time.crpr_remove_clock_to_data_crp -value false 
set_app_options -name time.clock_reconvergence_pessimism -value normal 
set_app_options -name time.case_analysis_sequential_propagation -value never 

##################################################################
# Set application variables for place 
##################################################################
set_app_options -name place.coarse.channel_detect_mode -value false
set_app_options -name place.coarse.icg_auto_bound -value false
set_app_options -name place.coarse.enable_enhanced_soft_blockages -value true 

##################################################################
# Set application variables for opt 
##################################################################
set_app_options -name opt.timing.effort -value low

##################################################################
# Set attributes 
##################################################################

##################################################################
# Commands 
##################################################################

current_design riscv_cpu

##################################################################
