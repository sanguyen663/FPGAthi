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

-- DATE "07/18/2022 19:13:28"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	Delay_test IS
    PORT (
	CLK : IN std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic;
	LED4 : OUT std_logic;
	SEG : OUT std_logic_vector(7 DOWNTO 0);
	SCL : OUT std_logic;
	SDA : INOUT std_logic;
	DIGIT : OUT std_logic_vector(3 DOWNTO 0);
	rst_n : IN std_logic
	);
END Delay_test;

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
-- SCL	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIGIT[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Delay_test IS
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
SIGNAL ww_SCL : std_logic;
SIGNAL ww_DIGIT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rst_n : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \I2C|Add4~4_combout\ : std_logic;
SIGNAL \I2C|Add7~4_combout\ : std_logic;
SIGNAL \I2C|Add7~6_combout\ : std_logic;
SIGNAL \I2C|Add4~14_combout\ : std_logic;
SIGNAL \I2C|Add4~18_combout\ : std_logic;
SIGNAL \I2C|Add4~28_combout\ : std_logic;
SIGNAL \I2C|Add4~42_combout\ : std_logic;
SIGNAL \I2C|Add4~51\ : std_logic;
SIGNAL \I2C|Add4~52_combout\ : std_logic;
SIGNAL \I2C|Add7~8_combout\ : std_logic;
SIGNAL \I2C|Add7~10_combout\ : std_logic;
SIGNAL \I2C|Add7~14_combout\ : std_logic;
SIGNAL \I2C|Add7~16_combout\ : std_logic;
SIGNAL \I2C|Add7~20_combout\ : std_logic;
SIGNAL \I2C|Add7~22_combout\ : std_logic;
SIGNAL \I2C|Add7~24_combout\ : std_logic;
SIGNAL \I2C|Add7~28_combout\ : std_logic;
SIGNAL \I2C|Add7~36_combout\ : std_logic;
SIGNAL \I2C|Add0~2_combout\ : std_logic;
SIGNAL \I2C|Add0~4_combout\ : std_logic;
SIGNAL \I2C|Add0~6_combout\ : std_logic;
SIGNAL \I2C|Add0~16_combout\ : std_logic;
SIGNAL \I2C|Add0~26_combout\ : std_logic;
SIGNAL \I2C|Add0~34_combout\ : std_logic;
SIGNAL \I2C|Add0~40_combout\ : std_logic;
SIGNAL \I2C|Add0~51\ : std_logic;
SIGNAL \I2C|Add0~52_combout\ : std_logic;
SIGNAL \I2C|Add2~2_combout\ : std_logic;
SIGNAL \I2C|Add2~6_combout\ : std_logic;
SIGNAL \I2C|Add2~16_combout\ : std_logic;
SIGNAL \I2C|Add2~24_combout\ : std_logic;
SIGNAL \I2C|Add2~38_combout\ : std_logic;
SIGNAL \I2C|Add2~48_combout\ : std_logic;
SIGNAL \I2C|Add5~0_combout\ : std_logic;
SIGNAL \I2C|Add5~4_combout\ : std_logic;
SIGNAL \I2C|Add5~10_combout\ : std_logic;
SIGNAL \I2C|Add5~12_combout\ : std_logic;
SIGNAL \I2C|Add5~20_combout\ : std_logic;
SIGNAL \I2C|Add5~22_combout\ : std_logic;
SIGNAL \I2C|Add5~26_combout\ : std_logic;
SIGNAL \I2C|Add5~32_combout\ : std_logic;
SIGNAL \I2C|Add5~34_combout\ : std_logic;
SIGNAL \I2C|Add5~40_combout\ : std_logic;
SIGNAL \I2C|Add5~44_combout\ : std_logic;
SIGNAL \I2C|Add5~46_combout\ : std_logic;
SIGNAL \I2C|Add5~48_combout\ : std_logic;
SIGNAL \I2C|Add5~50_combout\ : std_logic;
SIGNAL \I2C|Add8~12_combout\ : std_logic;
SIGNAL \I2C|Add8~14_combout\ : std_logic;
SIGNAL \I2C|Add8~16_combout\ : std_logic;
SIGNAL \I2C|Add8~24_combout\ : std_logic;
SIGNAL \I2C|Add8~32_combout\ : std_logic;
SIGNAL \I2C|Add9~4_combout\ : std_logic;
SIGNAL \I2C|Add9~8_combout\ : std_logic;
SIGNAL \I2C|Add9~10_combout\ : std_logic;
SIGNAL \I2C|Add9~14_combout\ : std_logic;
SIGNAL \I2C|Add9~18_combout\ : std_logic;
SIGNAL \I2C|Add9~42_combout\ : std_logic;
SIGNAL \I2C|Add1~0_combout\ : std_logic;
SIGNAL \I2C|Add6~0_combout\ : std_logic;
SIGNAL \I2C|Add1~14_combout\ : std_logic;
SIGNAL \I2C|Add1~24_combout\ : std_logic;
SIGNAL \I2C|Add1~28_combout\ : std_logic;
SIGNAL \I2C|Add1~30_combout\ : std_logic;
SIGNAL \I2C|Add1~32_combout\ : std_logic;
SIGNAL \I2C|Add1~46_combout\ : std_logic;
SIGNAL \I2C|Add1~49\ : std_logic;
SIGNAL \I2C|Add1~50_combout\ : std_logic;
SIGNAL \I2C|Add1~51\ : std_logic;
SIGNAL \I2C|Add1~52_combout\ : std_logic;
SIGNAL \I2C|Add3~10_combout\ : std_logic;
SIGNAL \I2C|Add3~14_combout\ : std_logic;
SIGNAL \I2C|Add3~22_combout\ : std_logic;
SIGNAL \I2C|Add3~24_combout\ : std_logic;
SIGNAL \I2C|Add3~32_combout\ : std_logic;
SIGNAL \I2C|Add3~40_combout\ : std_logic;
SIGNAL \I2C|Add3~42_combout\ : std_logic;
SIGNAL \I2C|Add3~44_combout\ : std_logic;
SIGNAL \I2C|Add3~49\ : std_logic;
SIGNAL \I2C|Add3~50_combout\ : std_logic;
SIGNAL \I2C|Add3~51\ : std_logic;
SIGNAL \I2C|Add3~52_combout\ : std_logic;
SIGNAL \I2C|Add6~24_combout\ : std_logic;
SIGNAL \I2C|Add6~28_combout\ : std_logic;
SIGNAL \I2C|Add6~30_combout\ : std_logic;
SIGNAL \I2C|Add6~46_combout\ : std_logic;
SIGNAL \I2C|Add6~51\ : std_logic;
SIGNAL \I2C|Add6~52_combout\ : std_logic;
SIGNAL \display|Add0~2_combout\ : std_logic;
SIGNAL \display|Add0~8_combout\ : std_logic;
SIGNAL \display|Add0~12_combout\ : std_logic;
SIGNAL \display|Add0~14_combout\ : std_logic;
SIGNAL \display|Add0~18_combout\ : std_logic;
SIGNAL \display|Add0~28_combout\ : std_logic;
SIGNAL \display|Add0~34_combout\ : std_logic;
SIGNAL \display|Add0~36_combout\ : std_logic;
SIGNAL \hundreds[0]~2_cout\ : std_logic;
SIGNAL \hundreds[0]~4_cout\ : std_logic;
SIGNAL \hundreds[0]~5_combout\ : std_logic;
SIGNAL \LED_status~q\ : std_logic;
SIGNAL \I2C|Selector65~1_combout\ : std_logic;
SIGNAL \display|Equal0~1_combout\ : std_logic;
SIGNAL \display|Equal0~5_combout\ : std_logic;
SIGNAL \LED_status~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \display|Selector4~0_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~3_combout\ : std_logic;
SIGNAL \I2C|Equal7~0_combout\ : std_logic;
SIGNAL \I2C|Equal4~3_combout\ : std_logic;
SIGNAL \I2C|Equal7~1_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~9_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~12_combout\ : std_logic;
SIGNAL \I2C|Equal7~2_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~15_combout\ : std_logic;
SIGNAL \I2C|Equal7~3_combout\ : std_logic;
SIGNAL \I2C|Equal7~4_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~22_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~23_combout\ : std_logic;
SIGNAL \I2C|Equal0~0_combout\ : std_logic;
SIGNAL \I2C|Equal2~0_combout\ : std_logic;
SIGNAL \I2C|Equal5~0_combout\ : std_logic;
SIGNAL \I2C|Equal5~1_combout\ : std_logic;
SIGNAL \I2C|Equal5~2_combout\ : std_logic;
SIGNAL \I2C|Equal5~3_combout\ : std_logic;
SIGNAL \I2C|Equal5~4_combout\ : std_logic;
SIGNAL \I2C|Equal5~5_combout\ : std_logic;
SIGNAL \I2C|Equal5~6_combout\ : std_logic;
SIGNAL \I2C|Equal5~7_combout\ : std_logic;
SIGNAL \I2C|Equal5~8_combout\ : std_logic;
SIGNAL \I2C|Equal8~1_combout\ : std_logic;
SIGNAL \I2C|Equal9~2_combout\ : std_logic;
SIGNAL \I2C|Equal1~0_combout\ : std_logic;
SIGNAL \I2C|Equal1~1_combout\ : std_logic;
SIGNAL \I2C|Equal1~2_combout\ : std_logic;
SIGNAL \I2C|Equal1~3_combout\ : std_logic;
SIGNAL \I2C|Equal1~4_combout\ : std_logic;
SIGNAL \I2C|Equal1~5_combout\ : std_logic;
SIGNAL \I2C|Equal1~6_combout\ : std_logic;
SIGNAL \I2C|Equal1~7_combout\ : std_logic;
SIGNAL \I2C|Equal1~8_combout\ : std_logic;
SIGNAL \I2C|Equal3~0_combout\ : std_logic;
SIGNAL \I2C|Equal3~1_combout\ : std_logic;
SIGNAL \I2C|Equal3~2_combout\ : std_logic;
SIGNAL \I2C|Equal3~3_combout\ : std_logic;
SIGNAL \I2C|Equal3~4_combout\ : std_logic;
SIGNAL \I2C|Equal3~5_combout\ : std_logic;
SIGNAL \I2C|Equal3~6_combout\ : std_logic;
SIGNAL \I2C|Equal3~7_combout\ : std_logic;
SIGNAL \I2C|Equal3~8_combout\ : std_logic;
SIGNAL \I2C|Equal6~3_combout\ : std_logic;
SIGNAL \I2C|Equal6~6_combout\ : std_logic;
SIGNAL \display|prescaler~1_combout\ : std_logic;
SIGNAL \display|prescaler~2_combout\ : std_logic;
SIGNAL \display|prescaler~4_combout\ : std_logic;
SIGNAL \display|prescaler~5_combout\ : std_logic;
SIGNAL \timer2_reg~0_combout\ : std_logic;
SIGNAL \timer2_reg~1_combout\ : std_logic;
SIGNAL \timer2_reg~2_combout\ : std_logic;
SIGNAL \timer2_reg~3_combout\ : std_logic;
SIGNAL \timer2_reg~4_combout\ : std_logic;
SIGNAL \timer2_reg~6_combout\ : std_logic;
SIGNAL \I2C|Selector61~0_combout\ : std_logic;
SIGNAL \I2C|Selector56~0_combout\ : std_logic;
SIGNAL \I2C|Selector53~0_combout\ : std_logic;
SIGNAL \I2C|Selector50~0_combout\ : std_logic;
SIGNAL \I2C|Selector43~0_combout\ : std_logic;
SIGNAL \I2C|Selector42~0_combout\ : std_logic;
SIGNAL \I2C|timer3_reg~1_combout\ : std_logic;
SIGNAL \I2C|timer3_reg~3_combout\ : std_logic;
SIGNAL \I2C|timer1_reg~2_combout\ : std_logic;
SIGNAL \I2C|Selector4~0_combout\ : std_logic;
SIGNAL \I2C|WideOr0~1_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \tens[0]~feeder_combout\ : std_logic;
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
SIGNAL \SCL~output_o\ : std_logic;
SIGNAL \DIGIT[0]~output_o\ : std_logic;
SIGNAL \DIGIT[1]~output_o\ : std_logic;
SIGNAL \DIGIT[2]~output_o\ : std_logic;
SIGNAL \DIGIT[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \I2C|state_start.000000011~feeder_combout\ : std_logic;
SIGNAL \I2C|Add8~45\ : std_logic;
SIGNAL \I2C|Add8~47\ : std_logic;
SIGNAL \I2C|Add8~49\ : std_logic;
SIGNAL \I2C|Add8~50_combout\ : std_logic;
SIGNAL \I2C|Add9~47\ : std_logic;
SIGNAL \I2C|Add9~49\ : std_logic;
SIGNAL \I2C|Add9~50_combout\ : std_logic;
SIGNAL \I2C|Add9~48_combout\ : std_logic;
SIGNAL \I2C|Add2~34_combout\ : std_logic;
SIGNAL \I2C|Add8~48_combout\ : std_logic;
SIGNAL \I2C|Add8~46_combout\ : std_logic;
SIGNAL \I2C|Add8~40_combout\ : std_logic;
SIGNAL \I2C|Add0~46_combout\ : std_logic;
SIGNAL \I2C|Add5~36_combout\ : std_logic;
SIGNAL \I2C|Add8~35\ : std_logic;
SIGNAL \I2C|Add8~37\ : std_logic;
SIGNAL \I2C|Add8~38_combout\ : std_logic;
SIGNAL \I2C|Add9~33\ : std_logic;
SIGNAL \I2C|Add9~35\ : std_logic;
SIGNAL \I2C|Add9~37\ : std_logic;
SIGNAL \I2C|Add9~39\ : std_logic;
SIGNAL \I2C|Add9~40_combout\ : std_logic;
SIGNAL \I2C|Add9~36_combout\ : std_logic;
SIGNAL \I2C|Add9~26_combout\ : std_logic;
SIGNAL \I2C|Add0~0_combout\ : std_logic;
SIGNAL \I2C|Add2~0_combout\ : std_logic;
SIGNAL \I2C|Add5~1\ : std_logic;
SIGNAL \I2C|Add5~2_combout\ : std_logic;
SIGNAL \I2C|Add8~1\ : std_logic;
SIGNAL \I2C|Add8~2_combout\ : std_logic;
SIGNAL \I2C|Add9~1\ : std_logic;
SIGNAL \I2C|Add9~2_combout\ : std_logic;
SIGNAL \I2C|Add9~0_combout\ : std_logic;
SIGNAL \I2C|Add8~3\ : std_logic;
SIGNAL \I2C|Add8~4_combout\ : std_logic;
SIGNAL \I2C|Add9~3\ : std_logic;
SIGNAL \I2C|Add9~5\ : std_logic;
SIGNAL \I2C|Add9~6_combout\ : std_logic;
SIGNAL \I2C|Equal9~1_combout\ : std_logic;
SIGNAL \I2C|Add2~1\ : std_logic;
SIGNAL \I2C|Add2~3\ : std_logic;
SIGNAL \I2C|Add2~5\ : std_logic;
SIGNAL \I2C|Add2~7\ : std_logic;
SIGNAL \I2C|Add2~8_combout\ : std_logic;
SIGNAL \I2C|Add2~4_combout\ : std_logic;
SIGNAL \I2C|Add5~3\ : std_logic;
SIGNAL \I2C|Add5~5\ : std_logic;
SIGNAL \I2C|Add5~7\ : std_logic;
SIGNAL \I2C|Add5~8_combout\ : std_logic;
SIGNAL \I2C|Add5~6_combout\ : std_logic;
SIGNAL \I2C|Add8~5\ : std_logic;
SIGNAL \I2C|Add8~7\ : std_logic;
SIGNAL \I2C|Add8~9\ : std_logic;
SIGNAL \I2C|Add8~10_combout\ : std_logic;
SIGNAL \I2C|Add8~8_combout\ : std_logic;
SIGNAL \I2C|Add9~7\ : std_logic;
SIGNAL \I2C|Add9~9\ : std_logic;
SIGNAL \I2C|Add9~11\ : std_logic;
SIGNAL \I2C|Add9~13\ : std_logic;
SIGNAL \I2C|Add9~15\ : std_logic;
SIGNAL \I2C|Add9~16_combout\ : std_logic;
SIGNAL \I2C|Add2~9\ : std_logic;
SIGNAL \I2C|Add2~10_combout\ : std_logic;
SIGNAL \I2C|Add5~9\ : std_logic;
SIGNAL \I2C|Add5~11\ : std_logic;
SIGNAL \I2C|Add5~13\ : std_logic;
SIGNAL \I2C|Add5~15\ : std_logic;
SIGNAL \I2C|Add5~17\ : std_logic;
SIGNAL \I2C|Add5~18_combout\ : std_logic;
SIGNAL \I2C|Add5~16_combout\ : std_logic;
SIGNAL \I2C|Add5~14_combout\ : std_logic;
SIGNAL \I2C|Add8~11\ : std_logic;
SIGNAL \I2C|Add8~13\ : std_logic;
SIGNAL \I2C|Add8~15\ : std_logic;
SIGNAL \I2C|Add8~17\ : std_logic;
SIGNAL \I2C|Add8~19\ : std_logic;
SIGNAL \I2C|Add8~21\ : std_logic;
SIGNAL \I2C|Add8~22_combout\ : std_logic;
SIGNAL \I2C|Add9~17\ : std_logic;
SIGNAL \I2C|Add9~19\ : std_logic;
SIGNAL \I2C|Add9~21\ : std_logic;
SIGNAL \I2C|Add9~22_combout\ : std_logic;
SIGNAL \I2C|Add9~20_combout\ : std_logic;
SIGNAL \I2C|Equal9~3_combout\ : std_logic;
SIGNAL \I2C|Add9~23\ : std_logic;
SIGNAL \I2C|Add9~24_combout\ : std_logic;
SIGNAL \I2C|Add9~28_combout\ : std_logic;
SIGNAL \I2C|Equal9~4_combout\ : std_logic;
SIGNAL \I2C|Equal9~5_combout\ : std_logic;
SIGNAL \I2C|Add2~51\ : std_logic;
SIGNAL \I2C|Add2~52_combout\ : std_logic;
SIGNAL \I2C|Add2~46_combout\ : std_logic;
SIGNAL \I2C|Add2~43\ : std_logic;
SIGNAL \I2C|Add2~44_combout\ : std_logic;
SIGNAL \I2C|Add2~40_combout\ : std_logic;
SIGNAL \I2C|Add5~39\ : std_logic;
SIGNAL \I2C|Add5~41\ : std_logic;
SIGNAL \I2C|Add5~43\ : std_logic;
SIGNAL \I2C|Add5~45\ : std_logic;
SIGNAL \I2C|Add5~47\ : std_logic;
SIGNAL \I2C|Add5~49\ : std_logic;
SIGNAL \I2C|Add5~51\ : std_logic;
SIGNAL \I2C|Add5~52_combout\ : std_logic;
SIGNAL \I2C|Add8~51\ : std_logic;
SIGNAL \I2C|Add8~52_combout\ : std_logic;
SIGNAL \I2C|Add9~51\ : std_logic;
SIGNAL \I2C|Add9~52_combout\ : std_logic;
SIGNAL \I2C|Add9~34_combout\ : std_logic;
SIGNAL \I2C|Add9~38_combout\ : std_logic;
SIGNAL \I2C|Equal9~6_combout\ : std_logic;
SIGNAL \I2C|timer3_reg~0_combout\ : std_logic;
SIGNAL \I2C|timer3_reg~2_combout\ : std_logic;
SIGNAL \I2C|timer3_reg~4_combout\ : std_logic;
SIGNAL \I2C|Add9~12_combout\ : std_logic;
SIGNAL \I2C|timer3_reg~5_combout\ : std_logic;
SIGNAL \I2C|Add0~1\ : std_logic;
SIGNAL \I2C|Add0~3\ : std_logic;
SIGNAL \I2C|Add0~5\ : std_logic;
SIGNAL \I2C|Add0~7\ : std_logic;
SIGNAL \I2C|Add0~9\ : std_logic;
SIGNAL \I2C|Add0~11\ : std_logic;
SIGNAL \I2C|Add0~13\ : std_logic;
SIGNAL \I2C|Add0~15\ : std_logic;
SIGNAL \I2C|Add0~17\ : std_logic;
SIGNAL \I2C|Add0~19\ : std_logic;
SIGNAL \I2C|Add0~21\ : std_logic;
SIGNAL \I2C|Add0~23\ : std_logic;
SIGNAL \I2C|Add0~25\ : std_logic;
SIGNAL \I2C|Add0~27\ : std_logic;
SIGNAL \I2C|Add0~29\ : std_logic;
SIGNAL \I2C|Add0~31\ : std_logic;
SIGNAL \I2C|Add0~33\ : std_logic;
SIGNAL \I2C|Add0~35\ : std_logic;
SIGNAL \I2C|Add0~37\ : std_logic;
SIGNAL \I2C|Add0~39\ : std_logic;
SIGNAL \I2C|Add0~41\ : std_logic;
SIGNAL \I2C|Add0~43\ : std_logic;
SIGNAL \I2C|Add0~44_combout\ : std_logic;
SIGNAL \I2C|Add2~45\ : std_logic;
SIGNAL \I2C|Add2~47\ : std_logic;
SIGNAL \I2C|Add2~49\ : std_logic;
SIGNAL \I2C|Add2~50_combout\ : std_logic;
SIGNAL \I2C|Add2~36_combout\ : std_logic;
SIGNAL \I2C|Add0~12_combout\ : std_logic;
SIGNAL \I2C|Add2~11\ : std_logic;
SIGNAL \I2C|Add2~12_combout\ : std_logic;
SIGNAL \I2C|Add2~13\ : std_logic;
SIGNAL \I2C|Add2~14_combout\ : std_logic;
SIGNAL \I2C|Equal2~1_combout\ : std_logic;
SIGNAL \I2C|Add2~26_combout\ : std_logic;
SIGNAL \I2C|Add2~29\ : std_logic;
SIGNAL \I2C|Add2~30_combout\ : std_logic;
SIGNAL \I2C|Equal2~3_combout\ : std_logic;
SIGNAL \I2C|Add2~15\ : std_logic;
SIGNAL \I2C|Add2~17\ : std_logic;
SIGNAL \I2C|Add2~18_combout\ : std_logic;
SIGNAL \I2C|Add2~19\ : std_logic;
SIGNAL \I2C|Add2~20_combout\ : std_logic;
SIGNAL \I2C|Add0~22_combout\ : std_logic;
SIGNAL \I2C|Add2~21\ : std_logic;
SIGNAL \I2C|Add2~22_combout\ : std_logic;
SIGNAL \I2C|Equal2~2_combout\ : std_logic;
SIGNAL \I2C|Equal2~4_combout\ : std_logic;
SIGNAL \I2C|Equal2~5_combout\ : std_logic;
SIGNAL \I2C|Equal2~6_combout\ : std_logic;
SIGNAL \I2C|Equal2~7_combout\ : std_logic;
SIGNAL \I2C|Equal2~8_combout\ : std_logic;
SIGNAL \I2C|Add5~19\ : std_logic;
SIGNAL \I2C|Add5~21\ : std_logic;
SIGNAL \I2C|Add5~23\ : std_logic;
SIGNAL \I2C|Add5~25\ : std_logic;
SIGNAL \I2C|Add5~27\ : std_logic;
SIGNAL \I2C|Add5~28_combout\ : std_logic;
SIGNAL \I2C|Add5~24_combout\ : std_logic;
SIGNAL \I2C|Add8~23\ : std_logic;
SIGNAL \I2C|Add8~25\ : std_logic;
SIGNAL \I2C|Add8~27\ : std_logic;
SIGNAL \I2C|Add8~29\ : std_logic;
SIGNAL \I2C|Add8~31\ : std_logic;
SIGNAL \I2C|Add8~33\ : std_logic;
SIGNAL \I2C|Add8~34_combout\ : std_logic;
SIGNAL \I2C|Add8~36_combout\ : std_logic;
SIGNAL \I2C|Equal8~5_combout\ : std_logic;
SIGNAL \I2C|Add8~0_combout\ : std_logic;
SIGNAL \I2C|Add8~6_combout\ : std_logic;
SIGNAL \I2C|Equal8~0_combout\ : std_logic;
SIGNAL \I2C|Add8~18_combout\ : std_logic;
SIGNAL \I2C|Add8~20_combout\ : std_logic;
SIGNAL \I2C|Equal8~2_combout\ : std_logic;
SIGNAL \I2C|Add8~26_combout\ : std_logic;
SIGNAL \I2C|Add8~28_combout\ : std_logic;
SIGNAL \I2C|Equal8~3_combout\ : std_logic;
SIGNAL \I2C|Equal8~4_combout\ : std_logic;
SIGNAL \I2C|Equal8~6_combout\ : std_logic;
SIGNAL \I2C|Equal8~7_combout\ : std_logic;
SIGNAL \I2C|Equal8~8_combout\ : std_logic;
SIGNAL \I2C|Add9~25\ : std_logic;
SIGNAL \I2C|Add9~27\ : std_logic;
SIGNAL \I2C|Add9~29\ : std_logic;
SIGNAL \I2C|Add9~30_combout\ : std_logic;
SIGNAL \I2C|Add0~30_combout\ : std_logic;
SIGNAL \I2C|Add2~31\ : std_logic;
SIGNAL \I2C|Add2~32_combout\ : std_logic;
SIGNAL \I2C|Add5~31\ : std_logic;
SIGNAL \I2C|Add5~33\ : std_logic;
SIGNAL \I2C|Add5~35\ : std_logic;
SIGNAL \I2C|Add5~37\ : std_logic;
SIGNAL \I2C|Add5~38_combout\ : std_logic;
SIGNAL \I2C|Add8~39\ : std_logic;
SIGNAL \I2C|Add8~41\ : std_logic;
SIGNAL \I2C|Add8~42_combout\ : std_logic;
SIGNAL \I2C|Add9~41\ : std_logic;
SIGNAL \I2C|Add9~43\ : std_logic;
SIGNAL \I2C|Add9~44_combout\ : std_logic;
SIGNAL \I2C|Add0~45\ : std_logic;
SIGNAL \I2C|Add0~47\ : std_logic;
SIGNAL \I2C|Add0~49\ : std_logic;
SIGNAL \I2C|Add0~50_combout\ : std_logic;
SIGNAL \I2C|Add0~48_combout\ : std_logic;
SIGNAL \I2C|Add0~42_combout\ : std_logic;
SIGNAL \I2C|Add0~38_combout\ : std_logic;
SIGNAL \I2C|Add0~36_combout\ : std_logic;
SIGNAL \I2C|Add0~20_combout\ : std_logic;
SIGNAL \I2C|Add0~18_combout\ : std_logic;
SIGNAL \I2C|Equal0~2_combout\ : std_logic;
SIGNAL \I2C|Add0~10_combout\ : std_logic;
SIGNAL \I2C|Add0~8_combout\ : std_logic;
SIGNAL \I2C|Add0~14_combout\ : std_logic;
SIGNAL \I2C|Equal0~1_combout\ : std_logic;
SIGNAL \I2C|Add0~24_combout\ : std_logic;
SIGNAL \I2C|Add0~28_combout\ : std_logic;
SIGNAL \I2C|Equal0~3_combout\ : std_logic;
SIGNAL \I2C|Equal0~4_combout\ : std_logic;
SIGNAL \I2C|Equal0~5_combout\ : std_logic;
SIGNAL \I2C|Equal0~6_combout\ : std_logic;
SIGNAL \I2C|Equal0~7_combout\ : std_logic;
SIGNAL \I2C|Equal0~8_combout\ : std_logic;
SIGNAL \I2C|Add2~23\ : std_logic;
SIGNAL \I2C|Add2~25\ : std_logic;
SIGNAL \I2C|Add2~27\ : std_logic;
SIGNAL \I2C|Add2~28_combout\ : std_logic;
SIGNAL \I2C|Add5~29\ : std_logic;
SIGNAL \I2C|Add5~30_combout\ : std_logic;
SIGNAL \I2C|Add8~30_combout\ : std_logic;
SIGNAL \I2C|Add9~31\ : std_logic;
SIGNAL \I2C|Add9~32_combout\ : std_logic;
SIGNAL \I2C|Add0~32_combout\ : std_logic;
SIGNAL \I2C|Add2~33\ : std_logic;
SIGNAL \I2C|Add2~35\ : std_logic;
SIGNAL \I2C|Add2~37\ : std_logic;
SIGNAL \I2C|Add2~39\ : std_logic;
SIGNAL \I2C|Add2~41\ : std_logic;
SIGNAL \I2C|Add2~42_combout\ : std_logic;
SIGNAL \I2C|Add5~42_combout\ : std_logic;
SIGNAL \I2C|Add8~43\ : std_logic;
SIGNAL \I2C|Add8~44_combout\ : std_logic;
SIGNAL \I2C|Add9~45\ : std_logic;
SIGNAL \I2C|Add9~46_combout\ : std_logic;
SIGNAL \I2C|Equal9~0_combout\ : std_logic;
SIGNAL \I2C|Equal9~7_combout\ : std_logic;
SIGNAL \I2C|Equal9~8_combout\ : std_logic;
SIGNAL \I2C|timer3_flag.01~q\ : std_logic;
SIGNAL \I2C|state_start.000000011~q\ : std_logic;
SIGNAL \I2C|state_start.000000000~0_combout\ : std_logic;
SIGNAL \I2C|state_start.000000000~q\ : std_logic;
SIGNAL \I2C|state_start.000000001~0_combout\ : std_logic;
SIGNAL \I2C|state_start.000000001~q\ : std_logic;
SIGNAL \I2C|state_start.000000010~feeder_combout\ : std_logic;
SIGNAL \I2C|state_start.000000010~q\ : std_logic;
SIGNAL \I2C|Selector68~0_combout\ : std_logic;
SIGNAL \I2C|SDA~reg0_q\ : std_logic;
SIGNAL \timer2_reg~5_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \timer2_reg~7_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \timer2_reg~8_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \timer2_reg~9_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \timer2_reg~10_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \timer2_reg~11_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \timer2_flag.01~feeder_combout\ : std_logic;
SIGNAL \timer2_flag.01~q\ : std_logic;
SIGNAL \LED_pos.00001~0_combout\ : std_logic;
SIGNAL \LED_pos.00001~q\ : std_logic;
SIGNAL \LED_pos.00010~feeder_combout\ : std_logic;
SIGNAL \LED_pos.00010~q\ : std_logic;
SIGNAL \LED_pos.00011~feeder_combout\ : std_logic;
SIGNAL \LED_pos.00011~q\ : std_logic;
SIGNAL \LED_pos.00100~feeder_combout\ : std_logic;
SIGNAL \LED_pos.00100~q\ : std_logic;
SIGNAL \LED_pos.00000~0_combout\ : std_logic;
SIGNAL \LED_pos.00000~q\ : std_logic;
SIGNAL \LED1~1_combout\ : std_logic;
SIGNAL \LED1~reg0_q\ : std_logic;
SIGNAL \LED2~1_combout\ : std_logic;
SIGNAL \LED2~reg0_q\ : std_logic;
SIGNAL \LED3~1_combout\ : std_logic;
SIGNAL \LED3~reg0_q\ : std_logic;
SIGNAL \LED4~1_combout\ : std_logic;
SIGNAL \LED4~reg0_q\ : std_logic;
SIGNAL \I2C|state.000000111~feeder_combout\ : std_logic;
SIGNAL \I2C|Add1~1\ : std_logic;
SIGNAL \I2C|Add1~3\ : std_logic;
SIGNAL \I2C|Add1~5\ : std_logic;
SIGNAL \I2C|Add1~7\ : std_logic;
SIGNAL \I2C|Add1~8_combout\ : std_logic;
SIGNAL \I2C|Add1~6_combout\ : std_logic;
SIGNAL \I2C|Add1~4_combout\ : std_logic;
SIGNAL \I2C|Add1~2_combout\ : std_logic;
SIGNAL \I2C|Add3~1\ : std_logic;
SIGNAL \I2C|Add3~3\ : std_logic;
SIGNAL \I2C|Add3~5\ : std_logic;
SIGNAL \I2C|Add3~7\ : std_logic;
SIGNAL \I2C|Add3~8_combout\ : std_logic;
SIGNAL \I2C|Add3~6_combout\ : std_logic;
SIGNAL \I2C|Add3~4_combout\ : std_logic;
SIGNAL \I2C|Add3~2_combout\ : std_logic;
SIGNAL \I2C|Add3~0_combout\ : std_logic;
SIGNAL \I2C|Add6~1\ : std_logic;
SIGNAL \I2C|Add6~3\ : std_logic;
SIGNAL \I2C|Add6~5\ : std_logic;
SIGNAL \I2C|Add6~7\ : std_logic;
SIGNAL \I2C|Add6~8_combout\ : std_logic;
SIGNAL \I2C|timer1_reg~0_combout\ : std_logic;
SIGNAL \I2C|Add1~9\ : std_logic;
SIGNAL \I2C|Add1~11\ : std_logic;
SIGNAL \I2C|Add1~12_combout\ : std_logic;
SIGNAL \I2C|Add1~10_combout\ : std_logic;
SIGNAL \I2C|Add3~9\ : std_logic;
SIGNAL \I2C|Add3~11\ : std_logic;
SIGNAL \I2C|Add3~12_combout\ : std_logic;
SIGNAL \I2C|Add6~9\ : std_logic;
SIGNAL \I2C|Add6~11\ : std_logic;
SIGNAL \I2C|Add6~12_combout\ : std_logic;
SIGNAL \I2C|Add1~13\ : std_logic;
SIGNAL \I2C|Add1~15\ : std_logic;
SIGNAL \I2C|Add1~16_combout\ : std_logic;
SIGNAL \I2C|Add3~13\ : std_logic;
SIGNAL \I2C|Add3~15\ : std_logic;
SIGNAL \I2C|Add3~16_combout\ : std_logic;
SIGNAL \I2C|Add6~13\ : std_logic;
SIGNAL \I2C|Add6~15\ : std_logic;
SIGNAL \I2C|Add6~16_combout\ : std_logic;
SIGNAL \I2C|timer1_reg~1_combout\ : std_logic;
SIGNAL \I2C|Add1~17\ : std_logic;
SIGNAL \I2C|Add1~19\ : std_logic;
SIGNAL \I2C|Add1~20_combout\ : std_logic;
SIGNAL \I2C|Add1~18_combout\ : std_logic;
SIGNAL \I2C|Add3~17\ : std_logic;
SIGNAL \I2C|Add3~19\ : std_logic;
SIGNAL \I2C|Add3~20_combout\ : std_logic;
SIGNAL \I2C|Add3~18_combout\ : std_logic;
SIGNAL \I2C|Add6~17\ : std_logic;
SIGNAL \I2C|Add6~19\ : std_logic;
SIGNAL \I2C|Add6~20_combout\ : std_logic;
SIGNAL \I2C|timer1_reg~3_combout\ : std_logic;
SIGNAL \I2C|Add1~21\ : std_logic;
SIGNAL \I2C|Add1~23\ : std_logic;
SIGNAL \I2C|Add1~25\ : std_logic;
SIGNAL \I2C|Add1~26_combout\ : std_logic;
SIGNAL \I2C|Add1~22_combout\ : std_logic;
SIGNAL \I2C|Add3~21\ : std_logic;
SIGNAL \I2C|Add3~23\ : std_logic;
SIGNAL \I2C|Add3~25\ : std_logic;
SIGNAL \I2C|Add3~26_combout\ : std_logic;
SIGNAL \I2C|Add6~21\ : std_logic;
SIGNAL \I2C|Add6~23\ : std_logic;
SIGNAL \I2C|Add6~25\ : std_logic;
SIGNAL \I2C|Add6~26_combout\ : std_logic;
SIGNAL \I2C|timer1_reg~4_combout\ : std_logic;
SIGNAL \I2C|Add1~27\ : std_logic;
SIGNAL \I2C|Add1~29\ : std_logic;
SIGNAL \I2C|Add1~31\ : std_logic;
SIGNAL \I2C|Add1~33\ : std_logic;
SIGNAL \I2C|Add1~34_combout\ : std_logic;
SIGNAL \I2C|Add3~27\ : std_logic;
SIGNAL \I2C|Add3~29\ : std_logic;
SIGNAL \I2C|Add3~31\ : std_logic;
SIGNAL \I2C|Add3~33\ : std_logic;
SIGNAL \I2C|Add3~34_combout\ : std_logic;
SIGNAL \I2C|Add3~30_combout\ : std_logic;
SIGNAL \I2C|Add3~28_combout\ : std_logic;
SIGNAL \I2C|Add6~27\ : std_logic;
SIGNAL \I2C|Add6~29\ : std_logic;
SIGNAL \I2C|Add6~31\ : std_logic;
SIGNAL \I2C|Add6~33\ : std_logic;
SIGNAL \I2C|Add6~34_combout\ : std_logic;
SIGNAL \I2C|Add1~35\ : std_logic;
SIGNAL \I2C|Add1~36_combout\ : std_logic;
SIGNAL \I2C|Add3~35\ : std_logic;
SIGNAL \I2C|Add3~36_combout\ : std_logic;
SIGNAL \I2C|Add6~35\ : std_logic;
SIGNAL \I2C|Add6~36_combout\ : std_logic;
SIGNAL \I2C|Add1~37\ : std_logic;
SIGNAL \I2C|Add1~38_combout\ : std_logic;
SIGNAL \I2C|Add3~37\ : std_logic;
SIGNAL \I2C|Add3~38_combout\ : std_logic;
SIGNAL \I2C|Add6~37\ : std_logic;
SIGNAL \I2C|Add6~38_combout\ : std_logic;
SIGNAL \I2C|Add6~32_combout\ : std_logic;
SIGNAL \I2C|Equal6~5_combout\ : std_logic;
SIGNAL \I2C|Add6~39\ : std_logic;
SIGNAL \I2C|Add6~41\ : std_logic;
SIGNAL \I2C|Add6~43\ : std_logic;
SIGNAL \I2C|Add6~44_combout\ : std_logic;
SIGNAL \I2C|Add6~42_combout\ : std_logic;
SIGNAL \I2C|Add6~40_combout\ : std_logic;
SIGNAL \I2C|Add1~39\ : std_logic;
SIGNAL \I2C|Add1~41\ : std_logic;
SIGNAL \I2C|Add1~43\ : std_logic;
SIGNAL \I2C|Add1~45\ : std_logic;
SIGNAL \I2C|Add1~47\ : std_logic;
SIGNAL \I2C|Add1~48_combout\ : std_logic;
SIGNAL \I2C|Add1~44_combout\ : std_logic;
SIGNAL \I2C|Add1~42_combout\ : std_logic;
SIGNAL \I2C|Add1~40_combout\ : std_logic;
SIGNAL \I2C|Add3~39\ : std_logic;
SIGNAL \I2C|Add3~41\ : std_logic;
SIGNAL \I2C|Add3~43\ : std_logic;
SIGNAL \I2C|Add3~45\ : std_logic;
SIGNAL \I2C|Add3~47\ : std_logic;
SIGNAL \I2C|Add3~48_combout\ : std_logic;
SIGNAL \I2C|Add3~46_combout\ : std_logic;
SIGNAL \I2C|Add6~45\ : std_logic;
SIGNAL \I2C|Add6~47\ : std_logic;
SIGNAL \I2C|Add6~49\ : std_logic;
SIGNAL \I2C|Add6~50_combout\ : std_logic;
SIGNAL \I2C|Add6~48_combout\ : std_logic;
SIGNAL \I2C|Equal6~7_combout\ : std_logic;
SIGNAL \I2C|Add6~4_combout\ : std_logic;
SIGNAL \I2C|Add6~2_combout\ : std_logic;
SIGNAL \I2C|Add6~6_combout\ : std_logic;
SIGNAL \I2C|Equal6~0_combout\ : std_logic;
SIGNAL \I2C|Add6~10_combout\ : std_logic;
SIGNAL \I2C|Add6~14_combout\ : std_logic;
SIGNAL \I2C|Equal6~1_combout\ : std_logic;
SIGNAL \I2C|Add6~18_combout\ : std_logic;
SIGNAL \I2C|Add6~22_combout\ : std_logic;
SIGNAL \I2C|Equal6~2_combout\ : std_logic;
SIGNAL \I2C|Equal6~4_combout\ : std_logic;
SIGNAL \I2C|Equal6~8_combout\ : std_logic;
SIGNAL \I2C|timer1_flag.01~q\ : std_logic;
SIGNAL \I2C|state.000000111~q\ : std_logic;
SIGNAL \I2C|state.000001000~feeder_combout\ : std_logic;
SIGNAL \I2C|state.000001000~q\ : std_logic;
SIGNAL \I2C|state.000001001~feeder_combout\ : std_logic;
SIGNAL \I2C|state.000001001~q\ : std_logic;
SIGNAL \I2C|state.000001010~feeder_combout\ : std_logic;
SIGNAL \I2C|state.000001010~q\ : std_logic;
SIGNAL \I2C|state.000001011~feeder_combout\ : std_logic;
SIGNAL \I2C|state.000001011~q\ : std_logic;
SIGNAL \I2C|state.000001100~feeder_combout\ : std_logic;
SIGNAL \I2C|state.000001100~q\ : std_logic;
SIGNAL \I2C|state.000001101~q\ : std_logic;
SIGNAL \I2C|state.000001110~q\ : std_logic;
SIGNAL \I2C|state.000001111~feeder_combout\ : std_logic;
SIGNAL \I2C|state.000001111~q\ : std_logic;
SIGNAL \I2C|state.000000000~0_combout\ : std_logic;
SIGNAL \I2C|state.000000000~q\ : std_logic;
SIGNAL \I2C|state.000000001~0_combout\ : std_logic;
SIGNAL \I2C|state.000000001~q\ : std_logic;
SIGNAL \I2C|state.000000010~q\ : std_logic;
SIGNAL \I2C|state.000000011~feeder_combout\ : std_logic;
SIGNAL \I2C|state.000000011~q\ : std_logic;
SIGNAL \I2C|state.000000100~q\ : std_logic;
SIGNAL \I2C|state.000000101~q\ : std_logic;
SIGNAL \I2C|state.000000110~q\ : std_logic;
SIGNAL \I2C|WideOr0~0_combout\ : std_logic;
SIGNAL \I2C|buffer~0_combout\ : std_logic;
SIGNAL \hundreds[2]~feeder_combout\ : std_logic;
SIGNAL \display|digit_posn[0]~1_combout\ : std_logic;
SIGNAL \display|Add0~0_combout\ : std_logic;
SIGNAL \display|Equal0~3_combout\ : std_logic;
SIGNAL \display|Add0~22_combout\ : std_logic;
SIGNAL \display|Equal0~2_combout\ : std_logic;
SIGNAL \display|Add0~4_combout\ : std_logic;
SIGNAL \display|Equal0~0_combout\ : std_logic;
SIGNAL \display|Equal0~4_combout\ : std_logic;
SIGNAL \display|prescaler~0_combout\ : std_logic;
SIGNAL \display|Add0~1\ : std_logic;
SIGNAL \display|Add0~3\ : std_logic;
SIGNAL \display|Add0~5\ : std_logic;
SIGNAL \display|Add0~6_combout\ : std_logic;
SIGNAL \display|Add0~7\ : std_logic;
SIGNAL \display|Add0~9\ : std_logic;
SIGNAL \display|Add0~10_combout\ : std_logic;
SIGNAL \display|Add0~11\ : std_logic;
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
SIGNAL \display|Add0~29\ : std_logic;
SIGNAL \display|Add0~30_combout\ : std_logic;
SIGNAL \display|prescaler~6_combout\ : std_logic;
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
SIGNAL \Mod1|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[37]~1_combout\ : std_logic;
SIGNAL \display|Selector2~0_combout\ : std_logic;
SIGNAL \hundreds[1]~feeder_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~0_combout\ : std_logic;
SIGNAL \display|Selector3~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \display|Selector1~0_combout\ : std_logic;
SIGNAL \display|decoder|WideOr6~0_combout\ : std_logic;
SIGNAL \display|decoder|WideOr5~0_combout\ : std_logic;
SIGNAL \display|decoder|WideOr4~0_combout\ : std_logic;
SIGNAL \display|decoder|WideOr3~0_combout\ : std_logic;
SIGNAL \display|decoder|WideOr2~0_combout\ : std_logic;
SIGNAL \display|decoder|WideOr1~0_combout\ : std_logic;
SIGNAL \display|decoder|WideOr0~0_combout\ : std_logic;
SIGNAL \display|decoder|Mux0~0_combout\ : std_logic;
SIGNAL \I2C|state_ack.000000001~0_combout\ : std_logic;
SIGNAL \I2C|state_ack.000000001~q\ : std_logic;
SIGNAL \I2C|state_ack.000000010~feeder_combout\ : std_logic;
SIGNAL \I2C|state_ack.000000010~q\ : std_logic;
SIGNAL \I2C|state_ack.000000000~0_combout\ : std_logic;
SIGNAL \I2C|state_ack.000000000~q\ : std_logic;
SIGNAL \I2C|SCL~7_combout\ : std_logic;
SIGNAL \I2C|SCL~8_combout\ : std_logic;
SIGNAL \I2C|WideOr1~1_combout\ : std_logic;
SIGNAL \I2C|WideOr1~0_combout\ : std_logic;
SIGNAL \I2C|SCL~9_combout\ : std_logic;
SIGNAL \I2C|state_clock.000000001~0_combout\ : std_logic;
SIGNAL \I2C|state_clock.000000001~q\ : std_logic;
SIGNAL \I2C|SCL~10_combout\ : std_logic;
SIGNAL \I2C|Selector65~0_combout\ : std_logic;
SIGNAL \I2C|WideOr1~combout\ : std_logic;
SIGNAL \I2C|Selector44~0_combout\ : std_logic;
SIGNAL \I2C|Selector59~0_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~2_combout\ : std_logic;
SIGNAL \I2C|Selector62~0_combout\ : std_logic;
SIGNAL \I2C|Add4~1\ : std_logic;
SIGNAL \I2C|Add4~2_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~1_combout\ : std_logic;
SIGNAL \I2C|Add4~0_combout\ : std_logic;
SIGNAL \I2C|Add7~0_combout\ : std_logic;
SIGNAL \I2C|Selector64~0_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~0_combout\ : std_logic;
SIGNAL \I2C|Add7~1\ : std_logic;
SIGNAL \I2C|Add7~2_combout\ : std_logic;
SIGNAL \I2C|Selector63~0_combout\ : std_logic;
SIGNAL \I2C|Add4~3\ : std_logic;
SIGNAL \I2C|Add4~5\ : std_logic;
SIGNAL \I2C|Add4~7\ : std_logic;
SIGNAL \I2C|Add4~9\ : std_logic;
SIGNAL \I2C|Add4~10_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~6_combout\ : std_logic;
SIGNAL \I2C|Add4~8_combout\ : std_logic;
SIGNAL \I2C|Selector60~0_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~5_combout\ : std_logic;
SIGNAL \I2C|Add7~3\ : std_logic;
SIGNAL \I2C|Add7~5\ : std_logic;
SIGNAL \I2C|Add7~7\ : std_logic;
SIGNAL \I2C|Add7~9\ : std_logic;
SIGNAL \I2C|Add7~11\ : std_logic;
SIGNAL \I2C|Add7~12_combout\ : std_logic;
SIGNAL \I2C|Selector58~0_combout\ : std_logic;
SIGNAL \I2C|Add4~11\ : std_logic;
SIGNAL \I2C|Add4~12_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~7_combout\ : std_logic;
SIGNAL \I2C|Add7~13\ : std_logic;
SIGNAL \I2C|Add7~15\ : std_logic;
SIGNAL \I2C|Add7~17\ : std_logic;
SIGNAL \I2C|Add7~18_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~24_combout\ : std_logic;
SIGNAL \I2C|Add7~43\ : std_logic;
SIGNAL \I2C|Add7~45\ : std_logic;
SIGNAL \I2C|Add7~46_combout\ : std_logic;
SIGNAL \I2C|Selector41~0_combout\ : std_logic;
SIGNAL \I2C|Add4~41\ : std_logic;
SIGNAL \I2C|Add4~43\ : std_logic;
SIGNAL \I2C|Add4~45\ : std_logic;
SIGNAL \I2C|Add4~46_combout\ : std_logic;
SIGNAL \I2C|Add4~44_combout\ : std_logic;
SIGNAL \I2C|Equal4~6_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~25_combout\ : std_logic;
SIGNAL \I2C|Add7~47\ : std_logic;
SIGNAL \I2C|Add7~48_combout\ : std_logic;
SIGNAL \I2C|Selector40~0_combout\ : std_logic;
SIGNAL \I2C|Add4~47\ : std_logic;
SIGNAL \I2C|Add4~48_combout\ : std_logic;
SIGNAL \I2C|Add7~49\ : std_logic;
SIGNAL \I2C|Add7~50_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~26_combout\ : std_logic;
SIGNAL \I2C|Selector39~0_combout\ : std_logic;
SIGNAL \I2C|Add4~49\ : std_logic;
SIGNAL \I2C|Add4~50_combout\ : std_logic;
SIGNAL \I2C|Equal4~7_combout\ : std_logic;
SIGNAL \I2C|Add4~31\ : std_logic;
SIGNAL \I2C|Add4~32_combout\ : std_logic;
SIGNAL \I2C|Equal4~5_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~8_combout\ : std_logic;
SIGNAL \I2C|Selector57~0_combout\ : std_logic;
SIGNAL \I2C|Add4~13\ : std_logic;
SIGNAL \I2C|Add4~15\ : std_logic;
SIGNAL \I2C|Add4~16_combout\ : std_logic;
SIGNAL \I2C|Add4~22_combout\ : std_logic;
SIGNAL \I2C|Equal4~2_combout\ : std_logic;
SIGNAL \I2C|Equal4~1_combout\ : std_logic;
SIGNAL \I2C|Add4~6_combout\ : std_logic;
SIGNAL \I2C|Equal4~0_combout\ : std_logic;
SIGNAL \I2C|Equal4~4_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~4_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~10_combout\ : std_logic;
SIGNAL \I2C|Selector55~0_combout\ : std_logic;
SIGNAL \I2C|Add4~17\ : std_logic;
SIGNAL \I2C|Add4~19\ : std_logic;
SIGNAL \I2C|Add4~20_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~11_combout\ : std_logic;
SIGNAL \I2C|Selector54~0_combout\ : std_logic;
SIGNAL \I2C|Add4~21\ : std_logic;
SIGNAL \I2C|Add4~23\ : std_logic;
SIGNAL \I2C|Add4~24_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~14_combout\ : std_logic;
SIGNAL \I2C|Selector52~0_combout\ : std_logic;
SIGNAL \I2C|Add4~25\ : std_logic;
SIGNAL \I2C|Add4~27\ : std_logic;
SIGNAL \I2C|Add4~29\ : std_logic;
SIGNAL \I2C|Add4~30_combout\ : std_logic;
SIGNAL \I2C|Add7~19\ : std_logic;
SIGNAL \I2C|Add7~21\ : std_logic;
SIGNAL \I2C|Add7~23\ : std_logic;
SIGNAL \I2C|Add7~25\ : std_logic;
SIGNAL \I2C|Add7~26_combout\ : std_logic;
SIGNAL \I2C|Selector51~0_combout\ : std_logic;
SIGNAL \I2C|Add4~26_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~13_combout\ : std_logic;
SIGNAL \I2C|Add7~27\ : std_logic;
SIGNAL \I2C|Add7~29\ : std_logic;
SIGNAL \I2C|Add7~30_combout\ : std_logic;
SIGNAL \I2C|Selector49~0_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~16_combout\ : std_logic;
SIGNAL \I2C|Add7~31\ : std_logic;
SIGNAL \I2C|Add7~32_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~17_combout\ : std_logic;
SIGNAL \I2C|Selector48~0_combout\ : std_logic;
SIGNAL \I2C|Add4~33\ : std_logic;
SIGNAL \I2C|Add4~34_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~18_combout\ : std_logic;
SIGNAL \I2C|Selector47~0_combout\ : std_logic;
SIGNAL \I2C|Add4~35\ : std_logic;
SIGNAL \I2C|Add4~36_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~19_combout\ : std_logic;
SIGNAL \I2C|Selector46~0_combout\ : std_logic;
SIGNAL \I2C|Add4~37\ : std_logic;
SIGNAL \I2C|Add4~38_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~20_combout\ : std_logic;
SIGNAL \I2C|Add7~33\ : std_logic;
SIGNAL \I2C|Add7~35\ : std_logic;
SIGNAL \I2C|Add7~37\ : std_logic;
SIGNAL \I2C|Add7~38_combout\ : std_logic;
SIGNAL \I2C|Selector45~0_combout\ : std_logic;
SIGNAL \I2C|Add4~39\ : std_logic;
SIGNAL \I2C|Add4~40_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~21_combout\ : std_logic;
SIGNAL \I2C|Add7~39\ : std_logic;
SIGNAL \I2C|Add7~41\ : std_logic;
SIGNAL \I2C|Add7~42_combout\ : std_logic;
SIGNAL \I2C|Add7~40_combout\ : std_logic;
SIGNAL \I2C|Add7~44_combout\ : std_logic;
SIGNAL \I2C|Equal7~6_combout\ : std_logic;
SIGNAL \I2C|Add7~34_combout\ : std_logic;
SIGNAL \I2C|Equal7~5_combout\ : std_logic;
SIGNAL \I2C|Selector38~0_combout\ : std_logic;
SIGNAL \I2C|timer2_reg~27_combout\ : std_logic;
SIGNAL \I2C|Add7~51\ : std_logic;
SIGNAL \I2C|Add7~52_combout\ : std_logic;
SIGNAL \I2C|Equal7~7_combout\ : std_logic;
SIGNAL \I2C|Equal7~8_combout\ : std_logic;
SIGNAL \I2C|timer2_flag.01~0_combout\ : std_logic;
SIGNAL \I2C|timer2_flag.01~q\ : std_logic;
SIGNAL \I2C|Selector65~2_combout\ : std_logic;
SIGNAL \I2C|SCL~6_combout\ : std_logic;
SIGNAL \I2C|SCL~11_combout\ : std_logic;
SIGNAL \I2C|SCL~12_combout\ : std_logic;
SIGNAL \I2C|SCL~13_combout\ : std_logic;
SIGNAL \I2C|SCL~q\ : std_logic;
SIGNAL \display|digit_posn[1]~0_combout\ : std_logic;
SIGNAL \display|Decoder0~0_combout\ : std_logic;
SIGNAL \display|decoder|Equal0~0_combout\ : std_logic;
SIGNAL \display|Decoder0~1_combout\ : std_logic;
SIGNAL \display|Decoder0~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \I2C|timer3_reg\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \I2C|timer2_reg\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \I2C|timer1_reg\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \I2C|data\ : std_logic_vector(10 DOWNTO 0);
SIGNAL timer2_reg : std_logic_vector(26 DOWNTO 0);
SIGNAL \display|digit_posn\ : std_logic_vector(4 DOWNTO 0);
SIGNAL hundreds : std_logic_vector(8 DOWNTO 0);
SIGNAL \display|digit_data\ : std_logic_vector(4 DOWNTO 0);
SIGNAL tens : std_logic_vector(8 DOWNTO 0);
SIGNAL \display|prescaler\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \display|DIGIT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display|decoder|SEG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \I2C|ALT_INV_timer1_flag.01~q\ : std_logic;
SIGNAL \I2C|ALT_INV_timer3_flag.01~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
LED4 <= ww_LED4;
SEG <= ww_SEG;
SCL <= ww_SCL;
DIGIT <= ww_DIGIT;
ww_rst_n <= rst_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\I2C|ALT_INV_timer1_flag.01~q\ <= NOT \I2C|timer1_flag.01~q\;
\I2C|ALT_INV_timer3_flag.01~q\ <= NOT \I2C|timer3_flag.01~q\;

-- Location: LCCOMB_X16_Y13_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (timer2_reg(6) & (\Add0~11\ $ (GND))) # (!timer2_reg(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((timer2_reg(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X16_Y13_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (timer2_reg(7) & (!\Add0~13\)) # (!timer2_reg(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!timer2_reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X16_Y12_N2
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (timer2_reg(14) & (\Add0~27\ $ (GND))) # (!timer2_reg(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((timer2_reg(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X16_Y12_N14
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

-- Location: FF_X19_Y21_N25
\hundreds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \hundreds[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hundreds(0));

-- Location: LCCOMB_X23_Y16_N10
\I2C|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~4_combout\ = (\I2C|timer2_reg\(2) & (\I2C|Add4~3\ $ (GND))) # (!\I2C|timer2_reg\(2) & (!\I2C|Add4~3\ & VCC))
-- \I2C|Add4~5\ = CARRY((\I2C|timer2_reg\(2) & !\I2C|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(2),
	datad => VCC,
	cin => \I2C|Add4~3\,
	combout => \I2C|Add4~4_combout\,
	cout => \I2C|Add4~5\);

-- Location: LCCOMB_X21_Y16_N10
\I2C|Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~4_combout\ = (\I2C|timer2_reg~2_combout\ & (\I2C|Add7~3\ $ (GND))) # (!\I2C|timer2_reg~2_combout\ & (!\I2C|Add7~3\ & VCC))
-- \I2C|Add7~5\ = CARRY((\I2C|timer2_reg~2_combout\ & !\I2C|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~2_combout\,
	datad => VCC,
	cin => \I2C|Add7~3\,
	combout => \I2C|Add7~4_combout\,
	cout => \I2C|Add7~5\);

-- Location: LCCOMB_X21_Y16_N12
\I2C|Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~6_combout\ = (\I2C|timer2_reg~3_combout\ & (!\I2C|Add7~5\)) # (!\I2C|timer2_reg~3_combout\ & ((\I2C|Add7~5\) # (GND)))
-- \I2C|Add7~7\ = CARRY((!\I2C|Add7~5\) # (!\I2C|timer2_reg~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~3_combout\,
	datad => VCC,
	cin => \I2C|Add7~5\,
	combout => \I2C|Add7~6_combout\,
	cout => \I2C|Add7~7\);

-- Location: LCCOMB_X23_Y16_N20
\I2C|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~14_combout\ = (\I2C|timer2_reg\(7) & (!\I2C|Add4~13\)) # (!\I2C|timer2_reg\(7) & ((\I2C|Add4~13\) # (GND)))
-- \I2C|Add4~15\ = CARRY((!\I2C|Add4~13\) # (!\I2C|timer2_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(7),
	datad => VCC,
	cin => \I2C|Add4~13\,
	combout => \I2C|Add4~14_combout\,
	cout => \I2C|Add4~15\);

-- Location: LCCOMB_X23_Y16_N24
\I2C|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~18_combout\ = (\I2C|timer2_reg\(9) & (!\I2C|Add4~17\)) # (!\I2C|timer2_reg\(9) & ((\I2C|Add4~17\) # (GND)))
-- \I2C|Add4~19\ = CARRY((!\I2C|Add4~17\) # (!\I2C|timer2_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(9),
	datad => VCC,
	cin => \I2C|Add4~17\,
	combout => \I2C|Add4~18_combout\,
	cout => \I2C|Add4~19\);

-- Location: LCCOMB_X23_Y15_N2
\I2C|Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~28_combout\ = (\I2C|timer2_reg\(14) & (\I2C|Add4~27\ $ (GND))) # (!\I2C|timer2_reg\(14) & (!\I2C|Add4~27\ & VCC))
-- \I2C|Add4~29\ = CARRY((\I2C|timer2_reg\(14) & !\I2C|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(14),
	datad => VCC,
	cin => \I2C|Add4~27\,
	combout => \I2C|Add4~28_combout\,
	cout => \I2C|Add4~29\);

-- Location: LCCOMB_X23_Y15_N16
\I2C|Add4~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~42_combout\ = (\I2C|timer2_reg\(21) & (!\I2C|Add4~41\)) # (!\I2C|timer2_reg\(21) & ((\I2C|Add4~41\) # (GND)))
-- \I2C|Add4~43\ = CARRY((!\I2C|Add4~41\) # (!\I2C|timer2_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(21),
	datad => VCC,
	cin => \I2C|Add4~41\,
	combout => \I2C|Add4~42_combout\,
	cout => \I2C|Add4~43\);

-- Location: LCCOMB_X23_Y15_N24
\I2C|Add4~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~50_combout\ = (\I2C|timer2_reg\(25) & (!\I2C|Add4~49\)) # (!\I2C|timer2_reg\(25) & ((\I2C|Add4~49\) # (GND)))
-- \I2C|Add4~51\ = CARRY((!\I2C|Add4~49\) # (!\I2C|timer2_reg\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(25),
	datad => VCC,
	cin => \I2C|Add4~49\,
	combout => \I2C|Add4~50_combout\,
	cout => \I2C|Add4~51\);

-- Location: LCCOMB_X23_Y15_N26
\I2C|Add4~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~52_combout\ = \I2C|Add4~51\ $ (!\I2C|timer2_reg\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I2C|timer2_reg\(26),
	cin => \I2C|Add4~51\,
	combout => \I2C|Add4~52_combout\);

-- Location: LCCOMB_X21_Y16_N14
\I2C|Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~8_combout\ = (\I2C|timer2_reg~5_combout\ & (\I2C|Add7~7\ $ (GND))) # (!\I2C|timer2_reg~5_combout\ & (!\I2C|Add7~7\ & VCC))
-- \I2C|Add7~9\ = CARRY((\I2C|timer2_reg~5_combout\ & !\I2C|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~5_combout\,
	datad => VCC,
	cin => \I2C|Add7~7\,
	combout => \I2C|Add7~8_combout\,
	cout => \I2C|Add7~9\);

-- Location: LCCOMB_X21_Y16_N16
\I2C|Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~10_combout\ = (\I2C|timer2_reg~6_combout\ & (!\I2C|Add7~9\)) # (!\I2C|timer2_reg~6_combout\ & ((\I2C|Add7~9\) # (GND)))
-- \I2C|Add7~11\ = CARRY((!\I2C|Add7~9\) # (!\I2C|timer2_reg~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~6_combout\,
	datad => VCC,
	cin => \I2C|Add7~9\,
	combout => \I2C|Add7~10_combout\,
	cout => \I2C|Add7~11\);

-- Location: LCCOMB_X21_Y16_N20
\I2C|Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~14_combout\ = (\I2C|timer2_reg~8_combout\ & (!\I2C|Add7~13\)) # (!\I2C|timer2_reg~8_combout\ & ((\I2C|Add7~13\) # (GND)))
-- \I2C|Add7~15\ = CARRY((!\I2C|Add7~13\) # (!\I2C|timer2_reg~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~8_combout\,
	datad => VCC,
	cin => \I2C|Add7~13\,
	combout => \I2C|Add7~14_combout\,
	cout => \I2C|Add7~15\);

-- Location: LCCOMB_X21_Y16_N22
\I2C|Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~16_combout\ = (\I2C|timer2_reg~9_combout\ & (\I2C|Add7~15\ $ (GND))) # (!\I2C|timer2_reg~9_combout\ & (!\I2C|Add7~15\ & VCC))
-- \I2C|Add7~17\ = CARRY((\I2C|timer2_reg~9_combout\ & !\I2C|Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~9_combout\,
	datad => VCC,
	cin => \I2C|Add7~15\,
	combout => \I2C|Add7~16_combout\,
	cout => \I2C|Add7~17\);

-- Location: LCCOMB_X21_Y16_N26
\I2C|Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~20_combout\ = (\I2C|timer2_reg~11_combout\ & (\I2C|Add7~19\ $ (GND))) # (!\I2C|timer2_reg~11_combout\ & (!\I2C|Add7~19\ & VCC))
-- \I2C|Add7~21\ = CARRY((\I2C|timer2_reg~11_combout\ & !\I2C|Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~11_combout\,
	datad => VCC,
	cin => \I2C|Add7~19\,
	combout => \I2C|Add7~20_combout\,
	cout => \I2C|Add7~21\);

-- Location: LCCOMB_X21_Y16_N28
\I2C|Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~22_combout\ = (\I2C|timer2_reg~12_combout\ & (!\I2C|Add7~21\)) # (!\I2C|timer2_reg~12_combout\ & ((\I2C|Add7~21\) # (GND)))
-- \I2C|Add7~23\ = CARRY((!\I2C|Add7~21\) # (!\I2C|timer2_reg~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~12_combout\,
	datad => VCC,
	cin => \I2C|Add7~21\,
	combout => \I2C|Add7~22_combout\,
	cout => \I2C|Add7~23\);

-- Location: LCCOMB_X21_Y16_N30
\I2C|Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~24_combout\ = (\I2C|timer2_reg~14_combout\ & (\I2C|Add7~23\ $ (GND))) # (!\I2C|timer2_reg~14_combout\ & (!\I2C|Add7~23\ & VCC))
-- \I2C|Add7~25\ = CARRY((\I2C|timer2_reg~14_combout\ & !\I2C|Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~14_combout\,
	datad => VCC,
	cin => \I2C|Add7~23\,
	combout => \I2C|Add7~24_combout\,
	cout => \I2C|Add7~25\);

-- Location: LCCOMB_X21_Y15_N2
\I2C|Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~28_combout\ = (\I2C|timer2_reg~15_combout\ & (\I2C|Add7~27\ $ (GND))) # (!\I2C|timer2_reg~15_combout\ & (!\I2C|Add7~27\ & VCC))
-- \I2C|Add7~29\ = CARRY((\I2C|timer2_reg~15_combout\ & !\I2C|Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~15_combout\,
	datad => VCC,
	cin => \I2C|Add7~27\,
	combout => \I2C|Add7~28_combout\,
	cout => \I2C|Add7~29\);

-- Location: LCCOMB_X21_Y15_N10
\I2C|Add7~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~36_combout\ = (\I2C|timer2_reg~19_combout\ & (\I2C|Add7~35\ $ (GND))) # (!\I2C|timer2_reg~19_combout\ & (!\I2C|Add7~35\ & VCC))
-- \I2C|Add7~37\ = CARRY((\I2C|timer2_reg~19_combout\ & !\I2C|Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~19_combout\,
	datad => VCC,
	cin => \I2C|Add7~35\,
	combout => \I2C|Add7~36_combout\,
	cout => \I2C|Add7~37\);

-- Location: LCCOMB_X12_Y13_N8
\I2C|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~2_combout\ = (\I2C|timer3_reg\(1) & (!\I2C|Add0~1\)) # (!\I2C|timer3_reg\(1) & ((\I2C|Add0~1\) # (GND)))
-- \I2C|Add0~3\ = CARRY((!\I2C|Add0~1\) # (!\I2C|timer3_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer3_reg\(1),
	datad => VCC,
	cin => \I2C|Add0~1\,
	combout => \I2C|Add0~2_combout\,
	cout => \I2C|Add0~3\);

-- Location: LCCOMB_X12_Y13_N10
\I2C|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~4_combout\ = (\I2C|timer3_reg\(2) & (\I2C|Add0~3\ $ (GND))) # (!\I2C|timer3_reg\(2) & (!\I2C|Add0~3\ & VCC))
-- \I2C|Add0~5\ = CARRY((\I2C|timer3_reg\(2) & !\I2C|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer3_reg\(2),
	datad => VCC,
	cin => \I2C|Add0~3\,
	combout => \I2C|Add0~4_combout\,
	cout => \I2C|Add0~5\);

-- Location: LCCOMB_X12_Y13_N12
\I2C|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~6_combout\ = (\I2C|timer3_reg\(3) & (!\I2C|Add0~5\)) # (!\I2C|timer3_reg\(3) & ((\I2C|Add0~5\) # (GND)))
-- \I2C|Add0~7\ = CARRY((!\I2C|Add0~5\) # (!\I2C|timer3_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer3_reg\(3),
	datad => VCC,
	cin => \I2C|Add0~5\,
	combout => \I2C|Add0~6_combout\,
	cout => \I2C|Add0~7\);

-- Location: LCCOMB_X12_Y13_N22
\I2C|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~16_combout\ = (\I2C|timer3_reg\(8) & (\I2C|Add0~15\ $ (GND))) # (!\I2C|timer3_reg\(8) & (!\I2C|Add0~15\ & VCC))
-- \I2C|Add0~17\ = CARRY((\I2C|timer3_reg\(8) & !\I2C|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer3_reg\(8),
	datad => VCC,
	cin => \I2C|Add0~15\,
	combout => \I2C|Add0~16_combout\,
	cout => \I2C|Add0~17\);

-- Location: LCCOMB_X12_Y12_N0
\I2C|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~26_combout\ = (\I2C|timer3_reg\(13) & (!\I2C|Add0~25\)) # (!\I2C|timer3_reg\(13) & ((\I2C|Add0~25\) # (GND)))
-- \I2C|Add0~27\ = CARRY((!\I2C|Add0~25\) # (!\I2C|timer3_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer3_reg\(13),
	datad => VCC,
	cin => \I2C|Add0~25\,
	combout => \I2C|Add0~26_combout\,
	cout => \I2C|Add0~27\);

-- Location: LCCOMB_X12_Y12_N8
\I2C|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~34_combout\ = (\I2C|timer3_reg\(17) & (!\I2C|Add0~33\)) # (!\I2C|timer3_reg\(17) & ((\I2C|Add0~33\) # (GND)))
-- \I2C|Add0~35\ = CARRY((!\I2C|Add0~33\) # (!\I2C|timer3_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer3_reg\(17),
	datad => VCC,
	cin => \I2C|Add0~33\,
	combout => \I2C|Add0~34_combout\,
	cout => \I2C|Add0~35\);

-- Location: LCCOMB_X12_Y12_N14
\I2C|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~40_combout\ = (\I2C|timer3_reg\(20) & (\I2C|Add0~39\ $ (GND))) # (!\I2C|timer3_reg\(20) & (!\I2C|Add0~39\ & VCC))
-- \I2C|Add0~41\ = CARRY((\I2C|timer3_reg\(20) & !\I2C|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer3_reg\(20),
	datad => VCC,
	cin => \I2C|Add0~39\,
	combout => \I2C|Add0~40_combout\,
	cout => \I2C|Add0~41\);

-- Location: LCCOMB_X12_Y12_N24
\I2C|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~50_combout\ = (\I2C|timer3_reg\(25) & (!\I2C|Add0~49\)) # (!\I2C|timer3_reg\(25) & ((\I2C|Add0~49\) # (GND)))
-- \I2C|Add0~51\ = CARRY((!\I2C|Add0~49\) # (!\I2C|timer3_reg\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer3_reg\(25),
	datad => VCC,
	cin => \I2C|Add0~49\,
	combout => \I2C|Add0~50_combout\,
	cout => \I2C|Add0~51\);

-- Location: LCCOMB_X12_Y12_N26
\I2C|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~52_combout\ = \I2C|timer3_reg\(26) $ (!\I2C|Add0~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer3_reg\(26),
	cin => \I2C|Add0~51\,
	combout => \I2C|Add0~52_combout\);

-- Location: LCCOMB_X13_Y13_N8
\I2C|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~2_combout\ = (\I2C|Add0~2_combout\ & (!\I2C|Add2~1\)) # (!\I2C|Add0~2_combout\ & ((\I2C|Add2~1\) # (GND)))
-- \I2C|Add2~3\ = CARRY((!\I2C|Add2~1\) # (!\I2C|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~2_combout\,
	datad => VCC,
	cin => \I2C|Add2~1\,
	combout => \I2C|Add2~2_combout\,
	cout => \I2C|Add2~3\);

-- Location: LCCOMB_X13_Y13_N12
\I2C|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~6_combout\ = (\I2C|Add2~5\ & (((\I2C|Equal0~8_combout\)) # (!\I2C|Add0~6_combout\))) # (!\I2C|Add2~5\ & (((\I2C|Add0~6_combout\ & !\I2C|Equal0~8_combout\)) # (GND)))
-- \I2C|Add2~7\ = CARRY(((\I2C|Equal0~8_combout\) # (!\I2C|Add2~5\)) # (!\I2C|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~6_combout\,
	datab => \I2C|Equal0~8_combout\,
	datad => VCC,
	cin => \I2C|Add2~5\,
	combout => \I2C|Add2~6_combout\,
	cout => \I2C|Add2~7\);

-- Location: LCCOMB_X13_Y13_N22
\I2C|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~16_combout\ = (\I2C|Add2~15\ & (\I2C|Add0~16_combout\ & (!\I2C|Equal0~8_combout\ & VCC))) # (!\I2C|Add2~15\ & ((((\I2C|Add0~16_combout\ & !\I2C|Equal0~8_combout\)))))
-- \I2C|Add2~17\ = CARRY((\I2C|Add0~16_combout\ & (!\I2C|Equal0~8_combout\ & !\I2C|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~16_combout\,
	datab => \I2C|Equal0~8_combout\,
	datad => VCC,
	cin => \I2C|Add2~15\,
	combout => \I2C|Add2~16_combout\,
	cout => \I2C|Add2~17\);

-- Location: LCCOMB_X13_Y13_N30
\I2C|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~24_combout\ = (\I2C|Add2~23\ & (\I2C|Add0~24_combout\ & (!\I2C|Equal0~8_combout\ & VCC))) # (!\I2C|Add2~23\ & ((((\I2C|Add0~24_combout\ & !\I2C|Equal0~8_combout\)))))
-- \I2C|Add2~25\ = CARRY((\I2C|Add0~24_combout\ & (!\I2C|Equal0~8_combout\ & !\I2C|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~24_combout\,
	datab => \I2C|Equal0~8_combout\,
	datad => VCC,
	cin => \I2C|Add2~23\,
	combout => \I2C|Add2~24_combout\,
	cout => \I2C|Add2~25\);

-- Location: LCCOMB_X13_Y12_N12
\I2C|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~38_combout\ = (\I2C|Add0~38_combout\ & (!\I2C|Add2~37\)) # (!\I2C|Add0~38_combout\ & ((\I2C|Add2~37\) # (GND)))
-- \I2C|Add2~39\ = CARRY((!\I2C|Add2~37\) # (!\I2C|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~38_combout\,
	datad => VCC,
	cin => \I2C|Add2~37\,
	combout => \I2C|Add2~38_combout\,
	cout => \I2C|Add2~39\);

-- Location: LCCOMB_X13_Y12_N22
\I2C|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~48_combout\ = (\I2C|Add0~48_combout\ & (\I2C|Add2~47\ $ (GND))) # (!\I2C|Add0~48_combout\ & (!\I2C|Add2~47\ & VCC))
-- \I2C|Add2~49\ = CARRY((\I2C|Add0~48_combout\ & !\I2C|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~48_combout\,
	datad => VCC,
	cin => \I2C|Add2~47\,
	combout => \I2C|Add2~48_combout\,
	cout => \I2C|Add2~49\);

-- Location: LCCOMB_X13_Y15_N6
\I2C|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~0_combout\ = \I2C|Add2~0_combout\ $ (VCC)
-- \I2C|Add5~1\ = CARRY(\I2C|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add2~0_combout\,
	datad => VCC,
	combout => \I2C|Add5~0_combout\,
	cout => \I2C|Add5~1\);

-- Location: LCCOMB_X13_Y15_N10
\I2C|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~4_combout\ = (\I2C|Add2~4_combout\ & (\I2C|Add5~3\ $ (GND))) # (!\I2C|Add2~4_combout\ & (!\I2C|Add5~3\ & VCC))
-- \I2C|Add5~5\ = CARRY((\I2C|Add2~4_combout\ & !\I2C|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add2~4_combout\,
	datad => VCC,
	cin => \I2C|Add5~3\,
	combout => \I2C|Add5~4_combout\,
	cout => \I2C|Add5~5\);

-- Location: LCCOMB_X13_Y15_N16
\I2C|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~10_combout\ = (\I2C|Add2~10_combout\ & (!\I2C|Add5~9\)) # (!\I2C|Add2~10_combout\ & ((\I2C|Add5~9\) # (GND)))
-- \I2C|Add5~11\ = CARRY((!\I2C|Add5~9\) # (!\I2C|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add2~10_combout\,
	datad => VCC,
	cin => \I2C|Add5~9\,
	combout => \I2C|Add5~10_combout\,
	cout => \I2C|Add5~11\);

-- Location: LCCOMB_X13_Y15_N18
\I2C|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~12_combout\ = (\I2C|Add2~12_combout\ & (\I2C|Add5~11\ $ (GND))) # (!\I2C|Add2~12_combout\ & (!\I2C|Add5~11\ & VCC))
-- \I2C|Add5~13\ = CARRY((\I2C|Add2~12_combout\ & !\I2C|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~12_combout\,
	datad => VCC,
	cin => \I2C|Add5~11\,
	combout => \I2C|Add5~12_combout\,
	cout => \I2C|Add5~13\);

-- Location: LCCOMB_X13_Y15_N26
\I2C|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~20_combout\ = (\I2C|Add2~20_combout\ & (\I2C|Add5~19\ $ (GND))) # (!\I2C|Add2~20_combout\ & (!\I2C|Add5~19\ & VCC))
-- \I2C|Add5~21\ = CARRY((\I2C|Add2~20_combout\ & !\I2C|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add2~20_combout\,
	datad => VCC,
	cin => \I2C|Add5~19\,
	combout => \I2C|Add5~20_combout\,
	cout => \I2C|Add5~21\);

-- Location: LCCOMB_X13_Y15_N28
\I2C|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~22_combout\ = (\I2C|Add2~22_combout\ & (!\I2C|Add5~21\)) # (!\I2C|Add2~22_combout\ & ((\I2C|Add5~21\) # (GND)))
-- \I2C|Add5~23\ = CARRY((!\I2C|Add5~21\) # (!\I2C|Add2~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~22_combout\,
	datad => VCC,
	cin => \I2C|Add5~21\,
	combout => \I2C|Add5~22_combout\,
	cout => \I2C|Add5~23\);

-- Location: LCCOMB_X13_Y14_N0
\I2C|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~26_combout\ = (\I2C|Add2~26_combout\ & (!\I2C|Add5~25\)) # (!\I2C|Add2~26_combout\ & ((\I2C|Add5~25\) # (GND)))
-- \I2C|Add5~27\ = CARRY((!\I2C|Add5~25\) # (!\I2C|Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~26_combout\,
	datad => VCC,
	cin => \I2C|Add5~25\,
	combout => \I2C|Add5~26_combout\,
	cout => \I2C|Add5~27\);

-- Location: LCCOMB_X13_Y14_N6
\I2C|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~32_combout\ = (\I2C|Add2~32_combout\ & (\I2C|Add5~31\ $ (GND))) # (!\I2C|Add2~32_combout\ & (!\I2C|Add5~31\ & VCC))
-- \I2C|Add5~33\ = CARRY((\I2C|Add2~32_combout\ & !\I2C|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add2~32_combout\,
	datad => VCC,
	cin => \I2C|Add5~31\,
	combout => \I2C|Add5~32_combout\,
	cout => \I2C|Add5~33\);

-- Location: LCCOMB_X13_Y14_N8
\I2C|Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~34_combout\ = (\I2C|Add2~34_combout\ & (!\I2C|Add5~33\)) # (!\I2C|Add2~34_combout\ & ((\I2C|Add5~33\) # (GND)))
-- \I2C|Add5~35\ = CARRY((!\I2C|Add5~33\) # (!\I2C|Add2~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add2~34_combout\,
	datad => VCC,
	cin => \I2C|Add5~33\,
	combout => \I2C|Add5~34_combout\,
	cout => \I2C|Add5~35\);

-- Location: LCCOMB_X13_Y14_N14
\I2C|Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~40_combout\ = (\I2C|Add2~40_combout\ & (\I2C|Add5~39\ $ (GND))) # (!\I2C|Add2~40_combout\ & (!\I2C|Add5~39\ & VCC))
-- \I2C|Add5~41\ = CARRY((\I2C|Add2~40_combout\ & !\I2C|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add2~40_combout\,
	datad => VCC,
	cin => \I2C|Add5~39\,
	combout => \I2C|Add5~40_combout\,
	cout => \I2C|Add5~41\);

-- Location: LCCOMB_X13_Y14_N18
\I2C|Add5~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~44_combout\ = (\I2C|Add2~44_combout\ & (\I2C|Add5~43\ $ (GND))) # (!\I2C|Add2~44_combout\ & (!\I2C|Add5~43\ & VCC))
-- \I2C|Add5~45\ = CARRY((\I2C|Add2~44_combout\ & !\I2C|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add2~44_combout\,
	datad => VCC,
	cin => \I2C|Add5~43\,
	combout => \I2C|Add5~44_combout\,
	cout => \I2C|Add5~45\);

-- Location: LCCOMB_X13_Y14_N20
\I2C|Add5~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~46_combout\ = (\I2C|Add2~46_combout\ & (!\I2C|Add5~45\)) # (!\I2C|Add2~46_combout\ & ((\I2C|Add5~45\) # (GND)))
-- \I2C|Add5~47\ = CARRY((!\I2C|Add5~45\) # (!\I2C|Add2~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add2~46_combout\,
	datad => VCC,
	cin => \I2C|Add5~45\,
	combout => \I2C|Add5~46_combout\,
	cout => \I2C|Add5~47\);

-- Location: LCCOMB_X13_Y14_N22
\I2C|Add5~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~48_combout\ = (\I2C|Add2~48_combout\ & (\I2C|Add5~47\ $ (GND))) # (!\I2C|Add2~48_combout\ & (!\I2C|Add5~47\ & VCC))
-- \I2C|Add5~49\ = CARRY((\I2C|Add2~48_combout\ & !\I2C|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~48_combout\,
	datad => VCC,
	cin => \I2C|Add5~47\,
	combout => \I2C|Add5~48_combout\,
	cout => \I2C|Add5~49\);

-- Location: LCCOMB_X13_Y14_N24
\I2C|Add5~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~50_combout\ = (\I2C|Add2~50_combout\ & (!\I2C|Add5~49\)) # (!\I2C|Add2~50_combout\ & ((\I2C|Add5~49\) # (GND)))
-- \I2C|Add5~51\ = CARRY((!\I2C|Add5~49\) # (!\I2C|Add2~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add2~50_combout\,
	datad => VCC,
	cin => \I2C|Add5~49\,
	combout => \I2C|Add5~50_combout\,
	cout => \I2C|Add5~51\);

-- Location: LCCOMB_X11_Y15_N18
\I2C|Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~12_combout\ = (\I2C|Add5~12_combout\ & (\I2C|Add8~11\ $ (GND))) # (!\I2C|Add5~12_combout\ & (!\I2C|Add8~11\ & VCC))
-- \I2C|Add8~13\ = CARRY((\I2C|Add5~12_combout\ & !\I2C|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~12_combout\,
	datad => VCC,
	cin => \I2C|Add8~11\,
	combout => \I2C|Add8~12_combout\,
	cout => \I2C|Add8~13\);

-- Location: LCCOMB_X11_Y15_N20
\I2C|Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~14_combout\ = (\I2C|Add8~13\ & ((\I2C|Equal5~8_combout\) # ((!\I2C|Add5~14_combout\)))) # (!\I2C|Add8~13\ & (((!\I2C|Equal5~8_combout\ & \I2C|Add5~14_combout\)) # (GND)))
-- \I2C|Add8~15\ = CARRY((\I2C|Equal5~8_combout\) # ((!\I2C|Add8~13\) # (!\I2C|Add5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal5~8_combout\,
	datab => \I2C|Add5~14_combout\,
	datad => VCC,
	cin => \I2C|Add8~13\,
	combout => \I2C|Add8~14_combout\,
	cout => \I2C|Add8~15\);

-- Location: LCCOMB_X11_Y15_N22
\I2C|Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~16_combout\ = (\I2C|Add8~15\ & (!\I2C|Equal5~8_combout\ & (\I2C|Add5~16_combout\ & VCC))) # (!\I2C|Add8~15\ & ((((!\I2C|Equal5~8_combout\ & \I2C|Add5~16_combout\)))))
-- \I2C|Add8~17\ = CARRY((!\I2C|Equal5~8_combout\ & (\I2C|Add5~16_combout\ & !\I2C|Add8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal5~8_combout\,
	datab => \I2C|Add5~16_combout\,
	datad => VCC,
	cin => \I2C|Add8~15\,
	combout => \I2C|Add8~16_combout\,
	cout => \I2C|Add8~17\);

-- Location: LCCOMB_X11_Y15_N30
\I2C|Add8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~24_combout\ = (\I2C|Add8~23\ & (!\I2C|Equal5~8_combout\ & (\I2C|Add5~24_combout\ & VCC))) # (!\I2C|Add8~23\ & ((((!\I2C|Equal5~8_combout\ & \I2C|Add5~24_combout\)))))
-- \I2C|Add8~25\ = CARRY((!\I2C|Equal5~8_combout\ & (\I2C|Add5~24_combout\ & !\I2C|Add8~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal5~8_combout\,
	datab => \I2C|Add5~24_combout\,
	datad => VCC,
	cin => \I2C|Add8~23\,
	combout => \I2C|Add8~24_combout\,
	cout => \I2C|Add8~25\);

-- Location: LCCOMB_X11_Y14_N6
\I2C|Add8~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~32_combout\ = (\I2C|Add5~32_combout\ & (\I2C|Add8~31\ $ (GND))) # (!\I2C|Add5~32_combout\ & (!\I2C|Add8~31\ & VCC))
-- \I2C|Add8~33\ = CARRY((\I2C|Add5~32_combout\ & !\I2C|Add8~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~32_combout\,
	datad => VCC,
	cin => \I2C|Add8~31\,
	combout => \I2C|Add8~32_combout\,
	cout => \I2C|Add8~33\);

-- Location: LCCOMB_X11_Y13_N10
\I2C|Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~4_combout\ = (\I2C|Add8~4_combout\ & (\I2C|Add9~3\ $ (GND))) # (!\I2C|Add8~4_combout\ & (!\I2C|Add9~3\ & VCC))
-- \I2C|Add9~5\ = CARRY((\I2C|Add8~4_combout\ & !\I2C|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add8~4_combout\,
	datad => VCC,
	cin => \I2C|Add9~3\,
	combout => \I2C|Add9~4_combout\,
	cout => \I2C|Add9~5\);

-- Location: LCCOMB_X11_Y13_N14
\I2C|Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~8_combout\ = (\I2C|Add8~8_combout\ & (\I2C|Add9~7\ $ (GND))) # (!\I2C|Add8~8_combout\ & (!\I2C|Add9~7\ & VCC))
-- \I2C|Add9~9\ = CARRY((\I2C|Add8~8_combout\ & !\I2C|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add8~8_combout\,
	datad => VCC,
	cin => \I2C|Add9~7\,
	combout => \I2C|Add9~8_combout\,
	cout => \I2C|Add9~9\);

-- Location: LCCOMB_X11_Y13_N16
\I2C|Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~10_combout\ = (\I2C|Add8~10_combout\ & (!\I2C|Add9~9\)) # (!\I2C|Add8~10_combout\ & ((\I2C|Add9~9\) # (GND)))
-- \I2C|Add9~11\ = CARRY((!\I2C|Add9~9\) # (!\I2C|Add8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add8~10_combout\,
	datad => VCC,
	cin => \I2C|Add9~9\,
	combout => \I2C|Add9~10_combout\,
	cout => \I2C|Add9~11\);

-- Location: LCCOMB_X11_Y13_N20
\I2C|Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~14_combout\ = (\I2C|Add9~13\ & (((\I2C|Equal8~8_combout\)) # (!\I2C|Add8~14_combout\))) # (!\I2C|Add9~13\ & (((\I2C|Add8~14_combout\ & !\I2C|Equal8~8_combout\)) # (GND)))
-- \I2C|Add9~15\ = CARRY(((\I2C|Equal8~8_combout\) # (!\I2C|Add9~13\)) # (!\I2C|Add8~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~14_combout\,
	datab => \I2C|Equal8~8_combout\,
	datad => VCC,
	cin => \I2C|Add9~13\,
	combout => \I2C|Add9~14_combout\,
	cout => \I2C|Add9~15\);

-- Location: LCCOMB_X11_Y13_N24
\I2C|Add9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~18_combout\ = (\I2C|Add9~17\ & (((\I2C|Equal8~8_combout\)) # (!\I2C|Add8~18_combout\))) # (!\I2C|Add9~17\ & (((\I2C|Add8~18_combout\ & !\I2C|Equal8~8_combout\)) # (GND)))
-- \I2C|Add9~19\ = CARRY(((\I2C|Equal8~8_combout\) # (!\I2C|Add9~17\)) # (!\I2C|Add8~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~18_combout\,
	datab => \I2C|Equal8~8_combout\,
	datad => VCC,
	cin => \I2C|Add9~17\,
	combout => \I2C|Add9~18_combout\,
	cout => \I2C|Add9~19\);

-- Location: LCCOMB_X11_Y12_N16
\I2C|Add9~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~42_combout\ = (\I2C|Add8~42_combout\ & (!\I2C|Add9~41\)) # (!\I2C|Add8~42_combout\ & ((\I2C|Add9~41\) # (GND)))
-- \I2C|Add9~43\ = CARRY((!\I2C|Add9~41\) # (!\I2C|Add8~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add8~42_combout\,
	datad => VCC,
	cin => \I2C|Add9~41\,
	combout => \I2C|Add9~42_combout\,
	cout => \I2C|Add9~43\);

-- Location: LCCOMB_X18_Y16_N6
\I2C|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~0_combout\ = timer2_reg(0) $ (VCC)
-- \I2C|Add1~1\ = CARRY(timer2_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(0),
	datad => VCC,
	combout => \I2C|Add1~0_combout\,
	cout => \I2C|Add1~1\);

-- Location: LCCOMB_X19_Y16_N6
\I2C|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~0_combout\ = \I2C|Add3~0_combout\ $ (VCC)
-- \I2C|Add6~1\ = CARRY(\I2C|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~0_combout\,
	datad => VCC,
	combout => \I2C|Add6~0_combout\,
	cout => \I2C|Add6~1\);

-- Location: LCCOMB_X18_Y16_N20
\I2C|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~14_combout\ = (\I2C|timer1_reg\(7) & (!\I2C|Add1~13\)) # (!\I2C|timer1_reg\(7) & ((\I2C|Add1~13\) # (GND)))
-- \I2C|Add1~15\ = CARRY((!\I2C|Add1~13\) # (!\I2C|timer1_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_reg\(7),
	datad => VCC,
	cin => \I2C|Add1~13\,
	combout => \I2C|Add1~14_combout\,
	cout => \I2C|Add1~15\);

-- Location: LCCOMB_X18_Y16_N30
\I2C|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~24_combout\ = (\I2C|timer1_reg\(12) & (\I2C|Add1~23\ $ (GND))) # (!\I2C|timer1_reg\(12) & (!\I2C|Add1~23\ & VCC))
-- \I2C|Add1~25\ = CARRY((\I2C|timer1_reg\(12) & !\I2C|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_reg\(12),
	datad => VCC,
	cin => \I2C|Add1~23\,
	combout => \I2C|Add1~24_combout\,
	cout => \I2C|Add1~25\);

-- Location: LCCOMB_X18_Y15_N2
\I2C|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~28_combout\ = (\I2C|timer1_reg\(14) & (\I2C|Add1~27\ $ (GND))) # (!\I2C|timer1_reg\(14) & (!\I2C|Add1~27\ & VCC))
-- \I2C|Add1~29\ = CARRY((\I2C|timer1_reg\(14) & !\I2C|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_reg\(14),
	datad => VCC,
	cin => \I2C|Add1~27\,
	combout => \I2C|Add1~28_combout\,
	cout => \I2C|Add1~29\);

-- Location: LCCOMB_X18_Y15_N4
\I2C|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~30_combout\ = (\I2C|timer1_reg\(15) & (!\I2C|Add1~29\)) # (!\I2C|timer1_reg\(15) & ((\I2C|Add1~29\) # (GND)))
-- \I2C|Add1~31\ = CARRY((!\I2C|Add1~29\) # (!\I2C|timer1_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_reg\(15),
	datad => VCC,
	cin => \I2C|Add1~29\,
	combout => \I2C|Add1~30_combout\,
	cout => \I2C|Add1~31\);

-- Location: LCCOMB_X18_Y15_N6
\I2C|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~32_combout\ = (\I2C|timer1_reg\(16) & (\I2C|Add1~31\ $ (GND))) # (!\I2C|timer1_reg\(16) & (!\I2C|Add1~31\ & VCC))
-- \I2C|Add1~33\ = CARRY((\I2C|timer1_reg\(16) & !\I2C|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_reg\(16),
	datad => VCC,
	cin => \I2C|Add1~31\,
	combout => \I2C|Add1~32_combout\,
	cout => \I2C|Add1~33\);

-- Location: LCCOMB_X18_Y15_N20
\I2C|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~46_combout\ = (\I2C|timer1_reg\(23) & (!\I2C|Add1~45\)) # (!\I2C|timer1_reg\(23) & ((\I2C|Add1~45\) # (GND)))
-- \I2C|Add1~47\ = CARRY((!\I2C|Add1~45\) # (!\I2C|timer1_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_reg\(23),
	datad => VCC,
	cin => \I2C|Add1~45\,
	combout => \I2C|Add1~46_combout\,
	cout => \I2C|Add1~47\);

-- Location: LCCOMB_X18_Y15_N22
\I2C|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~48_combout\ = (\I2C|timer1_reg\(24) & (\I2C|Add1~47\ $ (GND))) # (!\I2C|timer1_reg\(24) & (!\I2C|Add1~47\ & VCC))
-- \I2C|Add1~49\ = CARRY((\I2C|timer1_reg\(24) & !\I2C|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_reg\(24),
	datad => VCC,
	cin => \I2C|Add1~47\,
	combout => \I2C|Add1~48_combout\,
	cout => \I2C|Add1~49\);

-- Location: LCCOMB_X18_Y15_N24
\I2C|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~50_combout\ = (\I2C|timer1_reg\(25) & (!\I2C|Add1~49\)) # (!\I2C|timer1_reg\(25) & ((\I2C|Add1~49\) # (GND)))
-- \I2C|Add1~51\ = CARRY((!\I2C|Add1~49\) # (!\I2C|timer1_reg\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_reg\(25),
	datad => VCC,
	cin => \I2C|Add1~49\,
	combout => \I2C|Add1~50_combout\,
	cout => \I2C|Add1~51\);

-- Location: LCCOMB_X18_Y15_N26
\I2C|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~52_combout\ = \I2C|Add1~51\ $ (!\I2C|timer1_reg\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I2C|timer1_reg\(26),
	cin => \I2C|Add1~51\,
	combout => \I2C|Add1~52_combout\);

-- Location: LCCOMB_X17_Y16_N16
\I2C|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~10_combout\ = (\I2C|Add1~10_combout\ & (!\I2C|Add3~9\)) # (!\I2C|Add1~10_combout\ & ((\I2C|Add3~9\) # (GND)))
-- \I2C|Add3~11\ = CARRY((!\I2C|Add3~9\) # (!\I2C|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~10_combout\,
	datad => VCC,
	cin => \I2C|Add3~9\,
	combout => \I2C|Add3~10_combout\,
	cout => \I2C|Add3~11\);

-- Location: LCCOMB_X17_Y16_N20
\I2C|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~14_combout\ = (\I2C|Add1~14_combout\ & (!\I2C|Add3~13\)) # (!\I2C|Add1~14_combout\ & ((\I2C|Add3~13\) # (GND)))
-- \I2C|Add3~15\ = CARRY((!\I2C|Add3~13\) # (!\I2C|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add1~14_combout\,
	datad => VCC,
	cin => \I2C|Add3~13\,
	combout => \I2C|Add3~14_combout\,
	cout => \I2C|Add3~15\);

-- Location: LCCOMB_X17_Y16_N28
\I2C|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~22_combout\ = (\I2C|Add1~22_combout\ & (!\I2C|Add3~21\)) # (!\I2C|Add1~22_combout\ & ((\I2C|Add3~21\) # (GND)))
-- \I2C|Add3~23\ = CARRY((!\I2C|Add3~21\) # (!\I2C|Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~22_combout\,
	datad => VCC,
	cin => \I2C|Add3~21\,
	combout => \I2C|Add3~22_combout\,
	cout => \I2C|Add3~23\);

-- Location: LCCOMB_X17_Y16_N30
\I2C|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~24_combout\ = (\I2C|Add1~24_combout\ & (\I2C|Add3~23\ $ (GND))) # (!\I2C|Add1~24_combout\ & (!\I2C|Add3~23\ & VCC))
-- \I2C|Add3~25\ = CARRY((\I2C|Add1~24_combout\ & !\I2C|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add1~24_combout\,
	datad => VCC,
	cin => \I2C|Add3~23\,
	combout => \I2C|Add3~24_combout\,
	cout => \I2C|Add3~25\);

-- Location: LCCOMB_X17_Y15_N6
\I2C|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~32_combout\ = (\I2C|Add1~32_combout\ & (\I2C|Add3~31\ $ (GND))) # (!\I2C|Add1~32_combout\ & (!\I2C|Add3~31\ & VCC))
-- \I2C|Add3~33\ = CARRY((\I2C|Add1~32_combout\ & !\I2C|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add1~32_combout\,
	datad => VCC,
	cin => \I2C|Add3~31\,
	combout => \I2C|Add3~32_combout\,
	cout => \I2C|Add3~33\);

-- Location: LCCOMB_X17_Y15_N14
\I2C|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~40_combout\ = (\I2C|Add1~40_combout\ & (\I2C|Add3~39\ $ (GND))) # (!\I2C|Add1~40_combout\ & (!\I2C|Add3~39\ & VCC))
-- \I2C|Add3~41\ = CARRY((\I2C|Add1~40_combout\ & !\I2C|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~40_combout\,
	datad => VCC,
	cin => \I2C|Add3~39\,
	combout => \I2C|Add3~40_combout\,
	cout => \I2C|Add3~41\);

-- Location: LCCOMB_X17_Y15_N16
\I2C|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~42_combout\ = (\I2C|Add1~42_combout\ & (!\I2C|Add3~41\)) # (!\I2C|Add1~42_combout\ & ((\I2C|Add3~41\) # (GND)))
-- \I2C|Add3~43\ = CARRY((!\I2C|Add3~41\) # (!\I2C|Add1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~42_combout\,
	datad => VCC,
	cin => \I2C|Add3~41\,
	combout => \I2C|Add3~42_combout\,
	cout => \I2C|Add3~43\);

-- Location: LCCOMB_X17_Y15_N18
\I2C|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~44_combout\ = (\I2C|Add1~44_combout\ & (\I2C|Add3~43\ $ (GND))) # (!\I2C|Add1~44_combout\ & (!\I2C|Add3~43\ & VCC))
-- \I2C|Add3~45\ = CARRY((\I2C|Add1~44_combout\ & !\I2C|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~44_combout\,
	datad => VCC,
	cin => \I2C|Add3~43\,
	combout => \I2C|Add3~44_combout\,
	cout => \I2C|Add3~45\);

-- Location: LCCOMB_X17_Y15_N22
\I2C|Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~48_combout\ = (\I2C|Add1~48_combout\ & (\I2C|Add3~47\ $ (GND))) # (!\I2C|Add1~48_combout\ & (!\I2C|Add3~47\ & VCC))
-- \I2C|Add3~49\ = CARRY((\I2C|Add1~48_combout\ & !\I2C|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~48_combout\,
	datad => VCC,
	cin => \I2C|Add3~47\,
	combout => \I2C|Add3~48_combout\,
	cout => \I2C|Add3~49\);

-- Location: LCCOMB_X17_Y15_N24
\I2C|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~50_combout\ = (\I2C|Add1~50_combout\ & (!\I2C|Add3~49\)) # (!\I2C|Add1~50_combout\ & ((\I2C|Add3~49\) # (GND)))
-- \I2C|Add3~51\ = CARRY((!\I2C|Add3~49\) # (!\I2C|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~50_combout\,
	datad => VCC,
	cin => \I2C|Add3~49\,
	combout => \I2C|Add3~50_combout\,
	cout => \I2C|Add3~51\);

-- Location: LCCOMB_X17_Y15_N26
\I2C|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~52_combout\ = \I2C|Add1~52_combout\ $ (!\I2C|Add3~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add1~52_combout\,
	cin => \I2C|Add3~51\,
	combout => \I2C|Add3~52_combout\);

-- Location: LCCOMB_X19_Y16_N30
\I2C|Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~24_combout\ = (\I2C|Add3~24_combout\ & (\I2C|Add6~23\ $ (GND))) # (!\I2C|Add3~24_combout\ & (!\I2C|Add6~23\ & VCC))
-- \I2C|Add6~25\ = CARRY((\I2C|Add3~24_combout\ & !\I2C|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~24_combout\,
	datad => VCC,
	cin => \I2C|Add6~23\,
	combout => \I2C|Add6~24_combout\,
	cout => \I2C|Add6~25\);

-- Location: LCCOMB_X19_Y15_N2
\I2C|Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~28_combout\ = (\I2C|Add3~28_combout\ & (\I2C|Add6~27\ $ (GND))) # (!\I2C|Add3~28_combout\ & (!\I2C|Add6~27\ & VCC))
-- \I2C|Add6~29\ = CARRY((\I2C|Add3~28_combout\ & !\I2C|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~28_combout\,
	datad => VCC,
	cin => \I2C|Add6~27\,
	combout => \I2C|Add6~28_combout\,
	cout => \I2C|Add6~29\);

-- Location: LCCOMB_X19_Y15_N4
\I2C|Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~30_combout\ = (\I2C|Add3~30_combout\ & (!\I2C|Add6~29\)) # (!\I2C|Add3~30_combout\ & ((\I2C|Add6~29\) # (GND)))
-- \I2C|Add6~31\ = CARRY((!\I2C|Add6~29\) # (!\I2C|Add3~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~30_combout\,
	datad => VCC,
	cin => \I2C|Add6~29\,
	combout => \I2C|Add6~30_combout\,
	cout => \I2C|Add6~31\);

-- Location: LCCOMB_X19_Y15_N20
\I2C|Add6~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~46_combout\ = (\I2C|Add3~46_combout\ & (!\I2C|Add6~45\)) # (!\I2C|Add3~46_combout\ & ((\I2C|Add6~45\) # (GND)))
-- \I2C|Add6~47\ = CARRY((!\I2C|Add6~45\) # (!\I2C|Add3~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~46_combout\,
	datad => VCC,
	cin => \I2C|Add6~45\,
	combout => \I2C|Add6~46_combout\,
	cout => \I2C|Add6~47\);

-- Location: LCCOMB_X19_Y15_N24
\I2C|Add6~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~50_combout\ = (\I2C|Add3~50_combout\ & (!\I2C|Add6~49\)) # (!\I2C|Add3~50_combout\ & ((\I2C|Add6~49\) # (GND)))
-- \I2C|Add6~51\ = CARRY((!\I2C|Add6~49\) # (!\I2C|Add3~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~50_combout\,
	datad => VCC,
	cin => \I2C|Add6~49\,
	combout => \I2C|Add6~50_combout\,
	cout => \I2C|Add6~51\);

-- Location: LCCOMB_X19_Y15_N26
\I2C|Add6~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~52_combout\ = \I2C|Add6~51\ $ (!\I2C|Add3~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I2C|Add3~52_combout\,
	cin => \I2C|Add6~51\,
	combout => \I2C|Add6~52_combout\);

-- Location: LCCOMB_X16_Y22_N10
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

-- Location: LCCOMB_X16_Y22_N16
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

-- Location: LCCOMB_X16_Y22_N20
\display|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~12_combout\ = (\display|prescaler\(6) & (\display|Add0~11\ $ (GND))) # (!\display|prescaler\(6) & (!\display|Add0~11\ & VCC))
-- \display|Add0~13\ = CARRY((\display|prescaler\(6) & !\display|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(6),
	datad => VCC,
	cin => \display|Add0~11\,
	combout => \display|Add0~12_combout\,
	cout => \display|Add0~13\);

-- Location: LCCOMB_X16_Y22_N22
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

-- Location: LCCOMB_X16_Y22_N26
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

-- Location: LCCOMB_X16_Y21_N4
\display|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~28_combout\ = (\display|prescaler\(14) & (\display|Add0~27\ $ (GND))) # (!\display|prescaler\(14) & (!\display|Add0~27\ & VCC))
-- \display|Add0~29\ = CARRY((\display|prescaler\(14) & !\display|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(14),
	datad => VCC,
	cin => \display|Add0~27\,
	combout => \display|Add0~28_combout\,
	cout => \display|Add0~29\);

-- Location: LCCOMB_X16_Y21_N10
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

-- Location: LCCOMB_X16_Y21_N12
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

-- Location: FF_X22_Y16_N1
\I2C|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector4~0_combout\,
	sclr => \I2C|ALT_INV_timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|data\(0));

-- Location: LCCOMB_X19_Y21_N20
\hundreds[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hundreds[0]~2_cout\ = CARRY(!\I2C|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|data\(6),
	datad => VCC,
	cout => \hundreds[0]~2_cout\);

-- Location: LCCOMB_X19_Y21_N22
\hundreds[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hundreds[0]~4_cout\ = CARRY((\I2C|data\(6) & !\hundreds[0]~2_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|data\(6),
	datad => VCC,
	cin => \hundreds[0]~2_cout\,
	cout => \hundreds[0]~4_cout\);

-- Location: LCCOMB_X19_Y21_N24
\hundreds[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hundreds[0]~5_combout\ = !\hundreds[0]~4_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \hundreds[0]~4_cout\,
	combout => \hundreds[0]~5_combout\);

-- Location: FF_X33_Y12_N13
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

-- Location: FF_X18_Y21_N13
\display|digit_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Selector4~0_combout\,
	ena => \display|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|digit_data\(0));

-- Location: LCCOMB_X22_Y18_N10
\I2C|Selector65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector65~1_combout\ = (!\I2C|timer3_flag.01~q\ & ((\I2C|timer1_flag.01~q\ & (\I2C|state_clock.000000001~q\)) # (!\I2C|timer1_flag.01~q\ & ((\I2C|SCL~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_clock.000000001~q\,
	datab => \I2C|SCL~q\,
	datac => \I2C|timer3_flag.01~q\,
	datad => \I2C|timer1_flag.01~q\,
	combout => \I2C|Selector65~1_combout\);

-- Location: FF_X16_Y22_N11
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

-- Location: FF_X17_Y22_N7
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

-- Location: FF_X17_Y22_N5
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

-- Location: FF_X16_Y22_N23
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

-- Location: LCCOMB_X16_Y22_N6
\display|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~1_combout\ = (\display|prescaler\(6) & (!\display|prescaler\(5) & (!\display|prescaler\(7) & \display|prescaler\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(6),
	datab => \display|prescaler\(5),
	datac => \display|prescaler\(7),
	datad => \display|prescaler\(4),
	combout => \display|Equal0~1_combout\);

-- Location: FF_X17_Y22_N21
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

-- Location: FF_X17_Y21_N5
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

-- Location: FF_X16_Y21_N11
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

-- Location: FF_X16_Y21_N13
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

-- Location: LCCOMB_X16_Y21_N26
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

-- Location: LCCOMB_X33_Y12_N12
\LED_status~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_status~1_combout\ = \LED_status~q\ $ (((\timer2_flag.01~q\ & \LED_pos.00100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer2_flag.01~q\,
	datac => \LED_status~q\,
	datad => \LED_pos.00100~q\,
	combout => \LED_status~1_combout\);

-- Location: FF_X12_Y13_N7
\timer2_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(0));

-- Location: FF_X16_Y13_N11
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

-- Location: FF_X16_Y13_N13
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

-- Location: FF_X17_Y13_N5
\timer2_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer2_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(7));

-- Location: FF_X16_Y13_N19
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

-- Location: LCCOMB_X16_Y13_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~8_combout\ & (!\Add0~12_combout\ & (!\Add0~10_combout\ & \Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~14_combout\,
	combout => \Equal0~1_combout\);

-- Location: FF_X16_Y13_N23
\timer2_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(8));

-- Location: FF_X16_Y13_N27
\timer2_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(10));

-- Location: FF_X17_Y13_N7
\timer2_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer2_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(12));

-- Location: FF_X17_Y12_N31
\timer2_reg[13]\ : dffeas
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
	q => timer2_reg(13));

-- Location: FF_X17_Y12_N21
\timer2_reg[14]\ : dffeas
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
	q => timer2_reg(14));

-- Location: FF_X17_Y12_N7
\timer2_reg[15]\ : dffeas
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
	q => timer2_reg(15));

-- Location: FF_X17_Y12_N5
\timer2_reg[19]\ : dffeas
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
	q => timer2_reg(19));

-- Location: FF_X16_Y12_N11
\timer2_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(18));

-- Location: LCCOMB_X17_Y12_N10
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Add0~40_combout\ & (\Add0~46_combout\ & (\Add0~42_combout\ & \Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add0~46_combout\,
	datac => \Add0~42_combout\,
	datad => \Add0~44_combout\,
	combout => \Equal0~6_combout\);

-- Location: FF_X16_Y12_N23
\timer2_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(24));

-- Location: FF_X16_Y12_N27
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

-- Location: FF_X22_Y16_N23
\tens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \tens[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tens(0));

-- Location: LCCOMB_X18_Y21_N12
\display|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Selector4~0_combout\ = (\display|digit_posn\(1) & (!\display|digit_posn\(0) & ((hundreds(0))))) # (!\display|digit_posn\(1) & (\display|digit_posn\(0) & (tens(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_posn\(1),
	datab => \display|digit_posn\(0),
	datac => tens(0),
	datad => hundreds(0),
	combout => \display|Selector4~0_combout\);

-- Location: FF_X22_Y16_N17
\I2C|timer2_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector61~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(3));

-- Location: LCCOMB_X22_Y16_N6
\I2C|timer2_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~3_combout\ = (\I2C|SCL~9_combout\ & (\I2C|Add4~6_combout\)) # (!\I2C|SCL~9_combout\ & ((\I2C|timer2_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|SCL~9_combout\,
	datac => \I2C|Add4~6_combout\,
	datad => \I2C|timer2_reg\(3),
	combout => \I2C|timer2_reg~3_combout\);

-- Location: LCCOMB_X21_Y16_N4
\I2C|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal7~0_combout\ = (!\I2C|Add7~4_combout\ & (!\I2C|Add7~0_combout\ & (!\I2C|Add7~2_combout\ & !\I2C|Add7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~4_combout\,
	datab => \I2C|Add7~0_combout\,
	datac => \I2C|Add7~2_combout\,
	datad => \I2C|Add7~6_combout\,
	combout => \I2C|Equal7~0_combout\);

-- Location: FF_X22_Y16_N13
\I2C|timer2_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector56~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(8));

-- Location: FF_X22_Y16_N3
\I2C|timer2_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector53~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(11));

-- Location: FF_X24_Y15_N21
\I2C|timer2_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector50~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(14));

-- Location: LCCOMB_X24_Y15_N0
\I2C|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal4~3_combout\ = (!\I2C|Add4~28_combout\ & (!\I2C|Add4~30_combout\ & (\I2C|Add4~26_combout\ & !\I2C|Add4~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add4~28_combout\,
	datab => \I2C|Add4~30_combout\,
	datac => \I2C|Add4~26_combout\,
	datad => \I2C|Add4~24_combout\,
	combout => \I2C|Equal4~3_combout\);

-- Location: FF_X22_Y18_N17
\I2C|timer2_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector43~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(21));

-- Location: FF_X24_Y15_N31
\I2C|timer2_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector42~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(22));

-- Location: LCCOMB_X21_Y16_N2
\I2C|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal7~1_combout\ = (!\I2C|Add7~12_combout\ & (!\I2C|Add7~14_combout\ & (\I2C|Add7~8_combout\ & !\I2C|Add7~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~12_combout\,
	datab => \I2C|Add7~14_combout\,
	datac => \I2C|Add7~8_combout\,
	datad => \I2C|Add7~10_combout\,
	combout => \I2C|Equal7~1_combout\);

-- Location: LCCOMB_X24_Y16_N18
\I2C|timer2_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~9_combout\ = (\I2C|SCL~9_combout\ & (\I2C|Add4~16_combout\ & ((\I2C|timer2_reg~4_combout\)))) # (!\I2C|SCL~9_combout\ & ((\I2C|timer2_reg\(8)) # ((\I2C|Add4~16_combout\ & \I2C|timer2_reg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|SCL~9_combout\,
	datab => \I2C|Add4~16_combout\,
	datac => \I2C|timer2_reg\(8),
	datad => \I2C|timer2_reg~4_combout\,
	combout => \I2C|timer2_reg~9_combout\);

-- Location: LCCOMB_X23_Y16_N0
\I2C|timer2_reg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~12_combout\ = (\I2C|SCL~9_combout\ & ((\I2C|Add4~22_combout\))) # (!\I2C|SCL~9_combout\ & (\I2C|timer2_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(11),
	datab => \I2C|Add4~22_combout\,
	datad => \I2C|SCL~9_combout\,
	combout => \I2C|timer2_reg~12_combout\);

-- Location: LCCOMB_X21_Y16_N0
\I2C|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal7~2_combout\ = (\I2C|Add7~20_combout\ & (!\I2C|Add7~22_combout\ & (\I2C|Add7~16_combout\ & \I2C|Add7~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~20_combout\,
	datab => \I2C|Add7~22_combout\,
	datac => \I2C|Add7~16_combout\,
	datad => \I2C|Add7~18_combout\,
	combout => \I2C|Equal7~2_combout\);

-- Location: LCCOMB_X24_Y15_N16
\I2C|timer2_reg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~15_combout\ = (\I2C|SCL~9_combout\ & (\I2C|Add4~28_combout\)) # (!\I2C|SCL~9_combout\ & ((\I2C|timer2_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add4~28_combout\,
	datac => \I2C|SCL~9_combout\,
	datad => \I2C|timer2_reg\(14),
	combout => \I2C|timer2_reg~15_combout\);

-- Location: LCCOMB_X21_Y15_N28
\I2C|Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal7~3_combout\ = (!\I2C|Add7~24_combout\ & (!\I2C|Add7~28_combout\ & (!\I2C|Add7~30_combout\ & \I2C|Add7~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~24_combout\,
	datab => \I2C|Add7~28_combout\,
	datac => \I2C|Add7~30_combout\,
	datad => \I2C|Add7~26_combout\,
	combout => \I2C|Equal7~3_combout\);

-- Location: LCCOMB_X22_Y15_N10
\I2C|Equal7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal7~4_combout\ = (\I2C|Equal7~2_combout\ & (\I2C|Equal7~0_combout\ & (\I2C|Equal7~1_combout\ & \I2C|Equal7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal7~2_combout\,
	datab => \I2C|Equal7~0_combout\,
	datac => \I2C|Equal7~1_combout\,
	datad => \I2C|Equal7~3_combout\,
	combout => \I2C|Equal7~4_combout\);

-- Location: LCCOMB_X22_Y18_N18
\I2C|timer2_reg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~22_combout\ = (\I2C|SCL~9_combout\ & ((\I2C|Add4~42_combout\))) # (!\I2C|SCL~9_combout\ & (\I2C|timer2_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(21),
	datac => \I2C|SCL~9_combout\,
	datad => \I2C|Add4~42_combout\,
	combout => \I2C|timer2_reg~22_combout\);

-- Location: LCCOMB_X24_Y15_N12
\I2C|timer2_reg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~23_combout\ = (\I2C|SCL~9_combout\ & ((\I2C|Add4~44_combout\))) # (!\I2C|SCL~9_combout\ & (\I2C|timer2_reg\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(22),
	datab => \I2C|Add4~44_combout\,
	datac => \I2C|SCL~9_combout\,
	combout => \I2C|timer2_reg~23_combout\);

-- Location: FF_X12_Y12_N13
\I2C|timer3_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|Add9~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(19));

-- Location: FF_X11_Y12_N9
\I2C|timer3_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(17));

-- Location: FF_X11_Y12_N3
\I2C|timer3_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(14));

-- Location: FF_X10_Y13_N3
\I2C|timer3_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer3_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(12));

-- Location: FF_X11_Y13_N1
\I2C|timer3_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|Add9~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(11));

-- Location: FF_X11_Y13_N27
\I2C|timer3_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(10));

-- Location: FF_X10_Y13_N27
\I2C|timer3_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer3_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(8));

-- Location: FF_X11_Y13_N17
\I2C|timer3_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(5));

-- Location: FF_X11_Y13_N15
\I2C|timer3_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(4));

-- Location: FF_X12_Y13_N11
\I2C|timer3_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|Add9~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(2));

-- Location: FF_X11_Y12_N17
\I2C|timer3_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(21));

-- Location: FF_X11_Y12_N27
\I2C|timer3_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(26));

-- Location: LCCOMB_X13_Y13_N4
\I2C|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal0~0_combout\ = (!\I2C|Add0~2_combout\ & (!\I2C|Add0~0_combout\ & (\I2C|Add0~6_combout\ & !\I2C|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~2_combout\,
	datab => \I2C|Add0~0_combout\,
	datac => \I2C|Add0~6_combout\,
	datad => \I2C|Add0~4_combout\,
	combout => \I2C|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y13_N2
\I2C|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal2~0_combout\ = (!\I2C|Add2~0_combout\ & (!\I2C|Add2~4_combout\ & (!\I2C|Add2~2_combout\ & \I2C|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~0_combout\,
	datab => \I2C|Add2~4_combout\,
	datac => \I2C|Add2~2_combout\,
	datad => \I2C|Add2~6_combout\,
	combout => \I2C|Equal2~0_combout\);

-- Location: LCCOMB_X12_Y15_N4
\I2C|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal5~0_combout\ = (!\I2C|Add5~4_combout\ & (!\I2C|Add5~2_combout\ & (!\I2C|Add5~0_combout\ & \I2C|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~4_combout\,
	datab => \I2C|Add5~2_combout\,
	datac => \I2C|Add5~0_combout\,
	datad => \I2C|Add5~6_combout\,
	combout => \I2C|Equal5~0_combout\);

-- Location: LCCOMB_X12_Y15_N26
\I2C|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal5~1_combout\ = (\I2C|Add5~14_combout\ & (!\I2C|Add5~10_combout\ & (!\I2C|Add5~8_combout\ & !\I2C|Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~14_combout\,
	datab => \I2C|Add5~10_combout\,
	datac => \I2C|Add5~8_combout\,
	datad => \I2C|Add5~12_combout\,
	combout => \I2C|Equal5~1_combout\);

-- Location: LCCOMB_X12_Y15_N8
\I2C|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal5~2_combout\ = (\I2C|Add5~16_combout\ & (!\I2C|Add5~22_combout\ & (\I2C|Add5~18_combout\ & !\I2C|Add5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~16_combout\,
	datab => \I2C|Add5~22_combout\,
	datac => \I2C|Add5~18_combout\,
	datad => \I2C|Add5~20_combout\,
	combout => \I2C|Equal5~2_combout\);

-- Location: LCCOMB_X12_Y15_N18
\I2C|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal5~3_combout\ = (!\I2C|Add5~28_combout\ & (\I2C|Add5~24_combout\ & (!\I2C|Add5~26_combout\ & !\I2C|Add5~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~28_combout\,
	datab => \I2C|Add5~24_combout\,
	datac => \I2C|Add5~26_combout\,
	datad => \I2C|Add5~30_combout\,
	combout => \I2C|Equal5~3_combout\);

-- Location: LCCOMB_X12_Y15_N12
\I2C|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal5~4_combout\ = (\I2C|Equal5~1_combout\ & (\I2C|Equal5~0_combout\ & (\I2C|Equal5~2_combout\ & \I2C|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal5~1_combout\,
	datab => \I2C|Equal5~0_combout\,
	datac => \I2C|Equal5~2_combout\,
	datad => \I2C|Equal5~3_combout\,
	combout => \I2C|Equal5~4_combout\);

-- Location: LCCOMB_X12_Y15_N10
\I2C|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal5~5_combout\ = (!\I2C|Add5~38_combout\ & (!\I2C|Add5~34_combout\ & (!\I2C|Add5~36_combout\ & \I2C|Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~38_combout\,
	datab => \I2C|Add5~34_combout\,
	datac => \I2C|Add5~36_combout\,
	datad => \I2C|Equal5~4_combout\,
	combout => \I2C|Equal5~5_combout\);

-- Location: LCCOMB_X12_Y15_N0
\I2C|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal5~6_combout\ = (!\I2C|Add5~32_combout\ & (!\I2C|Add5~42_combout\ & (!\I2C|Add5~40_combout\ & \I2C|Equal5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~32_combout\,
	datab => \I2C|Add5~42_combout\,
	datac => \I2C|Add5~40_combout\,
	datad => \I2C|Equal5~5_combout\,
	combout => \I2C|Equal5~6_combout\);

-- Location: LCCOMB_X12_Y15_N6
\I2C|Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal5~7_combout\ = (!\I2C|Add5~44_combout\ & (!\I2C|Add5~46_combout\ & \I2C|Equal5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~44_combout\,
	datac => \I2C|Add5~46_combout\,
	datad => \I2C|Equal5~6_combout\,
	combout => \I2C|Equal5~7_combout\);

-- Location: LCCOMB_X12_Y15_N20
\I2C|Equal5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal5~8_combout\ = (!\I2C|Add5~50_combout\ & (!\I2C|Add5~52_combout\ & (!\I2C|Add5~48_combout\ & \I2C|Equal5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~50_combout\,
	datab => \I2C|Add5~52_combout\,
	datac => \I2C|Add5~48_combout\,
	datad => \I2C|Equal5~7_combout\,
	combout => \I2C|Equal5~8_combout\);

-- Location: LCCOMB_X11_Y15_N2
\I2C|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal8~1_combout\ = (\I2C|Add8~14_combout\ & (!\I2C|Add8~10_combout\ & (!\I2C|Add8~8_combout\ & !\I2C|Add8~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~14_combout\,
	datab => \I2C|Add8~10_combout\,
	datac => \I2C|Add8~8_combout\,
	datad => \I2C|Add8~12_combout\,
	combout => \I2C|Equal8~1_combout\);

-- Location: LCCOMB_X10_Y13_N22
\I2C|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal9~2_combout\ = (\I2C|Add9~14_combout\ & (!\I2C|Add9~10_combout\ & (!\I2C|Add9~8_combout\ & !\I2C|Add9~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add9~14_combout\,
	datab => \I2C|Add9~10_combout\,
	datac => \I2C|Add9~8_combout\,
	datad => \I2C|Add9~12_combout\,
	combout => \I2C|Equal9~2_combout\);

-- Location: FF_X18_Y16_N7
\I2C|timer1_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|Add6~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(1));

-- Location: FF_X18_Y16_N13
\I2C|timer1_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|Add6~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(2));

-- Location: FF_X18_Y16_N11
\I2C|timer1_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|Add6~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(3));

-- Location: LCCOMB_X17_Y16_N4
\I2C|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal1~0_combout\ = (!\I2C|Add1~6_combout\ & (!\I2C|Add1~4_combout\ & (!\I2C|Add1~2_combout\ & !\I2C|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add1~6_combout\,
	datab => \I2C|Add1~4_combout\,
	datac => \I2C|Add1~2_combout\,
	datad => \I2C|Add1~0_combout\,
	combout => \I2C|Equal1~0_combout\);

-- Location: FF_X19_Y16_N3
\I2C|timer1_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|Add6~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(5));

-- Location: FF_X19_Y16_N21
\I2C|timer1_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(7));

-- Location: LCCOMB_X17_Y16_N2
\I2C|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal1~1_combout\ = (!\I2C|Add1~14_combout\ & (!\I2C|Add1~12_combout\ & (\I2C|Add1~8_combout\ & !\I2C|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add1~14_combout\,
	datab => \I2C|Add1~12_combout\,
	datac => \I2C|Add1~8_combout\,
	datad => \I2C|Add1~10_combout\,
	combout => \I2C|Equal1~1_combout\);

-- Location: FF_X19_Y14_N31
\I2C|timer1_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer1_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(9));

-- Location: FF_X19_Y16_N5
\I2C|timer1_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|Add6~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(11));

-- Location: LCCOMB_X17_Y16_N0
\I2C|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal1~2_combout\ = (!\I2C|Add1~22_combout\ & (\I2C|Add1~18_combout\ & (\I2C|Add1~20_combout\ & \I2C|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add1~22_combout\,
	datab => \I2C|Add1~18_combout\,
	datac => \I2C|Add1~20_combout\,
	datad => \I2C|Add1~16_combout\,
	combout => \I2C|Equal1~2_combout\);

-- Location: FF_X19_Y16_N31
\I2C|timer1_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(12));

-- Location: FF_X19_Y15_N3
\I2C|timer1_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(14));

-- Location: FF_X19_Y15_N5
\I2C|timer1_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(15));

-- Location: LCCOMB_X17_Y15_N28
\I2C|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal1~3_combout\ = (!\I2C|Add1~30_combout\ & (\I2C|Add1~26_combout\ & (!\I2C|Add1~24_combout\ & !\I2C|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add1~30_combout\,
	datab => \I2C|Add1~26_combout\,
	datac => \I2C|Add1~24_combout\,
	datad => \I2C|Add1~28_combout\,
	combout => \I2C|Equal1~3_combout\);

-- Location: LCCOMB_X16_Y16_N4
\I2C|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal1~4_combout\ = (\I2C|Equal1~1_combout\ & (\I2C|Equal1~3_combout\ & (\I2C|Equal1~2_combout\ & \I2C|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal1~1_combout\,
	datab => \I2C|Equal1~3_combout\,
	datac => \I2C|Equal1~2_combout\,
	datad => \I2C|Equal1~0_combout\,
	combout => \I2C|Equal1~4_combout\);

-- Location: FF_X19_Y15_N7
\I2C|timer1_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(16));

-- Location: LCCOMB_X18_Y15_N28
\I2C|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal1~5_combout\ = (!\I2C|Add1~32_combout\ & (!\I2C|Add1~34_combout\ & (!\I2C|Add1~36_combout\ & !\I2C|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add1~32_combout\,
	datab => \I2C|Add1~34_combout\,
	datac => \I2C|Add1~36_combout\,
	datad => \I2C|Add1~38_combout\,
	combout => \I2C|Equal1~5_combout\);

-- Location: FF_X19_Y15_N21
\I2C|timer1_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(23));

-- Location: LCCOMB_X18_Y15_N30
\I2C|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal1~6_combout\ = (!\I2C|Add1~42_combout\ & (!\I2C|Add1~44_combout\ & (!\I2C|Add1~40_combout\ & !\I2C|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add1~42_combout\,
	datab => \I2C|Add1~44_combout\,
	datac => \I2C|Add1~40_combout\,
	datad => \I2C|Add1~46_combout\,
	combout => \I2C|Equal1~6_combout\);

-- Location: FF_X19_Y15_N23
\I2C|timer1_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(24));

-- Location: FF_X19_Y15_N25
\I2C|timer1_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(25));

-- Location: FF_X19_Y15_N27
\I2C|timer1_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(26));

-- Location: LCCOMB_X17_Y15_N30
\I2C|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal1~7_combout\ = (!\I2C|Add1~48_combout\ & (!\I2C|Add1~52_combout\ & !\I2C|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~48_combout\,
	datac => \I2C|Add1~52_combout\,
	datad => \I2C|Add1~50_combout\,
	combout => \I2C|Equal1~7_combout\);

-- Location: LCCOMB_X16_Y16_N2
\I2C|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal1~8_combout\ = (\I2C|Equal1~7_combout\ & (\I2C|Equal1~4_combout\ & (\I2C|Equal1~6_combout\ & \I2C|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal1~7_combout\,
	datab => \I2C|Equal1~4_combout\,
	datac => \I2C|Equal1~6_combout\,
	datad => \I2C|Equal1~5_combout\,
	combout => \I2C|Equal1~8_combout\);

-- Location: LCCOMB_X16_Y16_N12
\I2C|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal3~0_combout\ = (!\I2C|Add3~0_combout\ & (!\I2C|Add3~4_combout\ & (!\I2C|Add3~2_combout\ & !\I2C|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~0_combout\,
	datab => \I2C|Add3~4_combout\,
	datac => \I2C|Add3~2_combout\,
	datad => \I2C|Add3~6_combout\,
	combout => \I2C|Equal3~0_combout\);

-- Location: LCCOMB_X16_Y16_N22
\I2C|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal3~1_combout\ = (!\I2C|Add3~14_combout\ & (!\I2C|Add3~12_combout\ & (\I2C|Add3~8_combout\ & !\I2C|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~14_combout\,
	datab => \I2C|Add3~12_combout\,
	datac => \I2C|Add3~8_combout\,
	datad => \I2C|Add3~10_combout\,
	combout => \I2C|Equal3~1_combout\);

-- Location: LCCOMB_X16_Y16_N0
\I2C|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal3~2_combout\ = (!\I2C|Add3~22_combout\ & (\I2C|Add3~18_combout\ & (\I2C|Add3~20_combout\ & \I2C|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~22_combout\,
	datab => \I2C|Add3~18_combout\,
	datac => \I2C|Add3~20_combout\,
	datad => \I2C|Add3~16_combout\,
	combout => \I2C|Equal3~2_combout\);

-- Location: LCCOMB_X16_Y15_N0
\I2C|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal3~3_combout\ = (!\I2C|Add3~30_combout\ & (\I2C|Add3~26_combout\ & (!\I2C|Add3~24_combout\ & !\I2C|Add3~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~30_combout\,
	datab => \I2C|Add3~26_combout\,
	datac => \I2C|Add3~24_combout\,
	datad => \I2C|Add3~28_combout\,
	combout => \I2C|Equal3~3_combout\);

-- Location: LCCOMB_X16_Y16_N30
\I2C|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal3~4_combout\ = (\I2C|Equal3~0_combout\ & (\I2C|Equal3~3_combout\ & (\I2C|Equal3~1_combout\ & \I2C|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal3~0_combout\,
	datab => \I2C|Equal3~3_combout\,
	datac => \I2C|Equal3~1_combout\,
	datad => \I2C|Equal3~2_combout\,
	combout => \I2C|Equal3~4_combout\);

-- Location: LCCOMB_X16_Y15_N2
\I2C|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal3~5_combout\ = (!\I2C|Add3~36_combout\ & (!\I2C|Add3~38_combout\ & (!\I2C|Add3~34_combout\ & !\I2C|Add3~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~36_combout\,
	datab => \I2C|Add3~38_combout\,
	datac => \I2C|Add3~34_combout\,
	datad => \I2C|Add3~32_combout\,
	combout => \I2C|Equal3~5_combout\);

-- Location: LCCOMB_X16_Y15_N12
\I2C|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal3~6_combout\ = (!\I2C|Add3~46_combout\ & (!\I2C|Add3~44_combout\ & (!\I2C|Add3~40_combout\ & !\I2C|Add3~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~46_combout\,
	datab => \I2C|Add3~44_combout\,
	datac => \I2C|Add3~40_combout\,
	datad => \I2C|Add3~42_combout\,
	combout => \I2C|Equal3~6_combout\);

-- Location: LCCOMB_X16_Y15_N22
\I2C|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal3~7_combout\ = (!\I2C|Add3~48_combout\ & (!\I2C|Add3~50_combout\ & !\I2C|Add3~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~48_combout\,
	datac => \I2C|Add3~50_combout\,
	datad => \I2C|Add3~52_combout\,
	combout => \I2C|Equal3~7_combout\);

-- Location: LCCOMB_X16_Y15_N8
\I2C|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal3~8_combout\ = (\I2C|Equal3~7_combout\ & (\I2C|Equal3~5_combout\ & (\I2C|Equal3~4_combout\ & \I2C|Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal3~7_combout\,
	datab => \I2C|Equal3~5_combout\,
	datac => \I2C|Equal3~4_combout\,
	datad => \I2C|Equal3~6_combout\,
	combout => \I2C|Equal3~8_combout\);

-- Location: LCCOMB_X19_Y14_N26
\I2C|Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal6~3_combout\ = (\I2C|Add6~26_combout\ & (!\I2C|Add6~30_combout\ & (!\I2C|Add6~24_combout\ & !\I2C|Add6~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add6~26_combout\,
	datab => \I2C|Add6~30_combout\,
	datac => \I2C|Add6~24_combout\,
	datad => \I2C|Add6~28_combout\,
	combout => \I2C|Equal6~3_combout\);

-- Location: LCCOMB_X19_Y15_N30
\I2C|Equal6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal6~6_combout\ = (!\I2C|Add6~44_combout\ & (!\I2C|Add6~46_combout\ & (!\I2C|Add6~40_combout\ & !\I2C|Add6~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add6~44_combout\,
	datab => \I2C|Add6~46_combout\,
	datac => \I2C|Add6~40_combout\,
	datad => \I2C|Add6~42_combout\,
	combout => \I2C|Equal6~6_combout\);

-- Location: LCCOMB_X17_Y22_N6
\display|prescaler~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|prescaler~1_combout\ = (\display|Add0~8_combout\ & (((!\display|Equal0~4_combout\) # (!\display|Equal0~6_combout\)) # (!\display|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~5_combout\,
	datab => \display|Add0~8_combout\,
	datac => \display|Equal0~6_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|prescaler~1_combout\);

-- Location: LCCOMB_X17_Y22_N4
\display|prescaler~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|prescaler~2_combout\ = (\display|Add0~12_combout\ & (((!\display|Equal0~4_combout\) # (!\display|Equal0~6_combout\)) # (!\display|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~5_combout\,
	datab => \display|Add0~12_combout\,
	datac => \display|Equal0~6_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|prescaler~2_combout\);

-- Location: LCCOMB_X17_Y22_N20
\display|prescaler~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|prescaler~4_combout\ = (\display|Add0~18_combout\ & (((!\display|Equal0~4_combout\) # (!\display|Equal0~6_combout\)) # (!\display|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~5_combout\,
	datab => \display|Add0~18_combout\,
	datac => \display|Equal0~6_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|prescaler~4_combout\);

-- Location: LCCOMB_X17_Y21_N4
\display|prescaler~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|prescaler~5_combout\ = (\display|Add0~28_combout\ & (((!\display|Equal0~4_combout\) # (!\display|Equal0~6_combout\)) # (!\display|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~5_combout\,
	datab => \display|Add0~28_combout\,
	datac => \display|Equal0~6_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|prescaler~5_combout\);

-- Location: LCCOMB_X17_Y13_N4
\timer2_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~0_combout\ = (\Add0~14_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer2_reg~0_combout\);

-- Location: LCCOMB_X17_Y13_N6
\timer2_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~1_combout\ = (\Add0~24_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer2_reg~1_combout\);

-- Location: LCCOMB_X17_Y12_N30
\timer2_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~2_combout\ = (\Add0~26_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~26_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer2_reg~2_combout\);

-- Location: LCCOMB_X17_Y12_N20
\timer2_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~3_combout\ = (\Add0~28_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer2_reg~3_combout\);

-- Location: LCCOMB_X17_Y12_N6
\timer2_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~4_combout\ = (\Add0~30_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer2_reg~4_combout\);

-- Location: LCCOMB_X17_Y12_N4
\timer2_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~6_combout\ = (\Add0~38_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer2_reg~6_combout\);

-- Location: LCCOMB_X22_Y16_N16
\I2C|Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector61~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~3_combout\)))) # (!\I2C|WideOr1~combout\ & (\I2C|Add7~6_combout\ & (!\I2C|Equal7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~6_combout\,
	datab => \I2C|WideOr1~combout\,
	datac => \I2C|Equal7~8_combout\,
	datad => \I2C|timer2_reg~3_combout\,
	combout => \I2C|Selector61~0_combout\);

-- Location: LCCOMB_X22_Y16_N12
\I2C|Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector56~0_combout\ = (\I2C|WideOr1~combout\ & (\I2C|timer2_reg~9_combout\)) # (!\I2C|WideOr1~combout\ & (((\I2C|Add7~16_combout\ & !\I2C|Equal7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~9_combout\,
	datab => \I2C|Add7~16_combout\,
	datac => \I2C|Equal7~8_combout\,
	datad => \I2C|WideOr1~combout\,
	combout => \I2C|Selector56~0_combout\);

-- Location: LCCOMB_X22_Y16_N2
\I2C|Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector53~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~12_combout\)))) # (!\I2C|WideOr1~combout\ & (\I2C|Add7~22_combout\ & (!\I2C|Equal7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~22_combout\,
	datab => \I2C|Equal7~8_combout\,
	datac => \I2C|timer2_reg~12_combout\,
	datad => \I2C|WideOr1~combout\,
	combout => \I2C|Selector53~0_combout\);

-- Location: LCCOMB_X24_Y15_N20
\I2C|Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector50~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~15_combout\)))) # (!\I2C|WideOr1~combout\ & (!\I2C|Equal7~8_combout\ & (\I2C|Add7~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr1~combout\,
	datab => \I2C|Equal7~8_combout\,
	datac => \I2C|Add7~28_combout\,
	datad => \I2C|timer2_reg~15_combout\,
	combout => \I2C|Selector50~0_combout\);

-- Location: LCCOMB_X22_Y18_N16
\I2C|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector43~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~22_combout\)))) # (!\I2C|WideOr1~combout\ & (!\I2C|Equal7~8_combout\ & (\I2C|Add7~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr1~combout\,
	datab => \I2C|Equal7~8_combout\,
	datac => \I2C|Add7~42_combout\,
	datad => \I2C|timer2_reg~22_combout\,
	combout => \I2C|Selector43~0_combout\);

-- Location: LCCOMB_X24_Y15_N30
\I2C|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector42~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~23_combout\)))) # (!\I2C|WideOr1~combout\ & (!\I2C|Equal7~8_combout\ & (\I2C|Add7~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr1~combout\,
	datab => \I2C|Equal7~8_combout\,
	datac => \I2C|Add7~44_combout\,
	datad => \I2C|timer2_reg~23_combout\,
	combout => \I2C|Selector42~0_combout\);

-- Location: LCCOMB_X10_Y13_N2
\I2C|timer3_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer3_reg~1_combout\ = (\I2C|Add9~24_combout\ & ((\I2C|Add9~48_combout\) # ((!\I2C|timer3_reg~0_combout\) # (!\I2C|Equal9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add9~24_combout\,
	datab => \I2C|Add9~48_combout\,
	datac => \I2C|Equal9~5_combout\,
	datad => \I2C|timer3_reg~0_combout\,
	combout => \I2C|timer3_reg~1_combout\);

-- Location: LCCOMB_X10_Y13_N26
\I2C|timer3_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer3_reg~3_combout\ = (\I2C|Add9~16_combout\ & ((\I2C|Add9~48_combout\) # ((!\I2C|timer3_reg~0_combout\) # (!\I2C|Equal9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add9~16_combout\,
	datab => \I2C|Add9~48_combout\,
	datac => \I2C|Equal9~5_combout\,
	datad => \I2C|timer3_reg~0_combout\,
	combout => \I2C|timer3_reg~3_combout\);

-- Location: LCCOMB_X19_Y14_N30
\I2C|timer1_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer1_reg~2_combout\ = (\I2C|Add6~18_combout\ & !\I2C|Equal6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|Add6~18_combout\,
	datad => \I2C|Equal6~8_combout\,
	combout => \I2C|timer1_reg~2_combout\);

-- Location: LCCOMB_X22_Y16_N0
\I2C|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector4~0_combout\ = (!\I2C|WideOr1~1_combout\ & (\I2C|SDA~reg0_q\ & !\I2C|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|WideOr1~1_combout\,
	datac => \I2C|SDA~reg0_q\,
	datad => \I2C|WideOr1~0_combout\,
	combout => \I2C|Selector4~0_combout\);

-- Location: LCCOMB_X22_Y14_N6
\I2C|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|WideOr0~1_combout\ = (!\I2C|state.000001000~q\ & (!\I2C|state.000001100~q\ & (!\I2C|state.000001110~q\ & !\I2C|state.000001010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state.000001000~q\,
	datab => \I2C|state.000001100~q\,
	datac => \I2C|state.000001110~q\,
	datad => \I2C|state.000001010~q\,
	combout => \I2C|WideOr0~1_combout\);

-- Location: LCCOMB_X22_Y16_N22
\tens[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tens[0]~feeder_combout\ = \I2C|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|data\(0),
	combout => \tens[0]~feeder_combout\);

-- Location: IOOBUF_X28_Y24_N9
\SDA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I2C|SDA~reg0_q\,
	oe => VCC,
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

-- Location: IOOBUF_X28_Y24_N2
\SCL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I2C|SCL~q\,
	devoe => ww_devoe,
	o => \SCL~output_o\);

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

-- Location: LCCOMB_X21_Y18_N12
\I2C|state_start.000000011~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_start.000000011~feeder_combout\ = \I2C|state_start.000000010~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|state_start.000000010~q\,
	combout => \I2C|state_start.000000011~feeder_combout\);

-- Location: LCCOMB_X11_Y14_N18
\I2C|Add8~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~44_combout\ = (\I2C|Add5~44_combout\ & (\I2C|Add8~43\ $ (GND))) # (!\I2C|Add5~44_combout\ & (!\I2C|Add8~43\ & VCC))
-- \I2C|Add8~45\ = CARRY((\I2C|Add5~44_combout\ & !\I2C|Add8~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~44_combout\,
	datad => VCC,
	cin => \I2C|Add8~43\,
	combout => \I2C|Add8~44_combout\,
	cout => \I2C|Add8~45\);

-- Location: LCCOMB_X11_Y14_N20
\I2C|Add8~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~46_combout\ = (\I2C|Add5~46_combout\ & (!\I2C|Add8~45\)) # (!\I2C|Add5~46_combout\ & ((\I2C|Add8~45\) # (GND)))
-- \I2C|Add8~47\ = CARRY((!\I2C|Add8~45\) # (!\I2C|Add5~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~46_combout\,
	datad => VCC,
	cin => \I2C|Add8~45\,
	combout => \I2C|Add8~46_combout\,
	cout => \I2C|Add8~47\);

-- Location: LCCOMB_X11_Y14_N22
\I2C|Add8~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~48_combout\ = (\I2C|Add5~48_combout\ & (\I2C|Add8~47\ $ (GND))) # (!\I2C|Add5~48_combout\ & (!\I2C|Add8~47\ & VCC))
-- \I2C|Add8~49\ = CARRY((\I2C|Add5~48_combout\ & !\I2C|Add8~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~48_combout\,
	datad => VCC,
	cin => \I2C|Add8~47\,
	combout => \I2C|Add8~48_combout\,
	cout => \I2C|Add8~49\);

-- Location: LCCOMB_X11_Y14_N24
\I2C|Add8~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~50_combout\ = (\I2C|Add5~50_combout\ & (!\I2C|Add8~49\)) # (!\I2C|Add5~50_combout\ & ((\I2C|Add8~49\) # (GND)))
-- \I2C|Add8~51\ = CARRY((!\I2C|Add8~49\) # (!\I2C|Add5~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~50_combout\,
	datad => VCC,
	cin => \I2C|Add8~49\,
	combout => \I2C|Add8~50_combout\,
	cout => \I2C|Add8~51\);

-- Location: LCCOMB_X11_Y12_N20
\I2C|Add9~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~46_combout\ = (\I2C|Add8~46_combout\ & (!\I2C|Add9~45\)) # (!\I2C|Add8~46_combout\ & ((\I2C|Add9~45\) # (GND)))
-- \I2C|Add9~47\ = CARRY((!\I2C|Add9~45\) # (!\I2C|Add8~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~46_combout\,
	datad => VCC,
	cin => \I2C|Add9~45\,
	combout => \I2C|Add9~46_combout\,
	cout => \I2C|Add9~47\);

-- Location: LCCOMB_X11_Y12_N22
\I2C|Add9~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~48_combout\ = (\I2C|Add8~48_combout\ & (\I2C|Add9~47\ $ (GND))) # (!\I2C|Add8~48_combout\ & (!\I2C|Add9~47\ & VCC))
-- \I2C|Add9~49\ = CARRY((\I2C|Add8~48_combout\ & !\I2C|Add9~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~48_combout\,
	datad => VCC,
	cin => \I2C|Add9~47\,
	combout => \I2C|Add9~48_combout\,
	cout => \I2C|Add9~49\);

-- Location: LCCOMB_X11_Y12_N24
\I2C|Add9~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~50_combout\ = (\I2C|Add8~50_combout\ & (!\I2C|Add9~49\)) # (!\I2C|Add8~50_combout\ & ((\I2C|Add9~49\) # (GND)))
-- \I2C|Add9~51\ = CARRY((!\I2C|Add9~49\) # (!\I2C|Add8~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add8~50_combout\,
	datad => VCC,
	cin => \I2C|Add9~49\,
	combout => \I2C|Add9~50_combout\,
	cout => \I2C|Add9~51\);

-- Location: FF_X11_Y12_N25
\I2C|timer3_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(25));

-- Location: FF_X11_Y12_N23
\I2C|timer3_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(24));

-- Location: FF_X11_Y12_N21
\I2C|timer3_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(23));

-- Location: LCCOMB_X13_Y12_N8
\I2C|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~34_combout\ = (\I2C|Add0~34_combout\ & (!\I2C|Add2~33\)) # (!\I2C|Add0~34_combout\ & ((\I2C|Add2~33\) # (GND)))
-- \I2C|Add2~35\ = CARRY((!\I2C|Add2~33\) # (!\I2C|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~34_combout\,
	datad => VCC,
	cin => \I2C|Add2~33\,
	combout => \I2C|Add2~34_combout\,
	cout => \I2C|Add2~35\);

-- Location: LCCOMB_X11_Y14_N14
\I2C|Add8~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~40_combout\ = (\I2C|Add5~40_combout\ & (\I2C|Add8~39\ $ (GND))) # (!\I2C|Add5~40_combout\ & (!\I2C|Add8~39\ & VCC))
-- \I2C|Add8~41\ = CARRY((\I2C|Add5~40_combout\ & !\I2C|Add8~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~40_combout\,
	datad => VCC,
	cin => \I2C|Add8~39\,
	combout => \I2C|Add8~40_combout\,
	cout => \I2C|Add8~41\);

-- Location: LCCOMB_X12_Y12_N20
\I2C|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~46_combout\ = (\I2C|timer3_reg\(23) & (!\I2C|Add0~45\)) # (!\I2C|timer3_reg\(23) & ((\I2C|Add0~45\) # (GND)))
-- \I2C|Add0~47\ = CARRY((!\I2C|Add0~45\) # (!\I2C|timer3_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer3_reg\(23),
	datad => VCC,
	cin => \I2C|Add0~45\,
	combout => \I2C|Add0~46_combout\,
	cout => \I2C|Add0~47\);

-- Location: LCCOMB_X13_Y14_N10
\I2C|Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~36_combout\ = (\I2C|Add2~36_combout\ & (\I2C|Add5~35\ $ (GND))) # (!\I2C|Add2~36_combout\ & (!\I2C|Add5~35\ & VCC))
-- \I2C|Add5~37\ = CARRY((\I2C|Add2~36_combout\ & !\I2C|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~36_combout\,
	datad => VCC,
	cin => \I2C|Add5~35\,
	combout => \I2C|Add5~36_combout\,
	cout => \I2C|Add5~37\);

-- Location: LCCOMB_X11_Y14_N8
\I2C|Add8~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~34_combout\ = (\I2C|Add5~34_combout\ & (!\I2C|Add8~33\)) # (!\I2C|Add5~34_combout\ & ((\I2C|Add8~33\) # (GND)))
-- \I2C|Add8~35\ = CARRY((!\I2C|Add8~33\) # (!\I2C|Add5~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~34_combout\,
	datad => VCC,
	cin => \I2C|Add8~33\,
	combout => \I2C|Add8~34_combout\,
	cout => \I2C|Add8~35\);

-- Location: LCCOMB_X11_Y14_N10
\I2C|Add8~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~36_combout\ = (\I2C|Add5~36_combout\ & (\I2C|Add8~35\ $ (GND))) # (!\I2C|Add5~36_combout\ & (!\I2C|Add8~35\ & VCC))
-- \I2C|Add8~37\ = CARRY((\I2C|Add5~36_combout\ & !\I2C|Add8~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add5~36_combout\,
	datad => VCC,
	cin => \I2C|Add8~35\,
	combout => \I2C|Add8~36_combout\,
	cout => \I2C|Add8~37\);

-- Location: LCCOMB_X11_Y14_N12
\I2C|Add8~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~38_combout\ = (\I2C|Add5~38_combout\ & (!\I2C|Add8~37\)) # (!\I2C|Add5~38_combout\ & ((\I2C|Add8~37\) # (GND)))
-- \I2C|Add8~39\ = CARRY((!\I2C|Add8~37\) # (!\I2C|Add5~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add5~38_combout\,
	datad => VCC,
	cin => \I2C|Add8~37\,
	combout => \I2C|Add8~38_combout\,
	cout => \I2C|Add8~39\);

-- Location: LCCOMB_X11_Y12_N6
\I2C|Add9~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~32_combout\ = (\I2C|Add8~32_combout\ & (\I2C|Add9~31\ $ (GND))) # (!\I2C|Add8~32_combout\ & (!\I2C|Add9~31\ & VCC))
-- \I2C|Add9~33\ = CARRY((\I2C|Add8~32_combout\ & !\I2C|Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~32_combout\,
	datad => VCC,
	cin => \I2C|Add9~31\,
	combout => \I2C|Add9~32_combout\,
	cout => \I2C|Add9~33\);

-- Location: LCCOMB_X11_Y12_N8
\I2C|Add9~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~34_combout\ = (\I2C|Add8~34_combout\ & (!\I2C|Add9~33\)) # (!\I2C|Add8~34_combout\ & ((\I2C|Add9~33\) # (GND)))
-- \I2C|Add9~35\ = CARRY((!\I2C|Add9~33\) # (!\I2C|Add8~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add8~34_combout\,
	datad => VCC,
	cin => \I2C|Add9~33\,
	combout => \I2C|Add9~34_combout\,
	cout => \I2C|Add9~35\);

-- Location: LCCOMB_X11_Y12_N10
\I2C|Add9~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~36_combout\ = (\I2C|Add8~36_combout\ & (\I2C|Add9~35\ $ (GND))) # (!\I2C|Add8~36_combout\ & (!\I2C|Add9~35\ & VCC))
-- \I2C|Add9~37\ = CARRY((\I2C|Add8~36_combout\ & !\I2C|Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~36_combout\,
	datad => VCC,
	cin => \I2C|Add9~35\,
	combout => \I2C|Add9~36_combout\,
	cout => \I2C|Add9~37\);

-- Location: LCCOMB_X11_Y12_N12
\I2C|Add9~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~38_combout\ = (\I2C|Add8~38_combout\ & (!\I2C|Add9~37\)) # (!\I2C|Add8~38_combout\ & ((\I2C|Add9~37\) # (GND)))
-- \I2C|Add9~39\ = CARRY((!\I2C|Add9~37\) # (!\I2C|Add8~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add8~38_combout\,
	datad => VCC,
	cin => \I2C|Add9~37\,
	combout => \I2C|Add9~38_combout\,
	cout => \I2C|Add9~39\);

-- Location: LCCOMB_X11_Y12_N14
\I2C|Add9~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~40_combout\ = (\I2C|Add8~40_combout\ & (\I2C|Add9~39\ $ (GND))) # (!\I2C|Add8~40_combout\ & (!\I2C|Add9~39\ & VCC))
-- \I2C|Add9~41\ = CARRY((\I2C|Add8~40_combout\ & !\I2C|Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~40_combout\,
	datad => VCC,
	cin => \I2C|Add9~39\,
	combout => \I2C|Add9~40_combout\,
	cout => \I2C|Add9~41\);

-- Location: FF_X11_Y12_N29
\I2C|timer3_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|Add9~40_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(20));

-- Location: FF_X11_Y12_N31
\I2C|timer3_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|Add9~36_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(18));

-- Location: LCCOMB_X11_Y12_N0
\I2C|Add9~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~26_combout\ = (\I2C|Add8~26_combout\ & (!\I2C|Add9~25\)) # (!\I2C|Add8~26_combout\ & ((\I2C|Add9~25\) # (GND)))
-- \I2C|Add9~27\ = CARRY((!\I2C|Add9~25\) # (!\I2C|Add8~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~26_combout\,
	datad => VCC,
	cin => \I2C|Add9~25\,
	combout => \I2C|Add9~26_combout\,
	cout => \I2C|Add9~27\);

-- Location: FF_X11_Y12_N1
\I2C|timer3_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(13));

-- Location: LCCOMB_X12_Y13_N6
\I2C|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~0_combout\ = timer2_reg(0) $ (VCC)
-- \I2C|Add0~1\ = CARRY(timer2_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(0),
	datad => VCC,
	combout => \I2C|Add0~0_combout\,
	cout => \I2C|Add0~1\);

-- Location: LCCOMB_X13_Y13_N6
\I2C|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~0_combout\ = \I2C|Add0~0_combout\ $ (VCC)
-- \I2C|Add2~1\ = CARRY(\I2C|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add0~0_combout\,
	datad => VCC,
	combout => \I2C|Add2~0_combout\,
	cout => \I2C|Add2~1\);

-- Location: LCCOMB_X13_Y15_N8
\I2C|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~2_combout\ = (\I2C|Add2~2_combout\ & (!\I2C|Add5~1\)) # (!\I2C|Add2~2_combout\ & ((\I2C|Add5~1\) # (GND)))
-- \I2C|Add5~3\ = CARRY((!\I2C|Add5~1\) # (!\I2C|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~2_combout\,
	datad => VCC,
	cin => \I2C|Add5~1\,
	combout => \I2C|Add5~2_combout\,
	cout => \I2C|Add5~3\);

-- Location: LCCOMB_X11_Y15_N6
\I2C|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~0_combout\ = \I2C|Add5~0_combout\ $ (VCC)
-- \I2C|Add8~1\ = CARRY(\I2C|Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~0_combout\,
	datad => VCC,
	combout => \I2C|Add8~0_combout\,
	cout => \I2C|Add8~1\);

-- Location: LCCOMB_X11_Y15_N8
\I2C|Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~2_combout\ = (\I2C|Add5~2_combout\ & (!\I2C|Add8~1\)) # (!\I2C|Add5~2_combout\ & ((\I2C|Add8~1\) # (GND)))
-- \I2C|Add8~3\ = CARRY((!\I2C|Add8~1\) # (!\I2C|Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add5~2_combout\,
	datad => VCC,
	cin => \I2C|Add8~1\,
	combout => \I2C|Add8~2_combout\,
	cout => \I2C|Add8~3\);

-- Location: LCCOMB_X11_Y13_N6
\I2C|Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~0_combout\ = \I2C|Add8~0_combout\ $ (VCC)
-- \I2C|Add9~1\ = CARRY(\I2C|Add8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~0_combout\,
	datad => VCC,
	combout => \I2C|Add9~0_combout\,
	cout => \I2C|Add9~1\);

-- Location: LCCOMB_X11_Y13_N8
\I2C|Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~2_combout\ = (\I2C|Add8~2_combout\ & (!\I2C|Add9~1\)) # (!\I2C|Add8~2_combout\ & ((\I2C|Add9~1\) # (GND)))
-- \I2C|Add9~3\ = CARRY((!\I2C|Add9~1\) # (!\I2C|Add8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add8~2_combout\,
	datad => VCC,
	cin => \I2C|Add9~1\,
	combout => \I2C|Add9~2_combout\,
	cout => \I2C|Add9~3\);

-- Location: LCCOMB_X11_Y15_N10
\I2C|Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~4_combout\ = (\I2C|Add5~4_combout\ & (\I2C|Add8~3\ $ (GND))) # (!\I2C|Add5~4_combout\ & (!\I2C|Add8~3\ & VCC))
-- \I2C|Add8~5\ = CARRY((\I2C|Add5~4_combout\ & !\I2C|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~4_combout\,
	datad => VCC,
	cin => \I2C|Add8~3\,
	combout => \I2C|Add8~4_combout\,
	cout => \I2C|Add8~5\);

-- Location: LCCOMB_X11_Y13_N12
\I2C|Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~6_combout\ = (\I2C|Add9~5\ & (((\I2C|Equal8~8_combout\)) # (!\I2C|Add8~6_combout\))) # (!\I2C|Add9~5\ & (((\I2C|Add8~6_combout\ & !\I2C|Equal8~8_combout\)) # (GND)))
-- \I2C|Add9~7\ = CARRY(((\I2C|Equal8~8_combout\) # (!\I2C|Add9~5\)) # (!\I2C|Add8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~6_combout\,
	datab => \I2C|Equal8~8_combout\,
	datad => VCC,
	cin => \I2C|Add9~5\,
	combout => \I2C|Add9~6_combout\,
	cout => \I2C|Add9~7\);

-- Location: LCCOMB_X10_Y13_N28
\I2C|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal9~1_combout\ = (!\I2C|Add9~4_combout\ & (!\I2C|Add9~2_combout\ & (!\I2C|Add9~0_combout\ & \I2C|Add9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add9~4_combout\,
	datab => \I2C|Add9~2_combout\,
	datac => \I2C|Add9~0_combout\,
	datad => \I2C|Add9~6_combout\,
	combout => \I2C|Equal9~1_combout\);

-- Location: LCCOMB_X13_Y13_N10
\I2C|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~4_combout\ = (\I2C|Add0~4_combout\ & (\I2C|Add2~3\ $ (GND))) # (!\I2C|Add0~4_combout\ & (!\I2C|Add2~3\ & VCC))
-- \I2C|Add2~5\ = CARRY((\I2C|Add0~4_combout\ & !\I2C|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~4_combout\,
	datad => VCC,
	cin => \I2C|Add2~3\,
	combout => \I2C|Add2~4_combout\,
	cout => \I2C|Add2~5\);

-- Location: LCCOMB_X13_Y13_N14
\I2C|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~8_combout\ = (\I2C|Add0~8_combout\ & (\I2C|Add2~7\ $ (GND))) # (!\I2C|Add0~8_combout\ & (!\I2C|Add2~7\ & VCC))
-- \I2C|Add2~9\ = CARRY((\I2C|Add0~8_combout\ & !\I2C|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~8_combout\,
	datad => VCC,
	cin => \I2C|Add2~7\,
	combout => \I2C|Add2~8_combout\,
	cout => \I2C|Add2~9\);

-- Location: LCCOMB_X13_Y15_N12
\I2C|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~6_combout\ = (\I2C|Add5~5\ & (((\I2C|Equal2~8_combout\)) # (!\I2C|Add2~6_combout\))) # (!\I2C|Add5~5\ & (((\I2C|Add2~6_combout\ & !\I2C|Equal2~8_combout\)) # (GND)))
-- \I2C|Add5~7\ = CARRY(((\I2C|Equal2~8_combout\) # (!\I2C|Add5~5\)) # (!\I2C|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~6_combout\,
	datab => \I2C|Equal2~8_combout\,
	datad => VCC,
	cin => \I2C|Add5~5\,
	combout => \I2C|Add5~6_combout\,
	cout => \I2C|Add5~7\);

-- Location: LCCOMB_X13_Y15_N14
\I2C|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~8_combout\ = (\I2C|Add2~8_combout\ & (\I2C|Add5~7\ $ (GND))) # (!\I2C|Add2~8_combout\ & (!\I2C|Add5~7\ & VCC))
-- \I2C|Add5~9\ = CARRY((\I2C|Add2~8_combout\ & !\I2C|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add2~8_combout\,
	datad => VCC,
	cin => \I2C|Add5~7\,
	combout => \I2C|Add5~8_combout\,
	cout => \I2C|Add5~9\);

-- Location: LCCOMB_X11_Y15_N12
\I2C|Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~6_combout\ = (\I2C|Add8~5\ & ((\I2C|Equal5~8_combout\) # ((!\I2C|Add5~6_combout\)))) # (!\I2C|Add8~5\ & (((!\I2C|Equal5~8_combout\ & \I2C|Add5~6_combout\)) # (GND)))
-- \I2C|Add8~7\ = CARRY((\I2C|Equal5~8_combout\) # ((!\I2C|Add8~5\) # (!\I2C|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal5~8_combout\,
	datab => \I2C|Add5~6_combout\,
	datad => VCC,
	cin => \I2C|Add8~5\,
	combout => \I2C|Add8~6_combout\,
	cout => \I2C|Add8~7\);

-- Location: LCCOMB_X11_Y15_N14
\I2C|Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~8_combout\ = (\I2C|Add5~8_combout\ & (\I2C|Add8~7\ $ (GND))) # (!\I2C|Add5~8_combout\ & (!\I2C|Add8~7\ & VCC))
-- \I2C|Add8~9\ = CARRY((\I2C|Add5~8_combout\ & !\I2C|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add5~8_combout\,
	datad => VCC,
	cin => \I2C|Add8~7\,
	combout => \I2C|Add8~8_combout\,
	cout => \I2C|Add8~9\);

-- Location: LCCOMB_X11_Y15_N16
\I2C|Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~10_combout\ = (\I2C|Add5~10_combout\ & (!\I2C|Add8~9\)) # (!\I2C|Add5~10_combout\ & ((\I2C|Add8~9\) # (GND)))
-- \I2C|Add8~11\ = CARRY((!\I2C|Add8~9\) # (!\I2C|Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~10_combout\,
	datad => VCC,
	cin => \I2C|Add8~9\,
	combout => \I2C|Add8~10_combout\,
	cout => \I2C|Add8~11\);

-- Location: LCCOMB_X11_Y13_N18
\I2C|Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~12_combout\ = (\I2C|Add8~12_combout\ & (\I2C|Add9~11\ $ (GND))) # (!\I2C|Add8~12_combout\ & (!\I2C|Add9~11\ & VCC))
-- \I2C|Add9~13\ = CARRY((\I2C|Add8~12_combout\ & !\I2C|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~12_combout\,
	datad => VCC,
	cin => \I2C|Add9~11\,
	combout => \I2C|Add9~12_combout\,
	cout => \I2C|Add9~13\);

-- Location: LCCOMB_X11_Y13_N22
\I2C|Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~16_combout\ = (\I2C|Add9~15\ & (\I2C|Add8~16_combout\ & (!\I2C|Equal8~8_combout\ & VCC))) # (!\I2C|Add9~15\ & ((((\I2C|Add8~16_combout\ & !\I2C|Equal8~8_combout\)))))
-- \I2C|Add9~17\ = CARRY((\I2C|Add8~16_combout\ & (!\I2C|Equal8~8_combout\ & !\I2C|Add9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~16_combout\,
	datab => \I2C|Equal8~8_combout\,
	datad => VCC,
	cin => \I2C|Add9~15\,
	combout => \I2C|Add9~16_combout\,
	cout => \I2C|Add9~17\);

-- Location: LCCOMB_X13_Y13_N16
\I2C|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~10_combout\ = (\I2C|Add0~10_combout\ & (!\I2C|Add2~9\)) # (!\I2C|Add0~10_combout\ & ((\I2C|Add2~9\) # (GND)))
-- \I2C|Add2~11\ = CARRY((!\I2C|Add2~9\) # (!\I2C|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~10_combout\,
	datad => VCC,
	cin => \I2C|Add2~9\,
	combout => \I2C|Add2~10_combout\,
	cout => \I2C|Add2~11\);

-- Location: LCCOMB_X13_Y15_N20
\I2C|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~14_combout\ = (\I2C|Add5~13\ & (((\I2C|Equal2~8_combout\)) # (!\I2C|Add2~14_combout\))) # (!\I2C|Add5~13\ & (((\I2C|Add2~14_combout\ & !\I2C|Equal2~8_combout\)) # (GND)))
-- \I2C|Add5~15\ = CARRY(((\I2C|Equal2~8_combout\) # (!\I2C|Add5~13\)) # (!\I2C|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~14_combout\,
	datab => \I2C|Equal2~8_combout\,
	datad => VCC,
	cin => \I2C|Add5~13\,
	combout => \I2C|Add5~14_combout\,
	cout => \I2C|Add5~15\);

-- Location: LCCOMB_X13_Y15_N22
\I2C|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~16_combout\ = (\I2C|Add5~15\ & (\I2C|Add2~16_combout\ & (!\I2C|Equal2~8_combout\ & VCC))) # (!\I2C|Add5~15\ & ((((\I2C|Add2~16_combout\ & !\I2C|Equal2~8_combout\)))))
-- \I2C|Add5~17\ = CARRY((\I2C|Add2~16_combout\ & (!\I2C|Equal2~8_combout\ & !\I2C|Add5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~16_combout\,
	datab => \I2C|Equal2~8_combout\,
	datad => VCC,
	cin => \I2C|Add5~15\,
	combout => \I2C|Add5~16_combout\,
	cout => \I2C|Add5~17\);

-- Location: LCCOMB_X13_Y15_N24
\I2C|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~18_combout\ = (\I2C|Add5~17\ & (((\I2C|Equal2~8_combout\)) # (!\I2C|Add2~18_combout\))) # (!\I2C|Add5~17\ & (((\I2C|Add2~18_combout\ & !\I2C|Equal2~8_combout\)) # (GND)))
-- \I2C|Add5~19\ = CARRY(((\I2C|Equal2~8_combout\) # (!\I2C|Add5~17\)) # (!\I2C|Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~18_combout\,
	datab => \I2C|Equal2~8_combout\,
	datad => VCC,
	cin => \I2C|Add5~17\,
	combout => \I2C|Add5~18_combout\,
	cout => \I2C|Add5~19\);

-- Location: LCCOMB_X11_Y15_N24
\I2C|Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~18_combout\ = (\I2C|Add8~17\ & ((\I2C|Equal5~8_combout\) # ((!\I2C|Add5~18_combout\)))) # (!\I2C|Add8~17\ & (((!\I2C|Equal5~8_combout\ & \I2C|Add5~18_combout\)) # (GND)))
-- \I2C|Add8~19\ = CARRY((\I2C|Equal5~8_combout\) # ((!\I2C|Add8~17\) # (!\I2C|Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal5~8_combout\,
	datab => \I2C|Add5~18_combout\,
	datad => VCC,
	cin => \I2C|Add8~17\,
	combout => \I2C|Add8~18_combout\,
	cout => \I2C|Add8~19\);

-- Location: LCCOMB_X11_Y15_N26
\I2C|Add8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~20_combout\ = (\I2C|Add5~20_combout\ & (\I2C|Add8~19\ $ (GND))) # (!\I2C|Add5~20_combout\ & (!\I2C|Add8~19\ & VCC))
-- \I2C|Add8~21\ = CARRY((\I2C|Add5~20_combout\ & !\I2C|Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~20_combout\,
	datad => VCC,
	cin => \I2C|Add8~19\,
	combout => \I2C|Add8~20_combout\,
	cout => \I2C|Add8~21\);

-- Location: LCCOMB_X11_Y15_N28
\I2C|Add8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~22_combout\ = (\I2C|Add5~22_combout\ & (!\I2C|Add8~21\)) # (!\I2C|Add5~22_combout\ & ((\I2C|Add8~21\) # (GND)))
-- \I2C|Add8~23\ = CARRY((!\I2C|Add8~21\) # (!\I2C|Add5~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~22_combout\,
	datad => VCC,
	cin => \I2C|Add8~21\,
	combout => \I2C|Add8~22_combout\,
	cout => \I2C|Add8~23\);

-- Location: LCCOMB_X11_Y13_N26
\I2C|Add9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~20_combout\ = (\I2C|Add8~20_combout\ & (\I2C|Add9~19\ $ (GND))) # (!\I2C|Add8~20_combout\ & (!\I2C|Add9~19\ & VCC))
-- \I2C|Add9~21\ = CARRY((\I2C|Add8~20_combout\ & !\I2C|Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~20_combout\,
	datad => VCC,
	cin => \I2C|Add9~19\,
	combout => \I2C|Add9~20_combout\,
	cout => \I2C|Add9~21\);

-- Location: LCCOMB_X11_Y13_N28
\I2C|Add9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~22_combout\ = (\I2C|Add8~22_combout\ & (!\I2C|Add9~21\)) # (!\I2C|Add8~22_combout\ & ((\I2C|Add9~21\) # (GND)))
-- \I2C|Add9~23\ = CARRY((!\I2C|Add9~21\) # (!\I2C|Add8~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add8~22_combout\,
	datad => VCC,
	cin => \I2C|Add9~21\,
	combout => \I2C|Add9~22_combout\,
	cout => \I2C|Add9~23\);

-- Location: LCCOMB_X10_Y13_N8
\I2C|Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal9~3_combout\ = (\I2C|Add9~18_combout\ & (\I2C|Add9~16_combout\ & (!\I2C|Add9~22_combout\ & !\I2C|Add9~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add9~18_combout\,
	datab => \I2C|Add9~16_combout\,
	datac => \I2C|Add9~22_combout\,
	datad => \I2C|Add9~20_combout\,
	combout => \I2C|Equal9~3_combout\);

-- Location: LCCOMB_X11_Y13_N30
\I2C|Add9~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~24_combout\ = (\I2C|Add9~23\ & (\I2C|Add8~24_combout\ & (!\I2C|Equal8~8_combout\ & VCC))) # (!\I2C|Add9~23\ & ((((\I2C|Add8~24_combout\ & !\I2C|Equal8~8_combout\)))))
-- \I2C|Add9~25\ = CARRY((\I2C|Add8~24_combout\ & (!\I2C|Equal8~8_combout\ & !\I2C|Add9~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~24_combout\,
	datab => \I2C|Equal8~8_combout\,
	datad => VCC,
	cin => \I2C|Add9~23\,
	combout => \I2C|Add9~24_combout\,
	cout => \I2C|Add9~25\);

-- Location: LCCOMB_X11_Y12_N2
\I2C|Add9~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~28_combout\ = (\I2C|Add8~28_combout\ & (\I2C|Add9~27\ $ (GND))) # (!\I2C|Add8~28_combout\ & (!\I2C|Add9~27\ & VCC))
-- \I2C|Add9~29\ = CARRY((\I2C|Add8~28_combout\ & !\I2C|Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~28_combout\,
	datad => VCC,
	cin => \I2C|Add9~27\,
	combout => \I2C|Add9~28_combout\,
	cout => \I2C|Add9~29\);

-- Location: LCCOMB_X10_Y13_N18
\I2C|Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal9~4_combout\ = (!\I2C|Add9~30_combout\ & (\I2C|Add9~24_combout\ & (!\I2C|Add9~26_combout\ & !\I2C|Add9~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add9~30_combout\,
	datab => \I2C|Add9~24_combout\,
	datac => \I2C|Add9~26_combout\,
	datad => \I2C|Add9~28_combout\,
	combout => \I2C|Equal9~4_combout\);

-- Location: LCCOMB_X10_Y13_N20
\I2C|Equal9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal9~5_combout\ = (\I2C|Equal9~2_combout\ & (\I2C|Equal9~1_combout\ & (\I2C|Equal9~3_combout\ & \I2C|Equal9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal9~2_combout\,
	datab => \I2C|Equal9~1_combout\,
	datac => \I2C|Equal9~3_combout\,
	datad => \I2C|Equal9~4_combout\,
	combout => \I2C|Equal9~5_combout\);

-- Location: LCCOMB_X13_Y12_N24
\I2C|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~50_combout\ = (\I2C|Add0~50_combout\ & (!\I2C|Add2~49\)) # (!\I2C|Add0~50_combout\ & ((\I2C|Add2~49\) # (GND)))
-- \I2C|Add2~51\ = CARRY((!\I2C|Add2~49\) # (!\I2C|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add0~50_combout\,
	datad => VCC,
	cin => \I2C|Add2~49\,
	combout => \I2C|Add2~50_combout\,
	cout => \I2C|Add2~51\);

-- Location: LCCOMB_X13_Y12_N26
\I2C|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~52_combout\ = \I2C|Add0~52_combout\ $ (!\I2C|Add2~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~52_combout\,
	cin => \I2C|Add2~51\,
	combout => \I2C|Add2~52_combout\);

-- Location: LCCOMB_X13_Y12_N20
\I2C|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~46_combout\ = (\I2C|Add0~46_combout\ & (!\I2C|Add2~45\)) # (!\I2C|Add0~46_combout\ & ((\I2C|Add2~45\) # (GND)))
-- \I2C|Add2~47\ = CARRY((!\I2C|Add2~45\) # (!\I2C|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add0~46_combout\,
	datad => VCC,
	cin => \I2C|Add2~45\,
	combout => \I2C|Add2~46_combout\,
	cout => \I2C|Add2~47\);

-- Location: LCCOMB_X13_Y12_N16
\I2C|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~42_combout\ = (\I2C|Add0~42_combout\ & (!\I2C|Add2~41\)) # (!\I2C|Add0~42_combout\ & ((\I2C|Add2~41\) # (GND)))
-- \I2C|Add2~43\ = CARRY((!\I2C|Add2~41\) # (!\I2C|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~42_combout\,
	datad => VCC,
	cin => \I2C|Add2~41\,
	combout => \I2C|Add2~42_combout\,
	cout => \I2C|Add2~43\);

-- Location: LCCOMB_X13_Y12_N18
\I2C|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~44_combout\ = (\I2C|Add0~44_combout\ & (\I2C|Add2~43\ $ (GND))) # (!\I2C|Add0~44_combout\ & (!\I2C|Add2~43\ & VCC))
-- \I2C|Add2~45\ = CARRY((\I2C|Add0~44_combout\ & !\I2C|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add0~44_combout\,
	datad => VCC,
	cin => \I2C|Add2~43\,
	combout => \I2C|Add2~44_combout\,
	cout => \I2C|Add2~45\);

-- Location: LCCOMB_X13_Y12_N14
\I2C|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~40_combout\ = (\I2C|Add0~40_combout\ & (\I2C|Add2~39\ $ (GND))) # (!\I2C|Add0~40_combout\ & (!\I2C|Add2~39\ & VCC))
-- \I2C|Add2~41\ = CARRY((\I2C|Add0~40_combout\ & !\I2C|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~40_combout\,
	datad => VCC,
	cin => \I2C|Add2~39\,
	combout => \I2C|Add2~40_combout\,
	cout => \I2C|Add2~41\);

-- Location: LCCOMB_X13_Y14_N12
\I2C|Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~38_combout\ = (\I2C|Add2~38_combout\ & (!\I2C|Add5~37\)) # (!\I2C|Add2~38_combout\ & ((\I2C|Add5~37\) # (GND)))
-- \I2C|Add5~39\ = CARRY((!\I2C|Add5~37\) # (!\I2C|Add2~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~38_combout\,
	datad => VCC,
	cin => \I2C|Add5~37\,
	combout => \I2C|Add5~38_combout\,
	cout => \I2C|Add5~39\);

-- Location: LCCOMB_X13_Y14_N16
\I2C|Add5~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~42_combout\ = (\I2C|Add2~42_combout\ & (!\I2C|Add5~41\)) # (!\I2C|Add2~42_combout\ & ((\I2C|Add5~41\) # (GND)))
-- \I2C|Add5~43\ = CARRY((!\I2C|Add5~41\) # (!\I2C|Add2~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add2~42_combout\,
	datad => VCC,
	cin => \I2C|Add5~41\,
	combout => \I2C|Add5~42_combout\,
	cout => \I2C|Add5~43\);

-- Location: LCCOMB_X13_Y14_N26
\I2C|Add5~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~52_combout\ = \I2C|Add5~51\ $ (!\I2C|Add2~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I2C|Add2~52_combout\,
	cin => \I2C|Add5~51\,
	combout => \I2C|Add5~52_combout\);

-- Location: LCCOMB_X11_Y14_N26
\I2C|Add8~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~52_combout\ = \I2C|Add8~51\ $ (!\I2C|Add5~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I2C|Add5~52_combout\,
	cin => \I2C|Add8~51\,
	combout => \I2C|Add8~52_combout\);

-- Location: LCCOMB_X11_Y12_N26
\I2C|Add9~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~52_combout\ = \I2C|Add9~51\ $ (!\I2C|Add8~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I2C|Add8~52_combout\,
	cin => \I2C|Add9~51\,
	combout => \I2C|Add9~52_combout\);

-- Location: LCCOMB_X11_Y12_N30
\I2C|Equal9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal9~6_combout\ = (!\I2C|Add9~32_combout\ & (!\I2C|Add9~34_combout\ & (!\I2C|Add9~36_combout\ & !\I2C|Add9~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add9~32_combout\,
	datab => \I2C|Add9~34_combout\,
	datac => \I2C|Add9~36_combout\,
	datad => \I2C|Add9~38_combout\,
	combout => \I2C|Equal9~6_combout\);

-- Location: LCCOMB_X10_Y13_N12
\I2C|timer3_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer3_reg~0_combout\ = (!\I2C|Add9~50_combout\ & (!\I2C|Add9~52_combout\ & (\I2C|Equal9~0_combout\ & \I2C|Equal9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add9~50_combout\,
	datab => \I2C|Add9~52_combout\,
	datac => \I2C|Equal9~0_combout\,
	datad => \I2C|Equal9~6_combout\,
	combout => \I2C|timer3_reg~0_combout\);

-- Location: LCCOMB_X10_Y13_N4
\I2C|timer3_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer3_reg~2_combout\ = (\I2C|Add9~18_combout\ & ((\I2C|Add9~48_combout\) # ((!\I2C|timer3_reg~0_combout\) # (!\I2C|Equal9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add9~18_combout\,
	datab => \I2C|Add9~48_combout\,
	datac => \I2C|Equal9~5_combout\,
	datad => \I2C|timer3_reg~0_combout\,
	combout => \I2C|timer3_reg~2_combout\);

-- Location: FF_X10_Y13_N5
\I2C|timer3_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer3_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(9));

-- Location: LCCOMB_X10_Y13_N0
\I2C|timer3_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer3_reg~4_combout\ = (\I2C|Add9~14_combout\ & ((\I2C|Add9~48_combout\) # ((!\I2C|timer3_reg~0_combout\) # (!\I2C|Equal9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add9~14_combout\,
	datab => \I2C|Add9~48_combout\,
	datac => \I2C|Equal9~5_combout\,
	datad => \I2C|timer3_reg~0_combout\,
	combout => \I2C|timer3_reg~4_combout\);

-- Location: FF_X10_Y13_N1
\I2C|timer3_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer3_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(7));

-- Location: FF_X11_Y13_N19
\I2C|timer3_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(6));

-- Location: LCCOMB_X10_Y13_N6
\I2C|timer3_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer3_reg~5_combout\ = (\I2C|Add9~6_combout\ & ((\I2C|Add9~48_combout\) # ((!\I2C|timer3_reg~0_combout\) # (!\I2C|Equal9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add9~6_combout\,
	datab => \I2C|Add9~48_combout\,
	datac => \I2C|Equal9~5_combout\,
	datad => \I2C|timer3_reg~0_combout\,
	combout => \I2C|timer3_reg~5_combout\);

-- Location: FF_X10_Y13_N7
\I2C|timer3_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer3_reg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(3));

-- Location: FF_X12_Y13_N9
\I2C|timer3_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|Add9~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(1));

-- Location: LCCOMB_X12_Y13_N14
\I2C|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~8_combout\ = (\I2C|timer3_reg\(4) & (\I2C|Add0~7\ $ (GND))) # (!\I2C|timer3_reg\(4) & (!\I2C|Add0~7\ & VCC))
-- \I2C|Add0~9\ = CARRY((\I2C|timer3_reg\(4) & !\I2C|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer3_reg\(4),
	datad => VCC,
	cin => \I2C|Add0~7\,
	combout => \I2C|Add0~8_combout\,
	cout => \I2C|Add0~9\);

-- Location: LCCOMB_X12_Y13_N16
\I2C|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~10_combout\ = (\I2C|timer3_reg\(5) & (!\I2C|Add0~9\)) # (!\I2C|timer3_reg\(5) & ((\I2C|Add0~9\) # (GND)))
-- \I2C|Add0~11\ = CARRY((!\I2C|Add0~9\) # (!\I2C|timer3_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer3_reg\(5),
	datad => VCC,
	cin => \I2C|Add0~9\,
	combout => \I2C|Add0~10_combout\,
	cout => \I2C|Add0~11\);

-- Location: LCCOMB_X12_Y13_N18
\I2C|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~12_combout\ = (\I2C|timer3_reg\(6) & (\I2C|Add0~11\ $ (GND))) # (!\I2C|timer3_reg\(6) & (!\I2C|Add0~11\ & VCC))
-- \I2C|Add0~13\ = CARRY((\I2C|timer3_reg\(6) & !\I2C|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer3_reg\(6),
	datad => VCC,
	cin => \I2C|Add0~11\,
	combout => \I2C|Add0~12_combout\,
	cout => \I2C|Add0~13\);

-- Location: LCCOMB_X12_Y13_N20
\I2C|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~14_combout\ = (\I2C|timer3_reg\(7) & (!\I2C|Add0~13\)) # (!\I2C|timer3_reg\(7) & ((\I2C|Add0~13\) # (GND)))
-- \I2C|Add0~15\ = CARRY((!\I2C|Add0~13\) # (!\I2C|timer3_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer3_reg\(7),
	datad => VCC,
	cin => \I2C|Add0~13\,
	combout => \I2C|Add0~14_combout\,
	cout => \I2C|Add0~15\);

-- Location: LCCOMB_X12_Y13_N24
\I2C|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~18_combout\ = (\I2C|timer3_reg\(9) & (!\I2C|Add0~17\)) # (!\I2C|timer3_reg\(9) & ((\I2C|Add0~17\) # (GND)))
-- \I2C|Add0~19\ = CARRY((!\I2C|Add0~17\) # (!\I2C|timer3_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer3_reg\(9),
	datad => VCC,
	cin => \I2C|Add0~17\,
	combout => \I2C|Add0~18_combout\,
	cout => \I2C|Add0~19\);

-- Location: LCCOMB_X12_Y13_N26
\I2C|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~20_combout\ = (\I2C|timer3_reg\(10) & (\I2C|Add0~19\ $ (GND))) # (!\I2C|timer3_reg\(10) & (!\I2C|Add0~19\ & VCC))
-- \I2C|Add0~21\ = CARRY((\I2C|timer3_reg\(10) & !\I2C|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer3_reg\(10),
	datad => VCC,
	cin => \I2C|Add0~19\,
	combout => \I2C|Add0~20_combout\,
	cout => \I2C|Add0~21\);

-- Location: LCCOMB_X12_Y13_N28
\I2C|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~22_combout\ = (\I2C|timer3_reg\(11) & (!\I2C|Add0~21\)) # (!\I2C|timer3_reg\(11) & ((\I2C|Add0~21\) # (GND)))
-- \I2C|Add0~23\ = CARRY((!\I2C|Add0~21\) # (!\I2C|timer3_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer3_reg\(11),
	datad => VCC,
	cin => \I2C|Add0~21\,
	combout => \I2C|Add0~22_combout\,
	cout => \I2C|Add0~23\);

-- Location: LCCOMB_X12_Y13_N30
\I2C|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~24_combout\ = (\I2C|timer3_reg\(12) & (\I2C|Add0~23\ $ (GND))) # (!\I2C|timer3_reg\(12) & (!\I2C|Add0~23\ & VCC))
-- \I2C|Add0~25\ = CARRY((\I2C|timer3_reg\(12) & !\I2C|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer3_reg\(12),
	datad => VCC,
	cin => \I2C|Add0~23\,
	combout => \I2C|Add0~24_combout\,
	cout => \I2C|Add0~25\);

-- Location: LCCOMB_X12_Y12_N2
\I2C|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~28_combout\ = (\I2C|timer3_reg\(14) & (\I2C|Add0~27\ $ (GND))) # (!\I2C|timer3_reg\(14) & (!\I2C|Add0~27\ & VCC))
-- \I2C|Add0~29\ = CARRY((\I2C|timer3_reg\(14) & !\I2C|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer3_reg\(14),
	datad => VCC,
	cin => \I2C|Add0~27\,
	combout => \I2C|Add0~28_combout\,
	cout => \I2C|Add0~29\);

-- Location: LCCOMB_X12_Y12_N4
\I2C|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~30_combout\ = (\I2C|timer3_reg\(15) & (!\I2C|Add0~29\)) # (!\I2C|timer3_reg\(15) & ((\I2C|Add0~29\) # (GND)))
-- \I2C|Add0~31\ = CARRY((!\I2C|Add0~29\) # (!\I2C|timer3_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer3_reg\(15),
	datad => VCC,
	cin => \I2C|Add0~29\,
	combout => \I2C|Add0~30_combout\,
	cout => \I2C|Add0~31\);

-- Location: LCCOMB_X12_Y12_N6
\I2C|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~32_combout\ = (\I2C|timer3_reg\(16) & (\I2C|Add0~31\ $ (GND))) # (!\I2C|timer3_reg\(16) & (!\I2C|Add0~31\ & VCC))
-- \I2C|Add0~33\ = CARRY((\I2C|timer3_reg\(16) & !\I2C|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer3_reg\(16),
	datad => VCC,
	cin => \I2C|Add0~31\,
	combout => \I2C|Add0~32_combout\,
	cout => \I2C|Add0~33\);

-- Location: LCCOMB_X12_Y12_N10
\I2C|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~36_combout\ = (\I2C|timer3_reg\(18) & (\I2C|Add0~35\ $ (GND))) # (!\I2C|timer3_reg\(18) & (!\I2C|Add0~35\ & VCC))
-- \I2C|Add0~37\ = CARRY((\I2C|timer3_reg\(18) & !\I2C|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer3_reg\(18),
	datad => VCC,
	cin => \I2C|Add0~35\,
	combout => \I2C|Add0~36_combout\,
	cout => \I2C|Add0~37\);

-- Location: LCCOMB_X12_Y12_N12
\I2C|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~38_combout\ = (\I2C|timer3_reg\(19) & (!\I2C|Add0~37\)) # (!\I2C|timer3_reg\(19) & ((\I2C|Add0~37\) # (GND)))
-- \I2C|Add0~39\ = CARRY((!\I2C|Add0~37\) # (!\I2C|timer3_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer3_reg\(19),
	datad => VCC,
	cin => \I2C|Add0~37\,
	combout => \I2C|Add0~38_combout\,
	cout => \I2C|Add0~39\);

-- Location: LCCOMB_X12_Y12_N16
\I2C|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~42_combout\ = (\I2C|timer3_reg\(21) & (!\I2C|Add0~41\)) # (!\I2C|timer3_reg\(21) & ((\I2C|Add0~41\) # (GND)))
-- \I2C|Add0~43\ = CARRY((!\I2C|Add0~41\) # (!\I2C|timer3_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer3_reg\(21),
	datad => VCC,
	cin => \I2C|Add0~41\,
	combout => \I2C|Add0~42_combout\,
	cout => \I2C|Add0~43\);

-- Location: LCCOMB_X12_Y12_N18
\I2C|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~44_combout\ = (\I2C|timer3_reg\(22) & (\I2C|Add0~43\ $ (GND))) # (!\I2C|timer3_reg\(22) & (!\I2C|Add0~43\ & VCC))
-- \I2C|Add0~45\ = CARRY((\I2C|timer3_reg\(22) & !\I2C|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer3_reg\(22),
	datad => VCC,
	cin => \I2C|Add0~43\,
	combout => \I2C|Add0~44_combout\,
	cout => \I2C|Add0~45\);

-- Location: LCCOMB_X13_Y12_N10
\I2C|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~36_combout\ = (\I2C|Add0~36_combout\ & (\I2C|Add2~35\ $ (GND))) # (!\I2C|Add0~36_combout\ & (!\I2C|Add2~35\ & VCC))
-- \I2C|Add2~37\ = CARRY((\I2C|Add0~36_combout\ & !\I2C|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~36_combout\,
	datad => VCC,
	cin => \I2C|Add2~35\,
	combout => \I2C|Add2~36_combout\,
	cout => \I2C|Add2~37\);

-- Location: LCCOMB_X13_Y13_N18
\I2C|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~12_combout\ = (\I2C|Add0~12_combout\ & (\I2C|Add2~11\ $ (GND))) # (!\I2C|Add0~12_combout\ & (!\I2C|Add2~11\ & VCC))
-- \I2C|Add2~13\ = CARRY((\I2C|Add0~12_combout\ & !\I2C|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add0~12_combout\,
	datad => VCC,
	cin => \I2C|Add2~11\,
	combout => \I2C|Add2~12_combout\,
	cout => \I2C|Add2~13\);

-- Location: LCCOMB_X13_Y13_N20
\I2C|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~14_combout\ = (\I2C|Add2~13\ & (((\I2C|Equal0~8_combout\)) # (!\I2C|Add0~14_combout\))) # (!\I2C|Add2~13\ & (((\I2C|Add0~14_combout\ & !\I2C|Equal0~8_combout\)) # (GND)))
-- \I2C|Add2~15\ = CARRY(((\I2C|Equal0~8_combout\) # (!\I2C|Add2~13\)) # (!\I2C|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~14_combout\,
	datab => \I2C|Equal0~8_combout\,
	datad => VCC,
	cin => \I2C|Add2~13\,
	combout => \I2C|Add2~14_combout\,
	cout => \I2C|Add2~15\);

-- Location: LCCOMB_X14_Y15_N4
\I2C|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal2~1_combout\ = (!\I2C|Add2~10_combout\ & (!\I2C|Add2~12_combout\ & (\I2C|Add2~14_combout\ & !\I2C|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~10_combout\,
	datab => \I2C|Add2~12_combout\,
	datac => \I2C|Add2~14_combout\,
	datad => \I2C|Add2~8_combout\,
	combout => \I2C|Equal2~1_combout\);

-- Location: LCCOMB_X13_Y12_N0
\I2C|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~26_combout\ = (\I2C|Add0~26_combout\ & (!\I2C|Add2~25\)) # (!\I2C|Add0~26_combout\ & ((\I2C|Add2~25\) # (GND)))
-- \I2C|Add2~27\ = CARRY((!\I2C|Add2~25\) # (!\I2C|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~26_combout\,
	datad => VCC,
	cin => \I2C|Add2~25\,
	combout => \I2C|Add2~26_combout\,
	cout => \I2C|Add2~27\);

-- Location: LCCOMB_X13_Y12_N2
\I2C|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~28_combout\ = (\I2C|Add0~28_combout\ & (\I2C|Add2~27\ $ (GND))) # (!\I2C|Add0~28_combout\ & (!\I2C|Add2~27\ & VCC))
-- \I2C|Add2~29\ = CARRY((\I2C|Add0~28_combout\ & !\I2C|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~28_combout\,
	datad => VCC,
	cin => \I2C|Add2~27\,
	combout => \I2C|Add2~28_combout\,
	cout => \I2C|Add2~29\);

-- Location: LCCOMB_X13_Y12_N4
\I2C|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~30_combout\ = (\I2C|Add0~30_combout\ & (!\I2C|Add2~29\)) # (!\I2C|Add0~30_combout\ & ((\I2C|Add2~29\) # (GND)))
-- \I2C|Add2~31\ = CARRY((!\I2C|Add2~29\) # (!\I2C|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add0~30_combout\,
	datad => VCC,
	cin => \I2C|Add2~29\,
	combout => \I2C|Add2~30_combout\,
	cout => \I2C|Add2~31\);

-- Location: LCCOMB_X14_Y15_N22
\I2C|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal2~3_combout\ = (\I2C|Add2~24_combout\ & (!\I2C|Add2~26_combout\ & (!\I2C|Add2~28_combout\ & !\I2C|Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~24_combout\,
	datab => \I2C|Add2~26_combout\,
	datac => \I2C|Add2~28_combout\,
	datad => \I2C|Add2~30_combout\,
	combout => \I2C|Equal2~3_combout\);

-- Location: LCCOMB_X13_Y13_N24
\I2C|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~18_combout\ = (\I2C|Add2~17\ & (((\I2C|Equal0~8_combout\)) # (!\I2C|Add0~18_combout\))) # (!\I2C|Add2~17\ & (((\I2C|Add0~18_combout\ & !\I2C|Equal0~8_combout\)) # (GND)))
-- \I2C|Add2~19\ = CARRY(((\I2C|Equal0~8_combout\) # (!\I2C|Add2~17\)) # (!\I2C|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~18_combout\,
	datab => \I2C|Equal0~8_combout\,
	datad => VCC,
	cin => \I2C|Add2~17\,
	combout => \I2C|Add2~18_combout\,
	cout => \I2C|Add2~19\);

-- Location: LCCOMB_X13_Y13_N26
\I2C|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~20_combout\ = (\I2C|Add0~20_combout\ & (\I2C|Add2~19\ $ (GND))) # (!\I2C|Add0~20_combout\ & (!\I2C|Add2~19\ & VCC))
-- \I2C|Add2~21\ = CARRY((\I2C|Add0~20_combout\ & !\I2C|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~20_combout\,
	datad => VCC,
	cin => \I2C|Add2~19\,
	combout => \I2C|Add2~20_combout\,
	cout => \I2C|Add2~21\);

-- Location: LCCOMB_X13_Y13_N28
\I2C|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~22_combout\ = (\I2C|Add0~22_combout\ & (!\I2C|Add2~21\)) # (!\I2C|Add0~22_combout\ & ((\I2C|Add2~21\) # (GND)))
-- \I2C|Add2~23\ = CARRY((!\I2C|Add2~21\) # (!\I2C|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add0~22_combout\,
	datad => VCC,
	cin => \I2C|Add2~21\,
	combout => \I2C|Add2~22_combout\,
	cout => \I2C|Add2~23\);

-- Location: LCCOMB_X13_Y13_N0
\I2C|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal2~2_combout\ = (\I2C|Add2~16_combout\ & (\I2C|Add2~18_combout\ & (!\I2C|Add2~20_combout\ & !\I2C|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~16_combout\,
	datab => \I2C|Add2~18_combout\,
	datac => \I2C|Add2~20_combout\,
	datad => \I2C|Add2~22_combout\,
	combout => \I2C|Equal2~2_combout\);

-- Location: LCCOMB_X14_Y15_N12
\I2C|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal2~4_combout\ = (\I2C|Equal2~0_combout\ & (\I2C|Equal2~1_combout\ & (\I2C|Equal2~3_combout\ & \I2C|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal2~0_combout\,
	datab => \I2C|Equal2~1_combout\,
	datac => \I2C|Equal2~3_combout\,
	datad => \I2C|Equal2~2_combout\,
	combout => \I2C|Equal2~4_combout\);

-- Location: LCCOMB_X14_Y15_N2
\I2C|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal2~5_combout\ = (!\I2C|Add2~34_combout\ & (!\I2C|Add2~36_combout\ & (!\I2C|Add2~32_combout\ & \I2C|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~34_combout\,
	datab => \I2C|Add2~36_combout\,
	datac => \I2C|Add2~32_combout\,
	datad => \I2C|Equal2~4_combout\,
	combout => \I2C|Equal2~5_combout\);

-- Location: LCCOMB_X13_Y15_N0
\I2C|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal2~6_combout\ = (!\I2C|Add2~38_combout\ & (!\I2C|Add2~40_combout\ & (!\I2C|Add2~42_combout\ & \I2C|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~38_combout\,
	datab => \I2C|Add2~40_combout\,
	datac => \I2C|Add2~42_combout\,
	datad => \I2C|Equal2~5_combout\,
	combout => \I2C|Equal2~6_combout\);

-- Location: LCCOMB_X13_Y15_N2
\I2C|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal2~7_combout\ = (!\I2C|Add2~46_combout\ & (!\I2C|Add2~44_combout\ & \I2C|Equal2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add2~46_combout\,
	datac => \I2C|Add2~44_combout\,
	datad => \I2C|Equal2~6_combout\,
	combout => \I2C|Equal2~7_combout\);

-- Location: LCCOMB_X13_Y15_N4
\I2C|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal2~8_combout\ = (!\I2C|Add2~48_combout\ & (!\I2C|Add2~50_combout\ & (!\I2C|Add2~52_combout\ & \I2C|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~48_combout\,
	datab => \I2C|Add2~50_combout\,
	datac => \I2C|Add2~52_combout\,
	datad => \I2C|Equal2~7_combout\,
	combout => \I2C|Equal2~8_combout\);

-- Location: LCCOMB_X13_Y15_N30
\I2C|Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~24_combout\ = (\I2C|Add5~23\ & (\I2C|Add2~24_combout\ & (!\I2C|Equal2~8_combout\ & VCC))) # (!\I2C|Add5~23\ & ((((\I2C|Add2~24_combout\ & !\I2C|Equal2~8_combout\)))))
-- \I2C|Add5~25\ = CARRY((\I2C|Add2~24_combout\ & (!\I2C|Equal2~8_combout\ & !\I2C|Add5~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~24_combout\,
	datab => \I2C|Equal2~8_combout\,
	datad => VCC,
	cin => \I2C|Add5~23\,
	combout => \I2C|Add5~24_combout\,
	cout => \I2C|Add5~25\);

-- Location: LCCOMB_X13_Y14_N2
\I2C|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~28_combout\ = (\I2C|Add2~28_combout\ & (\I2C|Add5~27\ $ (GND))) # (!\I2C|Add2~28_combout\ & (!\I2C|Add5~27\ & VCC))
-- \I2C|Add5~29\ = CARRY((\I2C|Add2~28_combout\ & !\I2C|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add2~28_combout\,
	datad => VCC,
	cin => \I2C|Add5~27\,
	combout => \I2C|Add5~28_combout\,
	cout => \I2C|Add5~29\);

-- Location: LCCOMB_X11_Y14_N0
\I2C|Add8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~26_combout\ = (\I2C|Add5~26_combout\ & (!\I2C|Add8~25\)) # (!\I2C|Add5~26_combout\ & ((\I2C|Add8~25\) # (GND)))
-- \I2C|Add8~27\ = CARRY((!\I2C|Add8~25\) # (!\I2C|Add5~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add5~26_combout\,
	datad => VCC,
	cin => \I2C|Add8~25\,
	combout => \I2C|Add8~26_combout\,
	cout => \I2C|Add8~27\);

-- Location: LCCOMB_X11_Y14_N2
\I2C|Add8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~28_combout\ = (\I2C|Add5~28_combout\ & (\I2C|Add8~27\ $ (GND))) # (!\I2C|Add5~28_combout\ & (!\I2C|Add8~27\ & VCC))
-- \I2C|Add8~29\ = CARRY((\I2C|Add5~28_combout\ & !\I2C|Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add5~28_combout\,
	datad => VCC,
	cin => \I2C|Add8~27\,
	combout => \I2C|Add8~28_combout\,
	cout => \I2C|Add8~29\);

-- Location: LCCOMB_X11_Y14_N4
\I2C|Add8~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~30_combout\ = (\I2C|Add5~30_combout\ & (!\I2C|Add8~29\)) # (!\I2C|Add5~30_combout\ & ((\I2C|Add8~29\) # (GND)))
-- \I2C|Add8~31\ = CARRY((!\I2C|Add8~29\) # (!\I2C|Add5~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add5~30_combout\,
	datad => VCC,
	cin => \I2C|Add8~29\,
	combout => \I2C|Add8~30_combout\,
	cout => \I2C|Add8~31\);

-- Location: LCCOMB_X11_Y14_N28
\I2C|Equal8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal8~5_combout\ = (!\I2C|Add8~32_combout\ & (!\I2C|Add8~34_combout\ & (!\I2C|Add8~36_combout\ & !\I2C|Add8~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~32_combout\,
	datab => \I2C|Add8~34_combout\,
	datac => \I2C|Add8~36_combout\,
	datad => \I2C|Add8~38_combout\,
	combout => \I2C|Equal8~5_combout\);

-- Location: LCCOMB_X11_Y15_N0
\I2C|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal8~0_combout\ = (!\I2C|Add8~4_combout\ & (!\I2C|Add8~0_combout\ & (!\I2C|Add8~2_combout\ & \I2C|Add8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~4_combout\,
	datab => \I2C|Add8~0_combout\,
	datac => \I2C|Add8~2_combout\,
	datad => \I2C|Add8~6_combout\,
	combout => \I2C|Equal8~0_combout\);

-- Location: LCCOMB_X11_Y15_N4
\I2C|Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal8~2_combout\ = (\I2C|Add8~16_combout\ & (\I2C|Add8~18_combout\ & (!\I2C|Add8~20_combout\ & !\I2C|Add8~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~16_combout\,
	datab => \I2C|Add8~18_combout\,
	datac => \I2C|Add8~20_combout\,
	datad => \I2C|Add8~22_combout\,
	combout => \I2C|Equal8~2_combout\);

-- Location: LCCOMB_X10_Y15_N0
\I2C|Equal8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal8~3_combout\ = (\I2C|Add8~24_combout\ & (!\I2C|Add8~26_combout\ & (!\I2C|Add8~28_combout\ & !\I2C|Add8~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~24_combout\,
	datab => \I2C|Add8~26_combout\,
	datac => \I2C|Add8~28_combout\,
	datad => \I2C|Add8~30_combout\,
	combout => \I2C|Equal8~3_combout\);

-- Location: LCCOMB_X10_Y15_N6
\I2C|Equal8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal8~4_combout\ = (\I2C|Equal8~1_combout\ & (\I2C|Equal8~0_combout\ & (\I2C|Equal8~2_combout\ & \I2C|Equal8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal8~1_combout\,
	datab => \I2C|Equal8~0_combout\,
	datac => \I2C|Equal8~2_combout\,
	datad => \I2C|Equal8~3_combout\,
	combout => \I2C|Equal8~4_combout\);

-- Location: LCCOMB_X11_Y13_N2
\I2C|Equal8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal8~6_combout\ = (!\I2C|Add8~42_combout\ & (!\I2C|Add8~40_combout\ & (\I2C|Equal8~5_combout\ & \I2C|Equal8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~42_combout\,
	datab => \I2C|Add8~40_combout\,
	datac => \I2C|Equal8~5_combout\,
	datad => \I2C|Equal8~4_combout\,
	combout => \I2C|Equal8~6_combout\);

-- Location: LCCOMB_X11_Y13_N0
\I2C|Equal8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal8~7_combout\ = (!\I2C|Add8~44_combout\ & (!\I2C|Add8~46_combout\ & \I2C|Equal8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~44_combout\,
	datab => \I2C|Add8~46_combout\,
	datad => \I2C|Equal8~6_combout\,
	combout => \I2C|Equal8~7_combout\);

-- Location: LCCOMB_X11_Y13_N4
\I2C|Equal8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal8~8_combout\ = (!\I2C|Add8~52_combout\ & (!\I2C|Add8~50_combout\ & (!\I2C|Add8~48_combout\ & \I2C|Equal8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add8~52_combout\,
	datab => \I2C|Add8~50_combout\,
	datac => \I2C|Add8~48_combout\,
	datad => \I2C|Equal8~7_combout\,
	combout => \I2C|Equal8~8_combout\);

-- Location: LCCOMB_X11_Y12_N4
\I2C|Add9~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~30_combout\ = (\I2C|Add8~30_combout\ & (!\I2C|Add9~29\)) # (!\I2C|Add8~30_combout\ & ((\I2C|Add9~29\) # (GND)))
-- \I2C|Add9~31\ = CARRY((!\I2C|Add9~29\) # (!\I2C|Add8~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add8~30_combout\,
	datad => VCC,
	cin => \I2C|Add9~29\,
	combout => \I2C|Add9~30_combout\,
	cout => \I2C|Add9~31\);

-- Location: FF_X11_Y12_N5
\I2C|timer3_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(15));

-- Location: LCCOMB_X13_Y12_N6
\I2C|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add2~32_combout\ = (\I2C|Add0~32_combout\ & (\I2C|Add2~31\ $ (GND))) # (!\I2C|Add0~32_combout\ & (!\I2C|Add2~31\ & VCC))
-- \I2C|Add2~33\ = CARRY((\I2C|Add0~32_combout\ & !\I2C|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add0~32_combout\,
	datad => VCC,
	cin => \I2C|Add2~31\,
	combout => \I2C|Add2~32_combout\,
	cout => \I2C|Add2~33\);

-- Location: LCCOMB_X13_Y14_N4
\I2C|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add5~30_combout\ = (\I2C|Add2~30_combout\ & (!\I2C|Add5~29\)) # (!\I2C|Add2~30_combout\ & ((\I2C|Add5~29\) # (GND)))
-- \I2C|Add5~31\ = CARRY((!\I2C|Add5~29\) # (!\I2C|Add2~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add2~30_combout\,
	datad => VCC,
	cin => \I2C|Add5~29\,
	combout => \I2C|Add5~30_combout\,
	cout => \I2C|Add5~31\);

-- Location: LCCOMB_X11_Y14_N16
\I2C|Add8~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add8~42_combout\ = (\I2C|Add5~42_combout\ & (!\I2C|Add8~41\)) # (!\I2C|Add5~42_combout\ & ((\I2C|Add8~41\) # (GND)))
-- \I2C|Add8~43\ = CARRY((!\I2C|Add8~41\) # (!\I2C|Add5~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add5~42_combout\,
	datad => VCC,
	cin => \I2C|Add8~41\,
	combout => \I2C|Add8~42_combout\,
	cout => \I2C|Add8~43\);

-- Location: LCCOMB_X11_Y12_N18
\I2C|Add9~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add9~44_combout\ = (\I2C|Add8~44_combout\ & (\I2C|Add9~43\ $ (GND))) # (!\I2C|Add8~44_combout\ & (!\I2C|Add9~43\ & VCC))
-- \I2C|Add9~45\ = CARRY((\I2C|Add8~44_combout\ & !\I2C|Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add8~44_combout\,
	datad => VCC,
	cin => \I2C|Add9~43\,
	combout => \I2C|Add9~44_combout\,
	cout => \I2C|Add9~45\);

-- Location: FF_X11_Y12_N19
\I2C|timer3_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(22));

-- Location: LCCOMB_X12_Y12_N22
\I2C|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add0~48_combout\ = (\I2C|timer3_reg\(24) & (\I2C|Add0~47\ $ (GND))) # (!\I2C|timer3_reg\(24) & (!\I2C|Add0~47\ & VCC))
-- \I2C|Add0~49\ = CARRY((\I2C|timer3_reg\(24) & !\I2C|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer3_reg\(24),
	datad => VCC,
	cin => \I2C|Add0~47\,
	combout => \I2C|Add0~48_combout\,
	cout => \I2C|Add0~49\);

-- Location: LCCOMB_X12_Y13_N2
\I2C|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal0~2_combout\ = (\I2C|Add0~16_combout\ & (!\I2C|Add0~22_combout\ & (!\I2C|Add0~20_combout\ & \I2C|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~16_combout\,
	datab => \I2C|Add0~22_combout\,
	datac => \I2C|Add0~20_combout\,
	datad => \I2C|Add0~18_combout\,
	combout => \I2C|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y13_N4
\I2C|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal0~1_combout\ = (!\I2C|Add0~12_combout\ & (!\I2C|Add0~10_combout\ & (!\I2C|Add0~8_combout\ & \I2C|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~12_combout\,
	datab => \I2C|Add0~10_combout\,
	datac => \I2C|Add0~8_combout\,
	datad => \I2C|Add0~14_combout\,
	combout => \I2C|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y11_N12
\I2C|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal0~3_combout\ = (!\I2C|Add0~26_combout\ & (\I2C|Add0~24_combout\ & (!\I2C|Add0~30_combout\ & !\I2C|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~26_combout\,
	datab => \I2C|Add0~24_combout\,
	datac => \I2C|Add0~30_combout\,
	datad => \I2C|Add0~28_combout\,
	combout => \I2C|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y13_N0
\I2C|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal0~4_combout\ = (\I2C|Equal0~0_combout\ & (\I2C|Equal0~2_combout\ & (\I2C|Equal0~1_combout\ & \I2C|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal0~0_combout\,
	datab => \I2C|Equal0~2_combout\,
	datac => \I2C|Equal0~1_combout\,
	datad => \I2C|Equal0~3_combout\,
	combout => \I2C|Equal0~4_combout\);

-- Location: LCCOMB_X13_Y12_N28
\I2C|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal0~5_combout\ = (!\I2C|Add0~34_combout\ & (!\I2C|Add0~38_combout\ & (!\I2C|Add0~36_combout\ & \I2C|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~34_combout\,
	datab => \I2C|Add0~38_combout\,
	datac => \I2C|Add0~36_combout\,
	datad => \I2C|Equal0~4_combout\,
	combout => \I2C|Equal0~5_combout\);

-- Location: LCCOMB_X13_Y12_N30
\I2C|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal0~6_combout\ = (!\I2C|Add0~40_combout\ & (!\I2C|Add0~32_combout\ & (!\I2C|Add0~42_combout\ & \I2C|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~40_combout\,
	datab => \I2C|Add0~32_combout\,
	datac => \I2C|Add0~42_combout\,
	datad => \I2C|Equal0~5_combout\,
	combout => \I2C|Equal0~6_combout\);

-- Location: LCCOMB_X12_Y12_N28
\I2C|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal0~7_combout\ = (!\I2C|Add0~46_combout\ & (\I2C|Equal0~6_combout\ & !\I2C|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add0~46_combout\,
	datac => \I2C|Equal0~6_combout\,
	datad => \I2C|Add0~44_combout\,
	combout => \I2C|Equal0~7_combout\);

-- Location: LCCOMB_X12_Y12_N30
\I2C|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal0~8_combout\ = (!\I2C|Add0~52_combout\ & (!\I2C|Add0~50_combout\ & (!\I2C|Add0~48_combout\ & \I2C|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add0~52_combout\,
	datab => \I2C|Add0~50_combout\,
	datac => \I2C|Add0~48_combout\,
	datad => \I2C|Equal0~7_combout\,
	combout => \I2C|Equal0~8_combout\);

-- Location: FF_X11_Y12_N7
\I2C|timer3_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add9~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_reg\(16));

-- Location: LCCOMB_X11_Y12_N28
\I2C|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal9~0_combout\ = (!\I2C|Add9~42_combout\ & (!\I2C|Add9~46_combout\ & (!\I2C|Add9~40_combout\ & !\I2C|Add9~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add9~42_combout\,
	datab => \I2C|Add9~46_combout\,
	datac => \I2C|Add9~40_combout\,
	datad => \I2C|Add9~44_combout\,
	combout => \I2C|Equal9~0_combout\);

-- Location: LCCOMB_X10_Y13_N10
\I2C|Equal9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal9~7_combout\ = (!\I2C|Add9~48_combout\ & (\I2C|Equal9~6_combout\ & \I2C|Equal9~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add9~48_combout\,
	datac => \I2C|Equal9~6_combout\,
	datad => \I2C|Equal9~5_combout\,
	combout => \I2C|Equal9~7_combout\);

-- Location: LCCOMB_X10_Y13_N24
\I2C|Equal9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal9~8_combout\ = (!\I2C|Add9~50_combout\ & (\I2C|Equal9~0_combout\ & (!\I2C|Add9~52_combout\ & \I2C|Equal9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add9~50_combout\,
	datab => \I2C|Equal9~0_combout\,
	datac => \I2C|Add9~52_combout\,
	datad => \I2C|Equal9~7_combout\,
	combout => \I2C|Equal9~8_combout\);

-- Location: FF_X10_Y13_N25
\I2C|timer3_flag.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Equal9~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer3_flag.01~q\);

-- Location: FF_X21_Y18_N13
\I2C|state_start.000000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_start.000000011~feeder_combout\,
	ena => \I2C|timer3_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_start.000000011~q\);

-- Location: LCCOMB_X21_Y18_N0
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

-- Location: FF_X21_Y18_N1
\I2C|state_start.000000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_start.000000000~0_combout\,
	ena => \I2C|timer3_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_start.000000000~q\);

-- Location: LCCOMB_X21_Y18_N24
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

-- Location: FF_X21_Y18_N25
\I2C|state_start.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_start.000000001~0_combout\,
	ena => \I2C|timer3_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_start.000000001~q\);

-- Location: LCCOMB_X21_Y18_N14
\I2C|state_start.000000010~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_start.000000010~feeder_combout\ = \I2C|state_start.000000001~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state_start.000000001~q\,
	combout => \I2C|state_start.000000010~feeder_combout\);

-- Location: FF_X21_Y18_N15
\I2C|state_start.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_start.000000010~feeder_combout\,
	ena => \I2C|timer3_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_start.000000010~q\);

-- Location: LCCOMB_X21_Y18_N20
\I2C|Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector68~0_combout\ = (\I2C|state_start.000000011~q\) # ((\I2C|state_start.000000010~q\) # (!\I2C|state_start.000000000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_start.000000011~q\,
	datab => \I2C|state_start.000000010~q\,
	datad => \I2C|state_start.000000000~q\,
	combout => \I2C|Selector68~0_combout\);

-- Location: FF_X21_Y18_N21
\I2C|SDA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector68~0_combout\,
	asdata => VCC,
	sload => \I2C|ALT_INV_timer3_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|SDA~reg0_q\);

-- Location: LCCOMB_X17_Y12_N18
\timer2_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~5_combout\ = (\Add0~34_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer2_reg~5_combout\);

-- Location: FF_X17_Y12_N19
\timer2_reg[17]\ : dffeas
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
	q => timer2_reg(17));

-- Location: LCCOMB_X16_Y13_N6
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

-- Location: LCCOMB_X16_Y13_N8
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

-- Location: FF_X16_Y13_N9
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

-- Location: LCCOMB_X16_Y13_N10
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

-- Location: LCCOMB_X16_Y13_N12
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

-- Location: LCCOMB_X16_Y13_N14
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

-- Location: FF_X16_Y13_N15
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

-- Location: LCCOMB_X16_Y13_N16
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

-- Location: FF_X16_Y13_N17
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

-- Location: LCCOMB_X16_Y13_N22
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

-- Location: LCCOMB_X16_Y13_N24
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (timer2_reg(9) & (!\Add0~17\)) # (!timer2_reg(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!timer2_reg(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X16_Y13_N25
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

-- Location: LCCOMB_X16_Y13_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (timer2_reg(10) & (\Add0~19\ $ (GND))) # (!timer2_reg(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((timer2_reg(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X16_Y13_N28
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (timer2_reg(11) & (!\Add0~21\)) # (!timer2_reg(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!timer2_reg(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X16_Y13_N29
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

-- Location: LCCOMB_X16_Y13_N30
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

-- Location: LCCOMB_X16_Y12_N0
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

-- Location: LCCOMB_X16_Y12_N4
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (timer2_reg(15) & (!\Add0~29\)) # (!timer2_reg(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!timer2_reg(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X16_Y12_N6
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

-- Location: FF_X16_Y12_N7
\timer2_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer2_reg(16));

-- Location: LCCOMB_X16_Y12_N8
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

-- Location: LCCOMB_X16_Y12_N10
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (timer2_reg(18) & (\Add0~35\ $ (GND))) # (!timer2_reg(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((timer2_reg(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X16_Y12_N12
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (timer2_reg(19) & (!\Add0~37\)) # (!timer2_reg(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!timer2_reg(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X16_Y12_N28
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Add0~32_combout\ & (!\Add0~36_combout\ & (\Add0~34_combout\ & \Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add0~36_combout\,
	datac => \Add0~34_combout\,
	datad => \Add0~38_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X16_Y13_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~2_combout\ & (!\Add0~4_combout\ & (!\Add0~6_combout\ & !\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X16_Y13_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~18_combout\ & (!\Add0~20_combout\ & (!\Add0~22_combout\ & !\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~20_combout\,
	datac => \Add0~22_combout\,
	datad => \Add0~16_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X17_Y12_N0
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Add0~28_combout\ & (\Add0~30_combout\ & (\Add0~26_combout\ & \Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Add0~30_combout\,
	datac => \Add0~26_combout\,
	datad => \Add0~24_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X17_Y13_N0
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X17_Y12_N26
\timer2_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~7_combout\ = (\Add0~40_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer2_reg~7_combout\);

-- Location: FF_X17_Y12_N27
\timer2_reg[20]\ : dffeas
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
	q => timer2_reg(20));

-- Location: LCCOMB_X16_Y12_N16
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

-- Location: LCCOMB_X17_Y12_N16
\timer2_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~8_combout\ = (\Add0~42_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~42_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer2_reg~8_combout\);

-- Location: FF_X17_Y12_N17
\timer2_reg[21]\ : dffeas
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
	q => timer2_reg(21));

-- Location: LCCOMB_X16_Y12_N18
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

-- Location: LCCOMB_X17_Y12_N22
\timer2_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~9_combout\ = (\Add0~44_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~44_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer2_reg~9_combout\);

-- Location: FF_X17_Y12_N23
\timer2_reg[22]\ : dffeas
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
	q => timer2_reg(22));

-- Location: LCCOMB_X16_Y12_N20
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (timer2_reg(23) & (!\Add0~45\)) # (!timer2_reg(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!timer2_reg(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer2_reg(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X17_Y12_N8
\timer2_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~10_combout\ = (\Add0~46_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~46_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer2_reg~10_combout\);

-- Location: FF_X17_Y12_N9
\timer2_reg[23]\ : dffeas
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
	q => timer2_reg(23));

-- Location: LCCOMB_X16_Y12_N22
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (timer2_reg(24) & (\Add0~47\ $ (GND))) # (!timer2_reg(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((timer2_reg(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer2_reg(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X16_Y12_N24
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

-- Location: LCCOMB_X17_Y12_N28
\timer2_reg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_reg~11_combout\ = (\Add0~50_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~50_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer2_reg~11_combout\);

-- Location: FF_X17_Y12_N29
\timer2_reg[25]\ : dffeas
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
	q => timer2_reg(25));

-- Location: LCCOMB_X16_Y12_N26
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

-- Location: LCCOMB_X16_Y12_N30
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Add0~48_combout\ & (!\Add0~52_combout\ & \Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~48_combout\,
	datac => \Add0~52_combout\,
	datad => \Add0~50_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X17_Y12_N2
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~6_combout\ & (\Equal0~5_combout\ & (\Equal0~4_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X17_Y12_N12
\timer2_flag.01~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer2_flag.01~feeder_combout\ = \Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~8_combout\,
	combout => \timer2_flag.01~feeder_combout\);

-- Location: FF_X17_Y12_N13
\timer2_flag.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \timer2_flag.01~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer2_flag.01~q\);

-- Location: LCCOMB_X33_Y12_N0
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

-- Location: FF_X33_Y12_N1
\LED_pos.00001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED_pos.00001~0_combout\,
	ena => \timer2_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_pos.00001~q\);

-- Location: LCCOMB_X33_Y12_N10
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

-- Location: FF_X33_Y12_N11
\LED_pos.00010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED_pos.00010~feeder_combout\,
	ena => \timer2_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_pos.00010~q\);

-- Location: LCCOMB_X33_Y12_N24
\LED_pos.00011~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED_pos.00011~feeder_combout\ = \LED_pos.00010~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LED_pos.00010~q\,
	combout => \LED_pos.00011~feeder_combout\);

-- Location: FF_X33_Y12_N25
\LED_pos.00011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED_pos.00011~feeder_combout\,
	ena => \timer2_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_pos.00011~q\);

-- Location: LCCOMB_X33_Y12_N18
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

-- Location: FF_X33_Y12_N19
\LED_pos.00100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED_pos.00100~feeder_combout\,
	ena => \timer2_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_pos.00100~q\);

-- Location: LCCOMB_X33_Y12_N2
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

-- Location: FF_X33_Y12_N3
\LED_pos.00000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LED_pos.00000~0_combout\,
	ena => \timer2_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_pos.00000~q\);

-- Location: LCCOMB_X33_Y12_N20
\LED1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED1~1_combout\ = (\timer2_flag.01~q\ & ((\LED_pos.00000~q\ & ((\LED1~reg0_q\))) # (!\LED_pos.00000~q\ & (\LED_status~q\)))) # (!\timer2_flag.01~q\ & (((\LED1~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_status~q\,
	datab => \timer2_flag.01~q\,
	datac => \LED1~reg0_q\,
	datad => \LED_pos.00000~q\,
	combout => \LED1~1_combout\);

-- Location: FF_X33_Y12_N21
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

-- Location: LCCOMB_X33_Y12_N14
\LED2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED2~1_combout\ = (\timer2_flag.01~q\ & ((\LED_pos.00001~q\ & (\LED_status~q\)) # (!\LED_pos.00001~q\ & ((\LED2~reg0_q\))))) # (!\timer2_flag.01~q\ & (((\LED2~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_status~q\,
	datab => \timer2_flag.01~q\,
	datac => \LED2~reg0_q\,
	datad => \LED_pos.00001~q\,
	combout => \LED2~1_combout\);

-- Location: FF_X33_Y12_N15
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

-- Location: LCCOMB_X33_Y12_N8
\LED3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED3~1_combout\ = (\timer2_flag.01~q\ & ((\LED_pos.00010~q\ & (\LED_status~q\)) # (!\LED_pos.00010~q\ & ((\LED3~reg0_q\))))) # (!\timer2_flag.01~q\ & (((\LED3~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_status~q\,
	datab => \timer2_flag.01~q\,
	datac => \LED3~reg0_q\,
	datad => \LED_pos.00010~q\,
	combout => \LED3~1_combout\);

-- Location: FF_X33_Y12_N9
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

-- Location: LCCOMB_X33_Y12_N22
\LED4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED4~1_combout\ = (\timer2_flag.01~q\ & ((\LED_pos.00011~q\ & (\LED_status~q\)) # (!\LED_pos.00011~q\ & ((\LED4~reg0_q\))))) # (!\timer2_flag.01~q\ & (((\LED4~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_status~q\,
	datab => \timer2_flag.01~q\,
	datac => \LED4~reg0_q\,
	datad => \LED_pos.00011~q\,
	combout => \LED4~1_combout\);

-- Location: FF_X33_Y12_N23
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

-- Location: LCCOMB_X22_Y14_N28
\I2C|state.000000111~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state.000000111~feeder_combout\ = \I2C|state.000000110~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state.000000110~q\,
	combout => \I2C|state.000000111~feeder_combout\);

-- Location: FF_X19_Y15_N13
\I2C|timer1_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(19));

-- Location: LCCOMB_X18_Y16_N8
\I2C|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~2_combout\ = (\I2C|timer1_reg\(1) & (!\I2C|Add1~1\)) # (!\I2C|timer1_reg\(1) & ((\I2C|Add1~1\) # (GND)))
-- \I2C|Add1~3\ = CARRY((!\I2C|Add1~1\) # (!\I2C|timer1_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_reg\(1),
	datad => VCC,
	cin => \I2C|Add1~1\,
	combout => \I2C|Add1~2_combout\,
	cout => \I2C|Add1~3\);

-- Location: LCCOMB_X18_Y16_N10
\I2C|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~4_combout\ = (\I2C|timer1_reg\(2) & (\I2C|Add1~3\ $ (GND))) # (!\I2C|timer1_reg\(2) & (!\I2C|Add1~3\ & VCC))
-- \I2C|Add1~5\ = CARRY((\I2C|timer1_reg\(2) & !\I2C|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_reg\(2),
	datad => VCC,
	cin => \I2C|Add1~3\,
	combout => \I2C|Add1~4_combout\,
	cout => \I2C|Add1~5\);

-- Location: LCCOMB_X18_Y16_N12
\I2C|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~6_combout\ = (\I2C|timer1_reg\(3) & (!\I2C|Add1~5\)) # (!\I2C|timer1_reg\(3) & ((\I2C|Add1~5\) # (GND)))
-- \I2C|Add1~7\ = CARRY((!\I2C|Add1~5\) # (!\I2C|timer1_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_reg\(3),
	datad => VCC,
	cin => \I2C|Add1~5\,
	combout => \I2C|Add1~6_combout\,
	cout => \I2C|Add1~7\);

-- Location: LCCOMB_X18_Y16_N14
\I2C|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~8_combout\ = (\I2C|timer1_reg\(4) & (\I2C|Add1~7\ $ (GND))) # (!\I2C|timer1_reg\(4) & (!\I2C|Add1~7\ & VCC))
-- \I2C|Add1~9\ = CARRY((\I2C|timer1_reg\(4) & !\I2C|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer1_reg\(4),
	datad => VCC,
	cin => \I2C|Add1~7\,
	combout => \I2C|Add1~8_combout\,
	cout => \I2C|Add1~9\);

-- Location: LCCOMB_X17_Y16_N6
\I2C|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~0_combout\ = \I2C|Add1~0_combout\ $ (VCC)
-- \I2C|Add3~1\ = CARRY(\I2C|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add1~0_combout\,
	datad => VCC,
	combout => \I2C|Add3~0_combout\,
	cout => \I2C|Add3~1\);

-- Location: LCCOMB_X17_Y16_N8
\I2C|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~2_combout\ = (\I2C|Add1~2_combout\ & (!\I2C|Add3~1\)) # (!\I2C|Add1~2_combout\ & ((\I2C|Add3~1\) # (GND)))
-- \I2C|Add3~3\ = CARRY((!\I2C|Add3~1\) # (!\I2C|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~2_combout\,
	datad => VCC,
	cin => \I2C|Add3~1\,
	combout => \I2C|Add3~2_combout\,
	cout => \I2C|Add3~3\);

-- Location: LCCOMB_X17_Y16_N10
\I2C|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~4_combout\ = (\I2C|Add1~4_combout\ & (\I2C|Add3~3\ $ (GND))) # (!\I2C|Add1~4_combout\ & (!\I2C|Add3~3\ & VCC))
-- \I2C|Add3~5\ = CARRY((\I2C|Add1~4_combout\ & !\I2C|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~4_combout\,
	datad => VCC,
	cin => \I2C|Add3~3\,
	combout => \I2C|Add3~4_combout\,
	cout => \I2C|Add3~5\);

-- Location: LCCOMB_X17_Y16_N12
\I2C|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~6_combout\ = (\I2C|Add1~6_combout\ & (!\I2C|Add3~5\)) # (!\I2C|Add1~6_combout\ & ((\I2C|Add3~5\) # (GND)))
-- \I2C|Add3~7\ = CARRY((!\I2C|Add3~5\) # (!\I2C|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~6_combout\,
	datad => VCC,
	cin => \I2C|Add3~5\,
	combout => \I2C|Add3~6_combout\,
	cout => \I2C|Add3~7\);

-- Location: LCCOMB_X17_Y16_N14
\I2C|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~8_combout\ = (\I2C|Add3~7\ & (!\I2C|Equal1~8_combout\ & (\I2C|Add1~8_combout\ & VCC))) # (!\I2C|Add3~7\ & ((((!\I2C|Equal1~8_combout\ & \I2C|Add1~8_combout\)))))
-- \I2C|Add3~9\ = CARRY((!\I2C|Equal1~8_combout\ & (\I2C|Add1~8_combout\ & !\I2C|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal1~8_combout\,
	datab => \I2C|Add1~8_combout\,
	datad => VCC,
	cin => \I2C|Add3~7\,
	combout => \I2C|Add3~8_combout\,
	cout => \I2C|Add3~9\);

-- Location: LCCOMB_X19_Y16_N8
\I2C|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~2_combout\ = (\I2C|Add3~2_combout\ & (!\I2C|Add6~1\)) # (!\I2C|Add3~2_combout\ & ((\I2C|Add6~1\) # (GND)))
-- \I2C|Add6~3\ = CARRY((!\I2C|Add6~1\) # (!\I2C|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~2_combout\,
	datad => VCC,
	cin => \I2C|Add6~1\,
	combout => \I2C|Add6~2_combout\,
	cout => \I2C|Add6~3\);

-- Location: LCCOMB_X19_Y16_N10
\I2C|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~4_combout\ = (\I2C|Add3~4_combout\ & (\I2C|Add6~3\ $ (GND))) # (!\I2C|Add3~4_combout\ & (!\I2C|Add6~3\ & VCC))
-- \I2C|Add6~5\ = CARRY((\I2C|Add3~4_combout\ & !\I2C|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~4_combout\,
	datad => VCC,
	cin => \I2C|Add6~3\,
	combout => \I2C|Add6~4_combout\,
	cout => \I2C|Add6~5\);

-- Location: LCCOMB_X19_Y16_N12
\I2C|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~6_combout\ = (\I2C|Add3~6_combout\ & (!\I2C|Add6~5\)) # (!\I2C|Add3~6_combout\ & ((\I2C|Add6~5\) # (GND)))
-- \I2C|Add6~7\ = CARRY((!\I2C|Add6~5\) # (!\I2C|Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~6_combout\,
	datad => VCC,
	cin => \I2C|Add6~5\,
	combout => \I2C|Add6~6_combout\,
	cout => \I2C|Add6~7\);

-- Location: LCCOMB_X19_Y16_N14
\I2C|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~8_combout\ = (\I2C|Add6~7\ & (!\I2C|Equal3~8_combout\ & (\I2C|Add3~8_combout\ & VCC))) # (!\I2C|Add6~7\ & ((((!\I2C|Equal3~8_combout\ & \I2C|Add3~8_combout\)))))
-- \I2C|Add6~9\ = CARRY((!\I2C|Equal3~8_combout\ & (\I2C|Add3~8_combout\ & !\I2C|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal3~8_combout\,
	datab => \I2C|Add3~8_combout\,
	datad => VCC,
	cin => \I2C|Add6~7\,
	combout => \I2C|Add6~8_combout\,
	cout => \I2C|Add6~9\);

-- Location: LCCOMB_X18_Y16_N0
\I2C|timer1_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer1_reg~0_combout\ = (\I2C|Add6~8_combout\ & !\I2C|Equal6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add6~8_combout\,
	datac => \I2C|Equal6~8_combout\,
	combout => \I2C|timer1_reg~0_combout\);

-- Location: FF_X18_Y16_N1
\I2C|timer1_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer1_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(4));

-- Location: LCCOMB_X18_Y16_N16
\I2C|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~10_combout\ = (\I2C|timer1_reg\(5) & (!\I2C|Add1~9\)) # (!\I2C|timer1_reg\(5) & ((\I2C|Add1~9\) # (GND)))
-- \I2C|Add1~11\ = CARRY((!\I2C|Add1~9\) # (!\I2C|timer1_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_reg\(5),
	datad => VCC,
	cin => \I2C|Add1~9\,
	combout => \I2C|Add1~10_combout\,
	cout => \I2C|Add1~11\);

-- Location: LCCOMB_X18_Y16_N18
\I2C|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~12_combout\ = (\I2C|timer1_reg\(6) & (\I2C|Add1~11\ $ (GND))) # (!\I2C|timer1_reg\(6) & (!\I2C|Add1~11\ & VCC))
-- \I2C|Add1~13\ = CARRY((\I2C|timer1_reg\(6) & !\I2C|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer1_reg\(6),
	datad => VCC,
	cin => \I2C|Add1~11\,
	combout => \I2C|Add1~12_combout\,
	cout => \I2C|Add1~13\);

-- Location: LCCOMB_X17_Y16_N18
\I2C|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~12_combout\ = (\I2C|Add1~12_combout\ & (\I2C|Add3~11\ $ (GND))) # (!\I2C|Add1~12_combout\ & (!\I2C|Add3~11\ & VCC))
-- \I2C|Add3~13\ = CARRY((\I2C|Add1~12_combout\ & !\I2C|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~12_combout\,
	datad => VCC,
	cin => \I2C|Add3~11\,
	combout => \I2C|Add3~12_combout\,
	cout => \I2C|Add3~13\);

-- Location: LCCOMB_X19_Y16_N16
\I2C|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~10_combout\ = (\I2C|Add3~10_combout\ & (!\I2C|Add6~9\)) # (!\I2C|Add3~10_combout\ & ((\I2C|Add6~9\) # (GND)))
-- \I2C|Add6~11\ = CARRY((!\I2C|Add6~9\) # (!\I2C|Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~10_combout\,
	datad => VCC,
	cin => \I2C|Add6~9\,
	combout => \I2C|Add6~10_combout\,
	cout => \I2C|Add6~11\);

-- Location: LCCOMB_X19_Y16_N18
\I2C|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~12_combout\ = (\I2C|Add3~12_combout\ & (\I2C|Add6~11\ $ (GND))) # (!\I2C|Add3~12_combout\ & (!\I2C|Add6~11\ & VCC))
-- \I2C|Add6~13\ = CARRY((\I2C|Add3~12_combout\ & !\I2C|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~12_combout\,
	datad => VCC,
	cin => \I2C|Add6~11\,
	combout => \I2C|Add6~12_combout\,
	cout => \I2C|Add6~13\);

-- Location: FF_X19_Y16_N19
\I2C|timer1_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(6));

-- Location: LCCOMB_X18_Y16_N22
\I2C|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~16_combout\ = (\I2C|timer1_reg\(8) & (\I2C|Add1~15\ $ (GND))) # (!\I2C|timer1_reg\(8) & (!\I2C|Add1~15\ & VCC))
-- \I2C|Add1~17\ = CARRY((\I2C|timer1_reg\(8) & !\I2C|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer1_reg\(8),
	datad => VCC,
	cin => \I2C|Add1~15\,
	combout => \I2C|Add1~16_combout\,
	cout => \I2C|Add1~17\);

-- Location: LCCOMB_X17_Y16_N22
\I2C|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~16_combout\ = (\I2C|Add3~15\ & (!\I2C|Equal1~8_combout\ & (\I2C|Add1~16_combout\ & VCC))) # (!\I2C|Add3~15\ & ((((!\I2C|Equal1~8_combout\ & \I2C|Add1~16_combout\)))))
-- \I2C|Add3~17\ = CARRY((!\I2C|Equal1~8_combout\ & (\I2C|Add1~16_combout\ & !\I2C|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal1~8_combout\,
	datab => \I2C|Add1~16_combout\,
	datad => VCC,
	cin => \I2C|Add3~15\,
	combout => \I2C|Add3~16_combout\,
	cout => \I2C|Add3~17\);

-- Location: LCCOMB_X19_Y16_N20
\I2C|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~14_combout\ = (\I2C|Add3~14_combout\ & (!\I2C|Add6~13\)) # (!\I2C|Add3~14_combout\ & ((\I2C|Add6~13\) # (GND)))
-- \I2C|Add6~15\ = CARRY((!\I2C|Add6~13\) # (!\I2C|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~14_combout\,
	datad => VCC,
	cin => \I2C|Add6~13\,
	combout => \I2C|Add6~14_combout\,
	cout => \I2C|Add6~15\);

-- Location: LCCOMB_X19_Y16_N22
\I2C|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~16_combout\ = (\I2C|Add6~15\ & (!\I2C|Equal3~8_combout\ & (\I2C|Add3~16_combout\ & VCC))) # (!\I2C|Add6~15\ & ((((!\I2C|Equal3~8_combout\ & \I2C|Add3~16_combout\)))))
-- \I2C|Add6~17\ = CARRY((!\I2C|Equal3~8_combout\ & (\I2C|Add3~16_combout\ & !\I2C|Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal3~8_combout\,
	datab => \I2C|Add3~16_combout\,
	datad => VCC,
	cin => \I2C|Add6~15\,
	combout => \I2C|Add6~16_combout\,
	cout => \I2C|Add6~17\);

-- Location: LCCOMB_X18_Y16_N2
\I2C|timer1_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer1_reg~1_combout\ = (!\I2C|Equal6~8_combout\ & \I2C|Add6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|Equal6~8_combout\,
	datad => \I2C|Add6~16_combout\,
	combout => \I2C|timer1_reg~1_combout\);

-- Location: FF_X18_Y16_N3
\I2C|timer1_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer1_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(8));

-- Location: LCCOMB_X18_Y16_N24
\I2C|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~18_combout\ = (\I2C|timer1_reg\(9) & (!\I2C|Add1~17\)) # (!\I2C|timer1_reg\(9) & ((\I2C|Add1~17\) # (GND)))
-- \I2C|Add1~19\ = CARRY((!\I2C|Add1~17\) # (!\I2C|timer1_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_reg\(9),
	datad => VCC,
	cin => \I2C|Add1~17\,
	combout => \I2C|Add1~18_combout\,
	cout => \I2C|Add1~19\);

-- Location: LCCOMB_X18_Y16_N26
\I2C|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~20_combout\ = (\I2C|timer1_reg\(10) & (\I2C|Add1~19\ $ (GND))) # (!\I2C|timer1_reg\(10) & (!\I2C|Add1~19\ & VCC))
-- \I2C|Add1~21\ = CARRY((\I2C|timer1_reg\(10) & !\I2C|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer1_reg\(10),
	datad => VCC,
	cin => \I2C|Add1~19\,
	combout => \I2C|Add1~20_combout\,
	cout => \I2C|Add1~21\);

-- Location: LCCOMB_X17_Y16_N24
\I2C|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~18_combout\ = (\I2C|Add3~17\ & ((\I2C|Equal1~8_combout\) # ((!\I2C|Add1~18_combout\)))) # (!\I2C|Add3~17\ & (((!\I2C|Equal1~8_combout\ & \I2C|Add1~18_combout\)) # (GND)))
-- \I2C|Add3~19\ = CARRY((\I2C|Equal1~8_combout\) # ((!\I2C|Add3~17\) # (!\I2C|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal1~8_combout\,
	datab => \I2C|Add1~18_combout\,
	datad => VCC,
	cin => \I2C|Add3~17\,
	combout => \I2C|Add3~18_combout\,
	cout => \I2C|Add3~19\);

-- Location: LCCOMB_X17_Y16_N26
\I2C|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~20_combout\ = (\I2C|Add3~19\ & (!\I2C|Equal1~8_combout\ & (\I2C|Add1~20_combout\ & VCC))) # (!\I2C|Add3~19\ & ((((!\I2C|Equal1~8_combout\ & \I2C|Add1~20_combout\)))))
-- \I2C|Add3~21\ = CARRY((!\I2C|Equal1~8_combout\ & (\I2C|Add1~20_combout\ & !\I2C|Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal1~8_combout\,
	datab => \I2C|Add1~20_combout\,
	datad => VCC,
	cin => \I2C|Add3~19\,
	combout => \I2C|Add3~20_combout\,
	cout => \I2C|Add3~21\);

-- Location: LCCOMB_X19_Y16_N24
\I2C|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~18_combout\ = (\I2C|Add6~17\ & ((\I2C|Equal3~8_combout\) # ((!\I2C|Add3~18_combout\)))) # (!\I2C|Add6~17\ & (((!\I2C|Equal3~8_combout\ & \I2C|Add3~18_combout\)) # (GND)))
-- \I2C|Add6~19\ = CARRY((\I2C|Equal3~8_combout\) # ((!\I2C|Add6~17\) # (!\I2C|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal3~8_combout\,
	datab => \I2C|Add3~18_combout\,
	datad => VCC,
	cin => \I2C|Add6~17\,
	combout => \I2C|Add6~18_combout\,
	cout => \I2C|Add6~19\);

-- Location: LCCOMB_X19_Y16_N26
\I2C|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~20_combout\ = (\I2C|Add6~19\ & (!\I2C|Equal3~8_combout\ & (\I2C|Add3~20_combout\ & VCC))) # (!\I2C|Add6~19\ & ((((!\I2C|Equal3~8_combout\ & \I2C|Add3~20_combout\)))))
-- \I2C|Add6~21\ = CARRY((!\I2C|Equal3~8_combout\ & (\I2C|Add3~20_combout\ & !\I2C|Add6~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal3~8_combout\,
	datab => \I2C|Add3~20_combout\,
	datad => VCC,
	cin => \I2C|Add6~19\,
	combout => \I2C|Add6~20_combout\,
	cout => \I2C|Add6~21\);

-- Location: LCCOMB_X18_Y16_N4
\I2C|timer1_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer1_reg~3_combout\ = (!\I2C|Equal6~8_combout\ & \I2C|Add6~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|Equal6~8_combout\,
	datad => \I2C|Add6~20_combout\,
	combout => \I2C|timer1_reg~3_combout\);

-- Location: FF_X18_Y16_N5
\I2C|timer1_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer1_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(10));

-- Location: LCCOMB_X18_Y16_N28
\I2C|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~22_combout\ = (\I2C|timer1_reg\(11) & (!\I2C|Add1~21\)) # (!\I2C|timer1_reg\(11) & ((\I2C|Add1~21\) # (GND)))
-- \I2C|Add1~23\ = CARRY((!\I2C|Add1~21\) # (!\I2C|timer1_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_reg\(11),
	datad => VCC,
	cin => \I2C|Add1~21\,
	combout => \I2C|Add1~22_combout\,
	cout => \I2C|Add1~23\);

-- Location: LCCOMB_X18_Y15_N0
\I2C|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~26_combout\ = (\I2C|timer1_reg\(13) & (!\I2C|Add1~25\)) # (!\I2C|timer1_reg\(13) & ((\I2C|Add1~25\) # (GND)))
-- \I2C|Add1~27\ = CARRY((!\I2C|Add1~25\) # (!\I2C|timer1_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer1_reg\(13),
	datad => VCC,
	cin => \I2C|Add1~25\,
	combout => \I2C|Add1~26_combout\,
	cout => \I2C|Add1~27\);

-- Location: LCCOMB_X17_Y15_N0
\I2C|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~26_combout\ = (\I2C|Add3~25\ & ((\I2C|Equal1~8_combout\) # ((!\I2C|Add1~26_combout\)))) # (!\I2C|Add3~25\ & (((!\I2C|Equal1~8_combout\ & \I2C|Add1~26_combout\)) # (GND)))
-- \I2C|Add3~27\ = CARRY((\I2C|Equal1~8_combout\) # ((!\I2C|Add3~25\) # (!\I2C|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal1~8_combout\,
	datab => \I2C|Add1~26_combout\,
	datad => VCC,
	cin => \I2C|Add3~25\,
	combout => \I2C|Add3~26_combout\,
	cout => \I2C|Add3~27\);

-- Location: LCCOMB_X19_Y16_N28
\I2C|Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~22_combout\ = (\I2C|Add3~22_combout\ & (!\I2C|Add6~21\)) # (!\I2C|Add3~22_combout\ & ((\I2C|Add6~21\) # (GND)))
-- \I2C|Add6~23\ = CARRY((!\I2C|Add6~21\) # (!\I2C|Add3~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~22_combout\,
	datad => VCC,
	cin => \I2C|Add6~21\,
	combout => \I2C|Add6~22_combout\,
	cout => \I2C|Add6~23\);

-- Location: LCCOMB_X19_Y15_N0
\I2C|Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~26_combout\ = (\I2C|Add6~25\ & ((\I2C|Equal3~8_combout\) # ((!\I2C|Add3~26_combout\)))) # (!\I2C|Add6~25\ & (((!\I2C|Equal3~8_combout\ & \I2C|Add3~26_combout\)) # (GND)))
-- \I2C|Add6~27\ = CARRY((\I2C|Equal3~8_combout\) # ((!\I2C|Add6~25\) # (!\I2C|Add3~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal3~8_combout\,
	datab => \I2C|Add3~26_combout\,
	datad => VCC,
	cin => \I2C|Add6~25\,
	combout => \I2C|Add6~26_combout\,
	cout => \I2C|Add6~27\);

-- Location: LCCOMB_X19_Y14_N24
\I2C|timer1_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer1_reg~4_combout\ = (\I2C|Add6~26_combout\ & !\I2C|Equal6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|Add6~26_combout\,
	datad => \I2C|Equal6~8_combout\,
	combout => \I2C|timer1_reg~4_combout\);

-- Location: FF_X19_Y14_N25
\I2C|timer1_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer1_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(13));

-- Location: LCCOMB_X18_Y15_N8
\I2C|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~34_combout\ = (\I2C|timer1_reg\(17) & (!\I2C|Add1~33\)) # (!\I2C|timer1_reg\(17) & ((\I2C|Add1~33\) # (GND)))
-- \I2C|Add1~35\ = CARRY((!\I2C|Add1~33\) # (!\I2C|timer1_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer1_reg\(17),
	datad => VCC,
	cin => \I2C|Add1~33\,
	combout => \I2C|Add1~34_combout\,
	cout => \I2C|Add1~35\);

-- Location: LCCOMB_X17_Y15_N2
\I2C|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~28_combout\ = (\I2C|Add1~28_combout\ & (\I2C|Add3~27\ $ (GND))) # (!\I2C|Add1~28_combout\ & (!\I2C|Add3~27\ & VCC))
-- \I2C|Add3~29\ = CARRY((\I2C|Add1~28_combout\ & !\I2C|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add1~28_combout\,
	datad => VCC,
	cin => \I2C|Add3~27\,
	combout => \I2C|Add3~28_combout\,
	cout => \I2C|Add3~29\);

-- Location: LCCOMB_X17_Y15_N4
\I2C|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~30_combout\ = (\I2C|Add1~30_combout\ & (!\I2C|Add3~29\)) # (!\I2C|Add1~30_combout\ & ((\I2C|Add3~29\) # (GND)))
-- \I2C|Add3~31\ = CARRY((!\I2C|Add3~29\) # (!\I2C|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add1~30_combout\,
	datad => VCC,
	cin => \I2C|Add3~29\,
	combout => \I2C|Add3~30_combout\,
	cout => \I2C|Add3~31\);

-- Location: LCCOMB_X17_Y15_N8
\I2C|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~34_combout\ = (\I2C|Add1~34_combout\ & (!\I2C|Add3~33\)) # (!\I2C|Add1~34_combout\ & ((\I2C|Add3~33\) # (GND)))
-- \I2C|Add3~35\ = CARRY((!\I2C|Add3~33\) # (!\I2C|Add1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~34_combout\,
	datad => VCC,
	cin => \I2C|Add3~33\,
	combout => \I2C|Add3~34_combout\,
	cout => \I2C|Add3~35\);

-- Location: LCCOMB_X19_Y15_N6
\I2C|Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~32_combout\ = (\I2C|Add3~32_combout\ & (\I2C|Add6~31\ $ (GND))) # (!\I2C|Add3~32_combout\ & (!\I2C|Add6~31\ & VCC))
-- \I2C|Add6~33\ = CARRY((\I2C|Add3~32_combout\ & !\I2C|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~32_combout\,
	datad => VCC,
	cin => \I2C|Add6~31\,
	combout => \I2C|Add6~32_combout\,
	cout => \I2C|Add6~33\);

-- Location: LCCOMB_X19_Y15_N8
\I2C|Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~34_combout\ = (\I2C|Add3~34_combout\ & (!\I2C|Add6~33\)) # (!\I2C|Add3~34_combout\ & ((\I2C|Add6~33\) # (GND)))
-- \I2C|Add6~35\ = CARRY((!\I2C|Add6~33\) # (!\I2C|Add3~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~34_combout\,
	datad => VCC,
	cin => \I2C|Add6~33\,
	combout => \I2C|Add6~34_combout\,
	cout => \I2C|Add6~35\);

-- Location: FF_X19_Y15_N9
\I2C|timer1_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(17));

-- Location: LCCOMB_X18_Y15_N10
\I2C|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~36_combout\ = (\I2C|timer1_reg\(18) & (\I2C|Add1~35\ $ (GND))) # (!\I2C|timer1_reg\(18) & (!\I2C|Add1~35\ & VCC))
-- \I2C|Add1~37\ = CARRY((\I2C|timer1_reg\(18) & !\I2C|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer1_reg\(18),
	datad => VCC,
	cin => \I2C|Add1~35\,
	combout => \I2C|Add1~36_combout\,
	cout => \I2C|Add1~37\);

-- Location: LCCOMB_X17_Y15_N10
\I2C|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~36_combout\ = (\I2C|Add1~36_combout\ & (\I2C|Add3~35\ $ (GND))) # (!\I2C|Add1~36_combout\ & (!\I2C|Add3~35\ & VCC))
-- \I2C|Add3~37\ = CARRY((\I2C|Add1~36_combout\ & !\I2C|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~36_combout\,
	datad => VCC,
	cin => \I2C|Add3~35\,
	combout => \I2C|Add3~36_combout\,
	cout => \I2C|Add3~37\);

-- Location: LCCOMB_X19_Y15_N10
\I2C|Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~36_combout\ = (\I2C|Add3~36_combout\ & (\I2C|Add6~35\ $ (GND))) # (!\I2C|Add3~36_combout\ & (!\I2C|Add6~35\ & VCC))
-- \I2C|Add6~37\ = CARRY((\I2C|Add3~36_combout\ & !\I2C|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~36_combout\,
	datad => VCC,
	cin => \I2C|Add6~35\,
	combout => \I2C|Add6~36_combout\,
	cout => \I2C|Add6~37\);

-- Location: FF_X19_Y15_N11
\I2C|timer1_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(18));

-- Location: LCCOMB_X18_Y15_N12
\I2C|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~38_combout\ = (\I2C|timer1_reg\(19) & (!\I2C|Add1~37\)) # (!\I2C|timer1_reg\(19) & ((\I2C|Add1~37\) # (GND)))
-- \I2C|Add1~39\ = CARRY((!\I2C|Add1~37\) # (!\I2C|timer1_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer1_reg\(19),
	datad => VCC,
	cin => \I2C|Add1~37\,
	combout => \I2C|Add1~38_combout\,
	cout => \I2C|Add1~39\);

-- Location: LCCOMB_X17_Y15_N12
\I2C|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~38_combout\ = (\I2C|Add1~38_combout\ & (!\I2C|Add3~37\)) # (!\I2C|Add1~38_combout\ & ((\I2C|Add3~37\) # (GND)))
-- \I2C|Add3~39\ = CARRY((!\I2C|Add3~37\) # (!\I2C|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add1~38_combout\,
	datad => VCC,
	cin => \I2C|Add3~37\,
	combout => \I2C|Add3~38_combout\,
	cout => \I2C|Add3~39\);

-- Location: LCCOMB_X19_Y15_N12
\I2C|Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~38_combout\ = (\I2C|Add3~38_combout\ & (!\I2C|Add6~37\)) # (!\I2C|Add3~38_combout\ & ((\I2C|Add6~37\) # (GND)))
-- \I2C|Add6~39\ = CARRY((!\I2C|Add6~37\) # (!\I2C|Add3~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~38_combout\,
	datad => VCC,
	cin => \I2C|Add6~37\,
	combout => \I2C|Add6~38_combout\,
	cout => \I2C|Add6~39\);

-- Location: LCCOMB_X19_Y15_N28
\I2C|Equal6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal6~5_combout\ = (!\I2C|Add6~36_combout\ & (!\I2C|Add6~38_combout\ & (!\I2C|Add6~34_combout\ & !\I2C|Add6~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add6~36_combout\,
	datab => \I2C|Add6~38_combout\,
	datac => \I2C|Add6~34_combout\,
	datad => \I2C|Add6~32_combout\,
	combout => \I2C|Equal6~5_combout\);

-- Location: LCCOMB_X19_Y15_N14
\I2C|Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~40_combout\ = (\I2C|Add3~40_combout\ & (\I2C|Add6~39\ $ (GND))) # (!\I2C|Add3~40_combout\ & (!\I2C|Add6~39\ & VCC))
-- \I2C|Add6~41\ = CARRY((\I2C|Add3~40_combout\ & !\I2C|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~40_combout\,
	datad => VCC,
	cin => \I2C|Add6~39\,
	combout => \I2C|Add6~40_combout\,
	cout => \I2C|Add6~41\);

-- Location: LCCOMB_X19_Y15_N16
\I2C|Add6~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~42_combout\ = (\I2C|Add3~42_combout\ & (!\I2C|Add6~41\)) # (!\I2C|Add3~42_combout\ & ((\I2C|Add6~41\) # (GND)))
-- \I2C|Add6~43\ = CARRY((!\I2C|Add6~41\) # (!\I2C|Add3~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~42_combout\,
	datad => VCC,
	cin => \I2C|Add6~41\,
	combout => \I2C|Add6~42_combout\,
	cout => \I2C|Add6~43\);

-- Location: LCCOMB_X19_Y15_N18
\I2C|Add6~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~44_combout\ = (\I2C|Add3~44_combout\ & (\I2C|Add6~43\ $ (GND))) # (!\I2C|Add3~44_combout\ & (!\I2C|Add6~43\ & VCC))
-- \I2C|Add6~45\ = CARRY((\I2C|Add3~44_combout\ & !\I2C|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add3~44_combout\,
	datad => VCC,
	cin => \I2C|Add6~43\,
	combout => \I2C|Add6~44_combout\,
	cout => \I2C|Add6~45\);

-- Location: FF_X19_Y15_N19
\I2C|timer1_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(22));

-- Location: FF_X19_Y15_N17
\I2C|timer1_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(21));

-- Location: FF_X19_Y15_N15
\I2C|timer1_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Add6~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_reg\(20));

-- Location: LCCOMB_X18_Y15_N14
\I2C|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~40_combout\ = (\I2C|timer1_reg\(20) & (\I2C|Add1~39\ $ (GND))) # (!\I2C|timer1_reg\(20) & (!\I2C|Add1~39\ & VCC))
-- \I2C|Add1~41\ = CARRY((\I2C|timer1_reg\(20) & !\I2C|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer1_reg\(20),
	datad => VCC,
	cin => \I2C|Add1~39\,
	combout => \I2C|Add1~40_combout\,
	cout => \I2C|Add1~41\);

-- Location: LCCOMB_X18_Y15_N16
\I2C|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~42_combout\ = (\I2C|timer1_reg\(21) & (!\I2C|Add1~41\)) # (!\I2C|timer1_reg\(21) & ((\I2C|Add1~41\) # (GND)))
-- \I2C|Add1~43\ = CARRY((!\I2C|Add1~41\) # (!\I2C|timer1_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer1_reg\(21),
	datad => VCC,
	cin => \I2C|Add1~41\,
	combout => \I2C|Add1~42_combout\,
	cout => \I2C|Add1~43\);

-- Location: LCCOMB_X18_Y15_N18
\I2C|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add1~44_combout\ = (\I2C|timer1_reg\(22) & (\I2C|Add1~43\ $ (GND))) # (!\I2C|timer1_reg\(22) & (!\I2C|Add1~43\ & VCC))
-- \I2C|Add1~45\ = CARRY((\I2C|timer1_reg\(22) & !\I2C|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer1_reg\(22),
	datad => VCC,
	cin => \I2C|Add1~43\,
	combout => \I2C|Add1~44_combout\,
	cout => \I2C|Add1~45\);

-- Location: LCCOMB_X17_Y15_N20
\I2C|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add3~46_combout\ = (\I2C|Add1~46_combout\ & (!\I2C|Add3~45\)) # (!\I2C|Add1~46_combout\ & ((\I2C|Add3~45\) # (GND)))
-- \I2C|Add3~47\ = CARRY((!\I2C|Add3~45\) # (!\I2C|Add1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add1~46_combout\,
	datad => VCC,
	cin => \I2C|Add3~45\,
	combout => \I2C|Add3~46_combout\,
	cout => \I2C|Add3~47\);

-- Location: LCCOMB_X19_Y15_N22
\I2C|Add6~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add6~48_combout\ = (\I2C|Add3~48_combout\ & (\I2C|Add6~47\ $ (GND))) # (!\I2C|Add3~48_combout\ & (!\I2C|Add6~47\ & VCC))
-- \I2C|Add6~49\ = CARRY((\I2C|Add3~48_combout\ & !\I2C|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add3~48_combout\,
	datad => VCC,
	cin => \I2C|Add6~47\,
	combout => \I2C|Add6~48_combout\,
	cout => \I2C|Add6~49\);

-- Location: LCCOMB_X19_Y14_N22
\I2C|Equal6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal6~7_combout\ = (!\I2C|Add6~52_combout\ & (!\I2C|Add6~50_combout\ & !\I2C|Add6~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add6~52_combout\,
	datab => \I2C|Add6~50_combout\,
	datac => \I2C|Add6~48_combout\,
	combout => \I2C|Equal6~7_combout\);

-- Location: LCCOMB_X19_Y16_N0
\I2C|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal6~0_combout\ = (!\I2C|Add6~0_combout\ & (!\I2C|Add6~4_combout\ & (!\I2C|Add6~2_combout\ & !\I2C|Add6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add6~0_combout\,
	datab => \I2C|Add6~4_combout\,
	datac => \I2C|Add6~2_combout\,
	datad => \I2C|Add6~6_combout\,
	combout => \I2C|Equal6~0_combout\);

-- Location: LCCOMB_X19_Y16_N2
\I2C|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal6~1_combout\ = (\I2C|Add6~8_combout\ & (!\I2C|Add6~12_combout\ & (!\I2C|Add6~10_combout\ & !\I2C|Add6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add6~8_combout\,
	datab => \I2C|Add6~12_combout\,
	datac => \I2C|Add6~10_combout\,
	datad => \I2C|Add6~14_combout\,
	combout => \I2C|Equal6~1_combout\);

-- Location: LCCOMB_X19_Y16_N4
\I2C|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal6~2_combout\ = (\I2C|Add6~20_combout\ & (\I2C|Add6~18_combout\ & (!\I2C|Add6~22_combout\ & \I2C|Add6~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add6~20_combout\,
	datab => \I2C|Add6~18_combout\,
	datac => \I2C|Add6~22_combout\,
	datad => \I2C|Add6~16_combout\,
	combout => \I2C|Equal6~2_combout\);

-- Location: LCCOMB_X19_Y14_N28
\I2C|Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal6~4_combout\ = (\I2C|Equal6~3_combout\ & (\I2C|Equal6~0_combout\ & (\I2C|Equal6~1_combout\ & \I2C|Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal6~3_combout\,
	datab => \I2C|Equal6~0_combout\,
	datac => \I2C|Equal6~1_combout\,
	datad => \I2C|Equal6~2_combout\,
	combout => \I2C|Equal6~4_combout\);

-- Location: LCCOMB_X19_Y14_N20
\I2C|Equal6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal6~8_combout\ = (\I2C|Equal6~6_combout\ & (\I2C|Equal6~5_combout\ & (\I2C|Equal6~7_combout\ & \I2C|Equal6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal6~6_combout\,
	datab => \I2C|Equal6~5_combout\,
	datac => \I2C|Equal6~7_combout\,
	datad => \I2C|Equal6~4_combout\,
	combout => \I2C|Equal6~8_combout\);

-- Location: FF_X19_Y14_N21
\I2C|timer1_flag.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Equal6~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer1_flag.01~q\);

-- Location: FF_X22_Y14_N29
\I2C|state.000000111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state.000000111~feeder_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000111~q\);

-- Location: LCCOMB_X22_Y14_N10
\I2C|state.000001000~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state.000001000~feeder_combout\ = \I2C|state.000000111~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state.000000111~q\,
	combout => \I2C|state.000001000~feeder_combout\);

-- Location: FF_X22_Y14_N11
\I2C|state.000001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state.000001000~feeder_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000001000~q\);

-- Location: LCCOMB_X22_Y14_N2
\I2C|state.000001001~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state.000001001~feeder_combout\ = \I2C|state.000001000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state.000001000~q\,
	combout => \I2C|state.000001001~feeder_combout\);

-- Location: FF_X22_Y14_N3
\I2C|state.000001001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state.000001001~feeder_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000001001~q\);

-- Location: LCCOMB_X22_Y14_N20
\I2C|state.000001010~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state.000001010~feeder_combout\ = \I2C|state.000001001~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state.000001001~q\,
	combout => \I2C|state.000001010~feeder_combout\);

-- Location: FF_X22_Y14_N21
\I2C|state.000001010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state.000001010~feeder_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000001010~q\);

-- Location: LCCOMB_X22_Y14_N18
\I2C|state.000001011~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state.000001011~feeder_combout\ = \I2C|state.000001010~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state.000001010~q\,
	combout => \I2C|state.000001011~feeder_combout\);

-- Location: FF_X22_Y14_N19
\I2C|state.000001011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state.000001011~feeder_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000001011~q\);

-- Location: LCCOMB_X22_Y14_N4
\I2C|state.000001100~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state.000001100~feeder_combout\ = \I2C|state.000001011~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state.000001011~q\,
	combout => \I2C|state.000001100~feeder_combout\);

-- Location: FF_X22_Y14_N5
\I2C|state.000001100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state.000001100~feeder_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000001100~q\);

-- Location: FF_X22_Y14_N27
\I2C|state.000001101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|state.000001100~q\,
	sload => VCC,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000001101~q\);

-- Location: FF_X22_Y14_N7
\I2C|state.000001110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|state.000001101~q\,
	sload => VCC,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000001110~q\);

-- Location: LCCOMB_X22_Y14_N12
\I2C|state.000001111~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state.000001111~feeder_combout\ = \I2C|state.000001110~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state.000001110~q\,
	combout => \I2C|state.000001111~feeder_combout\);

-- Location: FF_X22_Y14_N13
\I2C|state.000001111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state.000001111~feeder_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000001111~q\);

-- Location: LCCOMB_X22_Y14_N0
\I2C|state.000000000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state.000000000~0_combout\ = !\I2C|state.000001111~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state.000001111~q\,
	combout => \I2C|state.000000000~0_combout\);

-- Location: FF_X22_Y14_N1
\I2C|state.000000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state.000000000~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000000~q\);

-- Location: LCCOMB_X22_Y14_N8
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

-- Location: FF_X22_Y14_N9
\I2C|state.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state.000000001~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000001~q\);

-- Location: FF_X22_Y14_N25
\I2C|state.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|state.000000001~q\,
	sload => VCC,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000010~q\);

-- Location: LCCOMB_X22_Y14_N22
\I2C|state.000000011~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state.000000011~feeder_combout\ = \I2C|state.000000010~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state.000000010~q\,
	combout => \I2C|state.000000011~feeder_combout\);

-- Location: FF_X22_Y14_N23
\I2C|state.000000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state.000000011~feeder_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000011~q\);

-- Location: FF_X22_Y14_N31
\I2C|state.000000100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|state.000000011~q\,
	sload => VCC,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000100~q\);

-- Location: FF_X22_Y14_N15
\I2C|state.000000101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|state.000000100~q\,
	sload => VCC,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000101~q\);

-- Location: FF_X22_Y14_N17
\I2C|state.000000110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \I2C|state.000000101~q\,
	sload => VCC,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.000000110~q\);

-- Location: LCCOMB_X22_Y14_N24
\I2C|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|WideOr0~0_combout\ = (!\I2C|state.000000100~q\ & (!\I2C|state.000000110~q\ & (!\I2C|state.000000010~q\ & \I2C|state.000000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state.000000100~q\,
	datab => \I2C|state.000000110~q\,
	datac => \I2C|state.000000010~q\,
	datad => \I2C|state.000000000~q\,
	combout => \I2C|WideOr0~0_combout\);

-- Location: LCCOMB_X22_Y18_N24
\I2C|buffer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|buffer~0_combout\ = (\I2C|timer1_flag.01~q\ & ((!\I2C|WideOr0~0_combout\) # (!\I2C|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr0~1_combout\,
	datab => \I2C|WideOr0~0_combout\,
	datad => \I2C|timer1_flag.01~q\,
	combout => \I2C|buffer~0_combout\);

-- Location: FF_X22_Y18_N25
\I2C|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|buffer~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|data\(6));

-- Location: LCCOMB_X19_Y21_N28
\hundreds[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \hundreds[2]~feeder_combout\ = \I2C|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|data\(6),
	combout => \hundreds[2]~feeder_combout\);

-- Location: FF_X19_Y21_N29
\hundreds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \hundreds[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hundreds(2));

-- Location: LCCOMB_X14_Y21_N0
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

-- Location: LCCOMB_X16_Y22_N8
\display|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~0_combout\ = \display|prescaler\(0) $ (VCC)
-- \display|Add0~1\ = CARRY(\display|prescaler\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(0),
	datad => VCC,
	combout => \display|Add0~0_combout\,
	cout => \display|Add0~1\);

-- Location: LCCOMB_X16_Y21_N24
\display|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~3_combout\ = (\display|prescaler\(14) & (!\display|prescaler\(13) & (\display|prescaler\(15) & !\display|prescaler\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(14),
	datab => \display|prescaler\(13),
	datac => \display|prescaler\(15),
	datad => \display|prescaler\(12),
	combout => \display|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y22_N30
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

-- Location: FF_X16_Y22_N31
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

-- Location: LCCOMB_X16_Y22_N4
\display|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~2_combout\ = (\display|prescaler\(9) & (!\display|prescaler\(10) & (!\display|prescaler\(11) & \display|prescaler\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(9),
	datab => \display|prescaler\(10),
	datac => \display|prescaler\(11),
	datad => \display|prescaler\(8),
	combout => \display|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y22_N12
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

-- Location: FF_X16_Y22_N13
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

-- Location: LCCOMB_X16_Y22_N0
\display|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~0_combout\ = (!\display|prescaler\(1) & (!\display|prescaler\(0) & (!\display|prescaler\(3) & !\display|prescaler\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(1),
	datab => \display|prescaler\(0),
	datac => \display|prescaler\(3),
	datad => \display|prescaler\(2),
	combout => \display|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y22_N2
\display|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~4_combout\ = (\display|Equal0~1_combout\ & (\display|Equal0~3_combout\ & (\display|Equal0~2_combout\ & \display|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~1_combout\,
	datab => \display|Equal0~3_combout\,
	datac => \display|Equal0~2_combout\,
	datad => \display|Equal0~0_combout\,
	combout => \display|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y22_N12
\display|prescaler~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|prescaler~0_combout\ = (\display|Add0~0_combout\ & (((!\display|Equal0~4_combout\) # (!\display|Equal0~6_combout\)) # (!\display|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~5_combout\,
	datab => \display|Add0~0_combout\,
	datac => \display|Equal0~6_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|prescaler~0_combout\);

-- Location: FF_X17_Y22_N13
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

-- Location: LCCOMB_X16_Y22_N14
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

-- Location: FF_X16_Y22_N15
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

-- Location: LCCOMB_X16_Y22_N18
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

-- Location: FF_X16_Y22_N19
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

-- Location: LCCOMB_X16_Y22_N24
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

-- Location: LCCOMB_X17_Y22_N22
\display|prescaler~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|prescaler~3_combout\ = (\display|Add0~16_combout\ & (((!\display|Equal0~4_combout\) # (!\display|Equal0~6_combout\)) # (!\display|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~5_combout\,
	datab => \display|Add0~16_combout\,
	datac => \display|Equal0~6_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|prescaler~3_combout\);

-- Location: FF_X17_Y22_N23
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

-- Location: LCCOMB_X16_Y22_N28
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

-- Location: FF_X16_Y22_N29
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

-- Location: LCCOMB_X16_Y21_N0
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

-- Location: FF_X16_Y21_N1
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

-- Location: LCCOMB_X16_Y21_N2
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

-- Location: FF_X16_Y21_N3
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

-- Location: LCCOMB_X16_Y21_N6
\display|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Add0~30_combout\ = (\display|prescaler\(15) & (!\display|Add0~29\)) # (!\display|prescaler\(15) & ((\display|Add0~29\) # (GND)))
-- \display|Add0~31\ = CARRY((!\display|Add0~29\) # (!\display|prescaler\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display|prescaler\(15),
	datad => VCC,
	cin => \display|Add0~29\,
	combout => \display|Add0~30_combout\,
	cout => \display|Add0~31\);

-- Location: LCCOMB_X17_Y21_N10
\display|prescaler~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|prescaler~6_combout\ = (\display|Add0~30_combout\ & (((!\display|Equal0~4_combout\) # (!\display|Equal0~6_combout\)) # (!\display|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~5_combout\,
	datab => \display|Add0~30_combout\,
	datac => \display|Equal0~6_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|prescaler~6_combout\);

-- Location: FF_X17_Y21_N11
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

-- Location: LCCOMB_X16_Y21_N8
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

-- Location: FF_X16_Y21_N9
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

-- Location: LCCOMB_X16_Y21_N14
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

-- Location: FF_X16_Y21_N15
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

-- Location: LCCOMB_X16_Y21_N16
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

-- Location: FF_X16_Y21_N17
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

-- Location: LCCOMB_X16_Y21_N18
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

-- Location: FF_X16_Y21_N19
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

-- Location: LCCOMB_X16_Y21_N20
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

-- Location: FF_X16_Y21_N21
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

-- Location: LCCOMB_X16_Y21_N22
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

-- Location: FF_X16_Y21_N23
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

-- Location: LCCOMB_X16_Y21_N28
\display|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~6_combout\ = (!\display|prescaler\(21) & (!\display|prescaler\(22) & (!\display|prescaler\(23) & !\display|prescaler\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|prescaler\(21),
	datab => \display|prescaler\(22),
	datac => \display|prescaler\(23),
	datad => \display|prescaler\(20),
	combout => \display|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y21_N8
\display|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Equal0~7_combout\ = (\display|Equal0~5_combout\ & (\display|Equal0~6_combout\ & \display|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|Equal0~5_combout\,
	datac => \display|Equal0~6_combout\,
	datad => \display|Equal0~4_combout\,
	combout => \display|Equal0~7_combout\);

-- Location: FF_X14_Y21_N1
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

-- Location: LCCOMB_X19_Y21_N12
\Mod1|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~1_cout\ = CARRY(!\I2C|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|data\(6),
	datad => VCC,
	cout => \Mod1|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X19_Y21_N14
\Mod1|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~2_combout\ = (\I2C|data\(6) & (!\Mod1|auto_generated|divider|divider|op_6~1_cout\)) # (!\I2C|data\(6) & (\Mod1|auto_generated|divider|divider|op_6~1_cout\ & VCC))
-- \Mod1|auto_generated|divider|divider|op_6~3\ = CARRY((\I2C|data\(6) & !\Mod1|auto_generated|divider|divider|op_6~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|data\(6),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_6~1_cout\,
	combout => \Mod1|auto_generated|divider|divider|op_6~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X19_Y21_N16
\Mod1|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~4_combout\ = \Mod1|auto_generated|divider|divider|op_6~3\ $ (GND)
-- \Mod1|auto_generated|divider|divider|op_6~5\ = CARRY(!\Mod1|auto_generated|divider|divider|op_6~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|op_6~3\,
	combout => \Mod1|auto_generated|divider|divider|op_6~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X19_Y21_N18
\Mod1|auto_generated|divider|divider|op_6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~6_combout\ = !\Mod1|auto_generated|divider|divider|op_6~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|op_6~5\,
	combout => \Mod1|auto_generated|divider|divider|op_6~6_combout\);

-- Location: LCCOMB_X19_Y21_N6
\Mod1|auto_generated|divider|divider|StageOut[37]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[37]~1_combout\ = (\Mod1|auto_generated|divider|divider|op_6~6_combout\ & (!\I2C|data\(6))) # (!\Mod1|auto_generated|divider|divider|op_6~6_combout\ & ((\Mod1|auto_generated|divider|divider|op_6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|data\(6),
	datac => \Mod1|auto_generated|divider|divider|op_6~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_6~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[37]~1_combout\);

-- Location: FF_X19_Y21_N7
\tens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[37]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tens(2));

-- Location: LCCOMB_X18_Y21_N16
\display|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Selector2~0_combout\ = (\display|digit_posn\(1) & (hundreds(2) & (!\display|digit_posn\(0)))) # (!\display|digit_posn\(1) & (((\display|digit_posn\(0) & tens(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_posn\(1),
	datab => hundreds(2),
	datac => \display|digit_posn\(0),
	datad => tens(2),
	combout => \display|Selector2~0_combout\);

-- Location: FF_X18_Y21_N17
\display|digit_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Selector2~0_combout\,
	ena => \display|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|digit_data\(2));

-- Location: LCCOMB_X18_Y21_N28
\hundreds[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \hundreds[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \hundreds[1]~feeder_combout\);

-- Location: FF_X18_Y21_N29
\hundreds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \hundreds[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hundreds(1));

-- Location: LCCOMB_X19_Y21_N4
\Mod1|auto_generated|divider|divider|StageOut[36]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~0_combout\ = \I2C|data\(6) $ (\Mod1|auto_generated|divider|divider|op_6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|data\(6),
	datad => \Mod1|auto_generated|divider|divider|op_6~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~0_combout\);

-- Location: FF_X19_Y21_N5
\tens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut[36]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tens(1));

-- Location: LCCOMB_X18_Y21_N26
\display|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Selector3~0_combout\ = (\display|digit_posn\(1) & (hundreds(1) & (!\display|digit_posn\(0)))) # (!\display|digit_posn\(1) & (((\display|digit_posn\(0) & tens(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_posn\(1),
	datab => hundreds(1),
	datac => \display|digit_posn\(0),
	datad => tens(1),
	combout => \display|Selector3~0_combout\);

-- Location: FF_X18_Y21_N27
\display|digit_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \display|Selector3~0_combout\,
	ena => \display|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|digit_data\(1));

-- Location: LCCOMB_X19_Y21_N10
\Mod1|auto_generated|divider|divider|StageOut[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut\(38) = (\Mod1|auto_generated|divider|divider|op_6~6_combout\) # (\Mod1|auto_generated|divider|divider|op_6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|op_6~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|op_6~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut\(38));

-- Location: FF_X19_Y21_N11
\tens[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mod1|auto_generated|divider|divider|StageOut\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tens(3));

-- Location: LCCOMB_X18_Y21_N18
\display|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Selector1~0_combout\ = (!\display|digit_posn\(1) & (tens(3) & \display|digit_posn\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_posn\(1),
	datab => tens(3),
	datac => \display|digit_posn\(0),
	combout => \display|Selector1~0_combout\);

-- Location: FF_X18_Y21_N19
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

-- Location: LCCOMB_X18_Y21_N20
\display|decoder|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|WideOr6~0_combout\ = (\display|digit_data\(1) & (((\display|digit_data\(3))))) # (!\display|digit_data\(1) & (\display|digit_data\(2) $ (((\display|digit_data\(0) & !\display|digit_data\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_data\(0),
	datab => \display|digit_data\(2),
	datac => \display|digit_data\(1),
	datad => \display|digit_data\(3),
	combout => \display|decoder|WideOr6~0_combout\);

-- Location: FF_X18_Y21_N21
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

-- Location: LCCOMB_X18_Y21_N6
\display|decoder|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|WideOr5~0_combout\ = (\display|digit_data\(2) & ((\display|digit_data\(3)) # (\display|digit_data\(0) $ (\display|digit_data\(1))))) # (!\display|digit_data\(2) & (((\display|digit_data\(1) & \display|digit_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_data\(0),
	datab => \display|digit_data\(2),
	datac => \display|digit_data\(1),
	datad => \display|digit_data\(3),
	combout => \display|decoder|WideOr5~0_combout\);

-- Location: FF_X18_Y21_N7
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

-- Location: LCCOMB_X18_Y21_N0
\display|decoder|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|WideOr4~0_combout\ = (\display|digit_data\(2) & (((\display|digit_data\(3))))) # (!\display|digit_data\(2) & (\display|digit_data\(1) & ((\display|digit_data\(3)) # (!\display|digit_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_data\(0),
	datab => \display|digit_data\(2),
	datac => \display|digit_data\(1),
	datad => \display|digit_data\(3),
	combout => \display|decoder|WideOr4~0_combout\);

-- Location: FF_X18_Y21_N1
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

-- Location: LCCOMB_X18_Y21_N10
\display|decoder|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|WideOr3~0_combout\ = (\display|digit_data\(1) & ((\display|digit_data\(3)) # ((\display|digit_data\(0) & \display|digit_data\(2))))) # (!\display|digit_data\(1) & (\display|digit_data\(2) $ (((\display|digit_data\(0) & 
-- !\display|digit_data\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_data\(0),
	datab => \display|digit_data\(2),
	datac => \display|digit_data\(1),
	datad => \display|digit_data\(3),
	combout => \display|decoder|WideOr3~0_combout\);

-- Location: FF_X18_Y21_N11
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

-- Location: LCCOMB_X18_Y21_N24
\display|decoder|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|WideOr2~0_combout\ = (\display|digit_data\(0)) # ((\display|digit_data\(1) & ((\display|digit_data\(3)))) # (!\display|digit_data\(1) & (\display|digit_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_data\(0),
	datab => \display|digit_data\(2),
	datac => \display|digit_data\(1),
	datad => \display|digit_data\(3),
	combout => \display|decoder|WideOr2~0_combout\);

-- Location: FF_X18_Y21_N25
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

-- Location: LCCOMB_X18_Y21_N14
\display|decoder|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|WideOr1~0_combout\ = (\display|digit_data\(0) & ((\display|digit_data\(1)) # (\display|digit_data\(2) $ (!\display|digit_data\(3))))) # (!\display|digit_data\(0) & ((\display|digit_data\(2) & ((\display|digit_data\(3)))) # 
-- (!\display|digit_data\(2) & (\display|digit_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_data\(0),
	datab => \display|digit_data\(2),
	datac => \display|digit_data\(1),
	datad => \display|digit_data\(3),
	combout => \display|decoder|WideOr1~0_combout\);

-- Location: FF_X18_Y21_N15
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

-- Location: LCCOMB_X18_Y21_N8
\display|decoder|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|WideOr0~0_combout\ = (\display|digit_data\(2) & ((\display|digit_data\(3)) # ((\display|digit_data\(0) & \display|digit_data\(1))))) # (!\display|digit_data\(2) & ((\display|digit_data\(1) $ (!\display|digit_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|digit_data\(0),
	datab => \display|digit_data\(2),
	datac => \display|digit_data\(1),
	datad => \display|digit_data\(3),
	combout => \display|decoder|WideOr0~0_combout\);

-- Location: FF_X18_Y21_N9
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

-- Location: LCCOMB_X18_Y21_N22
\display|decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decoder|Mux0~0_combout\ = (\display|decoder|Equal0~0_combout\) # ((\display|digit_data\(3) & ((\display|digit_data\(2)) # (\display|digit_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display|decoder|Equal0~0_combout\,
	datab => \display|digit_data\(2),
	datac => \display|digit_data\(1),
	datad => \display|digit_data\(3),
	combout => \display|decoder|Mux0~0_combout\);

-- Location: FF_X18_Y21_N23
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

-- Location: LCCOMB_X21_Y18_N6
\I2C|state_ack.000000001~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_ack.000000001~0_combout\ = !\I2C|state_ack.000000000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|state_ack.000000000~q\,
	combout => \I2C|state_ack.000000001~0_combout\);

-- Location: FF_X21_Y18_N7
\I2C|state_ack.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_ack.000000001~0_combout\,
	ena => \I2C|timer3_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_ack.000000001~q\);

-- Location: LCCOMB_X21_Y18_N2
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

-- Location: FF_X21_Y18_N3
\I2C|state_ack.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_ack.000000010~feeder_combout\,
	ena => \I2C|timer3_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_ack.000000010~q\);

-- Location: LCCOMB_X21_Y18_N22
\I2C|state_ack.000000000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_ack.000000000~0_combout\ = !\I2C|state_ack.000000010~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I2C|state_ack.000000010~q\,
	combout => \I2C|state_ack.000000000~0_combout\);

-- Location: FF_X21_Y18_N23
\I2C|state_ack.000000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_ack.000000000~0_combout\,
	ena => \I2C|timer3_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_ack.000000000~q\);

-- Location: LCCOMB_X22_Y18_N20
\I2C|SCL~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|SCL~7_combout\ = (\I2C|SCL~q\ & ((\I2C|state_start.000000010~q\) # ((\I2C|state_start.000000001~q\) # (!\I2C|timer3_flag.01~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_start.000000010~q\,
	datab => \I2C|state_start.000000001~q\,
	datac => \I2C|timer3_flag.01~q\,
	datad => \I2C|SCL~q\,
	combout => \I2C|SCL~7_combout\);

-- Location: LCCOMB_X22_Y18_N14
\I2C|SCL~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|SCL~8_combout\ = (!\I2C|timer1_flag.01~q\ & ((\I2C|SCL~7_combout\) # ((\I2C|timer3_flag.01~q\ & !\I2C|state_start.000000000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer3_flag.01~q\,
	datab => \I2C|timer1_flag.01~q\,
	datac => \I2C|state_start.000000000~q\,
	datad => \I2C|SCL~7_combout\,
	combout => \I2C|SCL~8_combout\);

-- Location: LCCOMB_X22_Y14_N26
\I2C|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|WideOr1~1_combout\ = (\I2C|state.000001111~q\) # ((\I2C|state.000001011~q\) # ((\I2C|state.000001101~q\) # (\I2C|state.000001001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state.000001111~q\,
	datab => \I2C|state.000001011~q\,
	datac => \I2C|state.000001101~q\,
	datad => \I2C|state.000001001~q\,
	combout => \I2C|WideOr1~1_combout\);

-- Location: LCCOMB_X22_Y14_N14
\I2C|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|WideOr1~0_combout\ = (\I2C|state.000000011~q\) # ((\I2C|state.000000001~q\) # ((\I2C|state.000000101~q\) # (\I2C|state.000000111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state.000000011~q\,
	datab => \I2C|state.000000001~q\,
	datac => \I2C|state.000000101~q\,
	datad => \I2C|state.000000111~q\,
	combout => \I2C|WideOr1~0_combout\);

-- Location: LCCOMB_X22_Y16_N14
\I2C|SCL~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|SCL~9_combout\ = (!\I2C|WideOr1~1_combout\ & (\I2C|timer1_flag.01~q\ & !\I2C|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|WideOr1~1_combout\,
	datac => \I2C|timer1_flag.01~q\,
	datad => \I2C|WideOr1~0_combout\,
	combout => \I2C|SCL~9_combout\);

-- Location: LCCOMB_X22_Y18_N12
\I2C|state_clock.000000001~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|state_clock.000000001~0_combout\ = !\I2C|state_clock.000000001~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|state_clock.000000001~q\,
	combout => \I2C|state_clock.000000001~0_combout\);

-- Location: FF_X22_Y18_N13
\I2C|state_clock.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|state_clock.000000001~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state_clock.000000001~q\);

-- Location: LCCOMB_X22_Y18_N2
\I2C|SCL~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|SCL~10_combout\ = (\I2C|SCL~8_combout\) # ((\I2C|SCL~9_combout\ & ((\I2C|timer2_flag.01~q\) # (\I2C|state_clock.000000001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_flag.01~q\,
	datab => \I2C|SCL~8_combout\,
	datac => \I2C|SCL~9_combout\,
	datad => \I2C|state_clock.000000001~q\,
	combout => \I2C|SCL~10_combout\);

-- Location: LCCOMB_X22_Y18_N4
\I2C|Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector65~0_combout\ = (\I2C|timer3_flag.01~q\ & ((\I2C|state_ack.000000001~q\) # ((!\I2C|state_ack.000000000~q\ & \I2C|SCL~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer3_flag.01~q\,
	datab => \I2C|state_ack.000000000~q\,
	datac => \I2C|state_ack.000000001~q\,
	datad => \I2C|SCL~10_combout\,
	combout => \I2C|Selector65~0_combout\);

-- Location: LCCOMB_X22_Y16_N24
\I2C|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|WideOr1~combout\ = (\I2C|WideOr1~1_combout\) # (\I2C|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2C|WideOr1~1_combout\,
	datad => \I2C|WideOr1~0_combout\,
	combout => \I2C|WideOr1~combout\);

-- Location: LCCOMB_X22_Y16_N28
\I2C|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector44~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~21_combout\)))) # (!\I2C|WideOr1~combout\ & (\I2C|Add7~40_combout\ & (!\I2C|Equal7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~40_combout\,
	datab => \I2C|Equal7~8_combout\,
	datac => \I2C|timer2_reg~21_combout\,
	datad => \I2C|WideOr1~combout\,
	combout => \I2C|Selector44~0_combout\);

-- Location: FF_X22_Y16_N29
\I2C|timer2_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector44~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(20));

-- Location: LCCOMB_X22_Y16_N30
\I2C|Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector59~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~6_combout\)))) # (!\I2C|WideOr1~combout\ & (\I2C|Add7~10_combout\ & ((!\I2C|Equal7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~10_combout\,
	datab => \I2C|timer2_reg~6_combout\,
	datac => \I2C|Equal7~8_combout\,
	datad => \I2C|WideOr1~combout\,
	combout => \I2C|Selector59~0_combout\);

-- Location: FF_X22_Y16_N31
\I2C|timer2_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector59~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(5));

-- Location: LCCOMB_X24_Y16_N6
\I2C|timer2_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~2_combout\ = (\I2C|SCL~9_combout\ & (\I2C|Add4~4_combout\)) # (!\I2C|SCL~9_combout\ & ((\I2C|timer2_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add4~4_combout\,
	datab => \I2C|timer2_reg\(2),
	datad => \I2C|SCL~9_combout\,
	combout => \I2C|timer2_reg~2_combout\);

-- Location: LCCOMB_X24_Y16_N16
\I2C|Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector62~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~2_combout\)))) # (!\I2C|WideOr1~combout\ & (\I2C|Add7~4_combout\ & (!\I2C|Equal7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~4_combout\,
	datab => \I2C|WideOr1~combout\,
	datac => \I2C|Equal7~8_combout\,
	datad => \I2C|timer2_reg~2_combout\,
	combout => \I2C|Selector62~0_combout\);

-- Location: FF_X24_Y16_N17
\I2C|timer2_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector62~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(2));

-- Location: LCCOMB_X23_Y16_N6
\I2C|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~0_combout\ = \I2C|timer2_reg\(0) $ (VCC)
-- \I2C|Add4~1\ = CARRY(\I2C|timer2_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(0),
	datad => VCC,
	combout => \I2C|Add4~0_combout\,
	cout => \I2C|Add4~1\);

-- Location: LCCOMB_X23_Y16_N8
\I2C|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~2_combout\ = (\I2C|timer2_reg\(1) & (!\I2C|Add4~1\)) # (!\I2C|timer2_reg\(1) & ((\I2C|Add4~1\) # (GND)))
-- \I2C|Add4~3\ = CARRY((!\I2C|Add4~1\) # (!\I2C|timer2_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(1),
	datad => VCC,
	cin => \I2C|Add4~1\,
	combout => \I2C|Add4~2_combout\,
	cout => \I2C|Add4~3\);

-- Location: LCCOMB_X24_Y16_N22
\I2C|timer2_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~1_combout\ = (\I2C|SCL~9_combout\ & ((\I2C|Add4~2_combout\))) # (!\I2C|SCL~9_combout\ & (\I2C|timer2_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(1),
	datac => \I2C|SCL~9_combout\,
	datad => \I2C|Add4~2_combout\,
	combout => \I2C|timer2_reg~1_combout\);

-- Location: LCCOMB_X21_Y16_N6
\I2C|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~0_combout\ = \I2C|timer2_reg~0_combout\ $ (VCC)
-- \I2C|Add7~1\ = CARRY(\I2C|timer2_reg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~0_combout\,
	datad => VCC,
	combout => \I2C|Add7~0_combout\,
	cout => \I2C|Add7~1\);

-- Location: LCCOMB_X24_Y16_N20
\I2C|Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector64~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~0_combout\)))) # (!\I2C|WideOr1~combout\ & (!\I2C|Equal7~8_combout\ & ((\I2C|Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal7~8_combout\,
	datab => \I2C|timer2_reg~0_combout\,
	datac => \I2C|Add7~0_combout\,
	datad => \I2C|WideOr1~combout\,
	combout => \I2C|Selector64~0_combout\);

-- Location: FF_X24_Y16_N21
\I2C|timer2_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector64~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(0));

-- Location: LCCOMB_X24_Y16_N14
\I2C|timer2_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~0_combout\ = (\I2C|SCL~9_combout\ & (\I2C|Add4~0_combout\)) # (!\I2C|SCL~9_combout\ & ((\I2C|timer2_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|SCL~9_combout\,
	datac => \I2C|Add4~0_combout\,
	datad => \I2C|timer2_reg\(0),
	combout => \I2C|timer2_reg~0_combout\);

-- Location: LCCOMB_X21_Y16_N8
\I2C|Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~2_combout\ = (\I2C|timer2_reg~1_combout\ & (!\I2C|Add7~1\)) # (!\I2C|timer2_reg~1_combout\ & ((\I2C|Add7~1\) # (GND)))
-- \I2C|Add7~3\ = CARRY((!\I2C|Add7~1\) # (!\I2C|timer2_reg~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~1_combout\,
	datad => VCC,
	cin => \I2C|Add7~1\,
	combout => \I2C|Add7~2_combout\,
	cout => \I2C|Add7~3\);

-- Location: LCCOMB_X24_Y16_N12
\I2C|Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector63~0_combout\ = (\I2C|WideOr1~combout\ & (\I2C|timer2_reg~1_combout\)) # (!\I2C|WideOr1~combout\ & (((\I2C|Add7~2_combout\ & !\I2C|Equal7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~1_combout\,
	datab => \I2C|WideOr1~combout\,
	datac => \I2C|Add7~2_combout\,
	datad => \I2C|Equal7~8_combout\,
	combout => \I2C|Selector63~0_combout\);

-- Location: FF_X24_Y16_N13
\I2C|timer2_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector63~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(1));

-- Location: LCCOMB_X23_Y16_N12
\I2C|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~6_combout\ = (\I2C|timer2_reg\(3) & (!\I2C|Add4~5\)) # (!\I2C|timer2_reg\(3) & ((\I2C|Add4~5\) # (GND)))
-- \I2C|Add4~7\ = CARRY((!\I2C|Add4~5\) # (!\I2C|timer2_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(3),
	datad => VCC,
	cin => \I2C|Add4~5\,
	combout => \I2C|Add4~6_combout\,
	cout => \I2C|Add4~7\);

-- Location: LCCOMB_X23_Y16_N14
\I2C|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~8_combout\ = (\I2C|timer2_reg\(4) & (\I2C|Add4~7\ $ (GND))) # (!\I2C|timer2_reg\(4) & (!\I2C|Add4~7\ & VCC))
-- \I2C|Add4~9\ = CARRY((\I2C|timer2_reg\(4) & !\I2C|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(4),
	datad => VCC,
	cin => \I2C|Add4~7\,
	combout => \I2C|Add4~8_combout\,
	cout => \I2C|Add4~9\);

-- Location: LCCOMB_X23_Y16_N16
\I2C|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~10_combout\ = (\I2C|timer2_reg\(5) & (!\I2C|Add4~9\)) # (!\I2C|timer2_reg\(5) & ((\I2C|Add4~9\) # (GND)))
-- \I2C|Add4~11\ = CARRY((!\I2C|Add4~9\) # (!\I2C|timer2_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(5),
	datad => VCC,
	cin => \I2C|Add4~9\,
	combout => \I2C|Add4~10_combout\,
	cout => \I2C|Add4~11\);

-- Location: LCCOMB_X23_Y16_N2
\I2C|timer2_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~6_combout\ = (\I2C|SCL~9_combout\ & ((\I2C|Add4~10_combout\))) # (!\I2C|SCL~9_combout\ & (\I2C|timer2_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|SCL~9_combout\,
	datab => \I2C|timer2_reg\(5),
	datad => \I2C|Add4~10_combout\,
	combout => \I2C|timer2_reg~6_combout\);

-- Location: LCCOMB_X22_Y16_N8
\I2C|Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector60~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~5_combout\)))) # (!\I2C|WideOr1~combout\ & (\I2C|Add7~8_combout\ & (!\I2C|Equal7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~8_combout\,
	datab => \I2C|Equal7~8_combout\,
	datac => \I2C|timer2_reg~5_combout\,
	datad => \I2C|WideOr1~combout\,
	combout => \I2C|Selector60~0_combout\);

-- Location: FF_X22_Y16_N9
\I2C|timer2_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector60~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(4));

-- Location: LCCOMB_X24_Y16_N4
\I2C|timer2_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~5_combout\ = (\I2C|timer2_reg~4_combout\ & ((\I2C|Add4~8_combout\) # ((\I2C|timer2_reg\(4) & !\I2C|SCL~9_combout\)))) # (!\I2C|timer2_reg~4_combout\ & (((\I2C|timer2_reg\(4) & !\I2C|SCL~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~4_combout\,
	datab => \I2C|Add4~8_combout\,
	datac => \I2C|timer2_reg\(4),
	datad => \I2C|SCL~9_combout\,
	combout => \I2C|timer2_reg~5_combout\);

-- Location: LCCOMB_X21_Y16_N18
\I2C|Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~12_combout\ = (\I2C|timer2_reg~7_combout\ & (\I2C|Add7~11\ $ (GND))) # (!\I2C|timer2_reg~7_combout\ & (!\I2C|Add7~11\ & VCC))
-- \I2C|Add7~13\ = CARRY((\I2C|timer2_reg~7_combout\ & !\I2C|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~7_combout\,
	datad => VCC,
	cin => \I2C|Add7~11\,
	combout => \I2C|Add7~12_combout\,
	cout => \I2C|Add7~13\);

-- Location: LCCOMB_X22_Y16_N20
\I2C|Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector58~0_combout\ = (\I2C|WideOr1~combout\ & (\I2C|timer2_reg~7_combout\)) # (!\I2C|WideOr1~combout\ & (((!\I2C|Equal7~8_combout\ & \I2C|Add7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~7_combout\,
	datab => \I2C|WideOr1~combout\,
	datac => \I2C|Equal7~8_combout\,
	datad => \I2C|Add7~12_combout\,
	combout => \I2C|Selector58~0_combout\);

-- Location: FF_X22_Y16_N21
\I2C|timer2_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector58~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(6));

-- Location: LCCOMB_X23_Y16_N18
\I2C|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~12_combout\ = (\I2C|timer2_reg\(6) & (\I2C|Add4~11\ $ (GND))) # (!\I2C|timer2_reg\(6) & (!\I2C|Add4~11\ & VCC))
-- \I2C|Add4~13\ = CARRY((\I2C|timer2_reg\(6) & !\I2C|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(6),
	datad => VCC,
	cin => \I2C|Add4~11\,
	combout => \I2C|Add4~12_combout\,
	cout => \I2C|Add4~13\);

-- Location: LCCOMB_X22_Y16_N10
\I2C|timer2_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~7_combout\ = (\I2C|SCL~9_combout\ & ((\I2C|Add4~12_combout\))) # (!\I2C|SCL~9_combout\ & (\I2C|timer2_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(6),
	datac => \I2C|SCL~9_combout\,
	datad => \I2C|Add4~12_combout\,
	combout => \I2C|timer2_reg~7_combout\);

-- Location: LCCOMB_X21_Y16_N24
\I2C|Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~18_combout\ = (\I2C|timer2_reg~10_combout\ & (!\I2C|Add7~17\)) # (!\I2C|timer2_reg~10_combout\ & ((\I2C|Add7~17\) # (GND)))
-- \I2C|Add7~19\ = CARRY((!\I2C|Add7~17\) # (!\I2C|timer2_reg~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~10_combout\,
	datad => VCC,
	cin => \I2C|Add7~17\,
	combout => \I2C|Add7~18_combout\,
	cout => \I2C|Add7~19\);

-- Location: LCCOMB_X24_Y15_N22
\I2C|timer2_reg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~24_combout\ = (\I2C|SCL~9_combout\ & (\I2C|Add4~46_combout\)) # (!\I2C|SCL~9_combout\ & ((\I2C|timer2_reg\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add4~46_combout\,
	datac => \I2C|SCL~9_combout\,
	datad => \I2C|timer2_reg\(23),
	combout => \I2C|timer2_reg~24_combout\);

-- Location: LCCOMB_X21_Y15_N16
\I2C|Add7~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~42_combout\ = (\I2C|timer2_reg~22_combout\ & (!\I2C|Add7~41\)) # (!\I2C|timer2_reg~22_combout\ & ((\I2C|Add7~41\) # (GND)))
-- \I2C|Add7~43\ = CARRY((!\I2C|Add7~41\) # (!\I2C|timer2_reg~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~22_combout\,
	datad => VCC,
	cin => \I2C|Add7~41\,
	combout => \I2C|Add7~42_combout\,
	cout => \I2C|Add7~43\);

-- Location: LCCOMB_X21_Y15_N18
\I2C|Add7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~44_combout\ = (\I2C|timer2_reg~23_combout\ & (\I2C|Add7~43\ $ (GND))) # (!\I2C|timer2_reg~23_combout\ & (!\I2C|Add7~43\ & VCC))
-- \I2C|Add7~45\ = CARRY((\I2C|timer2_reg~23_combout\ & !\I2C|Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~23_combout\,
	datad => VCC,
	cin => \I2C|Add7~43\,
	combout => \I2C|Add7~44_combout\,
	cout => \I2C|Add7~45\);

-- Location: LCCOMB_X21_Y15_N20
\I2C|Add7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~46_combout\ = (\I2C|timer2_reg~24_combout\ & (!\I2C|Add7~45\)) # (!\I2C|timer2_reg~24_combout\ & ((\I2C|Add7~45\) # (GND)))
-- \I2C|Add7~47\ = CARRY((!\I2C|Add7~45\) # (!\I2C|timer2_reg~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~24_combout\,
	datad => VCC,
	cin => \I2C|Add7~45\,
	combout => \I2C|Add7~46_combout\,
	cout => \I2C|Add7~47\);

-- Location: LCCOMB_X24_Y15_N28
\I2C|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector41~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~24_combout\)))) # (!\I2C|WideOr1~combout\ & (!\I2C|Equal7~8_combout\ & ((\I2C|Add7~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr1~combout\,
	datab => \I2C|Equal7~8_combout\,
	datac => \I2C|timer2_reg~24_combout\,
	datad => \I2C|Add7~46_combout\,
	combout => \I2C|Selector41~0_combout\);

-- Location: FF_X24_Y15_N29
\I2C|timer2_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector41~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(23));

-- Location: LCCOMB_X23_Y15_N14
\I2C|Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~40_combout\ = (\I2C|timer2_reg\(20) & (\I2C|Add4~39\ $ (GND))) # (!\I2C|timer2_reg\(20) & (!\I2C|Add4~39\ & VCC))
-- \I2C|Add4~41\ = CARRY((\I2C|timer2_reg\(20) & !\I2C|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(20),
	datad => VCC,
	cin => \I2C|Add4~39\,
	combout => \I2C|Add4~40_combout\,
	cout => \I2C|Add4~41\);

-- Location: LCCOMB_X23_Y15_N18
\I2C|Add4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~44_combout\ = (\I2C|timer2_reg\(22) & (\I2C|Add4~43\ $ (GND))) # (!\I2C|timer2_reg\(22) & (!\I2C|Add4~43\ & VCC))
-- \I2C|Add4~45\ = CARRY((\I2C|timer2_reg\(22) & !\I2C|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(22),
	datad => VCC,
	cin => \I2C|Add4~43\,
	combout => \I2C|Add4~44_combout\,
	cout => \I2C|Add4~45\);

-- Location: LCCOMB_X23_Y15_N20
\I2C|Add4~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~46_combout\ = (\I2C|timer2_reg\(23) & (!\I2C|Add4~45\)) # (!\I2C|timer2_reg\(23) & ((\I2C|Add4~45\) # (GND)))
-- \I2C|Add4~47\ = CARRY((!\I2C|Add4~45\) # (!\I2C|timer2_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(23),
	datad => VCC,
	cin => \I2C|Add4~45\,
	combout => \I2C|Add4~46_combout\,
	cout => \I2C|Add4~47\);

-- Location: LCCOMB_X23_Y15_N28
\I2C|Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal4~6_combout\ = (!\I2C|Add4~42_combout\ & (!\I2C|Add4~46_combout\ & (!\I2C|Add4~40_combout\ & !\I2C|Add4~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add4~42_combout\,
	datab => \I2C|Add4~46_combout\,
	datac => \I2C|Add4~40_combout\,
	datad => \I2C|Add4~44_combout\,
	combout => \I2C|Equal4~6_combout\);

-- Location: LCCOMB_X23_Y17_N20
\I2C|timer2_reg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~25_combout\ = (\I2C|SCL~9_combout\ & ((\I2C|Add4~48_combout\))) # (!\I2C|SCL~9_combout\ & (\I2C|timer2_reg\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(24),
	datac => \I2C|Add4~48_combout\,
	datad => \I2C|SCL~9_combout\,
	combout => \I2C|timer2_reg~25_combout\);

-- Location: LCCOMB_X21_Y15_N22
\I2C|Add7~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~48_combout\ = (\I2C|timer2_reg~25_combout\ & (\I2C|Add7~47\ $ (GND))) # (!\I2C|timer2_reg~25_combout\ & (!\I2C|Add7~47\ & VCC))
-- \I2C|Add7~49\ = CARRY((\I2C|timer2_reg~25_combout\ & !\I2C|Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~25_combout\,
	datad => VCC,
	cin => \I2C|Add7~47\,
	combout => \I2C|Add7~48_combout\,
	cout => \I2C|Add7~49\);

-- Location: LCCOMB_X22_Y15_N18
\I2C|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector40~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~25_combout\)))) # (!\I2C|WideOr1~combout\ & (\I2C|Add7~48_combout\ & ((!\I2C|Equal7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr1~combout\,
	datab => \I2C|Add7~48_combout\,
	datac => \I2C|timer2_reg~25_combout\,
	datad => \I2C|Equal7~8_combout\,
	combout => \I2C|Selector40~0_combout\);

-- Location: FF_X22_Y15_N19
\I2C|timer2_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector40~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(24));

-- Location: LCCOMB_X23_Y15_N22
\I2C|Add4~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~48_combout\ = (\I2C|timer2_reg\(24) & (\I2C|Add4~47\ $ (GND))) # (!\I2C|timer2_reg\(24) & (!\I2C|Add4~47\ & VCC))
-- \I2C|Add4~49\ = CARRY((\I2C|timer2_reg\(24) & !\I2C|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(24),
	datad => VCC,
	cin => \I2C|Add4~47\,
	combout => \I2C|Add4~48_combout\,
	cout => \I2C|Add4~49\);

-- Location: LCCOMB_X21_Y15_N24
\I2C|Add7~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~50_combout\ = (\I2C|timer2_reg~26_combout\ & (!\I2C|Add7~49\)) # (!\I2C|timer2_reg~26_combout\ & ((\I2C|Add7~49\) # (GND)))
-- \I2C|Add7~51\ = CARRY((!\I2C|Add7~49\) # (!\I2C|timer2_reg~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~26_combout\,
	datad => VCC,
	cin => \I2C|Add7~49\,
	combout => \I2C|Add7~50_combout\,
	cout => \I2C|Add7~51\);

-- Location: LCCOMB_X22_Y15_N30
\I2C|timer2_reg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~26_combout\ = (\I2C|SCL~9_combout\ & ((\I2C|Add4~50_combout\))) # (!\I2C|SCL~9_combout\ & (\I2C|timer2_reg\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(25),
	datac => \I2C|SCL~9_combout\,
	datad => \I2C|Add4~50_combout\,
	combout => \I2C|timer2_reg~26_combout\);

-- Location: LCCOMB_X22_Y15_N20
\I2C|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector39~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~26_combout\)))) # (!\I2C|WideOr1~combout\ & (\I2C|Add7~50_combout\ & ((!\I2C|Equal7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr1~combout\,
	datab => \I2C|Add7~50_combout\,
	datac => \I2C|timer2_reg~26_combout\,
	datad => \I2C|Equal7~8_combout\,
	combout => \I2C|Selector39~0_combout\);

-- Location: FF_X22_Y15_N21
\I2C|timer2_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector39~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(25));

-- Location: LCCOMB_X23_Y15_N30
\I2C|Equal4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal4~7_combout\ = (!\I2C|Add4~52_combout\ & (\I2C|Equal4~6_combout\ & (!\I2C|Add4~48_combout\ & !\I2C|Add4~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add4~52_combout\,
	datab => \I2C|Equal4~6_combout\,
	datac => \I2C|Add4~48_combout\,
	datad => \I2C|Add4~50_combout\,
	combout => \I2C|Equal4~7_combout\);

-- Location: LCCOMB_X23_Y15_N4
\I2C|Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~30_combout\ = (\I2C|timer2_reg\(15) & (!\I2C|Add4~29\)) # (!\I2C|timer2_reg\(15) & ((\I2C|Add4~29\) # (GND)))
-- \I2C|Add4~31\ = CARRY((!\I2C|Add4~29\) # (!\I2C|timer2_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(15),
	datad => VCC,
	cin => \I2C|Add4~29\,
	combout => \I2C|Add4~30_combout\,
	cout => \I2C|Add4~31\);

-- Location: LCCOMB_X23_Y15_N6
\I2C|Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~32_combout\ = (\I2C|timer2_reg\(16) & (\I2C|Add4~31\ $ (GND))) # (!\I2C|timer2_reg\(16) & (!\I2C|Add4~31\ & VCC))
-- \I2C|Add4~33\ = CARRY((\I2C|timer2_reg\(16) & !\I2C|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(16),
	datad => VCC,
	cin => \I2C|Add4~31\,
	combout => \I2C|Add4~32_combout\,
	cout => \I2C|Add4~33\);

-- Location: LCCOMB_X22_Y15_N0
\I2C|Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal4~5_combout\ = (!\I2C|Add4~38_combout\ & (!\I2C|Add4~36_combout\ & (!\I2C|Add4~34_combout\ & !\I2C|Add4~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add4~38_combout\,
	datab => \I2C|Add4~36_combout\,
	datac => \I2C|Add4~34_combout\,
	datad => \I2C|Add4~32_combout\,
	combout => \I2C|Equal4~5_combout\);

-- Location: LCCOMB_X22_Y16_N4
\I2C|timer2_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~8_combout\ = (\I2C|SCL~9_combout\ & (\I2C|Add4~14_combout\)) # (!\I2C|SCL~9_combout\ & ((\I2C|timer2_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add4~14_combout\,
	datab => \I2C|timer2_reg\(7),
	datac => \I2C|SCL~9_combout\,
	combout => \I2C|timer2_reg~8_combout\);

-- Location: LCCOMB_X22_Y16_N18
\I2C|Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector57~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~8_combout\)))) # (!\I2C|WideOr1~combout\ & (\I2C|Add7~14_combout\ & (!\I2C|Equal7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~14_combout\,
	datab => \I2C|Equal7~8_combout\,
	datac => \I2C|timer2_reg~8_combout\,
	datad => \I2C|WideOr1~combout\,
	combout => \I2C|Selector57~0_combout\);

-- Location: FF_X22_Y16_N19
\I2C|timer2_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector57~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(7));

-- Location: LCCOMB_X23_Y16_N22
\I2C|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~16_combout\ = (\I2C|timer2_reg\(8) & (\I2C|Add4~15\ $ (GND))) # (!\I2C|timer2_reg\(8) & (!\I2C|Add4~15\ & VCC))
-- \I2C|Add4~17\ = CARRY((\I2C|timer2_reg\(8) & !\I2C|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(8),
	datad => VCC,
	cin => \I2C|Add4~15\,
	combout => \I2C|Add4~16_combout\,
	cout => \I2C|Add4~17\);

-- Location: LCCOMB_X23_Y16_N28
\I2C|Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~22_combout\ = (\I2C|timer2_reg\(11) & (!\I2C|Add4~21\)) # (!\I2C|timer2_reg\(11) & ((\I2C|Add4~21\) # (GND)))
-- \I2C|Add4~23\ = CARRY((!\I2C|Add4~21\) # (!\I2C|timer2_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(11),
	datad => VCC,
	cin => \I2C|Add4~21\,
	combout => \I2C|Add4~22_combout\,
	cout => \I2C|Add4~23\);

-- Location: LCCOMB_X24_Y16_N2
\I2C|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal4~2_combout\ = (\I2C|Add4~18_combout\ & (\I2C|Add4~16_combout\ & (\I2C|Add4~20_combout\ & !\I2C|Add4~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add4~18_combout\,
	datab => \I2C|Add4~16_combout\,
	datac => \I2C|Add4~20_combout\,
	datad => \I2C|Add4~22_combout\,
	combout => \I2C|Equal4~2_combout\);

-- Location: LCCOMB_X23_Y16_N4
\I2C|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal4~1_combout\ = (!\I2C|Add4~14_combout\ & (!\I2C|Add4~10_combout\ & (\I2C|Add4~8_combout\ & !\I2C|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add4~14_combout\,
	datab => \I2C|Add4~10_combout\,
	datac => \I2C|Add4~8_combout\,
	datad => \I2C|Add4~12_combout\,
	combout => \I2C|Equal4~1_combout\);

-- Location: LCCOMB_X24_Y16_N0
\I2C|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal4~0_combout\ = (!\I2C|Add4~4_combout\ & (!\I2C|Add4~6_combout\ & (!\I2C|Add4~0_combout\ & !\I2C|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add4~4_combout\,
	datab => \I2C|Add4~6_combout\,
	datac => \I2C|Add4~0_combout\,
	datad => \I2C|Add4~2_combout\,
	combout => \I2C|Equal4~0_combout\);

-- Location: LCCOMB_X24_Y16_N24
\I2C|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal4~4_combout\ = (\I2C|Equal4~3_combout\ & (\I2C|Equal4~2_combout\ & (\I2C|Equal4~1_combout\ & \I2C|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal4~3_combout\,
	datab => \I2C|Equal4~2_combout\,
	datac => \I2C|Equal4~1_combout\,
	datad => \I2C|Equal4~0_combout\,
	combout => \I2C|Equal4~4_combout\);

-- Location: LCCOMB_X24_Y16_N10
\I2C|timer2_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~4_combout\ = (\I2C|SCL~9_combout\ & (((!\I2C|Equal4~4_combout\) # (!\I2C|Equal4~5_combout\)) # (!\I2C|Equal4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|SCL~9_combout\,
	datab => \I2C|Equal4~7_combout\,
	datac => \I2C|Equal4~5_combout\,
	datad => \I2C|Equal4~4_combout\,
	combout => \I2C|timer2_reg~4_combout\);

-- Location: LCCOMB_X24_Y16_N8
\I2C|timer2_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~10_combout\ = (\I2C|Add4~18_combout\ & ((\I2C|timer2_reg~4_combout\) # ((!\I2C|SCL~9_combout\ & \I2C|timer2_reg\(9))))) # (!\I2C|Add4~18_combout\ & (!\I2C|SCL~9_combout\ & (\I2C|timer2_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add4~18_combout\,
	datab => \I2C|SCL~9_combout\,
	datac => \I2C|timer2_reg\(9),
	datad => \I2C|timer2_reg~4_combout\,
	combout => \I2C|timer2_reg~10_combout\);

-- Location: LCCOMB_X24_Y16_N26
\I2C|Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector55~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~10_combout\)))) # (!\I2C|WideOr1~combout\ & (!\I2C|Equal7~8_combout\ & (\I2C|Add7~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal7~8_combout\,
	datab => \I2C|Add7~18_combout\,
	datac => \I2C|timer2_reg~10_combout\,
	datad => \I2C|WideOr1~combout\,
	combout => \I2C|Selector55~0_combout\);

-- Location: FF_X24_Y16_N27
\I2C|timer2_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector55~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(9));

-- Location: LCCOMB_X23_Y16_N26
\I2C|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~20_combout\ = (\I2C|timer2_reg\(10) & (\I2C|Add4~19\ $ (GND))) # (!\I2C|timer2_reg\(10) & (!\I2C|Add4~19\ & VCC))
-- \I2C|Add4~21\ = CARRY((\I2C|timer2_reg\(10) & !\I2C|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(10),
	datad => VCC,
	cin => \I2C|Add4~19\,
	combout => \I2C|Add4~20_combout\,
	cout => \I2C|Add4~21\);

-- Location: LCCOMB_X24_Y16_N30
\I2C|timer2_reg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~11_combout\ = (\I2C|SCL~9_combout\ & (((\I2C|Add4~20_combout\ & \I2C|timer2_reg~4_combout\)))) # (!\I2C|SCL~9_combout\ & ((\I2C|timer2_reg\(10)) # ((\I2C|Add4~20_combout\ & \I2C|timer2_reg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|SCL~9_combout\,
	datab => \I2C|timer2_reg\(10),
	datac => \I2C|Add4~20_combout\,
	datad => \I2C|timer2_reg~4_combout\,
	combout => \I2C|timer2_reg~11_combout\);

-- Location: LCCOMB_X24_Y16_N28
\I2C|Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector54~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~11_combout\)))) # (!\I2C|WideOr1~combout\ & (\I2C|Add7~20_combout\ & ((!\I2C|Equal7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~20_combout\,
	datab => \I2C|timer2_reg~11_combout\,
	datac => \I2C|Equal7~8_combout\,
	datad => \I2C|WideOr1~combout\,
	combout => \I2C|Selector54~0_combout\);

-- Location: FF_X24_Y16_N29
\I2C|timer2_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector54~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(10));

-- Location: LCCOMB_X23_Y16_N30
\I2C|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~24_combout\ = (\I2C|timer2_reg\(12) & (\I2C|Add4~23\ $ (GND))) # (!\I2C|timer2_reg\(12) & (!\I2C|Add4~23\ & VCC))
-- \I2C|Add4~25\ = CARRY((\I2C|timer2_reg\(12) & !\I2C|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(12),
	datad => VCC,
	cin => \I2C|Add4~23\,
	combout => \I2C|Add4~24_combout\,
	cout => \I2C|Add4~25\);

-- Location: LCCOMB_X24_Y15_N2
\I2C|timer2_reg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~14_combout\ = (\I2C|SCL~9_combout\ & ((\I2C|Add4~24_combout\))) # (!\I2C|SCL~9_combout\ & (\I2C|timer2_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(12),
	datac => \I2C|SCL~9_combout\,
	datad => \I2C|Add4~24_combout\,
	combout => \I2C|timer2_reg~14_combout\);

-- Location: LCCOMB_X24_Y15_N14
\I2C|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector52~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~14_combout\)))) # (!\I2C|WideOr1~combout\ & (\I2C|Add7~24_combout\ & (!\I2C|Equal7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~24_combout\,
	datab => \I2C|Equal7~8_combout\,
	datac => \I2C|WideOr1~combout\,
	datad => \I2C|timer2_reg~14_combout\,
	combout => \I2C|Selector52~0_combout\);

-- Location: FF_X24_Y15_N15
\I2C|timer2_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector52~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(12));

-- Location: LCCOMB_X23_Y15_N0
\I2C|Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~26_combout\ = (\I2C|timer2_reg\(13) & (!\I2C|Add4~25\)) # (!\I2C|timer2_reg\(13) & ((\I2C|Add4~25\) # (GND)))
-- \I2C|Add4~27\ = CARRY((!\I2C|Add4~25\) # (!\I2C|timer2_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(13),
	datad => VCC,
	cin => \I2C|Add4~25\,
	combout => \I2C|Add4~26_combout\,
	cout => \I2C|Add4~27\);

-- Location: LCCOMB_X21_Y15_N0
\I2C|Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~26_combout\ = (\I2C|timer2_reg~13_combout\ & (!\I2C|Add7~25\)) # (!\I2C|timer2_reg~13_combout\ & ((\I2C|Add7~25\) # (GND)))
-- \I2C|Add7~27\ = CARRY((!\I2C|Add7~25\) # (!\I2C|timer2_reg~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~13_combout\,
	datad => VCC,
	cin => \I2C|Add7~25\,
	combout => \I2C|Add7~26_combout\,
	cout => \I2C|Add7~27\);

-- Location: LCCOMB_X24_Y15_N4
\I2C|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector51~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~13_combout\)))) # (!\I2C|WideOr1~combout\ & (!\I2C|Equal7~8_combout\ & ((\I2C|Add7~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr1~combout\,
	datab => \I2C|Equal7~8_combout\,
	datac => \I2C|timer2_reg~13_combout\,
	datad => \I2C|Add7~26_combout\,
	combout => \I2C|Selector51~0_combout\);

-- Location: FF_X24_Y15_N5
\I2C|timer2_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector51~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(13));

-- Location: LCCOMB_X24_Y15_N8
\I2C|timer2_reg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~13_combout\ = (\I2C|SCL~9_combout\ & (((\I2C|Add4~26_combout\ & \I2C|timer2_reg~4_combout\)))) # (!\I2C|SCL~9_combout\ & ((\I2C|timer2_reg\(13)) # ((\I2C|Add4~26_combout\ & \I2C|timer2_reg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|SCL~9_combout\,
	datab => \I2C|timer2_reg\(13),
	datac => \I2C|Add4~26_combout\,
	datad => \I2C|timer2_reg~4_combout\,
	combout => \I2C|timer2_reg~13_combout\);

-- Location: LCCOMB_X21_Y15_N4
\I2C|Add7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~30_combout\ = (\I2C|timer2_reg~16_combout\ & (!\I2C|Add7~29\)) # (!\I2C|timer2_reg~16_combout\ & ((\I2C|Add7~29\) # (GND)))
-- \I2C|Add7~31\ = CARRY((!\I2C|Add7~29\) # (!\I2C|timer2_reg~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~16_combout\,
	datad => VCC,
	cin => \I2C|Add7~29\,
	combout => \I2C|Add7~30_combout\,
	cout => \I2C|Add7~31\);

-- Location: LCCOMB_X24_Y15_N6
\I2C|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector49~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~16_combout\)))) # (!\I2C|WideOr1~combout\ & (!\I2C|Equal7~8_combout\ & (\I2C|Add7~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr1~combout\,
	datab => \I2C|Equal7~8_combout\,
	datac => \I2C|Add7~30_combout\,
	datad => \I2C|timer2_reg~16_combout\,
	combout => \I2C|Selector49~0_combout\);

-- Location: FF_X24_Y15_N7
\I2C|timer2_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector49~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(15));

-- Location: LCCOMB_X24_Y15_N10
\I2C|timer2_reg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~16_combout\ = (\I2C|SCL~9_combout\ & (\I2C|Add4~30_combout\)) # (!\I2C|SCL~9_combout\ & ((\I2C|timer2_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|SCL~9_combout\,
	datac => \I2C|Add4~30_combout\,
	datad => \I2C|timer2_reg\(15),
	combout => \I2C|timer2_reg~16_combout\);

-- Location: LCCOMB_X21_Y15_N6
\I2C|Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~32_combout\ = (\I2C|timer2_reg~17_combout\ & (\I2C|Add7~31\ $ (GND))) # (!\I2C|timer2_reg~17_combout\ & (!\I2C|Add7~31\ & VCC))
-- \I2C|Add7~33\ = CARRY((\I2C|timer2_reg~17_combout\ & !\I2C|Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~17_combout\,
	datad => VCC,
	cin => \I2C|Add7~31\,
	combout => \I2C|Add7~32_combout\,
	cout => \I2C|Add7~33\);

-- Location: LCCOMB_X22_Y15_N4
\I2C|timer2_reg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~17_combout\ = (\I2C|SCL~9_combout\ & ((\I2C|Add4~32_combout\))) # (!\I2C|SCL~9_combout\ & (\I2C|timer2_reg\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(16),
	datac => \I2C|SCL~9_combout\,
	datad => \I2C|Add4~32_combout\,
	combout => \I2C|timer2_reg~17_combout\);

-- Location: LCCOMB_X22_Y15_N16
\I2C|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector48~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~17_combout\)))) # (!\I2C|WideOr1~combout\ & (\I2C|Add7~32_combout\ & ((!\I2C|Equal7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr1~combout\,
	datab => \I2C|Add7~32_combout\,
	datac => \I2C|timer2_reg~17_combout\,
	datad => \I2C|Equal7~8_combout\,
	combout => \I2C|Selector48~0_combout\);

-- Location: FF_X22_Y15_N17
\I2C|timer2_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector48~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(16));

-- Location: LCCOMB_X23_Y15_N8
\I2C|Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~34_combout\ = (\I2C|timer2_reg\(17) & (!\I2C|Add4~33\)) # (!\I2C|timer2_reg\(17) & ((\I2C|Add4~33\) # (GND)))
-- \I2C|Add4~35\ = CARRY((!\I2C|Add4~33\) # (!\I2C|timer2_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(17),
	datad => VCC,
	cin => \I2C|Add4~33\,
	combout => \I2C|Add4~34_combout\,
	cout => \I2C|Add4~35\);

-- Location: LCCOMB_X22_Y15_N14
\I2C|timer2_reg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~18_combout\ = (\I2C|SCL~9_combout\ & (\I2C|Add4~34_combout\)) # (!\I2C|SCL~9_combout\ & ((\I2C|timer2_reg\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|SCL~9_combout\,
	datac => \I2C|Add4~34_combout\,
	datad => \I2C|timer2_reg\(17),
	combout => \I2C|timer2_reg~18_combout\);

-- Location: LCCOMB_X22_Y15_N6
\I2C|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector47~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~18_combout\)))) # (!\I2C|WideOr1~combout\ & (\I2C|Add7~34_combout\ & (!\I2C|Equal7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~34_combout\,
	datab => \I2C|Equal7~8_combout\,
	datac => \I2C|WideOr1~combout\,
	datad => \I2C|timer2_reg~18_combout\,
	combout => \I2C|Selector47~0_combout\);

-- Location: FF_X22_Y15_N7
\I2C|timer2_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector47~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(17));

-- Location: LCCOMB_X23_Y15_N10
\I2C|Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~36_combout\ = (\I2C|timer2_reg\(18) & (\I2C|Add4~35\ $ (GND))) # (!\I2C|timer2_reg\(18) & (!\I2C|Add4~35\ & VCC))
-- \I2C|Add4~37\ = CARRY((\I2C|timer2_reg\(18) & !\I2C|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(18),
	datad => VCC,
	cin => \I2C|Add4~35\,
	combout => \I2C|Add4~36_combout\,
	cout => \I2C|Add4~37\);

-- Location: LCCOMB_X22_Y15_N12
\I2C|timer2_reg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~19_combout\ = (\I2C|SCL~9_combout\ & (\I2C|Add4~36_combout\)) # (!\I2C|SCL~9_combout\ & ((\I2C|timer2_reg\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|SCL~9_combout\,
	datac => \I2C|Add4~36_combout\,
	datad => \I2C|timer2_reg\(18),
	combout => \I2C|timer2_reg~19_combout\);

-- Location: LCCOMB_X22_Y15_N24
\I2C|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector46~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~19_combout\)))) # (!\I2C|WideOr1~combout\ & (\I2C|Add7~36_combout\ & (!\I2C|Equal7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~36_combout\,
	datab => \I2C|Equal7~8_combout\,
	datac => \I2C|WideOr1~combout\,
	datad => \I2C|timer2_reg~19_combout\,
	combout => \I2C|Selector46~0_combout\);

-- Location: FF_X22_Y15_N25
\I2C|timer2_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector46~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(18));

-- Location: LCCOMB_X23_Y15_N12
\I2C|Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add4~38_combout\ = (\I2C|timer2_reg\(19) & (!\I2C|Add4~37\)) # (!\I2C|timer2_reg\(19) & ((\I2C|Add4~37\) # (GND)))
-- \I2C|Add4~39\ = CARRY((!\I2C|Add4~37\) # (!\I2C|timer2_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(19),
	datad => VCC,
	cin => \I2C|Add4~37\,
	combout => \I2C|Add4~38_combout\,
	cout => \I2C|Add4~39\);

-- Location: LCCOMB_X22_Y15_N26
\I2C|timer2_reg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~20_combout\ = (\I2C|SCL~9_combout\ & ((\I2C|Add4~38_combout\))) # (!\I2C|SCL~9_combout\ & (\I2C|timer2_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg\(19),
	datab => \I2C|Add4~38_combout\,
	datac => \I2C|SCL~9_combout\,
	combout => \I2C|timer2_reg~20_combout\);

-- Location: LCCOMB_X21_Y15_N8
\I2C|Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~34_combout\ = (\I2C|timer2_reg~18_combout\ & (!\I2C|Add7~33\)) # (!\I2C|timer2_reg~18_combout\ & ((\I2C|Add7~33\) # (GND)))
-- \I2C|Add7~35\ = CARRY((!\I2C|Add7~33\) # (!\I2C|timer2_reg~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~18_combout\,
	datad => VCC,
	cin => \I2C|Add7~33\,
	combout => \I2C|Add7~34_combout\,
	cout => \I2C|Add7~35\);

-- Location: LCCOMB_X21_Y15_N12
\I2C|Add7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~38_combout\ = (\I2C|timer2_reg~20_combout\ & (!\I2C|Add7~37\)) # (!\I2C|timer2_reg~20_combout\ & ((\I2C|Add7~37\) # (GND)))
-- \I2C|Add7~39\ = CARRY((!\I2C|Add7~37\) # (!\I2C|timer2_reg~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~20_combout\,
	datad => VCC,
	cin => \I2C|Add7~37\,
	combout => \I2C|Add7~38_combout\,
	cout => \I2C|Add7~39\);

-- Location: LCCOMB_X22_Y15_N22
\I2C|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector45~0_combout\ = (\I2C|WideOr1~combout\ & (\I2C|timer2_reg~20_combout\)) # (!\I2C|WideOr1~combout\ & (((\I2C|Add7~38_combout\ & !\I2C|Equal7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer2_reg~20_combout\,
	datab => \I2C|Add7~38_combout\,
	datac => \I2C|WideOr1~combout\,
	datad => \I2C|Equal7~8_combout\,
	combout => \I2C|Selector45~0_combout\);

-- Location: FF_X22_Y15_N23
\I2C|timer2_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector45~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(19));

-- Location: LCCOMB_X22_Y16_N26
\I2C|timer2_reg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~21_combout\ = (\I2C|SCL~9_combout\ & ((\I2C|Add4~40_combout\))) # (!\I2C|SCL~9_combout\ & (\I2C|timer2_reg\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg\(20),
	datac => \I2C|SCL~9_combout\,
	datad => \I2C|Add4~40_combout\,
	combout => \I2C|timer2_reg~21_combout\);

-- Location: LCCOMB_X21_Y15_N14
\I2C|Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~40_combout\ = (\I2C|timer2_reg~21_combout\ & (\I2C|Add7~39\ $ (GND))) # (!\I2C|timer2_reg~21_combout\ & (!\I2C|Add7~39\ & VCC))
-- \I2C|Add7~41\ = CARRY((\I2C|timer2_reg~21_combout\ & !\I2C|Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I2C|timer2_reg~21_combout\,
	datad => VCC,
	cin => \I2C|Add7~39\,
	combout => \I2C|Add7~40_combout\,
	cout => \I2C|Add7~41\);

-- Location: LCCOMB_X21_Y15_N30
\I2C|Equal7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal7~6_combout\ = (!\I2C|Add7~46_combout\ & (!\I2C|Add7~42_combout\ & (!\I2C|Add7~40_combout\ & !\I2C|Add7~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~46_combout\,
	datab => \I2C|Add7~42_combout\,
	datac => \I2C|Add7~40_combout\,
	datad => \I2C|Add7~44_combout\,
	combout => \I2C|Equal7~6_combout\);

-- Location: LCCOMB_X22_Y15_N8
\I2C|Equal7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal7~5_combout\ = (!\I2C|Add7~36_combout\ & (!\I2C|Add7~38_combout\ & (!\I2C|Add7~32_combout\ & !\I2C|Add7~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add7~36_combout\,
	datab => \I2C|Add7~38_combout\,
	datac => \I2C|Add7~32_combout\,
	datad => \I2C|Add7~34_combout\,
	combout => \I2C|Equal7~5_combout\);

-- Location: LCCOMB_X24_Y15_N26
\I2C|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector38~0_combout\ = (\I2C|WideOr1~combout\ & (((\I2C|timer2_reg~27_combout\)))) # (!\I2C|WideOr1~combout\ & (!\I2C|Equal7~8_combout\ & (\I2C|Add7~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|WideOr1~combout\,
	datab => \I2C|Equal7~8_combout\,
	datac => \I2C|Add7~52_combout\,
	datad => \I2C|timer2_reg~27_combout\,
	combout => \I2C|Selector38~0_combout\);

-- Location: FF_X24_Y15_N27
\I2C|timer2_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|Selector38~0_combout\,
	ena => \I2C|timer1_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_reg\(26));

-- Location: LCCOMB_X24_Y15_N24
\I2C|timer2_reg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_reg~27_combout\ = (\I2C|SCL~9_combout\ & (\I2C|Add4~52_combout\)) # (!\I2C|SCL~9_combout\ & ((\I2C|timer2_reg\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Add4~52_combout\,
	datac => \I2C|SCL~9_combout\,
	datad => \I2C|timer2_reg\(26),
	combout => \I2C|timer2_reg~27_combout\);

-- Location: LCCOMB_X21_Y15_N26
\I2C|Add7~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Add7~52_combout\ = \I2C|Add7~51\ $ (!\I2C|timer2_reg~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I2C|timer2_reg~27_combout\,
	cin => \I2C|Add7~51\,
	combout => \I2C|Add7~52_combout\);

-- Location: LCCOMB_X22_Y15_N28
\I2C|Equal7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal7~7_combout\ = (!\I2C|Add7~50_combout\ & (!\I2C|Add7~52_combout\ & !\I2C|Add7~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Add7~50_combout\,
	datac => \I2C|Add7~52_combout\,
	datad => \I2C|Add7~48_combout\,
	combout => \I2C|Equal7~7_combout\);

-- Location: LCCOMB_X22_Y15_N2
\I2C|Equal7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Equal7~8_combout\ = (\I2C|Equal7~4_combout\ & (\I2C|Equal7~6_combout\ & (\I2C|Equal7~5_combout\ & \I2C|Equal7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Equal7~4_combout\,
	datab => \I2C|Equal7~6_combout\,
	datac => \I2C|Equal7~5_combout\,
	datad => \I2C|Equal7~7_combout\,
	combout => \I2C|Equal7~8_combout\);

-- Location: LCCOMB_X22_Y18_N6
\I2C|timer2_flag.01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|timer2_flag.01~0_combout\ = (\I2C|SCL~9_combout\ & ((\I2C|Equal7~8_combout\))) # (!\I2C|SCL~9_combout\ & (\I2C|timer2_flag.01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|SCL~9_combout\,
	datac => \I2C|timer2_flag.01~q\,
	datad => \I2C|Equal7~8_combout\,
	combout => \I2C|timer2_flag.01~0_combout\);

-- Location: FF_X22_Y18_N7
\I2C|timer2_flag.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|timer2_flag.01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|timer2_flag.01~q\);

-- Location: LCCOMB_X22_Y18_N8
\I2C|Selector65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|Selector65~2_combout\ = (!\I2C|WideOr1~combout\ & ((\I2C|Selector65~1_combout\) # ((\I2C|Selector65~0_combout\) # (\I2C|timer2_flag.01~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|Selector65~1_combout\,
	datab => \I2C|Selector65~0_combout\,
	datac => \I2C|WideOr1~combout\,
	datad => \I2C|timer2_flag.01~q\,
	combout => \I2C|Selector65~2_combout\);

-- Location: LCCOMB_X22_Y18_N0
\I2C|SCL~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|SCL~6_combout\ = (\I2C|timer1_flag.01~q\ & (\I2C|Selector65~2_combout\)) # (!\I2C|timer1_flag.01~q\ & ((\I2C|SCL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I2C|Selector65~2_combout\,
	datac => \I2C|SCL~q\,
	datad => \I2C|timer1_flag.01~q\,
	combout => \I2C|SCL~6_combout\);

-- Location: LCCOMB_X22_Y18_N26
\I2C|SCL~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|SCL~11_combout\ = (!\I2C|state_ack.000000000~q\ & ((\I2C|timer1_flag.01~q\ & ((\I2C|Selector65~2_combout\))) # (!\I2C|timer1_flag.01~q\ & (\I2C|SCL~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|timer1_flag.01~q\,
	datab => \I2C|SCL~10_combout\,
	datac => \I2C|Selector65~2_combout\,
	datad => \I2C|state_ack.000000000~q\,
	combout => \I2C|SCL~11_combout\);

-- Location: LCCOMB_X22_Y18_N28
\I2C|SCL~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|SCL~12_combout\ = (!\I2C|state_start.000000010~q\ & !\I2C|state_start.000000001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_start.000000010~q\,
	datad => \I2C|state_start.000000001~q\,
	combout => \I2C|SCL~12_combout\);

-- Location: LCCOMB_X22_Y18_N22
\I2C|SCL~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \I2C|SCL~13_combout\ = ((!\I2C|SCL~12_combout\ & ((\I2C|state_ack.000000001~q\) # (\I2C|SCL~11_combout\)))) # (!\I2C|state_start.000000000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|state_start.000000000~q\,
	datab => \I2C|state_ack.000000001~q\,
	datac => \I2C|SCL~11_combout\,
	datad => \I2C|SCL~12_combout\,
	combout => \I2C|SCL~13_combout\);

-- Location: FF_X22_Y18_N1
\I2C|SCL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I2C|SCL~6_combout\,
	asdata => \I2C|SCL~13_combout\,
	sload => \I2C|timer3_flag.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|SCL~q\);

-- Location: LCCOMB_X18_Y21_N4
\display|digit_posn[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|digit_posn[1]~0_combout\ = \display|digit_posn\(1) $ (((\display|digit_posn\(0) & \display|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|digit_posn\(0),
	datac => \display|digit_posn\(1),
	datad => \display|Equal0~7_combout\,
	combout => \display|digit_posn[1]~0_combout\);

-- Location: FF_X18_Y21_N5
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

-- Location: LCCOMB_X14_Y21_N8
\display|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Decoder0~0_combout\ = (!\display|digit_posn\(1)) # (!\display|digit_posn\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|digit_posn\(0),
	datad => \display|digit_posn\(1),
	combout => \display|Decoder0~0_combout\);

-- Location: FF_X14_Y21_N9
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

-- Location: LCCOMB_X18_Y21_N2
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

-- Location: FF_X14_Y21_N31
\display|DIGIT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \display|decoder|Equal0~0_combout\,
	sload => VCC,
	ena => \display|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display|DIGIT\(1));

-- Location: LCCOMB_X14_Y21_N28
\display|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Decoder0~1_combout\ = (\display|digit_posn\(1)) # (!\display|digit_posn\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|digit_posn\(0),
	datad => \display|digit_posn\(1),
	combout => \display|Decoder0~1_combout\);

-- Location: FF_X14_Y21_N29
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

-- Location: LCCOMB_X14_Y21_N6
\display|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|Decoder0~2_combout\ = (\display|digit_posn\(0)) # (\display|digit_posn\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display|digit_posn\(0),
	datad => \display|digit_posn\(1),
	combout => \display|Decoder0~2_combout\);

-- Location: FF_X14_Y21_N7
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

ww_SCL <= \SCL~output_o\;

ww_DIGIT(0) <= \DIGIT[0]~output_o\;

ww_DIGIT(1) <= \DIGIT[1]~output_o\;

ww_DIGIT(2) <= \DIGIT[2]~output_o\;

ww_DIGIT(3) <= \DIGIT[3]~output_o\;

SDA <= \SDA~output_o\;
END structure;


