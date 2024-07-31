################################################################################
#
# Created by fc write_floorplan on Wed May 13 20:50:08 2020
#
################################################################################


set _dirName__0 [file dirname [file normalize [info script]]]

################################################################################
# Rows
################################################################################

remove_site_arrays -all

remove_site_rows -all

################################################################################
# Pins
################################################################################

set __pins [get_terminals -quiet]
if {[sizeof_collection $__pins] > 0} {
set __termShapes [get_shapes -of_objects [get_terminals * -quiet] -quiet]
if {[sizeof_collection $__termShapes] > 0} {
remove_shapes $__termShapes
}
set __termVias [get_vias -of_objects [get_terminals * -quiet] -quiet]
if {[sizeof_collection $__termVias] > 0} {
remove_vias $__termVias
}
set __termShapePatterns [get_shape_patterns -of_objects [get_terminals * -quiet] -quiet]
if {[sizeof_collection $__termShapePatterns] > 0} {
remove_shape_patterns $__termShapePatterns
}
}

################################################################################
# Net shapes and vias
################################################################################

set __netshapes [get_shapes -quiet]
if {[sizeof_collection $__netshapes] > 0} {
remove_shapes $__netshapes
}

set __netShapePatterns [get_shape_patterns -quiet]
if {[sizeof_collection $__netShapePatterns] > 0} {
remove_shape_patterns $__netShapePatterns
}

set __vias [get_vias -quiet]
if {[sizeof_collection $__vias] > 0} {
remove_vias $__vias
}

################################################################################
# Read DEF
################################################################################

read_def -add_def_only_objects all -no_incremental ${_dirName__0}/floorplan.def

################################################################################
# Voltage areas
################################################################################

remove_voltage_areas -all



################################################################################
# User attributes of voltage areas
################################################################################

################################################################################
# Site arrays
################################################################################

create_site_array -name unit_row -site unit -default -boundary { {10.0000 \
    10.0000} {329.9600 409.6080} } -flip_first_row true -flip_alternate_row \
    true -transparent false -direction horizontal -x_margin 0.0000 -y_margin \
    0.0000 -core_offset { 10.0000 10.0000 } -aligned true

################################################################################
# User attributes of site arrays
################################################################################


################################################################################
# User attributes of site rows
################################################################################


################################################################################
# Keepouts
################################################################################


################################################################################
# User attributes of cells
################################################################################


################################################################################
# Bounds and user attributes of bound shapes
################################################################################

remove_bounds -all


################################################################################
# User attributes of bounds
################################################################################


################################################################################
# Pin guides
################################################################################

remove_pin_guides -all


################################################################################
# Route guides and their user attributes
################################################################################

remove_routing_guides -all



################################################################################
# Blockages
################################################################################

remove_placement_blockages -all

set blkg [ create_placement_blockage -name auto_generate_blockage0 -type soft \
    -purpose system -boundary { {10.0000 406.5870} {158.1620 409.6080} } ]
set_attribute -objects $blkg -name is_derived -value true
set blkg [ create_placement_blockage -name auto_generate_blockage1 -type soft \
    -purpose system -boundary { {10.0000 318.9570} {12.1370 406.5870} } ]
set_attribute -objects $blkg -name is_derived -value true
set blkg [ create_placement_blockage -name auto_generate_blockage3 -type soft \
    -purpose system -boundary { {10.0000 200.8410} {12.1370 288.4710} } ]
set_attribute -objects $blkg -name is_derived -value true
set blkg [ create_placement_blockage -name auto_generate_blockage4 -type soft \
    -purpose system -boundary { {10.0000 194.5390} {158.1620 200.8410} } ]
set_attribute -objects $blkg -name is_derived -value true
set blkg [ create_placement_blockage -name auto_generate_blockage5 -type soft \
    -purpose system -boundary { {10.0000 106.9090} {12.1370 194.5390} } ]
set_attribute -objects $blkg -name is_derived -value true
set blkg [ create_placement_blockage -name auto_generate_blockage6 -type soft \
    -purpose system -boundary { {10.0000 100.6070} {158.1620 106.9090} } ]
set_attribute -objects $blkg -name is_derived -value true
set blkg [ create_placement_blockage -name auto_generate_blockage7 -type soft \
    -purpose system -boundary { {10.0000 12.9770} {12.1370 100.6070} } ]
set_attribute -objects $blkg -name is_derived -value true
set blkg [ create_placement_blockage -name auto_generate_blockage8 -type soft \
    -purpose system -boundary { {10.0000 10.0000} {158.1620 12.9770} } ]
set_attribute -objects $blkg -name is_derived -value true


remove_routing_blockages -all

remove_pin_blockages -all

remove_shaping_blockages -all

################################################################################
# User attributes of blockages
################################################################################



################################################################################
# Module Boundaries
################################################################################

