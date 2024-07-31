



//Address (32-bit):
//	TAG INDEX WORD_SELECT 00
module cache #(
	parameter WORD_SELECT_BIT = 3, //block size: 2^3 * 4 = 32 bytes
	parameter INDEX_BIT       = 2, //block count: 2^2 = 4
	parameter NASSOC          = 4
) (
	input             clk           ,
	input             rst           ,
	//from cpu core
	input      [ 1:0] icache_rwe      , //[0] for read, [1] for write
	input      [31:0] icache_addr         ,
	output     [31:0] icache_r_data     ,
	input      [31:0] icache_w_data   ,
	input      [ 3:0] icache_sel   ,
	output reg       icache_busy       ,
	output reg        icache_done        ,
	input             icache_flush_flag    ,
	input      [31:0] icache_flush_addr    ,
	//to memory
	output reg [ 1:0] mem_rw_flag   ,
	output reg [31:0] mem_addr      ,
	input      [31:0] mem_read_data ,
	output reg [31:0] mem_write_data,
	output reg [ 3:0] mem_write_mask,
	input             mem_busy      ,
	input             mem_done
);

	
endmodule // cache

module dcache #(
	parameter WORD_SELECT_BIT = 3, //block size: 2^3 * 4 = 32 bytes
	parameter INDEX_BIT       = 2, //block count: 2^2 = 4
	parameter NASSOC          = 4
) (
	input             clk           ,
	input             rst           ,
	//from cpu core
	input      [ 1:0] dcache_rwe      , //[0] for read, [1] for write
	input      [31:0] dcache_addr         ,
	output     [31:0] dcache_r_data     ,
	input      [31:0] dcache_w_data   ,
	input      [ 3:0] dcache_sel   ,
	output reg       dcache_busy       ,
	output reg        dcache_done        ,
	input             dcache_flush_flag    ,
	input      [31:0] dcache_flush_addr    ,
	//to memory
	output reg [ 1:0] mem_rw_flag   ,
	output reg [31:0] mem_addr      ,
	input      [31:0] mem_read_data ,
	output reg [31:0] mem_write_data,
	output reg [ 3:0] mem_write_mask,
	input             mem_busy      ,
	input             mem_done
);

	
endmodule // cache
