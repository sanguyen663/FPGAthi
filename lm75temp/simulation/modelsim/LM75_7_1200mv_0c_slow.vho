-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "09/05/2022 12:03:56"

-- 
-- Device: Altera EP4CE6E22C7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LM75 IS
    PORT (
	CLK : IN std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic;
	SEG : OUT std_logic_vector(7 DOWNTO 0);
	SCL : INOUT std_logic;
	SDA : INOUT std_logic;
	DIGIT : OUT std_logic_vector(3 DOWNTO 0);
	rst_n : IN std_logic
	);
END LM75;

-- Design Ports Information
-- LED1	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED2	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED3	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED4	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LM75 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL ww_LED4 : std_logic;
SIGNAL ww_SEG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DIGIT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rst_n : std_logic;
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \display|Add0~2_combout\ : std_logic;
SIGNAL \display|Add0~8_combout\ : std_logic;
SIGNAL \display|Add0~18_combout\ : std_logic;
SIGNAL \display|Add0~30_combout\ : std_logic;
SIGNAL \display|Add0~34_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \I2C|Add3~0_combout\ : std_logic;
SIGNAL \I2C|Add3~6_combout\ : std_logic;
SIGNAL \I2C|Add3~8_combout\ : std_logic;
SIGNAL \I2C|Add3~12_combout\ : std_logic;
SIGNAL \I2C|Add3~14_combout\ : std_logic;
SIGNAL \I2C|Add3~16_combout\ : std_logic;
SIGNAL \I2C|Add0~0_combout\ : std_logic;
SIGNAL \I2C|Add0~2_combout\ : std_logic;
SIGNAL \I2C|Add0~4_combout\ : std_logic;
SIGNAL \I2C|counter[0]~8_combout\ : std_logic;
SIGNAL \I2C|counter[0]~9\ : std_logic;
SIGNAL \I2C|counter[1]~10_combout\ : std_logic;
SIGNAL \I2C|counter[1]~11\ : std_logic;
SIGNAL \I2C|counter[2]~12_combout\ : std_logic;
SIGNAL \I2C|counter[2]~13\ : std_logic;
SIGNAL \I2C|counter[3]~14_combout\ : std_logic;
SIGNAL \I2C|counter[3]~15\ : std_logic;
SIGNAL \I2C|counter[4]~17_combout\ : std_logic;
SIGNAL \I2C|counter[4]~18\ : std_logic;
SIGNAL \I2C|counter[5]~19_combout\ : std_logic;
SIGNAL \I2C|counter[5]~20\ : std_logic;
SIGNAL \I2C|counter[6]~21_combout\ : std_logic;
SIGNAL \I2C|counter[6]~22\ : std_logic;
SIGNAL \I2C|counter[7]~23_combout\ : std_logic;
SIGNAL \display|Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \display|Selector4~0_combout\ : std_logic;
SIGNAL \display|Selector4~1_combout\ : std_logic;
SIGNAL \display|prescaler~1_combout\ : std_logic;
SIGNAL \display|prescaler~4_combout\ : std_logic;
SIGNAL \display|prescaler~6_combout\ : std_logic;
SIGNAL \timer2_reg~8_combout\ : std_logic;
SIGNAL \timer2_reg~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[30]~56_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[33]~58_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~7_combout\ : std_logic;
SIGNAL \I2C|Selector68~2_combout\ : std_logic;
SIGNAL \I2C|stop_done~q\ : std_logic;
SIGNAL \I2C|Selector68~3_combout\ : std_logic;
SIGNAL \I2C|Selector68~4_combout\ : std_logic;
SIGNAL \I2C|wstate.000000000~q\ : std_logic;
SIGNAL \I2C|Selector68~5_combout\ : std_logic;
SIGNAL \I2C|Selector68~6_combout\ : std_logic;
SIGNAL \I2C|LessThan2~1_combout\ : std_logic;
SIGNAL \I2C|LessThan2~2_combout\ : std_logic;
SIGNAL \I2C|LessThan2~3_combout\ : std_logic;
SIGNAL \I2C|Selector68~7_combout\ : std_logic;
SIGNAL \I2C|SCL~8_combout\ : std_logic;
SIGNAL \I2C|state~33_combout\ : std_logic;
SIGNAL \I2C|SCL~9_combout\ : std_logic;
SIGNAL \I2C|Selector68~8_combout\ : std_logic;
SIGNAL \I2C|wstate.000000001~q\ : std_logic;
SIGNAL \I2C|WideOr4~0_combout\ : std_logic;
SIGNAL \I2C|Selector68~11_combout\ : std_logic;
SIGNAL \I2C|Selector125~0_combout\ : std_logic;
SIGNAL \I2C|SDA~1_combout\ : std_logic;
SIGNAL \I2C|Selector127~1_combout\ : std_logic;
SIGNAL \I2C|Selector127~2_combout\ : std_logic;
SIGNAL \I2C|Selector127~3_combout\ : std_logic;
SIGNAL \I2C|state.000000001~q\ : std_logic;
SIGNAL \I2C|state.000000010~q\ : std_logic;
SIGNAL \I2C|state.000000011~q\ : std_logic;
SIGNAL \I2C|state.000000100~q\ : std_logic;
SIGNAL \I2C|Selector38~0_combout\ : std_logic;
SIGNAL \I2C|state.000000101~q\ : std_logic;
SIGNAL \I2C|Selector38~1_combout\ : std_logic;
SIGNAL \I2C|Selector38~2_combout\ : std_logic;
SIGNAL \I2C|Decoder0~0_combout\ : std_logic;
SIGNAL \I2C|Decoder0~1_combout\ : std_logic;
SIGNAL \I2C|Decoder0~2_combout\ : std_logic;
SIGNAL \I2C|Selector38~3_combout\ : std_logic;
SIGNAL \I2C|Decoder0~3_combout\ : std_logic;
SIGNAL \I2C|Decoder0~4_combout\ : std_logic;
SIGNAL \I2C|Selector39~0_combout\ : std_logic;
SIGNAL \I2C|Decoder0~5_combout\ : std_logic;
SIGNAL \I2C|Selector40~0_combout\ : std_logic;
SIGNAL \I2C|Decoder0~6_combout\ : std_logic;
SIGNAL \I2C|Selector41~0_combout\ : std_logic;
SIGNAL \I2C|Decoder0~7_combout\ : std_logic;
SIGNAL \I2C|Selector42~0_combout\ : std_logic;
SIGNAL \I2C|Decoder0~8_combout\ : std_logic;
SIGNAL \I2C|Selector43~0_combout\ : std_logic;
SIGNAL \I2C|Decoder0~9_combout\ : std_logic;
SIGNAL \I2C|Selector44~0_combout\ : std_logic;
SIGNAL \I2C|Decoder0~10_combout\ : std_logic;
SIGNAL \I2C|Selector45~0_combout\ : std_logic;
SIGNAL \I2C|ring_buffer~7_combout\ : std_logic;
SIGNAL \I2C|state_read~39_combout\ : std_logic;
SIGNAL \I2C|state_read~41_combout\ : std_logic;
SIGNAL \I2C|state_read~42_combout\ : std_logic;
SIGNAL \I2C|state_read~43_combout\ : std_logic;
SIGNAL \I2C|state_read~45_combout\ : std_logic;
SIGNAL \I2C|state_read~47_combout\ : std_logic;
SIGNAL \I2C|state_read~50_combout\ : std_logic;
SIGNAL \I2C|wstate.000000000~0_combout\ : std_logic;
SIGNAL \I2C|delay_reg~0_combout\ : std_logic;
SIGNAL \I2C|delay_reg~3_combout\ : std_logic;
SIGNAL \I2C|delay_reg~4_combout\ : std_logic;
SIGNAL \I2C|delay_reg~8_combout\ : std_logic;
SIGNAL \I2C|delay_reg~9_combout\ : std_logic;
SIGNAL \I2C|delay_reg~10_combout\ : std_logic;
SIGNAL \I2C|delay_reg~11_combout\ : std_logic;
SIGNAL \I2C|delay_reg~13_combout\ : std_logic;
SIGNAL \I2C|delay_reg~17_combout\ : std_logic;
SIGNAL \I2C|state_read~59_combout\ : std_logic;
SIGNAL \I2C|wbuffer[7]~1_combout\ : std_logic;
SIGNAL \I2C|wbuffer[7]~2_combout\ : std_logic;
SIGNAL \I2C|wbuffer[7]~3_combout\ : std_logic;
SIGNAL \I2C|wbuffer[7]~4_combout\ : std_logic;
SIGNAL \I2C|state~37_combout\ : std_logic;
SIGNAL \I2C|state~38_combout\ : std_logic;
SIGNAL \I2C|state~39_combout\ : std_logic;
SIGNAL \I2C|state~40_combout\ : std_logic;
SIGNAL \I2C|counter[7]~16_combout\ : std_logic;
SIGNAL \I2C|timer4_reg~0_combout\ : std_logic;
SIGNAL \I2C|timer4_reg~1_combout\ : std_logic;
SIGNAL \I2C|timer4_reg~2_combout\ : std_logic;
SIGNAL \I2C|timer4_reg~7_combout\ : std_logic;
SIGNAL \I2C|state_write.000000010~q\ : std_logic;
SIGNAL \I2C|Selector25~0_combout\ : std_logic;
SIGNAL \I2C|Selector25~1_combout\ : std_logic;
SIGNAL \I2C|state_write.000000001~q\ : std_logic;
SIGNAL \I2C|state_write.000000100~q\ : std_logic;
SIGNAL \I2C|Selector26~0_combout\ : std_logic;
SIGNAL \I2C|state_write.000000101~q\ : std_logic;
SIGNAL \I2C|Selector26~1_combout\ : std_logic;
SIGNAL \I2C|Selector26~2_combout\ : std_logic;
SIGNAL \I2C|Selector4~0_combout\ : std_logic;
SIGNAL \I2C|shift_var[1]~0_combout\ : std_logic;
SIGNAL \I2C|Selector24~0_combout\ : std_logic;
SIGNAL \I2C|Selector26~3_combout\ : std_logic;
SIGNAL \I2C|Selector26~4_combout\ : std_logic;
SIGNAL \I2C|Selector23~0_combout\ : std_logic;
SIGNAL \I2C|state_write~37_combout\ : std_logic;
SIGNAL \I2C|Selector8~0_combout\ : std_logic;
SIGNAL \I2C|state_write~38_combout\ : std_logic;
SIGNAL \I2C|state_write~39_combout\ : std_logic;
SIGNAL \timer2_reg~11_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \I2C|Selector118~2_combout\ : std_logic;
SIGNAL \I2C|state_read~63_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~66_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[23]~67_combout\ : std_logic;
SIGNAL \hundreds[0]~0_combout\ : std_logic;
SIGNAL \thousands[0]~0_combout\ : std_logic;
SIGNAL \I2C|state.000000001~0_combout\ : std_logic;
SIGNAL \SCL~input_o\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \I2C|wstate.000000001~feeder_combout\ : std_logic;
SIGNAL \I2C|data[0]~feeder_combout\ : std_logic;
SIGNAL \SCL~output_o\ : std_logic;
SIGNAL \SDA~output_o\ : std_logic;
SIGNAL \LED1~output_o\ : std_logic;
SIGNAL \LED2~output_o\ : std_logic;
SIGNAL \LED3~output_o\ : std_logic;
SIGNAL \LED4~output_o\ : std_logic;
SIGNAL \SEG[0]~output_o\ : std_logic;
SIGNAL \SEG[1]~output_o\ : std_logic;
SIGNAL \SEG[2]~output_o\ : std_logic;
SIGNAL \SEG[3]~output_o\ : std_logic;
SIGNAL \SEG[4]~output_o\ : std_logic;
SIGNAL \SEG[5]~output_o\ : std_logic;
SIGNAL \SEG[6]~output_o\ : std_logic;
SIGNAL \SEG[7]~output_o\ : std_logic;
SIGNAL \DIGIT[0]~output_o\ : std_logic;
SIGNAL \DIGIT[1]~output_o\ : std_logic;
SIGNAL \DIGIT[2]~output_o\ : std_logic;
SIGNAL \DIGIT[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \I2C|Add3~32_combout\ : std_logic;
SIGNAL \I2C|delay_reg~7_combout\ : std_logic;
SIGNAL \I2C|Add0~1\ : std_logic;
SIGNAL \I2C|Add0~3\ : std_logic;
SIGNAL \I2C|Add0~5\ : std_logic;
SIGNAL \I2C|Add0~6_combout\ : std_logic;
SIGNAL \I2C|Add0~14_combout\ : std_logic;
SIGNAL \I2C|LessThan0~1_combout\ : std_logic;
SIGNAL \I2C|timer4_reg~3_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \I2C|Add0~7\ : std_logic;
SIGNAL \I2C|Add0~8_combout\ : std_logic;
SIGNAL \I2C|LessThan0~0_combout\ : std_logic;
SIGNAL \I2C|timer4_reg~4_combout\ : std_logic;
SIGNAL \I2C|Add0~9\ : std_logic;
SIGNAL \I2C|Add0~10_combout\ : std_logic;
SIGNAL \I2C|timer4_reg~5_combout\ : std_logic;
SIGNAL \I2C|Add0~11\ : std_logic;
SIGNAL \I2C|Add0~12_combout\ : std_logic;
SIGNAL \I2C|timer4_reg~6_combout\ : std_logic;
SIGNAL \I2C|Add0~13\ : std_logic;
SIGNAL \I2C|Add0~15\ : std_logic;
SIGNAL \I2C|Add0~16_combout\ : std_logic;
SIGNAL \I2C|timer4_reg~8_combout\ : std_logic;
SIGNAL \I2C|Add0~17\ : std_logic;
SIGNAL \I2C|Add0~18_combout\ : std_logic;
SIGNAL \I2C|LessThan0~2_combout\ : std_logic;
SIGNAL \I2C|timer4_flag~q\ : std_logic;
SIGNAL \I2C|delay_reg[26]~1_combout\ : std_logic;
SIGNAL \I2C|delay_reg~14_combout\ : std_logic;
SIGNAL \I2C|Add3~1\ : std_logic;
SIGNAL \I2C|Add3~2_combout\ : std_logic;
SIGNAL \I2C|delay_reg~16_combout\ : std_logic;
SIGNAL \I2C|Add3~3\ : std_logic;
SIGNAL \I2C|Add3~4_combout\ : std_logic;
SIGNAL \I2C|delay_reg~15_combout\ : std_logic;
SIGNAL \I2C|Add3~5\ : std_logic;
SIGNAL \I2C|Add3~7\ : std_logic;
SIGNAL \I2C|Add3~9\ : std_logic;
SIGNAL \I2C|Add3~10_combout\ : std_logic;
SIGNAL \I2C|delay_reg~12_combout\ : std_logic;
SIGNAL \I2C|Add3~11\ : std_logic;
SIGNAL \I2C|Add3~13\ : std_logic;
SIGNAL \I2C|Add3~15\ : std_logic;
SIGNAL \I2C|Add3~17\ : std_logic;
SIGNAL \I2C|Add3~19\ : std_logic;
SIGNAL \I2C|Add3~21\ : std_logic;
SIGNAL \I2C|Add3~22_combout\ : std_logic;
SIGNAL \I2C|delay_reg~6_combout\ : std_logic;
SIGNAL \I2C|Add3~23\ : std_logic;
SIGNAL \I2C|Add3~24_combout\ : std_logic;
SIGNAL \I2C|delay_reg~5_combout\ : std_logic;
SIGNAL \I2C|Add3~25\ : std_logic;
SIGNAL \I2C|Add3~27\ : std_logic;
SIGNAL \I2C|Add3~29\ : std_logic;
SIGNAL \I2C|Add3~30_combout\ : std_logic;
SIGNAL \I2C|delay_reg~2_combout\ : std_logic;
SIGNAL \I2C|Add3~31\ : std_logic;
SIGNAL \I2C|Add3~33\ : std_logic;
SIGNAL \I2C|Add3~34_combout\ : std_logic;
SIGNAL \I2C|Add3~18_combout\ : std_logic;
SIGNAL \I2C|Add3~26_combout\ : std_logic;
SIGNAL \I2C|Add3~28_combout\ : std_logic;
SIGNAL \I2C|LessThan2~0_combout\ : std_logic;
SIGNAL \I2C|Add3~20_combout\ : std_logic;
SIGNAL \I2C|LessThan2~4_combout\ : std_logic;
SIGNAL \I2C|LessThan2~5_combout\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \I2C|state_ack.000000000~0_combout\ : std_logic;
SIGNAL \I2C|state_read~40_combout\ : std_logic;
SIGNAL \I2C|Selector84~0_combout\ : std_logic;
SIGNAL \I2C|done~q\ : std_logic;
SIGNAL \I2C|done~0_combout\ : std_logic;
SIGNAL \I2C|Selector80~0_combout\ : std_logic;
SIGNAL \I2C|Selector80~1_combout\ : std_logic;
SIGNAL \I2C|ack_done~q\ : std_logic;
SIGNAL \I2C|state_ack~14_combout\ : std_logic;
SIGNAL \I2C|state_ack.000000000~q\ : std_logic;
SIGNAL \I2C|state_ack.000000001~0_combout\ : std_logic;
SIGNAL \I2C|state_ack.000000001~q\ : std_logic;
SIGNAL \I2C|state_ack.000000010~feeder_combout\ : std_logic;
SIGNAL \I2C|state_ack.000000010~q\ : std_logic;
SIGNAL \I2C|state_read~58_combout\ : std_logic;
SIGNAL \I2C|state_start.000000000~0_combout\ : std_logic;
SIGNAL \I2C|state_start~17_combout\ : std_logic;
SIGNAL \I2C|state_start.000000000~q\ : std_logic;
SIGNAL \I2C|state_start.000000001~0_combout\ : std_logic;
SIGNAL \I2C|state_start.000000001~q\ : std_logic;
SIGNAL \I2C|state_start.000000010~q\ : std_logic;
SIGNAL \I2C|state_start.000000011~feeder_combout\ : std_logic;
SIGNAL \I2C|state_start.000000011~q\ : std_logic;
SIGNAL \I2C|write_done~0_combout\ : std_logic;
SIGNAL \I2C|wdone~1_combout\ : std_logic;
SIGNAL \I2C|state_write~35_combout\ : std_logic;
SIGNAL \I2C|state_write.000000011~q\ : std_logic;
SIGNAL \I2C|Selector6~0_combout\ : std_logic;
SIGNAL \I2C|wdone~q\ : std_logic;
SIGNAL \I2C|state_write~40_combout\ : std_logic;
SIGNAL \I2C|state_write.000000110~q\ : std_logic;
SIGNAL \I2C|state_write~41_combout\ : std_logic;
SIGNAL \I2C|state_write.000000111~q\ : std_logic;
SIGNAL \I2C|state_write~36_combout\ : std_logic;
SIGNAL \I2C|state_write.000001000~q\ : std_logic;
SIGNAL \I2C|state_write~34_combout\ : std_logic;
SIGNAL \I2C|state_write.000001001~q\ : std_logic;
SIGNAL \I2C|write_done~1_combout\ : std_logic;
SIGNAL \I2C|write_done~2_combout\ : std_logic;
SIGNAL \I2C|write_done~q\ : std_logic;
SIGNAL \I2C|wdone~0_combout\ : std_logic;
SIGNAL \I2C|Selector127~9_combout\ : std_logic;
SIGNAL \I2C|wstate~14_combout\ : std_logic;
SIGNAL \I2C|wstate.000000010~q\ : std_logic;
SIGNAL \I2C|Selector7~0_combout\ : std_logic;
SIGNAL \I2C|state_read~44_combout\ : std_logic;
SIGNAL \I2C|state_read~60_combout\ : std_logic;
SIGNAL \I2C|state_read~46_combout\ : std_logic;
SIGNAL \I2C|state_read~61_combout\ : std_logic;
SIGNAL \I2C|state_read.000000011~q\ : std_logic;
SIGNAL \I2C|state_read.000000100~feeder_combout\ : std_logic;
SIGNAL \I2C|state_no_ack.000000000~0_combout\ : std_logic;
SIGNAL \I2C|state_shift.000000000~0_combout\ : std_logic;
SIGNAL \I2C|ring_buffer[7]~8_combout\ : std_logic;
SIGNAL \I2C|state.000000000~0_combout\ : std_logic;
SIGNAL \I2C|state~34_combout\ : std_logic;
SIGNAL \I2C|state.000000000~q\ : std_logic;
SIGNAL \I2C|state_shift~19_combout\ : std_logic;
SIGNAL \I2C|state_shift.000000000~q\ : std_logic;
SIGNAL \I2C|state_shift.000000001~0_combout\ : std_logic;
SIGNAL \I2C|state_shift.000000001~q\ : std_logic;
SIGNAL \I2C|state_shift.000000010~feeder_combout\ : std_logic;
SIGNAL \I2C|state_shift.000000010~q\ : std_logic;
SIGNAL \I2C|state_shift.000000011~feeder_combout\ : std_logic;
SIGNAL \I2C|state_shift.000000011~q\ : std_logic;
SIGNAL \I2C|state_shift.000000100~q\ : std_logic;
SIGNAL \I2C|state~35_combout\ : std_logic;
SIGNAL \I2C|state~41_combout\ : std_logic;
SIGNAL \I2C|state.000000110~q\ : std_logic;
SIGNAL \I2C|state~42_combout\ : std_logic;
SIGNAL \I2C|state.000000111~q\ : std_logic;
SIGNAL \I2C|state~43_combout\ : std_logic;
SIGNAL \I2C|state.000001000~q\ : std_logic;
SIGNAL \I2C|state~36_combout\ : std_logic;
SIGNAL \I2C|state.000001001~q\ : std_logic;
SIGNAL \I2C|Selector117~2_combout\ : std_logic;
SIGNAL \I2C|Selector117~3_combout\ : std_logic;
SIGNAL \I2C|no_ack_done~q\ : std_logic;
SIGNAL \I2C|state_no_ack~14_combout\ : std_logic;
SIGNAL \I2C|state_no_ack.000000000~q\ : std_logic;
SIGNAL \I2C|state_no_ack.000000001~0_combout\ : std_logic;
SIGNAL \I2C|state_no_ack.000000001~q\ : std_logic;
SIGNAL \I2C|state_no_ack.000000010~feeder_combout\ : std_logic;
SIGNAL \I2C|state_no_ack.000000010~q\ : std_logic;
SIGNAL \I2C|state_read~54_combout\ : std_logic;
SIGNAL \I2C|state_read~55_combout\ : std_logic;
SIGNAL \I2C|state_read~56_combout\ : std_logic;
SIGNAL \I2C|state_read~38_combout\ : std_logic;
SIGNAL \I2C|state_read~57_combout\ : std_logic;
SIGNAL \I2C|state_read.000000100~q\ : std_logic;
SIGNAL \I2C|state_read.000000101~feeder_combout\ : std_logic;
SIGNAL \I2C|state_read.000000101~q\ : std_logic;
SIGNAL \I2C|state_read.000000110~feeder_combout\ : std_logic;
SIGNAL \I2C|state_read.000000110~q\ : std_logic;
SIGNAL \I2C|state_stop.000000000~0_combout\ : std_logic;
SIGNAL \I2C|state_stop~17_combout\ : std_logic;
SIGNAL \I2C|state_stop.000000000~q\ : std_logic;
SIGNAL \I2C|state_stop.000000001~0_combout\ : std_logic;
SIGNAL \I2C|state_stop.000000001~q\ : std_logic;
SIGNAL \I2C|state_stop.000000010~q\ : std_logic;
SIGNAL \I2C|state_stop.000000011~q\ : std_logic;
SIGNAL \I2C|state_read~51_combout\ : std_logic;
SIGNAL \I2C|state_read~52_combout\ : std_logic;
SIGNAL \I2C|state_read~62_combout\ : std_logic;
SIGNAL \I2C|state_read~48_combout\ : std_logic;
SIGNAL \I2C|state_read~49_combout\ : std_logic;
SIGNAL \I2C|state_read~53_combout\ : std_logic;
SIGNAL \I2C|state_read.000000111~q\ : std_logic;
SIGNAL \I2C|state_read.000001000~0_combout\ : std_logic;
SIGNAL \I2C|state_read.000001000~q\ : std_logic;
SIGNAL \I2C|state_read.000000000~0_combout\ : std_logic;
SIGNAL \I2C|state_read.000000000~q\ : std_logic;
SIGNAL \I2C|state_read.000000001~0_combout\ : std_logic;
SIGNAL \I2C|state_read.000000001~q\ : std_logic;
SIGNAL \I2C|state_read.000000010~q\ : std_logic;
SIGNAL \I2C|SCL~10_combout\ : std_logic;
SIGNAL \I2C|Selector68~14_combout\ : std_logic;
SIGNAL \I2C|Selector68~10_combout\ : std_logic;
SIGNAL \I2C|Selector68~12_combout\ : std_logic;
SIGNAL \I2C|state_write~33_combout\ : std_logic;
SIGNAL \I2C|state_write.000000000~q\ : std_logic;
SIGNAL \I2C|Selector127~0_combout\ : std_logic;
SIGNAL \I2C|Selector68~9_combout\ : std_logic;
SIGNAL \I2C|Selector68~13_combout\ : std_logic;
SIGNAL \I2C|SCL~11_combout\ : std_logic;
SIGNAL \I2C|SCL~reg0_q\ : std_logic;
SIGNAL \I2C|Selector125~1_combout\ : std_logic;
SIGNAL \I2C|Selector127~7_combout\ : std_logic;
SIGNAL \I2C|Selector127~6_combout\ : std_logic;
SIGNAL \I2C|Selector127~4_combout\ : std_logic;
SIGNAL \I2C|Selector127~5_combout\ : std_logic;
SIGNAL \I2C|Selector127~8_combout\ : std_logic;
SIGNAL \I2C|SDA~2_combout\ : std_logic;
SIGNAL \I2C|SDA~reg0_q\ : std_logic;
SIGNAL \I2C|Selector124~0_combout\ : std_logic;
SIGNAL \I2C|SDA~en_q\ : std_logic;
SIGNAL \LED_pos.00001~0_combout\ : std_logic;
SIGNAL \timer2_reg~3_combout\ : std_logic;
SIGNAL \timer2_reg~6_combout\ : std_logic;
SIGNAL \timer2_reg~9_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \timer2_reg~7_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \timer2_reg~5_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \timer2_reg~4_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \timer2_reg~2_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \timer2_flag~q\ : std_logic;
SIGNAL \LED_pos.00001~q\ : std_logic;
SIGNAL \LED_pos.00010~feeder_combout\ : std_logic;
SIGNAL \LED_pos.00010~q\ : std_logic;
SIGNAL \LED_pos.00011~q\ : std_logic;
SIGNAL \LED_pos.00100~feeder_combout\ : std_logic;
SIGNAL \LED_pos.00100~q\ : std_logic;
SIGNAL \LED_pos.00000~0_combout\ : std_logic;
SIGNAL \LED_pos.00000~q\ : std_logic;
SIGNAL \LED1~1_combout\ : std_logic;
SIGNAL \LED1~reg0_q\ : std_logic;
SIGNAL \LED2~1_combout\ : std_logic;
SIGNAL \LED2~reg0_q\ : std_logic;
SIGNAL \LED_status~1_combout\ : std_logic;
SIGNAL \LED_status~q\ : std_logic;
SIGNAL \LED3~1_combout\ : std_logic;
SIGNAL \LED3~reg0_q\ : std_logic;
SIGNAL \LED4~1_combout\ : std_logic;
SIGNAL \LED4~reg0_q\ : std_logic;
SIGNAL \I2C|ring_buffer~0_combout\ : std_logic;
SIGNAL \I2C|data[7]~0_combout\ : std_logic;
SIGNAL \I2C|ring_buffer~1_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \I2C|ring_buffer~3_combout\ : std_logic;
SIGNAL \I2C|data[4]~feeder_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \I2C|ring_buffer~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \I2C|ring_buffer~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~8_combout\ : std_logic;
SIGNAL \display|digit_posn[0]~1_combout\ : std_logic;
SIGNAL \display|Add0~36_combout\ : std_logic;
SIGNAL \display|Equal0~5_combout\ : std_logic;
SIGNAL \display|Add0~1\ : std_logic;
SIGNAL \display|Add0~3\ : std_logic;
SIGNAL \display|Add0~5\ : std_logic;
SIGNAL \display|Add0~6_combout\ : std_logic;
SIGNAL \display|Add0~7\ : std_logic;
SIGNAL \display|Add0~9\ : std_logic;
SIGNAL \display|Add0~10_combout\ : std_logic;
SIGNAL \display|Add0~11\ : std_logic;
SIGNAL \display|Add0~12_combout\ : std_logic;
SIGNAL \display|Add0~14_combout\ : std_logic;
SIGNAL \display|Equal0~1_combout\ : std_logic;
SIGNAL \display|Add0~22_combout\ : std_logic;
SIGNAL \display|Equal0~2_combout\ : std_logic;
SIGNAL \display|Add0~0_combout\ : std_logic;
SIGNAL \display|prescaler~0_combout\ : std_logic;
SIGNAL \display|Add0~4_combout\ : std_logic;
SIGNAL \display|Equal0~0_combout\ : std_logic;
SIGNAL \display|Equal0~4_combout\ : std_logic;
SIGNAL \display|prescaler~2_combout\ : std_logic;
SIGNAL \display|Add0~13\ : std_logic;
SIGNAL \display|Add0~15\ : std_logic;
SIGNAL \display|Add0~16_combout\ : std_logic;
SIGNAL \display|prescaler~3_combout\ : std_logic;
SIGNAL \display|Add0~17\ : std_logic;
SIGNAL \display|Add0~19\ : std_logic;
SIGNAL \display|Add0~20_combout\ : std_logic;
SIGNAL \display|Add0~21\ : std_logic;
SIGNAL \display|Add0~23\ : std_logic;
SIGNAL \display|Add0~24_combout\ : std_logic;
SIGNAL \display|Add0~25\ : std_logic;
SIGNAL \display|Add0~26_combout\ : std_logic;
SIGNAL \display|Add0~27\ : std_logic;
SIGNAL \display|Add0~28_combout\ : std_logic;
SIGNAL \display|prescaler~5_combout\ : std_logic;
SIGNAL \display|Add0~29\ : std_logic;
SIGNAL \display|Add0~31\ : std_logic;
SIGNAL \display|Add0~32_combout\ : std_logic;
SIGNAL \display|Add0~33\ : std_logic;
SIGNAL \display|Add0~35\ : std_logic;
SIGNAL \display|Add0~37\ : std_logic;
SIGNAL \display|Add0~38_combout\ : std_logic;
SIGNAL \display|Add0~39\ : std_logic;
SIGNAL \display|Add0~40_combout\ : std_logic;
SIGNAL \display|Add0~41\ : std_logic;
SIGNAL \display|Add0~42_combout\ : std_logic;
SIGNAL \display|Add0~43\ : std_logic;
SIGNAL \display|Add0~44_combout\ : std_logic;
SIGNAL \display|Add0~45\ : std_logic;
SIGNAL \display|Add0~46_combout\ : std_logic;
SIGNAL \display|Equal0~6_combout\ : std_logic;
SIGNAL \display|Equal0~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \thousands[1]~1_combout\ : std_logic;
SIGNAL \I2C|ring_buffer~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[22]~68_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[28]~65_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \I2C|ring_buffer~5_combout\ : std_logic;
SIGNAL \I2C|data[2]~feeder_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[30]~57_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[32]~70_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \display|Selector3~2_combout\ : std_logic;
SIGNAL \display|Selector3~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[37]~9_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[37]~63_combout\ : std_logic;
SIGNAL \I2C|data_lo[7]~0_combout\ : std_logic;
SIGNAL \units[0]~feeder_combout\ : std_logic;
SIGNAL \display|digit_posn[1]~0_combout\ : std_logic;
SIGNAL \display|Selector2~0_combout\ : std_logic;
SIGNAL \display|Selector2~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[38]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[38]~64_combout\ : std_logic;
SIGNAL \display|Selector1~0_combout\ : std_logic;
SIGNAL \display|decoder|WideOr6~0_combout\ : std_logic;
SIGNAL \display|decoder|WideOr5~0_combout\ : std_logic;
SIGNAL \display|decoder|WideOr4~0_combout\ : std_logic;
SIGNAL \display|decoder|WideOr3~0_combout\ : std_logic;
SIGNAL \display|decoder|WideOr2~0_combout\ : std_logic;
SIGNAL \display|decoder|WideOr1~0_combout\ : std_logic;
SIGNAL \display|decoder|WideOr0~0_combout\ : std_logic;
SIGNAL \display|decoder|Mux0~0_combout\ : std_logic;
SIGNAL \display|Decoder0~0_combout\ : std_logic;
SIGNAL \display|decoder|Equal0~0_combout\ : std_logic;
SIGNAL \display|Decoder0~1_combout\ : std_logic;
SIGNAL \display|Decoder0~2_combout\ : std_logic;
SIGNAL \units\ : std_logic_vector(8 DOWNTO 0);
SIGNAL timer2_reg : std_logic_vector(26 DOWNTO 0);
SIGNAL thousands : std_logic_vector(8 DOWNTO 0);
SIGNAL tens : std_logic_vector(8 DOWNTO 0);
SIGNAL hundreds : std_logic_vector(8 DOWNTO 0);
SIGNAL \display|prescaler\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \display|digit_posn\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \display|digit_data\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \display|DIGIT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display|decoder|SEG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \I2C|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \I2C|ring_buffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \I2C|shift_var\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \I2C|timer4_reg\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \I2C|wbuffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \I2C|delay_reg\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \I2C|data_lo\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \I2C|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst_n~input_o\ : std_logic;

BEGIN

ww_CLK <= CLK;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
SEG <= ww_SEG;
DIGIT <= ww_DIGIT;
ww_rst_n <= rst_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_rst_n~input_o\ <= NOT \rst_n~input_o\;

-- Location: LCCOMB_X19_Y17_N22
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (timer2_reg(8) & (\Add0~15\ $ (GND))) # (!timer2_reg(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((timer2_reg(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X19_Y17_N24
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (timer2_reg(9) & (!\Add0~17\)) # (!timer2_reg(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!timer2_reg(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X19_Y17_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (timer2_reg(10) & (\Add0~19\ $ (GND))) # (!timer2_reg(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((timer2_reg(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X19_Y17_N28
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (timer2_reg(11) & (!\Add0~21\)) # (!timer2_reg(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!timer2_reg(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X19_Y17_N30
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (timer2_reg(12) & (\Add0~23\ $ (GND))) # (!timer2_reg(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((timer2_reg(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X19_Y16_N6
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (timer2_reg(16) & (\Add0~31\ $ (GND))) # (!timer2_reg(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((timer2_reg(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X19_Y16_N18
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (timer2_reg(22) & (\Add0~43\ $ (GND))) # (!timer2_reg(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((timer2_reg(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X19_Y22_N10
\display|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~2_combout\ = (\display|prescaler\(1) & (!\display|Add0~1\)) # (!\display|prescaler\(1) & ((\display|Add0~1\) # (GND)))
-- \display|Add0~3\ = CARRY((!\display|Add0~1\) # (!\display|prescaler\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(1),
	datad => VCC,
	cin => \display|Add0~1\,
	combout => \display|Add0~2_combout\,
	cout => \display|Add0~3\);

-- Location: LCCOMB_X19_Y22_N16
\display|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~8_combout\ = (\display|prescaler\(4) & (\display|Add0~7\ $ (GND))) # (!\display|prescaler\(4) & (!\display|Add0~7\ & VCC))
-- \display|Add0~9\ = CARRY((\display|prescaler\(4) & !\display|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(4),
	datad => VCC,
	cin => \display|Add0~7\,
	combout => \display|Add0~8_combout\,
	cout => \display|Add0~9\);

-- Location: LCCOMB_X19_Y22_N26
\display|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~18_combout\ = (\display|prescaler\(9) & (!\display|Add0~17\)) # (!\display|prescaler\(9) & ((\display|Add0~17\) # (GND)))
-- \display|Add0~19\ = CARRY((!\display|Add0~17\) # (!\display|prescaler\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(9),
	datad => VCC,
	cin => \display|Add0~17\,
	combout => \display|Add0~18_combout\,
	cout => \display|Add0~19\);

-- Location: LCCOMB_X19_Y21_N6
\display|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~30_combout\ = (\display|prescaler\(15) & (!\display|Add0~29\)) # (!\display|prescaler\(15) & ((\display|Add0~29\) # (GND)))
-- \display|Add0~31\ = CARRY((!\display|Add0~29\) # (!\display|prescaler\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(15),
	datad => VCC,
	cin => \display|Add0~29\,
	combout => \display|Add0~30_combout\,
	cout => \display|Add0~31\);

-- Location: LCCOMB_X19_Y21_N10
\display|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~34_combout\ = (\display|prescaler\(17) & (!\display|Add0~33\)) # (!\display|prescaler\(17) & ((\display|Add0~33\) # (GND)))
-- \display|Add0~35\ = CARRY((!\display|Add0~33\) # (!\display|prescaler\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(17),
	datad => VCC,
	cin => \display|Add0~33\,
	combout => \display|Add0~34_combout\,
	cout => \display|Add0~35\);

-- Location: LCCOMB_X23_Y19_N4
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \I2C|data\(5) $ (VCC)
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\I2C|data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(5),
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X23_Y19_N6
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\I2C|data\(6) & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\I2C|data\(6) & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\I2C|data\(6) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|data\(6),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X22_Y17_N14
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X23_Y17_N16
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X23_Y17_N20
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~45_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~45_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X24_Y17_N2
\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X24_Y17_N4
\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[26]~53_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X24_Y17_N6
\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X25_Y17_N14
\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~61_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X25_Y17_N16
\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[31]~59_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X25_Y17_N18
\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X25_Y17_N20
\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y17_N22
\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y18_N6
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \I2C|data\(3) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\I2C|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(3),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X22_Y18_N8
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\I2C|data\(4) & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\I2C|data\(4) & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\I2C|data\(4) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X22_Y18_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\I2C|data\(5) & ((GND) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\I2C|data\(5) & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ 
-- (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\I2C|data\(5)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|data\(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X22_Y18_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\I2C|data\(6) & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\I2C|data\(6) & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\I2C|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|data\(6),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X22_Y18_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\I2C|data\(7) & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\I2C|data\(7) & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & 
-- VCC))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\I2C|data\(7) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(7),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X23_Y18_N0
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[49]~11_combout\) # (\Div0|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X23_Y18_N2
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X23_Y18_N4
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X23_Y18_N6
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ & !\Div0|auto_generated|divider|divider|StageOut[52]~4_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X23_Y18_N8
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~3_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[53]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X23_Y18_N10
\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X23_Y18_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X23_Y19_N24
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\I2C|data\(6) & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\I2C|data\(6) & (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\I2C|data\(6) & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|data\(6),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X23_Y19_N26
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\I2C|data\(7) & (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\I2C|data\(7) & (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & 
-- VCC))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\I2C|data\(7) & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|data\(7),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X25_Y19_N12
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X25_Y19_N16
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[22]~68_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[22]~68_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[22]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[22]~68_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X26_Y19_N22
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X26_Y19_N24
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X23_Y17_N2
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (GND)
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X23_Y17_N4
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X23_Y17_N6
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X23_Y13_N14
\I2C|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~0_combout\ = \I2C|delay_reg\(0) $ (VCC)
-- \I2C|Add3~1\ = CARRY(\I2C|delay_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|delay_reg\(0),
	datad => VCC,
	combout => \I2C|Add3~0_combout\,
	cout => \I2C|Add3~1\);

-- Location: LCCOMB_X23_Y13_N20
\I2C|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~6_combout\ = (\I2C|delay_reg\(3) & (!\I2C|Add3~5\)) # (!\I2C|delay_reg\(3) & ((\I2C|Add3~5\) # (GND)))
-- \I2C|Add3~7\ = CARRY((!\I2C|Add3~5\) # (!\I2C|delay_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|delay_reg\(3),
	datad => VCC,
	cin => \I2C|Add3~5\,
	combout => \I2C|Add3~6_combout\,
	cout => \I2C|Add3~7\);

-- Location: LCCOMB_X23_Y13_N22
\I2C|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~8_combout\ = (\I2C|delay_reg\(4) & (\I2C|Add3~7\ $ (GND))) # (!\I2C|delay_reg\(4) & (!\I2C|Add3~7\ & VCC))
-- \I2C|Add3~9\ = CARRY((\I2C|delay_reg\(4) & !\I2C|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|delay_reg\(4),
	datad => VCC,
	cin => \I2C|Add3~7\,
	combout => \I2C|Add3~8_combout\,
	cout => \I2C|Add3~9\);

-- Location: LCCOMB_X23_Y13_N26
\I2C|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~12_combout\ = (\I2C|delay_reg\(6) & (\I2C|Add3~11\ $ (GND))) # (!\I2C|delay_reg\(6) & (!\I2C|Add3~11\ & VCC))
-- \I2C|Add3~13\ = CARRY((\I2C|delay_reg\(6) & !\I2C|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|delay_reg\(6),
	datad => VCC,
	cin => \I2C|Add3~11\,
	combout => \I2C|Add3~12_combout\,
	cout => \I2C|Add3~13\);

-- Location: LCCOMB_X23_Y13_N28
\I2C|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~14_combout\ = (\I2C|delay_reg\(7) & (!\I2C|Add3~13\)) # (!\I2C|delay_reg\(7) & ((\I2C|Add3~13\) # (GND)))
-- \I2C|Add3~15\ = CARRY((!\I2C|Add3~13\) # (!\I2C|delay_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|delay_reg\(7),
	datad => VCC,
	cin => \I2C|Add3~13\,
	combout => \I2C|Add3~14_combout\,
	cout => \I2C|Add3~15\);

-- Location: LCCOMB_X23_Y13_N30
\I2C|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~16_combout\ = (\I2C|delay_reg\(8) & (\I2C|Add3~15\ $ (GND))) # (!\I2C|delay_reg\(8) & (!\I2C|Add3~15\ & VCC))
-- \I2C|Add3~17\ = CARRY((\I2C|delay_reg\(8) & !\I2C|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|delay_reg\(8),
	datad => VCC,
	cin => \I2C|Add3~15\,
	combout => \I2C|Add3~16_combout\,
	cout => \I2C|Add3~17\);

-- Location: FF_X23_Y16_N19
\I2C|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|counter[3]~14_combout\,
	sclr => \I2C|state~33_combout\,
	ena => \I2C|counter[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|counter\(3));

-- Location: FF_X23_Y16_N21
\I2C|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|counter[4]~17_combout\,
	sclr => \I2C|state~33_combout\,
	ena => \I2C|counter[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|counter\(4));

-- Location: FF_X23_Y16_N23
\I2C|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|counter[5]~19_combout\,
	sclr => \I2C|state~33_combout\,
	ena => \I2C|counter[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|counter\(5));

-- Location: FF_X23_Y16_N13
\I2C|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|counter[0]~8_combout\,
	sclr => \I2C|state~33_combout\,
	ena => \I2C|counter[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|counter\(0));

-- Location: FF_X23_Y16_N25
\I2C|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|counter[6]~21_combout\,
	sclr => \I2C|state~33_combout\,
	ena => \I2C|counter[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|counter\(6));

-- Location: FF_X23_Y16_N27
\I2C|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|counter[7]~23_combout\,
	sclr => \I2C|state~33_combout\,
	ena => \I2C|counter[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|counter\(7));

-- Location: FF_X23_Y16_N15
\I2C|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|counter[1]~10_combout\,
	sclr => \I2C|state~33_combout\,
	ena => \I2C|counter[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|counter\(1));

-- Location: FF_X23_Y16_N17
\I2C|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|counter[2]~12_combout\,
	sclr => \I2C|state~33_combout\,
	ena => \I2C|counter[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|counter\(2));

-- Location: LCCOMB_X22_Y14_N10
\I2C|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~0_combout\ = \I2C|timer4_reg\(0) $ (VCC)
-- \I2C|Add0~1\ = CARRY(\I2C|timer4_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer4_reg\(0),
	datad => VCC,
	combout => \I2C|Add0~0_combout\,
	cout => \I2C|Add0~1\);

-- Location: LCCOMB_X22_Y14_N12
\I2C|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~2_combout\ = (\I2C|timer4_reg\(1) & (!\I2C|Add0~1\)) # (!\I2C|timer4_reg\(1) & ((\I2C|Add0~1\) # (GND)))
-- \I2C|Add0~3\ = CARRY((!\I2C|Add0~1\) # (!\I2C|timer4_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer4_reg\(1),
	datad => VCC,
	cin => \I2C|Add0~1\,
	combout => \I2C|Add0~2_combout\,
	cout => \I2C|Add0~3\);

-- Location: LCCOMB_X22_Y14_N14
\I2C|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~4_combout\ = (\I2C|timer4_reg\(2) & (\I2C|Add0~3\ $ (GND))) # (!\I2C|timer4_reg\(2) & (!\I2C|Add0~3\ & VCC))
-- \I2C|Add0~5\ = CARRY((\I2C|timer4_reg\(2) & !\I2C|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer4_reg\(2),
	datad => VCC,
	cin => \I2C|Add0~3\,
	combout => \I2C|Add0~4_combout\,
	cout => \I2C|Add0~5\);

-- Location: LCCOMB_X23_Y16_N12
\I2C|counter[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|counter[0]~8_combout\ = (\I2C|counter\(0) & (\I2C|state_shift.000000011~q\ $ (VCC))) # (!\I2C|counter\(0) & (\I2C|state_shift.000000011~q\ & VCC))
-- \I2C|counter[0]~9\ = CARRY((\I2C|counter\(0) & \I2C|state_shift.000000011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|counter\(0),
	datab => \I2C|state_shift.000000011~q\,
	datad => VCC,
	combout => \I2C|counter[0]~8_combout\,
	cout => \I2C|counter[0]~9\);

-- Location: LCCOMB_X23_Y16_N14
\I2C|counter[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|counter[1]~10_combout\ = (\I2C|counter\(1) & (!\I2C|counter[0]~9\)) # (!\I2C|counter\(1) & ((\I2C|counter[0]~9\) # (GND)))
-- \I2C|counter[1]~11\ = CARRY((!\I2C|counter[0]~9\) # (!\I2C|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|counter\(1),
	datad => VCC,
	cin => \I2C|counter[0]~9\,
	combout => \I2C|counter[1]~10_combout\,
	cout => \I2C|counter[1]~11\);

-- Location: LCCOMB_X23_Y16_N16
\I2C|counter[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|counter[2]~12_combout\ = (\I2C|counter\(2) & (\I2C|counter[1]~11\ $ (GND))) # (!\I2C|counter\(2) & (!\I2C|counter[1]~11\ & VCC))
-- \I2C|counter[2]~13\ = CARRY((\I2C|counter\(2) & !\I2C|counter[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|counter\(2),
	datad => VCC,
	cin => \I2C|counter[1]~11\,
	combout => \I2C|counter[2]~12_combout\,
	cout => \I2C|counter[2]~13\);

-- Location: LCCOMB_X23_Y16_N18
\I2C|counter[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|counter[3]~14_combout\ = (\I2C|counter\(3) & (!\I2C|counter[2]~13\)) # (!\I2C|counter\(3) & ((\I2C|counter[2]~13\) # (GND)))
-- \I2C|counter[3]~15\ = CARRY((!\I2C|counter[2]~13\) # (!\I2C|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|counter\(3),
	datad => VCC,
	cin => \I2C|counter[2]~13\,
	combout => \I2C|counter[3]~14_combout\,
	cout => \I2C|counter[3]~15\);

-- Location: LCCOMB_X23_Y16_N20
\I2C|counter[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|counter[4]~17_combout\ = (\I2C|counter\(4) & (\I2C|counter[3]~15\ $ (GND))) # (!\I2C|counter\(4) & (!\I2C|counter[3]~15\ & VCC))
-- \I2C|counter[4]~18\ = CARRY((\I2C|counter\(4) & !\I2C|counter[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|counter\(4),
	datad => VCC,
	cin => \I2C|counter[3]~15\,
	combout => \I2C|counter[4]~17_combout\,
	cout => \I2C|counter[4]~18\);

-- Location: LCCOMB_X23_Y16_N22
\I2C|counter[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|counter[5]~19_combout\ = (\I2C|counter\(5) & (!\I2C|counter[4]~18\)) # (!\I2C|counter\(5) & ((\I2C|counter[4]~18\) # (GND)))
-- \I2C|counter[5]~20\ = CARRY((!\I2C|counter[4]~18\) # (!\I2C|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|counter\(5),
	datad => VCC,
	cin => \I2C|counter[4]~18\,
	combout => \I2C|counter[5]~19_combout\,
	cout => \I2C|counter[5]~20\);

-- Location: LCCOMB_X23_Y16_N24
\I2C|counter[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|counter[6]~21_combout\ = (\I2C|counter\(6) & (\I2C|counter[5]~20\ $ (GND))) # (!\I2C|counter\(6) & (!\I2C|counter[5]~20\ & VCC))
-- \I2C|counter[6]~22\ = CARRY((\I2C|counter\(6) & !\I2C|counter[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|counter\(6),
	datad => VCC,
	cin => \I2C|counter[5]~20\,
	combout => \I2C|counter[6]~21_combout\,
	cout => \I2C|counter[6]~22\);

-- Location: LCCOMB_X23_Y16_N26
\I2C|counter[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|counter[7]~23_combout\ = \I2C|counter\(7) $ (\I2C|counter[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|counter\(7),
	cin => \I2C|counter[6]~22\,
	combout => \I2C|counter[7]~23_combout\);

-- Location: FF_X21_Y21_N11
\display|digit_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Selector4~1_combout\,
	ena => \display|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|digit_data\(0));

-- Location: FF_X19_Y22_N11
\display|prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(1));

-- Location: FF_X18_Y22_N9
\display|prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|prescaler~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(4));

-- Location: FF_X18_Y22_N3
\display|prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|prescaler~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(9));

-- Location: FF_X19_Y21_N27
\display|prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|prescaler~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(15));

-- Location: LCCOMB_X18_Y21_N24
\display|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~3_combout\ = (!\display|prescaler\(13) & (\display|prescaler\(15) & (!\display|prescaler\(12) & \display|prescaler\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(13),
	datab => \display|prescaler\(15),
	datac => \display|prescaler\(12),
	datad => \display|prescaler\(14),
	combout => \display|Equal0~3_combout\);

-- Location: FF_X19_Y21_N11
\display|prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(17));

-- Location: FF_X18_Y17_N9
\timer2_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer2_reg~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(23));

-- Location: FF_X18_Y17_N31
\timer2_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer2_reg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(13));

-- Location: FF_X19_Y17_N31
\timer2_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(12));

-- Location: FF_X19_Y17_N29
\timer2_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(11));

-- Location: FF_X19_Y17_N25
\timer2_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(9));

-- Location: FF_X18_Y17_N1
\timer2_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer2_reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(8));

-- Location: FF_X19_Y17_N13
\timer2_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(3));

-- Location: FF_X19_Y17_N11
\timer2_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(2));

-- Location: FF_X19_Y17_N7
\timer2_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(0));

-- Location: FF_X19_Y16_N27
\timer2_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(26));

-- Location: LCCOMB_X19_Y17_N4
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Add0~16_combout\ & (!\Add0~18_combout\ & (\Add0~20_combout\ & !\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~22_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X25_Y17_N13
\hundreds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \hundreds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hundreds(0));

-- Location: FF_X21_Y21_N15
\tens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|data\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tens(0));

-- Location: LCCOMB_X21_Y21_N14
\display|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Selector4~0_combout\ = (\display|digit_posn\(0) & (((tens(0)) # (\display|digit_posn\(1))))) # (!\display|digit_posn\(0) & (\units\(0) & ((!\display|digit_posn\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \units\(0),
	datab => \display|digit_posn\(0),
	datac => tens(0),
	datad => \display|digit_posn\(1),
	combout => \display|Selector4~0_combout\);

-- Location: FF_X22_Y21_N5
\thousands[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \thousands[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => thousands(0));

-- Location: LCCOMB_X21_Y21_N10
\display|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Selector4~1_combout\ = (\display|digit_posn\(1) & ((\display|Selector4~0_combout\ & ((thousands(0)))) # (!\display|Selector4~0_combout\ & (hundreds(0))))) # (!\display|digit_posn\(1) & (((\display|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_posn\(1),
	datab => hundreds(0),
	datac => \display|Selector4~0_combout\,
	datad => thousands(0),
	combout => \display|Selector4~1_combout\);

-- Location: LCCOMB_X18_Y22_N8
\display|prescaler~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|prescaler~1_combout\ = (\display|Add0~8_combout\ & (((!\display|Equal0~5_combout\) # (!\display|Equal0~6_combout\)) # (!\display|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~4_combout\,
	datab => \display|Equal0~6_combout\,
	datac => \display|Equal0~5_combout\,
	datad => \display|Add0~8_combout\,
	combout => \display|prescaler~1_combout\);

-- Location: LCCOMB_X18_Y22_N2
\display|prescaler~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|prescaler~4_combout\ = (\display|Add0~18_combout\ & (((!\display|Equal0~5_combout\) # (!\display|Equal0~6_combout\)) # (!\display|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~4_combout\,
	datab => \display|Equal0~6_combout\,
	datac => \display|Equal0~5_combout\,
	datad => \display|Add0~18_combout\,
	combout => \display|prescaler~4_combout\);

-- Location: LCCOMB_X19_Y21_N26
\display|prescaler~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|prescaler~6_combout\ = (\display|Add0~30_combout\ & (((!\display|Equal0~6_combout\) # (!\display|Equal0~4_combout\)) # (!\display|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Add0~30_combout\,
	datab => \display|Equal0~5_combout\,
	datac => \display|Equal0~4_combout\,
	datad => \display|Equal0~6_combout\,
	combout => \display|prescaler~6_combout\);

-- Location: LCCOMB_X18_Y17_N30
\timer2_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~8_combout\ = (\Add0~26_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datac => \Equal0~8_combout\,
	combout => \timer2_reg~8_combout\);

-- Location: LCCOMB_X18_Y17_N0
\timer2_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~10_combout\ = (\Add0~16_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datac => \Equal0~8_combout\,
	combout => \timer2_reg~10_combout\);

-- Location: LCCOMB_X22_Y17_N12
\Div1|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\I2C|data\(7) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(7),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X23_Y19_N14
\Div1|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X22_Y17_N26
\Div1|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\I2C|data\(5) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(5),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X22_Y17_N10
\Div1|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\I2C|data\(4) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(4),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X22_Y17_N0
\Div1|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X23_Y17_N26
\Div1|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\I2C|data\(3) & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X23_Y17_N14
\Div1|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X24_Y17_N30
\Div1|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X24_Y17_N26
\Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\I2C|data\(2) & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X25_Y17_N4
\Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X24_Y17_N16
\Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X25_Y17_N10
\Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\I2C|data\(2) & \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X25_Y17_N8
\Div1|auto_generated|divider|divider|StageOut[31]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~59_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~59_combout\);

-- Location: LCCOMB_X25_Y17_N26
\Div1|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\I2C|data\(1) & \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(1),
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X25_Y17_N28
\Div1|auto_generated|divider|divider|StageOut[30]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~61_combout\ = (\I2C|data\(1) & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(1),
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~61_combout\);

-- Location: FF_X23_Y18_N21
\I2C|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|data[0]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|data\(0));

-- Location: LCCOMB_X22_Y18_N22
\Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\I2C|data\(7) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X22_Y18_N28
\Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X23_Y18_N18
\Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \I2C|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \I2C|data\(6),
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X22_Y18_N2
\Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X23_Y18_N24
\Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \I2C|data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \I2C|data\(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X22_Y18_N0
\Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X22_Y18_N30
\Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\I2C|data\(4) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X23_Y18_N26
\Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X22_Y18_N4
\Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\I2C|data\(3) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X22_Y18_N26
\Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X23_Y18_N28
\Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\I2C|data\(2) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(2),
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X23_Y18_N22
\Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\I2C|data\(2) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(2),
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X23_Y19_N2
\Mod2|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X23_Y19_N16
\Mod2|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X23_Y19_N12
\Mod2|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X24_Y19_N20
\Mod2|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\I2C|data\(4) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(4),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X24_Y19_N16
\Mod2|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[22]~45_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X25_Y19_N22
\Mod2|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X25_Y19_N10
\Mod2|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\I2C|data\(3) & !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(3),
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X25_Y19_N0
\Mod2|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X26_Y19_N6
\Mod2|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X26_Y19_N30
\Mod2|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\I2C|data\(2) & !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(2),
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X28_Y19_N26
\Mod2|auto_generated|divider|divider|StageOut[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[30]~56_combout\ = (\I2C|data\(1) & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(1),
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[30]~56_combout\);

-- Location: LCCOMB_X26_Y19_N12
\Mod2|auto_generated|divider|divider|StageOut[33]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[33]~58_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[33]~58_combout\);

-- Location: LCCOMB_X26_Y19_N10
\Mod2|auto_generated|divider|divider|StageOut[32]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\);

-- Location: LCCOMB_X28_Y19_N30
\Mod2|auto_generated|divider|divider|StageOut[31]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\ = (\I2C|data\(2) & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|data\(2),
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\);

-- Location: LCCOMB_X21_Y17_N22
\Mod1|auto_generated|divider|divider|StageOut[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~1_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~1_combout\);

-- Location: LCCOMB_X23_Y17_N12
\Mod1|auto_generated|divider|divider|StageOut[33]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~3_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~3_combout\);

-- Location: LCCOMB_X22_Y17_N30
\Mod1|auto_generated|divider|divider|StageOut[32]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~5_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~5_combout\);

-- Location: LCCOMB_X22_Y17_N4
\Mod1|auto_generated|divider|divider|StageOut[31]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~7_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~7_combout\);

-- Location: LCCOMB_X24_Y15_N14
\I2C|Selector68~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector68~2_combout\ = (!\I2C|state_read.000000000~q\ & ((\I2C|state_start.000000010~q\) # (\I2C|state_start.000000001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_start.000000010~q\,
	datab => \I2C|state_read.000000000~q\,
	datad => \I2C|state_start.000000001~q\,
	combout => \I2C|Selector68~2_combout\);

-- Location: FF_X24_Y15_N7
\I2C|stop_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector118~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|timer4_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|stop_done~q\);

-- Location: LCCOMB_X24_Y15_N12
\I2C|Selector68~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector68~3_combout\ = (\I2C|state_read.000000111~q\ & ((\I2C|state_stop.000000001~q\) # ((\I2C|state_stop.000000010~q\) # (\I2C|stop_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_stop.000000001~q\,
	datab => \I2C|state_read.000000111~q\,
	datac => \I2C|state_stop.000000010~q\,
	datad => \I2C|stop_done~q\,
	combout => \I2C|Selector68~3_combout\);

-- Location: LCCOMB_X25_Y14_N0
\I2C|Selector68~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector68~4_combout\ = (\I2C|Selector68~3_combout\) # ((\I2C|state_read.000000110~q\ & ((\I2C|no_ack_done~q\) # (!\I2C|state_no_ack.000000000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_no_ack.000000000~q\,
	datab => \I2C|state_read.000000110~q\,
	datac => \I2C|Selector68~3_combout\,
	datad => \I2C|no_ack_done~q\,
	combout => \I2C|Selector68~4_combout\);

-- Location: FF_X28_Y15_N21
\I2C|wstate.000000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|wstate.000000000~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|wstate.000000000~q\);

-- Location: LCCOMB_X28_Y15_N2
\I2C|Selector68~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector68~5_combout\ = ((\I2C|write_done~q\) # ((\I2C|wdone~q\) # (!\I2C|wstate.000000000~q\))) # (!\I2C|state_write.000000000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_write.000000000~q\,
	datab => \I2C|write_done~q\,
	datac => \I2C|wdone~q\,
	datad => \I2C|wstate.000000000~q\,
	combout => \I2C|Selector68~5_combout\);

-- Location: LCCOMB_X25_Y15_N18
\I2C|Selector68~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector68~6_combout\ = (\I2C|Selector68~2_combout\) # ((\I2C|Selector68~4_combout\) # ((\I2C|Selector68~5_combout\ & \I2C|state_read.000000001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector68~2_combout\,
	datab => \I2C|Selector68~4_combout\,
	datac => \I2C|Selector68~5_combout\,
	datad => \I2C|state_read.000000001~q\,
	combout => \I2C|Selector68~6_combout\);

-- Location: FF_X23_Y12_N31
\I2C|delay_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~0_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(16));

-- Location: FF_X22_Y12_N13
\I2C|delay_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~3_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(14));

-- Location: FF_X23_Y12_N23
\I2C|delay_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~4_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(13));

-- Location: FF_X22_Y12_N17
\I2C|delay_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~8_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(9));

-- Location: FF_X22_Y13_N13
\I2C|delay_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~9_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(8));

-- Location: FF_X22_Y13_N11
\I2C|delay_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~10_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(7));

-- Location: FF_X22_Y13_N17
\I2C|delay_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~11_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(6));

-- Location: FF_X23_Y13_N7
\I2C|delay_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~13_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(4));

-- Location: FF_X23_Y13_N13
\I2C|delay_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~17_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(0));

-- Location: LCCOMB_X23_Y13_N10
\I2C|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|LessThan2~1_combout\ = (\I2C|Add3~6_combout\) # ((\I2C|Add3~4_combout\) # ((\I2C|Add3~0_combout\) # (\I2C|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~6_combout\,
	datab => \I2C|Add3~4_combout\,
	datac => \I2C|Add3~0_combout\,
	datad => \I2C|Add3~2_combout\,
	combout => \I2C|LessThan2~1_combout\);

-- Location: LCCOMB_X23_Y13_N4
\I2C|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|LessThan2~2_combout\ = (\I2C|Add3~12_combout\) # ((\I2C|Add3~10_combout\ & ((\I2C|Add3~8_combout\) # (\I2C|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~8_combout\,
	datab => \I2C|Add3~10_combout\,
	datac => \I2C|Add3~12_combout\,
	datad => \I2C|LessThan2~1_combout\,
	combout => \I2C|LessThan2~2_combout\);

-- Location: LCCOMB_X22_Y13_N28
\I2C|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|LessThan2~3_combout\ = (\I2C|Add3~16_combout\) # ((\I2C|Add3~14_combout\ & \I2C|LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~14_combout\,
	datac => \I2C|Add3~16_combout\,
	datad => \I2C|LessThan2~2_combout\,
	combout => \I2C|LessThan2~3_combout\);

