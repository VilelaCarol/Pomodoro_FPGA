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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/18/2023 18:24:19"

-- 
-- Device: Altera EP4CE30F23C7 Package FBGA484
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

ENTITY 	Labx10 IS
    PORT (
	CLOCK_50MHz : IN std_logic;
	KEY : IN std_logic_vector(11 DOWNTO 0);
	SW : IN std_logic_vector(3 DOWNTO 0);
	LCD_D : INOUT std_logic_vector(7 DOWNTO 0);
	LCD_RS : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_EN : OUT std_logic;
	LCD_BACKLIGHT : OUT std_logic;
	UART_RXD : IN std_logic;
	UART_TXD : OUT std_logic
	);
END Labx10;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[4]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[7]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[8]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[9]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[10]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_EN	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_BACKLIGHT	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_TXD	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_D[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_D[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_D[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_D[3]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_D[4]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_D[5]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_D[6]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_D[7]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50MHz	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[11]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Labx10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50MHz : std_logic;
SIGNAL ww_KEY : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_BACKLIGHT : std_logic;
SIGNAL ww_UART_RXD : std_logic;
SIGNAL ww_UART_TXD : std_logic;
SIGNAL \CLOCK_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[11]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[4]~input_o\ : std_logic;
SIGNAL \KEY[5]~input_o\ : std_logic;
SIGNAL \KEY[6]~input_o\ : std_logic;
SIGNAL \KEY[7]~input_o\ : std_logic;
SIGNAL \KEY[8]~input_o\ : std_logic;
SIGNAL \KEY[9]~input_o\ : std_logic;
SIGNAL \KEY[10]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \LCD_D[0]~input_o\ : std_logic;
SIGNAL \LCD_D[1]~input_o\ : std_logic;
SIGNAL \LCD_D[2]~input_o\ : std_logic;
SIGNAL \LCD_D[3]~input_o\ : std_logic;
SIGNAL \LCD_D[4]~input_o\ : std_logic;
SIGNAL \LCD_D[5]~input_o\ : std_logic;
SIGNAL \LCD_D[6]~input_o\ : std_logic;
SIGNAL \LCD_D[7]~input_o\ : std_logic;
SIGNAL \LCD_D[0]~output_o\ : std_logic;
SIGNAL \LCD_D[1]~output_o\ : std_logic;
SIGNAL \LCD_D[2]~output_o\ : std_logic;
SIGNAL \LCD_D[3]~output_o\ : std_logic;
SIGNAL \LCD_D[4]~output_o\ : std_logic;
SIGNAL \LCD_D[5]~output_o\ : std_logic;
SIGNAL \LCD_D[6]~output_o\ : std_logic;
SIGNAL \LCD_D[7]~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_BACKLIGHT~output_o\ : std_logic;
SIGNAL \UART_TXD~output_o\ : std_logic;
SIGNAL \CLOCK_50MHz~input_o\ : std_logic;
SIGNAL \CLOCK_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[0]~11_combout\ : std_logic;
SIGNAL \reset_synch_50mhz_inst|r_rst_sync_0~feeder_combout\ : std_logic;
SIGNAL \KEY[11]~input_o\ : std_logic;
SIGNAL \KEY[11]~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset_synch_50mhz_inst|r_rst_sync_0~q\ : std_logic;
SIGNAL \reset_synch_50mhz_inst|r_rst_sync_1~feeder_combout\ : std_logic;
SIGNAL \reset_synch_50mhz_inst|r_rst_sync_1~q\ : std_logic;
SIGNAL \reset_synch_50mhz_inst|r_rst_sync_2~q\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[8]~28\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[9]~29_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|cnt~6_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~1\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~3\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~4_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|cnt~5_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~5\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~6_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~7\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~8_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|cnt~4_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~9\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~10_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|cnt~3_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~11\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~12_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|cnt~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~13\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~14_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|cnt~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~15\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add0~16_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|cnt~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|clk_en~q\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[9]~30\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[10]~31_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Equal4~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|EA.IDLE~feeder_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|EA.IDLE~q\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|EA~18_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|EA.BOOT~q\ : std_logic;
SIGNAL \inst_lcd_top|EA.TESTWORD~q\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \count_2~16_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \count_2~23_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \count_2~21_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \count_2~26_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \count_2~22_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \count_2~25_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \count_2~20_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \count_2~19_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \count_2~18_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \count_2~17_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \count_2~24_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \start_lcd~q\ : std_logic;
SIGNAL \inst_lcd_top|Add2~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector15~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Add2~1\ : std_logic;
SIGNAL \inst_lcd_top|Add2~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector14~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector10~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Add2~3\ : std_logic;
SIGNAL \inst_lcd_top|Add2~4_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector13~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Add2~5\ : std_logic;
SIGNAL \inst_lcd_top|Add2~6_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector12~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Equal2~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Add2~7\ : std_logic;
SIGNAL \inst_lcd_top|Add2~8_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector11~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Equal6~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Add2~9\ : std_logic;
SIGNAL \inst_lcd_top|Add2~10_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector10~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector10~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|Equal2~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector27~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|clr_st~q\ : std_logic;
SIGNAL \inst_lcd_top|Selector2~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|EA.WAITLCD2~q\ : std_logic;
SIGNAL \inst_lcd_top|EA~19_combout\ : std_logic;
SIGNAL \inst_lcd_top|PE.LINE1~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|EA.LINE1~q\ : std_logic;
SIGNAL \inst_lcd_top|EA~20_combout\ : std_logic;
SIGNAL \inst_lcd_top|EA.LINE2~q\ : std_logic;
SIGNAL \inst_lcd_top|Selector24~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector26~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|line_st~q\ : std_logic;
SIGNAL \inst_lcd_top|Add0~1\ : std_logic;
SIGNAL \inst_lcd_top|Add0~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector7~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector27~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|Add0~3\ : std_logic;
SIGNAL \inst_lcd_top|Add0~4_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector6~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Add0~5\ : std_logic;
SIGNAL \inst_lcd_top|Add0~6_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector5~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Add0~7\ : std_logic;
SIGNAL \inst_lcd_top|Add0~8_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector4~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Equal3~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Add0~9\ : std_logic;
SIGNAL \inst_lcd_top|Add0~10_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector3~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector3~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|Equal3~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector0~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|EA.IDLE~feeder_combout\ : std_logic;
SIGNAL \inst_lcd_top|EA.IDLE~q\ : std_logic;
SIGNAL \inst_lcd_top|EA~18_combout\ : std_logic;
SIGNAL \inst_lcd_top|EA.BOOT~q\ : std_logic;
SIGNAL \inst_lcd_top|Selector0~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector0~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|EA.AWAIT~q\ : std_logic;
SIGNAL \inst_lcd_top|PE.CLRLCD~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|EA.CLRLCD~q\ : std_logic;
SIGNAL \inst_lcd_top|Selector1~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector1~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|EA.WAITLCD1~q\ : std_logic;
SIGNAL \inst_lcd_top|WideOr9~combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector24~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector25~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Equal2~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Equal2~3_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector19~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector18~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Add2~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector17~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector16~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector16~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|WideOr5~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[0]~12\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[1]~13_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[1]~14\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[2]~15_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[2]~16\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[3]~17_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[3]~18\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[4]~19_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[4]~20\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[5]~21_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[5]~22\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[6]~23_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[6]~24\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[7]~25_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[7]~26\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count[8]~27_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Equal4~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector1~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector3~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|LCD_RS~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector1~3_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|ready_o~q\ : std_logic;
SIGNAL \inst_lcd_top|EA~15_combout\ : std_logic;
SIGNAL \inst_lcd_top|EA~16_combout\ : std_logic;
SIGNAL \inst_lcd_top|EA~17_combout\ : std_logic;
SIGNAL \inst_lcd_top|EA.WRLCD~q\ : std_logic;
SIGNAL \inst_lcd_top|Add0~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector8~0_combout\ : std_logic;
SIGNAL \uart_inst|Add2~2_combout\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[0]~9_combout\ : std_logic;
SIGNAL \uart_inst|Equal4~0_combout\ : std_logic;
SIGNAL \UART_RXD~input_o\ : std_logic;
SIGNAL \uart_inst|serial_rx_int~q\ : std_logic;
SIGNAL \uart_inst|serial_rx_ff~feeder_combout\ : std_logic;
SIGNAL \uart_inst|serial_rx_ff~q\ : std_logic;
SIGNAL \uart_inst|Sync~1_combout\ : std_logic;
SIGNAL \uart_inst|rising_new_byte~q\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[2]~14\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[3]~15_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[3]~16\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[4]~17_combout\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[4]~18\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[5]~19_combout\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[5]~20\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[6]~21_combout\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[6]~22\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[7]~23_combout\ : std_logic;
SIGNAL \uart_inst|Equal2~0_combout\ : std_logic;
SIGNAL \uart_inst|Equal2~1_combout\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[7]~24\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[8]~25_combout\ : std_logic;
SIGNAL \uart_inst|Sync~0_combout\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[0]~10\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[1]~11_combout\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[1]~12\ : std_logic;
SIGNAL \uart_inst|count_baud_rx[2]~13_combout\ : std_logic;
SIGNAL \uart_inst|Equal3~0_combout\ : std_logic;
SIGNAL \uart_inst|Equal3~1_combout\ : std_logic;
SIGNAL \uart_inst|Equal3~2_combout\ : std_logic;
SIGNAL \uart_inst|clock_baud_rx~q\ : std_logic;
SIGNAL \uart_inst|Add2~0_combout\ : std_logic;
SIGNAL \uart_inst|rx_busy~0_combout\ : std_logic;
SIGNAL \uart_inst|Add0~0_combout\ : std_logic;
SIGNAL \uart_inst|div_clock~1_combout\ : std_logic;
SIGNAL \uart_inst|Equal0~0_combout\ : std_logic;
SIGNAL \uart_inst|Add0~1\ : std_logic;
SIGNAL \uart_inst|Add0~2_combout\ : std_logic;
SIGNAL \uart_inst|div_clock~2_combout\ : std_logic;
SIGNAL \uart_inst|Add0~3\ : std_logic;
SIGNAL \uart_inst|Add0~4_combout\ : std_logic;
SIGNAL \uart_inst|Add0~5\ : std_logic;
SIGNAL \uart_inst|Add0~6_combout\ : std_logic;
SIGNAL \uart_inst|div_clock~0_combout\ : std_logic;
SIGNAL \uart_inst|Add0~7\ : std_logic;
SIGNAL \uart_inst|Add0~9\ : std_logic;
SIGNAL \uart_inst|Add0~10_combout\ : std_logic;
SIGNAL \uart_inst|Add0~8_combout\ : std_logic;
SIGNAL \uart_inst|div_clock~3_combout\ : std_logic;
SIGNAL \uart_inst|Equal0~1_combout\ : std_logic;
SIGNAL \uart_inst|enable_1mhz~q\ : std_logic;
SIGNAL \uart_inst|falling_serial_rx~0_combout\ : std_logic;
SIGNAL \uart_inst|falling_serial_rx~q\ : std_logic;
SIGNAL \uart_inst|new_byte~0_combout\ : std_logic;
SIGNAL \uart_inst|new_byte~1_combout\ : std_logic;
SIGNAL \uart_inst|new_byte~q\ : std_logic;
SIGNAL \uart_inst|rx_busy~1_combout\ : std_logic;
SIGNAL \uart_inst|rx_busy~q\ : std_logic;
SIGNAL \uart_inst|count_bit_rx~0_combout\ : std_logic;
SIGNAL \uart_inst|Add2~1_combout\ : std_logic;
SIGNAL \uart_inst|data_read[0]~0_combout\ : std_logic;
SIGNAL \uart_inst|rx_valid_stop~0_combout\ : std_logic;
SIGNAL \uart_inst|rx_valid_stop~q\ : std_logic;
SIGNAL \uart_inst|rx_valid_start~0_combout\ : std_logic;
SIGNAL \uart_inst|rx_valid_start~q\ : std_logic;
SIGNAL \uart_inst|buffer_rx~0_combout\ : std_logic;
SIGNAL \uart_inst|buffer_rx[0]~2_combout\ : std_logic;
SIGNAL \uart_inst|buffer_rx~8_combout\ : std_logic;
SIGNAL \uart_inst|buffer_rx~7_combout\ : std_logic;
SIGNAL \uart_inst|buffer_rx~6_combout\ : std_logic;
SIGNAL \uart_inst|buffer_rx~5_combout\ : std_logic;
SIGNAL \uart_inst|buffer_rx~4_combout\ : std_logic;
SIGNAL \uart_inst|buffer_rx~3_combout\ : std_logic;
SIGNAL \uart_inst|buffer_rx~1_combout\ : std_logic;
SIGNAL \uart_inst|data_read[0]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|data_read[0]~1_combout\ : std_logic;
SIGNAL \uart_inst|serial_read_o[0]~0_combout\ : std_logic;
SIGNAL \count[1]~5_combout\ : std_logic;
SIGNAL \count[3]~10\ : std_logic;
SIGNAL \count[4]~11_combout\ : std_logic;
SIGNAL \flag_rd~0_combout\ : std_logic;
SIGNAL \flag_rd~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \word~711_combout\ : std_logic;
SIGNAL \count[4]~12\ : std_logic;
SIGNAL \count[5]~13_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \count[1]~6\ : std_logic;
SIGNAL \count[2]~7_combout\ : std_logic;
SIGNAL \count[2]~8\ : std_logic;
SIGNAL \count[3]~9_combout\ : std_logic;
SIGNAL \word~712_combout\ : std_logic;
SIGNAL \word~715_combout\ : std_logic;
SIGNAL \word~215_q\ : std_logic;
SIGNAL \word~471feeder_combout\ : std_logic;
SIGNAL \word~713_combout\ : std_logic;
SIGNAL \word~714_combout\ : std_logic;
SIGNAL \word~471_q\ : std_logic;
SIGNAL \word~543_combout\ : std_logic;
SIGNAL \word~740_combout\ : std_logic;
SIGNAL \word~247_q\ : std_logic;
SIGNAL \word~741_combout\ : std_logic;
SIGNAL \word~503_q\ : std_logic;
SIGNAL \word~544_combout\ : std_logic;
SIGNAL \word~407feeder_combout\ : std_logic;
SIGNAL \word~720_combout\ : std_logic;
SIGNAL \word~407_q\ : std_logic;
SIGNAL \word~721_combout\ : std_logic;
SIGNAL \word~151_q\ : std_logic;
SIGNAL \word~547_combout\ : std_logic;
SIGNAL \word~745_combout\ : std_logic;
SIGNAL \word~439_q\ : std_logic;
SIGNAL \word~744_combout\ : std_logic;
SIGNAL \word~183_q\ : std_logic;
SIGNAL \word~548_combout\ : std_logic;
SIGNAL \word~199feeder_combout\ : std_logic;
SIGNAL \word~716_combout\ : std_logic;
SIGNAL \word~742_combout\ : std_logic;
SIGNAL \word~199_q\ : std_logic;
SIGNAL \word~717_combout\ : std_logic;
SIGNAL \word~743_combout\ : std_logic;
SIGNAL \word~455_q\ : std_logic;
SIGNAL \word~719_combout\ : std_logic;
SIGNAL \word~167_q\ : std_logic;
SIGNAL \word~718_combout\ : std_logic;
SIGNAL \word~423_q\ : std_logic;
SIGNAL \word~545_combout\ : std_logic;
SIGNAL \word~546_combout\ : std_logic;
SIGNAL \word~549_combout\ : std_logic;
SIGNAL \word~722_combout\ : std_logic;
SIGNAL \word~487_q\ : std_logic;
SIGNAL \word~723_combout\ : std_logic;
SIGNAL \word~231_q\ : std_logic;
SIGNAL \word~550_combout\ : std_logic;
SIGNAL \word~747_combout\ : std_logic;
SIGNAL \word~519_q\ : std_logic;
SIGNAL \word~746_combout\ : std_logic;
SIGNAL \word~263_q\ : std_logic;
SIGNAL \word~551_combout\ : std_logic;
SIGNAL \word~552_combout\ : std_logic;
SIGNAL \word~732_combout\ : std_logic;
SIGNAL \word~279_q\ : std_logic;
SIGNAL \word~735_combout\ : std_logic;
SIGNAL \word~295_q\ : std_logic;
SIGNAL \word~734_combout\ : std_logic;
SIGNAL \word~23_q\ : std_logic;
SIGNAL \word~733_combout\ : std_logic;
SIGNAL \word~39_q\ : std_logic;
SIGNAL \word~557_combout\ : std_logic;
SIGNAL \word~558_combout\ : std_logic;
SIGNAL \word~728_combout\ : std_logic;
SIGNAL \word~311_q\ : std_logic;
SIGNAL \word~731_combout\ : std_logic;
SIGNAL \word~327_q\ : std_logic;
SIGNAL \word~730_combout\ : std_logic;
SIGNAL \word~55_q\ : std_logic;
SIGNAL \word~729_combout\ : std_logic;
SIGNAL \word~71_q\ : std_logic;
SIGNAL \word~555_combout\ : std_logic;
SIGNAL \word~556_combout\ : std_logic;
SIGNAL \word~559_combout\ : std_logic;
SIGNAL \word~738_combout\ : std_logic;
SIGNAL \word~119_q\ : std_logic;
SIGNAL \word~737_combout\ : std_logic;
SIGNAL \word~135_q\ : std_logic;
SIGNAL \word~560_combout\ : std_logic;
SIGNAL \word~736_combout\ : std_logic;
SIGNAL \word~375_q\ : std_logic;
SIGNAL \word~739_combout\ : std_logic;
SIGNAL \word~391_q\ : std_logic;
SIGNAL \word~561_combout\ : std_logic;
SIGNAL \word~726_combout\ : std_logic;
SIGNAL \word~87_q\ : std_logic;
SIGNAL \word~725_combout\ : std_logic;
SIGNAL \word~103_q\ : std_logic;
SIGNAL \word~553_combout\ : std_logic;
SIGNAL \word~724_combout\ : std_logic;
SIGNAL \word~343_q\ : std_logic;
SIGNAL \word~727_combout\ : std_logic;
SIGNAL \word~359_q\ : std_logic;
SIGNAL \word~554_combout\ : std_logic;
SIGNAL \word~562_combout\ : std_logic;
SIGNAL \word~563_combout\ : std_logic;
SIGNAL \inst_lcd_top|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst_lcd_top|WideOr9~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector17~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector17~0_combout\ : std_logic;
SIGNAL \uart_inst|data_read[6]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|serial_read_o[6]~6_combout\ : std_logic;
SIGNAL \word~269_q\ : std_logic;
SIGNAL \word~525_q\ : std_logic;
SIGNAL \word~141_q\ : std_logic;
SIGNAL \word~397_q\ : std_logic;
SIGNAL \word~677_combout\ : std_logic;
SIGNAL \word~678_combout\ : std_logic;
SIGNAL \word~45_q\ : std_logic;
SIGNAL \word~173_q\ : std_logic;
SIGNAL \word~674_combout\ : std_logic;
SIGNAL \word~301_q\ : std_logic;
SIGNAL \word~429_q\ : std_logic;
SIGNAL \word~675_combout\ : std_logic;
SIGNAL \word~109_q\ : std_logic;
SIGNAL \word~237_q\ : std_logic;
SIGNAL \word~672_combout\ : std_logic;
SIGNAL \word~493_q\ : std_logic;
SIGNAL \word~365feeder_combout\ : std_logic;
SIGNAL \word~365_q\ : std_logic;
SIGNAL \word~673_combout\ : std_logic;
SIGNAL \word~676_combout\ : std_logic;
SIGNAL \word~205_q\ : std_logic;
SIGNAL \word~461_q\ : std_logic;
SIGNAL \word~77_q\ : std_logic;
SIGNAL \word~333_q\ : std_logic;
SIGNAL \word~670_combout\ : std_logic;
SIGNAL \word~671_combout\ : std_logic;
SIGNAL \word~679_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector17~2_combout\ : std_logic;
SIGNAL \word~509_q\ : std_logic;
SIGNAL \word~445_q\ : std_logic;
SIGNAL \word~317_q\ : std_logic;
SIGNAL \word~381_q\ : std_logic;
SIGNAL \word~687_combout\ : std_logic;
SIGNAL \word~688_combout\ : std_logic;
SIGNAL \word~253_q\ : std_logic;
SIGNAL \word~189_q\ : std_logic;
SIGNAL \word~61_q\ : std_logic;
SIGNAL \word~125_q\ : std_logic;
SIGNAL \word~680_combout\ : std_logic;
SIGNAL \word~681_combout\ : std_logic;
SIGNAL \word~413_q\ : std_logic;
SIGNAL \word~477_q\ : std_logic;
SIGNAL \word~285_q\ : std_logic;
SIGNAL \word~349_q\ : std_logic;
SIGNAL \word~682_combout\ : std_logic;
SIGNAL \word~683_combout\ : std_logic;
SIGNAL \word~29_q\ : std_logic;
SIGNAL \word~93feeder_combout\ : std_logic;
SIGNAL \word~93_q\ : std_logic;
SIGNAL \word~684_combout\ : std_logic;
SIGNAL \word~221_q\ : std_logic;
SIGNAL \word~157_q\ : std_logic;
SIGNAL \word~685_combout\ : std_logic;
SIGNAL \word~686_combout\ : std_logic;
SIGNAL \word~689_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector17~3_combout\ : std_logic;
SIGNAL \inst_lcd_top|Selector17~4_combout\ : std_logic;
SIGNAL \word~658_combout\ : std_logic;
SIGNAL \uart_inst|serial_read_o[5]~5_combout\ : std_logic;
SIGNAL \word~508_q\ : std_logic;
SIGNAL \word~444_q\ : std_logic;
SIGNAL \word~412_q\ : std_logic;
SIGNAL \word~476_q\ : std_logic;
SIGNAL \word~659_combout\ : std_logic;
SIGNAL \word~660_combout\ : std_logic;
SIGNAL \word~332_q\ : std_logic;
SIGNAL \word~396_q\ : std_logic;
SIGNAL \word~300_q\ : std_logic;
SIGNAL \word~364_q\ : std_logic;
SIGNAL \word~661_combout\ : std_logic;
SIGNAL \word~662_combout\ : std_logic;
SIGNAL \word~316_q\ : std_logic;
SIGNAL \word~380_q\ : std_logic;
SIGNAL \word~284_q\ : std_logic;
SIGNAL \word~348_q\ : std_logic;
SIGNAL \word~663_combout\ : std_logic;
SIGNAL \word~664_combout\ : std_logic;
SIGNAL \word~665_combout\ : std_logic;
SIGNAL \word~428_q\ : std_logic;
SIGNAL \word~492_q\ : std_logic;
SIGNAL \word~666_combout\ : std_logic;
SIGNAL \word~460_q\ : std_logic;
SIGNAL \word~524_q\ : std_logic;
SIGNAL \word~667_combout\ : std_logic;
SIGNAL \word~668_combout\ : std_logic;
SIGNAL \word~760_combout\ : std_logic;
SIGNAL \word~140_q\ : std_logic;
SIGNAL \word~761_combout\ : std_logic;
SIGNAL \word~252_q\ : std_logic;
SIGNAL \word~762_combout\ : std_logic;
SIGNAL \word~124_q\ : std_logic;
SIGNAL \word~655_combout\ : std_logic;
SIGNAL \word~763_combout\ : std_logic;
SIGNAL \word~268_q\ : std_logic;
SIGNAL \word~656_combout\ : std_logic;
SIGNAL \word~755_combout\ : std_logic;
SIGNAL \word~236_q\ : std_logic;
SIGNAL \word~752_combout\ : std_logic;
SIGNAL \word~220_q\ : std_logic;
SIGNAL \word~754_combout\ : std_logic;
SIGNAL \word~92_q\ : std_logic;
SIGNAL \word~753_combout\ : std_logic;
SIGNAL \word~108_q\ : std_logic;
SIGNAL \word~650_combout\ : std_logic;
SIGNAL \word~651_combout\ : std_logic;
SIGNAL \word~759_combout\ : std_logic;
SIGNAL \word~172_q\ : std_logic;
SIGNAL \word~756_combout\ : std_logic;
SIGNAL \word~156_q\ : std_logic;
SIGNAL \word~758_combout\ : std_logic;
SIGNAL \word~28_q\ : std_logic;
SIGNAL \word~757_combout\ : std_logic;
SIGNAL \word~44_q\ : std_logic;
SIGNAL \word~652_combout\ : std_logic;
SIGNAL \word~653_combout\ : std_logic;
SIGNAL \word~654_combout\ : std_logic;
SIGNAL \word~751_combout\ : std_logic;
SIGNAL \word~204_q\ : std_logic;
SIGNAL \word~748_combout\ : std_logic;
SIGNAL \word~188_q\ : std_logic;
SIGNAL \word~749_combout\ : std_logic;
SIGNAL \word~76_q\ : std_logic;
SIGNAL \word~750_combout\ : std_logic;
SIGNAL \word~60_q\ : std_logic;
SIGNAL \word~648_combout\ : std_logic;
SIGNAL \word~649_combout\ : std_logic;
SIGNAL \word~657_combout\ : std_logic;
SIGNAL \word~669_combout\ : std_logic;
SIGNAL \inst_lcd_top|data[5]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|data_read[3]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|serial_read_o[3]~3_combout\ : std_logic;
SIGNAL \word~106_q\ : std_logic;
SIGNAL \word~138_q\ : std_logic;
SIGNAL \word~606_combout\ : std_logic;
SIGNAL \word~234_q\ : std_logic;
SIGNAL \word~266_q\ : std_logic;
SIGNAL \word~607_combout\ : std_logic;
SIGNAL \word~122_q\ : std_logic;
SIGNAL \word~90_q\ : std_logic;
SIGNAL \word~610_combout\ : std_logic;
SIGNAL \word~250_q\ : std_logic;
SIGNAL \word~218feeder_combout\ : std_logic;
SIGNAL \word~218_q\ : std_logic;
SIGNAL \word~611_combout\ : std_logic;
SIGNAL \word~378_q\ : std_logic;
SIGNAL \word~506_q\ : std_logic;
SIGNAL \word~346_q\ : std_logic;
SIGNAL \word~474_q\ : std_logic;
SIGNAL \word~608_combout\ : std_logic;
SIGNAL \word~609_combout\ : std_logic;
SIGNAL \word~612_combout\ : std_logic;
SIGNAL \word~394_q\ : std_logic;
SIGNAL \word~490_q\ : std_logic;
SIGNAL \word~362_q\ : std_logic;
SIGNAL \word~613_combout\ : std_logic;
SIGNAL \word~522_q\ : std_logic;
SIGNAL \word~614_combout\ : std_logic;
SIGNAL \word~615_combout\ : std_logic;
SIGNAL \word~298feeder_combout\ : std_logic;
SIGNAL \word~298_q\ : std_logic;
SIGNAL \word~282_q\ : std_logic;
SIGNAL \word~618_combout\ : std_logic;
SIGNAL \word~330_q\ : std_logic;
SIGNAL \word~314_q\ : std_logic;
SIGNAL \word~619_combout\ : std_logic;
SIGNAL \word~42_q\ : std_logic;
SIGNAL \word~26_q\ : std_logic;
SIGNAL \word~620_combout\ : std_logic;
SIGNAL \word~74_q\ : std_logic;
SIGNAL \word~58_q\ : std_logic;
SIGNAL \word~621_combout\ : std_logic;
SIGNAL \word~622_combout\ : std_logic;
SIGNAL \word~458_q\ : std_logic;
SIGNAL \word~442_q\ : std_logic;
SIGNAL \word~410_q\ : std_logic;
SIGNAL \word~426feeder_combout\ : std_logic;
SIGNAL \word~426_q\ : std_logic;
SIGNAL \word~623_combout\ : std_logic;
SIGNAL \word~624_combout\ : std_logic;
SIGNAL \word~202feeder_combout\ : std_logic;
SIGNAL \word~202_q\ : std_logic;
SIGNAL \word~186_q\ : std_logic;
SIGNAL \word~154_q\ : std_logic;
SIGNAL \word~170feeder_combout\ : std_logic;
SIGNAL \word~170_q\ : std_logic;
SIGNAL \word~616_combout\ : std_logic;
SIGNAL \word~617_combout\ : std_logic;
SIGNAL \word~625_combout\ : std_logic;
SIGNAL \word~626_combout\ : std_logic;
SIGNAL \inst_lcd_top|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst_lcd_top|process_2~0_combout\ : std_logic;
SIGNAL \uart_inst|data_read[1]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|serial_read_o[1]~1_combout\ : std_logic;
SIGNAL \word~184_q\ : std_logic;
SIGNAL \word~440_q\ : std_logic;
SIGNAL \word~56_q\ : std_logic;
SIGNAL \word~312_q\ : std_logic;
SIGNAL \word~576_combout\ : std_logic;
SIGNAL \word~577_combout\ : std_logic;
SIGNAL \word~152_q\ : std_logic;
SIGNAL \word~408_q\ : std_logic;
SIGNAL \word~280feeder_combout\ : std_logic;
SIGNAL \word~280_q\ : std_logic;
SIGNAL \word~24_q\ : std_logic;
SIGNAL \word~578_combout\ : std_logic;
SIGNAL \word~579_combout\ : std_logic;
SIGNAL \word~580_combout\ : std_logic;
SIGNAL \word~88_q\ : std_logic;
SIGNAL \word~344feeder_combout\ : std_logic;
SIGNAL \word~344_q\ : std_logic;
SIGNAL \word~574_combout\ : std_logic;
SIGNAL \word~216_q\ : std_logic;
SIGNAL \word~472_q\ : std_logic;
SIGNAL \word~575_combout\ : std_logic;
SIGNAL \word~120_q\ : std_logic;
SIGNAL \word~376_q\ : std_logic;
SIGNAL \word~581_combout\ : std_logic;
SIGNAL \word~504_q\ : std_logic;
SIGNAL \word~248_q\ : std_logic;
SIGNAL \word~582_combout\ : std_logic;
SIGNAL \word~583_combout\ : std_logic;
SIGNAL \word~104feeder_combout\ : std_logic;
SIGNAL \word~104_q\ : std_logic;
SIGNAL \word~360_q\ : std_logic;
SIGNAL \word~40_q\ : std_logic;
SIGNAL \word~296feeder_combout\ : std_logic;
SIGNAL \word~296_q\ : std_logic;
SIGNAL \word~568_combout\ : std_logic;
SIGNAL \word~569_combout\ : std_logic;
SIGNAL \word~136_q\ : std_logic;
SIGNAL \word~392_q\ : std_logic;
SIGNAL \word~72_q\ : std_logic;
SIGNAL \word~328_q\ : std_logic;
SIGNAL \word~566_combout\ : std_logic;
SIGNAL \word~567_combout\ : std_logic;
SIGNAL \word~570_combout\ : std_logic;
SIGNAL \word~424feeder_combout\ : std_logic;
SIGNAL \word~424_q\ : std_logic;
SIGNAL \word~168_q\ : std_logic;
SIGNAL \word~564_combout\ : std_logic;
SIGNAL \word~232_q\ : std_logic;
SIGNAL \word~488feeder_combout\ : std_logic;
SIGNAL \word~488_q\ : std_logic;
SIGNAL \word~565_combout\ : std_logic;
SIGNAL \word~264_q\ : std_logic;
SIGNAL \word~520_q\ : std_logic;
SIGNAL \word~200_q\ : std_logic;
SIGNAL \word~456_q\ : std_logic;
SIGNAL \word~571_combout\ : std_logic;
SIGNAL \word~572_combout\ : std_logic;
SIGNAL \word~573_combout\ : std_logic;
SIGNAL \word~584_combout\ : std_logic;
SIGNAL \inst_lcd_top|data[1]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|data_read[2]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|serial_read_o[2]~2_combout\ : std_logic;
SIGNAL \word~249feeder_combout\ : std_logic;
SIGNAL \word~249_q\ : std_logic;
SIGNAL \word~505_q\ : std_logic;
SIGNAL \word~185_q\ : std_logic;
SIGNAL \word~441_q\ : std_logic;
SIGNAL \word~587_combout\ : std_logic;
SIGNAL \word~588_combout\ : std_logic;
SIGNAL \word~121feeder_combout\ : std_logic;
SIGNAL \word~121_q\ : std_logic;
SIGNAL \word~377_q\ : std_logic;
SIGNAL \word~313feeder_combout\ : std_logic;
SIGNAL \word~313_q\ : std_logic;
SIGNAL \word~57_q\ : std_logic;
SIGNAL \word~589_combout\ : std_logic;
SIGNAL \word~590_combout\ : std_logic;
SIGNAL \word~591_combout\ : std_logic;
SIGNAL \word~265_q\ : std_logic;
SIGNAL \word~521_q\ : std_logic;
SIGNAL \word~201_q\ : std_logic;
SIGNAL \word~457_q\ : std_logic;
SIGNAL \word~592_combout\ : std_logic;
SIGNAL \word~593_combout\ : std_logic;
SIGNAL \word~393_q\ : std_logic;
SIGNAL \word~329_q\ : std_logic;
SIGNAL \word~137feeder_combout\ : std_logic;
SIGNAL \word~137_q\ : std_logic;
SIGNAL \word~73_q\ : std_logic;
SIGNAL \word~585_combout\ : std_logic;
SIGNAL \word~586_combout\ : std_logic;
SIGNAL \word~594_combout\ : std_logic;
SIGNAL \word~281_q\ : std_logic;
SIGNAL \word~409feeder_combout\ : std_logic;
SIGNAL \word~409_q\ : std_logic;
SIGNAL \word~597_combout\ : std_logic;
SIGNAL \word~425_q\ : std_logic;
SIGNAL \word~297_q\ : std_logic;
SIGNAL \word~598_combout\ : std_logic;
SIGNAL \word~25_q\ : std_logic;
SIGNAL \word~153_q\ : std_logic;
SIGNAL \word~599_combout\ : std_logic;
SIGNAL \word~169_q\ : std_logic;
SIGNAL \word~41_q\ : std_logic;
SIGNAL \word~600_combout\ : std_logic;
SIGNAL \word~601_combout\ : std_logic;
SIGNAL \word~89_q\ : std_logic;
SIGNAL \word~217feeder_combout\ : std_logic;
SIGNAL \word~217_q\ : std_logic;
SIGNAL \word~595_combout\ : std_logic;
SIGNAL \word~105_q\ : std_logic;
SIGNAL \word~233feeder_combout\ : std_logic;
SIGNAL \word~233_q\ : std_logic;
SIGNAL \word~596_combout\ : std_logic;
SIGNAL \word~489_q\ : std_logic;
SIGNAL \word~361_q\ : std_logic;
SIGNAL \word~473feeder_combout\ : std_logic;
SIGNAL \word~473_q\ : std_logic;
SIGNAL \word~345_q\ : std_logic;
SIGNAL \word~602_combout\ : std_logic;
SIGNAL \word~603_combout\ : std_logic;
SIGNAL \word~604_combout\ : std_logic;
SIGNAL \word~605_combout\ : std_logic;
SIGNAL \inst_lcd_top|data[2]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|data_read[4]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|serial_read_o[4]~4_combout\ : std_logic;
SIGNAL \word~411_q\ : std_logic;
SIGNAL \word~427_q\ : std_logic;
SIGNAL \word~627_combout\ : std_logic;
SIGNAL \word~443_q\ : std_logic;
SIGNAL \word~459feeder_combout\ : std_logic;
SIGNAL \word~459_q\ : std_logic;
SIGNAL \word~628_combout\ : std_logic;
SIGNAL \word~219_q\ : std_logic;
SIGNAL \word~251_q\ : std_logic;
SIGNAL \word~629_combout\ : std_logic;
SIGNAL \word~267_q\ : std_logic;
SIGNAL \word~235_q\ : std_logic;
SIGNAL \word~630_combout\ : std_logic;
SIGNAL \word~171feeder_combout\ : std_logic;
SIGNAL \word~171_q\ : std_logic;
SIGNAL \word~203_q\ : std_logic;
SIGNAL \word~155_q\ : std_logic;
SIGNAL \word~187_q\ : std_logic;
SIGNAL \word~631_combout\ : std_logic;
SIGNAL \word~632_combout\ : std_logic;
SIGNAL \word~633_combout\ : std_logic;
SIGNAL \word~491feeder_combout\ : std_logic;
SIGNAL \word~491_q\ : std_logic;
SIGNAL \word~523_q\ : std_logic;
SIGNAL \word~475_q\ : std_logic;
SIGNAL \word~507_q\ : std_logic;
SIGNAL \word~634_combout\ : std_logic;
SIGNAL \word~635_combout\ : std_logic;
SIGNAL \word~636_combout\ : std_logic;
SIGNAL \word~363_q\ : std_logic;
SIGNAL \word~299_q\ : std_logic;
SIGNAL \word~43_q\ : std_logic;
SIGNAL \word~107feeder_combout\ : std_logic;
SIGNAL \word~107_q\ : std_logic;
SIGNAL \word~637_combout\ : std_logic;
SIGNAL \word~638_combout\ : std_logic;
SIGNAL \word~91_q\ : std_logic;
SIGNAL \word~347_q\ : std_logic;
SIGNAL \word~27_q\ : std_logic;
SIGNAL \word~283_q\ : std_logic;
SIGNAL \word~641_combout\ : std_logic;
SIGNAL \word~642_combout\ : std_logic;
SIGNAL \word~315_q\ : std_logic;
SIGNAL \word~59_q\ : std_logic;
SIGNAL \word~639_combout\ : std_logic;
SIGNAL \word~379_q\ : std_logic;
SIGNAL \word~123_q\ : std_logic;
SIGNAL \word~640_combout\ : std_logic;
SIGNAL \word~643_combout\ : std_logic;
SIGNAL \word~331feeder_combout\ : std_logic;
SIGNAL \word~331_q\ : std_logic;
SIGNAL \word~75_q\ : std_logic;
SIGNAL \word~644_combout\ : std_logic;
SIGNAL \word~395_q\ : std_logic;
SIGNAL \word~139_q\ : std_logic;
SIGNAL \word~645_combout\ : std_logic;
SIGNAL \word~646_combout\ : std_logic;
SIGNAL \word~647_combout\ : std_logic;
SIGNAL \inst_lcd_top|data[4]~feeder_combout\ : std_logic;
SIGNAL \inst_lcd_top|process_2~1_combout\ : std_logic;
SIGNAL \uart_inst|data_read[7]~feeder_combout\ : std_logic;
SIGNAL \uart_inst|serial_read_o[7]~7_combout\ : std_logic;
SIGNAL \word~350_q\ : std_logic;
SIGNAL \word~286_q\ : std_logic;
SIGNAL \word~700_combout\ : std_logic;
SIGNAL \word~302_q\ : std_logic;
SIGNAL \word~366_q\ : std_logic;
SIGNAL \word~701_combout\ : std_logic;
SIGNAL \word~494_q\ : std_logic;
SIGNAL \word~430_q\ : std_logic;
SIGNAL \word~414_q\ : std_logic;
SIGNAL \word~478_q\ : std_logic;
SIGNAL \word~707_combout\ : std_logic;
SIGNAL \word~708_combout\ : std_logic;
SIGNAL \word~46_q\ : std_logic;
SIGNAL \word~110_q\ : std_logic;
SIGNAL \word~94_q\ : std_logic;
SIGNAL \word~30_q\ : std_logic;
SIGNAL \word~704_combout\ : std_logic;
SIGNAL \word~705_combout\ : std_logic;
SIGNAL \word~158_q\ : std_logic;
SIGNAL \word~222feeder_combout\ : std_logic;
SIGNAL \word~222_q\ : std_logic;
SIGNAL \word~702_combout\ : std_logic;
SIGNAL \word~174_q\ : std_logic;
SIGNAL \word~238_q\ : std_logic;
SIGNAL \word~703_combout\ : std_logic;
SIGNAL \word~706_combout\ : std_logic;
SIGNAL \word~709_combout\ : std_logic;
SIGNAL \word~78feeder_combout\ : std_logic;
SIGNAL \word~78_q\ : std_logic;
SIGNAL \word~334_q\ : std_logic;
SIGNAL \word~62_q\ : std_logic;
SIGNAL \word~318_q\ : std_logic;
SIGNAL \word~694_combout\ : std_logic;
SIGNAL \word~695_combout\ : std_logic;
SIGNAL \word~446_q\ : std_logic;
SIGNAL \word~190_q\ : std_logic;
SIGNAL \word~692_combout\ : std_logic;
SIGNAL \word~462_q\ : std_logic;
SIGNAL \word~206_q\ : std_logic;
SIGNAL \word~693_combout\ : std_logic;
SIGNAL \word~696_combout\ : std_logic;
SIGNAL \word~126_q\ : std_logic;
SIGNAL \word~142_q\ : std_logic;
SIGNAL \word~690_combout\ : std_logic;
SIGNAL \word~382_q\ : std_logic;
SIGNAL \word~398_q\ : std_logic;
SIGNAL \word~691_combout\ : std_logic;
SIGNAL \word~510_q\ : std_logic;
SIGNAL \word~254_q\ : std_logic;
SIGNAL \word~697_combout\ : std_logic;
SIGNAL \word~526_q\ : std_logic;
SIGNAL \word~270_q\ : std_logic;
SIGNAL \word~698_combout\ : std_logic;
SIGNAL \word~699_combout\ : std_logic;
SIGNAL \word~710_combout\ : std_logic;
SIGNAL \inst_lcd_top|data[7]~feeder_combout\ : std_logic;
SIGNAL \inst_lcd_top|process_2~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|process_2~3_combout\ : std_logic;
SIGNAL \inst_lcd_top|data[4]~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|data[0]~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|data[0]~3_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|data[0]~4_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|data[6]~5_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|LCD_DATA~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector26~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector26~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector25~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector25~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector25~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|data[3]~6_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|data[3]~7_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector23~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector23~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector23~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector22~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector22~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector22~2_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|data[6]~9_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|data[6]~8_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector20~0_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|Selector20~1_combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|LCD_RS~combout\ : std_logic;
SIGNAL \inst_lcd_top|lcd_ctrl_inst|LCD_EN~combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL count_2 : std_logic_vector(23 DOWNTO 0);
SIGNAL count : std_logic_vector(5 DOWNTO 0);
SIGNAL \uart_inst|div_clock\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \uart_inst|data_read\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_inst|count_bit_rx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_inst|count_baud_rx\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart_inst|buffer_rx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_lcd_top|lcd_ctrl_inst|data\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst_lcd_top|cnt_data\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst_lcd_top|ptr\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst_lcd_top|lcd_ctrl_inst|count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst_lcd_top|lcd_ctrl_inst|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_lcd_top|lcd_ctrl_inst|cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst_lcd_top|cmd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_lcd_top|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_inst|ALT_INV_rx_busy~q\ : std_logic;
SIGNAL \inst_lcd_top|ALT_INV_EA.WRLCD~q\ : std_logic;
SIGNAL \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\ : std_logic;

BEGIN

ww_CLOCK_50MHz <= CLOCK_50MHz;
ww_KEY <= KEY;
ww_SW <= SW;
LCD_RS <= ww_LCD_RS;
LCD_RW <= ww_LCD_RW;
LCD_EN <= ww_LCD_EN;
LCD_BACKLIGHT <= ww_LCD_BACKLIGHT;
ww_UART_RXD <= UART_RXD;
UART_TXD <= ww_UART_TXD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50MHz~input_o\);

\KEY[11]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[11]~input_o\);
\uart_inst|ALT_INV_rx_busy~q\ <= NOT \uart_inst|rx_busy~q\;
\inst_lcd_top|ALT_INV_EA.WRLCD~q\ <= NOT \inst_lcd_top|EA.WRLCD~q\;
\reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\ <= NOT \reset_synch_50mhz_inst|r_rst_sync_2~q\;

-- Location: IOOBUF_X16_Y0_N16
\LCD_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_lcd_top|lcd_ctrl_inst|data\(0),
	oe => \inst_lcd_top|lcd_ctrl_inst|LCD_DATA~0_combout\,
	devoe => ww_devoe,
	o => \LCD_D[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\LCD_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_lcd_top|lcd_ctrl_inst|data\(1),
	oe => \inst_lcd_top|lcd_ctrl_inst|LCD_DATA~0_combout\,
	devoe => ww_devoe,
	o => \LCD_D[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\LCD_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_lcd_top|lcd_ctrl_inst|data\(2),
	oe => \inst_lcd_top|lcd_ctrl_inst|LCD_DATA~0_combout\,
	devoe => ww_devoe,
	o => \LCD_D[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\LCD_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_lcd_top|lcd_ctrl_inst|data\(3),
	oe => \inst_lcd_top|lcd_ctrl_inst|LCD_DATA~0_combout\,
	devoe => ww_devoe,
	o => \LCD_D[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\LCD_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_lcd_top|lcd_ctrl_inst|data\(4),
	oe => \inst_lcd_top|lcd_ctrl_inst|LCD_DATA~0_combout\,
	devoe => ww_devoe,
	o => \LCD_D[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\LCD_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_lcd_top|lcd_ctrl_inst|data\(5),
	oe => \inst_lcd_top|lcd_ctrl_inst|LCD_DATA~0_combout\,
	devoe => ww_devoe,
	o => \LCD_D[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\LCD_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_lcd_top|lcd_ctrl_inst|data\(6),
	oe => \inst_lcd_top|lcd_ctrl_inst|LCD_DATA~0_combout\,
	devoe => ww_devoe,
	o => \LCD_D[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\LCD_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_lcd_top|lcd_ctrl_inst|data\(7),
	oe => \inst_lcd_top|lcd_ctrl_inst|LCD_DATA~0_combout\,
	devoe => ww_devoe,
	o => \LCD_D[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_lcd_top|lcd_ctrl_inst|LCD_RS~combout\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_lcd_top|lcd_ctrl_inst|LCD_EN~combout\,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\LCD_BACKLIGHT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => \LCD_BACKLIGHT~output_o\);

-- Location: IOOBUF_X3_Y43_N2
\UART_TXD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \UART_TXD~output_o\);

-- Location: IOIBUF_X0_Y21_N22
\CLOCK_50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50MHz,
	o => \CLOCK_50MHz~input_o\);

-- Location: CLKCTRL_G3
\CLOCK_50MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X33_Y39_N0
\inst_lcd_top|lcd_ctrl_inst|count[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|count[0]~11_combout\ = \inst_lcd_top|lcd_ctrl_inst|count\(0) $ (VCC)
-- \inst_lcd_top|lcd_ctrl_inst|count[0]~12\ = CARRY(\inst_lcd_top|lcd_ctrl_inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|count\(0),
	datad => VCC,
	combout => \inst_lcd_top|lcd_ctrl_inst|count[0]~11_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|count[0]~12\);

-- Location: LCCOMB_X37_Y39_N2
\reset_synch_50mhz_inst|r_rst_sync_0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_synch_50mhz_inst|r_rst_sync_0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \reset_synch_50mhz_inst|r_rst_sync_0~feeder_combout\);

-- Location: IOIBUF_X61_Y0_N29
\KEY[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(11),
	o => \KEY[11]~input_o\);

-- Location: CLKCTRL_G9
\KEY[11]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[11]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[11]~inputclkctrl_outclk\);

-- Location: FF_X37_Y39_N3
\reset_synch_50mhz_inst|r_rst_sync_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \reset_synch_50mhz_inst|r_rst_sync_0~feeder_combout\,
	clrn => \KEY[11]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_synch_50mhz_inst|r_rst_sync_0~q\);

-- Location: LCCOMB_X37_Y39_N26
\reset_synch_50mhz_inst|r_rst_sync_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_synch_50mhz_inst|r_rst_sync_1~feeder_combout\ = \reset_synch_50mhz_inst|r_rst_sync_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset_synch_50mhz_inst|r_rst_sync_0~q\,
	combout => \reset_synch_50mhz_inst|r_rst_sync_1~feeder_combout\);

-- Location: FF_X37_Y39_N27
\reset_synch_50mhz_inst|r_rst_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \reset_synch_50mhz_inst|r_rst_sync_1~feeder_combout\,
	clrn => \KEY[11]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_synch_50mhz_inst|r_rst_sync_1~q\);

-- Location: FF_X37_Y39_N17
\reset_synch_50mhz_inst|r_rst_sync_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \reset_synch_50mhz_inst|r_rst_sync_1~q\,
	clrn => \KEY[11]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_synch_50mhz_inst|r_rst_sync_2~q\);

-- Location: LCCOMB_X33_Y39_N16
\inst_lcd_top|lcd_ctrl_inst|count[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|count[8]~27_combout\ = (\inst_lcd_top|lcd_ctrl_inst|count\(8) & (\inst_lcd_top|lcd_ctrl_inst|count[7]~26\ $ (GND))) # (!\inst_lcd_top|lcd_ctrl_inst|count\(8) & (!\inst_lcd_top|lcd_ctrl_inst|count[7]~26\ & VCC))
-- \inst_lcd_top|lcd_ctrl_inst|count[8]~28\ = CARRY((\inst_lcd_top|lcd_ctrl_inst|count\(8) & !\inst_lcd_top|lcd_ctrl_inst|count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|count\(8),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|count[7]~26\,
	combout => \inst_lcd_top|lcd_ctrl_inst|count[8]~27_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|count[8]~28\);

-- Location: LCCOMB_X33_Y39_N18
\inst_lcd_top|lcd_ctrl_inst|count[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|count[9]~29_combout\ = (\inst_lcd_top|lcd_ctrl_inst|count\(9) & (!\inst_lcd_top|lcd_ctrl_inst|count[8]~28\)) # (!\inst_lcd_top|lcd_ctrl_inst|count\(9) & ((\inst_lcd_top|lcd_ctrl_inst|count[8]~28\) # (GND)))
-- \inst_lcd_top|lcd_ctrl_inst|count[9]~30\ = CARRY((!\inst_lcd_top|lcd_ctrl_inst|count[8]~28\) # (!\inst_lcd_top|lcd_ctrl_inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|count\(9),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|count[8]~28\,
	combout => \inst_lcd_top|lcd_ctrl_inst|count[9]~29_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|count[9]~30\);

-- Location: LCCOMB_X25_Y32_N4
\inst_lcd_top|lcd_ctrl_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Add0~0_combout\ = \inst_lcd_top|lcd_ctrl_inst|cnt\(0) $ (VCC)
-- \inst_lcd_top|lcd_ctrl_inst|Add0~1\ = CARRY(\inst_lcd_top|lcd_ctrl_inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|cnt\(0),
	datad => VCC,
	combout => \inst_lcd_top|lcd_ctrl_inst|Add0~0_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|Add0~1\);

-- Location: LCCOMB_X26_Y32_N4
\inst_lcd_top|lcd_ctrl_inst|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|cnt~6_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Add0~0_combout\ & (((\inst_lcd_top|lcd_ctrl_inst|cnt\(0)) # (!\inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\)) # (!\inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|Add0~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|cnt\(0),
	datad => \inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|cnt~6_combout\);

-- Location: FF_X26_Y32_N5
\inst_lcd_top|lcd_ctrl_inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|cnt~6_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|cnt\(0));

-- Location: LCCOMB_X25_Y32_N6
\inst_lcd_top|lcd_ctrl_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Add0~2_combout\ = (\inst_lcd_top|lcd_ctrl_inst|cnt\(1) & (!\inst_lcd_top|lcd_ctrl_inst|Add0~1\)) # (!\inst_lcd_top|lcd_ctrl_inst|cnt\(1) & ((\inst_lcd_top|lcd_ctrl_inst|Add0~1\) # (GND)))
-- \inst_lcd_top|lcd_ctrl_inst|Add0~3\ = CARRY((!\inst_lcd_top|lcd_ctrl_inst|Add0~1\) # (!\inst_lcd_top|lcd_ctrl_inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|cnt\(1),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|Add0~1\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Add0~2_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|Add0~3\);

-- Location: FF_X25_Y32_N7
\inst_lcd_top|lcd_ctrl_inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Add0~2_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|cnt\(1));

-- Location: LCCOMB_X25_Y32_N8
\inst_lcd_top|lcd_ctrl_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Add0~4_combout\ = (\inst_lcd_top|lcd_ctrl_inst|cnt\(2) & (\inst_lcd_top|lcd_ctrl_inst|Add0~3\ $ (GND))) # (!\inst_lcd_top|lcd_ctrl_inst|cnt\(2) & (!\inst_lcd_top|lcd_ctrl_inst|Add0~3\ & VCC))
-- \inst_lcd_top|lcd_ctrl_inst|Add0~5\ = CARRY((\inst_lcd_top|lcd_ctrl_inst|cnt\(2) & !\inst_lcd_top|lcd_ctrl_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|cnt\(2),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|Add0~3\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Add0~4_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|Add0~5\);

-- Location: LCCOMB_X25_Y32_N28
\inst_lcd_top|lcd_ctrl_inst|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|cnt~5_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Add0~4_combout\ & (((\inst_lcd_top|lcd_ctrl_inst|cnt\(0)) # (!\inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\)) # (!\inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|Add0~4_combout\,
	datad => \inst_lcd_top|lcd_ctrl_inst|cnt\(0),
	combout => \inst_lcd_top|lcd_ctrl_inst|cnt~5_combout\);

-- Location: FF_X25_Y32_N29
\inst_lcd_top|lcd_ctrl_inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|cnt~5_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|cnt\(2));

-- Location: LCCOMB_X25_Y32_N10
\inst_lcd_top|lcd_ctrl_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Add0~6_combout\ = (\inst_lcd_top|lcd_ctrl_inst|cnt\(3) & (!\inst_lcd_top|lcd_ctrl_inst|Add0~5\)) # (!\inst_lcd_top|lcd_ctrl_inst|cnt\(3) & ((\inst_lcd_top|lcd_ctrl_inst|Add0~5\) # (GND)))
-- \inst_lcd_top|lcd_ctrl_inst|Add0~7\ = CARRY((!\inst_lcd_top|lcd_ctrl_inst|Add0~5\) # (!\inst_lcd_top|lcd_ctrl_inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|cnt\(3),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|Add0~5\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Add0~6_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|Add0~7\);

-- Location: FF_X25_Y32_N11
\inst_lcd_top|lcd_ctrl_inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Add0~6_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|cnt\(3));

-- Location: LCCOMB_X25_Y32_N12
\inst_lcd_top|lcd_ctrl_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Add0~8_combout\ = (\inst_lcd_top|lcd_ctrl_inst|cnt\(4) & (\inst_lcd_top|lcd_ctrl_inst|Add0~7\ $ (GND))) # (!\inst_lcd_top|lcd_ctrl_inst|cnt\(4) & (!\inst_lcd_top|lcd_ctrl_inst|Add0~7\ & VCC))
-- \inst_lcd_top|lcd_ctrl_inst|Add0~9\ = CARRY((\inst_lcd_top|lcd_ctrl_inst|cnt\(4) & !\inst_lcd_top|lcd_ctrl_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|cnt\(4),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|Add0~7\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Add0~8_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|Add0~9\);

-- Location: LCCOMB_X25_Y32_N2
\inst_lcd_top|lcd_ctrl_inst|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|cnt~4_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Add0~8_combout\ & (((\inst_lcd_top|lcd_ctrl_inst|cnt\(0)) # (!\inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\)) # (!\inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|Add0~8_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\,
	datad => \inst_lcd_top|lcd_ctrl_inst|cnt\(0),
	combout => \inst_lcd_top|lcd_ctrl_inst|cnt~4_combout\);

-- Location: FF_X25_Y32_N3
\inst_lcd_top|lcd_ctrl_inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|cnt~4_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|cnt\(4));

-- Location: LCCOMB_X25_Y32_N30
\inst_lcd_top|lcd_ctrl_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\ = (!\inst_lcd_top|lcd_ctrl_inst|cnt\(3) & (\inst_lcd_top|lcd_ctrl_inst|cnt\(4) & (!\inst_lcd_top|lcd_ctrl_inst|cnt\(1) & \inst_lcd_top|lcd_ctrl_inst|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|cnt\(3),
	datab => \inst_lcd_top|lcd_ctrl_inst|cnt\(4),
	datac => \inst_lcd_top|lcd_ctrl_inst|cnt\(1),
	datad => \inst_lcd_top|lcd_ctrl_inst|cnt\(2),
	combout => \inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y32_N14
\inst_lcd_top|lcd_ctrl_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Add0~10_combout\ = (\inst_lcd_top|lcd_ctrl_inst|cnt\(5) & (!\inst_lcd_top|lcd_ctrl_inst|Add0~9\)) # (!\inst_lcd_top|lcd_ctrl_inst|cnt\(5) & ((\inst_lcd_top|lcd_ctrl_inst|Add0~9\) # (GND)))
-- \inst_lcd_top|lcd_ctrl_inst|Add0~11\ = CARRY((!\inst_lcd_top|lcd_ctrl_inst|Add0~9\) # (!\inst_lcd_top|lcd_ctrl_inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|cnt\(5),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|Add0~9\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Add0~10_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|Add0~11\);

-- Location: LCCOMB_X25_Y32_N22
\inst_lcd_top|lcd_ctrl_inst|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|cnt~3_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Add0~10_combout\ & (((\inst_lcd_top|lcd_ctrl_inst|cnt\(0)) # (!\inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\)) # (!\inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|Add0~10_combout\,
	datad => \inst_lcd_top|lcd_ctrl_inst|cnt\(0),
	combout => \inst_lcd_top|lcd_ctrl_inst|cnt~3_combout\);

-- Location: FF_X25_Y32_N23
\inst_lcd_top|lcd_ctrl_inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|cnt~3_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|cnt\(5));

-- Location: LCCOMB_X25_Y32_N16
\inst_lcd_top|lcd_ctrl_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Add0~12_combout\ = (\inst_lcd_top|lcd_ctrl_inst|cnt\(6) & (\inst_lcd_top|lcd_ctrl_inst|Add0~11\ $ (GND))) # (!\inst_lcd_top|lcd_ctrl_inst|cnt\(6) & (!\inst_lcd_top|lcd_ctrl_inst|Add0~11\ & VCC))
-- \inst_lcd_top|lcd_ctrl_inst|Add0~13\ = CARRY((\inst_lcd_top|lcd_ctrl_inst|cnt\(6) & !\inst_lcd_top|lcd_ctrl_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|cnt\(6),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|Add0~11\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Add0~12_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|Add0~13\);

-- Location: LCCOMB_X26_Y32_N2
\inst_lcd_top|lcd_ctrl_inst|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|cnt~2_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Add0~12_combout\ & (((\inst_lcd_top|lcd_ctrl_inst|cnt\(0)) # (!\inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\)) # (!\inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|Add0~12_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|cnt\(0),
	datad => \inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|cnt~2_combout\);

-- Location: FF_X26_Y32_N3
\inst_lcd_top|lcd_ctrl_inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|cnt~2_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|cnt\(6));

-- Location: LCCOMB_X25_Y32_N18
\inst_lcd_top|lcd_ctrl_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Add0~14_combout\ = (\inst_lcd_top|lcd_ctrl_inst|cnt\(7) & (!\inst_lcd_top|lcd_ctrl_inst|Add0~13\)) # (!\inst_lcd_top|lcd_ctrl_inst|cnt\(7) & ((\inst_lcd_top|lcd_ctrl_inst|Add0~13\) # (GND)))
-- \inst_lcd_top|lcd_ctrl_inst|Add0~15\ = CARRY((!\inst_lcd_top|lcd_ctrl_inst|Add0~13\) # (!\inst_lcd_top|lcd_ctrl_inst|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|cnt\(7),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|Add0~13\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Add0~14_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|Add0~15\);

-- Location: LCCOMB_X25_Y32_N26
\inst_lcd_top|lcd_ctrl_inst|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|cnt~1_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Add0~14_combout\ & ((\inst_lcd_top|lcd_ctrl_inst|cnt\(0)) # ((!\inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\) # (!\inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|cnt\(0),
	datab => \inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\,
	datad => \inst_lcd_top|lcd_ctrl_inst|Add0~14_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|cnt~1_combout\);

-- Location: FF_X25_Y32_N27
\inst_lcd_top|lcd_ctrl_inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|cnt~1_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|cnt\(7));

-- Location: LCCOMB_X25_Y32_N20
\inst_lcd_top|lcd_ctrl_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Add0~16_combout\ = \inst_lcd_top|lcd_ctrl_inst|Add0~15\ $ (!\inst_lcd_top|lcd_ctrl_inst|cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_lcd_top|lcd_ctrl_inst|cnt\(8),
	cin => \inst_lcd_top|lcd_ctrl_inst|Add0~15\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Add0~16_combout\);

-- Location: LCCOMB_X25_Y32_N0
\inst_lcd_top|lcd_ctrl_inst|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|cnt~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Add0~16_combout\ & ((\inst_lcd_top|lcd_ctrl_inst|cnt\(0)) # ((!\inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\) # (!\inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|cnt\(0),
	datab => \inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\,
	datad => \inst_lcd_top|lcd_ctrl_inst|Add0~16_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|cnt~0_combout\);

-- Location: FF_X25_Y32_N1
\inst_lcd_top|lcd_ctrl_inst|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|cnt~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|cnt\(8));

-- Location: LCCOMB_X25_Y32_N24
\inst_lcd_top|lcd_ctrl_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|cnt\(5) & (\inst_lcd_top|lcd_ctrl_inst|cnt\(8) & (\inst_lcd_top|lcd_ctrl_inst|cnt\(7) & \inst_lcd_top|lcd_ctrl_inst|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|cnt\(5),
	datab => \inst_lcd_top|lcd_ctrl_inst|cnt\(8),
	datac => \inst_lcd_top|lcd_ctrl_inst|cnt\(7),
	datad => \inst_lcd_top|lcd_ctrl_inst|cnt\(6),
	combout => \inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y32_N0
\inst_lcd_top|lcd_ctrl_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Equal0~2_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\ & (!\inst_lcd_top|lcd_ctrl_inst|cnt\(0) & \inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|Equal0~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|cnt\(0),
	datad => \inst_lcd_top|lcd_ctrl_inst|Equal0~1_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Equal0~2_combout\);

-- Location: FF_X26_Y32_N1
\inst_lcd_top|lcd_ctrl_inst|clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Equal0~2_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\);

-- Location: FF_X33_Y39_N19
\inst_lcd_top|lcd_ctrl_inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|count[9]~29_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \inst_lcd_top|lcd_ctrl_inst|WideOr5~0_combout\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|count\(9));

-- Location: LCCOMB_X33_Y39_N30
\inst_lcd_top|lcd_ctrl_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Equal1~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|count\(3)) # (((!\inst_lcd_top|lcd_ctrl_inst|count\(9)) # (!\inst_lcd_top|lcd_ctrl_inst|count\(4))) # (!\inst_lcd_top|lcd_ctrl_inst|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|count\(3),
	datab => \inst_lcd_top|lcd_ctrl_inst|count\(8),
	datac => \inst_lcd_top|lcd_ctrl_inst|count\(4),
	datad => \inst_lcd_top|lcd_ctrl_inst|count\(9),
	combout => \inst_lcd_top|lcd_ctrl_inst|Equal1~0_combout\);

-- Location: LCCOMB_X33_Y39_N20
\inst_lcd_top|lcd_ctrl_inst|count[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|count[10]~31_combout\ = \inst_lcd_top|lcd_ctrl_inst|count[9]~30\ $ (!\inst_lcd_top|lcd_ctrl_inst|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_lcd_top|lcd_ctrl_inst|count\(10),
	cin => \inst_lcd_top|lcd_ctrl_inst|count[9]~30\,
	combout => \inst_lcd_top|lcd_ctrl_inst|count[10]~31_combout\);

-- Location: FF_X33_Y39_N21
\inst_lcd_top|lcd_ctrl_inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|count[10]~31_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \inst_lcd_top|lcd_ctrl_inst|WideOr5~0_combout\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|count\(10));

-- Location: LCCOMB_X33_Y39_N26
\inst_lcd_top|lcd_ctrl_inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Equal4~0_combout\ = (!\inst_lcd_top|lcd_ctrl_inst|count\(5) & (!\inst_lcd_top|lcd_ctrl_inst|count\(1) & (!\inst_lcd_top|lcd_ctrl_inst|count\(2) & !\inst_lcd_top|lcd_ctrl_inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|count\(5),
	datab => \inst_lcd_top|lcd_ctrl_inst|count\(1),
	datac => \inst_lcd_top|lcd_ctrl_inst|count\(2),
	datad => \inst_lcd_top|lcd_ctrl_inst|count\(0),
	combout => \inst_lcd_top|lcd_ctrl_inst|Equal4~0_combout\);

-- Location: LCCOMB_X33_Y39_N28
\inst_lcd_top|lcd_ctrl_inst|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Equal4~1_combout\ = (\inst_lcd_top|lcd_ctrl_inst|count\(6) & (\inst_lcd_top|lcd_ctrl_inst|count\(7) & \inst_lcd_top|lcd_ctrl_inst|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|count\(6),
	datab => \inst_lcd_top|lcd_ctrl_inst|count\(7),
	datac => \inst_lcd_top|lcd_ctrl_inst|Equal4~0_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Equal4~1_combout\);

-- Location: LCCOMB_X32_Y39_N6
\inst_lcd_top|lcd_ctrl_inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Equal1~1_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Equal1~0_combout\) # ((!\inst_lcd_top|lcd_ctrl_inst|Equal4~1_combout\) # (!\inst_lcd_top|lcd_ctrl_inst|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|Equal1~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|count\(10),
	datad => \inst_lcd_top|lcd_ctrl_inst|Equal4~1_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Equal1~1_combout\);

-- Location: LCCOMB_X34_Y39_N4
\inst_lcd_top|lcd_ctrl_inst|EA.IDLE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|EA.IDLE~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst_lcd_top|lcd_ctrl_inst|EA.IDLE~feeder_combout\);

-- Location: FF_X34_Y39_N5
\inst_lcd_top|lcd_ctrl_inst|EA.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|EA.IDLE~feeder_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|EA.IDLE~q\);

-- Location: LCCOMB_X34_Y39_N28
\inst_lcd_top|lcd_ctrl_inst|EA~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|EA~18_combout\ = ((\inst_lcd_top|lcd_ctrl_inst|Equal1~1_combout\ & \inst_lcd_top|lcd_ctrl_inst|EA.BOOT~q\)) # (!\inst_lcd_top|lcd_ctrl_inst|EA.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|Equal1~1_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|EA.IDLE~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.BOOT~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|EA~18_combout\);

-- Location: FF_X34_Y39_N29
\inst_lcd_top|lcd_ctrl_inst|EA.BOOT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|EA~18_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|EA.BOOT~q\);

-- Location: FF_X36_Y39_N5
\inst_lcd_top|EA.TESTWORD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \inst_lcd_top|EA.WRLCD~q\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|EA.TESTWORD~q\);

-- Location: FF_X12_Y22_N13
\count_2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(18));

-- Location: FF_X12_Y23_N13
\count_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(2));

-- Location: FF_X12_Y23_N21
\count_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(6));

-- Location: LCCOMB_X12_Y23_N12
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (count_2(2) & (\Add1~3\ $ (GND))) # (!count_2(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((count_2(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_2(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X12_Y23_N14
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (count_2(3) & (!\Add1~5\)) # (!count_2(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!count_2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_2(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X12_Y23_N15
\count_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(3));

-- Location: LCCOMB_X12_Y23_N16
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (count_2(4) & (\Add1~7\ $ (GND))) # (!count_2(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((count_2(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_2(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X12_Y23_N17
\count_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(4));

