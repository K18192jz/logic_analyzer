-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "09/28/2026 20:05:19"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	logic_analyzer IS
    PORT (
	CLK_50 : IN std_logic;
	B : IN std_logic;
	nRST : IN std_logic;
	TX : OUT std_logic;
	RX : IN std_logic
	);
END logic_analyzer;

-- Design Ports Information
-- B	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TX	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- nRST	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK_50	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF logic_analyzer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50 : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_nRST : std_logic;
SIGNAL ww_TX : std_logic;
SIGNAL ww_RX : std_logic;
SIGNAL \clk_pll|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk_pll|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart|RECIVED_RX~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart|CLK_baude_rate~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \nRST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B~input_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \CLK_50~input_o\ : std_logic;
SIGNAL \clk_pll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \nRST~input_o\ : std_logic;
SIGNAL \nRST~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart|try_tc:counter[1]~q\ : std_logic;
SIGNAL \uart|try_tc:counter[6]~q\ : std_logic;
SIGNAL \uart|Add0~3\ : std_logic;
SIGNAL \uart|Add0~4_combout\ : std_logic;
SIGNAL \uart|counter~1_combout\ : std_logic;
SIGNAL \uart|try_tc:counter[2]~q\ : std_logic;
SIGNAL \uart|Add0~5\ : std_logic;
SIGNAL \uart|Add0~6_combout\ : std_logic;
SIGNAL \uart|try_tc:counter[3]~q\ : std_logic;
SIGNAL \uart|Add0~7\ : std_logic;
SIGNAL \uart|Add0~8_combout\ : std_logic;
SIGNAL \uart|counter~5_combout\ : std_logic;
SIGNAL \uart|try_tc:counter[10]~q\ : std_logic;
SIGNAL \uart|Add0~13\ : std_logic;
SIGNAL \uart|Add0~14_combout\ : std_logic;
SIGNAL \uart|try_tc:counter[7]~q\ : std_logic;
SIGNAL \uart|Add0~15\ : std_logic;
SIGNAL \uart|Add0~17\ : std_logic;
SIGNAL \uart|Add0~18_combout\ : std_logic;
SIGNAL \uart|try_tc:counter[9]~q\ : std_logic;
SIGNAL \uart|Add0~19\ : std_logic;
SIGNAL \uart|Add0~20_combout\ : std_logic;
SIGNAL \uart|counter~2_combout\ : std_logic;
SIGNAL \uart|counter~3_combout\ : std_logic;
SIGNAL \uart|try_tc:counter[4]~q\ : std_logic;
SIGNAL \uart|Add0~9\ : std_logic;
SIGNAL \uart|Add0~10_combout\ : std_logic;
SIGNAL \uart|try_tc:counter[5]~q\ : std_logic;
SIGNAL \uart|Add0~11\ : std_logic;
SIGNAL \uart|Add0~12_combout\ : std_logic;
SIGNAL \uart|Equal0~1_combout\ : std_logic;
SIGNAL \uart|counter~4_combout\ : std_logic;
SIGNAL \uart|try_tc:counter[8]~q\ : std_logic;
SIGNAL \uart|Add0~16_combout\ : std_logic;
SIGNAL \uart|Equal0~2_combout\ : std_logic;
SIGNAL \uart|Add0~0_combout\ : std_logic;
SIGNAL \uart|counter~0_combout\ : std_logic;
SIGNAL \uart|try_tc:counter[0]~q\ : std_logic;
SIGNAL \uart|Add0~1\ : std_logic;
SIGNAL \uart|Add0~2_combout\ : std_logic;
SIGNAL \uart|Equal0~0_combout\ : std_logic;
SIGNAL \uart|Equal0~3_combout\ : std_logic;
SIGNAL \uart|CLK_baude_rate~q\ : std_logic;
SIGNAL \uart|CLK_baude_rate~clkctrl_outclk\ : std_logic;
SIGNAL \RX~input_o\ : std_logic;
SIGNAL \uart|buffer_string_RX~9_combout\ : std_logic;
SIGNAL \uart|buffer_string_RX~0_combout\ : std_logic;
SIGNAL \uart|buffer_string_RX~8_combout\ : std_logic;
SIGNAL \uart|buffer_string_RX~5_combout\ : std_logic;
SIGNAL \uart|buffer_string_RX~6_combout\ : std_logic;
SIGNAL \uart|buffer_string_RX~7_combout\ : std_logic;
SIGNAL \uart|buffer_string_RX~2_combout\ : std_logic;
SIGNAL \uart|buffer_string_RX~4_combout\ : std_logic;
SIGNAL \uart|buffer_string_RX~3_combout\ : std_logic;
SIGNAL \uart|buffer_string_RX~1_combout\ : std_logic;
SIGNAL \uart|RECIVED_RX~feeder_combout\ : std_logic;
SIGNAL \uart|RECIVED_RX~q\ : std_logic;
SIGNAL \uart|RECIVED_RX~clkctrl_outclk\ : std_logic;
SIGNAL \uart|RX_buffer_out[6]~8_combout\ : std_logic;
SIGNAL \uart|RX_buffer_out[7]~0_combout\ : std_logic;
SIGNAL \ammar[6]~1_combout\ : std_logic;
SIGNAL \uart|buffer_tx[7]~1_combout\ : std_logic;
SIGNAL \yoo:i[26]~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \i~16_combout\ : std_logic;
SIGNAL \yoo:i[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \i~15_combout\ : std_logic;
SIGNAL \yoo:i[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \i~14_combout\ : std_logic;
SIGNAL \yoo:i[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \i~13_combout\ : std_logic;
SIGNAL \yoo:i[3]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \i~12_combout\ : std_logic;
SIGNAL \yoo:i[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \i~11_combout\ : std_logic;
SIGNAL \yoo:i[5]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \i~10_combout\ : std_logic;
SIGNAL \yoo:i[6]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \yoo:i[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \i~9_combout\ : std_logic;
SIGNAL \yoo:i[8]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \yoo:i[9]~q\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \yoo:i[10]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \yoo:i[11]~q\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \i~8_combout\ : std_logic;
SIGNAL \yoo:i[12]~q\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \yoo:i[13]~q\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \i~7_combout\ : std_logic;
SIGNAL \yoo:i[14]~q\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \i~6_combout\ : std_logic;
SIGNAL \yoo:i[15]~q\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \yoo:i[16]~q\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \yoo:i[17]~q\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \yoo:i[18]~q\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \yoo:i[19]~q\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \i~5_combout\ : std_logic;
SIGNAL \yoo:i[20]~q\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \i~4_combout\ : std_logic;
SIGNAL \yoo:i[21]~q\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \i~3_combout\ : std_logic;
SIGNAL \yoo:i[22]~q\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \i~2_combout\ : std_logic;
SIGNAL \yoo:i[23]~q\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \yoo:i[24]~q\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \yoo:i[25]~q\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \i~17_combout\ : std_logic;
SIGNAL \yoo:i[27]~q\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \send_tx~q\ : std_logic;
SIGNAL \uart|start_the_process~feeder_combout\ : std_logic;
SIGNAL \uart|start_the_process~q\ : std_logic;
SIGNAL \uart|Add1~0_combout\ : std_logic;
SIGNAL \uart|Selector3~0_combout\ : std_logic;
SIGNAL \uart|Selector3~1_combout\ : std_logic;
SIGNAL \uart|state_tx.send_data_tx~q\ : std_logic;
SIGNAL \uart|try_tc:i[0]~0_combout\ : std_logic;
SIGNAL \uart|try_tc:i[2]~q\ : std_logic;
SIGNAL \uart|i~0_combout\ : std_logic;
SIGNAL \uart|try_tc:i[1]~q\ : std_logic;
SIGNAL \uart|i~1_combout\ : std_logic;
SIGNAL \uart|try_tc:i[0]~q\ : std_logic;
SIGNAL \uart|i~2_combout\ : std_logic;
SIGNAL \uart|try_tc:i[3]~q\ : std_logic;
SIGNAL \uart|Equal1~0_combout\ : std_logic;
SIGNAL \uart|Selector4~0_combout\ : std_logic;
SIGNAL \uart|state_tx.done_tx~q\ : std_logic;
SIGNAL \uart|startsend~0_combout\ : std_logic;
SIGNAL \uart|startsend~q\ : std_logic;
SIGNAL \uart|state_tx.wait_tx~0_combout\ : std_logic;
SIGNAL \uart|state_tx.wait_tx~q\ : std_logic;
SIGNAL \uart|Selector2~0_combout\ : std_logic;
SIGNAL \uart|state_tx.load_charecter_TX~q\ : std_logic;
SIGNAL \uart|RX_buffer_out[5]~5_combout\ : std_logic;
SIGNAL \ammar[5]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_buffer_out[4]~6_combout\ : std_logic;
SIGNAL \ammar[4]~feeder_combout\ : std_logic;
SIGNAL \uart|buffer_tx[5]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_buffer_out[3]~7_combout\ : std_logic;
SIGNAL \ammar[3]~feeder_combout\ : std_logic;
SIGNAL \uart|Mux0~0_combout\ : std_logic;
SIGNAL \uart|Mux0~1_combout\ : std_logic;
SIGNAL \uart|TX~6_combout\ : std_logic;
SIGNAL \uart|TX~9_combout\ : std_logic;
SIGNAL \uart|TX~8_combout\ : std_logic;
SIGNAL \uart|RX_buffer_out[7]~1_combout\ : std_logic;
SIGNAL \ammar[7]~feeder_combout\ : std_logic;
SIGNAL \uart|buffer_tx[10]~feeder_combout\ : std_logic;
SIGNAL \uart|TX~2_combout\ : std_logic;
SIGNAL \uart|RX_buffer_out[0]~3_combout\ : std_logic;
SIGNAL \ammar[0]~0_combout\ : std_logic;
SIGNAL \uart|buffer_tx[1]~0_combout\ : std_logic;
SIGNAL \uart|RX_buffer_out[2]~2_combout\ : std_logic;
SIGNAL \ammar[2]~feeder_combout\ : std_logic;
SIGNAL \uart|TX~3_combout\ : std_logic;
SIGNAL \uart|RX_buffer_out[1]~4_combout\ : std_logic;
SIGNAL \ammar[1]~feeder_combout\ : std_logic;
SIGNAL \uart|TX~4_combout\ : std_logic;
SIGNAL \uart|TX~0_combout\ : std_logic;
SIGNAL \uart|TX~1_combout\ : std_logic;
SIGNAL \uart|TX~5_combout\ : std_logic;
SIGNAL \uart|TX~7_combout\ : std_logic;
SIGNAL \uart|TX~10_combout\ : std_logic;
SIGNAL \uart|TX~q\ : std_logic;
SIGNAL \uart|buffer_string_RX\ : std_logic_vector(9 DOWNTO 0);
SIGNAL ammar : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart|RX_buffer_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_pll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart|buffer_tx\ : std_logic_vector(10 DOWNTO 0);

BEGIN

ww_CLK_50 <= CLK_50;
ww_B <= B;
ww_nRST <= nRST;
TX <= ww_TX;
ww_RX <= RX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_pll|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK_50~input_o\);

\clk_pll|altpll_component|auto_generated|wire_pll1_clk\(0) <= \clk_pll|altpll_component|auto_generated|pll1_CLK_bus\(0);
\clk_pll|altpll_component|auto_generated|wire_pll1_clk\(1) <= \clk_pll|altpll_component|auto_generated|pll1_CLK_bus\(1);
\clk_pll|altpll_component|auto_generated|wire_pll1_clk\(2) <= \clk_pll|altpll_component|auto_generated|pll1_CLK_bus\(2);
\clk_pll|altpll_component|auto_generated|wire_pll1_clk\(3) <= \clk_pll|altpll_component|auto_generated|pll1_CLK_bus\(3);
\clk_pll|altpll_component|auto_generated|wire_pll1_clk\(4) <= \clk_pll|altpll_component|auto_generated|pll1_CLK_bus\(4);

\clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_pll|altpll_component|auto_generated|wire_pll1_clk\(0));

\uart|RECIVED_RX~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \uart|RECIVED_RX~q\);

\uart|CLK_baude_rate~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \uart|CLK_baude_rate~q\);

\nRST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nRST~input_o\);