-- Location: LCCOMB_X23_Y15_N10
\I2C|Selector68~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector68~7_combout\ = (\I2C|SCL~reg0_q\ & ((\I2C|Selector68~6_combout\) # ((\I2C|state_read.000001000~q\ & \I2C|LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|SCL~reg0_q\,
	datab => \I2C|state_read.000001000~q\,
	datac => \I2C|LessThan2~5_combout\,
	datad => \I2C|Selector68~6_combout\,
	combout => \I2C|Selector68~7_combout\);

-- Location: LCCOMB_X24_Y16_N8
\I2C|SCL~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|SCL~8_combout\ = (!\I2C|done~q\ & (\I2C|state_shift.000000010~q\ & (!\I2C|state.000001001~q\ & \I2C|state.000000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|done~q\,
	datab => \I2C|state_shift.000000010~q\,
	datac => \I2C|state.000001001~q\,
	datad => \I2C|state.000000000~q\,
	combout => \I2C|SCL~8_combout\);

-- Location: LCCOMB_X24_Y16_N6
\I2C|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state~33_combout\ = (\I2C|state.000001001~q\) # (!\I2C|state.000000000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state.000000000~q\,
	datac => \I2C|state.000001001~q\,
	combout => \I2C|state~33_combout\);

-- Location: LCCOMB_X24_Y16_N12
\I2C|SCL~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|SCL~9_combout\ = (\I2C|state_shift.000000011~q\) # ((\I2C|state_shift.000000001~q\) # ((\I2C|done~q\) # (\I2C|state~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_shift.000000011~q\,
	datab => \I2C|state_shift.000000001~q\,
	datac => \I2C|done~q\,
	datad => \I2C|state~33_combout\,
	combout => \I2C|SCL~9_combout\);

-- Location: LCCOMB_X24_Y16_N30
\I2C|Selector68~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector68~8_combout\ = (!\I2C|state_read~38_combout\ & ((\I2C|SCL~8_combout\) # ((\I2C|SCL~9_combout\ & \I2C|SCL~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|SCL~9_combout\,
	datab => \I2C|SCL~8_combout\,
	datac => \I2C|SCL~reg0_q\,
	datad => \I2C|state_read~38_combout\,
	combout => \I2C|Selector68~8_combout\);

-- Location: FF_X28_Y15_N31
\I2C|wstate.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|wstate.000000001~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|wdone~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|wstate.000000001~q\);

-- Location: LCCOMB_X23_Y15_N18
\I2C|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|WideOr4~0_combout\ = (!\I2C|state_read.000000010~q\ & !\I2C|state_read.000000100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|state_read.000000010~q\,
	datad => \I2C|state_read.000000100~q\,
	combout => \I2C|WideOr4~0_combout\);

-- Location: LCCOMB_X25_Y14_N4
\I2C|Selector68~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector68~11_combout\ = (!\I2C|no_ack_done~q\ & (\I2C|state_no_ack.000000001~q\ & \I2C|state_read.000000110~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|no_ack_done~q\,
	datab => \I2C|state_no_ack.000000001~q\,
	datad => \I2C|state_read.000000110~q\,
	combout => \I2C|Selector68~11_combout\);

-- Location: FF_X26_Y15_N23
\I2C|wbuffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|wbuffer[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|wbuffer\(7));

-- Location: LCCOMB_X26_Y15_N6
\I2C|Selector125~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector125~0_combout\ = (\I2C|wbuffer\(7) & ((\I2C|state_read.000000001~q\) # ((\I2C|state_read.000000111~q\ & \I2C|state_stop.000000010~q\)))) # (!\I2C|wbuffer\(7) & (\I2C|state_read.000000111~q\ & (\I2C|state_stop.000000010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|wbuffer\(7),
	datab => \I2C|state_read.000000111~q\,
	datac => \I2C|state_stop.000000010~q\,
	datad => \I2C|state_read.000000001~q\,
	combout => \I2C|Selector125~0_combout\);

-- Location: LCCOMB_X23_Y15_N30
\I2C|SDA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|SDA~1_combout\ = (\rst_n~input_o\ & \I2C|timer4_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datad => \I2C|timer4_flag~q\,
	combout => \I2C|SDA~1_combout\);

-- Location: LCCOMB_X28_Y15_N10
\I2C|Selector127~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector127~1_combout\ = (\I2C|state_write.000000000~q\ & (!\I2C|wstate.000000000~q\ & !\I2C|wdone~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_write.000000000~q\,
	datab => \I2C|wstate.000000000~q\,
	datac => \I2C|wdone~q\,
	combout => \I2C|Selector127~1_combout\);

-- Location: LCCOMB_X24_Y16_N0
\I2C|Selector127~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector127~2_combout\ = (!\I2C|done~q\ & (\I2C|state_shift.000000001~q\ & (!\I2C|state.000001001~q\ & \I2C|state.000000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|done~q\,
	datab => \I2C|state_shift.000000001~q\,
	datac => \I2C|state.000001001~q\,
	datad => \I2C|state.000000000~q\,
	combout => \I2C|Selector127~2_combout\);

-- Location: LCCOMB_X25_Y15_N26
\I2C|Selector127~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector127~3_combout\ = (\I2C|Selector127~2_combout\ & (((\I2C|Selector127~1_combout\ & \I2C|Selector127~0_combout\)) # (!\I2C|state_read~38_combout\))) # (!\I2C|Selector127~2_combout\ & (((\I2C|Selector127~1_combout\ & 
-- \I2C|Selector127~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector127~2_combout\,
	datab => \I2C|state_read~38_combout\,
	datac => \I2C|Selector127~1_combout\,
	datad => \I2C|Selector127~0_combout\,
	combout => \I2C|Selector127~3_combout\);

-- Location: FF_X24_Y16_N27
\I2C|state.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state.000000001~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000001~q\);

-- Location: FF_X25_Y16_N3
\I2C|state.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state~37_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000010~q\);

-- Location: FF_X25_Y16_N21
\I2C|state.000000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state~38_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000011~q\);

-- Location: FF_X25_Y16_N31
\I2C|state.000000100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state~39_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000100~q\);

-- Location: LCCOMB_X25_Y16_N8
\I2C|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector38~0_combout\ = (\I2C|state.000000100~q\) # ((\I2C|state.000000011~q\) # ((\I2C|state.000000001~q\) # (\I2C|state.000000010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state.000000100~q\,
	datab => \I2C|state.000000011~q\,
	datac => \I2C|state.000000001~q\,
	datad => \I2C|state.000000010~q\,
	combout => \I2C|Selector38~0_combout\);

-- Location: FF_X25_Y16_N27
\I2C|state.000000101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state~40_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000101~q\);

-- Location: LCCOMB_X25_Y16_N18
\I2C|Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector38~1_combout\ = (\I2C|state.000000110~q\) # ((\I2C|state.000000111~q\) # ((\I2C|state.000000101~q\) # (\I2C|state.000001000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state.000000110~q\,
	datab => \I2C|state.000000111~q\,
	datac => \I2C|state.000000101~q\,
	datad => \I2C|state.000001000~q\,
	combout => \I2C|Selector38~1_combout\);