-- Location: LCCOMB_X12_Y23_N18
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (count_2(5) & (!\Add1~9\)) # (!count_2(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!count_2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_2(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X12_Y23_N19
\count_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(5));

-- Location: LCCOMB_X12_Y23_N20
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (count_2(6) & (\Add1~11\ $ (GND))) # (!count_2(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((count_2(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_2(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X12_Y22_N21
\count_2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~44_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(22));

-- Location: LCCOMB_X12_Y22_N12
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (count_2(18) & (\Add1~35\ $ (GND))) # (!count_2(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((count_2(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_2(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X12_Y22_N14
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (count_2(19) & (!\Add1~37\)) # (!count_2(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!count_2(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_2(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X11_Y22_N12
\count_2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_2~16_combout\ = (\Add1~38_combout\ & (((\count_2~25_combout\) # (!\Equal0~4_combout\)) # (!\Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add1~38_combout\,
	datad => \count_2~25_combout\,
	combout => \count_2~16_combout\);

-- Location: FF_X11_Y22_N13
\count_2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \count_2~16_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(19));

-- Location: LCCOMB_X12_Y22_N16
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (count_2(20) & (\Add1~39\ $ (GND))) # (!count_2(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((count_2(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_2(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X11_Y22_N2
\count_2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_2~23_combout\ = (\Add1~40_combout\ & (((\count_2~25_combout\) # (!\Equal0~4_combout\)) # (!\Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \count_2~25_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add1~40_combout\,
	combout => \count_2~23_combout\);

-- Location: FF_X11_Y22_N3
\count_2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \count_2~23_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(20));

-- Location: LCCOMB_X12_Y22_N18
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (count_2(21) & (!\Add1~41\)) # (!count_2(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!count_2(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_2(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X12_Y22_N19
\count_2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~42_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(21));

-- Location: LCCOMB_X12_Y22_N20
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (count_2(22) & (\Add1~43\ $ (GND))) # (!count_2(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((count_2(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_2(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X11_Y22_N14
\count_2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_2~21_combout\ = (\Add1~14_combout\ & (((\count_2~25_combout\) # (!\Equal0~4_combout\)) # (!\Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \count_2~25_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add1~14_combout\,
	combout => \count_2~21_combout\);

-- Location: FF_X11_Y22_N15
\count_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \count_2~21_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(7));

-- Location: LCCOMB_X12_Y23_N22
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (count_2(7) & (!\Add1~13\)) # (!count_2(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!count_2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_2(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X11_Y22_N30
\count_2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_2~26_combout\ = (\Equal1~0_combout\ & (!\Add1~12_combout\ & (!\Add1~44_combout\ & \Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Add1~12_combout\,
	datac => \Add1~44_combout\,
	datad => \Add1~14_combout\,
	combout => \count_2~26_combout\);

-- Location: LCCOMB_X12_Y23_N8
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = count_2(0) $ (GND)
-- \Add1~1\ = CARRY(!count_2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_2(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X11_Y22_N0
\count_2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_2~22_combout\ = (!\Add1~0_combout\ & (((!\count_2~26_combout\) # (!\Equal0~4_combout\)) # (!\Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \Equal0~4_combout\,
	datac => \count_2~26_combout\,
	datad => \Add1~0_combout\,
	combout => \count_2~22_combout\);

-- Location: FF_X11_Y22_N1
\count_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \count_2~22_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(0));

-- Location: LCCOMB_X12_Y23_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (count_2(1) & (!\Add1~1\)) # (!count_2(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!count_2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_2(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X12_Y23_N11
\count_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(1));

-- Location: LCCOMB_X12_Y23_N4
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\Add1~4_combout\ & (!\Add1~8_combout\ & (!\Add1~6_combout\ & !\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~8_combout\,
	datac => \Add1~6_combout\,
	datad => \Add1~10_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X11_Y22_N28
\count_2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_2~25_combout\ = ((\Add1~12_combout\) # ((\Add1~44_combout\) # (!\Add1~14_combout\))) # (!\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Add1~12_combout\,
	datac => \Add1~44_combout\,
	datad => \Add1~14_combout\,
	combout => \count_2~25_combout\);

-- Location: LCCOMB_X12_Y23_N24
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (count_2(8) & (\Add1~15\ $ (GND))) # (!count_2(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((count_2(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_2(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X12_Y23_N25
\count_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(8));

-- Location: LCCOMB_X12_Y23_N26
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (count_2(9) & (!\Add1~17\)) # (!count_2(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!count_2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_2(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X11_Y22_N20
\count_2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_2~20_combout\ = (\Add1~18_combout\ & (((\count_2~25_combout\) # (!\Equal0~4_combout\)) # (!\Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \count_2~25_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add1~18_combout\,
	combout => \count_2~20_combout\);

-- Location: FF_X11_Y22_N21
\count_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \count_2~20_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(9));

-- Location: LCCOMB_X12_Y23_N28
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (count_2(10) & (\Add1~19\ $ (GND))) # (!count_2(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((count_2(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_2(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X11_Y22_N10
\count_2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_2~19_combout\ = (\Add1~20_combout\ & (((\count_2~25_combout\) # (!\Equal0~4_combout\)) # (!\Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add1~20_combout\,
	datad => \count_2~25_combout\,
	combout => \count_2~19_combout\);

-- Location: FF_X11_Y22_N11
\count_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \count_2~19_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(10));

-- Location: LCCOMB_X12_Y23_N30
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (count_2(11) & (!\Add1~21\)) # (!count_2(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!count_2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_2(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X12_Y23_N31
\count_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(11));

-- Location: LCCOMB_X12_Y22_N0
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (count_2(12) & (\Add1~23\ $ (GND))) # (!count_2(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((count_2(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_2(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X11_Y22_N16
\count_2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_2~18_combout\ = (\Add1~24_combout\ & (((\count_2~25_combout\) # (!\Equal0~4_combout\)) # (!\Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add1~24_combout\,
	datad => \count_2~25_combout\,
	combout => \count_2~18_combout\);

-- Location: FF_X11_Y22_N17
\count_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \count_2~18_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(12));

-- Location: LCCOMB_X12_Y22_N2
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (count_2(13) & (!\Add1~25\)) # (!count_2(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!count_2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_2(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X12_Y22_N3
\count_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(13));

-- Location: LCCOMB_X12_Y22_N4
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (count_2(14) & (\Add1~27\ $ (GND))) # (!count_2(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((count_2(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_2(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X12_Y22_N5
\count_2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~28_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(14));

-- Location: LCCOMB_X12_Y22_N6
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (count_2(15) & (!\Add1~29\)) # (!count_2(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!count_2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_2(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X11_Y22_N6
\count_2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_2~17_combout\ = (\Add1~30_combout\ & (((\count_2~25_combout\) # (!\Add1~46_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add1~46_combout\,
	datad => \count_2~25_combout\,
	combout => \count_2~17_combout\);

-- Location: FF_X11_Y22_N7
\count_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \count_2~17_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(15));

-- Location: LCCOMB_X12_Y22_N8
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (count_2(16) & (\Add1~31\ $ (GND))) # (!count_2(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((count_2(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_2(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X12_Y22_N9
\count_2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(16));

-- Location: LCCOMB_X12_Y22_N10
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (count_2(17) & (!\Add1~33\)) # (!count_2(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!count_2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_2(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X12_Y22_N11
\count_2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Add1~34_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(17));

-- Location: LCCOMB_X12_Y23_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add1~2_combout\ & (!\Add1~0_combout\ & (\Add1~18_combout\ & !\Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~0_combout\,
	datac => \Add1~18_combout\,
	datad => \Add1~16_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X12_Y22_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Add1~20_combout\ & (!\Add1~26_combout\ & (!\Add1~22_combout\ & \Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Add1~26_combout\,
	datac => \Add1~22_combout\,
	datad => \Add1~24_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X12_Y22_N26
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Add1~30_combout\ & (!\Add1~28_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Add1~28_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X12_Y22_N28
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add1~36_combout\ & (!\Add1~32_combout\ & (\Equal0~2_combout\ & !\Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \Add1~32_combout\,
	datac => \Equal0~2_combout\,
	datad => \Add1~34_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X11_Y22_N4
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Add1~38_combout\ & (!\Add1~42_combout\ & \Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Add1~38_combout\,
	datac => \Add1~42_combout\,
	datad => \Add1~40_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X11_Y22_N18
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\Add1~12_combout\ & (\Equal1~0_combout\ & \Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datac => \Equal1~0_combout\,
	datad => \Add1~14_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X11_Y22_N22
\count_2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_2~24_combout\ = (\Add1~46_combout\ & (((\Add1~44_combout\) # (!\Equal1~1_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add1~44_combout\,
	datad => \Equal1~1_combout\,
	combout => \count_2~24_combout\);

-- Location: FF_X11_Y22_N23
\count_2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \count_2~24_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_2(23));

-- Location: LCCOMB_X12_Y22_N22
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = \Add1~45\ $ (count_2(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count_2(23),
	cin => \Add1~45\,
	combout => \Add1~46_combout\);

-- Location: LCCOMB_X12_Y23_N2
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Add1~4_combout\ & (\Add1~8_combout\ & (\Add1~6_combout\ & \Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~8_combout\,
	datac => \Add1~6_combout\,
	datad => \Add1~10_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X11_Y22_N8
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Add1~12_combout\ & (\Equal0~5_combout\ & !\Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add1~14_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X11_Y22_N26
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Add1~46_combout\ & (\Equal0~4_combout\ & (!\Add1~44_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add1~44_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: FF_X11_Y22_N27
start_lcd : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \Equal0~7_combout\,
	ena => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_lcd~q\);

-- Location: LCCOMB_X37_Y40_N4
\inst_lcd_top|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Add2~0_combout\ = \inst_lcd_top|ptr\(0) $ (GND)
-- \inst_lcd_top|Add2~1\ = CARRY(!\inst_lcd_top|ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|ptr\(0),
	datad => VCC,
	combout => \inst_lcd_top|Add2~0_combout\,
	cout => \inst_lcd_top|Add2~1\);

-- Location: LCCOMB_X37_Y40_N22
\inst_lcd_top|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector15~0_combout\ = (\inst_lcd_top|EA.TESTWORD~q\ & (((!\inst_lcd_top|Add2~0_combout\)))) # (!\inst_lcd_top|EA.TESTWORD~q\ & (!\inst_lcd_top|EA.AWAIT~q\ & (\inst_lcd_top|ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|EA.AWAIT~q\,
	datab => \inst_lcd_top|EA.TESTWORD~q\,
	datac => \inst_lcd_top|ptr\(0),
	datad => \inst_lcd_top|Add2~0_combout\,
	combout => \inst_lcd_top|Selector15~0_combout\);

-- Location: FF_X37_Y40_N23
\inst_lcd_top|ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector15~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|ptr\(0));

-- Location: LCCOMB_X37_Y40_N6
\inst_lcd_top|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Add2~2_combout\ = (\inst_lcd_top|ptr\(1) & (!\inst_lcd_top|Add2~1\)) # (!\inst_lcd_top|ptr\(1) & ((\inst_lcd_top|Add2~1\) # (GND)))
-- \inst_lcd_top|Add2~3\ = CARRY((!\inst_lcd_top|Add2~1\) # (!\inst_lcd_top|ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|ptr\(1),
	datad => VCC,
	cin => \inst_lcd_top|Add2~1\,
	combout => \inst_lcd_top|Add2~2_combout\,
	cout => \inst_lcd_top|Add2~3\);

-- Location: LCCOMB_X37_Y40_N2
\inst_lcd_top|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector14~0_combout\ = (\inst_lcd_top|EA.TESTWORD~q\ & \inst_lcd_top|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|EA.TESTWORD~q\,
	datad => \inst_lcd_top|Add2~2_combout\,
	combout => \inst_lcd_top|Selector14~0_combout\);

-- Location: LCCOMB_X36_Y39_N0
\inst_lcd_top|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector10~0_combout\ = (\inst_lcd_top|EA.AWAIT~q\) # (\inst_lcd_top|EA.TESTWORD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|EA.AWAIT~q\,
	datac => \inst_lcd_top|EA.TESTWORD~q\,
	combout => \inst_lcd_top|Selector10~0_combout\);

-- Location: FF_X37_Y40_N3
\inst_lcd_top|ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector14~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|ptr\(1));

-- Location: LCCOMB_X37_Y40_N8
\inst_lcd_top|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Add2~4_combout\ = (\inst_lcd_top|ptr\(2) & (\inst_lcd_top|Add2~3\ $ (GND))) # (!\inst_lcd_top|ptr\(2) & (!\inst_lcd_top|Add2~3\ & VCC))
-- \inst_lcd_top|Add2~5\ = CARRY((\inst_lcd_top|ptr\(2) & !\inst_lcd_top|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|ptr\(2),
	datad => VCC,
	cin => \inst_lcd_top|Add2~3\,
	combout => \inst_lcd_top|Add2~4_combout\,
	cout => \inst_lcd_top|Add2~5\);

-- Location: LCCOMB_X37_Y40_N24
\inst_lcd_top|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector13~0_combout\ = (\inst_lcd_top|Add2~4_combout\ & \inst_lcd_top|EA.TESTWORD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_lcd_top|Add2~4_combout\,
	datad => \inst_lcd_top|EA.TESTWORD~q\,
	combout => \inst_lcd_top|Selector13~0_combout\);

-- Location: FF_X37_Y40_N25
\inst_lcd_top|ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector13~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|ptr\(2));

-- Location: LCCOMB_X37_Y40_N10
\inst_lcd_top|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Add2~6_combout\ = (\inst_lcd_top|ptr\(3) & (!\inst_lcd_top|Add2~5\)) # (!\inst_lcd_top|ptr\(3) & ((\inst_lcd_top|Add2~5\) # (GND)))
-- \inst_lcd_top|Add2~7\ = CARRY((!\inst_lcd_top|Add2~5\) # (!\inst_lcd_top|ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|ptr\(3),
	datad => VCC,
	cin => \inst_lcd_top|Add2~5\,
	combout => \inst_lcd_top|Add2~6_combout\,
	cout => \inst_lcd_top|Add2~7\);

-- Location: LCCOMB_X37_Y40_N18
\inst_lcd_top|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector12~0_combout\ = (\inst_lcd_top|EA.TESTWORD~q\ & \inst_lcd_top|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|EA.TESTWORD~q\,
	datad => \inst_lcd_top|Add2~6_combout\,
	combout => \inst_lcd_top|Selector12~0_combout\);

-- Location: FF_X37_Y40_N19
\inst_lcd_top|ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector12~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|ptr\(3));

-- Location: LCCOMB_X37_Y40_N20
\inst_lcd_top|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Equal2~0_combout\ = (!\inst_lcd_top|ptr\(3) & (!\inst_lcd_top|ptr\(2) & !\inst_lcd_top|ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|ptr\(3),
	datac => \inst_lcd_top|ptr\(2),
	datad => \inst_lcd_top|ptr\(1),
	combout => \inst_lcd_top|Equal2~0_combout\);

-- Location: LCCOMB_X37_Y40_N12
\inst_lcd_top|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Add2~8_combout\ = (\inst_lcd_top|ptr\(4) & (\inst_lcd_top|Add2~7\ $ (GND))) # (!\inst_lcd_top|ptr\(4) & (!\inst_lcd_top|Add2~7\ & VCC))
-- \inst_lcd_top|Add2~9\ = CARRY((\inst_lcd_top|ptr\(4) & !\inst_lcd_top|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|ptr\(4),
	datad => VCC,
	cin => \inst_lcd_top|Add2~7\,
	combout => \inst_lcd_top|Add2~8_combout\,
	cout => \inst_lcd_top|Add2~9\);

-- Location: LCCOMB_X37_Y40_N16
\inst_lcd_top|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector11~0_combout\ = (\inst_lcd_top|Add2~8_combout\ & \inst_lcd_top|EA.TESTWORD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|Add2~8_combout\,
	datad => \inst_lcd_top|EA.TESTWORD~q\,
	combout => \inst_lcd_top|Selector11~0_combout\);

-- Location: FF_X37_Y40_N17
\inst_lcd_top|ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector11~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|ptr\(4));

-- Location: LCCOMB_X37_Y40_N30
\inst_lcd_top|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Equal6~0_combout\ = (\inst_lcd_top|Equal2~0_combout\ & (\inst_lcd_top|ptr\(5) & (\inst_lcd_top|ptr\(0) & !\inst_lcd_top|ptr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|Equal2~0_combout\,
	datab => \inst_lcd_top|ptr\(5),
	datac => \inst_lcd_top|ptr\(0),
	datad => \inst_lcd_top|ptr\(4),
	combout => \inst_lcd_top|Equal6~0_combout\);

-- Location: LCCOMB_X37_Y40_N14
\inst_lcd_top|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Add2~10_combout\ = \inst_lcd_top|Add2~9\ $ (\inst_lcd_top|ptr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_lcd_top|ptr\(5),
	cin => \inst_lcd_top|Add2~9\,
	combout => \inst_lcd_top|Add2~10_combout\);

-- Location: LCCOMB_X37_Y40_N28
\inst_lcd_top|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector10~1_combout\ = (!\inst_lcd_top|EA.AWAIT~q\ & (!\inst_lcd_top|EA.TESTWORD~q\ & \inst_lcd_top|ptr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|EA.AWAIT~q\,
	datab => \inst_lcd_top|EA.TESTWORD~q\,
	datad => \inst_lcd_top|ptr\(5),
	combout => \inst_lcd_top|Selector10~1_combout\);

-- Location: LCCOMB_X37_Y40_N0
\inst_lcd_top|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector10~2_combout\ = (\inst_lcd_top|Selector10~1_combout\) # ((!\inst_lcd_top|Equal6~0_combout\ & (\inst_lcd_top|EA.TESTWORD~q\ & \inst_lcd_top|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|Equal6~0_combout\,
	datab => \inst_lcd_top|EA.TESTWORD~q\,
	datac => \inst_lcd_top|Add2~10_combout\,
	datad => \inst_lcd_top|Selector10~1_combout\,
	combout => \inst_lcd_top|Selector10~2_combout\);

-- Location: FF_X37_Y40_N1
\inst_lcd_top|ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector10~2_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|ptr\(5));

-- Location: LCCOMB_X37_Y40_N26
\inst_lcd_top|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Equal2~1_combout\ = (\inst_lcd_top|Equal2~0_combout\ & (!\inst_lcd_top|ptr\(0) & !\inst_lcd_top|ptr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|Equal2~0_combout\,
	datac => \inst_lcd_top|ptr\(0),
	datad => \inst_lcd_top|ptr\(5),
	combout => \inst_lcd_top|Equal2~1_combout\);

-- Location: LCCOMB_X36_Y39_N22
\inst_lcd_top|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector27~0_combout\ = (\inst_lcd_top|EA.CLRLCD~q\) # ((!\inst_lcd_top|EA.WRLCD~q\ & (\inst_lcd_top|clr_st~q\ & !\inst_lcd_top|EA.AWAIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|EA.CLRLCD~q\,
	datab => \inst_lcd_top|EA.WRLCD~q\,
	datac => \inst_lcd_top|clr_st~q\,
	datad => \inst_lcd_top|EA.AWAIT~q\,
	combout => \inst_lcd_top|Selector27~0_combout\);

-- Location: FF_X36_Y39_N23
\inst_lcd_top|clr_st\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector27~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|clr_st~q\);

-- Location: LCCOMB_X36_Y39_N16
\inst_lcd_top|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector2~0_combout\ = (!\inst_lcd_top|lcd_ctrl_inst|ready_o~q\ & ((\inst_lcd_top|EA.WAITLCD2~q\) # (\inst_lcd_top|EA.WAITLCD1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|ready_o~q\,
	datac => \inst_lcd_top|EA.WAITLCD2~q\,
	datad => \inst_lcd_top|EA.WAITLCD1~q\,
	combout => \inst_lcd_top|Selector2~0_combout\);

-- Location: FF_X36_Y39_N17
\inst_lcd_top|EA.WAITLCD2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector2~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|EA.WAITLCD2~q\);

-- Location: LCCOMB_X35_Y39_N18
\inst_lcd_top|EA~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|EA~19_combout\ = (!\inst_lcd_top|clr_st~q\ & (\inst_lcd_top|lcd_ctrl_inst|ready_o~q\ & \inst_lcd_top|EA.WAITLCD2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|clr_st~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|ready_o~q\,
	datad => \inst_lcd_top|EA.WAITLCD2~q\,
	combout => \inst_lcd_top|EA~19_combout\);

-- Location: LCCOMB_X37_Y39_N24
\inst_lcd_top|PE.LINE1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|PE.LINE1~0_combout\ = (\inst_lcd_top|Equal2~1_combout\ & (\inst_lcd_top|EA~19_combout\ & (!\inst_lcd_top|ptr\(4) & !\inst_lcd_top|line_st~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|Equal2~1_combout\,
	datab => \inst_lcd_top|EA~19_combout\,
	datac => \inst_lcd_top|ptr\(4),
	datad => \inst_lcd_top|line_st~q\,
	combout => \inst_lcd_top|PE.LINE1~0_combout\);

-- Location: FF_X37_Y39_N25
\inst_lcd_top|EA.LINE1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|PE.LINE1~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|EA.LINE1~q\);

-- Location: LCCOMB_X37_Y39_N14
\inst_lcd_top|EA~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|EA~20_combout\ = (\inst_lcd_top|Equal2~1_combout\ & (\inst_lcd_top|EA~19_combout\ & (\inst_lcd_top|ptr\(4) & !\inst_lcd_top|line_st~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|Equal2~1_combout\,
	datab => \inst_lcd_top|EA~19_combout\,
	datac => \inst_lcd_top|ptr\(4),
	datad => \inst_lcd_top|line_st~q\,
	combout => \inst_lcd_top|EA~20_combout\);

-- Location: FF_X37_Y39_N15
\inst_lcd_top|EA.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|EA~20_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|EA.LINE2~q\);

-- Location: LCCOMB_X37_Y39_N18
\inst_lcd_top|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector24~0_combout\ = (!\inst_lcd_top|EA.LINE1~q\ & !\inst_lcd_top|EA.LINE2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|EA.LINE1~q\,
	datac => \inst_lcd_top|EA.LINE2~q\,
	combout => \inst_lcd_top|Selector24~0_combout\);

-- Location: LCCOMB_X37_Y39_N0
\inst_lcd_top|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector26~0_combout\ = ((!\inst_lcd_top|EA.AWAIT~q\ & (!\inst_lcd_top|EA.WRLCD~q\ & \inst_lcd_top|line_st~q\))) # (!\inst_lcd_top|Selector24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|EA.AWAIT~q\,
	datab => \inst_lcd_top|EA.WRLCD~q\,
	datac => \inst_lcd_top|line_st~q\,
	datad => \inst_lcd_top|Selector24~0_combout\,
	combout => \inst_lcd_top|Selector26~0_combout\);

-- Location: FF_X37_Y39_N1
\inst_lcd_top|line_st\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector26~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|line_st~q\);

-- Location: LCCOMB_X38_Y40_N14
\inst_lcd_top|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Add0~0_combout\ = \inst_lcd_top|cnt_data\(0) $ (GND)
-- \inst_lcd_top|Add0~1\ = CARRY(!\inst_lcd_top|cnt_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|cnt_data\(0),
	datad => VCC,
	combout => \inst_lcd_top|Add0~0_combout\,
	cout => \inst_lcd_top|Add0~1\);

-- Location: LCCOMB_X38_Y40_N16
\inst_lcd_top|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Add0~2_combout\ = (\inst_lcd_top|cnt_data\(1) & (!\inst_lcd_top|Add0~1\)) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|Add0~1\) # (GND)))
-- \inst_lcd_top|Add0~3\ = CARRY((!\inst_lcd_top|Add0~1\) # (!\inst_lcd_top|cnt_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|cnt_data\(1),
	datad => VCC,
	cin => \inst_lcd_top|Add0~1\,
	combout => \inst_lcd_top|Add0~2_combout\,
	cout => \inst_lcd_top|Add0~3\);

-- Location: LCCOMB_X38_Y40_N30
\inst_lcd_top|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector7~0_combout\ = (\inst_lcd_top|Add0~2_combout\ & \inst_lcd_top|EA.WRLCD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|Add0~2_combout\,
	datac => \inst_lcd_top|EA.WRLCD~q\,
	combout => \inst_lcd_top|Selector7~0_combout\);

-- Location: LCCOMB_X38_Y40_N2
\inst_lcd_top|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector27~1_combout\ = (\inst_lcd_top|EA.WRLCD~q\) # (\inst_lcd_top|EA.AWAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_lcd_top|EA.WRLCD~q\,
	datad => \inst_lcd_top|EA.AWAIT~q\,
	combout => \inst_lcd_top|Selector27~1_combout\);

-- Location: FF_X38_Y40_N31
\inst_lcd_top|cnt_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector7~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|Selector27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|cnt_data\(1));

-- Location: LCCOMB_X38_Y40_N18
\inst_lcd_top|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Add0~4_combout\ = (\inst_lcd_top|cnt_data\(2) & (\inst_lcd_top|Add0~3\ $ (GND))) # (!\inst_lcd_top|cnt_data\(2) & (!\inst_lcd_top|Add0~3\ & VCC))
-- \inst_lcd_top|Add0~5\ = CARRY((\inst_lcd_top|cnt_data\(2) & !\inst_lcd_top|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datad => VCC,
	cin => \inst_lcd_top|Add0~3\,
	combout => \inst_lcd_top|Add0~4_combout\,
	cout => \inst_lcd_top|Add0~5\);

-- Location: LCCOMB_X38_Y40_N4
\inst_lcd_top|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector6~0_combout\ = (\inst_lcd_top|Add0~4_combout\ & \inst_lcd_top|EA.WRLCD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|Add0~4_combout\,
	datac => \inst_lcd_top|EA.WRLCD~q\,
	combout => \inst_lcd_top|Selector6~0_combout\);

-- Location: FF_X38_Y40_N5
\inst_lcd_top|cnt_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector6~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|Selector27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|cnt_data\(2));

-- Location: LCCOMB_X38_Y40_N20
\inst_lcd_top|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Add0~6_combout\ = (\inst_lcd_top|cnt_data\(3) & (!\inst_lcd_top|Add0~5\)) # (!\inst_lcd_top|cnt_data\(3) & ((\inst_lcd_top|Add0~5\) # (GND)))
-- \inst_lcd_top|Add0~7\ = CARRY((!\inst_lcd_top|Add0~5\) # (!\inst_lcd_top|cnt_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datad => VCC,
	cin => \inst_lcd_top|Add0~5\,
	combout => \inst_lcd_top|Add0~6_combout\,
	cout => \inst_lcd_top|Add0~7\);

-- Location: LCCOMB_X38_Y40_N26
\inst_lcd_top|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector5~0_combout\ = (\inst_lcd_top|EA.WRLCD~q\ & \inst_lcd_top|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_lcd_top|EA.WRLCD~q\,
	datad => \inst_lcd_top|Add0~6_combout\,
	combout => \inst_lcd_top|Selector5~0_combout\);

-- Location: FF_X38_Y40_N27
\inst_lcd_top|cnt_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector5~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|Selector27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|cnt_data\(3));

-- Location: LCCOMB_X38_Y40_N22
\inst_lcd_top|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Add0~8_combout\ = (\inst_lcd_top|cnt_data\(4) & (\inst_lcd_top|Add0~7\ $ (GND))) # (!\inst_lcd_top|cnt_data\(4) & (!\inst_lcd_top|Add0~7\ & VCC))
-- \inst_lcd_top|Add0~9\ = CARRY((\inst_lcd_top|cnt_data\(4) & !\inst_lcd_top|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|cnt_data\(4),
	datad => VCC,
	cin => \inst_lcd_top|Add0~7\,
	combout => \inst_lcd_top|Add0~8_combout\,
	cout => \inst_lcd_top|Add0~9\);

-- Location: LCCOMB_X38_Y40_N0
\inst_lcd_top|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector4~0_combout\ = (\inst_lcd_top|EA.WRLCD~q\ & \inst_lcd_top|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|EA.WRLCD~q\,
	datac => \inst_lcd_top|Add0~8_combout\,
	combout => \inst_lcd_top|Selector4~0_combout\);

-- Location: FF_X38_Y40_N1
\inst_lcd_top|cnt_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector4~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|Selector27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|cnt_data\(4));

-- Location: LCCOMB_X38_Y40_N8
\inst_lcd_top|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Equal3~0_combout\ = (!\inst_lcd_top|cnt_data\(2) & (!\inst_lcd_top|cnt_data\(4) & (!\inst_lcd_top|cnt_data\(3) & !\inst_lcd_top|cnt_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \inst_lcd_top|cnt_data\(3),
	datad => \inst_lcd_top|cnt_data\(1),
	combout => \inst_lcd_top|Equal3~0_combout\);

-- Location: LCCOMB_X38_Y40_N24
\inst_lcd_top|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Add0~10_combout\ = \inst_lcd_top|Add0~9\ $ (\inst_lcd_top|cnt_data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_lcd_top|cnt_data\(5),
	cin => \inst_lcd_top|Add0~9\,
	combout => \inst_lcd_top|Add0~10_combout\);

-- Location: LCCOMB_X38_Y40_N12
\inst_lcd_top|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector3~0_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|EA.WRLCD~q\ & ((\inst_lcd_top|cnt_data\(0)))) # (!\inst_lcd_top|EA.WRLCD~q\ & (!\inst_lcd_top|EA.AWAIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \inst_lcd_top|EA.AWAIT~q\,
	datac => \inst_lcd_top|EA.WRLCD~q\,
	datad => \inst_lcd_top|cnt_data\(0),
	combout => \inst_lcd_top|Selector3~0_combout\);

-- Location: LCCOMB_X38_Y40_N10
\inst_lcd_top|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector3~1_combout\ = (\inst_lcd_top|EA.WRLCD~q\ & (\inst_lcd_top|Add0~10_combout\ & ((!\inst_lcd_top|Selector3~0_combout\) # (!\inst_lcd_top|Equal3~0_combout\)))) # (!\inst_lcd_top|EA.WRLCD~q\ & (((\inst_lcd_top|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|Equal3~0_combout\,
	datab => \inst_lcd_top|Add0~10_combout\,
	datac => \inst_lcd_top|EA.WRLCD~q\,
	datad => \inst_lcd_top|Selector3~0_combout\,
	combout => \inst_lcd_top|Selector3~1_combout\);

-- Location: FF_X38_Y40_N11
\inst_lcd_top|cnt_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector3~1_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|cnt_data\(5));

-- Location: LCCOMB_X38_Y39_N6
\inst_lcd_top|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Equal3~1_combout\ = (!\inst_lcd_top|cnt_data\(0) & (\inst_lcd_top|Equal3~0_combout\ & !\inst_lcd_top|cnt_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|cnt_data\(0),
	datac => \inst_lcd_top|Equal3~0_combout\,
	datad => \inst_lcd_top|cnt_data\(5),
	combout => \inst_lcd_top|Equal3~1_combout\);

-- Location: LCCOMB_X37_Y39_N6
\inst_lcd_top|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector0~0_combout\ = (\inst_lcd_top|Equal2~1_combout\ & (\inst_lcd_top|line_st~q\ & ((\inst_lcd_top|Equal3~1_combout\) # (!\inst_lcd_top|ptr\(4))))) # (!\inst_lcd_top|Equal2~1_combout\ & (((\inst_lcd_top|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|Equal2~1_combout\,
	datab => \inst_lcd_top|line_st~q\,
	datac => \inst_lcd_top|ptr\(4),
	datad => \inst_lcd_top|Equal3~1_combout\,
	combout => \inst_lcd_top|Selector0~0_combout\);

-- Location: LCCOMB_X11_Y22_N24
\inst_lcd_top|EA.IDLE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|EA.IDLE~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst_lcd_top|EA.IDLE~feeder_combout\);

-- Location: FF_X11_Y22_N25
\inst_lcd_top|EA.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|EA.IDLE~feeder_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|EA.IDLE~q\);

-- Location: LCCOMB_X36_Y39_N28
\inst_lcd_top|EA~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|EA~18_combout\ = ((\inst_lcd_top|EA.BOOT~q\ & !\inst_lcd_top|lcd_ctrl_inst|ready_o~q\)) # (!\inst_lcd_top|EA.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|EA.IDLE~q\,
	datac => \inst_lcd_top|EA.BOOT~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|ready_o~q\,
	combout => \inst_lcd_top|EA~18_combout\);

-- Location: FF_X36_Y39_N29
\inst_lcd_top|EA.BOOT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|EA~18_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|EA.BOOT~q\);

-- Location: LCCOMB_X36_Y39_N30
\inst_lcd_top|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector0~1_combout\ = (\inst_lcd_top|EA.BOOT~q\) # ((\inst_lcd_top|Selector0~0_combout\ & (!\inst_lcd_top|clr_st~q\ & \inst_lcd_top|EA.WAITLCD2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|Selector0~0_combout\,
	datab => \inst_lcd_top|EA.BOOT~q\,
	datac => \inst_lcd_top|clr_st~q\,
	datad => \inst_lcd_top|EA.WAITLCD2~q\,
	combout => \inst_lcd_top|Selector0~1_combout\);

-- Location: LCCOMB_X36_Y39_N10
\inst_lcd_top|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector0~2_combout\ = (\inst_lcd_top|Selector0~1_combout\ & ((\inst_lcd_top|lcd_ctrl_inst|ready_o~q\) # ((!\start_lcd~q\ & \inst_lcd_top|EA.AWAIT~q\)))) # (!\inst_lcd_top|Selector0~1_combout\ & (!\start_lcd~q\ & 
-- (\inst_lcd_top|EA.AWAIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|Selector0~1_combout\,
	datab => \start_lcd~q\,
	datac => \inst_lcd_top|EA.AWAIT~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|ready_o~q\,
	combout => \inst_lcd_top|Selector0~2_combout\);

-- Location: FF_X36_Y39_N11
\inst_lcd_top|EA.AWAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector0~2_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|EA.AWAIT~q\);

-- Location: LCCOMB_X36_Y39_N20
\inst_lcd_top|PE.CLRLCD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|PE.CLRLCD~0_combout\ = (\start_lcd~q\ & \inst_lcd_top|EA.AWAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start_lcd~q\,
	datad => \inst_lcd_top|EA.AWAIT~q\,
	combout => \inst_lcd_top|PE.CLRLCD~0_combout\);

-- Location: FF_X36_Y39_N21
\inst_lcd_top|EA.CLRLCD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|PE.CLRLCD~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|EA.CLRLCD~q\);

-- Location: LCCOMB_X36_Y39_N24
\inst_lcd_top|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector1~0_combout\ = (!\inst_lcd_top|EA.TESTWORD~q\ & !\inst_lcd_top|EA.CLRLCD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|EA.TESTWORD~q\,
	datac => \inst_lcd_top|EA.CLRLCD~q\,
	combout => \inst_lcd_top|Selector1~0_combout\);

-- Location: LCCOMB_X36_Y39_N18
\inst_lcd_top|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector1~1_combout\ = (((\inst_lcd_top|lcd_ctrl_inst|ready_o~q\ & \inst_lcd_top|EA.WAITLCD1~q\)) # (!\inst_lcd_top|Selector24~0_combout\)) # (!\inst_lcd_top|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|Selector1~0_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|ready_o~q\,
	datac => \inst_lcd_top|EA.WAITLCD1~q\,
	datad => \inst_lcd_top|Selector24~0_combout\,
	combout => \inst_lcd_top|Selector1~1_combout\);

-- Location: FF_X36_Y39_N19
\inst_lcd_top|EA.WAITLCD1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector1~1_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|EA.WAITLCD1~q\);

-- Location: LCCOMB_X36_Y39_N14
\inst_lcd_top|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|WideOr9~combout\ = (\inst_lcd_top|EA.WAITLCD1~q\) # ((\inst_lcd_top|EA.BOOT~q\) # ((\inst_lcd_top|EA.TESTWORD~q\) # (!\inst_lcd_top|EA.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|EA.WAITLCD1~q\,
	datab => \inst_lcd_top|EA.BOOT~q\,
	datac => \inst_lcd_top|EA.IDLE~q\,
	datad => \inst_lcd_top|EA.TESTWORD~q\,
	combout => \inst_lcd_top|WideOr9~combout\);

-- Location: LCCOMB_X37_Y39_N8
\inst_lcd_top|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector24~1_combout\ = (\inst_lcd_top|EA.WRLCD~q\) # (((\inst_lcd_top|WideOr9~combout\ & \inst_lcd_top|cmd\(1))) # (!\inst_lcd_top|Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|WideOr9~combout\,
	datab => \inst_lcd_top|EA.WRLCD~q\,
	datac => \inst_lcd_top|cmd\(1),
	datad => \inst_lcd_top|Selector24~0_combout\,
	combout => \inst_lcd_top|Selector24~1_combout\);

-- Location: FF_X37_Y39_N9
\inst_lcd_top|cmd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector24~1_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|cmd\(1));

-- Location: LCCOMB_X36_Y39_N2
\inst_lcd_top|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector25~0_combout\ = (\inst_lcd_top|EA.CLRLCD~q\) # ((\inst_lcd_top|EA.WRLCD~q\) # ((\inst_lcd_top|WideOr9~combout\ & \inst_lcd_top|cmd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|EA.CLRLCD~q\,
	datab => \inst_lcd_top|WideOr9~combout\,
	datac => \inst_lcd_top|cmd\(0),
	datad => \inst_lcd_top|EA.WRLCD~q\,
	combout => \inst_lcd_top|Selector25~0_combout\);

-- Location: FF_X36_Y39_N3
\inst_lcd_top|cmd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector25~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|cmd\(0));

-- Location: LCCOMB_X35_Y39_N22
\inst_lcd_top|lcd_ctrl_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector2~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\) # ((\inst_lcd_top|cmd\(1) & (\inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\ & \inst_lcd_top|cmd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\,
	datab => \inst_lcd_top|cmd\(1),
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\,
	datad => \inst_lcd_top|cmd\(0),
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector2~0_combout\);

-- Location: LCCOMB_X33_Y39_N24
\inst_lcd_top|lcd_ctrl_inst|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Equal2~1_combout\ = (!\inst_lcd_top|lcd_ctrl_inst|count\(5) & (!\inst_lcd_top|lcd_ctrl_inst|count\(1) & (!\inst_lcd_top|lcd_ctrl_inst|count\(6) & !\inst_lcd_top|lcd_ctrl_inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|count\(5),
	datab => \inst_lcd_top|lcd_ctrl_inst|count\(1),
	datac => \inst_lcd_top|lcd_ctrl_inst|count\(6),
	datad => \inst_lcd_top|lcd_ctrl_inst|count\(3),
	combout => \inst_lcd_top|lcd_ctrl_inst|Equal2~1_combout\);

-- Location: LCCOMB_X32_Y39_N24
\inst_lcd_top|lcd_ctrl_inst|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Equal2~2_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Equal2~0_combout\ & (!\inst_lcd_top|lcd_ctrl_inst|count\(7) & \inst_lcd_top|lcd_ctrl_inst|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|Equal2~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|count\(7),
	datad => \inst_lcd_top|lcd_ctrl_inst|Equal2~1_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Equal2~2_combout\);

-- Location: LCCOMB_X32_Y39_N22
\inst_lcd_top|lcd_ctrl_inst|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Equal2~3_combout\ = (\inst_lcd_top|lcd_ctrl_inst|count\(2) & (\inst_lcd_top|lcd_ctrl_inst|count\(0) & \inst_lcd_top|lcd_ctrl_inst|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|count\(2),
	datac => \inst_lcd_top|lcd_ctrl_inst|count\(0),
	datad => \inst_lcd_top|lcd_ctrl_inst|Equal2~2_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Equal2~3_combout\);

-- Location: LCCOMB_X35_Y39_N8
\inst_lcd_top|lcd_ctrl_inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector2~1_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Selector2~0_combout\) # ((!\inst_lcd_top|lcd_ctrl_inst|Equal2~3_combout\ & \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|Selector2~0_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|Equal2~3_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector2~1_combout\);

-- Location: FF_X35_Y39_N9
\inst_lcd_top|lcd_ctrl_inst|EA.WRLCD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Selector2~1_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\);

-- Location: LCCOMB_X32_Y39_N26
\inst_lcd_top|lcd_ctrl_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector0~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|count\(2) & (\inst_lcd_top|lcd_ctrl_inst|count\(0) & (\inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\ & \inst_lcd_top|lcd_ctrl_inst|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|count\(2),
	datab => \inst_lcd_top|lcd_ctrl_inst|count\(0),
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|Equal2~2_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector0~0_combout\);

-- Location: LCCOMB_X34_Y39_N16
\inst_lcd_top|lcd_ctrl_inst|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector19~0_combout\ = (!\inst_lcd_top|lcd_ctrl_inst|EA.BOOT~q\ & ((\inst_lcd_top|lcd_ctrl_inst|index\(0) & ((!\inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\))) # (!\inst_lcd_top|lcd_ctrl_inst|index\(0) & 
-- (!\inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\,
	datab => \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|index\(0),
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.BOOT~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector19~0_combout\);

-- Location: FF_X34_Y39_N17
\inst_lcd_top|lcd_ctrl_inst|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Selector19~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|index\(0));

-- Location: LCCOMB_X34_Y39_N30
\inst_lcd_top|lcd_ctrl_inst|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector18~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|index\(1) & ((\inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\) # ((\inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\ & \inst_lcd_top|lcd_ctrl_inst|index\(0))))) # 
-- (!\inst_lcd_top|lcd_ctrl_inst|index\(1) & (((\inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\ & !\inst_lcd_top|lcd_ctrl_inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\,
	datab => \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|index\(1),
	datad => \inst_lcd_top|lcd_ctrl_inst|index\(0),
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector18~0_combout\);

-- Location: FF_X34_Y39_N31
\inst_lcd_top|lcd_ctrl_inst|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Selector18~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|index\(1));

-- Location: LCCOMB_X30_Y39_N10
\inst_lcd_top|lcd_ctrl_inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Add2~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|index\(1) & !\inst_lcd_top|lcd_ctrl_inst|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|index\(1),
	datac => \inst_lcd_top|lcd_ctrl_inst|index\(0),
	combout => \inst_lcd_top|lcd_ctrl_inst|Add2~0_combout\);

-- Location: LCCOMB_X30_Y39_N0
\inst_lcd_top|lcd_ctrl_inst|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector17~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|index\(2) & ((\inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\) # ((!\inst_lcd_top|lcd_ctrl_inst|Add2~0_combout\ & \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\)))) # 
-- (!\inst_lcd_top|lcd_ctrl_inst|index\(2) & (\inst_lcd_top|lcd_ctrl_inst|Add2~0_combout\ & (\inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|Add2~0_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|index\(2),
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector17~0_combout\);

-- Location: FF_X30_Y39_N1
\inst_lcd_top|lcd_ctrl_inst|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Selector17~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|index\(2));

-- Location: LCCOMB_X34_Y39_N10
\inst_lcd_top|lcd_ctrl_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector3~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|index\(1) & (\inst_lcd_top|lcd_ctrl_inst|index\(2) & !\inst_lcd_top|lcd_ctrl_inst|index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|index\(1),
	datac => \inst_lcd_top|lcd_ctrl_inst|index\(2),
	datad => \inst_lcd_top|lcd_ctrl_inst|index\(0),
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector3~0_combout\);

-- Location: LCCOMB_X34_Y39_N8
\inst_lcd_top|lcd_ctrl_inst|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector16~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\ & (\inst_lcd_top|lcd_ctrl_inst|index\(3))) # (!\inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\ & (((!\inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\ & 
-- !\inst_lcd_top|lcd_ctrl_inst|EA.BOOT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\,
	datab => \inst_lcd_top|lcd_ctrl_inst|index\(3),
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.BOOT~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector16~0_combout\);

-- Location: LCCOMB_X34_Y39_N18
\inst_lcd_top|lcd_ctrl_inst|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector16~1_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Selector16~0_combout\) # ((\inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\ & (\inst_lcd_top|lcd_ctrl_inst|Selector3~0_combout\ $ (\inst_lcd_top|lcd_ctrl_inst|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|Selector3~0_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|index\(3),
	datad => \inst_lcd_top|lcd_ctrl_inst|Selector16~0_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector16~1_combout\);

-- Location: FF_X34_Y39_N19
\inst_lcd_top|lcd_ctrl_inst|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Selector16~1_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|index\(3));

-- Location: LCCOMB_X34_Y39_N0
\inst_lcd_top|lcd_ctrl_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|LessThan0~0_combout\ = (!\inst_lcd_top|lcd_ctrl_inst|index\(3) & (((\inst_lcd_top|lcd_ctrl_inst|index\(0)) # (!\inst_lcd_top|lcd_ctrl_inst|index\(2))) # (!\inst_lcd_top|lcd_ctrl_inst|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|index\(1),
	datab => \inst_lcd_top|lcd_ctrl_inst|index\(3),
	datac => \inst_lcd_top|lcd_ctrl_inst|index\(2),
	datad => \inst_lcd_top|lcd_ctrl_inst|index\(0),
	combout => \inst_lcd_top|lcd_ctrl_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X34_Y39_N14
\inst_lcd_top|lcd_ctrl_inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector0~1_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Equal1~1_combout\ & (((\inst_lcd_top|lcd_ctrl_inst|Selector0~0_combout\ & \inst_lcd_top|lcd_ctrl_inst|LessThan0~0_combout\)))) # 
-- (!\inst_lcd_top|lcd_ctrl_inst|Equal1~1_combout\ & ((\inst_lcd_top|lcd_ctrl_inst|EA.BOOT~q\) # ((\inst_lcd_top|lcd_ctrl_inst|Selector0~0_combout\ & \inst_lcd_top|lcd_ctrl_inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|Equal1~1_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|EA.BOOT~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|Selector0~0_combout\,
	datad => \inst_lcd_top|lcd_ctrl_inst|LessThan0~0_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector0~1_combout\);

-- Location: FF_X34_Y39_N15
\inst_lcd_top|lcd_ctrl_inst|EA.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Selector0~1_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\);

-- Location: LCCOMB_X34_Y39_N6
\inst_lcd_top|lcd_ctrl_inst|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|WideOr5~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\) # ((\inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\) # (!\inst_lcd_top|lcd_ctrl_inst|EA.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.IDLE~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|WideOr5~0_combout\);

-- Location: FF_X33_Y39_N1
\inst_lcd_top|lcd_ctrl_inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|count[0]~11_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \inst_lcd_top|lcd_ctrl_inst|WideOr5~0_combout\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|count\(0));

-- Location: LCCOMB_X33_Y39_N2
\inst_lcd_top|lcd_ctrl_inst|count[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|count[1]~13_combout\ = (\inst_lcd_top|lcd_ctrl_inst|count\(1) & (!\inst_lcd_top|lcd_ctrl_inst|count[0]~12\)) # (!\inst_lcd_top|lcd_ctrl_inst|count\(1) & ((\inst_lcd_top|lcd_ctrl_inst|count[0]~12\) # (GND)))
-- \inst_lcd_top|lcd_ctrl_inst|count[1]~14\ = CARRY((!\inst_lcd_top|lcd_ctrl_inst|count[0]~12\) # (!\inst_lcd_top|lcd_ctrl_inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|count\(1),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|count[0]~12\,
	combout => \inst_lcd_top|lcd_ctrl_inst|count[1]~13_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|count[1]~14\);

-- Location: FF_X33_Y39_N3
\inst_lcd_top|lcd_ctrl_inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|count[1]~13_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \inst_lcd_top|lcd_ctrl_inst|WideOr5~0_combout\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|count\(1));

-- Location: LCCOMB_X33_Y39_N4
\inst_lcd_top|lcd_ctrl_inst|count[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|count[2]~15_combout\ = (\inst_lcd_top|lcd_ctrl_inst|count\(2) & (\inst_lcd_top|lcd_ctrl_inst|count[1]~14\ $ (GND))) # (!\inst_lcd_top|lcd_ctrl_inst|count\(2) & (!\inst_lcd_top|lcd_ctrl_inst|count[1]~14\ & VCC))
-- \inst_lcd_top|lcd_ctrl_inst|count[2]~16\ = CARRY((\inst_lcd_top|lcd_ctrl_inst|count\(2) & !\inst_lcd_top|lcd_ctrl_inst|count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|count\(2),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|count[1]~14\,
	combout => \inst_lcd_top|lcd_ctrl_inst|count[2]~15_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|count[2]~16\);

-- Location: FF_X33_Y39_N5
\inst_lcd_top|lcd_ctrl_inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|count[2]~15_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \inst_lcd_top|lcd_ctrl_inst|WideOr5~0_combout\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|count\(2));

-- Location: LCCOMB_X33_Y39_N6
\inst_lcd_top|lcd_ctrl_inst|count[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|count[3]~17_combout\ = (\inst_lcd_top|lcd_ctrl_inst|count\(3) & (!\inst_lcd_top|lcd_ctrl_inst|count[2]~16\)) # (!\inst_lcd_top|lcd_ctrl_inst|count\(3) & ((\inst_lcd_top|lcd_ctrl_inst|count[2]~16\) # (GND)))
-- \inst_lcd_top|lcd_ctrl_inst|count[3]~18\ = CARRY((!\inst_lcd_top|lcd_ctrl_inst|count[2]~16\) # (!\inst_lcd_top|lcd_ctrl_inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|count\(3),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|count[2]~16\,
	combout => \inst_lcd_top|lcd_ctrl_inst|count[3]~17_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|count[3]~18\);

-- Location: FF_X33_Y39_N7
\inst_lcd_top|lcd_ctrl_inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|count[3]~17_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \inst_lcd_top|lcd_ctrl_inst|WideOr5~0_combout\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|count\(3));

-- Location: LCCOMB_X33_Y39_N8
\inst_lcd_top|lcd_ctrl_inst|count[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|count[4]~19_combout\ = (\inst_lcd_top|lcd_ctrl_inst|count\(4) & (\inst_lcd_top|lcd_ctrl_inst|count[3]~18\ $ (GND))) # (!\inst_lcd_top|lcd_ctrl_inst|count\(4) & (!\inst_lcd_top|lcd_ctrl_inst|count[3]~18\ & VCC))
-- \inst_lcd_top|lcd_ctrl_inst|count[4]~20\ = CARRY((\inst_lcd_top|lcd_ctrl_inst|count\(4) & !\inst_lcd_top|lcd_ctrl_inst|count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|count\(4),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|count[3]~18\,
	combout => \inst_lcd_top|lcd_ctrl_inst|count[4]~19_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|count[4]~20\);

-- Location: FF_X33_Y39_N9
\inst_lcd_top|lcd_ctrl_inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|count[4]~19_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \inst_lcd_top|lcd_ctrl_inst|WideOr5~0_combout\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|count\(4));

-- Location: LCCOMB_X33_Y39_N10
\inst_lcd_top|lcd_ctrl_inst|count[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|count[5]~21_combout\ = (\inst_lcd_top|lcd_ctrl_inst|count\(5) & (!\inst_lcd_top|lcd_ctrl_inst|count[4]~20\)) # (!\inst_lcd_top|lcd_ctrl_inst|count\(5) & ((\inst_lcd_top|lcd_ctrl_inst|count[4]~20\) # (GND)))
-- \inst_lcd_top|lcd_ctrl_inst|count[5]~22\ = CARRY((!\inst_lcd_top|lcd_ctrl_inst|count[4]~20\) # (!\inst_lcd_top|lcd_ctrl_inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|count\(5),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|count[4]~20\,
	combout => \inst_lcd_top|lcd_ctrl_inst|count[5]~21_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|count[5]~22\);

-- Location: FF_X33_Y39_N11
\inst_lcd_top|lcd_ctrl_inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|count[5]~21_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \inst_lcd_top|lcd_ctrl_inst|WideOr5~0_combout\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|count\(5));

-- Location: LCCOMB_X33_Y39_N12
\inst_lcd_top|lcd_ctrl_inst|count[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|count[6]~23_combout\ = (\inst_lcd_top|lcd_ctrl_inst|count\(6) & (\inst_lcd_top|lcd_ctrl_inst|count[5]~22\ $ (GND))) # (!\inst_lcd_top|lcd_ctrl_inst|count\(6) & (!\inst_lcd_top|lcd_ctrl_inst|count[5]~22\ & VCC))
-- \inst_lcd_top|lcd_ctrl_inst|count[6]~24\ = CARRY((\inst_lcd_top|lcd_ctrl_inst|count\(6) & !\inst_lcd_top|lcd_ctrl_inst|count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|count\(6),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|count[5]~22\,
	combout => \inst_lcd_top|lcd_ctrl_inst|count[6]~23_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|count[6]~24\);

-- Location: FF_X33_Y39_N13
\inst_lcd_top|lcd_ctrl_inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|count[6]~23_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \inst_lcd_top|lcd_ctrl_inst|WideOr5~0_combout\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|count\(6));

-- Location: LCCOMB_X33_Y39_N14
\inst_lcd_top|lcd_ctrl_inst|count[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|count[7]~25_combout\ = (\inst_lcd_top|lcd_ctrl_inst|count\(7) & (!\inst_lcd_top|lcd_ctrl_inst|count[6]~24\)) # (!\inst_lcd_top|lcd_ctrl_inst|count\(7) & ((\inst_lcd_top|lcd_ctrl_inst|count[6]~24\) # (GND)))
-- \inst_lcd_top|lcd_ctrl_inst|count[7]~26\ = CARRY((!\inst_lcd_top|lcd_ctrl_inst|count[6]~24\) # (!\inst_lcd_top|lcd_ctrl_inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|count\(7),
	datad => VCC,
	cin => \inst_lcd_top|lcd_ctrl_inst|count[6]~24\,
	combout => \inst_lcd_top|lcd_ctrl_inst|count[7]~25_combout\,
	cout => \inst_lcd_top|lcd_ctrl_inst|count[7]~26\);

-- Location: FF_X33_Y39_N15
\inst_lcd_top|lcd_ctrl_inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|count[7]~25_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \inst_lcd_top|lcd_ctrl_inst|WideOr5~0_combout\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|count\(7));

-- Location: FF_X33_Y39_N17
\inst_lcd_top|lcd_ctrl_inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|count[8]~27_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \inst_lcd_top|lcd_ctrl_inst|WideOr5~0_combout\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|count\(8));

-- Location: LCCOMB_X33_Y39_N22
\inst_lcd_top|lcd_ctrl_inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Equal2~0_combout\ = (!\inst_lcd_top|lcd_ctrl_inst|count\(8) & (!\inst_lcd_top|lcd_ctrl_inst|count\(9) & (!\inst_lcd_top|lcd_ctrl_inst|count\(4) & !\inst_lcd_top|lcd_ctrl_inst|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|count\(8),
	datab => \inst_lcd_top|lcd_ctrl_inst|count\(9),
	datac => \inst_lcd_top|lcd_ctrl_inst|count\(4),
	datad => \inst_lcd_top|lcd_ctrl_inst|count\(10),
	combout => \inst_lcd_top|lcd_ctrl_inst|Equal2~0_combout\);

-- Location: LCCOMB_X32_Y39_N8
\inst_lcd_top|lcd_ctrl_inst|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Equal4~2_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Equal2~0_combout\ & (\inst_lcd_top|lcd_ctrl_inst|count\(3) & \inst_lcd_top|lcd_ctrl_inst|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|Equal2~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|count\(3),
	datad => \inst_lcd_top|lcd_ctrl_inst|Equal4~1_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Equal4~2_combout\);

-- Location: LCCOMB_X32_Y39_N28
\inst_lcd_top|lcd_ctrl_inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector4~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\ & (((\inst_lcd_top|lcd_ctrl_inst|count\(0)) # (!\inst_lcd_top|lcd_ctrl_inst|Equal2~2_combout\)) # (!\inst_lcd_top|lcd_ctrl_inst|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|count\(2),
	datab => \inst_lcd_top|lcd_ctrl_inst|Equal2~2_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|count\(0),
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector4~0_combout\);

-- Location: LCCOMB_X35_Y39_N26
\inst_lcd_top|lcd_ctrl_inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector4~1_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Selector4~0_combout\) # ((!\inst_lcd_top|cmd\(0) & (\inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\ & \inst_lcd_top|cmd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cmd\(0),
	datab => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\,
	datac => \inst_lcd_top|cmd\(1),
	datad => \inst_lcd_top|lcd_ctrl_inst|Selector4~0_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector4~1_combout\);

-- Location: FF_X35_Y39_N27
\inst_lcd_top|lcd_ctrl_inst|EA.CADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Selector4~1_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\);

-- Location: LCCOMB_X32_Y39_N0
\inst_lcd_top|lcd_ctrl_inst|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector1~2_combout\ = (\inst_lcd_top|lcd_ctrl_inst|count\(2) & (\inst_lcd_top|lcd_ctrl_inst|Equal2~2_combout\ & (!\inst_lcd_top|lcd_ctrl_inst|count\(0) & \inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|count\(2),
	datab => \inst_lcd_top|lcd_ctrl_inst|Equal2~2_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|count\(0),
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector1~2_combout\);

-- Location: LCCOMB_X35_Y39_N16
\inst_lcd_top|lcd_ctrl_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector1~0_combout\ = (!\inst_lcd_top|cmd\(1) & \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|cmd\(1),
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector1~0_combout\);

-- Location: LCCOMB_X35_Y39_N10
\inst_lcd_top|lcd_ctrl_inst|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector3~1_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Equal4~2_combout\ & (\inst_lcd_top|lcd_ctrl_inst|Selector1~0_combout\ & ((\inst_lcd_top|cmd\(0))))) # (!\inst_lcd_top|lcd_ctrl_inst|Equal4~2_combout\ & 
-- ((\inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\) # ((\inst_lcd_top|lcd_ctrl_inst|Selector1~0_combout\ & \inst_lcd_top|cmd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|Equal4~2_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|Selector1~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\,
	datad => \inst_lcd_top|cmd\(0),
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector3~1_combout\);

-- Location: LCCOMB_X34_Y39_N26
\inst_lcd_top|lcd_ctrl_inst|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector3~2_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Selector3~1_combout\) # ((\inst_lcd_top|lcd_ctrl_inst|Selector0~0_combout\ & (!\inst_lcd_top|lcd_ctrl_inst|index\(3) & \inst_lcd_top|lcd_ctrl_inst|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|Selector0~0_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|index\(3),
	datac => \inst_lcd_top|lcd_ctrl_inst|Selector3~1_combout\,
	datad => \inst_lcd_top|lcd_ctrl_inst|Selector3~0_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector3~2_combout\);

-- Location: FF_X34_Y39_N27
\inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Selector3~2_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\);

-- Location: LCCOMB_X34_Y39_N12
\inst_lcd_top|lcd_ctrl_inst|LCD_RS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|LCD_RS~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|index\(3) & \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|index\(3),
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|LCD_RS~0_combout\);

-- Location: LCCOMB_X35_Y39_N20
\inst_lcd_top|lcd_ctrl_inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector1~1_combout\ = (\inst_lcd_top|cmd\(0) & (((\inst_lcd_top|lcd_ctrl_inst|LCD_RS~0_combout\ & \inst_lcd_top|lcd_ctrl_inst|Equal2~3_combout\)))) # (!\inst_lcd_top|cmd\(0) & 
-- ((\inst_lcd_top|lcd_ctrl_inst|Selector1~0_combout\) # ((\inst_lcd_top|lcd_ctrl_inst|LCD_RS~0_combout\ & \inst_lcd_top|lcd_ctrl_inst|Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cmd\(0),
	datab => \inst_lcd_top|lcd_ctrl_inst|Selector1~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|LCD_RS~0_combout\,
	datad => \inst_lcd_top|lcd_ctrl_inst|Equal2~3_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector1~1_combout\);

-- Location: LCCOMB_X35_Y39_N4
\inst_lcd_top|lcd_ctrl_inst|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector1~3_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Selector1~2_combout\) # ((\inst_lcd_top|lcd_ctrl_inst|Selector1~1_combout\) # ((\inst_lcd_top|lcd_ctrl_inst|Equal4~2_combout\ & \inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|Equal4~2_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|Selector1~2_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|Selector1~1_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector1~3_combout\);

-- Location: FF_X35_Y39_N5
\inst_lcd_top|lcd_ctrl_inst|EA.AWAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Selector1~3_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\);

-- Location: FF_X35_Y39_N19
\inst_lcd_top|lcd_ctrl_inst|ready_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sload => VCC,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|ready_o~q\);

-- Location: LCCOMB_X37_Y39_N30
\inst_lcd_top|EA~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|EA~15_combout\ = ((\inst_lcd_top|ptr\(4) & \inst_lcd_top|line_st~q\)) # (!\inst_lcd_top|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|Equal2~1_combout\,
	datab => \inst_lcd_top|ptr\(4),
	datad => \inst_lcd_top|line_st~q\,
	combout => \inst_lcd_top|EA~15_combout\);

-- Location: LCCOMB_X36_Y39_N8
\inst_lcd_top|EA~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|EA~16_combout\ = (\inst_lcd_top|clr_st~q\ & (((\inst_lcd_top|EA.IDLE~q\)))) # (!\inst_lcd_top|clr_st~q\ & (\inst_lcd_top|EA~15_combout\ & ((!\inst_lcd_top|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|EA~15_combout\,
	datab => \inst_lcd_top|clr_st~q\,
	datac => \inst_lcd_top|EA.IDLE~q\,
	datad => \inst_lcd_top|Equal3~1_combout\,
	combout => \inst_lcd_top|EA~16_combout\);

-- Location: LCCOMB_X36_Y39_N6
\inst_lcd_top|EA~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|EA~17_combout\ = (\inst_lcd_top|lcd_ctrl_inst|ready_o~q\ & (\inst_lcd_top|EA~16_combout\ & \inst_lcd_top|EA.WAITLCD2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|ready_o~q\,
	datac => \inst_lcd_top|EA~16_combout\,
	datad => \inst_lcd_top|EA.WAITLCD2~q\,
	combout => \inst_lcd_top|EA~17_combout\);

-- Location: FF_X36_Y39_N7
\inst_lcd_top|EA.WRLCD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|EA~17_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|EA.WRLCD~q\);

-- Location: LCCOMB_X38_Y40_N28
\inst_lcd_top|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector8~0_combout\ = (\inst_lcd_top|EA.WRLCD~q\ & (!\inst_lcd_top|Add0~0_combout\)) # (!\inst_lcd_top|EA.WRLCD~q\ & (((\inst_lcd_top|cnt_data\(0) & !\inst_lcd_top|EA.AWAIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|EA.WRLCD~q\,
	datab => \inst_lcd_top|Add0~0_combout\,
	datac => \inst_lcd_top|cnt_data\(0),
	datad => \inst_lcd_top|EA.AWAIT~q\,
	combout => \inst_lcd_top|Selector8~0_combout\);

