Synthesis
Inputs 
Technology Files (.tf): The technology library contains detailed information about all the metal layers, vias and their design rules.
Reference libraries (ref.lib) (. DB'S)
RTL (Verilog code) files
Design constraints(.sdc): Standard design constraints or Synopsys design constraints contains the timing and power related constraints which control design
TLU-plus files (parasitic files): TLU+ file is a binary file which is a kind model contains advanced process effect that can be used to extract RC value from interconnects.

Synthesis Step-1 (Creating the Milky Way Libraries):
 
 
Synthesis Step-2 (Setting the Libraries):
  

Synthesis Step-3 (Reading SDC and RTL):
 
 




Hierarchical view:
 
 

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
