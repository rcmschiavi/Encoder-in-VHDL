# Reading C:/altera/13.0sp1/modelsim_ase/tcl/vsim/pref.tcl 
# do Encoder_vhdl_run_msim_rtl_vhdl.do 
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Copying C:\altera\13.0sp1\modelsim_ase\win32aloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
# ** Warning: Copied C:\altera\13.0sp1\modelsim_ase\win32aloem/../modelsim.ini to modelsim.ini.
#          Updated modelsim.ini.
# 
# vcom -93 -work work {C:/Users/ELD_1/Desktop/Encoder/Encoder_vhdl.vhd}
# Model Technology ModelSim ALTERA vcom 10.1d Compiler 2012.11 Nov  2 2012
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package std_logic_arith
# -- Loading package STD_LOGIC_UNSIGNED
# -- Loading package NUMERIC_STD
# -- Compiling entity encoder_vhdl
# -- Compiling architecture encoder of encoder_vhdl
# ** Warning: [9] C:/Users/ELD_1/Desktop/Encoder/Encoder_vhdl.vhd(25): (vcom-1013) Initial value of "a_ant" depends on value of signal "A".
# 
# ** Warning: [9] C:/Users/ELD_1/Desktop/Encoder/Encoder_vhdl.vhd(26): (vcom-1013) Initial value of "b_ant" depends on value of signal "B".
# 
# 
vsim work.encoder_vhdl
# vsim work.encoder_vhdl 
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.std_logic_arith(body)
# Loading ieee.std_logic_unsigned(body)
# Loading ieee.numeric_std(body)
# Loading work.encoder_vhdl(encoder)
add wave -position end  sim:/encoder_vhdl/A
add wave -position end  sim:/encoder_vhdl/B
add wave -position end  sim:/encoder_vhdl/clk
add wave -position end  sim:/encoder_vhdl/dir
add wave -position end  sim:/encoder_vhdl/dir_si
add wave -position end  sim:/encoder_vhdl/move
add wave -position end  sim:/encoder_vhdl/moves
force -freeze sim:/encoder_vhdl/clk 1 0, 0 {5 ps} -r 10
force -freeze sim:/encoder_vhdl/A 1 0, 0 {250 ps} -r 500
force -freeze sim:/encoder_vhdl/B 0 0
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/encoder_vhdl/B 1 0, 0 {250 ps} -r 500
run
run
run
run
force -freeze sim:/encoder_vhdl/A 0 0
force -freeze sim:/encoder_vhdl/B 0 0
force -freeze sim:/encoder_vhdl/B 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/encoder_vhdl/A 1 0, 0 {250 ps} -r 500
run
run
run
run
run
force -freeze sim:/encoder_vhdl/B 0 0
run
run
run
run
add wave -position end  sim:/encoder_vhdl/B
noforce sim:/encoder_vhdl/B
run
force -freeze sim:/encoder_vhdl/B 1 0
force -freeze sim:/encoder_vhdl/B 0 0
run
run
run
run
run
run
run
run
force -freeze sim:/encoder_vhdl/B 1 0, 0 {250 ps} -r 500
run
run
run
run
run
run
