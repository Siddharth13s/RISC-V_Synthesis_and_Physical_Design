`timescale 1ns/1ps

`include "defines.v"
module riscv_cpu (
    input clk, 
    input rst,
	input   [`MemDataWidth-1:0] mem_data_i,
	input   [                1:0] mem_busy_i,
	input   [                1:0] mem_done_i,
	output  [                3:0] mem_rwe_o ,
	output  [`MemAddrWidth-1:0] mem_addr_o,
	output  [                7:0] mem_sel_o ,
	output  [`MemDataWidth-1:0] mem_data_o
);
	

	// stall
	wire[5:0] stall;
	wire stallreq_if;
	wire stallreq_id;
	wire stallreq_ex;
	wire stallreq_mem;

	// PC_Reg -> IF
	wire[`InstAddrBus] pc;
	wire right_one;

	// IF -> IF/ID
	wire[`MemAddrBus] if_pc;
	wire[`InstBus] if_inst;

	// IF/ID -> ID
	wire[`InstAddrBus] id_pc;
	wire[`InstBus] id_inst;
	wire               mem_busy  ;
	wire               mem_donea  ;
	wire            mem_re   ;

	// ID -> Regfile
	wire id_re1;
	wire id_re2;
	wire[`RegBus] id_reg_data1;
	wire[`RegBus] id_reg_data2;
	wire[`RegAddrBus] id_reg_addr1;
	wire[`RegAddrBus] id_reg_addr2;

	// ID -> PC_reg
	wire br;
	wire[`InstAddrBus] br_addr;

	// ID -> ID/EX
	wire[`AluOpBus] id_aluop;
	wire[`AluSelBus] id_alusel;
	wire[`RegBus] id_opv1;
	wire[`RegBus] id_opv2;
	wire id_we;
	wire[`RegAddrBus] id_reg_waddr;
	wire[`InstAddrBus] id_link_addr;
	wire[`RegBus] id_mem_offset;

	// ID/EX -> EX
	wire[  `AluOpBus] ex_aluop;
	wire[ `AluSelBus] ex_alusel;
	wire[    `RegBus] ex_opv1;
	wire[    `RegBus] ex_opv2;
	wire[`RegAddrBus] ex_reg_waddr_i;
	wire ex_we_i;
	wire[`InstAddrBus] ex_link_addr;
	wire[`RegBus] ex_mem_offset;

	// EX -> EX/MEM
	wire[`RegAddrBus] ex_reg_waddr_o;
	wire ex_we_o;
	wire[    `RegBus] ex_reg_wdata;
	wire[`MemAddrBus] ex_mem_addr;
	wire[`AluOpBus] ex_aluop_o;
	wire[`RegBus] ex_rt_data;

	// EX/MEM -> MEM
	wire[`RegAddrBus] mem_reg_waddr_i;
	wire mem_we_i;
	wire[    `RegBus] mem_reg_wdata_i;
	wire[`MemAddrBus] mem_mem_addr;
	wire[`AluOpBus] mem_aluop;
	wire[`RegBus] mem_rt_data;

	// MEM -> MEM/WB
	wire[`RegAddrBus] mem_reg_waddr_o;
	wire mem_we_o;
	wire[    `RegBus] mem_reg_wdata_o;

	// MEM/WB -> Regfile
	wire[`RegAddrBus] wb_reg_waddr;
	wire wb_we;
	wire[    `RegBus] wb_reg_wdata;

	stall_ctrl stall_ctrl0 (
		// input
		.rst         (rst         ),
		.stallreq_if (stallreq_if ),
		.stallreq_id (stallreq_id ),
		.stallreq_ex (stallreq_ex ),
		.stallreq_mem(stallreq_mem),
		// output
		.stall       (stall       )
	);

	program_counter program_counter0 (
		// input
		.clk        (clk      ),
		.rst        (rst      ),
		.stall      (stall    ),
		.br         (br       ),
		.br_addr    (br_addr  ),
		// output
		.pc_o       (pc       ),
		.right_one_o(right_one)
	);

	inst_fetch inst_fetch0 (
		// input
		.rst       (rst          ),
		.pc_i      (pc           ),
		.mem_data_i(mem_data_i),
		.mem_busy  (mem_busy_i  ),
		.mem_done  (mem_done_i  ),
		.br        (br           ),
		.right_one (right_one    ),
		// output
		.mem_re    (mem_re),
		.mem_addr_o(mem_addr_o  ),
		.pc_o      (if_pc        ),
		.inst_o    (if_inst      ),
		.stallreq  (stallreq_if  )
	);

	pipe_if_id pipe_if_id0 (
		// input
		.clk    (clk    ),
		.rst    (rst    ),
		.if_pc  (if_pc  ),
		.if_inst(if_inst),
		.stall  (stall  ),
		.br     (br     ),
		// output
		.id_pc  (id_pc  ),
		.id_inst(id_inst)
	);

	inst_decoder inst_decoder0 (
		// input
		.rst          (rst            ),
		.pc           (id_pc          ),
		.inst         (id_inst        ),
		.reg_data1    (id_reg_data1   ),
		.reg_data2    (id_reg_data2   ),
		
		.ex_aluop     (ex_aluop       ),
		.ex_we        (ex_we_o        ),
		.ex_reg_waddr (ex_reg_waddr_o ),
		.ex_reg_wdata (ex_reg_wdata   ),
		.mem_we       (mem_we_o       ),
		.mem_reg_waddr(mem_reg_waddr_o),
		.mem_reg_wdata(mem_reg_wdata_o),
		
		// output
		.re1          (id_re1         ),
		.re2          (id_re2         ),
		.reg_addr1    (id_reg_addr1   ),
		.reg_addr2    (id_reg_addr2   ),
		.aluop        (id_aluop       ),
		.alusel       (id_alusel      ),
		.opv1         (id_opv1        ),
		.opv2         (id_opv2        ),
		.we           (id_we          ),
		.reg_waddr    (id_reg_waddr   ),
		.stallreq     (stallreq_id    ),
		.br           (br             ),
		.br_addr      (br_addr        ),
		.link_addr    (id_link_addr   ),
		.mem_offset   (id_mem_offset  )
	);

	regfile regfile0 (
		// input
		.clk   (clk         ),
		.rst   (rst         ),
		.we    (wb_we       ),
		.waddr (wb_reg_waddr),
		.wdata (wb_reg_wdata),
		.re1   (id_re1      ),
		.re2   (id_re2      ),
		.raddr1(id_reg_addr1),
		.raddr2(id_reg_addr2),
		// output
		.rdata1(id_reg_data1),
		.rdata2(id_reg_data2)
	);

	pipe_id_ex pipe_id_ex0 (
		// input
		.clk          (clk           ),
		.rst          (rst           ),
		.id_aluop     (id_aluop      ),
		.id_alusel    (id_alusel     ),
		.id_opv1      (id_opv1       ),
		.id_opv2      (id_opv2       ),
		.id_reg_waddr (id_reg_waddr  ),
		.id_we        (id_we         ),
		.id_link_addr (id_link_addr  ),
		.id_mem_offset(id_mem_offset ),
		.stall        (stall         ),
		// output
		.ex_aluop     (ex_aluop      ),
		.ex_alusel    (ex_alusel     ),
		.ex_opv1      (ex_opv1       ),
		.ex_opv2      (ex_opv2       ),
		.ex_reg_waddr (ex_reg_waddr_i),
		.ex_we        (ex_we_i       ),
		.ex_link_addr (ex_link_addr  ),
		.ex_mem_offset(ex_mem_offset )
	);

	execute_alu execute_alu0 (
		// input
		.rst        (rst           ),
		.aluop      (ex_aluop      ),
		.alusel     (ex_alusel     ),
		.opv1       (ex_opv1       ),
		.opv2       (ex_opv2       ),
		.reg_waddr_i(ex_reg_waddr_i),
		.we_i       (ex_we_i       ),
		.link_addr  (ex_link_addr  ),
		.mem_offset (ex_mem_offset ),
		// output
		.reg_waddr_o(ex_reg_waddr_o),
		.we_o       (ex_we_o       ),
		.reg_wdata  (ex_reg_wdata  ),
		.stallreq   (stallreq_ex   ),
		.mem_addr   (ex_mem_addr   ),
		.ex_aluop   (ex_aluop_o    ),
		.rt_data    (ex_rt_data    )
	);

	pipe_ex_mem pipe_ex_mem0 (
		// input
		.clk          (clk            ),
		.rst          (rst            ),
		.ex_reg_waddr (ex_reg_waddr_o ),
		.ex_we        (ex_we_o        ),
		.ex_reg_wdata (ex_reg_wdata   ),
		.stall        (stall          ),
		.ex_mem_addr  (ex_mem_addr    ),
		.ex_aluop     (ex_aluop_o     ),
		.ex_rt_data   (ex_rt_data     ),
		// output
		.mem_reg_waddr(mem_reg_waddr_i),
		.mem_we       (mem_we_i       ),
		.mem_reg_wdata(mem_reg_wdata_i),
		.mem_mem_addr (mem_mem_addr   ),
		.mem_aluop    (mem_aluop      ),
		.mem_rt_data  (mem_rt_data    )
	);

	stage_mem stage_mem0 (
		// input
		.rst        (rst            ),
		.reg_waddr_i(mem_reg_waddr_i),
		.we_i       (mem_we_i       ),
		.reg_wdata_i(mem_reg_wdata_i),
		.mem_addr_i (mem_mem_addr   ),
		.aluop      (mem_aluop      ),
		.rt_data    (mem_rt_data    ),
		.mem_data_i (mem_data_i  ),
		.mem_busy   (mem_busy_i   ),
		.mem_done   (mem_done_i   ),
		// output
		.reg_waddr_o(mem_reg_waddr_o),
		.we_o       (mem_we_o       ),
		.reg_wdata_o(mem_reg_wdata_o),
		.stallreq   (stallreq_mem   ),
		.mem_addr_o (mem_addr_o    ),
		.mem_re     (mem_re  ),
		//.mem_we     (mem_we  ),
		//.mem_sel    (mem_sel     ),
		.mem_data_o (mem_data_o  )
	);

	pipe_mem_wb pipe_mem_wb0 (
		// input
		.clk          (clk            ),
		.rst          (rst            ),
		.mem_reg_waddr(mem_reg_waddr_o),
		.mem_we       (mem_we_o       ),
		.mem_reg_wdata(mem_reg_wdata_o),
		.stall        (stall          ),
		// output
		.wb_reg_waddr (wb_reg_waddr   ),
		.wb_we        (wb_we          ),
		.wb_reg_wdata (wb_reg_wdata   )
	);
	
// I-Cache
	//wire [        1:0] icache_rwe       ;
	//wire [`MemAddrBus] icache_addr      ;
	//wire [`MemDataBus] icache_r_data    ;
	//wire [`MemDataBus] icache_w_data    ;
	//wire [        3:0] icache_sel       ;
	//wire               icache_busy      ;
	//wire               icache_done      ;
	//wire               icache_flush_flag;
	//wire [`MemAddrBus] icache_flush_addr;

//	assign icache_w_data = 0;
//	assign icache_sel = 4'b0000;
//	assign icache_rwe[1] = 1'b0; 

//	// if not sync
//	assign icache_flush_flag = 0;
//	assign icache_flush_addr = 0;

	//cache icache0 (
		//.clk           (clk              ),
		//.rst           (rst              ),
		// with cpu core
		//.icache_rwe      (icache_rwe       ),
		//.icache_addr         (icache_addr      ),
		//.icache_r_data     (icache_r_data    ),
		//.icache_w_data   (icache_w_data    ),
		//.icache_sel   (icache_sel       ),
		//.icache_busy           (icache_busy      ),
		//.icache_done          (icache_done      ),
		//.icache_flush_flag    (icache_flush_flag),
		//.icache_flush_addr    (icache_flush_addr),
		// with memory
		//.mem_rw_flag   (mem_rwe_o[3:2]   ),
//		.mem_addr      (mem_addr_o[63:32]),
//		.mem_read_data (mem_data_i[63:32]),
//		.mem_write_data(mem_data_o[63:32]),
        //.mem_addr      (mem_addr_o[31:0]),
		//.mem_read_data (mem_data_i[31:0]),
		//.mem_write_data(mem_data_o[31:0]),
		//.mem_write_mask(mem_sel_o[7:4]   ),
		//.mem_busy      (mem_busy_i[1]    ),
		//.mem_done      (mem_done_i[1]    )
	//);

	// D-Cache
	//wire [        1:0] dcache_rwe       ;
	//wire [`MemAddrBus] dcache_addr      ;
	//wire [`MemDataBus] dcache_r_data    ;
	//wire [`MemDataBus] dcache_w_data    ;
	//wire [        3:0] dcache_sel       ;
	//wire               dcache_busy      ;
	//wire               dcache_done      ;
	//wire               dcache_flush_flag;
	//wire [`MemAddrBus] dcache_flush_addr;

//	assign dcache_flush_flag = 0;
//	assign dcache_flush_addr = 0;

	//dcache dcache0 (
	//	.clk           (clk              ),
		///.rst           (rst              ),
		// with cpu core
	//	.dcache_rwe       (dcache_rwe       ),
	//	.dcache_addr       (dcache_addr      ),
	//	.dcache_r_data    (dcache_r_data    ),
	//	.dcache_w_data   (dcache_w_data    ),
	//	.dcache_sel   (dcache_sel       ),
	//	.dcache_busy           (dcache_busy      ),
	//	.dcache_done          (dcache_done      ),
	//	.dcache_flush_flag    (dcache_flush_flag),
	//	.dcache_flush_addr    (dcache_flush_addr),
		// with memory
	//	.mem_rw_flag   (mem_rwe_o[1:0]   ),
	//	.mem_addr      (mem_addr_o[31:0] ),
	//	.mem_read_data (mem_data_i[31:0] ),
	//	.mem_write_data(mem_data_o[31:0] ),
	//	.mem_write_mask(mem_sel_o[3:0]   ),
	//	.mem_busy      (mem_busy_i[0]    ),
	//	.mem_done      (mem_done_i[0]    )
	//);
	
	
endmodule // riscv_cpu