-- Location: LCCOMB_X25_Y16_N24
\I2C|Selector38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector38~2_combout\ = (\I2C|Selector38~0_combout\) # (\I2C|Selector38~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|Selector38~0_combout\,
	datad => \I2C|Selector38~1_combout\,
	combout => \I2C|Selector38~2_combout\);

-- Location: LCCOMB_X23_Y16_N0
\I2C|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Decoder0~0_combout\ = (!\I2C|counter\(4) & (!\I2C|counter\(3) & (!\I2C|counter\(5) & \I2C|state_shift.000000011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|counter\(4),
	datab => \I2C|counter\(3),
	datac => \I2C|counter\(5),
	datad => \I2C|state_shift.000000011~q\,
	combout => \I2C|Decoder0~0_combout\);

-- Location: LCCOMB_X23_Y16_N6
\I2C|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Decoder0~1_combout\ = (!\I2C|counter\(0) & (!\I2C|counter\(6) & (!\I2C|counter\(7) & \I2C|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|counter\(0),
	datab => \I2C|counter\(6),
	datac => \I2C|counter\(7),
	datad => \I2C|Decoder0~0_combout\,
	combout => \I2C|Decoder0~1_combout\);

-- Location: LCCOMB_X25_Y18_N24
\I2C|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Decoder0~2_combout\ = (!\I2C|counter\(2) & (\I2C|Decoder0~1_combout\ & !\I2C|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|counter\(2),
	datac => \I2C|Decoder0~1_combout\,
	datad => \I2C|counter\(1),
	combout => \I2C|Decoder0~2_combout\);

-- Location: LCCOMB_X24_Y18_N6
\I2C|Selector38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector38~3_combout\ = (\I2C|Selector38~2_combout\ & ((\I2C|Decoder0~2_combout\ & (\SDA~input_o\)) # (!\I2C|Decoder0~2_combout\ & ((\I2C|ring_buffer\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDA~input_o\,
	datab => \I2C|ring_buffer\(7),
	datac => \I2C|Selector38~2_combout\,
	datad => \I2C|Decoder0~2_combout\,
	combout => \I2C|Selector38~3_combout\);

-- Location: LCCOMB_X23_Y16_N28
\I2C|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Decoder0~3_combout\ = (\I2C|counter\(0) & (!\I2C|counter\(6) & (!\I2C|counter\(7) & \I2C|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|counter\(0),
	datab => \I2C|counter\(6),
	datac => \I2C|counter\(7),
	datad => \I2C|Decoder0~0_combout\,
	combout => \I2C|Decoder0~3_combout\);

-- Location: LCCOMB_X23_Y16_N10
\I2C|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Decoder0~4_combout\ = (!\I2C|counter\(2) & (!\I2C|counter\(1) & \I2C|Decoder0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|counter\(2),
	datac => \I2C|counter\(1),
	datad => \I2C|Decoder0~3_combout\,
	combout => \I2C|Decoder0~4_combout\);

-- Location: LCCOMB_X24_Y18_N2
\I2C|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector39~0_combout\ = (\I2C|Selector38~2_combout\ & ((\I2C|Decoder0~4_combout\ & ((\SDA~input_o\))) # (!\I2C|Decoder0~4_combout\ & (\I2C|ring_buffer\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Decoder0~4_combout\,
	datab => \I2C|ring_buffer\(6),
	datac => \I2C|Selector38~2_combout\,
	datad => \SDA~input_o\,
	combout => \I2C|Selector39~0_combout\);

-- Location: LCCOMB_X25_Y18_N6
\I2C|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Decoder0~5_combout\ = (!\I2C|counter\(2) & (\I2C|Decoder0~1_combout\ & \I2C|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|counter\(2),
	datac => \I2C|Decoder0~1_combout\,
	datad => \I2C|counter\(1),
	combout => \I2C|Decoder0~5_combout\);

-- Location: LCCOMB_X24_Y18_N18
\I2C|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector40~0_combout\ = (\I2C|Selector38~2_combout\ & ((\I2C|Decoder0~5_combout\ & (\SDA~input_o\)) # (!\I2C|Decoder0~5_combout\ & ((\I2C|ring_buffer\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDA~input_o\,
	datab => \I2C|ring_buffer\(5),
	datac => \I2C|Selector38~2_combout\,
	datad => \I2C|Decoder0~5_combout\,
	combout => \I2C|Selector40~0_combout\);

-- Location: LCCOMB_X23_Y16_N8
\I2C|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Decoder0~6_combout\ = (\I2C|Decoder0~3_combout\ & (\I2C|counter\(1) & !\I2C|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Decoder0~3_combout\,
	datac => \I2C|counter\(1),
	datad => \I2C|counter\(2),
	combout => \I2C|Decoder0~6_combout\);

-- Location: LCCOMB_X24_Y18_N10
\I2C|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector41~0_combout\ = (\I2C|Selector38~2_combout\ & ((\I2C|Decoder0~6_combout\ & ((\SDA~input_o\))) # (!\I2C|Decoder0~6_combout\ & (\I2C|ring_buffer\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector38~2_combout\,
	datab => \I2C|ring_buffer\(4),
	datac => \I2C|Decoder0~6_combout\,
	datad => \SDA~input_o\,
	combout => \I2C|Selector41~0_combout\);

-- Location: LCCOMB_X25_Y18_N16
\I2C|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Decoder0~7_combout\ = (\I2C|counter\(2) & (\I2C|Decoder0~1_combout\ & !\I2C|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|counter\(2),
	datac => \I2C|Decoder0~1_combout\,
	datad => \I2C|counter\(1),
	combout => \I2C|Decoder0~7_combout\);

-- Location: LCCOMB_X24_Y18_N8
\I2C|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector42~0_combout\ = (\I2C|Selector38~2_combout\ & ((\I2C|Decoder0~7_combout\ & ((\SDA~input_o\))) # (!\I2C|Decoder0~7_combout\ & (\I2C|ring_buffer\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector38~2_combout\,
	datab => \I2C|Decoder0~7_combout\,
	datac => \I2C|ring_buffer\(3),
	datad => \SDA~input_o\,
	combout => \I2C|Selector42~0_combout\);

-- Location: LCCOMB_X23_Y16_N30
\I2C|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Decoder0~8_combout\ = (\I2C|Decoder0~3_combout\ & (!\I2C|counter\(1) & \I2C|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Decoder0~3_combout\,
	datac => \I2C|counter\(1),
	datad => \I2C|counter\(2),
	combout => \I2C|Decoder0~8_combout\);

-- Location: LCCOMB_X24_Y18_N26
\I2C|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector43~0_combout\ = (\I2C|Selector38~2_combout\ & ((\I2C|Decoder0~8_combout\ & ((\SDA~input_o\))) # (!\I2C|Decoder0~8_combout\ & (\I2C|ring_buffer\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector38~2_combout\,
	datab => \I2C|Decoder0~8_combout\,
	datac => \I2C|ring_buffer\(2),
	datad => \SDA~input_o\,
	combout => \I2C|Selector43~0_combout\);

-- Location: LCCOMB_X25_Y18_N14
\I2C|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Decoder0~9_combout\ = (\I2C|counter\(2) & (\I2C|Decoder0~1_combout\ & \I2C|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|counter\(2),
	datac => \I2C|Decoder0~1_combout\,
	datad => \I2C|counter\(1),
	combout => \I2C|Decoder0~9_combout\);

-- Location: LCCOMB_X24_Y18_N30
\I2C|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector44~0_combout\ = (\I2C|Selector38~2_combout\ & ((\I2C|Decoder0~9_combout\ & ((\SDA~input_o\))) # (!\I2C|Decoder0~9_combout\ & (\I2C|ring_buffer\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector38~2_combout\,
	datab => \I2C|Decoder0~9_combout\,
	datac => \I2C|ring_buffer\(1),
	datad => \SDA~input_o\,
	combout => \I2C|Selector44~0_combout\);

-- Location: FF_X24_Y18_N13
\I2C|ring_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|ring_buffer~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \I2C|ring_buffer[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|ring_buffer\(0));

-- Location: LCCOMB_X23_Y16_N4
\I2C|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Decoder0~10_combout\ = (\I2C|Decoder0~3_combout\ & (\I2C|counter\(1) & \I2C|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Decoder0~3_combout\,
	datac => \I2C|counter\(1),
	datad => \I2C|counter\(2),
	combout => \I2C|Decoder0~10_combout\);

-- Location: LCCOMB_X24_Y18_N12
\I2C|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector45~0_combout\ = (\I2C|Selector38~2_combout\ & ((\I2C|Decoder0~10_combout\ & ((\SDA~input_o\))) # (!\I2C|Decoder0~10_combout\ & (\I2C|ring_buffer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector38~2_combout\,
	datab => \I2C|Decoder0~10_combout\,
	datac => \I2C|ring_buffer\(0),
	datad => \SDA~input_o\,
	combout => \I2C|Selector45~0_combout\);

-- Location: LCCOMB_X24_Y18_N14
\I2C|ring_buffer~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|ring_buffer~7_combout\ = (\I2C|done~q\ & (\I2C|ring_buffer\(0))) # (!\I2C|done~q\ & ((\I2C|Selector45~0_combout\) # ((\I2C|ring_buffer\(0) & \I2C|state.000001001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ring_buffer\(0),
	datab => \I2C|done~q\,
	datac => \I2C|Selector45~0_combout\,
	datad => \I2C|state.000001001~q\,
	combout => \I2C|ring_buffer~7_combout\);

-- Location: FF_X23_Y14_N31
\I2C|timer4_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer4_reg~0_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer4_reg\(2));

-- Location: FF_X23_Y14_N5
\I2C|timer4_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer4_reg~1_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer4_reg\(1));

-- Location: FF_X23_Y14_N7
\I2C|timer4_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer4_reg~2_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer4_reg\(0));

-- Location: FF_X23_Y14_N3
\I2C|timer4_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer4_reg~7_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer4_reg\(7));

-- Location: LCCOMB_X24_Y15_N0
\I2C|state_read~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~39_combout\ = ((!\I2C|stop_done~q\ & (!\I2C|state_stop.000000011~q\ & \I2C|state_read.000000111~q\))) # (!\I2C|timer4_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|stop_done~q\,
	datab => \I2C|timer4_flag~q\,
	datac => \I2C|state_stop.000000011~q\,
	datad => \I2C|state_read.000000111~q\,
	combout => \I2C|state_read~39_combout\);

-- Location: LCCOMB_X25_Y16_N10
\I2C|state_read~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~41_combout\ = (\I2C|done~q\ & ((\I2C|state_read.000000101~q\) # ((\I2C|state_read.000000011~q\)))) # (!\I2C|done~q\ & (\I2C|state.000001001~q\ & ((\I2C|state_read.000000101~q\) # (\I2C|state_read.000000011~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|done~q\,
	datab => \I2C|state_read.000000101~q\,
	datac => \I2C|state_read.000000011~q\,
	datad => \I2C|state.000001001~q\,
	combout => \I2C|state_read~41_combout\);

-- Location: LCCOMB_X25_Y14_N12
\I2C|state_read~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~42_combout\ = (\I2C|state_read.000000110~q\ & ((\I2C|state_no_ack.000000010~q\) # (\I2C|no_ack_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|state_read.000000110~q\,
	datac => \I2C|state_no_ack.000000010~q\,
	datad => \I2C|no_ack_done~q\,
	combout => \I2C|state_read~42_combout\);

-- Location: LCCOMB_X24_Y15_N10
\I2C|state_read~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~43_combout\ = (\I2C|state_read~40_combout\ & (!\I2C|state_read~42_combout\ & ((\I2C|state_read.000000110~q\) # (!\I2C|state_read~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read~41_combout\,
	datab => \I2C|state_read~40_combout\,
	datac => \I2C|state_read~42_combout\,
	datad => \I2C|state_read.000000110~q\,
	combout => \I2C|state_read~43_combout\);

-- Location: LCCOMB_X25_Y15_N12
\I2C|state_read~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~45_combout\ = ((!\I2C|state_read~44_combout\ & ((\I2C|state_read~43_combout\) # (\I2C|state_read.000000001~q\)))) # (!\I2C|state_read.000000000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read~43_combout\,
	datab => \I2C|state_read.000000000~q\,
	datac => \I2C|state_read~44_combout\,
	datad => \I2C|state_read.000000001~q\,
	combout => \I2C|state_read~45_combout\);

-- Location: LCCOMB_X25_Y15_N30
\I2C|state_read~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~47_combout\ = (\I2C|state_read~39_combout\) # ((\I2C|state_read~45_combout\ & (!\I2C|state_read.000000111~q\ & \I2C|state_read~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read~45_combout\,
	datab => \I2C|state_read.000000111~q\,
	datac => \I2C|state_read~39_combout\,
	datad => \I2C|state_read~46_combout\,
	combout => \I2C|state_read~47_combout\);

-- Location: LCCOMB_X26_Y15_N18
\I2C|state_read~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~50_combout\ = (\I2C|state_read.000000000~q\ & (!\I2C|state_read.000001000~q\ & (!\I2C|state_read.000000110~q\ & !\I2C|state_read.000000001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read.000000000~q\,
	datab => \I2C|state_read.000001000~q\,
	datac => \I2C|state_read.000000110~q\,
	datad => \I2C|state_read.000000001~q\,
	combout => \I2C|state_read~50_combout\);

-- Location: LCCOMB_X28_Y15_N20
\I2C|wstate.000000000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|wstate.000000000~0_combout\ = (\I2C|wdone~0_combout\ & (\I2C|state_write.000000000~q\ & ((!\I2C|wdone~1_combout\)))) # (!\I2C|wdone~0_combout\ & (((\I2C|wstate.000000000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_write.000000000~q\,
	datab => \I2C|wdone~0_combout\,
	datac => \I2C|wstate.000000000~q\,
	datad => \I2C|wdone~1_combout\,
	combout => \I2C|wstate.000000000~0_combout\);

-- Location: LCCOMB_X23_Y12_N30
\I2C|delay_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~0_combout\ = (!\I2C|Add3~34_combout\ & (\I2C|Add3~32_combout\ & ((!\I2C|Add3~30_combout\) # (!\I2C|LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|LessThan2~4_combout\,
	datab => \I2C|Add3~34_combout\,
	datac => \I2C|Add3~32_combout\,
	datad => \I2C|Add3~30_combout\,
	combout => \I2C|delay_reg~0_combout\);

-- Location: LCCOMB_X22_Y12_N12
\I2C|delay_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~3_combout\ = (\I2C|Add3~28_combout\ & !\I2C|LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|Add3~28_combout\,
	datad => \I2C|LessThan2~5_combout\,
	combout => \I2C|delay_reg~3_combout\);

-- Location: LCCOMB_X23_Y12_N22
\I2C|delay_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~4_combout\ = (!\I2C|LessThan2~5_combout\ & \I2C|Add3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|LessThan2~5_combout\,
	datac => \I2C|Add3~26_combout\,
	combout => \I2C|delay_reg~4_combout\);

-- Location: LCCOMB_X22_Y12_N16
\I2C|delay_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~8_combout\ = (\I2C|Add3~18_combout\ & !\I2C|LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|Add3~18_combout\,
	datad => \I2C|LessThan2~5_combout\,
	combout => \I2C|delay_reg~8_combout\);

-- Location: LCCOMB_X22_Y13_N12
\I2C|delay_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~9_combout\ = (\I2C|Add3~16_combout\ & !\I2C|LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~16_combout\,
	datac => \I2C|LessThan2~5_combout\,
	combout => \I2C|delay_reg~9_combout\);

-- Location: LCCOMB_X22_Y13_N10
\I2C|delay_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~10_combout\ = (!\I2C|LessThan2~5_combout\ & \I2C|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|LessThan2~5_combout\,
	datad => \I2C|Add3~14_combout\,
	combout => \I2C|delay_reg~10_combout\);

-- Location: LCCOMB_X22_Y13_N16
\I2C|delay_reg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~11_combout\ = (!\I2C|LessThan2~5_combout\ & \I2C|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|LessThan2~5_combout\,
	datad => \I2C|Add3~12_combout\,
	combout => \I2C|delay_reg~11_combout\);

-- Location: LCCOMB_X23_Y13_N6
\I2C|delay_reg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~13_combout\ = (\I2C|Add3~8_combout\ & !\I2C|LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|Add3~8_combout\,
	datad => \I2C|LessThan2~5_combout\,
	combout => \I2C|delay_reg~13_combout\);

-- Location: LCCOMB_X23_Y13_N12
\I2C|delay_reg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~17_combout\ = (\I2C|Add3~0_combout\ & !\I2C|LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|Add3~0_combout\,
	datad => \I2C|LessThan2~5_combout\,
	combout => \I2C|delay_reg~17_combout\);

-- Location: LCCOMB_X24_Y15_N8
\I2C|state_read~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~59_combout\ = (!\I2C|state_read~51_combout\ & (!\I2C|state_read~41_combout\ & ((!\I2C|state_read.000000110~q\) # (!\I2C|state_read~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read~51_combout\,
	datab => \I2C|state_read~54_combout\,
	datac => \I2C|state_read~41_combout\,
	datad => \I2C|state_read.000000110~q\,
	combout => \I2C|state_read~59_combout\);

-- Location: FF_X30_Y15_N13
\I2C|shift_var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector25~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|shift_var[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|shift_var\(1));

-- Location: FF_X30_Y15_N7
\I2C|shift_var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector24~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|shift_var[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|shift_var\(2));

-- Location: FF_X28_Y15_N29
\I2C|shift_var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector26~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|wdone~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|shift_var\(0));

-- Location: LCCOMB_X30_Y15_N8
\I2C|wbuffer[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|wbuffer[7]~1_combout\ = (\I2C|shift_var\(0) & (!\I2C|shift_var\(2) & !\I2C|shift_var\(1))) # (!\I2C|shift_var\(0) & ((\I2C|shift_var\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|shift_var\(2),
	datac => \I2C|shift_var\(0),
	datad => \I2C|shift_var\(1),
	combout => \I2C|wbuffer[7]~1_combout\);

-- Location: FF_X29_Y15_N23
\I2C|shift_var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector23~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|shift_var[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|shift_var\(3));

-- Location: LCCOMB_X26_Y15_N2
\I2C|wbuffer[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|wbuffer[7]~2_combout\ = ((!\I2C|shift_var\(3) & (\I2C|Selector127~1_combout\ & \I2C|wbuffer[7]~1_combout\))) # (!\I2C|state_read.000000000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|shift_var\(3),
	datab => \I2C|Selector127~1_combout\,
	datac => \I2C|state_read.000000000~q\,
	datad => \I2C|wbuffer[7]~1_combout\,
	combout => \I2C|wbuffer[7]~2_combout\);

-- Location: LCCOMB_X26_Y15_N26
\I2C|wbuffer[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|wbuffer[7]~3_combout\ = (\I2C|SDA~1_combout\ & ((\I2C|state_read.000000000~q\ & ((\I2C|Selector127~0_combout\))) # (!\I2C|state_read.000000000~q\ & (\I2C|state_start.000000011~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read.000000000~q\,
	datab => \I2C|state_start.000000011~q\,
	datac => \I2C|SDA~1_combout\,
	datad => \I2C|Selector127~0_combout\,
	combout => \I2C|wbuffer[7]~3_combout\);

-- Location: LCCOMB_X26_Y15_N22
\I2C|wbuffer[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|wbuffer[7]~4_combout\ = (\I2C|wbuffer[7]~3_combout\ & ((\I2C|wbuffer[7]~2_combout\) # ((!\I2C|Selector127~1_combout\ & \I2C|wbuffer\(7))))) # (!\I2C|wbuffer[7]~3_combout\ & (((\I2C|wbuffer\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|wbuffer[7]~3_combout\,
	datab => \I2C|Selector127~1_combout\,
	datac => \I2C|wbuffer\(7),
	datad => \I2C|wbuffer[7]~2_combout\,
	combout => \I2C|wbuffer[7]~4_combout\);

-- Location: LCCOMB_X25_Y16_N2
\I2C|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state~37_combout\ = (\I2C|state_shift.000000100~q\ & ((\I2C|state~35_combout\ & (\I2C|state.000000001~q\)) # (!\I2C|state~35_combout\ & ((\I2C|state.000000010~q\))))) # (!\I2C|state_shift.000000100~q\ & (((\I2C|state.000000010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state.000000001~q\,
	datab => \I2C|state_shift.000000100~q\,
	datac => \I2C|state.000000010~q\,
	datad => \I2C|state~35_combout\,
	combout => \I2C|state~37_combout\);

-- Location: LCCOMB_X25_Y16_N20
\I2C|state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state~38_combout\ = (\I2C|state~35_combout\ & ((\I2C|state_shift.000000100~q\ & ((\I2C|state.000000010~q\))) # (!\I2C|state_shift.000000100~q\ & (\I2C|state.000000011~q\)))) # (!\I2C|state~35_combout\ & (((\I2C|state.000000011~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state~35_combout\,
	datab => \I2C|state_shift.000000100~q\,
	datac => \I2C|state.000000011~q\,
	datad => \I2C|state.000000010~q\,
	combout => \I2C|state~38_combout\);

-- Location: LCCOMB_X25_Y16_N30
\I2C|state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state~39_combout\ = (\I2C|state~35_combout\ & ((\I2C|state_shift.000000100~q\ & ((\I2C|state.000000011~q\))) # (!\I2C|state_shift.000000100~q\ & (\I2C|state.000000100~q\)))) # (!\I2C|state~35_combout\ & (((\I2C|state.000000100~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state~35_combout\,
	datab => \I2C|state_shift.000000100~q\,
	datac => \I2C|state.000000100~q\,
	datad => \I2C|state.000000011~q\,
	combout => \I2C|state~39_combout\);

-- Location: LCCOMB_X25_Y16_N26
\I2C|state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state~40_combout\ = (\I2C|state_shift.000000100~q\ & ((\I2C|state~35_combout\ & (\I2C|state.000000100~q\)) # (!\I2C|state~35_combout\ & ((\I2C|state.000000101~q\))))) # (!\I2C|state_shift.000000100~q\ & (((\I2C|state.000000101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state.000000100~q\,
	datab => \I2C|state_shift.000000100~q\,
	datac => \I2C|state.000000101~q\,
	datad => \I2C|state~35_combout\,
	combout => \I2C|state~40_combout\);

-- Location: LCCOMB_X24_Y16_N18
\I2C|counter[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|counter[7]~16_combout\ = (!\I2C|done~q\ & (\rst_n~input_o\ & \I2C|ring_buffer[7]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|done~q\,
	datac => \rst_n~input_o\,
	datad => \I2C|ring_buffer[7]~8_combout\,
	combout => \I2C|counter[7]~16_combout\);

-- Location: LCCOMB_X23_Y14_N30
\I2C|timer4_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer4_reg~0_combout\ = (\I2C|Add0~4_combout\ & (!\I2C|Add0~18_combout\ & ((\I2C|LessThan0~0_combout\) # (\I2C|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~4_combout\,
	datab => \I2C|Add0~18_combout\,
	datac => \I2C|LessThan0~0_combout\,
	datad => \I2C|LessThan0~1_combout\,
	combout => \I2C|timer4_reg~0_combout\);

-- Location: LCCOMB_X23_Y14_N4
\I2C|timer4_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer4_reg~1_combout\ = (\I2C|Add0~2_combout\ & (!\I2C|Add0~18_combout\ & ((\I2C|LessThan0~0_combout\) # (\I2C|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~2_combout\,
	datab => \I2C|Add0~18_combout\,
	datac => \I2C|LessThan0~0_combout\,
	datad => \I2C|LessThan0~1_combout\,
	combout => \I2C|timer4_reg~1_combout\);

-- Location: LCCOMB_X23_Y14_N6
\I2C|timer4_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer4_reg~2_combout\ = (\I2C|Add0~0_combout\ & (!\I2C|Add0~18_combout\ & ((\I2C|LessThan0~0_combout\) # (\I2C|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~0_combout\,
	datab => \I2C|Add0~18_combout\,
	datac => \I2C|LessThan0~0_combout\,
	datad => \I2C|LessThan0~1_combout\,
	combout => \I2C|timer4_reg~2_combout\);

-- Location: LCCOMB_X23_Y14_N2
\I2C|timer4_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer4_reg~7_combout\ = (!\I2C|Add0~18_combout\ & (\I2C|Add0~14_combout\ & ((\I2C|LessThan0~0_combout\) # (\I2C|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~18_combout\,
	datab => \I2C|Add0~14_combout\,
	datac => \I2C|LessThan0~0_combout\,
	datad => \I2C|LessThan0~1_combout\,
	combout => \I2C|timer4_reg~7_combout\);

-- Location: FF_X29_Y15_N31
\I2C|state_write.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_write~37_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_write.000000010~q\);

-- Location: LCCOMB_X29_Y15_N20
\I2C|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector25~0_combout\ = (!\I2C|shift_var\(3) & (((!\I2C|wstate.000000010~q\ & !\I2C|wdone~q\)) # (!\I2C|state_write.000001001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|shift_var\(3),
	datab => \I2C|state_write.000001001~q\,
	datac => \I2C|wstate.000000010~q\,
	datad => \I2C|wdone~q\,
	combout => \I2C|Selector25~0_combout\);

-- Location: LCCOMB_X30_Y15_N12
\I2C|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector25~1_combout\ = (\I2C|Selector25~0_combout\ & (\I2C|shift_var\(0) $ (!\I2C|shift_var\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|shift_var\(0),
	datac => \I2C|shift_var\(1),
	datad => \I2C|Selector25~0_combout\,
	combout => \I2C|Selector25~1_combout\);

-- Location: FF_X28_Y15_N17
\I2C|state_write.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector8~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|wdone~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_write.000000001~q\);

-- Location: FF_X29_Y15_N11
\I2C|state_write.000000100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_write~38_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_write.000000100~q\);

-- Location: LCCOMB_X29_Y15_N28
\I2C|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector26~0_combout\ = (\I2C|state_write.000000001~q\) # ((\I2C|state_write.000000011~q\) # ((\I2C|state_write.000000010~q\) # (\I2C|state_write.000000100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_write.000000001~q\,
	datab => \I2C|state_write.000000011~q\,
	datac => \I2C|state_write.000000010~q\,
	datad => \I2C|state_write.000000100~q\,
	combout => \I2C|Selector26~0_combout\);

-- Location: FF_X29_Y15_N27
\I2C|state_write.000000101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_write~39_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_write.000000101~q\);

-- Location: LCCOMB_X29_Y15_N12
\I2C|Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector26~1_combout\ = (\I2C|state_write.000000101~q\) # ((\I2C|state_write.000000111~q\) # ((\I2C|state_write.000000110~q\) # (\I2C|state_write.000001000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_write.000000101~q\,
	datab => \I2C|state_write.000000111~q\,
	datac => \I2C|state_write.000000110~q\,
	datad => \I2C|state_write.000001000~q\,
	combout => \I2C|Selector26~1_combout\);

-- Location: LCCOMB_X29_Y15_N14
\I2C|Selector26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector26~2_combout\ = (\I2C|Selector26~0_combout\) # ((\I2C|state_write.000001001~q\) # (\I2C|Selector26~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Selector26~0_combout\,
	datac => \I2C|state_write.000001001~q\,
	datad => \I2C|Selector26~1_combout\,
	combout => \I2C|Selector26~2_combout\);

-- Location: LCCOMB_X28_Y15_N14
\I2C|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector4~0_combout\ = (\I2C|wdone~q\) # (\I2C|wstate.000000000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|wdone~q\,
	datad => \I2C|wstate.000000000~q\,
	combout => \I2C|Selector4~0_combout\);

-- Location: LCCOMB_X29_Y15_N24
\I2C|shift_var[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|shift_var[1]~0_combout\ = (\I2C|Selector26~2_combout\ & (\I2C|wdone~0_combout\ & ((\I2C|Selector7~0_combout\) # (!\I2C|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector4~0_combout\,
	datab => \I2C|Selector7~0_combout\,
	datac => \I2C|Selector26~2_combout\,
	datad => \I2C|wdone~0_combout\,
	combout => \I2C|shift_var[1]~0_combout\);

-- Location: LCCOMB_X30_Y15_N6
\I2C|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector24~0_combout\ = (\I2C|Selector25~0_combout\ & (\I2C|shift_var\(2) $ (((!\I2C|shift_var\(0) & \I2C|shift_var\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|shift_var\(0),
	datab => \I2C|Selector25~0_combout\,
	datac => \I2C|shift_var\(2),
	datad => \I2C|shift_var\(1),
	combout => \I2C|Selector24~0_combout\);

-- Location: LCCOMB_X29_Y15_N6
\I2C|Selector26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector26~3_combout\ = (\I2C|Selector26~2_combout\ & ((\I2C|shift_var\(0) & ((!\I2C|Selector4~0_combout\))) # (!\I2C|shift_var\(0) & ((\I2C|shift_var\(3)) # (\I2C|Selector4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|shift_var\(0),
	datab => \I2C|Selector26~2_combout\,
	datac => \I2C|shift_var\(3),
	datad => \I2C|Selector4~0_combout\,
	combout => \I2C|Selector26~3_combout\);

-- Location: LCCOMB_X28_Y15_N28
\I2C|Selector26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector26~4_combout\ = (!\I2C|Selector7~0_combout\ & (!\I2C|Selector26~3_combout\ & ((\I2C|state_write.000000000~q\) # (\I2C|shift_var\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_write.000000000~q\,
	datab => \I2C|Selector7~0_combout\,
	datac => \I2C|shift_var\(0),
	datad => \I2C|Selector26~3_combout\,
	combout => \I2C|Selector26~4_combout\);

-- Location: LCCOMB_X29_Y15_N22
\I2C|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector23~0_combout\ = (!\I2C|shift_var\(0) & (\I2C|Selector25~0_combout\ & (\I2C|shift_var\(1) & \I2C|shift_var\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|shift_var\(0),
	datab => \I2C|Selector25~0_combout\,
	datac => \I2C|shift_var\(1),
	datad => \I2C|shift_var\(2),
	combout => \I2C|Selector23~0_combout\);

-- Location: LCCOMB_X29_Y15_N30
\I2C|state_write~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_write~37_combout\ = (\I2C|wdone~0_combout\ & ((\I2C|wdone~1_combout\ & (\I2C|state_write.000000001~q\)) # (!\I2C|wdone~1_combout\ & ((\I2C|state_write.000000010~q\))))) # (!\I2C|wdone~0_combout\ & (((\I2C|state_write.000000010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_write.000000001~q\,
	datab => \I2C|wdone~0_combout\,
	datac => \I2C|state_write.000000010~q\,
	datad => \I2C|wdone~1_combout\,
	combout => \I2C|state_write~37_combout\);

-- Location: LCCOMB_X28_Y15_N16
\I2C|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector8~0_combout\ = ((!\I2C|wstate.000000010~q\ & (\I2C|state_write.000000001~q\ & !\I2C|wdone~q\))) # (!\I2C|state_write.000000000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_write.000000000~q\,
	datab => \I2C|wstate.000000010~q\,
	datac => \I2C|state_write.000000001~q\,
	datad => \I2C|wdone~q\,
	combout => \I2C|Selector8~0_combout\);

-- Location: LCCOMB_X29_Y15_N10
\I2C|state_write~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_write~38_combout\ = (\I2C|wdone~0_combout\ & ((\I2C|wdone~1_combout\ & (\I2C|state_write.000000011~q\)) # (!\I2C|wdone~1_combout\ & ((\I2C|state_write.000000100~q\))))) # (!\I2C|wdone~0_combout\ & (((\I2C|state_write.000000100~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_write.000000011~q\,
	datab => \I2C|wdone~0_combout\,
	datac => \I2C|state_write.000000100~q\,
	datad => \I2C|wdone~1_combout\,
	combout => \I2C|state_write~38_combout\);

-- Location: LCCOMB_X29_Y15_N26
\I2C|state_write~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_write~39_combout\ = (\I2C|wdone~0_combout\ & ((\I2C|wdone~1_combout\ & (\I2C|state_write.000000100~q\)) # (!\I2C|wdone~1_combout\ & ((\I2C|state_write.000000101~q\))))) # (!\I2C|wdone~0_combout\ & (((\I2C|state_write.000000101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_write.000000100~q\,
	datab => \I2C|wdone~0_combout\,
	datac => \I2C|state_write.000000101~q\,
	datad => \I2C|wdone~1_combout\,
	combout => \I2C|state_write~39_combout\);

-- Location: LCCOMB_X18_Y17_N8
\timer2_reg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~11_combout\ = (\Add0~46_combout\ & ((\Add0~50_combout\) # ((\Add0~52_combout\) # (!\Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add0~46_combout\,
	datac => \Add0~52_combout\,
	datad => \Equal0~7_combout\,
	combout => \timer2_reg~11_combout\);

-- Location: LCCOMB_X24_Y17_N0
\Div1|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~66_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~66_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~63_combout\);

-- Location: LCCOMB_X24_Y15_N6
\I2C|Selector118~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector118~2_combout\ = (\I2C|stop_done~q\ & (((\I2C|state_read.000000111~q\) # (!\I2C|state_read~42_combout\)))) # (!\I2C|stop_done~q\ & (\I2C|state_stop.000000011~q\ & ((\I2C|state_read.000000111~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_stop.000000011~q\,
	datab => \I2C|state_read~42_combout\,
	datac => \I2C|stop_done~q\,
	datad => \I2C|state_read.000000111~q\,
	combout => \I2C|Selector118~2_combout\);

-- Location: LCCOMB_X25_Y15_N6
\I2C|state_read~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~63_combout\ = ((!\I2C|done~0_combout\ & ((\I2C|state_read.000000101~q\) # (\I2C|state_read.000000011~q\)))) # (!\I2C|timer4_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer4_flag~q\,
	datab => \I2C|state_read.000000101~q\,
	datac => \I2C|done~0_combout\,
	datad => \I2C|state_read.000000011~q\,
	combout => \I2C|state_read~63_combout\);

-- Location: LCCOMB_X23_Y17_N30
\Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\I2C|data\(6))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(6),
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X24_Y17_N22
\Div1|auto_generated|divider|divider|StageOut[27]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~66_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\I2C|data\(4))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(4),
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~66_combout\);

-- Location: LCCOMB_X25_Y17_N24
\Div1|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\I2C|data\(3)))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \I2C|data\(3),
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X25_Y19_N26
\Mod2|auto_generated|divider|divider|StageOut[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[23]~67_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\I2C|data\(6))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \I2C|data\(6),
	datac => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[23]~67_combout\);

-- Location: LCCOMB_X25_Y17_N12
\hundreds[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hundreds[0]~0_combout\ = !\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \hundreds[0]~0_combout\);

-- Location: LCCOMB_X22_Y21_N4
\thousands[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \thousands[0]~0_combout\ = !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \thousands[0]~0_combout\);

-- Location: LCCOMB_X24_Y16_N26
\I2C|state.000000001~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state.000000001~0_combout\ = !\I2C|state.000000000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state.000000000~q\,
	combout => \I2C|state.000000001~0_combout\);

-- Location: IOIBUF_X28_Y24_N8
\SDA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDA,
	o => \SDA~input_o\);

-- Location: LCCOMB_X28_Y15_N30
\I2C|wstate.000000001~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|wstate.000000001~feeder_combout\ = \I2C|Selector127~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|Selector127~1_combout\,
	combout => \I2C|wstate.000000001~feeder_combout\);

-- Location: LCCOMB_X23_Y18_N20
\I2C|data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|data[0]~feeder_combout\ = \I2C|ring_buffer~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|ring_buffer~7_combout\,
	combout => \I2C|data[0]~feeder_combout\);

-- Location: IOOBUF_X28_Y24_N2
\SCL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I2C|SCL~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SCL~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\SDA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I2C|SDA~reg0_q\,
	oe => \I2C|SDA~en_q\,
	devoe => ww_devoe,
	o => \SDA~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\LED1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED1~reg0_q\,
	devoe => ww_devoe,
	o => \LED1~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\LED2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED2~reg0_q\,
	devoe => ww_devoe,
	o => \LED2~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\LED3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED3~reg0_q\,
	devoe => ww_devoe,
	o => \LED3~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\LED4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED4~reg0_q\,
	devoe => ww_devoe,
	o => \LED4~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\SEG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decoder|SEG\(0),
	devoe => ww_devoe,
	o => \SEG[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\SEG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decoder|SEG\(1),
	devoe => ww_devoe,
	o => \SEG[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\SEG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decoder|SEG\(2),
	devoe => ww_devoe,
	o => \SEG[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\SEG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decoder|SEG\(3),
	devoe => ww_devoe,
	o => \SEG[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\SEG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decoder|SEG\(4),
	devoe => ww_devoe,
	o => \SEG[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\SEG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decoder|SEG\(5),
	devoe => ww_devoe,
	o => \SEG[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\SEG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decoder|SEG\(6),
	devoe => ww_devoe,
	o => \SEG[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\SEG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decoder|SEG\(7),
	devoe => ww_devoe,
	o => \SEG[7]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\DIGIT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|DIGIT\(0),
	devoe => ww_devoe,
	o => \DIGIT[0]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\DIGIT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|DIGIT\(1),
	devoe => ww_devoe,
	o => \DIGIT[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\DIGIT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|DIGIT\(2),
	devoe => ww_devoe,
	o => \DIGIT[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\DIGIT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|DIGIT\(3),
	devoe => ww_devoe,
	o => \DIGIT[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X23_Y12_N14
\I2C|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~32_combout\ = (\I2C|delay_reg\(16) & (\I2C|Add3~31\ $ (GND))) # (!\I2C|delay_reg\(16) & (!\I2C|Add3~31\ & VCC))
-- \I2C|Add3~33\ = CARRY((\I2C|delay_reg\(16) & !\I2C|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|delay_reg\(16),
	datad => VCC,
	cin => \I2C|Add3~31\,
	combout => \I2C|Add3~32_combout\,
	cout => \I2C|Add3~33\);

-- Location: LCCOMB_X22_Y12_N6
\I2C|delay_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~7_combout\ = (\I2C|Add3~20_combout\ & !\I2C|LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~20_combout\,
	datad => \I2C|LessThan2~5_combout\,
	combout => \I2C|delay_reg~7_combout\);

-- Location: LCCOMB_X22_Y14_N16
\I2C|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~6_combout\ = (\I2C|timer4_reg\(3) & (!\I2C|Add0~5\)) # (!\I2C|timer4_reg\(3) & ((\I2C|Add0~5\) # (GND)))
-- \I2C|Add0~7\ = CARRY((!\I2C|Add0~5\) # (!\I2C|timer4_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer4_reg\(3),
	datad => VCC,
	cin => \I2C|Add0~5\,
	combout => \I2C|Add0~6_combout\,
	cout => \I2C|Add0~7\);

-- Location: LCCOMB_X22_Y14_N24
\I2C|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~14_combout\ = (\I2C|timer4_reg\(7) & (!\I2C|Add0~13\)) # (!\I2C|timer4_reg\(7) & ((\I2C|Add0~13\) # (GND)))
-- \I2C|Add0~15\ = CARRY((!\I2C|Add0~13\) # (!\I2C|timer4_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer4_reg\(7),
	datad => VCC,
	cin => \I2C|Add0~13\,
	combout => \I2C|Add0~14_combout\,
	cout => \I2C|Add0~15\);

-- Location: LCCOMB_X23_Y14_N18
\I2C|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|LessThan0~1_combout\ = ((!\I2C|Add0~12_combout\) # (!\I2C|Add0~16_combout\)) # (!\I2C|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add0~14_combout\,
	datac => \I2C|Add0~16_combout\,
	datad => \I2C|Add0~12_combout\,
	combout => \I2C|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y14_N8
\I2C|timer4_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer4_reg~3_combout\ = (!\I2C|Add0~18_combout\ & (\I2C|Add0~6_combout\ & ((\I2C|LessThan0~0_combout\) # (\I2C|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|LessThan0~0_combout\,
	datab => \I2C|Add0~18_combout\,
	datac => \I2C|Add0~6_combout\,
	datad => \I2C|LessThan0~1_combout\,
	combout => \I2C|timer4_reg~3_combout\);

-- Location: IOIBUF_X0_Y11_N22
\rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X23_Y14_N9
\I2C|timer4_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer4_reg~3_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer4_reg\(3));

-- Location: LCCOMB_X22_Y14_N18
\I2C|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~8_combout\ = (\I2C|timer4_reg\(4) & (\I2C|Add0~7\ $ (GND))) # (!\I2C|timer4_reg\(4) & (!\I2C|Add0~7\ & VCC))
-- \I2C|Add0~9\ = CARRY((\I2C|timer4_reg\(4) & !\I2C|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer4_reg\(4),
	datad => VCC,
	cin => \I2C|Add0~7\,
	combout => \I2C|Add0~8_combout\,
	cout => \I2C|Add0~9\);

-- Location: LCCOMB_X23_Y14_N22
\I2C|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|LessThan0~0_combout\ = (((!\I2C|Add0~4_combout\ & !\I2C|Add0~6_combout\)) # (!\I2C|Add0~8_combout\)) # (!\I2C|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~4_combout\,
	datab => \I2C|Add0~10_combout\,
	datac => \I2C|Add0~6_combout\,
	datad => \I2C|Add0~8_combout\,
	combout => \I2C|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y14_N26
\I2C|timer4_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer4_reg~4_combout\ = (!\I2C|Add0~18_combout\ & (\I2C|Add0~8_combout\ & ((\I2C|LessThan0~0_combout\) # (\I2C|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~18_combout\,
	datab => \I2C|Add0~8_combout\,
	datac => \I2C|LessThan0~0_combout\,
	datad => \I2C|LessThan0~1_combout\,
	combout => \I2C|timer4_reg~4_combout\);

-- Location: FF_X23_Y14_N27
\I2C|timer4_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer4_reg~4_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer4_reg\(4));

-- Location: LCCOMB_X22_Y14_N20
\I2C|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~10_combout\ = (\I2C|timer4_reg\(5) & (!\I2C|Add0~9\)) # (!\I2C|timer4_reg\(5) & ((\I2C|Add0~9\) # (GND)))
-- \I2C|Add0~11\ = CARRY((!\I2C|Add0~9\) # (!\I2C|timer4_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer4_reg\(5),
	datad => VCC,
	cin => \I2C|Add0~9\,
	combout => \I2C|Add0~10_combout\,
	cout => \I2C|Add0~11\);

-- Location: LCCOMB_X23_Y14_N16
\I2C|timer4_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer4_reg~5_combout\ = (!\I2C|Add0~18_combout\ & (\I2C|Add0~10_combout\ & ((\I2C|LessThan0~0_combout\) # (\I2C|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~18_combout\,
	datab => \I2C|Add0~10_combout\,
	datac => \I2C|LessThan0~0_combout\,
	datad => \I2C|LessThan0~1_combout\,
	combout => \I2C|timer4_reg~5_combout\);

-- Location: FF_X23_Y14_N17
\I2C|timer4_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer4_reg~5_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer4_reg\(5));

-- Location: LCCOMB_X22_Y14_N22
\I2C|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~12_combout\ = (\I2C|timer4_reg\(6) & (\I2C|Add0~11\ $ (GND))) # (!\I2C|timer4_reg\(6) & (!\I2C|Add0~11\ & VCC))
-- \I2C|Add0~13\ = CARRY((\I2C|timer4_reg\(6) & !\I2C|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer4_reg\(6),
	datad => VCC,
	cin => \I2C|Add0~11\,
	combout => \I2C|Add0~12_combout\,
	cout => \I2C|Add0~13\);

-- Location: LCCOMB_X23_Y14_N12
\I2C|timer4_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer4_reg~6_combout\ = (!\I2C|Add0~18_combout\ & (\I2C|Add0~12_combout\ & ((\I2C|LessThan0~0_combout\) # (\I2C|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~18_combout\,
	datab => \I2C|Add0~12_combout\,
	datac => \I2C|LessThan0~0_combout\,
	datad => \I2C|LessThan0~1_combout\,
	combout => \I2C|timer4_reg~6_combout\);

-- Location: FF_X23_Y14_N13
\I2C|timer4_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer4_reg~6_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer4_reg\(6));

-- Location: LCCOMB_X22_Y14_N26
\I2C|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~16_combout\ = (\I2C|timer4_reg\(8) & (\I2C|Add0~15\ $ (GND))) # (!\I2C|timer4_reg\(8) & (!\I2C|Add0~15\ & VCC))
-- \I2C|Add0~17\ = CARRY((\I2C|timer4_reg\(8) & !\I2C|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer4_reg\(8),
	datad => VCC,
	cin => \I2C|Add0~15\,
	combout => \I2C|Add0~16_combout\,
	cout => \I2C|Add0~17\);

-- Location: LCCOMB_X23_Y14_N0
\I2C|timer4_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer4_reg~8_combout\ = (!\I2C|Add0~18_combout\ & (\I2C|Add0~16_combout\ & ((\I2C|LessThan0~0_combout\) # (\I2C|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|LessThan0~0_combout\,
	datab => \I2C|Add0~18_combout\,
	datac => \I2C|Add0~16_combout\,
	datad => \I2C|LessThan0~1_combout\,
	combout => \I2C|timer4_reg~8_combout\);

-- Location: FF_X23_Y14_N1
\I2C|timer4_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer4_reg~8_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer4_reg\(8));

-- Location: LCCOMB_X22_Y14_N28
\I2C|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~18_combout\ = \I2C|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \I2C|Add0~17\,
	combout => \I2C|Add0~18_combout\);

-- Location: LCCOMB_X23_Y14_N28
\I2C|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|LessThan0~2_combout\ = (\I2C|Add0~18_combout\) # ((!\I2C|LessThan0~0_combout\ & !\I2C|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add0~18_combout\,
	datac => \I2C|LessThan0~0_combout\,
	datad => \I2C|LessThan0~1_combout\,
	combout => \I2C|LessThan0~2_combout\);

-- Location: FF_X23_Y14_N29
\I2C|timer4_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|LessThan0~2_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer4_flag~q\);

-- Location: LCCOMB_X23_Y14_N20
\I2C|delay_reg[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg[26]~1_combout\ = (\rst_n~input_o\ & (\I2C|timer4_flag~q\ & \I2C|state_read.000001000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \I2C|timer4_flag~q\,
	datad => \I2C|state_read.000001000~q\,
	combout => \I2C|delay_reg[26]~1_combout\);

-- Location: FF_X22_Y12_N7
\I2C|delay_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~7_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(10));

-- Location: LCCOMB_X22_Y13_N6
\I2C|delay_reg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~14_combout\ = (\I2C|Add3~6_combout\ & !\I2C|LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~6_combout\,
	datac => \I2C|LessThan2~5_combout\,
	combout => \I2C|delay_reg~14_combout\);

-- Location: FF_X22_Y13_N7
\I2C|delay_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~14_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(3));

-- Location: LCCOMB_X23_Y13_N16
\I2C|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~2_combout\ = (\I2C|delay_reg\(1) & (!\I2C|Add3~1\)) # (!\I2C|delay_reg\(1) & ((\I2C|Add3~1\) # (GND)))
-- \I2C|Add3~3\ = CARRY((!\I2C|Add3~1\) # (!\I2C|delay_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|delay_reg\(1),
	datad => VCC,
	cin => \I2C|Add3~1\,
	combout => \I2C|Add3~2_combout\,
	cout => \I2C|Add3~3\);

-- Location: LCCOMB_X23_Y13_N2
\I2C|delay_reg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~16_combout\ = (\I2C|Add3~2_combout\ & !\I2C|LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~2_combout\,
	datad => \I2C|LessThan2~5_combout\,
	combout => \I2C|delay_reg~16_combout\);

-- Location: FF_X23_Y13_N3
\I2C|delay_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~16_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(1));

-- Location: LCCOMB_X23_Y13_N18
\I2C|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~4_combout\ = (\I2C|delay_reg\(2) & (\I2C|Add3~3\ $ (GND))) # (!\I2C|delay_reg\(2) & (!\I2C|Add3~3\ & VCC))
-- \I2C|Add3~5\ = CARRY((\I2C|delay_reg\(2) & !\I2C|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|delay_reg\(2),
	datad => VCC,
	cin => \I2C|Add3~3\,
	combout => \I2C|Add3~4_combout\,
	cout => \I2C|Add3~5\);

-- Location: LCCOMB_X23_Y13_N8
\I2C|delay_reg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~15_combout\ = (\I2C|Add3~4_combout\ & !\I2C|LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~4_combout\,
	datad => \I2C|LessThan2~5_combout\,
	combout => \I2C|delay_reg~15_combout\);

-- Location: FF_X23_Y13_N9
\I2C|delay_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~15_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(2));

-- Location: LCCOMB_X23_Y13_N24
\I2C|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~10_combout\ = (\I2C|delay_reg\(5) & (!\I2C|Add3~9\)) # (!\I2C|delay_reg\(5) & ((\I2C|Add3~9\) # (GND)))
-- \I2C|Add3~11\ = CARRY((!\I2C|Add3~9\) # (!\I2C|delay_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|delay_reg\(5),
	datad => VCC,
	cin => \I2C|Add3~9\,
	combout => \I2C|Add3~10_combout\,
	cout => \I2C|Add3~11\);

-- Location: LCCOMB_X23_Y13_N0
\I2C|delay_reg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~12_combout\ = (\I2C|Add3~10_combout\ & !\I2C|LessThan2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~10_combout\,
	datad => \I2C|LessThan2~5_combout\,
	combout => \I2C|delay_reg~12_combout\);

-- Location: FF_X23_Y13_N1
\I2C|delay_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~12_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(5));

-- Location: LCCOMB_X23_Y12_N0
\I2C|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~18_combout\ = (\I2C|delay_reg\(9) & (!\I2C|Add3~17\)) # (!\I2C|delay_reg\(9) & ((\I2C|Add3~17\) # (GND)))
-- \I2C|Add3~19\ = CARRY((!\I2C|Add3~17\) # (!\I2C|delay_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|delay_reg\(9),
	datad => VCC,
	cin => \I2C|Add3~17\,
	combout => \I2C|Add3~18_combout\,
	cout => \I2C|Add3~19\);

-- Location: LCCOMB_X23_Y12_N2
\I2C|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~20_combout\ = (\I2C|delay_reg\(10) & (\I2C|Add3~19\ $ (GND))) # (!\I2C|delay_reg\(10) & (!\I2C|Add3~19\ & VCC))
-- \I2C|Add3~21\ = CARRY((\I2C|delay_reg\(10) & !\I2C|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|delay_reg\(10),
	datad => VCC,
	cin => \I2C|Add3~19\,
	combout => \I2C|Add3~20_combout\,
	cout => \I2C|Add3~21\);

-- Location: LCCOMB_X23_Y12_N4
\I2C|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~22_combout\ = (\I2C|delay_reg\(11) & (!\I2C|Add3~21\)) # (!\I2C|delay_reg\(11) & ((\I2C|Add3~21\) # (GND)))
-- \I2C|Add3~23\ = CARRY((!\I2C|Add3~21\) # (!\I2C|delay_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|delay_reg\(11),
	datad => VCC,
	cin => \I2C|Add3~21\,
	combout => \I2C|Add3~22_combout\,
	cout => \I2C|Add3~23\);

-- Location: LCCOMB_X23_Y12_N18
\I2C|delay_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~6_combout\ = (!\I2C|LessThan2~5_combout\ & \I2C|Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|LessThan2~5_combout\,
	datac => \I2C|Add3~22_combout\,
	combout => \I2C|delay_reg~6_combout\);

-- Location: FF_X23_Y12_N19
\I2C|delay_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~6_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(11));

-- Location: LCCOMB_X23_Y12_N6
\I2C|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~24_combout\ = (\I2C|delay_reg\(12) & (\I2C|Add3~23\ $ (GND))) # (!\I2C|delay_reg\(12) & (!\I2C|Add3~23\ & VCC))
-- \I2C|Add3~25\ = CARRY((\I2C|delay_reg\(12) & !\I2C|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|delay_reg\(12),
	datad => VCC,
	cin => \I2C|Add3~23\,
	combout => \I2C|Add3~24_combout\,
	cout => \I2C|Add3~25\);

-- Location: LCCOMB_X23_Y12_N24
\I2C|delay_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~5_combout\ = (!\I2C|LessThan2~5_combout\ & \I2C|Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|LessThan2~5_combout\,
	datad => \I2C|Add3~24_combout\,
	combout => \I2C|delay_reg~5_combout\);

-- Location: FF_X23_Y12_N25
\I2C|delay_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~5_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(12));

-- Location: LCCOMB_X23_Y12_N8
\I2C|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~26_combout\ = (\I2C|delay_reg\(13) & (!\I2C|Add3~25\)) # (!\I2C|delay_reg\(13) & ((\I2C|Add3~25\) # (GND)))
-- \I2C|Add3~27\ = CARRY((!\I2C|Add3~25\) # (!\I2C|delay_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|delay_reg\(13),
	datad => VCC,
	cin => \I2C|Add3~25\,
	combout => \I2C|Add3~26_combout\,
	cout => \I2C|Add3~27\);

-- Location: LCCOMB_X23_Y12_N10
\I2C|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~28_combout\ = (\I2C|delay_reg\(14) & (\I2C|Add3~27\ $ (GND))) # (!\I2C|delay_reg\(14) & (!\I2C|Add3~27\ & VCC))
-- \I2C|Add3~29\ = CARRY((\I2C|delay_reg\(14) & !\I2C|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|delay_reg\(14),
	datad => VCC,
	cin => \I2C|Add3~27\,
	combout => \I2C|Add3~28_combout\,
	cout => \I2C|Add3~29\);

-- Location: LCCOMB_X23_Y12_N12
\I2C|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~30_combout\ = (\I2C|delay_reg\(15) & (!\I2C|Add3~29\)) # (!\I2C|delay_reg\(15) & ((\I2C|Add3~29\) # (GND)))
-- \I2C|Add3~31\ = CARRY((!\I2C|Add3~29\) # (!\I2C|delay_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|delay_reg\(15),
	datad => VCC,
	cin => \I2C|Add3~29\,
	combout => \I2C|Add3~30_combout\,
	cout => \I2C|Add3~31\);

-- Location: LCCOMB_X23_Y12_N28
\I2C|delay_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|delay_reg~2_combout\ = (!\I2C|Add3~34_combout\ & (\I2C|Add3~30_combout\ & ((!\I2C|Add3~32_combout\) # (!\I2C|LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|LessThan2~4_combout\,
	datab => \I2C|Add3~34_combout\,
	datac => \I2C|Add3~32_combout\,
	datad => \I2C|Add3~30_combout\,
	combout => \I2C|delay_reg~2_combout\);

-- Location: FF_X23_Y12_N29
\I2C|delay_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|delay_reg~2_combout\,
	ena => \I2C|delay_reg[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|delay_reg\(15));

-- Location: LCCOMB_X23_Y12_N16
\I2C|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~34_combout\ = \I2C|Add3~33\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \I2C|Add3~33\,
	combout => \I2C|Add3~34_combout\);

-- Location: LCCOMB_X23_Y12_N20
\I2C|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|LessThan2~0_combout\ = (\I2C|Add3~24_combout\) # ((\I2C|Add3~22_combout\) # ((\I2C|Add3~26_combout\) # (\I2C|Add3~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~24_combout\,
	datab => \I2C|Add3~22_combout\,
	datac => \I2C|Add3~26_combout\,
	datad => \I2C|Add3~28_combout\,
	combout => \I2C|LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y12_N14
\I2C|LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|LessThan2~4_combout\ = (\I2C|LessThan2~0_combout\) # ((\I2C|LessThan2~3_combout\ & (\I2C|Add3~18_combout\ & \I2C|Add3~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|LessThan2~3_combout\,
	datab => \I2C|Add3~18_combout\,
	datac => \I2C|LessThan2~0_combout\,
	datad => \I2C|Add3~20_combout\,
	combout => \I2C|LessThan2~4_combout\);

-- Location: LCCOMB_X23_Y12_N26
\I2C|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|LessThan2~5_combout\ = (\I2C|Add3~34_combout\) # ((\I2C|Add3~30_combout\ & (\I2C|Add3~32_combout\ & \I2C|LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~30_combout\,
	datab => \I2C|Add3~34_combout\,
	datac => \I2C|Add3~32_combout\,
	datad => \I2C|LessThan2~4_combout\,
	combout => \I2C|LessThan2~5_combout\);

-- Location: CLKCTRL_G3
\rst_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: LCCOMB_X23_Y15_N6
\I2C|state_ack.000000000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_ack.000000000~0_combout\ = !\I2C|state_ack.000000010~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|state_ack.000000010~q\,
	combout => \I2C|state_ack.000000000~0_combout\);

-- Location: LCCOMB_X23_Y15_N22
\I2C|state_read~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~40_combout\ = (\I2C|state_read.000000100~q\ & (!\I2C|state_ack.000000010~q\ & ((!\I2C|ack_done~q\)))) # (!\I2C|state_read.000000100~q\ & (((!\I2C|state_ack.000000010~q\ & !\I2C|ack_done~q\)) # (!\I2C|state_read.000000010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read.000000100~q\,
	datab => \I2C|state_ack.000000010~q\,
	datac => \I2C|state_read.000000010~q\,
	datad => \I2C|ack_done~q\,
	combout => \I2C|state_read~40_combout\);

-- Location: LCCOMB_X24_Y15_N26
\I2C|Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector84~0_combout\ = (\I2C|state_read~41_combout\) # ((\I2C|done~q\ & \I2C|state_read~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read~41_combout\,
	datac => \I2C|done~q\,
	datad => \I2C|state_read~40_combout\,
	combout => \I2C|Selector84~0_combout\);

-- Location: FF_X24_Y15_N27
\I2C|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector84~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|timer4_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|done~q\);

-- Location: LCCOMB_X26_Y15_N20
\I2C|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|done~0_combout\ = (\I2C|state.000001001~q\) # (\I2C|done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state.000001001~q\,
	datac => \I2C|done~q\,
	combout => \I2C|done~0_combout\);

-- Location: LCCOMB_X25_Y15_N28
\I2C|Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector80~0_combout\ = (\I2C|state_read.000000011~q\ & (((!\I2C|done~0_combout\)))) # (!\I2C|state_read.000000011~q\ & (\I2C|WideOr4~0_combout\ & ((!\I2C|state_read.000000001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr4~0_combout\,
	datab => \I2C|state_read.000000011~q\,
	datac => \I2C|done~0_combout\,
	datad => \I2C|state_read.000000001~q\,
	combout => \I2C|Selector80~0_combout\);

-- Location: LCCOMB_X24_Y15_N18
\I2C|Selector80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector80~1_combout\ = ((\I2C|ack_done~q\ & ((\I2C|state_read~62_combout\) # (\I2C|Selector80~0_combout\)))) # (!\I2C|state_read~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read~62_combout\,
	datab => \I2C|state_read~40_combout\,
	datac => \I2C|ack_done~q\,
	datad => \I2C|Selector80~0_combout\,
	combout => \I2C|Selector80~1_combout\);

-- Location: FF_X24_Y15_N19
\I2C|ack_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector80~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|timer4_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|ack_done~q\);

-- Location: LCCOMB_X23_Y15_N24
\I2C|state_ack~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_ack~14_combout\ = (!\I2C|ack_done~q\ & (\I2C|timer4_flag~q\ & ((\I2C|state_read.000000100~q\) # (\I2C|state_read.000000010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read.000000100~q\,
	datab => \I2C|ack_done~q\,
	datac => \I2C|state_read.000000010~q\,
	datad => \I2C|timer4_flag~q\,
	combout => \I2C|state_ack~14_combout\);

-- Location: FF_X23_Y15_N7
\I2C|state_ack.000000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_ack.000000000~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_ack~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_ack.000000000~q\);

-- Location: LCCOMB_X23_Y15_N0
\I2C|state_ack.000000001~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_ack.000000001~0_combout\ = !\I2C|state_ack.000000000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state_ack.000000000~q\,
	combout => \I2C|state_ack.000000001~0_combout\);

-- Location: FF_X23_Y15_N1
\I2C|state_ack.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_ack.000000001~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_ack~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_ack.000000001~q\);

-- Location: LCCOMB_X23_Y15_N8
\I2C|state_ack.000000010~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_ack.000000010~feeder_combout\ = \I2C|state_ack.000000001~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state_ack.000000001~q\,
	combout => \I2C|state_ack.000000010~feeder_combout\);

-- Location: FF_X23_Y15_N9
\I2C|state_ack.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_ack.000000010~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_ack~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_ack.000000010~q\);

-- Location: LCCOMB_X23_Y15_N14
\I2C|state_read~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~58_combout\ = ((!\I2C|WideOr4~0_combout\ & (!\I2C|state_ack.000000010~q\ & !\I2C|ack_done~q\))) # (!\I2C|timer4_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr4~0_combout\,
	datab => \I2C|timer4_flag~q\,
	datac => \I2C|state_ack.000000010~q\,
	datad => \I2C|ack_done~q\,
	combout => \I2C|state_read~58_combout\);

-- Location: LCCOMB_X24_Y14_N24
\I2C|state_start.000000000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_start.000000000~0_combout\ = !\I2C|state_start.000000011~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state_start.000000011~q\,
	combout => \I2C|state_start.000000000~0_combout\);

-- Location: LCCOMB_X24_Y14_N2
\I2C|state_start~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_start~17_combout\ = (\I2C|timer4_flag~q\ & !\I2C|state_read.000000000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer4_flag~q\,
	datad => \I2C|state_read.000000000~q\,
	combout => \I2C|state_start~17_combout\);

-- Location: FF_X24_Y14_N25
\I2C|state_start.000000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_start.000000000~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_start~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_start.000000000~q\);

-- Location: LCCOMB_X24_Y14_N4
\I2C|state_start.000000001~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_start.000000001~0_combout\ = !\I2C|state_start.000000000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state_start.000000000~q\,
	combout => \I2C|state_start.000000001~0_combout\);

-- Location: FF_X24_Y14_N5
\I2C|state_start.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_start.000000001~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_start~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_start.000000001~q\);

-- Location: FF_X24_Y14_N11
\I2C|state_start.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|state_start.000000001~q\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \I2C|state_start~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_start.000000010~q\);

-- Location: LCCOMB_X24_Y14_N0
\I2C|state_start.000000011~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_start.000000011~feeder_combout\ = \I2C|state_start.000000010~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state_start.000000010~q\,
	combout => \I2C|state_start.000000011~feeder_combout\);

-- Location: FF_X24_Y14_N1
\I2C|state_start.000000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_start.000000011~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_start~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_start.000000011~q\);

-- Location: LCCOMB_X26_Y15_N0
\I2C|write_done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|write_done~0_combout\ = (\I2C|write_done~q\ & ((\I2C|state_read.000000000~q\) # ((!\I2C|timer4_flag~q\) # (!\I2C|state_start.000000011~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read.000000000~q\,
	datab => \I2C|state_start.000000011~q\,
	datac => \I2C|timer4_flag~q\,
	datad => \I2C|write_done~q\,
	combout => \I2C|write_done~0_combout\);

-- Location: LCCOMB_X29_Y15_N16
\I2C|wdone~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|wdone~1_combout\ = (\I2C|wdone~q\) # (\I2C|wstate.000000010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|wdone~q\,
	datac => \I2C|wstate.000000010~q\,
	combout => \I2C|wdone~1_combout\);

-- Location: LCCOMB_X29_Y15_N2
\I2C|state_write~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_write~35_combout\ = (\I2C|wdone~0_combout\ & ((\I2C|wdone~1_combout\ & (\I2C|state_write.000000010~q\)) # (!\I2C|wdone~1_combout\ & ((\I2C|state_write.000000011~q\))))) # (!\I2C|wdone~0_combout\ & (((\I2C|state_write.000000011~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_write.000000010~q\,
	datab => \I2C|wdone~0_combout\,
	datac => \I2C|state_write.000000011~q\,
	datad => \I2C|wdone~1_combout\,
	combout => \I2C|state_write~35_combout\);

-- Location: FF_X29_Y15_N3
\I2C|state_write.000000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_write~35_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_write.000000011~q\);

-- Location: LCCOMB_X28_Y15_N8
\I2C|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector6~0_combout\ = (\I2C|state_write.000000011~q\ & ((\I2C|wstate.000000010~q\) # (\I2C|wdone~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|wstate.000000010~q\,
	datac => \I2C|wdone~q\,
	datad => \I2C|state_write.000000011~q\,
	combout => \I2C|Selector6~0_combout\);

-- Location: FF_X28_Y15_N9
\I2C|wdone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector6~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|wdone~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|wdone~q\);

-- Location: LCCOMB_X29_Y15_N8
\I2C|state_write~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_write~40_combout\ = (\I2C|wdone~0_combout\ & ((\I2C|wdone~1_combout\ & (\I2C|state_write.000000101~q\)) # (!\I2C|wdone~1_combout\ & ((\I2C|state_write.000000110~q\))))) # (!\I2C|wdone~0_combout\ & (((\I2C|state_write.000000110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_write.000000101~q\,
	datab => \I2C|wdone~0_combout\,
	datac => \I2C|state_write.000000110~q\,
	datad => \I2C|wdone~1_combout\,
	combout => \I2C|state_write~40_combout\);

-- Location: FF_X29_Y15_N9
\I2C|state_write.000000110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_write~40_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_write.000000110~q\);

-- Location: LCCOMB_X29_Y15_N18
\I2C|state_write~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_write~41_combout\ = (\I2C|wdone~1_combout\ & ((\I2C|wdone~0_combout\ & (\I2C|state_write.000000110~q\)) # (!\I2C|wdone~0_combout\ & ((\I2C|state_write.000000111~q\))))) # (!\I2C|wdone~1_combout\ & (((\I2C|state_write.000000111~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|wdone~1_combout\,
	datab => \I2C|state_write.000000110~q\,
	datac => \I2C|state_write.000000111~q\,
	datad => \I2C|wdone~0_combout\,
	combout => \I2C|state_write~41_combout\);

-- Location: FF_X29_Y15_N19
\I2C|state_write.000000111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_write~41_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_write.000000111~q\);

-- Location: LCCOMB_X29_Y15_N0
\I2C|state_write~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_write~36_combout\ = (\I2C|wdone~1_combout\ & ((\I2C|wdone~0_combout\ & (\I2C|state_write.000000111~q\)) # (!\I2C|wdone~0_combout\ & ((\I2C|state_write.000001000~q\))))) # (!\I2C|wdone~1_combout\ & (((\I2C|state_write.000001000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|wdone~1_combout\,
	datab => \I2C|state_write.000000111~q\,
	datac => \I2C|state_write.000001000~q\,
	datad => \I2C|wdone~0_combout\,
	combout => \I2C|state_write~36_combout\);

-- Location: FF_X29_Y15_N1
\I2C|state_write.000001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_write~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_write.000001000~q\);

-- Location: LCCOMB_X29_Y15_N4
\I2C|state_write~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_write~34_combout\ = (\I2C|wdone~1_combout\ & ((\I2C|wdone~0_combout\ & (\I2C|state_write.000001000~q\)) # (!\I2C|wdone~0_combout\ & ((\I2C|state_write.000001001~q\))))) # (!\I2C|wdone~1_combout\ & (((\I2C|state_write.000001001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|wdone~1_combout\,
	datab => \I2C|state_write.000001000~q\,
	datac => \I2C|state_write.000001001~q\,
	datad => \I2C|wdone~0_combout\,
	combout => \I2C|state_write~34_combout\);

-- Location: FF_X29_Y15_N5
\I2C|state_write.000001001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_write~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_write.000001001~q\);

-- Location: LCCOMB_X28_Y15_N22
\I2C|write_done~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|write_done~1_combout\ = (\I2C|timer4_flag~q\ & (\I2C|state_write.000001001~q\ & ((\I2C|wdone~q\) # (\I2C|wstate.000000010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer4_flag~q\,
	datab => \I2C|wdone~q\,
	datac => \I2C|wstate.000000010~q\,
	datad => \I2C|state_write.000001001~q\,
	combout => \I2C|write_done~1_combout\);

-- Location: LCCOMB_X26_Y15_N10
\I2C|write_done~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|write_done~2_combout\ = (\I2C|write_done~0_combout\) # ((\I2C|state_read.000000000~q\ & (\I2C|state_read.000000001~q\ & \I2C|write_done~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read.000000000~q\,
	datab => \I2C|write_done~0_combout\,
	datac => \I2C|state_read.000000001~q\,
	datad => \I2C|write_done~1_combout\,
	combout => \I2C|write_done~2_combout\);

-- Location: FF_X26_Y15_N11
\I2C|write_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|write_done~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|write_done~q\);

-- Location: LCCOMB_X28_Y15_N24
\I2C|wdone~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|wdone~0_combout\ = (!\I2C|write_done~q\ & (\I2C|timer4_flag~q\ & \I2C|state_read.000000001~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|write_done~q\,
	datac => \I2C|timer4_flag~q\,
	datad => \I2C|state_read.000000001~q\,
	combout => \I2C|wdone~0_combout\);

-- Location: LCCOMB_X28_Y15_N6
\I2C|Selector127~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector127~9_combout\ = (\I2C|state_write.000000000~q\ & !\I2C|wdone~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_write.000000000~q\,
	datac => \I2C|wdone~q\,
	combout => \I2C|Selector127~9_combout\);

-- Location: LCCOMB_X28_Y15_N4
\I2C|wstate~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|wstate~14_combout\ = (\I2C|wdone~0_combout\ & (\I2C|wstate.000000001~q\ & (!\I2C|wstate.000000010~q\ & \I2C|Selector127~9_combout\))) # (!\I2C|wdone~0_combout\ & (((\I2C|wstate.000000010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|wstate.000000001~q\,
	datab => \I2C|wdone~0_combout\,
	datac => \I2C|wstate.000000010~q\,
	datad => \I2C|Selector127~9_combout\,
	combout => \I2C|wstate~14_combout\);

-- Location: FF_X28_Y15_N5
\I2C|wstate.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|wstate~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|wstate.000000010~q\);

-- Location: LCCOMB_X28_Y15_N18
\I2C|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector7~0_combout\ = (\I2C|state_write.000001001~q\ & ((\I2C|wstate.000000010~q\) # (\I2C|wdone~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|wstate.000000010~q\,
	datac => \I2C|wdone~q\,
	datad => \I2C|state_write.000001001~q\,
	combout => \I2C|Selector7~0_combout\);

-- Location: LCCOMB_X26_Y15_N12
\I2C|state_read~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~44_combout\ = (\I2C|state_read.000000001~q\ & ((\I2C|write_done~q\) # (\I2C|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|write_done~q\,
	datab => \I2C|state_read.000000001~q\,
	datac => \I2C|Selector7~0_combout\,
	combout => \I2C|state_read~44_combout\);

-- Location: LCCOMB_X25_Y15_N4
\I2C|state_read~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~60_combout\ = ((!\I2C|state_read~44_combout\ & ((\I2C|state_read~59_combout\) # (\I2C|state_read.000000001~q\)))) # (!\I2C|state_read.000000000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read~59_combout\,
	datab => \I2C|state_read.000000000~q\,
	datac => \I2C|state_read~44_combout\,
	datad => \I2C|state_read.000000001~q\,
	combout => \I2C|state_read~60_combout\);

-- Location: LCCOMB_X26_Y15_N24
\I2C|state_read~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~46_combout\ = (!\I2C|state_read.000001000~q\ & ((\I2C|state_read.000000000~q\) # (!\I2C|state_start.000000011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read.000000000~q\,
	datab => \I2C|state_start.000000011~q\,
	datad => \I2C|state_read.000001000~q\,
	combout => \I2C|state_read~46_combout\);

-- Location: LCCOMB_X25_Y15_N2
\I2C|state_read~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~61_combout\ = (!\I2C|state_read~58_combout\ & (((!\I2C|state_read~46_combout\) # (!\I2C|state_read~60_combout\)) # (!\I2C|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr4~0_combout\,
	datab => \I2C|state_read~58_combout\,
	datac => \I2C|state_read~60_combout\,
	datad => \I2C|state_read~46_combout\,
	combout => \I2C|state_read~61_combout\);

-- Location: FF_X25_Y16_N11
\I2C|state_read.000000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|state_read.000000010~q\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \I2C|state_read~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_read.000000011~q\);

-- Location: LCCOMB_X25_Y14_N28
\I2C|state_read.000000100~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read.000000100~feeder_combout\ = \I2C|state_read.000000011~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state_read.000000011~q\,
	combout => \I2C|state_read.000000100~feeder_combout\);

-- Location: LCCOMB_X25_Y14_N30
\I2C|state_no_ack.000000000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_no_ack.000000000~0_combout\ = !\I2C|state_no_ack.000000010~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|state_no_ack.000000010~q\,
	combout => \I2C|state_no_ack.000000000~0_combout\);

-- Location: LCCOMB_X24_Y16_N4
\I2C|state_shift.000000000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_shift.000000000~0_combout\ = !\I2C|state_shift.000000100~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state_shift.000000100~q\,
	combout => \I2C|state_shift.000000000~0_combout\);

-- Location: LCCOMB_X25_Y16_N28
\I2C|ring_buffer[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|ring_buffer[7]~8_combout\ = (\I2C|timer4_flag~q\ & ((\I2C|state_read.000000101~q\) # (\I2C|state_read.000000011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|state_read.000000101~q\,
	datac => \I2C|timer4_flag~q\,
	datad => \I2C|state_read.000000011~q\,
	combout => \I2C|ring_buffer[7]~8_combout\);

-- Location: LCCOMB_X24_Y16_N10
\I2C|state.000000000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state.000000000~0_combout\ = !\I2C|state.000001001~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|state.000001001~q\,
	combout => \I2C|state.000000000~0_combout\);

-- Location: LCCOMB_X24_Y16_N2
\I2C|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state~34_combout\ = (!\I2C|done~q\ & (\I2C|ring_buffer[7]~8_combout\ & ((\I2C|state~33_combout\) # (\I2C|state_shift.000000100~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state~33_combout\,
	datab => \I2C|state_shift.000000100~q\,
	datac => \I2C|done~q\,
	datad => \I2C|ring_buffer[7]~8_combout\,
	combout => \I2C|state~34_combout\);

-- Location: FF_X24_Y16_N11
\I2C|state.000000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state.000000000~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000000~q\);

-- Location: LCCOMB_X24_Y16_N16
\I2C|state_shift~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_shift~19_combout\ = (!\I2C|done~q\ & (\I2C|ring_buffer[7]~8_combout\ & (!\I2C|state.000001001~q\ & \I2C|state.000000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|done~q\,
	datab => \I2C|ring_buffer[7]~8_combout\,
	datac => \I2C|state.000001001~q\,
	datad => \I2C|state.000000000~q\,
	combout => \I2C|state_shift~19_combout\);

-- Location: FF_X24_Y16_N5
\I2C|state_shift.000000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_shift.000000000~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_shift~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_shift.000000000~q\);

-- Location: LCCOMB_X24_Y16_N28
\I2C|state_shift.000000001~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_shift.000000001~0_combout\ = !\I2C|state_shift.000000000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|state_shift.000000000~q\,
	combout => \I2C|state_shift.000000001~0_combout\);

-- Location: FF_X24_Y16_N29
\I2C|state_shift.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_shift.000000001~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_shift~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_shift.000000001~q\);

-- Location: LCCOMB_X24_Y16_N20
\I2C|state_shift.000000010~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_shift.000000010~feeder_combout\ = \I2C|state_shift.000000001~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state_shift.000000001~q\,
	combout => \I2C|state_shift.000000010~feeder_combout\);

-- Location: FF_X24_Y16_N21
\I2C|state_shift.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_shift.000000010~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_shift~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_shift.000000010~q\);

-- Location: LCCOMB_X24_Y16_N22
\I2C|state_shift.000000011~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_shift.000000011~feeder_combout\ = \I2C|state_shift.000000010~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state_shift.000000010~q\,
	combout => \I2C|state_shift.000000011~feeder_combout\);

-- Location: FF_X24_Y16_N23
\I2C|state_shift.000000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_shift.000000011~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_shift~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_shift.000000011~q\);

-- Location: FF_X24_Y16_N25
\I2C|state_shift.000000100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|state_shift.000000011~q\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \I2C|state_shift~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_shift.000000100~q\);

-- Location: LCCOMB_X25_Y16_N6
\I2C|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state~35_combout\ = (!\I2C|done~q\ & (\I2C|timer4_flag~q\ & ((\I2C|state_read.000000101~q\) # (\I2C|state_read.000000011~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|done~q\,
	datab => \I2C|state_read.000000101~q\,
	datac => \I2C|timer4_flag~q\,
	datad => \I2C|state_read.000000011~q\,
	combout => \I2C|state~35_combout\);

-- Location: LCCOMB_X25_Y16_N12
\I2C|state~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state~41_combout\ = (\I2C|state_shift.000000100~q\ & ((\I2C|state~35_combout\ & (\I2C|state.000000101~q\)) # (!\I2C|state~35_combout\ & ((\I2C|state.000000110~q\))))) # (!\I2C|state_shift.000000100~q\ & (((\I2C|state.000000110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state.000000101~q\,
	datab => \I2C|state_shift.000000100~q\,
	datac => \I2C|state.000000110~q\,
	datad => \I2C|state~35_combout\,
	combout => \I2C|state~41_combout\);

-- Location: FF_X25_Y16_N13
\I2C|state.000000110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state~41_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000110~q\);

-- Location: LCCOMB_X25_Y16_N14
\I2C|state~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state~42_combout\ = (\I2C|state~35_combout\ & ((\I2C|state_shift.000000100~q\ & ((\I2C|state.000000110~q\))) # (!\I2C|state_shift.000000100~q\ & (\I2C|state.000000111~q\)))) # (!\I2C|state~35_combout\ & (((\I2C|state.000000111~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state~35_combout\,
	datab => \I2C|state_shift.000000100~q\,
	datac => \I2C|state.000000111~q\,
	datad => \I2C|state.000000110~q\,
	combout => \I2C|state~42_combout\);

-- Location: FF_X25_Y16_N15
\I2C|state.000000111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state~42_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000111~q\);

-- Location: LCCOMB_X25_Y16_N16
\I2C|state~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state~43_combout\ = (\I2C|state~35_combout\ & ((\I2C|state_shift.000000100~q\ & (\I2C|state.000000111~q\)) # (!\I2C|state_shift.000000100~q\ & ((\I2C|state.000001000~q\))))) # (!\I2C|state~35_combout\ & (((\I2C|state.000001000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state~35_combout\,
	datab => \I2C|state.000000111~q\,
	datac => \I2C|state.000001000~q\,
	datad => \I2C|state_shift.000000100~q\,
	combout => \I2C|state~43_combout\);

-- Location: FF_X25_Y16_N17
\I2C|state.000001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state~43_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000001000~q\);

-- Location: LCCOMB_X25_Y16_N0
\I2C|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state~36_combout\ = (\I2C|state~35_combout\ & (\I2C|state_shift.000000100~q\ & ((\I2C|state.000001000~q\)))) # (!\I2C|state~35_combout\ & (((\I2C|state.000001001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state~35_combout\,
	datab => \I2C|state_shift.000000100~q\,
	datac => \I2C|state.000001001~q\,
	datad => \I2C|state.000001000~q\,
	combout => \I2C|state~36_combout\);

-- Location: FF_X25_Y16_N1
\I2C|state.000001001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000001001~q\);

-- Location: LCCOMB_X26_Y15_N14
\I2C|Selector117~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector117~2_combout\ = (\I2C|state_read.000000101~q\ & ((\I2C|done~q\) # (\I2C|state.000001001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|done~q\,
	datab => \I2C|state_read.000000101~q\,
	datad => \I2C|state.000001001~q\,
	combout => \I2C|Selector117~2_combout\);

-- Location: LCCOMB_X26_Y14_N4
\I2C|Selector117~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector117~3_combout\ = (\I2C|no_ack_done~q\ & (((\I2C|state_read.000000110~q\) # (!\I2C|Selector117~2_combout\)))) # (!\I2C|no_ack_done~q\ & (\I2C|state_no_ack.000000010~q\ & ((\I2C|state_read.000000110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_no_ack.000000010~q\,
	datab => \I2C|Selector117~2_combout\,
	datac => \I2C|no_ack_done~q\,
	datad => \I2C|state_read.000000110~q\,
	combout => \I2C|Selector117~3_combout\);

-- Location: FF_X26_Y14_N5
\I2C|no_ack_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector117~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|timer4_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|no_ack_done~q\);

-- Location: LCCOMB_X26_Y14_N12
\I2C|state_no_ack~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_no_ack~14_combout\ = (!\I2C|no_ack_done~q\ & (\I2C|timer4_flag~q\ & \I2C|state_read.000000110~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|no_ack_done~q\,
	datac => \I2C|timer4_flag~q\,
	datad => \I2C|state_read.000000110~q\,
	combout => \I2C|state_no_ack~14_combout\);

-- Location: FF_X25_Y14_N31
\I2C|state_no_ack.000000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_no_ack.000000000~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_no_ack~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_no_ack.000000000~q\);

-- Location: LCCOMB_X25_Y14_N2
\I2C|state_no_ack.000000001~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_no_ack.000000001~0_combout\ = !\I2C|state_no_ack.000000000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|state_no_ack.000000000~q\,
	combout => \I2C|state_no_ack.000000001~0_combout\);

-- Location: FF_X25_Y14_N3
\I2C|state_no_ack.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_no_ack.000000001~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_no_ack~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_no_ack.000000001~q\);

-- Location: LCCOMB_X25_Y14_N14
\I2C|state_no_ack.000000010~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_no_ack.000000010~feeder_combout\ = \I2C|state_no_ack.000000001~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state_no_ack.000000001~q\,
	combout => \I2C|state_no_ack.000000010~feeder_combout\);

-- Location: FF_X25_Y14_N15
\I2C|state_no_ack.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_no_ack.000000010~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_no_ack~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_no_ack.000000010~q\);

-- Location: LCCOMB_X25_Y14_N26
\I2C|state_read~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~54_combout\ = (!\I2C|state_read.000000111~q\ & ((\I2C|state_no_ack.000000010~q\) # (\I2C|no_ack_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|state_read.000000111~q\,
	datac => \I2C|state_no_ack.000000010~q\,
	datad => \I2C|no_ack_done~q\,
	combout => \I2C|state_read~54_combout\);

-- Location: LCCOMB_X24_Y15_N24
\I2C|state_read~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~55_combout\ = (!\I2C|state_read~51_combout\ & (\I2C|state_read~40_combout\ & ((!\I2C|state_read.000000110~q\) # (!\I2C|state_read~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read~51_combout\,
	datab => \I2C|state_read~40_combout\,
	datac => \I2C|state_read~54_combout\,
	datad => \I2C|state_read.000000110~q\,
	combout => \I2C|state_read~55_combout\);

-- Location: LCCOMB_X25_Y15_N16
\I2C|state_read~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~56_combout\ = ((!\I2C|state_read~44_combout\ & ((\I2C|state_read.000000001~q\) # (\I2C|state_read~55_combout\)))) # (!\I2C|state_read.000000000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read.000000001~q\,
	datab => \I2C|state_read.000000000~q\,
	datac => \I2C|state_read~44_combout\,
	datad => \I2C|state_read~55_combout\,
	combout => \I2C|state_read~56_combout\);

-- Location: LCCOMB_X25_Y14_N22
\I2C|state_read~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~38_combout\ = (!\I2C|state_read.000000101~q\ & !\I2C|state_read.000000011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|state_read.000000101~q\,
	datad => \I2C|state_read.000000011~q\,
	combout => \I2C|state_read~38_combout\);

-- Location: LCCOMB_X25_Y15_N14
\I2C|state_read~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~57_combout\ = (!\I2C|state_read~63_combout\ & (((!\I2C|state_read~46_combout\) # (!\I2C|state_read~38_combout\)) # (!\I2C|state_read~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read~63_combout\,
	datab => \I2C|state_read~56_combout\,
	datac => \I2C|state_read~38_combout\,
	datad => \I2C|state_read~46_combout\,
	combout => \I2C|state_read~57_combout\);

-- Location: FF_X25_Y14_N29
\I2C|state_read.000000100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_read.000000100~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_read~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_read.000000100~q\);

-- Location: LCCOMB_X25_Y16_N4
\I2C|state_read.000000101~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read.000000101~feeder_combout\ = \I2C|state_read.000000100~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state_read.000000100~q\,
	combout => \I2C|state_read.000000101~feeder_combout\);

-- Location: FF_X25_Y16_N5
\I2C|state_read.000000101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_read.000000101~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_read~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_read.000000101~q\);

-- Location: LCCOMB_X25_Y14_N24
\I2C|state_read.000000110~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read.000000110~feeder_combout\ = \I2C|state_read.000000101~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state_read.000000101~q\,
	combout => \I2C|state_read.000000110~feeder_combout\);

-- Location: FF_X25_Y14_N25
\I2C|state_read.000000110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_read.000000110~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_read~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_read.000000110~q\);

-- Location: LCCOMB_X24_Y15_N4
\I2C|state_stop.000000000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_stop.000000000~0_combout\ = !\I2C|state_stop.000000011~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|state_stop.000000011~q\,
	combout => \I2C|state_stop.000000000~0_combout\);

-- Location: LCCOMB_X24_Y15_N16
\I2C|state_stop~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_stop~17_combout\ = (!\I2C|stop_done~q\ & (\I2C|timer4_flag~q\ & \I2C|state_read.000000111~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|stop_done~q\,
	datab => \I2C|timer4_flag~q\,
	datad => \I2C|state_read.000000111~q\,
	combout => \I2C|state_stop~17_combout\);

-- Location: FF_X24_Y15_N5
\I2C|state_stop.000000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_stop.000000000~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_stop~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_stop.000000000~q\);

-- Location: LCCOMB_X24_Y15_N22
\I2C|state_stop.000000001~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_stop.000000001~0_combout\ = !\I2C|state_stop.000000000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|state_stop.000000000~q\,
	combout => \I2C|state_stop.000000001~0_combout\);

-- Location: FF_X24_Y15_N23
\I2C|state_stop.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_stop.000000001~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_stop~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_stop.000000001~q\);

-- Location: FF_X24_Y15_N15
\I2C|state_stop.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|state_stop.000000001~q\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \I2C|state_stop~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_stop.000000010~q\);

-- Location: FF_X24_Y15_N29
\I2C|state_stop.000000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|state_stop.000000010~q\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \I2C|state_stop~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_stop.000000011~q\);

-- Location: LCCOMB_X23_Y15_N16
\I2C|state_read~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~51_combout\ = (\I2C|state_read.000000111~q\ & ((\I2C|stop_done~q\) # (\I2C|state_stop.000000011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|stop_done~q\,
	datab => \I2C|state_stop.000000011~q\,
	datad => \I2C|state_read.000000111~q\,
	combout => \I2C|state_read~51_combout\);

-- Location: LCCOMB_X24_Y15_N20
\I2C|state_read~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~52_combout\ = (\I2C|state_read~40_combout\ & (!\I2C|state_read~51_combout\ & ((\I2C|state_read.000000111~q\) # (!\I2C|state_read~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read~41_combout\,
	datab => \I2C|state_read~40_combout\,
	datac => \I2C|state_read~51_combout\,
	datad => \I2C|state_read.000000111~q\,
	combout => \I2C|state_read~52_combout\);

-- Location: LCCOMB_X26_Y15_N30
\I2C|state_read~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~62_combout\ = (!\I2C|Selector7~0_combout\ & (\I2C|state_read.000000001~q\ & !\I2C|write_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector7~0_combout\,
	datab => \I2C|state_read.000000001~q\,
	datad => \I2C|write_done~q\,
	combout => \I2C|state_read~62_combout\);

-- Location: LCCOMB_X26_Y14_N2
\I2C|state_read~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~48_combout\ = ((!\I2C|state_no_ack.000000010~q\ & (!\I2C|no_ack_done~q\ & \I2C|state_read.000000110~q\))) # (!\I2C|timer4_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_no_ack.000000010~q\,
	datab => \I2C|no_ack_done~q\,
	datac => \I2C|timer4_flag~q\,
	datad => \I2C|state_read.000000110~q\,
	combout => \I2C|state_read~48_combout\);

-- Location: LCCOMB_X26_Y15_N16
\I2C|state_read~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~49_combout\ = (\I2C|state_read~62_combout\) # ((\I2C|state_read~48_combout\) # ((!\I2C|state_read.000000000~q\ & !\I2C|state_start.000000011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read.000000000~q\,
	datab => \I2C|state_start.000000011~q\,
	datac => \I2C|state_read~62_combout\,
	datad => \I2C|state_read~48_combout\,
	combout => \I2C|state_read~49_combout\);

-- Location: LCCOMB_X26_Y15_N8
\I2C|state_read~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read~53_combout\ = (!\I2C|state_read~49_combout\ & ((!\I2C|state_read~52_combout\) # (!\I2C|state_read~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read~50_combout\,
	datac => \I2C|state_read~52_combout\,
	datad => \I2C|state_read~49_combout\,
	combout => \I2C|state_read~53_combout\);

-- Location: FF_X26_Y15_N31
\I2C|state_read.000000111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|state_read.000000110~q\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \I2C|state_read~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_read.000000111~q\);

-- Location: LCCOMB_X25_Y15_N24
\I2C|state_read.000001000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read.000001000~0_combout\ = (\I2C|state_read~47_combout\ & (((\I2C|state_read.000001000~q\)))) # (!\I2C|state_read~47_combout\ & ((\I2C|state_read.000001000~q\ & (!\I2C|LessThan2~5_combout\)) # (!\I2C|state_read.000001000~q\ & 
-- ((\I2C|state_read.000000111~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read~47_combout\,
	datab => \I2C|LessThan2~5_combout\,
	datac => \I2C|state_read.000001000~q\,
	datad => \I2C|state_read.000000111~q\,
	combout => \I2C|state_read.000001000~0_combout\);

-- Location: FF_X25_Y15_N25
\I2C|state_read.000001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_read.000001000~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_read.000001000~q\);

-- Location: LCCOMB_X25_Y15_N0
\I2C|state_read.000000000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read.000000000~0_combout\ = (\I2C|state_read~47_combout\ & (((\I2C|state_read.000000000~q\)))) # (!\I2C|state_read~47_combout\ & (((!\I2C|LessThan2~5_combout\)) # (!\I2C|state_read.000001000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read~47_combout\,
	datab => \I2C|state_read.000001000~q\,
	datac => \I2C|state_read.000000000~q\,
	datad => \I2C|LessThan2~5_combout\,
	combout => \I2C|state_read.000000000~0_combout\);

-- Location: FF_X25_Y15_N1
\I2C|state_read.000000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_read.000000000~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_read.000000000~q\);

-- Location: LCCOMB_X26_Y15_N4
\I2C|state_read.000000001~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_read.000000001~0_combout\ = !\I2C|state_read.000000000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|state_read.000000000~q\,
	combout => \I2C|state_read.000000001~0_combout\);

-- Location: FF_X26_Y15_N5
\I2C|state_read.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_read.000000001~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|state_read~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_read.000000001~q\);

-- Location: FF_X26_Y15_N15
\I2C|state_read.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|state_read.000000001~q\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \I2C|state_read~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_read.000000010~q\);

-- Location: LCCOMB_X23_Y15_N4
\I2C|SCL~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|SCL~10_combout\ = (\I2C|ack_done~q\ & (((\I2C|SCL~reg0_q\)))) # (!\I2C|ack_done~q\ & ((\I2C|state_ack.000000001~q\) # ((!\I2C|state_ack.000000000~q\ & \I2C|SCL~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_ack.000000000~q\,
	datab => \I2C|state_ack.000000001~q\,
	datac => \I2C|SCL~reg0_q\,
	datad => \I2C|ack_done~q\,
	combout => \I2C|SCL~10_combout\);

-- Location: LCCOMB_X23_Y15_N2
\I2C|Selector68~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector68~14_combout\ = (\I2C|SCL~10_combout\ & ((\I2C|state_read.000000100~q\) # (\I2C|state_read.000000010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_read.000000100~q\,
	datab => \I2C|state_read.000000010~q\,
	datac => \I2C|SCL~10_combout\,
	combout => \I2C|Selector68~14_combout\);

-- Location: LCCOMB_X24_Y15_N30
\I2C|Selector68~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector68~10_combout\ = (!\I2C|stop_done~q\ & (!\I2C|state_stop.000000000~q\ & \I2C|state_read.000000111~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|stop_done~q\,
	datab => \I2C|state_stop.000000000~q\,
	datad => \I2C|state_read.000000111~q\,
	combout => \I2C|Selector68~10_combout\);

-- Location: LCCOMB_X24_Y14_N22
\I2C|Selector68~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector68~12_combout\ = (\I2C|Selector68~11_combout\) # ((\I2C|Selector68~10_combout\) # ((!\I2C|state_start.000000000~q\ & !\I2C|state_read.000000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector68~11_combout\,
	datab => \I2C|state_start.000000000~q\,
	datac => \I2C|Selector68~10_combout\,
	datad => \I2C|state_read.000000000~q\,
	combout => \I2C|Selector68~12_combout\);

-- Location: LCCOMB_X28_Y15_N26
\I2C|state_write~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_write~33_combout\ = (\I2C|wdone~0_combout\ & (!\I2C|Selector7~0_combout\)) # (!\I2C|wdone~0_combout\ & ((\I2C|state_write.000000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Selector7~0_combout\,
	datac => \I2C|state_write.000000000~q\,
	datad => \I2C|wdone~0_combout\,
	combout => \I2C|state_write~33_combout\);

-- Location: FF_X28_Y15_N27
\I2C|state_write.000000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_write~33_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_write.000000000~q\);

-- Location: LCCOMB_X28_Y15_N12
\I2C|Selector127~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector127~0_combout\ = (!\I2C|write_done~q\ & \I2C|state_read.000000001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|write_done~q\,
	datad => \I2C|state_read.000000001~q\,
	combout => \I2C|Selector127~0_combout\);

-- Location: LCCOMB_X28_Y15_N0
\I2C|Selector68~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector68~9_combout\ = (\I2C|wstate.000000001~q\ & (!\I2C|wdone~q\ & (\I2C|state_write.000000000~q\ & \I2C|Selector127~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|wstate.000000001~q\,
	datab => \I2C|wdone~q\,
	datac => \I2C|state_write.000000000~q\,
	datad => \I2C|Selector127~0_combout\,
	combout => \I2C|Selector68~9_combout\);

-- Location: LCCOMB_X23_Y15_N28
\I2C|Selector68~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector68~13_combout\ = (\I2C|Selector68~8_combout\) # ((\I2C|Selector68~14_combout\) # ((\I2C|Selector68~12_combout\) # (\I2C|Selector68~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector68~8_combout\,
	datab => \I2C|Selector68~14_combout\,
	datac => \I2C|Selector68~12_combout\,
	datad => \I2C|Selector68~9_combout\,
	combout => \I2C|Selector68~13_combout\);

-- Location: LCCOMB_X23_Y15_N12
\I2C|SCL~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|SCL~11_combout\ = (\I2C|timer4_flag~q\ & ((\I2C|Selector68~7_combout\) # ((\I2C|Selector68~13_combout\)))) # (!\I2C|timer4_flag~q\ & (((\I2C|SCL~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector68~7_combout\,
	datab => \I2C|Selector68~13_combout\,
	datac => \I2C|SCL~reg0_q\,
	datad => \I2C|timer4_flag~q\,
	combout => \I2C|SCL~11_combout\);

-- Location: FF_X23_Y15_N13
\I2C|SCL~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|SCL~11_combout\,
	asdata => \I2C|SCL~reg0_q\,
	sload => \ALT_INV_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|SCL~reg0_q\);

-- Location: LCCOMB_X25_Y15_N20
\I2C|Selector125~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector125~1_combout\ = (\I2C|Selector125~0_combout\) # ((\I2C|state_read.000000110~q\) # ((!\I2C|state_read.000000000~q\ & !\I2C|state_start.000000010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector125~0_combout\,
	datab => \I2C|state_read.000000000~q\,
	datac => \I2C|state_read.000000110~q\,
	datad => \I2C|state_start.000000010~q\,
	combout => \I2C|Selector125~1_combout\);

-- Location: LCCOMB_X25_Y14_N20
\I2C|Selector127~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector127~7_combout\ = (\I2C|state_start.000000000~q\ & (!\I2C|state_start.000000011~q\ & !\I2C|state_read.000000000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|state_start.000000000~q\,
	datac => \I2C|state_start.000000011~q\,
	datad => \I2C|state_read.000000000~q\,
	combout => \I2C|Selector127~7_combout\);

-- Location: LCCOMB_X25_Y14_N10
\I2C|Selector127~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector127~6_combout\ = (\I2C|state_read.000000110~q\ & (!\I2C|state_no_ack.000000000~q\ & !\I2C|no_ack_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|state_read.000000110~q\,
	datac => \I2C|state_no_ack.000000000~q\,
	datad => \I2C|no_ack_done~q\,
	combout => \I2C|Selector127~6_combout\);

-- Location: LCCOMB_X24_Y15_N28
\I2C|Selector127~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector127~4_combout\ = (!\I2C|stop_done~q\ & (\I2C|state_stop.000000000~q\ & (!\I2C|state_stop.000000011~q\ & \I2C|state_read.000000111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|stop_done~q\,
	datab => \I2C|state_stop.000000000~q\,
	datac => \I2C|state_stop.000000011~q\,
	datad => \I2C|state_read.000000111~q\,
	combout => \I2C|Selector127~4_combout\);

-- Location: LCCOMB_X24_Y15_N2
\I2C|Selector127~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector127~5_combout\ = (\I2C|Selector127~4_combout\) # ((!\I2C|WideOr4~0_combout\ & (!\I2C|state_ack.000000000~q\ & !\I2C|ack_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr4~0_combout\,
	datab => \I2C|Selector127~4_combout\,
	datac => \I2C|state_ack.000000000~q\,
	datad => \I2C|ack_done~q\,
	combout => \I2C|Selector127~5_combout\);

-- Location: LCCOMB_X25_Y15_N8
\I2C|Selector127~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector127~8_combout\ = (\I2C|Selector127~3_combout\) # ((\I2C|Selector127~7_combout\) # ((\I2C|Selector127~6_combout\) # (\I2C|Selector127~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector127~3_combout\,
	datab => \I2C|Selector127~7_combout\,
	datac => \I2C|Selector127~6_combout\,
	datad => \I2C|Selector127~5_combout\,
	combout => \I2C|Selector127~8_combout\);

-- Location: LCCOMB_X25_Y15_N22
\I2C|SDA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|SDA~2_combout\ = (\I2C|SDA~1_combout\ & ((\I2C|Selector127~8_combout\) # ((\I2C|state_read.000001000~q\ & !\I2C|LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|SDA~1_combout\,
	datab => \I2C|state_read.000001000~q\,
	datac => \I2C|Selector127~8_combout\,
	datad => \I2C|LessThan2~5_combout\,
	combout => \I2C|SDA~2_combout\);

-- Location: FF_X25_Y15_N21
\I2C|SDA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector125~1_combout\,
	ena => \I2C|SDA~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|SDA~reg0_q\);

-- Location: LCCOMB_X25_Y15_N10
\I2C|Selector124~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector124~0_combout\ = (\I2C|state.000001001~q\) # (((!\I2C|state_read.000000011~q\ & !\I2C|state_read.000000101~q\)) # (!\I2C|state.000000000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state.000001001~q\,
	datab => \I2C|state_read.000000011~q\,
	datac => \I2C|state.000000000~q\,
	datad => \I2C|state_read.000000101~q\,
	combout => \I2C|Selector124~0_combout\);

-- Location: FF_X25_Y15_N11
\I2C|SDA~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector124~0_combout\,
	ena => \I2C|SDA~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|SDA~en_q\);

-- Location: LCCOMB_X30_Y12_N0
\LED_pos.00001~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_pos.00001~0_combout\ = !\LED_pos.00000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LED_pos.00000~q\,
	combout => \LED_pos.00001~0_combout\);

-- Location: LCCOMB_X18_Y17_N6
\timer2_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~3_combout\ = (\Add0~44_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datac => \Equal0~8_combout\,
	combout => \timer2_reg~3_combout\);

-- Location: FF_X18_Y17_N7
\timer2_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer2_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(22));

-- Location: LCCOMB_X18_Y17_N12
\timer2_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~6_combout\ = (\Add0~32_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datac => \Equal0~8_combout\,
	combout => \timer2_reg~6_combout\);

-- Location: FF_X18_Y17_N13
\timer2_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer2_reg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(16));

-- Location: LCCOMB_X19_Y17_N0
\timer2_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~9_combout\ = (\Add0~20_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datac => \Equal0~8_combout\,
	combout => \timer2_reg~9_combout\);

-- Location: FF_X19_Y17_N1
\timer2_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer2_reg~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(10));

-- Location: LCCOMB_X19_Y17_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = timer2_reg(0) $ (VCC)
-- \Add0~1\ = CARRY(timer2_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X19_Y17_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (timer2_reg(1) & (!\Add0~1\)) # (!timer2_reg(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!timer2_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X19_Y17_N9
\timer2_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(1));

-- Location: LCCOMB_X19_Y17_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (timer2_reg(2) & (\Add0~3\ $ (GND))) # (!timer2_reg(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((timer2_reg(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X19_Y17_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (timer2_reg(3) & (!\Add0~5\)) # (!timer2_reg(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!timer2_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X19_Y17_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (timer2_reg(4) & (\Add0~7\ $ (GND))) # (!timer2_reg(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((timer2_reg(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X19_Y17_N15
\timer2_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(4));

-- Location: LCCOMB_X19_Y17_N16
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (timer2_reg(5) & (!\Add0~9\)) # (!timer2_reg(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!timer2_reg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X19_Y17_N17
\timer2_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(5));

-- Location: LCCOMB_X19_Y17_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (timer2_reg(6) & (\Add0~11\ $ (GND))) # (!timer2_reg(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((timer2_reg(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X19_Y17_N19
\timer2_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(6));

-- Location: LCCOMB_X19_Y17_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (timer2_reg(7) & (!\Add0~13\)) # (!timer2_reg(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!timer2_reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X19_Y17_N21
\timer2_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(7));

-- Location: LCCOMB_X19_Y16_N0
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (timer2_reg(13) & (!\Add0~25\)) # (!timer2_reg(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!timer2_reg(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X19_Y16_N2
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (timer2_reg(14) & (\Add0~27\ $ (GND))) # (!timer2_reg(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((timer2_reg(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X19_Y16_N28
\timer2_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~7_combout\ = (\Add0~28_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer2_reg~7_combout\);

-- Location: FF_X19_Y16_N29
\timer2_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer2_reg~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(14));

-- Location: LCCOMB_X19_Y16_N4
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (timer2_reg(15) & (!\Add0~29\)) # (!timer2_reg(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!timer2_reg(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X19_Y16_N5
\timer2_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(15));

-- Location: LCCOMB_X19_Y16_N8
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (timer2_reg(17) & (!\Add0~33\)) # (!timer2_reg(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!timer2_reg(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X19_Y16_N9
\timer2_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(17));

-- Location: LCCOMB_X19_Y16_N10
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (timer2_reg(18) & (\Add0~35\ $ (GND))) # (!timer2_reg(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((timer2_reg(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X18_Y17_N22
\timer2_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~5_combout\ = (\Add0~36_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~36_combout\,
	datac => \Equal0~8_combout\,
	combout => \timer2_reg~5_combout\);

-- Location: FF_X18_Y17_N23
\timer2_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer2_reg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(18));

-- Location: LCCOMB_X19_Y16_N12
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (timer2_reg(19) & (!\Add0~37\)) # (!timer2_reg(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!timer2_reg(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X18_Y17_N16
\timer2_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~4_combout\ = (\Add0~38_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~38_combout\,
	datac => \Equal0~8_combout\,
	combout => \timer2_reg~4_combout\);

-- Location: FF_X18_Y17_N17
\timer2_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer2_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(19));

-- Location: LCCOMB_X19_Y16_N14
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (timer2_reg(20) & (\Add0~39\ $ (GND))) # (!timer2_reg(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((timer2_reg(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X19_Y16_N15
\timer2_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(20));

-- Location: LCCOMB_X19_Y16_N16
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (timer2_reg(21) & (!\Add0~41\)) # (!timer2_reg(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!timer2_reg(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X19_Y16_N17
\timer2_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(21));

-- Location: LCCOMB_X19_Y16_N20
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (timer2_reg(23) & (!\Add0~45\)) # (!timer2_reg(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!timer2_reg(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X19_Y16_N22
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (timer2_reg(24) & (\Add0~47\ $ (GND))) # (!timer2_reg(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((timer2_reg(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X18_Y17_N14
\timer2_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~2_combout\ = (\Add0~48_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~48_combout\,
	datac => \Equal0~8_combout\,
	combout => \timer2_reg~2_combout\);

-- Location: FF_X18_Y17_N15
\timer2_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer2_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(24));

-- Location: LCCOMB_X19_Y16_N24
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (timer2_reg(25) & (!\Add0~49\)) # (!timer2_reg(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!timer2_reg(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X19_Y16_N25
\timer2_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(25));

-- Location: LCCOMB_X19_Y16_N26
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = timer2_reg(26) $ (!\Add0~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(26),
	cin => \Add0~51\,
	combout => \Add0~52_combout\);

-- Location: LCCOMB_X19_Y17_N2
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~2_combout\ & (!\Add0~0_combout\ & (!\Add0~4_combout\ & !\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X18_Y17_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~12_combout\ & (!\Add0~8_combout\ & (!\Add0~14_combout\ & !\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~10_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X18_Y17_N24
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add0~24_combout\ & (\Add0~28_combout\ & (\Add0~26_combout\ & !\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~28_combout\,
	datac => \Add0~26_combout\,
	datad => \Add0~30_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X18_Y17_N10
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X18_Y17_N20
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Add0~32_combout\ & (!\Add0~34_combout\ & (\Add0~36_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add0~34_combout\,
	datac => \Add0~36_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X18_Y17_N18
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Add0~40_combout\ & (!\Add0~42_combout\ & (\Add0~38_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add0~42_combout\,
	datac => \Add0~38_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X18_Y17_N28
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Add0~44_combout\ & (\Add0~48_combout\ & \Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datac => \Add0~48_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X18_Y17_N4
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Add0~50_combout\ & (\Add0~46_combout\ & (!\Add0~52_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add0~46_combout\,
	datac => \Add0~52_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: FF_X18_Y17_N5
timer2_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer2_flag~q\);

-- Location: FF_X30_Y12_N1
\LED_pos.00001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED_pos.00001~0_combout\,
	ena => \timer2_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_pos.00001~q\);

-- Location: LCCOMB_X30_Y12_N22
\LED_pos.00010~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_pos.00010~feeder_combout\ = \LED_pos.00001~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LED_pos.00001~q\,
	combout => \LED_pos.00010~feeder_combout\);

-- Location: FF_X30_Y12_N23
\LED_pos.00010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED_pos.00010~feeder_combout\,
	ena => \timer2_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_pos.00010~q\);

-- Location: FF_X30_Y12_N21
\LED_pos.00011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \LED_pos.00010~q\,
	sload => VCC,
	ena => \timer2_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_pos.00011~q\);

-- Location: LCCOMB_X30_Y12_N18
\LED_pos.00100~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_pos.00100~feeder_combout\ = \LED_pos.00011~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LED_pos.00011~q\,
	combout => \LED_pos.00100~feeder_combout\);

-- Location: FF_X30_Y12_N19
\LED_pos.00100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED_pos.00100~feeder_combout\,
	ena => \timer2_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_pos.00100~q\);

-- Location: LCCOMB_X30_Y12_N2
\LED_pos.00000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_pos.00000~0_combout\ = !\LED_pos.00100~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LED_pos.00100~q\,
	combout => \LED_pos.00000~0_combout\);

-- Location: FF_X30_Y12_N3
\LED_pos.00000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED_pos.00000~0_combout\,
	ena => \timer2_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_pos.00000~q\);

-- Location: LCCOMB_X30_Y12_N16
\LED1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED1~1_combout\ = (\LED_pos.00000~q\ & (((\LED1~reg0_q\)))) # (!\LED_pos.00000~q\ & ((\timer2_flag~q\ & (\LED_status~q\)) # (!\timer2_flag~q\ & ((\LED1~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_status~q\,
	datab => \LED_pos.00000~q\,
	datac => \LED1~reg0_q\,
	datad => \timer2_flag~q\,
	combout => \LED1~1_combout\);

-- Location: FF_X30_Y12_N17
\LED1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED1~reg0_q\);

-- Location: LCCOMB_X30_Y12_N10
\LED2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED2~1_combout\ = (\LED_pos.00001~q\ & ((\timer2_flag~q\ & (\LED_status~q\)) # (!\timer2_flag~q\ & ((\LED2~reg0_q\))))) # (!\LED_pos.00001~q\ & (((\LED2~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_status~q\,
	datab => \LED_pos.00001~q\,
	datac => \LED2~reg0_q\,
	datad => \timer2_flag~q\,
	combout => \LED2~1_combout\);

-- Location: FF_X30_Y12_N11
\LED2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED2~reg0_q\);

-- Location: LCCOMB_X30_Y12_N12
\LED_status~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_status~1_combout\ = \LED_status~q\ $ (((\LED_pos.00100~q\ & \timer2_flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LED_pos.00100~q\,
	datac => \LED_status~q\,
	datad => \timer2_flag~q\,
	combout => \LED_status~1_combout\);

-- Location: FF_X30_Y12_N13
LED_status : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED_status~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_status~q\);

-- Location: LCCOMB_X30_Y12_N24
\LED3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED3~1_combout\ = (\LED_pos.00010~q\ & ((\timer2_flag~q\ & (\LED_status~q\)) # (!\timer2_flag~q\ & ((\LED3~reg0_q\))))) # (!\LED_pos.00010~q\ & (((\LED3~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_pos.00010~q\,
	datab => \LED_status~q\,
	datac => \LED3~reg0_q\,
	datad => \timer2_flag~q\,
	combout => \LED3~1_combout\);

-- Location: FF_X30_Y12_N25
\LED3~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED3~reg0_q\);

-- Location: LCCOMB_X30_Y12_N26
\LED4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED4~1_combout\ = (\LED_pos.00011~q\ & ((\timer2_flag~q\ & (\LED_status~q\)) # (!\timer2_flag~q\ & ((\LED4~reg0_q\))))) # (!\LED_pos.00011~q\ & (((\LED4~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_status~q\,
	datab => \LED_pos.00011~q\,
	datac => \LED4~reg0_q\,
	datad => \timer2_flag~q\,
	combout => \LED4~1_combout\);

-- Location: FF_X30_Y12_N27
\LED4~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED4~reg0_q\);

-- Location: FF_X24_Y18_N17
\I2C|ring_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|ring_buffer~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|ring_buffer[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|ring_buffer\(7));

-- Location: LCCOMB_X24_Y18_N16
\I2C|ring_buffer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|ring_buffer~0_combout\ = (\I2C|done~q\ & (((\I2C|ring_buffer\(7))))) # (!\I2C|done~q\ & ((\I2C|Selector38~3_combout\) # ((\I2C|ring_buffer\(7) & \I2C|state.000001001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector38~3_combout\,
	datab => \I2C|done~q\,
	datac => \I2C|ring_buffer\(7),
	datad => \I2C|state.000001001~q\,
	combout => \I2C|ring_buffer~0_combout\);

-- Location: LCCOMB_X25_Y16_N22
\I2C|data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|data[7]~0_combout\ = (\I2C|timer4_flag~q\ & (\I2C|state_read.000000011~q\ & ((\I2C|done~q\) # (\I2C|state.000001001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|done~q\,
	datab => \I2C|state.000001001~q\,
	datac => \I2C|timer4_flag~q\,
	datad => \I2C|state_read.000000011~q\,
	combout => \I2C|data[7]~0_combout\);

-- Location: FF_X23_Y19_N17
\I2C|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|ring_buffer~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \I2C|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|data\(7));

-- Location: FF_X24_Y18_N21
\I2C|ring_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|ring_buffer~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|ring_buffer[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|ring_buffer\(6));

-- Location: LCCOMB_X24_Y18_N20
\I2C|ring_buffer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|ring_buffer~1_combout\ = (\I2C|done~q\ & (((\I2C|ring_buffer\(6))))) # (!\I2C|done~q\ & ((\I2C|Selector39~0_combout\) # ((\I2C|ring_buffer\(6) & \I2C|state.000001001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector39~0_combout\,
	datab => \I2C|done~q\,
	datac => \I2C|ring_buffer\(6),
	datad => \I2C|state.000001001~q\,
	combout => \I2C|ring_buffer~1_combout\);

-- Location: FF_X23_Y19_N19
\I2C|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|ring_buffer~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \I2C|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|data\(6));

-- Location: LCCOMB_X23_Y19_N8
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\I2C|data\(7) & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\I2C|data\(7) & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & 
-- VCC))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\I2C|data\(7) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|data\(7),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X23_Y19_N10
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X23_Y19_N30
\Div1|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X23_Y19_N0
\Div1|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\I2C|data\(6) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|data\(6),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X22_Y17_N8
\Div1|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: FF_X24_Y18_N1
\I2C|ring_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|ring_buffer~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|ring_buffer[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|ring_buffer\(4));

-- Location: LCCOMB_X24_Y18_N0
\I2C|ring_buffer~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|ring_buffer~3_combout\ = (\I2C|done~q\ & (((\I2C|ring_buffer\(4))))) # (!\I2C|done~q\ & ((\I2C|Selector41~0_combout\) # ((\I2C|ring_buffer\(4) & \I2C|state.000001001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector41~0_combout\,
	datab => \I2C|done~q\,
	datac => \I2C|ring_buffer\(4),
	datad => \I2C|state.000001001~q\,
	combout => \I2C|ring_buffer~3_combout\);

-- Location: LCCOMB_X24_Y19_N4
\I2C|data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|data[4]~feeder_combout\ = \I2C|ring_buffer~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|ring_buffer~3_combout\,
	combout => \I2C|data[4]~feeder_combout\);

-- Location: FF_X24_Y19_N5
\I2C|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|data[4]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|data\(4));

-- Location: LCCOMB_X22_Y17_N28
\Div1|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\I2C|data\(4) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(4),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X22_Y17_N16
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[16]~40_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[16]~41_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[16]~41_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X22_Y17_N18
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X22_Y17_N20
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y17_N22
\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y17_N6
\Div1|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X22_Y17_N24
\Div1|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X23_Y17_N28
\Div1|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\I2C|data\(4) & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(4),
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: FF_X24_Y18_N9
\I2C|ring_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|ring_buffer~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \I2C|ring_buffer[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|ring_buffer\(3));

-- Location: LCCOMB_X24_Y18_N24
\I2C|ring_buffer~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|ring_buffer~4_combout\ = (\I2C|done~q\ & (((\I2C|ring_buffer\(3))))) # (!\I2C|done~q\ & ((\I2C|Selector42~0_combout\) # ((\I2C|state.000001001~q\ & \I2C|ring_buffer\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector42~0_combout\,
	datab => \I2C|state.000001001~q\,
	datac => \I2C|ring_buffer\(3),
	datad => \I2C|done~q\,
	combout => \I2C|ring_buffer~4_combout\);

-- Location: FF_X24_Y18_N25
\I2C|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|ring_buffer~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|data\(3));

-- Location: LCCOMB_X23_Y17_N0
\Div1|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\I2C|data\(3) & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X23_Y17_N18
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[21]~47_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X23_Y17_N22
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y17_N24
\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y17_N8
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY(!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y17_N10
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: FF_X24_Y18_N29
\I2C|ring_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|ring_buffer~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|ring_buffer[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|ring_buffer\(5));

-- Location: LCCOMB_X24_Y18_N28
\I2C|ring_buffer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|ring_buffer~2_combout\ = (\I2C|done~q\ & (((\I2C|ring_buffer\(5))))) # (!\I2C|done~q\ & ((\I2C|Selector40~0_combout\) # ((\I2C|ring_buffer\(5) & \I2C|state.000001001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector40~0_combout\,
	datab => \I2C|done~q\,
	datac => \I2C|ring_buffer\(5),
	datad => \I2C|state.000001001~q\,
	combout => \I2C|ring_buffer~2_combout\);

-- Location: FF_X23_Y19_N13
\I2C|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|ring_buffer~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \I2C|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|data\(5));

-- Location: LCCOMB_X22_Y17_N2
\Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\I2C|data\(5)))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \I2C|data\(5),
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X24_Y17_N18
\Div1|auto_generated|divider|divider|StageOut[28]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~62_combout\);

-- Location: LCCOMB_X24_Y17_N24
\Div1|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X24_Y17_N20
\Div1|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\I2C|data\(3) & \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X24_Y17_N28
\Div1|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\I2C|data\(2) & \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(2),
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X24_Y17_N8
\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[28]~62_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[28]~62_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y17_N10
\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y17_N20
\Mod1|auto_generated|divider|divider|StageOut[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~0_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~0_combout\);

-- Location: LCCOMB_X21_Y17_N16
\Mod1|auto_generated|divider|divider|StageOut[33]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~2_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~2_combout\);

-- Location: LCCOMB_X21_Y17_N18
\Mod1|auto_generated|divider|divider|StageOut[32]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\);

-- Location: LCCOMB_X21_Y17_N28
\Mod1|auto_generated|divider|divider|StageOut[31]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~6_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~6_combout\);

-- Location: LCCOMB_X21_Y17_N6
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[30]~1_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[30]~0_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[30]~1_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[30]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[30]~1_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[30]~0_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X21_Y17_N8
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[31]~7_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[31]~6_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~7_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[31]~6_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[31]~7_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~6_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[31]~7_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~6_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X21_Y17_N10
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[32]~5_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[32]~5_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[32]~5_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[32]~5_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X21_Y17_N12
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[33]~3_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~2_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[33]~3_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[33]~2_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y17_N14
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y17_N24
\Mod1|auto_generated|divider|divider|StageOut[36]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[30]~1_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[30]~0_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[30]~1_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[30]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~8_combout\);

-- Location: FF_X21_Y17_N25
\hundreds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[36]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hundreds(1));

-- Location: LCCOMB_X18_Y22_N12
\display|digit_posn[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|digit_posn[0]~1_combout\ = !\display|digit_posn\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|digit_posn\(0),
	combout => \display|digit_posn[0]~1_combout\);

-- Location: LCCOMB_X19_Y21_N12
\display|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~36_combout\ = (\display|prescaler\(18) & (\display|Add0~35\ $ (GND))) # (!\display|prescaler\(18) & (!\display|Add0~35\ & VCC))
-- \display|Add0~37\ = CARRY((\display|prescaler\(18) & !\display|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(18),
	datad => VCC,
	cin => \display|Add0~35\,
	combout => \display|Add0~36_combout\,
	cout => \display|Add0~37\);

-- Location: FF_X19_Y21_N13
\display|prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(18));

-- Location: LCCOMB_X19_Y21_N24
\display|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~5_combout\ = (!\display|prescaler\(17) & (!\display|prescaler\(19) & (!\display|prescaler\(16) & !\display|prescaler\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(17),
	datab => \display|prescaler\(19),
	datac => \display|prescaler\(16),
	datad => \display|prescaler\(18),
	combout => \display|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y22_N8
\display|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~0_combout\ = \display|prescaler\(0) $ (VCC)
-- \display|Add0~1\ = CARRY(\display|prescaler\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(0),
	datad => VCC,
	combout => \display|Add0~0_combout\,
	cout => \display|Add0~1\);

-- Location: LCCOMB_X19_Y22_N12
\display|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~4_combout\ = (\display|prescaler\(2) & (\display|Add0~3\ $ (GND))) # (!\display|prescaler\(2) & (!\display|Add0~3\ & VCC))
-- \display|Add0~5\ = CARRY((\display|prescaler\(2) & !\display|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(2),
	datad => VCC,
	cin => \display|Add0~3\,
	combout => \display|Add0~4_combout\,
	cout => \display|Add0~5\);

-- Location: LCCOMB_X19_Y22_N14
\display|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~6_combout\ = (\display|prescaler\(3) & (!\display|Add0~5\)) # (!\display|prescaler\(3) & ((\display|Add0~5\) # (GND)))
-- \display|Add0~7\ = CARRY((!\display|Add0~5\) # (!\display|prescaler\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(3),
	datad => VCC,
	cin => \display|Add0~5\,
	combout => \display|Add0~6_combout\,
	cout => \display|Add0~7\);

-- Location: FF_X19_Y22_N15
\display|prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(3));

-- Location: LCCOMB_X19_Y22_N18
\display|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~10_combout\ = (\display|prescaler\(5) & (!\display|Add0~9\)) # (!\display|prescaler\(5) & ((\display|Add0~9\) # (GND)))
-- \display|Add0~11\ = CARRY((!\display|Add0~9\) # (!\display|prescaler\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(5),
	datad => VCC,
	cin => \display|Add0~9\,
	combout => \display|Add0~10_combout\,
	cout => \display|Add0~11\);

-- Location: FF_X19_Y22_N19
\display|prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(5));

-- Location: LCCOMB_X19_Y22_N20
\display|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~12_combout\ = (\display|prescaler\(6) & (\display|Add0~11\ $ (GND))) # (!\display|prescaler\(6) & (!\display|Add0~11\ & VCC))
-- \display|Add0~13\ = CARRY((\display|prescaler\(6) & !\display|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(6),
	datad => VCC,
	cin => \display|Add0~11\,
	combout => \display|Add0~12_combout\,
	cout => \display|Add0~13\);

-- Location: LCCOMB_X19_Y22_N22
\display|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~14_combout\ = (\display|prescaler\(7) & (!\display|Add0~13\)) # (!\display|prescaler\(7) & ((\display|Add0~13\) # (GND)))
-- \display|Add0~15\ = CARRY((!\display|Add0~13\) # (!\display|prescaler\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(7),
	datad => VCC,
	cin => \display|Add0~13\,
	combout => \display|Add0~14_combout\,
	cout => \display|Add0~15\);

-- Location: FF_X19_Y22_N23
\display|prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(7));

-- Location: LCCOMB_X19_Y22_N2
\display|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~1_combout\ = (\display|prescaler\(4) & (\display|prescaler\(6) & (!\display|prescaler\(7) & !\display|prescaler\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(4),
	datab => \display|prescaler\(6),
	datac => \display|prescaler\(7),
	datad => \display|prescaler\(5),
	combout => \display|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y22_N30
\display|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~22_combout\ = (\display|prescaler\(11) & (!\display|Add0~21\)) # (!\display|prescaler\(11) & ((\display|Add0~21\) # (GND)))
-- \display|Add0~23\ = CARRY((!\display|Add0~21\) # (!\display|prescaler\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(11),
	datad => VCC,
	cin => \display|Add0~21\,
	combout => \display|Add0~22_combout\,
	cout => \display|Add0~23\);

-- Location: FF_X19_Y22_N31
\display|prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(11));

-- Location: LCCOMB_X19_Y22_N4
\display|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~2_combout\ = (\display|prescaler\(9) & (\display|prescaler\(8) & (!\display|prescaler\(11) & !\display|prescaler\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(9),
	datab => \display|prescaler\(8),
	datac => \display|prescaler\(11),
	datad => \display|prescaler\(10),
	combout => \display|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y22_N26
\display|prescaler~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|prescaler~0_combout\ = (\display|Add0~0_combout\ & (((!\display|Equal0~4_combout\) # (!\display|Equal0~6_combout\)) # (!\display|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~5_combout\,
	datab => \display|Equal0~6_combout\,
	datac => \display|Add0~0_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|prescaler~0_combout\);

-- Location: FF_X18_Y22_N27
\display|prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|prescaler~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(0));

-- Location: FF_X19_Y22_N13
\display|prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(2));

-- Location: LCCOMB_X19_Y22_N0
\display|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~0_combout\ = (!\display|prescaler\(1) & (!\display|prescaler\(3) & (!\display|prescaler\(0) & !\display|prescaler\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(1),
	datab => \display|prescaler\(3),
	datac => \display|prescaler\(0),
	datad => \display|prescaler\(2),
	combout => \display|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y22_N6
\display|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~4_combout\ = (\display|Equal0~3_combout\ & (\display|Equal0~1_combout\ & (\display|Equal0~2_combout\ & \display|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~3_combout\,
	datab => \display|Equal0~1_combout\,
	datac => \display|Equal0~2_combout\,
	datad => \display|Equal0~0_combout\,
	combout => \display|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y22_N6
\display|prescaler~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|prescaler~2_combout\ = (\display|Add0~12_combout\ & (((!\display|Equal0~4_combout\) # (!\display|Equal0~6_combout\)) # (!\display|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~5_combout\,
	datab => \display|Equal0~6_combout\,
	datac => \display|Add0~12_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|prescaler~2_combout\);

-- Location: FF_X18_Y22_N7
\display|prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|prescaler~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(6));

-- Location: LCCOMB_X19_Y22_N24
\display|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~16_combout\ = (\display|prescaler\(8) & (\display|Add0~15\ $ (GND))) # (!\display|prescaler\(8) & (!\display|Add0~15\ & VCC))
-- \display|Add0~17\ = CARRY((\display|prescaler\(8) & !\display|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(8),
	datad => VCC,
	cin => \display|Add0~15\,
	combout => \display|Add0~16_combout\,
	cout => \display|Add0~17\);

-- Location: LCCOMB_X18_Y22_N24
\display|prescaler~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|prescaler~3_combout\ = (\display|Add0~16_combout\ & (((!\display|Equal0~5_combout\) # (!\display|Equal0~6_combout\)) # (!\display|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~4_combout\,
	datab => \display|Equal0~6_combout\,
	datac => \display|Equal0~5_combout\,
	datad => \display|Add0~16_combout\,
	combout => \display|prescaler~3_combout\);

-- Location: FF_X18_Y22_N25
\display|prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|prescaler~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(8));

-- Location: LCCOMB_X19_Y22_N28
\display|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~20_combout\ = (\display|prescaler\(10) & (\display|Add0~19\ $ (GND))) # (!\display|prescaler\(10) & (!\display|Add0~19\ & VCC))
-- \display|Add0~21\ = CARRY((\display|prescaler\(10) & !\display|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(10),
	datad => VCC,
	cin => \display|Add0~19\,
	combout => \display|Add0~20_combout\,
	cout => \display|Add0~21\);

-- Location: FF_X19_Y22_N29
\display|prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(10));

-- Location: LCCOMB_X19_Y21_N0
\display|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~24_combout\ = (\display|prescaler\(12) & (\display|Add0~23\ $ (GND))) # (!\display|prescaler\(12) & (!\display|Add0~23\ & VCC))
-- \display|Add0~25\ = CARRY((\display|prescaler\(12) & !\display|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(12),
	datad => VCC,
	cin => \display|Add0~23\,
	combout => \display|Add0~24_combout\,
	cout => \display|Add0~25\);

-- Location: FF_X19_Y21_N1
\display|prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(12));

-- Location: LCCOMB_X19_Y21_N2
\display|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~26_combout\ = (\display|prescaler\(13) & (!\display|Add0~25\)) # (!\display|prescaler\(13) & ((\display|Add0~25\) # (GND)))
-- \display|Add0~27\ = CARRY((!\display|Add0~25\) # (!\display|prescaler\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(13),
	datad => VCC,
	cin => \display|Add0~25\,
	combout => \display|Add0~26_combout\,
	cout => \display|Add0~27\);

-- Location: FF_X19_Y21_N3
\display|prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(13));

-- Location: LCCOMB_X19_Y21_N4
\display|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~28_combout\ = (\display|prescaler\(14) & (\display|Add0~27\ $ (GND))) # (!\display|prescaler\(14) & (!\display|Add0~27\ & VCC))
-- \display|Add0~29\ = CARRY((\display|prescaler\(14) & !\display|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(14),
	datad => VCC,
	cin => \display|Add0~27\,
	combout => \display|Add0~28_combout\,
	cout => \display|Add0~29\);

-- Location: LCCOMB_X19_Y21_N28
\display|prescaler~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|prescaler~5_combout\ = (\display|Add0~28_combout\ & (((!\display|Equal0~6_combout\) # (!\display|Equal0~5_combout\)) # (!\display|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~4_combout\,
	datab => \display|Equal0~5_combout\,
	datac => \display|Add0~28_combout\,
	datad => \display|Equal0~6_combout\,
	combout => \display|prescaler~5_combout\);

-- Location: FF_X19_Y21_N29
\display|prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|prescaler~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(14));

-- Location: LCCOMB_X19_Y21_N8
\display|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~32_combout\ = (\display|prescaler\(16) & (\display|Add0~31\ $ (GND))) # (!\display|prescaler\(16) & (!\display|Add0~31\ & VCC))
-- \display|Add0~33\ = CARRY((\display|prescaler\(16) & !\display|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(16),
	datad => VCC,
	cin => \display|Add0~31\,
	combout => \display|Add0~32_combout\,
	cout => \display|Add0~33\);

-- Location: FF_X19_Y21_N9
\display|prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(16));

-- Location: LCCOMB_X19_Y21_N14
\display|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~38_combout\ = (\display|prescaler\(19) & (!\display|Add0~37\)) # (!\display|prescaler\(19) & ((\display|Add0~37\) # (GND)))
-- \display|Add0~39\ = CARRY((!\display|Add0~37\) # (!\display|prescaler\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(19),
	datad => VCC,
	cin => \display|Add0~37\,
	combout => \display|Add0~38_combout\,
	cout => \display|Add0~39\);

-- Location: FF_X19_Y21_N15
\display|prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(19));

-- Location: LCCOMB_X19_Y21_N16
\display|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~40_combout\ = (\display|prescaler\(20) & (\display|Add0~39\ $ (GND))) # (!\display|prescaler\(20) & (!\display|Add0~39\ & VCC))
-- \display|Add0~41\ = CARRY((\display|prescaler\(20) & !\display|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(20),
	datad => VCC,
	cin => \display|Add0~39\,
	combout => \display|Add0~40_combout\,
	cout => \display|Add0~41\);

-- Location: FF_X19_Y21_N17
\display|prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(20));

-- Location: LCCOMB_X19_Y21_N18
\display|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~42_combout\ = (\display|prescaler\(21) & (!\display|Add0~41\)) # (!\display|prescaler\(21) & ((\display|Add0~41\) # (GND)))
-- \display|Add0~43\ = CARRY((!\display|Add0~41\) # (!\display|prescaler\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(21),
	datad => VCC,
	cin => \display|Add0~41\,
	combout => \display|Add0~42_combout\,
	cout => \display|Add0~43\);

-- Location: FF_X19_Y21_N19
\display|prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(21));

-- Location: LCCOMB_X19_Y21_N20
\display|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~44_combout\ = (\display|prescaler\(22) & (\display|Add0~43\ $ (GND))) # (!\display|prescaler\(22) & (!\display|Add0~43\ & VCC))
-- \display|Add0~45\ = CARRY((\display|prescaler\(22) & !\display|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(22),
	datad => VCC,
	cin => \display|Add0~43\,
	combout => \display|Add0~44_combout\,
	cout => \display|Add0~45\);

-- Location: FF_X19_Y21_N21
\display|prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(22));

-- Location: LCCOMB_X19_Y21_N22
\display|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~46_combout\ = \display|prescaler\(23) $ (\display|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(23),
	cin => \display|Add0~45\,
	combout => \display|Add0~46_combout\);

-- Location: FF_X19_Y21_N23
\display|prescaler[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|prescaler\(23));

-- Location: LCCOMB_X19_Y21_N30
\display|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~6_combout\ = (!\display|prescaler\(22) & (!\display|prescaler\(21) & (!\display|prescaler\(23) & !\display|prescaler\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(22),
	datab => \display|prescaler\(21),
	datac => \display|prescaler\(23),
	datad => \display|prescaler\(20),
	combout => \display|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y22_N28
\display|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~7_combout\ = (\display|Equal0~6_combout\ & (\display|Equal0~5_combout\ & \display|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|Equal0~6_combout\,
	datac => \display|Equal0~5_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|Equal0~7_combout\);

-- Location: FF_X18_Y22_N13
\display|digit_posn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|digit_posn[0]~1_combout\,
	ena => \display|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|digit_posn\(0));

-- Location: LCCOMB_X22_Y18_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X22_Y18_N24
\thousands[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \thousands[1]~1_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \thousands[1]~1_combout\);

-- Location: FF_X22_Y18_N25
\thousands[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \thousands[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => thousands(1));

-- Location: FF_X24_Y18_N31
\I2C|ring_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|ring_buffer~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \I2C|ring_buffer[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|ring_buffer\(1));

-- Location: LCCOMB_X24_Y18_N22
\I2C|ring_buffer~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|ring_buffer~6_combout\ = (\I2C|done~q\ & (((\I2C|ring_buffer\(1))))) # (!\I2C|done~q\ & ((\I2C|Selector44~0_combout\) # ((\I2C|state.000001001~q\ & \I2C|ring_buffer\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector44~0_combout\,
	datab => \I2C|state.000001001~q\,
	datac => \I2C|ring_buffer\(1),
	datad => \I2C|done~q\,
	combout => \I2C|ring_buffer~6_combout\);

-- Location: FF_X24_Y18_N23
\I2C|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|ring_buffer~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|data\(1));

-- Location: LCCOMB_X23_Y19_N22
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \I2C|data\(5) $ (VCC)
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\I2C|data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(5),
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X23_Y19_N28
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X24_Y19_N18
\Mod2|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\I2C|data\(5) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(5),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X24_Y19_N24
\Mod2|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\I2C|data\(4) & !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(4),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X24_Y19_N6
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X24_Y19_N8
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X23_Y19_N20
\Mod2|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\I2C|data\(7) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(7),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X23_Y19_N18
\Mod2|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\I2C|data\(6) & \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(6),
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X24_Y19_N10
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X24_Y19_N12
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[18]~37_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y19_N14
\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X24_Y19_N22
\Mod2|auto_generated|divider|divider|StageOut[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[22]~68_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\I2C|data\(5))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|data\(5),
	datab => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[22]~68_combout\);

-- Location: LCCOMB_X24_Y19_N30
\Mod2|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[23]~44_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X25_Y19_N24
\Mod2|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\I2C|data\(4) & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(4),
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X25_Y19_N28
\Mod2|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\I2C|data\(3) & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(3),
	datad => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X25_Y19_N14
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[21]~47_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[21]~47_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X25_Y19_N18
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[23]~67_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[23]~67_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y19_N20
\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X26_Y19_N16
\Mod2|auto_generated|divider|divider|StageOut[28]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[28]~65_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- ((!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[22]~68_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[28]~65_combout\);

-- Location: LCCOMB_X25_Y19_N6
\Mod2|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X26_Y19_N8
\Mod2|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\I2C|data\(3) & \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(3),
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: FF_X24_Y18_N27
\I2C|ring_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|ring_buffer~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \I2C|ring_buffer[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|ring_buffer\(2));

-- Location: LCCOMB_X24_Y18_N4
\I2C|ring_buffer~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|ring_buffer~5_combout\ = (\I2C|done~q\ & (((\I2C|ring_buffer\(2))))) # (!\I2C|done~q\ & ((\I2C|Selector43~0_combout\) # ((\I2C|state.000001001~q\ & \I2C|ring_buffer\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector43~0_combout\,
	datab => \I2C|state.000001001~q\,
	datac => \I2C|ring_buffer\(2),
	datad => \I2C|done~q\,
	combout => \I2C|ring_buffer~5_combout\);

-- Location: LCCOMB_X23_Y18_N30
\I2C|data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|data[2]~feeder_combout\ = \I2C|ring_buffer~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|ring_buffer~5_combout\,
	combout => \I2C|data[2]~feeder_combout\);

-- Location: FF_X23_Y18_N31
\I2C|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|data[2]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \I2C|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|data\(2));

-- Location: LCCOMB_X26_Y19_N4
\Mod2|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\I2C|data\(2) & \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(2),
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X26_Y19_N20
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X26_Y19_N26
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[28]~50_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[28]~65_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[28]~65_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X26_Y19_N28
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X28_Y19_N4
\Mod2|auto_generated|divider|divider|StageOut[30]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[30]~57_combout\ = (\I2C|data\(1) & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|data\(1),
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[30]~57_combout\);

-- Location: LCCOMB_X28_Y19_N16
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[30]~56_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[30]~57_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[30]~56_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[30]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[30]~56_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[30]~57_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X25_Y19_N8
\Mod2|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\I2C|data\(4))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \I2C|data\(4),
	datac => \Mod2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X28_Y19_N2
\Mod2|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X28_Y19_N14
\Mod2|auto_generated|divider|divider|StageOut[32]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[32]~70_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\I2C|data\(3)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \I2C|data\(3),
	datac => \Mod2|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[32]~70_combout\);

-- Location: LCCOMB_X28_Y19_N8
\Mod2|auto_generated|divider|divider|StageOut[31]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\);

-- Location: LCCOMB_X28_Y19_N18
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X28_Y19_N20
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[32]~70_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[32]~70_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[32]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X28_Y19_N22
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[33]~58_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[33]~58_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X28_Y19_N24
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X28_Y19_N28
\Mod2|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\I2C|data\(1)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \I2C|data\(1),
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: FF_X28_Y19_N29
\tens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[36]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tens(1));

-- Location: LCCOMB_X21_Y21_N20
\display|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Selector3~2_combout\ = (\display|digit_posn\(0) & ((\display|digit_posn\(1) & (thousands(1))) # (!\display|digit_posn\(1) & ((tens(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_posn\(1),
	datab => thousands(1),
	datac => \display|digit_posn\(0),
	datad => tens(1),
	combout => \display|Selector3~2_combout\);

-- Location: LCCOMB_X21_Y21_N8
\display|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Selector3~3_combout\ = (\display|Selector3~2_combout\) # ((\display|digit_posn\(1) & (hundreds(1) & !\display|digit_posn\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_posn\(1),
	datab => hundreds(1),
	datac => \display|digit_posn\(0),
	datad => \display|Selector3~2_combout\,
	combout => \display|Selector3~3_combout\);

-- Location: FF_X21_Y21_N9
\display|digit_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Selector3~3_combout\,
	ena => \display|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|digit_data\(1));

-- Location: LCCOMB_X21_Y17_N26
\Mod1|auto_generated|divider|divider|StageOut[37]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[37]~9_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[31]~7_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[31]~6_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[31]~7_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[37]~9_combout\);

-- Location: FF_X21_Y17_N27
\hundreds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[37]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hundreds(2));

-- Location: LCCOMB_X28_Y19_N10
\Mod2|auto_generated|divider|divider|StageOut[37]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[37]~63_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[31]~60_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[31]~61_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[37]~63_combout\);

-- Location: FF_X28_Y19_N11
\tens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[37]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tens(2));

-- Location: LCCOMB_X26_Y15_N28
\I2C|data_lo[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|data_lo[7]~0_combout\ = (\I2C|SDA~1_combout\ & ((\I2C|Selector117~2_combout\ & (\I2C|ring_buffer~0_combout\)) # (!\I2C|Selector117~2_combout\ & ((\I2C|data_lo\(7)))))) # (!\I2C|SDA~1_combout\ & (((\I2C|data_lo\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|SDA~1_combout\,
	datab => \I2C|ring_buffer~0_combout\,
	datac => \I2C|data_lo\(7),
	datad => \I2C|Selector117~2_combout\,
	combout => \I2C|data_lo[7]~0_combout\);

-- Location: FF_X26_Y15_N29
\I2C|data_lo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|data_lo[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|data_lo\(7));

-- Location: LCCOMB_X25_Y17_N30
\units[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \units[0]~feeder_combout\ = \I2C|data_lo\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|data_lo\(7),
	combout => \units[0]~feeder_combout\);

-- Location: FF_X25_Y17_N31
\units[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \units[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \units\(0));

-- Location: LCCOMB_X18_Y22_N30
\display|digit_posn[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|digit_posn[1]~0_combout\ = \display|digit_posn\(1) $ (((\display|digit_posn\(0) & \display|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_posn\(0),
	datac => \display|digit_posn\(1),
	datad => \display|Equal0~7_combout\,
	combout => \display|digit_posn[1]~0_combout\);

-- Location: FF_X18_Y22_N31
\display|digit_posn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|digit_posn[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|digit_posn\(1));

-- Location: LCCOMB_X21_Y21_N6
\display|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Selector2~0_combout\ = (\display|digit_posn\(0) & ((tens(2)) # ((\display|digit_posn\(1))))) # (!\display|digit_posn\(0) & (((\units\(0) & !\display|digit_posn\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_posn\(0),
	datab => tens(2),
	datac => \units\(0),
	datad => \display|digit_posn\(1),
	combout => \display|Selector2~0_combout\);

-- Location: LCCOMB_X21_Y21_N26
\display|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Selector2~1_combout\ = (\display|digit_posn\(1) & (hundreds(2) & !\display|Selector2~0_combout\)) # (!\display|digit_posn\(1) & ((\display|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_posn\(1),
	datac => hundreds(2),
	datad => \display|Selector2~0_combout\,
	combout => \display|Selector2~1_combout\);

-- Location: FF_X21_Y21_N27
\display|digit_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Selector2~1_combout\,
	ena => \display|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|digit_data\(2));

-- Location: LCCOMB_X21_Y17_N4
\Mod1|auto_generated|divider|divider|StageOut[38]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[38]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[32]~5_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[32]~5_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[38]~10_combout\);

-- Location: FF_X21_Y17_N5
\hundreds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[38]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hundreds(3));

-- Location: LCCOMB_X28_Y19_N12
\Mod2|auto_generated|divider|divider|StageOut[38]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[38]~64_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[32]~70_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[32]~59_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[38]~64_combout\);

-- Location: FF_X28_Y19_N13
\tens[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod2|auto_generated|divider|divider|StageOut[38]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tens(3));

-- Location: LCCOMB_X21_Y21_N28
\display|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Selector1~0_combout\ = (\display|digit_posn\(1) & (hundreds(3) & (!\display|digit_posn\(0)))) # (!\display|digit_posn\(1) & (((\display|digit_posn\(0) & tens(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_posn\(1),
	datab => hundreds(3),
	datac => \display|digit_posn\(0),
	datad => tens(3),
	combout => \display|Selector1~0_combout\);

-- Location: FF_X21_Y21_N29
\display|digit_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Selector1~0_combout\,
	ena => \display|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|digit_data\(3));

-- Location: LCCOMB_X21_Y21_N24
\display|decoder|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|WideOr6~0_combout\ = (\display|digit_data\(1) & (((\display|digit_data\(3))))) # (!\display|digit_data\(1) & (\display|digit_data\(2) $ (((\display|digit_data\(0) & !\display|digit_data\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_data\(0),
	datab => \display|digit_data\(1),
	datac => \display|digit_data\(2),
	datad => \display|digit_data\(3),
	combout => \display|decoder|WideOr6~0_combout\);

-- Location: FF_X21_Y21_N25
\display|decoder|SEG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|decoder|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|decoder|SEG\(0));

-- Location: LCCOMB_X21_Y21_N2
\display|decoder|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|WideOr5~0_combout\ = (\display|digit_data\(2) & ((\display|digit_data\(3)) # (\display|digit_data\(0) $ (\display|digit_data\(1))))) # (!\display|digit_data\(2) & (((\display|digit_data\(1) & \display|digit_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_data\(0),
	datab => \display|digit_data\(1),
	datac => \display|digit_data\(2),
	datad => \display|digit_data\(3),
	combout => \display|decoder|WideOr5~0_combout\);

-- Location: FF_X21_Y21_N3
\display|decoder|SEG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|decoder|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|decoder|SEG\(1));

-- Location: LCCOMB_X21_Y21_N4
\display|decoder|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|WideOr4~0_combout\ = (\display|digit_data\(2) & (((\display|digit_data\(3))))) # (!\display|digit_data\(2) & (\display|digit_data\(1) & ((\display|digit_data\(3)) # (!\display|digit_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_data\(0),
	datab => \display|digit_data\(1),
	datac => \display|digit_data\(2),
	datad => \display|digit_data\(3),
	combout => \display|decoder|WideOr4~0_combout\);

-- Location: FF_X21_Y21_N5
\display|decoder|SEG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|decoder|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|decoder|SEG\(2));

-- Location: LCCOMB_X21_Y21_N30
\display|decoder|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|WideOr3~0_combout\ = (\display|digit_data\(1) & ((\display|digit_data\(3)) # ((\display|digit_data\(0) & \display|digit_data\(2))))) # (!\display|digit_data\(1) & (\display|digit_data\(2) $ (((\display|digit_data\(0) & 
-- !\display|digit_data\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_data\(0),
	datab => \display|digit_data\(1),
	datac => \display|digit_data\(2),
	datad => \display|digit_data\(3),
	combout => \display|decoder|WideOr3~0_combout\);

-- Location: FF_X21_Y21_N31
\display|decoder|SEG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|decoder|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|decoder|SEG\(3));

-- Location: LCCOMB_X21_Y21_N0
\display|decoder|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|WideOr2~0_combout\ = (\display|digit_data\(0)) # ((\display|digit_data\(1) & ((\display|digit_data\(3)))) # (!\display|digit_data\(1) & (\display|digit_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_data\(0),
	datab => \display|digit_data\(1),
	datac => \display|digit_data\(2),
	datad => \display|digit_data\(3),
	combout => \display|decoder|WideOr2~0_combout\);

-- Location: FF_X21_Y21_N1
\display|decoder|SEG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|decoder|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|decoder|SEG\(4));

-- Location: LCCOMB_X21_Y21_N18
\display|decoder|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|WideOr1~0_combout\ = (\display|digit_data\(0) & ((\display|digit_data\(1)) # (\display|digit_data\(2) $ (!\display|digit_data\(3))))) # (!\display|digit_data\(0) & ((\display|digit_data\(2) & ((\display|digit_data\(3)))) # 
-- (!\display|digit_data\(2) & (\display|digit_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_data\(0),
	datab => \display|digit_data\(1),
	datac => \display|digit_data\(2),
	datad => \display|digit_data\(3),
	combout => \display|decoder|WideOr1~0_combout\);

-- Location: FF_X21_Y21_N19
\display|decoder|SEG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|decoder|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|decoder|SEG\(5));

-- Location: LCCOMB_X21_Y21_N16
\display|decoder|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|WideOr0~0_combout\ = (\display|digit_data\(1) & ((\display|digit_data\(3)) # ((\display|digit_data\(0) & \display|digit_data\(2))))) # (!\display|digit_data\(1) & ((\display|digit_data\(2) $ (!\display|digit_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_data\(0),
	datab => \display|digit_data\(1),
	datac => \display|digit_data\(2),
	datad => \display|digit_data\(3),
	combout => \display|decoder|WideOr0~0_combout\);

-- Location: FF_X21_Y21_N17
\display|decoder|SEG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|decoder|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|decoder|SEG\(6));

-- Location: LCCOMB_X21_Y21_N22
\display|decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|Mux0~0_combout\ = (\display|decoder|Equal0~0_combout\) # ((\display|digit_data\(3) & ((\display|digit_data\(1)) # (\display|digit_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|decoder|Equal0~0_combout\,
	datab => \display|digit_data\(1),
	datac => \display|digit_data\(2),
	datad => \display|digit_data\(3),
	combout => \display|decoder|Mux0~0_combout\);

-- Location: FF_X21_Y21_N23
\display|decoder|SEG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|decoder|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|decoder|SEG\(7));

-- Location: LCCOMB_X18_Y22_N20
\display|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Decoder0~0_combout\ = (!\display|digit_posn\(1)) # (!\display|digit_posn\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_posn\(0),
	datac => \display|digit_posn\(1),
	combout => \display|Decoder0~0_combout\);

