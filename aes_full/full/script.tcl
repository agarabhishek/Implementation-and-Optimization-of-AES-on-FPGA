############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project aes_full
set_top AES_Encrypt
add_files source/AESfunctions.cpp
add_files source/AESfunctions.h
add_files source/AEStables.h
add_files -tb source/test_AES_full.cpp
open_solution "full"
set_part {xc7a200tfbg676-2}
create_clock -period 4.1 -name default
set_clock_uncertainty 0
source "./aes_full/full/directives.tcl"
csim_design -clean -O
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
