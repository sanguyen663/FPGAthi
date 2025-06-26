############## NET - IOSTANDARD ##################
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
#############SPI Configurate Setting##################
############## clock and reset define##################
create_clock -period 10.000 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property PACKAGE_PIN V10 [get_ports sys_clk]

set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property PACKAGE_PIN F20 [get_ports rst_n]
##########################################################
set_property PACKAGE_PIN N22 [get_ports sda]
set_property PACKAGE_PIN M22 [get_ports scl]
set_property IOSTANDARD LVCMOS33 [get_ports sda]
set_property IOSTANDARD LVCMOS33 [get_ports scl]
#######################digital tube setting######################
set_property PACKAGE_PIN M2 [get_ports {SMG_Data[0]}]
set_property PACKAGE_PIN N4 [get_ports {SMG_Data[1]}]
set_property PACKAGE_PIN L5 [get_ports {SMG_Data[2]}]
set_property PACKAGE_PIN L4 [get_ports {SMG_Data[3]}]
set_property PACKAGE_PIN M16 [get_ports {SMG_Data[4]}]
set_property PACKAGE_PIN M17 [get_ports {SMG_Data[5]}]
#set_property PACKAGE_PIN L5 [get_ports {SMG_Data[6]}]
#set_property PACKAGE_PIN K5 [get_ports {SMG_Data[7]}]

set_property PACKAGE_PIN J5 [get_ports {Scan_Sig[0]}]
set_property PACKAGE_PIN M3 [get_ports {Scan_Sig[1]}]
set_property PACKAGE_PIN J6 [get_ports {Scan_Sig[2]}]
set_property PACKAGE_PIN H5 [get_ports {Scan_Sig[3]}]
set_property PACKAGE_PIN G4 [get_ports {Scan_Sig[4]}]
set_property PACKAGE_PIN K6 [get_ports {Scan_Sig[5]}]
set_property PACKAGE_PIN K3 [get_ports {Scan_Sig[6]}]
set_property PACKAGE_PIN H4 [get_ports {Scan_Sig[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {SMG_Data[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Scan_Sig[*]}]

set_property PULLUP true [get_ports sda]
set_property PULLUP true [get_ports scl]

#connect_debug_port u_ila_0/clk [get_nets [list clk_BUFG]]
#connect_debug_port dbg_hub/clk [get_nets clk_BUFG]


#create_debug_core u_ila_0 ila
#set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
#set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
#set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
#set_property C_DATA_DEPTH 4096 [get_debug_cores u_ila_0]
#set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
#set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
#set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
#set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
#set_property port_width 1 [get_debug_ports u_ila_0/clk]
#connect_debug_port u_ila_0/clk [get_nets [list sys_clk_IBUF_BUFG]]
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
#set_property port_width 19 [get_debug_ports u_ila_0/probe0]
#connect_debug_port u_ila_0/probe0 [get_nets [list {U1/dec[0]} {U1/dec[1]} {U1/dec[2]} {U1/dec[3]} {U1/dec[4]} {U1/dec[5]} {U1/dec[6]} {U1/dec[7]} {U1/dec[8]} {U1/dec[9]} {U1/dec[10]} {U1/dec[11]} {U1/dec[12]} {U1/dec[13]} {U1/dec[14]} {U1/dec[15]} {U1/dec[16]} {U1/dec[17]} {U1/dec[18]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
#set_property port_width 16 [get_debug_ports u_ila_0/probe1]
#connect_debug_port u_ila_0/probe1 [get_nets [list {U0/read_data[0]} {U0/read_data[1]} {U0/read_data[2]} {U0/read_data[3]} {U0/read_data[4]} {U0/read_data[5]} {U0/read_data[6]} {U0/read_data[7]} {U0/read_data[8]} {U0/read_data[9]} {U0/read_data[10]} {U0/read_data[11]} {U0/read_data[12]} {U0/read_data[13]} {U0/read_data[14]} {U0/read_data[15]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
#set_property port_width 4 [get_debug_ports u_ila_0/probe2]
#connect_debug_port u_ila_0/probe2 [get_nets [list {U0/cstate[0]} {U0/cstate[1]} {U0/cstate[2]} {U0/cstate[3]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
#set_property port_width 1 [get_debug_ports u_ila_0/probe3]
#connect_debug_port u_ila_0/probe3 [get_nets [list clk]]
#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets sys_clk_IBUF_BUFG]


set_property SEVERITY {Warning} [get_drc_checks UCIO-1]