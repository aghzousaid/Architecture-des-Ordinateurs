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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/15/2017 14:46:10"

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

ENTITY 	main IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	HEX7 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX0 : OUT std_logic_vector(0 TO 6)
	);
END main;

-- Design Ports Information
-- SW[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDG[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL \proc|finalState|current_state.operation2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|finalState|Selector21~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|mux|Mux8~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux3~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux3~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux2~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux2~1_combout\ : std_logic;
SIGNAL \proc|mux|Mux2~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux1~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux0~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux0~1_combout\ : std_logic;
SIGNAL \proc|finalState|Selector26~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector26~1_combout\ : std_logic;
SIGNAL \proc|finalState|Selector24~0_combout\ : std_logic;
SIGNAL \proc|UAL|q[0]~0_combout\ : std_logic;
SIGNAL \proc|UAL|q[2]~2_combout\ : std_logic;
SIGNAL \proc|UAL|q[2]~3_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add_compl|cell_array:2:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|q[4]~6_combout\ : std_logic;
SIGNAL \proc|UAL|q[4]~7_combout\ : std_logic;
SIGNAL \proc|UAL|q[6]~10_combout\ : std_logic;
SIGNAL \proc|UAL|q[6]~11_combout\ : std_logic;
SIGNAL \proc|UAL|q[10]~18_combout\ : std_logic;
SIGNAL \proc|UAL|q[10]~19_combout\ : std_logic;
SIGNAL \proc|UAL|q[14]~26_combout\ : std_logic;
SIGNAL \proc|UAL|q[14]~27_combout\ : std_logic;
SIGNAL \proc|finalState|Selector9~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector8~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector12~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector7~1_combout\ : std_logic;
SIGNAL \proc|finalState|Selector19~0_combout\ : std_logic;
SIGNAL \KEY[1]~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \KEY[1]~clkctrl_outclk\ : std_logic;
SIGNAL \proc|R2|Rout[3]~feeder_combout\ : std_logic;
SIGNAL \proc|R7|Rout[11]~feeder_combout\ : std_logic;
SIGNAL \proc|R1|Rout[11]~feeder_combout\ : std_logic;
SIGNAL \proc|R1|Rout[14]~feeder_combout\ : std_logic;
SIGNAL \proc|finalState|futur_state.operation2_2322~combout\ : std_logic;
SIGNAL \proc|finalState|current_state.operation2~regout\ : std_logic;
SIGNAL \proc|finalState|current_state.operation2~clkctrl_outclk\ : std_logic;
SIGNAL \proc|finalState|Selector1~0_combout\ : std_logic;
SIGNAL \proc|finalState|futur_state.fetch_2364~combout\ : std_logic;
SIGNAL \proc|finalState|current_state.fetch~0_combout\ : std_logic;
SIGNAL \proc|finalState|current_state.fetch~regout\ : std_logic;
SIGNAL \proc|finalState|futur_state.operation0_2349~combout\ : std_logic;
SIGNAL \proc|finalState|current_state.operation0~regout\ : std_logic;
SIGNAL \proc|finalState|Selector21~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector21~0clkctrl_outclk\ : std_logic;
SIGNAL \proc|finalState|Selector22~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector22~1_combout\ : std_logic;
SIGNAL \proc|finalState|comb~0_combout\ : std_logic;
SIGNAL \proc|finalState|operate[1]~0_combout\ : std_logic;
SIGNAL \proc|finalState|futur_state.operation1_2334~combout\ : std_logic;
SIGNAL \proc|finalState|current_state.operation1~feeder_combout\ : std_logic;
SIGNAL \proc|finalState|current_state.operation1~regout\ : std_logic;
SIGNAL \proc|finalState|Selector23~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector23~1_combout\ : std_logic;
SIGNAL \proc|mux|Mux15~2_combout\ : std_logic;
SIGNAL \proc|finalState|Selector6~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector7~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector1~1_combout\ : std_logic;
SIGNAL \proc|finalState|Selector7~2_combout\ : std_logic;
SIGNAL \proc|finalState|Selector13~1_combout\ : std_logic;
SIGNAL \proc|finalState|Selector13~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector13~2_combout\ : std_logic;
SIGNAL \proc|finalState|Selector9~1_combout\ : std_logic;
SIGNAL \proc|finalState|Selector9~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux15~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux15~1_combout\ : std_logic;
SIGNAL \proc|R2|Rout[0]~feeder_combout\ : std_logic;
SIGNAL \proc|finalState|Selector16~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector17~1_combout\ : std_logic;
SIGNAL \proc|finalState|Selector17~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector17~2_combout\ : std_logic;
SIGNAL \proc|finalState|Selector14~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector15~1_combout\ : std_logic;
SIGNAL \proc|finalState|Selector15~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector15~2_combout\ : std_logic;
SIGNAL \proc|finalState|Selector18~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector19~1_combout\ : std_logic;
SIGNAL \proc|finalState|Selector19~2_combout\ : std_logic;
SIGNAL \proc|finalState|Selector20~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector38~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector38~1_combout\ : std_logic;
SIGNAL \proc|finalState|Selector38~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux15~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux15~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux15~5_combout\ : std_logic;
SIGNAL \proc|mux|Mux15~6_combout\ : std_logic;
SIGNAL \proc|finalState|Equal18~0_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:1:int_cell:add_i|S~0_combout\ : std_logic;
SIGNAL \proc|UAL|q[1]~1_combout\ : std_logic;
SIGNAL \proc|finalState|Selector10~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector11~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector11~1_combout\ : std_logic;
SIGNAL \proc|finalState|Selector11~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux14~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux14~1_combout\ : std_logic;
SIGNAL \proc|mux|Mux14~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux14~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux14~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux14~5_combout\ : std_logic;
SIGNAL \proc|mux|Mux13~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux13~1_combout\ : std_logic;
SIGNAL \proc|R2|Rout[2]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Mux13~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux13~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux13~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux13~5_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add_compl|cell_array:1:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:1:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:2:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:1:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:2:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|q[3]~4_combout\ : std_logic;
SIGNAL \proc|UAL|q[3]~5_combout\ : std_logic;
SIGNAL \proc|mux|Mux12~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux12~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux12~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux12~1_combout\ : std_logic;
SIGNAL \proc|mux|Mux12~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux12~5_combout\ : std_logic;
SIGNAL \proc|mux|Mux11~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux11~1_combout\ : std_logic;
SIGNAL \proc|R1|Rout[4]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Mux11~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux11~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux11~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux11~5_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:3:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:4:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add_compl|cell_array:4:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|q[5]~8_combout\ : std_logic;
SIGNAL \proc|UAL|q[5]~9_combout\ : std_logic;
SIGNAL \proc|mux|Mux10~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux10~1_combout\ : std_logic;
SIGNAL \proc|R1|Rout[5]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Mux10~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux10~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux10~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux10~5_combout\ : std_logic;
SIGNAL \proc|R1|Rout[6]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Mux9~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux9~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux9~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux9~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux9~1_combout\ : std_logic;
SIGNAL \proc|mux|Mux9~5_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:5:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:6:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add_compl|cell_array:5:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:3:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:4:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:5:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:6:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|q[7]~12_combout\ : std_logic;
SIGNAL \proc|UAL|q[7]~13_combout\ : std_logic;
SIGNAL \proc|mux|Mux8~1_combout\ : std_logic;
SIGNAL \proc|R3|Rout[7]~feeder_combout\ : std_logic;
SIGNAL \proc|R1|Rout[7]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Mux8~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux8~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux8~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux8~5_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add_compl|cell_array:7:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:7:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|q[8]~14_combout\ : std_logic;
SIGNAL \proc|UAL|q[8]~15_combout\ : std_logic;
SIGNAL \proc|R2|Rout[8]~feeder_combout\ : std_logic;
SIGNAL \proc|R1|Rout[8]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Mux7~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux7~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux7~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux7~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux7~1_combout\ : std_logic;
SIGNAL \proc|mux|Mux7~5_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add_compl|cell_array:8:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:8:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|q[9]~16_combout\ : std_logic;
SIGNAL \proc|UAL|q[9]~17_combout\ : std_logic;
SIGNAL \proc|mux|Mux6~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux6~1_combout\ : std_logic;
SIGNAL \proc|mux|Mux6~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux6~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux6~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux6~5_combout\ : std_logic;
SIGNAL \proc|mux|Mux5~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux5~1_combout\ : std_logic;
SIGNAL \proc|mux|Mux5~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux5~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux5~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux5~5_combout\ : std_logic;
SIGNAL \proc|mux|Mux4~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux4~1_combout\ : std_logic;
SIGNAL \proc|mux|Mux4~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux4~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux4~4_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:7:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:8:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:9:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:10:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add_compl|cell_array:10:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|q[11]~20_combout\ : std_logic;
SIGNAL \proc|UAL|q[11]~21_combout\ : std_logic;
SIGNAL \proc|mux|Mux4~5_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add_compl|cell_array:11:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:9:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:10:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:11:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|q[12]~22_combout\ : std_logic;
SIGNAL \proc|UAL|q[12]~23_combout\ : std_logic;
SIGNAL \proc|mux|Mux3~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux3~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux3~1_combout\ : std_logic;
SIGNAL \proc|mux|Mux3~5_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add_compl|cell_array:12:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:11:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:12:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|q[13]~24_combout\ : std_logic;
SIGNAL \proc|UAL|q[13]~25_combout\ : std_logic;
SIGNAL \proc|mux|Mux2~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux2~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux2~5_combout\ : std_logic;
SIGNAL \proc|mux|Mux1~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux1~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux1~0_combout\ : std_logic;
SIGNAL \proc|mux|Mux1~1_combout\ : std_logic;
SIGNAL \proc|mux|Mux1~5_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:12:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:13:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:15:last_cell:last_add|S~0_combout\ : std_logic;
SIGNAL \proc|UAL|add|cell_array:15:last_cell:last_add|S~combout\ : std_logic;
SIGNAL \proc|UAL|sub|add_compl|cell_array:13:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:13:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:14:int_cell:add_i|COUT~0_combout\ : std_logic;
SIGNAL \proc|UAL|sub|add|cell_array:15:last_cell:last_add|S~combout\ : std_logic;
SIGNAL \proc|UAL|q[15]~28_combout\ : std_logic;
SIGNAL \proc|R1|Rout[15]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Mux0~2_combout\ : std_logic;
SIGNAL \proc|mux|Mux0~3_combout\ : std_logic;
SIGNAL \proc|mux|Mux0~4_combout\ : std_logic;
SIGNAL \proc|mux|Mux0~5_combout\ : std_logic;
SIGNAL \proc|finalState|Selector0~0_combout\ : std_logic;
SIGNAL \proc|finalState|Selector0~1_combout\ : std_logic;
SIGNAL \proc|finalState|DONE~combout\ : std_logic;
SIGNAL \proc|IR|Rout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \proc|R0|Rout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|finalState|sigSet\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \proc|finalState|operate\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \proc|finalState|MUXin\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|R1|Rout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|R2|Rout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|R3|Rout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|R4|Rout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|R5|Rout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|R6|Rout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|R7|Rout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|A|Rout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|G|Rout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX7 <= ww_HEX7;
HEX6 <= ww_HEX6;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\proc|finalState|current_state.operation2~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \proc|finalState|current_state.operation2~regout\);

\proc|finalState|Selector21~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \proc|finalState|Selector21~0_combout\);

\KEY[1]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \KEY[1]~clk_delay_ctrl_clkout\);

-- Location: LCFF_X42_Y5_N13
\proc|R5|Rout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux15~6_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(0));

-- Location: LCFF_X45_Y2_N5
\proc|G|Rout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[0]~0_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(0));

-- Location: LCFF_X42_Y5_N25
\proc|R7|Rout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux13~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(2));

-- Location: LCFF_X45_Y2_N27
\proc|G|Rout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[2]~3_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(2));

-- Location: LCFF_X46_Y5_N19
\proc|R2|Rout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|R2|Rout[3]~feeder_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(3));

-- Location: LCFF_X45_Y5_N17
\proc|R1|Rout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux12~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(3));

-- Location: LCFF_X42_Y5_N11
\proc|R5|Rout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux11~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(4));

-- Location: LCFF_X43_Y3_N21
\proc|G|Rout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[4]~7_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(4));

-- Location: LCFF_X42_Y5_N7
\proc|R5|Rout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux10~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(5));

-- Location: LCFF_X44_Y6_N11
\proc|R7|Rout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux9~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(6));

-- Location: LCFF_X43_Y3_N5
\proc|G|Rout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[6]~11_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(6));

-- Location: LCFF_X43_Y5_N27
\proc|R6|Rout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux8~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(7));

-- Location: LCFF_X43_Y5_N17
\proc|R4|Rout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux8~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(7));

-- Location: LCCOMB_X43_Y5_N16
\proc|mux|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux8~0_combout\ = (\proc|finalState|MUXin\(0) & (((\proc|finalState|MUXin\(1))))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & (\proc|R6|Rout\(7))) # (!\proc|finalState|MUXin\(1) & ((\proc|R4|Rout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|R6|Rout\(7),
	datac => \proc|R4|Rout\(7),
	datad => \proc|finalState|MUXin\(1),
	combout => \proc|mux|Mux8~0_combout\);

-- Location: LCFF_X43_Y6_N21
\proc|R5|Rout[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|mux|Mux7~5_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(8));

-- Location: LCFF_X42_Y4_N11
\proc|R6|Rout[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux7~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(8));

-- Location: LCFF_X43_Y6_N9
\proc|R5|Rout[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|mux|Mux6~5_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(9));

-- Location: LCFF_X46_Y6_N7
\proc|R3|Rout[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux6~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(9));

-- Location: LCFF_X41_Y5_N15
\proc|R7|Rout[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux5~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(10));

-- Location: LCFF_X45_Y2_N23
\proc|G|Rout[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[10]~19_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(10));

-- Location: LCFF_X42_Y3_N7
\proc|R3|Rout[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux5~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(10));

-- Location: LCFF_X42_Y4_N7
\proc|R6|Rout[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux4~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(11));

-- Location: LCFF_X45_Y4_N23
\proc|R7|Rout[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|R7|Rout[11]~feeder_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(11));

-- Location: LCFF_X41_Y5_N21
\proc|R1|Rout[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|R1|Rout[11]~feeder_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(11));

-- Location: LCFF_X44_Y3_N1
\proc|R6|Rout[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux3~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(12));

-- Location: LCFF_X44_Y3_N19
\proc|R4|Rout[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux3~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(12));

-- Location: LCCOMB_X44_Y3_N18
\proc|mux|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux3~0_combout\ = (\proc|finalState|MUXin\(0) & (\proc|finalState|MUXin\(1))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & ((\proc|R6|Rout\(12)))) # (!\proc|finalState|MUXin\(1) & (\proc|R4|Rout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R4|Rout\(12),
	datad => \proc|R6|Rout\(12),
	combout => \proc|mux|Mux3~0_combout\);

-- Location: LCFF_X45_Y4_N25
\proc|R1|Rout[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux3~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(12));

-- Location: LCFF_X45_Y5_N15
\proc|R0|Rout[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux3~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(12));

-- Location: LCCOMB_X45_Y5_N14
\proc|mux|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux3~2_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1)) # ((\proc|R1|Rout\(12))))) # (!\proc|finalState|MUXin\(0) & (!\proc|finalState|MUXin\(1) & (\proc|R0|Rout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R0|Rout\(12),
	datad => \proc|R1|Rout\(12),
	combout => \proc|mux|Mux3~2_combout\);

-- Location: LCFF_X43_Y6_N29
\proc|R5|Rout[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux2~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(13));

-- Location: LCFF_X42_Y6_N29
\proc|R6|Rout[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux2~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(13));

-- Location: LCFF_X42_Y6_N15
\proc|R4|Rout[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux2~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(13));

-- Location: LCCOMB_X42_Y6_N14
\proc|mux|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux2~0_combout\ = (\proc|finalState|MUXin\(0) & (\proc|finalState|MUXin\(1))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & ((\proc|R6|Rout\(13)))) # (!\proc|finalState|MUXin\(1) & (\proc|R4|Rout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R4|Rout\(13),
	datad => \proc|R6|Rout\(13),
	combout => \proc|mux|Mux2~0_combout\);

-- Location: LCFF_X43_Y6_N11
\proc|R7|Rout[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux2~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(13));

-- Location: LCCOMB_X43_Y6_N10
\proc|mux|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux2~1_combout\ = (\proc|mux|Mux2~0_combout\ & (((\proc|R7|Rout\(13))) # (!\proc|finalState|MUXin\(0)))) # (!\proc|mux|Mux2~0_combout\ & (\proc|finalState|MUXin\(0) & ((\proc|R5|Rout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux2~0_combout\,
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R7|Rout\(13),
	datad => \proc|R5|Rout\(13),
	combout => \proc|mux|Mux2~1_combout\);

-- Location: LCFF_X41_Y5_N31
\proc|R1|Rout[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux2~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(13));

-- Location: LCFF_X45_Y5_N21
\proc|R0|Rout[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux2~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(13));

-- Location: LCCOMB_X45_Y5_N20
\proc|mux|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux2~2_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1)) # ((\proc|R1|Rout\(13))))) # (!\proc|finalState|MUXin\(0) & (!\proc|finalState|MUXin\(1) & (\proc|R0|Rout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R0|Rout\(13),
	datad => \proc|R1|Rout\(13),
	combout => \proc|mux|Mux2~2_combout\);

-- Location: LCFF_X43_Y6_N13
\proc|R5|Rout[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux1~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(14));

-- Location: LCFF_X42_Y2_N5
\proc|G|Rout[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[14]~27_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(14));

-- Location: LCFF_X46_Y4_N31
\proc|R1|Rout[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|R1|Rout[14]~feeder_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(14));

-- Location: LCFF_X46_Y5_N11
\proc|R0|Rout[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux1~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(14));

-- Location: LCCOMB_X46_Y5_N10
\proc|mux|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux1~2_combout\ = (\proc|finalState|MUXin\(1) & (\proc|finalState|MUXin\(0))) # (!\proc|finalState|MUXin\(1) & ((\proc|finalState|MUXin\(0) & ((\proc|R1|Rout\(14)))) # (!\proc|finalState|MUXin\(0) & (\proc|R0|Rout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R0|Rout\(14),
	datad => \proc|R1|Rout\(14),
	combout => \proc|mux|Mux1~2_combout\);

-- Location: LCFF_X43_Y6_N25
\proc|R5|Rout[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|mux|Mux0~5_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(15));

-- Location: LCFF_X42_Y6_N13
\proc|R6|Rout[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux0~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(15));

-- Location: LCFF_X42_Y6_N3
\proc|R4|Rout[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux0~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(15));

-- Location: LCCOMB_X42_Y6_N12
\proc|mux|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux0~0_combout\ = (\proc|finalState|MUXin\(0) & (\proc|finalState|MUXin\(1))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & (\proc|R6|Rout\(15))) # (!\proc|finalState|MUXin\(1) & ((\proc|R4|Rout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R6|Rout\(15),
	datad => \proc|R4|Rout\(15),
	combout => \proc|mux|Mux0~0_combout\);

-- Location: LCFF_X43_Y6_N31
\proc|R7|Rout[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux0~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(15));

-- Location: LCCOMB_X43_Y6_N30
\proc|mux|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux0~1_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|mux|Mux0~0_combout\ & ((\proc|R7|Rout\(15)))) # (!\proc|mux|Mux0~0_combout\ & (\proc|R5|Rout\(15))))) # (!\proc|finalState|MUXin\(0) & (((\proc|mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R5|Rout\(15),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R7|Rout\(15),
	datad => \proc|mux|Mux0~0_combout\,
	combout => \proc|mux|Mux0~1_combout\);

-- Location: LCCOMB_X47_Y5_N10
\proc|finalState|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector26~0_combout\ = (\proc|finalState|current_state.operation2~regout\) # ((\proc|finalState|current_state.operation1~regout\ & \proc|IR|Rout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|finalState|current_state.operation1~regout\,
	datac => \proc|IR|Rout\(0),
	datad => \proc|finalState|current_state.operation2~regout\,
	combout => \proc|finalState|Selector26~0_combout\);

-- Location: LCCOMB_X43_Y5_N0
\proc|finalState|Selector26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector26~1_combout\ = (\proc|finalState|Selector26~0_combout\) # ((\proc|IR|Rout\(3) & \proc|finalState|Selector23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|Selector26~0_combout\,
	datab => \proc|IR|Rout\(3),
	datad => \proc|finalState|Selector23~0_combout\,
	combout => \proc|finalState|Selector26~1_combout\);

