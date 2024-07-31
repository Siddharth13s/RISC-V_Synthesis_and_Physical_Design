

#poweplan
## create the PG nets
create_net -power VDD
create_net -ground VSS

## Making Logical Connections
connect_pg_net -net VDD [get_pins -hierarchical "*/VDD"]
connect_pg_net -net VSS [get_pins -hierarchical "*/VSS"]

## Setting up the attribute for TIE cells
set_attribute [get_lib_cells */*TIE*] dont_touch false
set_lib_cell_purpose -include optimization [get_lib_cells */*TIE*]

### creating PG Rails
create_pg_mesh_pattern P_top_two \
-layers { \
{ {horizontal_layer: M7} {width: 0.12} {spacing: interleaving} {pitch: 0.5} {trim : true} } \
{ {vertical_layer: M8} {width: 0.12} {spacing: interleaving} {pitch: 0.5} {trim : true} } \
} 

set_pg_strategy S_default_vddvss \
-core \
-pattern { {name: P_top_two} {nets:{VSS VDD}} } \
-extension { {{stop:design_boundary_and_generate_pin}} }

compile_pg -strategies {S_default_vddvss}
remove_routing_blockages {RB_0}
create_pg_vias -nets {VDD VSS} -from_layers M5 -to_layers M9 -drc no_check

#### Creating Standard cell rails
create_pg_std_cell_conn_pattern std_rail_conn1 -rail_width 0.094 -layers M1

set_pg_strategy std_rail_1 -pattern {{name : std_rail_conn1} {nets: "VDD VSS"}} -core

compile_pg -strategies std_rail_1 -ignore_drc

#### Creation of Vias b/w rails and PG straps

create_pg_vias -nets {VDD VSS} -from_layers M1 -to_layers M8 -drc no_check

# Check physical Connectivity of PG nets
check_pg_connectivity

# Check for DRC errors in the design,
check_pg_drc

### saving block
save_block -as powerplan_done

#To remove Power routes if you have any issue while building powerplan use all below cmds.

#remove_pg_strategies -all
#remove_pg_patterns -all
#remove_pg_regions -all
#remove_pg_via_master_rules -all
#remove_pg_strategy_via_rules -all
#remove_routes -net_types {power ground}
#remove_routes -net_types {VDD VSS}
#remove_routes -net_types {power ground} -ring -stripe -macro_pin_connect -lib_cell_pin_connect
#

