
**Synthesis**

**Inputs**

**Technology Files (.tf):** The technology library contains detailed information about all the metal layers, vias and their design rules.

**Reference libraries (ref.lib) (. DB'S)**

**RTL (Verilog code) files**

**Design constraints(.sdc)**: Standard design constraints or Synopsys design constraints contains the timing and power related constraints which control design

**TLU-plus files (parasitic files):** TLU+ file is a binary file which is a kind model contains advanced process effect that can be used to extract RC value from interconnects.


**Synthesis Step-1 (Creating the Milky Way Libraries):**
 set tech_file  {../ref/tech/saed32nm_1p9m.tf}
set synthetic_library dw_foundation.sldb
#set mw_path "./libs/mw_libs"
set mw_ref_libs "./libs/mw_libs/saed32_io_fc ./libs/mw_libs/saed32nm_lvt_1p9m"
set my_mw_lib riscv_mw_lib.mw

create_mw_lib $my_mw_lib \
         -technology $tech_file \
         -mw_reference_library $mw_ref_libs \
         -open

 
**Synthesis Step-2 (Setting the Libraries):**
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



**Synthesis Step-3 (Reading SDC and RTL):**
source ./scripts/riscv_rtl.tcl

 current_design riscv_cpu

read_sdc ./constraints/riscv.sdc 

 




**Hierarchical view:** 
 
 ![image](https://github.com/user-attachments/assets/d846d96e-cbf1-4021-8929-1a6da2de5820)
![image](https://github.com/user-attachments/assets/7767a073-ae8e-4e18-94a5-7854425ea954)
![image](https://github.com/user-attachments/assets/17ab6a67-1a1c-4409-bac6-79fa1cccae7a)


**Synthesis Step-4 (Compile Ultra):**           

compile_ultra -no_autoungroup -no_boundary_optimization
 

**Synthesis Step-5 (Generating Reports)**
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

**Output:**

Gate-level Netlist

SDC 

Power, timing, and area reports

**PNR flow**

**Inputs**

**Technology files(.tf):** Detailed information about all the metal layers, vias and their design rules.

**NDM libraries:** A reference library format used by Synopsys IC compiler II tool

**TLU-plus files (parasitic files):** TLU+ file is a binary file which is a kind model contains advanced process effect that can be used to extract RC value from interconnects.

**Design constraints file and Gate-level Netlist from DC**

**Step-1 (Creating Library)**
#library creation
create_lib -technology ../ref/tech/saed32nm_1p9m.tf -ref_libs  \
{../ref/CLIBs/saed32_1p9m_tech.ndm ../ref/CLIBs/saed32_hvt.ndm  \
../ref/CLIBs/saed32_lvt.ndm ../ref/CLIBs/saed32_rvt.ndm  \
../ref/CLIBs/saed32_sram_lp.ndm} riscv_block

 
**Step-2 (Reading Netlist and SDC)**
 #reading netlist and SDC
read_verilog  ../synthysis_DC/results/riscv.v
read_sdc ../synthysis_DC/results/riscv.sdc
![image](https://github.com/user-attachments/assets/1b3eb6bf-60b6-4b0a-9f68-1c80569deb2c)



**Step-3 (Reading TLU+ Files and MCMM)**

#parasitic reading
read_parasitic_tech -name {new_model} -tlup {../ref/tech/saed32nm_1p9m_Cmin.lv.tluplus} -layermap  \
{../ref/tech/saed32nm_tf_itf_tluplus.map}
read_parasitic_tech -layermap ../ref/tech/saed32nm_tf_itf_tluplus.map -tlup ../ref/tech/saed32nm_1p9m_Cmax.lv.nxtgrd -name maxTLU
read_parasitic_tech -layermap ../ref/tech/saed32nm_tf_itf_tluplus.map -tlup ../ref/tech/saed32nm_1p9m_Cmin.lv.nxtgrd -name minTLU


#mcmm
source -echo ../design_data/mcmm_risc_core.tcl

 
**Step-4 (Floorplanning)**
#floor plan  
initialize_floorplan -shape U -orientation E -side_ratio {15 5 3 3 3 3} -core_offset {5}

set_block_pin_constraints -self -allowed_layers {M3 M4} -sides 1
place_pins -ports [get_ports -filter direction==in]

set_block_pin_constraints -self -allowed_layers {M3 M4} -sides {2 3 5 7}
place_pins -ports [get_ports -filter direction==out]

set_attribute [get_ports *] physical_status fixed



![image](https://github.com/user-attachments/assets/ad202adf-1238-4dfb-8ad3-c994c8e04b88)

 









**Step-5 (Powerplanning)**


 source ./scripts/powerplan.tcl
check_pg_drc


![image](https://github.com/user-attachments/assets/929170f6-583f-4c56-afb8-4cb4446bdea2)



![image](https://github.com/user-attachments/assets/e0ad639f-e22e-41cc-b7e3-c6d52d1b9eff)


 

**Step-6 (Placement)**




 check_design -checks pre_placement_stage
 
create_placement -floorplan






![image](https://github.com/user-attachments/assets/6fc39854-3adc-4827-b4a6-0f06c5b01420)





legalize_placement






![image](https://github.com/user-attachments/assets/2768766f-cd0b-4bd7-b16d-63fc77715db1)

place_pins -self
place_opt
report_placement
report_timing




**Step-7 (CTS)**
check_design -checks pre_clock_tree_stage
set_app_options -name time.remove_clock_reconvergence_pessimism -value true
report_clock_settings
report_qor -summary
report_timing
clock_opt
report_timing





![image](https://github.com/user-attachments/assets/6788c853-c1a5-4052-a79e-b2f47b2ad079)

 




**Step-8 (Routing)** 









Reports
Slack -0.01ns met
WNS for Setup is 0.01
WNS for Hold is 0.06
Cell area is 24782.09
Total Type of cells used is 159
Total no of std cells is 7304

Output 
GDS II file
SDC file
SDF file
Specification file

