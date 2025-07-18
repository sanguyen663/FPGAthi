#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=D:/Vivado2017/SDK/2017.4/bin;D:/Vivado2017/Vivado/2017.4/ids_lite/ISE/bin/nt64;D:/Vivado2017/Vivado/2017.4/ids_lite/ISE/lib/nt64:D:/Vivado2017/Vivado/2017.4/bin
else
  PATH=D:/Vivado2017/SDK/2017.4/bin;D:/Vivado2017/Vivado/2017.4/ids_lite/ISE/bin/nt64;D:/Vivado2017/Vivado/2017.4/ids_lite/ISE/lib/nt64:D:/Vivado2017/Vivado/2017.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='C:/Users/user/Desktop/FPGA thi/Cu2/bai_3_thi/bai_3_thi.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .write_bitstream.begin.rst
EAStep vivado -log test_segment7_led.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source test_segment7_led.tcl -notrace