-- Location: FF_X38_Y40_N29
\inst_lcd_top|cnt_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector8~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|cnt_data\(0));

-- Location: LCCOMB_X38_Y38_N0
\uart_inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Add2~2_combout\ = \uart_inst|count_bit_rx\(2) $ (((\uart_inst|count_bit_rx\(1) & \uart_inst|count_bit_rx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|count_bit_rx\(1),
	datac => \uart_inst|count_bit_rx\(2),
	datad => \uart_inst|count_bit_rx\(0),
	combout => \uart_inst|Add2~2_combout\);

-- Location: LCCOMB_X39_Y38_N2
\uart_inst|count_baud_rx[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|count_baud_rx[0]~9_combout\ = \uart_inst|count_baud_rx\(0) $ (VCC)
-- \uart_inst|count_baud_rx[0]~10\ = CARRY(\uart_inst|count_baud_rx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|count_baud_rx\(0),
	datad => VCC,
	combout => \uart_inst|count_baud_rx[0]~9_combout\,
	cout => \uart_inst|count_baud_rx[0]~10\);

-- Location: LCCOMB_X38_Y38_N20
\uart_inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Equal4~0_combout\ = (!\uart_inst|count_bit_rx\(1) & (!\uart_inst|count_bit_rx\(3) & (!\uart_inst|count_bit_rx\(2) & !\uart_inst|count_bit_rx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|count_bit_rx\(1),
	datab => \uart_inst|count_bit_rx\(3),
	datac => \uart_inst|count_bit_rx\(2),
	datad => \uart_inst|count_bit_rx\(0),
	combout => \uart_inst|Equal4~0_combout\);

-- Location: IOIBUF_X5_Y43_N29
\UART_RXD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RXD,
	o => \UART_RXD~input_o\);

-- Location: FF_X37_Y38_N3
\uart_inst|serial_rx_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \UART_RXD~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|serial_rx_int~q\);

-- Location: LCCOMB_X37_Y38_N8
\uart_inst|serial_rx_ff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|serial_rx_ff~feeder_combout\ = \uart_inst|serial_rx_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_rx_int~q\,
	combout => \uart_inst|serial_rx_ff~feeder_combout\);

-- Location: FF_X37_Y38_N9
\uart_inst|serial_rx_ff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|serial_rx_ff~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|serial_rx_ff~q\);

-- Location: LCCOMB_X37_Y38_N28
\uart_inst|Sync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Sync~1_combout\ = (\uart_inst|Equal4~0_combout\ & \uart_inst|serial_rx_ff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|Equal4~0_combout\,
	datac => \uart_inst|serial_rx_ff~q\,
	combout => \uart_inst|Sync~1_combout\);

-- Location: FF_X37_Y38_N29
\uart_inst|rising_new_byte\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|Sync~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|rising_new_byte~q\);

