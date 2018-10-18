############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project SC_IO
set_top iosc
add_files SC_IO/ios.h
add_files SC_IO/ios.cpp
add_files -tb SC_IO/tb_ios.cpp
add_files -tb SC_IO/ios_driver.h
add_files -tb SC_IO/ios_driver.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./SC_IO/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl systemc
export_design -format ip_catalog
