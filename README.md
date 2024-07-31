
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


Synthesis Step-4 (Compile Ultra): 
 

Synthesis Step-5 (Generating Reports)
 
Output:
Gate-level Netlist
SDC 
Power, timing, and area reports

PNR flow
Inputs
Technology files(.tf): Detailed information about all the metal layers, vias and their design rules.
NDM libraries: A reference library format used by Synopsys IC compiler II tool
TLU-plus files (parasitic files): TLU+ file is a binary file which is a kind model contains advanced process effect that can be used to extract RC value from interconnects.
Design constraints file and Gate-level Netlist from DC

Step-1 (Creating Library)
 
Step-2 (Reading Netlist and SDC)
 


Step-3 (Reading TLU+ Files and MCMM)
 
Step-4 (Floorplanning)
 

Step-5 (Powerplanning)
 
 

Step-6 (Placement)
 


Step-7 (CTS)
 




Step-8 (Routing)
 









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

