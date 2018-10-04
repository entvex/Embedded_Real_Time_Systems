// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Oct  3 14:53:50 2018
// Host        : DESKTOP-MBD2KSK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_iosc_0_0_sim_netlist.v
// Design      : design_1_iosc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_iosc_0_0,iosc_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "iosc_top,Vivado 2017.2" *) 
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
  input [7:0]inSwitch;
  output [7:0]outLeds;
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
  wire [7:0]inSwitch;
  wire [7:0]outLeds;
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
   (\outLeds_reg[3]_0 ,
    Q,
    \v_assign_fu_104_reg[0] ,
    \v_assign_fu_104_reg[0]_0 ,
    outLeds,
    v_assign_fu_10401_in,
    aclk,
    \_ctrl_reg[1] ,
    \_ctrl_reg[7] ,
    inSwitch,
    SR,
    D,
    \ap_CS_fsm_reg[2] );
  output [3:0]\outLeds_reg[3]_0 ;
  output [0:0]Q;
  output \v_assign_fu_104_reg[0] ;
  output \v_assign_fu_104_reg[0]_0 ;
  output [7:0]outLeds;
  input v_assign_fu_10401_in;
  input aclk;
  input \_ctrl_reg[1] ;
  input \_ctrl_reg[7] ;
  input [7:0]inSwitch;
  input [0:0]SR;
  input [3:0]D;
  input \ap_CS_fsm_reg[2] ;

  wire [3:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \_ctrl_reg[1] ;
  wire \_ctrl_reg[7] ;
  wire aclk;
  wire \ap_CS_fsm_reg[2] ;
  wire grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld;
  wire [7:0]inSwitch;
  wire [7:0]outLeds;
  wire [3:0]\outLeds_reg[3]_0 ;
  wire v_assign_fu_10401_in;
  wire [7:4]v_assign_fu_104_reg;
  wire \v_assign_fu_104_reg[0] ;
  wire \v_assign_fu_104_reg[0]_0 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_controlOutLeds grp_iosc_controlOutLeds_fu_92
       (.Q(Q),
        .SR(SR),
        .\_ctrl_reg[1] (\_ctrl_reg[1] ),
        .\_ctrl_reg[7] (\_ctrl_reg[7] ),
        .aclk(aclk),
        .grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
        .inSwitch(inSwitch),
        .\outLeds_reg[3] (\outLeds_reg[3]_0 ),
        .v_assign_fu_10401_in(v_assign_fu_10401_in),
        .v_assign_fu_104_reg(v_assign_fu_104_reg),
        .\v_assign_fu_104_reg[0]_0 (\v_assign_fu_104_reg[0] ),
        .\v_assign_fu_104_reg[0]_1 (\v_assign_fu_104_reg[0]_0 ));
  FDRE \outLeds_reg[0] 
       (.C(aclk),
        .CE(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
        .D(D[0]),
        .Q(outLeds[0]),
        .R(1'b0));
  FDRE \outLeds_reg[1] 
       (.C(aclk),
        .CE(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
        .D(D[1]),
        .Q(outLeds[1]),
        .R(1'b0));
  FDRE \outLeds_reg[2] 
       (.C(aclk),
        .CE(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
        .D(D[2]),
        .Q(outLeds[2]),
        .R(1'b0));
  FDRE \outLeds_reg[3] 
       (.C(aclk),
        .CE(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
        .D(D[3]),
        .Q(outLeds[3]),
        .R(1'b0));
  FDRE \outLeds_reg[4] 
       (.C(aclk),
        .CE(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
        .D(v_assign_fu_104_reg[4]),
        .Q(outLeds[4]),
        .R(\ap_CS_fsm_reg[2] ));
  FDRE \outLeds_reg[5] 
       (.C(aclk),
        .CE(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
        .D(v_assign_fu_104_reg[5]),
        .Q(outLeds[5]),
        .R(\ap_CS_fsm_reg[2] ));
  FDRE \outLeds_reg[6] 
       (.C(aclk),
        .CE(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
        .D(v_assign_fu_104_reg[6]),
        .Q(outLeds[6]),
        .R(\ap_CS_fsm_reg[2] ));
  FDRE \outLeds_reg[7] 
       (.C(aclk),
        .CE(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
        .D(v_assign_fu_104_reg[7]),
        .Q(outLeds[7]),
        .R(\ap_CS_fsm_reg[2] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_controlOutLeds
   (\outLeds_reg[3] ,
    v_assign_fu_104_reg,
    Q,
    \v_assign_fu_104_reg[0]_0 ,
    \v_assign_fu_104_reg[0]_1 ,
    grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld,
    v_assign_fu_10401_in,
    aclk,
    \_ctrl_reg[1] ,
    \_ctrl_reg[7] ,
    inSwitch,
    SR);
  output [3:0]\outLeds_reg[3] ;
  output [3:0]v_assign_fu_104_reg;
  output [0:0]Q;
  output \v_assign_fu_104_reg[0]_0 ;
  output \v_assign_fu_104_reg[0]_1 ;
  output grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld;
  input v_assign_fu_10401_in;
  input aclk;
  input \_ctrl_reg[1] ;
  input \_ctrl_reg[7] ;
  input [7:0]inSwitch;
  input [0:0]SR;

  wire [0:0]Q;
  wire [0:0]SR;
  wire \_ctrl_reg[1] ;
  wire \_ctrl_reg[7] ;
  wire aclk;
  wire ap_CS_fsm_state2;
  wire [2:1]ap_NS_fsm;
  wire grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld;
  wire [7:0]inSwitch;
  wire [3:0]\outLeds_reg[3] ;
  wire v_assign_fu_104;
  wire v_assign_fu_10401_in;
  wire \v_assign_fu_104[0]_i_4_n_0 ;
  wire \v_assign_fu_104[0]_i_5_n_0 ;
  wire \v_assign_fu_104[0]_i_6_n_0 ;
  wire \v_assign_fu_104[0]_i_7_n_0 ;
  wire \v_assign_fu_104[4]_i_2_n_0 ;
  wire \v_assign_fu_104[4]_i_3_n_0 ;
  wire \v_assign_fu_104[4]_i_4_n_0 ;
  wire \v_assign_fu_104[4]_i_5_n_0 ;
  wire [3:0]v_assign_fu_104_reg;
  wire \v_assign_fu_104_reg[0]_0 ;
  wire \v_assign_fu_104_reg[0]_1 ;
  wire \v_assign_fu_104_reg[0]_i_3_n_0 ;
  wire \v_assign_fu_104_reg[0]_i_3_n_1 ;
  wire \v_assign_fu_104_reg[0]_i_3_n_2 ;
  wire \v_assign_fu_104_reg[0]_i_3_n_3 ;
  wire \v_assign_fu_104_reg[0]_i_3_n_4 ;
  wire \v_assign_fu_104_reg[0]_i_3_n_5 ;
  wire \v_assign_fu_104_reg[0]_i_3_n_6 ;
  wire \v_assign_fu_104_reg[0]_i_3_n_7 ;
  wire \v_assign_fu_104_reg[4]_i_1_n_1 ;
  wire \v_assign_fu_104_reg[4]_i_1_n_2 ;
  wire \v_assign_fu_104_reg[4]_i_1_n_3 ;
  wire \v_assign_fu_104_reg[4]_i_1_n_4 ;
  wire \v_assign_fu_104_reg[4]_i_1_n_5 ;
  wire \v_assign_fu_104_reg[4]_i_1_n_6 ;
  wire \v_assign_fu_104_reg[4]_i_1_n_7 ;
  wire [3:3]\NLW_v_assign_fu_104_reg[4]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(Q),
        .I1(ap_CS_fsm_state2),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(Q),
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
        .Q(Q),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \outLeds[7]_i_2 
       (.I0(Q),
        .I1(\_ctrl_reg[7] ),
        .O(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld));
  LUT4 #(
    .INIT(16'h0100)) 
    \outLeds[7]_i_5 
       (.I0(inSwitch[1]),
        .I1(inSwitch[0]),
        .I2(inSwitch[2]),
        .I3(inSwitch[3]),
        .O(\v_assign_fu_104_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \outLeds[7]_i_6 
       (.I0(inSwitch[7]),
        .I1(inSwitch[6]),
        .I2(inSwitch[5]),
        .I3(inSwitch[4]),
        .O(\v_assign_fu_104_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFDFDFD02000000)) 
    \v_assign_fu_104[0]_i_1 
       (.I0(Q),
        .I1(\_ctrl_reg[1] ),
        .I2(\_ctrl_reg[7] ),
        .I3(\v_assign_fu_104_reg[0]_0 ),
        .I4(\v_assign_fu_104_reg[0]_1 ),
        .I5(ap_CS_fsm_state2),
        .O(v_assign_fu_104));
  LUT1 #(
    .INIT(2'h2)) 
    \v_assign_fu_104[0]_i_4 
       (.I0(\outLeds_reg[3] [3]),
        .O(\v_assign_fu_104[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_assign_fu_104[0]_i_5 
       (.I0(\outLeds_reg[3] [2]),
        .O(\v_assign_fu_104[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_assign_fu_104[0]_i_6 
       (.I0(\outLeds_reg[3] [1]),
        .O(\v_assign_fu_104[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v_assign_fu_104[0]_i_7 
       (.I0(\outLeds_reg[3] [0]),
        .O(\v_assign_fu_104[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_assign_fu_104[4]_i_2 
       (.I0(v_assign_fu_104_reg[3]),
        .O(\v_assign_fu_104[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_assign_fu_104[4]_i_3 
       (.I0(v_assign_fu_104_reg[2]),
        .O(\v_assign_fu_104[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_assign_fu_104[4]_i_4 
       (.I0(v_assign_fu_104_reg[1]),
        .O(\v_assign_fu_104[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_assign_fu_104[4]_i_5 
       (.I0(v_assign_fu_104_reg[0]),
        .O(\v_assign_fu_104[4]_i_5_n_0 ));
  FDRE \v_assign_fu_104_reg[0] 
       (.C(aclk),
        .CE(v_assign_fu_10401_in),
        .D(\v_assign_fu_104_reg[0]_i_3_n_7 ),
        .Q(\outLeds_reg[3] [0]),
        .R(v_assign_fu_104));
  CARRY4 \v_assign_fu_104_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\v_assign_fu_104_reg[0]_i_3_n_0 ,\v_assign_fu_104_reg[0]_i_3_n_1 ,\v_assign_fu_104_reg[0]_i_3_n_2 ,\v_assign_fu_104_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\v_assign_fu_104_reg[0]_i_3_n_4 ,\v_assign_fu_104_reg[0]_i_3_n_5 ,\v_assign_fu_104_reg[0]_i_3_n_6 ,\v_assign_fu_104_reg[0]_i_3_n_7 }),
        .S({\v_assign_fu_104[0]_i_4_n_0 ,\v_assign_fu_104[0]_i_5_n_0 ,\v_assign_fu_104[0]_i_6_n_0 ,\v_assign_fu_104[0]_i_7_n_0 }));
  FDRE \v_assign_fu_104_reg[1] 
       (.C(aclk),
        .CE(v_assign_fu_10401_in),
        .D(\v_assign_fu_104_reg[0]_i_3_n_6 ),
        .Q(\outLeds_reg[3] [1]),
        .R(v_assign_fu_104));
  FDRE \v_assign_fu_104_reg[2] 
       (.C(aclk),
        .CE(v_assign_fu_10401_in),
        .D(\v_assign_fu_104_reg[0]_i_3_n_5 ),
        .Q(\outLeds_reg[3] [2]),
        .R(v_assign_fu_104));
  FDRE \v_assign_fu_104_reg[3] 
       (.C(aclk),
        .CE(v_assign_fu_10401_in),
        .D(\v_assign_fu_104_reg[0]_i_3_n_4 ),
        .Q(\outLeds_reg[3] [3]),
        .R(v_assign_fu_104));
  FDRE \v_assign_fu_104_reg[4] 
       (.C(aclk),
        .CE(v_assign_fu_10401_in),
        .D(\v_assign_fu_104_reg[4]_i_1_n_7 ),
        .Q(v_assign_fu_104_reg[0]),
        .R(v_assign_fu_104));
  CARRY4 \v_assign_fu_104_reg[4]_i_1 
       (.CI(\v_assign_fu_104_reg[0]_i_3_n_0 ),
        .CO({\NLW_v_assign_fu_104_reg[4]_i_1_CO_UNCONNECTED [3],\v_assign_fu_104_reg[4]_i_1_n_1 ,\v_assign_fu_104_reg[4]_i_1_n_2 ,\v_assign_fu_104_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_assign_fu_104_reg[4]_i_1_n_4 ,\v_assign_fu_104_reg[4]_i_1_n_5 ,\v_assign_fu_104_reg[4]_i_1_n_6 ,\v_assign_fu_104_reg[4]_i_1_n_7 }),
        .S({\v_assign_fu_104[4]_i_2_n_0 ,\v_assign_fu_104[4]_i_3_n_0 ,\v_assign_fu_104[4]_i_4_n_0 ,\v_assign_fu_104[4]_i_5_n_0 }));
  FDRE \v_assign_fu_104_reg[5] 
       (.C(aclk),
        .CE(v_assign_fu_10401_in),
        .D(\v_assign_fu_104_reg[4]_i_1_n_6 ),
        .Q(v_assign_fu_104_reg[1]),
        .R(v_assign_fu_104));
  FDRE \v_assign_fu_104_reg[6] 
       (.C(aclk),
        .CE(v_assign_fu_10401_in),
        .D(\v_assign_fu_104_reg[4]_i_1_n_5 ),
        .Q(v_assign_fu_104_reg[2]),
        .R(v_assign_fu_104));
  FDRE \v_assign_fu_104_reg[7] 
       (.C(aclk),
        .CE(v_assign_fu_10401_in),
        .D(\v_assign_fu_104_reg[4]_i_1_n_4 ),
        .Q(v_assign_fu_104_reg[3]),
        .R(v_assign_fu_104));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_slv0_if
   (s_axi_slv0_RVALID,
    SR,
    D,
    \outLeds_reg[0] ,
    \outLeds_reg[0]_0 ,
    v_assign_fu_10401_in,
    \outLeds_reg[4] ,
    s_axi_slv0_RDATA,
    s_axi_slv0_AWREADY,
    s_axi_slv0_WREADY,
    s_axi_slv0_BVALID,
    s_axi_slv0_ARREADY,
    aclk,
    \v_assign_fu_104_reg[3] ,
    \inSwitch[4] ,
    \inSwitch_3__s_port_] ,
    Q,
    s_axi_slv0_WDATA,
    s_axi_slv0_WSTRB,
    inSwitch,
    aresetn,
    s_axi_slv0_ARVALID,
    s_axi_slv0_AWADDR,
    s_axi_slv0_AWVALID,
    s_axi_slv0_WVALID,
    s_axi_slv0_BREADY,
    s_axi_slv0_RREADY,
    s_axi_slv0_ARADDR);
  output s_axi_slv0_RVALID;
  output [0:0]SR;
  output [3:0]D;
  output \outLeds_reg[0] ;
  output \outLeds_reg[0]_0 ;
  output v_assign_fu_10401_in;
  output \outLeds_reg[4] ;
  output [7:0]s_axi_slv0_RDATA;
  output s_axi_slv0_AWREADY;
  output s_axi_slv0_WREADY;
  output s_axi_slv0_BVALID;
  output s_axi_slv0_ARREADY;
  input aclk;
  input [3:0]\v_assign_fu_104_reg[3] ;
  input \inSwitch[4] ;
  input \inSwitch_3__s_port_] ;
  input [0:0]Q;
  input [7:0]s_axi_slv0_WDATA;
  input [0:0]s_axi_slv0_WSTRB;
  input [3:0]inSwitch;
  input aresetn;
  input s_axi_slv0_ARVALID;
  input [4:0]s_axi_slv0_AWADDR;
  input s_axi_slv0_AWVALID;
  input s_axi_slv0_WVALID;
  input s_axi_slv0_BREADY;
  input s_axi_slv0_RREADY;
  input [4:0]s_axi_slv0_ARADDR;

  wire [3:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire _ctrl0;
  wire \_ctrl[0]_i_1_n_0 ;
  wire \_ctrl[1]_i_1_n_0 ;
  wire \_ctrl[2]_i_1_n_0 ;
  wire \_ctrl[3]_i_1_n_0 ;
  wire \_ctrl[4]_i_1_n_0 ;
  wire \_ctrl[5]_i_1_n_0 ;
  wire \_ctrl[6]_i_1_n_0 ;
  wire \_ctrl[7]_i_2_n_0 ;
  wire \_ctrl[7]_i_3_n_0 ;
  wire aclk;
  wire aresetn;
  wire aw_hs;
  wire [3:0]inSwitch;
  wire \inSwitch[4] ;
  wire inSwitch_3__s_net_1;
  wire \outLeds[0]_i_2_n_0 ;
  wire \outLeds[1]_i_2_n_0 ;
  wire \outLeds[2]_i_2_n_0 ;
  wire \outLeds[3]_i_2_n_0 ;
  wire \outLeds_reg[0] ;
  wire \outLeds_reg[0]_0 ;
  wire \outLeds_reg[4] ;
  wire \rdata[7]_i_1_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rstate[0]_i_2_n_0 ;
  wire [4:0]s_axi_slv0_ARADDR;
  wire s_axi_slv0_ARREADY;
  wire s_axi_slv0_ARVALID;
  wire [4:0]s_axi_slv0_AWADDR;
  wire s_axi_slv0_AWREADY;
  wire s_axi_slv0_AWVALID;
  wire s_axi_slv0_BREADY;
  wire s_axi_slv0_BVALID;
  wire [7:0]s_axi_slv0_RDATA;
  wire s_axi_slv0_RREADY;
  wire s_axi_slv0_RVALID;
  wire [7:0]s_axi_slv0_WDATA;
  wire s_axi_slv0_WREADY;
  wire [0:0]s_axi_slv0_WSTRB;
  wire s_axi_slv0_WVALID;
  wire [7:0]sig_iosc_ctrl;
  wire v_assign_fu_10401_in;
  wire [3:0]\v_assign_fu_104_reg[3] ;
  wire [4:0]waddr;
  wire [1:0]wstate;
  wire \wstate[0]_i_1_n_0 ;
  wire \wstate[1]_i_1_n_0 ;

  assign inSwitch_3__s_net_1 = \inSwitch_3__s_port_] ;
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_ctrl[0]_i_1 
       (.I0(s_axi_slv0_WDATA[0]),
        .I1(s_axi_slv0_WSTRB),
        .I2(sig_iosc_ctrl[0]),
        .O(\_ctrl[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_ctrl[1]_i_1 
       (.I0(s_axi_slv0_WDATA[1]),
        .I1(s_axi_slv0_WSTRB),
        .I2(sig_iosc_ctrl[1]),
        .O(\_ctrl[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_ctrl[2]_i_1 
       (.I0(s_axi_slv0_WDATA[2]),
        .I1(s_axi_slv0_WSTRB),
        .I2(sig_iosc_ctrl[2]),
        .O(\_ctrl[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_ctrl[3]_i_1 
       (.I0(s_axi_slv0_WDATA[3]),
        .I1(s_axi_slv0_WSTRB),
        .I2(sig_iosc_ctrl[3]),
        .O(\_ctrl[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_ctrl[4]_i_1 
       (.I0(s_axi_slv0_WDATA[4]),
        .I1(s_axi_slv0_WSTRB),
        .I2(sig_iosc_ctrl[4]),
        .O(\_ctrl[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_ctrl[5]_i_1 
       (.I0(s_axi_slv0_WDATA[5]),
        .I1(s_axi_slv0_WSTRB),
        .I2(sig_iosc_ctrl[5]),
        .O(\_ctrl[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_ctrl[6]_i_1 
       (.I0(s_axi_slv0_WDATA[6]),
        .I1(s_axi_slv0_WSTRB),
        .I2(sig_iosc_ctrl[6]),
        .O(\_ctrl[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \_ctrl[7]_i_1 
       (.I0(waddr[1]),
        .I1(waddr[0]),
        .I2(waddr[3]),
        .I3(\_ctrl[7]_i_3_n_0 ),
        .O(_ctrl0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_ctrl[7]_i_2 
       (.I0(s_axi_slv0_WDATA[7]),
        .I1(s_axi_slv0_WSTRB),
        .I2(sig_iosc_ctrl[7]),
        .O(\_ctrl[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \_ctrl[7]_i_3 
       (.I0(waddr[2]),
        .I1(waddr[4]),
        .I2(s_axi_slv0_WVALID),
        .I3(wstate[0]),
        .I4(wstate[1]),
        .O(\_ctrl[7]_i_3_n_0 ));
  FDRE \_ctrl_reg[0] 
       (.C(aclk),
        .CE(_ctrl0),
        .D(\_ctrl[0]_i_1_n_0 ),
        .Q(sig_iosc_ctrl[0]),
        .R(1'b0));
  FDRE \_ctrl_reg[1] 
       (.C(aclk),
        .CE(_ctrl0),
        .D(\_ctrl[1]_i_1_n_0 ),
        .Q(sig_iosc_ctrl[1]),
        .R(1'b0));
  FDRE \_ctrl_reg[2] 
       (.C(aclk),
        .CE(_ctrl0),
        .D(\_ctrl[2]_i_1_n_0 ),
        .Q(sig_iosc_ctrl[2]),
        .R(1'b0));
  FDRE \_ctrl_reg[3] 
       (.C(aclk),
        .CE(_ctrl0),
        .D(\_ctrl[3]_i_1_n_0 ),
        .Q(sig_iosc_ctrl[3]),
        .R(1'b0));
  FDRE \_ctrl_reg[4] 
       (.C(aclk),
        .CE(_ctrl0),
        .D(\_ctrl[4]_i_1_n_0 ),
        .Q(sig_iosc_ctrl[4]),
        .R(1'b0));
  FDRE \_ctrl_reg[5] 
       (.C(aclk),
        .CE(_ctrl0),
        .D(\_ctrl[5]_i_1_n_0 ),
        .Q(sig_iosc_ctrl[5]),
        .R(1'b0));
  FDRE \_ctrl_reg[6] 
       (.C(aclk),
        .CE(_ctrl0),
        .D(\_ctrl[6]_i_1_n_0 ),
        .Q(sig_iosc_ctrl[6]),
        .R(1'b0));
  FDRE \_ctrl_reg[7] 
       (.C(aclk),
        .CE(_ctrl0),
        .D(\_ctrl[7]_i_2_n_0 ),
        .Q(sig_iosc_ctrl[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF2A0000002A)) 
    \outLeds[0]_i_1 
       (.I0(\v_assign_fu_104_reg[3] [0]),
        .I1(\inSwitch[4] ),
        .I2(inSwitch_3__s_net_1),
        .I3(\outLeds_reg[0] ),
        .I4(\outLeds_reg[0]_0 ),
        .I5(\outLeds[0]_i_2_n_0 ),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \outLeds[0]_i_2 
       (.I0(inSwitch[0]),
        .I1(sig_iosc_ctrl[0]),
        .O(\outLeds[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF2A0000002A)) 
    \outLeds[1]_i_1 
       (.I0(\v_assign_fu_104_reg[3] [1]),
        .I1(\inSwitch[4] ),
        .I2(inSwitch_3__s_net_1),
        .I3(\outLeds_reg[0] ),
        .I4(\outLeds_reg[0]_0 ),
        .I5(\outLeds[1]_i_2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \outLeds[1]_i_2 
       (.I0(inSwitch[1]),
        .I1(sig_iosc_ctrl[1]),
        .O(\outLeds[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF2A0000002A)) 
    \outLeds[2]_i_1 
       (.I0(\v_assign_fu_104_reg[3] [2]),
        .I1(\inSwitch[4] ),
        .I2(inSwitch_3__s_net_1),
        .I3(\outLeds_reg[0] ),
        .I4(\outLeds_reg[0]_0 ),
        .I5(\outLeds[2]_i_2_n_0 ),
        .O(D[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \outLeds[2]_i_2 
       (.I0(inSwitch[2]),
        .I1(sig_iosc_ctrl[2]),
        .O(\outLeds[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF2A0000002A)) 
    \outLeds[3]_i_1 
       (.I0(\v_assign_fu_104_reg[3] [3]),
        .I1(\inSwitch[4] ),
        .I2(inSwitch_3__s_net_1),
        .I3(\outLeds_reg[0] ),
        .I4(\outLeds_reg[0]_0 ),
        .I5(\outLeds[3]_i_2_n_0 ),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \outLeds[3]_i_2 
       (.I0(inSwitch[3]),
        .I1(sig_iosc_ctrl[3]),
        .O(\outLeds[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h22202020)) 
    \outLeds[7]_i_1 
       (.I0(Q),
        .I1(\outLeds_reg[0]_0 ),
        .I2(\outLeds_reg[0] ),
        .I3(inSwitch_3__s_net_1),
        .I4(\inSwitch[4] ),
        .O(\outLeds_reg[4] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outLeds[7]_i_3 
       (.I0(sig_iosc_ctrl[7]),
        .I1(sig_iosc_ctrl[6]),
        .I2(sig_iosc_ctrl[5]),
        .I3(sig_iosc_ctrl[4]),
        .O(\outLeds_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \outLeds[7]_i_4 
       (.I0(sig_iosc_ctrl[1]),
        .I1(sig_iosc_ctrl[0]),
        .I2(sig_iosc_ctrl[3]),
        .I3(sig_iosc_ctrl[2]),
        .O(\outLeds_reg[0] ));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \rdata[7]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(s_axi_slv0_ARADDR[3]),
        .I2(s_axi_slv0_ARADDR[0]),
        .I3(s_axi_slv0_ARADDR[4]),
        .I4(s_axi_slv0_ARADDR[1]),
        .I5(s_axi_slv0_ARADDR[2]),
        .O(\rdata[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rdata[7]_i_2 
       (.I0(s_axi_slv0_ARVALID),
        .I1(s_axi_slv0_RVALID),
        .O(\rdata[7]_i_2_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(aclk),
        .CE(\rdata[7]_i_2_n_0 ),
        .D(sig_iosc_ctrl[0]),
        .Q(s_axi_slv0_RDATA[0]),
        .R(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(aclk),
        .CE(\rdata[7]_i_2_n_0 ),
        .D(sig_iosc_ctrl[1]),
        .Q(s_axi_slv0_RDATA[1]),
        .R(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(aclk),
        .CE(\rdata[7]_i_2_n_0 ),
        .D(sig_iosc_ctrl[2]),
        .Q(s_axi_slv0_RDATA[2]),
        .R(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(aclk),
        .CE(\rdata[7]_i_2_n_0 ),
        .D(sig_iosc_ctrl[3]),
        .Q(s_axi_slv0_RDATA[3]),
        .R(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[4] 
       (.C(aclk),
        .CE(\rdata[7]_i_2_n_0 ),
        .D(sig_iosc_ctrl[4]),
        .Q(s_axi_slv0_RDATA[4]),
        .R(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[5] 
       (.C(aclk),
        .CE(\rdata[7]_i_2_n_0 ),
        .D(sig_iosc_ctrl[5]),
        .Q(s_axi_slv0_RDATA[5]),
        .R(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[6] 
       (.C(aclk),
        .CE(\rdata[7]_i_2_n_0 ),
        .D(sig_iosc_ctrl[6]),
        .Q(s_axi_slv0_RDATA[6]),
        .R(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(aclk),
        .CE(\rdata[7]_i_2_n_0 ),
        .D(sig_iosc_ctrl[7]),
        .Q(s_axi_slv0_RDATA[7]),
        .R(\rdata[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rstate[0]_i_1 
       (.I0(aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_slv0_ARREADY_INST_0
       (.I0(s_axi_slv0_RVALID),
        .O(s_axi_slv0_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_slv0_AWREADY_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_slv0_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_slv0_BVALID_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_slv0_BVALID));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_slv0_WREADY_INST_0
       (.I0(wstate[0]),
        .I1(wstate[1]),
        .O(s_axi_slv0_WREADY));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00020202)) 
    \v_assign_fu_104[0]_i_2 
       (.I0(Q),
        .I1(\outLeds_reg[0] ),
        .I2(\outLeds_reg[0]_0 ),
        .I3(inSwitch_3__s_net_1),
        .I4(\inSwitch[4] ),
        .O(v_assign_fu_10401_in));
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0454)) 
    \wstate[0]_i_1 
       (.I0(wstate[1]),
        .I1(s_axi_slv0_AWVALID),
        .I2(wstate[0]),
        .I3(s_axi_slv0_WVALID),
        .O(\wstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
  input [7:0]inSwitch;
  output [7:0]outLeds;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire dout;
  wire \grp_iosc_controlOutLeds_fu_92/ap_CS_fsm_state3 ;
  wire \grp_iosc_controlOutLeds_fu_92/v_assign_fu_10401_in ;
  wire [3:0]\grp_iosc_controlOutLeds_fu_92/v_assign_fu_104_reg ;
  wire [3:0]grp_iosc_controlOutLeds_fu_92_outLeds;
  wire [7:0]inSwitch;
  wire iosc_U_n_5;
  wire iosc_U_n_6;
  wire iosc_slv0_if_U_n_6;
  wire iosc_slv0_if_U_n_7;
  wire iosc_slv0_if_U_n_9;
  wire [7:0]outLeds;
  wire [4:0]s_axi_slv0_ARADDR;
  wire s_axi_slv0_ARREADY;
  wire s_axi_slv0_ARVALID;
  wire [4:0]s_axi_slv0_AWADDR;
  wire s_axi_slv0_AWREADY;
  wire s_axi_slv0_AWVALID;
  wire s_axi_slv0_BREADY;
  wire s_axi_slv0_BVALID;
  wire [7:0]\^s_axi_slv0_RDATA ;
  wire s_axi_slv0_RREADY;
  wire s_axi_slv0_RVALID;
  wire [31:0]s_axi_slv0_WDATA;
  wire s_axi_slv0_WREADY;
  wire [3:0]s_axi_slv0_WSTRB;
  wire s_axi_slv0_WVALID;

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
  assign s_axi_slv0_RDATA[7:0] = \^s_axi_slv0_RDATA [7:0];
  assign s_axi_slv0_RRESP[1] = \<const0> ;
  assign s_axi_slv0_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc iosc_U
       (.D(grp_iosc_controlOutLeds_fu_92_outLeds),
        .Q(\grp_iosc_controlOutLeds_fu_92/ap_CS_fsm_state3 ),
        .SR(dout),
        .\_ctrl_reg[1] (iosc_slv0_if_U_n_6),
        .\_ctrl_reg[7] (iosc_slv0_if_U_n_7),
        .aclk(aclk),
        .\ap_CS_fsm_reg[2] (iosc_slv0_if_U_n_9),
        .inSwitch(inSwitch),
        .outLeds(outLeds),
        .\outLeds_reg[3]_0 (\grp_iosc_controlOutLeds_fu_92/v_assign_fu_104_reg ),
        .v_assign_fu_10401_in(\grp_iosc_controlOutLeds_fu_92/v_assign_fu_10401_in ),
        .\v_assign_fu_104_reg[0] (iosc_U_n_5),
        .\v_assign_fu_104_reg[0]_0 (iosc_U_n_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_iosc_slv0_if iosc_slv0_if_U
       (.D(grp_iosc_controlOutLeds_fu_92_outLeds),
        .Q(\grp_iosc_controlOutLeds_fu_92/ap_CS_fsm_state3 ),
        .SR(dout),
        .aclk(aclk),
        .aresetn(aresetn),
        .inSwitch(inSwitch[3:0]),
        .\inSwitch[4] (iosc_U_n_6),
        .\inSwitch_3__s_port_] (iosc_U_n_5),
        .\outLeds_reg[0] (iosc_slv0_if_U_n_6),
        .\outLeds_reg[0]_0 (iosc_slv0_if_U_n_7),
        .\outLeds_reg[4] (iosc_slv0_if_U_n_9),
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
        .s_axi_slv0_WDATA(s_axi_slv0_WDATA[7:0]),
        .s_axi_slv0_WREADY(s_axi_slv0_WREADY),
        .s_axi_slv0_WSTRB(s_axi_slv0_WSTRB[0]),
        .s_axi_slv0_WVALID(s_axi_slv0_WVALID),
        .v_assign_fu_10401_in(\grp_iosc_controlOutLeds_fu_92/v_assign_fu_10401_in ),
        .\v_assign_fu_104_reg[3] (\grp_iosc_controlOutLeds_fu_92/v_assign_fu_104_reg ));
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