-- Location: IOOBUF_X0_Y18_N16
\TX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart|TX~q\,
	devoe => ww_devoe,
	o => ww_TX);

-- Location: IOIBUF_X0_Y11_N15
\CLK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50,
	o => \CLK_50~input_o\);

-- Location: PLL_1
\clk_pll|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 2,
	c0_initial => 1,
	c0_low => 2,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 3,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \clk_pll|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \clk_pll|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \clk_pll|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \clk_pll|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N22
\nRST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nRST,
	o => \nRST~input_o\);

-- Location: CLKCTRL_G8
\nRST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nRST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nRST~inputclkctrl_outclk\);

-- Location: FF_X25_Y13_N3
\uart|try_tc:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|Add0~2_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:counter[1]~q\);

-- Location: FF_X25_Y13_N13
\uart|try_tc:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|Add0~12_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:counter[6]~q\);

-- Location: LCCOMB_X25_Y13_N2
\uart|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Add0~2_combout\ = (\uart|try_tc:counter[1]~q\ & (!\uart|Add0~1\)) # (!\uart|try_tc:counter[1]~q\ & ((\uart|Add0~1\) # (GND)))
-- \uart|Add0~3\ = CARRY((!\uart|Add0~1\) # (!\uart|try_tc:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|try_tc:counter[1]~q\,
	datad => VCC,
	cin => \uart|Add0~1\,
	combout => \uart|Add0~2_combout\,
	cout => \uart|Add0~3\);

