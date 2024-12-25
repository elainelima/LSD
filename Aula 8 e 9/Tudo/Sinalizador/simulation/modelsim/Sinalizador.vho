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

-- DATE "12/13/2024 22:46:52"

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

ENTITY 	Sinalizador IS
    PORT (
	RESET : IN std_logic;
	CLOCK : IN std_logic;
	E : IN std_logic_vector(3 DOWNTO 0);
	Sobe : OUT std_logic;
	Desce : OUT std_logic;
	Display_7seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END Sinalizador;

-- Design Ports Information
-- Sobe	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Desce	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Sinalizador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_E : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sobe : std_logic;
SIGNAL ww_Desce : std_logic;
SIGNAL ww_Display_7seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instancia_Reg_MA|Add1~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add1~1\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add1~2_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add1~3\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add1~4_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add1~5\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add1~6_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add1~7\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add1~8_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_comparador|LessThan0~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|var3[2]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|var3[1]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|var3[3]~feeder_combout\ : std_logic;
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.S1~0_combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.S1~regout\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.S0~feeder_combout\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.S0~regout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_E|Q[1]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|var1[1]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_E|Q[0]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|var2[0]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add0~1\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add0~3\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add0~4_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add0~2_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add0~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add2~1_cout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add2~3_cout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_E|Q[3]~feeder_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add0~5\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add0~6_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|OUTPUT[0]~1\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_comparador|LessThan1~1_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add0~7\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|Add0~8_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|OUTPUT[1]~3\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|OUTPUT[2]~5\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_comparador|LessThan1~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_comparador|LessThan0~1_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_comparador|LessThan0~2_combout\ : std_logic;
SIGNAL \instancia_controladora|proximo_estado.S4~0_combout\ : std_logic;
SIGNAL \instancia_controladora|proximo_estado.S4~1_combout\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.S4~regout\ : std_logic;
SIGNAL \instancia_controladora|proximo_estado.S3~0_combout\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.S3~regout\ : std_logic;
SIGNAL \instancia_controladora|Subindo~0_combout\ : std_logic;
SIGNAL \instancia_controladora|proximo_estado.S2~0_combout\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.S2~regout\ : std_logic;
SIGNAL \instancia_controladora|Descendo~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Reg_MA|var4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instancia_Reg_MA|var3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instancia_Reg_MA|var2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instancia_Reg_MA|var1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instancia_Reg_E|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instancia_Reg_SD|Q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \E~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_controladora|ALT_INV_estado_atual.S0~regout\ : std_logic;
SIGNAL \instancia_controladora|ALT_INV_estado_atual.S1~regout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_RESET <= RESET;
ww_CLOCK <= CLOCK;
ww_E <= E;
Sobe <= ww_Sobe;
Desce <= ww_Desce;
Display_7seg <= ww_Display_7seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK~combout\);

\RESET~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET~combout\);
\instancia_controladora|ALT_INV_estado_atual.S0~regout\ <= NOT \instancia_controladora|estado_atual.S0~regout\;
\instancia_controladora|ALT_INV_estado_atual.S1~regout\ <= NOT \instancia_controladora|estado_atual.S1~regout\;
\instance_datapath|instancia_Bcd_7seg|ALT_INV_Mux0~0_combout\ <= NOT \instance_datapath|instancia_Bcd_7seg|Mux0~0_combout\;

