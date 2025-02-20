// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="iosc,hls_ip_2017_2,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.486000,HLS_SYN_LAT=2,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=189,HLS_SYN_LUT=163}" *)

module iosc (
        clk,
        reset,
        ctrl,
        inSwitch,
        outLeds
);


input   clk;
input   reset;
input  [3:0] ctrl;
input  [3:0] inSwitch;
output  [3:0] outLeds;

reg[3:0] outLeds;

wire   [0:0] iosc_ssdm_thread_s_load_fu_110_p1;
wire   [1:0] ap_CS_fsm;
wire    grp_iosc_pulse_fu_74_internalPulse;
wire    grp_iosc_pulse_fu_74_internalPulse_ap_vld;
wire   [3:0] grp_iosc_controlOutLeds_fu_92_outLeds;
wire    grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld;
wire    grp_iosc_controlOutLeds_fu_92_internalPulse;
wire    ap_CS_fsm_state2;
reg   [0:0] internalPulse;

// power-on initialization
initial begin
#0 internalPulse = 1'd0;
end

iosc_pulse grp_iosc_pulse_fu_74(
    .ap_clk(clk),
    .ap_rst(reset),
    .internalPulse(grp_iosc_pulse_fu_74_internalPulse),
    .internalPulse_ap_vld(grp_iosc_pulse_fu_74_internalPulse_ap_vld)
);

iosc_controlOutLeds grp_iosc_controlOutLeds_fu_92(
    .ap_clk(clk),
    .ap_rst(reset),
    .ctrl(ctrl),
    .inSwitch(inSwitch),
    .outLeds(grp_iosc_controlOutLeds_fu_92_outLeds),
    .outLeds_ap_vld(grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld),
    .internalPulse(grp_iosc_controlOutLeds_fu_92_internalPulse)
);

always @ (posedge clk) begin
    if (reset == 1'b1) begin
        internalPulse <= 1'd0;
    end else begin
        if ((1'b1 == grp_iosc_pulse_fu_74_internalPulse_ap_vld)) begin
            internalPulse <= grp_iosc_pulse_fu_74_internalPulse;
        end
    end
end

always @ (posedge clk) begin
    if ((1'b1 == grp_iosc_controlOutLeds_fu_92_outLeds_ap_vld)) begin
        outLeds <= grp_iosc_controlOutLeds_fu_92_outLeds;
    end
end

assign ap_CS_fsm = 2'd0;

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign grp_iosc_controlOutLeds_fu_92_internalPulse = internalPulse;

assign iosc_ssdm_thread_s_load_fu_110_p1 = 1'd0;

endmodule //iosc
