
�
�No debug cores found in the current design.
Before running the implement_debug_core command, either use the Set Up Debug wizard (GUI mode)
or use the create_debug_core and connect_debug_core Tcl commands to insert debug cores into the design.
154*	chipscopeZ16-241h px� 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
	xc7vx485t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
	xc7vx485t2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1444.7272default:default2
0.0002default:defaultZ17-268h px� 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: eaffceda
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.004 . Memory (MB): peak = 1444.727 ; gain = 0.0002default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1444.7272default:default2
0.0002default:defaultZ17-268h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 160ec041a
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:05 . Memory (MB): peak = 1460.086 ; gain = 15.3592default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 18411a0ba
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:05 . Memory (MB): peak = 1460.086 ; gain = 15.3592default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 18411a0ba
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:05 . Memory (MB): peak = 1460.086 ; gain = 15.3592default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 18411a0ba
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:00:05 . Memory (MB): peak = 1460.086 ; gain = 15.3592default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
D
/Phase 2 Global Placement | Checksum: 16dd3cffa
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:07 ; elapsed = 00:00:06 . Memory (MB): peak = 1483.230 ; gain = 38.5042default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 16dd3cffa
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:07 ; elapsed = 00:00:06 . Memory (MB): peak = 1483.230 ; gain = 38.5042default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1abd1ffd9
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:07 ; elapsed = 00:00:06 . Memory (MB): peak = 1484.820 ; gain = 40.0942default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1fe19ad77
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:07 ; elapsed = 00:00:06 . Memory (MB): peak = 1484.820 ; gain = 40.0942default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1fe19ad77
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:07 ; elapsed = 00:00:06 . Memory (MB): peak = 1484.820 ; gain = 40.0942default:defaulth px� 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 17041dbf0
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 1513.527 ; gain = 68.8012default:defaulth px� 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 17041dbf0
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 1513.527 ; gain = 68.8012default:defaulth px� 
�

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 17041dbf0
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 1513.527 ; gain = 68.8012default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 17041dbf0
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 1513.527 ; gain = 68.8012default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
N
9Phase 4.1 Post Commit Optimization | Checksum: 17041dbf0
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 1513.527 ; gain = 68.8012default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 17041dbf0
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 1513.527 ; gain = 68.8012default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
F
1Phase 4.3 Placer Reporting | Checksum: 17041dbf0
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 1513.527 ; gain = 68.8012default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 1bfb4907a
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 1513.527 ; gain = 68.8012default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1bfb4907a
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 1513.527 ; gain = 68.8012default:defaulth px� 
>
)Ending Placer Task | Checksum: 13f580bf4
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 1513.527 ; gain = 68.8012default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
402default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:00:102default:default2
00:00:082default:default2
1513.5272default:default2
68.8012default:defaultZ17-268h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.1272default:default2
1513.5272default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2v
bC:/Users/admin/Desktop/serial_to_parallel/serial_to_parallel.runs/impl_1/serial2paralel_placed.dcp2default:defaultZ17-1381h px� 
i
%s4*runtcl2M
9Executing : report_io -file serial2paralel_io_placed.rpt
2default:defaulth px� 
�
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.130 . Memory (MB): peak = 1513.527 ; gain = 0.000
*commonh px� 
�
%s4*runtcl2�
tExecuting : report_utilization -file serial2paralel_utilization_placed.rpt -pb serial2paralel_utilization_placed.pb
2default:defaulth px� 
�
treport_utilization: Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.269 . Memory (MB): peak = 1513.527 ; gain = 0.000
*commonh px� 
�
%s4*runtcl2j
VExecuting : report_control_sets -verbose -file serial2paralel_control_sets_placed.rpt
2default:defaulth px� 
�
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.002 . Memory (MB): peak = 1513.527 ; gain = 0.000
*commonh px� 


End Record