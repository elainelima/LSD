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

-- DATE "12/10/2024 23:15:58"

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

ENTITY 	Datapath IS
    PORT (
	E : IN std_logic_vector(3 DOWNTO 0);
	clock : IN std_logic;
	Reset_MA : IN std_logic;
	Load_E : IN std_logic;
	Pino_Descendo : IN std_logic;
	Pino_Subindo : IN std_logic;
	Pino_Atualize : IN std_logic;
	Sobe : OUT std_logic;
	Desce : OUT std_logic;
	Pino_Maior : OUT std_logic;
	Pino_Menor : OUT std_logic;
	Media : OUT std_logic_vector(6 DOWNTO 0)
	);
END Datapath;

-- Design Ports Information
-- Sobe	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Desce	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Pino_Maior	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Pino_Menor	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media[0]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media[1]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media[2]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media[3]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media[4]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media[5]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Media[6]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Pino_Subindo	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pino_Atualize	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pino_Descendo	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[3]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Load_E	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[2]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_MA	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[1]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_E : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_Reset_MA : std_logic;
SIGNAL ww_Load_E : std_logic;
SIGNAL ww_Pino_Descendo : std_logic;
SIGNAL ww_Pino_Subindo : std_logic;
SIGNAL ww_Pino_Atualize : std_logic;
SIGNAL ww_Sobe : std_logic;
SIGNAL ww_Desce : std_logic;
SIGNAL ww_Pino_Maior : std_logic;
SIGNAL ww_Pino_Menor : std_logic;
SIGNAL ww_Media : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_MA~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_Reg_MA|Add1~0_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|Add1~4_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|Add0~2_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|Add0~5\ : std_logic;
SIGNAL \instancia_Reg_MA|Add0~6_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|Add0~7\ : std_logic;
SIGNAL \instancia_Reg_MA|Add0~8_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \Pino_Subindo~combout\ : std_logic;
SIGNAL \instancia_Reg_SD|Q[1]~feeder_combout\ : std_logic;
SIGNAL \Pino_Atualize~combout\ : std_logic;
SIGNAL \Pino_Descendo~combout\ : std_logic;
SIGNAL \instancia_Reg_SD|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Load_E~combout\ : std_logic;
SIGNAL \instancia_Reg_MA|var1[3]~feeder_combout\ : std_logic;
SIGNAL \Reset_MA~combout\ : std_logic;
SIGNAL \Reset_MA~clkctrl_outclk\ : std_logic;
SIGNAL \instancia_Reg_MA|var3[3]~feeder_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|var3[2]~feeder_combout\ : std_logic;
SIGNAL \instancia_Reg_E|Q[1]~feeder_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|var1[1]~feeder_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|var3[1]~feeder_combout\ : std_logic;
SIGNAL \instancia_Reg_E|Q[0]~feeder_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|var1[0]~feeder_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|var3[0]~feeder_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|Add1~1\ : std_logic;
SIGNAL \instancia_Reg_MA|Add1~3\ : std_logic;
SIGNAL \instancia_Reg_MA|Add1~5\ : std_logic;
SIGNAL \instancia_Reg_MA|Add1~7\ : std_logic;
SIGNAL \instancia_Reg_MA|Add1~8_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|Add1~6_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|Add0~1\ : std_logic;
SIGNAL \instancia_Reg_MA|Add0~3\ : std_logic;
SIGNAL \instancia_Reg_MA|Add0~4_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|Add1~2_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|Add0~0_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|Add2~1_cout\ : std_logic;
SIGNAL \instancia_Reg_MA|Add2~3_cout\ : std_logic;
SIGNAL \instancia_Reg_MA|OUTPUT[0]~1\ : std_logic;
SIGNAL \instancia_Reg_MA|OUTPUT[1]~3\ : std_logic;
SIGNAL \instancia_Reg_MA|OUTPUT[2]~4_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|OUTPUT[2]~5\ : std_logic;
SIGNAL \instancia_Reg_MA|OUTPUT[3]~6_combout\ : std_logic;
SIGNAL \instancia_comparador|LessThan0~0_combout\ : std_logic;
SIGNAL \instancia_comparador|LessThan0~2_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|OUTPUT[0]~0_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|OUTPUT[1]~2_combout\ : std_logic;
SIGNAL \instancia_comparador|LessThan0~1_combout\ : std_logic;
SIGNAL \instancia_comparador|LessThan0~3_combout\ : std_logic;
SIGNAL \instancia_comparador|LessThan1~1_combout\ : std_logic;
SIGNAL \instancia_comparador|LessThan1~0_combout\ : std_logic;
SIGNAL \instancia_comparador|LessThan1~2_combout\ : std_logic;
SIGNAL \instancia_Bcd_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \instancia_Bcd_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \instancia_Bcd_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \instancia_Bcd_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \instancia_Bcd_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \instancia_Bcd_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \instancia_Bcd_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \instancia_Reg_MA|var4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_Reg_MA|var3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_Reg_MA|var2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_Reg_MA|var1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_Reg_E|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_Reg_SD|Q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \E~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_Bcd_7seg|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_E <= E;
ww_clock <= clock;
ww_Reset_MA <= Reset_MA;
ww_Load_E <= Load_E;
ww_Pino_Descendo <= Pino_Descendo;
ww_Pino_Subindo <= Pino_Subindo;
ww_Pino_Atualize <= Pino_Atualize;
Sobe <= ww_Sobe;
Desce <= ww_Desce;
Pino_Maior <= ww_Pino_Maior;
Pino_Menor <= ww_Pino_Menor;
Media <= ww_Media;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\Reset_MA~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_MA~combout\);
\instancia_Bcd_7seg|ALT_INV_Mux0~0_combout\ <= NOT \instancia_Bcd_7seg|Mux0~0_combout\;

