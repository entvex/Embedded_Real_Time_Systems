#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_eqio_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_eqio_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_eqio_AWADDR", 7, hls_in, -1, "", "", 1),
	Port_Property("s_axi_eqio_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_eqio_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_eqio_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_eqio_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_eqio_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_eqio_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_eqio_ARADDR", 7, hls_in, -1, "", "", 1),
	Port_Property("s_axi_eqio_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_eqio_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_eqio_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_eqio_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_eqio_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_eqio_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_eqio_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "eq";
