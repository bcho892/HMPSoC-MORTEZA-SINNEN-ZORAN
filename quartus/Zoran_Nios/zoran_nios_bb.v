
module zoran_nios (
	button_pio_external_connection_export,
	clocks_ref_clk_clk,
	clocks_ref_reset_reset,
	clocks_sdram_clk_clk,
	led_pio_external_connection_export,
	recv_addr_external_connection_export,
	recv_data_external_connection_export,
	send_addr_external_connection_export,
	send_data_external_connection_export,
	sseg_0_external_connection_export,
	sseg_1_external_connection_export,
	sseg_2_external_connection_export,
	sseg_3_external_connection_export,
	sseg_4_external_connection_export,
	sseg_5_external_connection_export);	

	input	[1:0]	button_pio_external_connection_export;
	input		clocks_ref_clk_clk;
	input		clocks_ref_reset_reset;
	output		clocks_sdram_clk_clk;
	output	[7:0]	led_pio_external_connection_export;
	input	[7:0]	recv_addr_external_connection_export;
	input	[31:0]	recv_data_external_connection_export;
	output	[7:0]	send_addr_external_connection_export;
	output	[31:0]	send_data_external_connection_export;
	output	[6:0]	sseg_0_external_connection_export;
	output	[6:0]	sseg_1_external_connection_export;
	output	[6:0]	sseg_2_external_connection_export;
	output	[6:0]	sseg_3_external_connection_export;
	output	[6:0]	sseg_4_external_connection_export;
	output	[6:0]	sseg_5_external_connection_export;
endmodule