-- Location: LCCOMB_X63_Y27_N12
\instancia_Reg_MA|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|Add1~0_combout\ = (\instancia_Reg_MA|var4\(0) & (\instancia_Reg_MA|var3\(0) $ (VCC))) # (!\instancia_Reg_MA|var4\(0) & (\instancia_Reg_MA|var3\(0) & VCC))
-- \instancia_Reg_MA|Add1~1\ = CARRY((\instancia_Reg_MA|var4\(0) & \instancia_Reg_MA|var3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|var4\(0),
	datab => \instancia_Reg_MA|var3\(0),
	datad => VCC,
	combout => \instancia_Reg_MA|Add1~0_combout\,
	cout => \instancia_Reg_MA|Add1~1\);

-- Location: LCCOMB_X63_Y27_N16
\instancia_Reg_MA|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|Add1~4_combout\ = ((\instancia_Reg_MA|var4\(2) $ (\instancia_Reg_MA|var3\(2) $ (!\instancia_Reg_MA|Add1~3\)))) # (GND)
-- \instancia_Reg_MA|Add1~5\ = CARRY((\instancia_Reg_MA|var4\(2) & ((\instancia_Reg_MA|var3\(2)) # (!\instancia_Reg_MA|Add1~3\))) # (!\instancia_Reg_MA|var4\(2) & (\instancia_Reg_MA|var3\(2) & !\instancia_Reg_MA|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|var4\(2),
	datab => \instancia_Reg_MA|var3\(2),
	datad => VCC,
	cin => \instancia_Reg_MA|Add1~3\,
	combout => \instancia_Reg_MA|Add1~4_combout\,
	cout => \instancia_Reg_MA|Add1~5\);

-- Location: LCCOMB_X63_Y27_N2
\instancia_Reg_MA|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|Add0~2_combout\ = (\instancia_Reg_MA|var1\(1) & ((\instancia_Reg_MA|var2\(1) & (\instancia_Reg_MA|Add0~1\ & VCC)) # (!\instancia_Reg_MA|var2\(1) & (!\instancia_Reg_MA|Add0~1\)))) # (!\instancia_Reg_MA|var1\(1) & 
-- ((\instancia_Reg_MA|var2\(1) & (!\instancia_Reg_MA|Add0~1\)) # (!\instancia_Reg_MA|var2\(1) & ((\instancia_Reg_MA|Add0~1\) # (GND)))))
-- \instancia_Reg_MA|Add0~3\ = CARRY((\instancia_Reg_MA|var1\(1) & (!\instancia_Reg_MA|var2\(1) & !\instancia_Reg_MA|Add0~1\)) # (!\instancia_Reg_MA|var1\(1) & ((!\instancia_Reg_MA|Add0~1\) # (!\instancia_Reg_MA|var2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|var1\(1),
	datab => \instancia_Reg_MA|var2\(1),
	datad => VCC,
	cin => \instancia_Reg_MA|Add0~1\,
	combout => \instancia_Reg_MA|Add0~2_combout\,
	cout => \instancia_Reg_MA|Add0~3\);

-- Location: LCCOMB_X63_Y27_N4
\instancia_Reg_MA|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|Add0~4_combout\ = ((\instancia_Reg_MA|var2\(2) $ (\instancia_Reg_MA|var1\(2) $ (!\instancia_Reg_MA|Add0~3\)))) # (GND)
-- \instancia_Reg_MA|Add0~5\ = CARRY((\instancia_Reg_MA|var2\(2) & ((\instancia_Reg_MA|var1\(2)) # (!\instancia_Reg_MA|Add0~3\))) # (!\instancia_Reg_MA|var2\(2) & (\instancia_Reg_MA|var1\(2) & !\instancia_Reg_MA|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|var2\(2),
	datab => \instancia_Reg_MA|var1\(2),
	datad => VCC,
	cin => \instancia_Reg_MA|Add0~3\,
	combout => \instancia_Reg_MA|Add0~4_combout\,
	cout => \instancia_Reg_MA|Add0~5\);

-- Location: LCCOMB_X63_Y27_N6
\instancia_Reg_MA|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|Add0~6_combout\ = (\instancia_Reg_MA|var2\(3) & ((\instancia_Reg_MA|var1\(3) & (\instancia_Reg_MA|Add0~5\ & VCC)) # (!\instancia_Reg_MA|var1\(3) & (!\instancia_Reg_MA|Add0~5\)))) # (!\instancia_Reg_MA|var2\(3) & 
-- ((\instancia_Reg_MA|var1\(3) & (!\instancia_Reg_MA|Add0~5\)) # (!\instancia_Reg_MA|var1\(3) & ((\instancia_Reg_MA|Add0~5\) # (GND)))))
-- \instancia_Reg_MA|Add0~7\ = CARRY((\instancia_Reg_MA|var2\(3) & (!\instancia_Reg_MA|var1\(3) & !\instancia_Reg_MA|Add0~5\)) # (!\instancia_Reg_MA|var2\(3) & ((!\instancia_Reg_MA|Add0~5\) # (!\instancia_Reg_MA|var1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|var2\(3),
	datab => \instancia_Reg_MA|var1\(3),
	datad => VCC,
	cin => \instancia_Reg_MA|Add0~5\,
	combout => \instancia_Reg_MA|Add0~6_combout\,
	cout => \instancia_Reg_MA|Add0~7\);

-- Location: LCCOMB_X63_Y27_N8
\instancia_Reg_MA|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|Add0~8_combout\ = !\instancia_Reg_MA|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \instancia_Reg_MA|Add0~7\,
	combout => \instancia_Reg_MA|Add0~8_combout\);

-- Location: LCFF_X63_Y27_N17
\instancia_Reg_MA|var4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_Reg_MA|var3\(2),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var4\(2));

-- Location: LCFF_X63_Y27_N15
\instancia_Reg_MA|var4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_Reg_MA|var3\(1),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var4\(1));

-- Location: LCFF_X63_Y27_N13
\instancia_Reg_MA|var4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_Reg_MA|var3\(0),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var4\(0));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pino_Subindo~I\ : cycloneii_io
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
	padio => ww_Pino_Subindo,
	combout => \Pino_Subindo~combout\);

-- Location: LCCOMB_X30_Y35_N0
\instancia_Reg_SD|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_SD|Q[1]~feeder_combout\ = \Pino_Subindo~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Pino_Subindo~combout\,
	combout => \instancia_Reg_SD|Q[1]~feeder_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pino_Atualize~I\ : cycloneii_io
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
	padio => ww_Pino_Atualize,
	combout => \Pino_Atualize~combout\);

-- Location: LCFF_X30_Y35_N1
\instancia_Reg_SD|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_SD|Q[1]~feeder_combout\,
	ena => \Pino_Atualize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_SD|Q\(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pino_Descendo~I\ : cycloneii_io
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
	padio => ww_Pino_Descendo,
	combout => \Pino_Descendo~combout\);

-- Location: LCCOMB_X30_Y35_N2
\instancia_Reg_SD|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_SD|Q[0]~feeder_combout\ = \Pino_Descendo~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Pino_Descendo~combout\,
	combout => \instancia_Reg_SD|Q[0]~feeder_combout\);

-- Location: LCFF_X30_Y35_N3
\instancia_Reg_SD|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_SD|Q[0]~feeder_combout\,
	ena => \Pino_Atualize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_SD|Q\(0));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[3]~I\ : cycloneii_io
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
	padio => ww_E(3),
	combout => \E~combout\(3));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Load_E~I\ : cycloneii_io
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
	padio => ww_Load_E,
	combout => \Load_E~combout\);

-- Location: LCFF_X63_Y27_N21
\instancia_Reg_E|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \E~combout\(3),
	sload => VCC,
	ena => \Load_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_E|Q\(3));

