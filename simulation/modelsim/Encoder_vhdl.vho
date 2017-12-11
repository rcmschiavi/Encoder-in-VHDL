-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "12/11/2017 15:16:40"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	trabalho IS
    PORT (
	dir : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	clk : IN std_logic;
	cont : OUT std_logic_vector(6 DOWNTO 0)
	);
END trabalho;

-- Design Ports Information
-- dir	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF trabalho IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dir : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_cont : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \dir~output_o\ : std_logic;
SIGNAL \cont[6]~output_o\ : std_logic;
SIGNAL \cont[5]~output_o\ : std_logic;
SIGNAL \cont[4]~output_o\ : std_logic;
SIGNAL \cont[3]~output_o\ : std_logic;
SIGNAL \cont[2]~output_o\ : std_logic;
SIGNAL \cont[1]~output_o\ : std_logic;
SIGNAL \cont[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst|analise:b_ant~q\ : std_logic;
SIGNAL \inst|b_ant~0_combout\ : std_logic;
SIGNAL \inst|a_ant~0_combout\ : std_logic;
SIGNAL \inst|analise:a_ant~q\ : std_logic;
SIGNAL \inst|analise~0_combout\ : std_logic;
SIGNAL \inst|dir_si~0_combout\ : std_logic;
SIGNAL \inst|dir_si~q\ : std_logic;
SIGNAL \inst|ve_mov~0_combout\ : std_logic;
SIGNAL \inst|ve_mov~1_combout\ : std_logic;
SIGNAL \inst|analise:ve_mov~q\ : std_logic;
SIGNAL \inst|contador[0]~19_combout\ : std_logic;
SIGNAL \inst|contador[1]~6_combout\ : std_logic;
SIGNAL \inst|contador[6]~18_combout\ : std_logic;
SIGNAL \inst|contador[1]~7\ : std_logic;
SIGNAL \inst|contador[2]~8_combout\ : std_logic;
SIGNAL \inst|contador[2]~9\ : std_logic;
SIGNAL \inst|contador[3]~10_combout\ : std_logic;
SIGNAL \inst|contador[3]~11\ : std_logic;
SIGNAL \inst|contador[4]~12_combout\ : std_logic;
SIGNAL \inst|contador[4]~13\ : std_logic;
SIGNAL \inst|contador[5]~14_combout\ : std_logic;
SIGNAL \inst|contador[5]~15\ : std_logic;
SIGNAL \inst|contador[6]~16_combout\ : std_logic;
SIGNAL \inst|contador\ : std_logic_vector(6 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

dir <= ww_dir;
ww_A <= A;
ww_B <= B;
ww_clk <= clk;
cont <= ww_cont;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X69_Y54_N23
\dir~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dir_si~q\,
	devoe => ww_devoe,
	o => \dir~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\cont[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|contador\(6),
	devoe => ww_devoe,
	o => \cont[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\cont[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|contador\(5),
	devoe => ww_devoe,
	o => \cont[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\cont[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|contador\(4),
	devoe => ww_devoe,
	o => \cont[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\cont[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|contador\(3),
	devoe => ww_devoe,
	o => \cont[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\cont[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|contador\(2),
	devoe => ww_devoe,
	o => \cont[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\cont[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|contador\(1),
	devoe => ww_devoe,
	o => \cont[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\cont[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|contador\(0),
	devoe => ww_devoe,
	o => \cont[0]~output_o\);

-- Location: IOIBUF_X0_Y23_N22
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N22
\B~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\A~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: FF_X51_Y53_N9
\inst|analise:b_ant\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|b_ant~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|analise:b_ant~q\);

-- Location: LCCOMB_X51_Y53_N8
\inst|b_ant~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|b_ant~0_combout\ = (\A~input_o\ & ((\inst|analise:b_ant~q\) # (\B~input_o\))) # (!\A~input_o\ & (\inst|analise:b_ant~q\ & \B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datac => \inst|analise:b_ant~q\,
	datad => \B~input_o\,
	combout => \inst|b_ant~0_combout\);

-- Location: LCCOMB_X51_Y53_N2
\inst|a_ant~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|a_ant~0_combout\ = (\A~input_o\ & ((\inst|analise:a_ant~q\) # (\B~input_o\))) # (!\A~input_o\ & (\inst|analise:a_ant~q\ & \B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datac => \inst|analise:a_ant~q\,
	datad => \B~input_o\,
	combout => \inst|a_ant~0_combout\);

-- Location: FF_X51_Y53_N3
\inst|analise:a_ant\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|a_ant~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|analise:a_ant~q\);

-- Location: LCCOMB_X51_Y53_N16
\inst|analise~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|analise~0_combout\ = (\B~input_o\ & (!\A~input_o\ & \inst|analise:a_ant~q\)) # (!\B~input_o\ & (\A~input_o\ & !\inst|analise:a_ant~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datac => \A~input_o\,
	datad => \inst|analise:a_ant~q\,
	combout => \inst|analise~0_combout\);

-- Location: LCCOMB_X51_Y53_N12
\inst|dir_si~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|dir_si~0_combout\ = (!\inst|analise~0_combout\ & ((\inst|dir_si~q\) # (\B~input_o\ $ (\inst|b_ant~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \inst|b_ant~0_combout\,
	datac => \inst|dir_si~q\,
	datad => \inst|analise~0_combout\,
	combout => \inst|dir_si~0_combout\);

-- Location: FF_X51_Y53_N13
\inst|dir_si\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|dir_si~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dir_si~q\);

-- Location: LCCOMB_X51_Y53_N14
\inst|ve_mov~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ve_mov~0_combout\ = (\B~input_o\ $ (!\A~input_o\)) # (!\inst|analise:ve_mov~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datac => \A~input_o\,
	datad => \inst|analise:ve_mov~q\,
	combout => \inst|ve_mov~0_combout\);

-- Location: LCCOMB_X51_Y53_N6
\inst|ve_mov~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ve_mov~1_combout\ = ((\inst|analise~0_combout\) # (\B~input_o\ $ (\inst|b_ant~0_combout\))) # (!\inst|ve_mov~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \inst|ve_mov~0_combout\,
	datac => \inst|b_ant~0_combout\,
	datad => \inst|analise~0_combout\,
	combout => \inst|ve_mov~1_combout\);

-- Location: FF_X51_Y53_N7
\inst|analise:ve_mov\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ve_mov~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|analise:ve_mov~q\);

-- Location: LCCOMB_X51_Y53_N10
\inst|contador[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador[0]~19_combout\ = \inst|contador\(0) $ (((\inst|analise:ve_mov~q\ & (\A~input_o\ $ (!\B~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \B~input_o\,
	datac => \inst|contador\(0),
	datad => \inst|analise:ve_mov~q\,
	combout => \inst|contador[0]~19_combout\);

-- Location: FF_X51_Y53_N11
\inst|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(0));

-- Location: LCCOMB_X51_Y53_N18
\inst|contador[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador[1]~6_combout\ = (\inst|contador\(0) & (\inst|contador\(1) $ (VCC))) # (!\inst|contador\(0) & (\inst|contador\(1) & VCC))
-- \inst|contador[1]~7\ = CARRY((\inst|contador\(0) & \inst|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(0),
	datab => \inst|contador\(1),
	datad => VCC,
	combout => \inst|contador[1]~6_combout\,
	cout => \inst|contador[1]~7\);

-- Location: LCCOMB_X51_Y53_N0
\inst|contador[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador[6]~18_combout\ = (\inst|analise:ve_mov~q\ & (\B~input_o\ $ (!\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datac => \A~input_o\,
	datad => \inst|analise:ve_mov~q\,
	combout => \inst|contador[6]~18_combout\);

-- Location: FF_X51_Y53_N19
\inst|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador[1]~6_combout\,
	ena => \inst|contador[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(1));

-- Location: LCCOMB_X51_Y53_N20
\inst|contador[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador[2]~8_combout\ = (\inst|contador\(2) & (!\inst|contador[1]~7\)) # (!\inst|contador\(2) & ((\inst|contador[1]~7\) # (GND)))
-- \inst|contador[2]~9\ = CARRY((!\inst|contador[1]~7\) # (!\inst|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(2),
	datad => VCC,
	cin => \inst|contador[1]~7\,
	combout => \inst|contador[2]~8_combout\,
	cout => \inst|contador[2]~9\);

-- Location: FF_X51_Y53_N21
\inst|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador[2]~8_combout\,
	ena => \inst|contador[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(2));

-- Location: LCCOMB_X51_Y53_N22
\inst|contador[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador[3]~10_combout\ = (\inst|contador\(3) & (\inst|contador[2]~9\ $ (GND))) # (!\inst|contador\(3) & (!\inst|contador[2]~9\ & VCC))
-- \inst|contador[3]~11\ = CARRY((\inst|contador\(3) & !\inst|contador[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(3),
	datad => VCC,
	cin => \inst|contador[2]~9\,
	combout => \inst|contador[3]~10_combout\,
	cout => \inst|contador[3]~11\);

-- Location: FF_X51_Y53_N23
\inst|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador[3]~10_combout\,
	ena => \inst|contador[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(3));

-- Location: LCCOMB_X51_Y53_N24
\inst|contador[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador[4]~12_combout\ = (\inst|contador\(4) & (!\inst|contador[3]~11\)) # (!\inst|contador\(4) & ((\inst|contador[3]~11\) # (GND)))
-- \inst|contador[4]~13\ = CARRY((!\inst|contador[3]~11\) # (!\inst|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|contador\(4),
	datad => VCC,
	cin => \inst|contador[3]~11\,
	combout => \inst|contador[4]~12_combout\,
	cout => \inst|contador[4]~13\);

-- Location: FF_X51_Y53_N25
\inst|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador[4]~12_combout\,
	ena => \inst|contador[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(4));

-- Location: LCCOMB_X51_Y53_N26
\inst|contador[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador[5]~14_combout\ = (\inst|contador\(5) & (\inst|contador[4]~13\ $ (GND))) # (!\inst|contador\(5) & (!\inst|contador[4]~13\ & VCC))
-- \inst|contador[5]~15\ = CARRY((\inst|contador\(5) & !\inst|contador[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|contador\(5),
	datad => VCC,
	cin => \inst|contador[4]~13\,
	combout => \inst|contador[5]~14_combout\,
	cout => \inst|contador[5]~15\);

-- Location: FF_X51_Y53_N27
\inst|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador[5]~14_combout\,
	ena => \inst|contador[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(5));

-- Location: LCCOMB_X51_Y53_N28
\inst|contador[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|contador[6]~16_combout\ = \inst|contador[5]~15\ $ (\inst|contador\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|contador\(6),
	cin => \inst|contador[5]~15\,
	combout => \inst|contador[6]~16_combout\);

-- Location: FF_X51_Y53_N29
\inst|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|contador[6]~16_combout\,
	ena => \inst|contador[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|contador\(6));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_dir <= \dir~output_o\;

ww_cont(6) <= \cont[6]~output_o\;

ww_cont(5) <= \cont[5]~output_o\;

ww_cont(4) <= \cont[4]~output_o\;

ww_cont(3) <= \cont[3]~output_o\;

ww_cont(2) <= \cont[2]~output_o\;

ww_cont(1) <= \cont[1]~output_o\;

ww_cont(0) <= \cont[0]~output_o\;
END structure;


