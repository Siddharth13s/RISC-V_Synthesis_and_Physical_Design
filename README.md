Synthesis

Inputs 

Technology Files (.tf): The technology library contains detailed information about all the metal layers, vias and their design rules.
Reference libraries (ref.lib) (. DB'S)
RTL (Verilog code) files
Design constraints(.sdc): Standard design constraints or Synopsys design constraints contains the timing and power related constraints which control design
TLU-plus files (parasitic files): TLU+ file is a binary file which is a kind model contains advanced process effect that can be used to extract RC value from interconnects.

Synthesis Step-1 (Creating the Milky Way Libraries):
 ![image](https://github.com/user-attachments/assets/e7f8f428-6f2e-4e8e-9269-4d4cf9cb0bb0)
![image](https://github.com/user-attachments/assets/1326b443-8550-4c54-b348-fc3a38eb1ffd)

 






Synthesis Step-2 (Setting the Libraries):
 ![image](https://github.com/user-attachments/assets/a84d6c65-0a16-4e10-b5e6-e7e4e6a079a0)
![image](https://github.com/user-attachments/assets/10648667-444c-4e7f-90aa-0308622ebc40)




Synthesis Step-3 (Reading SDC and RTL):


 ![image](https://github.com/user-attachments/assets/360644c4-d2fd-4e63-8c9f-85f8db771648)
![image](https://github.com/user-attachments/assets/56a945d4-f833-412c-b4da-da1c82e4a3e3)

 


Hierarchical view:

 
 
 
 
 ![image](https://github.com/user-attachments/assets/94f6ca5b-c438-4e10-a6c7-ca53cf2e9c46)
![image](https://github.com/user-attachments/assets/0b4dba71-73c9-44ab-a130-cd32fea83e7c)
![image](https://github.com/user-attachments/assets/cd610182-395f-4d62-94df-abff1b2cc68d)

 

Synthesis Step-4 (Compile Ultra): 
 ![image](https://github.com/user-attachments/assets/6c647b82-5e1c-4004-a2b9-23013acdac3c)


Synthesis Step-5 (Generating Reports)
 ![image](https://github.com/user-attachments/assets/5de7024c-947f-4d9b-b488-6bab4322de84)

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
![image](https://github.com/user-attachments/assets/1898dd0e-2502-45bb-8ccd-bcc2712147a4)
 
Step-2 (Reading Netlist and SDC)
 ![image](https://github.com/user-attachments/assets/a4edc371-575f-4d88-8091-a04b2f77cde5)
![image](https://github.com/user-attachments/assets/fda2df3e-b42c-45ec-9782-ef7549f07482)



Step-3 (Reading TLU+ Files and MCMM)
![image](https://github.com/user-attachments/assets/59816c12-e11c-4211-8cae-305f548201c4)

 
Step-4 (Floorplanning)
 ![image](https://github.com/user-attachments/assets/1b95314c-0468-49c3-8f6c-7bf0f753142e)
![image](https://github.com/user-attachments/assets/c22b2c4d-11ff-474c-b461-b05dc678b6be)


Step-5 (Powerplanning)
![image](https://github.com/user-attachments/assets/5902a5b1-2110-49c4-b1e0-5bb8e21b1764)

![image](https://github.com/user-attachments/assets/403e316b-5a95-45c8-abce-440c47e3fab2)
![image](https://github.com/user-attachments/assets/ff48d75c-74da-40e4-8d81-95c8f5b041c8)


 

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