-- Location: LCCOMB_X63_Y27_N22
\instancia_Reg_MA|var1[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|var1[3]~feeder_combout\ = \instancia_Reg_E|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_Reg_E|Q\(3),
	combout => \instancia_Reg_MA|var1[3]~feeder_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_MA~I\ : cycloneii_io
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
	padio => ww_Reset_MA,
	combout => \Reset_MA~combout\);

-- Location: CLKCTRL_G1
\Reset_MA~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_MA~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_MA~clkctrl_outclk\);

-- Location: LCFF_X63_Y27_N23
\instancia_Reg_MA|var1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_MA|var1[3]~feeder_combout\,
	aclr => \Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var1\(3));

-- Location: LCFF_X63_Y27_N7
\instancia_Reg_MA|var2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_Reg_MA|var1\(3),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var2\(3));

-- Location: LCCOMB_X63_Y27_N26
\instancia_Reg_MA|var3[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|var3[3]~feeder_combout\ = \instancia_Reg_MA|var2\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_Reg_MA|var2\(3),
	combout => \instancia_Reg_MA|var3[3]~feeder_combout\);

-- Location: LCFF_X63_Y27_N27
\instancia_Reg_MA|var3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_MA|var3[3]~feeder_combout\,
	aclr => \Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var3\(3));

-- Location: LCFF_X63_Y27_N19
\instancia_Reg_MA|var4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_Reg_MA|var3\(3),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var4\(3));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[2]~I\ : cycloneii_io
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
	padio => ww_E(2),
	combout => \E~combout\(2));

-- Location: LCFF_X63_Y27_N9
\instancia_Reg_E|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \E~combout\(2),
	sload => VCC,
	ena => \Load_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_E|Q\(2));

-- Location: LCFF_X63_Y27_N1
\instancia_Reg_MA|var1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_Reg_E|Q\(2),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var1\(2));

-- Location: LCFF_X63_Y27_N5
\instancia_Reg_MA|var2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_Reg_MA|var1\(2),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var2\(2));

-- Location: LCCOMB_X63_Y27_N30
\instancia_Reg_MA|var3[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|var3[2]~feeder_combout\ = \instancia_Reg_MA|var2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_Reg_MA|var2\(2),
	combout => \instancia_Reg_MA|var3[2]~feeder_combout\);