-- Location: LCCOMB_X25_Y13_N4
\uart|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Add0~4_combout\ = (\uart|try_tc:counter[2]~q\ & (\uart|Add0~3\ $ (GND))) # (!\uart|try_tc:counter[2]~q\ & (!\uart|Add0~3\ & VCC))
-- \uart|Add0~5\ = CARRY((\uart|try_tc:counter[2]~q\ & !\uart|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|try_tc:counter[2]~q\,
	datad => VCC,
	cin => \uart|Add0~3\,
	combout => \uart|Add0~4_combout\,
	cout => \uart|Add0~5\);

-- Location: LCCOMB_X25_Y13_N24
\uart|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|counter~1_combout\ = (\uart|Add0~4_combout\ & (((!\uart|Equal0~1_combout\) # (!\uart|Equal0~2_combout\)) # (!\uart|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Equal0~0_combout\,
	datab => \uart|Add0~4_combout\,
	datac => \uart|Equal0~2_combout\,
	datad => \uart|Equal0~1_combout\,
	combout => \uart|counter~1_combout\);

-- Location: FF_X25_Y13_N25
\uart|try_tc:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|counter~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:counter[2]~q\);

-- Location: LCCOMB_X25_Y13_N6
\uart|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Add0~6_combout\ = (\uart|try_tc:counter[3]~q\ & (!\uart|Add0~5\)) # (!\uart|try_tc:counter[3]~q\ & ((\uart|Add0~5\) # (GND)))
-- \uart|Add0~7\ = CARRY((!\uart|Add0~5\) # (!\uart|try_tc:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|try_tc:counter[3]~q\,
	datad => VCC,
	cin => \uart|Add0~5\,
	combout => \uart|Add0~6_combout\,
	cout => \uart|Add0~7\);

-- Location: FF_X25_Y13_N7
\uart|try_tc:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|Add0~6_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:counter[3]~q\);

-- Location: LCCOMB_X25_Y13_N8
\uart|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Add0~8_combout\ = (\uart|try_tc:counter[4]~q\ & (\uart|Add0~7\ $ (GND))) # (!\uart|try_tc:counter[4]~q\ & (!\uart|Add0~7\ & VCC))
-- \uart|Add0~9\ = CARRY((\uart|try_tc:counter[4]~q\ & !\uart|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|try_tc:counter[4]~q\,
	datad => VCC,
	cin => \uart|Add0~7\,
	combout => \uart|Add0~8_combout\,
	cout => \uart|Add0~9\);

-- Location: LCCOMB_X26_Y13_N24
\uart|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|counter~5_combout\ = (\uart|Add0~20_combout\ & (((!\uart|Equal0~2_combout\) # (!\uart|Equal0~1_combout\)) # (!\uart|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Equal0~0_combout\,
	datab => \uart|Add0~20_combout\,
	datac => \uart|Equal0~1_combout\,
	datad => \uart|Equal0~2_combout\,
	combout => \uart|counter~5_combout\);

-- Location: FF_X26_Y13_N25
\uart|try_tc:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|counter~5_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:counter[10]~q\);

-- Location: LCCOMB_X25_Y13_N12
\uart|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Add0~12_combout\ = (\uart|try_tc:counter[6]~q\ & (\uart|Add0~11\ $ (GND))) # (!\uart|try_tc:counter[6]~q\ & (!\uart|Add0~11\ & VCC))
-- \uart|Add0~13\ = CARRY((\uart|try_tc:counter[6]~q\ & !\uart|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|try_tc:counter[6]~q\,
	datad => VCC,
	cin => \uart|Add0~11\,
	combout => \uart|Add0~12_combout\,
	cout => \uart|Add0~13\);

-- Location: LCCOMB_X25_Y13_N14
\uart|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Add0~14_combout\ = (\uart|try_tc:counter[7]~q\ & (!\uart|Add0~13\)) # (!\uart|try_tc:counter[7]~q\ & ((\uart|Add0~13\) # (GND)))
-- \uart|Add0~15\ = CARRY((!\uart|Add0~13\) # (!\uart|try_tc:counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|try_tc:counter[7]~q\,
	datad => VCC,
	cin => \uart|Add0~13\,
	combout => \uart|Add0~14_combout\,
	cout => \uart|Add0~15\);

-- Location: FF_X25_Y13_N15
\uart|try_tc:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|Add0~14_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:counter[7]~q\);

-- Location: LCCOMB_X25_Y13_N16
\uart|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Add0~16_combout\ = (\uart|try_tc:counter[8]~q\ & (\uart|Add0~15\ $ (GND))) # (!\uart|try_tc:counter[8]~q\ & (!\uart|Add0~15\ & VCC))
-- \uart|Add0~17\ = CARRY((\uart|try_tc:counter[8]~q\ & !\uart|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|try_tc:counter[8]~q\,
	datad => VCC,
	cin => \uart|Add0~15\,
	combout => \uart|Add0~16_combout\,
	cout => \uart|Add0~17\);

-- Location: LCCOMB_X25_Y13_N18
\uart|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Add0~18_combout\ = (\uart|try_tc:counter[9]~q\ & (!\uart|Add0~17\)) # (!\uart|try_tc:counter[9]~q\ & ((\uart|Add0~17\) # (GND)))
-- \uart|Add0~19\ = CARRY((!\uart|Add0~17\) # (!\uart|try_tc:counter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|try_tc:counter[9]~q\,
	datad => VCC,
	cin => \uart|Add0~17\,
	combout => \uart|Add0~18_combout\,
	cout => \uart|Add0~19\);

-- Location: FF_X25_Y13_N19
\uart|try_tc:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|Add0~18_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:counter[9]~q\);

-- Location: LCCOMB_X25_Y13_N20
\uart|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Add0~20_combout\ = \uart|Add0~19\ $ (!\uart|try_tc:counter[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart|try_tc:counter[10]~q\,
	cin => \uart|Add0~19\,
	combout => \uart|Add0~20_combout\);

-- Location: LCCOMB_X26_Y13_N30
\uart|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|counter~2_combout\ = ((!\uart|Equal0~1_combout\) # (!\uart|Add0~16_combout\)) # (!\uart|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Equal0~0_combout\,
	datac => \uart|Add0~16_combout\,
	datad => \uart|Equal0~1_combout\,
	combout => \uart|counter~2_combout\);

-- Location: LCCOMB_X26_Y13_N4
\uart|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|counter~3_combout\ = (\uart|Add0~8_combout\ & (((\uart|counter~2_combout\) # (\uart|Add0~18_combout\)) # (!\uart|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Add0~8_combout\,
	datab => \uart|Add0~20_combout\,
	datac => \uart|counter~2_combout\,
	datad => \uart|Add0~18_combout\,
	combout => \uart|counter~3_combout\);

-- Location: FF_X26_Y13_N5
\uart|try_tc:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|counter~3_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:counter[4]~q\);

-- Location: LCCOMB_X25_Y13_N10
\uart|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Add0~10_combout\ = (\uart|try_tc:counter[5]~q\ & (!\uart|Add0~9\)) # (!\uart|try_tc:counter[5]~q\ & ((\uart|Add0~9\) # (GND)))
-- \uart|Add0~11\ = CARRY((!\uart|Add0~9\) # (!\uart|try_tc:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|try_tc:counter[5]~q\,
	datad => VCC,
	cin => \uart|Add0~9\,
	combout => \uart|Add0~10_combout\,
	cout => \uart|Add0~11\);

-- Location: FF_X25_Y13_N11
\uart|try_tc:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|Add0~10_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:counter[5]~q\);

-- Location: LCCOMB_X25_Y13_N28
\uart|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Equal0~1_combout\ = (!\uart|Add0~12_combout\ & (!\uart|Add0~14_combout\ & (\uart|Add0~8_combout\ & !\uart|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Add0~12_combout\,
	datab => \uart|Add0~14_combout\,
	datac => \uart|Add0~8_combout\,
	datad => \uart|Add0~10_combout\,
	combout => \uart|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y13_N2
\uart|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|counter~4_combout\ = (\uart|Add0~16_combout\ & (((!\uart|Equal0~2_combout\) # (!\uart|Equal0~0_combout\)) # (!\uart|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Add0~16_combout\,
	datab => \uart|Equal0~1_combout\,
	datac => \uart|Equal0~0_combout\,
	datad => \uart|Equal0~2_combout\,
	combout => \uart|counter~4_combout\);

-- Location: FF_X26_Y13_N3
\uart|try_tc:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|counter~4_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:counter[8]~q\);

-- Location: LCCOMB_X25_Y13_N30
\uart|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Equal0~2_combout\ = (\uart|Add0~16_combout\ & (!\uart|Add0~18_combout\ & \uart|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|Add0~16_combout\,
	datac => \uart|Add0~18_combout\,
	datad => \uart|Add0~20_combout\,
	combout => \uart|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y13_N0
\uart|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Add0~0_combout\ = \uart|try_tc:counter[0]~q\ $ (VCC)
-- \uart|Add0~1\ = CARRY(\uart|try_tc:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|try_tc:counter[0]~q\,
	datad => VCC,
	combout => \uart|Add0~0_combout\,
	cout => \uart|Add0~1\);

-- Location: LCCOMB_X25_Y13_N22
\uart|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|counter~0_combout\ = (\uart|Add0~0_combout\ & (((!\uart|Equal0~1_combout\) # (!\uart|Equal0~0_combout\)) # (!\uart|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Equal0~2_combout\,
	datab => \uart|Add0~0_combout\,
	datac => \uart|Equal0~0_combout\,
	datad => \uart|Equal0~1_combout\,
	combout => \uart|counter~0_combout\);

-- Location: FF_X25_Y13_N23
\uart|try_tc:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|counter~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:counter[0]~q\);

-- Location: LCCOMB_X25_Y13_N26
\uart|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Equal0~0_combout\ = (!\uart|Add0~2_combout\ & (\uart|Add0~0_combout\ & (\uart|Add0~4_combout\ & !\uart|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Add0~2_combout\,
	datab => \uart|Add0~0_combout\,
	datac => \uart|Add0~4_combout\,
	datad => \uart|Add0~6_combout\,
	combout => \uart|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y14_N26
\uart|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Equal0~3_combout\ = (\uart|Equal0~0_combout\ & (\uart|Equal0~1_combout\ & \uart|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Equal0~0_combout\,
	datac => \uart|Equal0~1_combout\,
	datad => \uart|Equal0~2_combout\,
	combout => \uart|Equal0~3_combout\);

-- Location: FF_X26_Y14_N27
\uart|CLK_baude_rate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|Equal0~3_combout\,
	ena => \nRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|CLK_baude_rate~q\);

-- Location: CLKCTRL_G9
\uart|CLK_baude_rate~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \uart|CLK_baude_rate~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \uart|CLK_baude_rate~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N8
\RX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX,
	o => \RX~input_o\);

-- Location: LCCOMB_X26_Y15_N18
\uart|buffer_string_RX~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|buffer_string_RX~9_combout\ = (!\RX~input_o\ & !\uart|buffer_string_RX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX~input_o\,
	datad => \uart|buffer_string_RX\(0),
	combout => \uart|buffer_string_RX~9_combout\);

-- Location: FF_X26_Y15_N19
\uart|buffer_string_RX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|buffer_string_RX~9_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_string_RX\(9));

-- Location: LCCOMB_X26_Y15_N2
\uart|buffer_string_RX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|buffer_string_RX~0_combout\ = (\uart|buffer_string_RX\(9) & !\uart|buffer_string_RX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|buffer_string_RX\(9),
	datad => \uart|buffer_string_RX\(0),
	combout => \uart|buffer_string_RX~0_combout\);

-- Location: FF_X26_Y15_N3
\uart|buffer_string_RX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|buffer_string_RX~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_string_RX\(8));

-- Location: LCCOMB_X26_Y15_N12
\uart|buffer_string_RX~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|buffer_string_RX~8_combout\ = (\uart|buffer_string_RX\(8) & !\uart|buffer_string_RX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|buffer_string_RX\(8),
	datad => \uart|buffer_string_RX\(0),
	combout => \uart|buffer_string_RX~8_combout\);

-- Location: FF_X26_Y15_N13
\uart|buffer_string_RX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|buffer_string_RX~8_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_string_RX\(7));

-- Location: LCCOMB_X24_Y15_N22
\uart|buffer_string_RX~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|buffer_string_RX~5_combout\ = (!\uart|buffer_string_RX\(0) & \uart|buffer_string_RX\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|buffer_string_RX\(0),
	datad => \uart|buffer_string_RX\(7),
	combout => \uart|buffer_string_RX~5_combout\);

-- Location: FF_X24_Y15_N23
\uart|buffer_string_RX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|buffer_string_RX~5_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_string_RX\(6));

-- Location: LCCOMB_X24_Y15_N4
\uart|buffer_string_RX~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|buffer_string_RX~6_combout\ = (\uart|buffer_string_RX\(6) & !\uart|buffer_string_RX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|buffer_string_RX\(6),
	datad => \uart|buffer_string_RX\(0),
	combout => \uart|buffer_string_RX~6_combout\);

-- Location: FF_X24_Y15_N5
\uart|buffer_string_RX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|buffer_string_RX~6_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_string_RX\(5));

-- Location: LCCOMB_X24_Y15_N14
\uart|buffer_string_RX~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|buffer_string_RX~7_combout\ = (\uart|buffer_string_RX\(5) & !\uart|buffer_string_RX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|buffer_string_RX\(5),
	datad => \uart|buffer_string_RX\(0),
	combout => \uart|buffer_string_RX~7_combout\);

-- Location: FF_X24_Y15_N15
\uart|buffer_string_RX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|buffer_string_RX~7_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_string_RX\(4));

-- Location: LCCOMB_X24_Y15_N8
\uart|buffer_string_RX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|buffer_string_RX~2_combout\ = (!\uart|buffer_string_RX\(0) & \uart|buffer_string_RX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|buffer_string_RX\(0),
	datac => \uart|buffer_string_RX\(4),
	combout => \uart|buffer_string_RX~2_combout\);

-- Location: FF_X24_Y15_N9
\uart|buffer_string_RX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|buffer_string_RX~2_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_string_RX\(3));

-- Location: LCCOMB_X24_Y15_N28
\uart|buffer_string_RX~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|buffer_string_RX~4_combout\ = (\uart|buffer_string_RX\(3) & !\uart|buffer_string_RX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|buffer_string_RX\(3),
	datad => \uart|buffer_string_RX\(0),
	combout => \uart|buffer_string_RX~4_combout\);

-- Location: FF_X24_Y15_N29
\uart|buffer_string_RX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|buffer_string_RX~4_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_string_RX\(2));

-- Location: LCCOMB_X24_Y15_N26
\uart|buffer_string_RX~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|buffer_string_RX~3_combout\ = (\uart|buffer_string_RX\(2) & !\uart|buffer_string_RX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|buffer_string_RX\(2),
	datac => \uart|buffer_string_RX\(0),
	combout => \uart|buffer_string_RX~3_combout\);

-- Location: FF_X24_Y15_N27
\uart|buffer_string_RX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|buffer_string_RX~3_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_string_RX\(1));

-- Location: LCCOMB_X24_Y15_N0
\uart|buffer_string_RX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|buffer_string_RX~1_combout\ = (\uart|buffer_string_RX\(1) & !\uart|buffer_string_RX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|buffer_string_RX\(1),
	datac => \uart|buffer_string_RX\(0),
	combout => \uart|buffer_string_RX~1_combout\);

-- Location: FF_X24_Y15_N1
\uart|buffer_string_RX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|buffer_string_RX~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_string_RX\(0));

-- Location: LCCOMB_X26_Y15_N20
\uart|RECIVED_RX~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RECIVED_RX~feeder_combout\ = \uart|buffer_string_RX\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|buffer_string_RX\(0),
	combout => \uart|RECIVED_RX~feeder_combout\);

-- Location: FF_X26_Y15_N21
\uart|RECIVED_RX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|RECIVED_RX~feeder_combout\,
	ena => \nRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RECIVED_RX~q\);

-- Location: CLKCTRL_G5
\uart|RECIVED_RX~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \uart|RECIVED_RX~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \uart|RECIVED_RX~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y15_N6
\uart|RX_buffer_out[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_buffer_out[6]~8_combout\ = !\uart|buffer_string_RX\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|buffer_string_RX\(7),
	combout => \uart|RX_buffer_out[6]~8_combout\);

-- Location: LCCOMB_X24_Y15_N2
\uart|RX_buffer_out[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_buffer_out[7]~0_combout\ = (\nRST~input_o\ & \uart|buffer_string_RX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nRST~input_o\,
	datad => \uart|buffer_string_RX\(0),
	combout => \uart|RX_buffer_out[7]~0_combout\);

-- Location: FF_X24_Y15_N7
\uart|RX_buffer_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|RX_buffer_out[6]~8_combout\,
	ena => \uart|RX_buffer_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_buffer_out\(6));

-- Location: LCCOMB_X23_Y15_N18
\ammar[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ammar[6]~1_combout\ = !\uart|RX_buffer_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_buffer_out\(6),
	combout => \ammar[6]~1_combout\);

-- Location: FF_X23_Y15_N19
\ammar[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|RECIVED_RX~clkctrl_outclk\,
	d => \ammar[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ammar(6));

-- Location: LCCOMB_X23_Y15_N28
\uart|buffer_tx[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|buffer_tx[7]~1_combout\ = !ammar(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ammar(6),
	combout => \uart|buffer_tx[7]~1_combout\);

-- Location: FF_X24_Y11_N25
\yoo:i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[26]~q\);

-- Location: LCCOMB_X24_Y12_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \yoo:i[0]~q\ $ (GND)
-- \Add0~1\ = CARRY(!\yoo:i[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yoo:i[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X25_Y12_N30
\i~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~16_combout\ = (\Equal0~8_combout\) # (!\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~16_combout\);

-- Location: FF_X25_Y12_N31
\yoo:i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[0]~q\);

-- Location: LCCOMB_X24_Y12_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\yoo:i[1]~q\ & ((\Add0~1\) # (GND))) # (!\yoo:i[1]~q\ & (!\Add0~1\))
-- \Add0~3\ = CARRY((\yoo:i[1]~q\) # (!\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yoo:i[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X25_Y12_N8
\i~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~15_combout\ = (\Equal0~8_combout\) # (!\Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~15_combout\);

-- Location: FF_X25_Y12_N9
\yoo:i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[1]~q\);

-- Location: LCCOMB_X24_Y12_N8
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\yoo:i[2]~q\ & (!\Add0~3\ & VCC)) # (!\yoo:i[2]~q\ & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((!\yoo:i[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yoo:i[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X25_Y12_N14
\i~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~14_combout\ = (\Equal0~8_combout\) # (!\Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~14_combout\);

-- Location: FF_X25_Y12_N15
\yoo:i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[2]~q\);

-- Location: LCCOMB_X24_Y12_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\yoo:i[3]~q\ & ((\Add0~5\) # (GND))) # (!\yoo:i[3]~q\ & (!\Add0~5\))
-- \Add0~7\ = CARRY((\yoo:i[3]~q\) # (!\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \yoo:i[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X25_Y12_N4
\i~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~13_combout\ = (\Equal0~8_combout\) # (!\Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~13_combout\);

-- Location: FF_X25_Y12_N5
\yoo:i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[3]~q\);

-- Location: LCCOMB_X24_Y12_N12
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\yoo:i[4]~q\ & (!\Add0~7\ & VCC)) # (!\yoo:i[4]~q\ & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((!\yoo:i[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yoo:i[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X23_Y12_N6
\i~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~12_combout\ = (\Equal0~8_combout\) # (!\Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~12_combout\);

-- Location: FF_X23_Y12_N7
\yoo:i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[4]~q\);

-- Location: LCCOMB_X24_Y12_N14
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\yoo:i[5]~q\ & ((\Add0~9\) # (GND))) # (!\yoo:i[5]~q\ & (!\Add0~9\))
-- \Add0~11\ = CARRY((\yoo:i[5]~q\) # (!\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \yoo:i[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X23_Y12_N16
\i~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~11_combout\ = (\Equal0~8_combout\) # (!\Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~11_combout\);

-- Location: FF_X23_Y12_N17
\yoo:i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[5]~q\);

-- Location: LCCOMB_X24_Y12_N16
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\yoo:i[6]~q\ & (!\Add0~11\ & VCC)) # (!\yoo:i[6]~q\ & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((!\yoo:i[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \yoo:i[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X23_Y12_N14
\i~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~10_combout\ = (\Equal0~8_combout\) # (!\Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~10_combout\);

-- Location: FF_X23_Y12_N15
\yoo:i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[6]~q\);

-- Location: LCCOMB_X24_Y12_N18
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\yoo:i[7]~q\ & (!\Add0~13\)) # (!\yoo:i[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\yoo:i[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yoo:i[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X24_Y12_N19
\yoo:i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[7]~q\);

