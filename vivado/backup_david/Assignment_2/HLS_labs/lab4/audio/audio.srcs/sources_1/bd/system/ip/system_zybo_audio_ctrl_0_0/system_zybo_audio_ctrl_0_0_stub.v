// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Sep 27 10:08:34 2018
// Host        : DESKTOP-MBD2KSK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Xilinx/Assignment_2/HLS_labs/lab4/audio/audio.srcs/sources_1/bd/system/ip/system_zybo_audio_ctrl_0_0/system_zybo_audio_ctrl_0_0_stub.v
// Design      : system_zybo_audio_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "i2s_ctrl,Vivado 2017.2" *)
module system_zybo_audio_ctrl_0_0(BCLK, PBLRCLK, RECLRCLK, RECDAT, PBDATA, 
  S_AXI_ACLK, S_AXI_ARESETN, S_AXI_AWADDR, S_AXI_AWVALID, S_AXI_WDATA, S_AXI_WSTRB, 
  S_AXI_WVALID, S_AXI_BREADY, S_AXI_ARADDR, S_AXI_ARVALID, S_AXI_RREADY, S_AXI_ARREADY, 
  S_AXI_RDATA, S_AXI_RRESP, S_AXI_RVALID, S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, 
  S_AXI_AWREADY)
/* synthesis syn_black_box black_box_pad_pin="BCLK,PBLRCLK,RECLRCLK,RECDAT,PBDATA,S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[31:0],S_AXI_AWVALID,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_BREADY,S_AXI_ARADDR[31:0],S_AXI_ARVALID,S_AXI_RREADY,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_AWREADY" */;
  output BCLK;
  output PBLRCLK;
  output RECLRCLK;
  input RECDAT;
  output PBDATA;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [31:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input [31:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  output S_AXI_AWREADY;
endmodule
