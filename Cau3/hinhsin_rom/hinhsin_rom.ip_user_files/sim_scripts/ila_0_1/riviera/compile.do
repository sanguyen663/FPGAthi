vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hinhsin_rom.srcs/sources_1/ip/ila_0_1/hdl/verilog" "+incdir+../../../../hinhsin_rom.srcs/sources_1/ip/ila_0_1/hdl/verilog" \
"../../../../hinhsin_rom.srcs/sources_1/ip/ila_0_1/sim/ila_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