-- Location: LCCOMB_X45_Y5_N10
\proc|finalState|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector24~0_combout\ = (\proc|IR|Rout\(1) & ((\proc|finalState|current_state.operation1~regout\) # ((\proc|finalState|Selector23~0_combout\ & \proc|IR|Rout\(4))))) # (!\proc|IR|Rout\(1) & (((\proc|finalState|Selector23~0_combout\ & 
-- \proc|IR|Rout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(1),
	datab => \proc|finalState|current_state.operation1~regout\,
	datac => \proc|finalState|Selector23~0_combout\,
	datad => \proc|IR|Rout\(4),
	combout => \proc|finalState|Selector24~0_combout\);

-- Location: LCCOMB_X45_Y2_N4
\proc|UAL|q[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[0]~0_combout\ = \proc|mux|Mux15~6_combout\ $ (\proc|A|Rout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|mux|Mux15~6_combout\,
	datad => \proc|A|Rout\(0),
	combout => \proc|UAL|q[0]~0_combout\);

-- Location: LCCOMB_X45_Y2_N12
\proc|UAL|q[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[2]~2_combout\ = (\proc|finalState|operate\(0) & (\proc|UAL|sub|add|cell_array:1:int_cell:add_i|COUT~0_combout\ $ (((\proc|UAL|sub|add_compl|cell_array:1:int_cell:add_i|COUT~0_combout\))))) # (!\proc|finalState|operate\(0) & 
-- (((\proc|UAL|add|cell_array:1:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add|cell_array:1:int_cell:add_i|COUT~0_combout\,
	datab => \proc|UAL|add|cell_array:1:int_cell:add_i|COUT~0_combout\,
	datac => \proc|finalState|operate\(0),
	datad => \proc|UAL|sub|add_compl|cell_array:1:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|q[2]~2_combout\);

-- Location: LCCOMB_X45_Y2_N26
\proc|UAL|q[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[2]~3_combout\ = \proc|mux|Mux13~5_combout\ $ (\proc|A|Rout\(2) $ (\proc|UAL|q[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux13~5_combout\,
	datac => \proc|A|Rout\(2),
	datad => \proc|UAL|q[2]~2_combout\,
	combout => \proc|UAL|q[2]~3_combout\);

-- Location: LCCOMB_X43_Y5_N22
\proc|UAL|sub|add_compl|cell_array:2:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add_compl|cell_array:2:int_cell:add_i|COUT~0_combout\ = (\proc|mux|Mux13~5_combout\) # ((\proc|mux|Mux15~6_combout\) # (\proc|mux|Mux14~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux13~5_combout\,
	datab => \proc|mux|Mux15~6_combout\,
	datad => \proc|mux|Mux14~5_combout\,
	combout => \proc|UAL|sub|add_compl|cell_array:2:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y3_N10
\proc|UAL|q[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[4]~6_combout\ = (\proc|finalState|operate\(0) & ((\proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0_combout\ $ (\proc|UAL|sub|add|cell_array:3:int_cell:add_i|COUT~0_combout\)))) # (!\proc|finalState|operate\(0) & 
-- (\proc|UAL|add|cell_array:3:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|add|cell_array:3:int_cell:add_i|COUT~0_combout\,
	datab => \proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0_combout\,
	datac => \proc|UAL|sub|add|cell_array:3:int_cell:add_i|COUT~0_combout\,
	datad => \proc|finalState|operate\(0),
	combout => \proc|UAL|q[4]~6_combout\);

-- Location: LCCOMB_X43_Y3_N20
\proc|UAL|q[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[4]~7_combout\ = \proc|mux|Mux11~5_combout\ $ (\proc|A|Rout\(4) $ (\proc|UAL|q[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux11~5_combout\,
	datac => \proc|A|Rout\(4),
	datad => \proc|UAL|q[4]~6_combout\,
	combout => \proc|UAL|q[4]~7_combout\);

-- Location: LCCOMB_X43_Y3_N18
\proc|UAL|q[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[6]~10_combout\ = (\proc|finalState|operate\(0) & (\proc|UAL|sub|add_compl|cell_array:5:int_cell:add_i|COUT~0_combout\ $ ((\proc|UAL|sub|add|cell_array:5:int_cell:add_i|COUT~0_combout\)))) # (!\proc|finalState|operate\(0) & 
-- (((\proc|UAL|add|cell_array:5:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add_compl|cell_array:5:int_cell:add_i|COUT~0_combout\,
	datab => \proc|UAL|sub|add|cell_array:5:int_cell:add_i|COUT~0_combout\,
	datac => \proc|finalState|operate\(0),
	datad => \proc|UAL|add|cell_array:5:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|q[6]~10_combout\);

-- Location: LCCOMB_X43_Y3_N4
\proc|UAL|q[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[6]~11_combout\ = \proc|mux|Mux9~5_combout\ $ (\proc|A|Rout\(6) $ (\proc|UAL|q[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux9~5_combout\,
	datac => \proc|A|Rout\(6),
	datad => \proc|UAL|q[6]~10_combout\,
	combout => \proc|UAL|q[6]~11_combout\);

-- Location: LCFF_X44_Y2_N3
\proc|A|Rout[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux5~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(10));

-- Location: LCCOMB_X45_Y2_N28
\proc|UAL|q[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[10]~18_combout\ = (\proc|finalState|operate\(0) & ((\proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0_combout\ $ (\proc|UAL|sub|add|cell_array:9:int_cell:add_i|COUT~0_combout\)))) # (!\proc|finalState|operate\(0) & 
-- (\proc|UAL|add|cell_array:9:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|add|cell_array:9:int_cell:add_i|COUT~0_combout\,
	datab => \proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0_combout\,
	datac => \proc|finalState|operate\(0),
	datad => \proc|UAL|sub|add|cell_array:9:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|q[10]~18_combout\);

-- Location: LCCOMB_X45_Y2_N22
\proc|UAL|q[10]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[10]~19_combout\ = \proc|mux|Mux5~5_combout\ $ (\proc|A|Rout\(10) $ (\proc|UAL|q[10]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|mux|Mux5~5_combout\,
	datac => \proc|A|Rout\(10),
	datad => \proc|UAL|q[10]~18_combout\,
	combout => \proc|UAL|q[10]~19_combout\);

-- Location: LCCOMB_X42_Y2_N2
\proc|UAL|q[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[14]~26_combout\ = (\proc|finalState|operate\(0) & (\proc|UAL|sub|add_compl|cell_array:13:int_cell:add_i|COUT~0_combout\ $ ((\proc|UAL|sub|add|cell_array:13:int_cell:add_i|COUT~0_combout\)))) # (!\proc|finalState|operate\(0) & 
-- (((\proc|UAL|add|cell_array:13:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add_compl|cell_array:13:int_cell:add_i|COUT~0_combout\,
	datab => \proc|UAL|sub|add|cell_array:13:int_cell:add_i|COUT~0_combout\,
	datac => \proc|UAL|add|cell_array:13:int_cell:add_i|COUT~0_combout\,
	datad => \proc|finalState|operate\(0),
	combout => \proc|UAL|q[14]~26_combout\);

-- Location: LCCOMB_X42_Y2_N4
\proc|UAL|q[14]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[14]~27_combout\ = \proc|mux|Mux1~5_combout\ $ (\proc|A|Rout\(14) $ (\proc|UAL|q[14]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|mux|Mux1~5_combout\,
	datac => \proc|A|Rout\(14),
	datad => \proc|UAL|q[14]~26_combout\,
	combout => \proc|UAL|q[14]~27_combout\);

-- Location: LCCOMB_X43_Y4_N12
\proc|finalState|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector9~0_combout\ = (\proc|IR|Rout\(2) & (\proc|IR|Rout\(6) & (!\proc|IR|Rout\(0) & \proc|IR|Rout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(2),
	datab => \proc|IR|Rout\(6),
	datac => \proc|IR|Rout\(0),
	datad => \proc|IR|Rout\(1),
	combout => \proc|finalState|Selector9~0_combout\);

-- Location: LCCOMB_X42_Y4_N26
\proc|finalState|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector8~0_combout\ = ((\proc|IR|Rout\(4) & (\proc|IR|Rout\(5) & !\proc|IR|Rout\(3)))) # (!\proc|finalState|current_state.operation2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(4),
	datab => \proc|IR|Rout\(5),
	datac => \proc|IR|Rout\(3),
	datad => \proc|finalState|current_state.operation2~regout\,
	combout => \proc|finalState|Selector8~0_combout\);

-- Location: LCCOMB_X42_Y4_N22
\proc|finalState|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector12~0_combout\ = ((!\proc|IR|Rout\(4) & (\proc|IR|Rout\(5) & !\proc|IR|Rout\(3)))) # (!\proc|finalState|current_state.operation2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(4),
	datab => \proc|IR|Rout\(5),
	datac => \proc|IR|Rout\(3),
	datad => \proc|finalState|current_state.operation2~regout\,
	combout => \proc|finalState|Selector12~0_combout\);

-- Location: LCCOMB_X42_Y4_N20
\proc|finalState|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector7~1_combout\ = (\proc|IR|Rout\(4) & (\proc|IR|Rout\(3) & (!\proc|IR|Rout\(6) & \proc|IR|Rout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(4),
	datab => \proc|IR|Rout\(3),
	datac => \proc|IR|Rout\(6),
	datad => \proc|IR|Rout\(5),
	combout => \proc|finalState|Selector7~1_combout\);

-- Location: LCCOMB_X43_Y4_N24
\proc|finalState|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector19~0_combout\ = (!\proc|IR|Rout\(2) & (\proc|IR|Rout\(6) & (!\proc|IR|Rout\(1) & \proc|IR|Rout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(2),
	datab => \proc|IR|Rout\(6),
	datac => \proc|IR|Rout\(1),
	datad => \proc|IR|Rout\(0),
	combout => \proc|finalState|Selector19~0_combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: CLKDELAYCTRL_G4
\KEY[1]~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \KEY~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \KEY[1]~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G4
\KEY[1]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[1]~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y5_N18
\proc|R2|Rout[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R2|Rout[3]~feeder_combout\ = \proc|mux|Mux12~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Mux12~5_combout\,
	combout => \proc|R2|Rout[3]~feeder_combout\);

-- Location: LCCOMB_X45_Y4_N22
\proc|R7|Rout[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R7|Rout[11]~feeder_combout\ = \proc|mux|Mux4~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Mux4~5_combout\,
	combout => \proc|R7|Rout[11]~feeder_combout\);

-- Location: LCCOMB_X41_Y5_N20
\proc|R1|Rout[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R1|Rout[11]~feeder_combout\ = \proc|mux|Mux4~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Mux4~5_combout\,
	combout => \proc|R1|Rout[11]~feeder_combout\);

-- Location: LCCOMB_X46_Y4_N30
\proc|R1|Rout[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R1|Rout[14]~feeder_combout\ = \proc|mux|Mux1~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Mux1~5_combout\,
	combout => \proc|R1|Rout[14]~feeder_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[14]~I\ : cycloneii_io
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
	padio => ww_SW(14),
	combout => \SW~combout\(14));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X44_Y4_N0
\proc|finalState|futur_state.operation2_2322\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|futur_state.operation2_2322~combout\ = (GLOBAL(\proc|finalState|Selector21~0clkctrl_outclk\) & (\proc|finalState|current_state.operation1~regout\)) # (!GLOBAL(\proc|finalState|Selector21~0clkctrl_outclk\) & 
-- ((\proc|finalState|futur_state.operation2_2322~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|current_state.operation1~regout\,
	datab => \proc|finalState|futur_state.operation2_2322~combout\,
	datad => \proc|finalState|Selector21~0clkctrl_outclk\,
	combout => \proc|finalState|futur_state.operation2_2322~combout\);

-- Location: LCFF_X44_Y4_N1
\proc|finalState|current_state.operation2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|finalState|futur_state.operation2_2322~combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|finalState|current_state.operation2~regout\);

-- Location: CLKCTRL_G14
\proc|finalState|current_state.operation2~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \proc|finalState|current_state.operation2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \proc|finalState|current_state.operation2~clkctrl_outclk\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[15]~I\ : cycloneii_io
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
	padio => ww_SW(15),
	combout => \SW~combout\(15));

-- Location: LCFF_X44_Y4_N25
\proc|IR|Rout[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	sdata => \SW~combout\(15),
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|IR|Rout\(8));

-- Location: LCCOMB_X45_Y4_N28
\proc|finalState|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector1~0_combout\ = (\proc|finalState|current_state.operation2~regout\) # ((\proc|finalState|current_state.operation0~regout\ & (!\proc|IR|Rout\(8) & !\proc|IR|Rout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|current_state.operation0~regout\,
	datab => \proc|IR|Rout\(8),
	datac => \proc|finalState|current_state.operation2~regout\,
	datad => \proc|IR|Rout\(7),
	combout => \proc|finalState|Selector1~0_combout\);

-- Location: LCCOMB_X44_Y4_N2
\proc|finalState|futur_state.fetch_2364\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|futur_state.fetch_2364~combout\ = (GLOBAL(\proc|finalState|Selector21~0clkctrl_outclk\) & ((\proc|finalState|Selector1~0_combout\))) # (!GLOBAL(\proc|finalState|Selector21~0clkctrl_outclk\) & 
-- (\proc|finalState|futur_state.fetch_2364~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|finalState|futur_state.fetch_2364~combout\,
	datac => \proc|finalState|Selector1~0_combout\,
	datad => \proc|finalState|Selector21~0clkctrl_outclk\,
	combout => \proc|finalState|futur_state.fetch_2364~combout\);

-- Location: LCCOMB_X44_Y4_N10
\proc|finalState|current_state.fetch~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|current_state.fetch~0_combout\ = !\proc|finalState|futur_state.fetch_2364~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|finalState|futur_state.fetch_2364~combout\,
	combout => \proc|finalState|current_state.fetch~0_combout\);

-- Location: LCFF_X44_Y4_N11
\proc|finalState|current_state.fetch\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|finalState|current_state.fetch~0_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|finalState|current_state.fetch~regout\);

-- Location: LCCOMB_X44_Y4_N14
\proc|finalState|sigSet[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|sigSet\(10) = (GLOBAL(\proc|finalState|current_state.operation2~clkctrl_outclk\) & (\proc|finalState|sigSet\(10))) # (!GLOBAL(\proc|finalState|current_state.operation2~clkctrl_outclk\) & ((!\proc|finalState|current_state.fetch~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|finalState|sigSet\(10),
	datac => \proc|finalState|current_state.operation2~clkctrl_outclk\,
	datad => \proc|finalState|current_state.fetch~regout\,
	combout => \proc|finalState|sigSet\(10));

-- Location: LCFF_X44_Y4_N9
\proc|IR|Rout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	sdata => \SW~combout\(14),
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|IR|Rout\(7));

-- Location: LCCOMB_X44_Y4_N30
\proc|finalState|futur_state.operation0_2349\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|futur_state.operation0_2349~combout\ = (GLOBAL(\proc|finalState|Selector21~0clkctrl_outclk\) & ((!\proc|finalState|current_state.fetch~regout\))) # (!GLOBAL(\proc|finalState|Selector21~0clkctrl_outclk\) & 
-- (\proc|finalState|futur_state.operation0_2349~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|futur_state.operation0_2349~combout\,
	datac => \proc|finalState|current_state.fetch~regout\,
	datad => \proc|finalState|Selector21~0clkctrl_outclk\,
	combout => \proc|finalState|futur_state.operation0_2349~combout\);

-- Location: LCFF_X44_Y4_N31
\proc|finalState|current_state.operation0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|finalState|futur_state.operation0_2349~combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|finalState|current_state.operation0~regout\);

-- Location: LCCOMB_X44_Y4_N8
\proc|finalState|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector21~0_combout\ = (!\proc|finalState|current_state.operation0~regout\) # (!\proc|IR|Rout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|IR|Rout\(7),
	datad => \proc|finalState|current_state.operation0~regout\,
	combout => \proc|finalState|Selector21~0_combout\);

-- Location: CLKCTRL_G12
\proc|finalState|Selector21~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \proc|finalState|Selector21~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \proc|finalState|Selector21~0clkctrl_outclk\);

-- Location: LCCOMB_X45_Y5_N2
\proc|finalState|MUXin[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|MUXin\(1) = (GLOBAL(\proc|finalState|Selector21~0clkctrl_outclk\) & (\proc|finalState|Selector24~0_combout\)) # (!GLOBAL(\proc|finalState|Selector21~0clkctrl_outclk\) & ((\proc|finalState|MUXin\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|Selector24~0_combout\,
	datab => \proc|finalState|MUXin\(1),
	datad => \proc|finalState|Selector21~0clkctrl_outclk\,
	combout => \proc|finalState|MUXin\(1));

-- Location: LCCOMB_X47_Y4_N0
\proc|finalState|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector22~0_combout\ = (!\proc|IR|Rout\(6) & (\proc|finalState|current_state.operation0~regout\ & (!\proc|IR|Rout\(7) & !\proc|IR|Rout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(6),
	datab => \proc|finalState|current_state.operation0~regout\,
	datac => \proc|IR|Rout\(7),
	datad => \proc|IR|Rout\(8),
	combout => \proc|finalState|Selector22~0_combout\);

-- Location: LCCOMB_X47_Y5_N16
\proc|finalState|Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector22~1_combout\ = (\proc|finalState|current_state.operation2~regout\) # ((\proc|finalState|Selector22~0_combout\) # (!\proc|finalState|current_state.fetch~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|finalState|current_state.operation2~regout\,
	datac => \proc|finalState|current_state.fetch~regout\,
	datad => \proc|finalState|Selector22~0_combout\,
	combout => \proc|finalState|Selector22~1_combout\);

-- Location: LCCOMB_X47_Y5_N8
\proc|finalState|MUXin[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|MUXin\(3) = (GLOBAL(\proc|finalState|Selector21~0clkctrl_outclk\) & ((\proc|finalState|Selector22~1_combout\))) # (!GLOBAL(\proc|finalState|Selector21~0clkctrl_outclk\) & (\proc|finalState|MUXin\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|finalState|MUXin\(3),
	datac => \proc|finalState|Selector22~1_combout\,
	datad => \proc|finalState|Selector21~0clkctrl_outclk\,
	combout => \proc|finalState|MUXin\(3));

-- Location: LCCOMB_X47_Y4_N2
\proc|finalState|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|comb~0_combout\ = (\proc|finalState|current_state.operation0~regout\ & ((\proc|IR|Rout\(7)) # (\proc|IR|Rout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|finalState|current_state.operation0~regout\,
	datac => \proc|IR|Rout\(7),
	datad => \proc|IR|Rout\(8),
	combout => \proc|finalState|comb~0_combout\);

-- Location: LCCOMB_X43_Y4_N28
\proc|finalState|operate[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|operate[1]~0_combout\ = (!\proc|IR|Rout\(7) & (\proc|finalState|current_state.operation0~regout\ & \proc|IR|Rout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(7),
	datab => \proc|finalState|current_state.operation0~regout\,
	datad => \proc|IR|Rout\(8),
	combout => \proc|finalState|operate[1]~0_combout\);

-- Location: LCCOMB_X47_Y4_N12
\proc|finalState|futur_state.operation1_2334\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|futur_state.operation1_2334~combout\ = (\proc|finalState|comb~0_combout\ & ((\proc|finalState|operate[1]~0_combout\) # (\proc|finalState|futur_state.operation1_2334~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|finalState|comb~0_combout\,
	datac => \proc|finalState|operate[1]~0_combout\,
	datad => \proc|finalState|futur_state.operation1_2334~combout\,
	combout => \proc|finalState|futur_state.operation1_2334~combout\);

-- Location: LCCOMB_X47_Y5_N30
\proc|finalState|current_state.operation1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|current_state.operation1~feeder_combout\ = \proc|finalState|futur_state.operation1_2334~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|finalState|futur_state.operation1_2334~combout\,
	combout => \proc|finalState|current_state.operation1~feeder_combout\);

-- Location: LCFF_X47_Y5_N31
\proc|finalState|current_state.operation1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \proc|finalState|current_state.operation1~feeder_combout\,
	aclr => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|finalState|current_state.operation1~regout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: LCFF_X43_Y4_N5
\proc|IR|Rout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(9),
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|IR|Rout\(2));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[13]~I\ : cycloneii_io
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
	padio => ww_SW(13),
	combout => \SW~combout\(13));

-- Location: LCFF_X43_Y4_N15
\proc|IR|Rout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	sdata => \SW~combout\(13),
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|IR|Rout\(6));

-- Location: LCCOMB_X45_Y5_N24
\proc|finalState|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector23~0_combout\ = (\proc|finalState|current_state.operation0~regout\ & ((\proc|IR|Rout\(7)) # ((\proc|IR|Rout\(8)) # (\proc|IR|Rout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(7),
	datab => \proc|finalState|current_state.operation0~regout\,
	datac => \proc|IR|Rout\(8),
	datad => \proc|IR|Rout\(6),
	combout => \proc|finalState|Selector23~0_combout\);

-- Location: LCCOMB_X46_Y5_N14
\proc|finalState|Selector23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector23~1_combout\ = (\proc|IR|Rout\(5) & ((\proc|finalState|Selector23~0_combout\) # ((\proc|finalState|current_state.operation1~regout\ & \proc|IR|Rout\(2))))) # (!\proc|IR|Rout\(5) & 
-- (\proc|finalState|current_state.operation1~regout\ & (\proc|IR|Rout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(5),
	datab => \proc|finalState|current_state.operation1~regout\,
	datac => \proc|IR|Rout\(2),
	datad => \proc|finalState|Selector23~0_combout\,
	combout => \proc|finalState|Selector23~1_combout\);

-- Location: LCCOMB_X46_Y5_N12
\proc|finalState|MUXin[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|MUXin\(2) = (GLOBAL(\proc|finalState|Selector21~0clkctrl_outclk\) & ((\proc|finalState|Selector23~1_combout\))) # (!GLOBAL(\proc|finalState|Selector21~0clkctrl_outclk\) & (\proc|finalState|MUXin\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(2),
	datac => \proc|finalState|Selector23~1_combout\,
	datad => \proc|finalState|Selector21~0clkctrl_outclk\,
	combout => \proc|finalState|MUXin\(2));

-- Location: LCCOMB_X44_Y5_N4
\proc|mux|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux15~2_combout\ = (\proc|finalState|MUXin\(2)) # ((\proc|finalState|MUXin\(3) & ((\proc|finalState|MUXin\(1)) # (!\proc|finalState|MUXin\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|finalState|MUXin\(3),
	datad => \proc|finalState|MUXin\(2),
	combout => \proc|mux|Mux15~2_combout\);

-- Location: LCCOMB_X43_Y5_N10
\proc|finalState|MUXin[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|MUXin\(0) = (GLOBAL(\proc|finalState|Selector21~0clkctrl_outclk\) & (\proc|finalState|Selector26~1_combout\)) # (!GLOBAL(\proc|finalState|Selector21~0clkctrl_outclk\) & ((\proc|finalState|MUXin\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|Selector26~1_combout\,
	datab => \proc|finalState|MUXin\(0),
	datad => \proc|finalState|Selector21~0clkctrl_outclk\,
	combout => \proc|finalState|MUXin\(0));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[12]~I\ : cycloneii_io
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
	padio => ww_SW(12),
	combout => \SW~combout\(12));

-- Location: LCFF_X43_Y4_N29
\proc|IR|Rout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	sdata => \SW~combout\(12),
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|IR|Rout\(5));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[10]~I\ : cycloneii_io
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
	padio => ww_SW(10),
	combout => \SW~combout\(10));

-- Location: LCFF_X43_Y4_N31
\proc|IR|Rout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	sdata => \SW~combout\(10),
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|IR|Rout\(3));

-- Location: LCCOMB_X42_Y4_N8
\proc|finalState|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector6~0_combout\ = ((\proc|IR|Rout\(4) & (\proc|IR|Rout\(5) & \proc|IR|Rout\(3)))) # (!\proc|finalState|current_state.operation2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(4),
	datab => \proc|IR|Rout\(5),
	datac => \proc|IR|Rout\(3),
	datad => \proc|finalState|current_state.operation2~regout\,
	combout => \proc|finalState|Selector6~0_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: LCFF_X43_Y4_N25
\proc|IR|Rout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(8),
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|IR|Rout\(1));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCFF_X43_Y4_N13
\proc|IR|Rout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \SW~combout\(7),
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|IR|Rout\(0));

-- Location: LCCOMB_X42_Y4_N14
\proc|finalState|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector7~0_combout\ = (\proc|IR|Rout\(2) & (\proc|IR|Rout\(1) & (\proc|IR|Rout\(0) & \proc|IR|Rout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(2),
	datab => \proc|IR|Rout\(1),
	datac => \proc|IR|Rout\(0),
	datad => \proc|IR|Rout\(6),
	combout => \proc|finalState|Selector7~0_combout\);

-- Location: LCCOMB_X44_Y4_N6
\proc|finalState|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector1~1_combout\ = (!\proc|IR|Rout\(7) & (!\proc|IR|Rout\(8) & \proc|finalState|current_state.operation0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|IR|Rout\(7),
	datac => \proc|IR|Rout\(8),
	datad => \proc|finalState|current_state.operation0~regout\,
	combout => \proc|finalState|Selector1~1_combout\);

-- Location: LCCOMB_X42_Y4_N18
\proc|finalState|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector7~2_combout\ = (\proc|finalState|current_state.operation2~regout\) # ((\proc|finalState|Selector1~1_combout\ & ((\proc|finalState|Selector7~1_combout\) # (\proc|finalState|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|Selector7~1_combout\,
	datab => \proc|finalState|Selector7~0_combout\,
	datac => \proc|finalState|current_state.operation2~regout\,
	datad => \proc|finalState|Selector1~1_combout\,
	combout => \proc|finalState|Selector7~2_combout\);

-- Location: LCCOMB_X42_Y4_N6
\proc|finalState|sigSet[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|sigSet\(7) = (\proc|finalState|Selector6~0_combout\ & ((\proc|finalState|Selector7~2_combout\))) # (!\proc|finalState|Selector6~0_combout\ & (\proc|finalState|sigSet\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|sigSet\(7),
	datab => \proc|finalState|Selector6~0_combout\,
	datad => \proc|finalState|Selector7~2_combout\,
	combout => \proc|finalState|sigSet\(7));

-- Location: LCFF_X42_Y5_N15
\proc|R7|Rout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux15~6_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(0));

-- Location: LCCOMB_X43_Y4_N8
\proc|finalState|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector13~1_combout\ = (!\proc|IR|Rout\(4) & (!\proc|IR|Rout\(6) & (!\proc|IR|Rout\(3) & \proc|IR|Rout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(4),
	datab => \proc|IR|Rout\(6),
	datac => \proc|IR|Rout\(3),
	datad => \proc|IR|Rout\(5),
	combout => \proc|finalState|Selector13~1_combout\);

-- Location: LCCOMB_X42_Y4_N2
\proc|finalState|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector13~0_combout\ = (\proc|IR|Rout\(2) & (!\proc|IR|Rout\(1) & (!\proc|IR|Rout\(0) & \proc|IR|Rout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(2),
	datab => \proc|IR|Rout\(1),
	datac => \proc|IR|Rout\(0),
	datad => \proc|IR|Rout\(6),
	combout => \proc|finalState|Selector13~0_combout\);

-- Location: LCCOMB_X43_Y4_N0
\proc|finalState|Selector13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector13~2_combout\ = (\proc|finalState|current_state.operation2~regout\) # ((\proc|finalState|Selector1~1_combout\ & ((\proc|finalState|Selector13~1_combout\) # (\proc|finalState|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|Selector1~1_combout\,
	datab => \proc|finalState|current_state.operation2~regout\,
	datac => \proc|finalState|Selector13~1_combout\,
	datad => \proc|finalState|Selector13~0_combout\,
	combout => \proc|finalState|Selector13~2_combout\);

-- Location: LCCOMB_X43_Y4_N30
\proc|finalState|sigSet[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|sigSet\(4) = (\proc|finalState|Selector12~0_combout\ & ((\proc|finalState|Selector13~2_combout\))) # (!\proc|finalState|Selector12~0_combout\ & (\proc|finalState|sigSet\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|Selector12~0_combout\,
	datab => \proc|finalState|sigSet\(4),
	datad => \proc|finalState|Selector13~2_combout\,
	combout => \proc|finalState|sigSet\(4));

-- Location: LCFF_X43_Y5_N7
\proc|R4|Rout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux15~6_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(0));

-- Location: LCCOMB_X43_Y4_N26
\proc|finalState|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector9~1_combout\ = (\proc|IR|Rout\(4) & (!\proc|IR|Rout\(6) & (!\proc|IR|Rout\(3) & \proc|IR|Rout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(4),
	datab => \proc|IR|Rout\(6),
	datac => \proc|IR|Rout\(3),
	datad => \proc|IR|Rout\(5),
	combout => \proc|finalState|Selector9~1_combout\);

-- Location: LCCOMB_X43_Y4_N2
\proc|finalState|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector9~2_combout\ = (\proc|finalState|current_state.operation2~regout\) # ((\proc|finalState|Selector1~1_combout\ & ((\proc|finalState|Selector9~0_combout\) # (\proc|finalState|Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|Selector9~0_combout\,
	datab => \proc|finalState|Selector9~1_combout\,
	datac => \proc|finalState|current_state.operation2~regout\,
	datad => \proc|finalState|Selector1~1_combout\,
	combout => \proc|finalState|Selector9~2_combout\);

-- Location: LCCOMB_X43_Y4_N6
\proc|finalState|sigSet[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|sigSet\(6) = (\proc|finalState|Selector8~0_combout\ & ((\proc|finalState|Selector9~2_combout\))) # (!\proc|finalState|Selector8~0_combout\ & (\proc|finalState|sigSet\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|Selector8~0_combout\,
	datab => \proc|finalState|sigSet\(6),
	datad => \proc|finalState|Selector9~2_combout\,
	combout => \proc|finalState|sigSet\(6));

-- Location: LCFF_X43_Y5_N1
\proc|R6|Rout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux15~6_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(0));

-- Location: LCCOMB_X43_Y5_N6
\proc|mux|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux15~0_combout\ = (\proc|finalState|MUXin\(0) & (\proc|finalState|MUXin\(1))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & ((\proc|R6|Rout\(0)))) # (!\proc|finalState|MUXin\(1) & (\proc|R4|Rout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R4|Rout\(0),
	datad => \proc|R6|Rout\(0),
	combout => \proc|mux|Mux15~0_combout\);

-- Location: LCCOMB_X42_Y5_N14
\proc|mux|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux15~1_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|mux|Mux15~0_combout\ & ((\proc|R7|Rout\(0)))) # (!\proc|mux|Mux15~0_combout\ & (\proc|R5|Rout\(0))))) # (!\proc|finalState|MUXin\(0) & (((\proc|mux|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R5|Rout\(0),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R7|Rout\(0),
	datad => \proc|mux|Mux15~0_combout\,
	combout => \proc|mux|Mux15~1_combout\);

-- Location: LCCOMB_X46_Y5_N20
\proc|R2|Rout[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R2|Rout[0]~feeder_combout\ = \proc|mux|Mux15~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Mux15~6_combout\,
	combout => \proc|R2|Rout[0]~feeder_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[11]~I\ : cycloneii_io
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
	padio => ww_SW(11),
	combout => \SW~combout\(11));

-- Location: LCFF_X43_Y4_N7
\proc|IR|Rout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	sdata => \SW~combout\(11),
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|IR|Rout\(4));

-- Location: LCCOMB_X45_Y4_N30
\proc|finalState|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector16~0_combout\ = ((!\proc|IR|Rout\(5) & (!\proc|IR|Rout\(3) & \proc|IR|Rout\(4)))) # (!\proc|finalState|current_state.operation2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(5),
	datab => \proc|finalState|current_state.operation2~regout\,
	datac => \proc|IR|Rout\(3),
	datad => \proc|IR|Rout\(4),
	combout => \proc|finalState|Selector16~0_combout\);

-- Location: LCCOMB_X44_Y4_N4
\proc|finalState|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector17~1_combout\ = (!\proc|IR|Rout\(3) & (!\proc|IR|Rout\(5) & (\proc|IR|Rout\(4) & !\proc|IR|Rout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(3),
	datab => \proc|IR|Rout\(5),
	datac => \proc|IR|Rout\(4),
	datad => \proc|IR|Rout\(6),
	combout => \proc|finalState|Selector17~1_combout\);

-- Location: LCCOMB_X44_Y4_N12
\proc|finalState|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector17~0_combout\ = (!\proc|IR|Rout\(0) & (\proc|IR|Rout\(1) & (!\proc|IR|Rout\(2) & \proc|IR|Rout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(0),
	datab => \proc|IR|Rout\(1),
	datac => \proc|IR|Rout\(2),
	datad => \proc|IR|Rout\(6),
	combout => \proc|finalState|Selector17~0_combout\);

-- Location: LCCOMB_X45_Y4_N18
\proc|finalState|Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector17~2_combout\ = (\proc|finalState|current_state.operation2~regout\) # ((\proc|finalState|Selector1~1_combout\ & ((\proc|finalState|Selector17~1_combout\) # (\proc|finalState|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|current_state.operation2~regout\,
	datab => \proc|finalState|Selector1~1_combout\,
	datac => \proc|finalState|Selector17~1_combout\,
	datad => \proc|finalState|Selector17~0_combout\,
	combout => \proc|finalState|Selector17~2_combout\);

-- Location: LCCOMB_X45_Y4_N16
\proc|finalState|sigSet[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|sigSet\(2) = (\proc|finalState|Selector16~0_combout\ & ((\proc|finalState|Selector17~2_combout\))) # (!\proc|finalState|Selector16~0_combout\ & (\proc|finalState|sigSet\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|finalState|Selector16~0_combout\,
	datac => \proc|finalState|sigSet\(2),
	datad => \proc|finalState|Selector17~2_combout\,
	combout => \proc|finalState|sigSet\(2));

-- Location: LCFF_X46_Y5_N21
\proc|R2|Rout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|R2|Rout[0]~feeder_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(0));

-- Location: LCCOMB_X45_Y4_N26
\proc|finalState|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector14~0_combout\ = ((!\proc|IR|Rout\(5) & (\proc|IR|Rout\(3) & \proc|IR|Rout\(4)))) # (!\proc|finalState|current_state.operation2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(5),
	datab => \proc|finalState|current_state.operation2~regout\,
	datac => \proc|IR|Rout\(3),
	datad => \proc|IR|Rout\(4),
	combout => \proc|finalState|Selector14~0_combout\);

-- Location: LCCOMB_X44_Y4_N20
\proc|finalState|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector15~1_combout\ = (\proc|IR|Rout\(4) & (!\proc|IR|Rout\(5) & (\proc|IR|Rout\(3) & !\proc|IR|Rout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(4),
	datab => \proc|IR|Rout\(5),
	datac => \proc|IR|Rout\(3),
	datad => \proc|IR|Rout\(6),
	combout => \proc|finalState|Selector15~1_combout\);

-- Location: LCCOMB_X44_Y4_N18
\proc|finalState|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector15~0_combout\ = (\proc|IR|Rout\(0) & (\proc|IR|Rout\(1) & (!\proc|IR|Rout\(2) & \proc|IR|Rout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(0),
	datab => \proc|IR|Rout\(1),
	datac => \proc|IR|Rout\(2),
	datad => \proc|IR|Rout\(6),
	combout => \proc|finalState|Selector15~0_combout\);

-- Location: LCCOMB_X45_Y4_N10
\proc|finalState|Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector15~2_combout\ = (\proc|finalState|current_state.operation2~regout\) # ((\proc|finalState|Selector1~1_combout\ & ((\proc|finalState|Selector15~1_combout\) # (\proc|finalState|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|current_state.operation2~regout\,
	datab => \proc|finalState|Selector1~1_combout\,
	datac => \proc|finalState|Selector15~1_combout\,
	datad => \proc|finalState|Selector15~0_combout\,
	combout => \proc|finalState|Selector15~2_combout\);

-- Location: LCCOMB_X45_Y4_N14
\proc|finalState|sigSet[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|sigSet\(3) = (\proc|finalState|Selector14~0_combout\ & ((\proc|finalState|Selector15~2_combout\))) # (!\proc|finalState|Selector14~0_combout\ & (\proc|finalState|sigSet\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|finalState|sigSet\(3),
	datac => \proc|finalState|Selector14~0_combout\,
	datad => \proc|finalState|Selector15~2_combout\,
	combout => \proc|finalState|sigSet\(3));

-- Location: LCFF_X44_Y5_N31
\proc|R3|Rout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux15~6_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(0));

-- Location: LCCOMB_X42_Y4_N12
\proc|finalState|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector18~0_combout\ = ((\proc|IR|Rout\(3) & (!\proc|IR|Rout\(5) & !\proc|IR|Rout\(4)))) # (!\proc|finalState|current_state.operation2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(3),
	datab => \proc|IR|Rout\(5),
	datac => \proc|finalState|current_state.operation2~regout\,
	datad => \proc|IR|Rout\(4),
	combout => \proc|finalState|Selector18~0_combout\);

-- Location: LCCOMB_X43_Y4_N22
\proc|finalState|Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector19~1_combout\ = (!\proc|IR|Rout\(4) & (!\proc|IR|Rout\(6) & (\proc|IR|Rout\(3) & !\proc|IR|Rout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(4),
	datab => \proc|IR|Rout\(6),
	datac => \proc|IR|Rout\(3),
	datad => \proc|IR|Rout\(5),
	combout => \proc|finalState|Selector19~1_combout\);

-- Location: LCCOMB_X43_Y4_N20
\proc|finalState|Selector19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector19~2_combout\ = (\proc|finalState|current_state.operation2~regout\) # ((\proc|finalState|Selector1~1_combout\ & ((\proc|finalState|Selector19~0_combout\) # (\proc|finalState|Selector19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|Selector19~0_combout\,
	datab => \proc|finalState|Selector19~1_combout\,
	datac => \proc|finalState|current_state.operation2~regout\,
	datad => \proc|finalState|Selector1~1_combout\,
	combout => \proc|finalState|Selector19~2_combout\);

-- Location: LCCOMB_X42_Y4_N24
\proc|finalState|sigSet[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|sigSet\(1) = (\proc|finalState|Selector18~0_combout\ & ((\proc|finalState|Selector19~2_combout\))) # (!\proc|finalState|Selector18~0_combout\ & (\proc|finalState|sigSet\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|finalState|Selector18~0_combout\,
	datac => \proc|finalState|sigSet\(1),
	datad => \proc|finalState|Selector19~2_combout\,
	combout => \proc|finalState|sigSet\(1));

-- Location: LCFF_X45_Y5_N29
\proc|R1|Rout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux15~6_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(0));

-- Location: LCCOMB_X42_Y4_N16
\proc|finalState|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector20~0_combout\ = ((!\proc|IR|Rout\(4) & (!\proc|IR|Rout\(5) & !\proc|IR|Rout\(3)))) # (!\proc|finalState|current_state.operation2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(4),
	datab => \proc|IR|Rout\(5),
	datac => \proc|IR|Rout\(3),
	datad => \proc|finalState|current_state.operation2~regout\,
	combout => \proc|finalState|Selector20~0_combout\);

-- Location: LCCOMB_X43_Y4_N14
\proc|finalState|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector38~0_combout\ = (!\proc|IR|Rout\(2) & (!\proc|IR|Rout\(0) & (\proc|IR|Rout\(6) & !\proc|IR|Rout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(2),
	datab => \proc|IR|Rout\(0),
	datac => \proc|IR|Rout\(6),
	datad => \proc|IR|Rout\(1),
	combout => \proc|finalState|Selector38~0_combout\);

-- Location: LCCOMB_X43_Y4_N18
\proc|finalState|Selector38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector38~1_combout\ = (!\proc|IR|Rout\(4) & (!\proc|IR|Rout\(6) & (!\proc|IR|Rout\(3) & !\proc|IR|Rout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(4),
	datab => \proc|IR|Rout\(6),
	datac => \proc|IR|Rout\(3),
	datad => \proc|IR|Rout\(5),
	combout => \proc|finalState|Selector38~1_combout\);

-- Location: LCCOMB_X44_Y4_N16
\proc|finalState|Selector38~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector38~2_combout\ = (\proc|finalState|current_state.operation2~regout\) # ((\proc|finalState|Selector1~1_combout\ & ((\proc|finalState|Selector38~0_combout\) # (\proc|finalState|Selector38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|Selector1~1_combout\,
	datab => \proc|finalState|current_state.operation2~regout\,
	datac => \proc|finalState|Selector38~0_combout\,
	datad => \proc|finalState|Selector38~1_combout\,
	combout => \proc|finalState|Selector38~2_combout\);

-- Location: LCCOMB_X45_Y5_N28
\proc|finalState|sigSet[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|sigSet\(0) = (\proc|finalState|Selector20~0_combout\ & ((\proc|finalState|Selector38~2_combout\))) # (!\proc|finalState|Selector20~0_combout\ & (\proc|finalState|sigSet\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|sigSet\(0),
	datab => \proc|finalState|Selector20~0_combout\,
	datad => \proc|finalState|Selector38~2_combout\,
	combout => \proc|finalState|sigSet\(0));

-- Location: LCFF_X45_Y5_N23
\proc|R0|Rout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux15~6_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(0));

-- Location: LCCOMB_X45_Y5_N22
\proc|mux|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux15~3_combout\ = (\proc|finalState|MUXin\(1) & (((\proc|finalState|MUXin\(0))))) # (!\proc|finalState|MUXin\(1) & ((\proc|finalState|MUXin\(0) & (\proc|R1|Rout\(0))) # (!\proc|finalState|MUXin\(0) & ((\proc|R0|Rout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|R1|Rout\(0),
	datac => \proc|R0|Rout\(0),
	datad => \proc|finalState|MUXin\(0),
	combout => \proc|mux|Mux15~3_combout\);

-- Location: LCCOMB_X44_Y5_N30
\proc|mux|Mux15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux15~4_combout\ = (\proc|finalState|MUXin\(1) & ((\proc|mux|Mux15~3_combout\ & ((\proc|R3|Rout\(0)))) # (!\proc|mux|Mux15~3_combout\ & (\proc|R2|Rout\(0))))) # (!\proc|finalState|MUXin\(1) & (((\proc|mux|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|R2|Rout\(0),
	datac => \proc|R3|Rout\(0),
	datad => \proc|mux|Mux15~3_combout\,
	combout => \proc|mux|Mux15~4_combout\);

-- Location: LCCOMB_X44_Y5_N12
\proc|mux|Mux15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux15~5_combout\ = (\proc|finalState|MUXin\(3) & ((\proc|G|Rout\(0)) # ((\proc|mux|Mux15~2_combout\)))) # (!\proc|finalState|MUXin\(3) & (((!\proc|mux|Mux15~2_combout\ & \proc|mux|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|G|Rout\(0),
	datab => \proc|finalState|MUXin\(3),
	datac => \proc|mux|Mux15~2_combout\,
	datad => \proc|mux|Mux15~4_combout\,
	combout => \proc|mux|Mux15~5_combout\);

-- Location: LCCOMB_X44_Y5_N14
\proc|mux|Mux15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux15~6_combout\ = (\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux15~5_combout\ & (\SW~combout\(0))) # (!\proc|mux|Mux15~5_combout\ & ((\proc|mux|Mux15~1_combout\))))) # (!\proc|mux|Mux15~2_combout\ & (((\proc|mux|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \proc|mux|Mux15~2_combout\,
	datac => \proc|mux|Mux15~1_combout\,
	datad => \proc|mux|Mux15~5_combout\,
	combout => \proc|mux|Mux15~6_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X44_Y4_N26
\proc|finalState|Equal18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Equal18~0_combout\ = (\proc|IR|Rout\(8) & (!\proc|IR|Rout\(7) & !\proc|IR|Rout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(8),
	datac => \proc|IR|Rout\(7),
	datad => \proc|IR|Rout\(6),
	combout => \proc|finalState|Equal18~0_combout\);

-- Location: LCCOMB_X44_Y4_N28
\proc|finalState|operate[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|operate\(0) = (\proc|finalState|operate[1]~0_combout\ & ((!\proc|finalState|Equal18~0_combout\))) # (!\proc|finalState|operate[1]~0_combout\ & (\proc|finalState|operate\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|operate\(0),
	datac => \proc|finalState|operate[1]~0_combout\,
	datad => \proc|finalState|Equal18~0_combout\,
	combout => \proc|finalState|operate\(0));

-- Location: LCCOMB_X44_Y2_N16
\proc|finalState|sigSet[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|sigSet\(8) = (GLOBAL(\proc|finalState|current_state.operation2~clkctrl_outclk\) & (\proc|finalState|sigSet\(8))) # (!GLOBAL(\proc|finalState|current_state.operation2~clkctrl_outclk\) & ((\proc|finalState|operate[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|sigSet\(8),
	datab => \proc|finalState|operate[1]~0_combout\,
	datad => \proc|finalState|current_state.operation2~clkctrl_outclk\,
	combout => \proc|finalState|sigSet\(8));

-- Location: LCFF_X44_Y2_N29
\proc|A|Rout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux15~6_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(0));

-- Location: LCFF_X44_Y2_N19
\proc|A|Rout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux14~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(1));

-- Location: LCCOMB_X42_Y2_N28
\proc|UAL|add|cell_array:1:int_cell:add_i|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:1:int_cell:add_i|S~0_combout\ = \proc|mux|Mux14~5_combout\ $ (\proc|A|Rout\(1) $ (((\proc|mux|Mux15~6_combout\ & \proc|A|Rout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux15~6_combout\,
	datab => \proc|A|Rout\(0),
	datac => \proc|mux|Mux14~5_combout\,
	datad => \proc|A|Rout\(1),
	combout => \proc|UAL|add|cell_array:1:int_cell:add_i|S~0_combout\);

-- Location: LCCOMB_X42_Y2_N0
\proc|UAL|q[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[1]~1_combout\ = \proc|UAL|add|cell_array:1:int_cell:add_i|S~0_combout\ $ (((\proc|mux|Mux15~6_combout\ & \proc|finalState|operate\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux15~6_combout\,
	datac => \proc|finalState|operate\(0),
	datad => \proc|UAL|add|cell_array:1:int_cell:add_i|S~0_combout\,
	combout => \proc|UAL|q[1]~1_combout\);

-- Location: LCFF_X42_Y2_N1
\proc|G|Rout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[1]~1_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(1));

-- Location: LCFF_X42_Y5_N29
\proc|R7|Rout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux14~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(1));

-- Location: LCCOMB_X43_Y4_N10
\proc|finalState|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector10~0_combout\ = ((!\proc|IR|Rout\(4) & (\proc|IR|Rout\(3) & \proc|IR|Rout\(5)))) # (!\proc|finalState|current_state.operation2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|current_state.operation2~regout\,
	datab => \proc|IR|Rout\(4),
	datac => \proc|IR|Rout\(3),
	datad => \proc|IR|Rout\(5),
	combout => \proc|finalState|Selector10~0_combout\);

-- Location: LCCOMB_X43_Y4_N4
\proc|finalState|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector11~0_combout\ = (!\proc|IR|Rout\(1) & (\proc|IR|Rout\(6) & (\proc|IR|Rout\(2) & \proc|IR|Rout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(1),
	datab => \proc|IR|Rout\(6),
	datac => \proc|IR|Rout\(2),
	datad => \proc|IR|Rout\(0),
	combout => \proc|finalState|Selector11~0_combout\);

-- Location: LCCOMB_X43_Y4_N16
\proc|finalState|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector11~1_combout\ = (\proc|IR|Rout\(5) & (\proc|IR|Rout\(3) & (!\proc|IR|Rout\(6) & !\proc|IR|Rout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(5),
	datab => \proc|IR|Rout\(3),
	datac => \proc|IR|Rout\(6),
	datad => \proc|IR|Rout\(4),
	combout => \proc|finalState|Selector11~1_combout\);

-- Location: LCCOMB_X44_Y4_N22
\proc|finalState|Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector11~2_combout\ = (\proc|finalState|current_state.operation2~regout\) # ((\proc|finalState|Selector1~1_combout\ & ((\proc|finalState|Selector11~0_combout\) # (\proc|finalState|Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|Selector1~1_combout\,
	datab => \proc|finalState|current_state.operation2~regout\,
	datac => \proc|finalState|Selector11~0_combout\,
	datad => \proc|finalState|Selector11~1_combout\,
	combout => \proc|finalState|Selector11~2_combout\);

-- Location: LCCOMB_X44_Y4_N24
\proc|finalState|sigSet[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|sigSet\(5) = (\proc|finalState|Selector10~0_combout\ & ((\proc|finalState|Selector11~2_combout\))) # (!\proc|finalState|Selector10~0_combout\ & (\proc|finalState|sigSet\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|sigSet\(5),
	datab => \proc|finalState|Selector10~0_combout\,
	datad => \proc|finalState|Selector11~2_combout\,
	combout => \proc|finalState|sigSet\(5));

-- Location: LCFF_X44_Y5_N9
\proc|R5|Rout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux14~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(1));

-- Location: LCFF_X43_Y5_N9
\proc|R6|Rout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|mux|Mux14~5_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(1));

-- Location: LCFF_X43_Y5_N15
\proc|R4|Rout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux14~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(1));

-- Location: LCCOMB_X43_Y5_N14
\proc|mux|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux14~0_combout\ = (\proc|finalState|MUXin\(0) & (((\proc|finalState|MUXin\(1))))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & (\proc|R6|Rout\(1))) # (!\proc|finalState|MUXin\(1) & ((\proc|R4|Rout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|R6|Rout\(1),
	datac => \proc|R4|Rout\(1),
	datad => \proc|finalState|MUXin\(1),
	combout => \proc|mux|Mux14~0_combout\);

-- Location: LCCOMB_X44_Y5_N8
\proc|mux|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux14~1_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|mux|Mux14~0_combout\ & (\proc|R7|Rout\(1))) # (!\proc|mux|Mux14~0_combout\ & ((\proc|R5|Rout\(1)))))) # (!\proc|finalState|MUXin\(0) & (((\proc|mux|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|R7|Rout\(1),
	datac => \proc|R5|Rout\(1),
	datad => \proc|mux|Mux14~0_combout\,
	combout => \proc|mux|Mux14~1_combout\);

-- Location: LCFF_X46_Y5_N27
\proc|R2|Rout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux14~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(1));

-- Location: LCFF_X44_Y5_N19
\proc|R3|Rout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux14~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(1));

-- Location: LCFF_X45_Y5_N1
\proc|R1|Rout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux14~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(1));

-- Location: LCFF_X45_Y5_N31
\proc|R0|Rout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux14~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(1));

-- Location: LCCOMB_X45_Y5_N30
\proc|mux|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux14~2_combout\ = (\proc|finalState|MUXin\(1) & (((\proc|finalState|MUXin\(0))))) # (!\proc|finalState|MUXin\(1) & ((\proc|finalState|MUXin\(0) & (\proc|R1|Rout\(1))) # (!\proc|finalState|MUXin\(0) & ((\proc|R0|Rout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|R1|Rout\(1),
	datac => \proc|R0|Rout\(1),
	datad => \proc|finalState|MUXin\(0),
	combout => \proc|mux|Mux14~2_combout\);

-- Location: LCCOMB_X44_Y5_N18
\proc|mux|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux14~3_combout\ = (\proc|finalState|MUXin\(1) & ((\proc|mux|Mux14~2_combout\ & ((\proc|R3|Rout\(1)))) # (!\proc|mux|Mux14~2_combout\ & (\proc|R2|Rout\(1))))) # (!\proc|finalState|MUXin\(1) & (((\proc|mux|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|R2|Rout\(1),
	datac => \proc|R3|Rout\(1),
	datad => \proc|mux|Mux14~2_combout\,
	combout => \proc|mux|Mux14~3_combout\);

-- Location: LCCOMB_X44_Y5_N24
\proc|mux|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux14~4_combout\ = (\proc|finalState|MUXin\(3) & (\proc|mux|Mux15~2_combout\)) # (!\proc|finalState|MUXin\(3) & ((\proc|mux|Mux15~2_combout\ & (\proc|mux|Mux14~1_combout\)) # (!\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux14~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(3),
	datab => \proc|mux|Mux15~2_combout\,
	datac => \proc|mux|Mux14~1_combout\,
	datad => \proc|mux|Mux14~3_combout\,
	combout => \proc|mux|Mux14~4_combout\);

-- Location: LCCOMB_X43_Y5_N8
\proc|mux|Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux14~5_combout\ = (\proc|finalState|MUXin\(3) & ((\proc|mux|Mux14~4_combout\ & (\SW~combout\(1))) # (!\proc|mux|Mux14~4_combout\ & ((\proc|G|Rout\(1)))))) # (!\proc|finalState|MUXin\(3) & (((\proc|mux|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \proc|finalState|MUXin\(3),
	datac => \proc|G|Rout\(1),
	datad => \proc|mux|Mux14~4_combout\,
	combout => \proc|mux|Mux14~5_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCFF_X42_Y5_N31
\proc|R5|Rout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux13~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(2));

-- Location: LCFF_X43_Y5_N5
\proc|R6|Rout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|mux|Mux13~5_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(2));

-- Location: LCFF_X43_Y5_N3
\proc|R4|Rout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux13~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(2));

-- Location: LCCOMB_X43_Y5_N2
\proc|mux|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux13~0_combout\ = (\proc|finalState|MUXin\(0) & (((\proc|finalState|MUXin\(1))))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & (\proc|R6|Rout\(2))) # (!\proc|finalState|MUXin\(1) & ((\proc|R4|Rout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|R6|Rout\(2),
	datac => \proc|R4|Rout\(2),
	datad => \proc|finalState|MUXin\(1),
	combout => \proc|mux|Mux13~0_combout\);

-- Location: LCCOMB_X42_Y5_N30
\proc|mux|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux13~1_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|mux|Mux13~0_combout\ & (\proc|R7|Rout\(2))) # (!\proc|mux|Mux13~0_combout\ & ((\proc|R5|Rout\(2)))))) # (!\proc|finalState|MUXin\(0) & (((\proc|mux|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R7|Rout\(2),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R5|Rout\(2),
	datad => \proc|mux|Mux13~0_combout\,
	combout => \proc|mux|Mux13~1_combout\);

-- Location: LCCOMB_X46_Y5_N24
\proc|R2|Rout[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R2|Rout[2]~feeder_combout\ = \proc|mux|Mux13~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Mux13~5_combout\,
	combout => \proc|R2|Rout[2]~feeder_combout\);

-- Location: LCFF_X46_Y5_N25
\proc|R2|Rout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|R2|Rout[2]~feeder_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(2));

-- Location: LCFF_X44_Y5_N11
\proc|R3|Rout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux13~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(2));

-- Location: LCFF_X45_Y5_N19
\proc|R0|Rout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux13~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(2));

-- Location: LCFF_X45_Y5_N13
\proc|R1|Rout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux13~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(2));

-- Location: LCCOMB_X45_Y5_N18
\proc|mux|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux13~2_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1)) # ((\proc|R1|Rout\(2))))) # (!\proc|finalState|MUXin\(0) & (!\proc|finalState|MUXin\(1) & (\proc|R0|Rout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R0|Rout\(2),
	datad => \proc|R1|Rout\(2),
	combout => \proc|mux|Mux13~2_combout\);

-- Location: LCCOMB_X44_Y5_N10
\proc|mux|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux13~3_combout\ = (\proc|finalState|MUXin\(1) & ((\proc|mux|Mux13~2_combout\ & ((\proc|R3|Rout\(2)))) # (!\proc|mux|Mux13~2_combout\ & (\proc|R2|Rout\(2))))) # (!\proc|finalState|MUXin\(1) & (((\proc|mux|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|R2|Rout\(2),
	datac => \proc|R3|Rout\(2),
	datad => \proc|mux|Mux13~2_combout\,
	combout => \proc|mux|Mux13~3_combout\);

-- Location: LCCOMB_X44_Y5_N20
\proc|mux|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux13~4_combout\ = (\proc|finalState|MUXin\(3) & ((\proc|G|Rout\(2)) # ((\proc|mux|Mux15~2_combout\)))) # (!\proc|finalState|MUXin\(3) & (((!\proc|mux|Mux15~2_combout\ & \proc|mux|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|G|Rout\(2),
	datab => \proc|finalState|MUXin\(3),
	datac => \proc|mux|Mux15~2_combout\,
	datad => \proc|mux|Mux13~3_combout\,
	combout => \proc|mux|Mux13~4_combout\);

-- Location: LCCOMB_X43_Y5_N4
\proc|mux|Mux13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux13~5_combout\ = (\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux13~4_combout\ & (\SW~combout\(2))) # (!\proc|mux|Mux13~4_combout\ & ((\proc|mux|Mux13~1_combout\))))) # (!\proc|mux|Mux15~2_combout\ & (((\proc|mux|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux15~2_combout\,
	datab => \SW~combout\(2),
	datac => \proc|mux|Mux13~1_combout\,
	datad => \proc|mux|Mux13~4_combout\,
	combout => \proc|mux|Mux13~5_combout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: LCCOMB_X44_Y2_N2
\proc|UAL|sub|add_compl|cell_array:1:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add_compl|cell_array:1:int_cell:add_i|COUT~0_combout\ = (\proc|mux|Mux14~5_combout\) # (\proc|mux|Mux15~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|mux|Mux14~5_combout\,
	datad => \proc|mux|Mux15~6_combout\,
	combout => \proc|UAL|sub|add_compl|cell_array:1:int_cell:add_i|COUT~0_combout\);

-- Location: LCFF_X44_Y2_N21
\proc|A|Rout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux13~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(2));

-- Location: LCCOMB_X44_Y2_N18
\proc|UAL|sub|add|cell_array:1:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:1:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(0) & ((\proc|mux|Mux14~5_combout\ & (\proc|A|Rout\(1))) # (!\proc|mux|Mux14~5_combout\ & ((\proc|mux|Mux15~6_combout\))))) # (!\proc|A|Rout\(0) & (\proc|A|Rout\(1) & 
-- (\proc|mux|Mux14~5_combout\ $ (\proc|mux|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|A|Rout\(0),
	datab => \proc|mux|Mux14~5_combout\,
	datac => \proc|A|Rout\(1),
	datad => \proc|mux|Mux15~6_combout\,
	combout => \proc|UAL|sub|add|cell_array:1:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X44_Y2_N20
\proc|UAL|sub|add|cell_array:2:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:2:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(2) & ((\proc|UAL|sub|add|cell_array:1:int_cell:add_i|COUT~0_combout\) # (\proc|mux|Mux13~5_combout\ $ (\proc|UAL|sub|add_compl|cell_array:1:int_cell:add_i|COUT~0_combout\)))) # 
-- (!\proc|A|Rout\(2) & (\proc|UAL|sub|add|cell_array:1:int_cell:add_i|COUT~0_combout\ & (\proc|mux|Mux13~5_combout\ $ (\proc|UAL|sub|add_compl|cell_array:1:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux13~5_combout\,
	datab => \proc|UAL|sub|add_compl|cell_array:1:int_cell:add_i|COUT~0_combout\,
	datac => \proc|A|Rout\(2),
	datad => \proc|UAL|sub|add|cell_array:1:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add|cell_array:2:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X44_Y2_N28
\proc|UAL|add|cell_array:1:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:1:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(1) & ((\proc|mux|Mux14~5_combout\) # ((\proc|mux|Mux15~6_combout\ & \proc|A|Rout\(0))))) # (!\proc|A|Rout\(1) & (\proc|mux|Mux15~6_combout\ & (\proc|A|Rout\(0) & 
-- \proc|mux|Mux14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|A|Rout\(1),
	datab => \proc|mux|Mux15~6_combout\,
	datac => \proc|A|Rout\(0),
	datad => \proc|mux|Mux14~5_combout\,
	combout => \proc|UAL|add|cell_array:1:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X44_Y2_N8
\proc|UAL|add|cell_array:2:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:2:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(2) & ((\proc|mux|Mux13~5_combout\) # (\proc|UAL|add|cell_array:1:int_cell:add_i|COUT~0_combout\))) # (!\proc|A|Rout\(2) & (\proc|mux|Mux13~5_combout\ & 
-- \proc|UAL|add|cell_array:1:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|A|Rout\(2),
	datac => \proc|mux|Mux13~5_combout\,
	datad => \proc|UAL|add|cell_array:1:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|add|cell_array:2:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X45_Y2_N18
\proc|UAL|q[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[3]~4_combout\ = (\proc|finalState|operate\(0) & (\proc|UAL|sub|add_compl|cell_array:2:int_cell:add_i|COUT~0_combout\ $ ((\proc|UAL|sub|add|cell_array:2:int_cell:add_i|COUT~0_combout\)))) # (!\proc|finalState|operate\(0) & 
-- (((\proc|UAL|add|cell_array:2:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add_compl|cell_array:2:int_cell:add_i|COUT~0_combout\,
	datab => \proc|UAL|sub|add|cell_array:2:int_cell:add_i|COUT~0_combout\,
	datac => \proc|finalState|operate\(0),
	datad => \proc|UAL|add|cell_array:2:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|q[3]~4_combout\);

-- Location: LCCOMB_X45_Y2_N16
\proc|UAL|q[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[3]~5_combout\ = \proc|A|Rout\(3) $ (\proc|mux|Mux12~5_combout\ $ (\proc|UAL|q[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|A|Rout\(3),
	datac => \proc|mux|Mux12~5_combout\,
	datad => \proc|UAL|q[3]~4_combout\,
	combout => \proc|UAL|q[3]~5_combout\);

-- Location: LCFF_X45_Y2_N17
\proc|G|Rout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[3]~5_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(3));

-- Location: LCFF_X44_Y5_N17
\proc|R3|Rout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux12~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(3));

-- Location: LCFF_X45_Y5_N7
\proc|R0|Rout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux12~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(3));

-- Location: LCCOMB_X45_Y5_N6
\proc|mux|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux12~2_combout\ = (\proc|finalState|MUXin\(1) & (((\proc|finalState|MUXin\(0))))) # (!\proc|finalState|MUXin\(1) & ((\proc|finalState|MUXin\(0) & (\proc|R1|Rout\(3))) # (!\proc|finalState|MUXin\(0) & ((\proc|R0|Rout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R1|Rout\(3),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R0|Rout\(3),
	datad => \proc|finalState|MUXin\(0),
	combout => \proc|mux|Mux12~2_combout\);

-- Location: LCCOMB_X44_Y5_N16
\proc|mux|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux12~3_combout\ = (\proc|finalState|MUXin\(1) & ((\proc|mux|Mux12~2_combout\ & ((\proc|R3|Rout\(3)))) # (!\proc|mux|Mux12~2_combout\ & (\proc|R2|Rout\(3))))) # (!\proc|finalState|MUXin\(1) & (((\proc|mux|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R2|Rout\(3),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R3|Rout\(3),
	datad => \proc|mux|Mux12~2_combout\,
	combout => \proc|mux|Mux12~3_combout\);

-- Location: LCFF_X45_Y4_N7
\proc|R7|Rout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux12~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(3));

-- Location: LCFF_X44_Y5_N3
\proc|R5|Rout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux12~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(3));

-- Location: LCFF_X43_Y5_N19
\proc|R4|Rout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux12~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(3));

-- Location: LCFF_X43_Y5_N13
\proc|R6|Rout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|mux|Mux12~5_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(3));

-- Location: LCCOMB_X43_Y5_N18
\proc|mux|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux12~0_combout\ = (\proc|finalState|MUXin\(0) & (\proc|finalState|MUXin\(1))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & ((\proc|R6|Rout\(3)))) # (!\proc|finalState|MUXin\(1) & (\proc|R4|Rout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R4|Rout\(3),
	datad => \proc|R6|Rout\(3),
	combout => \proc|mux|Mux12~0_combout\);

-- Location: LCCOMB_X44_Y5_N2
\proc|mux|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux12~1_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|mux|Mux12~0_combout\ & (\proc|R7|Rout\(3))) # (!\proc|mux|Mux12~0_combout\ & ((\proc|R5|Rout\(3)))))) # (!\proc|finalState|MUXin\(0) & (((\proc|mux|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|R7|Rout\(3),
	datac => \proc|R5|Rout\(3),
	datad => \proc|mux|Mux12~0_combout\,
	combout => \proc|mux|Mux12~1_combout\);

-- Location: LCCOMB_X44_Y5_N22
\proc|mux|Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux12~4_combout\ = (\proc|finalState|MUXin\(3) & (\proc|mux|Mux15~2_combout\)) # (!\proc|finalState|MUXin\(3) & ((\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux12~1_combout\))) # (!\proc|mux|Mux15~2_combout\ & (\proc|mux|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(3),
	datab => \proc|mux|Mux15~2_combout\,
	datac => \proc|mux|Mux12~3_combout\,
	datad => \proc|mux|Mux12~1_combout\,
	combout => \proc|mux|Mux12~4_combout\);

-- Location: LCCOMB_X43_Y5_N12
\proc|mux|Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux12~5_combout\ = (\proc|finalState|MUXin\(3) & ((\proc|mux|Mux12~4_combout\ & (\SW~combout\(3))) # (!\proc|mux|Mux12~4_combout\ & ((\proc|G|Rout\(3)))))) # (!\proc|finalState|MUXin\(3) & (((\proc|mux|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \proc|finalState|MUXin\(3),
	datac => \proc|G|Rout\(3),
	datad => \proc|mux|Mux12~4_combout\,
	combout => \proc|mux|Mux12~5_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: LCFF_X42_Y5_N1
\proc|R7|Rout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux11~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(4));

-- Location: LCFF_X43_Y5_N25
\proc|R4|Rout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux11~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(4));

-- Location: LCFF_X42_Y4_N1
\proc|R6|Rout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux11~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(4));

-- Location: LCCOMB_X43_Y5_N24
\proc|mux|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux11~0_combout\ = (\proc|finalState|MUXin\(0) & (\proc|finalState|MUXin\(1))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & ((\proc|R6|Rout\(4)))) # (!\proc|finalState|MUXin\(1) & (\proc|R4|Rout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R4|Rout\(4),
	datad => \proc|R6|Rout\(4),
	combout => \proc|mux|Mux11~0_combout\);

-- Location: LCCOMB_X42_Y5_N0
\proc|mux|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux11~1_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|mux|Mux11~0_combout\ & ((\proc|R7|Rout\(4)))) # (!\proc|mux|Mux11~0_combout\ & (\proc|R5|Rout\(4))))) # (!\proc|finalState|MUXin\(0) & (((\proc|mux|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R5|Rout\(4),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R7|Rout\(4),
	datad => \proc|mux|Mux11~0_combout\,
	combout => \proc|mux|Mux11~1_combout\);

-- Location: LCFF_X45_Y6_N23
\proc|R3|Rout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux11~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(4));

-- Location: LCFF_X45_Y6_N17
\proc|R2|Rout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux11~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(4));

-- Location: LCFF_X45_Y5_N9
\proc|R0|Rout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux11~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(4));

-- Location: LCCOMB_X45_Y4_N0
\proc|R1|Rout[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R1|Rout[4]~feeder_combout\ = \proc|mux|Mux11~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Mux11~5_combout\,
	combout => \proc|R1|Rout[4]~feeder_combout\);

-- Location: LCFF_X45_Y4_N1
\proc|R1|Rout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|R1|Rout[4]~feeder_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(4));

-- Location: LCCOMB_X45_Y5_N8
\proc|mux|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux11~2_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1)) # ((\proc|R1|Rout\(4))))) # (!\proc|finalState|MUXin\(0) & (!\proc|finalState|MUXin\(1) & (\proc|R0|Rout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R0|Rout\(4),
	datad => \proc|R1|Rout\(4),
	combout => \proc|mux|Mux11~2_combout\);