-- Location: LCCOMB_X30_Y1_N6
\instance_datapath|instancia_Reg_MA|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|Add1~0_combout\ = (\instance_datapath|instancia_Reg_MA|var4\(0) & (\instance_datapath|instancia_Reg_MA|var3\(0) $ (VCC))) # (!\instance_datapath|instancia_Reg_MA|var4\(0) & (\instance_datapath|instancia_Reg_MA|var3\(0) 
-- & VCC))
-- \instance_datapath|instancia_Reg_MA|Add1~1\ = CARRY((\instance_datapath|instancia_Reg_MA|var4\(0) & \instance_datapath|instancia_Reg_MA|var3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|var4\(0),
	datab => \instance_datapath|instancia_Reg_MA|var3\(0),
	datad => VCC,
	combout => \instance_datapath|instancia_Reg_MA|Add1~0_combout\,
	cout => \instance_datapath|instancia_Reg_MA|Add1~1\);

-- Location: LCCOMB_X30_Y1_N8
\instance_datapath|instancia_Reg_MA|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|Add1~2_combout\ = (\instance_datapath|instancia_Reg_MA|var3\(1) & ((\instance_datapath|instancia_Reg_MA|var4\(1) & (\instance_datapath|instancia_Reg_MA|Add1~1\ & VCC)) # (!\instance_datapath|instancia_Reg_MA|var4\(1) & 
-- (!\instance_datapath|instancia_Reg_MA|Add1~1\)))) # (!\instance_datapath|instancia_Reg_MA|var3\(1) & ((\instance_datapath|instancia_Reg_MA|var4\(1) & (!\instance_datapath|instancia_Reg_MA|Add1~1\)) # (!\instance_datapath|instancia_Reg_MA|var4\(1) & 
-- ((\instance_datapath|instancia_Reg_MA|Add1~1\) # (GND)))))
-- \instance_datapath|instancia_Reg_MA|Add1~3\ = CARRY((\instance_datapath|instancia_Reg_MA|var3\(1) & (!\instance_datapath|instancia_Reg_MA|var4\(1) & !\instance_datapath|instancia_Reg_MA|Add1~1\)) # (!\instance_datapath|instancia_Reg_MA|var3\(1) & 
-- ((!\instance_datapath|instancia_Reg_MA|Add1~1\) # (!\instance_datapath|instancia_Reg_MA|var4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|var3\(1),
	datab => \instance_datapath|instancia_Reg_MA|var4\(1),
	datad => VCC,
	cin => \instance_datapath|instancia_Reg_MA|Add1~1\,
	combout => \instance_datapath|instancia_Reg_MA|Add1~2_combout\,
	cout => \instance_datapath|instancia_Reg_MA|Add1~3\);

-- Location: LCCOMB_X30_Y1_N10
\instance_datapath|instancia_Reg_MA|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|Add1~4_combout\ = ((\instance_datapath|instancia_Reg_MA|var4\(2) $ (\instance_datapath|instancia_Reg_MA|var3\(2) $ (!\instance_datapath|instancia_Reg_MA|Add1~3\)))) # (GND)
-- \instance_datapath|instancia_Reg_MA|Add1~5\ = CARRY((\instance_datapath|instancia_Reg_MA|var4\(2) & ((\instance_datapath|instancia_Reg_MA|var3\(2)) # (!\instance_datapath|instancia_Reg_MA|Add1~3\))) # (!\instance_datapath|instancia_Reg_MA|var4\(2) & 
-- (\instance_datapath|instancia_Reg_MA|var3\(2) & !\instance_datapath|instancia_Reg_MA|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|var4\(2),
	datab => \instance_datapath|instancia_Reg_MA|var3\(2),
	datad => VCC,
	cin => \instance_datapath|instancia_Reg_MA|Add1~3\,
	combout => \instance_datapath|instancia_Reg_MA|Add1~4_combout\,
	cout => \instance_datapath|instancia_Reg_MA|Add1~5\);

-- Location: LCCOMB_X30_Y1_N12
\instance_datapath|instancia_Reg_MA|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|Add1~6_combout\ = (\instance_datapath|instancia_Reg_MA|var4\(3) & ((\instance_datapath|instancia_Reg_MA|var3\(3) & (\instance_datapath|instancia_Reg_MA|Add1~5\ & VCC)) # (!\instance_datapath|instancia_Reg_MA|var3\(3) & 
-- (!\instance_datapath|instancia_Reg_MA|Add1~5\)))) # (!\instance_datapath|instancia_Reg_MA|var4\(3) & ((\instance_datapath|instancia_Reg_MA|var3\(3) & (!\instance_datapath|instancia_Reg_MA|Add1~5\)) # (!\instance_datapath|instancia_Reg_MA|var3\(3) & 
-- ((\instance_datapath|instancia_Reg_MA|Add1~5\) # (GND)))))
-- \instance_datapath|instancia_Reg_MA|Add1~7\ = CARRY((\instance_datapath|instancia_Reg_MA|var4\(3) & (!\instance_datapath|instancia_Reg_MA|var3\(3) & !\instance_datapath|instancia_Reg_MA|Add1~5\)) # (!\instance_datapath|instancia_Reg_MA|var4\(3) & 
-- ((!\instance_datapath|instancia_Reg_MA|Add1~5\) # (!\instance_datapath|instancia_Reg_MA|var3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|var4\(3),
	datab => \instance_datapath|instancia_Reg_MA|var3\(3),
	datad => VCC,
	cin => \instance_datapath|instancia_Reg_MA|Add1~5\,
	combout => \instance_datapath|instancia_Reg_MA|Add1~6_combout\,
	cout => \instance_datapath|instancia_Reg_MA|Add1~7\);

-- Location: LCCOMB_X30_Y1_N14
\instance_datapath|instancia_Reg_MA|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|Add1~8_combout\ = !\instance_datapath|instancia_Reg_MA|Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \instance_datapath|instancia_Reg_MA|Add1~7\,
	combout => \instance_datapath|instancia_Reg_MA|Add1~8_combout\);

-- Location: LCFF_X30_Y1_N11
\instance_datapath|instancia_Reg_MA|var4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \instance_datapath|instancia_Reg_MA|var3\(2),
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var4\(2));

-- Location: LCFF_X30_Y1_N23
\instance_datapath|instancia_Reg_MA|var3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Reg_MA|var3[2]~feeder_combout\,
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var3\(2));

-- Location: LCFF_X30_Y1_N9
\instance_datapath|instancia_Reg_MA|var4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \instance_datapath|instancia_Reg_MA|var3\(1),
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var4\(1));

-- Location: LCFF_X30_Y1_N25
\instance_datapath|instancia_Reg_MA|var3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Reg_MA|var3[1]~feeder_combout\,
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var3\(1));

-- Location: LCFF_X30_Y1_N7
\instance_datapath|instancia_Reg_MA|var4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \instance_datapath|instancia_Reg_MA|var3\(0),
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var4\(0));