-- Location: LCCOMB_X24_Y12_N20
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\yoo:i[8]~q\ & (!\Add0~15\ & VCC)) # (!\yoo:i[8]~q\ & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((!\yoo:i[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yoo:i[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X23_Y12_N4
\i~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~9_combout\ = (\Equal0~8_combout\) # (!\Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~16_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~9_combout\);

-- Location: FF_X23_Y12_N5
\yoo:i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[8]~q\);

-- Location: LCCOMB_X24_Y12_N22
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\yoo:i[9]~q\ & (!\Add0~17\)) # (!\yoo:i[9]~q\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\yoo:i[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yoo:i[9]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X24_Y12_N23
\yoo:i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[9]~q\);

-- Location: LCCOMB_X24_Y12_N24
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\yoo:i[10]~q\ & (\Add0~19\ $ (GND))) # (!\yoo:i[10]~q\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\yoo:i[10]~q\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \yoo:i[10]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X24_Y12_N25
\yoo:i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[10]~q\);

-- Location: LCCOMB_X24_Y12_N26
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\yoo:i[11]~q\ & (!\Add0~21\)) # (!\yoo:i[11]~q\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\yoo:i[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yoo:i[11]~q\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X24_Y12_N27
\yoo:i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[11]~q\);

-- Location: LCCOMB_X24_Y12_N28
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\yoo:i[12]~q\ & (!\Add0~23\ & VCC)) # (!\yoo:i[12]~q\ & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((!\yoo:i[12]~q\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yoo:i[12]~q\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X25_Y12_N26
\i~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~8_combout\ = (\Equal0~8_combout\) # (!\Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~8_combout\);

