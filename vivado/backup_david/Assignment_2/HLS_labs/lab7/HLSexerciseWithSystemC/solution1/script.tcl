############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLSexerciseWithSystemC
set_top iosc
add_files SC_IO/ios.cpp
add_files SC_IO/ios.h
add_files -tb SC_IO/ios_driver.cpp
add_files -tb SC_IO/ios_driver.h
add_files -tb SC_IO/tb_ios.cpp
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./HLSexerciseWithSystemC/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -tool xsim
export_design -rtl verilog -format ip_catalog
