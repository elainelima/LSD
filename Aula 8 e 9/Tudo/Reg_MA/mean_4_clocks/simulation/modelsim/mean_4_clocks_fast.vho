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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/29/2024 20:11:25"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mean_4_clocks IS
    PORT (
	CLK : IN std_logic;
	RESET : IN std_logic;
	INPUT : IN std_logic_vector(31 DOWNTO 0);
	OUTPUT : OUT std_logic_vector(31 DOWNTO 0)
	);
END mean_4_clocks;

-- Design Ports Information
-- OUTPUT[0]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[1]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[2]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[4]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[5]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[6]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[7]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[8]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[9]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[10]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[11]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[12]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[13]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[14]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[15]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[16]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[17]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[18]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[19]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[20]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[21]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[22]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[23]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[24]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[25]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[26]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[27]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[28]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[29]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[30]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[31]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[4]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[5]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[6]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[7]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[8]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[9]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[10]	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[11]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[12]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[13]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[14]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[15]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[16]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[17]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[18]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[19]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[20]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[21]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[22]	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[23]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[24]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[25]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[26]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[27]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[28]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[29]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[30]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[31]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF mean_4_clocks IS
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
SIGNAL ww_RESET : std_logic;
SIGNAL ww_INPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \var4[2]~feeder_combout\ : std_logic;
SIGNAL \var4[3]~feeder_combout\ : std_logic;
SIGNAL \var4[4]~feeder_combout\ : std_logic;
SIGNAL \var4[5]~feeder_combout\ : std_logic;
SIGNAL \var4[6]~feeder_combout\ : std_logic;
SIGNAL \var4[11]~feeder_combout\ : std_logic;
SIGNAL \var4[13]~feeder_combout\ : std_logic;
SIGNAL \var4[18]~feeder_combout\ : std_logic;
SIGNAL \var4[23]~feeder_combout\ : std_logic;
SIGNAL \var1[2]~feeder_combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \var2[2]~feeder_combout\ : std_logic;
SIGNAL \var3[2]~feeder_combout\ : std_logic;
SIGNAL \var1[1]~feeder_combout\ : std_logic;
SIGNAL \var2[1]~feeder_combout\ : std_logic;
SIGNAL \var2[0]~feeder_combout\ : std_logic;
SIGNAL \var3[0]~feeder_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add2~1_cout\ : std_logic;
SIGNAL \Add2~3_cout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \var1[3]~feeder_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \var2[3]~feeder_combout\ : std_logic;
SIGNAL \var3[3]~feeder_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \var1[4]~feeder_combout\ : std_logic;
SIGNAL \var2[4]~feeder_combout\ : std_logic;
SIGNAL \var3[4]~feeder_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \var1[5]~feeder_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \var2[5]~feeder_combout\ : std_logic;
SIGNAL \var3[5]~feeder_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \var1[6]~feeder_combout\ : std_logic;
SIGNAL \var2[6]~feeder_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \var3[6]~feeder_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \var1[7]~feeder_combout\ : std_logic;
SIGNAL \var2[7]~feeder_combout\ : std_logic;
SIGNAL \var3[7]~feeder_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \var1[9]~feeder_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \var2[9]~feeder_combout\ : std_logic;
SIGNAL \var3[9]~feeder_combout\ : std_logic;
SIGNAL \var4[9]~feeder_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \var1[10]~feeder_combout\ : std_logic;
SIGNAL \var2[10]~feeder_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \var3[10]~feeder_combout\ : std_logic;
SIGNAL \var4[10]~feeder_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \var1[11]~feeder_combout\ : std_logic;
SIGNAL \var2[11]~feeder_combout\ : std_logic;
SIGNAL \var3[11]~feeder_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \var1[13]~feeder_combout\ : std_logic;
SIGNAL \var2[13]~feeder_combout\ : std_logic;
SIGNAL \var3[13]~feeder_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \var1[15]~feeder_combout\ : std_logic;
SIGNAL \var2[15]~feeder_combout\ : std_logic;
SIGNAL \var3[15]~feeder_combout\ : std_logic;
SIGNAL \var4[15]~feeder_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \var1[18]~feeder_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \var2[18]~feeder_combout\ : std_logic;
SIGNAL \var3[18]~feeder_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \var2[20]~feeder_combout\ : std_logic;
SIGNAL \var3[20]~feeder_combout\ : std_logic;
SIGNAL \var4[20]~feeder_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \var1[23]~feeder_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \var2[23]~feeder_combout\ : std_logic;
SIGNAL \var3[23]~feeder_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \var1[24]~feeder_combout\ : std_logic;
SIGNAL \var2[24]~feeder_combout\ : std_logic;
SIGNAL \var3[24]~feeder_combout\ : std_logic;
SIGNAL \var4[24]~feeder_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \var1[25]~feeder_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \var2[25]~feeder_combout\ : std_logic;
SIGNAL \var3[25]~feeder_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \var1[26]~feeder_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \var2[26]~feeder_combout\ : std_logic;
SIGNAL \var3[26]~feeder_combout\ : std_logic;
SIGNAL \var4[26]~feeder_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \var1[27]~feeder_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \var2[27]~feeder_combout\ : std_logic;
SIGNAL \var3[27]~feeder_combout\ : std_logic;
SIGNAL \var4[27]~feeder_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \var1[28]~feeder_combout\ : std_logic;
SIGNAL \var2[28]~feeder_combout\ : std_logic;
SIGNAL \var3[28]~feeder_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \var3[29]~feeder_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \var1[30]~feeder_combout\ : std_logic;
SIGNAL \var2[30]~feeder_combout\ : std_logic;
SIGNAL \var3[30]~feeder_combout\ : std_logic;
SIGNAL \var4[30]~feeder_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add1~63\ : std_logic;
SIGNAL \Add1~64_combout\ : std_logic;
SIGNAL \Add2~63\ : std_logic;
SIGNAL \Add2~64_combout\ : std_logic;
SIGNAL \Add2~65\ : std_logic;
SIGNAL \Add2~66_combout\ : std_logic;
SIGNAL var4 : std_logic_vector(31 DOWNTO 0);
SIGNAL var3 : std_logic_vector(31 DOWNTO 0);
SIGNAL var2 : std_logic_vector(31 DOWNTO 0);
SIGNAL var1 : std_logic_vector(31 DOWNTO 0);
SIGNAL \INPUT~combout\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
ww_INPUT <= INPUT;
OUTPUT <= ww_OUTPUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\RESET~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET~combout\);