-- Location: LCFF_X30_Y1_N3
\instance_datapath|instancia_Reg_MA|var3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \instance_datapath|instancia_Reg_MA|var2\(0),
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var3\(0));

-- Location: LCFF_X31_Y1_N3
\instance_datapath|instancia_Reg_MA|var2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \instance_datapath|instancia_Reg_MA|var1\(2),
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var2\(2));

-- Location: LCFF_X30_Y1_N13
\instance_datapath|instancia_Reg_MA|var4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \instance_datapath|instancia_Reg_MA|var3\(3),
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var4\(3));

-- Location: LCFF_X30_Y1_N1
\instance_datapath|instancia_Reg_MA|var3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Reg_MA|var3[3]~feeder_combout\,
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var3\(3));

-- Location: LCFF_X31_Y1_N7
\instance_datapath|instancia_Reg_MA|var2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \instance_datapath|instancia_Reg_MA|var1\(3),
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var2\(3));

-- Location: LCCOMB_X32_Y1_N24
\instance_datapath|instancia_comparador|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_comparador|LessThan0~0_combout\ = (\instance_datapath|instancia_Reg_E|Q\(1) & (((!\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ & \instance_datapath|instancia_Reg_E|Q\(0))) # 
-- (!\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\))) # (!\instance_datapath|instancia_Reg_E|Q\(1) & (!\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ & (\instance_datapath|instancia_Reg_E|Q\(0) & 
-- !\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_E|Q\(1),
	datab => \instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instance_datapath|instancia_Reg_E|Q\(0),
	datad => \instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instancia_comparador|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y1_N22
\instance_datapath|instancia_Reg_MA|var3[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|var3[2]~feeder_combout\ = \instance_datapath|instancia_Reg_MA|var2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_datapath|instancia_Reg_MA|var2\(2),
	combout => \instance_datapath|instancia_Reg_MA|var3[2]~feeder_combout\);

-- Location: LCCOMB_X30_Y1_N24
\instance_datapath|instancia_Reg_MA|var3[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|var3[1]~feeder_combout\ = \instance_datapath|instancia_Reg_MA|var2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_datapath|instancia_Reg_MA|var2\(1),
	combout => \instance_datapath|instancia_Reg_MA|var3[1]~feeder_combout\);

-- Location: LCCOMB_X30_Y1_N0
\instance_datapath|instancia_Reg_MA|var3[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|var3[3]~feeder_combout\ = \instance_datapath|instancia_Reg_MA|var2\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_datapath|instancia_Reg_MA|var2\(3),
	combout => \instance_datapath|instancia_Reg_MA|var3[3]~feeder_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK~I\ : cycloneii_io
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
	padio => ww_CLOCK,
	combout => \CLOCK~combout\);

-- Location: CLKCTRL_G15
\CLOCK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~clkctrl_outclk\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y1_N4
\instancia_controladora|estado_atual.S1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|estado_atual.S1~0_combout\ = !\instancia_controladora|estado_atual.S1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_controladora|estado_atual.S1~regout\,
	combout => \instancia_controladora|estado_atual.S1~0_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G14
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

-- Location: LCFF_X32_Y1_N5
\instancia_controladora|estado_atual.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|estado_atual.S1~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_controladora|estado_atual.S1~regout\);

-- Location: LCFF_X32_Y1_N29
\instance_datapath|instancia_Reg_E|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \E~combout\(2),
	sload => VCC,
	ena => \instancia_controladora|ALT_INV_estado_atual.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_E|Q\(2));

-- Location: LCCOMB_X30_Y1_N30
\instancia_controladora|estado_atual.S0~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|estado_atual.S0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \instancia_controladora|estado_atual.S0~feeder_combout\);

-- Location: LCFF_X30_Y1_N31
\instancia_controladora|estado_atual.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|estado_atual.S0~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_controladora|estado_atual.S0~regout\);

-- Location: LCFF_X31_Y1_N1
\instance_datapath|instancia_Reg_MA|var1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \instance_datapath|instancia_Reg_E|Q\(2),
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var1\(2));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y1_N30
\instance_datapath|instancia_Reg_E|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_E|Q[1]~feeder_combout\ = \E~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~combout\(1),
	combout => \instance_datapath|instancia_Reg_E|Q[1]~feeder_combout\);

-- Location: LCFF_X32_Y1_N31
\instance_datapath|instancia_Reg_E|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Reg_E|Q[1]~feeder_combout\,
	ena => \instancia_controladora|ALT_INV_estado_atual.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_E|Q\(1));

-- Location: LCCOMB_X31_Y1_N12
\instance_datapath|instancia_Reg_MA|var1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|var1[1]~feeder_combout\ = \instance_datapath|instancia_Reg_E|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_datapath|instancia_Reg_E|Q\(1),
	combout => \instance_datapath|instancia_Reg_MA|var1[1]~feeder_combout\);

-- Location: LCFF_X31_Y1_N13
\instance_datapath|instancia_Reg_MA|var1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Reg_MA|var1[1]~feeder_combout\,
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var1\(1));

