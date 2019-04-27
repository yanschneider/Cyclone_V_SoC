
module soc_system_sph (
	clk_clk,
	hps_0_ddr_mem_a,
	hps_0_ddr_mem_ba,
	hps_0_ddr_mem_ck,
	hps_0_ddr_mem_ck_n,
	hps_0_ddr_mem_cke,
	hps_0_ddr_mem_cs_n,
	hps_0_ddr_mem_ras_n,
	hps_0_ddr_mem_cas_n,
	hps_0_ddr_mem_we_n,
	hps_0_ddr_mem_reset_n,
	hps_0_ddr_mem_dq,
	hps_0_ddr_mem_dqs,
	hps_0_ddr_mem_dqs_n,
	hps_0_ddr_mem_odt,
	hps_0_ddr_mem_dm,
	hps_0_ddr_oct_rzqin,
	hps_0_io_hps_io_emac1_inst_TX_CLK,
	hps_0_io_hps_io_emac1_inst_TXD0,
	hps_0_io_hps_io_emac1_inst_TXD1,
	hps_0_io_hps_io_emac1_inst_TXD2,
	hps_0_io_hps_io_emac1_inst_TXD3,
	hps_0_io_hps_io_emac1_inst_RXD0,
	hps_0_io_hps_io_emac1_inst_MDIO,
	hps_0_io_hps_io_emac1_inst_MDC,
	hps_0_io_hps_io_emac1_inst_RX_CTL,
	hps_0_io_hps_io_emac1_inst_TX_CTL,
	hps_0_io_hps_io_emac1_inst_RX_CLK,
	hps_0_io_hps_io_emac1_inst_RXD1,
	hps_0_io_hps_io_emac1_inst_RXD2,
	hps_0_io_hps_io_emac1_inst_RXD3,
	hps_0_io_hps_io_qspi_inst_IO0,
	hps_0_io_hps_io_qspi_inst_IO1,
	hps_0_io_hps_io_qspi_inst_IO2,
	hps_0_io_hps_io_qspi_inst_IO3,
	hps_0_io_hps_io_qspi_inst_SS0,
	hps_0_io_hps_io_qspi_inst_CLK,
	hps_0_io_hps_io_sdio_inst_CMD,
	hps_0_io_hps_io_sdio_inst_D0,
	hps_0_io_hps_io_sdio_inst_D1,
	hps_0_io_hps_io_sdio_inst_CLK,
	hps_0_io_hps_io_sdio_inst_D2,
	hps_0_io_hps_io_sdio_inst_D3,
	hps_0_io_hps_io_usb1_inst_D0,
	hps_0_io_hps_io_usb1_inst_D1,
	hps_0_io_hps_io_usb1_inst_D2,
	hps_0_io_hps_io_usb1_inst_D3,
	hps_0_io_hps_io_usb1_inst_D4,
	hps_0_io_hps_io_usb1_inst_D5,
	hps_0_io_hps_io_usb1_inst_D6,
	hps_0_io_hps_io_usb1_inst_D7,
	hps_0_io_hps_io_usb1_inst_CLK,
	hps_0_io_hps_io_usb1_inst_STP,
	hps_0_io_hps_io_usb1_inst_DIR,
	hps_0_io_hps_io_usb1_inst_NXT,
	hps_0_io_hps_io_uart0_inst_RX,
	hps_0_io_hps_io_uart0_inst_TX,
	hps_0_io_hps_io_gpio_inst_GPIO53,
	hps_0_io_hps_io_gpio_inst_GPIO54,
	led_pio_external_connection_export,
	reset_reset_n,
	sev_seg_pio_external_connection_export,
	add_one_in_data,
	add_one_out_data,
	add_one_call_valid,
	add_one_call_stall,
	add_one_return_valid,
	add_one_return_stall);	

	input		clk_clk;
	output	[14:0]	hps_0_ddr_mem_a;
	output	[2:0]	hps_0_ddr_mem_ba;
	output		hps_0_ddr_mem_ck;
	output		hps_0_ddr_mem_ck_n;
	output		hps_0_ddr_mem_cke;
	output		hps_0_ddr_mem_cs_n;
	output		hps_0_ddr_mem_ras_n;
	output		hps_0_ddr_mem_cas_n;
	output		hps_0_ddr_mem_we_n;
	output		hps_0_ddr_mem_reset_n;
	inout	[31:0]	hps_0_ddr_mem_dq;
	inout	[3:0]	hps_0_ddr_mem_dqs;
	inout	[3:0]	hps_0_ddr_mem_dqs_n;
	output		hps_0_ddr_mem_odt;
	output	[3:0]	hps_0_ddr_mem_dm;
	input		hps_0_ddr_oct_rzqin;
	output		hps_0_io_hps_io_emac1_inst_TX_CLK;
	output		hps_0_io_hps_io_emac1_inst_TXD0;
	output		hps_0_io_hps_io_emac1_inst_TXD1;
	output		hps_0_io_hps_io_emac1_inst_TXD2;
	output		hps_0_io_hps_io_emac1_inst_TXD3;
	input		hps_0_io_hps_io_emac1_inst_RXD0;
	inout		hps_0_io_hps_io_emac1_inst_MDIO;
	output		hps_0_io_hps_io_emac1_inst_MDC;
	input		hps_0_io_hps_io_emac1_inst_RX_CTL;
	output		hps_0_io_hps_io_emac1_inst_TX_CTL;
	input		hps_0_io_hps_io_emac1_inst_RX_CLK;
	input		hps_0_io_hps_io_emac1_inst_RXD1;
	input		hps_0_io_hps_io_emac1_inst_RXD2;
	input		hps_0_io_hps_io_emac1_inst_RXD3;
	inout		hps_0_io_hps_io_qspi_inst_IO0;
	inout		hps_0_io_hps_io_qspi_inst_IO1;
	inout		hps_0_io_hps_io_qspi_inst_IO2;
	inout		hps_0_io_hps_io_qspi_inst_IO3;
	output		hps_0_io_hps_io_qspi_inst_SS0;
	output		hps_0_io_hps_io_qspi_inst_CLK;
	inout		hps_0_io_hps_io_sdio_inst_CMD;
	inout		hps_0_io_hps_io_sdio_inst_D0;
	inout		hps_0_io_hps_io_sdio_inst_D1;
	output		hps_0_io_hps_io_sdio_inst_CLK;
	inout		hps_0_io_hps_io_sdio_inst_D2;
	inout		hps_0_io_hps_io_sdio_inst_D3;
	inout		hps_0_io_hps_io_usb1_inst_D0;
	inout		hps_0_io_hps_io_usb1_inst_D1;
	inout		hps_0_io_hps_io_usb1_inst_D2;
	inout		hps_0_io_hps_io_usb1_inst_D3;
	inout		hps_0_io_hps_io_usb1_inst_D4;
	inout		hps_0_io_hps_io_usb1_inst_D5;
	inout		hps_0_io_hps_io_usb1_inst_D6;
	inout		hps_0_io_hps_io_usb1_inst_D7;
	input		hps_0_io_hps_io_usb1_inst_CLK;
	output		hps_0_io_hps_io_usb1_inst_STP;
	input		hps_0_io_hps_io_usb1_inst_DIR;
	input		hps_0_io_hps_io_usb1_inst_NXT;
	input		hps_0_io_hps_io_uart0_inst_RX;
	output		hps_0_io_hps_io_uart0_inst_TX;
	inout		hps_0_io_hps_io_gpio_inst_GPIO53;
	inout		hps_0_io_hps_io_gpio_inst_GPIO54;
	output	[9:0]	led_pio_external_connection_export;
	input		reset_reset_n;
	output	[23:0]	sev_seg_pio_external_connection_export;
	input	[63:0]	add_one_in_data;
	output	[63:0]	add_one_out_data;
	input		add_one_call_valid;
	output		add_one_call_stall;
	output		add_one_return_valid;
	input		add_one_return_stall;
endmodule
