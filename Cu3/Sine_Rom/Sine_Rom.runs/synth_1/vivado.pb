
v
Command: %s
53*	vivadotcl2E
1synth_design -top sine_wave -part xc7a35tfgg484-22default:defaultZ4-113h px 
:
Starting synth_design
149*	vivadotclZ4-321h px 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px 

0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px 
¤
%s*synth2
wStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 388.309 ; gain = 98.156
2default:defaulth px 
Ķ
synthesizing module '%s'638*oasys2
	sine_wave2default:default2W
AD:/FPGA thi/Cāu3/hinhsin_rom/hinhsin_rom.srcs/sources_1/new/123.v2default:default2
32default:default8@Z8-638h px 
Ü
synthesizing module '%s'638*oasys2!
Clock_divider2default:default2b
LD:/FPGA thi/Cāu2/clock_disp/clock_disp.srcs/sources_1/imports/new/chia_clk.v2default:default2
22default:default8@Z8-638h px 

%done synthesizing module '%s' (%s#%s)256*oasys2!
Clock_divider2default:default2
12default:default2
12default:default2b
LD:/FPGA thi/Cāu2/clock_disp/clock_disp.srcs/sources_1/imports/new/chia_clk.v2default:default2
22default:default8@Z8-256h px 
Ģ
synthesizing module '%s'638*oasys2
sine_rom2default:default2W
AD:/FPGA thi/Cāu3/hinhsin_rom/hinhsin_rom.srcs/sources_1/new/rom.v2default:default2
72default:default8@Z8-638h px 

%done synthesizing module '%s' (%s#%s)256*oasys2
sine_rom2default:default2
22default:default2
12default:default2W
AD:/FPGA thi/Cāu3/hinhsin_rom/hinhsin_rom.srcs/sources_1/new/rom.v2default:default2
72default:default8@Z8-256h px 

%done synthesizing module '%s' (%s#%s)256*oasys2
	sine_wave2default:default2
32default:default2
12default:default2W
AD:/FPGA thi/Cāu3/hinhsin_rom/hinhsin_rom.srcs/sources_1/new/123.v2default:default2
32default:default8@Z8-256h px 
~
!design %s has unconnected port %s3331*oasys2
sine_rom2default:default2
read_en2default:defaultZ8-3331h px 
y
!design %s has unconnected port %s3331*oasys2
sine_rom2default:default2
ce2default:defaultZ8-3331h px 
„
%s*synth2
xFinished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:06 . Memory (MB): peak = 440.414 ; gain = 150.262
2default:defaulth px 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
Æ
%s*synth2
Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:06 . Memory (MB): peak = 440.414 ; gain = 150.262
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
V
Loading part %s157*device2#
xc7a35tfgg484-22default:defaultZ21-403h px 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px 
>

Processing XDC Constraints
244*projectZ1-262h px 
=
Initializing timing engine
348*projectZ1-569h px 
§
Parsing XDC File [%s]
179*designutils2f
PD:/FPGA thi/Cāu3/hinhsin_rom/hinhsin_rom.srcs/sources_1/cstr/sine_wave_const.xdc2default:default8Z20-179h px 
°
Finished Parsing XDC File [%s]
178*designutils2f
PD:/FPGA thi/Cāu3/hinhsin_rom/hinhsin_rom.srcs/sources_1/cstr/sine_wave_const.xdc2default:default8Z20-178h px 

ŁImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2d
PD:/FPGA thi/Cāu3/hinhsin_rom/hinhsin_rom.srcs/sources_1/cstr/sine_wave_const.xdc2default:default2/
.Xil/sine_wave_propImpl.xdc2default:defaultZ1-236h px 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
782.6332default:default2
0.0002default:defaultZ17-268h px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
«
%s*synth2
~Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:18 . Memory (MB): peak = 782.633 ; gain = 492.480
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
J
%s
*synth22
Loading part: xc7a35tfgg484-2
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
ŗ
%s*synth2”
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:18 . Memory (MB): peak = 782.633 ; gain = 492.480
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
¾
%s*synth2„
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:18 . Memory (MB): peak = 782.633 ; gain = 492.480
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
¼
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2b
LD:/FPGA thi/Cāu2/clock_disp/clock_disp.srcs/sources_1/imports/new/chia_clk.v2default:default2
692default:default8@Z8-5818h px 
Ķ
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
DIVISOR2default:default2
262default:default2
252default:defaultZ8-5545h px 
š
+Unused sequential element %s was removed. 
4326*oasys2
counter_reg2default:default2b
LD:/FPGA thi/Cāu2/clock_disp/clock_disp.srcs/sources_1/imports/new/chia_clk.v2default:default2
142default:default8@Z8-6014h px 
š
+Unused sequential element %s was removed. 
4326*oasys2
DIVISOR_reg2default:default2b
LD:/FPGA thi/Cāu2/clock_disp/clock_disp.srcs/sources_1/imports/new/chia_clk.v2default:default2
672default:default8@Z8-6014h px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
Æ
%s*synth2
Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:18 . Memory (MB): peak = 782.633 ; gain = 492.480
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input     26 Bit       Adders := 2     
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input     26 Bit        Muxes := 2     
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
 
>
%s
*synth2&
Module sine_wave 
2default:defaulth p
x
 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
 
B
%s
*synth2*
Module Clock_divider 
2default:defaulth p
x
 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input     26 Bit       Adders := 2     
2default:defaulth p
x
 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
 
Z
%s
*synth2B
.	               26 Bit    Registers := 2     
2default:defaulth p
x
 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input     26 Bit        Muxes := 2     
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 

%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
Ś
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2(
clk_div_inst/DIVISOR2default:default2
262default:default2
252default:defaultZ8-5545h px 
Ķ
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
p_0_out2default:default2
262default:default2
252default:defaultZ8-5545h px 
ż
+Unused sequential element %s was removed. 
4326*oasys2,
clk_div_inst/DIVISOR_reg2default:default2b
LD:/FPGA thi/Cāu2/clock_disp/clock_disp.srcs/sources_1/imports/new/chia_clk.v2default:default2
672default:default8@Z8-6014h px 
ż
+Unused sequential element %s was removed. 
4326*oasys2,
clk_div_inst/counter_reg2default:default2b
LD:/FPGA thi/Cāu2/clock_disp/clock_disp.srcs/sources_1/imports/new/chia_clk.v2default:default2
142default:default8@Z8-6014h px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
»
%s*synth2¢
Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:19 . Memory (MB): peak = 782.633 ; gain = 492.480
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
±
%s*synth2
---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px 
2
%s*synth2

ROM:
2default:defaulth px 
q
%s*synth2Y
E+------------+--------------------+---------------+----------------+
2default:defaulth px 
r
%s*synth2Z
F|Module Name | RTL Object         | Depth x Width | Implemented As | 
2default:defaulth px 
q
%s*synth2Y
E+------------+--------------------+---------------+----------------+
2default:defaulth px 
r
%s*synth2Z
F|sine_rom    | data               | 32x8          | LUT            | 
2default:defaulth px 
r
%s*synth2Z
F|sine_wave   | sine_rom_inst/data | 32x8          | LUT            | 
2default:defaulth px 
r
%s*synth2Z
F+------------+--------------------+---------------+----------------+

2default:defaulth px 
“
%s*synth2
---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
¶
%s*synth2
Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:27 . Memory (MB): peak = 782.633 ; gain = 492.480
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
©
%s*synth2
|Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:27 . Memory (MB): peak = 796.203 ; gain = 506.051
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
Ø
%s*synth2
{Finished Technology Mapping : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 797.941 ; gain = 507.789
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
¢
%s*synth2
uFinished IO Insertion : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 797.941 ; gain = 507.789
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
³
%s*synth2
Finished Renaming Generated Instances : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 797.941 ; gain = 507.789
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
°
%s*synth2
Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 797.941 ; gain = 507.789
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
Æ
%s*synth2
Finished Renaming Generated Ports : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 797.941 ; gain = 507.789
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
±
%s*synth2
Finished Handling Custom Attributes : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 797.941 ; gain = 507.789
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
®
%s*synth2
Finished Renaming Generated Nets : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 797.941 ; gain = 507.789
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px 
D
%s*synth2,
+------+-------+------+
2default:defaulth px 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px 
D
%s*synth2,
+------+-------+------+
2default:defaulth px 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px 
D
%s*synth2,
|2     |CARRY4 |    43|
2default:defaulth px 
D
%s*synth2,
|3     |LUT1   |    31|
2default:defaulth px 
D
%s*synth2,
|4     |LUT2   |    30|
2default:defaulth px 
D
%s*synth2,
|5     |LUT3   |    81|
2default:defaulth px 
D
%s*synth2,
|6     |LUT4   |    66|
2default:defaulth px 
D
%s*synth2,
|7     |LUT5   |    12|
2default:defaulth px 
D
%s*synth2,
|8     |LUT6   |     2|
2default:defaulth px 
D
%s*synth2,
|9     |FDCE   |     5|
2default:defaulth px 
D
%s*synth2,
|10    |FDRE   |   108|
2default:defaulth px 
D
%s*synth2,
|11    |FDSE   |     1|
2default:defaulth px 
D
%s*synth2,
|12    |IBUF   |     4|
2default:defaulth px 
D
%s*synth2,
|13    |OBUF   |     8|
2default:defaulth px 
D
%s*synth2,
+------+-------+------+
2default:defaulth px 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
 
[
%s
*synth2C
/+------+---------------+--------------+------+
2default:defaulth p
x
 
[
%s
*synth2C
/|      |Instance       |Module        |Cells |
2default:defaulth p
x
 
[
%s
*synth2C
/+------+---------------+--------------+------+
2default:defaulth p
x
 
[
%s
*synth2C
/|1     |top            |              |   392|
2default:defaulth p
x
 
[
%s
*synth2C
/|2     |  clk_div_inst |Clock_divider |   361|
2default:defaulth p
x
 
[
%s
*synth2C
/+------+---------------+--------------+------+
2default:defaulth p
x
 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
Æ
%s*synth2
Finished Writing Synthesis Report : Time (s): cpu = 00:00:17 ; elapsed = 00:00:28 . Memory (MB): peak = 797.941 ; gain = 507.789
2default:defaulth px 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 4 warnings.
2default:defaulth p
x
 
«
%s
*synth2
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:10 ; elapsed = 00:00:21 . Memory (MB): peak = 797.941 ; gain = 165.570
2default:defaulth p
x
 
¬
%s
*synth2
Synthesis Optimization Complete : Time (s): cpu = 00:00:17 ; elapsed = 00:00:29 . Memory (MB): peak = 797.941 ; gain = 507.789
2default:defaulth p
x
 
B
 Translating synthesized netlist
350*projectZ1-571h px 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
472default:defaultZ29-17h px 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px 
Ę
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
222default:default2
62default:default2
02default:default2
02default:defaultZ4-41h px 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px 

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:192default:default2
00:00:322default:default2
797.9412default:default2
520.5352default:defaultZ17-268h px 
µ
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2P
<D:/FPGA thi/Cu3/Sine_Rom/Sine_Rom.runs/synth_1/sine_wave.dcp2default:defaultZ17-1381h px 

%s4*runtcl2|
hExecuting : report_utilization -file sine_wave_utilization_synth.rpt -pb sine_wave_utilization_synth.pb
2default:defaulth px 

sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.028 . Memory (MB): peak = 797.941 ; gain = 0.000
*commonh px 

Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon May 27 11:35:03 20242default:defaultZ17-206h px 


End Record