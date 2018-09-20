vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/xil_common_vip_v1_0_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v1_1_14
vlib activehdl/axi_vip_v1_0_2
vlib activehdl/axi_vip_v1_0_1
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_15
vlib activehdl/proc_sys_reset_v5_0_11
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_13
vlib activehdl/fifo_generator_v13_1_4
vlib activehdl/axi_data_fifo_v2_1_12
vlib activehdl/axi_crossbar_v2_1_14
vlib activehdl/blk_mem_gen_v8_3_6
vlib activehdl/axi_bram_ctrl_v4_0_11
vlib activehdl/axi_protocol_converter_v2_1_13

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap xil_common_vip_v1_0_0 activehdl/xil_common_vip_v1_0_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v1_1_14 activehdl/axi_protocol_checker_v1_1_14
vmap axi_vip_v1_0_2 activehdl/axi_vip_v1_0_2
vmap axi_vip_v1_0_1 activehdl/axi_vip_v1_0_1
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_15 activehdl/axi_gpio_v2_0_15
vmap proc_sys_reset_v5_0_11 activehdl/proc_sys_reset_v5_0_11
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_13 activehdl/axi_register_slice_v2_1_13
vmap fifo_generator_v13_1_4 activehdl/fifo_generator_v13_1_4
vmap axi_data_fifo_v2_1_12 activehdl/axi_data_fifo_v2_1_12
vmap axi_crossbar_v2_1_14 activehdl/axi_crossbar_v2_1_14
vmap blk_mem_gen_v8_3_6 activehdl/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_0_11 activehdl/axi_bram_ctrl_v4_0_11
vmap axi_protocol_converter_v2_1_13 activehdl/axi_protocol_converter_v2_1_13

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"D:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_common_vip_v1_0_0  -sv2k12 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v1_1_14  -sv2k12 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/a1b2/hdl/axi_protocol_checker_v1_1_vl_rfs.sv" \

vlog -work axi_vip_v1_0_2  -sv2k12 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl/axi_vip_v1_0_vl_rfs.sv" \

vlog -work axi_vip_v1_0_1  -sv2k12 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_15 -93 \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/cb07/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_11 -93 \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_processing_system7_0_50M_0/sim/system_rst_processing_system7_0_50M_0.vhd" \
"../../../bd/system/ip/system_axi_gpio_0_1/sim/system_axi_gpio_0_1.vhd" \
"../../../bd/system/ipshared/b329/hdl/led_ip_v1_0_S_AXI.vhd" \
"../../../bd/system/ipshared/b329/hdl/led_ip_v1_0.vhd" \
"../../../bd/system/ip/system_led_ip_0_0/sim/system_led_ip_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_13  -v2k5 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/55c0/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -93 \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_12  -v2k5 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/95b9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_14  -v2k5 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/f582/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/hdl/system.vhd" \

vlog -work blk_mem_gen_v8_3_6  -v2k5 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/4158/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_0_11 -93 \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/9183/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_bram_ctrl_0_0/sim/system_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../bd/system/ip/system_axi_bram_ctrl_0_bram_1/sim/system_axi_bram_ctrl_0_bram_1.v" \

vlog -work axi_protocol_converter_v2_1_13  -v2k5 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../../lab3.srcs/sources_1/bd/system/ipshared/f0ae/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/7e3a/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/2ad9/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/39ca/hdl/verilog" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/1d61/hdl" "+incdir+../../../../lab3.srcs/sources_1/bd/system/ipshared/6eb1/hdl" \
"../../../bd/system/ip/system_auto_pc_2/sim/system_auto_pc_2.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/ip/system_auto_pc_3/sim/system_auto_pc_3.v" \

vlog -work xil_defaultlib \
"glbl.v"

