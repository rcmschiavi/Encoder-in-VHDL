# Reading C:/intelFPGA_pro/17.0/modelsim_ase/tcl/vsim/pref.tcl
# do envia_serial_run_msim_rtl_vhdl.do
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Model Technology ModelSim - Intel FPGA Edition vmap 10.5c Lib Mapping Utility 2017.01 Jan 23 2017
# vmap work rtl_work 
# Copying C:/intelFPGA_pro/17.0/modelsim_ase/win32aloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
# 
# vcom -93 -work work {C:/github/Encoder/Transmissao_serial_Encoder/envia_serial.vhd}
# Model Technology ModelSim - Intel FPGA Edition vcom 10.5c Compiler 2017.01 Jan 23 2017
# Start time: 18:56:41 on Dec 02,2017
# vcom -reportprogress 300 -93 -work work C:/github/Encoder/Transmissao_serial_Encoder/envia_serial.vhd 
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package std_logic_arith
# -- Loading package STD_LOGIC_UNSIGNED
# -- Compiling entity envia_serial
# -- Compiling architecture comportamento of envia_serial
# End time: 18:56:41 on Dec 02,2017, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# 
# vcom -93 -work work {C:/github/Encoder/Transmissao_serial_Encoder/tb_envia_serial.vhd}
# Model Technology ModelSim - Intel FPGA Edition vcom 10.5c Compiler 2017.01 Jan 23 2017
# Start time: 18:56:41 on Dec 02,2017
# vcom -reportprogress 300 -93 -work work C:/github/Encoder/Transmissao_serial_Encoder/tb_envia_serial.vhd 
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Loading package std_logic_arith
# -- Loading package STD_LOGIC_UNSIGNED
# -- Compiling entity tb_envia_serial
# -- Compiling architecture tb of tb_envia_serial
# ** Warning: C:/github/Encoder/Transmissao_serial_Encoder/tb_envia_serial.vhd(12): (vcom-1246) Range 0 downto 7 is null.
# -- Loading entity envia_serial
# ** Error (suppressible): C:/github/Encoder/Transmissao_serial_Encoder/tb_envia_serial.vhd(18): (vcom-1272) Length of formal "dado" is 8; length of actual is 0.
# ** Error (suppressible): C:/github/Encoder/Transmissao_serial_Encoder/tb_envia_serial.vhd(35): (vcom-1272) Length of expected is 0; length of actual is 8.
# ** Error (suppressible): C:/github/Encoder/Transmissao_serial_Encoder/tb_envia_serial.vhd(41): (vcom-1272) Length of expected is 0; length of actual is 8.
# ** Error: C:/github/Encoder/Transmissao_serial_Encoder/tb_envia_serial.vhd(46): VHDL Compiler exiting
# End time: 18:56:41 on Dec 02,2017, Elapsed time: 0:00:00
# Errors: 4, Warnings: 1
# ** Error: C:/intelFPGA_pro/17.0/modelsim_ase/win32aloem/vcom failed.
# Error in macro ./envia_serial_run_msim_rtl_vhdl.do line 10
# C:/intelFPGA_pro/17.0/modelsim_ase/win32aloem/vcom failed.
#     while executing
# "vcom -93 -work work {C:/github/Encoder/Transmissao_serial_Encoder/tb_envia_serial.vhd}"
vsim work.envia_serial
# vsim work.envia_serial 
# Start time: 18:56:46 on Dec 02,2017
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.std_logic_arith(body)
# Loading ieee.std_logic_unsigned(body)
# Loading work.envia_serial(comportamento)
add wave -position end  sim:/envia_serial/clock
add wave -position end  sim:/envia_serial/dado
add wave -position end  sim:/envia_serial/estado
add wave -position 1  sim:/envia_serial/resetn
add wave -position 2  sim:/envia_serial/sendn
add wave -position 4  sim:/envia_serial/txd
force -freeze sim:/envia_serial/dado 10101011 0
force -freeze sim:/envia_serial/clock 1 0, 0 {5 ps} -r 10
force -freeze sim:/envia_serial/resetn 0 0
force -freeze sim:/envia_serial/sendn 0 0
run
force -freeze sim:/envia_serial/resetn 1 0
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
run -all
