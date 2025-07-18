create_clock  -period 20 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports rstn]
set_property IOSTANDARD LVCMOS33 [get_ports up]
set_property IOSTANDARD LVCMOS33 [get_ports down]
set_property IOSTANDARD LVCMOS33 [get_ports {sin_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sin_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sin_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sin_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sin_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sin_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sin_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sin_out[7]}]

set_property PACKAGE_PIN D16 [get_ports {sin_out[0]}]
set_property PACKAGE_PIN F14 [get_ports {sin_out[1]}]
set_property PACKAGE_PIN E14 [get_ports {sin_out[2]}]
set_property PACKAGE_PIN D15 [get_ports {sin_out[3]}]
set_property PACKAGE_PIN B13 [get_ports {sin_out[4]}]
set_property PACKAGE_PIN A14 [get_ports {sin_out[5]}]
set_property PACKAGE_PIN C15 [get_ports {sin_out[6]}]
set_property PACKAGE_PIN A16 [get_ports {sin_out[7]}]

set_property PACKAGE_PIN Y18 [get_ports clk]
set_property PACKAGE_PIN M13 [get_ports rstn]
set_property PACKAGE_PIN K14 [get_ports up]
set_property PACKAGE_PIN K13 [get_ports down]