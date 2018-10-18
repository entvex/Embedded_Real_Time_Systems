// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Oct  4 15:29:01 2018
// Host        : DESKTOP-MBD2KSK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_iosc_0_0 -prefix
//               design_1_iosc_0_0_ design_1_iosc_0_1_stub.v
// Design      : design_1_iosc_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "iosc_top,Vivado 2017.2" *)
module design_1_iosc_0_0(inSwitch, outLeds, s_axi_slv0_AWADDR, 
  s_axi_slv0_AWVALID, s_axi_slv0_AWREADY, s_axi_slv0_WDATA, s_axi_slv0_WSTRB, 
  s_axi_slv0_WVALID, s_axi_slv0_WREADY, s_axi_slv0_BRESP, s_axi_slv0_BVALID, 
  s_axi_slv0_BREADY, s_axi_slv0_ARADDR, s_axi_slv0_ARVALID, s_axi_slv0_ARREADY, 
  s_axi_slv0_RDATA, s_axi_slv0_RRESP, s_axi_slv0_RVALID, s_axi_slv0_RREADY, aclk, aresetn)
/* synthesis syn_black_box black_box_pad_pin="inSwitch[3:0],outLeds[3:0],s_axi_slv0_AWADDR[4:0],s_axi_slv0_AWVALID,s_axi_slv0_AWREADY,s_axi_slv0_WDATA[31:0],s_axi_slv0_WSTRB[3:0],s_axi_slv0_WVALID,s_axi_slv0_WREADY,s_axi_slv0_BRESP[1:0],s_axi_slv0_BVALID,s_axi_slv0_BREADY,s_axi_slv0_ARADDR[4:0],s_axi_slv0_ARVALID,s_axi_slv0_ARREADY,s_axi_slv0_RDATA[31:0],s_axi_slv0_RRESP[1:0],s_axi_slv0_RVALID,s_axi_slv0_RREADY,aclk,aresetn" */;
  input [3:0]inSwitch;
  output [3:0]outLeds;
  input [4:0]s_axi_slv0_AWADDR;
  input s_axi_slv0_AWVALID;
  output s_axi_slv0_AWREADY;
  input [31:0]s_axi_slv0_WDATA;
  input [3:0]s_axi_slv0_WSTRB;
  input s_axi_slv0_WVALID;
  output s_axi_slv0_WREADY;
  output [1:0]s_axi_slv0_BRESP;
  output s_axi_slv0_BVALID;
  input s_axi_slv0_BREADY;
  input [4:0]s_axi_slv0_ARADDR;
  input s_axi_slv0_ARVALID;
  output s_axi_slv0_ARREADY;
  output [31:0]s_axi_slv0_RDATA;
  output [1:0]s_axi_slv0_RRESP;
  output s_axi_slv0_RVALID;
  input s_axi_slv0_RREADY;
  input aclk;
  input aresetn;
endmodule