-- Location: LCFF_X63_Y27_N31
\instancia_Reg_MA|var3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_MA|var3[2]~feeder_combout\,
	aclr => \Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var3\(2));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[1]~I\ : cycloneii_io
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
	padio => ww_E(1),
	combout => \E~combout\(1));

-- Location: LCCOMB_X64_Y27_N6
\instancia_Reg_E|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_E|Q[1]~feeder_combout\ = \E~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~combout\(1),
	combout => \instancia_Reg_E|Q[1]~feeder_combout\);

-- Location: LCFF_X64_Y27_N7
\instancia_Reg_E|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_E|Q[1]~feeder_combout\,
	ena => \Load_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_E|Q\(1));

-- Location: LCCOMB_X63_Y27_N10
\instancia_Reg_MA|var1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|var1[1]~feeder_combout\ = \instancia_Reg_E|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_Reg_E|Q\(1),
	combout => \instancia_Reg_MA|var1[1]~feeder_combout\);

-- Location: LCFF_X63_Y27_N11
\instancia_Reg_MA|var1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_MA|var1[1]~feeder_combout\,
	aclr => \Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var1\(1));

-- Location: LCFF_X63_Y27_N3
\instancia_Reg_MA|var2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_Reg_MA|var1\(1),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var2\(1));

-- Location: LCCOMB_X63_Y27_N28
\instancia_Reg_MA|var3[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|var3[1]~feeder_combout\ = \instancia_Reg_MA|var2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_Reg_MA|var2\(1),
	combout => \instancia_Reg_MA|var3[1]~feeder_combout\);

-- Location: LCFF_X63_Y27_N29
\instancia_Reg_MA|var3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_MA|var3[1]~feeder_combout\,
	aclr => \Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var3\(1));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\E[0]~I\ : cycloneii_io
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
	padio => ww_E(0),
	combout => \E~combout\(0));

-- Location: LCCOMB_X64_Y27_N2
\instancia_Reg_E|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_E|Q[0]~feeder_combout\ = \E~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~combout\(0),
	combout => \instancia_Reg_E|Q[0]~feeder_combout\);

-- Location: LCFF_X64_Y27_N3
\instancia_Reg_E|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_E|Q[0]~feeder_combout\,
	ena => \Load_E~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_E|Q\(0));

-- Location: LCCOMB_X64_Y27_N4
\instancia_Reg_MA|var1[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|var1[0]~feeder_combout\ = \instancia_Reg_E|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_Reg_E|Q\(0),
	combout => \instancia_Reg_MA|var1[0]~feeder_combout\);

-- Location: LCFF_X64_Y27_N5
\instancia_Reg_MA|var1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_MA|var1[0]~feeder_combout\,
	aclr => \Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var1\(0));

-- Location: LCFF_X64_Y27_N31
\instancia_Reg_MA|var2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \instancia_Reg_MA|var1\(0),
	aclr => \Reset_MA~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var2\(0));

-- Location: LCCOMB_X63_Y27_N24
\instancia_Reg_MA|var3[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|var3[0]~feeder_combout\ = \instancia_Reg_MA|var2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instancia_Reg_MA|var2\(0),
	combout => \instancia_Reg_MA|var3[0]~feeder_combout\);

-- Location: LCFF_X63_Y27_N25
\instancia_Reg_MA|var3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_MA|var3[0]~feeder_combout\,
	aclr => \Reset_MA~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_MA|var3\(0));