-- Location: LCCOMB_X6_Y10_N18
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (var4(1) & ((var3(1) & (\Add1~1\ & VCC)) # (!var3(1) & (!\Add1~1\)))) # (!var4(1) & ((var3(1) & (!\Add1~1\)) # (!var3(1) & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((var4(1) & (!var3(1) & !\Add1~1\)) # (!var4(1) & ((!\Add1~1\) # (!var3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(1),
	datab => var3(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X5_Y10_N16
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (var2(0) & (var1(0) $ (VCC))) # (!var2(0) & (var1(0) & VCC))
-- \Add0~1\ = CARRY((var2(0) & var1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var2(0),
	datab => var1(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCFF_X5_Y10_N9
\var4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[2]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(2));

-- Location: LCFF_X6_Y10_N21
\var4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(1),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(1));

-- Location: LCFF_X7_Y10_N5
\var4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[3]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(3));

-- Location: LCFF_X7_Y10_N25
\var4[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[4]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(4));

-- Location: LCFF_X8_Y10_N1
\var4[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[5]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(5));

-- Location: LCFF_X7_Y10_N17
\var4[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[6]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(6));

-- Location: LCFF_X6_Y10_N17
\var4[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(7),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(7));

-- Location: LCFF_X6_Y9_N1
\var4[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(8),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(8));

-- Location: LCFF_X7_Y9_N17
\var4[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[11]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(11));

-- Location: LCFF_X3_Y9_N5
\var4[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[13]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(13));

-- Location: LCFF_X5_Y9_N9
\var4[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(14),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(14));

-- Location: LCFF_X6_Y9_N13
\var4[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(17),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(17));

-- Location: LCFF_X8_Y9_N9
\var4[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[18]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(18));

-- Location: LCFF_X6_Y9_N17
\var4[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(19),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(19));

-- Location: LCFF_X6_Y9_N25
\var4[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(22),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(22));

-- Location: LCFF_X3_Y9_N13
\var4[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[23]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(23));

-- Location: LCFF_X6_Y8_N17
\var4[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(29),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(29));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y10_N8
\var4[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[2]~feeder_combout\ = var3(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(2),
	combout => \var4[2]~feeder_combout\);

-- Location: LCCOMB_X7_Y10_N4
\var4[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[3]~feeder_combout\ = var3(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(3),
	combout => \var4[3]~feeder_combout\);

-- Location: LCCOMB_X7_Y10_N24
\var4[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[4]~feeder_combout\ = var3(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(4),
	combout => \var4[4]~feeder_combout\);

-- Location: LCCOMB_X8_Y10_N0
\var4[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[5]~feeder_combout\ = var3(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(5),
	combout => \var4[5]~feeder_combout\);

-- Location: LCCOMB_X7_Y10_N16
\var4[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[6]~feeder_combout\ = var3(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(6),
	combout => \var4[6]~feeder_combout\);

-- Location: LCCOMB_X7_Y9_N16
\var4[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[11]~feeder_combout\ = var3(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(11),
	combout => \var4[11]~feeder_combout\);

-- Location: LCCOMB_X3_Y9_N4
\var4[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[13]~feeder_combout\ = var3(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(13),
	combout => \var4[13]~feeder_combout\);

-- Location: LCCOMB_X8_Y9_N8
\var4[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[18]~feeder_combout\ = var3(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(18),
	combout => \var4[18]~feeder_combout\);

-- Location: LCCOMB_X3_Y9_N12
\var4[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[23]~feeder_combout\ = var3(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(23),
	combout => \var4[23]~feeder_combout\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(2),
	combout => \INPUT~combout\(2));

-- Location: LCCOMB_X5_Y10_N6
\var1[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[2]~feeder_combout\ = \INPUT~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(2),
	combout => \var1[2]~feeder_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RESET~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RESET,
	combout => \RESET~combout\);

-- Location: CLKCTRL_G1
\RESET~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~clkctrl_outclk\);

-- Location: LCFF_X5_Y10_N7
\var1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[2]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(2));

-- Location: LCCOMB_X5_Y10_N12
\var2[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[2]~feeder_combout\ = var1(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(2),
	combout => \var2[2]~feeder_combout\);

-- Location: LCFF_X5_Y10_N13
\var2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[2]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(2));

-- Location: LCCOMB_X5_Y10_N10
\var3[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[2]~feeder_combout\ = var2(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(2),
	combout => \var3[2]~feeder_combout\);

-- Location: LCFF_X5_Y10_N11
\var3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[2]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(2));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(1),
	combout => \INPUT~combout\(1));

-- Location: LCCOMB_X6_Y10_N0
\var1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[1]~feeder_combout\ = \INPUT~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(1),
	combout => \var1[1]~feeder_combout\);

-- Location: LCFF_X6_Y10_N1
\var1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[1]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(1));

-- Location: LCCOMB_X6_Y10_N14
\var2[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[1]~feeder_combout\ = var1(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(1),
	combout => \var2[1]~feeder_combout\);

-- Location: LCFF_X6_Y10_N15
\var2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[1]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(1));

-- Location: LCFF_X6_Y10_N19
\var3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var2(1),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(1));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(0),
	combout => \INPUT~combout\(0));

-- Location: LCFF_X6_Y10_N13
\var1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \INPUT~combout\(0),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(0));

-- Location: LCCOMB_X6_Y10_N2
\var2[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[0]~feeder_combout\ = var1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(0),
	combout => \var2[0]~feeder_combout\);

-- Location: LCFF_X6_Y10_N3
\var2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[0]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(0));

-- Location: LCCOMB_X6_Y10_N8
\var3[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[0]~feeder_combout\ = var2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(0),
	combout => \var3[0]~feeder_combout\);

-- Location: LCFF_X6_Y10_N9
\var3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[0]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(0));

-- Location: LCFF_X6_Y10_N23
\var4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(0),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(0));

-- Location: LCCOMB_X6_Y10_N16
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (var3(0) & (var4(0) $ (VCC))) # (!var3(0) & (var4(0) & VCC))
-- \Add1~1\ = CARRY((var3(0) & var4(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var3(0),
	datab => var4(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X6_Y10_N20
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((var4(2) $ (var3(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((var4(2) & ((var3(2)) # (!\Add1~3\))) # (!var4(2) & (var3(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(2),
	datab => var3(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X5_Y10_N18
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (var2(1) & ((var1(1) & (\Add0~1\ & VCC)) # (!var1(1) & (!\Add0~1\)))) # (!var2(1) & ((var1(1) & (!\Add0~1\)) # (!var1(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((var2(1) & (!var1(1) & !\Add0~1\)) # (!var2(1) & ((!\Add0~1\) # (!var1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(1),
	datab => var1(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X5_Y10_N20
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((var2(2) $ (var1(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((var2(2) & ((var1(2)) # (!\Add0~3\))) # (!var2(2) & (var1(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(2),
	datab => var1(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X4_Y10_N14
\Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~1_cout\ = CARRY((\Add0~0_combout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add1~0_combout\,
	datad => VCC,
	cout => \Add2~1_cout\);

-- Location: LCCOMB_X4_Y10_N16
\Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~3_cout\ = CARRY((\Add1~2_combout\ & (!\Add0~2_combout\ & !\Add2~1_cout\)) # (!\Add1~2_combout\ & ((!\Add2~1_cout\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add2~1_cout\,
	cout => \Add2~3_cout\);

-- Location: LCCOMB_X4_Y10_N18
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Add1~4_combout\ $ (\Add0~4_combout\ $ (!\Add2~3_cout\)))) # (GND)
-- \Add2~5\ = CARRY((\Add1~4_combout\ & ((\Add0~4_combout\) # (!\Add2~3_cout\))) # (!\Add1~4_combout\ & (\Add0~4_combout\ & !\Add2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add2~3_cout\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(3),
	combout => \INPUT~combout\(3));

-- Location: LCCOMB_X7_Y10_N22
\var1[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[3]~feeder_combout\ = \INPUT~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(3),
	combout => \var1[3]~feeder_combout\);

-- Location: LCFF_X7_Y10_N23
\var1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[3]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(3));

-- Location: LCCOMB_X5_Y10_N22
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (var2(3) & ((var1(3) & (\Add0~5\ & VCC)) # (!var1(3) & (!\Add0~5\)))) # (!var2(3) & ((var1(3) & (!\Add0~5\)) # (!var1(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((var2(3) & (!var1(3) & !\Add0~5\)) # (!var2(3) & ((!\Add0~5\) # (!var1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(3),
	datab => var1(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X7_Y10_N28
\var2[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[3]~feeder_combout\ = var1(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(3),
	combout => \var2[3]~feeder_combout\);

-- Location: LCFF_X7_Y10_N29
\var2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[3]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(3));

-- Location: LCCOMB_X7_Y10_N30
\var3[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[3]~feeder_combout\ = var2(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(3),
	combout => \var3[3]~feeder_combout\);

-- Location: LCFF_X7_Y10_N31
\var3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[3]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(3));

-- Location: LCCOMB_X6_Y10_N22
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (var4(3) & ((var3(3) & (\Add1~5\ & VCC)) # (!var3(3) & (!\Add1~5\)))) # (!var4(3) & ((var3(3) & (!\Add1~5\)) # (!var3(3) & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((var4(3) & (!var3(3) & !\Add1~5\)) # (!var4(3) & ((!\Add1~5\) # (!var3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(3),
	datab => var3(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X4_Y10_N20
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add0~6_combout\ & ((\Add1~6_combout\ & (\Add2~5\ & VCC)) # (!\Add1~6_combout\ & (!\Add2~5\)))) # (!\Add0~6_combout\ & ((\Add1~6_combout\ & (!\Add2~5\)) # (!\Add1~6_combout\ & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\Add0~6_combout\ & (!\Add1~6_combout\ & !\Add2~5\)) # (!\Add0~6_combout\ & ((!\Add2~5\) # (!\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(4),
	combout => \INPUT~combout\(4));

-- Location: LCCOMB_X7_Y10_N26
\var1[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[4]~feeder_combout\ = \INPUT~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(4),
	combout => \var1[4]~feeder_combout\);

-- Location: LCFF_X7_Y10_N27
\var1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[4]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(4));

-- Location: LCCOMB_X7_Y10_N0
\var2[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[4]~feeder_combout\ = var1(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(4),
	combout => \var2[4]~feeder_combout\);

-- Location: LCFF_X7_Y10_N1
\var2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[4]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(4));

-- Location: LCCOMB_X7_Y10_N2
\var3[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[4]~feeder_combout\ = var2(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(4),
	combout => \var3[4]~feeder_combout\);

-- Location: LCFF_X7_Y10_N3
\var3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[4]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(4));

-- Location: LCCOMB_X6_Y10_N24
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((var4(4) $ (var3(4) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((var4(4) & ((var3(4)) # (!\Add1~7\))) # (!var4(4) & (var3(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(4),
	datab => var3(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X5_Y10_N24
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((var2(4) $ (var1(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((var2(4) & ((var1(4)) # (!\Add0~7\))) # (!var2(4) & (var1(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(4),
	datab => var1(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X4_Y10_N22
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Add1~8_combout\ $ (\Add0~8_combout\ $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\Add1~8_combout\ & ((\Add0~8_combout\) # (!\Add2~7\))) # (!\Add1~8_combout\ & (\Add0~8_combout\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(5),
	combout => \INPUT~combout\(5));

-- Location: LCCOMB_X8_Y10_N18
\var1[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[5]~feeder_combout\ = \INPUT~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(5),
	combout => \var1[5]~feeder_combout\);

-- Location: LCFF_X8_Y10_N19
\var1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[5]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(5));

-- Location: LCCOMB_X5_Y10_N26
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (var2(5) & ((var1(5) & (\Add0~9\ & VCC)) # (!var1(5) & (!\Add0~9\)))) # (!var2(5) & ((var1(5) & (!\Add0~9\)) # (!var1(5) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((var2(5) & (!var1(5) & !\Add0~9\)) # (!var2(5) & ((!\Add0~9\) # (!var1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(5),
	datab => var1(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X8_Y10_N12
\var2[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[5]~feeder_combout\ = var1(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(5),
	combout => \var2[5]~feeder_combout\);

-- Location: LCFF_X8_Y10_N13
\var2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[5]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(5));

-- Location: LCCOMB_X8_Y10_N6
\var3[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[5]~feeder_combout\ = var2(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(5),
	combout => \var3[5]~feeder_combout\);

-- Location: LCFF_X8_Y10_N7
\var3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[5]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(5));

-- Location: LCCOMB_X6_Y10_N26
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (var4(5) & ((var3(5) & (\Add1~9\ & VCC)) # (!var3(5) & (!\Add1~9\)))) # (!var4(5) & ((var3(5) & (!\Add1~9\)) # (!var3(5) & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((var4(5) & (!var3(5) & !\Add1~9\)) # (!var4(5) & ((!\Add1~9\) # (!var3(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(5),
	datab => var3(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X4_Y10_N24
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add0~10_combout\ & ((\Add1~10_combout\ & (\Add2~9\ & VCC)) # (!\Add1~10_combout\ & (!\Add2~9\)))) # (!\Add0~10_combout\ & ((\Add1~10_combout\ & (!\Add2~9\)) # (!\Add1~10_combout\ & ((\Add2~9\) # (GND)))))
-- \Add2~11\ = CARRY((\Add0~10_combout\ & (!\Add1~10_combout\ & !\Add2~9\)) # (!\Add0~10_combout\ & ((!\Add2~9\) # (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(6),
	combout => \INPUT~combout\(6));

-- Location: LCCOMB_X7_Y10_N10
\var1[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[6]~feeder_combout\ = \INPUT~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(6),
	combout => \var1[6]~feeder_combout\);

-- Location: LCFF_X7_Y10_N11
\var1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[6]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(6));

-- Location: LCCOMB_X7_Y10_N12
\var2[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[6]~feeder_combout\ = var1(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(6),
	combout => \var2[6]~feeder_combout\);

-- Location: LCFF_X7_Y10_N13
\var2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[6]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(6));

-- Location: LCCOMB_X5_Y10_N28
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((var1(6) $ (var2(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((var1(6) & ((var2(6)) # (!\Add0~11\))) # (!var1(6) & (var2(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var1(6),
	datab => var2(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X7_Y10_N18
\var3[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[6]~feeder_combout\ = var2(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(6),
	combout => \var3[6]~feeder_combout\);

-- Location: LCFF_X7_Y10_N19
\var3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[6]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(6));

-- Location: LCCOMB_X6_Y10_N28
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((var4(6) $ (var3(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((var4(6) & ((var3(6)) # (!\Add1~11\))) # (!var4(6) & (var3(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(6),
	datab => var3(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X4_Y10_N26
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\Add0~12_combout\ $ (\Add1~12_combout\ $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\Add0~12_combout\ & ((\Add1~12_combout\) # (!\Add2~11\))) # (!\Add0~12_combout\ & (\Add1~12_combout\ & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add1~12_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(7),
	combout => \INPUT~combout\(7));

-- Location: LCCOMB_X6_Y10_N10
\var1[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[7]~feeder_combout\ = \INPUT~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(7),
	combout => \var1[7]~feeder_combout\);

-- Location: LCFF_X6_Y10_N11
\var1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[7]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(7));

-- Location: LCCOMB_X6_Y10_N6
\var2[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[7]~feeder_combout\ = var1(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(7),
	combout => \var2[7]~feeder_combout\);

-- Location: LCFF_X6_Y10_N7
\var2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[7]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(7));

-- Location: LCCOMB_X6_Y10_N4
\var3[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[7]~feeder_combout\ = var2(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(7),
	combout => \var3[7]~feeder_combout\);

-- Location: LCFF_X6_Y10_N5
\var3[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[7]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(7));

-- Location: LCCOMB_X6_Y10_N30
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (var4(7) & ((var3(7) & (\Add1~13\ & VCC)) # (!var3(7) & (!\Add1~13\)))) # (!var4(7) & ((var3(7) & (!\Add1~13\)) # (!var3(7) & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((var4(7) & (!var3(7) & !\Add1~13\)) # (!var4(7) & ((!\Add1~13\) # (!var3(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(7),
	datab => var3(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X5_Y10_N30
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (var2(7) & ((var1(7) & (\Add0~13\ & VCC)) # (!var1(7) & (!\Add0~13\)))) # (!var2(7) & ((var1(7) & (!\Add0~13\)) # (!var1(7) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((var2(7) & (!var1(7) & !\Add0~13\)) # (!var2(7) & ((!\Add0~13\) # (!var1(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(7),
	datab => var1(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X4_Y10_N28
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add1~14_combout\ & ((\Add0~14_combout\ & (\Add2~13\ & VCC)) # (!\Add0~14_combout\ & (!\Add2~13\)))) # (!\Add1~14_combout\ & ((\Add0~14_combout\ & (!\Add2~13\)) # (!\Add0~14_combout\ & ((\Add2~13\) # (GND)))))
-- \Add2~15\ = CARRY((\Add1~14_combout\ & (!\Add0~14_combout\ & !\Add2~13\)) # (!\Add1~14_combout\ & ((!\Add2~13\) # (!\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(8),
	combout => \INPUT~combout\(8));

-- Location: LCFF_X6_Y9_N7
\var1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \INPUT~combout\(8),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(8));

-- Location: LCFF_X6_Y9_N5
\var2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var1(8),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(8));

-- Location: LCFF_X6_Y9_N3
\var3[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var2(8),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(8));

-- Location: LCCOMB_X6_Y9_N0
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((var4(8) $ (var3(8) $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((var4(8) & ((var3(8)) # (!\Add1~15\))) # (!var4(8) & (var3(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(8),
	datab => var3(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X5_Y9_N0
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((var2(8) $ (var1(8) $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((var2(8) & ((var1(8)) # (!\Add0~15\))) # (!var2(8) & (var1(8) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(8),
	datab => var1(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X4_Y10_N30
\Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = ((\Add1~16_combout\ $ (\Add0~16_combout\ $ (!\Add2~15\)))) # (GND)
-- \Add2~17\ = CARRY((\Add1~16_combout\ & ((\Add0~16_combout\) # (!\Add2~15\))) # (!\Add1~16_combout\ & (\Add0~16_combout\ & !\Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(9),
	combout => \INPUT~combout\(9));

-- Location: LCCOMB_X8_Y9_N6
\var1[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[9]~feeder_combout\ = \INPUT~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(9),
	combout => \var1[9]~feeder_combout\);

-- Location: LCFF_X8_Y9_N7
\var1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[9]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(9));

-- Location: LCCOMB_X5_Y9_N2
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (var2(9) & ((var1(9) & (\Add0~17\ & VCC)) # (!var1(9) & (!\Add0~17\)))) # (!var2(9) & ((var1(9) & (!\Add0~17\)) # (!var1(9) & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((var2(9) & (!var1(9) & !\Add0~17\)) # (!var2(9) & ((!\Add0~17\) # (!var1(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(9),
	datab => var1(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X8_Y9_N0
\var2[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[9]~feeder_combout\ = var1(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(9),
	combout => \var2[9]~feeder_combout\);

-- Location: LCFF_X8_Y9_N1
\var2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[9]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(9));

-- Location: LCCOMB_X8_Y9_N30
\var3[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[9]~feeder_combout\ = var2(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(9),
	combout => \var3[9]~feeder_combout\);

-- Location: LCFF_X8_Y9_N31
\var3[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[9]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(9));

-- Location: LCCOMB_X8_Y9_N16
\var4[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[9]~feeder_combout\ = var3(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(9),
	combout => \var4[9]~feeder_combout\);

-- Location: LCFF_X8_Y9_N17
\var4[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[9]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(9));

-- Location: LCCOMB_X6_Y9_N2
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (var3(9) & ((var4(9) & (\Add1~17\ & VCC)) # (!var4(9) & (!\Add1~17\)))) # (!var3(9) & ((var4(9) & (!\Add1~17\)) # (!var4(9) & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((var3(9) & (!var4(9) & !\Add1~17\)) # (!var3(9) & ((!\Add1~17\) # (!var4(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var3(9),
	datab => var4(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X4_Y9_N0
\Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Add0~18_combout\ & ((\Add1~18_combout\ & (\Add2~17\ & VCC)) # (!\Add1~18_combout\ & (!\Add2~17\)))) # (!\Add0~18_combout\ & ((\Add1~18_combout\ & (!\Add2~17\)) # (!\Add1~18_combout\ & ((\Add2~17\) # (GND)))))
-- \Add2~19\ = CARRY((\Add0~18_combout\ & (!\Add1~18_combout\ & !\Add2~17\)) # (!\Add0~18_combout\ & ((!\Add2~17\) # (!\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(10),
	combout => \INPUT~combout\(10));

-- Location: LCCOMB_X7_Y9_N18
\var1[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[10]~feeder_combout\ = \INPUT~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(10),
	combout => \var1[10]~feeder_combout\);

-- Location: LCFF_X7_Y9_N19
\var1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[10]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(10));

-- Location: LCCOMB_X7_Y9_N0
\var2[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[10]~feeder_combout\ = var1(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(10),
	combout => \var2[10]~feeder_combout\);

-- Location: LCFF_X7_Y9_N1
\var2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[10]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(10));

-- Location: LCCOMB_X5_Y9_N4
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((var1(10) $ (var2(10) $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((var1(10) & ((var2(10)) # (!\Add0~19\))) # (!var1(10) & (var2(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var1(10),
	datab => var2(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X7_Y9_N30
\var3[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[10]~feeder_combout\ = var2(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(10),
	combout => \var3[10]~feeder_combout\);

-- Location: LCFF_X7_Y9_N31
\var3[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[10]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(10));

-- Location: LCCOMB_X7_Y9_N24
\var4[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[10]~feeder_combout\ = var3(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(10),
	combout => \var4[10]~feeder_combout\);

-- Location: LCFF_X7_Y9_N25
\var4[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[10]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(10));

-- Location: LCCOMB_X6_Y9_N4
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((var3(10) $ (var4(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((var3(10) & ((var4(10)) # (!\Add1~19\))) # (!var3(10) & (var4(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var3(10),
	datab => var4(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X4_Y9_N2
\Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = ((\Add0~20_combout\ $ (\Add1~20_combout\ $ (!\Add2~19\)))) # (GND)
-- \Add2~21\ = CARRY((\Add0~20_combout\ & ((\Add1~20_combout\) # (!\Add2~19\))) # (!\Add0~20_combout\ & (\Add1~20_combout\ & !\Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add1~20_combout\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(11),
	combout => \INPUT~combout\(11));

-- Location: LCCOMB_X7_Y9_N6
\var1[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[11]~feeder_combout\ = \INPUT~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(11),
	combout => \var1[11]~feeder_combout\);

-- Location: LCFF_X7_Y9_N7
\var1[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[11]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(11));

-- Location: LCCOMB_X7_Y9_N28
\var2[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[11]~feeder_combout\ = var1(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(11),
	combout => \var2[11]~feeder_combout\);

-- Location: LCFF_X7_Y9_N29
\var2[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[11]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(11));

-- Location: LCCOMB_X7_Y9_N22
\var3[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[11]~feeder_combout\ = var2(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(11),
	combout => \var3[11]~feeder_combout\);

-- Location: LCFF_X7_Y9_N23
\var3[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[11]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(11));

-- Location: LCCOMB_X6_Y9_N6
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (var4(11) & ((var3(11) & (\Add1~21\ & VCC)) # (!var3(11) & (!\Add1~21\)))) # (!var4(11) & ((var3(11) & (!\Add1~21\)) # (!var3(11) & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((var4(11) & (!var3(11) & !\Add1~21\)) # (!var4(11) & ((!\Add1~21\) # (!var3(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(11),
	datab => var3(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X5_Y9_N6
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (var1(11) & ((var2(11) & (\Add0~21\ & VCC)) # (!var2(11) & (!\Add0~21\)))) # (!var1(11) & ((var2(11) & (!\Add0~21\)) # (!var2(11) & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((var1(11) & (!var2(11) & !\Add0~21\)) # (!var1(11) & ((!\Add0~21\) # (!var2(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var1(11),
	datab => var2(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X4_Y9_N4
\Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Add1~22_combout\ & ((\Add0~22_combout\ & (\Add2~21\ & VCC)) # (!\Add0~22_combout\ & (!\Add2~21\)))) # (!\Add1~22_combout\ & ((\Add0~22_combout\ & (!\Add2~21\)) # (!\Add0~22_combout\ & ((\Add2~21\) # (GND)))))
-- \Add2~23\ = CARRY((\Add1~22_combout\ & (!\Add0~22_combout\ & !\Add2~21\)) # (!\Add1~22_combout\ & ((!\Add2~21\) # (!\Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(12),
	combout => \INPUT~combout\(12));

-- Location: LCFF_X5_Y9_N25
\var1[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \INPUT~combout\(12),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(12));

-- Location: LCFF_X5_Y9_N5
\var2[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var1(12),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(12));

-- Location: LCFF_X5_Y9_N31
\var3[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var2(12),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(12));

-- Location: LCFF_X5_Y9_N23
\var4[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(12),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(12));

-- Location: LCCOMB_X6_Y9_N8
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((var3(12) $ (var4(12) $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((var3(12) & ((var4(12)) # (!\Add1~23\))) # (!var3(12) & (var4(12) & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var3(12),
	datab => var4(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X5_Y9_N8
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((var1(12) $ (var2(12) $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((var1(12) & ((var2(12)) # (!\Add0~23\))) # (!var1(12) & (var2(12) & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var1(12),
	datab => var2(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X4_Y9_N6
\Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = ((\Add1~24_combout\ $ (\Add0~24_combout\ $ (!\Add2~23\)))) # (GND)
-- \Add2~25\ = CARRY((\Add1~24_combout\ & ((\Add0~24_combout\) # (!\Add2~23\))) # (!\Add1~24_combout\ & (\Add0~24_combout\ & !\Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(13),
	combout => \INPUT~combout\(13));

-- Location: LCCOMB_X3_Y9_N10
\var1[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[13]~feeder_combout\ = \INPUT~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(13),
	combout => \var1[13]~feeder_combout\);

-- Location: LCFF_X3_Y9_N11
\var1[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[13]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(13));

-- Location: LCCOMB_X3_Y9_N28
\var2[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[13]~feeder_combout\ = var1(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(13),
	combout => \var2[13]~feeder_combout\);

-- Location: LCFF_X3_Y9_N29
\var2[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[13]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(13));

-- Location: LCCOMB_X3_Y9_N26
\var3[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[13]~feeder_combout\ = var2(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(13),
	combout => \var3[13]~feeder_combout\);

-- Location: LCFF_X3_Y9_N27
\var3[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[13]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(13));

-- Location: LCCOMB_X6_Y9_N10
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (var4(13) & ((var3(13) & (\Add1~25\ & VCC)) # (!var3(13) & (!\Add1~25\)))) # (!var4(13) & ((var3(13) & (!\Add1~25\)) # (!var3(13) & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((var4(13) & (!var3(13) & !\Add1~25\)) # (!var4(13) & ((!\Add1~25\) # (!var3(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(13),
	datab => var3(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X5_Y9_N10
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (var1(13) & ((var2(13) & (\Add0~25\ & VCC)) # (!var2(13) & (!\Add0~25\)))) # (!var1(13) & ((var2(13) & (!\Add0~25\)) # (!var2(13) & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((var1(13) & (!var2(13) & !\Add0~25\)) # (!var1(13) & ((!\Add0~25\) # (!var2(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var1(13),
	datab => var2(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X4_Y9_N8
\Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Add1~26_combout\ & ((\Add0~26_combout\ & (\Add2~25\ & VCC)) # (!\Add0~26_combout\ & (!\Add2~25\)))) # (!\Add1~26_combout\ & ((\Add0~26_combout\ & (!\Add2~25\)) # (!\Add0~26_combout\ & ((\Add2~25\) # (GND)))))
-- \Add2~27\ = CARRY((\Add1~26_combout\ & (!\Add0~26_combout\ & !\Add2~25\)) # (!\Add1~26_combout\ & ((!\Add2~25\) # (!\Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(14),
	combout => \INPUT~combout\(14));

-- Location: LCFF_X5_Y9_N15
\var1[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \INPUT~combout\(14),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(14));

-- Location: LCFF_X5_Y9_N11
\var2[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var1(14),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(14));

-- Location: LCFF_X5_Y9_N7
\var3[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var2(14),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(14));

-- Location: LCCOMB_X6_Y9_N12
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((var4(14) $ (var3(14) $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((var4(14) & ((var3(14)) # (!\Add1~27\))) # (!var4(14) & (var3(14) & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(14),
	datab => var3(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X5_Y9_N12
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((var2(14) $ (var1(14) $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((var2(14) & ((var1(14)) # (!\Add0~27\))) # (!var2(14) & (var1(14) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(14),
	datab => var1(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X4_Y9_N10
\Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = ((\Add1~28_combout\ $ (\Add0~28_combout\ $ (!\Add2~27\)))) # (GND)
-- \Add2~29\ = CARRY((\Add1~28_combout\ & ((\Add0~28_combout\) # (!\Add2~27\))) # (!\Add1~28_combout\ & (\Add0~28_combout\ & !\Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(15),
	combout => \INPUT~combout\(15));

-- Location: LCCOMB_X7_Y9_N26
\var1[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[15]~feeder_combout\ = \INPUT~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(15),
	combout => \var1[15]~feeder_combout\);

-- Location: LCFF_X7_Y9_N27
\var1[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[15]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(15));

-- Location: LCCOMB_X7_Y9_N12
\var2[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[15]~feeder_combout\ = var1(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(15),
	combout => \var2[15]~feeder_combout\);

-- Location: LCFF_X7_Y9_N13
\var2[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[15]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(15));

-- Location: LCCOMB_X7_Y9_N10
\var3[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[15]~feeder_combout\ = var2(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(15),
	combout => \var3[15]~feeder_combout\);

-- Location: LCFF_X7_Y9_N11
\var3[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[15]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(15));

-- Location: LCCOMB_X7_Y9_N8
\var4[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[15]~feeder_combout\ = var3(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(15),
	combout => \var4[15]~feeder_combout\);

-- Location: LCFF_X7_Y9_N9
\var4[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[15]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(15));

-- Location: LCCOMB_X6_Y9_N14
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (var3(15) & ((var4(15) & (\Add1~29\ & VCC)) # (!var4(15) & (!\Add1~29\)))) # (!var3(15) & ((var4(15) & (!\Add1~29\)) # (!var4(15) & ((\Add1~29\) # (GND)))))
-- \Add1~31\ = CARRY((var3(15) & (!var4(15) & !\Add1~29\)) # (!var3(15) & ((!\Add1~29\) # (!var4(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var3(15),
	datab => var4(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X5_Y9_N14
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (var1(15) & ((var2(15) & (\Add0~29\ & VCC)) # (!var2(15) & (!\Add0~29\)))) # (!var1(15) & ((var2(15) & (!\Add0~29\)) # (!var2(15) & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((var1(15) & (!var2(15) & !\Add0~29\)) # (!var1(15) & ((!\Add0~29\) # (!var2(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var1(15),
	datab => var2(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X4_Y9_N12
\Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\Add1~30_combout\ & ((\Add0~30_combout\ & (\Add2~29\ & VCC)) # (!\Add0~30_combout\ & (!\Add2~29\)))) # (!\Add1~30_combout\ & ((\Add0~30_combout\ & (!\Add2~29\)) # (!\Add0~30_combout\ & ((\Add2~29\) # (GND)))))
-- \Add2~31\ = CARRY((\Add1~30_combout\ & (!\Add0~30_combout\ & !\Add2~29\)) # (!\Add1~30_combout\ & ((!\Add2~29\) # (!\Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(16),
	combout => \INPUT~combout\(16));

-- Location: LCFF_X5_Y9_N17
\var1[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \INPUT~combout\(16),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(16));

-- Location: LCFF_X5_Y9_N29
\var2[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var1(16),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(16));

-- Location: LCCOMB_X5_Y9_N16
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((var1(16) $ (var2(16) $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((var1(16) & ((var2(16)) # (!\Add0~31\))) # (!var1(16) & (var2(16) & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var1(16),
	datab => var2(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCFF_X6_Y9_N11
\var3[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var2(16),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(16));

-- Location: LCFF_X6_Y9_N9
\var4[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(16),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(16));

-- Location: LCCOMB_X6_Y9_N16
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((var3(16) $ (var4(16) $ (!\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((var3(16) & ((var4(16)) # (!\Add1~31\))) # (!var3(16) & (var4(16) & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var3(16),
	datab => var4(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X4_Y9_N14
\Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = ((\Add0~32_combout\ $ (\Add1~32_combout\ $ (!\Add2~31\)))) # (GND)
-- \Add2~33\ = CARRY((\Add0~32_combout\ & ((\Add1~32_combout\) # (!\Add2~31\))) # (!\Add0~32_combout\ & (\Add1~32_combout\ & !\Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add1~32_combout\,
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(17),
	combout => \INPUT~combout\(17));

-- Location: LCFF_X5_Y9_N19
\var1[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \INPUT~combout\(17),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(17));

-- Location: LCFF_X5_Y9_N1
\var2[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var1(17),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(17));

-- Location: LCCOMB_X5_Y9_N18
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (var1(17) & ((var2(17) & (\Add0~33\ & VCC)) # (!var2(17) & (!\Add0~33\)))) # (!var1(17) & ((var2(17) & (!\Add0~33\)) # (!var2(17) & ((\Add0~33\) # (GND)))))
-- \Add0~35\ = CARRY((var1(17) & (!var2(17) & !\Add0~33\)) # (!var1(17) & ((!\Add0~33\) # (!var2(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var1(17),
	datab => var2(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCFF_X6_Y9_N15
\var3[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var2(17),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(17));

-- Location: LCCOMB_X6_Y9_N18
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (var4(17) & ((var3(17) & (\Add1~33\ & VCC)) # (!var3(17) & (!\Add1~33\)))) # (!var4(17) & ((var3(17) & (!\Add1~33\)) # (!var3(17) & ((\Add1~33\) # (GND)))))
-- \Add1~35\ = CARRY((var4(17) & (!var3(17) & !\Add1~33\)) # (!var4(17) & ((!\Add1~33\) # (!var3(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(17),
	datab => var3(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X4_Y9_N16
\Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\Add0~34_combout\ & ((\Add1~34_combout\ & (\Add2~33\ & VCC)) # (!\Add1~34_combout\ & (!\Add2~33\)))) # (!\Add0~34_combout\ & ((\Add1~34_combout\ & (!\Add2~33\)) # (!\Add1~34_combout\ & ((\Add2~33\) # (GND)))))
-- \Add2~35\ = CARRY((\Add0~34_combout\ & (!\Add1~34_combout\ & !\Add2~33\)) # (!\Add0~34_combout\ & ((!\Add2~33\) # (!\Add1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add1~34_combout\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(18),
	combout => \INPUT~combout\(18));

-- Location: LCCOMB_X8_Y9_N18
\var1[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[18]~feeder_combout\ = \INPUT~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(18),
	combout => \var1[18]~feeder_combout\);

-- Location: LCFF_X8_Y9_N19
\var1[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[18]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(18));

-- Location: LCCOMB_X5_Y9_N20
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((var2(18) $ (var1(18) $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((var2(18) & ((var1(18)) # (!\Add0~35\))) # (!var2(18) & (var1(18) & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(18),
	datab => var1(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X8_Y9_N28
\var2[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[18]~feeder_combout\ = var1(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(18),
	combout => \var2[18]~feeder_combout\);

-- Location: LCFF_X8_Y9_N29
\var2[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[18]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(18));

-- Location: LCCOMB_X8_Y9_N22
\var3[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[18]~feeder_combout\ = var2(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(18),
	combout => \var3[18]~feeder_combout\);

-- Location: LCFF_X8_Y9_N23
\var3[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[18]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(18));

-- Location: LCCOMB_X6_Y9_N20
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((var4(18) $ (var3(18) $ (!\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((var4(18) & ((var3(18)) # (!\Add1~35\))) # (!var4(18) & (var3(18) & !\Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(18),
	datab => var3(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X4_Y9_N18
\Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = ((\Add0~36_combout\ $ (\Add1~36_combout\ $ (!\Add2~35\)))) # (GND)
-- \Add2~37\ = CARRY((\Add0~36_combout\ & ((\Add1~36_combout\) # (!\Add2~35\))) # (!\Add0~36_combout\ & (\Add1~36_combout\ & !\Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Add1~36_combout\,
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(19),
	combout => \INPUT~combout\(19));

-- Location: LCFF_X6_Y9_N23
\var1[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \INPUT~combout\(19),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(19));

-- Location: LCFF_X6_Y9_N21
\var2[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var1(19),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(19));

-- Location: LCFF_X6_Y9_N19
\var3[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var2(19),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(19));

-- Location: LCCOMB_X6_Y9_N22
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (var4(19) & ((var3(19) & (\Add1~37\ & VCC)) # (!var3(19) & (!\Add1~37\)))) # (!var4(19) & ((var3(19) & (!\Add1~37\)) # (!var3(19) & ((\Add1~37\) # (GND)))))
-- \Add1~39\ = CARRY((var4(19) & (!var3(19) & !\Add1~37\)) # (!var4(19) & ((!\Add1~37\) # (!var3(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(19),
	datab => var3(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X5_Y9_N22
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (var1(19) & ((var2(19) & (\Add0~37\ & VCC)) # (!var2(19) & (!\Add0~37\)))) # (!var1(19) & ((var2(19) & (!\Add0~37\)) # (!var2(19) & ((\Add0~37\) # (GND)))))
-- \Add0~39\ = CARRY((var1(19) & (!var2(19) & !\Add0~37\)) # (!var1(19) & ((!\Add0~37\) # (!var2(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var1(19),
	datab => var2(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X4_Y9_N20
\Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\Add1~38_combout\ & ((\Add0~38_combout\ & (\Add2~37\ & VCC)) # (!\Add0~38_combout\ & (!\Add2~37\)))) # (!\Add1~38_combout\ & ((\Add0~38_combout\ & (!\Add2~37\)) # (!\Add0~38_combout\ & ((\Add2~37\) # (GND)))))
-- \Add2~39\ = CARRY((\Add1~38_combout\ & (!\Add0~38_combout\ & !\Add2~37\)) # (!\Add1~38_combout\ & ((!\Add2~37\) # (!\Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datab => \Add0~38_combout\,
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(20),
	combout => \INPUT~combout\(20));

-- Location: LCFF_X8_Y9_N27
\var1[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \INPUT~combout\(20),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(20));

-- Location: LCCOMB_X8_Y9_N12
\var2[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[20]~feeder_combout\ = var1(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(20),
	combout => \var2[20]~feeder_combout\);

-- Location: LCFF_X8_Y9_N13
\var2[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[20]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(20));

-- Location: LCCOMB_X8_Y9_N10
\var3[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[20]~feeder_combout\ = var2(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(20),
	combout => \var3[20]~feeder_combout\);

-- Location: LCFF_X8_Y9_N11
\var3[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[20]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(20));

-- Location: LCCOMB_X8_Y9_N20
\var4[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[20]~feeder_combout\ = var3(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(20),
	combout => \var4[20]~feeder_combout\);

-- Location: LCFF_X8_Y9_N21
\var4[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[20]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(20));

-- Location: LCCOMB_X6_Y9_N24
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((var3(20) $ (var4(20) $ (!\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((var3(20) & ((var4(20)) # (!\Add1~39\))) # (!var3(20) & (var4(20) & !\Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var3(20),
	datab => var4(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X5_Y9_N24
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((var2(20) $ (var1(20) $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((var2(20) & ((var1(20)) # (!\Add0~39\))) # (!var2(20) & (var1(20) & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(20),
	datab => var1(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X4_Y9_N22
\Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = ((\Add1~40_combout\ $ (\Add0~40_combout\ $ (!\Add2~39\)))) # (GND)
-- \Add2~41\ = CARRY((\Add1~40_combout\ & ((\Add0~40_combout\) # (!\Add2~39\))) # (!\Add1~40_combout\ & (\Add0~40_combout\ & !\Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \Add0~40_combout\,
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(21),
	combout => \INPUT~combout\(21));

-- Location: LCFF_X5_Y9_N27
\var1[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \INPUT~combout\(21),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(21));

-- Location: LCCOMB_X5_Y9_N26
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (var2(21) & ((var1(21) & (\Add0~41\ & VCC)) # (!var1(21) & (!\Add0~41\)))) # (!var2(21) & ((var1(21) & (!\Add0~41\)) # (!var1(21) & ((\Add0~41\) # (GND)))))
-- \Add0~43\ = CARRY((var2(21) & (!var1(21) & !\Add0~41\)) # (!var2(21) & ((!\Add0~41\) # (!var1(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(21),
	datab => var1(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCFF_X5_Y9_N13
\var2[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var1(21),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(21));

-- Location: LCFF_X5_Y9_N3
\var3[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var2(21),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(21));

-- Location: LCFF_X5_Y9_N21
\var4[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(21),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(21));

-- Location: LCCOMB_X6_Y9_N26
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (var3(21) & ((var4(21) & (\Add1~41\ & VCC)) # (!var4(21) & (!\Add1~41\)))) # (!var3(21) & ((var4(21) & (!\Add1~41\)) # (!var4(21) & ((\Add1~41\) # (GND)))))
-- \Add1~43\ = CARRY((var3(21) & (!var4(21) & !\Add1~41\)) # (!var3(21) & ((!\Add1~41\) # (!var4(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var3(21),
	datab => var4(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X4_Y9_N24
\Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\Add0~42_combout\ & ((\Add1~42_combout\ & (\Add2~41\ & VCC)) # (!\Add1~42_combout\ & (!\Add2~41\)))) # (!\Add0~42_combout\ & ((\Add1~42_combout\ & (!\Add2~41\)) # (!\Add1~42_combout\ & ((\Add2~41\) # (GND)))))
-- \Add2~43\ = CARRY((\Add0~42_combout\ & (!\Add1~42_combout\ & !\Add2~41\)) # (!\Add0~42_combout\ & ((!\Add2~41\) # (!\Add1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Add1~42_combout\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(22),
	combout => \INPUT~combout\(22));

-- Location: LCFF_X6_Y9_N31
\var1[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \INPUT~combout\(22),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(22));

-- Location: LCFF_X6_Y9_N29
\var2[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var1(22),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(22));

-- Location: LCFF_X6_Y9_N27
\var3[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var2(22),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(22));

-- Location: LCCOMB_X6_Y9_N28
\Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((var4(22) $ (var3(22) $ (!\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((var4(22) & ((var3(22)) # (!\Add1~43\))) # (!var4(22) & (var3(22) & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(22),
	datab => var3(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X5_Y9_N28
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((var2(22) $ (var1(22) $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((var2(22) & ((var1(22)) # (!\Add0~43\))) # (!var2(22) & (var1(22) & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(22),
	datab => var1(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X4_Y9_N26
\Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = ((\Add1~44_combout\ $ (\Add0~44_combout\ $ (!\Add2~43\)))) # (GND)
-- \Add2~45\ = CARRY((\Add1~44_combout\ & ((\Add0~44_combout\) # (!\Add2~43\))) # (!\Add1~44_combout\ & (\Add0~44_combout\ & !\Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(23),
	combout => \INPUT~combout\(23));

-- Location: LCCOMB_X3_Y9_N2
\var1[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[23]~feeder_combout\ = \INPUT~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(23),
	combout => \var1[23]~feeder_combout\);

-- Location: LCFF_X3_Y9_N3
\var1[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[23]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(23));

-- Location: LCCOMB_X5_Y9_N30
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (var2(23) & ((var1(23) & (\Add0~45\ & VCC)) # (!var1(23) & (!\Add0~45\)))) # (!var2(23) & ((var1(23) & (!\Add0~45\)) # (!var1(23) & ((\Add0~45\) # (GND)))))
-- \Add0~47\ = CARRY((var2(23) & (!var1(23) & !\Add0~45\)) # (!var2(23) & ((!\Add0~45\) # (!var1(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(23),
	datab => var1(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X3_Y9_N0
\var2[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[23]~feeder_combout\ = var1(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(23),
	combout => \var2[23]~feeder_combout\);

-- Location: LCFF_X3_Y9_N1
\var2[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[23]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(23));

-- Location: LCCOMB_X3_Y9_N22
\var3[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[23]~feeder_combout\ = var2(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(23),
	combout => \var3[23]~feeder_combout\);

-- Location: LCFF_X3_Y9_N23
\var3[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[23]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(23));

-- Location: LCCOMB_X6_Y9_N30
\Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (var4(23) & ((var3(23) & (\Add1~45\ & VCC)) # (!var3(23) & (!\Add1~45\)))) # (!var4(23) & ((var3(23) & (!\Add1~45\)) # (!var3(23) & ((\Add1~45\) # (GND)))))
-- \Add1~47\ = CARRY((var4(23) & (!var3(23) & !\Add1~45\)) # (!var4(23) & ((!\Add1~45\) # (!var3(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(23),
	datab => var3(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X4_Y9_N28
\Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (\Add0~46_combout\ & ((\Add1~46_combout\ & (\Add2~45\ & VCC)) # (!\Add1~46_combout\ & (!\Add2~45\)))) # (!\Add0~46_combout\ & ((\Add1~46_combout\ & (!\Add2~45\)) # (!\Add1~46_combout\ & ((\Add2~45\) # (GND)))))
-- \Add2~47\ = CARRY((\Add0~46_combout\ & (!\Add1~46_combout\ & !\Add2~45\)) # (!\Add0~46_combout\ & ((!\Add2~45\) # (!\Add1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Add1~46_combout\,
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(24),
	combout => \INPUT~combout\(24));

-- Location: LCCOMB_X7_Y8_N26
\var1[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[24]~feeder_combout\ = \INPUT~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(24),
	combout => \var1[24]~feeder_combout\);

-- Location: LCFF_X7_Y8_N27
\var1[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[24]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(24));

-- Location: LCCOMB_X7_Y8_N28
\var2[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[24]~feeder_combout\ = var1(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(24),
	combout => \var2[24]~feeder_combout\);

-- Location: LCFF_X7_Y8_N29
\var2[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[24]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(24));

-- Location: LCCOMB_X7_Y8_N10
\var3[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[24]~feeder_combout\ = var2(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(24),
	combout => \var3[24]~feeder_combout\);

-- Location: LCFF_X7_Y8_N11
\var3[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[24]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(24));

-- Location: LCCOMB_X7_Y8_N24
\var4[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[24]~feeder_combout\ = var3(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(24),
	combout => \var4[24]~feeder_combout\);

-- Location: LCFF_X7_Y8_N25
\var4[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[24]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(24));

-- Location: LCCOMB_X6_Y8_N0
\Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((var3(24) $ (var4(24) $ (!\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((var3(24) & ((var4(24)) # (!\Add1~47\))) # (!var3(24) & (var4(24) & !\Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var3(24),
	datab => var4(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X5_Y8_N0
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((var2(24) $ (var1(24) $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((var2(24) & ((var1(24)) # (!\Add0~47\))) # (!var2(24) & (var1(24) & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(24),
	datab => var1(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X4_Y9_N30
\Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = ((\Add1~48_combout\ $ (\Add0~48_combout\ $ (!\Add2~47\)))) # (GND)
-- \Add2~49\ = CARRY((\Add1~48_combout\ & ((\Add0~48_combout\) # (!\Add2~47\))) # (!\Add1~48_combout\ & (\Add0~48_combout\ & !\Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~48_combout\,
	datab => \Add0~48_combout\,
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(25),
	combout => \INPUT~combout\(25));

-- Location: LCCOMB_X6_Y8_N22
\var1[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[25]~feeder_combout\ = \INPUT~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(25),
	combout => \var1[25]~feeder_combout\);

-- Location: LCFF_X6_Y8_N23
\var1[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[25]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(25));

-- Location: LCCOMB_X5_Y8_N2
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (var2(25) & ((var1(25) & (\Add0~49\ & VCC)) # (!var1(25) & (!\Add0~49\)))) # (!var2(25) & ((var1(25) & (!\Add0~49\)) # (!var1(25) & ((\Add0~49\) # (GND)))))
-- \Add0~51\ = CARRY((var2(25) & (!var1(25) & !\Add0~49\)) # (!var2(25) & ((!\Add0~49\) # (!var1(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(25),
	datab => var1(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X6_Y8_N26
\var2[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[25]~feeder_combout\ = var1(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(25),
	combout => \var2[25]~feeder_combout\);

-- Location: LCFF_X6_Y8_N27
\var2[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[25]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(25));

-- Location: LCCOMB_X6_Y8_N24
\var3[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[25]~feeder_combout\ = var2(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(25),
	combout => \var3[25]~feeder_combout\);

-- Location: LCFF_X6_Y8_N25
\var3[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[25]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(25));

-- Location: LCFF_X6_Y8_N1
\var4[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(25),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(25));

-- Location: LCCOMB_X6_Y8_N2
\Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (var3(25) & ((var4(25) & (\Add1~49\ & VCC)) # (!var4(25) & (!\Add1~49\)))) # (!var3(25) & ((var4(25) & (!\Add1~49\)) # (!var4(25) & ((\Add1~49\) # (GND)))))
-- \Add1~51\ = CARRY((var3(25) & (!var4(25) & !\Add1~49\)) # (!var3(25) & ((!\Add1~49\) # (!var4(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var3(25),
	datab => var4(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X4_Y8_N0
\Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (\Add0~50_combout\ & ((\Add1~50_combout\ & (\Add2~49\ & VCC)) # (!\Add1~50_combout\ & (!\Add2~49\)))) # (!\Add0~50_combout\ & ((\Add1~50_combout\ & (!\Add2~49\)) # (!\Add1~50_combout\ & ((\Add2~49\) # (GND)))))
-- \Add2~51\ = CARRY((\Add0~50_combout\ & (!\Add1~50_combout\ & !\Add2~49\)) # (!\Add0~50_combout\ & ((!\Add2~49\) # (!\Add1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add1~50_combout\,
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(26),
	combout => \INPUT~combout\(26));

-- Location: LCCOMB_X7_Y8_N6
\var1[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[26]~feeder_combout\ = \INPUT~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(26),
	combout => \var1[26]~feeder_combout\);

-- Location: LCFF_X7_Y8_N7
\var1[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[26]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(26));

-- Location: LCCOMB_X5_Y8_N4
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((var2(26) $ (var1(26) $ (!\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((var2(26) & ((var1(26)) # (!\Add0~51\))) # (!var2(26) & (var1(26) & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(26),
	datab => var1(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X7_Y8_N12
\var2[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[26]~feeder_combout\ = var1(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(26),
	combout => \var2[26]~feeder_combout\);

-- Location: LCFF_X7_Y8_N13
\var2[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[26]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(26));

-- Location: LCCOMB_X7_Y8_N30
\var3[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[26]~feeder_combout\ = var2(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(26),
	combout => \var3[26]~feeder_combout\);

-- Location: LCFF_X7_Y8_N31
\var3[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[26]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(26));

-- Location: LCCOMB_X7_Y8_N8
\var4[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[26]~feeder_combout\ = var3(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(26),
	combout => \var4[26]~feeder_combout\);

-- Location: LCFF_X7_Y8_N9
\var4[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[26]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(26));

-- Location: LCCOMB_X6_Y8_N4
\Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((var3(26) $ (var4(26) $ (!\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((var3(26) & ((var4(26)) # (!\Add1~51\))) # (!var3(26) & (var4(26) & !\Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var3(26),
	datab => var4(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X4_Y8_N2
\Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = ((\Add0~52_combout\ $ (\Add1~52_combout\ $ (!\Add2~51\)))) # (GND)
-- \Add2~53\ = CARRY((\Add0~52_combout\ & ((\Add1~52_combout\) # (!\Add2~51\))) # (!\Add0~52_combout\ & (\Add1~52_combout\ & !\Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Add1~52_combout\,
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(27),
	combout => \INPUT~combout\(27));

-- Location: LCCOMB_X8_Y8_N26
\var1[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[27]~feeder_combout\ = \INPUT~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(27),
	combout => \var1[27]~feeder_combout\);

-- Location: LCFF_X8_Y8_N27
\var1[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[27]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(27));

-- Location: LCCOMB_X5_Y8_N6
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (var2(27) & ((var1(27) & (\Add0~53\ & VCC)) # (!var1(27) & (!\Add0~53\)))) # (!var2(27) & ((var1(27) & (!\Add0~53\)) # (!var1(27) & ((\Add0~53\) # (GND)))))
-- \Add0~55\ = CARRY((var2(27) & (!var1(27) & !\Add0~53\)) # (!var2(27) & ((!\Add0~53\) # (!var1(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(27),
	datab => var1(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X8_Y8_N12
\var2[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[27]~feeder_combout\ = var1(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(27),
	combout => \var2[27]~feeder_combout\);

-- Location: LCFF_X8_Y8_N13
\var2[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[27]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(27));

-- Location: LCCOMB_X8_Y8_N6
\var3[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[27]~feeder_combout\ = var2(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(27),
	combout => \var3[27]~feeder_combout\);

-- Location: LCFF_X8_Y8_N7
\var3[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[27]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(27));

-- Location: LCCOMB_X8_Y8_N0
\var4[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[27]~feeder_combout\ = var3(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(27),
	combout => \var4[27]~feeder_combout\);

-- Location: LCFF_X8_Y8_N1
\var4[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[27]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(27));

-- Location: LCCOMB_X6_Y8_N6
\Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (var3(27) & ((var4(27) & (\Add1~53\ & VCC)) # (!var4(27) & (!\Add1~53\)))) # (!var3(27) & ((var4(27) & (!\Add1~53\)) # (!var4(27) & ((\Add1~53\) # (GND)))))
-- \Add1~55\ = CARRY((var3(27) & (!var4(27) & !\Add1~53\)) # (!var3(27) & ((!\Add1~53\) # (!var4(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var3(27),
	datab => var4(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X4_Y8_N4
\Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (\Add0~54_combout\ & ((\Add1~54_combout\ & (\Add2~53\ & VCC)) # (!\Add1~54_combout\ & (!\Add2~53\)))) # (!\Add0~54_combout\ & ((\Add1~54_combout\ & (!\Add2~53\)) # (!\Add1~54_combout\ & ((\Add2~53\) # (GND)))))
-- \Add2~55\ = CARRY((\Add0~54_combout\ & (!\Add1~54_combout\ & !\Add2~53\)) # (!\Add0~54_combout\ & ((!\Add2~53\) # (!\Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \Add1~54_combout\,
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(28),
	combout => \INPUT~combout\(28));

-- Location: LCCOMB_X6_Y8_N18
\var1[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[28]~feeder_combout\ = \INPUT~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(28),
	combout => \var1[28]~feeder_combout\);

-- Location: LCFF_X6_Y8_N19
\var1[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[28]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(28));

-- Location: LCCOMB_X6_Y8_N30
\var2[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[28]~feeder_combout\ = var1(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(28),
	combout => \var2[28]~feeder_combout\);

-- Location: LCFF_X6_Y8_N31
\var2[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[28]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(28));

-- Location: LCCOMB_X6_Y8_N20
\var3[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[28]~feeder_combout\ = var2(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(28),
	combout => \var3[28]~feeder_combout\);

-- Location: LCFF_X6_Y8_N21
\var3[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[28]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(28));

-- Location: LCFF_X6_Y8_N9
\var4[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(28),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(28));

-- Location: LCCOMB_X6_Y8_N8
\Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((var3(28) $ (var4(28) $ (!\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((var3(28) & ((var4(28)) # (!\Add1~55\))) # (!var3(28) & (var4(28) & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var3(28),
	datab => var4(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X5_Y8_N8
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((var2(28) $ (var1(28) $ (!\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((var2(28) & ((var1(28)) # (!\Add0~55\))) # (!var2(28) & (var1(28) & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var2(28),
	datab => var1(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X4_Y8_N6
\Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = ((\Add1~56_combout\ $ (\Add0~56_combout\ $ (!\Add2~55\)))) # (GND)
-- \Add2~57\ = CARRY((\Add1~56_combout\ & ((\Add0~56_combout\) # (!\Add2~55\))) # (!\Add1~56_combout\ & (\Add0~56_combout\ & !\Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add0~56_combout\,
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(29),
	combout => \INPUT~combout\(29));

-- Location: LCFF_X6_Y8_N3
\var1[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \INPUT~combout\(29),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(29));

-- Location: LCFF_X6_Y8_N11
\var2[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var1(29),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(29));

-- Location: LCCOMB_X6_Y8_N28
\var3[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[29]~feeder_combout\ = var2(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(29),
	combout => \var3[29]~feeder_combout\);

-- Location: LCFF_X6_Y8_N29
\var3[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[29]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(29));

-- Location: LCCOMB_X6_Y8_N10
\Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (var4(29) & ((var3(29) & (\Add1~57\ & VCC)) # (!var3(29) & (!\Add1~57\)))) # (!var4(29) & ((var3(29) & (!\Add1~57\)) # (!var3(29) & ((\Add1~57\) # (GND)))))
-- \Add1~59\ = CARRY((var4(29) & (!var3(29) & !\Add1~57\)) # (!var4(29) & ((!\Add1~57\) # (!var3(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var4(29),
	datab => var3(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X5_Y8_N10
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (var1(29) & ((var2(29) & (\Add0~57\ & VCC)) # (!var2(29) & (!\Add0~57\)))) # (!var1(29) & ((var2(29) & (!\Add0~57\)) # (!var2(29) & ((\Add0~57\) # (GND)))))
-- \Add0~59\ = CARRY((var1(29) & (!var2(29) & !\Add0~57\)) # (!var1(29) & ((!\Add0~57\) # (!var2(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var1(29),
	datab => var2(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X4_Y8_N8
\Add2~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (\Add1~58_combout\ & ((\Add0~58_combout\ & (\Add2~57\ & VCC)) # (!\Add0~58_combout\ & (!\Add2~57\)))) # (!\Add1~58_combout\ & ((\Add0~58_combout\ & (!\Add2~57\)) # (!\Add0~58_combout\ & ((\Add2~57\) # (GND)))))
-- \Add2~59\ = CARRY((\Add1~58_combout\ & (!\Add0~58_combout\ & !\Add2~57\)) # (!\Add1~58_combout\ & ((!\Add2~57\) # (!\Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \Add0~58_combout\,
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(30),
	combout => \INPUT~combout\(30));

-- Location: LCCOMB_X7_Y8_N22
\var1[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var1[30]~feeder_combout\ = \INPUT~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT~combout\(30),
	combout => \var1[30]~feeder_combout\);

-- Location: LCFF_X7_Y8_N23
\var1[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var1[30]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(30));

-- Location: LCCOMB_X7_Y8_N0
\var2[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var2[30]~feeder_combout\ = var1(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var1(30),
	combout => \var2[30]~feeder_combout\);

-- Location: LCFF_X7_Y8_N1
\var2[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var2[30]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(30));

-- Location: LCCOMB_X7_Y8_N2
\var3[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var3[30]~feeder_combout\ = var2(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var2(30),
	combout => \var3[30]~feeder_combout\);

-- Location: LCFF_X7_Y8_N3
\var3[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var3[30]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(30));

-- Location: LCCOMB_X7_Y8_N20
\var4[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \var4[30]~feeder_combout\ = var3(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => var3(30),
	combout => \var4[30]~feeder_combout\);

-- Location: LCFF_X7_Y8_N21
\var4[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \var4[30]~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(30));

-- Location: LCCOMB_X6_Y8_N12
\Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((var3(30) $ (var4(30) $ (!\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((var3(30) & ((var4(30)) # (!\Add1~59\))) # (!var3(30) & (var4(30) & !\Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var3(30),
	datab => var4(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X5_Y8_N12
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((var1(30) $ (var2(30) $ (!\Add0~59\)))) # (GND)
-- \Add0~61\ = CARRY((var1(30) & ((var2(30)) # (!\Add0~59\))) # (!var1(30) & (var2(30) & !\Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var1(30),
	datab => var2(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X4_Y8_N10
\Add2~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = ((\Add1~60_combout\ $ (\Add0~60_combout\ $ (!\Add2~59\)))) # (GND)
-- \Add2~61\ = CARRY((\Add1~60_combout\ & ((\Add0~60_combout\) # (!\Add2~59\))) # (!\Add1~60_combout\ & (\Add0~60_combout\ & !\Add2~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~60_combout\,
	datab => \Add0~60_combout\,
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(31),
	combout => \INPUT~combout\(31));

-- Location: LCFF_X6_Y8_N15
\var1[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \INPUT~combout\(31),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var1(31));

-- Location: LCFF_X6_Y8_N13
\var2[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var1(31),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var2(31));

-- Location: LCCOMB_X5_Y8_N14
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (var1(31) & ((var2(31) & (\Add0~61\ & VCC)) # (!var2(31) & (!\Add0~61\)))) # (!var1(31) & ((var2(31) & (!\Add0~61\)) # (!var2(31) & ((\Add0~61\) # (GND)))))
-- \Add0~63\ = CARRY((var1(31) & (!var2(31) & !\Add0~61\)) # (!var1(31) & ((!\Add0~61\) # (!var2(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var1(31),
	datab => var2(31),
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~62_combout\,
	cout => \Add0~63\);

-- Location: LCFF_X6_Y8_N7
\var3[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var2(31),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var3(31));

-- Location: LCFF_X6_Y8_N5
\var4[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => var3(31),
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => var4(31));

-- Location: LCCOMB_X6_Y8_N14
\Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = (var3(31) & ((var4(31) & (\Add1~61\ & VCC)) # (!var4(31) & (!\Add1~61\)))) # (!var3(31) & ((var4(31) & (!\Add1~61\)) # (!var4(31) & ((\Add1~61\) # (GND)))))
-- \Add1~63\ = CARRY((var3(31) & (!var4(31) & !\Add1~61\)) # (!var3(31) & ((!\Add1~61\) # (!var4(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var3(31),
	datab => var4(31),
	datad => VCC,
	cin => \Add1~61\,
	combout => \Add1~62_combout\,
	cout => \Add1~63\);

-- Location: LCCOMB_X4_Y8_N12
\Add2~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = (\Add0~62_combout\ & ((\Add1~62_combout\ & (\Add2~61\ & VCC)) # (!\Add1~62_combout\ & (!\Add2~61\)))) # (!\Add0~62_combout\ & ((\Add1~62_combout\ & (!\Add2~61\)) # (!\Add1~62_combout\ & ((\Add2~61\) # (GND)))))
-- \Add2~63\ = CARRY((\Add0~62_combout\ & (!\Add1~62_combout\ & !\Add2~61\)) # (!\Add0~62_combout\ & ((!\Add2~61\) # (!\Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \Add1~62_combout\,
	datad => VCC,
	cin => \Add2~61\,
	combout => \Add2~62_combout\,
	cout => \Add2~63\);

-- Location: LCCOMB_X5_Y8_N16
\Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = !\Add0~63\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~63\,
	combout => \Add0~64_combout\);

-- Location: LCCOMB_X6_Y8_N16
\Add1~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~64_combout\ = !\Add1~63\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~63\,
	combout => \Add1~64_combout\);

-- Location: LCCOMB_X4_Y8_N14
\Add2~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~64_combout\ = ((\Add0~64_combout\ $ (\Add1~64_combout\ $ (!\Add2~63\)))) # (GND)
-- \Add2~65\ = CARRY((\Add0~64_combout\ & ((\Add1~64_combout\) # (!\Add2~63\))) # (!\Add0~64_combout\ & (\Add1~64_combout\ & !\Add2~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~64_combout\,
	datab => \Add1~64_combout\,
	datad => VCC,
	cin => \Add2~63\,
	combout => \Add2~64_combout\,
	cout => \Add2~65\);

-- Location: LCCOMB_X4_Y8_N16
\Add2~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~66_combout\ = \Add2~65\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~65\,
	combout => \Add2~66_combout\);

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(0));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(1));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(3));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(4));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(5));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(6));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(7));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(8));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(9));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(10));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(11));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(12));

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(13));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(14));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(15));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(16));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(17));

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(18));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(19));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(20));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(21));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(22));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(23));

-- Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(24));

-- Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(25));

-- Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(26));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(27));

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(28));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(29));

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(30));

-- Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add2~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTPUT(31));
END structure;