-- Location: FF_X25_Y12_N27
\yoo:i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[12]~q\);

-- Location: LCCOMB_X24_Y12_N30
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\yoo:i[13]~q\ & (!\Add0~25\)) # (!\yoo:i[13]~q\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\yoo:i[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \yoo:i[13]~q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X24_Y12_N31
\yoo:i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[13]~q\);

-- Location: LCCOMB_X24_Y11_N0
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\yoo:i[14]~q\ & (!\Add0~27\ & VCC)) # (!\yoo:i[14]~q\ & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((!\yoo:i[14]~q\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \yoo:i[14]~q\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X24_Y11_N30
\i~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~7_combout\ = (\Equal0~8_combout\) # (!\Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~7_combout\);

-- Location: FF_X24_Y11_N31
\yoo:i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[14]~q\);

-- Location: LCCOMB_X24_Y11_N2
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\yoo:i[15]~q\ & ((\Add0~29\) # (GND))) # (!\yoo:i[15]~q\ & (!\Add0~29\))
-- \Add0~31\ = CARRY((\yoo:i[15]~q\) # (!\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yoo:i[15]~q\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X24_Y11_N28
\i~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~6_combout\ = (\Equal0~8_combout\) # (!\Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~30_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~6_combout\);

-- Location: FF_X24_Y11_N29
\yoo:i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[15]~q\);

-- Location: LCCOMB_X24_Y11_N4
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\yoo:i[16]~q\ & (\Add0~31\ $ (GND))) # (!\yoo:i[16]~q\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\yoo:i[16]~q\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yoo:i[16]~q\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X24_Y11_N5
\yoo:i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[16]~q\);

-- Location: LCCOMB_X24_Y11_N6
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\yoo:i[17]~q\ & (!\Add0~33\)) # (!\yoo:i[17]~q\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\yoo:i[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \yoo:i[17]~q\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X24_Y11_N7
\yoo:i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[17]~q\);

-- Location: LCCOMB_X24_Y11_N8
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\yoo:i[18]~q\ & (\Add0~35\ $ (GND))) # (!\yoo:i[18]~q\ & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\yoo:i[18]~q\ & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yoo:i[18]~q\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X24_Y11_N9
\yoo:i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[18]~q\);

-- Location: LCCOMB_X24_Y11_N10
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\yoo:i[19]~q\ & (!\Add0~37\)) # (!\yoo:i[19]~q\ & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!\yoo:i[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \yoo:i[19]~q\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: FF_X24_Y11_N11
\yoo:i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[19]~q\);

-- Location: LCCOMB_X24_Y11_N12
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\yoo:i[20]~q\ & (!\Add0~39\ & VCC)) # (!\yoo:i[20]~q\ & (\Add0~39\ $ (GND)))
-- \Add0~41\ = CARRY((!\yoo:i[20]~q\ & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yoo:i[20]~q\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X25_Y12_N24
\i~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~5_combout\ = (\Equal0~8_combout\) # (!\Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~40_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~5_combout\);

-- Location: FF_X25_Y12_N25
\yoo:i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[20]~q\);

-- Location: LCCOMB_X24_Y11_N14
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\yoo:i[21]~q\ & ((\Add0~41\) # (GND))) # (!\yoo:i[21]~q\ & (!\Add0~41\))
-- \Add0~43\ = CARRY((\yoo:i[21]~q\) # (!\Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \yoo:i[21]~q\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X25_Y12_N10
\i~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~4_combout\ = (\Equal0~8_combout\) # (!\Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~42_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~4_combout\);

-- Location: FF_X25_Y12_N11
\yoo:i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[21]~q\);

-- Location: LCCOMB_X24_Y11_N16
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\yoo:i[22]~q\ & (!\Add0~43\ & VCC)) # (!\yoo:i[22]~q\ & (\Add0~43\ $ (GND)))
-- \Add0~45\ = CARRY((!\yoo:i[22]~q\ & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \yoo:i[22]~q\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X25_Y12_N20
\i~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~3_combout\ = (\Equal0~8_combout\) # (!\Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~3_combout\);

-- Location: FF_X25_Y12_N21
\yoo:i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[22]~q\);

-- Location: LCCOMB_X24_Y11_N18
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\yoo:i[23]~q\ & ((\Add0~45\) # (GND))) # (!\yoo:i[23]~q\ & (!\Add0~45\))
-- \Add0~47\ = CARRY((\yoo:i[23]~q\) # (!\Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \yoo:i[23]~q\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X26_Y12_N4
\i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~2_combout\ = (\Equal0~8_combout\) # (!\Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~46_combout\,
	datad => \Equal0~8_combout\,
	combout => \i~2_combout\);

-- Location: FF_X26_Y12_N5
\yoo:i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[23]~q\);

-- Location: LCCOMB_X24_Y11_N20
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\yoo:i[24]~q\ & (\Add0~47\ $ (GND))) # (!\yoo:i[24]~q\ & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((\yoo:i[24]~q\ & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yoo:i[24]~q\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X24_Y11_N21
\yoo:i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[24]~q\);

