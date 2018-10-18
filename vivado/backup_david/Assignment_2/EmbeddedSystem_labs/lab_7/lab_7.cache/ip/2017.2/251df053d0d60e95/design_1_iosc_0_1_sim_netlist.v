// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Oct  4 15:29:01 2018
// Host        : DESKTOP-MBD2KSK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_iosc_0_1_sim_netlist.v
// Design      : design_1_iosc_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_iosc_0_1,iosc_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "iosc_top,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (inSwitch,
    outLeds,
    s_axi_slv0_AWADDR,
    s_axi_slv0_AWVALID,
    s_axi_slv0_AWREADY,
    s_axi_slv0_WDATA,
    s_axi_slv0_WSTRB,
    s_axi_slv0_WVALID,
    s_axi_slv0_WREADY,
    s_axi_slv0_BRESP,
    s_axi_slv0_BVALID,
    s_axi_slv0_BREADY,
    s_axi_slv0_ARADDR,
    s_axi_slv0_ARVALID,
    s_axi_slv0_ARREADY,
    s_axi_slv0_RDATA,
    s_axi_slv0_RRESP,
    s_axi_slv0_RVALID,
    s_axi_slv0_RREADY,
    aclk,
    aresetn);
  input [3:0]inSwitch;
  output [3:0]outLeds;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 AWADDR" *) input [4:0]s_axi_slv0_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 AWVALID" *) input s_axi_slv0_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 AWREADY" *) output s_axi_slv0_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 WDATA" *) input [31:0]s_axi_slv0_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 WSTRB" *) input [3:0]s_axi_slv0_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 WVALID" *) input s_axi_slv0_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 WREADY" *) output s_axi_slv0_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 BRESP" *) output [1:0]s_axi_slv0_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 BVALID" *) output s_axi_slv0_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 BREADY" *) input s_axi_slv0_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 ARADDR" *) input [4:0]s_axi_slv0_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 ARVALID" *) input s_axi_slv0_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 ARREADY" *) output s_axi_slv0_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 RDATA" *) output [31:0]s_axi_slv0_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 RRESP" *) output [1:0]s_axi_slv0_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 RVALID" *) output s_axi_slv0_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_SLV0 RREADY" *) input s_axi_slv0_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) input aresetn;

  wire aclk;
  wire aresetn;
  wire [3:0]inSwitch;
  wire [3:0]outLeds;
  wire [4:0]s_axi_slv0_ARADDR;
  wire s_axi_slv0_ARREADY;
  wire s_axi_slv0_ARVALID;
  wire [4:0]s_axi_slv0_AWADDR;
  wire s_axi_slv0_AWREADY;
  wire s_axi_slv0_AWVALID;
  wire s_axi_slv0_BREADY;
  wire [1:0]s_axi_slv0_BRESP;
  wire s_axi_slv0_BVALID;
  wire [31:0]s_axi_slv0_RDATA;
  wire s_axi_slv0_RREADY;
  wire [1:0]s_axi_slv0_RRESP;
  wire s_axi_slv0_RVALID;
  wire [31:0]s_axi_slv0_WDATA;
  wire s_axi_slv0_WREADY;
  wire [3:0]s_axi_slv0_WSTRB;
  wire s_axi_slv0_WVALID;

  (* C_S_AXI_SLV0_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_SLV0_DATA_WIDTH = "32" *) 
  (* RESET_ACTIVE_LOW = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .inSwitch(inSwitch),
        .outLeds(outLeds),
        .s_axi_slv0_ARADDR(s_axi_slv0_ARADDR),
        .s_axi_slv0_ARREADY(s_axi_slv0_ARREADY),
        .s_axi_slv0_ARVALID(s_axi_slv0_ARVALID),
        .s_axi_slv0_AWADDR(s_axi_slv0_AWADDR),
        .s_axi_slv0_AWREADY(s_axi_slv0_AWREADY),
        .s_axi_slv0_AWVALID(s_axi_slv0_AWVALID),
        .s_axi_slv0_BREADY(s_axi_slv0_BREADY),
        .s_axi_slv0_BRESP(s_axi_slv0_BRESP),
        .s_axi_slv0_BVALID(s_axi_slv0_BVALID),
        .s_axi_slv0_RDATA(s_axi_slv0_RDATA),
        .s_axi_slv0_RREADY(s_axi_slv0_RREADY),
        .s_axi_slv0_RRESP(s_axi_slv0_RRESP),
        .s_axi_slv0_RVALID(s_axi_slv0_RVALID),
        .s_axi_slv0_WDATA(s_axi_slv0_WDATA),
        .s_axi_slv0_WREADY(s_axi_slv0_WREADY),
        .s_axi_slv0_WSTRB(s_axi_slv0_WSTRB),
        .s_axi_slv0_WVALID(s_axi_slv0_WVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc
   (SR,
    \ap_CS_fsm_reg[2] ,
    outLeds,
    aclk,
    \_ctrl_reg[2] ,
    inSwitch,
    Q,
    \ap_CS_fsm_reg[2]_0 ,
    p_2_in,
    aresetn);
  output [0:0]SR;
  output [0:0]\ap_CS_fsm_reg[2] ;
  output [3:0]outLeds;
  input aclk;
  input \_ctrl_reg[2] ;
  input [3:0]inSwitch;
  input [3:0]Q;
  input \ap_CS_fsm_reg[2]_0 ;
  input p_2_in;
  input aresetn;

  wire [3:0]Q;
  wire [0:0]SR;
  wire \_ctrl_reg[2] ;
  wire aclk;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire aresetn;
  wire grp_iosc_controlOutLeds_fu_92_n_0;
  wire grp_iosc_controlOutLeds_fu_92_n_2;
  wire grp_iosc_controlOutLeds_fu_92_n_3;
  wire grp_iosc_controlOutLeds_fu_92_n_4;
  wire grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld;
  wire grp_iosc_pulse_fu_74_n_0;
  wire [3:0]inSwitch;
  wire internalPulse;
  wire [3:0]outLeds;
  wire \outLeds[3]_i_1_n_0 ;
  wire p_2_in;
  wire tmp_fu_148_p2__3;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_controlOutLeds grp_iosc_controlOutLeds_fu_92
       (.Q(Q),
        .SR(SR),
        .\_ctrl_reg[2] (\_ctrl_reg[2] ),
        .aclk(aclk),
        .\ap_CS_fsm_reg[2]_0 (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[2]_1 (\ap_CS_fsm_reg[2]_0 ),
        .aresetn(aresetn),
        .grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
        .inSwitch(inSwitch),
        .internalPulse(internalPulse),
        .\outLeds_reg[0] (grp_iosc_controlOutLeds_fu_92_n_0),
        .\outLeds_reg[1] (grp_iosc_controlOutLeds_fu_92_n_2),
        .\outLeds_reg[2] (grp_iosc_controlOutLeds_fu_92_n_3),
        .\outLeds_reg[3] (grp_iosc_controlOutLeds_fu_92_n_4),
        .p_2_in(p_2_in),
        .tmp_fu_148_p2__3(tmp_fu_148_p2__3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_pulse grp_iosc_pulse_fu_74
       (.SR(SR),
        .aclk(aclk),
        .internalPulse(internalPulse),
        .\internalPulse_reg[0] (grp_iosc_pulse_fu_74_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \internalPulse_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(grp_iosc_pulse_fu_74_n_0),
        .Q(internalPulse),
        .R(SR));
  LUT4 #(
    .INIT(16'hC800)) 
    \outLeds[3]_i_1 
       (.I0(\ap_CS_fsm_reg[2]_0 ),
        .I1(\_ctrl_reg[2] ),
        .I2(\ap_CS_fsm_reg[2] ),
        .I3(tmp_fu_148_p2__3),
        .O(\outLeds[3]_i_1_n_0 ));
  FDRE \outLeds_reg[0] 
       (.C(aclk),
        .CE(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
        .D(grp_iosc_controlOutLeds_fu_92_n_0),
        .Q(outLeds[0]),
        .R(\outLeds[3]_i_1_n_0 ));
  FDRE \outLeds_reg[1] 
       (.C(aclk),
        .CE(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
        .D(grp_iosc_controlOutLeds_fu_92_n_2),
        .Q(outLeds[1]),
        .R(\outLeds[3]_i_1_n_0 ));
  FDRE \outLeds_reg[2] 
       (.C(aclk),
        .CE(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
        .D(grp_iosc_controlOutLeds_fu_92_n_3),
        .Q(outLeds[2]),
        .R(\outLeds[3]_i_1_n_0 ));
  FDRE \outLeds_reg[3] 
       (.C(aclk),
        .CE(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
        .D(grp_iosc_controlOutLeds_fu_92_n_4),
        .Q(outLeds[3]),
        .R(\outLeds[3]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_controlOutLeds
   (\outLeds_reg[0] ,
    tmp_fu_148_p2__3,
    \outLeds_reg[1] ,
    \outLeds_reg[2] ,
    \outLeds_reg[3] ,
    grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld,
    \ap_CS_fsm_reg[2]_0 ,
    SR,
    aclk,
    internalPulse,
    \_ctrl_reg[2] ,
    inSwitch,
    Q,
    \ap_CS_fsm_reg[2]_1 ,
    p_2_in,
    aresetn);
  output \outLeds_reg[0] ;
  output tmp_fu_148_p2__3;
  output \outLeds_reg[1] ;
  output \outLeds_reg[2] ;
  output \outLeds_reg[3] ;
  output grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld;
  output [0:0]\ap_CS_fsm_reg[2]_0 ;
  output [0:0]SR;
  input aclk;
  input internalPulse;
  input \_ctrl_reg[2] ;
  input [3:0]inSwitch;
  input [3:0]Q;
  input \ap_CS_fsm_reg[2]_1 ;
  input p_2_in;
  input aresetn;

  wire [3:0]Q;
  wire [0:0]SR;
  wire \_ctrl_reg[2] ;
  wire aclk;
  wire [0:0]\ap_CS_fsm_reg[2]_0 ;
  wire \ap_CS_fsm_reg[2]_1 ;
  wire ap_CS_fsm_state2;
  wire [2:1]ap_NS_fsm;
  wire aresetn;
  wire grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld;
  wire [3:0]inSwitch;
  wire internalPulse;
  wire \outLeds_reg[0] ;
  wire \outLeds_reg[1] ;
  wire \outLeds_reg[2] ;
  wire \outLeds_reg[3] ;
  wire p_2_in;
  wire tmp_fu_148_p2__3;
  wire v_assign_fu_106;
  wire v_assign_fu_10601_in;
  wire \v_assign_fu_106[0]_i_5_n_0 ;
  wire \v_assign_fu_106[0]_i_6_n_0 ;
  wire \v_assign_fu_106[0]_i_7_n_0 ;
  wire \v_assign_fu_106[0]_i_8_n_0 ;
  wire [3:0]v_assign_fu_106_reg;
  wire \v_assign_fu_106_reg[0]_i_3_n_1 ;
  wire \v_assign_fu_106_reg[0]_i_3_n_2 ;
  wire \v_assign_fu_106_reg[0]_i_3_n_3 ;
  wire \v_assign_fu_106_reg[0]_i_3_n_4 ;
  wire \v_assign_fu_106_reg[0]_i_3_n_5 ;
  wire \v_assign_fu_106_reg[0]_i_3_n_6 ;
  wire \v_assign_fu_106_reg[0]_i_3_n_7 ;
  wire [3:3]\NLW_v_assign_fu_106_reg[0]_i_3_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(\ap_CS_fsm_reg[2]_0 ),
        .I1(ap_CS_fsm_state2),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(ap_CS_fsm_state2),
        .I1(\ap_CS_fsm_reg[2]_0 ),
        .O(ap_NS_fsm[2]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(\ap_CS_fsm_reg[2]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'hEFFF200020002000)) 
    \outLeds[0]_i_1 
       (.I0(v_assign_fu_106_reg[0]),
        .I1(tmp_fu_148_p2__3),
        .I2(internalPulse),
        .I3(\_ctrl_reg[2] ),
        .I4(inSwitch[0]),
        .I5(Q[0]),
        .O(\outLeds_reg[0] ));
  LUT6 #(
    .INIT(64'hEFFF200020002000)) 
    \outLeds[1]_i_1 
       (.I0(v_assign_fu_106_reg[1]),
        .I1(tmp_fu_148_p2__3),
        .I2(internalPulse),
        .I3(\_ctrl_reg[2] ),
        .I4(inSwitch[1]),
        .I5(Q[1]),
        .O(\outLeds_reg[1] ));
  LUT6 #(
    .INIT(64'hEFFF200020002000)) 
    \outLeds[2]_i_1 
       (.I0(v_assign_fu_106_reg[2]),
        .I1(tmp_fu_148_p2__3),
        .I2(internalPulse),
        .I3(\_ctrl_reg[2] ),
        .I4(inSwitch[2]),
        .I5(Q[2]),
        .O(\outLeds_reg[2] ));
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    \outLeds[3]_i_2 
       (.I0(tmp_fu_148_p2__3),
        .I1(internalPulse),
        .I2(\ap_CS_fsm_reg[2]_0 ),
        .I3(\_ctrl_reg[2] ),
        .I4(\ap_CS_fsm_reg[2]_1 ),
        .O(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld));
  LUT6 #(
    .INIT(64'hEFFF200020002000)) 
    \outLeds[3]_i_3 
       (.I0(v_assign_fu_106_reg[3]),
        .I1(tmp_fu_148_p2__3),
        .I2(internalPulse),
        .I3(\_ctrl_reg[2] ),
        .I4(inSwitch[3]),
        .I5(Q[3]),
        .O(\outLeds_reg[3] ));
  LUT4 #(
    .INIT(16'h0010)) 
    \outLeds[3]_i_6 
       (.I0(inSwitch[0]),
        .I1(inSwitch[2]),
        .I2(inSwitch[3]),
        .I3(inSwitch[1]),
        .O(tmp_fu_148_p2__3));
  LUT1 #(
    .INIT(2'h1)) 
    \rstate[0]_i_1 
       (.I0(aresetn),
        .O(SR));
  LUT5 #(
    .INIT(32'hFF7FC000)) 
    \v_assign_fu_106[0]_i_1 
       (.I0(internalPulse),
        .I1(\ap_CS_fsm_reg[2]_0 ),
        .I2(\_ctrl_reg[2] ),
        .I3(tmp_fu_148_p2__3),
        .I4(ap_CS_fsm_state2),
        .O(v_assign_fu_106));
  LUT6 #(
    .INIT(64'hFFEF000000000000)) 
    \v_assign_fu_106[0]_i_2 
       (.I0(inSwitch[0]),
        .I1(inSwitch[2]),
        .I2(inSwitch[3]),
        .I3(inSwitch[1]),
        .I4(internalPulse),
        .I5(p_2_in),
        .O(v_assign_fu_10601_in));
  LUT1 #(
    .INIT(2'h2)) 
    \v_assign_fu_106[0]_i_5 
       (.I0(v_assign_fu_106_reg[3]),
        .O(\v_assign_fu_106[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_assign_fu_106[0]_i_6 
       (.I0(v_assign_fu_106_reg[2]),
        .O(\v_assign_fu_106[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_assign_fu_106[0]_i_7 
       (.I0(v_assign_fu_106_reg[1]),
        .O(\v_assign_fu_106[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v_assign_fu_106[0]_i_8 
       (.I0(v_assign_fu_106_reg[0]),
        .O(\v_assign_fu_106[0]_i_8_n_0 ));
  FDRE \v_assign_fu_106_reg[0] 
       (.C(aclk),
        .CE(v_assign_fu_10601_in),
        .D(\v_assign_fu_106_reg[0]_i_3_n_7 ),
        .Q(v_assign_fu_106_reg[0]),
        .R(v_assign_fu_106));
  CARRY4 \v_assign_fu_106_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\NLW_v_assign_fu_106_reg[0]_i_3_CO_UNCONNECTED [3],\v_assign_fu_106_reg[0]_i_3_n_1 ,\v_assign_fu_106_reg[0]_i_3_n_2 ,\v_assign_fu_106_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\v_assign_fu_106_reg[0]_i_3_n_4 ,\v_assign_fu_106_reg[0]_i_3_n_5 ,\v_assign_fu_106_reg[0]_i_3_n_6 ,\v_assign_fu_106_reg[0]_i_3_n_7 }),
        .S({\v_assign_fu_106[0]_i_5_n_0 ,\v_assign_fu_106[0]_i_6_n_0 ,\v_assign_fu_106[0]_i_7_n_0 ,\v_assign_fu_106[0]_i_8_n_0 }));
  FDRE \v_assign_fu_106_reg[1] 
       (.C(aclk),
        .CE(v_assign_fu_10601_in),
        .D(\v_assign_fu_106_reg[0]_i_3_n_6 ),
        .Q(v_assign_fu_106_reg[1]),
        .R(v_assign_fu_106));
  FDRE \v_assign_fu_106_reg[2] 
       (.C(aclk),
        .CE(v_assign_fu_10601_in),
        .D(\v_assign_fu_106_reg[0]_i_3_n_5 ),
        .Q(v_assign_fu_106_reg[2]),
        .R(v_assign_fu_106));
  FDRE \v_assign_fu_106_reg[3] 
       (.C(aclk),
        .CE(v_assign_fu_10601_in),
        .D(\v_assign_fu_106_reg[0]_i_3_n_4 ),
        .Q(v_assign_fu_106_reg[3]),
        .R(v_assign_fu_106));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_pulse
   (\internalPulse_reg[0] ,
    internalPulse,
    SR,
    aclk);
  output \internalPulse_reg[0] ;
  input internalPulse;
  input [0:0]SR;
  input aclk;

  wire [0:0]SR;
  wire aclk;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire [2:1]ap_NS_fsm;
  wire clockCounter_V_1_fu_80;
  wire \clockCounter_V_1_fu_80[9]_i_2_n_0 ;
  wire \clockCounter_V_1_fu_80[9]_i_4_n_0 ;
  wire \clockCounter_V_1_fu_80[9]_i_5_n_0 ;
  wire \clockCounter_V_1_fu_80[9]_i_6_n_0 ;
  wire [9:0]clockCounter_V_1_fu_80_reg__0;
  wire [9:0]clockCounter_V_fu_107_p2;
  wire internalPulse;
  wire \internalPulse_reg[0] ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(ap_CS_fsm_state2),
        .O(ap_NS_fsm[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(ap_CS_fsm_state3),
        .O(ap_NS_fsm[2]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \clockCounter_V_1_fu_80[0]_i_1 
       (.I0(clockCounter_V_1_fu_80_reg__0[0]),
        .O(clockCounter_V_fu_107_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clockCounter_V_1_fu_80[1]_i_1 
       (.I0(clockCounter_V_1_fu_80_reg__0[0]),
        .I1(clockCounter_V_1_fu_80_reg__0[1]),
        .O(clockCounter_V_fu_107_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clockCounter_V_1_fu_80[2]_i_1 
       (.I0(clockCounter_V_1_fu_80_reg__0[0]),
        .I1(clockCounter_V_1_fu_80_reg__0[1]),
        .I2(clockCounter_V_1_fu_80_reg__0[2]),
        .O(clockCounter_V_fu_107_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clockCounter_V_1_fu_80[3]_i_1 
       (.I0(clockCounter_V_1_fu_80_reg__0[1]),
        .I1(clockCounter_V_1_fu_80_reg__0[0]),
        .I2(clockCounter_V_1_fu_80_reg__0[2]),
        .I3(clockCounter_V_1_fu_80_reg__0[3]),
        .O(clockCounter_V_fu_107_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clockCounter_V_1_fu_80[4]_i_1 
       (.I0(clockCounter_V_1_fu_80_reg__0[2]),
        .I1(clockCounter_V_1_fu_80_reg__0[0]),
        .I2(clockCounter_V_1_fu_80_reg__0[1]),
        .I3(clockCounter_V_1_fu_80_reg__0[3]),
        .I4(clockCounter_V_1_fu_80_reg__0[4]),
        .O(clockCounter_V_fu_107_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clockCounter_V_1_fu_80[5]_i_1 
       (.I0(clockCounter_V_1_fu_80_reg__0[3]),
        .I1(clockCounter_V_1_fu_80_reg__0[1]),
        .I2(clockCounter_V_1_fu_80_reg__0[0]),
        .I3(clockCounter_V_1_fu_80_reg__0[2]),
        .I4(clockCounter_V_1_fu_80_reg__0[4]),
        .I5(clockCounter_V_1_fu_80_reg__0[5]),
        .O(clockCounter_V_fu_107_p2[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \clockCounter_V_1_fu_80[6]_i_1 
       (.I0(\clockCounter_V_1_fu_80[9]_i_6_n_0 ),
        .I1(clockCounter_V_1_fu_80_reg__0[6]),
        .O(clockCounter_V_fu_107_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clockCounter_V_1_fu_80[7]_i_1 
       (.I0(\clockCounter_V_1_fu_80[9]_i_6_n_0 ),
        .I1(clockCounter_V_1_fu_80_reg__0[6]),
        .I2(clockCounter_V_1_fu_80_reg__0[7]),
        .O(clockCounter_V_fu_107_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clockCounter_V_1_fu_80[8]_i_1 
       (.I0(clockCounter_V_1_fu_80_reg__0[6]),
        .I1(\clockCounter_V_1_fu_80[9]_i_6_n_0 ),
        .I2(clockCounter_V_1_fu_80_reg__0[7]),
        .I3(clockCounter_V_1_fu_80_reg__0[8]),
        .O(clockCounter_V_fu_107_p2[8]));
  LUT4 #(
    .INIT(16'h7520)) 
    \clockCounter_V_1_fu_80[9]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(\clockCounter_V_1_fu_80[9]_i_4_n_0 ),
        .I2(\clockCounter_V_1_fu_80[9]_i_5_n_0 ),
        .I3(ap_CS_fsm_state2),
        .O(clockCounter_V_1_fu_80));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \clockCounter_V_1_fu_80[9]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(clockCounter_V_1_fu_80_reg__0[6]),
        .I2(clockCounter_V_1_fu_80_reg__0[5]),
        .I3(clockCounter_V_1_fu_80_reg__0[9]),
        .I4(clockCounter_V_1_fu_80_reg__0[7]),
        .I5(\clockCounter_V_1_fu_80[9]_i_5_n_0 ),
        .O(\clockCounter_V_1_fu_80[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clockCounter_V_1_fu_80[9]_i_3 
       (.I0(clockCounter_V_1_fu_80_reg__0[7]),
        .I1(\clockCounter_V_1_fu_80[9]_i_6_n_0 ),
        .I2(clockCounter_V_1_fu_80_reg__0[6]),
        .I3(clockCounter_V_1_fu_80_reg__0[8]),
        .I4(clockCounter_V_1_fu_80_reg__0[9]),
        .O(clockCounter_V_fu_107_p2[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clockCounter_V_1_fu_80[9]_i_4 
       (.I0(clockCounter_V_1_fu_80_reg__0[6]),
        .I1(clockCounter_V_1_fu_80_reg__0[5]),
        .I2(clockCounter_V_1_fu_80_reg__0[9]),
        .I3(clockCounter_V_1_fu_80_reg__0[7]),
        .O(\clockCounter_V_1_fu_80[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFF0000000000)) 
    \clockCounter_V_1_fu_80[9]_i_5 
       (.I0(clockCounter_V_1_fu_80_reg__0[2]),
        .I1(clockCounter_V_1_fu_80_reg__0[0]),
        .I2(clockCounter_V_1_fu_80_reg__0[1]),
        .I3(clockCounter_V_1_fu_80_reg__0[4]),
        .I4(clockCounter_V_1_fu_80_reg__0[3]),
        .I5(clockCounter_V_1_fu_80_reg__0[8]),
        .O(\clockCounter_V_1_fu_80[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clockCounter_V_1_fu_80[9]_i_6 
       (.I0(clockCounter_V_1_fu_80_reg__0[5]),
        .I1(clockCounter_V_1_fu_80_reg__0[3]),
        .I2(clockCounter_V_1_fu_80_reg__0[1]),
        .I3(clockCounter_V_1_fu_80_reg__0[0]),
        .I4(clockCounter_V_1_fu_80_reg__0[2]),
        .I5(clockCounter_V_1_fu_80_reg__0[4]),
        .O(\clockCounter_V_1_fu_80[9]_i_6_n_0 ));
  FDRE \clockCounter_V_1_fu_80_reg[0] 
       (.C(aclk),
        .CE(\clockCounter_V_1_fu_80[9]_i_2_n_0 ),
        .D(clockCounter_V_fu_107_p2[0]),
        .Q(clockCounter_V_1_fu_80_reg__0[0]),
        .R(clockCounter_V_1_fu_80));
  FDRE \clockCounter_V_1_fu_80_reg[1] 
       (.C(aclk),
        .CE(\clockCounter_V_1_fu_80[9]_i_2_n_0 ),
        .D(clockCounter_V_fu_107_p2[1]),
        .Q(clockCounter_V_1_fu_80_reg__0[1]),
        .R(clockCounter_V_1_fu_80));
  FDRE \clockCounter_V_1_fu_80_reg[2] 
       (.C(aclk),
        .CE(\clockCounter_V_1_fu_80[9]_i_2_n_0 ),
        .D(clockCounter_V_fu_107_p2[2]),
        .Q(clockCounter_V_1_fu_80_reg__0[2]),
        .R(clockCounter_V_1_fu_80));
  FDRE \clockCounter_V_1_fu_80_reg[3] 
       (.C(aclk),
        .CE(\clockCounter_V_1_fu_80[9]_i_2_n_0 ),
        .D(clockCounter_V_fu_107_p2[3]),
        .Q(clockCounter_V_1_fu_80_reg__0[3]),
        .R(clockCounter_V_1_fu_80));
  FDRE \clockCounter_V_1_fu_80_reg[4] 
       (.C(aclk),
        .CE(\clockCounter_V_1_fu_80[9]_i_2_n_0 ),
        .D(clockCounter_V_fu_107_p2[4]),
        .Q(clockCounter_V_1_fu_80_reg__0[4]),
        .R(clockCounter_V_1_fu_80));
  FDRE \clockCounter_V_1_fu_80_reg[5] 
       (.C(aclk),
        .CE(\clockCounter_V_1_fu_80[9]_i_2_n_0 ),
        .D(clockCounter_V_fu_107_p2[5]),
        .Q(clockCounter_V_1_fu_80_reg__0[5]),
        .R(clockCounter_V_1_fu_80));
  FDRE \clockCounter_V_1_fu_80_reg[6] 
       (.C(aclk),
        .CE(\clockCounter_V_1_fu_80[9]_i_2_n_0 ),
        .D(clockCounter_V_fu_107_p2[6]),
        .Q(clockCounter_V_1_fu_80_reg__0[6]),
        .R(clockCounter_V_1_fu_80));
  FDRE \clockCounter_V_1_fu_80_reg[7] 
       (.C(aclk),
        .CE(\clockCounter_V_1_fu_80[9]_i_2_n_0 ),
        .D(clockCounter_V_fu_107_p2[7]),
        .Q(clockCounter_V_1_fu_80_reg__0[7]),
        .R(clockCounter_V_1_fu_80));
  FDRE \clockCounter_V_1_fu_80_reg[8] 
       (.C(aclk),
        .CE(\clockCounter_V_1_fu_80[9]_i_2_n_0 ),
        .D(clockCounter_V_fu_107_p2[8]),
        .Q(clockCounter_V_1_fu_80_reg__0[8]),
        .R(clockCounter_V_1_fu_80));
  FDRE \clockCounter_V_1_fu_80_reg[9] 
       (.C(aclk),
        .CE(\clockCounter_V_1_fu_80[9]_i_2_n_0 ),
        .D(clockCounter_V_fu_107_p2[9]),
        .Q(clockCounter_V_1_fu_80_reg__0[9]),
        .R(clockCounter_V_1_fu_80));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \internalPulse[0]_i_1 
       (.I0(\clockCounter_V_1_fu_80[9]_i_5_n_0 ),
        .I1(\clockCounter_V_1_fu_80[9]_i_4_n_0 ),
        .I2(ap_CS_fsm_state3),
        .I3(internalPulse),
        .O(\internalPulse_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_slv0_if
   (s_axi_slv0_RVALID,
    p_2_in,
    Q,
    \outLeds_reg[0] ,
    \v_assign_fu_106_reg[0] ,
    s_axi_slv0_RDATA,
    s_axi_slv0_AWREADY,
    s_axi_slv0_WREADY,
    s_axi_slv0_BVALID,
    s_axi_slv0_ARREADY,
    SR,
    aclk,
    \ap_CS_fsm_reg[2] ,
    s_axi_slv0_WDATA,
    s_axi_slv0_WSTRB,
    s_axi_slv0_ARVALID,
    s_axi_slv0_AWADDR,
    s_axi_slv0_AWVALID,
    s_axi_slv0_WVALID,
    s_axi_slv0_BREADY,
    s_axi_slv0_RREADY,
    s_axi_slv0_ARADDR);
  output s_axi_slv0_RVALID;
  output p_2_in;
  output [3:0]Q;
  output \outLeds_reg[0] ;
  output \v_assign_fu_106_reg[0] ;
  output [3:0]s_axi_slv0_RDATA;
  output s_axi_slv0_AWREADY;
  output s_axi_slv0_WREADY;
  output s_axi_slv0_BVALID;
  output s_axi_slv0_ARREADY;
  input [0:0]SR;
  input aclk;
  input [0:0]\ap_CS_fsm_reg[2] ;
  input [3:0]s_axi_slv0_WDATA;
  input [0:0]s_axi_slv0_WSTRB;
  input s_axi_slv0_ARVALID;
  input [4:0]s_axi_slv0_AWADDR;
  input s_axi_slv0_AWVALID;
  input s_axi_slv0_WVALID;
  input s_axi_slv0_BREADY;
  input s_axi_slv0_RREADY;
  input [4:0]s_axi_slv0_ARADDR;

  wire [3:0]Q;
  wire [0:0]SR;
  wire _ctrl0;
  wire \_ctrl[0]_i_1_n_0 ;
  wire \_ctrl[1]_i_1_n_0 ;
  wire \_ctrl[2]_i_1_n_0 ;
  wire \_ctrl[3]_i_2_n_0 ;
  wire \_ctrl[3]_i_3_n_0 ;
  wire aclk;
  wire [0:0]\ap_CS_fsm_reg[2] ;
  wire aw_hs;
  wire \outLeds_reg[0] ;
  wire p_2_in;
  wire \rdata[3]_i_1_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rstate[0]_i_2_n_0 ;
  wire [4:0]s_axi_slv0_ARADDR;
  wire s_axi_slv0_ARREADY;
  wire s_axi_slv0_ARVALID;
  wire [4:0]s_axi_slv0_AWADDR;
  wire s_axi_slv0_AWREADY;
  wire s_axi_slv0_AWVALID;
  wire s_axi_slv0_BREADY;
  wire s_axi_slv0_BVALID;
  wire [3:0]s_axi_slv0_RDATA;
  wire s_axi_slv0_RREADY;
  wire s_axi_slv0_RVALID;
  wire [3:0]s_axi_slv0_WDATA;
  wire s_axi_slv0_WREADY;
  wire [0:0]s_axi_slv0_WSTRB;
  wire s_axi_slv0_WVALID;
  wire \v_assign_fu_106_reg[0] ;
  wire [4:0]waddr;
  wire [1:0]wstate;
  wire \wstate[0]_i_1_n_0 ;
  wire \wstate[1]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_ctrl[0]_i_1 
       (.I0(s_axi_slv0_WDATA[0]),
        .I1(s_axi_slv0_WSTRB),
        .I2(Q[0]),
        .O(\_ctrl[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_ctrl[1]_i_1 
       (.I0(s_axi_slv0_WDATA[1]),
        .I1(s_axi_slv0_WSTRB),
        .I2(Q[1]),
        .O(\_ctrl[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_ctrl[2]_i_1 
       (.I0(s_axi_slv0_WDATA[2]),
        .I1(s_axi_slv0_WSTRB),
        .I2(Q[2]),
        .O(\_ctrl[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \_ctrl[3]_i_1 
       (.I0(waddr[1]),
        .I1(waddr[0]),
        .I2(waddr[3]),
        .I3(\_ctrl[3]_i_3_n_0 ),
        .O(_ctrl0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_ctrl[3]_i_2 
       (.I0(s_axi_slv0_WDATA[3]),
        .I1(s_axi_slv0_WSTRB),
        .I2(Q[3]),
        .O(\_ctrl[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \_ctrl[3]_i_3 
       (.I0(waddr[2]),
        .I1(waddr[4]),
        .I2(s_axi_slv0_WVALID),
        .I3(wstate[0]),
        .I4(wstate[1]),
        .O(\_ctrl[3]_i_3_n_0 ));
  FDRE \_ctrl_reg[0] 
       (.C(aclk),
        .CE(_ctrl0),
        .D(\_ctrl[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \_ctrl_reg[1] 
       (.C(aclk),
        .CE(_ctrl0),
        .D(\_ctrl[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \_ctrl_reg[2] 
       (.C(aclk),
        .CE(_ctrl0),
        .D(\_ctrl[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \_ctrl_reg[3] 
       (.C(aclk),
        .CE(_ctrl0),
        .D(\_ctrl[3]_i_2_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \outLeds[3]_i_4 
       (.I0(\ap_CS_fsm_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\outLeds_reg[0] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \outLeds[3]_i_5 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\v_assign_fu_106_reg[0] ));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \rdata[3]_i_1 
       (.I0(\rdata[3]_i_2_n_0 ),
        .I1(s_axi_slv0_ARADDR[3]),
        .I2(s_axi_slv0_ARADDR[0]),
        .I3(s_axi_slv0_ARADDR[4]),
        .I4(s_axi_slv0_ARADDR[1]),
        .I5(s_axi_slv0_ARADDR[2]),
        .O(\rdata[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rdata[3]_i_2 
       (.I0(s_axi_slv0_ARVALID),
        .I1(s_axi_slv0_RVALID),
        .O(\rdata[3]_i_2_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(aclk),
        .CE(\rdata[3]_i_2_n_0 ),
        .D(Q[0]),
        .Q(s_axi_slv0_RDATA[0]),
        .R(\rdata[3]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(aclk),
        .CE(\rdata[3]_i_2_n_0 ),
        .D(Q[1]),
        .Q(s_axi_slv0_RDATA[1]),
        .R(\rdata[3]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(aclk),
        .CE(\rdata[3]_i_2_n_0 ),
        .D(Q[2]),
        .Q(s_axi_slv0_RDATA[2]),
        .R(\rdata[3]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(aclk),
        .CE(\rdata[3]_i_2_n_0 ),
        .D(Q[3]),
        .Q(s_axi_slv0_RDATA[3]),
        .R(\rdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \rstate[0]_i_2 
       (.I0(s_axi_slv0_RREADY),
        .I1(s_axi_slv0_RVALID),
        .I2(s_axi_slv0_ARVALID),
        .O(\rstate[0]_i_2_n_0 ));
  FDRE \rstate_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rstate[0]_i_2_n_0 ),
        .Q(s_axi_slv0_RVALID),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_slv0_ARREADY_INST_0
       (.I0(s_axi_slv0_RVALID),
        .O(s_axi_slv0_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_slv0_AWREADY_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_slv0_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_slv0_BVALID_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_slv0_BVALID));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_slv0_WREADY_INST_0
       (.I0(wstate[0]),
        .I1(wstate[1]),
        .O(s_axi_slv0_WREADY));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \v_assign_fu_106[0]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\ap_CS_fsm_reg[2] ),
        .O(p_2_in));
  LUT3 #(
    .INIT(8'h02)) 
    \waddr[4]_i_1 
       (.I0(s_axi_slv0_AWVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .O(aw_hs));
  FDRE \waddr_reg[0] 
       (.C(aclk),
        .CE(aw_hs),
        .D(s_axi_slv0_AWADDR[0]),
        .Q(waddr[0]),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(aclk),
        .CE(aw_hs),
        .D(s_axi_slv0_AWADDR[1]),
        .Q(waddr[1]),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(aclk),
        .CE(aw_hs),
        .D(s_axi_slv0_AWADDR[2]),
        .Q(waddr[2]),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(aclk),
        .CE(aw_hs),
        .D(s_axi_slv0_AWADDR[3]),
        .Q(waddr[3]),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(aclk),
        .CE(aw_hs),
        .D(s_axi_slv0_AWADDR[4]),
        .Q(waddr[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0454)) 
    \wstate[0]_i_1 
       (.I0(wstate[1]),
        .I1(s_axi_slv0_AWVALID),
        .I2(wstate[0]),
        .I3(s_axi_slv0_WVALID),
        .O(\wstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0838)) 
    \wstate[1]_i_1 
       (.I0(s_axi_slv0_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(s_axi_slv0_BREADY),
        .O(\wstate[1]_i_1_n_0 ));
  FDRE \wstate_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstate[0]_i_1_n_0 ),
        .Q(wstate[0]),
        .R(SR));
  FDRE \wstate_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstate[1]_i_1_n_0 ),
        .Q(wstate[1]),
        .R(SR));
endmodule

(* C_S_AXI_SLV0_ADDR_WIDTH = "5" *) (* C_S_AXI_SLV0_DATA_WIDTH = "32" *) (* RESET_ACTIVE_LOW = "1" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_top
   (s_axi_slv0_AWADDR,
    s_axi_slv0_AWVALID,
    s_axi_slv0_AWREADY,
    s_axi_slv0_WDATA,
    s_axi_slv0_WSTRB,
    s_axi_slv0_WVALID,
    s_axi_slv0_WREADY,
    s_axi_slv0_BRESP,
    s_axi_slv0_BVALID,
    s_axi_slv0_BREADY,
    s_axi_slv0_ARADDR,
    s_axi_slv0_ARVALID,
    s_axi_slv0_ARREADY,
    s_axi_slv0_RDATA,
    s_axi_slv0_RRESP,
    s_axi_slv0_RVALID,
    s_axi_slv0_RREADY,
    aresetn,
    aclk,
    inSwitch,
    outLeds);
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
  input aresetn;
  input aclk;
  input [3:0]inSwitch;
  output [3:0]outLeds;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire \grp_iosc_controlOutLeds_fu_92/ap_CS_fsm_state3 ;
  wire \grp_iosc_controlOutLeds_fu_92/p_2_in ;
  wire [3:0]inSwitch;
  wire iosc_slv0_if_U_n_6;
  wire iosc_slv0_if_U_n_7;
  wire [3:0]outLeds;
  wire p_0_in;
  wire [4:0]s_axi_slv0_ARADDR;
  wire s_axi_slv0_ARREADY;
  wire s_axi_slv0_ARVALID;
  wire [4:0]s_axi_slv0_AWADDR;
  wire s_axi_slv0_AWREADY;
  wire s_axi_slv0_AWVALID;
  wire s_axi_slv0_BREADY;
  wire s_axi_slv0_BVALID;
  wire [3:0]\^s_axi_slv0_RDATA ;
  wire s_axi_slv0_RREADY;
  wire s_axi_slv0_RVALID;
  wire [31:0]s_axi_slv0_WDATA;
  wire s_axi_slv0_WREADY;
  wire [3:0]s_axi_slv0_WSTRB;
  wire s_axi_slv0_WVALID;
  wire [3:0]sig_iosc_ctrl;

  assign s_axi_slv0_BRESP[1] = \<const0> ;
  assign s_axi_slv0_BRESP[0] = \<const0> ;
  assign s_axi_slv0_RDATA[31] = \<const0> ;
  assign s_axi_slv0_RDATA[30] = \<const0> ;
  assign s_axi_slv0_RDATA[29] = \<const0> ;
  assign s_axi_slv0_RDATA[28] = \<const0> ;
  assign s_axi_slv0_RDATA[27] = \<const0> ;
  assign s_axi_slv0_RDATA[26] = \<const0> ;
  assign s_axi_slv0_RDATA[25] = \<const0> ;
  assign s_axi_slv0_RDATA[24] = \<const0> ;
  assign s_axi_slv0_RDATA[23] = \<const0> ;
  assign s_axi_slv0_RDATA[22] = \<const0> ;
  assign s_axi_slv0_RDATA[21] = \<const0> ;
  assign s_axi_slv0_RDATA[20] = \<const0> ;
  assign s_axi_slv0_RDATA[19] = \<const0> ;
  assign s_axi_slv0_RDATA[18] = \<const0> ;
  assign s_axi_slv0_RDATA[17] = \<const0> ;
  assign s_axi_slv0_RDATA[16] = \<const0> ;
  assign s_axi_slv0_RDATA[15] = \<const0> ;
  assign s_axi_slv0_RDATA[14] = \<const0> ;
  assign s_axi_slv0_RDATA[13] = \<const0> ;
  assign s_axi_slv0_RDATA[12] = \<const0> ;
  assign s_axi_slv0_RDATA[11] = \<const0> ;
  assign s_axi_slv0_RDATA[10] = \<const0> ;
  assign s_axi_slv0_RDATA[9] = \<const0> ;
  assign s_axi_slv0_RDATA[8] = \<const0> ;
  assign s_axi_slv0_RDATA[7] = \<const0> ;
  assign s_axi_slv0_RDATA[6] = \<const0> ;
  assign s_axi_slv0_RDATA[5] = \<const0> ;
  assign s_axi_slv0_RDATA[4] = \<const0> ;
  assign s_axi_slv0_RDATA[3:0] = \^s_axi_slv0_RDATA [3:0];
  assign s_axi_slv0_RRESP[1] = \<const0> ;
  assign s_axi_slv0_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc iosc_U
       (.Q(sig_iosc_ctrl),
        .SR(p_0_in),
        .\_ctrl_reg[2] (iosc_slv0_if_U_n_7),
        .aclk(aclk),
        .\ap_CS_fsm_reg[2] (\grp_iosc_controlOutLeds_fu_92/ap_CS_fsm_state3 ),
        .\ap_CS_fsm_reg[2]_0 (iosc_slv0_if_U_n_6),
        .aresetn(aresetn),
        .inSwitch(inSwitch),
        .outLeds(outLeds),
        .p_2_in(\grp_iosc_controlOutLeds_fu_92/p_2_in ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_slv0_if iosc_slv0_if_U
       (.Q(sig_iosc_ctrl),
        .SR(p_0_in),
        .aclk(aclk),
        .\ap_CS_fsm_reg[2] (\grp_iosc_controlOutLeds_fu_92/ap_CS_fsm_state3 ),
        .\outLeds_reg[0] (iosc_slv0_if_U_n_6),
        .p_2_in(\grp_iosc_controlOutLeds_fu_92/p_2_in ),
        .s_axi_slv0_ARADDR(s_axi_slv0_ARADDR),
        .s_axi_slv0_ARREADY(s_axi_slv0_ARREADY),
        .s_axi_slv0_ARVALID(s_axi_slv0_ARVALID),
        .s_axi_slv0_AWADDR(s_axi_slv0_AWADDR),
        .s_axi_slv0_AWREADY(s_axi_slv0_AWREADY),
        .s_axi_slv0_AWVALID(s_axi_slv0_AWVALID),
        .s_axi_slv0_BREADY(s_axi_slv0_BREADY),
        .s_axi_slv0_BVALID(s_axi_slv0_BVALID),
        .s_axi_slv0_RDATA(\^s_axi_slv0_RDATA ),
        .s_axi_slv0_RREADY(s_axi_slv0_RREADY),
        .s_axi_slv0_RVALID(s_axi_slv0_RVALID),
        .s_axi_slv0_WDATA(s_axi_slv0_WDATA[3:0]),
        .s_axi_slv0_WREADY(s_axi_slv0_WREADY),
        .s_axi_slv0_WSTRB(s_axi_slv0_WSTRB[0]),
        .s_axi_slv0_WVALID(s_axi_slv0_WVALID),
        .\v_assign_fu_106_reg[0] (iosc_slv0_if_U_n_7));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
