// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

module eq_mul_17s_32s_32_2_MulnS_1(clk, ce, a, b, p);
input clk;
input ce;
input signed [17 - 1 : 0] a; // synthesis attribute keep a "true"
input signed [32 - 1 : 0] b; // synthesis attribute keep b "true"
output[32 - 1 : 0] p;
reg signed [32 - 1 : 0] p;
wire signed [32 - 1 : 0] tmp_product;

assign tmp_product = $signed(a) * $signed(b);
always @ (posedge clk) begin
    if (ce) begin
        p <= tmp_product;
    end
end
endmodule

`timescale 1 ns / 1 ps
module eq_mul_17s_32s_32_2(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



eq_mul_17s_32s_32_2_MulnS_1 eq_mul_17s_32s_32_2_MulnS_1_U(
    .clk( clk ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

