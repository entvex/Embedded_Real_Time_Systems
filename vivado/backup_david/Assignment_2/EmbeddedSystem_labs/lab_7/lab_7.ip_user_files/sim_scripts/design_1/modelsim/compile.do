vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/axi_infrastructure_v1_1_0
vlib msim/xil_common_vip_v1_0_0
vlib msim/smartconnect_v1_0
vlib msim/axi_protocol_checker_v1_1_14
vlib msim/axi_vip_v1_0_2
vlib msim/axi_vip_v1_0_1
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_11
vlib msim/generic_baseblocks_v2_1_0
vlib msim/fifo_generator_v13_1_4
vlib msim/axi_data_fifo_v2_1_12
vlib msim/axi_register_slice_v2_1_13
vlib msim/axi_protocol_converter_v2_1_13

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap xil_common_vip_v1_0_0 msim/xil_common_vip_v1_0_0
vmap smartconnect_v1_0 msim/smartconnect_v1_0
vmap axi_protocol_checker_v1_1_14 msim/axi_protocol_checker_v1_1_14
vmap axi_vip_v1_0_2 msim/axi_vip_v1_0_2
vmap axi_vip_v1_0_1 msim/axi_vip_v1_0_1
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_11 msim/proc_sys_reset_v5_0_11
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_1_4 msim/fifo_generator_v13_1_4
vmap axi_data_fifo_v2_1_12 msim/axi_data_fifo_v2_1_12
vmap axi_register_slice_v2_1_13 msim/axi_register_slice_v2_1_13
vmap axi_protocol_converter_v2_1_13 msim/axi_protocol_converter_v2_1_13

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"D:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_common_vip_v1_0_0 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v1_1_14 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/a1b2/hdl/axi_protocol_checker_v1_1_vl_rfs.sv" \

vlog -work axi_vip_v1_0_2 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl/axi_vip_v1_0_vl_rfs.sv" \

vlog -work axi_vip_v1_0_1 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_14 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_2 -L axi_vip_v1_0_1 "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_11 -64 -93 \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_1/hdl/design_1.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/ebc3/hdl/verilog/iosc.v" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/ebc3/hdl/verilog/iosc_controlOutLeds.v" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/ebc3/hdl/verilog/iosc_pulse.v" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/ebc3/hdl/verilog/iosc_reset_if.v" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/ebc3/hdl/verilog/iosc_slv0_if.v" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/ebc3/hdl/verilog/iosc_top.v" \
"../../../bd/design_1/ip/design_1_iosc_0_1/sim/design_1_iosc_0_1.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_4 -64 -incr "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -64 -93 \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4 -64 -incr "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_12 -64 -incr "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/95b9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_13 -64 -incr "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/55c0/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_13 -64 -incr "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/f0ae/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/2ad9/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/6eb1/hdl" "+incdir+../../../../lab_7.srcs/sources_1/bd/design_1/ipshared/1d61/hdl" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