set hbCells [get_cells -quiet -filter hierarchy_type==boundary -hierarchical]
if [sizeof_collection $hbCells] {
   set_cell_hierarchy_type -type normal $hbCells
}


################################################################################
# I/O guides
################################################################################

remove_io_guides -all


################################################################################
# User attributes of I/O guides
################################################################################


################################################################################
# Edit groups
################################################################################

remove_edit_groups -all


################################################################################
# User attributes of edit groups
################################################################################


################################################################################
# PG regions
################################################################################

remove_pg_regions -all


################################################################################
# User attributes of pg regions
################################################################################


################################################################################
# Routing corridors
################################################################################

remove_routing_corridors -all


################################################################################
# Routing directions
################################################################################

################################################################################
# Tracks and their user attributes
################################################################################

remove_tracks -all

set track [create_track -layer M1 -count 2760 -dir Y -space 0.1520 -coord \
    0.1200 -bbox {{0.0000 0.1200 } {339.9600 419.4880 }}]
set track [create_track -layer M1 -count 2236 -dir X -space 0.1520 -coord \
    0.1200 -bbox {{0.1200 0.0000 } {339.8400 419.6080 }}]
set track [create_track -layer M2 -count 2760 -dir Y -space 0.1520 -coord \
    0.1200 -bbox {{0.0000 0.1200 } {339.9600 419.4880 }}]
set track [create_track -layer M2 -count 2236 -dir X -space 0.1520 -coord \
    0.1200 -bbox {{0.1200 0.0000 } {339.8400 419.6080 }}]
set track [create_track -layer M3 -count 1380 -dir Y -space 0.3040 -coord \
    0.2720 -bbox {{0.0000 0.2720 } {339.9600 419.4880 }}]
set track [create_track -layer M3 -count 1118 -dir X -space 0.3040 -coord \
    0.2720 -bbox {{0.2720 0.0000 } {339.8400 419.6080 }}]
set track [create_track -layer M4 -count 1380 -dir Y -space 0.3040 -coord \
    0.2720 -bbox {{0.0000 0.2720 } {339.9600 419.4880 }}]
set track [create_track -layer M4 -count 1118 -dir X -space 0.3040 -coord \
    0.2720 -bbox {{0.2720 0.0000 } {339.8400 419.6080 }}]
set track [create_track -layer M5 -count 690 -dir Y -space 0.6080 -coord 0.2720 \
    -bbox {{0.0000 0.2720 } {339.9600 419.1840 }}]
set track [create_track -layer M5 -count 559 -dir X -space 0.6080 -coord 0.2720 \
    -bbox {{0.2720 0.0000 } {339.5360 419.6080 }}]
set track [create_track -layer M6 -count 690 -dir Y -space 0.6080 -coord 0.2720 \
    -bbox {{0.0000 0.2720 } {339.9600 419.1840 }}]
set track [create_track -layer M6 -count 559 -dir X -space 0.6080 -coord 0.2720 \
    -bbox {{0.2720 0.0000 } {339.5360 419.6080 }}]
set track [create_track -layer M7 -count 345 -dir Y -space 1.2160 -coord 0.2720 \
    -bbox {{0.0000 0.2720 } {339.9600 418.5760 }}]
set track [create_track -layer M7 -count 280 -dir X -space 1.2160 -coord 0.2720 \
    -bbox {{0.2720 0.0000 } {339.5360 419.6080 }}]
set track [create_track -layer M8 -count 345 -dir Y -space 1.2160 -coord 0.2720 \
    -bbox {{0.0000 0.2720 } {339.9600 418.5760 }}]
set track [create_track -layer M8 -count 280 -dir X -space 1.2160 -coord 0.2720 \
    -bbox {{0.2720 0.0000 } {339.5360 419.6080 }}]
set track [create_track -layer M9 -count 173 -dir Y -space 2.4320 -coord 0.2720 \
    -bbox {{0.0000 0.2720 } {339.9600 418.5760 }}]
set track [create_track -layer M9 -count 140 -dir X -space 2.4320 -coord 0.2720 \
    -bbox {{0.2720 0.0000 } {338.3200 419.6080 }}]
set track [create_track -layer MRDL -count 87 -dir Y -space 4.8640 -coord \
    0.2720 -bbox {{0.0000 0.2720 } {339.9600 418.5760 }}]
set track [create_track -layer MRDL -count 70 -dir X -space 4.8640 -coord \
    0.2720 -bbox {{0.2720 0.0000 } {335.8880 419.6080 }}]

################################################################################
# Terminals/shapes/vias of ports with user attributes
################################################################################

################################################################################
# User attributes of ports
################################################################################


################################################################################
# Shapes and vias of net and their user attributes
################################################################################


################################################################################
# User attributes of routing rules
################################################################################


################################################################################
# User attributes of pins
################################################################################


################################################################################
# User attributes of nets
################################################################################


################################################################################
# User attributes of current block
################################################################################