-- Location: LCFF_X31_Y1_N31
\instance_datapath|instancia_Reg_MA|var2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \instance_datapath|instancia_Reg_MA|var1\(1),
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var2\(1));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y1_N8
\instance_datapath|instancia_Reg_E|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_E|Q[0]~feeder_combout\ = \E~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~combout\(0),
	combout => \instance_datapath|instancia_Reg_E|Q[0]~feeder_combout\);

-- Location: LCFF_X32_Y1_N9
\instance_datapath|instancia_Reg_E|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Reg_E|Q[0]~feeder_combout\,
	ena => \instancia_controladora|ALT_INV_estado_atual.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_E|Q\(0));

-- Location: LCFF_X31_Y1_N17
\instance_datapath|instancia_Reg_MA|var1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \instance_datapath|instancia_Reg_E|Q\(0),
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var1\(0));

-- Location: LCCOMB_X31_Y1_N14
\instance_datapath|instancia_Reg_MA|var2[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|var2[0]~feeder_combout\ = \instance_datapath|instancia_Reg_MA|var1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_datapath|instancia_Reg_MA|var1\(0),
	combout => \instance_datapath|instancia_Reg_MA|var2[0]~feeder_combout\);

-- Location: LCFF_X31_Y1_N15
\instance_datapath|instancia_Reg_MA|var2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Reg_MA|var2[0]~feeder_combout\,
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var2\(0));