-- Location: LCCOMB_X39_Y38_N6
\uart_inst|count_baud_rx[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|count_baud_rx[2]~13_combout\ = (\uart_inst|count_baud_rx\(2) & (\uart_inst|count_baud_rx[1]~12\ $ (GND))) # (!\uart_inst|count_baud_rx\(2) & (!\uart_inst|count_baud_rx[1]~12\ & VCC))
-- \uart_inst|count_baud_rx[2]~14\ = CARRY((\uart_inst|count_baud_rx\(2) & !\uart_inst|count_baud_rx[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|count_baud_rx\(2),
	datad => VCC,
	cin => \uart_inst|count_baud_rx[1]~12\,
	combout => \uart_inst|count_baud_rx[2]~13_combout\,
	cout => \uart_inst|count_baud_rx[2]~14\);

-- Location: LCCOMB_X39_Y38_N8
\uart_inst|count_baud_rx[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|count_baud_rx[3]~15_combout\ = (\uart_inst|count_baud_rx\(3) & (!\uart_inst|count_baud_rx[2]~14\)) # (!\uart_inst|count_baud_rx\(3) & ((\uart_inst|count_baud_rx[2]~14\) # (GND)))
-- \uart_inst|count_baud_rx[3]~16\ = CARRY((!\uart_inst|count_baud_rx[2]~14\) # (!\uart_inst|count_baud_rx\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|count_baud_rx\(3),
	datad => VCC,
	cin => \uart_inst|count_baud_rx[2]~14\,
	combout => \uart_inst|count_baud_rx[3]~15_combout\,
	cout => \uart_inst|count_baud_rx[3]~16\);

-- Location: LCCOMB_X39_Y38_N30
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X39_Y38_N9
\uart_inst|count_baud_rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|count_baud_rx[3]~15_combout\,
	asdata => \~GND~combout\,
	sload => \uart_inst|Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|count_baud_rx\(3));

-- Location: LCCOMB_X39_Y38_N10
\uart_inst|count_baud_rx[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|count_baud_rx[4]~17_combout\ = (\uart_inst|count_baud_rx\(4) & (\uart_inst|count_baud_rx[3]~16\ $ (GND))) # (!\uart_inst|count_baud_rx\(4) & (!\uart_inst|count_baud_rx[3]~16\ & VCC))
-- \uart_inst|count_baud_rx[4]~18\ = CARRY((\uart_inst|count_baud_rx\(4) & !\uart_inst|count_baud_rx[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|count_baud_rx\(4),
	datad => VCC,
	cin => \uart_inst|count_baud_rx[3]~16\,
	combout => \uart_inst|count_baud_rx[4]~17_combout\,
	cout => \uart_inst|count_baud_rx[4]~18\);

-- Location: FF_X39_Y38_N11
\uart_inst|count_baud_rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|count_baud_rx[4]~17_combout\,
	asdata => \~GND~combout\,
	sload => \uart_inst|Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|count_baud_rx\(4));

-- Location: LCCOMB_X39_Y38_N12
\uart_inst|count_baud_rx[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|count_baud_rx[5]~19_combout\ = (\uart_inst|count_baud_rx\(5) & (!\uart_inst|count_baud_rx[4]~18\)) # (!\uart_inst|count_baud_rx\(5) & ((\uart_inst|count_baud_rx[4]~18\) # (GND)))
-- \uart_inst|count_baud_rx[5]~20\ = CARRY((!\uart_inst|count_baud_rx[4]~18\) # (!\uart_inst|count_baud_rx\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|count_baud_rx\(5),
	datad => VCC,
	cin => \uart_inst|count_baud_rx[4]~18\,
	combout => \uart_inst|count_baud_rx[5]~19_combout\,
	cout => \uart_inst|count_baud_rx[5]~20\);

-- Location: FF_X39_Y38_N13
\uart_inst|count_baud_rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|count_baud_rx[5]~19_combout\,
	asdata => \~GND~combout\,
	sload => \uart_inst|Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|count_baud_rx\(5));

-- Location: LCCOMB_X39_Y38_N14
\uart_inst|count_baud_rx[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|count_baud_rx[6]~21_combout\ = (\uart_inst|count_baud_rx\(6) & (\uart_inst|count_baud_rx[5]~20\ $ (GND))) # (!\uart_inst|count_baud_rx\(6) & (!\uart_inst|count_baud_rx[5]~20\ & VCC))
-- \uart_inst|count_baud_rx[6]~22\ = CARRY((\uart_inst|count_baud_rx\(6) & !\uart_inst|count_baud_rx[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|count_baud_rx\(6),
	datad => VCC,
	cin => \uart_inst|count_baud_rx[5]~20\,
	combout => \uart_inst|count_baud_rx[6]~21_combout\,
	cout => \uart_inst|count_baud_rx[6]~22\);

-- Location: FF_X39_Y38_N15
\uart_inst|count_baud_rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|count_baud_rx[6]~21_combout\,
	asdata => \~GND~combout\,
	sload => \uart_inst|Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|count_baud_rx\(6));

-- Location: LCCOMB_X39_Y38_N16
\uart_inst|count_baud_rx[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|count_baud_rx[7]~23_combout\ = (\uart_inst|count_baud_rx\(7) & (!\uart_inst|count_baud_rx[6]~22\)) # (!\uart_inst|count_baud_rx\(7) & ((\uart_inst|count_baud_rx[6]~22\) # (GND)))
-- \uart_inst|count_baud_rx[7]~24\ = CARRY((!\uart_inst|count_baud_rx[6]~22\) # (!\uart_inst|count_baud_rx\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|count_baud_rx\(7),
	datad => VCC,
	cin => \uart_inst|count_baud_rx[6]~22\,
	combout => \uart_inst|count_baud_rx[7]~23_combout\,
	cout => \uart_inst|count_baud_rx[7]~24\);

-- Location: FF_X39_Y38_N17
\uart_inst|count_baud_rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|count_baud_rx[7]~23_combout\,
	asdata => \~GND~combout\,
	sload => \uart_inst|Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|count_baud_rx\(7));

-- Location: LCCOMB_X39_Y38_N0
\uart_inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Equal2~0_combout\ = (!\uart_inst|count_baud_rx\(2) & (\uart_inst|count_baud_rx\(7) & (\uart_inst|count_baud_rx\(4) & !\uart_inst|count_baud_rx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|count_baud_rx\(2),
	datab => \uart_inst|count_baud_rx\(7),
	datac => \uart_inst|count_baud_rx\(4),
	datad => \uart_inst|count_baud_rx\(0),
	combout => \uart_inst|Equal2~0_combout\);

-- Location: LCCOMB_X39_Y38_N26
\uart_inst|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Equal2~1_combout\ = (!\uart_inst|count_baud_rx\(3) & (\uart_inst|count_baud_rx\(1) & (!\uart_inst|count_baud_rx\(6) & \uart_inst|count_baud_rx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|count_baud_rx\(3),
	datab => \uart_inst|count_baud_rx\(1),
	datac => \uart_inst|count_baud_rx\(6),
	datad => \uart_inst|count_baud_rx\(5),
	combout => \uart_inst|Equal2~1_combout\);

-- Location: LCCOMB_X39_Y38_N18
\uart_inst|count_baud_rx[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|count_baud_rx[8]~25_combout\ = \uart_inst|count_baud_rx[7]~24\ $ (!\uart_inst|count_baud_rx\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|count_baud_rx\(8),
	cin => \uart_inst|count_baud_rx[7]~24\,
	combout => \uart_inst|count_baud_rx[8]~25_combout\);

-- Location: FF_X39_Y38_N19
\uart_inst|count_baud_rx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|count_baud_rx[8]~25_combout\,
	asdata => \~GND~combout\,
	sload => \uart_inst|Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|count_baud_rx\(8));

-- Location: LCCOMB_X39_Y38_N20
\uart_inst|Sync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Sync~0_combout\ = (\uart_inst|rising_new_byte~q\) # ((\uart_inst|Equal2~0_combout\ & (\uart_inst|Equal2~1_combout\ & \uart_inst|count_baud_rx\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|rising_new_byte~q\,
	datab => \uart_inst|Equal2~0_combout\,
	datac => \uart_inst|Equal2~1_combout\,
	datad => \uart_inst|count_baud_rx\(8),
	combout => \uart_inst|Sync~0_combout\);

-- Location: FF_X39_Y38_N3
\uart_inst|count_baud_rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|count_baud_rx[0]~9_combout\,
	asdata => VCC,
	sload => \uart_inst|Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|count_baud_rx\(0));

-- Location: LCCOMB_X39_Y38_N4
\uart_inst|count_baud_rx[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|count_baud_rx[1]~11_combout\ = (\uart_inst|count_baud_rx\(1) & (!\uart_inst|count_baud_rx[0]~10\)) # (!\uart_inst|count_baud_rx\(1) & ((\uart_inst|count_baud_rx[0]~10\) # (GND)))
-- \uart_inst|count_baud_rx[1]~12\ = CARRY((!\uart_inst|count_baud_rx[0]~10\) # (!\uart_inst|count_baud_rx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|count_baud_rx\(1),
	datad => VCC,
	cin => \uart_inst|count_baud_rx[0]~10\,
	combout => \uart_inst|count_baud_rx[1]~11_combout\,
	cout => \uart_inst|count_baud_rx[1]~12\);

-- Location: FF_X39_Y38_N5
\uart_inst|count_baud_rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|count_baud_rx[1]~11_combout\,
	asdata => \~GND~combout\,
	sload => \uart_inst|Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|count_baud_rx\(1));

-- Location: FF_X39_Y38_N7
\uart_inst|count_baud_rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|count_baud_rx[2]~13_combout\,
	asdata => \~GND~combout\,
	sload => \uart_inst|Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|count_baud_rx\(2));

-- Location: LCCOMB_X39_Y38_N28
\uart_inst|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Equal3~0_combout\ = (!\uart_inst|count_baud_rx\(2) & (\uart_inst|count_baud_rx\(7) & (\uart_inst|count_baud_rx\(4) & \uart_inst|count_baud_rx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|count_baud_rx\(2),
	datab => \uart_inst|count_baud_rx\(7),
	datac => \uart_inst|count_baud_rx\(4),
	datad => \uart_inst|count_baud_rx\(0),
	combout => \uart_inst|Equal3~0_combout\);

-- Location: LCCOMB_X39_Y38_N22
\uart_inst|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Equal3~1_combout\ = (\uart_inst|count_baud_rx\(3) & (!\uart_inst|count_baud_rx\(1) & (\uart_inst|count_baud_rx\(6) & !\uart_inst|count_baud_rx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|count_baud_rx\(3),
	datab => \uart_inst|count_baud_rx\(1),
	datac => \uart_inst|count_baud_rx\(6),
	datad => \uart_inst|count_baud_rx\(5),
	combout => \uart_inst|Equal3~1_combout\);

-- Location: LCCOMB_X39_Y38_N24
\uart_inst|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Equal3~2_combout\ = (\uart_inst|Equal3~0_combout\ & (\uart_inst|Equal3~1_combout\ & !\uart_inst|count_baud_rx\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|Equal3~0_combout\,
	datac => \uart_inst|Equal3~1_combout\,
	datad => \uart_inst|count_baud_rx\(8),
	combout => \uart_inst|Equal3~2_combout\);

-- Location: FF_X39_Y38_N25
\uart_inst|clock_baud_rx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|Equal3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|clock_baud_rx~q\);

-- Location: FF_X38_Y38_N1
\uart_inst|count_bit_rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|Add2~2_combout\,
	sclr => \uart_inst|ALT_INV_rx_busy~q\,
	ena => \uart_inst|clock_baud_rx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|count_bit_rx\(2));

-- Location: LCCOMB_X38_Y38_N28
\uart_inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Add2~0_combout\ = \uart_inst|count_bit_rx\(3) $ (((\uart_inst|count_bit_rx\(1) & (\uart_inst|count_bit_rx\(2) & \uart_inst|count_bit_rx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|count_bit_rx\(1),
	datab => \uart_inst|count_bit_rx\(2),
	datac => \uart_inst|count_bit_rx\(3),
	datad => \uart_inst|count_bit_rx\(0),
	combout => \uart_inst|Add2~0_combout\);

-- Location: FF_X38_Y38_N29
\uart_inst|count_bit_rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|Add2~0_combout\,
	sclr => \uart_inst|ALT_INV_rx_busy~q\,
	ena => \uart_inst|clock_baud_rx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|count_bit_rx\(3));

-- Location: LCCOMB_X38_Y38_N14
\uart_inst|rx_busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|rx_busy~0_combout\ = (((\uart_inst|count_bit_rx\(2)) # (\uart_inst|count_bit_rx\(0))) # (!\uart_inst|count_bit_rx\(3))) # (!\uart_inst|count_bit_rx\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|count_bit_rx\(1),
	datab => \uart_inst|count_bit_rx\(3),
	datac => \uart_inst|count_bit_rx\(2),
	datad => \uart_inst|count_bit_rx\(0),
	combout => \uart_inst|rx_busy~0_combout\);

-- Location: LCCOMB_X39_Y37_N12
\uart_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Add0~0_combout\ = \uart_inst|div_clock\(0) $ (GND)
-- \uart_inst|Add0~1\ = CARRY(!\uart_inst|div_clock\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|div_clock\(0),
	datad => VCC,
	combout => \uart_inst|Add0~0_combout\,
	cout => \uart_inst|Add0~1\);

-- Location: LCCOMB_X39_Y37_N24
\uart_inst|div_clock~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|div_clock~1_combout\ = (!\uart_inst|Add0~0_combout\ & ((\uart_inst|div_clock\(5)) # ((!\uart_inst|div_clock\(4)) # (!\uart_inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|div_clock\(5),
	datab => \uart_inst|Add0~0_combout\,
	datac => \uart_inst|Equal0~0_combout\,
	datad => \uart_inst|div_clock\(4),
	combout => \uart_inst|div_clock~1_combout\);

-- Location: FF_X39_Y37_N25
\uart_inst|div_clock[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|div_clock~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|div_clock\(0));

-- Location: LCCOMB_X39_Y37_N4
\uart_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Equal0~0_combout\ = (!\uart_inst|div_clock\(1) & (!\uart_inst|div_clock\(2) & (\uart_inst|div_clock\(3) & !\uart_inst|div_clock\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|div_clock\(1),
	datab => \uart_inst|div_clock\(2),
	datac => \uart_inst|div_clock\(3),
	datad => \uart_inst|div_clock\(0),
	combout => \uart_inst|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y37_N14
\uart_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Add0~2_combout\ = (\uart_inst|div_clock\(1) & (!\uart_inst|Add0~1\)) # (!\uart_inst|div_clock\(1) & ((\uart_inst|Add0~1\) # (GND)))
-- \uart_inst|Add0~3\ = CARRY((!\uart_inst|Add0~1\) # (!\uart_inst|div_clock\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|div_clock\(1),
	datad => VCC,
	cin => \uart_inst|Add0~1\,
	combout => \uart_inst|Add0~2_combout\,
	cout => \uart_inst|Add0~3\);

-- Location: LCCOMB_X39_Y37_N10
\uart_inst|div_clock~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|div_clock~2_combout\ = (\uart_inst|Add0~2_combout\ & ((\uart_inst|div_clock\(5)) # ((!\uart_inst|div_clock\(4)) # (!\uart_inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|div_clock\(5),
	datab => \uart_inst|Equal0~0_combout\,
	datac => \uart_inst|Add0~2_combout\,
	datad => \uart_inst|div_clock\(4),
	combout => \uart_inst|div_clock~2_combout\);

-- Location: FF_X39_Y37_N11
\uart_inst|div_clock[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|div_clock~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|div_clock\(1));

-- Location: LCCOMB_X39_Y37_N16
\uart_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Add0~4_combout\ = (\uart_inst|div_clock\(2) & (\uart_inst|Add0~3\ $ (GND))) # (!\uart_inst|div_clock\(2) & (!\uart_inst|Add0~3\ & VCC))
-- \uart_inst|Add0~5\ = CARRY((\uart_inst|div_clock\(2) & !\uart_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|div_clock\(2),
	datad => VCC,
	cin => \uart_inst|Add0~3\,
	combout => \uart_inst|Add0~4_combout\,
	cout => \uart_inst|Add0~5\);

-- Location: FF_X39_Y37_N17
\uart_inst|div_clock[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|div_clock\(2));

-- Location: LCCOMB_X39_Y37_N18
\uart_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Add0~6_combout\ = (\uart_inst|div_clock\(3) & (!\uart_inst|Add0~5\)) # (!\uart_inst|div_clock\(3) & ((\uart_inst|Add0~5\) # (GND)))
-- \uart_inst|Add0~7\ = CARRY((!\uart_inst|Add0~5\) # (!\uart_inst|div_clock\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|div_clock\(3),
	datad => VCC,
	cin => \uart_inst|Add0~5\,
	combout => \uart_inst|Add0~6_combout\,
	cout => \uart_inst|Add0~7\);

-- Location: LCCOMB_X39_Y37_N26
\uart_inst|div_clock~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|div_clock~0_combout\ = (\uart_inst|Add0~6_combout\ & ((\uart_inst|div_clock\(5)) # ((!\uart_inst|div_clock\(4)) # (!\uart_inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|div_clock\(5),
	datab => \uart_inst|Add0~6_combout\,
	datac => \uart_inst|Equal0~0_combout\,
	datad => \uart_inst|div_clock\(4),
	combout => \uart_inst|div_clock~0_combout\);

-- Location: FF_X39_Y37_N27
\uart_inst|div_clock[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|div_clock~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|div_clock\(3));

-- Location: LCCOMB_X39_Y37_N20
\uart_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Add0~8_combout\ = (\uart_inst|div_clock\(4) & (\uart_inst|Add0~7\ $ (GND))) # (!\uart_inst|div_clock\(4) & (!\uart_inst|Add0~7\ & VCC))
-- \uart_inst|Add0~9\ = CARRY((\uart_inst|div_clock\(4) & !\uart_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|div_clock\(4),
	datad => VCC,
	cin => \uart_inst|Add0~7\,
	combout => \uart_inst|Add0~8_combout\,
	cout => \uart_inst|Add0~9\);

-- Location: LCCOMB_X39_Y37_N22
\uart_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Add0~10_combout\ = \uart_inst|div_clock\(5) $ (\uart_inst|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|div_clock\(5),
	cin => \uart_inst|Add0~9\,
	combout => \uart_inst|Add0~10_combout\);

-- Location: FF_X39_Y37_N23
\uart_inst|div_clock[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|div_clock\(5));

-- Location: LCCOMB_X39_Y37_N6
\uart_inst|div_clock~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|div_clock~3_combout\ = (\uart_inst|Add0~8_combout\ & ((\uart_inst|div_clock\(5)) # ((!\uart_inst|div_clock\(4)) # (!\uart_inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|div_clock\(5),
	datab => \uart_inst|Equal0~0_combout\,
	datac => \uart_inst|div_clock\(4),
	datad => \uart_inst|Add0~8_combout\,
	combout => \uart_inst|div_clock~3_combout\);

-- Location: FF_X39_Y37_N7
\uart_inst|div_clock[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|div_clock~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|div_clock\(4));

-- Location: LCCOMB_X39_Y37_N28
\uart_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Equal0~1_combout\ = (\uart_inst|div_clock\(4) & (\uart_inst|Equal0~0_combout\ & !\uart_inst|div_clock\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|div_clock\(4),
	datab => \uart_inst|Equal0~0_combout\,
	datac => \uart_inst|div_clock\(5),
	combout => \uart_inst|Equal0~1_combout\);

-- Location: FF_X39_Y37_N29
\uart_inst|enable_1mhz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|enable_1mhz~q\);

-- Location: LCCOMB_X39_Y37_N30
\uart_inst|falling_serial_rx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|falling_serial_rx~0_combout\ = (\uart_inst|enable_1mhz~q\ & ((\uart_inst|rx_busy~q\ & ((\uart_inst|falling_serial_rx~q\))) # (!\uart_inst|rx_busy~q\ & (\UART_RXD~input_o\)))) # (!\uart_inst|enable_1mhz~q\ & 
-- (((\uart_inst|falling_serial_rx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RXD~input_o\,
	datab => \uart_inst|enable_1mhz~q\,
	datac => \uart_inst|falling_serial_rx~q\,
	datad => \uart_inst|rx_busy~q\,
	combout => \uart_inst|falling_serial_rx~0_combout\);

-- Location: FF_X39_Y37_N31
\uart_inst|falling_serial_rx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|falling_serial_rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|falling_serial_rx~q\);

-- Location: LCCOMB_X39_Y37_N8
\uart_inst|new_byte~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|new_byte~0_combout\ = (\uart_inst|falling_serial_rx~q\ & (\uart_inst|enable_1mhz~q\ & (!\UART_RXD~input_o\ & !\uart_inst|rx_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|falling_serial_rx~q\,
	datab => \uart_inst|enable_1mhz~q\,
	datac => \UART_RXD~input_o\,
	datad => \uart_inst|rx_busy~q\,
	combout => \uart_inst|new_byte~0_combout\);

-- Location: LCCOMB_X39_Y37_N2
\uart_inst|new_byte~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|new_byte~1_combout\ = (\uart_inst|new_byte~0_combout\) # ((\uart_inst|new_byte~q\ & !\uart_inst|enable_1mhz~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|new_byte~0_combout\,
	datac => \uart_inst|new_byte~q\,
	datad => \uart_inst|enable_1mhz~q\,
	combout => \uart_inst|new_byte~1_combout\);

-- Location: FF_X39_Y37_N3
\uart_inst|new_byte\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|new_byte~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|new_byte~q\);

-- Location: LCCOMB_X39_Y37_N0
\uart_inst|rx_busy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|rx_busy~1_combout\ = (\uart_inst|new_byte~q\) # ((\uart_inst|rx_busy~0_combout\ & \uart_inst|rx_busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|rx_busy~0_combout\,
	datac => \uart_inst|rx_busy~q\,
	datad => \uart_inst|new_byte~q\,
	combout => \uart_inst|rx_busy~1_combout\);

-- Location: FF_X39_Y37_N1
\uart_inst|rx_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|rx_busy~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|rx_busy~q\);

-- Location: LCCOMB_X38_Y38_N12
\uart_inst|count_bit_rx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|count_bit_rx~0_combout\ = (!\uart_inst|count_bit_rx\(0) & \uart_inst|rx_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|count_bit_rx\(0),
	datad => \uart_inst|rx_busy~q\,
	combout => \uart_inst|count_bit_rx~0_combout\);

-- Location: FF_X38_Y38_N13
\uart_inst|count_bit_rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|count_bit_rx~0_combout\,
	ena => \uart_inst|clock_baud_rx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|count_bit_rx\(0));

-- Location: LCCOMB_X38_Y38_N6
\uart_inst|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|Add2~1_combout\ = \uart_inst|count_bit_rx\(1) $ (\uart_inst|count_bit_rx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|count_bit_rx\(1),
	datad => \uart_inst|count_bit_rx\(0),
	combout => \uart_inst|Add2~1_combout\);

-- Location: FF_X38_Y38_N7
\uart_inst|count_bit_rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|Add2~1_combout\,
	sclr => \uart_inst|ALT_INV_rx_busy~q\,
	ena => \uart_inst|clock_baud_rx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|count_bit_rx\(1));

-- Location: LCCOMB_X38_Y38_N22
\uart_inst|data_read[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|data_read[0]~0_combout\ = (!\uart_inst|count_bit_rx\(1) & (\uart_inst|count_bit_rx\(3) & (!\uart_inst|count_bit_rx\(2) & \uart_inst|count_bit_rx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|count_bit_rx\(1),
	datab => \uart_inst|count_bit_rx\(3),
	datac => \uart_inst|count_bit_rx\(2),
	datad => \uart_inst|count_bit_rx\(0),
	combout => \uart_inst|data_read[0]~0_combout\);

-- Location: LCCOMB_X38_Y38_N24
\uart_inst|rx_valid_stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|rx_valid_stop~0_combout\ = (\uart_inst|data_read[0]~0_combout\ & ((\uart_inst|serial_rx_ff~q\))) # (!\uart_inst|data_read[0]~0_combout\ & (\uart_inst|rx_valid_stop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|data_read[0]~0_combout\,
	datac => \uart_inst|rx_valid_stop~q\,
	datad => \uart_inst|serial_rx_ff~q\,
	combout => \uart_inst|rx_valid_stop~0_combout\);

-- Location: FF_X38_Y38_N25
\uart_inst|rx_valid_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|rx_valid_stop~0_combout\,
	sclr => \uart_inst|ALT_INV_rx_busy~q\,
	ena => \uart_inst|clock_baud_rx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|rx_valid_stop~q\);

-- Location: LCCOMB_X38_Y38_N26
\uart_inst|rx_valid_start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|rx_valid_start~0_combout\ = (\uart_inst|Equal4~0_combout\ & (!\uart_inst|serial_rx_ff~q\)) # (!\uart_inst|Equal4~0_combout\ & ((\uart_inst|rx_valid_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|serial_rx_ff~q\,
	datac => \uart_inst|rx_valid_start~q\,
	datad => \uart_inst|Equal4~0_combout\,
	combout => \uart_inst|rx_valid_start~0_combout\);

-- Location: FF_X38_Y38_N27
\uart_inst|rx_valid_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|rx_valid_start~0_combout\,
	sclr => \uart_inst|ALT_INV_rx_busy~q\,
	ena => \uart_inst|clock_baud_rx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|rx_valid_start~q\);

-- Location: LCCOMB_X38_Y38_N16
\uart_inst|buffer_rx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|buffer_rx~0_combout\ = (\uart_inst|serial_rx_ff~q\ & \uart_inst|rx_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|serial_rx_ff~q\,
	datad => \uart_inst|rx_busy~q\,
	combout => \uart_inst|buffer_rx~0_combout\);

-- Location: LCCOMB_X38_Y38_N8
\uart_inst|buffer_rx[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|buffer_rx[0]~2_combout\ = (\uart_inst|clock_baud_rx~q\ & (((!\uart_inst|Equal4~0_combout\ & !\uart_inst|data_read[0]~0_combout\)) # (!\uart_inst|rx_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|rx_busy~q\,
	datab => \uart_inst|Equal4~0_combout\,
	datac => \uart_inst|data_read[0]~0_combout\,
	datad => \uart_inst|clock_baud_rx~q\,
	combout => \uart_inst|buffer_rx[0]~2_combout\);

-- Location: FF_X38_Y38_N17
\uart_inst|buffer_rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|buffer_rx~0_combout\,
	ena => \uart_inst|buffer_rx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|buffer_rx\(7));

-- Location: LCCOMB_X41_Y38_N28
\uart_inst|buffer_rx~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|buffer_rx~8_combout\ = (\uart_inst|rx_busy~q\ & \uart_inst|buffer_rx\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|rx_busy~q\,
	datad => \uart_inst|buffer_rx\(7),
	combout => \uart_inst|buffer_rx~8_combout\);

-- Location: FF_X41_Y38_N29
\uart_inst|buffer_rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|buffer_rx~8_combout\,
	ena => \uart_inst|buffer_rx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|buffer_rx\(6));

-- Location: LCCOMB_X41_Y38_N26
\uart_inst|buffer_rx~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|buffer_rx~7_combout\ = (\uart_inst|rx_busy~q\ & \uart_inst|buffer_rx\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|rx_busy~q\,
	datad => \uart_inst|buffer_rx\(6),
	combout => \uart_inst|buffer_rx~7_combout\);

-- Location: FF_X41_Y38_N27
\uart_inst|buffer_rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|buffer_rx~7_combout\,
	ena => \uart_inst|buffer_rx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|buffer_rx\(5));

-- Location: LCCOMB_X41_Y38_N0
\uart_inst|buffer_rx~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|buffer_rx~6_combout\ = (\uart_inst|buffer_rx\(5) & \uart_inst|rx_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|buffer_rx\(5),
	datac => \uart_inst|rx_busy~q\,
	combout => \uart_inst|buffer_rx~6_combout\);

-- Location: FF_X41_Y38_N1
\uart_inst|buffer_rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|buffer_rx~6_combout\,
	ena => \uart_inst|buffer_rx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|buffer_rx\(4));

-- Location: LCCOMB_X41_Y38_N6
\uart_inst|buffer_rx~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|buffer_rx~5_combout\ = (\uart_inst|rx_busy~q\ & \uart_inst|buffer_rx\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|rx_busy~q\,
	datad => \uart_inst|buffer_rx\(4),
	combout => \uart_inst|buffer_rx~5_combout\);

-- Location: FF_X41_Y38_N7
\uart_inst|buffer_rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|buffer_rx~5_combout\,
	ena => \uart_inst|buffer_rx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|buffer_rx\(3));

-- Location: LCCOMB_X41_Y38_N12
\uart_inst|buffer_rx~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|buffer_rx~4_combout\ = (\uart_inst|rx_busy~q\ & \uart_inst|buffer_rx\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|rx_busy~q\,
	datad => \uart_inst|buffer_rx\(3),
	combout => \uart_inst|buffer_rx~4_combout\);

-- Location: FF_X41_Y38_N13
\uart_inst|buffer_rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|buffer_rx~4_combout\,
	ena => \uart_inst|buffer_rx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|buffer_rx\(2));

-- Location: LCCOMB_X41_Y38_N18
\uart_inst|buffer_rx~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|buffer_rx~3_combout\ = (\uart_inst|rx_busy~q\ & \uart_inst|buffer_rx\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|rx_busy~q\,
	datad => \uart_inst|buffer_rx\(2),
	combout => \uart_inst|buffer_rx~3_combout\);

-- Location: FF_X41_Y38_N19
\uart_inst|buffer_rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|buffer_rx~3_combout\,
	ena => \uart_inst|buffer_rx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|buffer_rx\(1));

-- Location: LCCOMB_X41_Y38_N24
\uart_inst|buffer_rx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|buffer_rx~1_combout\ = (\uart_inst|rx_busy~q\ & \uart_inst|buffer_rx\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|rx_busy~q\,
	datad => \uart_inst|buffer_rx\(1),
	combout => \uart_inst|buffer_rx~1_combout\);

-- Location: FF_X41_Y38_N25
\uart_inst|buffer_rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|buffer_rx~1_combout\,
	ena => \uart_inst|buffer_rx[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|buffer_rx\(0));

-- Location: LCCOMB_X41_Y38_N8
\uart_inst|data_read[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|data_read[0]~feeder_combout\ = \uart_inst|buffer_rx\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|buffer_rx\(0),
	combout => \uart_inst|data_read[0]~feeder_combout\);

-- Location: LCCOMB_X38_Y38_N2
\uart_inst|data_read[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|data_read[0]~1_combout\ = (\uart_inst|rx_valid_start~q\ & (\uart_inst|buffer_rx~0_combout\ & (\uart_inst|data_read[0]~0_combout\ & \uart_inst|clock_baud_rx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|rx_valid_start~q\,
	datab => \uart_inst|buffer_rx~0_combout\,
	datac => \uart_inst|data_read[0]~0_combout\,
	datad => \uart_inst|clock_baud_rx~q\,
	combout => \uart_inst|data_read[0]~1_combout\);

-- Location: FF_X41_Y38_N9
\uart_inst|data_read[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|data_read[0]~feeder_combout\,
	ena => \uart_inst|data_read[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|data_read\(0));

-- Location: LCCOMB_X41_Y42_N26
\uart_inst|serial_read_o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|serial_read_o[0]~0_combout\ = (\uart_inst|rx_valid_stop~q\ & (\uart_inst|rx_valid_start~q\ & \uart_inst|data_read\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|rx_valid_stop~q\,
	datac => \uart_inst|rx_valid_start~q\,
	datad => \uart_inst|data_read\(0),
	combout => \uart_inst|serial_read_o[0]~0_combout\);

-- Location: LCCOMB_X38_Y41_N0
\count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~5_combout\ = count(1) $ (VCC)
-- \count[1]~6\ = CARRY(count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	combout => \count[1]~5_combout\,
	cout => \count[1]~6\);

-- Location: LCCOMB_X38_Y41_N4
\count[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~9_combout\ = (count(3) & (\count[2]~8\ $ (GND))) # (!count(3) & (!\count[2]~8\ & VCC))
-- \count[3]~10\ = CARRY((count(3) & !\count[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \count[2]~8\,
	combout => \count[3]~9_combout\,
	cout => \count[3]~10\);

-- Location: LCCOMB_X38_Y41_N6
\count[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~11_combout\ = (count(4) & (!\count[3]~10\)) # (!count(4) & ((\count[3]~10\) # (GND)))
-- \count[4]~12\ = CARRY((!\count[3]~10\) # (!count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \count[3]~10\,
	combout => \count[4]~11_combout\,
	cout => \count[4]~12\);

-- Location: LCCOMB_X12_Y23_N6
\flag_rd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_rd~0_combout\ = (\uart_inst|rx_busy~q\) # ((\flag_rd~q\ & ((!\uart_inst|rx_valid_stop~q\) # (!\uart_inst|rx_valid_start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|rx_valid_start~q\,
	datab => \uart_inst|rx_valid_stop~q\,
	datac => \flag_rd~q\,
	datad => \uart_inst|rx_busy~q\,
	combout => \flag_rd~0_combout\);

-- Location: FF_X12_Y23_N7
flag_rd : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \flag_rd~0_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag_rd~q\);

-- Location: LCCOMB_X38_Y38_N10
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\uart_inst|rx_valid_start~q\ & (\uart_inst|rx_valid_stop~q\ & (\flag_rd~q\ & !\uart_inst|rx_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|rx_valid_start~q\,
	datab => \uart_inst|rx_valid_stop~q\,
	datac => \flag_rd~q\,
	datad => \uart_inst|rx_busy~q\,
	combout => \process_0~0_combout\);

-- Location: FF_X38_Y41_N7
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \count[4]~11_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \LessThan0~0_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X38_Y41_N18
\word~711\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~711_combout\ = (count(4) & count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => count(2),
	combout => \word~711_combout\);

-- Location: LCCOMB_X38_Y41_N8
\count[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~13_combout\ = count(5) $ (!\count[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	cin => \count[4]~12\,
	combout => \count[5]~13_combout\);

-- Location: FF_X38_Y41_N9
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \count[5]~13_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \LessThan0~0_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X38_Y41_N20
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (count(5)) # ((\word~711_combout\ & (count(3) & count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~711_combout\,
	datab => count(5),
	datac => count(3),
	datad => count(1),
	combout => \LessThan0~0_combout\);

-- Location: FF_X38_Y41_N1
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \count[1]~5_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \LessThan0~0_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X38_Y41_N2
\count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~7_combout\ = (count(2) & (!\count[1]~6\)) # (!count(2) & ((\count[1]~6\) # (GND)))
-- \count[2]~8\ = CARRY((!\count[1]~6\) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~6\,
	combout => \count[2]~7_combout\,
	cout => \count[2]~8\);

-- Location: FF_X38_Y41_N3
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \count[2]~7_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \LessThan0~0_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: FF_X38_Y41_N5
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \count[3]~9_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sclr => \LessThan0~0_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X37_Y39_N16
\word~712\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~712_combout\ = (!count(1) & (\process_0~0_combout\ & (!\reset_synch_50mhz_inst|r_rst_sync_2~q\ & !count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \process_0~0_combout\,
	datac => \reset_synch_50mhz_inst|r_rst_sync_2~q\,
	datad => count(5),
	combout => \word~712_combout\);

-- Location: LCCOMB_X42_Y42_N30
\word~715\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~715_combout\ = (count(3) & (\word~712_combout\ & (count(4) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \word~712_combout\,
	datac => count(4),
	datad => count(2),
	combout => \word~715_combout\);

-- Location: FF_X42_Y40_N9
\word~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~215_q\);

-- Location: LCCOMB_X43_Y40_N24
\word~471feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~471feeder_combout\ = \uart_inst|serial_read_o[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[0]~0_combout\,
	combout => \word~471feeder_combout\);

-- Location: LCCOMB_X38_Y41_N12
\word~713\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~713_combout\ = (\process_0~0_combout\ & (!\reset_synch_50mhz_inst|r_rst_sync_2~q\ & (count(5) & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \reset_synch_50mhz_inst|r_rst_sync_2~q\,
	datac => count(5),
	datad => count(1),
	combout => \word~713_combout\);

-- Location: LCCOMB_X38_Y41_N30
\word~714\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~714_combout\ = (\word~713_combout\ & (!count(2) & (count(3) & count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~713_combout\,
	datab => count(2),
	datac => count(3),
	datad => count(4),
	combout => \word~714_combout\);

-- Location: FF_X43_Y40_N25
\word~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~471feeder_combout\,
	ena => \word~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~471_q\);

-- Location: LCCOMB_X42_Y40_N8
\word~543\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~543_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|cnt_data\(2)) # ((\word~471_q\)))) # (!\inst_lcd_top|cnt_data\(5) & (!\inst_lcd_top|cnt_data\(2) & (\word~215_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~215_q\,
	datad => \word~471_q\,
	combout => \word~543_combout\);

-- Location: LCCOMB_X41_Y40_N14
\word~740\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~740_combout\ = (count(3) & (count(4) & (\word~712_combout\ & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => \word~712_combout\,
	datad => count(2),
	combout => \word~740_combout\);

-- Location: FF_X41_Y40_N9
\word~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~247_q\);

-- Location: LCCOMB_X42_Y42_N20
\word~741\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~741_combout\ = (count(3) & (\word~713_combout\ & (count(4) & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \word~713_combout\,
	datac => count(4),
	datad => count(2),
	combout => \word~741_combout\);

-- Location: FF_X39_Y40_N9
\word~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~503_q\);

-- Location: LCCOMB_X41_Y40_N8
\word~544\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~544_combout\ = (\inst_lcd_top|cnt_data\(2) & ((\word~543_combout\ & ((\word~503_q\))) # (!\word~543_combout\ & (\word~247_q\)))) # (!\inst_lcd_top|cnt_data\(2) & (\word~543_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \word~543_combout\,
	datac => \word~247_q\,
	datad => \word~503_q\,
	combout => \word~544_combout\);

-- Location: LCCOMB_X43_Y40_N18
\word~407feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~407feeder_combout\ = \uart_inst|serial_read_o[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[0]~0_combout\,
	combout => \word~407feeder_combout\);

-- Location: LCCOMB_X38_Y41_N28
\word~720\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~720_combout\ = (\word~713_combout\ & (!count(2) & (!count(3) & count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~713_combout\,
	datab => count(2),
	datac => count(3),
	datad => count(4),
	combout => \word~720_combout\);

-- Location: FF_X43_Y40_N19
\word~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~407feeder_combout\,
	ena => \word~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~407_q\);

-- Location: LCCOMB_X44_Y40_N28
\word~721\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~721_combout\ = (!count(3) & (count(4) & (\word~712_combout\ & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => \word~712_combout\,
	datad => count(2),
	combout => \word~721_combout\);

-- Location: FF_X44_Y40_N3
\word~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~151_q\);

-- Location: LCCOMB_X44_Y40_N2
\word~547\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~547_combout\ = (\inst_lcd_top|cnt_data\(2) & (((\inst_lcd_top|cnt_data\(5))))) # (!\inst_lcd_top|cnt_data\(2) & ((\inst_lcd_top|cnt_data\(5) & (\word~407_q\)) # (!\inst_lcd_top|cnt_data\(5) & ((\word~151_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \word~407_q\,
	datac => \word~151_q\,
	datad => \inst_lcd_top|cnt_data\(5),
	combout => \word~547_combout\);

-- Location: LCCOMB_X38_Y41_N14
\word~745\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~745_combout\ = (\word~713_combout\ & (count(2) & (!count(3) & count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~713_combout\,
	datab => count(2),
	datac => count(3),
	datad => count(4),
	combout => \word~745_combout\);

-- Location: FF_X39_Y40_N27
\word~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~439_q\);

-- Location: LCCOMB_X44_Y40_N30
\word~744\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~744_combout\ = (!count(3) & (count(4) & (\word~712_combout\ & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => \word~712_combout\,
	datad => count(2),
	combout => \word~744_combout\);

-- Location: FF_X44_Y40_N1
\word~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~183_q\);

-- Location: LCCOMB_X39_Y40_N26
\word~548\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~548_combout\ = (\word~547_combout\ & (((\word~439_q\)) # (!\inst_lcd_top|cnt_data\(2)))) # (!\word~547_combout\ & (\inst_lcd_top|cnt_data\(2) & ((\word~183_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~547_combout\,
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~439_q\,
	datad => \word~183_q\,
	combout => \word~548_combout\);

-- Location: LCCOMB_X44_Y39_N8
\word~199feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~199feeder_combout\ = \uart_inst|serial_read_o[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[0]~0_combout\,
	combout => \word~199feeder_combout\);

-- Location: LCCOMB_X38_Y41_N24
\word~716\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~716_combout\ = (\process_0~0_combout\ & (!\reset_synch_50mhz_inst|r_rst_sync_2~q\ & (!count(5) & count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \reset_synch_50mhz_inst|r_rst_sync_2~q\,
	datac => count(5),
	datad => count(1),
	combout => \word~716_combout\);

-- Location: LCCOMB_X44_Y39_N28
\word~742\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~742_combout\ = (!count(3) & (count(4) & (\word~716_combout\ & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => \word~716_combout\,
	datad => count(2),
	combout => \word~742_combout\);

-- Location: FF_X44_Y39_N9
\word~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~199feeder_combout\,
	ena => \word~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~199_q\);

-- Location: LCCOMB_X38_Y41_N10
\word~717\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~717_combout\ = (\process_0~0_combout\ & (!\reset_synch_50mhz_inst|r_rst_sync_2~q\ & (count(5) & count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \reset_synch_50mhz_inst|r_rst_sync_2~q\,
	datac => count(5),
	datad => count(1),
	combout => \word~717_combout\);

-- Location: LCCOMB_X42_Y42_N14
\word~743\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~743_combout\ = (!count(3) & (\word~717_combout\ & (count(4) & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \word~717_combout\,
	datac => count(4),
	datad => count(2),
	combout => \word~743_combout\);

-- Location: FF_X43_Y39_N11
\word~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~455_q\);

-- Location: LCCOMB_X43_Y39_N30
\word~719\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~719_combout\ = (!count(3) & (!count(2) & (\word~716_combout\ & count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => \word~716_combout\,
	datad => count(4),
	combout => \word~719_combout\);

-- Location: FF_X43_Y39_N25
\word~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~167_q\);

-- Location: LCCOMB_X43_Y42_N0
\word~718\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~718_combout\ = (\word~717_combout\ & (!count(3) & (count(4) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~717_combout\,
	datab => count(3),
	datac => count(4),
	datad => count(2),
	combout => \word~718_combout\);

-- Location: FF_X42_Y42_N17
\word~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~423_q\);

-- Location: LCCOMB_X43_Y39_N24
\word~545\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~545_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|cnt_data\(2)) # ((\word~423_q\)))) # (!\inst_lcd_top|cnt_data\(5) & (!\inst_lcd_top|cnt_data\(2) & (\word~167_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~167_q\,
	datad => \word~423_q\,
	combout => \word~545_combout\);

-- Location: LCCOMB_X43_Y39_N10
\word~546\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~546_combout\ = (\inst_lcd_top|cnt_data\(2) & ((\word~545_combout\ & ((\word~455_q\))) # (!\word~545_combout\ & (\word~199_q\)))) # (!\inst_lcd_top|cnt_data\(2) & (((\word~545_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \word~199_q\,
	datac => \word~455_q\,
	datad => \word~545_combout\,
	combout => \word~546_combout\);

-- Location: LCCOMB_X39_Y39_N16
\word~549\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~549_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(3)) # ((\word~546_combout\)))) # (!\inst_lcd_top|cnt_data\(1) & (!\inst_lcd_top|cnt_data\(3) & (\word~548_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~548_combout\,
	datad => \word~546_combout\,
	combout => \word~549_combout\);

-- Location: LCCOMB_X41_Y41_N6
\word~722\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~722_combout\ = (\word~717_combout\ & (!count(2) & (count(4) & count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~717_combout\,
	datab => count(2),
	datac => count(4),
	datad => count(3),
	combout => \word~722_combout\);

-- Location: FF_X41_Y41_N25
\word~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~487_q\);

-- Location: LCCOMB_X44_Y39_N14
\word~723\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~723_combout\ = (count(3) & (count(4) & (\word~716_combout\ & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => \word~716_combout\,
	datad => count(2),
	combout => \word~723_combout\);

-- Location: FF_X41_Y39_N17
\word~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~231_q\);

-- Location: LCCOMB_X41_Y39_N16
\word~550\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~550_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\word~487_q\) # ((\inst_lcd_top|cnt_data\(2))))) # (!\inst_lcd_top|cnt_data\(5) & (((\word~231_q\ & !\inst_lcd_top|cnt_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~487_q\,
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~231_q\,
	datad => \inst_lcd_top|cnt_data\(2),
	combout => \word~550_combout\);

-- Location: LCCOMB_X42_Y39_N30
\word~747\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~747_combout\ = (count(3) & (count(4) & (count(2) & \word~717_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => count(2),
	datad => \word~717_combout\,
	combout => \word~747_combout\);

-- Location: FF_X42_Y39_N27
\word~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~519_q\);

-- Location: LCCOMB_X44_Y39_N30
\word~746\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~746_combout\ = (count(3) & (count(4) & (\word~716_combout\ & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => \word~716_combout\,
	datad => count(2),
	combout => \word~746_combout\);

-- Location: FF_X42_Y39_N17
\word~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~263_q\);

-- Location: LCCOMB_X42_Y39_N26
\word~551\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~551_combout\ = (\word~550_combout\ & (((\word~519_q\)) # (!\inst_lcd_top|cnt_data\(2)))) # (!\word~550_combout\ & (\inst_lcd_top|cnt_data\(2) & ((\word~263_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~550_combout\,
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~519_q\,
	datad => \word~263_q\,
	combout => \word~551_combout\);

-- Location: LCCOMB_X39_Y39_N2
\word~552\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~552_combout\ = (\word~549_combout\ & (((\word~551_combout\) # (!\inst_lcd_top|cnt_data\(3))))) # (!\word~549_combout\ & (\word~544_combout\ & (\inst_lcd_top|cnt_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~544_combout\,
	datab => \word~549_combout\,
	datac => \inst_lcd_top|cnt_data\(3),
	datad => \word~551_combout\,
	combout => \word~552_combout\);

-- Location: LCCOMB_X38_Y41_N16
\word~732\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~732_combout\ = (\word~713_combout\ & (!count(2) & (!count(3) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~713_combout\,
	datab => count(2),
	datac => count(3),
	datad => count(4),
	combout => \word~732_combout\);

-- Location: FF_X43_Y41_N27
\word~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~279_q\);

-- Location: LCCOMB_X42_Y42_N0
\word~735\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~735_combout\ = (!count(3) & (\word~717_combout\ & (!count(4) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \word~717_combout\,
	datac => count(4),
	datad => count(2),
	combout => \word~735_combout\);

-- Location: FF_X42_Y42_N11
\word~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~295_q\);

-- Location: LCCOMB_X42_Y42_N22
\word~734\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~734_combout\ = (!count(3) & (\word~712_combout\ & (!count(4) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \word~712_combout\,
	datac => count(4),
	datad => count(2),
	combout => \word~734_combout\);

-- Location: FF_X44_Y41_N11
\word~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~23_q\);

-- Location: LCCOMB_X44_Y39_N18
\word~733\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~733_combout\ = (!count(3) & (!count(4) & (\word~716_combout\ & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => \word~716_combout\,
	datad => count(2),
	combout => \word~733_combout\);

-- Location: FF_X44_Y41_N1
\word~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~39_q\);

-- Location: LCCOMB_X44_Y41_N10
\word~557\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~557_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(5)) # ((\word~39_q\)))) # (!\inst_lcd_top|cnt_data\(1) & (!\inst_lcd_top|cnt_data\(5) & (\word~23_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~23_q\,
	datad => \word~39_q\,
	combout => \word~557_combout\);

-- Location: LCCOMB_X42_Y42_N10
\word~558\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~558_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\word~557_combout\ & ((\word~295_q\))) # (!\word~557_combout\ & (\word~279_q\)))) # (!\inst_lcd_top|cnt_data\(5) & (((\word~557_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \word~279_q\,
	datac => \word~295_q\,
	datad => \word~557_combout\,
	combout => \word~558_combout\);

-- Location: LCCOMB_X38_Y41_N22
\word~728\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~728_combout\ = (\word~713_combout\ & (count(2) & (!count(3) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~713_combout\,
	datab => count(2),
	datac => count(3),
	datad => count(4),
	combout => \word~728_combout\);

-- Location: FF_X39_Y42_N1
\word~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~311_q\);

-- Location: LCCOMB_X43_Y42_N12
\word~731\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~731_combout\ = (\word~717_combout\ & (!count(3) & (!count(4) & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~717_combout\,
	datab => count(3),
	datac => count(4),
	datad => count(2),
	combout => \word~731_combout\);

-- Location: FF_X43_Y42_N9
\word~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~327_q\);

-- Location: LCCOMB_X42_Y42_N12
\word~730\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~730_combout\ = (!count(3) & (\word~712_combout\ & (!count(4) & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \word~712_combout\,
	datac => count(4),
	datad => count(2),
	combout => \word~730_combout\);

-- Location: FF_X44_Y42_N27
\word~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~55_q\);

-- Location: LCCOMB_X44_Y42_N28
\word~729\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~729_combout\ = (!count(3) & (!count(4) & (\word~716_combout\ & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => \word~716_combout\,
	datad => count(2),
	combout => \word~729_combout\);

-- Location: FF_X44_Y42_N1
\word~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~71_q\);

-- Location: LCCOMB_X44_Y42_N26
\word~555\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~555_combout\ = (\inst_lcd_top|cnt_data\(5) & (\inst_lcd_top|cnt_data\(1))) # (!\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|cnt_data\(1) & ((\word~71_q\))) # (!\inst_lcd_top|cnt_data\(1) & (\word~55_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \inst_lcd_top|cnt_data\(1),
	datac => \word~55_q\,
	datad => \word~71_q\,
	combout => \word~555_combout\);

-- Location: LCCOMB_X43_Y42_N8
\word~556\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~556_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\word~555_combout\ & ((\word~327_q\))) # (!\word~555_combout\ & (\word~311_q\)))) # (!\inst_lcd_top|cnt_data\(5) & (((\word~555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~311_q\,
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~327_q\,
	datad => \word~555_combout\,
	combout => \word~556_combout\);

-- Location: LCCOMB_X42_Y42_N28
\word~559\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~559_combout\ = (\inst_lcd_top|cnt_data\(2) & (((\inst_lcd_top|cnt_data\(3)) # (\word~556_combout\)))) # (!\inst_lcd_top|cnt_data\(2) & (\word~558_combout\ & (!\inst_lcd_top|cnt_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~558_combout\,
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \inst_lcd_top|cnt_data\(3),
	datad => \word~556_combout\,
	combout => \word~559_combout\);

-- Location: LCCOMB_X42_Y42_N26
\word~738\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~738_combout\ = (count(3) & (\word~712_combout\ & (!count(4) & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \word~712_combout\,
	datac => count(4),
	datad => count(2),
	combout => \word~738_combout\);

-- Location: FF_X41_Y40_N27
\word~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~119_q\);

-- Location: LCCOMB_X41_Y42_N22
\word~737\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~737_combout\ = (count(3) & (\word~716_combout\ & (!count(4) & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \word~716_combout\,
	datac => count(4),
	datad => count(2),
	combout => \word~737_combout\);

-- Location: FF_X41_Y42_N9
\word~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~135_q\);

-- Location: LCCOMB_X41_Y40_N26
\word~560\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~560_combout\ = (\inst_lcd_top|cnt_data\(5) & (\inst_lcd_top|cnt_data\(1))) # (!\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|cnt_data\(1) & ((\word~135_q\))) # (!\inst_lcd_top|cnt_data\(1) & (\word~119_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \inst_lcd_top|cnt_data\(1),
	datac => \word~119_q\,
	datad => \word~135_q\,
	combout => \word~560_combout\);

-- Location: LCCOMB_X38_Y41_N26
\word~736\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~736_combout\ = (\word~713_combout\ & (count(2) & (count(3) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~713_combout\,
	datab => count(2),
	datac => count(3),
	datad => count(4),
	combout => \word~736_combout\);

-- Location: FF_X39_Y42_N3
\word~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~375_q\);

-- Location: LCCOMB_X43_Y42_N14
\word~739\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~739_combout\ = (\word~717_combout\ & (count(3) & (!count(4) & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~717_combout\,
	datab => count(3),
	datac => count(4),
	datad => count(2),
	combout => \word~739_combout\);

-- Location: FF_X41_Y42_N27
\word~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|serial_read_o[0]~0_combout\,
	ena => \word~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~391_q\);

-- Location: LCCOMB_X39_Y42_N2
\word~561\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~561_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\word~560_combout\ & ((\word~391_q\))) # (!\word~560_combout\ & (\word~375_q\)))) # (!\inst_lcd_top|cnt_data\(5) & (\word~560_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \word~560_combout\,
	datac => \word~375_q\,
	datad => \word~391_q\,
	combout => \word~561_combout\);

-- Location: LCCOMB_X42_Y42_N18
\word~726\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~726_combout\ = (count(3) & (\word~712_combout\ & (!count(4) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \word~712_combout\,
	datac => count(4),
	datad => count(2),
	combout => \word~726_combout\);

-- Location: FF_X42_Y41_N17
\word~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~87_q\);

-- Location: LCCOMB_X44_Y39_N0
\word~725\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~725_combout\ = (count(3) & (!count(4) & (\word~716_combout\ & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => \word~716_combout\,
	datad => count(2),
	combout => \word~725_combout\);

-- Location: FF_X41_Y41_N3
\word~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~103_q\);

-- Location: LCCOMB_X42_Y41_N16
\word~553\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~553_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(5)) # ((\word~103_q\)))) # (!\inst_lcd_top|cnt_data\(1) & (!\inst_lcd_top|cnt_data\(5) & (\word~87_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~87_q\,
	datad => \word~103_q\,
	combout => \word~553_combout\);

-- Location: LCCOMB_X42_Y42_N8
\word~724\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~724_combout\ = (count(3) & (\word~713_combout\ & (!count(4) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \word~713_combout\,
	datac => count(4),
	datad => count(2),
	combout => \word~724_combout\);

-- Location: FF_X43_Y41_N17
\word~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~343_q\);

-- Location: LCCOMB_X43_Y42_N26
\word~727\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~727_combout\ = (\word~717_combout\ & (count(3) & (!count(4) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~717_combout\,
	datab => count(3),
	datac => count(4),
	datad => count(2),
	combout => \word~727_combout\);

-- Location: FF_X42_Y41_N27
\word~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[0]~0_combout\,
	sload => VCC,
	ena => \word~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~359_q\);

-- Location: LCCOMB_X43_Y41_N16
\word~554\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~554_combout\ = (\word~553_combout\ & (((\word~359_q\)) # (!\inst_lcd_top|cnt_data\(5)))) # (!\word~553_combout\ & (\inst_lcd_top|cnt_data\(5) & (\word~343_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~553_combout\,
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~343_q\,
	datad => \word~359_q\,
	combout => \word~554_combout\);

-- Location: LCCOMB_X39_Y39_N20
\word~562\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~562_combout\ = (\word~559_combout\ & ((\word~561_combout\) # ((!\inst_lcd_top|cnt_data\(3))))) # (!\word~559_combout\ & (((\inst_lcd_top|cnt_data\(3) & \word~554_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~559_combout\,
	datab => \word~561_combout\,
	datac => \inst_lcd_top|cnt_data\(3),
	datad => \word~554_combout\,
	combout => \word~562_combout\);

-- Location: LCCOMB_X39_Y39_N14
\word~563\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~563_combout\ = (!\inst_lcd_top|cnt_data\(0) & ((\inst_lcd_top|cnt_data\(4) & (\word~552_combout\)) # (!\inst_lcd_top|cnt_data\(4) & ((\word~562_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(0),
	datab => \word~552_combout\,
	datac => \inst_lcd_top|cnt_data\(4),
	datad => \word~562_combout\,
	combout => \word~563_combout\);

-- Location: LCCOMB_X38_Y39_N24
\inst_lcd_top|data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|data[0]~feeder_combout\ = \word~563_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \word~563_combout\,
	combout => \inst_lcd_top|data[0]~feeder_combout\);

-- Location: LCCOMB_X36_Y39_N26
\inst_lcd_top|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|WideOr9~0_combout\ = (!\inst_lcd_top|EA.WAITLCD1~q\ & (\inst_lcd_top|EA.IDLE~q\ & !\inst_lcd_top|EA.BOOT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|EA.WAITLCD1~q\,
	datac => \inst_lcd_top|EA.IDLE~q\,
	datad => \inst_lcd_top|EA.BOOT~q\,
	combout => \inst_lcd_top|WideOr9~0_combout\);

-- Location: LCCOMB_X37_Y39_N20
\inst_lcd_top|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector17~1_combout\ = (\inst_lcd_top|EA.WRLCD~q\ & !\inst_lcd_top|cnt_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|EA.WRLCD~q\,
	datad => \inst_lcd_top|cnt_data\(0),
	combout => \inst_lcd_top|Selector17~1_combout\);

-- Location: LCCOMB_X36_Y39_N4
\inst_lcd_top|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector17~0_combout\ = (\inst_lcd_top|data\(6) & (((\inst_lcd_top|EA.TESTWORD~q\) # (\inst_lcd_top|EA.CLRLCD~q\)) # (!\inst_lcd_top|WideOr9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|WideOr9~0_combout\,
	datab => \inst_lcd_top|data\(6),
	datac => \inst_lcd_top|EA.TESTWORD~q\,
	datad => \inst_lcd_top|EA.CLRLCD~q\,
	combout => \inst_lcd_top|Selector17~0_combout\);

-- Location: LCCOMB_X41_Y38_N20
\uart_inst|data_read[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|data_read[6]~feeder_combout\ = \uart_inst|buffer_rx\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|buffer_rx\(6),
	combout => \uart_inst|data_read[6]~feeder_combout\);

-- Location: FF_X41_Y38_N21
\uart_inst|data_read[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|data_read[6]~feeder_combout\,
	ena => \uart_inst|data_read[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|data_read\(6));

-- Location: LCCOMB_X39_Y40_N2
\uart_inst|serial_read_o[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|serial_read_o[6]~6_combout\ = (\uart_inst|rx_valid_start~q\ & (\uart_inst|rx_valid_stop~q\ & \uart_inst|data_read\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|rx_valid_start~q\,
	datac => \uart_inst|rx_valid_stop~q\,
	datad => \uart_inst|data_read\(6),
	combout => \uart_inst|serial_read_o[6]~6_combout\);

-- Location: FF_X42_Y39_N15
\word~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~269_q\);

-- Location: FF_X42_Y39_N9
\word~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~525_q\);

-- Location: FF_X41_Y42_N11
\word~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~141_q\);

-- Location: FF_X41_Y42_N1
\word~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~397_q\);

-- Location: LCCOMB_X41_Y42_N10
\word~677\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~677_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|cnt_data\(4)) # ((\word~397_q\)))) # (!\inst_lcd_top|cnt_data\(5) & (!\inst_lcd_top|cnt_data\(4) & (\word~141_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~141_q\,
	datad => \word~397_q\,
	combout => \word~677_combout\);

-- Location: LCCOMB_X42_Y39_N8
\word~678\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~678_combout\ = (\inst_lcd_top|cnt_data\(4) & ((\word~677_combout\ & ((\word~525_q\))) # (!\word~677_combout\ & (\word~269_q\)))) # (!\inst_lcd_top|cnt_data\(4) & (((\word~677_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \word~269_q\,
	datac => \word~525_q\,
	datad => \word~677_combout\,
	combout => \word~678_combout\);

-- Location: FF_X39_Y39_N5
\word~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~45_q\);

-- Location: FF_X39_Y39_N19
\word~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~173_q\);

-- Location: LCCOMB_X39_Y39_N4
\word~674\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~674_combout\ = (\inst_lcd_top|cnt_data\(5) & (\inst_lcd_top|cnt_data\(4))) # (!\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|cnt_data\(4) & ((\word~173_q\))) # (!\inst_lcd_top|cnt_data\(4) & (\word~45_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~45_q\,
	datad => \word~173_q\,
	combout => \word~674_combout\);

-- Location: FF_X39_Y41_N21
\word~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~301_q\);

-- Location: FF_X39_Y41_N7
\word~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~429_q\);

-- Location: LCCOMB_X39_Y41_N6
\word~675\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~675_combout\ = (\word~674_combout\ & (((\word~429_q\) # (!\inst_lcd_top|cnt_data\(5))))) # (!\word~674_combout\ & (\word~301_q\ & ((\inst_lcd_top|cnt_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~674_combout\,
	datab => \word~301_q\,
	datac => \word~429_q\,
	datad => \inst_lcd_top|cnt_data\(5),
	combout => \word~675_combout\);

-- Location: FF_X41_Y41_N23
\word~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~109_q\);

-- Location: FF_X41_Y39_N3
\word~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~237_q\);

-- Location: LCCOMB_X41_Y41_N22
\word~672\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~672_combout\ = (\inst_lcd_top|cnt_data\(4) & ((\inst_lcd_top|cnt_data\(5)) # ((\word~237_q\)))) # (!\inst_lcd_top|cnt_data\(4) & (!\inst_lcd_top|cnt_data\(5) & (\word~109_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~109_q\,
	datad => \word~237_q\,
	combout => \word~672_combout\);

-- Location: FF_X41_Y41_N17
\word~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~493_q\);

-- Location: LCCOMB_X42_Y41_N24
\word~365feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~365feeder_combout\ = \uart_inst|serial_read_o[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[6]~6_combout\,
	combout => \word~365feeder_combout\);

-- Location: FF_X42_Y41_N25
\word~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~365feeder_combout\,
	ena => \word~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~365_q\);

-- Location: LCCOMB_X41_Y41_N16
\word~673\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~673_combout\ = (\word~672_combout\ & (((\word~493_q\)) # (!\inst_lcd_top|cnt_data\(5)))) # (!\word~672_combout\ & (\inst_lcd_top|cnt_data\(5) & ((\word~365_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~672_combout\,
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~493_q\,
	datad => \word~365_q\,
	combout => \word~673_combout\);

-- Location: LCCOMB_X39_Y41_N16
\word~676\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~676_combout\ = (\inst_lcd_top|cnt_data\(3) & (((\word~673_combout\) # (\inst_lcd_top|cnt_data\(2))))) # (!\inst_lcd_top|cnt_data\(3) & (\word~675_combout\ & ((!\inst_lcd_top|cnt_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~675_combout\,
	datab => \word~673_combout\,
	datac => \inst_lcd_top|cnt_data\(3),
	datad => \inst_lcd_top|cnt_data\(2),
	combout => \word~676_combout\);

-- Location: FF_X44_Y39_N17
\word~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~205_q\);

-- Location: FF_X43_Y39_N17
\word~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~461_q\);

-- Location: FF_X44_Y42_N17
\word~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~77_q\);

-- Location: FF_X43_Y42_N11
\word~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~333_q\);

-- Location: LCCOMB_X44_Y42_N16
\word~670\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~670_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|cnt_data\(4)) # ((\word~333_q\)))) # (!\inst_lcd_top|cnt_data\(5) & (!\inst_lcd_top|cnt_data\(4) & (\word~77_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~77_q\,
	datad => \word~333_q\,
	combout => \word~670_combout\);

-- Location: LCCOMB_X43_Y39_N16
\word~671\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~671_combout\ = (\inst_lcd_top|cnt_data\(4) & ((\word~670_combout\ & ((\word~461_q\))) # (!\word~670_combout\ & (\word~205_q\)))) # (!\inst_lcd_top|cnt_data\(4) & (((\word~670_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \word~205_q\,
	datac => \word~461_q\,
	datad => \word~670_combout\,
	combout => \word~671_combout\);

-- Location: LCCOMB_X39_Y41_N2
\word~679\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~679_combout\ = (\word~676_combout\ & ((\word~678_combout\) # ((!\inst_lcd_top|cnt_data\(2))))) # (!\word~676_combout\ & (((\word~671_combout\ & \inst_lcd_top|cnt_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~678_combout\,
	datab => \word~676_combout\,
	datac => \word~671_combout\,
	datad => \inst_lcd_top|cnt_data\(2),
	combout => \word~679_combout\);

-- Location: LCCOMB_X37_Y39_N22
\inst_lcd_top|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector17~2_combout\ = (\inst_lcd_top|Selector17~0_combout\) # ((\inst_lcd_top|cnt_data\(1) & (\inst_lcd_top|Selector17~1_combout\ & \word~679_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|Selector17~1_combout\,
	datac => \inst_lcd_top|Selector17~0_combout\,
	datad => \word~679_combout\,
	combout => \inst_lcd_top|Selector17~2_combout\);

-- Location: FF_X39_Y40_N3
\word~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|serial_read_o[6]~6_combout\,
	ena => \word~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~509_q\);

-- Location: FF_X39_Y40_N25
\word~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~445_q\);

-- Location: FF_X39_Y42_N13
\word~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~317_q\);

-- Location: FF_X39_Y42_N11
\word~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~381_q\);

-- Location: LCCOMB_X39_Y42_N12
\word~687\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~687_combout\ = (\inst_lcd_top|cnt_data\(4) & (\inst_lcd_top|cnt_data\(3))) # (!\inst_lcd_top|cnt_data\(4) & ((\inst_lcd_top|cnt_data\(3) & ((\word~381_q\))) # (!\inst_lcd_top|cnt_data\(3) & (\word~317_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~317_q\,
	datad => \word~381_q\,
	combout => \word~687_combout\);

-- Location: LCCOMB_X39_Y40_N24
\word~688\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~688_combout\ = (\inst_lcd_top|cnt_data\(4) & ((\word~687_combout\ & (\word~509_q\)) # (!\word~687_combout\ & ((\word~445_q\))))) # (!\inst_lcd_top|cnt_data\(4) & (((\word~687_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \word~509_q\,
	datac => \word~445_q\,
	datad => \word~687_combout\,
	combout => \word~688_combout\);

-- Location: FF_X41_Y40_N11
\word~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~253_q\);

-- Location: FF_X44_Y40_N23
\word~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~189_q\);

-- Location: FF_X45_Y42_N9
\word~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~61_q\);

-- Location: FF_X41_Y40_N1
\word~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~125_q\);

-- Location: LCCOMB_X45_Y42_N8
\word~680\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~680_combout\ = (\inst_lcd_top|cnt_data\(4) & (\inst_lcd_top|cnt_data\(3))) # (!\inst_lcd_top|cnt_data\(4) & ((\inst_lcd_top|cnt_data\(3) & ((\word~125_q\))) # (!\inst_lcd_top|cnt_data\(3) & (\word~61_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~61_q\,
	datad => \word~125_q\,
	combout => \word~680_combout\);

-- Location: LCCOMB_X44_Y40_N22
\word~681\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~681_combout\ = (\inst_lcd_top|cnt_data\(4) & ((\word~680_combout\ & (\word~253_q\)) # (!\word~680_combout\ & ((\word~189_q\))))) # (!\inst_lcd_top|cnt_data\(4) & (((\word~680_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~253_q\,
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~189_q\,
	datad => \word~680_combout\,
	combout => \word~681_combout\);

-- Location: FF_X43_Y40_N9
\word~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~413_q\);

-- Location: FF_X43_Y40_N3
\word~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~477_q\);

-- Location: FF_X43_Y41_N11
\word~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~285_q\);

-- Location: FF_X43_Y41_N1
\word~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~349_q\);

-- Location: LCCOMB_X43_Y41_N10
\word~682\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~682_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\inst_lcd_top|cnt_data\(4)) # ((\word~349_q\)))) # (!\inst_lcd_top|cnt_data\(3) & (!\inst_lcd_top|cnt_data\(4) & (\word~285_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~285_q\,
	datad => \word~349_q\,
	combout => \word~682_combout\);

-- Location: LCCOMB_X43_Y40_N2
\word~683\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~683_combout\ = (\inst_lcd_top|cnt_data\(4) & ((\word~682_combout\ & ((\word~477_q\))) # (!\word~682_combout\ & (\word~413_q\)))) # (!\inst_lcd_top|cnt_data\(4) & (((\word~682_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \word~413_q\,
	datac => \word~477_q\,
	datad => \word~682_combout\,
	combout => \word~683_combout\);

-- Location: FF_X42_Y40_N31
\word~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~29_q\);

-- Location: LCCOMB_X42_Y41_N10
\word~93feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~93feeder_combout\ = \uart_inst|serial_read_o[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[6]~6_combout\,
	combout => \word~93feeder_combout\);

-- Location: FF_X42_Y41_N11
\word~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~93feeder_combout\,
	ena => \word~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~93_q\);

-- Location: LCCOMB_X42_Y40_N30
\word~684\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~684_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\inst_lcd_top|cnt_data\(4)) # ((\word~93_q\)))) # (!\inst_lcd_top|cnt_data\(3) & (!\inst_lcd_top|cnt_data\(4) & (\word~29_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~29_q\,
	datad => \word~93_q\,
	combout => \word~684_combout\);

-- Location: FF_X42_Y40_N17
\word~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~221_q\);

-- Location: FF_X44_Y40_N17
\word~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[6]~6_combout\,
	sload => VCC,
	ena => \word~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~157_q\);

-- Location: LCCOMB_X42_Y40_N16
\word~685\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~685_combout\ = (\word~684_combout\ & (((\word~221_q\)) # (!\inst_lcd_top|cnt_data\(4)))) # (!\word~684_combout\ & (\inst_lcd_top|cnt_data\(4) & ((\word~157_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~684_combout\,
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~221_q\,
	datad => \word~157_q\,
	combout => \word~685_combout\);

-- Location: LCCOMB_X42_Y40_N18
\word~686\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~686_combout\ = (\inst_lcd_top|cnt_data\(2) & (((\inst_lcd_top|cnt_data\(5))))) # (!\inst_lcd_top|cnt_data\(2) & ((\inst_lcd_top|cnt_data\(5) & (\word~683_combout\)) # (!\inst_lcd_top|cnt_data\(5) & ((\word~685_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~683_combout\,
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \inst_lcd_top|cnt_data\(5),
	datad => \word~685_combout\,
	combout => \word~686_combout\);

-- Location: LCCOMB_X42_Y40_N28
\word~689\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~689_combout\ = (\inst_lcd_top|cnt_data\(2) & ((\word~686_combout\ & (\word~688_combout\)) # (!\word~686_combout\ & ((\word~681_combout\))))) # (!\inst_lcd_top|cnt_data\(2) & (((\word~686_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~688_combout\,
	datab => \word~681_combout\,
	datac => \inst_lcd_top|cnt_data\(2),
	datad => \word~686_combout\,
	combout => \word~689_combout\);

-- Location: LCCOMB_X37_Y39_N28
\inst_lcd_top|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector17~3_combout\ = (\inst_lcd_top|EA.LINE2~q\) # ((!\inst_lcd_top|cnt_data\(1) & (\word~689_combout\ & \inst_lcd_top|Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|EA.LINE2~q\,
	datac => \word~689_combout\,
	datad => \inst_lcd_top|Selector17~1_combout\,
	combout => \inst_lcd_top|Selector17~3_combout\);

-- Location: LCCOMB_X37_Y39_N12
\inst_lcd_top|Selector17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|Selector17~4_combout\ = (\inst_lcd_top|Selector17~2_combout\) # ((\inst_lcd_top|Selector17~3_combout\) # ((\inst_lcd_top|EA.TESTWORD~q\ & \inst_lcd_top|process_2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|Selector17~2_combout\,
	datab => \inst_lcd_top|EA.TESTWORD~q\,
	datac => \inst_lcd_top|process_2~3_combout\,
	datad => \inst_lcd_top|Selector17~3_combout\,
	combout => \inst_lcd_top|Selector17~4_combout\);

-- Location: FF_X37_Y39_N13
\inst_lcd_top|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|Selector17~4_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|data\(6));

-- Location: LCCOMB_X38_Y39_N26
\word~658\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~658_combout\ = \inst_lcd_top|cnt_data\(5) $ (((\inst_lcd_top|Equal3~0_combout\) # (!\inst_lcd_top|cnt_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|cnt_data\(0),
	datac => \inst_lcd_top|Equal3~0_combout\,
	datad => \inst_lcd_top|cnt_data\(5),
	combout => \word~658_combout\);

-- Location: FF_X41_Y38_N11
\uart_inst|data_read[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|buffer_rx\(5),
	sload => VCC,
	ena => \uart_inst|data_read[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|data_read\(5));

-- Location: LCCOMB_X42_Y39_N20
\uart_inst|serial_read_o[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|serial_read_o[5]~5_combout\ = (\uart_inst|rx_valid_stop~q\ & (\uart_inst|rx_valid_start~q\ & \uart_inst|data_read\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|rx_valid_stop~q\,
	datab => \uart_inst|rx_valid_start~q\,
	datad => \uart_inst|data_read\(5),
	combout => \uart_inst|serial_read_o[5]~5_combout\);

-- Location: FF_X39_Y40_N7
\word~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~508_q\);

-- Location: FF_X39_Y40_N13
\word~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~444_q\);

-- Location: FF_X43_Y40_N31
\word~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~412_q\);

-- Location: FF_X43_Y40_N13
\word~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~476_q\);

-- Location: LCCOMB_X43_Y40_N30
\word~659\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~659_combout\ = (\inst_lcd_top|cnt_data\(2) & (\inst_lcd_top|cnt_data\(3))) # (!\inst_lcd_top|cnt_data\(2) & ((\inst_lcd_top|cnt_data\(3) & ((\word~476_q\))) # (!\inst_lcd_top|cnt_data\(3) & (\word~412_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~412_q\,
	datad => \word~476_q\,
	combout => \word~659_combout\);

-- Location: LCCOMB_X39_Y40_N12
\word~660\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~660_combout\ = (\inst_lcd_top|cnt_data\(2) & ((\word~659_combout\ & (\word~508_q\)) # (!\word~659_combout\ & ((\word~444_q\))))) # (!\inst_lcd_top|cnt_data\(2) & (((\word~659_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~508_q\,
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~444_q\,
	datad => \word~659_combout\,
	combout => \word~660_combout\);

-- Location: FF_X43_Y42_N23
\word~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~332_q\);

-- Location: FF_X43_Y42_N25
\word~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~396_q\);

-- Location: FF_X39_Y41_N1
\word~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~300_q\);

-- Location: FF_X42_Y41_N23
\word~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~364_q\);

-- Location: LCCOMB_X39_Y41_N0
\word~661\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~661_combout\ = (\inst_lcd_top|cnt_data\(2) & (\inst_lcd_top|cnt_data\(3))) # (!\inst_lcd_top|cnt_data\(2) & ((\inst_lcd_top|cnt_data\(3) & ((\word~364_q\))) # (!\inst_lcd_top|cnt_data\(3) & (\word~300_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~300_q\,
	datad => \word~364_q\,
	combout => \word~661_combout\);

-- Location: LCCOMB_X43_Y42_N24
\word~662\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~662_combout\ = (\inst_lcd_top|cnt_data\(2) & ((\word~661_combout\ & ((\word~396_q\))) # (!\word~661_combout\ & (\word~332_q\)))) # (!\inst_lcd_top|cnt_data\(2) & (((\word~661_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~332_q\,
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~396_q\,
	datad => \word~661_combout\,
	combout => \word~662_combout\);

-- Location: FF_X39_Y42_N5
\word~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~316_q\);

-- Location: FF_X39_Y42_N31
\word~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~380_q\);

-- Location: FF_X43_Y41_N23
\word~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~284_q\);

-- Location: FF_X43_Y41_N13
\word~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~348_q\);

-- Location: LCCOMB_X43_Y41_N22
\word~663\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~663_combout\ = (\inst_lcd_top|cnt_data\(2) & (\inst_lcd_top|cnt_data\(3))) # (!\inst_lcd_top|cnt_data\(2) & ((\inst_lcd_top|cnt_data\(3) & ((\word~348_q\))) # (!\inst_lcd_top|cnt_data\(3) & (\word~284_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~284_q\,
	datad => \word~348_q\,
	combout => \word~663_combout\);

-- Location: LCCOMB_X39_Y42_N30
\word~664\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~664_combout\ = (\inst_lcd_top|cnt_data\(2) & ((\word~663_combout\ & ((\word~380_q\))) # (!\word~663_combout\ & (\word~316_q\)))) # (!\inst_lcd_top|cnt_data\(2) & (((\word~663_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \word~316_q\,
	datac => \word~380_q\,
	datad => \word~663_combout\,
	combout => \word~664_combout\);

-- Location: LCCOMB_X39_Y42_N16
\word~665\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~665_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~662_combout\) # ((\inst_lcd_top|cnt_data\(4))))) # (!\inst_lcd_top|cnt_data\(1) & (((\word~664_combout\ & !\inst_lcd_top|cnt_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~662_combout\,
	datac => \word~664_combout\,
	datad => \inst_lcd_top|cnt_data\(4),
	combout => \word~665_combout\);

-- Location: FF_X39_Y41_N27
\word~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~428_q\);

-- Location: FF_X41_Y41_N21
\word~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~492_q\);

-- Location: LCCOMB_X39_Y41_N26
\word~666\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~666_combout\ = (\inst_lcd_top|cnt_data\(2) & (\inst_lcd_top|cnt_data\(3))) # (!\inst_lcd_top|cnt_data\(2) & ((\inst_lcd_top|cnt_data\(3) & ((\word~492_q\))) # (!\inst_lcd_top|cnt_data\(3) & (\word~428_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~428_q\,
	datad => \word~492_q\,
	combout => \word~666_combout\);

-- Location: FF_X43_Y39_N15
\word~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[5]~5_combout\,
	sload => VCC,
	ena => \word~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~460_q\);

-- Location: FF_X42_Y39_N21
\word~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|serial_read_o[5]~5_combout\,
	ena => \word~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~524_q\);

-- Location: LCCOMB_X43_Y39_N14
\word~667\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~667_combout\ = (\word~666_combout\ & (((\word~524_q\)) # (!\inst_lcd_top|cnt_data\(2)))) # (!\word~666_combout\ & (\inst_lcd_top|cnt_data\(2) & (\word~460_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~666_combout\,
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~460_q\,
	datad => \word~524_q\,
	combout => \word~667_combout\);

-- Location: LCCOMB_X38_Y39_N4
\word~668\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~668_combout\ = (\word~665_combout\ & (((\word~667_combout\) # (!\inst_lcd_top|cnt_data\(4))))) # (!\word~665_combout\ & (\word~660_combout\ & (\inst_lcd_top|cnt_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~660_combout\,
	datab => \word~665_combout\,
	datac => \inst_lcd_top|cnt_data\(4),
	datad => \word~667_combout\,
	combout => \word~668_combout\);

-- Location: LCCOMB_X41_Y42_N18
\word~760\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~760_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~760_combout\);

-- Location: FF_X41_Y42_N19
\word~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~760_combout\,
	ena => \word~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~140_q\);

-- Location: LCCOMB_X41_Y40_N4
\word~761\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~761_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~761_combout\);

-- Location: FF_X41_Y40_N5
\word~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~761_combout\,
	ena => \word~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~252_q\);

-- Location: LCCOMB_X41_Y40_N6
\word~762\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~762_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~762_combout\);

-- Location: FF_X41_Y40_N7
\word~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~762_combout\,
	ena => \word~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~124_q\);

-- Location: LCCOMB_X41_Y42_N20
\word~655\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~655_combout\ = (\inst_lcd_top|cnt_data\(1) & (\inst_lcd_top|cnt_data\(4))) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(4) & (!\word~252_q\)) # (!\inst_lcd_top|cnt_data\(4) & ((!\word~124_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~252_q\,
	datad => \word~124_q\,
	combout => \word~655_combout\);

-- Location: LCCOMB_X45_Y39_N26
\word~763\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~763_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~763_combout\);

-- Location: FF_X45_Y39_N27
\word~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~763_combout\,
	ena => \word~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~268_q\);

-- Location: LCCOMB_X41_Y42_N6
\word~656\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~656_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~655_combout\ & ((!\word~268_q\))) # (!\word~655_combout\ & (!\word~140_q\)))) # (!\inst_lcd_top|cnt_data\(1) & (((\word~655_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~140_q\,
	datac => \word~655_combout\,
	datad => \word~268_q\,
	combout => \word~656_combout\);

-- Location: LCCOMB_X41_Y39_N26
\word~755\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~755_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~755_combout\);

-- Location: FF_X41_Y39_N27
\word~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~755_combout\,
	ena => \word~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~236_q\);

