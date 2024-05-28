	zoran_nios u0 (
		.button_pio_external_connection_export (<connected-to-button_pio_external_connection_export>), // button_pio_external_connection.export
		.clocks_ref_clk_clk                    (<connected-to-clocks_ref_clk_clk>),                    //                 clocks_ref_clk.clk
		.clocks_ref_reset_reset                (<connected-to-clocks_ref_reset_reset>),                //               clocks_ref_reset.reset
		.clocks_sdram_clk_clk                  (<connected-to-clocks_sdram_clk_clk>),                  //               clocks_sdram_clk.clk
		.led_pio_external_connection_export    (<connected-to-led_pio_external_connection_export>),    //    led_pio_external_connection.export
		.sdram_wire_addr                       (<connected-to-sdram_wire_addr>),                       //                     sdram_wire.addr
		.sdram_wire_ba                         (<connected-to-sdram_wire_ba>),                         //                               .ba
		.sdram_wire_cas_n                      (<connected-to-sdram_wire_cas_n>),                      //                               .cas_n
		.sdram_wire_cke                        (<connected-to-sdram_wire_cke>),                        //                               .cke
		.sdram_wire_cs_n                       (<connected-to-sdram_wire_cs_n>),                       //                               .cs_n
		.sdram_wire_dq                         (<connected-to-sdram_wire_dq>),                         //                               .dq
		.sdram_wire_dqm                        (<connected-to-sdram_wire_dqm>),                        //                               .dqm
		.sdram_wire_ras_n                      (<connected-to-sdram_wire_ras_n>),                      //                               .ras_n
		.sdram_wire_we_n                       (<connected-to-sdram_wire_we_n>),                       //                               .we_n
		.sseg_5_external_connection_export     (<connected-to-sseg_5_external_connection_export>),     //     sseg_5_external_connection.export
		.sseg_4_external_connection_export     (<connected-to-sseg_4_external_connection_export>),     //     sseg_4_external_connection.export
		.sseg_3_external_connection_export     (<connected-to-sseg_3_external_connection_export>),     //     sseg_3_external_connection.export
		.sseg_2_external_connection_export     (<connected-to-sseg_2_external_connection_export>),     //     sseg_2_external_connection.export
		.sseg_1_external_connection_export     (<connected-to-sseg_1_external_connection_export>),     //     sseg_1_external_connection.export
		.sseg_0_external_connection_export     (<connected-to-sseg_0_external_connection_export>),     //     sseg_0_external_connection.export
		.send_data_external_connection_export  (<connected-to-send_data_external_connection_export>),  //  send_data_external_connection.export
		.send_addr_external_connection_export  (<connected-to-send_addr_external_connection_export>),  //  send_addr_external_connection.export
		.recv_data_external_connection_export  (<connected-to-recv_data_external_connection_export>),  //  recv_data_external_connection.export
		.recv_addr_external_connection_export  (<connected-to-recv_addr_external_connection_export>)   //  recv_addr_external_connection.export
	);

