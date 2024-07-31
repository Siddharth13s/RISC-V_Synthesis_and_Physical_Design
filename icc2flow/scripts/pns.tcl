#####################################
######power_plan
 create_net -power VDD
 create_net -power VDDH
 create_net -ground VSS

connect_pg_net -net VDD [get_pins -hier "*/VDD"]
connect_pg_net -net VDDH [get_pins -hier "*/VDDH"]
connect_pg_net -net VSS [get_pins -hier "*/VSS"]

set_pg_via_master_rule pg_via -via_array_dimension {8 10}


#######################################################################
#Build the main power mesh, consists of
#a coarse mesh on m7/m8
# a finger mesh on m2 -verticl to coonect to the std cell rails
#
create_pg_mesh_pattern pg_mesh1 -layers {{{horizontal_layer: M9} {width: 1.104} {spacing: interleaving} {pitch: 13.376} {offset: 0.856} {trim: true}} \
                                         {{vertical_layer: M8} {width: 4.64} {spacing: interleaving} {pitch: 19.456}  {offset: 6.08} {trim: true}}} \
                                -via_rule {{intersection : adjacent} {via_master : pg_via}}

#
#m2
create_pg_mesh_pattern p_m2_tripple -layers {{vertical_layer :M2} {track_alignment : track} {width : 0.44 0.192} {spacing : 0.058 0.156} {pitch : 5.528} {offset: 1.216} {trim:true}} 
  

  ### top_mesh-M7M8
  
set_pg_strategy s_orca_vddvss -core -pattern {{name : pg_mesh1}{nets : {VDD VSS}}{offset_start : boundary}} -extension {{{stop :  \
design_boundary_and_generate_pin}}}

set_pg_strategy s_m2_vddvss -design_boundary -pattern {{name : p_m2_tripple}{nets : {VDD VSS}}{offset_start : boundary}} -extension {{{stop :   design_boundary_and_generate_pin}}}
 
set_pg_strategy_via_rule s_via_m2_m5 -via_rule {{{{strategies : {s_m2_vddvss}}{nets : {VDD VSS}}{layers : {M2}}}{via_master : default}}{{{strategies :  \
{s_orca_vddvss}}{layers : {M5}}}{via_master : default}}}

compile_pg -strategies {s_orca_vddvss s_m2_vddvss} -via_rule {s_via_m2_m5}

  ######################################
  #build standard cell rails
create_pg_std_cell_conn_pattern p_std_cell_rail

set_pg_strategy s_std_cell_rail -core -pattern {{name : p_std_cell_rail}{nets : {VDD VSS}}} -extension {{{direction : L R T B}{stop : outermost_ring}}}

#set_pg_strategy s_std_cell_rail1 -core -pattern {{name : p_std_cell_rail}{nets : {VDDH VSS}}} -extension {{{direction : L R T B}{stop : outermost_ring}}}


set_pg_strategy_via_rule s_via_stdcellrail \
   -via_rule {{intersection: adjacent} {via_master: default}}

compile_pg -strategies {s_std_cell_rail} -via_rule {s_via_stdcellrail}
	