-- Location: LCCOMB_X45_Y6_N16
\proc|mux|Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux11~3_combout\ = (\proc|finalState|MUXin\(1) & ((\proc|mux|Mux11~2_combout\ & (\proc|R3|Rout\(4))) # (!\proc|mux|Mux11~2_combout\ & ((\proc|R2|Rout\(4)))))) # (!\proc|finalState|MUXin\(1) & (((\proc|mux|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|R3|Rout\(4),
	datac => \proc|R2|Rout\(4),
	datad => \proc|mux|Mux11~2_combout\,
	combout => \proc|mux|Mux11~3_combout\);

-- Location: LCCOMB_X44_Y5_N28
\proc|mux|Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux11~4_combout\ = (\proc|finalState|MUXin\(3) & ((\proc|G|Rout\(4)) # ((\proc|mux|Mux15~2_combout\)))) # (!\proc|finalState|MUXin\(3) & (((!\proc|mux|Mux15~2_combout\ & \proc|mux|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|G|Rout\(4),
	datab => \proc|finalState|MUXin\(3),
	datac => \proc|mux|Mux15~2_combout\,
	datad => \proc|mux|Mux11~3_combout\,
	combout => \proc|mux|Mux11~4_combout\);

-- Location: LCCOMB_X44_Y5_N26
\proc|mux|Mux11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux11~5_combout\ = (\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux11~4_combout\ & (\SW~combout\(4))) # (!\proc|mux|Mux11~4_combout\ & ((\proc|mux|Mux11~1_combout\))))) # (!\proc|mux|Mux15~2_combout\ & (((\proc|mux|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(4),
	datab => \proc|mux|Mux15~2_combout\,
	datac => \proc|mux|Mux11~1_combout\,
	datad => \proc|mux|Mux11~4_combout\,
	combout => \proc|mux|Mux11~5_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: LCFF_X44_Y2_N11
\proc|A|Rout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux11~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(4));

-- Location: LCFF_X43_Y2_N21
\proc|A|Rout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux12~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(3));