-- Location: LCCOMB_X31_Y1_N0
\instance_datapath|instancia_Reg_MA|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|Add0~0_combout\ = (\instance_datapath|instancia_Reg_MA|var1\(0) & (\instance_datapath|instancia_Reg_MA|var2\(0) $ (VCC))) # (!\instance_datapath|instancia_Reg_MA|var1\(0) & (\instance_datapath|instancia_Reg_MA|var2\(0) 
-- & VCC))
-- \instance_datapath|instancia_Reg_MA|Add0~1\ = CARRY((\instance_datapath|instancia_Reg_MA|var1\(0) & \instance_datapath|instancia_Reg_MA|var2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|var1\(0),
	datab => \instance_datapath|instancia_Reg_MA|var2\(0),
	datad => VCC,
	combout => \instance_datapath|instancia_Reg_MA|Add0~0_combout\,
	cout => \instance_datapath|instancia_Reg_MA|Add0~1\);

-- Location: LCCOMB_X31_Y1_N2
\instance_datapath|instancia_Reg_MA|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|Add0~2_combout\ = (\instance_datapath|instancia_Reg_MA|var1\(1) & ((\instance_datapath|instancia_Reg_MA|var2\(1) & (\instance_datapath|instancia_Reg_MA|Add0~1\ & VCC)) # (!\instance_datapath|instancia_Reg_MA|var2\(1) & 
-- (!\instance_datapath|instancia_Reg_MA|Add0~1\)))) # (!\instance_datapath|instancia_Reg_MA|var1\(1) & ((\instance_datapath|instancia_Reg_MA|var2\(1) & (!\instance_datapath|instancia_Reg_MA|Add0~1\)) # (!\instance_datapath|instancia_Reg_MA|var2\(1) & 
-- ((\instance_datapath|instancia_Reg_MA|Add0~1\) # (GND)))))
-- \instance_datapath|instancia_Reg_MA|Add0~3\ = CARRY((\instance_datapath|instancia_Reg_MA|var1\(1) & (!\instance_datapath|instancia_Reg_MA|var2\(1) & !\instance_datapath|instancia_Reg_MA|Add0~1\)) # (!\instance_datapath|instancia_Reg_MA|var1\(1) & 
-- ((!\instance_datapath|instancia_Reg_MA|Add0~1\) # (!\instance_datapath|instancia_Reg_MA|var2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|var1\(1),
	datab => \instance_datapath|instancia_Reg_MA|var2\(1),
	datad => VCC,
	cin => \instance_datapath|instancia_Reg_MA|Add0~1\,
	combout => \instance_datapath|instancia_Reg_MA|Add0~2_combout\,
	cout => \instance_datapath|instancia_Reg_MA|Add0~3\);

-- Location: LCCOMB_X31_Y1_N4
\instance_datapath|instancia_Reg_MA|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|Add0~4_combout\ = ((\instance_datapath|instancia_Reg_MA|var2\(2) $ (\instance_datapath|instancia_Reg_MA|var1\(2) $ (!\instance_datapath|instancia_Reg_MA|Add0~3\)))) # (GND)
-- \instance_datapath|instancia_Reg_MA|Add0~5\ = CARRY((\instance_datapath|instancia_Reg_MA|var2\(2) & ((\instance_datapath|instancia_Reg_MA|var1\(2)) # (!\instance_datapath|instancia_Reg_MA|Add0~3\))) # (!\instance_datapath|instancia_Reg_MA|var2\(2) & 
-- (\instance_datapath|instancia_Reg_MA|var1\(2) & !\instance_datapath|instancia_Reg_MA|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|var2\(2),
	datab => \instance_datapath|instancia_Reg_MA|var1\(2),
	datad => VCC,
	cin => \instance_datapath|instancia_Reg_MA|Add0~3\,
	combout => \instance_datapath|instancia_Reg_MA|Add0~4_combout\,
	cout => \instance_datapath|instancia_Reg_MA|Add0~5\);

-- Location: LCCOMB_X31_Y1_N18
\instance_datapath|instancia_Reg_MA|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|Add2~1_cout\ = CARRY((\instance_datapath|instancia_Reg_MA|Add1~0_combout\ & \instance_datapath|instancia_Reg_MA|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|Add1~0_combout\,
	datab => \instance_datapath|instancia_Reg_MA|Add0~0_combout\,
	datad => VCC,
	cout => \instance_datapath|instancia_Reg_MA|Add2~1_cout\);

-- Location: LCCOMB_X31_Y1_N20
\instance_datapath|instancia_Reg_MA|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|Add2~3_cout\ = CARRY((\instance_datapath|instancia_Reg_MA|Add1~2_combout\ & (!\instance_datapath|instancia_Reg_MA|Add0~2_combout\ & !\instance_datapath|instancia_Reg_MA|Add2~1_cout\)) # 
-- (!\instance_datapath|instancia_Reg_MA|Add1~2_combout\ & ((!\instance_datapath|instancia_Reg_MA|Add2~1_cout\) # (!\instance_datapath|instancia_Reg_MA|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|Add1~2_combout\,
	datab => \instance_datapath|instancia_Reg_MA|Add0~2_combout\,
	datad => VCC,
	cin => \instance_datapath|instancia_Reg_MA|Add2~1_cout\,
	cout => \instance_datapath|instancia_Reg_MA|Add2~3_cout\);

-- Location: LCCOMB_X31_Y1_N22
\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ = ((\instance_datapath|instancia_Reg_MA|Add1~4_combout\ $ (\instance_datapath|instancia_Reg_MA|Add0~4_combout\ $ (!\instance_datapath|instancia_Reg_MA|Add2~3_cout\)))) # (GND)
-- \instance_datapath|instancia_Reg_MA|OUTPUT[0]~1\ = CARRY((\instance_datapath|instancia_Reg_MA|Add1~4_combout\ & ((\instance_datapath|instancia_Reg_MA|Add0~4_combout\) # (!\instance_datapath|instancia_Reg_MA|Add2~3_cout\))) # 
-- (!\instance_datapath|instancia_Reg_MA|Add1~4_combout\ & (\instance_datapath|instancia_Reg_MA|Add0~4_combout\ & !\instance_datapath|instancia_Reg_MA|Add2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|Add1~4_combout\,
	datab => \instance_datapath|instancia_Reg_MA|Add0~4_combout\,
	datad => VCC,
	cin => \instance_datapath|instancia_Reg_MA|Add2~3_cout\,
	combout => \instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\,
	cout => \instance_datapath|instancia_Reg_MA|OUTPUT[0]~1\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y1_N26
\instance_datapath|instancia_Reg_E|Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_E|Q[3]~feeder_combout\ = \E~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \E~combout\(3),
	combout => \instance_datapath|instancia_Reg_E|Q[3]~feeder_combout\);

-- Location: LCFF_X32_Y1_N27
\instance_datapath|instancia_Reg_E|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Reg_E|Q[3]~feeder_combout\,
	ena => \instancia_controladora|ALT_INV_estado_atual.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_E|Q\(3));

-- Location: LCFF_X31_Y1_N5
\instance_datapath|instancia_Reg_MA|var1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \instance_datapath|instancia_Reg_E|Q\(3),
	aclr => \instancia_controladora|ALT_INV_estado_atual.S0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_MA|var1\(3));

-- Location: LCCOMB_X31_Y1_N6
\instance_datapath|instancia_Reg_MA|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|Add0~6_combout\ = (\instance_datapath|instancia_Reg_MA|var2\(3) & ((\instance_datapath|instancia_Reg_MA|var1\(3) & (\instance_datapath|instancia_Reg_MA|Add0~5\ & VCC)) # (!\instance_datapath|instancia_Reg_MA|var1\(3) & 
-- (!\instance_datapath|instancia_Reg_MA|Add0~5\)))) # (!\instance_datapath|instancia_Reg_MA|var2\(3) & ((\instance_datapath|instancia_Reg_MA|var1\(3) & (!\instance_datapath|instancia_Reg_MA|Add0~5\)) # (!\instance_datapath|instancia_Reg_MA|var1\(3) & 
-- ((\instance_datapath|instancia_Reg_MA|Add0~5\) # (GND)))))
-- \instance_datapath|instancia_Reg_MA|Add0~7\ = CARRY((\instance_datapath|instancia_Reg_MA|var2\(3) & (!\instance_datapath|instancia_Reg_MA|var1\(3) & !\instance_datapath|instancia_Reg_MA|Add0~5\)) # (!\instance_datapath|instancia_Reg_MA|var2\(3) & 
-- ((!\instance_datapath|instancia_Reg_MA|Add0~5\) # (!\instance_datapath|instancia_Reg_MA|var1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|var2\(3),
	datab => \instance_datapath|instancia_Reg_MA|var1\(3),
	datad => VCC,
	cin => \instance_datapath|instancia_Reg_MA|Add0~5\,
	combout => \instance_datapath|instancia_Reg_MA|Add0~6_combout\,
	cout => \instance_datapath|instancia_Reg_MA|Add0~7\);

-- Location: LCCOMB_X31_Y1_N24
\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\ = (\instance_datapath|instancia_Reg_MA|Add1~6_combout\ & ((\instance_datapath|instancia_Reg_MA|Add0~6_combout\ & (\instance_datapath|instancia_Reg_MA|OUTPUT[0]~1\ & VCC)) # 
-- (!\instance_datapath|instancia_Reg_MA|Add0~6_combout\ & (!\instance_datapath|instancia_Reg_MA|OUTPUT[0]~1\)))) # (!\instance_datapath|instancia_Reg_MA|Add1~6_combout\ & ((\instance_datapath|instancia_Reg_MA|Add0~6_combout\ & 
-- (!\instance_datapath|instancia_Reg_MA|OUTPUT[0]~1\)) # (!\instance_datapath|instancia_Reg_MA|Add0~6_combout\ & ((\instance_datapath|instancia_Reg_MA|OUTPUT[0]~1\) # (GND)))))
-- \instance_datapath|instancia_Reg_MA|OUTPUT[1]~3\ = CARRY((\instance_datapath|instancia_Reg_MA|Add1~6_combout\ & (!\instance_datapath|instancia_Reg_MA|Add0~6_combout\ & !\instance_datapath|instancia_Reg_MA|OUTPUT[0]~1\)) # 
-- (!\instance_datapath|instancia_Reg_MA|Add1~6_combout\ & ((!\instance_datapath|instancia_Reg_MA|OUTPUT[0]~1\) # (!\instance_datapath|instancia_Reg_MA|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|Add1~6_combout\,
	datab => \instance_datapath|instancia_Reg_MA|Add0~6_combout\,
	datad => VCC,
	cin => \instance_datapath|instancia_Reg_MA|OUTPUT[0]~1\,
	combout => \instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\,
	cout => \instance_datapath|instancia_Reg_MA|OUTPUT[1]~3\);

-- Location: LCCOMB_X32_Y1_N18
\instance_datapath|instancia_comparador|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_comparador|LessThan1~1_combout\ = (\instance_datapath|instancia_Reg_E|Q\(1) & (\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ & (!\instance_datapath|instancia_Reg_E|Q\(0) & 
-- \instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\))) # (!\instance_datapath|instancia_Reg_E|Q\(1) & ((\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\) # ((\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ & 
-- !\instance_datapath|instancia_Reg_E|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_E|Q\(1),
	datab => \instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instance_datapath|instancia_Reg_E|Q\(0),
	datad => \instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instancia_comparador|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y1_N8
\instance_datapath|instancia_Reg_MA|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|Add0~8_combout\ = !\instance_datapath|instancia_Reg_MA|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \instance_datapath|instancia_Reg_MA|Add0~7\,
	combout => \instance_datapath|instancia_Reg_MA|Add0~8_combout\);

-- Location: LCCOMB_X31_Y1_N26
\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ = ((\instance_datapath|instancia_Reg_MA|Add1~8_combout\ $ (\instance_datapath|instancia_Reg_MA|Add0~8_combout\ $ (!\instance_datapath|instancia_Reg_MA|OUTPUT[1]~3\)))) # (GND)
-- \instance_datapath|instancia_Reg_MA|OUTPUT[2]~5\ = CARRY((\instance_datapath|instancia_Reg_MA|Add1~8_combout\ & ((\instance_datapath|instancia_Reg_MA|Add0~8_combout\) # (!\instance_datapath|instancia_Reg_MA|OUTPUT[1]~3\))) # 
-- (!\instance_datapath|instancia_Reg_MA|Add1~8_combout\ & (\instance_datapath|instancia_Reg_MA|Add0~8_combout\ & !\instance_datapath|instancia_Reg_MA|OUTPUT[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|Add1~8_combout\,
	datab => \instance_datapath|instancia_Reg_MA|Add0~8_combout\,
	datad => VCC,
	cin => \instance_datapath|instancia_Reg_MA|OUTPUT[1]~3\,
	combout => \instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\,
	cout => \instance_datapath|instancia_Reg_MA|OUTPUT[2]~5\);

-- Location: LCCOMB_X31_Y1_N28
\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ = \instance_datapath|instancia_Reg_MA|OUTPUT[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \instance_datapath|instancia_Reg_MA|OUTPUT[2]~5\,
	combout => \instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\);

-- Location: LCCOMB_X32_Y1_N16
\instance_datapath|instancia_comparador|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_comparador|LessThan1~0_combout\ = (\instance_datapath|instancia_Reg_E|Q\(3) & (!\instance_datapath|instancia_Reg_E|Q\(2) & (\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ & 
-- \instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\))) # (!\instance_datapath|instancia_Reg_E|Q\(3) & ((\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\) # ((!\instance_datapath|instancia_Reg_E|Q\(2) & 
-- \instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_E|Q\(2),
	datab => \instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\,
	datac => \instance_datapath|instancia_Reg_E|Q\(3),
	datad => \instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\,
	combout => \instance_datapath|instancia_comparador|LessThan1~0_combout\);

-- Location: LCCOMB_X32_Y1_N14
\instance_datapath|instancia_comparador|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_comparador|LessThan0~1_combout\ = (\instance_datapath|instancia_Reg_E|Q\(3) & (\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ & (\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ $ 
-- (!\instance_datapath|instancia_Reg_E|Q\(2))))) # (!\instance_datapath|instancia_Reg_E|Q\(3) & (!\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ & (\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ $ 
-- (!\instance_datapath|instancia_Reg_E|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_E|Q\(3),
	datab => \instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\,
	datac => \instance_datapath|instancia_Reg_E|Q\(2),
	datad => \instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\,
	combout => \instance_datapath|instancia_comparador|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y1_N0
\instance_datapath|instancia_comparador|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_comparador|LessThan0~2_combout\ = (\instance_datapath|instancia_Reg_E|Q\(3) & (((!\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ & \instance_datapath|instancia_Reg_E|Q\(2))) # 
-- (!\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\))) # (!\instance_datapath|instancia_Reg_E|Q\(3) & (!\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ & (\instance_datapath|instancia_Reg_E|Q\(2) & 
-- !\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_E|Q\(3),
	datab => \instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\,
	datac => \instance_datapath|instancia_Reg_E|Q\(2),
	datad => \instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\,
	combout => \instance_datapath|instancia_comparador|LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y1_N6
\instancia_controladora|proximo_estado.S4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|proximo_estado.S4~0_combout\ = (\instancia_controladora|estado_atual.S1~regout\ & (!\instance_datapath|instancia_comparador|LessThan0~2_combout\ & ((!\instance_datapath|instancia_comparador|LessThan0~1_combout\) # 
-- (!\instance_datapath|instancia_comparador|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_comparador|LessThan0~0_combout\,
	datab => \instancia_controladora|estado_atual.S1~regout\,
	datac => \instance_datapath|instancia_comparador|LessThan0~1_combout\,
	datad => \instance_datapath|instancia_comparador|LessThan0~2_combout\,
	combout => \instancia_controladora|proximo_estado.S4~0_combout\);

-- Location: LCCOMB_X32_Y1_N10
\instancia_controladora|proximo_estado.S4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|proximo_estado.S4~1_combout\ = (!\instance_datapath|instancia_comparador|LessThan1~0_combout\ & (\instancia_controladora|proximo_estado.S4~0_combout\ & ((!\instance_datapath|instancia_comparador|LessThan1~1_combout\) # 
-- (!\instance_datapath|instancia_comparador|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_comparador|LessThan0~1_combout\,
	datab => \instance_datapath|instancia_comparador|LessThan1~1_combout\,
	datac => \instance_datapath|instancia_comparador|LessThan1~0_combout\,
	datad => \instancia_controladora|proximo_estado.S4~0_combout\,
	combout => \instancia_controladora|proximo_estado.S4~1_combout\);

-- Location: LCFF_X32_Y1_N11
\instancia_controladora|estado_atual.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|proximo_estado.S4~1_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_controladora|estado_atual.S4~regout\);

-- Location: LCCOMB_X32_Y1_N20
\instancia_controladora|proximo_estado.S3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|proximo_estado.S3~0_combout\ = (\instancia_controladora|proximo_estado.S4~0_combout\ & ((\instance_datapath|instancia_comparador|LessThan1~0_combout\) # ((\instance_datapath|instancia_comparador|LessThan0~1_combout\ & 
-- \instance_datapath|instancia_comparador|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_comparador|LessThan0~1_combout\,
	datab => \instance_datapath|instancia_comparador|LessThan1~1_combout\,
	datac => \instance_datapath|instancia_comparador|LessThan1~0_combout\,
	datad => \instancia_controladora|proximo_estado.S4~0_combout\,
	combout => \instancia_controladora|proximo_estado.S3~0_combout\);

-- Location: LCFF_X32_Y1_N21
\instancia_controladora|estado_atual.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|proximo_estado.S3~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_controladora|estado_atual.S3~regout\);

-- Location: LCCOMB_X32_Y1_N12
\instancia_controladora|Subindo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Subindo~0_combout\ = (!\instancia_controladora|estado_atual.S4~regout\ & !\instancia_controladora|estado_atual.S3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_controladora|estado_atual.S4~regout\,
	datac => \instancia_controladora|estado_atual.S3~regout\,
	combout => \instancia_controladora|Subindo~0_combout\);

-- Location: LCFF_X32_Y1_N13
\instance_datapath|instancia_Reg_SD|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|Subindo~0_combout\,
	ena => \instancia_controladora|ALT_INV_estado_atual.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_SD|Q\(1));

-- Location: LCCOMB_X32_Y1_N22
\instancia_controladora|proximo_estado.S2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|proximo_estado.S2~0_combout\ = (\instancia_controladora|estado_atual.S1~regout\ & ((\instance_datapath|instancia_comparador|LessThan0~2_combout\) # ((\instance_datapath|instancia_comparador|LessThan0~0_combout\ & 
-- \instance_datapath|instancia_comparador|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_comparador|LessThan0~0_combout\,
	datab => \instancia_controladora|estado_atual.S1~regout\,
	datac => \instance_datapath|instancia_comparador|LessThan0~1_combout\,
	datad => \instance_datapath|instancia_comparador|LessThan0~2_combout\,
	combout => \instancia_controladora|proximo_estado.S2~0_combout\);

-- Location: LCFF_X32_Y1_N23
\instancia_controladora|estado_atual.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|proximo_estado.S2~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_controladora|estado_atual.S2~regout\);

-- Location: LCCOMB_X32_Y1_N2
\instancia_controladora|Descendo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Descendo~0_combout\ = (!\instancia_controladora|estado_atual.S4~regout\ & !\instancia_controladora|estado_atual.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_controladora|estado_atual.S4~regout\,
	datac => \instancia_controladora|estado_atual.S2~regout\,
	combout => \instancia_controladora|Descendo~0_combout\);

-- Location: LCFF_X32_Y1_N3
\instance_datapath|instancia_Reg_SD|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|Descendo~0_combout\,
	ena => \instancia_controladora|ALT_INV_estado_atual.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_SD|Q\(0));

-- Location: LCCOMB_X30_Y1_N16
\instance_datapath|instancia_Bcd_7seg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Bcd_7seg|Mux6~0_combout\ = (\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ & (\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ & (\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ $ 
-- (\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\)))) # (!\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ & (!\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\ & (\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ $ 
-- (\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\,
	datab => \instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\,
	datad => \instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instancia_Bcd_7seg|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y1_N28
\instance_datapath|instancia_Bcd_7seg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Bcd_7seg|Mux5~0_combout\ = (\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ & ((\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ & ((\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\))) # 
-- (!\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ & (\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\)))) # (!\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ & (\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ & 
-- (\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ $ (\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\,
	datab => \instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\,
	datad => \instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instancia_Bcd_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y1_N4
\instance_datapath|instancia_Bcd_7seg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Bcd_7seg|Mux4~0_combout\ = (\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ & (\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ & ((\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\) # 
-- (!\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\)))) # (!\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ & (!\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ & (!\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ & 
-- \instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\,
	datab => \instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\,
	datad => \instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instancia_Bcd_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y1_N26
\instance_datapath|instancia_Bcd_7seg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Bcd_7seg|Mux3~0_combout\ = (\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\ & ((\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ & ((\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\))) # 
-- (!\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ & (\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ & !\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\)))) # (!\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\ & 
-- (!\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ & (\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ $ (\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\,
	datab => \instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\,
	datad => \instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instancia_Bcd_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y1_N18
\instance_datapath|instancia_Bcd_7seg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Bcd_7seg|Mux2~0_combout\ = (\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\ & (!\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ & (\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\))) # 
-- (!\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\ & ((\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ & (!\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\)) # (!\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ & 
-- ((\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\,
	datab => \instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\,
	datad => \instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instancia_Bcd_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y1_N10
\instance_datapath|instancia_Bcd_7seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Bcd_7seg|Mux1~0_combout\ = (\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ & (\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ $ (((\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\) # 
-- (!\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\))))) # (!\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ & (!\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ & (\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\ & 
-- !\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datab => \instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\,
	datac => \instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\,
	datad => \instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\,
	combout => \instance_datapath|instancia_Bcd_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y1_N20
\instance_datapath|instancia_Bcd_7seg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Bcd_7seg|Mux0~0_combout\ = (\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ & ((\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\) # (\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\ $ 
-- (\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\)))) # (!\instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\ & ((\instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\) # (\instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\ $ 
-- (\instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_MA|OUTPUT[3]~6_combout\,
	datab => \instance_datapath|instancia_Reg_MA|OUTPUT[0]~0_combout\,
	datac => \instance_datapath|instancia_Reg_MA|OUTPUT[2]~4_combout\,
	datad => \instance_datapath|instancia_Reg_MA|OUTPUT[1]~2_combout\,
	combout => \instance_datapath|instancia_Bcd_7seg|Mux0~0_combout\);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instancia_Reg_SD|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sobe);

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance_datapath|instancia_Reg_SD|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Desce);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[0]~I\ : cycloneii_io
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
	datain => \instance_datapath|instancia_Bcd_7seg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[1]~I\ : cycloneii_io
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
	datain => \instance_datapath|instancia_Bcd_7seg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[2]~I\ : cycloneii_io
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
	datain => \instance_datapath|instancia_Bcd_7seg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[3]~I\ : cycloneii_io
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
	datain => \instance_datapath|instancia_Bcd_7seg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[4]~I\ : cycloneii_io
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
	datain => \instance_datapath|instancia_Bcd_7seg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[5]~I\ : cycloneii_io
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
	datain => \instance_datapath|instancia_Bcd_7seg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[6]~I\ : cycloneii_io
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
	datain => \instance_datapath|instancia_Bcd_7seg|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(6));
END structure;