-- Location: FF_X18_Y22_N21
\display|DIGIT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Decoder0~0_combout\,
	ena => \display|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|DIGIT\(0));

-- Location: LCCOMB_X21_Y21_N12
\display|decoder|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|Equal0~0_combout\ = (\display|digit_posn\(0)) # (!\display|digit_posn\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|digit_posn\(0),
	datad => \display|digit_posn\(1),
	combout => \display|decoder|Equal0~0_combout\);

-- Location: FF_X21_Y21_N13
\display|DIGIT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|decoder|Equal0~0_combout\,
	ena => \display|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|DIGIT\(1));

-- Location: LCCOMB_X18_Y22_N22
\display|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Decoder0~1_combout\ = (\display|digit_posn\(1)) # (!\display|digit_posn\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_posn\(0),
	datac => \display|digit_posn\(1),
	combout => \display|Decoder0~1_combout\);

-- Location: FF_X18_Y22_N23
\display|DIGIT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Decoder0~1_combout\,
	ena => \display|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|DIGIT\(2));

-- Location: LCCOMB_X18_Y22_N0
\display|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Decoder0~2_combout\ = (\display|digit_posn\(0)) # (\display|digit_posn\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_posn\(0),
	datac => \display|digit_posn\(1),
	combout => \display|Decoder0~2_combout\);