-- Location: LCCOMB_X44_Y2_N24
\proc|UAL|add|cell_array:3:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:3:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(3) & ((\proc|UAL|add|cell_array:2:int_cell:add_i|COUT~0_combout\) # (\proc|mux|Mux12~5_combout\))) # (!\proc|A|Rout\(3) & (\proc|UAL|add|cell_array:2:int_cell:add_i|COUT~0_combout\ 
-- & \proc|mux|Mux12~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|A|Rout\(3),
	datac => \proc|UAL|add|cell_array:2:int_cell:add_i|COUT~0_combout\,
	datad => \proc|mux|Mux12~5_combout\,
	combout => \proc|UAL|add|cell_array:3:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X44_Y2_N6
\proc|UAL|add|cell_array:4:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:4:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(4) & ((\proc|UAL|add|cell_array:3:int_cell:add_i|COUT~0_combout\) # (\proc|mux|Mux11~5_combout\))) # (!\proc|A|Rout\(4) & (\proc|UAL|add|cell_array:3:int_cell:add_i|COUT~0_combout\ 
-- & \proc|mux|Mux11~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|A|Rout\(4),
	datac => \proc|UAL|add|cell_array:3:int_cell:add_i|COUT~0_combout\,
	datad => \proc|mux|Mux11~5_combout\,
	combout => \proc|UAL|add|cell_array:4:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y5_N30
\proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0_combout\ = (\proc|mux|Mux14~5_combout\) # ((\proc|mux|Mux15~6_combout\) # ((\proc|mux|Mux13~5_combout\) # (\proc|mux|Mux12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux14~5_combout\,
	datab => \proc|mux|Mux15~6_combout\,
	datac => \proc|mux|Mux13~5_combout\,
	datad => \proc|mux|Mux12~5_combout\,
	combout => \proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y2_N16
\proc|UAL|sub|add_compl|cell_array:4:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add_compl|cell_array:4:int_cell:add_i|COUT~0_combout\ = (\proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0_combout\) # (\proc|mux|Mux11~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0_combout\,
	datad => \proc|mux|Mux11~5_combout\,
	combout => \proc|UAL|sub|add_compl|cell_array:4:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y3_N12
\proc|UAL|q[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[5]~8_combout\ = (\proc|finalState|operate\(0) & (\proc|UAL|sub|add|cell_array:4:int_cell:add_i|COUT~0_combout\ $ (((\proc|UAL|sub|add_compl|cell_array:4:int_cell:add_i|COUT~0_combout\))))) # (!\proc|finalState|operate\(0) & 
-- (((\proc|UAL|add|cell_array:4:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add|cell_array:4:int_cell:add_i|COUT~0_combout\,
	datab => \proc|UAL|add|cell_array:4:int_cell:add_i|COUT~0_combout\,
	datac => \proc|finalState|operate\(0),
	datad => \proc|UAL|sub|add_compl|cell_array:4:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|q[5]~8_combout\);

-- Location: LCCOMB_X43_Y3_N22
\proc|UAL|q[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[5]~9_combout\ = \proc|A|Rout\(5) $ (\proc|mux|Mux10~5_combout\ $ (\proc|UAL|q[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|A|Rout\(5),
	datac => \proc|mux|Mux10~5_combout\,
	datad => \proc|UAL|q[5]~8_combout\,
	combout => \proc|UAL|q[5]~9_combout\);

-- Location: LCFF_X43_Y3_N23
\proc|G|Rout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[5]~9_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(5));

-- Location: LCFF_X42_Y5_N9
\proc|R7|Rout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux10~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(5));

-- Location: LCFF_X43_Y5_N11
\proc|R6|Rout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux10~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(5));

-- Location: LCFF_X43_Y5_N21
\proc|R4|Rout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux10~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(5));

-- Location: LCCOMB_X43_Y5_N20
\proc|mux|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux10~0_combout\ = (\proc|finalState|MUXin\(0) & (((\proc|finalState|MUXin\(1))))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & (\proc|R6|Rout\(5))) # (!\proc|finalState|MUXin\(1) & ((\proc|R4|Rout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|R6|Rout\(5),
	datac => \proc|R4|Rout\(5),
	datad => \proc|finalState|MUXin\(1),
	combout => \proc|mux|Mux10~0_combout\);

-- Location: LCCOMB_X42_Y5_N8
\proc|mux|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux10~1_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|mux|Mux10~0_combout\ & ((\proc|R7|Rout\(5)))) # (!\proc|mux|Mux10~0_combout\ & (\proc|R5|Rout\(5))))) # (!\proc|finalState|MUXin\(0) & (((\proc|mux|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R5|Rout\(5),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R7|Rout\(5),
	datad => \proc|mux|Mux10~0_combout\,
	combout => \proc|mux|Mux10~1_combout\);

-- Location: LCFF_X47_Y5_N15
\proc|R3|Rout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux10~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(5));