-- Location: LCCOMB_X42_Y40_N12
\word~752\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~752_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~752_combout\);

-- Location: FF_X42_Y40_N13
\word~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~752_combout\,
	ena => \word~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~220_q\);

-- Location: LCCOMB_X42_Y41_N12
\word~754\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~754_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~754_combout\);

-- Location: FF_X42_Y41_N13
\word~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~754_combout\,
	ena => \word~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~92_q\);

-- Location: LCCOMB_X45_Y39_N24
\word~753\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~753_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~753_combout\);

-- Location: FF_X45_Y39_N25
\word~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~753_combout\,
	ena => \word~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~108_q\);

-- Location: LCCOMB_X44_Y39_N22
\word~650\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~650_combout\ = (\inst_lcd_top|cnt_data\(4) & (\inst_lcd_top|cnt_data\(1))) # (!\inst_lcd_top|cnt_data\(4) & ((\inst_lcd_top|cnt_data\(1) & ((!\word~108_q\))) # (!\inst_lcd_top|cnt_data\(1) & (!\word~92_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \inst_lcd_top|cnt_data\(1),
	datac => \word~92_q\,
	datad => \word~108_q\,
	combout => \word~650_combout\);

-- Location: LCCOMB_X41_Y39_N4
\word~651\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~651_combout\ = (\inst_lcd_top|cnt_data\(4) & ((\word~650_combout\ & (!\word~236_q\)) # (!\word~650_combout\ & ((!\word~220_q\))))) # (!\inst_lcd_top|cnt_data\(4) & (((\word~650_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~236_q\,
	datab => \word~220_q\,
	datac => \inst_lcd_top|cnt_data\(4),
	datad => \word~650_combout\,
	combout => \word~651_combout\);

-- Location: LCCOMB_X43_Y39_N28
\word~759\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~759_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~759_combout\);

