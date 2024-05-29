
module zoran_nios (
	ack_external_connection_export,
	biglari_read_0_conduit_end_cock,
	button_pio_external_connection_export,
	clocks_ref_clk_clk,
	clocks_ref_reset_reset,
	clocks_sdram_clk_clk,
	led_pio_external_connection_export,
	send_addr_external_connection_export,
	send_data_external_connection_export,
	biglari_sseg_0_conduit_end_zoran0,
	biglari_sseg_0_conduit_end_zoran1,
	biglari_sseg_0_conduit_end_zoran2,
	biglari_sseg_0_conduit_end_zoran3,
	biglari_sseg_0_conduit_end_zoran4,
	biglari_sseg_0_conduit_end_zoran5);	

	output		ack_external_connection_export;
	input	[31:0]	biglari_read_0_conduit_end_cock;
	input	[1:0]	button_pio_external_connection_export;
	input		clocks_ref_clk_clk;
	input		clocks_ref_reset_reset;
	output		clocks_sdram_clk_clk;
	output	[7:0]	led_pio_external_connection_export;
	output	[7:0]	send_addr_external_connection_export;
	output	[31:0]	send_data_external_connection_export;
	output	[6:0]	biglari_sseg_0_conduit_end_zoran0;
	output	[6:0]	biglari_sseg_0_conduit_end_zoran1;
	output	[6:0]	biglari_sseg_0_conduit_end_zoran2;
	output	[6:0]	biglari_sseg_0_conduit_end_zoran3;
	output	[6:0]	biglari_sseg_0_conduit_end_zoran4;
	output	[6:0]	biglari_sseg_0_conduit_end_zoran5;
endmodule
