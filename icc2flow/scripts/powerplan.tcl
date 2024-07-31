remove_pg_strategies -all
remove_pg_patterns -all
remove_pg_regions -all
remove_pg_via_master_rules -all
remove_pg_strategy_via_rules -all
remove_routes -net_types {power ground} -ring -stripe -macro_pin_connect -lib_cell_pin_connect

#poweplan
## create the PG nets
create_net -power VDD
create_net -ground VSS

## Making Logical Connections
connect_pg_net -net VDD [get_pins -hierarchical "*/VDD"]
connect_pg_net -net VSS [get_pins -hierarchical "*/VSS"]


#pg_ring#
create_pg_ring_pattern ring_pattern -horizontal_layer M7 -horizontal_width {0.5} -horizontal_spacing {0.5} -vertical_layer M8 -vertical_width {0.5} -vertical_spacing {0.5}
set_pg_strategy core_ring -core -pattern {{pattern:ring_pattern} {nets:{VDD VSS}} {offset:{0.25 0.25}}} -extension {{stop:innermost_ring}}
compile_pg -strategies core_ring


#pg_mesh#
create_pg_mesh_pattern pg_mesh_pattern -layers {{{vertical_layer: M8} {width: 0.5} {spacing: interleaving} {pitch: 12}} {{vertical_layer: M6} {width: 0.5}{spacing: interleaving} {pitch: 12}} {{horizontal_layer: M7} {width: 0.5} {spacing: interleaving} {pitch: 10}}}

set_pg_strategy s_mesh1 -core -pattern {{pattern: pg_mesh_pattern} {nets: {VDD VSS}} {offset_start:5 5}} -extension {{stop: outermost_ring}}

compile_pg -strategies s_mesh1


#pg_rail#
create_pg_std_cell_conn_pattern std_pattern -layers {M1}

set_pg_strategy rail_strat -core -pattern {{name: std_pattern} {nets: VDD VSS}}

compile_pg -strategies rail_strat