-- Location: FF_X43_Y39_N29
\word~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~759_combout\,
	ena => \word~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~172_q\);

-- Location: LCCOMB_X44_Y40_N20
\word~756\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~756_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~756_combout\);

-- Location: FF_X44_Y40_N21
\word~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~756_combout\,
	ena => \word~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~156_q\);

-- Location: LCCOMB_X44_Y41_N30
\word~758\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~758_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~758_combout\);

-- Location: FF_X44_Y41_N31
\word~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~758_combout\,
	ena => \word~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~28_q\);

-- Location: LCCOMB_X44_Y41_N28
\word~757\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~757_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~757_combout\);

-- Location: FF_X44_Y41_N29
\word~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~757_combout\,
	ena => \word~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~44_q\);

-- Location: LCCOMB_X44_Y41_N24
\word~652\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~652_combout\ = (\inst_lcd_top|cnt_data\(4) & (((\inst_lcd_top|cnt_data\(1))))) # (!\inst_lcd_top|cnt_data\(4) & ((\inst_lcd_top|cnt_data\(1) & ((!\word~44_q\))) # (!\inst_lcd_top|cnt_data\(1) & (!\word~28_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~28_q\,
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \inst_lcd_top|cnt_data\(1),
	datad => \word~44_q\,
	combout => \word~652_combout\);

-- Location: LCCOMB_X44_Y41_N26
\word~653\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~653_combout\ = (\inst_lcd_top|cnt_data\(4) & ((\word~652_combout\ & (!\word~172_q\)) # (!\word~652_combout\ & ((!\word~156_q\))))) # (!\inst_lcd_top|cnt_data\(4) & (((\word~652_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~172_q\,
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~156_q\,
	datad => \word~652_combout\,
	combout => \word~653_combout\);

-- Location: LCCOMB_X41_Y39_N22
\word~654\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~654_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\inst_lcd_top|cnt_data\(2)) # ((\word~651_combout\)))) # (!\inst_lcd_top|cnt_data\(3) & (!\inst_lcd_top|cnt_data\(2) & ((\word~653_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~651_combout\,
	datad => \word~653_combout\,
	combout => \word~654_combout\);

-- Location: LCCOMB_X44_Y39_N12
\word~751\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~751_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~751_combout\);

-- Location: FF_X44_Y39_N13
\word~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~751_combout\,
	ena => \word~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~204_q\);

-- Location: LCCOMB_X44_Y39_N26
\word~748\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~748_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~748_combout\);

-- Location: FF_X44_Y39_N27
\word~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~748_combout\,
	ena => \word~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~188_q\);

-- Location: LCCOMB_X44_Y42_N10
\word~749\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~749_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~749_combout\);

-- Location: FF_X44_Y42_N11
\word~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~749_combout\,
	ena => \word~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~76_q\);

-- Location: LCCOMB_X44_Y42_N20
\word~750\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~750_combout\ = !\uart_inst|serial_read_o[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[5]~5_combout\,
	combout => \word~750_combout\);

-- Location: FF_X44_Y42_N21
\word~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~750_combout\,
	ena => \word~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~60_q\);

-- Location: LCCOMB_X44_Y42_N14
\word~648\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~648_combout\ = (\inst_lcd_top|cnt_data\(1) & (((\inst_lcd_top|cnt_data\(4))) # (!\word~76_q\))) # (!\inst_lcd_top|cnt_data\(1) & (((!\inst_lcd_top|cnt_data\(4) & !\word~60_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~76_q\,
	datab => \inst_lcd_top|cnt_data\(1),
	datac => \inst_lcd_top|cnt_data\(4),
	datad => \word~60_q\,
	combout => \word~648_combout\);

-- Location: LCCOMB_X41_Y42_N16
\word~649\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~649_combout\ = (\inst_lcd_top|cnt_data\(4) & ((\word~648_combout\ & (!\word~204_q\)) # (!\word~648_combout\ & ((!\word~188_q\))))) # (!\inst_lcd_top|cnt_data\(4) & (((\word~648_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~204_q\,
	datab => \word~188_q\,
	datac => \inst_lcd_top|cnt_data\(4),
	datad => \word~648_combout\,
	combout => \word~649_combout\);

-- Location: LCCOMB_X41_Y39_N8
\word~657\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~657_combout\ = (\inst_lcd_top|cnt_data\(2) & ((\word~654_combout\ & (\word~656_combout\)) # (!\word~654_combout\ & ((\word~649_combout\))))) # (!\inst_lcd_top|cnt_data\(2) & (((\word~654_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~656_combout\,
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~654_combout\,
	datad => \word~649_combout\,
	combout => \word~657_combout\);

-- Location: LCCOMB_X38_Y39_N30
\word~669\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~669_combout\ = (\word~658_combout\ & (((\word~657_combout\ & !\inst_lcd_top|cnt_data\(0))))) # (!\word~658_combout\ & ((\word~668_combout\) # ((\inst_lcd_top|cnt_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~658_combout\,
	datab => \word~668_combout\,
	datac => \word~657_combout\,
	datad => \inst_lcd_top|cnt_data\(0),
	combout => \word~669_combout\);

-- Location: LCCOMB_X38_Y39_N18
\inst_lcd_top|data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|data[5]~feeder_combout\ = \word~669_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~669_combout\,
	combout => \inst_lcd_top|data[5]~feeder_combout\);

-- Location: FF_X38_Y39_N19
\inst_lcd_top|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|data[5]~feeder_combout\,
	asdata => \inst_lcd_top|EA.TESTWORD~q\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sload => \inst_lcd_top|ALT_INV_EA.WRLCD~q\,
	ena => \inst_lcd_top|data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|data\(5));

-- Location: LCCOMB_X41_Y38_N14
\uart_inst|data_read[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|data_read[3]~feeder_combout\ = \uart_inst|buffer_rx\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|buffer_rx\(3),
	combout => \uart_inst|data_read[3]~feeder_combout\);

-- Location: FF_X41_Y38_N15
\uart_inst|data_read[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|data_read[3]~feeder_combout\,
	ena => \uart_inst|data_read[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|data_read\(3));

-- Location: LCCOMB_X43_Y39_N6
\uart_inst|serial_read_o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|serial_read_o[3]~3_combout\ = (\uart_inst|rx_valid_stop~q\ & (\uart_inst|rx_valid_start~q\ & \uart_inst|data_read\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|rx_valid_stop~q\,
	datab => \uart_inst|rx_valid_start~q\,
	datad => \uart_inst|data_read\(3),
	combout => \uart_inst|serial_read_o[3]~3_combout\);

-- Location: FF_X41_Y41_N5
\word~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~106_q\);

-- Location: FF_X41_Y42_N3
\word~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~138_q\);

-- Location: LCCOMB_X41_Y41_N4
\word~606\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~606_combout\ = (\inst_lcd_top|cnt_data\(4) & (\inst_lcd_top|cnt_data\(2))) # (!\inst_lcd_top|cnt_data\(4) & ((\inst_lcd_top|cnt_data\(2) & ((\word~138_q\))) # (!\inst_lcd_top|cnt_data\(2) & (\word~106_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~106_q\,
	datad => \word~138_q\,
	combout => \word~606_combout\);

-- Location: FF_X41_Y39_N15
\word~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~234_q\);

-- Location: FF_X42_Y39_N5
\word~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~266_q\);

-- Location: LCCOMB_X41_Y39_N14
\word~607\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~607_combout\ = (\word~606_combout\ & (((\word~266_q\)) # (!\inst_lcd_top|cnt_data\(4)))) # (!\word~606_combout\ & (\inst_lcd_top|cnt_data\(4) & (\word~234_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~606_combout\,
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~234_q\,
	datad => \word~266_q\,
	combout => \word~607_combout\);

-- Location: FF_X41_Y40_N29
\word~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~122_q\);

-- Location: FF_X42_Y41_N29
\word~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~90_q\);

-- Location: LCCOMB_X42_Y41_N28
\word~610\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~610_combout\ = (\inst_lcd_top|cnt_data\(4) & (((\inst_lcd_top|cnt_data\(2))))) # (!\inst_lcd_top|cnt_data\(4) & ((\inst_lcd_top|cnt_data\(2) & (\word~122_q\)) # (!\inst_lcd_top|cnt_data\(2) & ((\word~90_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \word~122_q\,
	datac => \word~90_q\,
	datad => \inst_lcd_top|cnt_data\(2),
	combout => \word~610_combout\);

-- Location: FF_X41_Y40_N31
\word~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~250_q\);

-- Location: LCCOMB_X42_Y40_N24
\word~218feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~218feeder_combout\ = \uart_inst|serial_read_o[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[3]~3_combout\,
	combout => \word~218feeder_combout\);

-- Location: FF_X42_Y40_N25
\word~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~218feeder_combout\,
	ena => \word~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~218_q\);

-- Location: LCCOMB_X41_Y40_N30
\word~611\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~611_combout\ = (\inst_lcd_top|cnt_data\(4) & ((\word~610_combout\ & (\word~250_q\)) # (!\word~610_combout\ & ((\word~218_q\))))) # (!\inst_lcd_top|cnt_data\(4) & (\word~610_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \word~610_combout\,
	datac => \word~250_q\,
	datad => \word~218_q\,
	combout => \word~611_combout\);

-- Location: FF_X39_Y42_N29
\word~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~378_q\);

-- Location: FF_X39_Y40_N21
\word~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~506_q\);

-- Location: FF_X43_Y41_N21
\word~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~346_q\);

-- Location: FF_X43_Y40_N21
\word~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~474_q\);

-- Location: LCCOMB_X43_Y41_N20
\word~608\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~608_combout\ = (\inst_lcd_top|cnt_data\(2) & (\inst_lcd_top|cnt_data\(4))) # (!\inst_lcd_top|cnt_data\(2) & ((\inst_lcd_top|cnt_data\(4) & ((\word~474_q\))) # (!\inst_lcd_top|cnt_data\(4) & (\word~346_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~346_q\,
	datad => \word~474_q\,
	combout => \word~608_combout\);

-- Location: LCCOMB_X39_Y40_N20
\word~609\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~609_combout\ = (\inst_lcd_top|cnt_data\(2) & ((\word~608_combout\ & ((\word~506_q\))) # (!\word~608_combout\ & (\word~378_q\)))) # (!\inst_lcd_top|cnt_data\(2) & (((\word~608_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~378_q\,
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~506_q\,
	datad => \word~608_combout\,
	combout => \word~609_combout\);

-- Location: LCCOMB_X39_Y39_N8
\word~612\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~612_combout\ = (\inst_lcd_top|cnt_data\(1) & (((\inst_lcd_top|cnt_data\(5))))) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(5) & ((\word~609_combout\))) # (!\inst_lcd_top|cnt_data\(5) & (\word~611_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~611_combout\,
	datac => \inst_lcd_top|cnt_data\(5),
	datad => \word~609_combout\,
	combout => \word~612_combout\);

-- Location: FF_X43_Y42_N17
\word~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~394_q\);

-- Location: FF_X41_Y41_N31
\word~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~490_q\);

-- Location: FF_X42_Y41_N15
\word~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~362_q\);

-- Location: LCCOMB_X42_Y41_N14
\word~613\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~613_combout\ = (\inst_lcd_top|cnt_data\(4) & ((\word~490_q\) # ((\inst_lcd_top|cnt_data\(2))))) # (!\inst_lcd_top|cnt_data\(4) & (((\word~362_q\ & !\inst_lcd_top|cnt_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \word~490_q\,
	datac => \word~362_q\,
	datad => \inst_lcd_top|cnt_data\(2),
	combout => \word~613_combout\);

-- Location: FF_X42_Y39_N23
\word~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~522_q\);

-- Location: LCCOMB_X42_Y39_N22
\word~614\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~614_combout\ = (\word~613_combout\ & (((\word~522_q\) # (!\inst_lcd_top|cnt_data\(2))))) # (!\word~613_combout\ & (\word~394_q\ & ((\inst_lcd_top|cnt_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~394_q\,
	datab => \word~613_combout\,
	datac => \word~522_q\,
	datad => \inst_lcd_top|cnt_data\(2),
	combout => \word~614_combout\);

-- Location: LCCOMB_X39_Y39_N26
\word~615\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~615_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~612_combout\ & ((\word~614_combout\))) # (!\word~612_combout\ & (\word~607_combout\)))) # (!\inst_lcd_top|cnt_data\(1) & (((\word~612_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~607_combout\,
	datac => \word~612_combout\,
	datad => \word~614_combout\,
	combout => \word~615_combout\);

-- Location: LCCOMB_X42_Y42_N2
\word~298feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~298feeder_combout\ = \uart_inst|serial_read_o[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[3]~3_combout\,
	combout => \word~298feeder_combout\);

-- Location: FF_X42_Y42_N3
\word~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~298feeder_combout\,
	ena => \word~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~298_q\);

-- Location: FF_X43_Y41_N7
\word~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~282_q\);

-- Location: LCCOMB_X43_Y41_N6
\word~618\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~618_combout\ = (\inst_lcd_top|cnt_data\(2) & (((\inst_lcd_top|cnt_data\(1))))) # (!\inst_lcd_top|cnt_data\(2) & ((\inst_lcd_top|cnt_data\(1) & (\word~298_q\)) # (!\inst_lcd_top|cnt_data\(1) & ((\word~282_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \word~298_q\,
	datac => \word~282_q\,
	datad => \inst_lcd_top|cnt_data\(1),
	combout => \word~618_combout\);

-- Location: FF_X43_Y42_N19
\word~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~330_q\);

-- Location: FF_X45_Y42_N27
\word~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~314_q\);

-- Location: LCCOMB_X43_Y42_N18
\word~619\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~619_combout\ = (\word~618_combout\ & (((\word~330_q\)) # (!\inst_lcd_top|cnt_data\(2)))) # (!\word~618_combout\ & (\inst_lcd_top|cnt_data\(2) & ((\word~314_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~618_combout\,
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~330_q\,
	datad => \word~314_q\,
	combout => \word~619_combout\);

-- Location: FF_X44_Y41_N13
\word~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~42_q\);

-- Location: FF_X44_Y41_N7
\word~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~26_q\);

-- Location: LCCOMB_X44_Y41_N6
\word~620\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~620_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~42_q\) # ((\inst_lcd_top|cnt_data\(2))))) # (!\inst_lcd_top|cnt_data\(1) & (((\word~26_q\ & !\inst_lcd_top|cnt_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~42_q\,
	datac => \word~26_q\,
	datad => \inst_lcd_top|cnt_data\(2),
	combout => \word~620_combout\);

-- Location: FF_X44_Y42_N23
\word~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~74_q\);

-- Location: FF_X44_Y42_N13
\word~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~58_q\);

-- Location: LCCOMB_X44_Y42_N22
\word~621\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~621_combout\ = (\word~620_combout\ & (((\word~74_q\)) # (!\inst_lcd_top|cnt_data\(2)))) # (!\word~620_combout\ & (\inst_lcd_top|cnt_data\(2) & ((\word~58_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~620_combout\,
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~74_q\,
	datad => \word~58_q\,
	combout => \word~621_combout\);

-- Location: LCCOMB_X39_Y39_N12
\word~622\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~622_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\word~619_combout\) # ((\inst_lcd_top|cnt_data\(4))))) # (!\inst_lcd_top|cnt_data\(5) & (((!\inst_lcd_top|cnt_data\(4) & \word~621_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \word~619_combout\,
	datac => \inst_lcd_top|cnt_data\(4),
	datad => \word~621_combout\,
	combout => \word~622_combout\);

-- Location: FF_X43_Y39_N7
\word~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|serial_read_o[3]~3_combout\,
	ena => \word~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~458_q\);

-- Location: FF_X39_Y40_N31
\word~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~442_q\);

-- Location: FF_X43_Y40_N15
\word~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~410_q\);

-- Location: LCCOMB_X42_Y42_N4
\word~426feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~426feeder_combout\ = \uart_inst|serial_read_o[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[3]~3_combout\,
	combout => \word~426feeder_combout\);

-- Location: FF_X42_Y42_N5
\word~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~426feeder_combout\,
	ena => \word~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~426_q\);

-- Location: LCCOMB_X43_Y40_N14
\word~623\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~623_combout\ = (\inst_lcd_top|cnt_data\(2) & (\inst_lcd_top|cnt_data\(1))) # (!\inst_lcd_top|cnt_data\(2) & ((\inst_lcd_top|cnt_data\(1) & ((\word~426_q\))) # (!\inst_lcd_top|cnt_data\(1) & (\word~410_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \inst_lcd_top|cnt_data\(1),
	datac => \word~410_q\,
	datad => \word~426_q\,
	combout => \word~623_combout\);

-- Location: LCCOMB_X39_Y40_N30
\word~624\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~624_combout\ = (\inst_lcd_top|cnt_data\(2) & ((\word~623_combout\ & (\word~458_q\)) # (!\word~623_combout\ & ((\word~442_q\))))) # (!\inst_lcd_top|cnt_data\(2) & (((\word~623_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~458_q\,
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~442_q\,
	datad => \word~623_combout\,
	combout => \word~624_combout\);

-- Location: LCCOMB_X44_Y39_N6
\word~202feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~202feeder_combout\ = \uart_inst|serial_read_o[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[3]~3_combout\,
	combout => \word~202feeder_combout\);

-- Location: FF_X44_Y39_N7
\word~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~202feeder_combout\,
	ena => \word~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~202_q\);

-- Location: FF_X44_Y40_N5
\word~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~186_q\);

-- Location: FF_X44_Y40_N7
\word~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[3]~3_combout\,
	sload => VCC,
	ena => \word~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~154_q\);

-- Location: LCCOMB_X43_Y39_N4
\word~170feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~170feeder_combout\ = \uart_inst|serial_read_o[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[3]~3_combout\,
	combout => \word~170feeder_combout\);

-- Location: FF_X43_Y39_N5
\word~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~170feeder_combout\,
	ena => \word~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~170_q\);

-- Location: LCCOMB_X44_Y40_N6
\word~616\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~616_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(2)) # ((\word~170_q\)))) # (!\inst_lcd_top|cnt_data\(1) & (!\inst_lcd_top|cnt_data\(2) & (\word~154_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~154_q\,
	datad => \word~170_q\,
	combout => \word~616_combout\);

