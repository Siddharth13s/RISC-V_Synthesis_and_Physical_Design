if { [namespace current] != {::66AA40A1} } { error {This script [file tail [info script]] should not be sourced directly}; }
###################################################################

# Created by write_script -format dctcl for scenario constraints on Wed Jul 31 \
19:18:17 2024

###################################################################

# Set the current_design #
current_design riscv_cpu


set_tlu_plus_files -max_tluplus ../ref/tech/saed32nm_1p9m_Cmax.lv.tluplus      \
-min_tluplus ../ref/tech/saed32nm_1p9m_Cmin.lv.tluplus 
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_ports {mem_rwe_o[3]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_ports {mem_rwe_o[2]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_ports {mem_rwe_o[1]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_ports {mem_rwe_o[0]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_ports {mem_sel_o[7]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_ports {mem_sel_o[6]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_ports {mem_sel_o[5]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_ports {mem_sel_o[4]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_ports {mem_sel_o[3]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_ports {mem_sel_o[2]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_ports {mem_sel_o[1]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_ports {mem_sel_o[0]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {pipe_ex_mem0/mem_aluop[7]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {pipe_ex_mem0/mem_aluop[6]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {pipe_ex_mem0/mem_aluop[5]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins execute_alu0/stallreq]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {execute_alu0/ex_aluop[7]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {execute_alu0/ex_aluop[6]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {execute_alu0/ex_aluop[5]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {pipe_id_ex0/ex_aluop[7]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {pipe_id_ex0/ex_aluop[6]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {pipe_id_ex0/ex_aluop[5]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {inst_decoder0/aluop[7]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {inst_decoder0/aluop[6]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {inst_decoder0/aluop[5]}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins {stall_ctrl0/stall[5]}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.999664 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 4.27246e-05 -static_probability  \
0.999786 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999939 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_mem_wb0/wb_reg_wdata_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.999634 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999908 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.999664 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999786 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.999634 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999756 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.999481 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999725 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.999695 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999695 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.999786 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 4.27246e-05 -static_probability  \
0.999695 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.999481 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.999512 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.999634 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.999725 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.999481 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999878 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.999695 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999664 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 4.27246e-05 -static_probability  \
0.999725 [get_pins {pipe_mem_wb0/wb_reg_wdata_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000177002 -static_probability  \
0.998749 [get_pins pipe_mem_wb0/wb_we_reg/QN]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_mem_wb0/wb_reg_wdata_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_mem_wb0/wb_reg_wdata_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_mem_wb0/wb_reg_wdata_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999954 [get_pins {stage_mem0/mem_addr_o_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/mem_data_o_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999817 [get_pins stage_mem0/mem_we_reg/QN]
set_switching_activity -period 1 -toggle_rate 7.32422e-05 -static_probability  \
0.998062 [get_pins {stage_mem0/reg_waddr_o_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999939 [get_pins stage_mem0/mem_re_reg/QN]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/reg_wdata_o_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.999268 [get_pins {stage_mem0/reg_wdata_o_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 4.27246e-05 -static_probability  \
0.99971 [get_pins {stage_mem0/reg_wdata_o_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999863 [get_pins {stage_mem0/reg_wdata_o_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999802 [get_pins {stage_mem0/reg_wdata_o_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/reg_wdata_o_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/reg_wdata_o_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {stage_mem0/reg_wdata_o_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {stage_mem0/reg_wdata_o_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {stage_mem0/reg_wdata_o_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {stage_mem0/reg_wdata_o_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 3.96729e-05 -static_probability  \
0.99855 [get_pins {stage_mem0/reg_wdata_o_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999878 [get_pins {stage_mem0/reg_wdata_o_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 3.35693e-05 -static_probability  \
0.998993 [get_pins {stage_mem0/reg_wdata_o_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999542 [get_pins {stage_mem0/reg_wdata_o_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 3.35693e-05 -static_probability  \
0.999084 [get_pins {stage_mem0/reg_wdata_o_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 4.27246e-05 -static_probability  \
0.998581 [get_pins {stage_mem0/reg_wdata_o_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 4.57764e-05 -static_probability  \
0.998398 [get_pins {stage_mem0/reg_wdata_o_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 2.74658e-05 -static_probability  \
0.999191 [get_pins {stage_mem0/reg_wdata_o_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.998398 [get_pins {stage_mem0/reg_wdata_o_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 3.96729e-05 -static_probability  \
0.998932 [get_pins {stage_mem0/reg_wdata_o_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.999084 [get_pins {stage_mem0/reg_wdata_o_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 3.35693e-05 -static_probability  \
0.99939 [get_pins {stage_mem0/reg_wdata_o_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999603 [get_pins {stage_mem0/reg_wdata_o_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 5.18799e-05 -static_probability  \
0.998276 [get_pins {stage_mem0/reg_wdata_o_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 3.96729e-05 -static_probability  \
0.999191 [get_pins {stage_mem0/reg_wdata_o_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 5.18799e-05 -static_probability  \
0.998795 [get_pins {stage_mem0/reg_wdata_o_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.999542 [get_pins {stage_mem0/reg_wdata_o_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 5.18799e-05 -static_probability  \
0.998398 [get_pins {stage_mem0/reg_wdata_o_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 2.74658e-05 -static_probability  \
0.999512 [get_pins {stage_mem0/reg_wdata_o_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.998795 [get_pins {stage_mem0/reg_wdata_o_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999954 [get_pins {stage_mem0/reg_wdata_o_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {stage_mem0/mem_addr_o_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999802 [get_pins {stage_mem0/mem_addr_o_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999954 [get_pins {stage_mem0/mem_addr_o_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999939 [get_pins {stage_mem0/mem_addr_o_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999924 [get_pins {stage_mem0/mem_addr_o_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999954 [get_pins {stage_mem0/mem_addr_o_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999924 [get_pins {stage_mem0/mem_addr_o_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999985 [get_pins {stage_mem0/mem_addr_o_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999939 [get_pins {stage_mem0/mem_addr_o_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999954 [get_pins {stage_mem0/mem_addr_o_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999924 [get_pins {stage_mem0/mem_addr_o_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999847 [get_pins {stage_mem0/mem_sel_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999863 [get_pins {stage_mem0/mem_sel_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999893 [get_pins {stage_mem0/mem_sel_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999893 [get_pins {stage_mem0/mem_sel_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000180054 -static_probability  \
0.996674 [get_pins stage_mem0/we_o_reg/QN]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999985 [get_pins stage_mem0/mem_taking_reg/QN]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.999664 [get_pins {pipe_ex_mem0/mem_rt_data_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999695 [get_pins {pipe_ex_mem0/mem_rt_data_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.999664 [get_pins {pipe_ex_mem0/mem_rt_data_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999634 [get_pins {pipe_ex_mem0/mem_rt_data_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999908 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.999634 [get_pins {pipe_ex_mem0/mem_aluop_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 8.54492e-05 -static_probability  \
0.999115 [get_pins {pipe_ex_mem0/mem_aluop_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000192261 -static_probability  \
0.996384 [get_pins {pipe_ex_mem0/mem_aluop_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 9.76563e-05 -static_probability  \
0.999023 [get_pins {pipe_ex_mem0/mem_aluop_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.998932 [get_pins {pipe_ex_mem0/mem_aluop_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999573 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {pipe_ex_mem0/mem_rt_data_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999939 [get_pins {pipe_ex_mem0/mem_rt_data_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999725 [get_pins {pipe_ex_mem0/mem_rt_data_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999756 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 7.32422e-05 -static_probability  \
0.999237 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.999542 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999695 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999908 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_reg_wdata_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999939 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999939 [get_pins {pipe_ex_mem0/mem_rt_data_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999725 [get_pins {pipe_ex_mem0/mem_rt_data_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999939 [get_pins {pipe_ex_mem0/mem_rt_data_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999664 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999878 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999908 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999817 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999878 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999695 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999695 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999847 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.999451 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999786 [get_pins {pipe_ex_mem0/mem_mem_addr_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999695 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 3.96729e-05 -static_probability  \
0.998581 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.99826 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 4.57764e-05 -static_probability  \
0.99855 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 2.74658e-05 -static_probability  \
0.999557 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.998566 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 4.57764e-05 -static_probability  \
0.998062 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.998749 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 3.96729e-05 -static_probability  \
0.999039 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.999268 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 5.79834e-05 -static_probability  \
0.99794 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 4.57764e-05 -static_probability  \
0.998703 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 5.79834e-05 -static_probability  \
0.998459 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.999207 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 5.79834e-05 -static_probability  \
0.99791 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 2.74658e-05 -static_probability  \
0.999496 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.99881 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999756 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999725 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_reg_wdata_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 4.57764e-05 -static_probability  \
0.998062 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999878 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 3.96729e-05 -static_probability  \
0.998489 [get_pins {pipe_ex_mem0/mem_reg_wdata_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000198364 -static_probability  \
0.99617 [get_pins pipe_ex_mem0/mem_we_reg/QN]
set_switching_activity -period 1 -toggle_rate 7.93457e-05 -static_probability  \
0.998779 [get_pins {pipe_ex_mem0/mem_reg_waddr_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000106812 -static_probability  \
0.997849 [get_pins {pipe_ex_mem0/mem_reg_waddr_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 9.15527e-05 -static_probability  \
0.997772 [get_pins {pipe_ex_mem0/mem_reg_waddr_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000112915 -static_probability  \
0.998184 [get_pins {pipe_ex_mem0/mem_reg_waddr_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 9.76563e-05 -static_probability  \
0.998657 [get_pins {pipe_ex_mem0/mem_reg_waddr_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_ex_mem0/mem_rt_data_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins execute_alu0/U756/CO]
set_switching_activity -period 1 -toggle_rate 7.01904e-05 -static_probability  \
0.997726 [get_pins {pipe_id_ex0/ex_opv1_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_opv1_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997955 [get_pins {pipe_id_ex0/ex_opv1_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 7.32422e-05 -static_probability  \
0.997009 [get_pins {pipe_id_ex0/ex_opv1_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.998657 [get_pins {pipe_id_ex0/ex_opv1_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 5.79834e-05 -static_probability  \
0.997421 [get_pins {pipe_id_ex0/ex_opv1_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.998138 [get_pins {pipe_id_ex0/ex_opv1_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 5.18799e-05 -static_probability  \
0.998917 [get_pins {pipe_id_ex0/ex_opv1_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997955 [get_pins {pipe_id_ex0/ex_opv1_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 8.54492e-05 -static_probability  \
0.996735 [get_pins {pipe_id_ex0/ex_opv1_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000292969 -static_probability  \
0.993225 [get_pins pipe_id_ex0/ex_we_reg/QN]
set_switching_activity -period 1 -toggle_rate 9.15527e-05 -static_probability  \
0.997925 [get_pins {pipe_id_ex0/ex_aluop_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 7.93457e-05 -static_probability  \
0.999207 [get_pins {pipe_id_ex0/ex_aluop_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.998291 [get_pins {pipe_id_ex0/ex_opv2_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 8.8501e-05 -static_probability   \
0.997635 [get_pins {pipe_id_ex0/ex_opv1_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_opv1_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_opv1_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_opv1_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_opv1_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 7.62939e-05 -static_probability  \
0.997177 [get_pins {pipe_id_ex0/ex_opv1_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_opv1_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_opv1_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 7.01904e-05 -static_probability  \
0.997604 [get_pins {pipe_id_ex0/ex_opv1_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 6.40869e-05 -static_probability  \
0.998001 [get_pins {pipe_id_ex0/ex_opv1_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.998291 [get_pins {pipe_id_ex0/ex_opv1_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.998688 [get_pins {pipe_id_ex0/ex_opv1_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_opv1_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 6.40869e-05 -static_probability  \
0.999039 [get_pins {pipe_id_ex0/ex_opv1_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999146 [get_pins {pipe_id_ex0/ex_opv1_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.998383 [get_pins {pipe_id_ex0/ex_opv1_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_opv1_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_opv1_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.997589 [get_pins {pipe_id_ex0/ex_opv1_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 9.15527e-05 -static_probability  \
0.996918 [get_pins {pipe_id_ex0/ex_opv1_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_opv1_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000146484 -static_probability  \
0.996643 [get_pins {pipe_id_ex0/ex_aluop_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.998535 [get_pins {pipe_id_ex0/ex_opv2_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.99823 [get_pins {pipe_id_ex0/ex_opv2_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_opv1_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999756 [get_pins {pipe_id_ex0/ex_mem_offset_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 5.18799e-05 -static_probability  \
0.998398 [get_pins {pipe_id_ex0/ex_opv2_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.998688 [get_pins {pipe_id_ex0/ex_opv2_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.999084 [get_pins {pipe_id_ex0/ex_mem_offset_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.997284 [get_pins {pipe_id_ex0/ex_opv2_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999908 [get_pins {pipe_id_ex0/ex_mem_offset_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.998352 [get_pins {pipe_id_ex0/ex_opv2_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999176 [get_pins {pipe_id_ex0/ex_mem_offset_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999451 [get_pins {pipe_id_ex0/ex_opv2_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999908 [get_pins {pipe_id_ex0/ex_mem_offset_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.99826 [get_pins {pipe_id_ex0/ex_opv2_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999939 [get_pins {pipe_id_ex0/ex_opv2_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999146 [get_pins {pipe_id_ex0/ex_mem_offset_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999847 [get_pins {pipe_id_ex0/ex_mem_offset_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999908 [get_pins {pipe_id_ex0/ex_opv2_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999847 [get_pins {pipe_id_ex0/ex_mem_offset_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.998566 [get_pins {pipe_id_ex0/ex_opv2_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.999847 [get_pins {pipe_id_ex0/ex_mem_offset_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 4.27246e-05 -static_probability  \
0.999573 [get_pins {pipe_id_ex0/ex_mem_offset_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000164795 -static_probability  \
0.99762 [get_pins {pipe_id_ex0/ex_reg_waddr_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000149536 -static_probability  \
0.995255 [get_pins {pipe_id_ex0/ex_reg_waddr_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000131226 -static_probability  \
0.997513 [get_pins {pipe_id_ex0/ex_reg_waddr_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000152588 -static_probability  \
0.995544 [get_pins {pipe_id_ex0/ex_reg_waddr_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000137329 -static_probability  \
0.996353 [get_pins {pipe_id_ex0/ex_reg_waddr_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000317383 -static_probability  \
0.99231 [get_pins {pipe_id_ex0/ex_alusel_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00010376 -static_probability   \
0.998077 [get_pins {pipe_id_ex0/ex_alusel_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000189209 -static_probability  \
0.996918 [get_pins {pipe_id_ex0/ex_alusel_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.998871 [get_pins {pipe_id_ex0/ex_opv2_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.999725 [get_pins {pipe_id_ex0/ex_link_addr_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.999634 [get_pins {pipe_id_ex0/ex_link_addr_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {pipe_id_ex0/ex_link_addr_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_id_ex0/ex_mem_offset_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999756 [get_pins {pipe_id_ex0/ex_link_addr_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {pipe_id_ex0/ex_link_addr_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][26]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.973267 [get_pins {regfile0/regs_reg[28][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][5]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.977982 [get_pins {regfile0/regs_reg[21][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][19]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.973267 [get_pins {regfile0/regs_reg[28][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][6]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.983353 [get_pins {regfile0/regs_reg[3][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][8]/QN}]
set_switching_activity -period 1 -toggle_rate 9.15527e-06 -static_probability  \
0.987427 [get_pins {regfile0/regs_reg[8][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][20]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.973267 [get_pins {regfile0/regs_reg[28][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][18]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.982101 [get_pins {regfile0/regs_reg[10][18]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.973267 [get_pins {regfile0/regs_reg[28][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][11]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.987457 [get_pins {regfile0/regs_reg[8][14]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.960129 [get_pins {regfile0/regs_reg[8][26]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.977982 [get_pins {regfile0/regs_reg[21][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][4]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999771 [get_pins {regfile0/regs_reg[26][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][10]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996887 [get_pins {regfile0/regs_reg[14][17]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999771 [get_pins {regfile0/regs_reg[26][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][9]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.99791 [get_pins {regfile0/regs_reg[2][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][9]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.970306 [get_pins {regfile0/regs_reg[20][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][22]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.977982 [get_pins {regfile0/regs_reg[21][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][23]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.969696 [get_pins {regfile0/regs_reg[4][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][10]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996887 [get_pins {regfile0/regs_reg[14][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][4]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999771 [get_pins {regfile0/regs_reg[26][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][10]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.989014 [get_pins {regfile0/regs_reg[12][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][29]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999771 [get_pins {regfile0/regs_reg[26][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][19]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.973267 [get_pins {regfile0/regs_reg[28][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[10][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][29]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {regfile0/regs_reg[3][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][7]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.983353 [get_pins {regfile0/regs_reg[3][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][6]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.973267 [get_pins {regfile0/regs_reg[28][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][16]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.981903 [get_pins {regfile0/regs_reg[10][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][16]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999771 [get_pins {regfile0/regs_reg[26][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][8]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.992096 [get_pins {regfile0/regs_reg[12][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][11]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996887 [get_pins {regfile0/regs_reg[14][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[10][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][6]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.970306 [get_pins {regfile0/regs_reg[20][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][31]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.973267 [get_pins {regfile0/regs_reg[28][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][9]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.981903 [get_pins {regfile0/regs_reg[10][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][31]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.992096 [get_pins {regfile0/regs_reg[12][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[10][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][13]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999802 [get_pins {regfile0/regs_reg[10][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][16]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999771 [get_pins {regfile0/regs_reg[26][28]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.972672 [get_pins {regfile0/regs_reg[8][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][13]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.983353 [get_pins {regfile0/regs_reg[3][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][5]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.981903 [get_pins {regfile0/regs_reg[10][25]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.99791 [get_pins {regfile0/regs_reg[2][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][25]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.99791 [get_pins {regfile0/regs_reg[2][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][15]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999771 [get_pins {regfile0/regs_reg[26][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][8]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.973267 [get_pins {regfile0/regs_reg[28][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][28]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.977982 [get_pins {regfile0/regs_reg[21][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][9]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.973267 [get_pins {regfile0/regs_reg[28][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][4]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999802 [get_pins {regfile0/regs_reg[10][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][5]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996887 [get_pins {regfile0/regs_reg[14][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][17]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999939 [get_pins {regfile0/regs_reg[10][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][27]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999771 [get_pins {regfile0/regs_reg[26][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][31]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999832 [get_pins {regfile0/regs_reg[10][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][5]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.99791 [get_pins {regfile0/regs_reg[2][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][11]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.977982 [get_pins {regfile0/regs_reg[21][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][21]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.99791 [get_pins {regfile0/regs_reg[2][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][4]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.987457 [get_pins {regfile0/regs_reg[8][28]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.987457 [get_pins {regfile0/regs_reg[8][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][4]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.977982 [get_pins {regfile0/regs_reg[21][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][13]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.977982 [get_pins {regfile0/regs_reg[21][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][20]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {regfile0/regs_reg[10][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][20]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.982101 [get_pins {regfile0/regs_reg[10][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][13]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.977982 [get_pins {regfile0/regs_reg[21][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][17]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999771 [get_pins {regfile0/regs_reg[26][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][12]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999771 [get_pins {regfile0/regs_reg[26][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][10]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999771 [get_pins {regfile0/regs_reg[26][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][10]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.977982 [get_pins {regfile0/regs_reg[21][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][0]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.99791 [get_pins {regfile0/regs_reg[2][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[10][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[10][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][1]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.984177 [get_pins {regfile0/regs_reg[18][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][2]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.975693 [get_pins {regfile0/regs_reg[3][2]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.981644 [get_pins {regfile0/regs_reg[27][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[26][2]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.969131 [get_pins {regfile0/regs_reg[14][2]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.986969 [get_pins {regfile0/regs_reg[28][2]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {regfile0/regs_reg[10][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][3]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.975693 [get_pins {regfile0/regs_reg[3][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][3]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.991943 [get_pins {regfile0/regs_reg[12][2]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.981644 [get_pins {regfile0/regs_reg[27][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][3]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.977509 [get_pins {regfile0/regs_reg[9][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][3]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.98317 [get_pins {regfile0/regs_reg[10][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][2]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.997971 [get_pins {regfile0/regs_reg[29][2]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.99791 [get_pins {regfile0/regs_reg[2][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][3]/QN}]
set_switching_activity -period 1 -toggle_rate 9.15527e-06 -static_probability  \
0.983139 [get_pins {regfile0/regs_reg[10][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[10][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][4]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.976074 [get_pins {regfile0/regs_reg[23][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[10][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[2][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[10][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[10][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[10][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[10][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][11]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.970306 [get_pins {regfile0/regs_reg[20][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][11]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.982498 [get_pins {regfile0/regs_reg[11][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][12]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.981934 [get_pins {regfile0/regs_reg[10][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][12]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.972672 [get_pins {regfile0/regs_reg[8][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][11]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][13]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.987457 [get_pins {regfile0/regs_reg[8][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][12]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.969696 [get_pins {regfile0/regs_reg[4][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][13]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.983353 [get_pins {regfile0/regs_reg[3][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][12]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][13]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.970306 [get_pins {regfile0/regs_reg[20][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][14]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.969696 [get_pins {regfile0/regs_reg[4][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][14]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][13]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][15]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996887 [get_pins {regfile0/regs_reg[14][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][15]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996918 [get_pins {regfile0/regs_reg[12][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][15]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.983353 [get_pins {regfile0/regs_reg[3][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][14]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.960129 [get_pins {regfile0/regs_reg[8][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][16]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.976639 [get_pins {regfile0/regs_reg[16][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][15]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][16]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996887 [get_pins {regfile0/regs_reg[14][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][16]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.969696 [get_pins {regfile0/regs_reg[4][16]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.987457 [get_pins {regfile0/regs_reg[8][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][16]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.970306 [get_pins {regfile0/regs_reg[20][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][15]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.969696 [get_pins {regfile0/regs_reg[4][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][17]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996918 [get_pins {regfile0/regs_reg[12][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][17]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.982101 [get_pins {regfile0/regs_reg[10][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][17]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.982498 [get_pins {regfile0/regs_reg[11][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][16]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][17]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996887 [get_pins {regfile0/regs_reg[14][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][18]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.983353 [get_pins {regfile0/regs_reg[3][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][18]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.969696 [get_pins {regfile0/regs_reg[4][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][18]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.977982 [get_pins {regfile0/regs_reg[21][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][18]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.989014 [get_pins {regfile0/regs_reg[12][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][18]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.983353 [get_pins {regfile0/regs_reg[3][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][17]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][17]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.970306 [get_pins {regfile0/regs_reg[20][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][18]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.960159 [get_pins {regfile0/regs_reg[8][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][19]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.981903 [get_pins {regfile0/regs_reg[10][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][19]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][19]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.982498 [get_pins {regfile0/regs_reg[11][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][18]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][18]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.970306 [get_pins {regfile0/regs_reg[20][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][20]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996918 [get_pins {regfile0/regs_reg[12][20]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996887 [get_pins {regfile0/regs_reg[14][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][20]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.973267 [get_pins {regfile0/regs_reg[28][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][20]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.960129 [get_pins {regfile0/regs_reg[8][20]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.969696 [get_pins {regfile0/regs_reg[4][20]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.982498 [get_pins {regfile0/regs_reg[11][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][20]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.982498 [get_pins {regfile0/regs_reg[11][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][21]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.992096 [get_pins {regfile0/regs_reg[12][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][21]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999802 [get_pins {regfile0/regs_reg[10][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[5][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[21][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][20]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.983353 [get_pins {regfile0/regs_reg[3][21]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.976639 [get_pins {regfile0/regs_reg[16][20]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][20]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996887 [get_pins {regfile0/regs_reg[14][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][22]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.987457 [get_pins {regfile0/regs_reg[8][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[10][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][22]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996918 [get_pins {regfile0/regs_reg[12][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][22]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.969696 [get_pins {regfile0/regs_reg[4][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][22]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.973267 [get_pins {regfile0/regs_reg[28][22]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.969696 [get_pins {regfile0/regs_reg[4][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][21]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[15][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][23]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996918 [get_pins {regfile0/regs_reg[12][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[31][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[8][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][23]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.976639 [get_pins {regfile0/regs_reg[16][23]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.983383 [get_pins {regfile0/regs_reg[3][23]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996887 [get_pins {regfile0/regs_reg[14][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][22]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][23]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999771 [get_pins {regfile0/regs_reg[26][23]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.970306 [get_pins {regfile0/regs_reg[20][22]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.999802 [get_pins {regfile0/regs_reg[10][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][24]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996918 [get_pins {regfile0/regs_reg[12][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[24][24]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.987457 [get_pins {regfile0/regs_reg[8][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[29][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][23]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[3][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][24]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996918 [get_pins {regfile0/regs_reg[12][25]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.969696 [get_pins {regfile0/regs_reg[4][25]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.982498 [get_pins {regfile0/regs_reg[11][25]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.996887 [get_pins {regfile0/regs_reg[14][25]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.987457 [get_pins {regfile0/regs_reg[8][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][25]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][24]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][25]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.982498 [get_pins {regfile0/regs_reg[11][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][26]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999969 [get_pins {regfile0/regs_reg[3][26]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.973267 [get_pins {regfile0/regs_reg[28][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[16][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][26]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.976639 [get_pins {regfile0/regs_reg[16][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[9][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[7][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][27]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.983353 [get_pins {regfile0/regs_reg[3][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][27]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.989014 [get_pins {regfile0/regs_reg[12][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][26]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][28]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.976639 [get_pins {regfile0/regs_reg[16][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][27]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.982498 [get_pins {regfile0/regs_reg[11][27]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.970306 [get_pins {regfile0/regs_reg[20][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][28]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.973267 [get_pins {regfile0/regs_reg[28][27]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][28]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.970306 [get_pins {regfile0/regs_reg[20][29]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.982498 [get_pins {regfile0/regs_reg[11][29]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.960129 [get_pins {regfile0/regs_reg[8][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[14][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[17][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[13][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][28]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][28]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.981903 [get_pins {regfile0/regs_reg[10][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[1][29]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.982101 [get_pins {regfile0/regs_reg[10][31]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.973267 [get_pins {regfile0/regs_reg[28][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[25][30]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.982498 [get_pins {regfile0/regs_reg[11][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[27][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[6][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[18][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][31]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.969696 [get_pins {regfile0/regs_reg[4][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[11][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[28][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][31]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.983353 [get_pins {regfile0/regs_reg[3][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[20][30]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.976639 [get_pins {regfile0/regs_reg[16][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[22][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[19][30]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.976639 [get_pins {regfile0/regs_reg[16][29]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[12][30]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.970306 [get_pins {regfile0/regs_reg[20][31]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.972672 [get_pins {regfile0/regs_reg[8][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[30][30]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[23][31]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-06 -static_probability  \
0.976639 [get_pins {regfile0/regs_reg[16][31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {regfile0/regs_reg[4][30]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.000152588 [get_pins inst_decoder0/U309/C1]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.00012207 [get_pins inst_decoder0/U292/C1]
set_switching_activity -period 1 -toggle_rate 8.8501e-05 -static_probability   \
0.00141907 [get_pins inst_decoder0/U283/C1]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins inst_decoder0/U273/C1]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.998734 [get_pins {inst_decoder0/opv2_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.998474 [get_pins {inst_decoder0/opv2_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.999084 [get_pins {inst_decoder0/opv2_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.998352 [get_pins {inst_decoder0/opv2_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997513 [get_pins {inst_decoder0/opv2_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 4.27246e-05 -static_probability  \
0.99855 [get_pins {inst_decoder0/opv2_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999908 [get_pins {inst_decoder0/opv2_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.999527 [get_pins {inst_decoder0/opv2_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999893 [get_pins {inst_decoder0/opv2_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.998749 [get_pins {inst_decoder0/opv2_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999863 [get_pins {inst_decoder0/opv2_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.99855 [get_pins {inst_decoder0/opv2_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.998825 [get_pins {inst_decoder0/opv2_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {inst_decoder0/opv1_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {inst_decoder0/opv1_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {inst_decoder0/opv1_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {inst_decoder0/opv1_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {inst_decoder0/opv1_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {inst_decoder0/opv1_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {inst_decoder0/opv1_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {inst_decoder0/opv1_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {inst_decoder0/opv1_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {inst_decoder0/opv1_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {inst_decoder0/opv1_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 1          \
[get_pins {inst_decoder0/opv1_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 7.62939e-05 -static_probability  \
0.998734 [get_pins {inst_decoder0/opv1_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.999283 [get_pins {inst_decoder0/opv1_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 5.79834e-05 -static_probability  \
0.998688 [get_pins {inst_decoder0/opv1_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 6.40869e-05 -static_probability  \
0.998779 [get_pins {inst_decoder0/opv1_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 7.01904e-05 -static_probability  \
0.998825 [get_pins {inst_decoder0/opv1_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 5.79834e-05 -static_probability  \
0.998734 [get_pins {inst_decoder0/opv1_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 8.54492e-05 -static_probability  \
0.998459 [get_pins {inst_decoder0/opv1_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 6.40869e-05 -static_probability  \
0.9991 [get_pins {inst_decoder0/opv1_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.998688 [get_pins {inst_decoder0/opv1_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 8.23975e-05 -static_probability  \
0.997925 [get_pins {inst_decoder0/opv1_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.99826 [get_pins {inst_decoder0/opv1_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 8.23975e-05 -static_probability  \
0.997986 [get_pins {inst_decoder0/opv1_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00010376 -static_probability   \
0.998367 [get_pins {inst_decoder0/opv1_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.998627 [get_pins {inst_decoder0/opv1_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 8.8501e-05 -static_probability   \
0.997986 [get_pins {inst_decoder0/opv1_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 5.79834e-05 -static_probability  \
0.999176 [get_pins {inst_decoder0/opv1_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.998627 [get_pins {inst_decoder0/opv1_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00218506 -static_probability   \
0.926529 [get_pins {pipe_if_id0/id_inst_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00218201 -static_probability   \
0.930893 [get_pins {pipe_if_id0/id_inst_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00218506 -static_probability   \
0.92543 [get_pins {pipe_if_id0/id_inst_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00212402 -static_probability   \
0.929443 [get_pins {pipe_if_id0/id_inst_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00227051 -static_probability   \
0.921738 [get_pins {pipe_if_id0/id_inst_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999847 [get_pins {pipe_if_id0/id_pc_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_if_id0/id_pc_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 1.83105e-05 -static_probability  \
0.999298 [get_pins {pipe_if_id0/id_pc_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_if_id0/id_pc_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00222168 -static_probability   \
0.924377 [get_pins {pipe_if_id0/id_inst_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 1.2207e-05 -static_probability   \
0.999725 [get_pins {pipe_if_id0/id_pc_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.999054 [get_pins {pipe_if_id0/id_pc_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999847 [get_pins {pipe_if_id0/id_pc_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00209656 -static_probability   \
0.930328 [get_pins {pipe_if_id0/id_inst_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.999054 [get_pins {pipe_if_id0/id_pc_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_if_id0/id_pc_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_if_id0/id_pc_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.999054 [get_pins {pipe_if_id0/id_pc_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00204468 -static_probability   \
0.931976 [get_pins {pipe_if_id0/id_inst_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00221558 -static_probability   \
0.927689 [get_pins {pipe_if_id0/id_inst_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00201721 -static_probability   \
0.932648 [get_pins {pipe_if_id0/id_inst_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.998505 [get_pins {pipe_if_id0/id_pc_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 4.27246e-05 -static_probability  \
0.998474 [get_pins {pipe_if_id0/id_pc_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.99884 [get_pins {pipe_if_id0/id_pc_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00216064 -static_probability   \
0.925766 [get_pins {pipe_if_id0/id_inst_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00205383 -static_probability   \
0.928909 [get_pins {pipe_if_id0/id_inst_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000491333 -static_probability  \
0.978195 [get_pins {pipe_if_id0/id_pc_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00125732 -static_probability   \
0.960266 [get_pins {pipe_if_id0/id_pc_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.999054 [get_pins {pipe_if_id0/id_pc_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.999054 [get_pins {pipe_if_id0/id_pc_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00230408 -static_probability   \
0.925217 [get_pins {pipe_if_id0/id_inst_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.99881 [get_pins {pipe_if_id0/id_pc_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.99884 [get_pins {pipe_if_id0/id_pc_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 9.76563e-05 -static_probability  \
0.996887 [get_pins {pipe_if_id0/id_pc_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 4.27246e-05 -static_probability  \
0.998474 [get_pins {pipe_if_id0/id_pc_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.998688 [get_pins {pipe_if_id0/id_pc_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.998505 [get_pins {pipe_if_id0/id_pc_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.998657 [get_pins {pipe_if_id0/id_pc_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.999023 [get_pins {pipe_if_id0/id_pc_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00220032 -static_probability   \
0.928726 [get_pins {pipe_if_id0/id_inst_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00211487 -static_probability   \
0.93103 [get_pins {pipe_if_id0/id_inst_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00213623 -static_probability   \
0.925217 [get_pins {pipe_if_id0/id_inst_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00231934 -static_probability   \
0.924606 [get_pins {pipe_if_id0/id_inst_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00202637 -static_probability   \
0.931961 [get_pins {pipe_if_id0/id_inst_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00206299 -static_probability   \
0.932785 [get_pins {pipe_if_id0/id_inst_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00217896 -static_probability   \
0.927109 [get_pins {pipe_if_id0/id_inst_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00221252 -static_probability   \
0.926071 [get_pins {pipe_if_id0/id_inst_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00224915 -static_probability   \
0.927536 [get_pins {pipe_if_id0/id_inst_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00214233 -static_probability   \
0.929718 [get_pins {pipe_if_id0/id_inst_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00224609 -static_probability   \
0.926208 [get_pins {pipe_if_id0/id_inst_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00209045 -static_probability   \
0.933105 [get_pins {pipe_if_id0/id_inst_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00210266 -static_probability   \
0.925461 [get_pins {pipe_if_id0/id_inst_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00211792 -static_probability   \
0.929962 [get_pins {pipe_if_id0/id_inst_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00209961 -static_probability   \
0.923569 [get_pins {pipe_if_id0/id_inst_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00204468 -static_probability   \
0.929626 [get_pins {pipe_if_id0/id_inst_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00211182 -static_probability   \
0.92749 [get_pins {pipe_if_id0/id_inst_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00217285 -static_probability   \
0.927216 [get_pins {pipe_if_id0/id_inst_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00219116 -static_probability   \
0.930313 [get_pins {pipe_if_id0/id_inst_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00617981 -static_probability   \
0.934326 [get_pins {pipe_if_id0/id_pc_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00299072 -static_probability   \
0.941879 [get_pins {pipe_if_id0/id_pc_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.999023 [get_pins {pipe_if_id0/id_pc_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.999054 [get_pins {pipe_if_id0/id_pc_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.999054 [get_pins {pipe_if_id0/id_pc_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-06 -static_probability  \
0.999847 [get_pins {pipe_if_id0/id_pc_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.998764 [get_pins {inst_fetch0/mem_addr_o_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 7.93457e-05 -static_probability  \
0.99559 [get_pins {inst_fetch0/mem_addr_o_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00638733 -static_probability   \
0.926208 [get_pins {inst_fetch0/mem_addr_o_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00309448 -static_probability   \
0.933807 [get_pins {inst_fetch0/mem_addr_o_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00131226 -static_probability   \
0.954178 [get_pins {inst_fetch0/mem_addr_o_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000552368 -static_probability  \
0.971451 [get_pins {inst_fetch0/mem_addr_o_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000146484 -static_probability  \
0.99437 [get_pins {inst_fetch0/mem_addr_o_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 7.93457e-05 -static_probability  \
0.996536 [get_pins {inst_fetch0/mem_addr_o_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.997116 [get_pins {inst_fetch0/mem_addr_o_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 7.93457e-05 -static_probability  \
0.99614 [get_pins {inst_fetch0/mem_addr_o_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.996918 [get_pins {inst_fetch0/mem_addr_o_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997696 [get_pins {inst_fetch0/mem_addr_o_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997192 [get_pins {inst_fetch0/mem_addr_o_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.99707 [get_pins {inst_fetch0/mem_addr_o_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.996765 [get_pins {inst_fetch0/mem_addr_o_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 7.32422e-05 -static_probability  \
0.996735 [get_pins {inst_fetch0/mem_addr_o_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.998627 [get_pins {inst_fetch0/mem_addr_o_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997879 [get_pins {inst_fetch0/mem_addr_o_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997055 [get_pins {inst_fetch0/mem_addr_o_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.998108 [get_pins {inst_fetch0/mem_addr_o_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997345 [get_pins {inst_fetch0/mem_addr_o_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997314 [get_pins {inst_fetch0/mem_addr_o_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997345 [get_pins {inst_fetch0/mem_addr_o_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997314 [get_pins {inst_fetch0/mem_addr_o_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997345 [get_pins {inst_fetch0/mem_addr_o_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997314 [get_pins {inst_fetch0/mem_addr_o_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997345 [get_pins {inst_fetch0/mem_addr_o_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997314 [get_pins {inst_fetch0/mem_addr_o_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997345 [get_pins {inst_fetch0/mem_addr_o_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.998001 [get_pins {inst_fetch0/mem_addr_o_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.998108 [get_pins {inst_fetch0/mem_addr_o_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.998108 [get_pins {inst_fetch0/mem_addr_o_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 0.0338348 -static_probability    \
0.571823 [get_pins inst_fetch0/stallreq_reg/QN]
set_switching_activity -period 1 -toggle_rate 0.00554199 -static_probability   \
0.727356 [get_pins inst_fetch0/mem_re_reg/QN]
set_switching_activity -period 1 -toggle_rate 0.0279907 -static_probability    \
0.930023 [get_pins inst_fetch0/mem_taking_reg/QN]
set_switching_activity -period 1 -toggle_rate 7.93457e-05 -static_probability  \
0.99559 [get_pins {inst_fetch0/pc_o_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00639954 -static_probability   \
0.92717 [get_pins {inst_fetch0/pc_o_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00311279 -static_probability   \
0.934723 [get_pins {inst_fetch0/pc_o_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00131836 -static_probability   \
0.954849 [get_pins {inst_fetch0/pc_o_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000552368 -static_probability  \
0.971451 [get_pins {inst_fetch0/pc_o_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000146484 -static_probability  \
0.99437 [get_pins {inst_fetch0/pc_o_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 7.93457e-05 -static_probability  \
0.996536 [get_pins {inst_fetch0/pc_o_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.997116 [get_pins {inst_fetch0/pc_o_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 7.93457e-05 -static_probability  \
0.99614 [get_pins {inst_fetch0/pc_o_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.996918 [get_pins {inst_fetch0/pc_o_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997696 [get_pins {inst_fetch0/pc_o_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997192 [get_pins {inst_fetch0/pc_o_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.99707 [get_pins {inst_fetch0/pc_o_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.996765 [get_pins {inst_fetch0/pc_o_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 7.32422e-05 -static_probability  \
0.996735 [get_pins {inst_fetch0/pc_o_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.998627 [get_pins {inst_fetch0/pc_o_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997879 [get_pins {inst_fetch0/pc_o_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997055 [get_pins {inst_fetch0/pc_o_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.998108 [get_pins {inst_fetch0/pc_o_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997345 [get_pins {inst_fetch0/pc_o_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997314 [get_pins {inst_fetch0/pc_o_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997345 [get_pins {inst_fetch0/pc_o_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997314 [get_pins {inst_fetch0/pc_o_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997345 [get_pins {inst_fetch0/pc_o_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997314 [get_pins {inst_fetch0/pc_o_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997345 [get_pins {inst_fetch0/pc_o_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.997314 [get_pins {inst_fetch0/pc_o_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997345 [get_pins {inst_fetch0/pc_o_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.998001 [get_pins {inst_fetch0/pc_o_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.998108 [get_pins {inst_fetch0/pc_o_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.998108 [get_pins {inst_fetch0/pc_o_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00401001 -static_probability   \
0.871429 [get_pins {inst_fetch0/inst_o_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00423279 -static_probability   \
0.86142 [get_pins {inst_fetch0/inst_o_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00408936 -static_probability   \
0.870056 [get_pins {inst_fetch0/inst_o_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 0.0041687 -static_probability    \
0.868546 [get_pins {inst_fetch0/inst_o_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00389709 -static_probability   \
0.868439 [get_pins {inst_fetch0/inst_o_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00413513 -static_probability   \
0.862152 [get_pins {inst_fetch0/inst_o_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00404358 -static_probability   \
0.865479 [get_pins {inst_fetch0/inst_o_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00422058 -static_probability   \
0.858963 [get_pins {inst_fetch0/inst_o_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00406799 -static_probability   \
0.869247 [get_pins {inst_fetch0/inst_o_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00414734 -static_probability   \
0.863388 [get_pins {inst_fetch0/inst_o_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00394592 -static_probability   \
0.866104 [get_pins {inst_fetch0/inst_o_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00411377 -static_probability   \
0.863754 [get_pins {inst_fetch0/inst_o_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00394592 -static_probability   \
0.872787 [get_pins {inst_fetch0/inst_o_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00407715 -static_probability   \
0.867859 [get_pins {inst_fetch0/inst_o_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00406189 -static_probability   \
0.864685 [get_pins {inst_fetch0/inst_o_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00421143 -static_probability   \
0.870544 [get_pins {inst_fetch0/inst_o_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00413208 -static_probability   \
0.866898 [get_pins {inst_fetch0/inst_o_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00392456 -static_probability   \
0.868225 [get_pins {inst_fetch0/inst_o_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00413818 -static_probability   \
0.864883 [get_pins {inst_fetch0/inst_o_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00400391 -static_probability   \
0.855942 [get_pins {inst_fetch0/inst_o_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00414734 -static_probability   \
0.859726 [get_pins {inst_fetch0/inst_o_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00394897 -static_probability   \
0.870422 [get_pins {inst_fetch0/inst_o_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00398254 -static_probability   \
0.870789 [get_pins {inst_fetch0/inst_o_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00387573 -static_probability   \
0.864288 [get_pins {inst_fetch0/inst_o_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00410767 -static_probability   \
0.868454 [get_pins {inst_fetch0/inst_o_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00414429 -static_probability   \
0.866043 [get_pins {inst_fetch0/inst_o_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00406799 -static_probability   \
0.867416 [get_pins {inst_fetch0/inst_o_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00413818 -static_probability   \
0.864563 [get_pins {inst_fetch0/inst_o_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00411377 -static_probability   \
0.863678 [get_pins {inst_fetch0/inst_o_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00414429 -static_probability   \
0.865311 [get_pins {inst_fetch0/inst_o_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 0.0041626 -static_probability    \
0.86409 [get_pins {inst_fetch0/inst_o_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00412598 -static_probability   \
0.861801 [get_pins {inst_fetch0/inst_o_reg[31]/QN}]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.998764 [get_pins {inst_fetch0/pc_o_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000140381 -static_probability  \
0.99704 [get_pins inst_fetch0/waiting_one_reg/QN]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.998413 [get_pins {program_counter0/pc_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 9.76563e-05 -static_probability  \
0.993469 [get_pins {program_counter0/pc_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000134277 -static_probability  \
0.997528 [get_pins program_counter0/right_one_reg/QN]
set_switching_activity -period 1 -toggle_rate 9.15527e-05 -static_probability  \
0.970428 [get_pins program_counter0/right_one_o_reg/QN]
set_switching_activity -period 1 -toggle_rate 2.44141e-05 -static_probability  \
0.998688 [get_pins {program_counter0/pc_o_reg[0]/QN}]
set_switching_activity -period 1 -toggle_rate 7.93457e-05 -static_probability  \
0.99527 [get_pins {program_counter0/pc_o_reg[1]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00787659 -static_probability   \
0.910873 [get_pins {program_counter0/pc_o_reg[2]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00393372 -static_probability   \
0.91777 [get_pins {program_counter0/pc_o_reg[3]/QN}]
set_switching_activity -period 1 -toggle_rate 0.00167542 -static_probability   \
0.942535 [get_pins {program_counter0/pc_o_reg[4]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000668335 -static_probability  \
0.965897 [get_pins {program_counter0/pc_o_reg[5]/QN}]
set_switching_activity -period 1 -toggle_rate 0.000152588 -static_probability  \
0.992065 [get_pins {program_counter0/pc_o_reg[6]/QN}]
set_switching_activity -period 1 -toggle_rate 7.32422e-05 -static_probability  \
0.996185 [get_pins {program_counter0/pc_o_reg[7]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.996887 [get_pins {program_counter0/pc_o_reg[8]/QN}]
set_switching_activity -period 1 -toggle_rate 7.32422e-05 -static_probability  \
0.99585 [get_pins {program_counter0/pc_o_reg[9]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.996643 [get_pins {program_counter0/pc_o_reg[10]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.997498 [get_pins {program_counter0/pc_o_reg[11]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.996979 [get_pins {program_counter0/pc_o_reg[12]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.996826 [get_pins {program_counter0/pc_o_reg[13]/QN}]
set_switching_activity -period 1 -toggle_rate 6.10352e-05 -static_probability  \
0.996521 [get_pins {program_counter0/pc_o_reg[14]/QN}]
set_switching_activity -period 1 -toggle_rate 6.71387e-05 -static_probability  \
0.99646 [get_pins {program_counter0/pc_o_reg[15]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.998505 [get_pins {program_counter0/pc_o_reg[16]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997681 [get_pins {program_counter0/pc_o_reg[17]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.996826 [get_pins {program_counter0/pc_o_reg[18]/QN}]
set_switching_activity -period 1 -toggle_rate 4.27246e-05 -static_probability  \
0.997925 [get_pins {program_counter0/pc_o_reg[19]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.997162 [get_pins {program_counter0/pc_o_reg[20]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997101 [get_pins {program_counter0/pc_o_reg[21]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.997162 [get_pins {program_counter0/pc_o_reg[22]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997101 [get_pins {program_counter0/pc_o_reg[23]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.997162 [get_pins {program_counter0/pc_o_reg[24]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997101 [get_pins {program_counter0/pc_o_reg[25]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.997162 [get_pins {program_counter0/pc_o_reg[26]/QN}]
set_switching_activity -period 1 -toggle_rate 5.49316e-05 -static_probability  \
0.997101 [get_pins {program_counter0/pc_o_reg[27]/QN}]
set_switching_activity -period 1 -toggle_rate 4.88281e-05 -static_probability  \
0.997162 [get_pins {program_counter0/pc_o_reg[28]/QN}]
set_switching_activity -period 1 -toggle_rate 3.66211e-05 -static_probability  \
0.997864 [get_pins {program_counter0/pc_o_reg[29]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.998016 [get_pins {program_counter0/pc_o_reg[30]/QN}]
set_switching_activity -period 1 -toggle_rate 3.05176e-05 -static_probability  \
0.998016 [get_pins {program_counter0/pc_o_reg[31]/QN}]
create_clock [get_ports clk]  -name riscv_clock  -period 10  -waveform {0 5}
set compile_inbound_cell_optimization false
set compile_inbound_max_cell_percentage 10.0
