set tech_file  {../ref/tech/saed32nm_1p9m.tf}
set synthetic_library dw_foundation.sldb
#set mw_path "./libs/mw_libs"
set mw_ref_libs "./libs/mw_libs/saed32_io_fc ./libs/mw_libs/saed32nm_lvt_1p9m"
set my_mw_lib riscv_mw_lib.mw

create_mw_lib $my_mw_lib \
         -technology $tech_file \
         -mw_reference_library $mw_ref_libs \
         -open



             
set target_library  {\
../ref/DBs/saed32lvt_ss0p95v125c.db \
../ref/DBs/saed32lvt_ss0p95v125c.db \
../ref/DBs/saed32rvt_ss0p95v125c.db \
../ref/DBs/saed32hvt_ss0p75v125c.db \
../ref/DBs/saed32sramlp_ss0p95v125c_i0p95v.db}

set link_library  {\
../ref/DBs/saed32lvt_ss0p95v125c.db \
../ref/DBs/saed32lvt_ss0p95v125c.db \
../ref/DBs/saed32rvt_ss0p95v125c.db \
../ref/DBs/saed32hvt_ss0p75v125c.db \
../ref/DBs/saed32sramlp_ss0p95v125c_i0p95v.db}
set ref_libs   {\
../ref/DBs/saed32lvt_ss0p95v125c.db \
../ref/DBs/saed32lvt_ss0p95v125c.db \
../ref/DBs/saed32rvt_ss0p95v125c.db \
../ref/DBs/saed32hvt_ss0p75v125c.db \
../ref/DBs/saed32sramlp_ss0p95v125c_i0p95v.db}  
 
set_tlu_plus_files\
   		-max_tluplus ../ref/tech/saed32nm_1p9m_Cmax.lv.tluplus \
     		-min_tluplus ../ref/tech/saed32nm_1p9m_Cmin.lv.tluplus \

       		



source ./scripts/riscv_rtl.tcl

 current_design riscv_cpu
read_sdc ./constraints/riscv.sdc 
#set_wire_load_model -name wire_load.tcl
#set_svf RISC_V.svf
# dft constraints
#set_dft_signal -view existing_dft -type ScanClock -port router_clock -timing [list 45 55]
#set_dft_signal -view existing_dft -type Reset -port router_clock -active_state 1
#set_scan_configuration -chain_count 4
#create_test_protocol
#dft_drc
#preview_dft
#insert_dft

             compile_ultra -no_autoungroup -no_boundary_optimization

write_icc2_files -output ./results/riscv  -force
write -hierarchy -format ddc -output ./results/riscv.ddc 
report_area > ./reports/riscv.rpt
report_hierarchy > ./reports/riscv.rpt
report_design > ./reports/riscv.rpt
report_timing -path full > ./reports/riscv.rpt
report_power > ./reports/riscv.rpt
write -hierarchy -format verilog -output ./results/riscv.v
write_sdf  ./reports/riscv.sdf
write_parasitics -output ./results/riscv_v_parastics_8_6
write_sdc ./results/riscv.sdc 
write -format ddc -h -o ./results/riscv.ddc 

puts "Finished"
exit