-- Location: LCCOMB_X44_Y40_N4
\word~617\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~617_combout\ = (\inst_lcd_top|cnt_data\(2) & ((\word~616_combout\ & (\word~202_q\)) # (!\word~616_combout\ & ((\word~186_q\))))) # (!\inst_lcd_top|cnt_data\(2) & (((\word~616_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \word~202_q\,
	datac => \word~186_q\,
	datad => \word~616_combout\,
	combout => \word~617_combout\);

-- Location: LCCOMB_X39_Y39_N6
\word~625\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~625_combout\ = (\word~622_combout\ & (((\word~624_combout\)) # (!\inst_lcd_top|cnt_data\(4)))) # (!\word~622_combout\ & (\inst_lcd_top|cnt_data\(4) & ((\word~617_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~622_combout\,
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~624_combout\,
	datad => \word~617_combout\,
	combout => \word~625_combout\);

-- Location: LCCOMB_X39_Y39_N24
\word~626\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~626_combout\ = (!\inst_lcd_top|cnt_data\(0) & ((\inst_lcd_top|cnt_data\(3) & (\word~615_combout\)) # (!\inst_lcd_top|cnt_data\(3) & ((\word~625_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(0),
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~615_combout\,
	datad => \word~625_combout\,
	combout => \word~626_combout\);

-- Location: LCCOMB_X38_Y39_N22
\inst_lcd_top|data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|data[3]~feeder_combout\ = \word~626_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \word~626_combout\,
	combout => \inst_lcd_top|data[3]~feeder_combout\);

-- Location: FF_X38_Y39_N23
\inst_lcd_top|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|data[3]~feeder_combout\,
	asdata => \inst_lcd_top|EA.TESTWORD~q\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sload => \inst_lcd_top|ALT_INV_EA.WRLCD~q\,
	ena => \inst_lcd_top|data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|data\(3));

-- Location: LCCOMB_X37_Y39_N10
\inst_lcd_top|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|process_2~0_combout\ = (\inst_lcd_top|data\(6) & (\inst_lcd_top|data\(5) & (\inst_lcd_top|data\(3)))) # (!\inst_lcd_top|data\(6) & (((!\inst_lcd_top|data\(3) & !\inst_lcd_top|data\(0))) # (!\inst_lcd_top|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|data\(6),
	datab => \inst_lcd_top|data\(5),
	datac => \inst_lcd_top|data\(3),
	datad => \inst_lcd_top|data\(0),
	combout => \inst_lcd_top|process_2~0_combout\);

-- Location: LCCOMB_X41_Y38_N2
\uart_inst|data_read[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|data_read[1]~feeder_combout\ = \uart_inst|buffer_rx\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|buffer_rx\(1),
	combout => \uart_inst|data_read[1]~feeder_combout\);

-- Location: FF_X41_Y38_N3
\uart_inst|data_read[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|data_read[1]~feeder_combout\,
	ena => \uart_inst|data_read[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|data_read\(1));

-- Location: LCCOMB_X39_Y40_N22
\uart_inst|serial_read_o[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|serial_read_o[1]~1_combout\ = (\uart_inst|data_read\(1) & (\uart_inst|rx_valid_start~q\ & \uart_inst|rx_valid_stop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_inst|data_read\(1),
	datab => \uart_inst|rx_valid_start~q\,
	datac => \uart_inst|rx_valid_stop~q\,
	combout => \uart_inst|serial_read_o[1]~1_combout\);

-- Location: FF_X44_Y40_N13
\word~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~184_q\);

-- Location: FF_X39_Y40_N29
\word~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~440_q\);

-- Location: FF_X44_Y42_N31
\word~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~56_q\);

-- Location: FF_X39_Y42_N21
\word~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~312_q\);

-- Location: LCCOMB_X44_Y42_N30
\word~576\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~576_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|cnt_data\(4)) # ((\word~312_q\)))) # (!\inst_lcd_top|cnt_data\(5) & (!\inst_lcd_top|cnt_data\(4) & (\word~56_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~56_q\,
	datad => \word~312_q\,
	combout => \word~576_combout\);

-- Location: LCCOMB_X39_Y40_N28
\word~577\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~577_combout\ = (\inst_lcd_top|cnt_data\(4) & ((\word~576_combout\ & ((\word~440_q\))) # (!\word~576_combout\ & (\word~184_q\)))) # (!\inst_lcd_top|cnt_data\(4) & (((\word~576_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \word~184_q\,
	datac => \word~440_q\,
	datad => \word~576_combout\,
	combout => \word~577_combout\);

-- Location: FF_X44_Y40_N15
\word~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~152_q\);

-- Location: FF_X43_Y40_N7
\word~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~408_q\);

-- Location: LCCOMB_X43_Y41_N14
\word~280feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~280feeder_combout\ = \uart_inst|serial_read_o[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[1]~1_combout\,
	combout => \word~280feeder_combout\);

-- Location: FF_X43_Y41_N15
\word~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~280feeder_combout\,
	ena => \word~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~280_q\);

-- Location: FF_X44_Y41_N15
\word~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~24_q\);

-- Location: LCCOMB_X44_Y41_N14
\word~578\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~578_combout\ = (\inst_lcd_top|cnt_data\(4) & (((\inst_lcd_top|cnt_data\(5))))) # (!\inst_lcd_top|cnt_data\(4) & ((\inst_lcd_top|cnt_data\(5) & (\word~280_q\)) # (!\inst_lcd_top|cnt_data\(5) & ((\word~24_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~280_q\,
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~24_q\,
	datad => \inst_lcd_top|cnt_data\(5),
	combout => \word~578_combout\);

-- Location: LCCOMB_X43_Y40_N6
\word~579\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~579_combout\ = (\inst_lcd_top|cnt_data\(4) & ((\word~578_combout\ & ((\word~408_q\))) # (!\word~578_combout\ & (\word~152_q\)))) # (!\inst_lcd_top|cnt_data\(4) & (((\word~578_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \word~152_q\,
	datac => \word~408_q\,
	datad => \word~578_combout\,
	combout => \word~579_combout\);

-- Location: LCCOMB_X42_Y40_N0
\word~580\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~580_combout\ = (\inst_lcd_top|cnt_data\(2) & ((\word~577_combout\) # ((\inst_lcd_top|cnt_data\(3))))) # (!\inst_lcd_top|cnt_data\(2) & (((!\inst_lcd_top|cnt_data\(3) & \word~579_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~577_combout\,
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \inst_lcd_top|cnt_data\(3),
	datad => \word~579_combout\,
	combout => \word~580_combout\);

-- Location: FF_X42_Y41_N31
\word~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~88_q\);

-- Location: LCCOMB_X43_Y41_N28
\word~344feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~344feeder_combout\ = \uart_inst|serial_read_o[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[1]~1_combout\,
	combout => \word~344feeder_combout\);

-- Location: FF_X43_Y41_N29
\word~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~344feeder_combout\,
	ena => \word~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~344_q\);

-- Location: LCCOMB_X42_Y41_N30
\word~574\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~574_combout\ = (\inst_lcd_top|cnt_data\(4) & (\inst_lcd_top|cnt_data\(5))) # (!\inst_lcd_top|cnt_data\(4) & ((\inst_lcd_top|cnt_data\(5) & ((\word~344_q\))) # (!\inst_lcd_top|cnt_data\(5) & (\word~88_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~88_q\,
	datad => \word~344_q\,
	combout => \word~574_combout\);

-- Location: FF_X42_Y40_N15
\word~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~216_q\);

-- Location: FF_X43_Y40_N5
\word~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~472_q\);

-- Location: LCCOMB_X42_Y40_N14
\word~575\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~575_combout\ = (\word~574_combout\ & (((\word~472_q\)) # (!\inst_lcd_top|cnt_data\(4)))) # (!\word~574_combout\ & (\inst_lcd_top|cnt_data\(4) & (\word~216_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~574_combout\,
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~216_q\,
	datad => \word~472_q\,
	combout => \word~575_combout\);

-- Location: FF_X41_Y40_N23
\word~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~120_q\);

-- Location: FF_X39_Y42_N7
\word~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~376_q\);

-- Location: LCCOMB_X41_Y40_N22
\word~581\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~581_combout\ = (\inst_lcd_top|cnt_data\(4) & (\inst_lcd_top|cnt_data\(5))) # (!\inst_lcd_top|cnt_data\(4) & ((\inst_lcd_top|cnt_data\(5) & ((\word~376_q\))) # (!\inst_lcd_top|cnt_data\(5) & (\word~120_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~120_q\,
	datad => \word~376_q\,
	combout => \word~581_combout\);

-- Location: FF_X39_Y40_N23
\word~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|serial_read_o[1]~1_combout\,
	ena => \word~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~504_q\);

-- Location: FF_X41_Y40_N13
\word~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~248_q\);

-- Location: LCCOMB_X41_Y40_N12
\word~582\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~582_combout\ = (\word~581_combout\ & ((\word~504_q\) # ((!\inst_lcd_top|cnt_data\(4))))) # (!\word~581_combout\ & (((\word~248_q\ & \inst_lcd_top|cnt_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~581_combout\,
	datab => \word~504_q\,
	datac => \word~248_q\,
	datad => \inst_lcd_top|cnt_data\(4),
	combout => \word~582_combout\);

-- Location: LCCOMB_X42_Y40_N2
\word~583\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~583_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\word~580_combout\ & ((\word~582_combout\))) # (!\word~580_combout\ & (\word~575_combout\)))) # (!\inst_lcd_top|cnt_data\(3) & (\word~580_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datab => \word~580_combout\,
	datac => \word~575_combout\,
	datad => \word~582_combout\,
	combout => \word~583_combout\);

-- Location: LCCOMB_X41_Y41_N14
\word~104feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~104feeder_combout\ = \uart_inst|serial_read_o[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[1]~1_combout\,
	combout => \word~104feeder_combout\);

-- Location: FF_X41_Y41_N15
\word~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~104feeder_combout\,
	ena => \word~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~104_q\);

-- Location: FF_X42_Y41_N21
\word~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~360_q\);

-- Location: FF_X44_Y41_N5
\word~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~40_q\);

-- Location: LCCOMB_X42_Y42_N24
\word~296feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~296feeder_combout\ = \uart_inst|serial_read_o[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[1]~1_combout\,
	combout => \word~296feeder_combout\);

-- Location: FF_X42_Y42_N25
\word~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~296feeder_combout\,
	ena => \word~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~296_q\);

-- Location: LCCOMB_X44_Y41_N4
\word~568\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~568_combout\ = (\inst_lcd_top|cnt_data\(3) & (\inst_lcd_top|cnt_data\(5))) # (!\inst_lcd_top|cnt_data\(3) & ((\inst_lcd_top|cnt_data\(5) & ((\word~296_q\))) # (!\inst_lcd_top|cnt_data\(5) & (\word~40_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~40_q\,
	datad => \word~296_q\,
	combout => \word~568_combout\);

-- Location: LCCOMB_X42_Y41_N20
\word~569\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~569_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\word~568_combout\ & ((\word~360_q\))) # (!\word~568_combout\ & (\word~104_q\)))) # (!\inst_lcd_top|cnt_data\(3) & (((\word~568_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~104_q\,
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~360_q\,
	datad => \word~568_combout\,
	combout => \word~569_combout\);

-- Location: FF_X41_Y42_N5
\word~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~136_q\);

-- Location: FF_X41_Y42_N15
\word~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~392_q\);

-- Location: FF_X44_Y42_N5
\word~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~72_q\);

-- Location: FF_X43_Y42_N3
\word~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~328_q\);

-- Location: LCCOMB_X44_Y42_N4
\word~566\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~566_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|cnt_data\(3)) # ((\word~328_q\)))) # (!\inst_lcd_top|cnt_data\(5) & (!\inst_lcd_top|cnt_data\(3) & (\word~72_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~72_q\,
	datad => \word~328_q\,
	combout => \word~566_combout\);

-- Location: LCCOMB_X41_Y42_N14
\word~567\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~567_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\word~566_combout\ & ((\word~392_q\))) # (!\word~566_combout\ & (\word~136_q\)))) # (!\inst_lcd_top|cnt_data\(3) & (((\word~566_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datab => \word~136_q\,
	datac => \word~392_q\,
	datad => \word~566_combout\,
	combout => \word~567_combout\);

-- Location: LCCOMB_X42_Y40_N26
\word~570\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~570_combout\ = (\inst_lcd_top|cnt_data\(4) & (((\inst_lcd_top|cnt_data\(2))))) # (!\inst_lcd_top|cnt_data\(4) & ((\inst_lcd_top|cnt_data\(2) & ((\word~567_combout\))) # (!\inst_lcd_top|cnt_data\(2) & (\word~569_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~569_combout\,
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \inst_lcd_top|cnt_data\(2),
	datad => \word~567_combout\,
	combout => \word~570_combout\);

-- Location: LCCOMB_X42_Y42_N6
\word~424feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~424feeder_combout\ = \uart_inst|serial_read_o[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[1]~1_combout\,
	combout => \word~424feeder_combout\);

-- Location: FF_X42_Y42_N7
\word~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~424feeder_combout\,
	ena => \word~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~424_q\);

-- Location: FF_X43_Y39_N13
\word~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~168_q\);

-- Location: LCCOMB_X43_Y39_N12
\word~564\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~564_combout\ = (\inst_lcd_top|cnt_data\(3) & (((\inst_lcd_top|cnt_data\(5))))) # (!\inst_lcd_top|cnt_data\(3) & ((\inst_lcd_top|cnt_data\(5) & (\word~424_q\)) # (!\inst_lcd_top|cnt_data\(5) & ((\word~168_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datab => \word~424_q\,
	datac => \word~168_q\,
	datad => \inst_lcd_top|cnt_data\(5),
	combout => \word~564_combout\);

-- Location: FF_X41_Y39_N11
\word~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~232_q\);

-- Location: LCCOMB_X41_Y41_N28
\word~488feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~488feeder_combout\ = \uart_inst|serial_read_o[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[1]~1_combout\,
	combout => \word~488feeder_combout\);

-- Location: FF_X41_Y41_N29
\word~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~488feeder_combout\,
	ena => \word~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~488_q\);

-- Location: LCCOMB_X41_Y39_N10
\word~565\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~565_combout\ = (\word~564_combout\ & (((\word~488_q\)) # (!\inst_lcd_top|cnt_data\(3)))) # (!\word~564_combout\ & (\inst_lcd_top|cnt_data\(3) & (\word~232_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~564_combout\,
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~232_q\,
	datad => \word~488_q\,
	combout => \word~565_combout\);

-- Location: FF_X42_Y39_N29
\word~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~264_q\);

-- Location: FF_X42_Y39_N7
\word~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~520_q\);

-- Location: FF_X44_Y39_N11
\word~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~200_q\);

-- Location: FF_X43_Y39_N23
\word~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[1]~1_combout\,
	sload => VCC,
	ena => \word~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~456_q\);

-- Location: LCCOMB_X44_Y39_N10
\word~571\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~571_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|cnt_data\(3)) # ((\word~456_q\)))) # (!\inst_lcd_top|cnt_data\(5) & (!\inst_lcd_top|cnt_data\(3) & (\word~200_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~200_q\,
	datad => \word~456_q\,
	combout => \word~571_combout\);

-- Location: LCCOMB_X42_Y39_N6
\word~572\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~572_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\word~571_combout\ & ((\word~520_q\))) # (!\word~571_combout\ & (\word~264_q\)))) # (!\inst_lcd_top|cnt_data\(3) & (((\word~571_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datab => \word~264_q\,
	datac => \word~520_q\,
	datad => \word~571_combout\,
	combout => \word~572_combout\);

-- Location: LCCOMB_X42_Y40_N4
\word~573\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~573_combout\ = (\word~570_combout\ & (((\word~572_combout\) # (!\inst_lcd_top|cnt_data\(4))))) # (!\word~570_combout\ & (\word~565_combout\ & (\inst_lcd_top|cnt_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~570_combout\,
	datab => \word~565_combout\,
	datac => \inst_lcd_top|cnt_data\(4),
	datad => \word~572_combout\,
	combout => \word~573_combout\);

-- Location: LCCOMB_X42_Y40_N20
\word~584\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~584_combout\ = (!\inst_lcd_top|cnt_data\(0) & ((\inst_lcd_top|cnt_data\(1) & ((\word~573_combout\))) # (!\inst_lcd_top|cnt_data\(1) & (\word~583_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(0),
	datab => \word~583_combout\,
	datac => \word~573_combout\,
	datad => \inst_lcd_top|cnt_data\(1),
	combout => \word~584_combout\);

-- Location: LCCOMB_X38_Y39_N10
\inst_lcd_top|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|data[1]~feeder_combout\ = \word~584_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \word~584_combout\,
	combout => \inst_lcd_top|data[1]~feeder_combout\);

-- Location: FF_X38_Y39_N11
\inst_lcd_top|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|data[1]~feeder_combout\,
	asdata => \inst_lcd_top|EA.TESTWORD~q\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sload => \inst_lcd_top|ALT_INV_EA.WRLCD~q\,
	ena => \inst_lcd_top|data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|data\(1));

-- Location: LCCOMB_X41_Y38_N4
\uart_inst|data_read[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|data_read[2]~feeder_combout\ = \uart_inst|buffer_rx\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|buffer_rx\(2),
	combout => \uart_inst|data_read[2]~feeder_combout\);

-- Location: FF_X41_Y38_N5
\uart_inst|data_read[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|data_read[2]~feeder_combout\,
	ena => \uart_inst|data_read[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|data_read\(2));

-- Location: LCCOMB_X41_Y41_N18
\uart_inst|serial_read_o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|serial_read_o[2]~2_combout\ = (\uart_inst|rx_valid_stop~q\ & (\uart_inst|rx_valid_start~q\ & \uart_inst|data_read\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|rx_valid_stop~q\,
	datac => \uart_inst|rx_valid_start~q\,
	datad => \uart_inst|data_read\(2),
	combout => \uart_inst|serial_read_o[2]~2_combout\);

-- Location: LCCOMB_X41_Y40_N16
\word~249feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~249feeder_combout\ = \uart_inst|serial_read_o[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[2]~2_combout\,
	combout => \word~249feeder_combout\);

-- Location: FF_X41_Y40_N17
\word~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~249feeder_combout\,
	ena => \word~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~249_q\);

-- Location: FF_X39_Y40_N11
\word~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~505_q\);

-- Location: FF_X44_Y40_N9
\word~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~185_q\);

-- Location: FF_X39_Y40_N1
\word~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~441_q\);

-- Location: LCCOMB_X44_Y40_N8
\word~587\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~587_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|cnt_data\(3)) # ((\word~441_q\)))) # (!\inst_lcd_top|cnt_data\(5) & (!\inst_lcd_top|cnt_data\(3) & (\word~185_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~185_q\,
	datad => \word~441_q\,
	combout => \word~587_combout\);

-- Location: LCCOMB_X39_Y40_N10
\word~588\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~588_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\word~587_combout\ & ((\word~505_q\))) # (!\word~587_combout\ & (\word~249_q\)))) # (!\inst_lcd_top|cnt_data\(3) & (((\word~587_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~249_q\,
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~505_q\,
	datad => \word~587_combout\,
	combout => \word~588_combout\);

-- Location: LCCOMB_X41_Y40_N18
\word~121feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~121feeder_combout\ = \uart_inst|serial_read_o[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[2]~2_combout\,
	combout => \word~121feeder_combout\);

-- Location: FF_X41_Y40_N19
\word~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~121feeder_combout\,
	ena => \word~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~121_q\);

-- Location: FF_X39_Y42_N25
\word~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~377_q\);

-- Location: LCCOMB_X45_Y42_N24
\word~313feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~313feeder_combout\ = \uart_inst|serial_read_o[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[2]~2_combout\,
	combout => \word~313feeder_combout\);

-- Location: FF_X45_Y42_N25
\word~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~313feeder_combout\,
	ena => \word~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~313_q\);

-- Location: FF_X44_Y42_N3
\word~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~57_q\);

-- Location: LCCOMB_X44_Y42_N2
\word~589\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~589_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\word~313_q\) # ((\inst_lcd_top|cnt_data\(3))))) # (!\inst_lcd_top|cnt_data\(5) & (((\word~57_q\ & !\inst_lcd_top|cnt_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \word~313_q\,
	datac => \word~57_q\,
	datad => \inst_lcd_top|cnt_data\(3),
	combout => \word~589_combout\);

-- Location: LCCOMB_X39_Y42_N24
\word~590\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~590_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\word~589_combout\ & ((\word~377_q\))) # (!\word~589_combout\ & (\word~121_q\)))) # (!\inst_lcd_top|cnt_data\(3) & (((\word~589_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~121_q\,
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~377_q\,
	datad => \word~589_combout\,
	combout => \word~590_combout\);

-- Location: LCCOMB_X39_Y42_N18
\word~591\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~591_combout\ = (\inst_lcd_top|cnt_data\(4) & ((\word~588_combout\) # ((\inst_lcd_top|cnt_data\(1))))) # (!\inst_lcd_top|cnt_data\(4) & (((!\inst_lcd_top|cnt_data\(1) & \word~590_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \word~588_combout\,
	datac => \inst_lcd_top|cnt_data\(1),
	datad => \word~590_combout\,
	combout => \word~591_combout\);

-- Location: FF_X42_Y39_N1
\word~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~265_q\);

-- Location: FF_X42_Y39_N11
\word~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~521_q\);

-- Location: FF_X44_Y39_N5
\word~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~201_q\);

-- Location: FF_X43_Y39_N9
\word~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~457_q\);

-- Location: LCCOMB_X44_Y39_N4
\word~592\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~592_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|cnt_data\(3)) # ((\word~457_q\)))) # (!\inst_lcd_top|cnt_data\(5) & (!\inst_lcd_top|cnt_data\(3) & (\word~201_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~201_q\,
	datad => \word~457_q\,
	combout => \word~592_combout\);

-- Location: LCCOMB_X42_Y39_N10
\word~593\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~593_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\word~592_combout\ & ((\word~521_q\))) # (!\word~592_combout\ & (\word~265_q\)))) # (!\inst_lcd_top|cnt_data\(3) & (((\word~592_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datab => \word~265_q\,
	datac => \word~521_q\,
	datad => \word~592_combout\,
	combout => \word~593_combout\);

-- Location: FF_X43_Y42_N31
\word~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~393_q\);

-- Location: FF_X43_Y42_N29
\word~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~329_q\);

-- Location: LCCOMB_X41_Y42_N24
\word~137feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~137feeder_combout\ = \uart_inst|serial_read_o[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[2]~2_combout\,
	combout => \word~137feeder_combout\);

-- Location: FF_X41_Y42_N25
\word~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~137feeder_combout\,
	ena => \word~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~137_q\);

-- Location: FF_X44_Y42_N25
\word~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~73_q\);

-- Location: LCCOMB_X44_Y42_N24
\word~585\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~585_combout\ = (\inst_lcd_top|cnt_data\(5) & (((\inst_lcd_top|cnt_data\(3))))) # (!\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|cnt_data\(3) & (\word~137_q\)) # (!\inst_lcd_top|cnt_data\(3) & ((\word~73_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \word~137_q\,
	datac => \word~73_q\,
	datad => \inst_lcd_top|cnt_data\(3),
	combout => \word~585_combout\);

-- Location: LCCOMB_X43_Y42_N28
\word~586\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~586_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\word~585_combout\ & (\word~393_q\)) # (!\word~585_combout\ & ((\word~329_q\))))) # (!\inst_lcd_top|cnt_data\(5) & (((\word~585_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~393_q\,
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~329_q\,
	datad => \word~585_combout\,
	combout => \word~586_combout\);

-- Location: LCCOMB_X39_Y41_N24
\word~594\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~594_combout\ = (\word~591_combout\ & ((\word~593_combout\) # ((!\inst_lcd_top|cnt_data\(1))))) # (!\word~591_combout\ & (((\inst_lcd_top|cnt_data\(1) & \word~586_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~591_combout\,
	datab => \word~593_combout\,
	datac => \inst_lcd_top|cnt_data\(1),
	datad => \word~586_combout\,
	combout => \word~594_combout\);

-- Location: FF_X43_Y41_N25
\word~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~281_q\);

-- Location: LCCOMB_X43_Y40_N0
\word~409feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~409feeder_combout\ = \uart_inst|serial_read_o[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[2]~2_combout\,
	combout => \word~409feeder_combout\);

-- Location: FF_X43_Y40_N1
\word~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~409feeder_combout\,
	ena => \word~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~409_q\);

-- Location: LCCOMB_X43_Y41_N24
\word~597\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~597_combout\ = (\inst_lcd_top|cnt_data\(1) & (\inst_lcd_top|cnt_data\(4))) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(4) & ((\word~409_q\))) # (!\inst_lcd_top|cnt_data\(4) & (\word~281_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~281_q\,
	datad => \word~409_q\,
	combout => \word~597_combout\);

-- Location: FF_X39_Y41_N29
\word~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~425_q\);

-- Location: FF_X39_Y41_N11
\word~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~297_q\);

-- Location: LCCOMB_X39_Y41_N28
\word~598\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~598_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~597_combout\ & (\word~425_q\)) # (!\word~597_combout\ & ((\word~297_q\))))) # (!\inst_lcd_top|cnt_data\(1) & (\word~597_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~597_combout\,
	datac => \word~425_q\,
	datad => \word~297_q\,
	combout => \word~598_combout\);

-- Location: FF_X44_Y41_N19
\word~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~25_q\);

-- Location: FF_X44_Y40_N11
\word~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~153_q\);

-- Location: LCCOMB_X44_Y41_N18
\word~599\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~599_combout\ = (\inst_lcd_top|cnt_data\(1) & (\inst_lcd_top|cnt_data\(4))) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(4) & ((\word~153_q\))) # (!\inst_lcd_top|cnt_data\(4) & (\word~25_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~25_q\,
	datad => \word~153_q\,
	combout => \word~599_combout\);

-- Location: FF_X43_Y39_N27
\word~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~169_q\);

-- Location: FF_X44_Y41_N9
\word~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~41_q\);

-- Location: LCCOMB_X43_Y39_N26
\word~600\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~600_combout\ = (\word~599_combout\ & (((\word~169_q\)) # (!\inst_lcd_top|cnt_data\(1)))) # (!\word~599_combout\ & (\inst_lcd_top|cnt_data\(1) & ((\word~41_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~599_combout\,
	datab => \inst_lcd_top|cnt_data\(1),
	datac => \word~169_q\,
	datad => \word~41_q\,
	combout => \word~600_combout\);

-- Location: LCCOMB_X39_Y41_N30
\word~601\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~601_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\word~598_combout\) # ((\inst_lcd_top|cnt_data\(3))))) # (!\inst_lcd_top|cnt_data\(5) & (((!\inst_lcd_top|cnt_data\(3) & \word~600_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \word~598_combout\,
	datac => \inst_lcd_top|cnt_data\(3),
	datad => \word~600_combout\,
	combout => \word~601_combout\);

-- Location: FF_X42_Y41_N1
\word~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~89_q\);

-- Location: LCCOMB_X42_Y40_N6
\word~217feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~217feeder_combout\ = \uart_inst|serial_read_o[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[2]~2_combout\,
	combout => \word~217feeder_combout\);

-- Location: FF_X42_Y40_N7
\word~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~217feeder_combout\,
	ena => \word~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~217_q\);

-- Location: LCCOMB_X42_Y41_N0
\word~595\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~595_combout\ = (\inst_lcd_top|cnt_data\(1) & (\inst_lcd_top|cnt_data\(4))) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(4) & ((\word~217_q\))) # (!\inst_lcd_top|cnt_data\(4) & (\word~89_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \word~89_q\,
	datad => \word~217_q\,
	combout => \word~595_combout\);

-- Location: FF_X41_Y41_N1
\word~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~105_q\);

-- Location: LCCOMB_X41_Y39_N12
\word~233feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~233feeder_combout\ = \uart_inst|serial_read_o[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[2]~2_combout\,
	combout => \word~233feeder_combout\);

-- Location: FF_X41_Y39_N13
\word~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~233feeder_combout\,
	ena => \word~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~233_q\);

-- Location: LCCOMB_X41_Y41_N0
\word~596\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~596_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~595_combout\ & ((\word~233_q\))) # (!\word~595_combout\ & (\word~105_q\)))) # (!\inst_lcd_top|cnt_data\(1) & (\word~595_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~595_combout\,
	datac => \word~105_q\,
	datad => \word~233_q\,
	combout => \word~596_combout\);

-- Location: FF_X41_Y41_N19
\word~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|serial_read_o[2]~2_combout\,
	ena => \word~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~489_q\);

-- Location: FF_X42_Y41_N19
\word~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~361_q\);

-- Location: LCCOMB_X43_Y40_N10
\word~473feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~473feeder_combout\ = \uart_inst|serial_read_o[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[2]~2_combout\,
	combout => \word~473feeder_combout\);

-- Location: FF_X43_Y40_N11
\word~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~473feeder_combout\,
	ena => \word~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~473_q\);

-- Location: FF_X43_Y41_N3
\word~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[2]~2_combout\,
	sload => VCC,
	ena => \word~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~345_q\);

-- Location: LCCOMB_X43_Y41_N2
\word~602\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~602_combout\ = (\inst_lcd_top|cnt_data\(1) & (((\inst_lcd_top|cnt_data\(4))))) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(4) & (\word~473_q\)) # (!\inst_lcd_top|cnt_data\(4) & ((\word~345_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~473_q\,
	datac => \word~345_q\,
	datad => \inst_lcd_top|cnt_data\(4),
	combout => \word~602_combout\);

-- Location: LCCOMB_X42_Y41_N18
\word~603\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~603_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~602_combout\ & (\word~489_q\)) # (!\word~602_combout\ & ((\word~361_q\))))) # (!\inst_lcd_top|cnt_data\(1) & (((\word~602_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~489_q\,
	datac => \word~361_q\,
	datad => \word~602_combout\,
	combout => \word~603_combout\);

-- Location: LCCOMB_X39_Y41_N8
\word~604\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~604_combout\ = (\word~601_combout\ & (((\word~603_combout\) # (!\inst_lcd_top|cnt_data\(3))))) # (!\word~601_combout\ & (\word~596_combout\ & (\inst_lcd_top|cnt_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~601_combout\,
	datab => \word~596_combout\,
	datac => \inst_lcd_top|cnt_data\(3),
	datad => \word~603_combout\,
	combout => \word~604_combout\);

-- Location: LCCOMB_X39_Y41_N18
\word~605\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~605_combout\ = (!\inst_lcd_top|cnt_data\(0) & ((\inst_lcd_top|cnt_data\(2) & (\word~594_combout\)) # (!\inst_lcd_top|cnt_data\(2) & ((\word~604_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(0),
	datab => \word~594_combout\,
	datac => \word~604_combout\,
	datad => \inst_lcd_top|cnt_data\(2),
	combout => \word~605_combout\);

-- Location: LCCOMB_X38_Y39_N28
\inst_lcd_top|data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|data[2]~feeder_combout\ = \word~605_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \word~605_combout\,
	combout => \inst_lcd_top|data[2]~feeder_combout\);

-- Location: FF_X38_Y39_N29
\inst_lcd_top|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|data[2]~feeder_combout\,
	asdata => \inst_lcd_top|EA.TESTWORD~q\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sload => \inst_lcd_top|ALT_INV_EA.WRLCD~q\,
	ena => \inst_lcd_top|data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|data\(2));

-- Location: LCCOMB_X41_Y38_N16
\uart_inst|data_read[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|data_read[4]~feeder_combout\ = \uart_inst|buffer_rx\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|buffer_rx\(4),
	combout => \uart_inst|data_read[4]~feeder_combout\);

-- Location: FF_X41_Y38_N17
\uart_inst|data_read[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|data_read[4]~feeder_combout\,
	ena => \uart_inst|data_read[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|data_read\(4));

-- Location: LCCOMB_X41_Y42_N30
\uart_inst|serial_read_o[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|serial_read_o[4]~4_combout\ = (\uart_inst|rx_valid_stop~q\ & (\uart_inst|rx_valid_start~q\ & \uart_inst|data_read\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|rx_valid_stop~q\,
	datac => \uart_inst|rx_valid_start~q\,
	datad => \uart_inst|data_read\(4),
	combout => \uart_inst|serial_read_o[4]~4_combout\);

-- Location: FF_X43_Y40_N17
\word~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~411_q\);

-- Location: FF_X39_Y41_N5
\word~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~427_q\);

-- Location: LCCOMB_X43_Y40_N16
\word~627\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~627_combout\ = (\inst_lcd_top|cnt_data\(2) & (\inst_lcd_top|cnt_data\(1))) # (!\inst_lcd_top|cnt_data\(2) & ((\inst_lcd_top|cnt_data\(1) & ((\word~427_q\))) # (!\inst_lcd_top|cnt_data\(1) & (\word~411_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \inst_lcd_top|cnt_data\(1),
	datac => \word~411_q\,
	datad => \word~427_q\,
	combout => \word~627_combout\);

-- Location: FF_X39_Y40_N17
\word~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~443_q\);

-- Location: LCCOMB_X43_Y39_N0
\word~459feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~459feeder_combout\ = \uart_inst|serial_read_o[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[4]~4_combout\,
	combout => \word~459feeder_combout\);

-- Location: FF_X43_Y39_N1
\word~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~459feeder_combout\,
	ena => \word~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~459_q\);

-- Location: LCCOMB_X39_Y40_N16
\word~628\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~628_combout\ = (\word~627_combout\ & (((\word~459_q\)) # (!\inst_lcd_top|cnt_data\(2)))) # (!\word~627_combout\ & (\inst_lcd_top|cnt_data\(2) & (\word~443_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~627_combout\,
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~443_q\,
	datad => \word~459_q\,
	combout => \word~628_combout\);

-- Location: FF_X42_Y40_N11
\word~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~219_q\);

-- Location: FF_X41_Y40_N25
\word~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~251_q\);

-- Location: LCCOMB_X42_Y40_N10
\word~629\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~629_combout\ = (\inst_lcd_top|cnt_data\(1) & (\inst_lcd_top|cnt_data\(2))) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(2) & ((\word~251_q\))) # (!\inst_lcd_top|cnt_data\(2) & (\word~219_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~219_q\,
	datad => \word~251_q\,
	combout => \word~629_combout\);

-- Location: FF_X42_Y39_N25
\word~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~267_q\);

-- Location: FF_X41_Y39_N25
\word~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~235_q\);

-- Location: LCCOMB_X42_Y39_N24
\word~630\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~630_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~629_combout\ & (\word~267_q\)) # (!\word~629_combout\ & ((\word~235_q\))))) # (!\inst_lcd_top|cnt_data\(1) & (\word~629_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~629_combout\,
	datac => \word~267_q\,
	datad => \word~235_q\,
	combout => \word~630_combout\);

-- Location: LCCOMB_X43_Y39_N2
\word~171feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~171feeder_combout\ = \uart_inst|serial_read_o[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[4]~4_combout\,
	combout => \word~171feeder_combout\);

-- Location: FF_X43_Y39_N3
\word~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~171feeder_combout\,
	ena => \word~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~171_q\);

-- Location: FF_X44_Y39_N25
\word~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~203_q\);

-- Location: FF_X44_Y40_N19
\word~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~155_q\);

-- Location: FF_X44_Y40_N25
\word~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~187_q\);

-- Location: LCCOMB_X44_Y40_N18
\word~631\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~631_combout\ = (\inst_lcd_top|cnt_data\(1) & (\inst_lcd_top|cnt_data\(2))) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(2) & ((\word~187_q\))) # (!\inst_lcd_top|cnt_data\(2) & (\word~155_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|cnt_data\(2),
	datac => \word~155_q\,
	datad => \word~187_q\,
	combout => \word~631_combout\);

-- Location: LCCOMB_X44_Y39_N24
\word~632\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~632_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~631_combout\ & ((\word~203_q\))) # (!\word~631_combout\ & (\word~171_q\)))) # (!\inst_lcd_top|cnt_data\(1) & (((\word~631_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~171_q\,
	datab => \inst_lcd_top|cnt_data\(1),
	datac => \word~203_q\,
	datad => \word~631_combout\,
	combout => \word~632_combout\);

-- Location: LCCOMB_X38_Y39_N20
\word~633\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~633_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\inst_lcd_top|cnt_data\(5)) # ((\word~630_combout\)))) # (!\inst_lcd_top|cnt_data\(3) & (!\inst_lcd_top|cnt_data\(5) & ((\word~632_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~630_combout\,
	datad => \word~632_combout\,
	combout => \word~633_combout\);

-- Location: LCCOMB_X41_Y41_N8
\word~491feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~491feeder_combout\ = \uart_inst|serial_read_o[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[4]~4_combout\,
	combout => \word~491feeder_combout\);

-- Location: FF_X41_Y41_N9
\word~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~491feeder_combout\,
	ena => \word~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~491_q\);

-- Location: FF_X42_Y39_N19
\word~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~523_q\);

-- Location: FF_X43_Y40_N27
\word~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~475_q\);

-- Location: FF_X39_Y40_N19
\word~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~507_q\);

-- Location: LCCOMB_X43_Y40_N26
\word~634\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~634_combout\ = (\inst_lcd_top|cnt_data\(2) & ((\inst_lcd_top|cnt_data\(1)) # ((\word~507_q\)))) # (!\inst_lcd_top|cnt_data\(2) & (!\inst_lcd_top|cnt_data\(1) & (\word~475_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \inst_lcd_top|cnt_data\(1),
	datac => \word~475_q\,
	datad => \word~507_q\,
	combout => \word~634_combout\);

-- Location: LCCOMB_X42_Y39_N18
\word~635\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~635_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~634_combout\ & ((\word~523_q\))) # (!\word~634_combout\ & (\word~491_q\)))) # (!\inst_lcd_top|cnt_data\(1) & (((\word~634_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~491_q\,
	datac => \word~523_q\,
	datad => \word~634_combout\,
	combout => \word~635_combout\);

-- Location: LCCOMB_X38_Y39_N14
\word~636\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~636_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\word~633_combout\ & ((\word~635_combout\))) # (!\word~633_combout\ & (\word~628_combout\)))) # (!\inst_lcd_top|cnt_data\(5) & (((\word~633_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~628_combout\,
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~633_combout\,
	datad => \word~635_combout\,
	combout => \word~636_combout\);

-- Location: FF_X42_Y41_N9
\word~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~363_q\);

-- Location: FF_X39_Y41_N15
\word~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~299_q\);

-- Location: FF_X44_Y41_N17
\word~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~43_q\);

-- Location: LCCOMB_X41_Y41_N10
\word~107feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~107feeder_combout\ = \uart_inst|serial_read_o[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[4]~4_combout\,
	combout => \word~107feeder_combout\);

-- Location: FF_X41_Y41_N11
\word~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~107feeder_combout\,
	ena => \word~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~107_q\);