-- Location: LCCOMB_X24_Y11_N22
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\yoo:i[25]~q\ & (!\Add0~49\)) # (!\yoo:i[25]~q\ & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!\yoo:i[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \yoo:i[25]~q\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X24_Y11_N23
\yoo:i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[25]~q\);

-- Location: LCCOMB_X24_Y11_N24
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\yoo:i[26]~q\ & (\Add0~51\ $ (GND))) # (!\yoo:i[26]~q\ & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((\yoo:i[26]~q\ & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \yoo:i[26]~q\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X24_Y12_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~18_combout\ & (\Add0~16_combout\ & (!\Add0~22_combout\ & !\Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~22_combout\,
	datad => \Add0~20_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X25_Y12_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Add0~4_combout\ & (\Add0~0_combout\ & (\Add0~2_combout\ & \Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~6_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X24_Y12_N0
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Add0~8_combout\ & (\Add0~10_combout\ & (!\Add0~14_combout\ & \Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~12_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X25_Y12_N6
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add0~26_combout\ & (\Add0~24_combout\ & (\Add0~28_combout\ & \Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~24_combout\,
	datac => \Add0~28_combout\,
	datad => \Add0~30_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X25_Y12_N16
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

-- Location: LCCOMB_X25_Y12_N2
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Add0~36_combout\ & (!\Add0~34_combout\ & (!\Add0~32_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Add0~34_combout\,
	datac => \Add0~32_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X25_Y12_N28
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Add0~38_combout\ & (\Add0~40_combout\ & (\Add0~42_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \Add0~40_combout\,
	datac => \Add0~42_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X25_Y12_N18
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Add0~44_combout\ & (!\Add0~48_combout\ & (\Add0~46_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Add0~48_combout\,
	datac => \Add0~46_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X25_Y12_N22
\i~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~17_combout\ = ((!\Add0~52_combout\ & (!\Add0~50_combout\ & \Equal0~7_combout\))) # (!\Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Add0~50_combout\,
	datac => \Add0~54_combout\,
	datad => \Equal0~7_combout\,
	combout => \i~17_combout\);

-- Location: FF_X25_Y12_N23
\yoo:i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \i~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \yoo:i[27]~q\);

-- Location: LCCOMB_X24_Y11_N26
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = \Add0~53\ $ (!\yoo:i[27]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \yoo:i[27]~q\,
	cin => \Add0~53\,
	combout => \Add0~54_combout\);

-- Location: LCCOMB_X25_Y12_N0
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Add0~54_combout\ & (!\Add0~50_combout\ & (!\Add0~52_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \Add0~50_combout\,
	datac => \Add0~52_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: FF_X25_Y12_N1
send_tx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_tx~q\);

-- Location: LCCOMB_X25_Y14_N8
\uart|start_the_process~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|start_the_process~feeder_combout\ = \send_tx~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \send_tx~q\,
	combout => \uart|start_the_process~feeder_combout\);

-- Location: FF_X25_Y14_N9
\uart|start_the_process\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|start_the_process~feeder_combout\,
	ena => \nRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|start_the_process~q\);

-- Location: LCCOMB_X26_Y14_N28
\uart|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Add1~0_combout\ = \uart|try_tc:i[2]~q\ $ (((\uart|try_tc:i[0]~q\ & \uart|try_tc:i[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|try_tc:i[0]~q\,
	datac => \uart|try_tc:i[2]~q\,
	datad => \uart|try_tc:i[1]~q\,
	combout => \uart|Add1~0_combout\);

-- Location: LCCOMB_X25_Y14_N16
\uart|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector3~0_combout\ = ((\uart|state_tx.send_data_tx~q\ & (!\uart|Equal1~0_combout\)) # (!\uart|state_tx.send_data_tx~q\ & ((!\uart|startsend~q\)))) # (!\uart|CLK_baude_rate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Equal1~0_combout\,
	datab => \uart|state_tx.send_data_tx~q\,
	datac => \uart|startsend~q\,
	datad => \uart|CLK_baude_rate~q\,
	combout => \uart|Selector3~0_combout\);

-- Location: LCCOMB_X25_Y14_N10
\uart|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector3~1_combout\ = (!\uart|state_tx.done_tx~q\ & ((\uart|state_tx.load_charecter_TX~q\) # ((\uart|state_tx.send_data_tx~q\ & \uart|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|state_tx.load_charecter_TX~q\,
	datab => \uart|state_tx.done_tx~q\,
	datac => \uart|state_tx.send_data_tx~q\,
	datad => \uart|Selector3~0_combout\,
	combout => \uart|Selector3~1_combout\);

-- Location: FF_X25_Y14_N11
\uart|state_tx.send_data_tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|Selector3~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|state_tx.send_data_tx~q\);

-- Location: LCCOMB_X26_Y14_N22
\uart|try_tc:i[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|try_tc:i[0]~0_combout\ = (\uart|state_tx.send_data_tx~q\ & (\uart|CLK_baude_rate~q\ & \nRST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|state_tx.send_data_tx~q\,
	datac => \uart|CLK_baude_rate~q\,
	datad => \nRST~input_o\,
	combout => \uart|try_tc:i[0]~0_combout\);

-- Location: FF_X26_Y14_N29
\uart|try_tc:i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|Add1~0_combout\,
	ena => \uart|try_tc:i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:i[2]~q\);

-- Location: LCCOMB_X26_Y14_N18
\uart|i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|i~0_combout\ = (\uart|try_tc:i[0]~q\ & (((!\uart|try_tc:i[1]~q\)))) # (!\uart|try_tc:i[0]~q\ & (\uart|try_tc:i[1]~q\ & ((\uart|try_tc:i[2]~q\) # (!\uart|try_tc:i[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|try_tc:i[0]~q\,
	datab => \uart|try_tc:i[3]~q\,
	datac => \uart|try_tc:i[1]~q\,
	datad => \uart|try_tc:i[2]~q\,
	combout => \uart|i~0_combout\);

-- Location: FF_X26_Y14_N19
\uart|try_tc:i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|i~0_combout\,
	ena => \uart|try_tc:i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:i[1]~q\);

-- Location: LCCOMB_X26_Y14_N12
\uart|i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|i~1_combout\ = (!\uart|try_tc:i[0]~q\ & (((\uart|try_tc:i[2]~q\) # (!\uart|try_tc:i[1]~q\)) # (!\uart|try_tc:i[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|try_tc:i[3]~q\,
	datab => \uart|try_tc:i[1]~q\,
	datac => \uart|try_tc:i[0]~q\,
	datad => \uart|try_tc:i[2]~q\,
	combout => \uart|i~1_combout\);

-- Location: FF_X26_Y14_N13
\uart|try_tc:i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|i~1_combout\,
	ena => \uart|try_tc:i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:i[0]~q\);

-- Location: LCCOMB_X26_Y14_N10
\uart|i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|i~2_combout\ = (\uart|try_tc:i[0]~q\ & (\uart|try_tc:i[3]~q\ $ (((\uart|try_tc:i[2]~q\ & \uart|try_tc:i[1]~q\))))) # (!\uart|try_tc:i[0]~q\ & (\uart|try_tc:i[3]~q\ & ((\uart|try_tc:i[2]~q\) # (!\uart|try_tc:i[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|try_tc:i[0]~q\,
	datab => \uart|try_tc:i[2]~q\,
	datac => \uart|try_tc:i[3]~q\,
	datad => \uart|try_tc:i[1]~q\,
	combout => \uart|i~2_combout\);

-- Location: FF_X26_Y14_N11
\uart|try_tc:i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|i~2_combout\,
	ena => \uart|try_tc:i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|try_tc:i[3]~q\);

-- Location: LCCOMB_X26_Y14_N30
\uart|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Equal1~0_combout\ = (\uart|try_tc:i[3]~q\ & (\uart|try_tc:i[1]~q\ & (!\uart|try_tc:i[2]~q\ & !\uart|try_tc:i[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|try_tc:i[3]~q\,
	datab => \uart|try_tc:i[1]~q\,
	datac => \uart|try_tc:i[2]~q\,
	datad => \uart|try_tc:i[0]~q\,
	combout => \uart|Equal1~0_combout\);

-- Location: LCCOMB_X25_Y14_N2
\uart|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector4~0_combout\ = (\uart|Equal1~0_combout\ & (\uart|CLK_baude_rate~q\ & \uart|state_tx.send_data_tx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Equal1~0_combout\,
	datab => \uart|CLK_baude_rate~q\,
	datac => \uart|state_tx.send_data_tx~q\,
	combout => \uart|Selector4~0_combout\);

-- Location: FF_X25_Y14_N3
\uart|state_tx.done_tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|Selector4~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|state_tx.done_tx~q\);

-- Location: LCCOMB_X25_Y14_N22
\uart|startsend~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|startsend~0_combout\ = (!\uart|state_tx.done_tx~q\ & ((\uart|start_the_process~q\) # (\uart|startsend~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|start_the_process~q\,
	datac => \uart|startsend~q\,
	datad => \uart|state_tx.done_tx~q\,
	combout => \uart|startsend~0_combout\);

-- Location: FF_X25_Y14_N23
\uart|startsend\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|startsend~0_combout\,
	ena => \nRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|startsend~q\);

-- Location: LCCOMB_X25_Y14_N20
\uart|state_tx.wait_tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|state_tx.wait_tx~0_combout\ = (!\uart|state_tx.done_tx~q\ & ((\uart|state_tx.load_charecter_TX~q\) # ((\uart|state_tx.wait_tx~q\) # (!\uart|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|state_tx.load_charecter_TX~q\,
	datab => \uart|state_tx.done_tx~q\,
	datac => \uart|state_tx.wait_tx~q\,
	datad => \uart|Selector3~0_combout\,
	combout => \uart|state_tx.wait_tx~0_combout\);

-- Location: FF_X25_Y14_N21
\uart|state_tx.wait_tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|state_tx.wait_tx~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|state_tx.wait_tx~q\);

-- Location: LCCOMB_X25_Y14_N0
\uart|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector2~0_combout\ = (\uart|CLK_baude_rate~q\ & (\uart|startsend~q\ & !\uart|state_tx.wait_tx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|CLK_baude_rate~q\,
	datac => \uart|startsend~q\,
	datad => \uart|state_tx.wait_tx~q\,
	combout => \uart|Selector2~0_combout\);

-- Location: FF_X25_Y14_N1
\uart|state_tx.load_charecter_TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|Selector2~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|state_tx.load_charecter_TX~q\);

-- Location: FF_X23_Y15_N29
\uart|buffer_tx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|buffer_tx[7]~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \uart|state_tx.load_charecter_TX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_tx\(7));

-- Location: LCCOMB_X24_Y15_N12
\uart|RX_buffer_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_buffer_out[5]~5_combout\ = !\uart|buffer_string_RX\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|buffer_string_RX\(6),
	combout => \uart|RX_buffer_out[5]~5_combout\);

-- Location: FF_X24_Y15_N13
\uart|RX_buffer_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|RX_buffer_out[5]~5_combout\,
	ena => \uart|RX_buffer_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_buffer_out\(5));

-- Location: LCCOMB_X25_Y15_N4
\ammar[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ammar[5]~feeder_combout\ = \uart|RX_buffer_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_buffer_out\(5),
	combout => \ammar[5]~feeder_combout\);

-- Location: FF_X25_Y15_N5
\ammar[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|RECIVED_RX~clkctrl_outclk\,
	d => \ammar[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ammar(5));

-- Location: FF_X25_Y15_N31
\uart|buffer_tx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => ammar(5),
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uart|state_tx.load_charecter_TX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_tx\(6));

-- Location: LCCOMB_X24_Y15_N18
\uart|RX_buffer_out[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_buffer_out[4]~6_combout\ = !\uart|buffer_string_RX\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|buffer_string_RX\(5),
	combout => \uart|RX_buffer_out[4]~6_combout\);

-- Location: FF_X24_Y15_N19
\uart|RX_buffer_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|RX_buffer_out[4]~6_combout\,
	ena => \uart|RX_buffer_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_buffer_out\(4));

-- Location: LCCOMB_X25_Y15_N2
\ammar[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ammar[4]~feeder_combout\ = \uart|RX_buffer_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_buffer_out\(4),
	combout => \ammar[4]~feeder_combout\);

-- Location: FF_X25_Y15_N3
\ammar[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|RECIVED_RX~clkctrl_outclk\,
	d => \ammar[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ammar(4));

-- Location: LCCOMB_X25_Y15_N6
\uart|buffer_tx[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|buffer_tx[5]~feeder_combout\ = ammar(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ammar(4),
	combout => \uart|buffer_tx[5]~feeder_combout\);

-- Location: FF_X25_Y15_N7
\uart|buffer_tx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|buffer_tx[5]~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \uart|state_tx.load_charecter_TX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_tx\(5));

-- Location: LCCOMB_X24_Y15_N20
\uart|RX_buffer_out[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_buffer_out[3]~7_combout\ = !\uart|buffer_string_RX\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|buffer_string_RX\(4),
	combout => \uart|RX_buffer_out[3]~7_combout\);

-- Location: FF_X24_Y15_N21
\uart|RX_buffer_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|RX_buffer_out[3]~7_combout\,
	ena => \uart|RX_buffer_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_buffer_out\(3));

-- Location: LCCOMB_X25_Y15_N14
\ammar[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ammar[3]~feeder_combout\ = \uart|RX_buffer_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_buffer_out\(3),
	combout => \ammar[3]~feeder_combout\);

-- Location: FF_X25_Y15_N15
\ammar[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|RECIVED_RX~clkctrl_outclk\,
	d => \ammar[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ammar(3));

-- Location: FF_X25_Y15_N17
\uart|buffer_tx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => ammar(3),
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uart|state_tx.load_charecter_TX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_tx\(4));

-- Location: LCCOMB_X25_Y15_N16
\uart|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Mux0~0_combout\ = (\uart|try_tc:i[1]~q\ & (((\uart|try_tc:i[0]~q\)))) # (!\uart|try_tc:i[1]~q\ & ((\uart|try_tc:i[0]~q\ & (\uart|buffer_tx\(5))) # (!\uart|try_tc:i[0]~q\ & ((\uart|buffer_tx\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|buffer_tx\(5),
	datab => \uart|try_tc:i[1]~q\,
	datac => \uart|buffer_tx\(4),
	datad => \uart|try_tc:i[0]~q\,
	combout => \uart|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y15_N30
\uart|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Mux0~1_combout\ = (\uart|try_tc:i[1]~q\ & ((\uart|Mux0~0_combout\ & (\uart|buffer_tx\(7))) # (!\uart|Mux0~0_combout\ & ((\uart|buffer_tx\(6)))))) # (!\uart|try_tc:i[1]~q\ & (((\uart|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|buffer_tx\(7),
	datab => \uart|try_tc:i[1]~q\,
	datac => \uart|buffer_tx\(6),
	datad => \uart|Mux0~0_combout\,
	combout => \uart|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y14_N12
\uart|TX~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX~6_combout\ = (\nRST~input_o\ & (\uart|CLK_baude_rate~q\ & ((\uart|state_tx.send_data_tx~q\) # (!\uart|state_tx.wait_tx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nRST~input_o\,
	datab => \uart|state_tx.wait_tx~q\,
	datac => \uart|state_tx.send_data_tx~q\,
	datad => \uart|CLK_baude_rate~q\,
	combout => \uart|TX~6_combout\);

-- Location: LCCOMB_X25_Y14_N30
\uart|TX~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX~9_combout\ = (\uart|Mux0~1_combout\ & (\uart|try_tc:i[2]~q\ & (!\uart|try_tc:i[3]~q\ & \uart|TX~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Mux0~1_combout\,
	datab => \uart|try_tc:i[2]~q\,
	datac => \uart|try_tc:i[3]~q\,
	datad => \uart|TX~6_combout\,
	combout => \uart|TX~9_combout\);

-- Location: LCCOMB_X25_Y14_N4
\uart|TX~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX~8_combout\ = (!\uart|state_tx.wait_tx~q\ & (\nRST~input_o\ & \uart|CLK_baude_rate~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|state_tx.wait_tx~q\,
	datac => \nRST~input_o\,
	datad => \uart|CLK_baude_rate~q\,
	combout => \uart|TX~8_combout\);

-- Location: LCCOMB_X24_Y15_N24
\uart|RX_buffer_out[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_buffer_out[7]~1_combout\ = !\uart|buffer_string_RX\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|buffer_string_RX\(8),
	combout => \uart|RX_buffer_out[7]~1_combout\);

-- Location: FF_X24_Y15_N25
\uart|RX_buffer_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|RX_buffer_out[7]~1_combout\,
	ena => \uart|RX_buffer_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_buffer_out\(7));

-- Location: LCCOMB_X25_Y15_N26
\ammar[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ammar[7]~feeder_combout\ = \uart|RX_buffer_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_buffer_out\(7),
	combout => \ammar[7]~feeder_combout\);

-- Location: FF_X25_Y15_N27
\ammar[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|RECIVED_RX~clkctrl_outclk\,
	d => \ammar[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ammar(7));

-- Location: FF_X25_Y15_N25
\uart|buffer_tx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => ammar(7),
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uart|state_tx.load_charecter_TX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_tx\(8));

-- Location: LCCOMB_X25_Y15_N18
\uart|buffer_tx[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|buffer_tx[10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart|buffer_tx[10]~feeder_combout\);

-- Location: FF_X25_Y15_N19
\uart|buffer_tx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|buffer_tx[10]~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \uart|state_tx.load_charecter_TX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_tx\(10));

-- Location: LCCOMB_X25_Y15_N24
\uart|TX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX~2_combout\ = (\uart|try_tc:i[0]~q\ & (!\uart|try_tc:i[1]~q\ & ((\uart|buffer_tx\(10))))) # (!\uart|try_tc:i[0]~q\ & ((\uart|try_tc:i[1]~q\ & ((\uart|buffer_tx\(10)))) # (!\uart|try_tc:i[1]~q\ & (\uart|buffer_tx\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|try_tc:i[0]~q\,
	datab => \uart|try_tc:i[1]~q\,
	datac => \uart|buffer_tx\(8),
	datad => \uart|buffer_tx\(10),
	combout => \uart|TX~2_combout\);

-- Location: LCCOMB_X24_Y15_N16
\uart|RX_buffer_out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_buffer_out[0]~3_combout\ = !\uart|buffer_string_RX\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|buffer_string_RX\(1),
	combout => \uart|RX_buffer_out[0]~3_combout\);

-- Location: FF_X24_Y15_N17
\uart|RX_buffer_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|RX_buffer_out[0]~3_combout\,
	ena => \uart|RX_buffer_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_buffer_out\(0));

-- Location: LCCOMB_X25_Y15_N28
\ammar[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ammar[0]~0_combout\ = !\uart|RX_buffer_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|RX_buffer_out\(0),
	combout => \ammar[0]~0_combout\);

-- Location: FF_X25_Y15_N29
\ammar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|RECIVED_RX~clkctrl_outclk\,
	d => \ammar[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ammar(0));

-- Location: LCCOMB_X25_Y15_N12
\uart|buffer_tx[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|buffer_tx[1]~0_combout\ = !ammar(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ammar(0),
	combout => \uart|buffer_tx[1]~0_combout\);

-- Location: FF_X25_Y15_N13
\uart|buffer_tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|buffer_tx[1]~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \uart|state_tx.load_charecter_TX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_tx\(1));

-- Location: LCCOMB_X24_Y15_N10
\uart|RX_buffer_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_buffer_out[2]~2_combout\ = !\uart|buffer_string_RX\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|buffer_string_RX\(3),
	combout => \uart|RX_buffer_out[2]~2_combout\);

-- Location: FF_X24_Y15_N11
\uart|RX_buffer_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|RX_buffer_out[2]~2_combout\,
	ena => \uart|RX_buffer_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_buffer_out\(2));

-- Location: LCCOMB_X25_Y15_N22
\ammar[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ammar[2]~feeder_combout\ = \uart|RX_buffer_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_buffer_out\(2),
	combout => \ammar[2]~feeder_combout\);

-- Location: FF_X25_Y15_N23
\ammar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|RECIVED_RX~clkctrl_outclk\,
	d => \ammar[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ammar(2));

-- Location: FF_X25_Y15_N11
\uart|buffer_tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => ammar(2),
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uart|state_tx.load_charecter_TX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_tx\(3));

-- Location: LCCOMB_X25_Y15_N10
\uart|TX~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX~3_combout\ = (\uart|try_tc:i[0]~q\ & ((\uart|try_tc:i[1]~q\ & ((\uart|buffer_tx\(3)))) # (!\uart|try_tc:i[1]~q\ & (\uart|buffer_tx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|buffer_tx\(1),
	datab => \uart|try_tc:i[1]~q\,
	datac => \uart|buffer_tx\(3),
	datad => \uart|try_tc:i[0]~q\,
	combout => \uart|TX~3_combout\);

-- Location: LCCOMB_X24_Y15_N30
\uart|RX_buffer_out[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_buffer_out[1]~4_combout\ = !\uart|buffer_string_RX\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|buffer_string_RX\(2),
	combout => \uart|RX_buffer_out[1]~4_combout\);

-- Location: FF_X24_Y15_N31
\uart|RX_buffer_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|CLK_baude_rate~clkctrl_outclk\,
	d => \uart|RX_buffer_out[1]~4_combout\,
	ena => \uart|RX_buffer_out[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_buffer_out\(1));

-- Location: LCCOMB_X25_Y15_N8
\ammar[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ammar[1]~feeder_combout\ = \uart|RX_buffer_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_buffer_out\(1),
	combout => \ammar[1]~feeder_combout\);

-- Location: FF_X25_Y15_N9
\ammar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|RECIVED_RX~clkctrl_outclk\,
	d => \ammar[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ammar(1));

-- Location: FF_X25_Y15_N21
\uart|buffer_tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => ammar(1),
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uart|state_tx.load_charecter_TX~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|buffer_tx\(2));

-- Location: LCCOMB_X25_Y15_N20
\uart|TX~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX~4_combout\ = (\uart|TX~3_combout\) # ((\uart|try_tc:i[1]~q\ & (\uart|buffer_tx\(2) & !\uart|try_tc:i[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|TX~3_combout\,
	datab => \uart|try_tc:i[1]~q\,
	datac => \uart|buffer_tx\(2),
	datad => \uart|try_tc:i[0]~q\,
	combout => \uart|TX~4_combout\);

-- Location: LCCOMB_X25_Y14_N26
\uart|TX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX~0_combout\ = (\uart|state_tx.send_data_tx~q\) # (!\uart|state_tx.wait_tx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|state_tx.send_data_tx~q\,
	datad => \uart|state_tx.wait_tx~q\,
	combout => \uart|TX~0_combout\);

-- Location: LCCOMB_X25_Y14_N24
\uart|TX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX~1_combout\ = (\uart|TX~0_combout\ & (!\uart|try_tc:i[2]~q\ & (\nRST~input_o\ & \uart|CLK_baude_rate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|TX~0_combout\,
	datab => \uart|try_tc:i[2]~q\,
	datac => \nRST~input_o\,
	datad => \uart|CLK_baude_rate~q\,
	combout => \uart|TX~1_combout\);

-- Location: LCCOMB_X25_Y14_N14
\uart|TX~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX~5_combout\ = (\uart|TX~1_combout\ & ((\uart|try_tc:i[3]~q\ & (\uart|TX~2_combout\)) # (!\uart|try_tc:i[3]~q\ & ((\uart|TX~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|TX~2_combout\,
	datab => \uart|try_tc:i[3]~q\,
	datac => \uart|TX~4_combout\,
	datad => \uart|TX~1_combout\,
	combout => \uart|TX~5_combout\);

-- Location: LCCOMB_X25_Y14_N6
\uart|TX~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX~7_combout\ = (\uart|TX~q\ & !\uart|TX~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|TX~q\,
	datad => \uart|TX~6_combout\,
	combout => \uart|TX~7_combout\);

-- Location: LCCOMB_X25_Y14_N28
\uart|TX~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX~10_combout\ = (\uart|TX~9_combout\) # ((\uart|TX~8_combout\) # ((\uart|TX~5_combout\) # (\uart|TX~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|TX~9_combout\,
	datab => \uart|TX~8_combout\,
	datac => \uart|TX~5_combout\,
	datad => \uart|TX~7_combout\,
	combout => \uart|TX~10_combout\);

-- Location: FF_X25_Y14_N29
\uart|TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \uart|TX~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|TX~q\);

-- Location: IOIBUF_X34_Y2_N22
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);
END structure;


