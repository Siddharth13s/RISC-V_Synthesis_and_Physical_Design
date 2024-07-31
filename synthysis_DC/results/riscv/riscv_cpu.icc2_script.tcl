set _DCG_ICC2_DIR_ [file dirname [file normalize [info script]]]



##################################################################
# Read Design
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/riscv_cpu.v]} {
read_verilog ${_DCG_ICC2_DIR_}/riscv_cpu.v -top riscv_cpu
}



##################################################################
# Read settings
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/riscv_cpu.settings.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/riscv_cpu.settings.tcl 
}



##################################################################
# Read SDC
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/riscv_cpu.MCMM/top.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/riscv_cpu.MCMM/top.tcl 
}



##################################################################
# Read Floorplan
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/riscv_cpu.floorplan/floorplan.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/riscv_cpu.floorplan/floorplan.tcl 
}



##################################################################
# Read scan DEF
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/riscv_cpu.scan.def]} {
read_def ${_DCG_ICC2_DIR_}/riscv_cpu.scan.def 
}



##################################################################
# Read cell expansion data
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/riscv_cpu.cell.exp]} {
read_cell_expansion -input ${_DCG_ICC2_DIR_}/riscv_cpu.cell.exp 
}