-- Location: FF_X18_Y22_N1
\display|DIGIT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Decoder0~2_combout\,
	ena => \display|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|DIGIT\(3));

-- Location: IOIBUF_X28_Y24_N1
\SCL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SCL,
	o => \SCL~input_o\);

ww_LED1 <= \LED1~output_o\;

ww_LED2 <= \LED2~output_o\;

ww_LED3 <= \LED3~output_o\;

ww_LED4 <= \LED4~output_o\;

ww_SEG(0) <= \SEG[0]~output_o\;

ww_SEG(1) <= \SEG[1]~output_o\;

ww_SEG(2) <= \SEG[2]~output_o\;

ww_SEG(3) <= \SEG[3]~output_o\;

ww_SEG(4) <= \SEG[4]~output_o\;

ww_SEG(5) <= \SEG[5]~output_o\;

ww_SEG(6) <= \SEG[6]~output_o\;

ww_SEG(7) <= \SEG[7]~output_o\;

ww_DIGIT(0) <= \DIGIT[0]~output_o\;

ww_DIGIT(1) <= \DIGIT[1]~output_o\;

ww_DIGIT(2) <= \DIGIT[2]~output_o\;

ww_DIGIT(3) <= \DIGIT[3]~output_o\;

SCL <= \SCL~output_o\;

SDA <= \SDA~output_o\;
END structure;


