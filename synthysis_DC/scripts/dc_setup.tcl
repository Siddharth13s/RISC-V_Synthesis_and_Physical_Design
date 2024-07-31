set search_path {/home/cad/eda/SYNOPSYS/Design_Compiler/syn/T-2022.03-SP4/libraries/syn ../../rtl/}

set mw_ref_libs "../libs/mw_libs/saed32_io_fc ../libs/mw_libs/saed32nm_lvt_1p9m"
#set mw_ref_libs "../libs/mw_libs/SAED32_PLL_FR ../libs/mw_libs/SRAM32NM ../libs/mw_libs/saed32_io_fc ../libs/mw_libs/saed32nm_lvt_1p9m"

set synthetic_library dw_foundation.sldb

#set link_library "* ../libs/standard_cell_libs/saed32rvt_ff1p16v125c.db   ../libs/standard_cell_libs/saed32rvt_ss0p95v125c.db  ../libs/standard_cell_libs/saed32rvt_ff0p85v125c.db   ../libs/standard_cell_libs/saed32pll_ss0p95v125c_2p25v.db ../libs/standard_cell_libs/saed32pll_ff1p16v125c_2p75v.db    ../libs/standard_cell_libs/saed32io_ss0p95v125c_2p25v.db     $synthetic_library"

#set link_library "* ../libs/standard_cell_libs/saed32lvt_ff1p16v125c.db  ../libs/standard_cell_libs/saed32sram_ff1p16v125c.db ../libs/standard_cell_libs/saed32io_fc_ff1p16v125c_2p75v.db ../libs/standard_cell_libs/saed32pll_ff1p16v125c_2p75v.db $synthetic_library"
set link_library "* ../libs/standard_cell_libs/saed32lvt_ff1p16v125c.db  ../libs/standard_cell_libs/saed32io_fc_ff1p16v125c_2p75v.db $synthetic_library"

#set target_library " ../libs/standard_cell_libs/saed32rvt_ff1p16v125c.db   ../libs/standard_cell_libs/saed32rvt_ss0p95v125c.db  ../libs/standard_cell_libs/saed32rvt_ff0p85v125c.db   ../libs/standard_cell_libs/saed32pll_ss0p95v125c_2p25v.db ../libs/standard_cell_libs/saed32pll_ff1p16v125c_2p75v.db    ../libs/standard_cell_libs/saed32io_ss0p95v125c_2p25v.db  "

set target_library " ../libs/standard_cell_libs/saed32lvt_ff1p16v125c.db "


set my_mw_lib riscv_mw_lib.mw

set mw_path "../libs/mw_libs"
set tech_file /home/Aruna_TECH/PDK/SAED32_EDK/tech/milkyway/saed32nm_1p9m_mw.tf
#set tech_file " ../libs/tech_files/saed32nm_1p9m_mw.tf"
set_tlu_plus_files      \
        -max_tluplus ../libs/tlu_files/saed32nm_1p9m_Cmax.tluplus     \
        -min_tluplus ../libs/tlu_files/saed32nm_1p9m_Cmin.tluplus     \
        -tech2itf_map  ../libs/tlu_files/saed32nm_tf_itf_tluplus.map


file delete -force $my_mw_lib

create_mw_lib $my_mw_lib \
        -technology $tech_file \
	-mw_reference_library $mw_ref_libs \
        -open