-- Location: LCCOMB_X63_Y27_N14
\instancia_Reg_MA|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|Add1~2_combout\ = (\instancia_Reg_MA|var4\(1) & ((\instancia_Reg_MA|var3\(1) & (\instancia_Reg_MA|Add1~1\ & VCC)) # (!\instancia_Reg_MA|var3\(1) & (!\instancia_Reg_MA|Add1~1\)))) # (!\instancia_Reg_MA|var4\(1) & 
-- ((\instancia_Reg_MA|var3\(1) & (!\instancia_Reg_MA|Add1~1\)) # (!\instancia_Reg_MA|var3\(1) & ((\instancia_Reg_MA|Add1~1\) # (GND)))))
-- \instancia_Reg_MA|Add1~3\ = CARRY((\instancia_Reg_MA|var4\(1) & (!\instancia_Reg_MA|var3\(1) & !\instancia_Reg_MA|Add1~1\)) # (!\instancia_Reg_MA|var4\(1) & ((!\instancia_Reg_MA|Add1~1\) # (!\instancia_Reg_MA|var3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|var4\(1),
	datab => \instancia_Reg_MA|var3\(1),
	datad => VCC,
	cin => \instancia_Reg_MA|Add1~1\,
	combout => \instancia_Reg_MA|Add1~2_combout\,
	cout => \instancia_Reg_MA|Add1~3\);

-- Location: LCCOMB_X63_Y27_N18
\instancia_Reg_MA|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|Add1~6_combout\ = (\instancia_Reg_MA|var3\(3) & ((\instancia_Reg_MA|var4\(3) & (\instancia_Reg_MA|Add1~5\ & VCC)) # (!\instancia_Reg_MA|var4\(3) & (!\instancia_Reg_MA|Add1~5\)))) # (!\instancia_Reg_MA|var3\(3) & 
-- ((\instancia_Reg_MA|var4\(3) & (!\instancia_Reg_MA|Add1~5\)) # (!\instancia_Reg_MA|var4\(3) & ((\instancia_Reg_MA|Add1~5\) # (GND)))))
-- \instancia_Reg_MA|Add1~7\ = CARRY((\instancia_Reg_MA|var3\(3) & (!\instancia_Reg_MA|var4\(3) & !\instancia_Reg_MA|Add1~5\)) # (!\instancia_Reg_MA|var3\(3) & ((!\instancia_Reg_MA|Add1~5\) # (!\instancia_Reg_MA|var4\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|var3\(3),
	datab => \instancia_Reg_MA|var4\(3),
	datad => VCC,
	cin => \instancia_Reg_MA|Add1~5\,
	combout => \instancia_Reg_MA|Add1~6_combout\,
	cout => \instancia_Reg_MA|Add1~7\);

-- Location: LCCOMB_X63_Y27_N20
\instancia_Reg_MA|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|Add1~8_combout\ = !\instancia_Reg_MA|Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \instancia_Reg_MA|Add1~7\,
	combout => \instancia_Reg_MA|Add1~8_combout\);

-- Location: LCCOMB_X63_Y27_N0
\instancia_Reg_MA|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|Add0~0_combout\ = (\instancia_Reg_MA|var1\(0) & (\instancia_Reg_MA|var2\(0) $ (VCC))) # (!\instancia_Reg_MA|var1\(0) & (\instancia_Reg_MA|var2\(0) & VCC))
-- \instancia_Reg_MA|Add0~1\ = CARRY((\instancia_Reg_MA|var1\(0) & \instancia_Reg_MA|var2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|var1\(0),
	datab => \instancia_Reg_MA|var2\(0),
	datad => VCC,
	combout => \instancia_Reg_MA|Add0~0_combout\,
	cout => \instancia_Reg_MA|Add0~1\);

-- Location: LCCOMB_X62_Y27_N0
\instancia_Reg_MA|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|Add2~1_cout\ = CARRY((\instancia_Reg_MA|Add1~0_combout\ & \instancia_Reg_MA|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|Add1~0_combout\,
	datab => \instancia_Reg_MA|Add0~0_combout\,
	datad => VCC,
	cout => \instancia_Reg_MA|Add2~1_cout\);

-- Location: LCCOMB_X62_Y27_N2
\instancia_Reg_MA|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|Add2~3_cout\ = CARRY((\instancia_Reg_MA|Add0~2_combout\ & (!\instancia_Reg_MA|Add1~2_combout\ & !\instancia_Reg_MA|Add2~1_cout\)) # (!\instancia_Reg_MA|Add0~2_combout\ & ((!\instancia_Reg_MA|Add2~1_cout\) # 
-- (!\instancia_Reg_MA|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|Add0~2_combout\,
	datab => \instancia_Reg_MA|Add1~2_combout\,
	datad => VCC,
	cin => \instancia_Reg_MA|Add2~1_cout\,
	cout => \instancia_Reg_MA|Add2~3_cout\);

-- Location: LCCOMB_X62_Y27_N4
\instancia_Reg_MA|OUTPUT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|OUTPUT[0]~0_combout\ = ((\instancia_Reg_MA|Add1~4_combout\ $ (\instancia_Reg_MA|Add0~4_combout\ $ (!\instancia_Reg_MA|Add2~3_cout\)))) # (GND)
-- \instancia_Reg_MA|OUTPUT[0]~1\ = CARRY((\instancia_Reg_MA|Add1~4_combout\ & ((\instancia_Reg_MA|Add0~4_combout\) # (!\instancia_Reg_MA|Add2~3_cout\))) # (!\instancia_Reg_MA|Add1~4_combout\ & (\instancia_Reg_MA|Add0~4_combout\ & 
-- !\instancia_Reg_MA|Add2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|Add1~4_combout\,
	datab => \instancia_Reg_MA|Add0~4_combout\,
	datad => VCC,
	cin => \instancia_Reg_MA|Add2~3_cout\,
	combout => \instancia_Reg_MA|OUTPUT[0]~0_combout\,
	cout => \instancia_Reg_MA|OUTPUT[0]~1\);

-- Location: LCCOMB_X62_Y27_N6
\instancia_Reg_MA|OUTPUT[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|OUTPUT[1]~2_combout\ = (\instancia_Reg_MA|Add0~6_combout\ & ((\instancia_Reg_MA|Add1~6_combout\ & (\instancia_Reg_MA|OUTPUT[0]~1\ & VCC)) # (!\instancia_Reg_MA|Add1~6_combout\ & (!\instancia_Reg_MA|OUTPUT[0]~1\)))) # 
-- (!\instancia_Reg_MA|Add0~6_combout\ & ((\instancia_Reg_MA|Add1~6_combout\ & (!\instancia_Reg_MA|OUTPUT[0]~1\)) # (!\instancia_Reg_MA|Add1~6_combout\ & ((\instancia_Reg_MA|OUTPUT[0]~1\) # (GND)))))
-- \instancia_Reg_MA|OUTPUT[1]~3\ = CARRY((\instancia_Reg_MA|Add0~6_combout\ & (!\instancia_Reg_MA|Add1~6_combout\ & !\instancia_Reg_MA|OUTPUT[0]~1\)) # (!\instancia_Reg_MA|Add0~6_combout\ & ((!\instancia_Reg_MA|OUTPUT[0]~1\) # 
-- (!\instancia_Reg_MA|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|Add0~6_combout\,
	datab => \instancia_Reg_MA|Add1~6_combout\,
	datad => VCC,
	cin => \instancia_Reg_MA|OUTPUT[0]~1\,
	combout => \instancia_Reg_MA|OUTPUT[1]~2_combout\,
	cout => \instancia_Reg_MA|OUTPUT[1]~3\);

-- Location: LCCOMB_X62_Y27_N8
\instancia_Reg_MA|OUTPUT[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|OUTPUT[2]~4_combout\ = ((\instancia_Reg_MA|Add0~8_combout\ $ (\instancia_Reg_MA|Add1~8_combout\ $ (!\instancia_Reg_MA|OUTPUT[1]~3\)))) # (GND)
-- \instancia_Reg_MA|OUTPUT[2]~5\ = CARRY((\instancia_Reg_MA|Add0~8_combout\ & ((\instancia_Reg_MA|Add1~8_combout\) # (!\instancia_Reg_MA|OUTPUT[1]~3\))) # (!\instancia_Reg_MA|Add0~8_combout\ & (\instancia_Reg_MA|Add1~8_combout\ & 
-- !\instancia_Reg_MA|OUTPUT[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|Add0~8_combout\,
	datab => \instancia_Reg_MA|Add1~8_combout\,
	datad => VCC,
	cin => \instancia_Reg_MA|OUTPUT[1]~3\,
	combout => \instancia_Reg_MA|OUTPUT[2]~4_combout\,
	cout => \instancia_Reg_MA|OUTPUT[2]~5\);

-- Location: LCCOMB_X62_Y27_N10
\instancia_Reg_MA|OUTPUT[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_MA|OUTPUT[3]~6_combout\ = \instancia_Reg_MA|OUTPUT[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \instancia_Reg_MA|OUTPUT[2]~5\,
	combout => \instancia_Reg_MA|OUTPUT[3]~6_combout\);

-- Location: LCCOMB_X64_Y27_N12
\instancia_comparador|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_comparador|LessThan0~0_combout\ = (\instancia_Reg_E|Q\(3) & (((\instancia_Reg_E|Q\(2) & !\instancia_Reg_MA|OUTPUT[2]~4_combout\)) # (!\instancia_Reg_MA|OUTPUT[3]~6_combout\))) # (!\instancia_Reg_E|Q\(3) & (\instancia_Reg_E|Q\(2) & 
-- (!\instancia_Reg_MA|OUTPUT[2]~4_combout\ & !\instancia_Reg_MA|OUTPUT[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_E|Q\(2),
	datab => \instancia_Reg_MA|OUTPUT[2]~4_combout\,
	datac => \instancia_Reg_E|Q\(3),
	datad => \instancia_Reg_MA|OUTPUT[3]~6_combout\,
	combout => \instancia_comparador|LessThan0~0_combout\);

-- Location: LCCOMB_X64_Y27_N28
\instancia_comparador|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_comparador|LessThan0~2_combout\ = (\instancia_Reg_E|Q\(2) & (\instancia_Reg_MA|OUTPUT[2]~4_combout\ & (\instancia_Reg_E|Q\(3) $ (!\instancia_Reg_MA|OUTPUT[3]~6_combout\)))) # (!\instancia_Reg_E|Q\(2) & (!\instancia_Reg_MA|OUTPUT[2]~4_combout\ & 
-- (\instancia_Reg_E|Q\(3) $ (!\instancia_Reg_MA|OUTPUT[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_E|Q\(2),
	datab => \instancia_Reg_MA|OUTPUT[2]~4_combout\,
	datac => \instancia_Reg_E|Q\(3),
	datad => \instancia_Reg_MA|OUTPUT[3]~6_combout\,
	combout => \instancia_comparador|LessThan0~2_combout\);

-- Location: LCCOMB_X64_Y27_N26
\instancia_comparador|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_comparador|LessThan0~1_combout\ = (\instancia_Reg_E|Q\(1) & (((!\instancia_Reg_MA|OUTPUT[0]~0_combout\ & \instancia_Reg_E|Q\(0))) # (!\instancia_Reg_MA|OUTPUT[1]~2_combout\))) # (!\instancia_Reg_E|Q\(1) & 
-- (!\instancia_Reg_MA|OUTPUT[0]~0_combout\ & (!\instancia_Reg_MA|OUTPUT[1]~2_combout\ & \instancia_Reg_E|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_E|Q\(1),
	datab => \instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instancia_Reg_MA|OUTPUT[1]~2_combout\,
	datad => \instancia_Reg_E|Q\(0),
	combout => \instancia_comparador|LessThan0~1_combout\);

-- Location: LCCOMB_X64_Y27_N30
\instancia_comparador|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_comparador|LessThan0~3_combout\ = (\instancia_comparador|LessThan0~0_combout\) # ((\instancia_comparador|LessThan0~2_combout\ & \instancia_comparador|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_comparador|LessThan0~0_combout\,
	datab => \instancia_comparador|LessThan0~2_combout\,
	datad => \instancia_comparador|LessThan0~1_combout\,
	combout => \instancia_comparador|LessThan0~3_combout\);

-- Location: LCCOMB_X64_Y27_N24
\instancia_comparador|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_comparador|LessThan1~1_combout\ = (\instancia_Reg_E|Q\(1) & (\instancia_Reg_MA|OUTPUT[0]~0_combout\ & (\instancia_Reg_MA|OUTPUT[1]~2_combout\ & !\instancia_Reg_E|Q\(0)))) # (!\instancia_Reg_E|Q\(1) & ((\instancia_Reg_MA|OUTPUT[1]~2_combout\) # 
-- ((\instancia_Reg_MA|OUTPUT[0]~0_combout\ & !\instancia_Reg_E|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_E|Q\(1),
	datab => \instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instancia_Reg_MA|OUTPUT[1]~2_combout\,
	datad => \instancia_Reg_E|Q\(0),
	combout => \instancia_comparador|LessThan1~1_combout\);

-- Location: LCCOMB_X64_Y27_N20
\instancia_comparador|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_comparador|LessThan1~0_combout\ = (\instancia_Reg_E|Q\(3) & (!\instancia_Reg_E|Q\(2) & (\instancia_Reg_MA|OUTPUT[2]~4_combout\ & \instancia_Reg_MA|OUTPUT[3]~6_combout\))) # (!\instancia_Reg_E|Q\(3) & ((\instancia_Reg_MA|OUTPUT[3]~6_combout\) # 
-- ((!\instancia_Reg_E|Q\(2) & \instancia_Reg_MA|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_E|Q\(2),
	datab => \instancia_Reg_MA|OUTPUT[2]~4_combout\,
	datac => \instancia_Reg_E|Q\(3),
	datad => \instancia_Reg_MA|OUTPUT[3]~6_combout\,
	combout => \instancia_comparador|LessThan1~0_combout\);

-- Location: LCCOMB_X64_Y27_N0
\instancia_comparador|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_comparador|LessThan1~2_combout\ = (\instancia_comparador|LessThan1~0_combout\) # ((\instancia_comparador|LessThan1~1_combout\ & \instancia_comparador|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_comparador|LessThan1~1_combout\,
	datac => \instancia_comparador|LessThan1~0_combout\,
	datad => \instancia_comparador|LessThan0~2_combout\,
	combout => \instancia_comparador|LessThan1~2_combout\);

-- Location: LCCOMB_X64_Y27_N10
\instancia_Bcd_7seg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Bcd_7seg|Mux6~0_combout\ = (\instancia_Reg_MA|OUTPUT[3]~6_combout\ & (\instancia_Reg_MA|OUTPUT[0]~0_combout\ & (\instancia_Reg_MA|OUTPUT[1]~2_combout\ $ (\instancia_Reg_MA|OUTPUT[2]~4_combout\)))) # (!\instancia_Reg_MA|OUTPUT[3]~6_combout\ & 
-- (!\instancia_Reg_MA|OUTPUT[1]~2_combout\ & (\instancia_Reg_MA|OUTPUT[0]~0_combout\ $ (\instancia_Reg_MA|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|OUTPUT[3]~6_combout\,
	datab => \instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instancia_Reg_MA|OUTPUT[1]~2_combout\,
	datad => \instancia_Reg_MA|OUTPUT[2]~4_combout\,
	combout => \instancia_Bcd_7seg|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y27_N22
\instancia_Bcd_7seg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Bcd_7seg|Mux5~0_combout\ = (\instancia_Reg_MA|OUTPUT[3]~6_combout\ & ((\instancia_Reg_MA|OUTPUT[0]~0_combout\ & (\instancia_Reg_MA|OUTPUT[1]~2_combout\)) # (!\instancia_Reg_MA|OUTPUT[0]~0_combout\ & ((\instancia_Reg_MA|OUTPUT[2]~4_combout\))))) 
-- # (!\instancia_Reg_MA|OUTPUT[3]~6_combout\ & (\instancia_Reg_MA|OUTPUT[2]~4_combout\ & (\instancia_Reg_MA|OUTPUT[0]~0_combout\ $ (\instancia_Reg_MA|OUTPUT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|OUTPUT[3]~6_combout\,
	datab => \instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instancia_Reg_MA|OUTPUT[1]~2_combout\,
	datad => \instancia_Reg_MA|OUTPUT[2]~4_combout\,
	combout => \instancia_Bcd_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y27_N8
\instancia_Bcd_7seg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Bcd_7seg|Mux4~0_combout\ = (\instancia_Reg_MA|OUTPUT[3]~6_combout\ & (\instancia_Reg_MA|OUTPUT[2]~4_combout\ & ((\instancia_Reg_MA|OUTPUT[1]~2_combout\) # (!\instancia_Reg_MA|OUTPUT[0]~0_combout\)))) # (!\instancia_Reg_MA|OUTPUT[3]~6_combout\ & 
-- (!\instancia_Reg_MA|OUTPUT[0]~0_combout\ & (\instancia_Reg_MA|OUTPUT[1]~2_combout\ & !\instancia_Reg_MA|OUTPUT[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|OUTPUT[3]~6_combout\,
	datab => \instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instancia_Reg_MA|OUTPUT[1]~2_combout\,
	datad => \instancia_Reg_MA|OUTPUT[2]~4_combout\,
	combout => \instancia_Bcd_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y27_N16
\instancia_Bcd_7seg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Bcd_7seg|Mux3~0_combout\ = (\instancia_Reg_MA|OUTPUT[1]~2_combout\ & ((\instancia_Reg_MA|OUTPUT[0]~0_combout\ & ((\instancia_Reg_MA|OUTPUT[2]~4_combout\))) # (!\instancia_Reg_MA|OUTPUT[0]~0_combout\ & (\instancia_Reg_MA|OUTPUT[3]~6_combout\ & 
-- !\instancia_Reg_MA|OUTPUT[2]~4_combout\)))) # (!\instancia_Reg_MA|OUTPUT[1]~2_combout\ & (!\instancia_Reg_MA|OUTPUT[3]~6_combout\ & (\instancia_Reg_MA|OUTPUT[0]~0_combout\ $ (\instancia_Reg_MA|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|OUTPUT[3]~6_combout\,
	datab => \instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instancia_Reg_MA|OUTPUT[1]~2_combout\,
	datad => \instancia_Reg_MA|OUTPUT[2]~4_combout\,
	combout => \instancia_Bcd_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y27_N18
\instancia_Bcd_7seg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Bcd_7seg|Mux2~0_combout\ = (\instancia_Reg_MA|OUTPUT[1]~2_combout\ & (!\instancia_Reg_MA|OUTPUT[3]~6_combout\ & (\instancia_Reg_MA|OUTPUT[0]~0_combout\))) # (!\instancia_Reg_MA|OUTPUT[1]~2_combout\ & ((\instancia_Reg_MA|OUTPUT[2]~4_combout\ & 
-- (!\instancia_Reg_MA|OUTPUT[3]~6_combout\)) # (!\instancia_Reg_MA|OUTPUT[2]~4_combout\ & ((\instancia_Reg_MA|OUTPUT[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|OUTPUT[3]~6_combout\,
	datab => \instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instancia_Reg_MA|OUTPUT[1]~2_combout\,
	datad => \instancia_Reg_MA|OUTPUT[2]~4_combout\,
	combout => \instancia_Bcd_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y27_N14
\instancia_Bcd_7seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Bcd_7seg|Mux1~0_combout\ = (\instancia_Reg_MA|OUTPUT[0]~0_combout\ & (\instancia_Reg_MA|OUTPUT[3]~6_combout\ $ (((\instancia_Reg_MA|OUTPUT[1]~2_combout\) # (!\instancia_Reg_MA|OUTPUT[2]~4_combout\))))) # (!\instancia_Reg_MA|OUTPUT[0]~0_combout\ 
-- & (!\instancia_Reg_MA|OUTPUT[3]~6_combout\ & (\instancia_Reg_MA|OUTPUT[1]~2_combout\ & !\instancia_Reg_MA|OUTPUT[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|OUTPUT[3]~6_combout\,
	datab => \instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instancia_Reg_MA|OUTPUT[1]~2_combout\,
	datad => \instancia_Reg_MA|OUTPUT[2]~4_combout\,
	combout => \instancia_Bcd_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y27_N16
\instancia_Bcd_7seg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Bcd_7seg|Mux0~0_combout\ = (\instancia_Reg_MA|OUTPUT[0]~0_combout\ & ((\instancia_Reg_MA|OUTPUT[3]~6_combout\) # (\instancia_Reg_MA|OUTPUT[1]~2_combout\ $ (\instancia_Reg_MA|OUTPUT[2]~4_combout\)))) # (!\instancia_Reg_MA|OUTPUT[0]~0_combout\ & 
-- ((\instancia_Reg_MA|OUTPUT[1]~2_combout\) # (\instancia_Reg_MA|OUTPUT[2]~4_combout\ $ (\instancia_Reg_MA|OUTPUT[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_MA|OUTPUT[1]~2_combout\,
	datab => \instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instancia_Reg_MA|OUTPUT[2]~4_combout\,
	datad => \instancia_Reg_MA|OUTPUT[3]~6_combout\,
	combout => \instancia_Bcd_7seg|Mux0~0_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sobe~I\ : cycloneii_io
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
	datain => \instancia_Reg_SD|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sobe);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Desce~I\ : cycloneii_io
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
	datain => \instancia_Reg_SD|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Desce);

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Pino_Maior~I\ : cycloneii_io
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
	datain => \instancia_comparador|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Pino_Maior);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Pino_Menor~I\ : cycloneii_io
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
	datain => \instancia_comparador|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Pino_Menor);

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Media[0]~I\ : cycloneii_io
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
	datain => \instancia_Bcd_7seg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media(0));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Media[1]~I\ : cycloneii_io
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
	datain => \instancia_Bcd_7seg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media(1));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Media[2]~I\ : cycloneii_io
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
	datain => \instancia_Bcd_7seg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media(2));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Media[3]~I\ : cycloneii_io
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
	datain => \instancia_Bcd_7seg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media(3));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Media[4]~I\ : cycloneii_io
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
	datain => \instancia_Bcd_7seg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media(4));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Media[5]~I\ : cycloneii_io
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
	datain => \instancia_Bcd_7seg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media(5));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Media[6]~I\ : cycloneii_io
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
	datain => \instancia_Bcd_7seg|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Media(6));
END structure;