-- Location: LCFF_X46_Y5_N9
\proc|R2|Rout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux10~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(5));

-- Location: LCFF_X46_Y5_N7
\proc|R0|Rout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux10~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(5));

-- Location: LCCOMB_X46_Y4_N2
\proc|R1|Rout[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R1|Rout[5]~feeder_combout\ = \proc|mux|Mux10~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Mux10~5_combout\,
	combout => \proc|R1|Rout[5]~feeder_combout\);

-- Location: LCFF_X46_Y4_N3
\proc|R1|Rout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|R1|Rout[5]~feeder_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(5));

-- Location: LCCOMB_X46_Y5_N6
\proc|mux|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux10~2_combout\ = (\proc|finalState|MUXin\(1) & (\proc|finalState|MUXin\(0))) # (!\proc|finalState|MUXin\(1) & ((\proc|finalState|MUXin\(0) & ((\proc|R1|Rout\(5)))) # (!\proc|finalState|MUXin\(0) & (\proc|R0|Rout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R0|Rout\(5),
	datad => \proc|R1|Rout\(5),
	combout => \proc|mux|Mux10~2_combout\);

-- Location: LCCOMB_X46_Y5_N8
\proc|mux|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux10~3_combout\ = (\proc|finalState|MUXin\(1) & ((\proc|mux|Mux10~2_combout\ & (\proc|R3|Rout\(5))) # (!\proc|mux|Mux10~2_combout\ & ((\proc|R2|Rout\(5)))))) # (!\proc|finalState|MUXin\(1) & (((\proc|mux|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|R3|Rout\(5),
	datac => \proc|R2|Rout\(5),
	datad => \proc|mux|Mux10~2_combout\,
	combout => \proc|mux|Mux10~3_combout\);

-- Location: LCCOMB_X42_Y5_N18
\proc|mux|Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux10~4_combout\ = (\proc|finalState|MUXin\(3) & (((\proc|mux|Mux15~2_combout\)))) # (!\proc|finalState|MUXin\(3) & ((\proc|mux|Mux15~2_combout\ & (\proc|mux|Mux10~1_combout\)) # (!\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux10~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(3),
	datab => \proc|mux|Mux10~1_combout\,
	datac => \proc|mux|Mux10~3_combout\,
	datad => \proc|mux|Mux15~2_combout\,
	combout => \proc|mux|Mux10~4_combout\);

-- Location: LCCOMB_X42_Y5_N4
\proc|mux|Mux10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux10~5_combout\ = (\proc|finalState|MUXin\(3) & ((\proc|mux|Mux10~4_combout\ & (\SW~combout\(5))) # (!\proc|mux|Mux10~4_combout\ & ((\proc|G|Rout\(5)))))) # (!\proc|finalState|MUXin\(3) & (((\proc|mux|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(3),
	datab => \SW~combout\(5),
	datac => \proc|G|Rout\(5),
	datad => \proc|mux|Mux10~4_combout\,
	combout => \proc|mux|Mux10~5_combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCFF_X45_Y6_N9
\proc|R2|Rout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux9~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(6));

-- Location: LCFF_X45_Y6_N3
\proc|R3|Rout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux9~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(6));

-- Location: LCFF_X46_Y5_N5
\proc|R0|Rout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux9~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(6));

-- Location: LCCOMB_X46_Y4_N0
\proc|R1|Rout[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R1|Rout[6]~feeder_combout\ = \proc|mux|Mux9~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Mux9~5_combout\,
	combout => \proc|R1|Rout[6]~feeder_combout\);

-- Location: LCFF_X46_Y4_N1
\proc|R1|Rout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|R1|Rout[6]~feeder_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(6));

-- Location: LCCOMB_X46_Y5_N4
\proc|mux|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux9~2_combout\ = (\proc|finalState|MUXin\(1) & (\proc|finalState|MUXin\(0))) # (!\proc|finalState|MUXin\(1) & ((\proc|finalState|MUXin\(0) & ((\proc|R1|Rout\(6)))) # (!\proc|finalState|MUXin\(0) & (\proc|R0|Rout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R0|Rout\(6),
	datad => \proc|R1|Rout\(6),
	combout => \proc|mux|Mux9~2_combout\);

-- Location: LCCOMB_X45_Y6_N2
\proc|mux|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux9~3_combout\ = (\proc|finalState|MUXin\(1) & ((\proc|mux|Mux9~2_combout\ & ((\proc|R3|Rout\(6)))) # (!\proc|mux|Mux9~2_combout\ & (\proc|R2|Rout\(6))))) # (!\proc|finalState|MUXin\(1) & (((\proc|mux|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|R2|Rout\(6),
	datac => \proc|R3|Rout\(6),
	datad => \proc|mux|Mux9~2_combout\,
	combout => \proc|mux|Mux9~3_combout\);

-- Location: LCCOMB_X44_Y6_N20
\proc|mux|Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux9~4_combout\ = (\proc|finalState|MUXin\(3) & ((\proc|G|Rout\(6)) # ((\proc|mux|Mux15~2_combout\)))) # (!\proc|finalState|MUXin\(3) & (((!\proc|mux|Mux15~2_combout\ & \proc|mux|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|G|Rout\(6),
	datab => \proc|finalState|MUXin\(3),
	datac => \proc|mux|Mux15~2_combout\,
	datad => \proc|mux|Mux9~3_combout\,
	combout => \proc|mux|Mux9~4_combout\);

-- Location: LCFF_X44_Y6_N29
\proc|R5|Rout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux9~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(6));

-- Location: LCFF_X43_Y5_N29
\proc|R4|Rout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux9~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(6));

-- Location: LCFF_X43_Y5_N23
\proc|R6|Rout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux9~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(6));

-- Location: LCCOMB_X43_Y5_N28
\proc|mux|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux9~0_combout\ = (\proc|finalState|MUXin\(0) & (\proc|finalState|MUXin\(1))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & ((\proc|R6|Rout\(6)))) # (!\proc|finalState|MUXin\(1) & (\proc|R4|Rout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R4|Rout\(6),
	datad => \proc|R6|Rout\(6),
	combout => \proc|mux|Mux9~0_combout\);

-- Location: LCCOMB_X44_Y6_N28
\proc|mux|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux9~1_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|mux|Mux9~0_combout\ & (\proc|R7|Rout\(6))) # (!\proc|mux|Mux9~0_combout\ & ((\proc|R5|Rout\(6)))))) # (!\proc|finalState|MUXin\(0) & (((\proc|mux|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R7|Rout\(6),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R5|Rout\(6),
	datad => \proc|mux|Mux9~0_combout\,
	combout => \proc|mux|Mux9~1_combout\);

-- Location: LCCOMB_X44_Y6_N26
\proc|mux|Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux9~5_combout\ = (\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux9~4_combout\ & (\SW~combout\(6))) # (!\proc|mux|Mux9~4_combout\ & ((\proc|mux|Mux9~1_combout\))))) # (!\proc|mux|Mux15~2_combout\ & (((\proc|mux|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux15~2_combout\,
	datab => \SW~combout\(6),
	datac => \proc|mux|Mux9~4_combout\,
	datad => \proc|mux|Mux9~1_combout\,
	combout => \proc|mux|Mux9~5_combout\);

-- Location: LCFF_X44_Y2_N13
\proc|A|Rout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux8~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(7));

-- Location: LCFF_X43_Y2_N25
\proc|A|Rout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux9~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(6));

-- Location: LCCOMB_X44_Y2_N10
\proc|UAL|add|cell_array:5:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:5:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(5) & ((\proc|mux|Mux10~5_combout\) # (\proc|UAL|add|cell_array:4:int_cell:add_i|COUT~0_combout\))) # (!\proc|A|Rout\(5) & (\proc|mux|Mux10~5_combout\ & 
-- \proc|UAL|add|cell_array:4:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|A|Rout\(5),
	datab => \proc|mux|Mux10~5_combout\,
	datad => \proc|UAL|add|cell_array:4:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|add|cell_array:5:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X44_Y2_N22
\proc|UAL|add|cell_array:6:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:6:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(6) & ((\proc|mux|Mux9~5_combout\) # (\proc|UAL|add|cell_array:5:int_cell:add_i|COUT~0_combout\))) # (!\proc|A|Rout\(6) & (\proc|mux|Mux9~5_combout\ & 
-- \proc|UAL|add|cell_array:5:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|A|Rout\(6),
	datac => \proc|mux|Mux9~5_combout\,
	datad => \proc|UAL|add|cell_array:5:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|add|cell_array:6:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y5_N26
\proc|UAL|sub|add_compl|cell_array:5:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add_compl|cell_array:5:int_cell:add_i|COUT~0_combout\ = (\proc|mux|Mux11~5_combout\) # ((\proc|mux|Mux10~5_combout\) # (\proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux11~5_combout\,
	datab => \proc|mux|Mux10~5_combout\,
	datad => \proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add_compl|cell_array:5:int_cell:add_i|COUT~0_combout\);

-- Location: LCFF_X43_Y2_N31
\proc|A|Rout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux10~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(5));

