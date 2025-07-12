############## clock and reset define##################
create_clock -period 20.000 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property PACKAGE_PIN Y18 [get_ports sys_clk]

set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property PACKAGE_PIN F20 [get_ports rst_n]
############## usb uart define########################
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx]
set_property PACKAGE_PIN G15 [get_ports uart_rx]

set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]
set_property PACKAGE_PIN G16 [get_ports uart_tx]

############## led define########################
set_property IOSTANDARD LVCMOS33 [get_ports led1]
set_property PACKAGE_PIN F19 [get_ports led1]

set_property IOSTANDARD LVCMOS33 [get_ports led2]
set_property PACKAGE_PIN E21 [get_ports led2]

set_property IOSTANDARD LVCMOS33 [get_ports led3]
set_property PACKAGE_PIN D20 [get_ports led3]