-- Location: LCCOMB_X44_Y41_N16
\word~637\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~637_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\inst_lcd_top|cnt_data\(5)) # ((\word~107_q\)))) # (!\inst_lcd_top|cnt_data\(3) & (!\inst_lcd_top|cnt_data\(5) & (\word~43_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~43_q\,
	datad => \word~107_q\,
	combout => \word~637_combout\);

-- Location: LCCOMB_X39_Y41_N14
\word~638\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~638_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\word~637_combout\ & (\word~363_q\)) # (!\word~637_combout\ & ((\word~299_q\))))) # (!\inst_lcd_top|cnt_data\(5) & (((\word~637_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \word~363_q\,
	datac => \word~299_q\,
	datad => \word~637_combout\,
	combout => \word~638_combout\);

-- Location: FF_X42_Y41_N3
\word~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~91_q\);

-- Location: FF_X43_Y41_N19
\word~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~347_q\);

-- Location: FF_X44_Y41_N3
\word~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~27_q\);

-- Location: FF_X43_Y41_N9
\word~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~283_q\);

-- Location: LCCOMB_X44_Y41_N2
\word~641\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~641_combout\ = (\inst_lcd_top|cnt_data\(3) & (\inst_lcd_top|cnt_data\(5))) # (!\inst_lcd_top|cnt_data\(3) & ((\inst_lcd_top|cnt_data\(5) & ((\word~283_q\))) # (!\inst_lcd_top|cnt_data\(5) & (\word~27_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~27_q\,
	datad => \word~283_q\,
	combout => \word~641_combout\);

-- Location: LCCOMB_X43_Y41_N18
\word~642\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~642_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\word~641_combout\ & ((\word~347_q\))) # (!\word~641_combout\ & (\word~91_q\)))) # (!\inst_lcd_top|cnt_data\(3) & (((\word~641_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~91_q\,
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~347_q\,
	datad => \word~641_combout\,
	combout => \word~642_combout\);

-- Location: FF_X45_Y42_N13
\word~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~315_q\);

-- Location: FF_X45_Y42_N7
\word~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~59_q\);

-- Location: LCCOMB_X45_Y42_N6
\word~639\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~639_combout\ = (\inst_lcd_top|cnt_data\(3) & (((\inst_lcd_top|cnt_data\(5))))) # (!\inst_lcd_top|cnt_data\(3) & ((\inst_lcd_top|cnt_data\(5) & (\word~315_q\)) # (!\inst_lcd_top|cnt_data\(5) & ((\word~59_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~315_q\,
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~59_q\,
	datad => \inst_lcd_top|cnt_data\(5),
	combout => \word~639_combout\);

-- Location: FF_X39_Y42_N23
\word~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~379_q\);

-- Location: FF_X41_Y40_N3
\word~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~123_q\);

-- Location: LCCOMB_X39_Y42_N22
\word~640\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~640_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\word~639_combout\ & (\word~379_q\)) # (!\word~639_combout\ & ((\word~123_q\))))) # (!\inst_lcd_top|cnt_data\(3) & (\word~639_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datab => \word~639_combout\,
	datac => \word~379_q\,
	datad => \word~123_q\,
	combout => \word~640_combout\);

-- Location: LCCOMB_X39_Y42_N8
\word~643\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~643_combout\ = (\inst_lcd_top|cnt_data\(1) & (((\inst_lcd_top|cnt_data\(2))))) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(2) & ((\word~640_combout\))) # (!\inst_lcd_top|cnt_data\(2) & (\word~642_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~642_combout\,
	datac => \word~640_combout\,
	datad => \inst_lcd_top|cnt_data\(2),
	combout => \word~643_combout\);

-- Location: LCCOMB_X43_Y42_N20
\word~331feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~331feeder_combout\ = \uart_inst|serial_read_o[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[4]~4_combout\,
	combout => \word~331feeder_combout\);

-- Location: FF_X43_Y42_N21
\word~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~331feeder_combout\,
	ena => \word~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~331_q\);

-- Location: FF_X44_Y42_N9
\word~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~75_q\);

-- Location: LCCOMB_X44_Y42_N8
\word~644\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~644_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\word~331_q\) # ((\inst_lcd_top|cnt_data\(3))))) # (!\inst_lcd_top|cnt_data\(5) & (((\word~75_q\ & !\inst_lcd_top|cnt_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \word~331_q\,
	datac => \word~75_q\,
	datad => \inst_lcd_top|cnt_data\(3),
	combout => \word~644_combout\);

-- Location: FF_X41_Y42_N31
\word~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|serial_read_o[4]~4_combout\,
	ena => \word~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~395_q\);

-- Location: FF_X41_Y42_N13
\word~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[4]~4_combout\,
	sload => VCC,
	ena => \word~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~139_q\);

-- Location: LCCOMB_X41_Y42_N12
\word~645\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~645_combout\ = (\word~644_combout\ & ((\word~395_q\) # ((!\inst_lcd_top|cnt_data\(3))))) # (!\word~644_combout\ & (((\word~139_q\ & \inst_lcd_top|cnt_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~644_combout\,
	datab => \word~395_q\,
	datac => \word~139_q\,
	datad => \inst_lcd_top|cnt_data\(3),
	combout => \word~645_combout\);

-- Location: LCCOMB_X39_Y42_N26
\word~646\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~646_combout\ = (\word~643_combout\ & (((\word~645_combout\) # (!\inst_lcd_top|cnt_data\(1))))) # (!\word~643_combout\ & (\word~638_combout\ & (\inst_lcd_top|cnt_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~638_combout\,
	datab => \word~643_combout\,
	datac => \inst_lcd_top|cnt_data\(1),
	datad => \word~645_combout\,
	combout => \word~646_combout\);

-- Location: LCCOMB_X38_Y39_N16
\word~647\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~647_combout\ = (!\inst_lcd_top|cnt_data\(0) & ((\inst_lcd_top|cnt_data\(4) & (\word~636_combout\)) # (!\inst_lcd_top|cnt_data\(4) & ((\word~646_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(4),
	datab => \inst_lcd_top|cnt_data\(0),
	datac => \word~636_combout\,
	datad => \word~646_combout\,
	combout => \word~647_combout\);

-- Location: LCCOMB_X38_Y39_N0
\inst_lcd_top|data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|data[4]~feeder_combout\ = \word~647_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \word~647_combout\,
	combout => \inst_lcd_top|data[4]~feeder_combout\);

-- Location: FF_X38_Y39_N1
\inst_lcd_top|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|data[4]~feeder_combout\,
	asdata => \inst_lcd_top|EA.TESTWORD~q\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sload => \inst_lcd_top|ALT_INV_EA.WRLCD~q\,
	ena => \inst_lcd_top|data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|data\(4));

-- Location: LCCOMB_X38_Y39_N8
\inst_lcd_top|process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|process_2~1_combout\ = (\inst_lcd_top|data\(1) & (\inst_lcd_top|data\(2) & (\inst_lcd_top|data\(3) & \inst_lcd_top|data\(4)))) # (!\inst_lcd_top|data\(1) & (!\inst_lcd_top|data\(2) & (!\inst_lcd_top|data\(3) & !\inst_lcd_top|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|data\(1),
	datab => \inst_lcd_top|data\(2),
	datac => \inst_lcd_top|data\(3),
	datad => \inst_lcd_top|data\(4),
	combout => \inst_lcd_top|process_2~1_combout\);

-- Location: LCCOMB_X41_Y38_N22
\uart_inst|data_read[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|data_read[7]~feeder_combout\ = \uart_inst|buffer_rx\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|buffer_rx\(7),
	combout => \uart_inst|data_read[7]~feeder_combout\);

-- Location: FF_X41_Y38_N23
\uart_inst|data_read[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|data_read[7]~feeder_combout\,
	ena => \uart_inst|data_read[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_inst|data_read\(7));

-- Location: LCCOMB_X41_Y41_N12
\uart_inst|serial_read_o[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_inst|serial_read_o[7]~7_combout\ = (\uart_inst|rx_valid_stop~q\ & (\uart_inst|rx_valid_start~q\ & \uart_inst|data_read\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_inst|rx_valid_stop~q\,
	datac => \uart_inst|rx_valid_start~q\,
	datad => \uart_inst|data_read\(7),
	combout => \uart_inst|serial_read_o[7]~7_combout\);

-- Location: FF_X43_Y41_N5
\word~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~350_q\);

-- Location: FF_X43_Y41_N31
\word~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~286_q\);

-- Location: LCCOMB_X43_Y41_N30
\word~700\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~700_combout\ = (\inst_lcd_top|cnt_data\(1) & (((\inst_lcd_top|cnt_data\(3))))) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(3) & (\word~350_q\)) # (!\inst_lcd_top|cnt_data\(3) & ((\word~286_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~350_q\,
	datac => \word~286_q\,
	datad => \inst_lcd_top|cnt_data\(3),
	combout => \word~700_combout\);

-- Location: FF_X39_Y41_N13
\word~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~302_q\);

-- Location: FF_X42_Y41_N5
\word~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~366_q\);

-- Location: LCCOMB_X39_Y41_N12
\word~701\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~701_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~700_combout\ & ((\word~366_q\))) # (!\word~700_combout\ & (\word~302_q\)))) # (!\inst_lcd_top|cnt_data\(1) & (\word~700_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~700_combout\,
	datac => \word~302_q\,
	datad => \word~366_q\,
	combout => \word~701_combout\);

-- Location: FF_X41_Y41_N13
\word~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \uart_inst|serial_read_o[7]~7_combout\,
	ena => \word~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~494_q\);

-- Location: FF_X39_Y41_N23
\word~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~430_q\);

-- Location: FF_X43_Y40_N23
\word~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~414_q\);

-- Location: FF_X43_Y40_N29
\word~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~478_q\);

-- Location: LCCOMB_X43_Y40_N22
\word~707\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~707_combout\ = (\inst_lcd_top|cnt_data\(3) & ((\inst_lcd_top|cnt_data\(1)) # ((\word~478_q\)))) # (!\inst_lcd_top|cnt_data\(3) & (!\inst_lcd_top|cnt_data\(1) & (\word~414_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(3),
	datab => \inst_lcd_top|cnt_data\(1),
	datac => \word~414_q\,
	datad => \word~478_q\,
	combout => \word~707_combout\);

-- Location: LCCOMB_X39_Y41_N22
\word~708\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~708_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~707_combout\ & (\word~494_q\)) # (!\word~707_combout\ & ((\word~430_q\))))) # (!\inst_lcd_top|cnt_data\(1) & (((\word~707_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~494_q\,
	datac => \word~430_q\,
	datad => \word~707_combout\,
	combout => \word~708_combout\);

-- Location: FF_X44_Y41_N21
\word~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~46_q\);

-- Location: FF_X41_Y41_N27
\word~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~110_q\);

-- Location: FF_X42_Y41_N7
\word~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~94_q\);

-- Location: FF_X44_Y41_N23
\word~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~30_q\);

-- Location: LCCOMB_X44_Y41_N22
\word~704\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~704_combout\ = (\inst_lcd_top|cnt_data\(1) & (((\inst_lcd_top|cnt_data\(3))))) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(3) & (\word~94_q\)) # (!\inst_lcd_top|cnt_data\(3) & ((\word~30_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~94_q\,
	datac => \word~30_q\,
	datad => \inst_lcd_top|cnt_data\(3),
	combout => \word~704_combout\);

-- Location: LCCOMB_X41_Y41_N26
\word~705\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~705_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~704_combout\ & ((\word~110_q\))) # (!\word~704_combout\ & (\word~46_q\)))) # (!\inst_lcd_top|cnt_data\(1) & (((\word~704_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~46_q\,
	datac => \word~110_q\,
	datad => \word~704_combout\,
	combout => \word~705_combout\);

-- Location: FF_X44_Y40_N27
\word~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~158_q\);

-- Location: LCCOMB_X42_Y40_N22
\word~222feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~222feeder_combout\ = \uart_inst|serial_read_o[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[7]~7_combout\,
	combout => \word~222feeder_combout\);

-- Location: FF_X42_Y40_N23
\word~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~222feeder_combout\,
	ena => \word~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~222_q\);

-- Location: LCCOMB_X44_Y40_N26
\word~702\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~702_combout\ = (\inst_lcd_top|cnt_data\(1) & (\inst_lcd_top|cnt_data\(3))) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(3) & ((\word~222_q\))) # (!\inst_lcd_top|cnt_data\(3) & (\word~158_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|cnt_data\(3),
	datac => \word~158_q\,
	datad => \word~222_q\,
	combout => \word~702_combout\);

-- Location: FF_X43_Y39_N21
\word~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~174_q\);

-- Location: FF_X41_Y39_N7
\word~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~238_q\);

-- Location: LCCOMB_X41_Y39_N6
\word~703\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~703_combout\ = (\word~702_combout\ & (((\word~238_q\) # (!\inst_lcd_top|cnt_data\(1))))) # (!\word~702_combout\ & (\word~174_q\ & ((\inst_lcd_top|cnt_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~702_combout\,
	datab => \word~174_q\,
	datac => \word~238_q\,
	datad => \inst_lcd_top|cnt_data\(1),
	combout => \word~703_combout\);

-- Location: LCCOMB_X39_Y39_N10
\word~706\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~706_combout\ = (\inst_lcd_top|cnt_data\(5) & (((\inst_lcd_top|cnt_data\(4))))) # (!\inst_lcd_top|cnt_data\(5) & ((\inst_lcd_top|cnt_data\(4) & ((\word~703_combout\))) # (!\inst_lcd_top|cnt_data\(4) & (\word~705_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \word~705_combout\,
	datac => \inst_lcd_top|cnt_data\(4),
	datad => \word~703_combout\,
	combout => \word~706_combout\);

-- Location: LCCOMB_X39_Y39_N28
\word~709\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~709_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\word~706_combout\ & ((\word~708_combout\))) # (!\word~706_combout\ & (\word~701_combout\)))) # (!\inst_lcd_top|cnt_data\(5) & (((\word~706_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \word~701_combout\,
	datac => \word~708_combout\,
	datad => \word~706_combout\,
	combout => \word~709_combout\);

-- Location: LCCOMB_X44_Y42_N18
\word~78feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~78feeder_combout\ = \uart_inst|serial_read_o[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_inst|serial_read_o[7]~7_combout\,
	combout => \word~78feeder_combout\);

-- Location: FF_X44_Y42_N19
\word~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \word~78feeder_combout\,
	ena => \word~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~78_q\);

-- Location: FF_X43_Y42_N7
\word~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~334_q\);

-- Location: FF_X45_Y42_N29
\word~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~62_q\);

-- Location: FF_X45_Y42_N3
\word~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~318_q\);

-- Location: LCCOMB_X45_Y42_N28
\word~694\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~694_combout\ = (\inst_lcd_top|cnt_data\(1) & (\inst_lcd_top|cnt_data\(5))) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(5) & ((\word~318_q\))) # (!\inst_lcd_top|cnt_data\(5) & (\word~62_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~62_q\,
	datad => \word~318_q\,
	combout => \word~694_combout\);

-- Location: LCCOMB_X43_Y42_N6
\word~695\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~695_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~694_combout\ & ((\word~334_q\))) # (!\word~694_combout\ & (\word~78_q\)))) # (!\inst_lcd_top|cnt_data\(1) & (((\word~694_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~78_q\,
	datac => \word~334_q\,
	datad => \word~694_combout\,
	combout => \word~695_combout\);

-- Location: FF_X39_Y40_N5
\word~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~446_q\);

-- Location: FF_X44_Y39_N21
\word~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~190_q\);

-- Location: LCCOMB_X44_Y39_N20
\word~692\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~692_combout\ = (\inst_lcd_top|cnt_data\(1) & (((\inst_lcd_top|cnt_data\(5))))) # (!\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(5) & (\word~446_q\)) # (!\inst_lcd_top|cnt_data\(5) & ((\word~190_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~446_q\,
	datab => \inst_lcd_top|cnt_data\(1),
	datac => \word~190_q\,
	datad => \inst_lcd_top|cnt_data\(5),
	combout => \word~692_combout\);

-- Location: FF_X43_Y39_N19
\word~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~462_q\);

-- Location: FF_X44_Y39_N3
\word~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~206_q\);

-- Location: LCCOMB_X43_Y39_N18
\word~693\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~693_combout\ = (\word~692_combout\ & (((\word~462_q\)) # (!\inst_lcd_top|cnt_data\(1)))) # (!\word~692_combout\ & (\inst_lcd_top|cnt_data\(1) & ((\word~206_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~692_combout\,
	datab => \inst_lcd_top|cnt_data\(1),
	datac => \word~462_q\,
	datad => \word~206_q\,
	combout => \word~693_combout\);

-- Location: LCCOMB_X39_Y39_N30
\word~696\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~696_combout\ = (\inst_lcd_top|cnt_data\(4) & (((\inst_lcd_top|cnt_data\(3)) # (\word~693_combout\)))) # (!\inst_lcd_top|cnt_data\(4) & (\word~695_combout\ & (!\inst_lcd_top|cnt_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~695_combout\,
	datab => \inst_lcd_top|cnt_data\(4),
	datac => \inst_lcd_top|cnt_data\(3),
	datad => \word~693_combout\,
	combout => \word~696_combout\);

-- Location: FF_X41_Y39_N29
\word~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~126_q\);

-- Location: FF_X41_Y42_N29
\word~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~142_q\);

-- Location: LCCOMB_X41_Y39_N28
\word~690\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~690_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\inst_lcd_top|cnt_data\(5)) # ((\word~142_q\)))) # (!\inst_lcd_top|cnt_data\(1) & (!\inst_lcd_top|cnt_data\(5) & (\word~126_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~126_q\,
	datad => \word~142_q\,
	combout => \word~690_combout\);

-- Location: FF_X39_Y42_N15
\word~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~382_q\);

-- Location: FF_X43_Y42_N5
\word~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~398_q\);

-- Location: LCCOMB_X39_Y42_N14
\word~691\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~691_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\word~690_combout\ & ((\word~398_q\))) # (!\word~690_combout\ & (\word~382_q\)))) # (!\inst_lcd_top|cnt_data\(5) & (\word~690_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(5),
	datab => \word~690_combout\,
	datac => \word~382_q\,
	datad => \word~398_q\,
	combout => \word~691_combout\);

-- Location: FF_X39_Y40_N15
\word~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~510_q\);

-- Location: FF_X41_Y40_N21
\word~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~254_q\);

-- Location: LCCOMB_X41_Y40_N20
\word~697\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~697_combout\ = (\inst_lcd_top|cnt_data\(5) & ((\word~510_q\) # ((\inst_lcd_top|cnt_data\(1))))) # (!\inst_lcd_top|cnt_data\(5) & (((\word~254_q\ & !\inst_lcd_top|cnt_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~510_q\,
	datab => \inst_lcd_top|cnt_data\(5),
	datac => \word~254_q\,
	datad => \inst_lcd_top|cnt_data\(1),
	combout => \word~697_combout\);

-- Location: FF_X42_Y39_N13
\word~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~526_q\);

-- Location: FF_X42_Y39_N3
\word~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	asdata => \uart_inst|serial_read_o[7]~7_combout\,
	sload => VCC,
	ena => \word~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \word~270_q\);

-- Location: LCCOMB_X42_Y39_N12
\word~698\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~698_combout\ = (\inst_lcd_top|cnt_data\(1) & ((\word~697_combout\ & (\word~526_q\)) # (!\word~697_combout\ & ((\word~270_q\))))) # (!\inst_lcd_top|cnt_data\(1) & (\word~697_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(1),
	datab => \word~697_combout\,
	datac => \word~526_q\,
	datad => \word~270_q\,
	combout => \word~698_combout\);

-- Location: LCCOMB_X39_Y39_N0
\word~699\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~699_combout\ = (\word~696_combout\ & (((\word~698_combout\) # (!\inst_lcd_top|cnt_data\(3))))) # (!\word~696_combout\ & (\word~691_combout\ & (\inst_lcd_top|cnt_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word~696_combout\,
	datab => \word~691_combout\,
	datac => \inst_lcd_top|cnt_data\(3),
	datad => \word~698_combout\,
	combout => \word~699_combout\);

-- Location: LCCOMB_X39_Y39_N22
\word~710\ : cycloneive_lcell_comb
-- Equation(s):
-- \word~710_combout\ = (!\inst_lcd_top|cnt_data\(0) & ((\inst_lcd_top|cnt_data\(2) & ((\word~699_combout\))) # (!\inst_lcd_top|cnt_data\(2) & (\word~709_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cnt_data\(2),
	datab => \word~709_combout\,
	datac => \inst_lcd_top|cnt_data\(0),
	datad => \word~699_combout\,
	combout => \word~710_combout\);

-- Location: LCCOMB_X38_Y39_N12
\inst_lcd_top|data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|data[7]~feeder_combout\ = \word~710_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \word~710_combout\,
	combout => \inst_lcd_top|data[7]~feeder_combout\);

-- Location: FF_X38_Y39_N13
\inst_lcd_top|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|data[7]~feeder_combout\,
	asdata => \inst_lcd_top|EA.TESTWORD~q\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sload => \inst_lcd_top|ALT_INV_EA.WRLCD~q\,
	ena => \inst_lcd_top|data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|data\(7));

-- Location: LCCOMB_X38_Y39_N2
\inst_lcd_top|process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|process_2~2_combout\ = ((\inst_lcd_top|process_2~1_combout\ & \inst_lcd_top|data\(7))) # (!\inst_lcd_top|data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|data\(5),
	datac => \inst_lcd_top|process_2~1_combout\,
	datad => \inst_lcd_top|data\(7),
	combout => \inst_lcd_top|process_2~2_combout\);

-- Location: LCCOMB_X37_Y39_N4
\inst_lcd_top|process_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|process_2~3_combout\ = (\inst_lcd_top|cmd\(0) & (\inst_lcd_top|process_2~0_combout\ & (\inst_lcd_top|cmd\(1) & \inst_lcd_top|process_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|cmd\(0),
	datab => \inst_lcd_top|process_2~0_combout\,
	datac => \inst_lcd_top|cmd\(1),
	datad => \inst_lcd_top|process_2~2_combout\,
	combout => \inst_lcd_top|process_2~3_combout\);

-- Location: LCCOMB_X36_Y39_N12
\inst_lcd_top|data[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|data[4]~0_combout\ = (!\inst_lcd_top|EA.CLRLCD~q\ & (\inst_lcd_top|WideOr9~0_combout\ & ((\inst_lcd_top|process_2~3_combout\) # (!\inst_lcd_top|EA.TESTWORD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|EA.CLRLCD~q\,
	datab => \inst_lcd_top|EA.TESTWORD~q\,
	datac => \inst_lcd_top|WideOr9~0_combout\,
	datad => \inst_lcd_top|process_2~3_combout\,
	combout => \inst_lcd_top|data[4]~0_combout\);

-- Location: FF_X38_Y39_N25
\inst_lcd_top|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|data[0]~feeder_combout\,
	asdata => \inst_lcd_top|EA.TESTWORD~q\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	sload => \inst_lcd_top|ALT_INV_EA.WRLCD~q\,
	ena => \inst_lcd_top|data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|data\(0));

-- Location: LCCOMB_X30_Y39_N6
\inst_lcd_top|lcd_ctrl_inst|data[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|data[0]~2_combout\ = (\inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\ & !\inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|data[0]~2_combout\);

-- Location: LCCOMB_X30_Y39_N16
\inst_lcd_top|lcd_ctrl_inst|data[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|data[0]~3_combout\ = (\inst_lcd_top|lcd_ctrl_inst|data[0]~2_combout\ & (!\inst_lcd_top|lcd_ctrl_inst|index\(1) & ((\inst_lcd_top|lcd_ctrl_inst|index\(0)) # (!\inst_lcd_top|lcd_ctrl_inst|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|data[0]~2_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|index\(2),
	datac => \inst_lcd_top|lcd_ctrl_inst|index\(0),
	datad => \inst_lcd_top|lcd_ctrl_inst|index\(1),
	combout => \inst_lcd_top|lcd_ctrl_inst|data[0]~3_combout\);

-- Location: LCCOMB_X30_Y39_N28
\inst_lcd_top|lcd_ctrl_inst|data[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|data[0]~4_combout\ = (\inst_lcd_top|lcd_ctrl_inst|data[0]~3_combout\) # ((\inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\) # ((\inst_lcd_top|data\(0) & \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|data\(0),
	datab => \inst_lcd_top|lcd_ctrl_inst|data[0]~3_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|data[0]~4_combout\);

-- Location: LCCOMB_X30_Y39_N26
\inst_lcd_top|lcd_ctrl_inst|data[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|data[6]~5_combout\ = (\inst_lcd_top|lcd_ctrl_inst|clk_en~q\ & ((\inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\) # ((!\inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\ & !\inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\,
	datab => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|data[6]~5_combout\);

-- Location: FF_X30_Y39_N29
\inst_lcd_top|lcd_ctrl_inst|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|data[0]~4_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|data[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|data\(0));

-- Location: LCCOMB_X32_Y39_N10
\inst_lcd_top|lcd_ctrl_inst|LCD_DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|LCD_DATA~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\) # ((\inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\) # (\inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|LCD_DATA~0_combout\);

-- Location: LCCOMB_X30_Y39_N20
\inst_lcd_top|lcd_ctrl_inst|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector26~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\ & ((\inst_lcd_top|lcd_ctrl_inst|Add2~0_combout\) # ((\inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\ & \inst_lcd_top|data\(1))))) # 
-- (!\inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\ & (\inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\ & (\inst_lcd_top|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\,
	datab => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\,
	datac => \inst_lcd_top|data\(1),
	datad => \inst_lcd_top|lcd_ctrl_inst|Add2~0_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector26~0_combout\);

-- Location: LCCOMB_X30_Y39_N22
\inst_lcd_top|lcd_ctrl_inst|Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector26~1_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Selector26~0_combout\) # ((\inst_lcd_top|lcd_ctrl_inst|data\(1) & ((\inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\) # (\inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\,
	datab => \inst_lcd_top|lcd_ctrl_inst|Selector26~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|data\(1),
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector26~1_combout\);

-- Location: FF_X30_Y39_N23
\inst_lcd_top|lcd_ctrl_inst|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Selector26~1_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|data\(1));

-- Location: LCCOMB_X30_Y39_N30
\inst_lcd_top|lcd_ctrl_inst|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector25~1_combout\ = (\inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\) # ((\inst_lcd_top|lcd_ctrl_inst|data\(2) & ((\inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\) # (\inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\,
	datab => \inst_lcd_top|lcd_ctrl_inst|data\(2),
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector25~1_combout\);

-- Location: LCCOMB_X34_Y39_N20
\inst_lcd_top|lcd_ctrl_inst|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector25~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\ & ((\inst_lcd_top|lcd_ctrl_inst|index\(1)) # ((\inst_lcd_top|lcd_ctrl_inst|index\(0) & !\inst_lcd_top|lcd_ctrl_inst|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|index\(1),
	datab => \inst_lcd_top|lcd_ctrl_inst|index\(0),
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|index\(3),
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector25~0_combout\);

-- Location: LCCOMB_X34_Y39_N2
\inst_lcd_top|lcd_ctrl_inst|Selector25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector25~2_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Selector25~1_combout\) # ((\inst_lcd_top|lcd_ctrl_inst|Selector25~0_combout\) # ((\inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\ & \inst_lcd_top|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\,
	datab => \inst_lcd_top|data\(2),
	datac => \inst_lcd_top|lcd_ctrl_inst|Selector25~1_combout\,
	datad => \inst_lcd_top|lcd_ctrl_inst|Selector25~0_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector25~2_combout\);

-- Location: FF_X34_Y39_N3
\inst_lcd_top|lcd_ctrl_inst|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Selector25~2_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|data\(2));

-- Location: LCCOMB_X30_Y39_N8
\inst_lcd_top|lcd_ctrl_inst|data[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|data[3]~6_combout\ = (\inst_lcd_top|lcd_ctrl_inst|data[0]~2_combout\ & ((\inst_lcd_top|lcd_ctrl_inst|index\(2) & (\inst_lcd_top|lcd_ctrl_inst|index\(0))) # (!\inst_lcd_top|lcd_ctrl_inst|index\(2) & 
-- (!\inst_lcd_top|lcd_ctrl_inst|index\(0) & !\inst_lcd_top|lcd_ctrl_inst|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|data[0]~2_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|index\(2),
	datac => \inst_lcd_top|lcd_ctrl_inst|index\(0),
	datad => \inst_lcd_top|lcd_ctrl_inst|index\(1),
	combout => \inst_lcd_top|lcd_ctrl_inst|data[3]~6_combout\);

-- Location: LCCOMB_X30_Y39_N24
\inst_lcd_top|lcd_ctrl_inst|data[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|data[3]~7_combout\ = (\inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\) # ((\inst_lcd_top|lcd_ctrl_inst|data[3]~6_combout\) # ((\inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\ & \inst_lcd_top|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\,
	datab => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|data[3]~6_combout\,
	datad => \inst_lcd_top|data\(3),
	combout => \inst_lcd_top|lcd_ctrl_inst|data[3]~7_combout\);

-- Location: FF_X30_Y39_N25
\inst_lcd_top|lcd_ctrl_inst|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|data[3]~7_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|data[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|data\(3));

-- Location: LCCOMB_X30_Y39_N18
\inst_lcd_top|lcd_ctrl_inst|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector23~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\ & ((\inst_lcd_top|lcd_ctrl_inst|index\(1) & ((!\inst_lcd_top|lcd_ctrl_inst|index\(2)))) # (!\inst_lcd_top|lcd_ctrl_inst|index\(1) & 
-- (!\inst_lcd_top|lcd_ctrl_inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\,
	datab => \inst_lcd_top|lcd_ctrl_inst|index\(1),
	datac => \inst_lcd_top|lcd_ctrl_inst|index\(0),
	datad => \inst_lcd_top|lcd_ctrl_inst|index\(2),
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector23~0_combout\);

-- Location: LCCOMB_X30_Y39_N4
\inst_lcd_top|lcd_ctrl_inst|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector23~1_combout\ = (\inst_lcd_top|lcd_ctrl_inst|data\(4) & ((\inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\) # (\inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_lcd_top|lcd_ctrl_inst|data\(4),
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector23~1_combout\);

-- Location: LCCOMB_X30_Y39_N2
\inst_lcd_top|lcd_ctrl_inst|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector23~2_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Selector23~0_combout\) # ((\inst_lcd_top|lcd_ctrl_inst|Selector23~1_combout\) # ((\inst_lcd_top|data\(4) & \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|data\(4),
	datab => \inst_lcd_top|lcd_ctrl_inst|Selector23~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|Selector23~1_combout\,
	datad => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector23~2_combout\);

-- Location: FF_X30_Y39_N3
\inst_lcd_top|lcd_ctrl_inst|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Selector23~2_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|data\(4));

-- Location: LCCOMB_X35_Y39_N28
\inst_lcd_top|lcd_ctrl_inst|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector22~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\) # ((\inst_lcd_top|lcd_ctrl_inst|data\(5) & ((\inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\) # (\inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\,
	datab => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|data\(5),
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector22~0_combout\);

-- Location: LCCOMB_X34_Y39_N22
\inst_lcd_top|lcd_ctrl_inst|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector22~1_combout\ = (!\inst_lcd_top|lcd_ctrl_inst|index\(1) & (\inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\ & !\inst_lcd_top|lcd_ctrl_inst|index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|index\(1),
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.INIT~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|index\(3),
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector22~1_combout\);

-- Location: LCCOMB_X35_Y39_N6
\inst_lcd_top|lcd_ctrl_inst|Selector22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector22~2_combout\ = (\inst_lcd_top|lcd_ctrl_inst|Selector22~0_combout\) # ((\inst_lcd_top|lcd_ctrl_inst|Selector22~1_combout\) # ((\inst_lcd_top|data\(5) & \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|data\(5),
	datab => \inst_lcd_top|lcd_ctrl_inst|Selector22~0_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\,
	datad => \inst_lcd_top|lcd_ctrl_inst|Selector22~1_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector22~2_combout\);

-- Location: FF_X35_Y39_N7
\inst_lcd_top|lcd_ctrl_inst|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Selector22~2_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|data\(5));

-- Location: LCCOMB_X30_Y39_N14
\inst_lcd_top|lcd_ctrl_inst|data[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|data[6]~9_combout\ = (\inst_lcd_top|lcd_ctrl_inst|data[0]~2_combout\ & ((\inst_lcd_top|lcd_ctrl_inst|index\(2) & ((!\inst_lcd_top|lcd_ctrl_inst|index\(1)))) # (!\inst_lcd_top|lcd_ctrl_inst|index\(2) & 
-- (!\inst_lcd_top|lcd_ctrl_inst|index\(0) & \inst_lcd_top|lcd_ctrl_inst|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|data[0]~2_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|index\(2),
	datac => \inst_lcd_top|lcd_ctrl_inst|index\(0),
	datad => \inst_lcd_top|lcd_ctrl_inst|index\(1),
	combout => \inst_lcd_top|lcd_ctrl_inst|data[6]~9_combout\);

-- Location: LCCOMB_X30_Y39_N12
\inst_lcd_top|lcd_ctrl_inst|data[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|data[6]~8_combout\ = (\inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\) # ((\inst_lcd_top|lcd_ctrl_inst|data[6]~9_combout\) # ((\inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\ & \inst_lcd_top|data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.CLRLCD~q\,
	datab => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|data[6]~9_combout\,
	datad => \inst_lcd_top|data\(6),
	combout => \inst_lcd_top|lcd_ctrl_inst|data[6]~8_combout\);

-- Location: FF_X30_Y39_N13
\inst_lcd_top|lcd_ctrl_inst|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|data[6]~8_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|data[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|data\(6));

-- Location: LCCOMB_X35_Y39_N30
\inst_lcd_top|lcd_ctrl_inst|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector20~0_combout\ = (\inst_lcd_top|lcd_ctrl_inst|data\(7) & ((\inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\) # ((\inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\ & \inst_lcd_top|data\(7))))) # (!\inst_lcd_top|lcd_ctrl_inst|data\(7) & 
-- (((\inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\ & \inst_lcd_top|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|data\(7),
	datab => \inst_lcd_top|lcd_ctrl_inst|EA.WRLCD~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|EA.AWAIT~q\,
	datad => \inst_lcd_top|data\(7),
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector20~0_combout\);

-- Location: LCCOMB_X35_Y39_N24
\inst_lcd_top|lcd_ctrl_inst|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|Selector20~1_combout\ = (\inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\) # (\inst_lcd_top|lcd_ctrl_inst|Selector20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|EA.CADDR~q\,
	datac => \inst_lcd_top|lcd_ctrl_inst|Selector20~0_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|Selector20~1_combout\);

-- Location: FF_X35_Y39_N25
\inst_lcd_top|lcd_ctrl_inst|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50MHz~inputclkctrl_outclk\,
	d => \inst_lcd_top|lcd_ctrl_inst|Selector20~1_combout\,
	clrn => \reset_synch_50mhz_inst|ALT_INV_r_rst_sync_2~q\,
	ena => \inst_lcd_top|lcd_ctrl_inst|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_lcd_top|lcd_ctrl_inst|data\(7));

-- Location: LCCOMB_X34_Y39_N24
\inst_lcd_top|lcd_ctrl_inst|LCD_RS\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|LCD_RS~combout\ = (!\inst_lcd_top|lcd_ctrl_inst|index\(1) & (\inst_lcd_top|lcd_ctrl_inst|index\(0) & (!\inst_lcd_top|lcd_ctrl_inst|index\(2) & \inst_lcd_top|lcd_ctrl_inst|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|index\(1),
	datab => \inst_lcd_top|lcd_ctrl_inst|index\(0),
	datac => \inst_lcd_top|lcd_ctrl_inst|index\(2),
	datad => \inst_lcd_top|lcd_ctrl_inst|LCD_RS~0_combout\,
	combout => \inst_lcd_top|lcd_ctrl_inst|LCD_RS~combout\);

-- Location: LCCOMB_X32_Y39_N4
\inst_lcd_top|lcd_ctrl_inst|LCD_EN\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_lcd_top|lcd_ctrl_inst|LCD_EN~combout\ = (\inst_lcd_top|lcd_ctrl_inst|LCD_DATA~0_combout\ & (\inst_lcd_top|lcd_ctrl_inst|Equal2~2_combout\ & (\inst_lcd_top|lcd_ctrl_inst|count\(0) & !\inst_lcd_top|lcd_ctrl_inst|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_lcd_top|lcd_ctrl_inst|LCD_DATA~0_combout\,
	datab => \inst_lcd_top|lcd_ctrl_inst|Equal2~2_combout\,
	datac => \inst_lcd_top|lcd_ctrl_inst|count\(0),
	datad => \inst_lcd_top|lcd_ctrl_inst|count\(2),
	combout => \inst_lcd_top|lcd_ctrl_inst|LCD_EN~combout\);

-- Location: IOIBUF_X67_Y6_N15
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X67_Y10_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X67_Y7_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X67_Y11_N8
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X61_Y0_N1
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X67_Y3_N1
\KEY[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(4),
	o => \KEY[4]~input_o\);

-- Location: IOIBUF_X67_Y11_N1
\KEY[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(5),
	o => \KEY[5]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\KEY[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(6),
	o => \KEY[6]~input_o\);

-- Location: IOIBUF_X59_Y0_N1
\KEY[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(7),
	o => \KEY[7]~input_o\);

-- Location: IOIBUF_X67_Y5_N8
\KEY[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(8),
	o => \KEY[8]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\KEY[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(9),
	o => \KEY[9]~input_o\);

-- Location: IOIBUF_X63_Y0_N29
\KEY[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(10),
	o => \KEY[10]~input_o\);

-- Location: IOIBUF_X67_Y10_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X67_Y7_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X67_Y8_N22
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\LCD_D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_D(0),
	o => \LCD_D[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\LCD_D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_D(1),
	o => \LCD_D[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\LCD_D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_D(2),
	o => \LCD_D[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\LCD_D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_D(3),
	o => \LCD_D[3]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\LCD_D[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_D(4),
	o => \LCD_D[4]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\LCD_D[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_D(5),
	o => \LCD_D[5]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\LCD_D[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_D(6),
	o => \LCD_D[6]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\LCD_D[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_D(7),
	o => \LCD_D[7]~input_o\);

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_BACKLIGHT <= \LCD_BACKLIGHT~output_o\;

ww_UART_TXD <= \UART_TXD~output_o\;

LCD_D(0) <= \LCD_D[0]~output_o\;

LCD_D(1) <= \LCD_D[1]~output_o\;

LCD_D(2) <= \LCD_D[2]~output_o\;

LCD_D(3) <= \LCD_D[3]~output_o\;

LCD_D(4) <= \LCD_D[4]~output_o\;

LCD_D(5) <= \LCD_D[5]~output_o\;

LCD_D(6) <= \LCD_D[6]~output_o\;

LCD_D(7) <= \LCD_D[7]~output_o\;
END structure;