-- Location: LCCOMB_X43_Y2_N20
\proc|UAL|sub|add|cell_array:3:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:3:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(3) & ((\proc|UAL|sub|add|cell_array:2:int_cell:add_i|COUT~0_combout\) # (\proc|UAL|sub|add_compl|cell_array:2:int_cell:add_i|COUT~0_combout\ $ (\proc|mux|Mux12~5_combout\)))) # 
-- (!\proc|A|Rout\(3) & (\proc|UAL|sub|add|cell_array:2:int_cell:add_i|COUT~0_combout\ & (\proc|UAL|sub|add_compl|cell_array:2:int_cell:add_i|COUT~0_combout\ $ (\proc|mux|Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add_compl|cell_array:2:int_cell:add_i|COUT~0_combout\,
	datab => \proc|mux|Mux12~5_combout\,
	datac => \proc|A|Rout\(3),
	datad => \proc|UAL|sub|add|cell_array:2:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add|cell_array:3:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y2_N18
\proc|UAL|sub|add|cell_array:4:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:4:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(4) & ((\proc|UAL|sub|add|cell_array:3:int_cell:add_i|COUT~0_combout\) # (\proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0_combout\ $ (\proc|mux|Mux11~5_combout\)))) # 
-- (!\proc|A|Rout\(4) & (\proc|UAL|sub|add|cell_array:3:int_cell:add_i|COUT~0_combout\ & (\proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0_combout\ $ (\proc|mux|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0_combout\,
	datab => \proc|A|Rout\(4),
	datac => \proc|UAL|sub|add|cell_array:3:int_cell:add_i|COUT~0_combout\,
	datad => \proc|mux|Mux11~5_combout\,
	combout => \proc|UAL|sub|add|cell_array:4:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y2_N30
\proc|UAL|sub|add|cell_array:5:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:5:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(5) & ((\proc|UAL|sub|add|cell_array:4:int_cell:add_i|COUT~0_combout\) # (\proc|UAL|sub|add_compl|cell_array:4:int_cell:add_i|COUT~0_combout\ $ (\proc|mux|Mux10~5_combout\)))) # 
-- (!\proc|A|Rout\(5) & (\proc|UAL|sub|add|cell_array:4:int_cell:add_i|COUT~0_combout\ & (\proc|UAL|sub|add_compl|cell_array:4:int_cell:add_i|COUT~0_combout\ $ (\proc|mux|Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add_compl|cell_array:4:int_cell:add_i|COUT~0_combout\,
	datab => \proc|mux|Mux10~5_combout\,
	datac => \proc|A|Rout\(5),
	datad => \proc|UAL|sub|add|cell_array:4:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add|cell_array:5:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y2_N24
\proc|UAL|sub|add|cell_array:6:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:6:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(6) & ((\proc|UAL|sub|add|cell_array:5:int_cell:add_i|COUT~0_combout\) # (\proc|mux|Mux9~5_combout\ $ (\proc|UAL|sub|add_compl|cell_array:5:int_cell:add_i|COUT~0_combout\)))) # 
-- (!\proc|A|Rout\(6) & (\proc|UAL|sub|add|cell_array:5:int_cell:add_i|COUT~0_combout\ & (\proc|mux|Mux9~5_combout\ $ (\proc|UAL|sub|add_compl|cell_array:5:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux9~5_combout\,
	datab => \proc|UAL|sub|add_compl|cell_array:5:int_cell:add_i|COUT~0_combout\,
	datac => \proc|A|Rout\(6),
	datad => \proc|UAL|sub|add|cell_array:5:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add|cell_array:6:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y3_N26
\proc|UAL|q[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[7]~12_combout\ = (\proc|finalState|operate\(0) & (\proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0_combout\ $ (((\proc|UAL|sub|add|cell_array:6:int_cell:add_i|COUT~0_combout\))))) # (!\proc|finalState|operate\(0) & 
-- (((\proc|UAL|add|cell_array:6:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0_combout\,
	datab => \proc|UAL|add|cell_array:6:int_cell:add_i|COUT~0_combout\,
	datac => \proc|UAL|sub|add|cell_array:6:int_cell:add_i|COUT~0_combout\,
	datad => \proc|finalState|operate\(0),
	combout => \proc|UAL|q[7]~12_combout\);

-- Location: LCCOMB_X43_Y3_N30
\proc|UAL|q[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[7]~13_combout\ = \proc|mux|Mux8~5_combout\ $ (\proc|A|Rout\(7) $ (\proc|UAL|q[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|mux|Mux8~5_combout\,
	datac => \proc|A|Rout\(7),
	datad => \proc|UAL|q[7]~12_combout\,
	combout => \proc|UAL|q[7]~13_combout\);

-- Location: LCFF_X43_Y3_N31
\proc|G|Rout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[7]~13_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(7));

-- Location: LCFF_X42_Y5_N21
\proc|R7|Rout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux8~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(7));

-- Location: LCFF_X42_Y5_N3
\proc|R5|Rout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|mux|Mux8~5_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(7));

-- Location: LCCOMB_X42_Y5_N20
\proc|mux|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux8~1_combout\ = (\proc|mux|Mux8~0_combout\ & (((\proc|R7|Rout\(7))) # (!\proc|finalState|MUXin\(0)))) # (!\proc|mux|Mux8~0_combout\ & (\proc|finalState|MUXin\(0) & ((\proc|R5|Rout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux8~0_combout\,
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R7|Rout\(7),
	datad => \proc|R5|Rout\(7),
	combout => \proc|mux|Mux8~1_combout\);

-- Location: LCCOMB_X47_Y5_N24
\proc|R3|Rout[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R3|Rout[7]~feeder_combout\ = \proc|mux|Mux8~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Mux8~5_combout\,
	combout => \proc|R3|Rout[7]~feeder_combout\);

-- Location: LCFF_X47_Y5_N25
\proc|R3|Rout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|R3|Rout[7]~feeder_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(7));

-- Location: LCFF_X46_Y5_N31
\proc|R2|Rout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux8~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(7));

-- Location: LCFF_X46_Y5_N29
\proc|R0|Rout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux8~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(7));

-- Location: LCCOMB_X46_Y4_N12
\proc|R1|Rout[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R1|Rout[7]~feeder_combout\ = \proc|mux|Mux8~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Mux8~5_combout\,
	combout => \proc|R1|Rout[7]~feeder_combout\);

-- Location: LCFF_X46_Y4_N13
\proc|R1|Rout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|R1|Rout[7]~feeder_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(7));

-- Location: LCCOMB_X46_Y5_N28
\proc|mux|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux8~2_combout\ = (\proc|finalState|MUXin\(1) & (\proc|finalState|MUXin\(0))) # (!\proc|finalState|MUXin\(1) & ((\proc|finalState|MUXin\(0) & ((\proc|R1|Rout\(7)))) # (!\proc|finalState|MUXin\(0) & (\proc|R0|Rout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R0|Rout\(7),
	datad => \proc|R1|Rout\(7),
	combout => \proc|mux|Mux8~2_combout\);

-- Location: LCCOMB_X46_Y5_N30
\proc|mux|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux8~3_combout\ = (\proc|finalState|MUXin\(1) & ((\proc|mux|Mux8~2_combout\ & (\proc|R3|Rout\(7))) # (!\proc|mux|Mux8~2_combout\ & ((\proc|R2|Rout\(7)))))) # (!\proc|finalState|MUXin\(1) & (((\proc|mux|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|R3|Rout\(7),
	datac => \proc|R2|Rout\(7),
	datad => \proc|mux|Mux8~2_combout\,
	combout => \proc|mux|Mux8~3_combout\);

-- Location: LCCOMB_X42_Y5_N26
\proc|mux|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux8~4_combout\ = (\proc|finalState|MUXin\(3) & (\proc|mux|Mux15~2_combout\)) # (!\proc|finalState|MUXin\(3) & ((\proc|mux|Mux15~2_combout\ & (\proc|mux|Mux8~1_combout\)) # (!\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux8~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(3),
	datab => \proc|mux|Mux15~2_combout\,
	datac => \proc|mux|Mux8~1_combout\,
	datad => \proc|mux|Mux8~3_combout\,
	combout => \proc|mux|Mux8~4_combout\);

-- Location: LCCOMB_X42_Y5_N2
\proc|mux|Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux8~5_combout\ = (\proc|finalState|MUXin\(3) & ((\proc|mux|Mux8~4_combout\ & (\SW~combout\(7))) # (!\proc|mux|Mux8~4_combout\ & ((\proc|G|Rout\(7)))))) # (!\proc|finalState|MUXin\(3) & (((\proc|mux|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(3),
	datab => \SW~combout\(7),
	datac => \proc|G|Rout\(7),
	datad => \proc|mux|Mux8~4_combout\,
	combout => \proc|mux|Mux8~5_combout\);

-- Location: LCFF_X43_Y2_N27
\proc|A|Rout[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux7~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(8));

-- Location: LCCOMB_X43_Y3_N16
\proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0_combout\ = (\proc|mux|Mux10~5_combout\) # ((\proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0_combout\) # ((\proc|mux|Mux9~5_combout\) # (\proc|mux|Mux11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux10~5_combout\,
	datab => \proc|UAL|sub|add_compl|cell_array:3:int_cell:add_i|COUT~0_combout\,
	datac => \proc|mux|Mux9~5_combout\,
	datad => \proc|mux|Mux11~5_combout\,
	combout => \proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y3_N24
\proc|UAL|sub|add_compl|cell_array:7:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add_compl|cell_array:7:int_cell:add_i|COUT~0_combout\ = (\proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0_combout\) # (\proc|mux|Mux8~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0_combout\,
	datad => \proc|mux|Mux8~5_combout\,
	combout => \proc|UAL|sub|add_compl|cell_array:7:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X44_Y2_N4
\proc|UAL|add|cell_array:7:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:7:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(7) & ((\proc|mux|Mux8~5_combout\) # (\proc|UAL|add|cell_array:6:int_cell:add_i|COUT~0_combout\))) # (!\proc|A|Rout\(7) & (\proc|mux|Mux8~5_combout\ & 
-- \proc|UAL|add|cell_array:6:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|A|Rout\(7),
	datac => \proc|mux|Mux8~5_combout\,
	datad => \proc|UAL|add|cell_array:6:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|add|cell_array:7:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X42_Y4_N30
\proc|UAL|q[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[8]~14_combout\ = (\proc|finalState|operate\(0) & (\proc|UAL|sub|add|cell_array:7:int_cell:add_i|COUT~0_combout\ $ ((\proc|UAL|sub|add_compl|cell_array:7:int_cell:add_i|COUT~0_combout\)))) # (!\proc|finalState|operate\(0) & 
-- (((\proc|UAL|add|cell_array:7:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add|cell_array:7:int_cell:add_i|COUT~0_combout\,
	datab => \proc|UAL|sub|add_compl|cell_array:7:int_cell:add_i|COUT~0_combout\,
	datac => \proc|UAL|add|cell_array:7:int_cell:add_i|COUT~0_combout\,
	datad => \proc|finalState|operate\(0),
	combout => \proc|UAL|q[8]~14_combout\);

-- Location: LCCOMB_X41_Y4_N0
\proc|UAL|q[8]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[8]~15_combout\ = \proc|mux|Mux7~5_combout\ $ (\proc|A|Rout\(8) $ (\proc|UAL|q[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux7~5_combout\,
	datac => \proc|A|Rout\(8),
	datad => \proc|UAL|q[8]~14_combout\,
	combout => \proc|UAL|q[8]~15_combout\);

-- Location: LCFF_X41_Y4_N1
\proc|G|Rout[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[8]~15_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(8));

-- Location: LCCOMB_X45_Y6_N4
\proc|R2|Rout[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R2|Rout[8]~feeder_combout\ = \proc|mux|Mux7~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Mux7~5_combout\,
	combout => \proc|R2|Rout[8]~feeder_combout\);

-- Location: LCFF_X45_Y6_N5
\proc|R2|Rout[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|R2|Rout[8]~feeder_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(8));

-- Location: LCFF_X45_Y6_N19
\proc|R3|Rout[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux7~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(8));

-- Location: LCFF_X45_Y5_N27
\proc|R0|Rout[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux7~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(8));

-- Location: LCCOMB_X41_Y5_N12
\proc|R1|Rout[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R1|Rout[8]~feeder_combout\ = \proc|mux|Mux7~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Mux7~5_combout\,
	combout => \proc|R1|Rout[8]~feeder_combout\);

-- Location: LCFF_X41_Y5_N13
\proc|R1|Rout[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|R1|Rout[8]~feeder_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(8));

-- Location: LCCOMB_X45_Y5_N26
\proc|mux|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux7~2_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1)) # ((\proc|R1|Rout\(8))))) # (!\proc|finalState|MUXin\(0) & (!\proc|finalState|MUXin\(1) & (\proc|R0|Rout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R0|Rout\(8),
	datad => \proc|R1|Rout\(8),
	combout => \proc|mux|Mux7~2_combout\);

-- Location: LCCOMB_X45_Y6_N18
\proc|mux|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux7~3_combout\ = (\proc|finalState|MUXin\(1) & ((\proc|mux|Mux7~2_combout\ & ((\proc|R3|Rout\(8)))) # (!\proc|mux|Mux7~2_combout\ & (\proc|R2|Rout\(8))))) # (!\proc|finalState|MUXin\(1) & (((\proc|mux|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|R2|Rout\(8),
	datac => \proc|R3|Rout\(8),
	datad => \proc|mux|Mux7~2_combout\,
	combout => \proc|mux|Mux7~3_combout\);

-- Location: LCCOMB_X44_Y6_N8
\proc|mux|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux7~4_combout\ = (\proc|mux|Mux15~2_combout\ & (\proc|finalState|MUXin\(3))) # (!\proc|mux|Mux15~2_combout\ & ((\proc|finalState|MUXin\(3) & (\proc|G|Rout\(8))) # (!\proc|finalState|MUXin\(3) & ((\proc|mux|Mux7~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux15~2_combout\,
	datab => \proc|finalState|MUXin\(3),
	datac => \proc|G|Rout\(8),
	datad => \proc|mux|Mux7~3_combout\,
	combout => \proc|mux|Mux7~4_combout\);

-- Location: LCFF_X42_Y4_N29
\proc|R4|Rout[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux7~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(8));

-- Location: LCCOMB_X42_Y4_N28
\proc|mux|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux7~0_combout\ = (\proc|finalState|MUXin\(0) & (((\proc|finalState|MUXin\(1))))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & (\proc|R6|Rout\(8))) # (!\proc|finalState|MUXin\(1) & ((\proc|R4|Rout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R6|Rout\(8),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R4|Rout\(8),
	datad => \proc|finalState|MUXin\(1),
	combout => \proc|mux|Mux7~0_combout\);

-- Location: LCFF_X43_Y6_N19
\proc|R7|Rout[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux7~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(8));

-- Location: LCCOMB_X43_Y6_N18
\proc|mux|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux7~1_combout\ = (\proc|mux|Mux7~0_combout\ & (((\proc|R7|Rout\(8)) # (!\proc|finalState|MUXin\(0))))) # (!\proc|mux|Mux7~0_combout\ & (\proc|R5|Rout\(8) & ((\proc|finalState|MUXin\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R5|Rout\(8),
	datab => \proc|mux|Mux7~0_combout\,
	datac => \proc|R7|Rout\(8),
	datad => \proc|finalState|MUXin\(0),
	combout => \proc|mux|Mux7~1_combout\);

-- Location: LCCOMB_X43_Y6_N20
\proc|mux|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux7~5_combout\ = (\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux7~4_combout\ & (\SW~combout\(8))) # (!\proc|mux|Mux7~4_combout\ & ((\proc|mux|Mux7~1_combout\))))) # (!\proc|mux|Mux15~2_combout\ & (((\proc|mux|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \proc|mux|Mux15~2_combout\,
	datac => \proc|mux|Mux7~4_combout\,
	datad => \proc|mux|Mux7~1_combout\,
	combout => \proc|mux|Mux7~5_combout\);

-- Location: LCFF_X43_Y2_N23
\proc|A|Rout[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux6~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(9));

-- Location: LCCOMB_X43_Y3_N2
\proc|UAL|sub|add_compl|cell_array:8:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add_compl|cell_array:8:int_cell:add_i|COUT~0_combout\ = (\proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0_combout\) # ((\proc|mux|Mux8~5_combout\) # (\proc|mux|Mux7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0_combout\,
	datab => \proc|mux|Mux8~5_combout\,
	datad => \proc|mux|Mux7~5_combout\,
	combout => \proc|UAL|sub|add_compl|cell_array:8:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X44_Y2_N26
\proc|UAL|add|cell_array:8:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:8:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(8) & ((\proc|UAL|add|cell_array:7:int_cell:add_i|COUT~0_combout\) # (\proc|mux|Mux7~5_combout\))) # (!\proc|A|Rout\(8) & (\proc|UAL|add|cell_array:7:int_cell:add_i|COUT~0_combout\ 
-- & \proc|mux|Mux7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|A|Rout\(8),
	datac => \proc|UAL|add|cell_array:7:int_cell:add_i|COUT~0_combout\,
	datad => \proc|mux|Mux7~5_combout\,
	combout => \proc|UAL|add|cell_array:8:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y3_N28
\proc|UAL|q[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[9]~16_combout\ = (\proc|finalState|operate\(0) & (\proc|UAL|sub|add|cell_array:8:int_cell:add_i|COUT~0_combout\ $ ((\proc|UAL|sub|add_compl|cell_array:8:int_cell:add_i|COUT~0_combout\)))) # (!\proc|finalState|operate\(0) & 
-- (((\proc|UAL|add|cell_array:8:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add|cell_array:8:int_cell:add_i|COUT~0_combout\,
	datab => \proc|UAL|sub|add_compl|cell_array:8:int_cell:add_i|COUT~0_combout\,
	datac => \proc|finalState|operate\(0),
	datad => \proc|UAL|add|cell_array:8:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|q[9]~16_combout\);

-- Location: LCCOMB_X43_Y3_N0
\proc|UAL|q[9]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[9]~17_combout\ = \proc|mux|Mux6~5_combout\ $ (\proc|A|Rout\(9) $ (\proc|UAL|q[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux6~5_combout\,
	datac => \proc|A|Rout\(9),
	datad => \proc|UAL|q[9]~16_combout\,
	combout => \proc|UAL|q[9]~17_combout\);

-- Location: LCFF_X43_Y3_N1
\proc|G|Rout[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[9]~17_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(9));

-- Location: LCFF_X43_Y6_N15
\proc|R7|Rout[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux6~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(9));

-- Location: LCFF_X44_Y3_N27
\proc|R4|Rout[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux6~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(9));

-- Location: LCFF_X44_Y3_N13
\proc|R6|Rout[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux6~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(9));

-- Location: LCCOMB_X44_Y3_N26
\proc|mux|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux6~0_combout\ = (\proc|finalState|MUXin\(1) & ((\proc|finalState|MUXin\(0)) # ((\proc|R6|Rout\(9))))) # (!\proc|finalState|MUXin\(1) & (!\proc|finalState|MUXin\(0) & (\proc|R4|Rout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R4|Rout\(9),
	datad => \proc|R6|Rout\(9),
	combout => \proc|mux|Mux6~0_combout\);

-- Location: LCCOMB_X43_Y6_N14
\proc|mux|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux6~1_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|mux|Mux6~0_combout\ & ((\proc|R7|Rout\(9)))) # (!\proc|mux|Mux6~0_combout\ & (\proc|R5|Rout\(9))))) # (!\proc|finalState|MUXin\(0) & (((\proc|mux|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R5|Rout\(9),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R7|Rout\(9),
	datad => \proc|mux|Mux6~0_combout\,
	combout => \proc|mux|Mux6~1_combout\);

-- Location: LCFF_X46_Y6_N29
\proc|R2|Rout[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux6~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(9));

-- Location: LCFF_X46_Y5_N3
\proc|R0|Rout[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux6~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(9));

-- Location: LCFF_X46_Y4_N25
\proc|R1|Rout[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux6~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(9));

-- Location: LCCOMB_X46_Y5_N2
\proc|mux|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux6~2_combout\ = (\proc|finalState|MUXin\(1) & (\proc|finalState|MUXin\(0))) # (!\proc|finalState|MUXin\(1) & ((\proc|finalState|MUXin\(0) & ((\proc|R1|Rout\(9)))) # (!\proc|finalState|MUXin\(0) & (\proc|R0|Rout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R0|Rout\(9),
	datad => \proc|R1|Rout\(9),
	combout => \proc|mux|Mux6~2_combout\);

-- Location: LCCOMB_X46_Y6_N28
\proc|mux|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux6~3_combout\ = (\proc|finalState|MUXin\(1) & ((\proc|mux|Mux6~2_combout\ & (\proc|R3|Rout\(9))) # (!\proc|mux|Mux6~2_combout\ & ((\proc|R2|Rout\(9)))))) # (!\proc|finalState|MUXin\(1) & (((\proc|mux|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R3|Rout\(9),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R2|Rout\(9),
	datad => \proc|mux|Mux6~2_combout\,
	combout => \proc|mux|Mux6~3_combout\);

-- Location: LCCOMB_X43_Y6_N0
\proc|mux|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux6~4_combout\ = (\proc|finalState|MUXin\(3) & (\proc|mux|Mux15~2_combout\)) # (!\proc|finalState|MUXin\(3) & ((\proc|mux|Mux15~2_combout\ & (\proc|mux|Mux6~1_combout\)) # (!\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(3),
	datab => \proc|mux|Mux15~2_combout\,
	datac => \proc|mux|Mux6~1_combout\,
	datad => \proc|mux|Mux6~3_combout\,
	combout => \proc|mux|Mux6~4_combout\);

-- Location: LCCOMB_X43_Y6_N8
\proc|mux|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux6~5_combout\ = (\proc|finalState|MUXin\(3) & ((\proc|mux|Mux6~4_combout\ & (\SW~combout\(9))) # (!\proc|mux|Mux6~4_combout\ & ((\proc|G|Rout\(9)))))) # (!\proc|finalState|MUXin\(3) & (((\proc|mux|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \proc|finalState|MUXin\(3),
	datac => \proc|G|Rout\(9),
	datad => \proc|mux|Mux6~4_combout\,
	combout => \proc|mux|Mux6~5_combout\);

-- Location: LCFF_X42_Y5_N17
\proc|R5|Rout[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|mux|Mux5~5_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(10));

-- Location: LCFF_X42_Y6_N27
\proc|R4|Rout[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux5~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(10));

-- Location: LCFF_X42_Y6_N1
\proc|R6|Rout[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux5~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(10));

-- Location: LCCOMB_X42_Y6_N26
\proc|mux|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux5~0_combout\ = (\proc|finalState|MUXin\(0) & (\proc|finalState|MUXin\(1))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & ((\proc|R6|Rout\(10)))) # (!\proc|finalState|MUXin\(1) & (\proc|R4|Rout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R4|Rout\(10),
	datad => \proc|R6|Rout\(10),
	combout => \proc|mux|Mux5~0_combout\);

-- Location: LCCOMB_X42_Y5_N22
\proc|mux|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux5~1_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|mux|Mux5~0_combout\ & (\proc|R7|Rout\(10))) # (!\proc|mux|Mux5~0_combout\ & ((\proc|R5|Rout\(10)))))) # (!\proc|finalState|MUXin\(0) & (((\proc|mux|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R7|Rout\(10),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R5|Rout\(10),
	datad => \proc|mux|Mux5~0_combout\,
	combout => \proc|mux|Mux5~1_combout\);

-- Location: LCFF_X42_Y3_N21
\proc|R2|Rout[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux5~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(10));

-- Location: LCFF_X46_Y5_N17
\proc|R0|Rout[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux5~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(10));

-- Location: LCFF_X46_Y4_N21
\proc|R1|Rout[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux5~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(10));

-- Location: LCCOMB_X46_Y5_N16
\proc|mux|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux5~2_combout\ = (\proc|finalState|MUXin\(1) & (\proc|finalState|MUXin\(0))) # (!\proc|finalState|MUXin\(1) & ((\proc|finalState|MUXin\(0) & ((\proc|R1|Rout\(10)))) # (!\proc|finalState|MUXin\(0) & (\proc|R0|Rout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R0|Rout\(10),
	datad => \proc|R1|Rout\(10),
	combout => \proc|mux|Mux5~2_combout\);

-- Location: LCCOMB_X42_Y3_N20
\proc|mux|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux5~3_combout\ = (\proc|finalState|MUXin\(1) & ((\proc|mux|Mux5~2_combout\ & (\proc|R3|Rout\(10))) # (!\proc|mux|Mux5~2_combout\ & ((\proc|R2|Rout\(10)))))) # (!\proc|finalState|MUXin\(1) & (((\proc|mux|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R3|Rout\(10),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R2|Rout\(10),
	datad => \proc|mux|Mux5~2_combout\,
	combout => \proc|mux|Mux5~3_combout\);

-- Location: LCCOMB_X43_Y6_N26
\proc|mux|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux5~4_combout\ = (\proc|finalState|MUXin\(3) & ((\proc|G|Rout\(10)) # ((\proc|mux|Mux15~2_combout\)))) # (!\proc|finalState|MUXin\(3) & (((\proc|mux|Mux5~3_combout\ & !\proc|mux|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|G|Rout\(10),
	datab => \proc|finalState|MUXin\(3),
	datac => \proc|mux|Mux5~3_combout\,
	datad => \proc|mux|Mux15~2_combout\,
	combout => \proc|mux|Mux5~4_combout\);

-- Location: LCCOMB_X42_Y5_N16
\proc|mux|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux5~5_combout\ = (\proc|mux|Mux5~4_combout\ & ((\SW~combout\(10)) # ((!\proc|mux|Mux15~2_combout\)))) # (!\proc|mux|Mux5~4_combout\ & (((\proc|mux|Mux5~1_combout\ & \proc|mux|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(10),
	datab => \proc|mux|Mux5~1_combout\,
	datac => \proc|mux|Mux5~4_combout\,
	datad => \proc|mux|Mux15~2_combout\,
	combout => \proc|mux|Mux5~5_combout\);

-- Location: LCFF_X44_Y6_N23
\proc|R5|Rout[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux4~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(11));

-- Location: LCFF_X42_Y4_N5
\proc|R4|Rout[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux4~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(11));

-- Location: LCCOMB_X42_Y4_N4
\proc|mux|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux4~0_combout\ = (\proc|finalState|MUXin\(0) & (((\proc|finalState|MUXin\(1))))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & (\proc|R6|Rout\(11))) # (!\proc|finalState|MUXin\(1) & ((\proc|R4|Rout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R6|Rout\(11),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R4|Rout\(11),
	datad => \proc|finalState|MUXin\(1),
	combout => \proc|mux|Mux4~0_combout\);

-- Location: LCCOMB_X44_Y6_N22
\proc|mux|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux4~1_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|mux|Mux4~0_combout\ & (\proc|R7|Rout\(11))) # (!\proc|mux|Mux4~0_combout\ & ((\proc|R5|Rout\(11)))))) # (!\proc|finalState|MUXin\(0) & (((\proc|mux|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R7|Rout\(11),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R5|Rout\(11),
	datad => \proc|mux|Mux4~0_combout\,
	combout => \proc|mux|Mux4~1_combout\);

-- Location: LCFF_X45_Y6_N1
\proc|R2|Rout[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux4~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(11));

-- Location: LCFF_X45_Y6_N31
\proc|R3|Rout[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux4~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(11));

-- Location: LCFF_X45_Y5_N5
\proc|R0|Rout[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux4~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(11));

-- Location: LCCOMB_X45_Y5_N4
\proc|mux|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux4~2_combout\ = (\proc|finalState|MUXin\(1) & (((\proc|finalState|MUXin\(0))))) # (!\proc|finalState|MUXin\(1) & ((\proc|finalState|MUXin\(0) & (\proc|R1|Rout\(11))) # (!\proc|finalState|MUXin\(0) & ((\proc|R0|Rout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R1|Rout\(11),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R0|Rout\(11),
	datad => \proc|finalState|MUXin\(0),
	combout => \proc|mux|Mux4~2_combout\);

-- Location: LCCOMB_X45_Y6_N30
\proc|mux|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux4~3_combout\ = (\proc|finalState|MUXin\(1) & ((\proc|mux|Mux4~2_combout\ & ((\proc|R3|Rout\(11)))) # (!\proc|mux|Mux4~2_combout\ & (\proc|R2|Rout\(11))))) # (!\proc|finalState|MUXin\(1) & (((\proc|mux|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|R2|Rout\(11),
	datac => \proc|R3|Rout\(11),
	datad => \proc|mux|Mux4~2_combout\,
	combout => \proc|mux|Mux4~3_combout\);

-- Location: LCCOMB_X44_Y6_N4
\proc|mux|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux4~4_combout\ = (\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux4~1_combout\) # ((\proc|finalState|MUXin\(3))))) # (!\proc|mux|Mux15~2_combout\ & (((!\proc|finalState|MUXin\(3) & \proc|mux|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux15~2_combout\,
	datab => \proc|mux|Mux4~1_combout\,
	datac => \proc|finalState|MUXin\(3),
	datad => \proc|mux|Mux4~3_combout\,
	combout => \proc|mux|Mux4~4_combout\);

-- Location: LCFF_X43_Y2_N9
\proc|A|Rout[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux4~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(11));

-- Location: LCCOMB_X43_Y3_N14
\proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0_combout\ = (\proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0_combout\) # ((\proc|mux|Mux8~5_combout\) # ((\proc|mux|Mux7~5_combout\) # (\proc|mux|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0_combout\,
	datab => \proc|mux|Mux8~5_combout\,
	datac => \proc|mux|Mux7~5_combout\,
	datad => \proc|mux|Mux6~5_combout\,
	combout => \proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y2_N28
\proc|UAL|sub|add|cell_array:7:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:7:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(7) & ((\proc|UAL|sub|add|cell_array:6:int_cell:add_i|COUT~0_combout\) # (\proc|mux|Mux8~5_combout\ $ (\proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0_combout\)))) # 
-- (!\proc|A|Rout\(7) & (\proc|UAL|sub|add|cell_array:6:int_cell:add_i|COUT~0_combout\ & (\proc|mux|Mux8~5_combout\ $ (\proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux8~5_combout\,
	datab => \proc|A|Rout\(7),
	datac => \proc|UAL|sub|add|cell_array:6:int_cell:add_i|COUT~0_combout\,
	datad => \proc|UAL|sub|add_compl|cell_array:6:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add|cell_array:7:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y2_N26
\proc|UAL|sub|add|cell_array:8:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:8:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(8) & ((\proc|UAL|sub|add|cell_array:7:int_cell:add_i|COUT~0_combout\) # (\proc|mux|Mux7~5_combout\ $ (\proc|UAL|sub|add_compl|cell_array:7:int_cell:add_i|COUT~0_combout\)))) # 
-- (!\proc|A|Rout\(8) & (\proc|UAL|sub|add|cell_array:7:int_cell:add_i|COUT~0_combout\ & (\proc|mux|Mux7~5_combout\ $ (\proc|UAL|sub|add_compl|cell_array:7:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux7~5_combout\,
	datab => \proc|UAL|sub|add_compl|cell_array:7:int_cell:add_i|COUT~0_combout\,
	datac => \proc|A|Rout\(8),
	datad => \proc|UAL|sub|add|cell_array:7:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add|cell_array:8:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y2_N22
\proc|UAL|sub|add|cell_array:9:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:9:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(9) & ((\proc|UAL|sub|add|cell_array:8:int_cell:add_i|COUT~0_combout\) # (\proc|UAL|sub|add_compl|cell_array:8:int_cell:add_i|COUT~0_combout\ $ (\proc|mux|Mux6~5_combout\)))) # 
-- (!\proc|A|Rout\(9) & (\proc|UAL|sub|add|cell_array:8:int_cell:add_i|COUT~0_combout\ & (\proc|UAL|sub|add_compl|cell_array:8:int_cell:add_i|COUT~0_combout\ $ (\proc|mux|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add_compl|cell_array:8:int_cell:add_i|COUT~0_combout\,
	datab => \proc|mux|Mux6~5_combout\,
	datac => \proc|A|Rout\(9),
	datad => \proc|UAL|sub|add|cell_array:8:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add|cell_array:9:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y2_N2
\proc|UAL|sub|add|cell_array:10:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:10:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(10) & ((\proc|UAL|sub|add|cell_array:9:int_cell:add_i|COUT~0_combout\) # (\proc|mux|Mux5~5_combout\ $ (\proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0_combout\)))) 
-- # (!\proc|A|Rout\(10) & (\proc|UAL|sub|add|cell_array:9:int_cell:add_i|COUT~0_combout\ & (\proc|mux|Mux5~5_combout\ $ (\proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|A|Rout\(10),
	datab => \proc|mux|Mux5~5_combout\,
	datac => \proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0_combout\,
	datad => \proc|UAL|sub|add|cell_array:9:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add|cell_array:10:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X42_Y2_N14
\proc|UAL|sub|add_compl|cell_array:10:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add_compl|cell_array:10:int_cell:add_i|COUT~0_combout\ = (\proc|mux|Mux5~5_combout\) # (\proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|mux|Mux5~5_combout\,
	datad => \proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add_compl|cell_array:10:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X44_Y2_N14
\proc|UAL|q[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[11]~20_combout\ = (\proc|finalState|operate\(0) & ((\proc|UAL|sub|add|cell_array:10:int_cell:add_i|COUT~0_combout\ $ (\proc|UAL|sub|add_compl|cell_array:10:int_cell:add_i|COUT~0_combout\)))) # (!\proc|finalState|operate\(0) & 
-- (\proc|UAL|add|cell_array:10:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|add|cell_array:10:int_cell:add_i|COUT~0_combout\,
	datab => \proc|UAL|sub|add|cell_array:10:int_cell:add_i|COUT~0_combout\,
	datac => \proc|UAL|sub|add_compl|cell_array:10:int_cell:add_i|COUT~0_combout\,
	datad => \proc|finalState|operate\(0),
	combout => \proc|UAL|q[11]~20_combout\);

-- Location: LCCOMB_X45_Y2_N24
\proc|UAL|q[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[11]~21_combout\ = \proc|mux|Mux4~5_combout\ $ (\proc|A|Rout\(11) $ (\proc|UAL|q[11]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|mux|Mux4~5_combout\,
	datac => \proc|A|Rout\(11),
	datad => \proc|UAL|q[11]~20_combout\,
	combout => \proc|UAL|q[11]~21_combout\);

-- Location: LCFF_X45_Y2_N25
\proc|G|Rout[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[11]~21_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(11));

-- Location: LCCOMB_X44_Y6_N14
\proc|mux|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux4~5_combout\ = (\proc|finalState|MUXin\(3) & ((\proc|mux|Mux4~4_combout\ & (\SW~combout\(11))) # (!\proc|mux|Mux4~4_combout\ & ((\proc|G|Rout\(11)))))) # (!\proc|finalState|MUXin\(3) & (((\proc|mux|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(11),
	datab => \proc|finalState|MUXin\(3),
	datac => \proc|mux|Mux4~4_combout\,
	datad => \proc|G|Rout\(11),
	combout => \proc|mux|Mux4~5_combout\);

-- Location: LCFF_X44_Y2_N17
\proc|A|Rout[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux3~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(12));

-- Location: LCCOMB_X42_Y2_N8
\proc|UAL|sub|add_compl|cell_array:11:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add_compl|cell_array:11:int_cell:add_i|COUT~0_combout\ = (\proc|mux|Mux5~5_combout\) # ((\proc|mux|Mux4~5_combout\) # (\proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux5~5_combout\,
	datac => \proc|mux|Mux4~5_combout\,
	datad => \proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add_compl|cell_array:11:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X44_Y2_N0
\proc|UAL|add|cell_array:9:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:9:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(9) & ((\proc|mux|Mux6~5_combout\) # (\proc|UAL|add|cell_array:8:int_cell:add_i|COUT~0_combout\))) # (!\proc|A|Rout\(9) & (\proc|mux|Mux6~5_combout\ & 
-- \proc|UAL|add|cell_array:8:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|A|Rout\(9),
	datac => \proc|mux|Mux6~5_combout\,
	datad => \proc|UAL|add|cell_array:8:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|add|cell_array:9:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X44_Y2_N12
\proc|UAL|add|cell_array:10:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:10:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(10) & ((\proc|mux|Mux5~5_combout\) # (\proc|UAL|add|cell_array:9:int_cell:add_i|COUT~0_combout\))) # (!\proc|A|Rout\(10) & (\proc|mux|Mux5~5_combout\ & 
-- \proc|UAL|add|cell_array:9:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|A|Rout\(10),
	datab => \proc|mux|Mux5~5_combout\,
	datad => \proc|UAL|add|cell_array:9:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|add|cell_array:10:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X44_Y2_N30
\proc|UAL|add|cell_array:11:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:11:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(11) & ((\proc|mux|Mux4~5_combout\) # (\proc|UAL|add|cell_array:10:int_cell:add_i|COUT~0_combout\))) # (!\proc|A|Rout\(11) & (\proc|mux|Mux4~5_combout\ & 
-- \proc|UAL|add|cell_array:10:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|A|Rout\(11),
	datac => \proc|mux|Mux4~5_combout\,
	datad => \proc|UAL|add|cell_array:10:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|add|cell_array:11:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X45_Y2_N2
\proc|UAL|q[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[12]~22_combout\ = (\proc|finalState|operate\(0) & (\proc|UAL|sub|add|cell_array:11:int_cell:add_i|COUT~0_combout\ $ ((\proc|UAL|sub|add_compl|cell_array:11:int_cell:add_i|COUT~0_combout\)))) # (!\proc|finalState|operate\(0) & 
-- (((\proc|UAL|add|cell_array:11:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add|cell_array:11:int_cell:add_i|COUT~0_combout\,
	datab => \proc|UAL|sub|add_compl|cell_array:11:int_cell:add_i|COUT~0_combout\,
	datac => \proc|finalState|operate\(0),
	datad => \proc|UAL|add|cell_array:11:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|q[12]~22_combout\);

-- Location: LCCOMB_X45_Y2_N10
\proc|UAL|q[12]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[12]~23_combout\ = \proc|mux|Mux3~5_combout\ $ (\proc|A|Rout\(12) $ (\proc|UAL|q[12]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|mux|Mux3~5_combout\,
	datac => \proc|A|Rout\(12),
	datad => \proc|UAL|q[12]~22_combout\,
	combout => \proc|UAL|q[12]~23_combout\);

-- Location: LCFF_X45_Y2_N11
\proc|G|Rout[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[12]~23_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(12));

-- Location: LCFF_X45_Y6_N29
\proc|R2|Rout[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux3~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(12));

-- Location: LCFF_X45_Y6_N27
\proc|R3|Rout[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux3~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(12));

-- Location: LCCOMB_X45_Y6_N28
\proc|mux|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux3~3_combout\ = (\proc|mux|Mux3~2_combout\ & (((\proc|R3|Rout\(12))) # (!\proc|finalState|MUXin\(1)))) # (!\proc|mux|Mux3~2_combout\ & (\proc|finalState|MUXin\(1) & (\proc|R2|Rout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux3~2_combout\,
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R2|Rout\(12),
	datad => \proc|R3|Rout\(12),
	combout => \proc|mux|Mux3~3_combout\);

-- Location: LCCOMB_X44_Y6_N16
\proc|mux|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux3~4_combout\ = (\proc|mux|Mux15~2_combout\ & (\proc|finalState|MUXin\(3))) # (!\proc|mux|Mux15~2_combout\ & ((\proc|finalState|MUXin\(3) & (\proc|G|Rout\(12))) # (!\proc|finalState|MUXin\(3) & ((\proc|mux|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux15~2_combout\,
	datab => \proc|finalState|MUXin\(3),
	datac => \proc|G|Rout\(12),
	datad => \proc|mux|Mux3~3_combout\,
	combout => \proc|mux|Mux3~4_combout\);

-- Location: LCFF_X44_Y6_N19
\proc|R7|Rout[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux3~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(12));

-- Location: LCFF_X44_Y6_N13
\proc|R5|Rout[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux3~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R5|Rout\(12));

-- Location: LCCOMB_X44_Y6_N18
\proc|mux|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux3~1_combout\ = (\proc|mux|Mux3~0_combout\ & (((\proc|R7|Rout\(12))) # (!\proc|finalState|MUXin\(0)))) # (!\proc|mux|Mux3~0_combout\ & (\proc|finalState|MUXin\(0) & ((\proc|R5|Rout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux3~0_combout\,
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R7|Rout\(12),
	datad => \proc|R5|Rout\(12),
	combout => \proc|mux|Mux3~1_combout\);

-- Location: LCCOMB_X44_Y6_N30
\proc|mux|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux3~5_combout\ = (\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux3~4_combout\ & (\SW~combout\(12))) # (!\proc|mux|Mux3~4_combout\ & ((\proc|mux|Mux3~1_combout\))))) # (!\proc|mux|Mux15~2_combout\ & (((\proc|mux|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux15~2_combout\,
	datab => \SW~combout\(12),
	datac => \proc|mux|Mux3~4_combout\,
	datad => \proc|mux|Mux3~1_combout\,
	combout => \proc|mux|Mux3~5_combout\);

-- Location: LCCOMB_X43_Y2_N14
\proc|UAL|sub|add_compl|cell_array:12:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add_compl|cell_array:12:int_cell:add_i|COUT~0_combout\ = (\proc|mux|Mux3~5_combout\) # ((\proc|mux|Mux4~5_combout\) # ((\proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0_combout\) # (\proc|mux|Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux3~5_combout\,
	datab => \proc|mux|Mux4~5_combout\,
	datac => \proc|UAL|sub|add_compl|cell_array:9:int_cell:add_i|COUT~0_combout\,
	datad => \proc|mux|Mux5~5_combout\,
	combout => \proc|UAL|sub|add_compl|cell_array:12:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y2_N8
\proc|UAL|sub|add|cell_array:11:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:11:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(11) & ((\proc|UAL|sub|add|cell_array:10:int_cell:add_i|COUT~0_combout\) # (\proc|UAL|sub|add_compl|cell_array:10:int_cell:add_i|COUT~0_combout\ $ 
-- (\proc|mux|Mux4~5_combout\)))) # (!\proc|A|Rout\(11) & (\proc|UAL|sub|add|cell_array:10:int_cell:add_i|COUT~0_combout\ & (\proc|UAL|sub|add_compl|cell_array:10:int_cell:add_i|COUT~0_combout\ $ (\proc|mux|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add_compl|cell_array:10:int_cell:add_i|COUT~0_combout\,
	datab => \proc|mux|Mux4~5_combout\,
	datac => \proc|A|Rout\(11),
	datad => \proc|UAL|sub|add|cell_array:10:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add|cell_array:11:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y2_N0
\proc|UAL|sub|add|cell_array:12:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:12:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(12) & ((\proc|UAL|sub|add|cell_array:11:int_cell:add_i|COUT~0_combout\) # (\proc|UAL|sub|add_compl|cell_array:11:int_cell:add_i|COUT~0_combout\ $ 
-- (\proc|mux|Mux3~5_combout\)))) # (!\proc|A|Rout\(12) & (\proc|UAL|sub|add|cell_array:11:int_cell:add_i|COUT~0_combout\ & (\proc|UAL|sub|add_compl|cell_array:11:int_cell:add_i|COUT~0_combout\ $ (\proc|mux|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add_compl|cell_array:11:int_cell:add_i|COUT~0_combout\,
	datab => \proc|A|Rout\(12),
	datac => \proc|UAL|sub|add|cell_array:11:int_cell:add_i|COUT~0_combout\,
	datad => \proc|mux|Mux3~5_combout\,
	combout => \proc|UAL|sub|add|cell_array:12:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X42_Y2_N18
\proc|UAL|q[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[13]~24_combout\ = (\proc|finalState|operate\(0) & ((\proc|UAL|sub|add_compl|cell_array:12:int_cell:add_i|COUT~0_combout\ $ (\proc|UAL|sub|add|cell_array:12:int_cell:add_i|COUT~0_combout\)))) # (!\proc|finalState|operate\(0) & 
-- (\proc|UAL|add|cell_array:12:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|add|cell_array:12:int_cell:add_i|COUT~0_combout\,
	datab => \proc|UAL|sub|add_compl|cell_array:12:int_cell:add_i|COUT~0_combout\,
	datac => \proc|UAL|sub|add|cell_array:12:int_cell:add_i|COUT~0_combout\,
	datad => \proc|finalState|operate\(0),
	combout => \proc|UAL|q[13]~24_combout\);

-- Location: LCCOMB_X42_Y2_N30
\proc|UAL|q[13]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[13]~25_combout\ = \proc|A|Rout\(13) $ (\proc|mux|Mux2~5_combout\ $ (\proc|UAL|q[13]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|A|Rout\(13),
	datac => \proc|mux|Mux2~5_combout\,
	datad => \proc|UAL|q[13]~24_combout\,
	combout => \proc|UAL|q[13]~25_combout\);

-- Location: LCFF_X42_Y2_N31
\proc|G|Rout[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[13]~25_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(13));

-- Location: LCFF_X45_Y6_N13
\proc|R2|Rout[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux2~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(13));

-- Location: LCFF_X45_Y6_N11
\proc|R3|Rout[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux2~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(13));

-- Location: LCCOMB_X45_Y6_N12
\proc|mux|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux2~3_combout\ = (\proc|mux|Mux2~2_combout\ & (((\proc|R3|Rout\(13))) # (!\proc|finalState|MUXin\(1)))) # (!\proc|mux|Mux2~2_combout\ & (\proc|finalState|MUXin\(1) & (\proc|R2|Rout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux2~2_combout\,
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R2|Rout\(13),
	datad => \proc|R3|Rout\(13),
	combout => \proc|mux|Mux2~3_combout\);

-- Location: LCCOMB_X43_Y6_N4
\proc|mux|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux2~4_combout\ = (\proc|finalState|MUXin\(3) & (((\proc|mux|Mux15~2_combout\)))) # (!\proc|finalState|MUXin\(3) & ((\proc|mux|Mux15~2_combout\ & (\proc|mux|Mux2~1_combout\)) # (!\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux2~1_combout\,
	datab => \proc|mux|Mux2~3_combout\,
	datac => \proc|finalState|MUXin\(3),
	datad => \proc|mux|Mux15~2_combout\,
	combout => \proc|mux|Mux2~4_combout\);

-- Location: LCCOMB_X43_Y6_N6
\proc|mux|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux2~5_combout\ = (\proc|finalState|MUXin\(3) & ((\proc|mux|Mux2~4_combout\ & ((\SW~combout\(13)))) # (!\proc|mux|Mux2~4_combout\ & (\proc|G|Rout\(13))))) # (!\proc|finalState|MUXin\(3) & (((\proc|mux|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|G|Rout\(13),
	datab => \SW~combout\(13),
	datac => \proc|finalState|MUXin\(3),
	datad => \proc|mux|Mux2~4_combout\,
	combout => \proc|mux|Mux2~5_combout\);

-- Location: LCFF_X42_Y3_N1
\proc|R2|Rout[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux1~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(14));

-- Location: LCFF_X42_Y3_N31
\proc|R3|Rout[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux1~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(14));

-- Location: LCCOMB_X42_Y3_N30
\proc|mux|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux1~3_combout\ = (\proc|mux|Mux1~2_combout\ & (((\proc|R3|Rout\(14)) # (!\proc|finalState|MUXin\(1))))) # (!\proc|mux|Mux1~2_combout\ & (\proc|R2|Rout\(14) & ((\proc|finalState|MUXin\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux1~2_combout\,
	datab => \proc|R2|Rout\(14),
	datac => \proc|R3|Rout\(14),
	datad => \proc|finalState|MUXin\(1),
	combout => \proc|mux|Mux1~3_combout\);

-- Location: LCCOMB_X43_Y6_N16
\proc|mux|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux1~4_combout\ = (\proc|mux|Mux15~2_combout\ & (((\proc|finalState|MUXin\(3))))) # (!\proc|mux|Mux15~2_combout\ & ((\proc|finalState|MUXin\(3) & (\proc|G|Rout\(14))) # (!\proc|finalState|MUXin\(3) & ((\proc|mux|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|G|Rout\(14),
	datab => \proc|mux|Mux15~2_combout\,
	datac => \proc|finalState|MUXin\(3),
	datad => \proc|mux|Mux1~3_combout\,
	combout => \proc|mux|Mux1~4_combout\);

-- Location: LCFF_X43_Y6_N23
\proc|R7|Rout[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux1~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R7|Rout\(14));

-- Location: LCFF_X42_Y6_N11
\proc|R4|Rout[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux1~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R4|Rout\(14));

-- Location: LCFF_X42_Y6_N17
\proc|R6|Rout[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux1~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R6|Rout\(14));

-- Location: LCCOMB_X42_Y6_N10
\proc|mux|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux1~0_combout\ = (\proc|finalState|MUXin\(0) & (\proc|finalState|MUXin\(1))) # (!\proc|finalState|MUXin\(0) & ((\proc|finalState|MUXin\(1) & ((\proc|R6|Rout\(14)))) # (!\proc|finalState|MUXin\(1) & (\proc|R4|Rout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(0),
	datab => \proc|finalState|MUXin\(1),
	datac => \proc|R4|Rout\(14),
	datad => \proc|R6|Rout\(14),
	combout => \proc|mux|Mux1~0_combout\);

-- Location: LCCOMB_X43_Y6_N22
\proc|mux|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux1~1_combout\ = (\proc|finalState|MUXin\(0) & ((\proc|mux|Mux1~0_combout\ & ((\proc|R7|Rout\(14)))) # (!\proc|mux|Mux1~0_combout\ & (\proc|R5|Rout\(14))))) # (!\proc|finalState|MUXin\(0) & (((\proc|mux|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R5|Rout\(14),
	datab => \proc|finalState|MUXin\(0),
	datac => \proc|R7|Rout\(14),
	datad => \proc|mux|Mux1~0_combout\,
	combout => \proc|mux|Mux1~1_combout\);

-- Location: LCCOMB_X43_Y6_N2
\proc|mux|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux1~5_combout\ = (\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux1~4_combout\ & (\SW~combout\(14))) # (!\proc|mux|Mux1~4_combout\ & ((\proc|mux|Mux1~1_combout\))))) # (!\proc|mux|Mux15~2_combout\ & (((\proc|mux|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(14),
	datab => \proc|mux|Mux15~2_combout\,
	datac => \proc|mux|Mux1~4_combout\,
	datad => \proc|mux|Mux1~1_combout\,
	combout => \proc|mux|Mux1~5_combout\);

-- Location: LCCOMB_X43_Y2_N6
\proc|UAL|add|cell_array:12:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:12:int_cell:add_i|COUT~0_combout\ = (\proc|mux|Mux3~5_combout\ & ((\proc|A|Rout\(12)) # (\proc|UAL|add|cell_array:11:int_cell:add_i|COUT~0_combout\))) # (!\proc|mux|Mux3~5_combout\ & (\proc|A|Rout\(12) & 
-- \proc|UAL|add|cell_array:11:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux3~5_combout\,
	datab => \proc|A|Rout\(12),
	datad => \proc|UAL|add|cell_array:11:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|add|cell_array:12:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X42_Y2_N24
\proc|UAL|add|cell_array:13:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:13:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(13) & ((\proc|mux|Mux2~5_combout\) # (\proc|UAL|add|cell_array:12:int_cell:add_i|COUT~0_combout\))) # (!\proc|A|Rout\(13) & (\proc|mux|Mux2~5_combout\ & 
-- \proc|UAL|add|cell_array:12:int_cell:add_i|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|A|Rout\(13),
	datac => \proc|mux|Mux2~5_combout\,
	datad => \proc|UAL|add|cell_array:12:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|add|cell_array:13:int_cell:add_i|COUT~0_combout\);

-- Location: LCFF_X43_Y2_N11
\proc|A|Rout[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux0~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(15));

-- Location: LCCOMB_X42_Y2_N20
\proc|UAL|sub|add|cell_array:15:last_cell:last_add|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:15:last_cell:last_add|S~0_combout\ = \proc|mux|Mux0~5_combout\ $ (\proc|A|Rout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux0~5_combout\,
	datad => \proc|A|Rout\(15),
	combout => \proc|UAL|sub|add|cell_array:15:last_cell:last_add|S~0_combout\);

-- Location: LCCOMB_X42_Y2_N16
\proc|UAL|add|cell_array:15:last_cell:last_add|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|add|cell_array:15:last_cell:last_add|S~combout\ = \proc|UAL|sub|add|cell_array:15:last_cell:last_add|S~0_combout\ $ (((\proc|A|Rout\(14) & ((\proc|mux|Mux1~5_combout\) # (\proc|UAL|add|cell_array:13:int_cell:add_i|COUT~0_combout\))) # 
-- (!\proc|A|Rout\(14) & (\proc|mux|Mux1~5_combout\ & \proc|UAL|add|cell_array:13:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|A|Rout\(14),
	datab => \proc|mux|Mux1~5_combout\,
	datac => \proc|UAL|add|cell_array:13:int_cell:add_i|COUT~0_combout\,
	datad => \proc|UAL|sub|add|cell_array:15:last_cell:last_add|S~0_combout\,
	combout => \proc|UAL|add|cell_array:15:last_cell:last_add|S~combout\);

-- Location: LCCOMB_X43_Y2_N10
\proc|UAL|sub|add_compl|cell_array:13:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add_compl|cell_array:13:int_cell:add_i|COUT~0_combout\ = (\proc|mux|Mux2~5_combout\) # (\proc|UAL|sub|add_compl|cell_array:12:int_cell:add_i|COUT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|mux|Mux2~5_combout\,
	datad => \proc|UAL|sub|add_compl|cell_array:12:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add_compl|cell_array:13:int_cell:add_i|COUT~0_combout\);

-- Location: LCFF_X43_Y2_N5
\proc|A|Rout[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux1~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(14));

-- Location: LCFF_X43_Y2_N13
\proc|A|Rout[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux2~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|A|Rout\(13));

-- Location: LCCOMB_X43_Y2_N12
\proc|UAL|sub|add|cell_array:13:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:13:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(13) & ((\proc|UAL|sub|add|cell_array:12:int_cell:add_i|COUT~0_combout\) # (\proc|mux|Mux2~5_combout\ $ 
-- (\proc|UAL|sub|add_compl|cell_array:12:int_cell:add_i|COUT~0_combout\)))) # (!\proc|A|Rout\(13) & (\proc|UAL|sub|add|cell_array:12:int_cell:add_i|COUT~0_combout\ & (\proc|mux|Mux2~5_combout\ $ 
-- (\proc|UAL|sub|add_compl|cell_array:12:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux2~5_combout\,
	datab => \proc|UAL|sub|add_compl|cell_array:12:int_cell:add_i|COUT~0_combout\,
	datac => \proc|A|Rout\(13),
	datad => \proc|UAL|sub|add|cell_array:12:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add|cell_array:13:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X43_Y2_N4
\proc|UAL|sub|add|cell_array:14:int_cell:add_i|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:14:int_cell:add_i|COUT~0_combout\ = (\proc|A|Rout\(14) & ((\proc|UAL|sub|add|cell_array:13:int_cell:add_i|COUT~0_combout\) # (\proc|UAL|sub|add_compl|cell_array:13:int_cell:add_i|COUT~0_combout\ $ 
-- (\proc|mux|Mux1~5_combout\)))) # (!\proc|A|Rout\(14) & (\proc|UAL|sub|add|cell_array:13:int_cell:add_i|COUT~0_combout\ & (\proc|UAL|sub|add_compl|cell_array:13:int_cell:add_i|COUT~0_combout\ $ (\proc|mux|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|UAL|sub|add_compl|cell_array:13:int_cell:add_i|COUT~0_combout\,
	datab => \proc|mux|Mux1~5_combout\,
	datac => \proc|A|Rout\(14),
	datad => \proc|UAL|sub|add|cell_array:13:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add|cell_array:14:int_cell:add_i|COUT~0_combout\);

-- Location: LCCOMB_X42_Y2_N22
\proc|UAL|sub|add|cell_array:15:last_cell:last_add|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|sub|add|cell_array:15:last_cell:last_add|S~combout\ = \proc|UAL|sub|add|cell_array:15:last_cell:last_add|S~0_combout\ $ (\proc|UAL|sub|add|cell_array:14:int_cell:add_i|COUT~0_combout\ $ (((\proc|mux|Mux1~5_combout\) # 
-- (\proc|UAL|sub|add_compl|cell_array:13:int_cell:add_i|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux1~5_combout\,
	datab => \proc|UAL|sub|add|cell_array:15:last_cell:last_add|S~0_combout\,
	datac => \proc|UAL|sub|add_compl|cell_array:13:int_cell:add_i|COUT~0_combout\,
	datad => \proc|UAL|sub|add|cell_array:14:int_cell:add_i|COUT~0_combout\,
	combout => \proc|UAL|sub|add|cell_array:15:last_cell:last_add|S~combout\);

-- Location: LCCOMB_X42_Y2_N26
\proc|UAL|q[15]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|UAL|q[15]~28_combout\ = (\proc|finalState|operate\(0) & ((\proc|UAL|sub|add|cell_array:15:last_cell:last_add|S~combout\))) # (!\proc|finalState|operate\(0) & (\proc|UAL|add|cell_array:15:last_cell:last_add|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|finalState|operate\(0),
	datac => \proc|UAL|add|cell_array:15:last_cell:last_add|S~combout\,
	datad => \proc|UAL|sub|add|cell_array:15:last_cell:last_add|S~combout\,
	combout => \proc|UAL|q[15]~28_combout\);

-- Location: LCFF_X42_Y2_N27
\proc|G|Rout[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|UAL|q[15]~28_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|current_state.operation1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|G|Rout\(15));

-- Location: LCCOMB_X46_Y4_N4
\proc|R1|Rout[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|R1|Rout[15]~feeder_combout\ = \proc|mux|Mux0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Mux0~5_combout\,
	combout => \proc|R1|Rout[15]~feeder_combout\);

-- Location: LCFF_X46_Y4_N5
\proc|R1|Rout[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	datain => \proc|R1|Rout[15]~feeder_combout\,
	aclr => \KEY~combout\(0),
	ena => \proc|finalState|sigSet\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R1|Rout\(15));

-- Location: LCFF_X45_Y5_N3
\proc|R0|Rout[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux0~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R0|Rout\(15));

-- Location: LCCOMB_X46_Y5_N0
\proc|mux|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux0~2_combout\ = (\proc|finalState|MUXin\(1) & (((\proc|finalState|MUXin\(0))))) # (!\proc|finalState|MUXin\(1) & ((\proc|finalState|MUXin\(0) & (\proc|R1|Rout\(15))) # (!\proc|finalState|MUXin\(0) & ((\proc|R0|Rout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|R1|Rout\(15),
	datac => \proc|finalState|MUXin\(0),
	datad => \proc|R0|Rout\(15),
	combout => \proc|mux|Mux0~2_combout\);

-- Location: LCFF_X45_Y6_N21
\proc|R2|Rout[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux0~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R2|Rout\(15));

-- Location: LCFF_X45_Y6_N7
\proc|R3|Rout[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY[1]~clkctrl_outclk\,
	sdata => \proc|mux|Mux0~5_combout\,
	aclr => \KEY~combout\(0),
	sload => VCC,
	ena => \proc|finalState|sigSet\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc|R3|Rout\(15));

-- Location: LCCOMB_X45_Y6_N20
\proc|mux|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux0~3_combout\ = (\proc|finalState|MUXin\(1) & ((\proc|mux|Mux0~2_combout\ & ((\proc|R3|Rout\(15)))) # (!\proc|mux|Mux0~2_combout\ & (\proc|R2|Rout\(15))))) # (!\proc|finalState|MUXin\(1) & (\proc|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|MUXin\(1),
	datab => \proc|mux|Mux0~2_combout\,
	datac => \proc|R2|Rout\(15),
	datad => \proc|R3|Rout\(15),
	combout => \proc|mux|Mux0~3_combout\);

-- Location: LCCOMB_X44_Y6_N24
\proc|mux|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux0~4_combout\ = (\proc|finalState|MUXin\(3) & (((\proc|mux|Mux15~2_combout\)))) # (!\proc|finalState|MUXin\(3) & ((\proc|mux|Mux15~2_combout\ & (\proc|mux|Mux0~1_combout\)) # (!\proc|mux|Mux15~2_combout\ & ((\proc|mux|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Mux0~1_combout\,
	datab => \proc|finalState|MUXin\(3),
	datac => \proc|mux|Mux15~2_combout\,
	datad => \proc|mux|Mux0~3_combout\,
	combout => \proc|mux|Mux0~4_combout\);

-- Location: LCCOMB_X43_Y6_N24
\proc|mux|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|mux|Mux0~5_combout\ = (\proc|finalState|MUXin\(3) & ((\proc|mux|Mux0~4_combout\ & (\SW~combout\(15))) # (!\proc|mux|Mux0~4_combout\ & ((\proc|G|Rout\(15)))))) # (!\proc|finalState|MUXin\(3) & (((\proc|mux|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(15),
	datab => \proc|finalState|MUXin\(3),
	datac => \proc|G|Rout\(15),
	datad => \proc|mux|Mux0~4_combout\,
	combout => \proc|mux|Mux0~5_combout\);

-- Location: LCCOMB_X45_Y4_N12
\proc|finalState|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector0~0_combout\ = ((!\proc|IR|Rout\(7) & ((!\proc|IR|Rout\(6)) # (!\proc|IR|Rout\(8))))) # (!\proc|finalState|current_state.operation0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Rout\(8),
	datab => \proc|IR|Rout\(6),
	datac => \proc|IR|Rout\(7),
	datad => \proc|finalState|current_state.operation0~regout\,
	combout => \proc|finalState|Selector0~0_combout\);

-- Location: LCCOMB_X46_Y4_N14
\proc|finalState|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|Selector0~1_combout\ = (!\proc|finalState|current_state.operation1~regout\ & \proc|finalState|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|finalState|current_state.operation1~regout\,
	datac => \proc|finalState|Selector0~0_combout\,
	combout => \proc|finalState|Selector0~1_combout\);

-- Location: LCCOMB_X45_Y4_N20
\proc|finalState|DONE\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc|finalState|DONE~combout\ = (\proc|finalState|Selector0~1_combout\ & ((\proc|finalState|Selector1~0_combout\))) # (!\proc|finalState|Selector0~1_combout\ & (\proc|finalState|DONE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|finalState|DONE~combout\,
	datac => \proc|finalState|Selector0~1_combout\,
	datad => \proc|finalState|Selector1~0_combout\,
	combout => \proc|finalState|DONE~combout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[16]~I\ : cycloneii_io
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
	padio => ww_SW(16));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[17]~I\ : cycloneii_io
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
	padio => ww_SW(17));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[0]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[1]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux14~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[2]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux13~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[3]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux12~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[4]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux11~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[5]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[6]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux9~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[7]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[8]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[9]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[10]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[11]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[12]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[13]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[14]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[15]~I\ : cycloneii_io
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
	datain => \proc|mux|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[16]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[17]~I\ : cycloneii_io
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
	datain => \proc|finalState|DONE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(17));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDG[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(6));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(5));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(4));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(3));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(2));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(1));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(6));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(5));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(4));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(2));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(1));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(0));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(6));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(5));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(4));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(3));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(2));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(1));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(0));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(6));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(5));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(4));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(3));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(2));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(1));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(0));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX3[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX3[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX3[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX3[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX3[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX3[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX3[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX2[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX2[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX2[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX2[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX2[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX2[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX2[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));
END structure;


