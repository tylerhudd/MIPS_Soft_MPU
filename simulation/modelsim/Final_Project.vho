-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "05/01/2016 10:01:21"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	start : IN std_logic;
	rst : IN std_logic;
	Input : IN std_logic_vector(7 DOWNTO 0);
	Output : OUT std_logic_vector(7 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- Output[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[5]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[6]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[7]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[5]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Output : std_logic_vector(7 DOWNTO 0);
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \dp1|IR1|InstrReg~1_combout\ : std_logic;
SIGNAL \dp1|IR1|InstrReg~8_combout\ : std_logic;
SIGNAL \dp1|IR1|InstrReg~2_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout~19_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \c1|state.000~0_combout\ : std_logic;
SIGNAL \c1|state.000~q\ : std_logic;
SIGNAL \c1|Selector12~0_combout\ : std_logic;
SIGNAL \c1|RFwr~0_combout\ : std_logic;
SIGNAL \dp1|MA1|Addr~0_combout\ : std_logic;
SIGNAL \c1|Mux11~0_combout\ : std_logic;
SIGNAL \dp1|MA1|Addr[1]~1_combout\ : std_logic;
SIGNAL \c1|ALUsel~7_combout\ : std_logic;
SIGNAL \c1|Decoder2~0_combout\ : std_logic;
SIGNAL \c1|Selector1~0_combout\ : std_logic;
SIGNAL \dp1|I1|Add0~26_cout\ : std_logic;
SIGNAL \dp1|I1|Add0~1_sumout\ : std_logic;
SIGNAL \dp1|PC1|PCReg~0_combout\ : std_logic;
SIGNAL \c1|Selector3~0_combout\ : std_logic;
SIGNAL \c1|ALUsel[0]~4_combout\ : std_logic;
SIGNAL \c1|ALUsel[0]~3_combout\ : std_logic;
SIGNAL \c1|ALUsel[0]~6_combout\ : std_logic;
SIGNAL \c1|ALUsel~1_combout\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \c1|Selector5~0_combout\ : std_logic;
SIGNAL \c1|SHsel~0_combout\ : std_logic;
SIGNAL \c1|SHsel[0]~2_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout[2]~4_combout\ : std_logic;
SIGNAL \Input[4]~input_o\ : std_logic;
SIGNAL \c1|SHsel[1]~1_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout[2]~5_combout\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \dp1|RF1|RegFile~5_combout\ : std_logic;
SIGNAL \dp1|ALU1|Mux3~0_combout\ : std_logic;
SIGNAL \c1|ALUsel[1]~2_combout\ : std_logic;
SIGNAL \dp1|ALU1|Mux6~0_combout\ : std_logic;
SIGNAL \c1|ALUsel[2]~8_combout\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \dp1|RF1|RegFile~1_combout\ : std_logic;
SIGNAL \c1|ALUsel[0]~9_combout\ : std_logic;
SIGNAL \dp1|ALU1|Add0~34_cout\ : std_logic;
SIGNAL \dp1|ALU1|Add0~6\ : std_logic;
SIGNAL \dp1|ALU1|Add0~2\ : std_logic;
SIGNAL \dp1|ALU1|Add0~10\ : std_logic;
SIGNAL \dp1|ALU1|Add0~14\ : std_logic;
SIGNAL \dp1|ALU1|Add0~17_sumout\ : std_logic;
SIGNAL \dp1|ALU1|Mux3~1_combout\ : std_logic;
SIGNAL \dp1|ALU1|Add0~13_sumout\ : std_logic;
SIGNAL \dp1|ALU1|Mux4~0_combout\ : std_logic;
SIGNAL \dp1|ALU1|Mux4~1_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout~12_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout~13_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout~1_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout~0_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout~2_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout~3_combout\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \dp1|RF1|RegFile~4_combout\ : std_logic;
SIGNAL \dp1|ALU1|Add0~9_sumout\ : std_logic;
SIGNAL \dp1|ALU1|Mux5~0_combout\ : std_logic;
SIGNAL \dp1|ALU1|Mux5~1_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout~10_combout\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \dp1|ACC1|Aout~11_combout\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \dp1|RF1|RegFile~3_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout~8_combout\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \dp1|ACC1|Aout~9_combout\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \dp1|RF1|RegFile~2_combout\ : std_logic;
SIGNAL \dp1|ALU1|Mux7~0_combout\ : std_logic;
SIGNAL \dp1|ALU1|Add0~5_sumout\ : std_logic;
SIGNAL \dp1|ALU1|Mux7~1_combout\ : std_logic;
SIGNAL \dp1|ALU1|Mux6~1_combout\ : std_logic;
SIGNAL \dp1|SH1|Mux7~0_combout\ : std_logic;
SIGNAL \dp1|AM1|Mux7~0_combout\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \dp1|RF1|RegFile~7_combout\ : std_logic;
SIGNAL \dp1|ALU1|Mux1~0_combout\ : std_logic;
SIGNAL \dp1|ALU1|Add0~18\ : std_logic;
SIGNAL \dp1|ALU1|Add0~22\ : std_logic;
SIGNAL \dp1|ALU1|Add0~25_sumout\ : std_logic;
SIGNAL \dp1|ALU1|Mux1~1_combout\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \dp1|RF1|RegFile~8_combout\ : std_logic;
SIGNAL \dp1|ALU1|Mux0~0_combout\ : std_logic;
SIGNAL \dp1|ALU1|Add0~26\ : std_logic;
SIGNAL \dp1|ALU1|Add0~29_sumout\ : std_logic;
SIGNAL \dp1|ALU1|Mux0~1_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout~16_combout\ : std_logic;
SIGNAL \Input[6]~input_o\ : std_logic;
SIGNAL \dp1|ACC1|Aout~17_combout\ : std_logic;
SIGNAL \c1|Selector3~1_combout\ : std_logic;
SIGNAL \dp1|PC1|PCReg[0]~1_combout\ : std_logic;
SIGNAL \c1|Selector9~0_combout\ : std_logic;
SIGNAL \c1|nstate.100_320~combout\ : std_logic;
SIGNAL \c1|state~10_combout\ : std_logic;
SIGNAL \c1|state.100~q\ : std_logic;
SIGNAL \dp1|MIM1|out[0]~0_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~770_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~771_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~312_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~768_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~769_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~280_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~772_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~773_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~344_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~774_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~775_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~376_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~525_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~750_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~751_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~352_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~746_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~747_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~288_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~744_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~745_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~256_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~748_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~749_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~320_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~522_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~752_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~753_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~264_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~756_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~757_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~328_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~296feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~754_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~755_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~296_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~758_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~759_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~360_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~523_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~764_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~765_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~336_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~760_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~761_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~272_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~762_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~763_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~304_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~766_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~767_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~368_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~524_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~526_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~392feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~778_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~779_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~392_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~780_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~781_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~400_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~776_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~777_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~384_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~782_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~783_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~408_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~527_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~802_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~803_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~488_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~800_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~801_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~480_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~806_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~807_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~504_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~804_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~805_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~496_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~530_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~794_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~795_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~456_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~792_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~793_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~448_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~796_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~797_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~464_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~798_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~799_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~472_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~529_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~784_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~785_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~416_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~788_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~789_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~432_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~786_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~787_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~424_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~790_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~791_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~440_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~528_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~531_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~700_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~701_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~80_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~696_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~697_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~64_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~698_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~699_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~72_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~702_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~703_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~88_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~514_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~704_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~705_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~96_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~706_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~707_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~104_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~708_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~709_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~112_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~710_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~711_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~120_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~515_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~684_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~685_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~16_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~808_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~682_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~683_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~8_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~680_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~681_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~0_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~686_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~687_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~24_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~512_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~810_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~694_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~695_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~56_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~692_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~693_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~48_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~809_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~690_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~691_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~40_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~688_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~689_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~32_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~513_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~516_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~740_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~741_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~240_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~738_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~739_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~232_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~742_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~743_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~248_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~736_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~737_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~224_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~520_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~734_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~735_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~216_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~732_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~733_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~208_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~192feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~728_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~729_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~192_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~200feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~730_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~731_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~200_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~519_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~724_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~725_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~176_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~726_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~727_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~184_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~720_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~721_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~160_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~722_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~723_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~168_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~518_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~716_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~717_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~144_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~712_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~713_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~128_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~718_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~719_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~152_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~714_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~715_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~136_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~517_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~521_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~532_combout\ : std_logic;
SIGNAL \dp1|IR1|InstrReg~7_combout\ : std_logic;
SIGNAL \dp1|RF1|RegFile~0_combout\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \dp1|RF1|RegFile~6_combout\ : std_logic;
SIGNAL \dp1|ALU1|Mux2~0_combout\ : std_logic;
SIGNAL \dp1|ALU1|Add0~21_sumout\ : std_logic;
SIGNAL \dp1|ALU1|Mux2~1_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout~14_combout\ : std_logic;
SIGNAL \Input[5]~input_o\ : std_logic;
SIGNAL \dp1|ACC1|Aout~15_combout\ : std_logic;
SIGNAL \dp1|NOR1~0_combout\ : std_logic;
SIGNAL \c1|Selector3~2_combout\ : std_logic;
SIGNAL \c1|Selector3~3_combout\ : std_logic;
SIGNAL \c1|Selector3~4_combout\ : std_logic;
SIGNAL \c1|Selector10~0_combout\ : std_logic;
SIGNAL \dp1|I1|Add0~2\ : std_logic;
SIGNAL \dp1|I1|Add0~5_sumout\ : std_logic;
SIGNAL \dp1|PC1|PCReg~2_combout\ : std_logic;
SIGNAL \dp1|I1|Add0~6\ : std_logic;
SIGNAL \dp1|I1|Add0~9_sumout\ : std_logic;
SIGNAL \dp1|PC1|PCReg~3_combout\ : std_logic;
SIGNAL \dp1|I1|Add0~10\ : std_logic;
SIGNAL \dp1|I1|Add0~13_sumout\ : std_logic;
SIGNAL \dp1|PC1|PCReg~4_combout\ : std_logic;
SIGNAL \dp1|I1|Add0~14\ : std_logic;
SIGNAL \dp1|I1|Add0~17_sumout\ : std_logic;
SIGNAL \dp1|PC1|PCReg~5_combout\ : std_logic;
SIGNAL \dp1|MIM1|out[4]~4_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~398feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~398_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~390_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~406_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~414_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~599_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~30_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~818_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~22_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~817_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~6_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~14_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~596_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~270feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~270_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~278feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~278_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~262_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~286_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~598_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~134_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~158_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~150_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~142_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~597_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~600_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~238_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~494_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~110_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~366feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~366_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~612_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~358_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~486_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~823_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~102_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~230_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~611_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~246feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~246_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~118_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~502_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~374_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~613_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~254_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~510_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~382_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~126_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~614_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~615_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~214_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~198_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~206feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~206_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~222_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~607_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~822_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~86_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~821_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~78_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~70feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~70_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~94_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~606_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~454_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~470_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~462_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~478_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~609_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~342_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~326_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~350_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~334_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~608_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~610_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~302feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~302_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~310feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~310_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~318_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~294_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~603_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~430_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~438_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~422_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~446_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~604_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~174_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~166feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~166_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~182feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~182_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~190_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~602_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~819_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~46_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~820_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~54_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~62_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~38_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~601_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~605_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~616_combout\ : std_logic;
SIGNAL \dp1|IR1|InstrReg~4_combout\ : std_logic;
SIGNAL \c1|Selector8~0_combout\ : std_logic;
SIGNAL \c1|nstate.011_333~combout\ : std_logic;
SIGNAL \c1|state~11_combout\ : std_logic;
SIGNAL \c1|state.011~q\ : std_logic;
SIGNAL \dp1|ACC1|Aout~18_combout\ : std_logic;
SIGNAL \c1|Selector11~0_combout\ : std_logic;
SIGNAL \Input[7]~input_o\ : std_logic;
SIGNAL \dp1|SH1|Mux0~1_combout\ : std_logic;
SIGNAL \dp1|SH1|Mux0~2_combout\ : std_logic;
SIGNAL \dp1|SH1|Mux0~0_combout\ : std_logic;
SIGNAL \dp1|AM1|Mux0~0_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~143_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~175_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~207_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~239_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~644_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~151_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~215feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~215_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~247_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~183_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~645_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~135_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~199_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~231_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~167_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~643_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~159_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~223_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~191_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~255_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~646_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~647_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~7_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~39_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~71_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~828_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~103_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~638_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~831_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~23_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~87_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~119_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~55_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~640_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~95_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~63_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~127_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~832_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~31_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~641_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~830_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~79_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~829_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~47_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~15feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~15_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~111feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~111_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~639_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~642_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~279_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~271feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~271_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~287feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~287_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~263_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~648_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~375_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~383feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~383_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~367_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~359feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~359_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~651_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~295_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~311_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~303feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~303_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~319_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~649_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~335_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~351_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~343_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~327feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~327_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~650_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~652_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~439_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~407_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~471_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~503_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~655_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~447_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~479_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~415_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~511_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~656_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~423_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~455_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~391feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~391_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~487_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~653_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~495_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~399feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~399_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~431_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~463_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~654_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~657_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~658_combout\ : std_logic;
SIGNAL \dp1|IR1|InstrReg~6_combout\ : std_logic;
SIGNAL \c1|ALUsel[1]~0_combout\ : std_logic;
SIGNAL \c1|ALUsel[1]~5_combout\ : std_logic;
SIGNAL \dp1|ALU1|Add0~1_sumout\ : std_logic;
SIGNAL \dp1|ALU1|Mux6~2_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout~6_combout\ : std_logic;
SIGNAL \dp1|ACC1|Aout~7_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~497_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~369_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~113_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~241_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~672_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~81feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~81_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~337_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~465_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~209feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~209_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~671_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~835_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~17_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~145_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~273_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~401_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~669_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~177_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~49_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~305_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~433_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~670_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~673_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~217_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~345_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~89_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~473_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~676_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~25_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~281_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~153_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~409_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~674_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~313_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~185_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~836_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~57_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~441_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~675_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~249_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~121feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~121_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~377_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~505_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~677_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~678_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~137_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~9_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~265feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~265_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~393_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~664_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~233_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~361_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~105_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~489_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~667_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~41_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~297feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~297_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~425_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~169_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~665_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~329_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~201_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~73_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~457_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~666_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~668_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~385_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~257_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~1_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~129_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~659_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~321_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~193feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~193_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~449_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~65_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~661_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~161_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~289_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~833_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~33_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~417_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~660_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~225_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~834_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~97_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~353_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~481_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~662_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~663_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~679_combout\ : std_logic;
SIGNAL \dp1|MA1|Addr~2_combout\ : std_logic;
SIGNAL \dp1|MIM1|out[1]~1_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~411_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~443_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~475_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~507feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~507_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~593_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~91_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~816_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~59_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~123_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~27feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~27_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~590_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~315_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~347feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~347_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~283_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~379_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~592_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~155_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~251_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~219_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~187_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~591_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~594_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~107_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~491_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~235_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~363_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~583_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~203_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~75_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~459_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~331_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~582_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~43_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~299_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~171_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~427_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~581_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~395_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~11feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~11_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~267_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~139_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~580_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~584_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~339feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~339_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~83feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~83_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~211feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~211_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~467_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~587_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~147_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~275feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~275_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~19_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~403_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~585_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~371feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~371_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~499_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~115_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~243_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~588_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~307feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~307_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~179_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~435_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~51_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~586_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~589_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~323_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~67_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~451_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~195_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~577_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~387feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~387_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~3_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~259_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~131_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~575_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~291_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~163_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~419_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~35_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~576_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~99feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~99_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~355_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~227feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~227_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~483_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~578_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~579_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~595_combout\ : std_logic;
SIGNAL \dp1|IR1|InstrReg~3_combout\ : std_logic;
SIGNAL \dp1|MIM1|out[3]~3_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~66_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~194_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~322_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~450_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~564_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~202feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~202_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~330_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~458_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~74_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~565_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~90_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~346feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~346_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~218_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~474_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~567_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~82_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~210_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~338_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~466_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~566_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~568_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~306_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~298_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~290_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~314_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~561_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~34_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~815_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~58_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~50_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~42_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~559_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~162_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~178_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~186_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~170_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~560_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~418_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~426feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~426_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~434_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~442_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~562_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~563_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~498_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~490_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~482_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~506_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~572_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~370_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~362_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~354feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~354_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~378_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~571_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~114_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~106feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~106_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~122_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~98feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~98_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~569_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~226_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~242_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~234feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~234_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~250_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~570_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~573_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~18_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~26feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~26_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~2_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~814_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~10_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~554_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~386_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~394_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~402_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~410_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~557_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~274_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~258_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~266_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~282_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~556_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~130_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~154_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~146_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~138_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~555_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~558_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~574_combout\ : std_logic;
SIGNAL \dp1|MA1|Addr~3_combout\ : std_logic;
SIGNAL \dp1|MIM1|out[2]~2_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~261_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~5_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~389feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~389_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~133_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~617_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~824_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~69_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~197_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~325_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~453_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~619_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~37_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~421_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~293_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~165_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~618_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~485_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~357feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~357_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~229_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~825_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~101_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~620_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~621_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~205feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~205_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~77_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~461_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~333_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~624_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~173_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~301_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~429_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~826_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~45_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~623_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~237_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~365_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~109feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~109_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~493_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~625_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~397_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~13_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~269_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~141_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~622_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~626_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~413_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~445_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~477_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~509_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~635_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~61_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~93_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~29_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~125_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~632_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~285feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~285_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~349_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~317_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~381_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~634_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~157_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~189_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~221_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~253_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~633_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~636_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~341feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~341_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~213_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~85_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~469_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~629_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~181_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~309feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~309_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~53_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~437_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~628_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~117feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~117_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~501_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~373feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~373_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~245_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~630_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~277feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~277_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~827_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~21_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~149feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~149_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~405_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~627_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~631_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~637_combout\ : std_logic;
SIGNAL \dp1|IR1|InstrReg~5_combout\ : std_logic;
SIGNAL \dp1|I1|Add0~18\ : std_logic;
SIGNAL \dp1|I1|Add0~21_sumout\ : std_logic;
SIGNAL \dp1|PC1|PCReg~6_combout\ : std_logic;
SIGNAL \dp1|MIM1|out[5]~5_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~308feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~308_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~276_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~340feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~340_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~372_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~545_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~332_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~268_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~300_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~364_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~544_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~324_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~292_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~260_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~356_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~543_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~284_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~316_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~348_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~380_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~546_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~547_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~212feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~212_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~244_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~148_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~180_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~540_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~236feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~236_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~140_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~204_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~172_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~539_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~156_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~188_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~220_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~252_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~541_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~132_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~196_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~228_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~164_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~538_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~542_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~84feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~84_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~52feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~52_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~20_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~116_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~535_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~36_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~68_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~811_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~4_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~812_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~100_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~533_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~12_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~76_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~108_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~44_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~534_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~813_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~92_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~124_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~60_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~28_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~536_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~537_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~412_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~476_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~444_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~508_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~551_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~428feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~428_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~460_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~396feeder_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~396_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~492_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~549_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~436_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~404_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~500_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~468_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~550_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~452_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~420_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~388_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~484_q\ : std_logic;
SIGNAL \dp1|MEM1|RAM~548_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~552_combout\ : std_logic;
SIGNAL \dp1|MEM1|RAM~553_combout\ : std_logic;
SIGNAL \dp1|IR1|InstrReg~0_combout\ : std_logic;
SIGNAL \c1|Decoder4~1_combout\ : std_logic;
SIGNAL \c1|Selector13~0_combout\ : std_logic;
SIGNAL \c1|Selector13~1_combout\ : std_logic;
SIGNAL \c1|Selector6~0_combout\ : std_logic;
SIGNAL \c1|nstate.001_359~combout\ : std_logic;
SIGNAL \c1|state~12_combout\ : std_logic;
SIGNAL \c1|state.001~q\ : std_logic;
SIGNAL \c1|nstate.010_346~combout\ : std_logic;
SIGNAL \c1|state~9_combout\ : std_logic;
SIGNAL \c1|state.010~q\ : std_logic;
SIGNAL \c1|Decoder4~0_combout\ : std_logic;
SIGNAL \c1|Selector0~0_combout\ : std_logic;
SIGNAL \c1|Selector0~1_combout\ : std_logic;
SIGNAL \c1|Selector0~2_combout\ : std_logic;
SIGNAL \c1|stop~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clkin~combout\ : std_logic;
SIGNAL \dp1|OR1|Q[6]~0_combout\ : std_logic;
SIGNAL \dp1|OR1|Q[6]~1_combout\ : std_logic;
SIGNAL \dp1|MA1|Addr\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dp1|PC1|PCReg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dp1|OR1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dp1|ACC1|Aout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dp1|IR1|InstrReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c1|Asel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dp1|RF1|RegFile_rtl_0_bypass\ : std_logic_vector(0 TO 14);
SIGNAL \c1|JMPsel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dp1|MEM1|ALT_INV_RAM~764_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~762_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~760_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~758_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~756_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~754_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~752_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~750_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~748_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~746_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~744_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~742_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~740_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~738_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~736_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~734_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~732_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~730_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~728_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~726_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~724_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~722_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~720_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~718_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~716_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~714_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~712_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~710_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~708_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~706_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~704_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~702_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~700_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~698_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~696_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~694_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~692_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~690_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~688_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector3~3_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \dp1|ALT_INV_NOR1~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~686_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~684_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~682_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~680_combout\ : std_logic;
SIGNAL \c1|ALT_INV_ALUsel[0]~9_combout\ : std_logic;
SIGNAL \c1|ALT_INV_ALUsel[2]~8_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector0~2_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \c1|ALT_INV_state.000~q\ : std_logic;
SIGNAL \c1|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \dp1|SH1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dp1|ACC1|ALT_INV_Aout~16_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dp1|RF1|ALT_INV_RegFile~8_combout\ : std_logic;
SIGNAL \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \dp1|ACC1|ALT_INV_Aout~14_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \dp1|RF1|ALT_INV_RegFile~7_combout\ : std_logic;
SIGNAL \dp1|ACC1|ALT_INV_Aout~12_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \dp1|RF1|ALT_INV_RegFile~6_combout\ : std_logic;
SIGNAL \dp1|ACC1|ALT_INV_Aout~10_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \dp1|RF1|ALT_INV_RegFile~5_combout\ : std_logic;
SIGNAL \dp1|ACC1|ALT_INV_Aout~8_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \dp1|RF1|ALT_INV_RegFile~4_combout\ : std_logic;
SIGNAL \dp1|ACC1|ALT_INV_Aout~6_combout\ : std_logic;
SIGNAL \dp1|ACC1|ALT_INV_Aout[2]~5_combout\ : std_logic;
SIGNAL \dp1|ACC1|ALT_INV_Aout[2]~4_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \dp1|RF1|ALT_INV_RegFile~3_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~679_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~678_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~677_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~505_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~377_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~249_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~121_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~676_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~473_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~345_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~217_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~89_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~675_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~441_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~313_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~185_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~57_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~674_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~409_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~281_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~153_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~25_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~673_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~672_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~497_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~369_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~241_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~113_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~671_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~465_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~337_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~209_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~81_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~670_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~433_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~305_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~177_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~49_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~669_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~401_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~273_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~145_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~17_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~668_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~667_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~489_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~361_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~233_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~105_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~666_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~457_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~329_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~201_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~73_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~665_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~425_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~297_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~169_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~41_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~664_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~393_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~265_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~137_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~9_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~663_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~662_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~481_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~353_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~225_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~97_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~661_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~449_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~321_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~193_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~65_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~660_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~417_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~289_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~161_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~33_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~659_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~385_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~257_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~129_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~1_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~658_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~657_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~656_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~511_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~479_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~447_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~415_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~655_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~503_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~471_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~439_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~407_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~654_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~495_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~463_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~431_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~399_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~653_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~487_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~455_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~423_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~391_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~652_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~651_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~383_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~375_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~367_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~359_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~650_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~351_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~343_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~335_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~327_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~649_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~319_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~311_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~303_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~295_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~648_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~287_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~279_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~271_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~263_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~647_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~646_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~255_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~223_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~191_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~159_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~645_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~247_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~215_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~183_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~151_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~644_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~239_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~207_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~175_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~143_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~643_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~231_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~199_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~167_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~135_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~642_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~641_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~127_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~95_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~63_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~31_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~640_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~119_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~87_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~55_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~23_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~639_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~111_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~79_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~47_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~15_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~638_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~103_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~71_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~39_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~7_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~637_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~636_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~635_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~509_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~477_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~445_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~413_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~634_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~381_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~349_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~317_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~285_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~633_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~253_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~221_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~189_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~157_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~632_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~125_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~93_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~61_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~29_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~631_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~630_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~501_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~373_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~245_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~117_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~629_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~469_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~341_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~213_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~85_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~628_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~437_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~309_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~181_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~53_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~627_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~405_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~277_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~149_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~21_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~626_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~625_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~493_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~365_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~237_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~109_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~624_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~461_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~333_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~205_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~77_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~623_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~429_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~301_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~173_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~45_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~622_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~397_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~269_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~141_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~13_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~621_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~620_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~485_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~357_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~229_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~101_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~619_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~453_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~325_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~197_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~69_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~618_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~421_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~293_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~165_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~37_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~617_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~389_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~261_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~133_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~5_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~616_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~615_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~614_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~510_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~382_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~254_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~126_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~613_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~502_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~374_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~246_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~118_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~612_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~494_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~366_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~238_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~110_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~611_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~486_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~358_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~230_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~102_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~610_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~609_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~478_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~470_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~462_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~454_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~608_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~350_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~342_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~334_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~326_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~607_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~222_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~214_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~206_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~198_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~606_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~94_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~86_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~78_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~70_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~605_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~604_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~446_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~438_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~430_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~422_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~603_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~318_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~310_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~302_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~294_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~602_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~190_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~182_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~174_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~166_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~601_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~62_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~54_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~46_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~38_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~600_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~599_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~414_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~406_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~398_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~390_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~598_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~286_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~278_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~270_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~262_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~597_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~158_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~150_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~142_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~134_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~596_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~30_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~22_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~14_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~6_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~595_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~594_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~593_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~507_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~475_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~443_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~411_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~592_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~379_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~347_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~315_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~283_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~591_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~251_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~219_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~187_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~155_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~590_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~123_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~91_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~59_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~27_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~589_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~588_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~499_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~371_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~243_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~115_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~587_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~467_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~339_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~211_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~83_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~586_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~435_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~307_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~179_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~51_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~585_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~403_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~275_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~147_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~19_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~584_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~583_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~491_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~363_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~235_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~107_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~582_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~459_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~331_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~203_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~75_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~581_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~427_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~299_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~171_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~43_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~580_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~395_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~267_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~139_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~11_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~579_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~578_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~483_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~355_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~227_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~99_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~577_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~451_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~323_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~195_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~67_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~576_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~419_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~291_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~163_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~35_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~575_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~387_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~259_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~131_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~3_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~574_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~573_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~572_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~506_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~498_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~490_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~482_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~571_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~378_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~370_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~362_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~354_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~570_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~250_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~242_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~234_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~226_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~569_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~122_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~114_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~106_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~98_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~568_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~567_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~474_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~346_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~218_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~90_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~566_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~466_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~338_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~210_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~82_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~565_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~458_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~330_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~202_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~74_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~564_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~450_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~322_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~194_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~66_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~563_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~562_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~442_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~434_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~426_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~418_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~561_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~314_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~306_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~298_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~290_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~560_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~186_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~178_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~170_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~162_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~559_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~58_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~50_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~42_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~34_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~558_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~557_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~410_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~402_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~394_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~386_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~556_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~282_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~274_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~266_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~258_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~555_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~154_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~146_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~138_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~130_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~554_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~26_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~18_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~10_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~2_q\ : std_logic;
SIGNAL \c1|ALT_INV_state.001~q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~553_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~552_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~551_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~508_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~476_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~444_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~412_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~550_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~500_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~468_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~436_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~404_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~549_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~492_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~460_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~428_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~396_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~548_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~484_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~452_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~420_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~388_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~547_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~546_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~380_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~348_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~316_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~284_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~545_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~372_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~340_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~308_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~276_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~544_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~364_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~332_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~300_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~268_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~543_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~356_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~324_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~292_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~260_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~542_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~541_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~252_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~220_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~188_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~156_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~540_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~244_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~212_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~180_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~148_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~539_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~236_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~204_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~172_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~140_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~538_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~228_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~196_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~164_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~132_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~537_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~536_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~124_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~92_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~60_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~28_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~535_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~116_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~84_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~52_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~20_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~534_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~108_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~76_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~44_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~12_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~533_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~100_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~68_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~36_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~4_q\ : std_logic;
SIGNAL \dp1|ACC1|ALT_INV_Aout~2_combout\ : std_logic;
SIGNAL \dp1|ACC1|ALT_INV_Aout~1_combout\ : std_logic;
SIGNAL \dp1|ACC1|ALT_INV_Aout~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_ALUsel~7_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~532_combout\ : std_logic;
SIGNAL \dp1|MIM1|ALT_INV_out[5]~5_combout\ : std_logic;
SIGNAL \dp1|MA1|ALT_INV_Addr\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dp1|MIM1|ALT_INV_out[4]~4_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~531_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~530_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~504_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~496_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~488_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~480_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~529_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~472_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~464_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~456_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~448_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~528_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~440_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~432_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~424_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~416_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~527_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~408_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~400_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~392_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~384_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~526_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~525_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~376_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~344_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~312_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~280_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~524_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~368_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~336_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~304_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~272_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~523_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~360_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~328_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~296_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~264_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~522_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~352_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~320_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~288_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~256_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~521_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~520_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~248_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~240_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~232_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~224_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~519_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~216_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~208_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~200_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~192_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~518_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~184_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~176_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~168_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~160_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~517_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~152_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~144_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~136_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~128_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~516_combout\ : std_logic;
SIGNAL \dp1|MIM1|ALT_INV_out[3]~3_combout\ : std_logic;
SIGNAL \dp1|MIM1|ALT_INV_out[2]~2_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~515_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~120_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~112_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~104_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~96_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~514_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~88_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~80_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~72_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~64_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~513_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~56_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~48_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~40_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~32_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~512_combout\ : std_logic;
SIGNAL \dp1|MIM1|ALT_INV_out[1]~1_combout\ : std_logic;
SIGNAL \dp1|MIM1|ALT_INV_out[0]~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_state.011~q\ : std_logic;
SIGNAL \c1|ALT_INV_state.100~q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~24_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~16_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~8_q\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~0_q\ : std_logic;
SIGNAL \dp1|SH1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \dp1|RF1|ALT_INV_RegFile~2_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \dp1|RF1|ALT_INV_RegFile~1_combout\ : std_logic;
SIGNAL \dp1|RF1|ALT_INV_RegFile~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_ALUsel[0]~6_combout\ : std_logic;
SIGNAL \c1|ALT_INV_ALUsel[1]~5_combout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_ALUsel[0]~4_combout\ : std_logic;
SIGNAL \c1|ALT_INV_ALUsel[0]~3_combout\ : std_logic;
SIGNAL \c1|ALT_INV_ALUsel[1]~2_combout\ : std_logic;
SIGNAL \c1|ALT_INV_ALUsel~1_combout\ : std_logic;
SIGNAL \c1|ALT_INV_ALUsel[1]~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_SHsel[0]~2_combout\ : std_logic;
SIGNAL \c1|ALT_INV_SHsel[1]~1_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Decoder4~1_combout\ : std_logic;
SIGNAL \c1|ALT_INV_SHsel~0_combout\ : std_logic;
SIGNAL \ALT_INV_clkin~combout\ : std_logic;
SIGNAL \dp1|ACC1|ALT_INV_Aout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dp1|OR1|ALT_INV_Q[6]~0_combout\ : std_logic;
SIGNAL \dp1|IR1|ALT_INV_InstrReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c1|ALT_INV_Decoder4~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Decoder2~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_state.010~q\ : std_logic;
SIGNAL \dp1|I1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \dp1|I1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \dp1|I1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \dp1|I1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \dp1|I1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \dp1|I1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \dp1|PC1|ALT_INV_PCReg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \dp1|ALU1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \c1|ALT_INV_nstate.001_359~combout\ : std_logic;
SIGNAL \c1|ALT_INV_JMPsel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \c1|ALT_INV_nstate.011_333~combout\ : std_logic;
SIGNAL \c1|ALT_INV_nstate.100_320~combout\ : std_logic;
SIGNAL \c1|ALT_INV_nstate.010_346~combout\ : std_logic;
SIGNAL \c1|ALT_INV_Asel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \c1|ALT_INV_stop~combout\ : std_logic;
SIGNAL \dp1|SH1|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \dp1|SH1|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector3~4_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \dp1|ACC1|ALT_INV_Aout~19_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \dp1|ACC1|ALT_INV_Aout~18_combout\ : std_logic;
SIGNAL \c1|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~806_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~804_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~802_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~800_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~798_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~796_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~794_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~792_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~790_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~788_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~786_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~784_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~782_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~780_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~778_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~776_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~774_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~772_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~770_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~768_combout\ : std_logic;
SIGNAL \dp1|MEM1|ALT_INV_RAM~766_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_start <= start;
ww_rst <= rst;
ww_Input <= Input;
Output <= ww_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & \dp1|ACC1|Aout\(7) & \dp1|ACC1|Aout\(6) & \dp1|ACC1|Aout\(5) & \dp1|ACC1|Aout\(4) & \dp1|ACC1|Aout\(3) & \dp1|ACC1|Aout\(2) & \dp1|ACC1|Aout\(1) & \dp1|ACC1|Aout\(0));

\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\dp1|IR1|InstrReg\(2) & \dp1|IR1|InstrReg\(1) & \dp1|IR1|InstrReg\(0));

\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\dp1|IR1|InstrReg~2_combout\ & \dp1|IR1|InstrReg~8_combout\ & \dp1|IR1|InstrReg~7_combout\);

\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a1\ <= \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a2\ <= \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a3\ <= \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a4\ <= \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a5\ <= \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a6\ <= \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a7\ <= \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\dp1|MEM1|ALT_INV_RAM~764_combout\ <= NOT \dp1|MEM1|RAM~764_combout\;
\dp1|MEM1|ALT_INV_RAM~762_combout\ <= NOT \dp1|MEM1|RAM~762_combout\;
\dp1|MEM1|ALT_INV_RAM~760_combout\ <= NOT \dp1|MEM1|RAM~760_combout\;
\dp1|MEM1|ALT_INV_RAM~758_combout\ <= NOT \dp1|MEM1|RAM~758_combout\;
\dp1|MEM1|ALT_INV_RAM~756_combout\ <= NOT \dp1|MEM1|RAM~756_combout\;
\dp1|MEM1|ALT_INV_RAM~754_combout\ <= NOT \dp1|MEM1|RAM~754_combout\;
\dp1|MEM1|ALT_INV_RAM~752_combout\ <= NOT \dp1|MEM1|RAM~752_combout\;
\dp1|MEM1|ALT_INV_RAM~750_combout\ <= NOT \dp1|MEM1|RAM~750_combout\;
\dp1|MEM1|ALT_INV_RAM~748_combout\ <= NOT \dp1|MEM1|RAM~748_combout\;
\dp1|MEM1|ALT_INV_RAM~746_combout\ <= NOT \dp1|MEM1|RAM~746_combout\;
\dp1|MEM1|ALT_INV_RAM~744_combout\ <= NOT \dp1|MEM1|RAM~744_combout\;
\dp1|MEM1|ALT_INV_RAM~742_combout\ <= NOT \dp1|MEM1|RAM~742_combout\;
\dp1|MEM1|ALT_INV_RAM~740_combout\ <= NOT \dp1|MEM1|RAM~740_combout\;
\dp1|MEM1|ALT_INV_RAM~738_combout\ <= NOT \dp1|MEM1|RAM~738_combout\;
\dp1|MEM1|ALT_INV_RAM~736_combout\ <= NOT \dp1|MEM1|RAM~736_combout\;
\dp1|MEM1|ALT_INV_RAM~734_combout\ <= NOT \dp1|MEM1|RAM~734_combout\;
\dp1|MEM1|ALT_INV_RAM~732_combout\ <= NOT \dp1|MEM1|RAM~732_combout\;
\dp1|MEM1|ALT_INV_RAM~730_combout\ <= NOT \dp1|MEM1|RAM~730_combout\;
\dp1|MEM1|ALT_INV_RAM~728_combout\ <= NOT \dp1|MEM1|RAM~728_combout\;
\dp1|MEM1|ALT_INV_RAM~726_combout\ <= NOT \dp1|MEM1|RAM~726_combout\;
\dp1|MEM1|ALT_INV_RAM~724_combout\ <= NOT \dp1|MEM1|RAM~724_combout\;
\dp1|MEM1|ALT_INV_RAM~722_combout\ <= NOT \dp1|MEM1|RAM~722_combout\;
\dp1|MEM1|ALT_INV_RAM~720_combout\ <= NOT \dp1|MEM1|RAM~720_combout\;
\dp1|MEM1|ALT_INV_RAM~718_combout\ <= NOT \dp1|MEM1|RAM~718_combout\;
\dp1|MEM1|ALT_INV_RAM~716_combout\ <= NOT \dp1|MEM1|RAM~716_combout\;
\dp1|MEM1|ALT_INV_RAM~714_combout\ <= NOT \dp1|MEM1|RAM~714_combout\;
\dp1|MEM1|ALT_INV_RAM~712_combout\ <= NOT \dp1|MEM1|RAM~712_combout\;
\dp1|MEM1|ALT_INV_RAM~710_combout\ <= NOT \dp1|MEM1|RAM~710_combout\;
\dp1|MEM1|ALT_INV_RAM~708_combout\ <= NOT \dp1|MEM1|RAM~708_combout\;
\dp1|MEM1|ALT_INV_RAM~706_combout\ <= NOT \dp1|MEM1|RAM~706_combout\;
\dp1|MEM1|ALT_INV_RAM~704_combout\ <= NOT \dp1|MEM1|RAM~704_combout\;
\dp1|MEM1|ALT_INV_RAM~702_combout\ <= NOT \dp1|MEM1|RAM~702_combout\;
\dp1|MEM1|ALT_INV_RAM~700_combout\ <= NOT \dp1|MEM1|RAM~700_combout\;
\dp1|MEM1|ALT_INV_RAM~698_combout\ <= NOT \dp1|MEM1|RAM~698_combout\;
\dp1|MEM1|ALT_INV_RAM~696_combout\ <= NOT \dp1|MEM1|RAM~696_combout\;
\dp1|MEM1|ALT_INV_RAM~694_combout\ <= NOT \dp1|MEM1|RAM~694_combout\;
\dp1|MEM1|ALT_INV_RAM~692_combout\ <= NOT \dp1|MEM1|RAM~692_combout\;
\dp1|MEM1|ALT_INV_RAM~690_combout\ <= NOT \dp1|MEM1|RAM~690_combout\;
\dp1|MEM1|ALT_INV_RAM~688_combout\ <= NOT \dp1|MEM1|RAM~688_combout\;
\c1|ALT_INV_Selector3~3_combout\ <= NOT \c1|Selector3~3_combout\;
\c1|ALT_INV_Selector3~2_combout\ <= NOT \c1|Selector3~2_combout\;
\c1|ALT_INV_Selector3~1_combout\ <= NOT \c1|Selector3~1_combout\;
\c1|ALT_INV_Selector3~0_combout\ <= NOT \c1|Selector3~0_combout\;
\dp1|ALT_INV_NOR1~0_combout\ <= NOT \dp1|NOR1~0_combout\;
\c1|ALT_INV_Mux11~0_combout\ <= NOT \c1|Mux11~0_combout\;
\dp1|MEM1|ALT_INV_RAM~686_combout\ <= NOT \dp1|MEM1|RAM~686_combout\;
\dp1|MEM1|ALT_INV_RAM~684_combout\ <= NOT \dp1|MEM1|RAM~684_combout\;
\dp1|MEM1|ALT_INV_RAM~682_combout\ <= NOT \dp1|MEM1|RAM~682_combout\;
\dp1|MEM1|ALT_INV_RAM~680_combout\ <= NOT \dp1|MEM1|RAM~680_combout\;
\c1|ALT_INV_ALUsel[0]~9_combout\ <= NOT \c1|ALUsel[0]~9_combout\;
\c1|ALT_INV_ALUsel[2]~8_combout\ <= NOT \c1|ALUsel[2]~8_combout\;
\c1|ALT_INV_Selector0~2_combout\ <= NOT \c1|Selector0~2_combout\;
\c1|ALT_INV_Selector0~1_combout\ <= NOT \c1|Selector0~1_combout\;
\c1|ALT_INV_state.000~q\ <= NOT \c1|state.000~q\;
\c1|ALT_INV_Selector0~0_combout\ <= NOT \c1|Selector0~0_combout\;
\dp1|SH1|ALT_INV_Mux0~0_combout\ <= NOT \dp1|SH1|Mux0~0_combout\;
\dp1|ACC1|ALT_INV_Aout~16_combout\ <= NOT \dp1|ACC1|Aout~16_combout\;
\dp1|ALU1|ALT_INV_Mux0~1_combout\ <= NOT \dp1|ALU1|Mux0~1_combout\;
\dp1|ALU1|ALT_INV_Mux0~0_combout\ <= NOT \dp1|ALU1|Mux0~0_combout\;
\dp1|RF1|ALT_INV_RegFile~8_combout\ <= NOT \dp1|RF1|RegFile~8_combout\;
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(14) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(14);
\dp1|ACC1|ALT_INV_Aout~14_combout\ <= NOT \dp1|ACC1|Aout~14_combout\;
\dp1|ALU1|ALT_INV_Mux1~1_combout\ <= NOT \dp1|ALU1|Mux1~1_combout\;
\dp1|ALU1|ALT_INV_Mux1~0_combout\ <= NOT \dp1|ALU1|Mux1~0_combout\;
\dp1|RF1|ALT_INV_RegFile~7_combout\ <= NOT \dp1|RF1|RegFile~7_combout\;
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(13) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(13);
\dp1|ACC1|ALT_INV_Aout~12_combout\ <= NOT \dp1|ACC1|Aout~12_combout\;
\dp1|ALU1|ALT_INV_Mux2~1_combout\ <= NOT \dp1|ALU1|Mux2~1_combout\;
\dp1|ALU1|ALT_INV_Mux2~0_combout\ <= NOT \dp1|ALU1|Mux2~0_combout\;
\dp1|RF1|ALT_INV_RegFile~6_combout\ <= NOT \dp1|RF1|RegFile~6_combout\;
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(12) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(12);
\dp1|ACC1|ALT_INV_Aout~10_combout\ <= NOT \dp1|ACC1|Aout~10_combout\;
\dp1|ALU1|ALT_INV_Mux3~1_combout\ <= NOT \dp1|ALU1|Mux3~1_combout\;
\dp1|ALU1|ALT_INV_Mux3~0_combout\ <= NOT \dp1|ALU1|Mux3~0_combout\;
\dp1|RF1|ALT_INV_RegFile~5_combout\ <= NOT \dp1|RF1|RegFile~5_combout\;
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(11) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(11);
\dp1|ACC1|ALT_INV_Aout~8_combout\ <= NOT \dp1|ACC1|Aout~8_combout\;
\dp1|ALU1|ALT_INV_Mux4~1_combout\ <= NOT \dp1|ALU1|Mux4~1_combout\;
\dp1|ALU1|ALT_INV_Mux4~0_combout\ <= NOT \dp1|ALU1|Mux4~0_combout\;
\dp1|RF1|ALT_INV_RegFile~4_combout\ <= NOT \dp1|RF1|RegFile~4_combout\;
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(10) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(10);
\dp1|ACC1|ALT_INV_Aout~6_combout\ <= NOT \dp1|ACC1|Aout~6_combout\;
\dp1|ACC1|ALT_INV_Aout[2]~5_combout\ <= NOT \dp1|ACC1|Aout[2]~5_combout\;
\dp1|ACC1|ALT_INV_Aout[2]~4_combout\ <= NOT \dp1|ACC1|Aout[2]~4_combout\;
\dp1|ALU1|ALT_INV_Mux5~1_combout\ <= NOT \dp1|ALU1|Mux5~1_combout\;
\dp1|ALU1|ALT_INV_Mux5~0_combout\ <= NOT \dp1|ALU1|Mux5~0_combout\;
\dp1|RF1|ALT_INV_RegFile~3_combout\ <= NOT \dp1|RF1|RegFile~3_combout\;
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(9) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(9);
\dp1|ALU1|ALT_INV_Mux6~2_combout\ <= NOT \dp1|ALU1|Mux6~2_combout\;
\dp1|MEM1|ALT_INV_RAM~679_combout\ <= NOT \dp1|MEM1|RAM~679_combout\;
\dp1|MEM1|ALT_INV_RAM~678_combout\ <= NOT \dp1|MEM1|RAM~678_combout\;
\dp1|MEM1|ALT_INV_RAM~677_combout\ <= NOT \dp1|MEM1|RAM~677_combout\;
\dp1|MEM1|ALT_INV_RAM~505_q\ <= NOT \dp1|MEM1|RAM~505_q\;
\dp1|MEM1|ALT_INV_RAM~377_q\ <= NOT \dp1|MEM1|RAM~377_q\;
\dp1|MEM1|ALT_INV_RAM~249_q\ <= NOT \dp1|MEM1|RAM~249_q\;
\dp1|MEM1|ALT_INV_RAM~121_q\ <= NOT \dp1|MEM1|RAM~121_q\;
\dp1|MEM1|ALT_INV_RAM~676_combout\ <= NOT \dp1|MEM1|RAM~676_combout\;
\dp1|MEM1|ALT_INV_RAM~473_q\ <= NOT \dp1|MEM1|RAM~473_q\;
\dp1|MEM1|ALT_INV_RAM~345_q\ <= NOT \dp1|MEM1|RAM~345_q\;
\dp1|MEM1|ALT_INV_RAM~217_q\ <= NOT \dp1|MEM1|RAM~217_q\;
\dp1|MEM1|ALT_INV_RAM~89_q\ <= NOT \dp1|MEM1|RAM~89_q\;
\dp1|MEM1|ALT_INV_RAM~675_combout\ <= NOT \dp1|MEM1|RAM~675_combout\;
\dp1|MEM1|ALT_INV_RAM~441_q\ <= NOT \dp1|MEM1|RAM~441_q\;
\dp1|MEM1|ALT_INV_RAM~313_q\ <= NOT \dp1|MEM1|RAM~313_q\;
\dp1|MEM1|ALT_INV_RAM~185_q\ <= NOT \dp1|MEM1|RAM~185_q\;
\dp1|MEM1|ALT_INV_RAM~57_q\ <= NOT \dp1|MEM1|RAM~57_q\;
\dp1|MEM1|ALT_INV_RAM~674_combout\ <= NOT \dp1|MEM1|RAM~674_combout\;
\dp1|MEM1|ALT_INV_RAM~409_q\ <= NOT \dp1|MEM1|RAM~409_q\;
\dp1|MEM1|ALT_INV_RAM~281_q\ <= NOT \dp1|MEM1|RAM~281_q\;
\dp1|MEM1|ALT_INV_RAM~153_q\ <= NOT \dp1|MEM1|RAM~153_q\;
\dp1|MEM1|ALT_INV_RAM~25_q\ <= NOT \dp1|MEM1|RAM~25_q\;
\dp1|MEM1|ALT_INV_RAM~673_combout\ <= NOT \dp1|MEM1|RAM~673_combout\;
\dp1|MEM1|ALT_INV_RAM~672_combout\ <= NOT \dp1|MEM1|RAM~672_combout\;
\dp1|MEM1|ALT_INV_RAM~497_q\ <= NOT \dp1|MEM1|RAM~497_q\;
\dp1|MEM1|ALT_INV_RAM~369_q\ <= NOT \dp1|MEM1|RAM~369_q\;
\dp1|MEM1|ALT_INV_RAM~241_q\ <= NOT \dp1|MEM1|RAM~241_q\;
\dp1|MEM1|ALT_INV_RAM~113_q\ <= NOT \dp1|MEM1|RAM~113_q\;
\dp1|MEM1|ALT_INV_RAM~671_combout\ <= NOT \dp1|MEM1|RAM~671_combout\;
\dp1|MEM1|ALT_INV_RAM~465_q\ <= NOT \dp1|MEM1|RAM~465_q\;
\dp1|MEM1|ALT_INV_RAM~337_q\ <= NOT \dp1|MEM1|RAM~337_q\;
\dp1|MEM1|ALT_INV_RAM~209_q\ <= NOT \dp1|MEM1|RAM~209_q\;
\dp1|MEM1|ALT_INV_RAM~81_q\ <= NOT \dp1|MEM1|RAM~81_q\;
\dp1|MEM1|ALT_INV_RAM~670_combout\ <= NOT \dp1|MEM1|RAM~670_combout\;
\dp1|MEM1|ALT_INV_RAM~433_q\ <= NOT \dp1|MEM1|RAM~433_q\;
\dp1|MEM1|ALT_INV_RAM~305_q\ <= NOT \dp1|MEM1|RAM~305_q\;
\dp1|MEM1|ALT_INV_RAM~177_q\ <= NOT \dp1|MEM1|RAM~177_q\;
\dp1|MEM1|ALT_INV_RAM~49_q\ <= NOT \dp1|MEM1|RAM~49_q\;
\dp1|MEM1|ALT_INV_RAM~669_combout\ <= NOT \dp1|MEM1|RAM~669_combout\;
\dp1|MEM1|ALT_INV_RAM~401_q\ <= NOT \dp1|MEM1|RAM~401_q\;
\dp1|MEM1|ALT_INV_RAM~273_q\ <= NOT \dp1|MEM1|RAM~273_q\;
\dp1|MEM1|ALT_INV_RAM~145_q\ <= NOT \dp1|MEM1|RAM~145_q\;
\dp1|MEM1|ALT_INV_RAM~17_q\ <= NOT \dp1|MEM1|RAM~17_q\;
\dp1|MEM1|ALT_INV_RAM~668_combout\ <= NOT \dp1|MEM1|RAM~668_combout\;
\dp1|MEM1|ALT_INV_RAM~667_combout\ <= NOT \dp1|MEM1|RAM~667_combout\;
\dp1|MEM1|ALT_INV_RAM~489_q\ <= NOT \dp1|MEM1|RAM~489_q\;
\dp1|MEM1|ALT_INV_RAM~361_q\ <= NOT \dp1|MEM1|RAM~361_q\;
\dp1|MEM1|ALT_INV_RAM~233_q\ <= NOT \dp1|MEM1|RAM~233_q\;
\dp1|MEM1|ALT_INV_RAM~105_q\ <= NOT \dp1|MEM1|RAM~105_q\;
\dp1|MEM1|ALT_INV_RAM~666_combout\ <= NOT \dp1|MEM1|RAM~666_combout\;
\dp1|MEM1|ALT_INV_RAM~457_q\ <= NOT \dp1|MEM1|RAM~457_q\;
\dp1|MEM1|ALT_INV_RAM~329_q\ <= NOT \dp1|MEM1|RAM~329_q\;
\dp1|MEM1|ALT_INV_RAM~201_q\ <= NOT \dp1|MEM1|RAM~201_q\;
\dp1|MEM1|ALT_INV_RAM~73_q\ <= NOT \dp1|MEM1|RAM~73_q\;
\dp1|MEM1|ALT_INV_RAM~665_combout\ <= NOT \dp1|MEM1|RAM~665_combout\;
\dp1|MEM1|ALT_INV_RAM~425_q\ <= NOT \dp1|MEM1|RAM~425_q\;
\dp1|MEM1|ALT_INV_RAM~297_q\ <= NOT \dp1|MEM1|RAM~297_q\;
\dp1|MEM1|ALT_INV_RAM~169_q\ <= NOT \dp1|MEM1|RAM~169_q\;
\dp1|MEM1|ALT_INV_RAM~41_q\ <= NOT \dp1|MEM1|RAM~41_q\;
\dp1|MEM1|ALT_INV_RAM~664_combout\ <= NOT \dp1|MEM1|RAM~664_combout\;
\dp1|MEM1|ALT_INV_RAM~393_q\ <= NOT \dp1|MEM1|RAM~393_q\;
\dp1|MEM1|ALT_INV_RAM~265_q\ <= NOT \dp1|MEM1|RAM~265_q\;
\dp1|MEM1|ALT_INV_RAM~137_q\ <= NOT \dp1|MEM1|RAM~137_q\;
\dp1|MEM1|ALT_INV_RAM~9_q\ <= NOT \dp1|MEM1|RAM~9_q\;
\dp1|MEM1|ALT_INV_RAM~663_combout\ <= NOT \dp1|MEM1|RAM~663_combout\;
\dp1|MEM1|ALT_INV_RAM~662_combout\ <= NOT \dp1|MEM1|RAM~662_combout\;
\dp1|MEM1|ALT_INV_RAM~481_q\ <= NOT \dp1|MEM1|RAM~481_q\;
\dp1|MEM1|ALT_INV_RAM~353_q\ <= NOT \dp1|MEM1|RAM~353_q\;
\dp1|MEM1|ALT_INV_RAM~225_q\ <= NOT \dp1|MEM1|RAM~225_q\;
\dp1|MEM1|ALT_INV_RAM~97_q\ <= NOT \dp1|MEM1|RAM~97_q\;
\dp1|MEM1|ALT_INV_RAM~661_combout\ <= NOT \dp1|MEM1|RAM~661_combout\;
\dp1|MEM1|ALT_INV_RAM~449_q\ <= NOT \dp1|MEM1|RAM~449_q\;
\dp1|MEM1|ALT_INV_RAM~321_q\ <= NOT \dp1|MEM1|RAM~321_q\;
\dp1|MEM1|ALT_INV_RAM~193_q\ <= NOT \dp1|MEM1|RAM~193_q\;
\dp1|MEM1|ALT_INV_RAM~65_q\ <= NOT \dp1|MEM1|RAM~65_q\;
\dp1|MEM1|ALT_INV_RAM~660_combout\ <= NOT \dp1|MEM1|RAM~660_combout\;
\dp1|MEM1|ALT_INV_RAM~417_q\ <= NOT \dp1|MEM1|RAM~417_q\;
\dp1|MEM1|ALT_INV_RAM~289_q\ <= NOT \dp1|MEM1|RAM~289_q\;
\dp1|MEM1|ALT_INV_RAM~161_q\ <= NOT \dp1|MEM1|RAM~161_q\;
\dp1|MEM1|ALT_INV_RAM~33_q\ <= NOT \dp1|MEM1|RAM~33_q\;
\dp1|MEM1|ALT_INV_RAM~659_combout\ <= NOT \dp1|MEM1|RAM~659_combout\;
\dp1|MEM1|ALT_INV_RAM~385_q\ <= NOT \dp1|MEM1|RAM~385_q\;
\dp1|MEM1|ALT_INV_RAM~257_q\ <= NOT \dp1|MEM1|RAM~257_q\;
\dp1|MEM1|ALT_INV_RAM~129_q\ <= NOT \dp1|MEM1|RAM~129_q\;
\dp1|MEM1|ALT_INV_RAM~1_q\ <= NOT \dp1|MEM1|RAM~1_q\;
\dp1|MEM1|ALT_INV_RAM~658_combout\ <= NOT \dp1|MEM1|RAM~658_combout\;
\dp1|MEM1|ALT_INV_RAM~657_combout\ <= NOT \dp1|MEM1|RAM~657_combout\;
\dp1|MEM1|ALT_INV_RAM~656_combout\ <= NOT \dp1|MEM1|RAM~656_combout\;
\dp1|MEM1|ALT_INV_RAM~511_q\ <= NOT \dp1|MEM1|RAM~511_q\;
\dp1|MEM1|ALT_INV_RAM~479_q\ <= NOT \dp1|MEM1|RAM~479_q\;
\dp1|MEM1|ALT_INV_RAM~447_q\ <= NOT \dp1|MEM1|RAM~447_q\;
\dp1|MEM1|ALT_INV_RAM~415_q\ <= NOT \dp1|MEM1|RAM~415_q\;
\dp1|MEM1|ALT_INV_RAM~655_combout\ <= NOT \dp1|MEM1|RAM~655_combout\;
\dp1|MEM1|ALT_INV_RAM~503_q\ <= NOT \dp1|MEM1|RAM~503_q\;
\dp1|MEM1|ALT_INV_RAM~471_q\ <= NOT \dp1|MEM1|RAM~471_q\;
\dp1|MEM1|ALT_INV_RAM~439_q\ <= NOT \dp1|MEM1|RAM~439_q\;
\dp1|MEM1|ALT_INV_RAM~407_q\ <= NOT \dp1|MEM1|RAM~407_q\;
\dp1|MEM1|ALT_INV_RAM~654_combout\ <= NOT \dp1|MEM1|RAM~654_combout\;
\dp1|MEM1|ALT_INV_RAM~495_q\ <= NOT \dp1|MEM1|RAM~495_q\;
\dp1|MEM1|ALT_INV_RAM~463_q\ <= NOT \dp1|MEM1|RAM~463_q\;
\dp1|MEM1|ALT_INV_RAM~431_q\ <= NOT \dp1|MEM1|RAM~431_q\;
\dp1|MEM1|ALT_INV_RAM~399_q\ <= NOT \dp1|MEM1|RAM~399_q\;
\dp1|MEM1|ALT_INV_RAM~653_combout\ <= NOT \dp1|MEM1|RAM~653_combout\;
\dp1|MEM1|ALT_INV_RAM~487_q\ <= NOT \dp1|MEM1|RAM~487_q\;
\dp1|MEM1|ALT_INV_RAM~455_q\ <= NOT \dp1|MEM1|RAM~455_q\;
\dp1|MEM1|ALT_INV_RAM~423_q\ <= NOT \dp1|MEM1|RAM~423_q\;
\dp1|MEM1|ALT_INV_RAM~391_q\ <= NOT \dp1|MEM1|RAM~391_q\;
\dp1|MEM1|ALT_INV_RAM~652_combout\ <= NOT \dp1|MEM1|RAM~652_combout\;
\dp1|MEM1|ALT_INV_RAM~651_combout\ <= NOT \dp1|MEM1|RAM~651_combout\;
\dp1|MEM1|ALT_INV_RAM~383_q\ <= NOT \dp1|MEM1|RAM~383_q\;
\dp1|MEM1|ALT_INV_RAM~375_q\ <= NOT \dp1|MEM1|RAM~375_q\;
\dp1|MEM1|ALT_INV_RAM~367_q\ <= NOT \dp1|MEM1|RAM~367_q\;
\dp1|MEM1|ALT_INV_RAM~359_q\ <= NOT \dp1|MEM1|RAM~359_q\;
\dp1|MEM1|ALT_INV_RAM~650_combout\ <= NOT \dp1|MEM1|RAM~650_combout\;
\dp1|MEM1|ALT_INV_RAM~351_q\ <= NOT \dp1|MEM1|RAM~351_q\;
\dp1|MEM1|ALT_INV_RAM~343_q\ <= NOT \dp1|MEM1|RAM~343_q\;
\dp1|MEM1|ALT_INV_RAM~335_q\ <= NOT \dp1|MEM1|RAM~335_q\;
\dp1|MEM1|ALT_INV_RAM~327_q\ <= NOT \dp1|MEM1|RAM~327_q\;
\dp1|MEM1|ALT_INV_RAM~649_combout\ <= NOT \dp1|MEM1|RAM~649_combout\;
\dp1|MEM1|ALT_INV_RAM~319_q\ <= NOT \dp1|MEM1|RAM~319_q\;
\dp1|MEM1|ALT_INV_RAM~311_q\ <= NOT \dp1|MEM1|RAM~311_q\;
\dp1|MEM1|ALT_INV_RAM~303_q\ <= NOT \dp1|MEM1|RAM~303_q\;
\dp1|MEM1|ALT_INV_RAM~295_q\ <= NOT \dp1|MEM1|RAM~295_q\;
\dp1|MEM1|ALT_INV_RAM~648_combout\ <= NOT \dp1|MEM1|RAM~648_combout\;
\dp1|MEM1|ALT_INV_RAM~287_q\ <= NOT \dp1|MEM1|RAM~287_q\;
\dp1|MEM1|ALT_INV_RAM~279_q\ <= NOT \dp1|MEM1|RAM~279_q\;
\dp1|MEM1|ALT_INV_RAM~271_q\ <= NOT \dp1|MEM1|RAM~271_q\;
\dp1|MEM1|ALT_INV_RAM~263_q\ <= NOT \dp1|MEM1|RAM~263_q\;
\dp1|MEM1|ALT_INV_RAM~647_combout\ <= NOT \dp1|MEM1|RAM~647_combout\;
\dp1|MEM1|ALT_INV_RAM~646_combout\ <= NOT \dp1|MEM1|RAM~646_combout\;
\dp1|MEM1|ALT_INV_RAM~255_q\ <= NOT \dp1|MEM1|RAM~255_q\;
\dp1|MEM1|ALT_INV_RAM~223_q\ <= NOT \dp1|MEM1|RAM~223_q\;
\dp1|MEM1|ALT_INV_RAM~191_q\ <= NOT \dp1|MEM1|RAM~191_q\;
\dp1|MEM1|ALT_INV_RAM~159_q\ <= NOT \dp1|MEM1|RAM~159_q\;
\dp1|MEM1|ALT_INV_RAM~645_combout\ <= NOT \dp1|MEM1|RAM~645_combout\;
\dp1|MEM1|ALT_INV_RAM~247_q\ <= NOT \dp1|MEM1|RAM~247_q\;
\dp1|MEM1|ALT_INV_RAM~215_q\ <= NOT \dp1|MEM1|RAM~215_q\;
\dp1|MEM1|ALT_INV_RAM~183_q\ <= NOT \dp1|MEM1|RAM~183_q\;
\dp1|MEM1|ALT_INV_RAM~151_q\ <= NOT \dp1|MEM1|RAM~151_q\;
\dp1|MEM1|ALT_INV_RAM~644_combout\ <= NOT \dp1|MEM1|RAM~644_combout\;
\dp1|MEM1|ALT_INV_RAM~239_q\ <= NOT \dp1|MEM1|RAM~239_q\;
\dp1|MEM1|ALT_INV_RAM~207_q\ <= NOT \dp1|MEM1|RAM~207_q\;
\dp1|MEM1|ALT_INV_RAM~175_q\ <= NOT \dp1|MEM1|RAM~175_q\;
\dp1|MEM1|ALT_INV_RAM~143_q\ <= NOT \dp1|MEM1|RAM~143_q\;
\dp1|MEM1|ALT_INV_RAM~643_combout\ <= NOT \dp1|MEM1|RAM~643_combout\;
\dp1|MEM1|ALT_INV_RAM~231_q\ <= NOT \dp1|MEM1|RAM~231_q\;
\dp1|MEM1|ALT_INV_RAM~199_q\ <= NOT \dp1|MEM1|RAM~199_q\;
\dp1|MEM1|ALT_INV_RAM~167_q\ <= NOT \dp1|MEM1|RAM~167_q\;
\dp1|MEM1|ALT_INV_RAM~135_q\ <= NOT \dp1|MEM1|RAM~135_q\;
\dp1|MEM1|ALT_INV_RAM~642_combout\ <= NOT \dp1|MEM1|RAM~642_combout\;
\dp1|MEM1|ALT_INV_RAM~641_combout\ <= NOT \dp1|MEM1|RAM~641_combout\;
\dp1|MEM1|ALT_INV_RAM~127_q\ <= NOT \dp1|MEM1|RAM~127_q\;
\dp1|MEM1|ALT_INV_RAM~95_q\ <= NOT \dp1|MEM1|RAM~95_q\;
\dp1|MEM1|ALT_INV_RAM~63_q\ <= NOT \dp1|MEM1|RAM~63_q\;
\dp1|MEM1|ALT_INV_RAM~31_q\ <= NOT \dp1|MEM1|RAM~31_q\;
\dp1|MEM1|ALT_INV_RAM~640_combout\ <= NOT \dp1|MEM1|RAM~640_combout\;
\dp1|MEM1|ALT_INV_RAM~119_q\ <= NOT \dp1|MEM1|RAM~119_q\;
\dp1|MEM1|ALT_INV_RAM~87_q\ <= NOT \dp1|MEM1|RAM~87_q\;
\dp1|MEM1|ALT_INV_RAM~55_q\ <= NOT \dp1|MEM1|RAM~55_q\;
\dp1|MEM1|ALT_INV_RAM~23_q\ <= NOT \dp1|MEM1|RAM~23_q\;
\dp1|MEM1|ALT_INV_RAM~639_combout\ <= NOT \dp1|MEM1|RAM~639_combout\;
\dp1|MEM1|ALT_INV_RAM~111_q\ <= NOT \dp1|MEM1|RAM~111_q\;
\dp1|MEM1|ALT_INV_RAM~79_q\ <= NOT \dp1|MEM1|RAM~79_q\;
\dp1|MEM1|ALT_INV_RAM~47_q\ <= NOT \dp1|MEM1|RAM~47_q\;
\dp1|MEM1|ALT_INV_RAM~15_q\ <= NOT \dp1|MEM1|RAM~15_q\;
\dp1|MEM1|ALT_INV_RAM~638_combout\ <= NOT \dp1|MEM1|RAM~638_combout\;
\dp1|MEM1|ALT_INV_RAM~103_q\ <= NOT \dp1|MEM1|RAM~103_q\;
\dp1|MEM1|ALT_INV_RAM~71_q\ <= NOT \dp1|MEM1|RAM~71_q\;
\dp1|MEM1|ALT_INV_RAM~39_q\ <= NOT \dp1|MEM1|RAM~39_q\;
\dp1|MEM1|ALT_INV_RAM~7_q\ <= NOT \dp1|MEM1|RAM~7_q\;
\dp1|MEM1|ALT_INV_RAM~637_combout\ <= NOT \dp1|MEM1|RAM~637_combout\;
\dp1|MEM1|ALT_INV_RAM~636_combout\ <= NOT \dp1|MEM1|RAM~636_combout\;
\dp1|MEM1|ALT_INV_RAM~635_combout\ <= NOT \dp1|MEM1|RAM~635_combout\;
\dp1|MEM1|ALT_INV_RAM~509_q\ <= NOT \dp1|MEM1|RAM~509_q\;
\dp1|MEM1|ALT_INV_RAM~477_q\ <= NOT \dp1|MEM1|RAM~477_q\;
\dp1|MEM1|ALT_INV_RAM~445_q\ <= NOT \dp1|MEM1|RAM~445_q\;
\dp1|MEM1|ALT_INV_RAM~413_q\ <= NOT \dp1|MEM1|RAM~413_q\;
\dp1|MEM1|ALT_INV_RAM~634_combout\ <= NOT \dp1|MEM1|RAM~634_combout\;
\dp1|MEM1|ALT_INV_RAM~381_q\ <= NOT \dp1|MEM1|RAM~381_q\;
\dp1|MEM1|ALT_INV_RAM~349_q\ <= NOT \dp1|MEM1|RAM~349_q\;
\dp1|MEM1|ALT_INV_RAM~317_q\ <= NOT \dp1|MEM1|RAM~317_q\;
\dp1|MEM1|ALT_INV_RAM~285_q\ <= NOT \dp1|MEM1|RAM~285_q\;
\dp1|MEM1|ALT_INV_RAM~633_combout\ <= NOT \dp1|MEM1|RAM~633_combout\;
\dp1|MEM1|ALT_INV_RAM~253_q\ <= NOT \dp1|MEM1|RAM~253_q\;
\dp1|MEM1|ALT_INV_RAM~221_q\ <= NOT \dp1|MEM1|RAM~221_q\;
\dp1|MEM1|ALT_INV_RAM~189_q\ <= NOT \dp1|MEM1|RAM~189_q\;
\dp1|MEM1|ALT_INV_RAM~157_q\ <= NOT \dp1|MEM1|RAM~157_q\;
\dp1|MEM1|ALT_INV_RAM~632_combout\ <= NOT \dp1|MEM1|RAM~632_combout\;
\dp1|MEM1|ALT_INV_RAM~125_q\ <= NOT \dp1|MEM1|RAM~125_q\;
\dp1|MEM1|ALT_INV_RAM~93_q\ <= NOT \dp1|MEM1|RAM~93_q\;
\dp1|MEM1|ALT_INV_RAM~61_q\ <= NOT \dp1|MEM1|RAM~61_q\;
\dp1|MEM1|ALT_INV_RAM~29_q\ <= NOT \dp1|MEM1|RAM~29_q\;
\dp1|MEM1|ALT_INV_RAM~631_combout\ <= NOT \dp1|MEM1|RAM~631_combout\;
\dp1|MEM1|ALT_INV_RAM~630_combout\ <= NOT \dp1|MEM1|RAM~630_combout\;
\dp1|MEM1|ALT_INV_RAM~501_q\ <= NOT \dp1|MEM1|RAM~501_q\;
\dp1|MEM1|ALT_INV_RAM~373_q\ <= NOT \dp1|MEM1|RAM~373_q\;
\dp1|MEM1|ALT_INV_RAM~245_q\ <= NOT \dp1|MEM1|RAM~245_q\;
\dp1|MEM1|ALT_INV_RAM~117_q\ <= NOT \dp1|MEM1|RAM~117_q\;
\dp1|MEM1|ALT_INV_RAM~629_combout\ <= NOT \dp1|MEM1|RAM~629_combout\;
\dp1|MEM1|ALT_INV_RAM~469_q\ <= NOT \dp1|MEM1|RAM~469_q\;
\dp1|MEM1|ALT_INV_RAM~341_q\ <= NOT \dp1|MEM1|RAM~341_q\;
\dp1|MEM1|ALT_INV_RAM~213_q\ <= NOT \dp1|MEM1|RAM~213_q\;
\dp1|MEM1|ALT_INV_RAM~85_q\ <= NOT \dp1|MEM1|RAM~85_q\;
\dp1|MEM1|ALT_INV_RAM~628_combout\ <= NOT \dp1|MEM1|RAM~628_combout\;
\dp1|MEM1|ALT_INV_RAM~437_q\ <= NOT \dp1|MEM1|RAM~437_q\;
\dp1|MEM1|ALT_INV_RAM~309_q\ <= NOT \dp1|MEM1|RAM~309_q\;
\dp1|MEM1|ALT_INV_RAM~181_q\ <= NOT \dp1|MEM1|RAM~181_q\;
\dp1|MEM1|ALT_INV_RAM~53_q\ <= NOT \dp1|MEM1|RAM~53_q\;
\dp1|MEM1|ALT_INV_RAM~627_combout\ <= NOT \dp1|MEM1|RAM~627_combout\;
\dp1|MEM1|ALT_INV_RAM~405_q\ <= NOT \dp1|MEM1|RAM~405_q\;
\dp1|MEM1|ALT_INV_RAM~277_q\ <= NOT \dp1|MEM1|RAM~277_q\;
\dp1|MEM1|ALT_INV_RAM~149_q\ <= NOT \dp1|MEM1|RAM~149_q\;
\dp1|MEM1|ALT_INV_RAM~21_q\ <= NOT \dp1|MEM1|RAM~21_q\;
\dp1|MEM1|ALT_INV_RAM~626_combout\ <= NOT \dp1|MEM1|RAM~626_combout\;
\dp1|MEM1|ALT_INV_RAM~625_combout\ <= NOT \dp1|MEM1|RAM~625_combout\;
\dp1|MEM1|ALT_INV_RAM~493_q\ <= NOT \dp1|MEM1|RAM~493_q\;
\dp1|MEM1|ALT_INV_RAM~365_q\ <= NOT \dp1|MEM1|RAM~365_q\;
\dp1|MEM1|ALT_INV_RAM~237_q\ <= NOT \dp1|MEM1|RAM~237_q\;
\dp1|MEM1|ALT_INV_RAM~109_q\ <= NOT \dp1|MEM1|RAM~109_q\;
\dp1|MEM1|ALT_INV_RAM~624_combout\ <= NOT \dp1|MEM1|RAM~624_combout\;
\dp1|MEM1|ALT_INV_RAM~461_q\ <= NOT \dp1|MEM1|RAM~461_q\;
\dp1|MEM1|ALT_INV_RAM~333_q\ <= NOT \dp1|MEM1|RAM~333_q\;
\dp1|MEM1|ALT_INV_RAM~205_q\ <= NOT \dp1|MEM1|RAM~205_q\;
\dp1|MEM1|ALT_INV_RAM~77_q\ <= NOT \dp1|MEM1|RAM~77_q\;
\dp1|MEM1|ALT_INV_RAM~623_combout\ <= NOT \dp1|MEM1|RAM~623_combout\;
\dp1|MEM1|ALT_INV_RAM~429_q\ <= NOT \dp1|MEM1|RAM~429_q\;
\dp1|MEM1|ALT_INV_RAM~301_q\ <= NOT \dp1|MEM1|RAM~301_q\;
\dp1|MEM1|ALT_INV_RAM~173_q\ <= NOT \dp1|MEM1|RAM~173_q\;
\dp1|MEM1|ALT_INV_RAM~45_q\ <= NOT \dp1|MEM1|RAM~45_q\;
\dp1|MEM1|ALT_INV_RAM~622_combout\ <= NOT \dp1|MEM1|RAM~622_combout\;
\dp1|MEM1|ALT_INV_RAM~397_q\ <= NOT \dp1|MEM1|RAM~397_q\;
\dp1|MEM1|ALT_INV_RAM~269_q\ <= NOT \dp1|MEM1|RAM~269_q\;
\dp1|MEM1|ALT_INV_RAM~141_q\ <= NOT \dp1|MEM1|RAM~141_q\;
\dp1|MEM1|ALT_INV_RAM~13_q\ <= NOT \dp1|MEM1|RAM~13_q\;
\dp1|MEM1|ALT_INV_RAM~621_combout\ <= NOT \dp1|MEM1|RAM~621_combout\;
\dp1|MEM1|ALT_INV_RAM~620_combout\ <= NOT \dp1|MEM1|RAM~620_combout\;
\dp1|MEM1|ALT_INV_RAM~485_q\ <= NOT \dp1|MEM1|RAM~485_q\;
\dp1|MEM1|ALT_INV_RAM~357_q\ <= NOT \dp1|MEM1|RAM~357_q\;
\dp1|MEM1|ALT_INV_RAM~229_q\ <= NOT \dp1|MEM1|RAM~229_q\;
\dp1|MEM1|ALT_INV_RAM~101_q\ <= NOT \dp1|MEM1|RAM~101_q\;
\dp1|MEM1|ALT_INV_RAM~619_combout\ <= NOT \dp1|MEM1|RAM~619_combout\;
\dp1|MEM1|ALT_INV_RAM~453_q\ <= NOT \dp1|MEM1|RAM~453_q\;
\dp1|MEM1|ALT_INV_RAM~325_q\ <= NOT \dp1|MEM1|RAM~325_q\;
\dp1|MEM1|ALT_INV_RAM~197_q\ <= NOT \dp1|MEM1|RAM~197_q\;
\dp1|MEM1|ALT_INV_RAM~69_q\ <= NOT \dp1|MEM1|RAM~69_q\;
\dp1|MEM1|ALT_INV_RAM~618_combout\ <= NOT \dp1|MEM1|RAM~618_combout\;
\dp1|MEM1|ALT_INV_RAM~421_q\ <= NOT \dp1|MEM1|RAM~421_q\;
\dp1|MEM1|ALT_INV_RAM~293_q\ <= NOT \dp1|MEM1|RAM~293_q\;
\dp1|MEM1|ALT_INV_RAM~165_q\ <= NOT \dp1|MEM1|RAM~165_q\;
\dp1|MEM1|ALT_INV_RAM~37_q\ <= NOT \dp1|MEM1|RAM~37_q\;
\dp1|MEM1|ALT_INV_RAM~617_combout\ <= NOT \dp1|MEM1|RAM~617_combout\;
\dp1|MEM1|ALT_INV_RAM~389_q\ <= NOT \dp1|MEM1|RAM~389_q\;
\dp1|MEM1|ALT_INV_RAM~261_q\ <= NOT \dp1|MEM1|RAM~261_q\;
\dp1|MEM1|ALT_INV_RAM~133_q\ <= NOT \dp1|MEM1|RAM~133_q\;
\dp1|MEM1|ALT_INV_RAM~5_q\ <= NOT \dp1|MEM1|RAM~5_q\;
\dp1|MEM1|ALT_INV_RAM~616_combout\ <= NOT \dp1|MEM1|RAM~616_combout\;
\dp1|MEM1|ALT_INV_RAM~615_combout\ <= NOT \dp1|MEM1|RAM~615_combout\;
\dp1|MEM1|ALT_INV_RAM~614_combout\ <= NOT \dp1|MEM1|RAM~614_combout\;
\dp1|MEM1|ALT_INV_RAM~510_q\ <= NOT \dp1|MEM1|RAM~510_q\;
\dp1|MEM1|ALT_INV_RAM~382_q\ <= NOT \dp1|MEM1|RAM~382_q\;
\dp1|MEM1|ALT_INV_RAM~254_q\ <= NOT \dp1|MEM1|RAM~254_q\;
\dp1|MEM1|ALT_INV_RAM~126_q\ <= NOT \dp1|MEM1|RAM~126_q\;
\dp1|MEM1|ALT_INV_RAM~613_combout\ <= NOT \dp1|MEM1|RAM~613_combout\;
\dp1|MEM1|ALT_INV_RAM~502_q\ <= NOT \dp1|MEM1|RAM~502_q\;
\dp1|MEM1|ALT_INV_RAM~374_q\ <= NOT \dp1|MEM1|RAM~374_q\;
\dp1|MEM1|ALT_INV_RAM~246_q\ <= NOT \dp1|MEM1|RAM~246_q\;
\dp1|MEM1|ALT_INV_RAM~118_q\ <= NOT \dp1|MEM1|RAM~118_q\;
\dp1|MEM1|ALT_INV_RAM~612_combout\ <= NOT \dp1|MEM1|RAM~612_combout\;
\dp1|MEM1|ALT_INV_RAM~494_q\ <= NOT \dp1|MEM1|RAM~494_q\;
\dp1|MEM1|ALT_INV_RAM~366_q\ <= NOT \dp1|MEM1|RAM~366_q\;
\dp1|MEM1|ALT_INV_RAM~238_q\ <= NOT \dp1|MEM1|RAM~238_q\;
\dp1|MEM1|ALT_INV_RAM~110_q\ <= NOT \dp1|MEM1|RAM~110_q\;
\dp1|MEM1|ALT_INV_RAM~611_combout\ <= NOT \dp1|MEM1|RAM~611_combout\;
\dp1|MEM1|ALT_INV_RAM~486_q\ <= NOT \dp1|MEM1|RAM~486_q\;
\dp1|MEM1|ALT_INV_RAM~358_q\ <= NOT \dp1|MEM1|RAM~358_q\;
\dp1|MEM1|ALT_INV_RAM~230_q\ <= NOT \dp1|MEM1|RAM~230_q\;
\dp1|MEM1|ALT_INV_RAM~102_q\ <= NOT \dp1|MEM1|RAM~102_q\;
\dp1|MEM1|ALT_INV_RAM~610_combout\ <= NOT \dp1|MEM1|RAM~610_combout\;
\dp1|MEM1|ALT_INV_RAM~609_combout\ <= NOT \dp1|MEM1|RAM~609_combout\;
\dp1|MEM1|ALT_INV_RAM~478_q\ <= NOT \dp1|MEM1|RAM~478_q\;
\dp1|MEM1|ALT_INV_RAM~470_q\ <= NOT \dp1|MEM1|RAM~470_q\;
\dp1|MEM1|ALT_INV_RAM~462_q\ <= NOT \dp1|MEM1|RAM~462_q\;
\dp1|MEM1|ALT_INV_RAM~454_q\ <= NOT \dp1|MEM1|RAM~454_q\;
\dp1|MEM1|ALT_INV_RAM~608_combout\ <= NOT \dp1|MEM1|RAM~608_combout\;
\dp1|MEM1|ALT_INV_RAM~350_q\ <= NOT \dp1|MEM1|RAM~350_q\;
\dp1|MEM1|ALT_INV_RAM~342_q\ <= NOT \dp1|MEM1|RAM~342_q\;
\dp1|MEM1|ALT_INV_RAM~334_q\ <= NOT \dp1|MEM1|RAM~334_q\;
\dp1|MEM1|ALT_INV_RAM~326_q\ <= NOT \dp1|MEM1|RAM~326_q\;
\dp1|MEM1|ALT_INV_RAM~607_combout\ <= NOT \dp1|MEM1|RAM~607_combout\;
\dp1|MEM1|ALT_INV_RAM~222_q\ <= NOT \dp1|MEM1|RAM~222_q\;
\dp1|MEM1|ALT_INV_RAM~214_q\ <= NOT \dp1|MEM1|RAM~214_q\;
\dp1|MEM1|ALT_INV_RAM~206_q\ <= NOT \dp1|MEM1|RAM~206_q\;
\dp1|MEM1|ALT_INV_RAM~198_q\ <= NOT \dp1|MEM1|RAM~198_q\;
\dp1|MEM1|ALT_INV_RAM~606_combout\ <= NOT \dp1|MEM1|RAM~606_combout\;
\dp1|MEM1|ALT_INV_RAM~94_q\ <= NOT \dp1|MEM1|RAM~94_q\;
\dp1|MEM1|ALT_INV_RAM~86_q\ <= NOT \dp1|MEM1|RAM~86_q\;
\dp1|MEM1|ALT_INV_RAM~78_q\ <= NOT \dp1|MEM1|RAM~78_q\;
\dp1|MEM1|ALT_INV_RAM~70_q\ <= NOT \dp1|MEM1|RAM~70_q\;
\dp1|MEM1|ALT_INV_RAM~605_combout\ <= NOT \dp1|MEM1|RAM~605_combout\;
\dp1|MEM1|ALT_INV_RAM~604_combout\ <= NOT \dp1|MEM1|RAM~604_combout\;
\dp1|MEM1|ALT_INV_RAM~446_q\ <= NOT \dp1|MEM1|RAM~446_q\;
\dp1|MEM1|ALT_INV_RAM~438_q\ <= NOT \dp1|MEM1|RAM~438_q\;
\dp1|MEM1|ALT_INV_RAM~430_q\ <= NOT \dp1|MEM1|RAM~430_q\;
\dp1|MEM1|ALT_INV_RAM~422_q\ <= NOT \dp1|MEM1|RAM~422_q\;
\dp1|MEM1|ALT_INV_RAM~603_combout\ <= NOT \dp1|MEM1|RAM~603_combout\;
\dp1|MEM1|ALT_INV_RAM~318_q\ <= NOT \dp1|MEM1|RAM~318_q\;
\dp1|MEM1|ALT_INV_RAM~310_q\ <= NOT \dp1|MEM1|RAM~310_q\;
\dp1|MEM1|ALT_INV_RAM~302_q\ <= NOT \dp1|MEM1|RAM~302_q\;
\dp1|MEM1|ALT_INV_RAM~294_q\ <= NOT \dp1|MEM1|RAM~294_q\;
\dp1|MEM1|ALT_INV_RAM~602_combout\ <= NOT \dp1|MEM1|RAM~602_combout\;
\dp1|MEM1|ALT_INV_RAM~190_q\ <= NOT \dp1|MEM1|RAM~190_q\;
\dp1|MEM1|ALT_INV_RAM~182_q\ <= NOT \dp1|MEM1|RAM~182_q\;
\dp1|MEM1|ALT_INV_RAM~174_q\ <= NOT \dp1|MEM1|RAM~174_q\;
\dp1|MEM1|ALT_INV_RAM~166_q\ <= NOT \dp1|MEM1|RAM~166_q\;
\dp1|MEM1|ALT_INV_RAM~601_combout\ <= NOT \dp1|MEM1|RAM~601_combout\;
\dp1|MEM1|ALT_INV_RAM~62_q\ <= NOT \dp1|MEM1|RAM~62_q\;
\dp1|MEM1|ALT_INV_RAM~54_q\ <= NOT \dp1|MEM1|RAM~54_q\;
\dp1|MEM1|ALT_INV_RAM~46_q\ <= NOT \dp1|MEM1|RAM~46_q\;
\dp1|MEM1|ALT_INV_RAM~38_q\ <= NOT \dp1|MEM1|RAM~38_q\;
\dp1|MEM1|ALT_INV_RAM~600_combout\ <= NOT \dp1|MEM1|RAM~600_combout\;
\dp1|MEM1|ALT_INV_RAM~599_combout\ <= NOT \dp1|MEM1|RAM~599_combout\;
\dp1|MEM1|ALT_INV_RAM~414_q\ <= NOT \dp1|MEM1|RAM~414_q\;
\dp1|MEM1|ALT_INV_RAM~406_q\ <= NOT \dp1|MEM1|RAM~406_q\;
\dp1|MEM1|ALT_INV_RAM~398_q\ <= NOT \dp1|MEM1|RAM~398_q\;
\dp1|MEM1|ALT_INV_RAM~390_q\ <= NOT \dp1|MEM1|RAM~390_q\;
\dp1|MEM1|ALT_INV_RAM~598_combout\ <= NOT \dp1|MEM1|RAM~598_combout\;
\dp1|MEM1|ALT_INV_RAM~286_q\ <= NOT \dp1|MEM1|RAM~286_q\;
\dp1|MEM1|ALT_INV_RAM~278_q\ <= NOT \dp1|MEM1|RAM~278_q\;
\dp1|MEM1|ALT_INV_RAM~270_q\ <= NOT \dp1|MEM1|RAM~270_q\;
\dp1|MEM1|ALT_INV_RAM~262_q\ <= NOT \dp1|MEM1|RAM~262_q\;
\dp1|MEM1|ALT_INV_RAM~597_combout\ <= NOT \dp1|MEM1|RAM~597_combout\;
\dp1|MEM1|ALT_INV_RAM~158_q\ <= NOT \dp1|MEM1|RAM~158_q\;
\dp1|MEM1|ALT_INV_RAM~150_q\ <= NOT \dp1|MEM1|RAM~150_q\;
\dp1|MEM1|ALT_INV_RAM~142_q\ <= NOT \dp1|MEM1|RAM~142_q\;
\dp1|MEM1|ALT_INV_RAM~134_q\ <= NOT \dp1|MEM1|RAM~134_q\;
\dp1|MEM1|ALT_INV_RAM~596_combout\ <= NOT \dp1|MEM1|RAM~596_combout\;
\dp1|MEM1|ALT_INV_RAM~30_q\ <= NOT \dp1|MEM1|RAM~30_q\;
\dp1|MEM1|ALT_INV_RAM~22_q\ <= NOT \dp1|MEM1|RAM~22_q\;
\dp1|MEM1|ALT_INV_RAM~14_q\ <= NOT \dp1|MEM1|RAM~14_q\;
\dp1|MEM1|ALT_INV_RAM~6_q\ <= NOT \dp1|MEM1|RAM~6_q\;
\dp1|MEM1|ALT_INV_RAM~595_combout\ <= NOT \dp1|MEM1|RAM~595_combout\;
\dp1|MEM1|ALT_INV_RAM~594_combout\ <= NOT \dp1|MEM1|RAM~594_combout\;
\dp1|MEM1|ALT_INV_RAM~593_combout\ <= NOT \dp1|MEM1|RAM~593_combout\;
\dp1|MEM1|ALT_INV_RAM~507_q\ <= NOT \dp1|MEM1|RAM~507_q\;
\dp1|MEM1|ALT_INV_RAM~475_q\ <= NOT \dp1|MEM1|RAM~475_q\;
\dp1|MEM1|ALT_INV_RAM~443_q\ <= NOT \dp1|MEM1|RAM~443_q\;
\dp1|MEM1|ALT_INV_RAM~411_q\ <= NOT \dp1|MEM1|RAM~411_q\;
\dp1|MEM1|ALT_INV_RAM~592_combout\ <= NOT \dp1|MEM1|RAM~592_combout\;
\dp1|MEM1|ALT_INV_RAM~379_q\ <= NOT \dp1|MEM1|RAM~379_q\;
\dp1|MEM1|ALT_INV_RAM~347_q\ <= NOT \dp1|MEM1|RAM~347_q\;
\dp1|MEM1|ALT_INV_RAM~315_q\ <= NOT \dp1|MEM1|RAM~315_q\;
\dp1|MEM1|ALT_INV_RAM~283_q\ <= NOT \dp1|MEM1|RAM~283_q\;
\dp1|MEM1|ALT_INV_RAM~591_combout\ <= NOT \dp1|MEM1|RAM~591_combout\;
\dp1|MEM1|ALT_INV_RAM~251_q\ <= NOT \dp1|MEM1|RAM~251_q\;
\dp1|MEM1|ALT_INV_RAM~219_q\ <= NOT \dp1|MEM1|RAM~219_q\;
\dp1|MEM1|ALT_INV_RAM~187_q\ <= NOT \dp1|MEM1|RAM~187_q\;
\dp1|MEM1|ALT_INV_RAM~155_q\ <= NOT \dp1|MEM1|RAM~155_q\;
\dp1|MEM1|ALT_INV_RAM~590_combout\ <= NOT \dp1|MEM1|RAM~590_combout\;
\dp1|MEM1|ALT_INV_RAM~123_q\ <= NOT \dp1|MEM1|RAM~123_q\;
\dp1|MEM1|ALT_INV_RAM~91_q\ <= NOT \dp1|MEM1|RAM~91_q\;
\dp1|MEM1|ALT_INV_RAM~59_q\ <= NOT \dp1|MEM1|RAM~59_q\;
\dp1|MEM1|ALT_INV_RAM~27_q\ <= NOT \dp1|MEM1|RAM~27_q\;
\dp1|MEM1|ALT_INV_RAM~589_combout\ <= NOT \dp1|MEM1|RAM~589_combout\;
\dp1|MEM1|ALT_INV_RAM~588_combout\ <= NOT \dp1|MEM1|RAM~588_combout\;
\dp1|MEM1|ALT_INV_RAM~499_q\ <= NOT \dp1|MEM1|RAM~499_q\;
\dp1|MEM1|ALT_INV_RAM~371_q\ <= NOT \dp1|MEM1|RAM~371_q\;
\dp1|MEM1|ALT_INV_RAM~243_q\ <= NOT \dp1|MEM1|RAM~243_q\;
\dp1|MEM1|ALT_INV_RAM~115_q\ <= NOT \dp1|MEM1|RAM~115_q\;
\dp1|MEM1|ALT_INV_RAM~587_combout\ <= NOT \dp1|MEM1|RAM~587_combout\;
\dp1|MEM1|ALT_INV_RAM~467_q\ <= NOT \dp1|MEM1|RAM~467_q\;
\dp1|MEM1|ALT_INV_RAM~339_q\ <= NOT \dp1|MEM1|RAM~339_q\;
\dp1|MEM1|ALT_INV_RAM~211_q\ <= NOT \dp1|MEM1|RAM~211_q\;
\dp1|MEM1|ALT_INV_RAM~83_q\ <= NOT \dp1|MEM1|RAM~83_q\;
\dp1|MEM1|ALT_INV_RAM~586_combout\ <= NOT \dp1|MEM1|RAM~586_combout\;
\dp1|MEM1|ALT_INV_RAM~435_q\ <= NOT \dp1|MEM1|RAM~435_q\;
\dp1|MEM1|ALT_INV_RAM~307_q\ <= NOT \dp1|MEM1|RAM~307_q\;
\dp1|MEM1|ALT_INV_RAM~179_q\ <= NOT \dp1|MEM1|RAM~179_q\;
\dp1|MEM1|ALT_INV_RAM~51_q\ <= NOT \dp1|MEM1|RAM~51_q\;
\dp1|MEM1|ALT_INV_RAM~585_combout\ <= NOT \dp1|MEM1|RAM~585_combout\;
\dp1|MEM1|ALT_INV_RAM~403_q\ <= NOT \dp1|MEM1|RAM~403_q\;
\dp1|MEM1|ALT_INV_RAM~275_q\ <= NOT \dp1|MEM1|RAM~275_q\;
\dp1|MEM1|ALT_INV_RAM~147_q\ <= NOT \dp1|MEM1|RAM~147_q\;
\dp1|MEM1|ALT_INV_RAM~19_q\ <= NOT \dp1|MEM1|RAM~19_q\;
\dp1|MEM1|ALT_INV_RAM~584_combout\ <= NOT \dp1|MEM1|RAM~584_combout\;
\dp1|MEM1|ALT_INV_RAM~583_combout\ <= NOT \dp1|MEM1|RAM~583_combout\;
\dp1|MEM1|ALT_INV_RAM~491_q\ <= NOT \dp1|MEM1|RAM~491_q\;
\dp1|MEM1|ALT_INV_RAM~363_q\ <= NOT \dp1|MEM1|RAM~363_q\;
\dp1|MEM1|ALT_INV_RAM~235_q\ <= NOT \dp1|MEM1|RAM~235_q\;
\dp1|MEM1|ALT_INV_RAM~107_q\ <= NOT \dp1|MEM1|RAM~107_q\;
\dp1|MEM1|ALT_INV_RAM~582_combout\ <= NOT \dp1|MEM1|RAM~582_combout\;
\dp1|MEM1|ALT_INV_RAM~459_q\ <= NOT \dp1|MEM1|RAM~459_q\;
\dp1|MEM1|ALT_INV_RAM~331_q\ <= NOT \dp1|MEM1|RAM~331_q\;
\dp1|MEM1|ALT_INV_RAM~203_q\ <= NOT \dp1|MEM1|RAM~203_q\;
\dp1|MEM1|ALT_INV_RAM~75_q\ <= NOT \dp1|MEM1|RAM~75_q\;
\dp1|MEM1|ALT_INV_RAM~581_combout\ <= NOT \dp1|MEM1|RAM~581_combout\;
\dp1|MEM1|ALT_INV_RAM~427_q\ <= NOT \dp1|MEM1|RAM~427_q\;
\dp1|MEM1|ALT_INV_RAM~299_q\ <= NOT \dp1|MEM1|RAM~299_q\;
\dp1|MEM1|ALT_INV_RAM~171_q\ <= NOT \dp1|MEM1|RAM~171_q\;
\dp1|MEM1|ALT_INV_RAM~43_q\ <= NOT \dp1|MEM1|RAM~43_q\;
\dp1|MEM1|ALT_INV_RAM~580_combout\ <= NOT \dp1|MEM1|RAM~580_combout\;
\dp1|MEM1|ALT_INV_RAM~395_q\ <= NOT \dp1|MEM1|RAM~395_q\;
\dp1|MEM1|ALT_INV_RAM~267_q\ <= NOT \dp1|MEM1|RAM~267_q\;
\dp1|MEM1|ALT_INV_RAM~139_q\ <= NOT \dp1|MEM1|RAM~139_q\;
\dp1|MEM1|ALT_INV_RAM~11_q\ <= NOT \dp1|MEM1|RAM~11_q\;
\dp1|MEM1|ALT_INV_RAM~579_combout\ <= NOT \dp1|MEM1|RAM~579_combout\;
\dp1|MEM1|ALT_INV_RAM~578_combout\ <= NOT \dp1|MEM1|RAM~578_combout\;
\dp1|MEM1|ALT_INV_RAM~483_q\ <= NOT \dp1|MEM1|RAM~483_q\;
\dp1|MEM1|ALT_INV_RAM~355_q\ <= NOT \dp1|MEM1|RAM~355_q\;
\dp1|MEM1|ALT_INV_RAM~227_q\ <= NOT \dp1|MEM1|RAM~227_q\;
\dp1|MEM1|ALT_INV_RAM~99_q\ <= NOT \dp1|MEM1|RAM~99_q\;
\dp1|MEM1|ALT_INV_RAM~577_combout\ <= NOT \dp1|MEM1|RAM~577_combout\;
\dp1|MEM1|ALT_INV_RAM~451_q\ <= NOT \dp1|MEM1|RAM~451_q\;
\dp1|MEM1|ALT_INV_RAM~323_q\ <= NOT \dp1|MEM1|RAM~323_q\;
\dp1|MEM1|ALT_INV_RAM~195_q\ <= NOT \dp1|MEM1|RAM~195_q\;
\dp1|MEM1|ALT_INV_RAM~67_q\ <= NOT \dp1|MEM1|RAM~67_q\;
\dp1|MEM1|ALT_INV_RAM~576_combout\ <= NOT \dp1|MEM1|RAM~576_combout\;
\dp1|MEM1|ALT_INV_RAM~419_q\ <= NOT \dp1|MEM1|RAM~419_q\;
\dp1|MEM1|ALT_INV_RAM~291_q\ <= NOT \dp1|MEM1|RAM~291_q\;
\dp1|MEM1|ALT_INV_RAM~163_q\ <= NOT \dp1|MEM1|RAM~163_q\;
\dp1|MEM1|ALT_INV_RAM~35_q\ <= NOT \dp1|MEM1|RAM~35_q\;
\dp1|MEM1|ALT_INV_RAM~575_combout\ <= NOT \dp1|MEM1|RAM~575_combout\;
\dp1|MEM1|ALT_INV_RAM~387_q\ <= NOT \dp1|MEM1|RAM~387_q\;
\dp1|MEM1|ALT_INV_RAM~259_q\ <= NOT \dp1|MEM1|RAM~259_q\;
\dp1|MEM1|ALT_INV_RAM~131_q\ <= NOT \dp1|MEM1|RAM~131_q\;
\dp1|MEM1|ALT_INV_RAM~3_q\ <= NOT \dp1|MEM1|RAM~3_q\;
\dp1|MEM1|ALT_INV_RAM~574_combout\ <= NOT \dp1|MEM1|RAM~574_combout\;
\dp1|MEM1|ALT_INV_RAM~573_combout\ <= NOT \dp1|MEM1|RAM~573_combout\;
\dp1|MEM1|ALT_INV_RAM~572_combout\ <= NOT \dp1|MEM1|RAM~572_combout\;
\dp1|MEM1|ALT_INV_RAM~506_q\ <= NOT \dp1|MEM1|RAM~506_q\;
\dp1|MEM1|ALT_INV_RAM~498_q\ <= NOT \dp1|MEM1|RAM~498_q\;
\dp1|MEM1|ALT_INV_RAM~490_q\ <= NOT \dp1|MEM1|RAM~490_q\;
\dp1|MEM1|ALT_INV_RAM~482_q\ <= NOT \dp1|MEM1|RAM~482_q\;
\dp1|MEM1|ALT_INV_RAM~571_combout\ <= NOT \dp1|MEM1|RAM~571_combout\;
\dp1|MEM1|ALT_INV_RAM~378_q\ <= NOT \dp1|MEM1|RAM~378_q\;
\dp1|MEM1|ALT_INV_RAM~370_q\ <= NOT \dp1|MEM1|RAM~370_q\;
\dp1|MEM1|ALT_INV_RAM~362_q\ <= NOT \dp1|MEM1|RAM~362_q\;
\dp1|MEM1|ALT_INV_RAM~354_q\ <= NOT \dp1|MEM1|RAM~354_q\;
\dp1|MEM1|ALT_INV_RAM~570_combout\ <= NOT \dp1|MEM1|RAM~570_combout\;
\dp1|MEM1|ALT_INV_RAM~250_q\ <= NOT \dp1|MEM1|RAM~250_q\;
\dp1|MEM1|ALT_INV_RAM~242_q\ <= NOT \dp1|MEM1|RAM~242_q\;
\dp1|MEM1|ALT_INV_RAM~234_q\ <= NOT \dp1|MEM1|RAM~234_q\;
\dp1|MEM1|ALT_INV_RAM~226_q\ <= NOT \dp1|MEM1|RAM~226_q\;
\dp1|MEM1|ALT_INV_RAM~569_combout\ <= NOT \dp1|MEM1|RAM~569_combout\;
\dp1|MEM1|ALT_INV_RAM~122_q\ <= NOT \dp1|MEM1|RAM~122_q\;
\dp1|MEM1|ALT_INV_RAM~114_q\ <= NOT \dp1|MEM1|RAM~114_q\;
\dp1|MEM1|ALT_INV_RAM~106_q\ <= NOT \dp1|MEM1|RAM~106_q\;
\dp1|MEM1|ALT_INV_RAM~98_q\ <= NOT \dp1|MEM1|RAM~98_q\;
\dp1|MEM1|ALT_INV_RAM~568_combout\ <= NOT \dp1|MEM1|RAM~568_combout\;
\dp1|MEM1|ALT_INV_RAM~567_combout\ <= NOT \dp1|MEM1|RAM~567_combout\;
\dp1|MEM1|ALT_INV_RAM~474_q\ <= NOT \dp1|MEM1|RAM~474_q\;
\dp1|MEM1|ALT_INV_RAM~346_q\ <= NOT \dp1|MEM1|RAM~346_q\;
\dp1|MEM1|ALT_INV_RAM~218_q\ <= NOT \dp1|MEM1|RAM~218_q\;
\dp1|MEM1|ALT_INV_RAM~90_q\ <= NOT \dp1|MEM1|RAM~90_q\;
\dp1|MEM1|ALT_INV_RAM~566_combout\ <= NOT \dp1|MEM1|RAM~566_combout\;
\dp1|MEM1|ALT_INV_RAM~466_q\ <= NOT \dp1|MEM1|RAM~466_q\;
\dp1|MEM1|ALT_INV_RAM~338_q\ <= NOT \dp1|MEM1|RAM~338_q\;
\dp1|MEM1|ALT_INV_RAM~210_q\ <= NOT \dp1|MEM1|RAM~210_q\;
\dp1|MEM1|ALT_INV_RAM~82_q\ <= NOT \dp1|MEM1|RAM~82_q\;
\dp1|MEM1|ALT_INV_RAM~565_combout\ <= NOT \dp1|MEM1|RAM~565_combout\;
\dp1|MEM1|ALT_INV_RAM~458_q\ <= NOT \dp1|MEM1|RAM~458_q\;
\dp1|MEM1|ALT_INV_RAM~330_q\ <= NOT \dp1|MEM1|RAM~330_q\;
\dp1|MEM1|ALT_INV_RAM~202_q\ <= NOT \dp1|MEM1|RAM~202_q\;
\dp1|MEM1|ALT_INV_RAM~74_q\ <= NOT \dp1|MEM1|RAM~74_q\;
\dp1|MEM1|ALT_INV_RAM~564_combout\ <= NOT \dp1|MEM1|RAM~564_combout\;
\dp1|MEM1|ALT_INV_RAM~450_q\ <= NOT \dp1|MEM1|RAM~450_q\;
\dp1|MEM1|ALT_INV_RAM~322_q\ <= NOT \dp1|MEM1|RAM~322_q\;
\dp1|MEM1|ALT_INV_RAM~194_q\ <= NOT \dp1|MEM1|RAM~194_q\;
\dp1|MEM1|ALT_INV_RAM~66_q\ <= NOT \dp1|MEM1|RAM~66_q\;
\dp1|MEM1|ALT_INV_RAM~563_combout\ <= NOT \dp1|MEM1|RAM~563_combout\;
\dp1|MEM1|ALT_INV_RAM~562_combout\ <= NOT \dp1|MEM1|RAM~562_combout\;
\dp1|MEM1|ALT_INV_RAM~442_q\ <= NOT \dp1|MEM1|RAM~442_q\;
\dp1|MEM1|ALT_INV_RAM~434_q\ <= NOT \dp1|MEM1|RAM~434_q\;
\dp1|MEM1|ALT_INV_RAM~426_q\ <= NOT \dp1|MEM1|RAM~426_q\;
\dp1|MEM1|ALT_INV_RAM~418_q\ <= NOT \dp1|MEM1|RAM~418_q\;
\dp1|MEM1|ALT_INV_RAM~561_combout\ <= NOT \dp1|MEM1|RAM~561_combout\;
\dp1|MEM1|ALT_INV_RAM~314_q\ <= NOT \dp1|MEM1|RAM~314_q\;
\dp1|MEM1|ALT_INV_RAM~306_q\ <= NOT \dp1|MEM1|RAM~306_q\;
\dp1|MEM1|ALT_INV_RAM~298_q\ <= NOT \dp1|MEM1|RAM~298_q\;
\dp1|MEM1|ALT_INV_RAM~290_q\ <= NOT \dp1|MEM1|RAM~290_q\;
\dp1|MEM1|ALT_INV_RAM~560_combout\ <= NOT \dp1|MEM1|RAM~560_combout\;
\dp1|MEM1|ALT_INV_RAM~186_q\ <= NOT \dp1|MEM1|RAM~186_q\;
\dp1|MEM1|ALT_INV_RAM~178_q\ <= NOT \dp1|MEM1|RAM~178_q\;
\dp1|MEM1|ALT_INV_RAM~170_q\ <= NOT \dp1|MEM1|RAM~170_q\;
\dp1|MEM1|ALT_INV_RAM~162_q\ <= NOT \dp1|MEM1|RAM~162_q\;
\dp1|MEM1|ALT_INV_RAM~559_combout\ <= NOT \dp1|MEM1|RAM~559_combout\;
\dp1|MEM1|ALT_INV_RAM~58_q\ <= NOT \dp1|MEM1|RAM~58_q\;
\dp1|MEM1|ALT_INV_RAM~50_q\ <= NOT \dp1|MEM1|RAM~50_q\;
\dp1|MEM1|ALT_INV_RAM~42_q\ <= NOT \dp1|MEM1|RAM~42_q\;
\dp1|MEM1|ALT_INV_RAM~34_q\ <= NOT \dp1|MEM1|RAM~34_q\;
\dp1|MEM1|ALT_INV_RAM~558_combout\ <= NOT \dp1|MEM1|RAM~558_combout\;
\dp1|MEM1|ALT_INV_RAM~557_combout\ <= NOT \dp1|MEM1|RAM~557_combout\;
\dp1|MEM1|ALT_INV_RAM~410_q\ <= NOT \dp1|MEM1|RAM~410_q\;
\dp1|MEM1|ALT_INV_RAM~402_q\ <= NOT \dp1|MEM1|RAM~402_q\;
\dp1|MEM1|ALT_INV_RAM~394_q\ <= NOT \dp1|MEM1|RAM~394_q\;
\dp1|MEM1|ALT_INV_RAM~386_q\ <= NOT \dp1|MEM1|RAM~386_q\;
\dp1|MEM1|ALT_INV_RAM~556_combout\ <= NOT \dp1|MEM1|RAM~556_combout\;
\dp1|MEM1|ALT_INV_RAM~282_q\ <= NOT \dp1|MEM1|RAM~282_q\;
\dp1|MEM1|ALT_INV_RAM~274_q\ <= NOT \dp1|MEM1|RAM~274_q\;
\dp1|MEM1|ALT_INV_RAM~266_q\ <= NOT \dp1|MEM1|RAM~266_q\;
\dp1|MEM1|ALT_INV_RAM~258_q\ <= NOT \dp1|MEM1|RAM~258_q\;
\dp1|MEM1|ALT_INV_RAM~555_combout\ <= NOT \dp1|MEM1|RAM~555_combout\;
\dp1|MEM1|ALT_INV_RAM~154_q\ <= NOT \dp1|MEM1|RAM~154_q\;
\dp1|MEM1|ALT_INV_RAM~146_q\ <= NOT \dp1|MEM1|RAM~146_q\;
\dp1|MEM1|ALT_INV_RAM~138_q\ <= NOT \dp1|MEM1|RAM~138_q\;
\dp1|MEM1|ALT_INV_RAM~130_q\ <= NOT \dp1|MEM1|RAM~130_q\;
\dp1|MEM1|ALT_INV_RAM~554_combout\ <= NOT \dp1|MEM1|RAM~554_combout\;
\dp1|MEM1|ALT_INV_RAM~26_q\ <= NOT \dp1|MEM1|RAM~26_q\;
\dp1|MEM1|ALT_INV_RAM~18_q\ <= NOT \dp1|MEM1|RAM~18_q\;
\dp1|MEM1|ALT_INV_RAM~10_q\ <= NOT \dp1|MEM1|RAM~10_q\;
\dp1|MEM1|ALT_INV_RAM~2_q\ <= NOT \dp1|MEM1|RAM~2_q\;
\c1|ALT_INV_state.001~q\ <= NOT \c1|state.001~q\;
\dp1|MEM1|ALT_INV_RAM~553_combout\ <= NOT \dp1|MEM1|RAM~553_combout\;
\dp1|MEM1|ALT_INV_RAM~552_combout\ <= NOT \dp1|MEM1|RAM~552_combout\;
\dp1|MEM1|ALT_INV_RAM~551_combout\ <= NOT \dp1|MEM1|RAM~551_combout\;
\dp1|MEM1|ALT_INV_RAM~508_q\ <= NOT \dp1|MEM1|RAM~508_q\;
\dp1|MEM1|ALT_INV_RAM~476_q\ <= NOT \dp1|MEM1|RAM~476_q\;
\dp1|MEM1|ALT_INV_RAM~444_q\ <= NOT \dp1|MEM1|RAM~444_q\;
\dp1|MEM1|ALT_INV_RAM~412_q\ <= NOT \dp1|MEM1|RAM~412_q\;
\dp1|MEM1|ALT_INV_RAM~550_combout\ <= NOT \dp1|MEM1|RAM~550_combout\;
\dp1|MEM1|ALT_INV_RAM~500_q\ <= NOT \dp1|MEM1|RAM~500_q\;
\dp1|MEM1|ALT_INV_RAM~468_q\ <= NOT \dp1|MEM1|RAM~468_q\;
\dp1|MEM1|ALT_INV_RAM~436_q\ <= NOT \dp1|MEM1|RAM~436_q\;
\dp1|MEM1|ALT_INV_RAM~404_q\ <= NOT \dp1|MEM1|RAM~404_q\;
\dp1|MEM1|ALT_INV_RAM~549_combout\ <= NOT \dp1|MEM1|RAM~549_combout\;
\dp1|MEM1|ALT_INV_RAM~492_q\ <= NOT \dp1|MEM1|RAM~492_q\;
\dp1|MEM1|ALT_INV_RAM~460_q\ <= NOT \dp1|MEM1|RAM~460_q\;
\dp1|MEM1|ALT_INV_RAM~428_q\ <= NOT \dp1|MEM1|RAM~428_q\;
\dp1|MEM1|ALT_INV_RAM~396_q\ <= NOT \dp1|MEM1|RAM~396_q\;
\dp1|MEM1|ALT_INV_RAM~548_combout\ <= NOT \dp1|MEM1|RAM~548_combout\;
\dp1|MEM1|ALT_INV_RAM~484_q\ <= NOT \dp1|MEM1|RAM~484_q\;
\dp1|MEM1|ALT_INV_RAM~452_q\ <= NOT \dp1|MEM1|RAM~452_q\;
\dp1|MEM1|ALT_INV_RAM~420_q\ <= NOT \dp1|MEM1|RAM~420_q\;
\dp1|MEM1|ALT_INV_RAM~388_q\ <= NOT \dp1|MEM1|RAM~388_q\;
\dp1|MEM1|ALT_INV_RAM~547_combout\ <= NOT \dp1|MEM1|RAM~547_combout\;
\dp1|MEM1|ALT_INV_RAM~546_combout\ <= NOT \dp1|MEM1|RAM~546_combout\;
\dp1|MEM1|ALT_INV_RAM~380_q\ <= NOT \dp1|MEM1|RAM~380_q\;
\dp1|MEM1|ALT_INV_RAM~348_q\ <= NOT \dp1|MEM1|RAM~348_q\;
\dp1|MEM1|ALT_INV_RAM~316_q\ <= NOT \dp1|MEM1|RAM~316_q\;
\dp1|MEM1|ALT_INV_RAM~284_q\ <= NOT \dp1|MEM1|RAM~284_q\;
\dp1|MEM1|ALT_INV_RAM~545_combout\ <= NOT \dp1|MEM1|RAM~545_combout\;
\dp1|MEM1|ALT_INV_RAM~372_q\ <= NOT \dp1|MEM1|RAM~372_q\;
\dp1|MEM1|ALT_INV_RAM~340_q\ <= NOT \dp1|MEM1|RAM~340_q\;
\dp1|MEM1|ALT_INV_RAM~308_q\ <= NOT \dp1|MEM1|RAM~308_q\;
\dp1|MEM1|ALT_INV_RAM~276_q\ <= NOT \dp1|MEM1|RAM~276_q\;
\dp1|MEM1|ALT_INV_RAM~544_combout\ <= NOT \dp1|MEM1|RAM~544_combout\;
\dp1|MEM1|ALT_INV_RAM~364_q\ <= NOT \dp1|MEM1|RAM~364_q\;
\dp1|MEM1|ALT_INV_RAM~332_q\ <= NOT \dp1|MEM1|RAM~332_q\;
\dp1|MEM1|ALT_INV_RAM~300_q\ <= NOT \dp1|MEM1|RAM~300_q\;
\dp1|MEM1|ALT_INV_RAM~268_q\ <= NOT \dp1|MEM1|RAM~268_q\;
\dp1|MEM1|ALT_INV_RAM~543_combout\ <= NOT \dp1|MEM1|RAM~543_combout\;
\dp1|MEM1|ALT_INV_RAM~356_q\ <= NOT \dp1|MEM1|RAM~356_q\;
\dp1|MEM1|ALT_INV_RAM~324_q\ <= NOT \dp1|MEM1|RAM~324_q\;
\dp1|MEM1|ALT_INV_RAM~292_q\ <= NOT \dp1|MEM1|RAM~292_q\;
\dp1|MEM1|ALT_INV_RAM~260_q\ <= NOT \dp1|MEM1|RAM~260_q\;
\dp1|MEM1|ALT_INV_RAM~542_combout\ <= NOT \dp1|MEM1|RAM~542_combout\;
\dp1|MEM1|ALT_INV_RAM~541_combout\ <= NOT \dp1|MEM1|RAM~541_combout\;
\dp1|MEM1|ALT_INV_RAM~252_q\ <= NOT \dp1|MEM1|RAM~252_q\;
\dp1|MEM1|ALT_INV_RAM~220_q\ <= NOT \dp1|MEM1|RAM~220_q\;
\dp1|MEM1|ALT_INV_RAM~188_q\ <= NOT \dp1|MEM1|RAM~188_q\;
\dp1|MEM1|ALT_INV_RAM~156_q\ <= NOT \dp1|MEM1|RAM~156_q\;
\dp1|MEM1|ALT_INV_RAM~540_combout\ <= NOT \dp1|MEM1|RAM~540_combout\;
\dp1|MEM1|ALT_INV_RAM~244_q\ <= NOT \dp1|MEM1|RAM~244_q\;
\dp1|MEM1|ALT_INV_RAM~212_q\ <= NOT \dp1|MEM1|RAM~212_q\;
\dp1|MEM1|ALT_INV_RAM~180_q\ <= NOT \dp1|MEM1|RAM~180_q\;
\dp1|MEM1|ALT_INV_RAM~148_q\ <= NOT \dp1|MEM1|RAM~148_q\;
\dp1|MEM1|ALT_INV_RAM~539_combout\ <= NOT \dp1|MEM1|RAM~539_combout\;
\dp1|MEM1|ALT_INV_RAM~236_q\ <= NOT \dp1|MEM1|RAM~236_q\;
\dp1|MEM1|ALT_INV_RAM~204_q\ <= NOT \dp1|MEM1|RAM~204_q\;
\dp1|MEM1|ALT_INV_RAM~172_q\ <= NOT \dp1|MEM1|RAM~172_q\;
\dp1|MEM1|ALT_INV_RAM~140_q\ <= NOT \dp1|MEM1|RAM~140_q\;
\dp1|MEM1|ALT_INV_RAM~538_combout\ <= NOT \dp1|MEM1|RAM~538_combout\;
\dp1|MEM1|ALT_INV_RAM~228_q\ <= NOT \dp1|MEM1|RAM~228_q\;
\dp1|MEM1|ALT_INV_RAM~196_q\ <= NOT \dp1|MEM1|RAM~196_q\;
\dp1|MEM1|ALT_INV_RAM~164_q\ <= NOT \dp1|MEM1|RAM~164_q\;
\dp1|MEM1|ALT_INV_RAM~132_q\ <= NOT \dp1|MEM1|RAM~132_q\;
\dp1|MEM1|ALT_INV_RAM~537_combout\ <= NOT \dp1|MEM1|RAM~537_combout\;
\dp1|MEM1|ALT_INV_RAM~536_combout\ <= NOT \dp1|MEM1|RAM~536_combout\;
\dp1|MEM1|ALT_INV_RAM~124_q\ <= NOT \dp1|MEM1|RAM~124_q\;
\dp1|MEM1|ALT_INV_RAM~92_q\ <= NOT \dp1|MEM1|RAM~92_q\;
\dp1|MEM1|ALT_INV_RAM~60_q\ <= NOT \dp1|MEM1|RAM~60_q\;
\dp1|MEM1|ALT_INV_RAM~28_q\ <= NOT \dp1|MEM1|RAM~28_q\;
\dp1|MEM1|ALT_INV_RAM~535_combout\ <= NOT \dp1|MEM1|RAM~535_combout\;
\dp1|MEM1|ALT_INV_RAM~116_q\ <= NOT \dp1|MEM1|RAM~116_q\;
\dp1|MEM1|ALT_INV_RAM~84_q\ <= NOT \dp1|MEM1|RAM~84_q\;
\dp1|MEM1|ALT_INV_RAM~52_q\ <= NOT \dp1|MEM1|RAM~52_q\;
\dp1|MEM1|ALT_INV_RAM~20_q\ <= NOT \dp1|MEM1|RAM~20_q\;
\dp1|MEM1|ALT_INV_RAM~534_combout\ <= NOT \dp1|MEM1|RAM~534_combout\;
\dp1|MEM1|ALT_INV_RAM~108_q\ <= NOT \dp1|MEM1|RAM~108_q\;
\dp1|MEM1|ALT_INV_RAM~76_q\ <= NOT \dp1|MEM1|RAM~76_q\;
\dp1|MEM1|ALT_INV_RAM~44_q\ <= NOT \dp1|MEM1|RAM~44_q\;
\dp1|MEM1|ALT_INV_RAM~12_q\ <= NOT \dp1|MEM1|RAM~12_q\;
\dp1|MEM1|ALT_INV_RAM~533_combout\ <= NOT \dp1|MEM1|RAM~533_combout\;
\dp1|MEM1|ALT_INV_RAM~100_q\ <= NOT \dp1|MEM1|RAM~100_q\;
\dp1|MEM1|ALT_INV_RAM~68_q\ <= NOT \dp1|MEM1|RAM~68_q\;
\dp1|MEM1|ALT_INV_RAM~36_q\ <= NOT \dp1|MEM1|RAM~36_q\;
\dp1|MEM1|ALT_INV_RAM~4_q\ <= NOT \dp1|MEM1|RAM~4_q\;
\dp1|ACC1|ALT_INV_Aout~2_combout\ <= NOT \dp1|ACC1|Aout~2_combout\;
\dp1|ACC1|ALT_INV_Aout~1_combout\ <= NOT \dp1|ACC1|Aout~1_combout\;
\dp1|ACC1|ALT_INV_Aout~0_combout\ <= NOT \dp1|ACC1|Aout~0_combout\;
\c1|ALT_INV_ALUsel~7_combout\ <= NOT \c1|ALUsel~7_combout\;
\dp1|MEM1|ALT_INV_RAM~532_combout\ <= NOT \dp1|MEM1|RAM~532_combout\;
\dp1|MIM1|ALT_INV_out[5]~5_combout\ <= NOT \dp1|MIM1|out[5]~5_combout\;
\dp1|MA1|ALT_INV_Addr\(5) <= NOT \dp1|MA1|Addr\(5);
\dp1|MIM1|ALT_INV_out[4]~4_combout\ <= NOT \dp1|MIM1|out[4]~4_combout\;
\dp1|MA1|ALT_INV_Addr\(4) <= NOT \dp1|MA1|Addr\(4);
\dp1|MEM1|ALT_INV_RAM~531_combout\ <= NOT \dp1|MEM1|RAM~531_combout\;
\dp1|MEM1|ALT_INV_RAM~530_combout\ <= NOT \dp1|MEM1|RAM~530_combout\;
\dp1|MEM1|ALT_INV_RAM~504_q\ <= NOT \dp1|MEM1|RAM~504_q\;
\dp1|MEM1|ALT_INV_RAM~496_q\ <= NOT \dp1|MEM1|RAM~496_q\;
\dp1|MEM1|ALT_INV_RAM~488_q\ <= NOT \dp1|MEM1|RAM~488_q\;
\dp1|MEM1|ALT_INV_RAM~480_q\ <= NOT \dp1|MEM1|RAM~480_q\;
\dp1|MEM1|ALT_INV_RAM~529_combout\ <= NOT \dp1|MEM1|RAM~529_combout\;
\dp1|MEM1|ALT_INV_RAM~472_q\ <= NOT \dp1|MEM1|RAM~472_q\;
\dp1|MEM1|ALT_INV_RAM~464_q\ <= NOT \dp1|MEM1|RAM~464_q\;
\dp1|MEM1|ALT_INV_RAM~456_q\ <= NOT \dp1|MEM1|RAM~456_q\;
\dp1|MEM1|ALT_INV_RAM~448_q\ <= NOT \dp1|MEM1|RAM~448_q\;
\dp1|MEM1|ALT_INV_RAM~528_combout\ <= NOT \dp1|MEM1|RAM~528_combout\;
\dp1|MEM1|ALT_INV_RAM~440_q\ <= NOT \dp1|MEM1|RAM~440_q\;
\dp1|MEM1|ALT_INV_RAM~432_q\ <= NOT \dp1|MEM1|RAM~432_q\;
\dp1|MEM1|ALT_INV_RAM~424_q\ <= NOT \dp1|MEM1|RAM~424_q\;
\dp1|MEM1|ALT_INV_RAM~416_q\ <= NOT \dp1|MEM1|RAM~416_q\;
\dp1|MEM1|ALT_INV_RAM~527_combout\ <= NOT \dp1|MEM1|RAM~527_combout\;
\dp1|MEM1|ALT_INV_RAM~408_q\ <= NOT \dp1|MEM1|RAM~408_q\;
\dp1|MEM1|ALT_INV_RAM~400_q\ <= NOT \dp1|MEM1|RAM~400_q\;
\dp1|MEM1|ALT_INV_RAM~392_q\ <= NOT \dp1|MEM1|RAM~392_q\;
\dp1|MEM1|ALT_INV_RAM~384_q\ <= NOT \dp1|MEM1|RAM~384_q\;
\dp1|MEM1|ALT_INV_RAM~526_combout\ <= NOT \dp1|MEM1|RAM~526_combout\;
\dp1|MEM1|ALT_INV_RAM~525_combout\ <= NOT \dp1|MEM1|RAM~525_combout\;
\dp1|MEM1|ALT_INV_RAM~376_q\ <= NOT \dp1|MEM1|RAM~376_q\;
\dp1|MEM1|ALT_INV_RAM~344_q\ <= NOT \dp1|MEM1|RAM~344_q\;
\dp1|MEM1|ALT_INV_RAM~312_q\ <= NOT \dp1|MEM1|RAM~312_q\;
\dp1|MEM1|ALT_INV_RAM~280_q\ <= NOT \dp1|MEM1|RAM~280_q\;
\dp1|MEM1|ALT_INV_RAM~524_combout\ <= NOT \dp1|MEM1|RAM~524_combout\;
\dp1|MEM1|ALT_INV_RAM~368_q\ <= NOT \dp1|MEM1|RAM~368_q\;
\dp1|MEM1|ALT_INV_RAM~336_q\ <= NOT \dp1|MEM1|RAM~336_q\;
\dp1|MEM1|ALT_INV_RAM~304_q\ <= NOT \dp1|MEM1|RAM~304_q\;
\dp1|MEM1|ALT_INV_RAM~272_q\ <= NOT \dp1|MEM1|RAM~272_q\;
\dp1|MEM1|ALT_INV_RAM~523_combout\ <= NOT \dp1|MEM1|RAM~523_combout\;
\dp1|MEM1|ALT_INV_RAM~360_q\ <= NOT \dp1|MEM1|RAM~360_q\;
\dp1|MEM1|ALT_INV_RAM~328_q\ <= NOT \dp1|MEM1|RAM~328_q\;
\dp1|MEM1|ALT_INV_RAM~296_q\ <= NOT \dp1|MEM1|RAM~296_q\;
\dp1|MEM1|ALT_INV_RAM~264_q\ <= NOT \dp1|MEM1|RAM~264_q\;
\dp1|MEM1|ALT_INV_RAM~522_combout\ <= NOT \dp1|MEM1|RAM~522_combout\;
\dp1|MEM1|ALT_INV_RAM~352_q\ <= NOT \dp1|MEM1|RAM~352_q\;
\dp1|MEM1|ALT_INV_RAM~320_q\ <= NOT \dp1|MEM1|RAM~320_q\;
\dp1|MEM1|ALT_INV_RAM~288_q\ <= NOT \dp1|MEM1|RAM~288_q\;
\dp1|MEM1|ALT_INV_RAM~256_q\ <= NOT \dp1|MEM1|RAM~256_q\;
\dp1|MEM1|ALT_INV_RAM~521_combout\ <= NOT \dp1|MEM1|RAM~521_combout\;
\dp1|MEM1|ALT_INV_RAM~520_combout\ <= NOT \dp1|MEM1|RAM~520_combout\;
\dp1|MEM1|ALT_INV_RAM~248_q\ <= NOT \dp1|MEM1|RAM~248_q\;
\dp1|MEM1|ALT_INV_RAM~240_q\ <= NOT \dp1|MEM1|RAM~240_q\;
\dp1|MEM1|ALT_INV_RAM~232_q\ <= NOT \dp1|MEM1|RAM~232_q\;
\dp1|MEM1|ALT_INV_RAM~224_q\ <= NOT \dp1|MEM1|RAM~224_q\;
\dp1|MEM1|ALT_INV_RAM~519_combout\ <= NOT \dp1|MEM1|RAM~519_combout\;
\dp1|MEM1|ALT_INV_RAM~216_q\ <= NOT \dp1|MEM1|RAM~216_q\;
\dp1|MEM1|ALT_INV_RAM~208_q\ <= NOT \dp1|MEM1|RAM~208_q\;
\dp1|MEM1|ALT_INV_RAM~200_q\ <= NOT \dp1|MEM1|RAM~200_q\;
\dp1|MEM1|ALT_INV_RAM~192_q\ <= NOT \dp1|MEM1|RAM~192_q\;
\dp1|MEM1|ALT_INV_RAM~518_combout\ <= NOT \dp1|MEM1|RAM~518_combout\;
\dp1|MEM1|ALT_INV_RAM~184_q\ <= NOT \dp1|MEM1|RAM~184_q\;
\dp1|MEM1|ALT_INV_RAM~176_q\ <= NOT \dp1|MEM1|RAM~176_q\;
\dp1|MEM1|ALT_INV_RAM~168_q\ <= NOT \dp1|MEM1|RAM~168_q\;
\dp1|MEM1|ALT_INV_RAM~160_q\ <= NOT \dp1|MEM1|RAM~160_q\;
\dp1|MEM1|ALT_INV_RAM~517_combout\ <= NOT \dp1|MEM1|RAM~517_combout\;
\dp1|MEM1|ALT_INV_RAM~152_q\ <= NOT \dp1|MEM1|RAM~152_q\;
\dp1|MEM1|ALT_INV_RAM~144_q\ <= NOT \dp1|MEM1|RAM~144_q\;
\dp1|MEM1|ALT_INV_RAM~136_q\ <= NOT \dp1|MEM1|RAM~136_q\;
\dp1|MEM1|ALT_INV_RAM~128_q\ <= NOT \dp1|MEM1|RAM~128_q\;
\dp1|MEM1|ALT_INV_RAM~516_combout\ <= NOT \dp1|MEM1|RAM~516_combout\;
\dp1|MIM1|ALT_INV_out[3]~3_combout\ <= NOT \dp1|MIM1|out[3]~3_combout\;
\dp1|MA1|ALT_INV_Addr\(3) <= NOT \dp1|MA1|Addr\(3);
\dp1|MIM1|ALT_INV_out[2]~2_combout\ <= NOT \dp1|MIM1|out[2]~2_combout\;
\dp1|MA1|ALT_INV_Addr\(2) <= NOT \dp1|MA1|Addr\(2);
\dp1|MEM1|ALT_INV_RAM~515_combout\ <= NOT \dp1|MEM1|RAM~515_combout\;
\dp1|MEM1|ALT_INV_RAM~120_q\ <= NOT \dp1|MEM1|RAM~120_q\;
\dp1|MEM1|ALT_INV_RAM~112_q\ <= NOT \dp1|MEM1|RAM~112_q\;
\dp1|MEM1|ALT_INV_RAM~104_q\ <= NOT \dp1|MEM1|RAM~104_q\;
\dp1|MEM1|ALT_INV_RAM~96_q\ <= NOT \dp1|MEM1|RAM~96_q\;
\dp1|MEM1|ALT_INV_RAM~514_combout\ <= NOT \dp1|MEM1|RAM~514_combout\;
\dp1|MEM1|ALT_INV_RAM~88_q\ <= NOT \dp1|MEM1|RAM~88_q\;
\dp1|MEM1|ALT_INV_RAM~80_q\ <= NOT \dp1|MEM1|RAM~80_q\;
\dp1|MEM1|ALT_INV_RAM~72_q\ <= NOT \dp1|MEM1|RAM~72_q\;
\dp1|MEM1|ALT_INV_RAM~64_q\ <= NOT \dp1|MEM1|RAM~64_q\;
\dp1|MEM1|ALT_INV_RAM~513_combout\ <= NOT \dp1|MEM1|RAM~513_combout\;
\dp1|MEM1|ALT_INV_RAM~56_q\ <= NOT \dp1|MEM1|RAM~56_q\;
\dp1|MEM1|ALT_INV_RAM~48_q\ <= NOT \dp1|MEM1|RAM~48_q\;
\dp1|MEM1|ALT_INV_RAM~40_q\ <= NOT \dp1|MEM1|RAM~40_q\;
\dp1|MEM1|ALT_INV_RAM~32_q\ <= NOT \dp1|MEM1|RAM~32_q\;
\dp1|MEM1|ALT_INV_RAM~512_combout\ <= NOT \dp1|MEM1|RAM~512_combout\;
\dp1|MIM1|ALT_INV_out[1]~1_combout\ <= NOT \dp1|MIM1|out[1]~1_combout\;
\dp1|MA1|ALT_INV_Addr\(1) <= NOT \dp1|MA1|Addr\(1);
\dp1|MIM1|ALT_INV_out[0]~0_combout\ <= NOT \dp1|MIM1|out[0]~0_combout\;
\c1|ALT_INV_state.011~q\ <= NOT \c1|state.011~q\;
\c1|ALT_INV_state.100~q\ <= NOT \c1|state.100~q\;
\dp1|MA1|ALT_INV_Addr\(0) <= NOT \dp1|MA1|Addr\(0);
\dp1|MEM1|ALT_INV_RAM~24_q\ <= NOT \dp1|MEM1|RAM~24_q\;
\dp1|MEM1|ALT_INV_RAM~16_q\ <= NOT \dp1|MEM1|RAM~16_q\;
\dp1|MEM1|ALT_INV_RAM~8_q\ <= NOT \dp1|MEM1|RAM~8_q\;
\dp1|MEM1|ALT_INV_RAM~0_q\ <= NOT \dp1|MEM1|RAM~0_q\;
\dp1|SH1|ALT_INV_Mux7~0_combout\ <= NOT \dp1|SH1|Mux7~0_combout\;
\dp1|ALU1|ALT_INV_Mux7~1_combout\ <= NOT \dp1|ALU1|Mux7~1_combout\;
\dp1|ALU1|ALT_INV_Mux7~0_combout\ <= NOT \dp1|ALU1|Mux7~0_combout\;
\dp1|RF1|ALT_INV_RegFile~2_combout\ <= NOT \dp1|RF1|RegFile~2_combout\;
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(7) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(7);
\dp1|ALU1|ALT_INV_Mux6~1_combout\ <= NOT \dp1|ALU1|Mux6~1_combout\;
\dp1|RF1|ALT_INV_RegFile~1_combout\ <= NOT \dp1|RF1|RegFile~1_combout\;
\dp1|RF1|ALT_INV_RegFile~0_combout\ <= NOT \dp1|RF1|RegFile~0_combout\;
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(2) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(2);
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(1) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(1);
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(0) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(0);
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(4) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(4);
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(3) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(3);
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(6) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(6);
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(5) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(5);
\dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(8) <= NOT \dp1|RF1|RegFile_rtl_0_bypass\(8);
\c1|ALT_INV_ALUsel[0]~6_combout\ <= NOT \c1|ALUsel[0]~6_combout\;
\c1|ALT_INV_ALUsel[1]~5_combout\ <= NOT \c1|ALUsel[1]~5_combout\;
\dp1|ALU1|ALT_INV_Mux6~0_combout\ <= NOT \dp1|ALU1|Mux6~0_combout\;
\c1|ALT_INV_ALUsel[0]~4_combout\ <= NOT \c1|ALUsel[0]~4_combout\;
\c1|ALT_INV_ALUsel[0]~3_combout\ <= NOT \c1|ALUsel[0]~3_combout\;
\c1|ALT_INV_ALUsel[1]~2_combout\ <= NOT \c1|ALUsel[1]~2_combout\;
\c1|ALT_INV_ALUsel~1_combout\ <= NOT \c1|ALUsel~1_combout\;
\c1|ALT_INV_ALUsel[1]~0_combout\ <= NOT \c1|ALUsel[1]~0_combout\;
\c1|ALT_INV_SHsel[0]~2_combout\ <= NOT \c1|SHsel[0]~2_combout\;
\c1|ALT_INV_SHsel[1]~1_combout\ <= NOT \c1|SHsel[1]~1_combout\;
\c1|ALT_INV_Decoder4~1_combout\ <= NOT \c1|Decoder4~1_combout\;
\c1|ALT_INV_SHsel~0_combout\ <= NOT \c1|SHsel~0_combout\;
\ALT_INV_clkin~combout\ <= NOT \clkin~combout\;
\dp1|ACC1|ALT_INV_Aout\(6) <= NOT \dp1|ACC1|Aout\(6);
\dp1|ACC1|ALT_INV_Aout\(5) <= NOT \dp1|ACC1|Aout\(5);
\dp1|ACC1|ALT_INV_Aout\(4) <= NOT \dp1|ACC1|Aout\(4);
\dp1|ACC1|ALT_INV_Aout\(3) <= NOT \dp1|ACC1|Aout\(3);
\dp1|ACC1|ALT_INV_Aout\(2) <= NOT \dp1|ACC1|Aout\(2);
\dp1|ACC1|ALT_INV_Aout\(1) <= NOT \dp1|ACC1|Aout\(1);
\dp1|OR1|ALT_INV_Q[6]~0_combout\ <= NOT \dp1|OR1|Q[6]~0_combout\;
\dp1|IR1|ALT_INV_InstrReg\(1) <= NOT \dp1|IR1|InstrReg\(1);
\dp1|IR1|ALT_INV_InstrReg\(0) <= NOT \dp1|IR1|InstrReg\(0);
\c1|ALT_INV_Decoder4~0_combout\ <= NOT \c1|Decoder4~0_combout\;
\dp1|IR1|ALT_INV_InstrReg\(7) <= NOT \dp1|IR1|InstrReg\(7);
\dp1|IR1|ALT_INV_InstrReg\(5) <= NOT \dp1|IR1|InstrReg\(5);
\dp1|IR1|ALT_INV_InstrReg\(6) <= NOT \dp1|IR1|InstrReg\(6);
\c1|ALT_INV_Decoder2~0_combout\ <= NOT \c1|Decoder2~0_combout\;
\dp1|IR1|ALT_INV_InstrReg\(3) <= NOT \dp1|IR1|InstrReg\(3);
\dp1|IR1|ALT_INV_InstrReg\(2) <= NOT \dp1|IR1|InstrReg\(2);
\c1|ALT_INV_state.010~q\ <= NOT \c1|state.010~q\;
\dp1|IR1|ALT_INV_InstrReg\(4) <= NOT \dp1|IR1|InstrReg\(4);
\dp1|I1|ALT_INV_Add0~21_sumout\ <= NOT \dp1|I1|Add0~21_sumout\;
\dp1|I1|ALT_INV_Add0~17_sumout\ <= NOT \dp1|I1|Add0~17_sumout\;
\dp1|I1|ALT_INV_Add0~13_sumout\ <= NOT \dp1|I1|Add0~13_sumout\;
\dp1|I1|ALT_INV_Add0~9_sumout\ <= NOT \dp1|I1|Add0~9_sumout\;
\dp1|I1|ALT_INV_Add0~5_sumout\ <= NOT \dp1|I1|Add0~5_sumout\;
\dp1|I1|ALT_INV_Add0~1_sumout\ <= NOT \dp1|I1|Add0~1_sumout\;
\dp1|ALU1|ALT_INV_Add0~29_sumout\ <= NOT \dp1|ALU1|Add0~29_sumout\;
\dp1|ALU1|ALT_INV_Add0~25_sumout\ <= NOT \dp1|ALU1|Add0~25_sumout\;
\dp1|ALU1|ALT_INV_Add0~21_sumout\ <= NOT \dp1|ALU1|Add0~21_sumout\;
\dp1|ALU1|ALT_INV_Add0~17_sumout\ <= NOT \dp1|ALU1|Add0~17_sumout\;
\dp1|ALU1|ALT_INV_Add0~13_sumout\ <= NOT \dp1|ALU1|Add0~13_sumout\;
\dp1|ALU1|ALT_INV_Add0~9_sumout\ <= NOT \dp1|ALU1|Add0~9_sumout\;
\dp1|PC1|ALT_INV_PCReg\(5) <= NOT \dp1|PC1|PCReg\(5);
\dp1|PC1|ALT_INV_PCReg\(4) <= NOT \dp1|PC1|PCReg\(4);
\dp1|PC1|ALT_INV_PCReg\(3) <= NOT \dp1|PC1|PCReg\(3);
\dp1|PC1|ALT_INV_PCReg\(2) <= NOT \dp1|PC1|PCReg\(2);
\dp1|PC1|ALT_INV_PCReg\(1) <= NOT \dp1|PC1|PCReg\(1);
\dp1|PC1|ALT_INV_PCReg\(0) <= NOT \dp1|PC1|PCReg\(0);
\dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a1\;
\dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a2\;
\dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a3\;
\dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a4\;
\dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a5\;
\dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a6\;
\dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a7\;
\dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\dp1|ALU1|ALT_INV_Add0~5_sumout\ <= NOT \dp1|ALU1|Add0~5_sumout\;
\dp1|ALU1|ALT_INV_Add0~1_sumout\ <= NOT \dp1|ALU1|Add0~1_sumout\;
\dp1|ACC1|ALT_INV_Aout\(7) <= NOT \dp1|ACC1|Aout\(7);
\dp1|ACC1|ALT_INV_Aout\(0) <= NOT \dp1|ACC1|Aout\(0);
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_Input[7]~input_o\ <= NOT \Input[7]~input_o\;
\ALT_INV_Input[6]~input_o\ <= NOT \Input[6]~input_o\;
\ALT_INV_Input[5]~input_o\ <= NOT \Input[5]~input_o\;
\ALT_INV_Input[4]~input_o\ <= NOT \Input[4]~input_o\;
\ALT_INV_Input[3]~input_o\ <= NOT \Input[3]~input_o\;
\ALT_INV_Input[2]~input_o\ <= NOT \Input[2]~input_o\;
\ALT_INV_Input[1]~input_o\ <= NOT \Input[1]~input_o\;
\ALT_INV_Input[0]~input_o\ <= NOT \Input[0]~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\c1|ALT_INV_nstate.001_359~combout\ <= NOT \c1|nstate.001_359~combout\;
\c1|ALT_INV_JMPsel\(0) <= NOT \c1|JMPsel\(0);
\c1|ALT_INV_JMPsel\(1) <= NOT \c1|JMPsel\(1);
\c1|ALT_INV_nstate.011_333~combout\ <= NOT \c1|nstate.011_333~combout\;
\c1|ALT_INV_nstate.100_320~combout\ <= NOT \c1|nstate.100_320~combout\;
\c1|ALT_INV_nstate.010_346~combout\ <= NOT \c1|nstate.010_346~combout\;
\c1|ALT_INV_Asel\(0) <= NOT \c1|Asel\(0);
\c1|ALT_INV_Asel\(1) <= NOT \c1|Asel\(1);
\c1|ALT_INV_stop~combout\ <= NOT \c1|stop~combout\;
\dp1|SH1|ALT_INV_Mux0~2_combout\ <= NOT \dp1|SH1|Mux0~2_combout\;
\dp1|SH1|ALT_INV_Mux0~1_combout\ <= NOT \dp1|SH1|Mux0~1_combout\;
\c1|ALT_INV_Selector6~0_combout\ <= NOT \c1|Selector6~0_combout\;
\c1|ALT_INV_Selector10~0_combout\ <= NOT \c1|Selector10~0_combout\;
\c1|ALT_INV_Selector3~4_combout\ <= NOT \c1|Selector3~4_combout\;
\c1|ALT_INV_Selector1~0_combout\ <= NOT \c1|Selector1~0_combout\;
\c1|ALT_INV_Selector8~0_combout\ <= NOT \c1|Selector8~0_combout\;
\c1|ALT_INV_Selector12~0_combout\ <= NOT \c1|Selector12~0_combout\;
\c1|ALT_INV_Selector9~0_combout\ <= NOT \c1|Selector9~0_combout\;
\c1|ALT_INV_Selector13~1_combout\ <= NOT \c1|Selector13~1_combout\;
\c1|ALT_INV_Selector13~0_combout\ <= NOT \c1|Selector13~0_combout\;
\dp1|ACC1|ALT_INV_Aout~19_combout\ <= NOT \dp1|ACC1|Aout~19_combout\;
\c1|ALT_INV_Selector5~0_combout\ <= NOT \c1|Selector5~0_combout\;
\dp1|ACC1|ALT_INV_Aout~18_combout\ <= NOT \dp1|ACC1|Aout~18_combout\;
\c1|ALT_INV_Selector11~0_combout\ <= NOT \c1|Selector11~0_combout\;
\dp1|MEM1|ALT_INV_RAM~806_combout\ <= NOT \dp1|MEM1|RAM~806_combout\;
\dp1|MEM1|ALT_INV_RAM~804_combout\ <= NOT \dp1|MEM1|RAM~804_combout\;
\dp1|MEM1|ALT_INV_RAM~802_combout\ <= NOT \dp1|MEM1|RAM~802_combout\;
\dp1|MEM1|ALT_INV_RAM~800_combout\ <= NOT \dp1|MEM1|RAM~800_combout\;
\dp1|MEM1|ALT_INV_RAM~798_combout\ <= NOT \dp1|MEM1|RAM~798_combout\;
\dp1|MEM1|ALT_INV_RAM~796_combout\ <= NOT \dp1|MEM1|RAM~796_combout\;
\dp1|MEM1|ALT_INV_RAM~794_combout\ <= NOT \dp1|MEM1|RAM~794_combout\;
\dp1|MEM1|ALT_INV_RAM~792_combout\ <= NOT \dp1|MEM1|RAM~792_combout\;
\dp1|MEM1|ALT_INV_RAM~790_combout\ <= NOT \dp1|MEM1|RAM~790_combout\;
\dp1|MEM1|ALT_INV_RAM~788_combout\ <= NOT \dp1|MEM1|RAM~788_combout\;
\dp1|MEM1|ALT_INV_RAM~786_combout\ <= NOT \dp1|MEM1|RAM~786_combout\;
\dp1|MEM1|ALT_INV_RAM~784_combout\ <= NOT \dp1|MEM1|RAM~784_combout\;
\dp1|MEM1|ALT_INV_RAM~782_combout\ <= NOT \dp1|MEM1|RAM~782_combout\;
\dp1|MEM1|ALT_INV_RAM~780_combout\ <= NOT \dp1|MEM1|RAM~780_combout\;
\dp1|MEM1|ALT_INV_RAM~778_combout\ <= NOT \dp1|MEM1|RAM~778_combout\;
\dp1|MEM1|ALT_INV_RAM~776_combout\ <= NOT \dp1|MEM1|RAM~776_combout\;
\dp1|MEM1|ALT_INV_RAM~774_combout\ <= NOT \dp1|MEM1|RAM~774_combout\;
\dp1|MEM1|ALT_INV_RAM~772_combout\ <= NOT \dp1|MEM1|RAM~772_combout\;
\dp1|MEM1|ALT_INV_RAM~770_combout\ <= NOT \dp1|MEM1|RAM~770_combout\;
\dp1|MEM1|ALT_INV_RAM~768_combout\ <= NOT \dp1|MEM1|RAM~768_combout\;
\dp1|MEM1|ALT_INV_RAM~766_combout\ <= NOT \dp1|MEM1|RAM~766_combout\;

-- Location: IOOBUF_X72_Y81_N36
\Output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|OR1|Q\(0),
	devoe => ww_devoe,
	o => ww_Output(0));

-- Location: IOOBUF_X89_Y36_N39
\Output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|OR1|Q\(1),
	devoe => ww_devoe,
	o => ww_Output(1));

-- Location: IOOBUF_X89_Y36_N22
\Output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|OR1|Q\(2),
	devoe => ww_devoe,
	o => ww_Output(2));

-- Location: IOOBUF_X89_Y37_N56
\Output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|OR1|Q\(3),
	devoe => ww_devoe,
	o => ww_Output(3));

-- Location: IOOBUF_X89_Y37_N39
\Output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|OR1|Q\(4),
	devoe => ww_devoe,
	o => ww_Output(4));

-- Location: IOOBUF_X78_Y81_N53
\Output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|OR1|Q\(5),
	devoe => ww_devoe,
	o => ww_Output(5));

-- Location: IOOBUF_X84_Y81_N19
\Output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|OR1|Q\(6),
	devoe => ww_devoe,
	o => ww_Output(6));

-- Location: IOOBUF_X89_Y37_N5
\Output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dp1|OR1|Q\(7),
	devoe => ww_devoe,
	o => ww_Output(7));

-- Location: IOIBUF_X89_Y38_N21
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\Input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(1),
	o => \Input[1]~input_o\);

-- Location: LABCELL_X80_Y39_N3
\dp1|IR1|InstrReg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|IR1|InstrReg~1_combout\ = (\rst~input_o\) # (\c1|state.001~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.001~q\,
	datac => \ALT_INV_rst~input_o\,
	combout => \dp1|IR1|InstrReg~1_combout\);

-- Location: FF_X84_Y38_N17
\dp1|IR1|InstrReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|IR1|InstrReg~5_combout\,
	sload => VCC,
	ena => \dp1|IR1|InstrReg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|IR1|InstrReg\(5));

-- Location: FF_X82_Y38_N35
\dp1|IR1|InstrReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|IR1|InstrReg~3_combout\,
	sload => VCC,
	ena => \dp1|IR1|InstrReg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|IR1|InstrReg\(3));

-- Location: LABCELL_X80_Y39_N15
\dp1|IR1|InstrReg~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|IR1|InstrReg~8_combout\ = ( \dp1|MEM1|RAM~679_combout\ & ( (!\rst~input_o\ & ((\dp1|IR1|InstrReg\(1)) # (\c1|state.001~q\))) ) ) # ( !\dp1|MEM1|RAM~679_combout\ & ( (!\c1|state.001~q\ & (!\rst~input_o\ & \dp1|IR1|InstrReg\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.001~q\,
	datac => \ALT_INV_rst~input_o\,
	datad => \dp1|IR1|ALT_INV_InstrReg\(1),
	dataf => \dp1|MEM1|ALT_INV_RAM~679_combout\,
	combout => \dp1|IR1|InstrReg~8_combout\);

-- Location: FF_X80_Y39_N5
\dp1|IR1|InstrReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|IR1|InstrReg~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|IR1|InstrReg\(1));

-- Location: LABCELL_X83_Y39_N27
\dp1|IR1|InstrReg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|IR1|InstrReg~2_combout\ = ( \c1|state.001~q\ & ( (\dp1|MEM1|RAM~574_combout\ & !\rst~input_o\) ) ) # ( !\c1|state.001~q\ & ( (\dp1|IR1|InstrReg\(2) & !\rst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|IR1|ALT_INV_InstrReg\(2),
	datac => \dp1|MEM1|ALT_INV_RAM~574_combout\,
	datad => \ALT_INV_rst~input_o\,
	dataf => \c1|ALT_INV_state.001~q\,
	combout => \dp1|IR1|InstrReg~2_combout\);

-- Location: FF_X83_Y39_N41
\dp1|IR1|InstrReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|IR1|InstrReg~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|IR1|InstrReg\(2));

-- Location: MLABCELL_X84_Y39_N45
\dp1|ACC1|Aout~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~19_combout\ = ( \dp1|IR1|InstrReg\(2) & ( (!\dp1|IR1|InstrReg\(3) & !\dp1|IR1|InstrReg\(1)) ) ) # ( !\dp1|IR1|InstrReg\(2) & ( !\dp1|IR1|InstrReg\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|IR1|ALT_INV_InstrReg\(3),
	datac => \dp1|IR1|ALT_INV_InstrReg\(1),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(2),
	combout => \dp1|ACC1|Aout~19_combout\);

-- Location: IOIBUF_X89_Y38_N4
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: MLABCELL_X87_Y38_N12
\c1|state.000~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|state.000~0_combout\ = ( !\rst~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_rst~input_o\,
	combout => \c1|state.000~0_combout\);

-- Location: FF_X84_Y38_N41
\c1|state.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkin~combout\,
	asdata => \c1|state.000~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|state.000~q\);

-- Location: MLABCELL_X84_Y38_N15
\c1|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector12~0_combout\ = ( \c1|state.000~q\ & ( (!\c1|Decoder4~1_combout\) # ((!\c1|state.010~q\) # (\dp1|ACC1|Aout~19_combout\)) ) ) # ( !\c1|state.000~q\ & ( (\start~input_o\ & ((!\c1|Decoder4~1_combout\) # ((!\c1|state.010~q\) # 
-- (\dp1|ACC1|Aout~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001011000011110000101111111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_Decoder4~1_combout\,
	datab => \dp1|ACC1|ALT_INV_Aout~19_combout\,
	datac => \ALT_INV_start~input_o\,
	datad => \c1|ALT_INV_state.010~q\,
	dataf => \c1|ALT_INV_state.000~q\,
	combout => \c1|Selector12~0_combout\);

-- Location: FF_X83_Y39_N29
\dp1|RF1|RegFile_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|IR1|InstrReg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(6));

-- Location: FF_X83_Y40_N38
\dp1|RF1|RegFile_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|IR1|InstrReg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(3));

-- Location: LABCELL_X85_Y40_N9
\c1|RFwr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|RFwr~0_combout\ = ( \c1|state.010~q\ & ( (!\dp1|IR1|InstrReg\(4) & (!\dp1|IR1|InstrReg\(7) & (!\dp1|IR1|InstrReg\(6) & \dp1|IR1|InstrReg\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|IR1|ALT_INV_InstrReg\(4),
	datab => \dp1|IR1|ALT_INV_InstrReg\(7),
	datac => \dp1|IR1|ALT_INV_InstrReg\(6),
	datad => \dp1|IR1|ALT_INV_InstrReg\(5),
	dataf => \c1|ALT_INV_state.010~q\,
	combout => \c1|RFwr~0_combout\);

-- Location: FF_X85_Y40_N10
\dp1|RF1|RegFile_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \c1|RFwr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(0));

-- Location: FF_X80_Y39_N44
\dp1|IR1|InstrReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|IR1|InstrReg~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|IR1|InstrReg\(0));

-- Location: MLABCELL_X82_Y39_N54
\dp1|MA1|Addr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MA1|Addr~0_combout\ = (!\rst~input_o\ & \dp1|MEM1|RAM~532_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst~input_o\,
	datad => \dp1|MEM1|ALT_INV_RAM~532_combout\,
	combout => \dp1|MA1|Addr~0_combout\);

-- Location: MLABCELL_X84_Y38_N33
\c1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Mux11~0_combout\ = ( \dp1|IR1|InstrReg\(4) & ( (!\dp1|IR1|InstrReg\(6) & (\dp1|IR1|InstrReg\(5) & !\dp1|IR1|InstrReg\(7))) ) ) # ( !\dp1|IR1|InstrReg\(4) & ( (\dp1|IR1|InstrReg\(6) & (!\dp1|IR1|InstrReg\(5) & !\dp1|IR1|InstrReg\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|IR1|ALT_INV_InstrReg\(6),
	datac => \dp1|IR1|ALT_INV_InstrReg\(5),
	datad => \dp1|IR1|ALT_INV_InstrReg\(7),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(4),
	combout => \c1|Mux11~0_combout\);

-- Location: MLABCELL_X87_Y38_N54
\dp1|MA1|Addr[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MA1|Addr[1]~1_combout\ = ((\c1|state.010~q\ & \c1|Mux11~0_combout\)) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.010~q\,
	datac => \c1|ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_rst~input_o\,
	combout => \dp1|MA1|Addr[1]~1_combout\);

-- Location: FF_X82_Y39_N56
\dp1|MA1|Addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MA1|Addr~0_combout\,
	ena => \dp1|MA1|Addr[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MA1|Addr\(0));

-- Location: MLABCELL_X84_Y38_N21
\c1|ALUsel~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|ALUsel~7_combout\ = ( \dp1|IR1|InstrReg\(6) & ( !\dp1|IR1|InstrReg\(5) ) ) # ( !\dp1|IR1|InstrReg\(6) & ( \dp1|IR1|InstrReg\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|IR1|ALT_INV_InstrReg\(5),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(6),
	combout => \c1|ALUsel~7_combout\);

-- Location: LABCELL_X83_Y38_N24
\c1|Decoder2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Decoder2~0_combout\ = ( !\dp1|IR1|InstrReg\(2) & ( !\dp1|IR1|InstrReg\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dp1|IR1|ALT_INV_InstrReg\(3),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(2),
	combout => \c1|Decoder2~0_combout\);

-- Location: MLABCELL_X84_Y38_N0
\c1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector1~0_combout\ = ( \c1|Decoder2~0_combout\ & ( (\c1|state.010~q\ & (!\c1|ALUsel~7_combout\ & ((\dp1|IR1|InstrReg\(1)) # (\dp1|IR1|InstrReg\(0))))) ) ) # ( !\c1|Decoder2~0_combout\ & ( (\c1|state.010~q\ & !\c1|ALUsel~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000010000001100000001000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|IR1|ALT_INV_InstrReg\(0),
	datab => \c1|ALT_INV_state.010~q\,
	datac => \c1|ALT_INV_ALUsel~7_combout\,
	datad => \dp1|IR1|ALT_INV_InstrReg\(1),
	dataf => \c1|ALT_INV_Decoder2~0_combout\,
	combout => \c1|Selector1~0_combout\);

-- Location: LABCELL_X83_Y38_N36
\c1|JMPsel[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|JMPsel\(1) = ( \c1|Selector1~0_combout\ & ( (\c1|JMPsel\(1)) # (\c1|Selector3~4_combout\) ) ) # ( !\c1|Selector1~0_combout\ & ( (!\c1|Selector3~4_combout\ & \c1|JMPsel\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_Selector3~4_combout\,
	datac => \c1|ALT_INV_JMPsel\(1),
	dataf => \c1|ALT_INV_Selector1~0_combout\,
	combout => \c1|JMPsel\(1));

-- Location: LABCELL_X83_Y38_N0
\dp1|I1|Add0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|I1|Add0~26_cout\ = CARRY(( \c1|JMPsel\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_JMPsel\(0),
	cin => GND,
	cout => \dp1|I1|Add0~26_cout\);

-- Location: LABCELL_X83_Y38_N3
\dp1|I1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|I1|Add0~1_sumout\ = SUM(( (!\c1|JMPsel\(1)) # (!\dp1|IR1|InstrReg\(0) $ (!\c1|JMPsel\(0))) ) + ( \dp1|PC1|PCReg\(0) ) + ( \dp1|I1|Add0~26_cout\ ))
-- \dp1|I1|Add0~2\ = CARRY(( (!\c1|JMPsel\(1)) # (!\dp1|IR1|InstrReg\(0) $ (!\c1|JMPsel\(0))) ) + ( \dp1|PC1|PCReg\(0) ) + ( \dp1|I1|Add0~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|IR1|ALT_INV_InstrReg\(0),
	datac => \c1|ALT_INV_JMPsel\(0),
	datad => \c1|ALT_INV_JMPsel\(1),
	dataf => \dp1|PC1|ALT_INV_PCReg\(0),
	cin => \dp1|I1|Add0~26_cout\,
	sumout => \dp1|I1|Add0~1_sumout\,
	cout => \dp1|I1|Add0~2\);

-- Location: LABCELL_X80_Y39_N12
\dp1|PC1|PCReg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|PC1|PCReg~0_combout\ = ( \dp1|MEM1|RAM~532_combout\ & ( ((!\c1|JMPsel\(1) & \c1|JMPsel\(0))) # (\dp1|I1|Add0~1_sumout\) ) ) # ( !\dp1|MEM1|RAM~532_combout\ & ( (\dp1|I1|Add0~1_sumout\ & ((!\c1|JMPsel\(0)) # (\c1|JMPsel\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_JMPsel\(1),
	datac => \c1|ALT_INV_JMPsel\(0),
	datad => \dp1|I1|ALT_INV_Add0~1_sumout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~532_combout\,
	combout => \dp1|PC1|PCReg~0_combout\);

-- Location: LABCELL_X85_Y40_N30
\c1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector3~0_combout\ = (\dp1|IR1|InstrReg\(5) & \dp1|IR1|InstrReg\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|IR1|ALT_INV_InstrReg\(5),
	datad => \dp1|IR1|ALT_INV_InstrReg\(4),
	combout => \c1|Selector3~0_combout\);

-- Location: LABCELL_X85_Y40_N6
\c1|ALUsel[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|ALUsel[0]~4_combout\ = ( \dp1|IR1|InstrReg\(6) & ( (!\dp1|IR1|InstrReg\(4) & \dp1|IR1|InstrReg\(7)) ) ) # ( !\dp1|IR1|InstrReg\(6) & ( (!\dp1|IR1|InstrReg\(4) & (\dp1|IR1|InstrReg\(7) & \dp1|IR1|InstrReg\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|IR1|ALT_INV_InstrReg\(4),
	datac => \dp1|IR1|ALT_INV_InstrReg\(7),
	datad => \dp1|IR1|ALT_INV_InstrReg\(5),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(6),
	combout => \c1|ALUsel[0]~4_combout\);

-- Location: LABCELL_X85_Y40_N42
\c1|ALUsel[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|ALUsel[0]~3_combout\ = ( \dp1|IR1|InstrReg\(3) & ( (\dp1|IR1|InstrReg\(6) & \dp1|IR1|InstrReg\(5)) ) ) # ( !\dp1|IR1|InstrReg\(3) & ( (\dp1|IR1|InstrReg\(6) & (\dp1|IR1|InstrReg\(5) & ((\dp1|IR1|InstrReg\(0)) # (\dp1|IR1|InstrReg\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|IR1|ALT_INV_InstrReg\(2),
	datab => \dp1|IR1|ALT_INV_InstrReg\(6),
	datac => \dp1|IR1|ALT_INV_InstrReg\(0),
	datad => \dp1|IR1|ALT_INV_InstrReg\(5),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(3),
	combout => \c1|ALUsel[0]~3_combout\);

-- Location: LABCELL_X81_Y38_N15
\c1|ALUsel[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|ALUsel[0]~6_combout\ = ( !\c1|ALUsel[0]~3_combout\ & ( (\c1|state.010~q\ & \c1|ALUsel[0]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.010~q\,
	datac => \c1|ALT_INV_ALUsel[0]~4_combout\,
	dataf => \c1|ALT_INV_ALUsel[0]~3_combout\,
	combout => \c1|ALUsel[0]~6_combout\);

-- Location: MLABCELL_X84_Y40_N18
\c1|ALUsel~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|ALUsel~1_combout\ = ( \dp1|IR1|InstrReg\(7) & ( \dp1|IR1|InstrReg\(6) & ( \dp1|IR1|InstrReg\(5) ) ) ) # ( !\dp1|IR1|InstrReg\(7) & ( \dp1|IR1|InstrReg\(6) ) ) # ( \dp1|IR1|InstrReg\(7) & ( !\dp1|IR1|InstrReg\(6) & ( !\dp1|IR1|InstrReg\(5) ) ) ) # ( 
-- !\dp1|IR1|InstrReg\(7) & ( !\dp1|IR1|InstrReg\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001111000011111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|IR1|ALT_INV_InstrReg\(5),
	datae => \dp1|IR1|ALT_INV_InstrReg\(7),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(6),
	combout => \c1|ALUsel~1_combout\);

-- Location: FF_X81_Y40_N50
\dp1|RF1|RegFile_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|IR1|InstrReg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(5));

-- Location: FF_X81_Y40_N56
\dp1|RF1|RegFile_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(13));

-- Location: IOIBUF_X89_Y37_N21
\Input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: FF_X81_Y40_N11
\dp1|RF1|RegFile_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(9));

-- Location: LABCELL_X83_Y39_N9
\c1|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector5~0_combout\ = ( \c1|state.011~q\ ) # ( !\c1|state.011~q\ & ( !\dp1|IR1|InstrReg\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dp1|IR1|ALT_INV_InstrReg\(7),
	dataf => \c1|ALT_INV_state.011~q\,
	combout => \c1|Selector5~0_combout\);

-- Location: LABCELL_X83_Y39_N18
\c1|Asel[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Asel\(0) = ( \c1|Selector5~0_combout\ & ( (\c1|Asel\(0)) # (\dp1|ACC1|Aout~18_combout\) ) ) # ( !\c1|Selector5~0_combout\ & ( (!\dp1|ACC1|Aout~18_combout\ & \c1|Asel\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|ACC1|ALT_INV_Aout~18_combout\,
	datac => \c1|ALT_INV_Asel\(0),
	dataf => \c1|ALT_INV_Selector5~0_combout\,
	combout => \c1|Asel\(0));

-- Location: MLABCELL_X84_Y39_N42
\c1|SHsel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|SHsel~0_combout\ = ( \dp1|IR1|InstrReg\(2) & ( (!\dp1|IR1|InstrReg\(3) & (!\dp1|IR1|InstrReg\(0) & !\dp1|IR1|InstrReg\(1))) ) ) # ( !\dp1|IR1|InstrReg\(2) & ( (!\dp1|IR1|InstrReg\(3) & (\dp1|IR1|InstrReg\(0) & \dp1|IR1|InstrReg\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|IR1|ALT_INV_InstrReg\(3),
	datac => \dp1|IR1|ALT_INV_InstrReg\(0),
	datad => \dp1|IR1|ALT_INV_InstrReg\(1),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(2),
	combout => \c1|SHsel~0_combout\);

-- Location: MLABCELL_X84_Y39_N54
\c1|SHsel[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|SHsel[0]~2_combout\ = ( \dp1|IR1|InstrReg\(2) & ( \c1|Decoder4~1_combout\ & ( (\c1|state.010~q\ & (!\dp1|IR1|InstrReg\(1) & (\dp1|IR1|InstrReg\(0) & !\dp1|IR1|InstrReg\(3)))) ) ) ) # ( !\dp1|IR1|InstrReg\(2) & ( \c1|Decoder4~1_combout\ & ( 
-- (\c1|state.010~q\ & (\dp1|IR1|InstrReg\(1) & (\dp1|IR1|InstrReg\(0) & !\dp1|IR1|InstrReg\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.010~q\,
	datab => \dp1|IR1|ALT_INV_InstrReg\(1),
	datac => \dp1|IR1|ALT_INV_InstrReg\(0),
	datad => \dp1|IR1|ALT_INV_InstrReg\(3),
	datae => \dp1|IR1|ALT_INV_InstrReg\(2),
	dataf => \c1|ALT_INV_Decoder4~1_combout\,
	combout => \c1|SHsel[0]~2_combout\);

-- Location: LABCELL_X83_Y39_N24
\dp1|ACC1|Aout[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout[2]~4_combout\ = ( \c1|SHsel[0]~2_combout\ & ( (!\c1|Asel\(0) & !\c1|SHsel~0_combout\) ) ) # ( !\c1|SHsel[0]~2_combout\ & ( !\c1|Asel\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_Asel\(0),
	datad => \c1|ALT_INV_SHsel~0_combout\,
	dataf => \c1|ALT_INV_SHsel[0]~2_combout\,
	combout => \dp1|ACC1|Aout[2]~4_combout\);

-- Location: IOIBUF_X89_Y35_N78
\Input[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(4),
	o => \Input[4]~input_o\);

-- Location: LABCELL_X83_Y39_N30
\c1|SHsel[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|SHsel[1]~1_combout\ = ( \c1|state.010~q\ & ( (\c1|Decoder4~1_combout\ & \c1|SHsel~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_Decoder4~1_combout\,
	datad => \c1|ALT_INV_SHsel~0_combout\,
	dataf => \c1|ALT_INV_state.010~q\,
	combout => \c1|SHsel[1]~1_combout\);

-- Location: LABCELL_X83_Y39_N51
\dp1|ACC1|Aout[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout[2]~5_combout\ = ( \c1|SHsel[1]~1_combout\ & ( (!\c1|Asel\(0) & \c1|SHsel[0]~2_combout\) ) ) # ( !\c1|SHsel[1]~1_combout\ & ( (!\c1|Asel\(0) & !\c1|SHsel[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_Asel\(0),
	datad => \c1|ALT_INV_SHsel[0]~2_combout\,
	dataf => \c1|ALT_INV_SHsel[1]~1_combout\,
	combout => \dp1|ACC1|Aout[2]~5_combout\);

-- Location: FF_X81_Y40_N26
\dp1|RF1|RegFile_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(11));

-- Location: M10K_X76_Y39_N0
\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "datapath:dp1|RF:RF1|altsyncram:RegFile_rtl_0|altsyncram_edi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \c1|RFwr~0_combout\,
	portbre => VCC,
	clk0 => \clkin~combout\,
	portadatain => \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X81_Y40_N24
\dp1|RF1|RegFile~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|RF1|RegFile~5_combout\ = ( \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a4\ & ( (!\dp1|RF1|RegFile~0_combout\) # ((!\dp1|RF1|RegFile_rtl_0_bypass\(6) $ (!\dp1|RF1|RegFile_rtl_0_bypass\(5))) # (\dp1|RF1|RegFile_rtl_0_bypass\(11))) ) ) # ( 
-- !\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a4\ & ( (\dp1|RF1|RegFile~0_combout\ & (\dp1|RF1|RegFile_rtl_0_bypass\(11) & (!\dp1|RF1|RegFile_rtl_0_bypass\(6) $ (\dp1|RF1|RegFile_rtl_0_bypass\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100001000000000010000111011110111111111101111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(6),
	datab => \dp1|RF1|ALT_INV_RegFile~0_combout\,
	datac => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(5),
	datad => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(11),
	dataf => \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	combout => \dp1|RF1|RegFile~5_combout\);

-- Location: LABCELL_X83_Y40_N0
\dp1|ALU1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux3~0_combout\ = ( \c1|ALUsel[0]~6_combout\ & ( \c1|state.010~q\ & ( (!\c1|ALUsel[1]~5_combout\ & ((!\dp1|ACC1|Aout\(4) & ((\c1|ALUsel~1_combout\))) # (\dp1|ACC1|Aout\(4) & (\dp1|RF1|RegFile~5_combout\ & !\c1|ALUsel~1_combout\)))) ) ) ) # ( 
-- !\c1|ALUsel[0]~6_combout\ & ( \c1|state.010~q\ & ( (!\dp1|ACC1|Aout\(4) & (\dp1|RF1|RegFile~5_combout\ & (!\c1|ALUsel[1]~5_combout\ & !\c1|ALUsel~1_combout\))) # (\dp1|ACC1|Aout\(4) & ((!\c1|ALUsel[1]~5_combout\ $ (\c1|ALUsel~1_combout\)))) ) ) ) # ( 
-- \c1|ALUsel[0]~6_combout\ & ( !\c1|state.010~q\ & ( (!\c1|ALUsel[1]~5_combout\ & (!\dp1|ACC1|Aout\(4) $ (!\c1|ALUsel~1_combout\))) ) ) ) # ( !\c1|ALUsel[0]~6_combout\ & ( !\c1|state.010~q\ & ( (\dp1|ACC1|Aout\(4) & \c1|ALUsel[1]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100001010000001110000000001010001000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(4),
	datab => \dp1|RF1|ALT_INV_RegFile~5_combout\,
	datac => \c1|ALT_INV_ALUsel[1]~5_combout\,
	datad => \c1|ALT_INV_ALUsel~1_combout\,
	datae => \c1|ALT_INV_ALUsel[0]~6_combout\,
	dataf => \c1|ALT_INV_state.010~q\,
	combout => \dp1|ALU1|Mux3~0_combout\);

-- Location: LABCELL_X85_Y40_N45
\c1|ALUsel[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|ALUsel[1]~2_combout\ = ( \dp1|IR1|InstrReg\(1) & ( \dp1|IR1|InstrReg\(6) ) ) # ( !\dp1|IR1|InstrReg\(1) & ( (\dp1|IR1|InstrReg\(6) & (((\dp1|IR1|InstrReg\(4)) # (\dp1|IR1|InstrReg\(3))) # (\dp1|IR1|InstrReg\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|IR1|ALT_INV_InstrReg\(2),
	datab => \dp1|IR1|ALT_INV_InstrReg\(6),
	datac => \dp1|IR1|ALT_INV_InstrReg\(3),
	datad => \dp1|IR1|ALT_INV_InstrReg\(4),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(1),
	combout => \c1|ALUsel[1]~2_combout\);

-- Location: LABCELL_X80_Y38_N36
\dp1|ALU1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux6~0_combout\ = ( \c1|ALUsel[0]~4_combout\ & ( \c1|state.010~q\ & ( (!\c1|ALUsel[1]~2_combout\ & (!\c1|ALUsel[1]~0_combout\ $ (((\c1|ALUsel~1_combout\ & \c1|ALUsel[0]~3_combout\))))) # (\c1|ALUsel[1]~2_combout\ & ((!\c1|ALUsel~1_combout\) # 
-- ((!\c1|ALUsel[0]~3_combout\)))) ) ) ) # ( !\c1|ALUsel[0]~4_combout\ & ( \c1|state.010~q\ & ( !\c1|ALUsel~1_combout\ $ (((!\c1|ALUsel[1]~2_combout\ & \c1|ALUsel[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100011001101111110001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[1]~2_combout\,
	datab => \c1|ALT_INV_ALUsel~1_combout\,
	datac => \c1|ALT_INV_ALUsel[0]~3_combout\,
	datad => \c1|ALT_INV_ALUsel[1]~0_combout\,
	datae => \c1|ALT_INV_ALUsel[0]~4_combout\,
	dataf => \c1|ALT_INV_state.010~q\,
	combout => \dp1|ALU1|Mux6~0_combout\);

-- Location: LABCELL_X81_Y38_N0
\c1|ALUsel[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|ALUsel[2]~8_combout\ = ( \dp1|IR1|InstrReg\(5) & ( (!\c1|state.010~q\) # ((!\dp1|IR1|InstrReg\(7)) # (\dp1|IR1|InstrReg\(6))) ) ) # ( !\dp1|IR1|InstrReg\(5) & ( (!\c1|state.010~q\) # ((!\dp1|IR1|InstrReg\(7)) # (!\dp1|IR1|InstrReg\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111111101111111011101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.010~q\,
	datab => \dp1|IR1|ALT_INV_InstrReg\(7),
	datac => \dp1|IR1|ALT_INV_InstrReg\(6),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(5),
	combout => \c1|ALUsel[2]~8_combout\);

-- Location: FF_X81_Y40_N53
\dp1|RF1|RegFile_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(8));

-- Location: LABCELL_X81_Y40_N51
\dp1|RF1|RegFile~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|RF1|RegFile~1_combout\ = ( \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a1\ & ( (!\dp1|RF1|RegFile~0_combout\) # ((!\dp1|RF1|RegFile_rtl_0_bypass\(6) $ (!\dp1|RF1|RegFile_rtl_0_bypass\(5))) # (\dp1|RF1|RegFile_rtl_0_bypass\(8))) ) ) # ( 
-- !\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a1\ & ( (\dp1|RF1|RegFile~0_combout\ & (\dp1|RF1|RegFile_rtl_0_bypass\(8) & (!\dp1|RF1|RegFile_rtl_0_bypass\(6) $ (\dp1|RF1|RegFile_rtl_0_bypass\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001001000000000000100111110110111111111111011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(6),
	datab => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(5),
	datac => \dp1|RF1|ALT_INV_RegFile~0_combout\,
	datad => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(8),
	dataf => \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \dp1|RF1|RegFile~1_combout\);

-- Location: LABCELL_X80_Y38_N30
\c1|ALUsel[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|ALUsel[0]~9_combout\ = ( \c1|ALUsel[0]~4_combout\ & ( \c1|ALUsel[0]~3_combout\ ) ) # ( !\c1|ALUsel[0]~4_combout\ & ( \c1|ALUsel[0]~3_combout\ ) ) # ( !\c1|ALUsel[0]~4_combout\ & ( !\c1|ALUsel[0]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_ALUsel[0]~4_combout\,
	dataf => \c1|ALT_INV_ALUsel[0]~3_combout\,
	combout => \c1|ALUsel[0]~9_combout\);

-- Location: LABCELL_X81_Y38_N30
\dp1|ALU1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Add0~34_cout\ = CARRY(( (\c1|ALUsel[1]~5_combout\ & ((!\c1|state.010~q\) # (\c1|ALUsel[0]~9_combout\))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_state.010~q\,
	datac => \c1|ALT_INV_ALUsel[0]~9_combout\,
	datad => \c1|ALT_INV_ALUsel[1]~5_combout\,
	cin => GND,
	cout => \dp1|ALU1|Add0~34_cout\);

-- Location: LABCELL_X81_Y38_N33
\dp1|ALU1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Add0~5_sumout\ = SUM(( \dp1|ACC1|Aout\(0) ) + ( (!\c1|state.010~q\) # ((!\c1|ALUsel[0]~9_combout\ $ (!\dp1|RF1|RegFile~2_combout\)) # (\c1|ALUsel~1_combout\)) ) + ( \dp1|ALU1|Add0~34_cout\ ))
-- \dp1|ALU1|Add0~6\ = CARRY(( \dp1|ACC1|Aout\(0) ) + ( (!\c1|state.010~q\) # ((!\c1|ALUsel[0]~9_combout\ $ (!\dp1|RF1|RegFile~2_combout\)) # (\c1|ALUsel~1_combout\)) ) + ( \dp1|ALU1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000001000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[0]~9_combout\,
	datab => \c1|ALT_INV_state.010~q\,
	datac => \c1|ALT_INV_ALUsel~1_combout\,
	datad => \dp1|ACC1|ALT_INV_Aout\(0),
	dataf => \dp1|RF1|ALT_INV_RegFile~2_combout\,
	cin => \dp1|ALU1|Add0~34_cout\,
	sumout => \dp1|ALU1|Add0~5_sumout\,
	cout => \dp1|ALU1|Add0~6\);

-- Location: LABCELL_X81_Y38_N36
\dp1|ALU1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Add0~1_sumout\ = SUM(( \dp1|ACC1|Aout\(1) ) + ( (!\c1|ALUsel[2]~8_combout\ & ((!\c1|ALUsel[0]~6_combout\ $ (\dp1|RF1|RegFile~1_combout\)))) # (\c1|ALUsel[2]~8_combout\ & (\c1|ALUsel[1]~5_combout\)) ) + ( \dp1|ALU1|Add0~6\ ))
-- \dp1|ALU1|Add0~2\ = CARRY(( \dp1|ACC1|Aout\(1) ) + ( (!\c1|ALUsel[2]~8_combout\ & ((!\c1|ALUsel[0]~6_combout\ $ (\dp1|RF1|RegFile~1_combout\)))) # (\c1|ALUsel[2]~8_combout\ & (\c1|ALUsel[1]~5_combout\)) ) + ( \dp1|ALU1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011101110001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[1]~5_combout\,
	datab => \c1|ALT_INV_ALUsel[2]~8_combout\,
	datac => \c1|ALT_INV_ALUsel[0]~6_combout\,
	datad => \dp1|ACC1|ALT_INV_Aout\(1),
	dataf => \dp1|RF1|ALT_INV_RegFile~1_combout\,
	cin => \dp1|ALU1|Add0~6\,
	sumout => \dp1|ALU1|Add0~1_sumout\,
	cout => \dp1|ALU1|Add0~2\);

-- Location: LABCELL_X81_Y38_N39
\dp1|ALU1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Add0~9_sumout\ = SUM(( \dp1|ACC1|Aout\(2) ) + ( (!\c1|ALUsel[2]~8_combout\ & ((!\c1|ALUsel[0]~6_combout\ $ (\dp1|RF1|RegFile~3_combout\)))) # (\c1|ALUsel[2]~8_combout\ & (\c1|ALUsel[1]~5_combout\)) ) + ( \dp1|ALU1|Add0~2\ ))
-- \dp1|ALU1|Add0~10\ = CARRY(( \dp1|ACC1|Aout\(2) ) + ( (!\c1|ALUsel[2]~8_combout\ & ((!\c1|ALUsel[0]~6_combout\ $ (\dp1|RF1|RegFile~3_combout\)))) # (\c1|ALUsel[2]~8_combout\ & (\c1|ALUsel[1]~5_combout\)) ) + ( \dp1|ALU1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011101110001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[1]~5_combout\,
	datab => \c1|ALT_INV_ALUsel[2]~8_combout\,
	datac => \c1|ALT_INV_ALUsel[0]~6_combout\,
	datad => \dp1|ACC1|ALT_INV_Aout\(2),
	dataf => \dp1|RF1|ALT_INV_RegFile~3_combout\,
	cin => \dp1|ALU1|Add0~2\,
	sumout => \dp1|ALU1|Add0~9_sumout\,
	cout => \dp1|ALU1|Add0~10\);

-- Location: LABCELL_X81_Y38_N42
\dp1|ALU1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Add0~13_sumout\ = SUM(( (!\c1|ALUsel[2]~8_combout\ & ((!\c1|ALUsel[0]~6_combout\ $ (\dp1|RF1|RegFile~4_combout\)))) # (\c1|ALUsel[2]~8_combout\ & (\c1|ALUsel[1]~5_combout\)) ) + ( \dp1|ACC1|Aout\(3) ) + ( \dp1|ALU1|Add0~10\ ))
-- \dp1|ALU1|Add0~14\ = CARRY(( (!\c1|ALUsel[2]~8_combout\ & ((!\c1|ALUsel[0]~6_combout\ $ (\dp1|RF1|RegFile~4_combout\)))) # (\c1|ALUsel[2]~8_combout\ & (\c1|ALUsel[1]~5_combout\)) ) + ( \dp1|ACC1|Aout\(3) ) + ( \dp1|ALU1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[1]~5_combout\,
	datab => \c1|ALT_INV_ALUsel[2]~8_combout\,
	datac => \c1|ALT_INV_ALUsel[0]~6_combout\,
	datad => \dp1|RF1|ALT_INV_RegFile~4_combout\,
	dataf => \dp1|ACC1|ALT_INV_Aout\(3),
	cin => \dp1|ALU1|Add0~10\,
	sumout => \dp1|ALU1|Add0~13_sumout\,
	cout => \dp1|ALU1|Add0~14\);

-- Location: LABCELL_X81_Y38_N45
\dp1|ALU1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Add0~17_sumout\ = SUM(( (!\c1|ALUsel[2]~8_combout\ & ((!\c1|ALUsel[0]~6_combout\ $ (\dp1|RF1|RegFile~5_combout\)))) # (\c1|ALUsel[2]~8_combout\ & (\c1|ALUsel[1]~5_combout\)) ) + ( \dp1|ACC1|Aout\(4) ) + ( \dp1|ALU1|Add0~14\ ))
-- \dp1|ALU1|Add0~18\ = CARRY(( (!\c1|ALUsel[2]~8_combout\ & ((!\c1|ALUsel[0]~6_combout\ $ (\dp1|RF1|RegFile~5_combout\)))) # (\c1|ALUsel[2]~8_combout\ & (\c1|ALUsel[1]~5_combout\)) ) + ( \dp1|ACC1|Aout\(4) ) + ( \dp1|ALU1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[1]~5_combout\,
	datab => \c1|ALT_INV_ALUsel[2]~8_combout\,
	datac => \c1|ALT_INV_ALUsel[0]~6_combout\,
	datad => \dp1|RF1|ALT_INV_RegFile~5_combout\,
	dataf => \dp1|ACC1|ALT_INV_Aout\(4),
	cin => \dp1|ALU1|Add0~14\,
	sumout => \dp1|ALU1|Add0~17_sumout\,
	cout => \dp1|ALU1|Add0~18\);

-- Location: MLABCELL_X82_Y38_N3
\dp1|ALU1|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux3~1_combout\ = ( \dp1|ALU1|Add0~17_sumout\ & ( (!\dp1|ALU1|Mux3~0_combout\ & !\dp1|ALU1|Mux6~0_combout\) ) ) # ( !\dp1|ALU1|Add0~17_sumout\ & ( !\dp1|ALU1|Mux3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ALU1|ALT_INV_Mux3~0_combout\,
	datad => \dp1|ALU1|ALT_INV_Mux6~0_combout\,
	dataf => \dp1|ALU1|ALT_INV_Add0~17_sumout\,
	combout => \dp1|ALU1|Mux3~1_combout\);

-- Location: LABCELL_X83_Y38_N42
\dp1|ALU1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux4~0_combout\ = ( \dp1|ACC1|Aout\(3) & ( \dp1|RF1|RegFile~4_combout\ & ( (!\c1|ALUsel[0]~6_combout\ & (!\c1|ALUsel[1]~5_combout\ $ (((!\c1|state.010~q\) # (\c1|ALUsel~1_combout\))))) # (\c1|ALUsel[0]~6_combout\ & (!\c1|ALUsel[1]~5_combout\ & 
-- (!\c1|ALUsel~1_combout\))) ) ) ) # ( !\dp1|ACC1|Aout\(3) & ( \dp1|RF1|RegFile~4_combout\ & ( (!\c1|ALUsel[1]~5_combout\ & ((!\c1|ALUsel[0]~6_combout\ & (!\c1|ALUsel~1_combout\ & \c1|state.010~q\)) # (\c1|ALUsel[0]~6_combout\ & (\c1|ALUsel~1_combout\)))) ) 
-- ) ) # ( \dp1|ACC1|Aout\(3) & ( !\dp1|RF1|RegFile~4_combout\ & ( (!\c1|ALUsel[1]~5_combout\ & (!\c1|ALUsel~1_combout\ & (!\c1|ALUsel[0]~6_combout\ $ (!\c1|state.010~q\)))) # (\c1|ALUsel[1]~5_combout\ & (!\c1|ALUsel[0]~6_combout\ & ((!\c1|state.010~q\) # 
-- (\c1|ALUsel~1_combout\)))) ) ) ) # ( !\dp1|ACC1|Aout\(3) & ( !\dp1|RF1|RegFile~4_combout\ & ( (!\c1|ALUsel[1]~5_combout\ & (\c1|ALUsel[0]~6_combout\ & \c1|ALUsel~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010011001001000010000000010100000100110010010100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[1]~5_combout\,
	datab => \c1|ALT_INV_ALUsel[0]~6_combout\,
	datac => \c1|ALT_INV_ALUsel~1_combout\,
	datad => \c1|ALT_INV_state.010~q\,
	datae => \dp1|ACC1|ALT_INV_Aout\(3),
	dataf => \dp1|RF1|ALT_INV_RegFile~4_combout\,
	combout => \dp1|ALU1|Mux4~0_combout\);

-- Location: MLABCELL_X82_Y38_N15
\dp1|ALU1|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux4~1_combout\ = ( !\dp1|ALU1|Mux4~0_combout\ & ( (!\dp1|ALU1|Add0~13_sumout\) # (!\dp1|ALU1|Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ALU1|ALT_INV_Add0~13_sumout\,
	datad => \dp1|ALU1|ALT_INV_Mux6~0_combout\,
	dataf => \dp1|ALU1|ALT_INV_Mux4~0_combout\,
	combout => \dp1|ALU1|Mux4~1_combout\);

-- Location: MLABCELL_X82_Y38_N48
\dp1|ACC1|Aout~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~12_combout\ = ( \dp1|ALU1|Mux3~1_combout\ & ( \dp1|ALU1|Mux4~1_combout\ & ( (!\dp1|ACC1|Aout[2]~5_combout\ & ((!\dp1|ACC1|Aout[2]~4_combout\ & ((\dp1|RF1|RegFile~5_combout\))) # (\dp1|ACC1|Aout[2]~4_combout\ & 
-- (!\dp1|ALU1|Mux2~1_combout\)))) ) ) ) # ( !\dp1|ALU1|Mux3~1_combout\ & ( \dp1|ALU1|Mux4~1_combout\ & ( (!\dp1|ACC1|Aout[2]~5_combout\ & ((!\dp1|ACC1|Aout[2]~4_combout\ & ((\dp1|RF1|RegFile~5_combout\))) # (\dp1|ACC1|Aout[2]~4_combout\ & 
-- (!\dp1|ALU1|Mux2~1_combout\)))) # (\dp1|ACC1|Aout[2]~5_combout\ & (((\dp1|ACC1|Aout[2]~4_combout\)))) ) ) ) # ( \dp1|ALU1|Mux3~1_combout\ & ( !\dp1|ALU1|Mux4~1_combout\ & ( (!\dp1|ACC1|Aout[2]~5_combout\ & ((!\dp1|ACC1|Aout[2]~4_combout\ & 
-- ((\dp1|RF1|RegFile~5_combout\))) # (\dp1|ACC1|Aout[2]~4_combout\ & (!\dp1|ALU1|Mux2~1_combout\)))) # (\dp1|ACC1|Aout[2]~5_combout\ & (((!\dp1|ACC1|Aout[2]~4_combout\)))) ) ) ) # ( !\dp1|ALU1|Mux3~1_combout\ & ( !\dp1|ALU1|Mux4~1_combout\ & ( 
-- ((!\dp1|ACC1|Aout[2]~4_combout\ & ((\dp1|RF1|RegFile~5_combout\))) # (\dp1|ACC1|Aout[2]~4_combout\ & (!\dp1|ALU1|Mux2~1_combout\))) # (\dp1|ACC1|Aout[2]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110111111101010110001111100000001101101011010000100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout[2]~5_combout\,
	datab => \dp1|ALU1|ALT_INV_Mux2~1_combout\,
	datac => \dp1|ACC1|ALT_INV_Aout[2]~4_combout\,
	datad => \dp1|RF1|ALT_INV_RegFile~5_combout\,
	datae => \dp1|ALU1|ALT_INV_Mux3~1_combout\,
	dataf => \dp1|ALU1|ALT_INV_Mux4~1_combout\,
	combout => \dp1|ACC1|Aout~12_combout\);

-- Location: MLABCELL_X82_Y38_N42
\dp1|ACC1|Aout~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~13_combout\ = ( !\rst~input_o\ & ( \c1|Asel\(1) & ( (!\c1|Asel\(0) & (\Input[4]~input_o\)) # (\c1|Asel\(0) & ((\dp1|MEM1|RAM~553_combout\))) ) ) ) # ( !\rst~input_o\ & ( !\c1|Asel\(1) & ( \dp1|ACC1|Aout~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000001010000010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[4]~input_o\,
	datab => \dp1|ACC1|ALT_INV_Aout~12_combout\,
	datac => \c1|ALT_INV_Asel\(0),
	datad => \dp1|MEM1|ALT_INV_RAM~553_combout\,
	datae => \ALT_INV_rst~input_o\,
	dataf => \c1|ALT_INV_Asel\(1),
	combout => \dp1|ACC1|Aout~13_combout\);

-- Location: MLABCELL_X84_Y39_N0
\dp1|ACC1|Aout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~1_combout\ = ( \dp1|IR1|InstrReg\(1) & ( \dp1|IR1|InstrReg\(5) & ( (!\dp1|IR1|InstrReg\(2) & (!\dp1|IR1|InstrReg\(3) & !\dp1|IR1|InstrReg\(4))) ) ) ) # ( !\dp1|IR1|InstrReg\(1) & ( \dp1|IR1|InstrReg\(5) & ( (!\dp1|IR1|InstrReg\(3) & 
-- ((!\dp1|IR1|InstrReg\(4)) # ((!\dp1|IR1|InstrReg\(2) & !\dp1|IR1|InstrReg\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100100000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|IR1|ALT_INV_InstrReg\(2),
	datab => \dp1|IR1|ALT_INV_InstrReg\(3),
	datac => \dp1|IR1|ALT_INV_InstrReg\(0),
	datad => \dp1|IR1|ALT_INV_InstrReg\(4),
	datae => \dp1|IR1|ALT_INV_InstrReg\(1),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(5),
	combout => \dp1|ACC1|Aout~1_combout\);

-- Location: LABCELL_X83_Y39_N21
\dp1|ACC1|Aout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~0_combout\ = ( !\dp1|IR1|InstrReg\(5) & ( (\dp1|IR1|InstrReg\(4) & !\dp1|IR1|InstrReg\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|IR1|ALT_INV_InstrReg\(4),
	datac => \dp1|IR1|ALT_INV_InstrReg\(7),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(5),
	combout => \dp1|ACC1|Aout~0_combout\);

-- Location: LABCELL_X85_Y39_N27
\dp1|ACC1|Aout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~2_combout\ = ( \c1|ALUsel~7_combout\ & ( (!\dp1|IR1|InstrReg\(7) & !\dp1|ACC1|Aout~0_combout\) ) ) # ( !\c1|ALUsel~7_combout\ & ( (!\dp1|ACC1|Aout~0_combout\ & ((!\dp1|IR1|InstrReg\(7)) # (!\dp1|ACC1|Aout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|IR1|ALT_INV_InstrReg\(7),
	datac => \dp1|ACC1|ALT_INV_Aout~1_combout\,
	datad => \dp1|ACC1|ALT_INV_Aout~0_combout\,
	dataf => \c1|ALT_INV_ALUsel~7_combout\,
	combout => \dp1|ACC1|Aout~2_combout\);

-- Location: LABCELL_X85_Y39_N24
\dp1|ACC1|Aout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~3_combout\ = ( \c1|state.011~q\ ) # ( !\c1|state.011~q\ & ( ((\c1|state.010~q\ & !\dp1|ACC1|Aout~2_combout\)) # (\rst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001111001111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_state.010~q\,
	datac => \ALT_INV_rst~input_o\,
	datad => \dp1|ACC1|ALT_INV_Aout~2_combout\,
	dataf => \c1|ALT_INV_state.011~q\,
	combout => \dp1|ACC1|Aout~3_combout\);

-- Location: FF_X82_Y38_N44
\dp1|ACC1|Aout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|ACC1|Aout~13_combout\,
	ena => \dp1|ACC1|Aout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|ACC1|Aout\(4));

-- Location: FF_X81_Y40_N5
\dp1|RF1|RegFile_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(10));

-- Location: LABCELL_X81_Y40_N3
\dp1|RF1|RegFile~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|RF1|RegFile~4_combout\ = ( \dp1|RF1|RegFile_rtl_0_bypass\(5) & ( (!\dp1|RF1|RegFile_rtl_0_bypass\(6) & (((\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a3\)))) # (\dp1|RF1|RegFile_rtl_0_bypass\(6) & ((!\dp1|RF1|RegFile~0_combout\ & 
-- (\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a3\)) # (\dp1|RF1|RegFile~0_combout\ & ((\dp1|RF1|RegFile_rtl_0_bypass\(10)))))) ) ) # ( !\dp1|RF1|RegFile_rtl_0_bypass\(5) & ( (!\dp1|RF1|RegFile_rtl_0_bypass\(6) & ((!\dp1|RF1|RegFile~0_combout\ & 
-- (\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a3\)) # (\dp1|RF1|RegFile~0_combout\ & ((\dp1|RF1|RegFile_rtl_0_bypass\(10)))))) # (\dp1|RF1|RegFile_rtl_0_bypass\(6) & (((\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a3\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(6),
	datab => \dp1|RF1|ALT_INV_RegFile~0_combout\,
	datac => \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datad => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(10),
	dataf => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(5),
	combout => \dp1|RF1|RegFile~4_combout\);

-- Location: LABCELL_X81_Y38_N6
\dp1|ALU1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux5~0_combout\ = ( \dp1|ACC1|Aout\(2) & ( \dp1|RF1|RegFile~3_combout\ & ( (!\c1|ALUsel[0]~6_combout\ & (!\c1|ALUsel[1]~5_combout\ $ (((!\c1|state.010~q\) # (\c1|ALUsel~1_combout\))))) # (\c1|ALUsel[0]~6_combout\ & (((!\c1|ALUsel[1]~5_combout\ & 
-- !\c1|ALUsel~1_combout\)))) ) ) ) # ( !\dp1|ACC1|Aout\(2) & ( \dp1|RF1|RegFile~3_combout\ & ( (!\c1|ALUsel[1]~5_combout\ & ((!\c1|ALUsel[0]~6_combout\ & (\c1|state.010~q\ & !\c1|ALUsel~1_combout\)) # (\c1|ALUsel[0]~6_combout\ & ((\c1|ALUsel~1_combout\))))) 
-- ) ) ) # ( \dp1|ACC1|Aout\(2) & ( !\dp1|RF1|RegFile~3_combout\ & ( (!\c1|ALUsel[0]~6_combout\ & (!\c1|ALUsel[1]~5_combout\ $ (((!\c1|state.010~q\) # (\c1|ALUsel~1_combout\))))) # (\c1|ALUsel[0]~6_combout\ & (!\c1|state.010~q\ & (!\c1|ALUsel[1]~5_combout\ & 
-- !\c1|ALUsel~1_combout\))) ) ) ) # ( !\dp1|ACC1|Aout\(2) & ( !\dp1|RF1|RegFile~3_combout\ & ( (\c1|ALUsel[0]~6_combout\ & (!\c1|ALUsel[1]~5_combout\ & \c1|ALUsel~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000011010000000101000100000010100000111100000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[0]~6_combout\,
	datab => \c1|ALT_INV_state.010~q\,
	datac => \c1|ALT_INV_ALUsel[1]~5_combout\,
	datad => \c1|ALT_INV_ALUsel~1_combout\,
	datae => \dp1|ACC1|ALT_INV_Aout\(2),
	dataf => \dp1|RF1|ALT_INV_RegFile~3_combout\,
	combout => \dp1|ALU1|Mux5~0_combout\);

-- Location: LABCELL_X81_Y40_N33
\dp1|ALU1|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux5~1_combout\ = ( !\dp1|ALU1|Mux5~0_combout\ & ( (!\dp1|ALU1|Mux6~0_combout\) # (!\dp1|ALU1|Add0~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ALU1|ALT_INV_Mux6~0_combout\,
	datac => \dp1|ALU1|ALT_INV_Add0~9_sumout\,
	dataf => \dp1|ALU1|ALT_INV_Mux5~0_combout\,
	combout => \dp1|ALU1|Mux5~1_combout\);

-- Location: MLABCELL_X82_Y38_N36
\dp1|ACC1|Aout~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~10_combout\ = ( \dp1|ALU1|Mux3~1_combout\ & ( \dp1|ALU1|Mux4~1_combout\ & ( (!\dp1|ACC1|Aout[2]~4_combout\ & ((!\dp1|ACC1|Aout[2]~5_combout\ & (\dp1|RF1|RegFile~4_combout\)) # (\dp1|ACC1|Aout[2]~5_combout\ & 
-- ((!\dp1|ALU1|Mux5~1_combout\))))) ) ) ) # ( !\dp1|ALU1|Mux3~1_combout\ & ( \dp1|ALU1|Mux4~1_combout\ & ( (!\dp1|ACC1|Aout[2]~4_combout\ & ((!\dp1|ACC1|Aout[2]~5_combout\ & (\dp1|RF1|RegFile~4_combout\)) # (\dp1|ACC1|Aout[2]~5_combout\ & 
-- ((!\dp1|ALU1|Mux5~1_combout\))))) # (\dp1|ACC1|Aout[2]~4_combout\ & (((!\dp1|ACC1|Aout[2]~5_combout\)))) ) ) ) # ( \dp1|ALU1|Mux3~1_combout\ & ( !\dp1|ALU1|Mux4~1_combout\ & ( (!\dp1|ACC1|Aout[2]~4_combout\ & ((!\dp1|ACC1|Aout[2]~5_combout\ & 
-- (\dp1|RF1|RegFile~4_combout\)) # (\dp1|ACC1|Aout[2]~5_combout\ & ((!\dp1|ALU1|Mux5~1_combout\))))) # (\dp1|ACC1|Aout[2]~4_combout\ & (((\dp1|ACC1|Aout[2]~5_combout\)))) ) ) ) # ( !\dp1|ALU1|Mux3~1_combout\ & ( !\dp1|ALU1|Mux4~1_combout\ & ( 
-- ((!\dp1|ACC1|Aout[2]~5_combout\ & (\dp1|RF1|RegFile~4_combout\)) # (\dp1|ACC1|Aout[2]~5_combout\ & ((!\dp1|ALU1|Mux5~1_combout\)))) # (\dp1|ACC1|Aout[2]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110101001011110010010101111010011100000010101000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout[2]~4_combout\,
	datab => \dp1|RF1|ALT_INV_RegFile~4_combout\,
	datac => \dp1|ACC1|ALT_INV_Aout[2]~5_combout\,
	datad => \dp1|ALU1|ALT_INV_Mux5~1_combout\,
	datae => \dp1|ALU1|ALT_INV_Mux3~1_combout\,
	dataf => \dp1|ALU1|ALT_INV_Mux4~1_combout\,
	combout => \dp1|ACC1|Aout~10_combout\);

-- Location: IOIBUF_X89_Y38_N38
\Input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: MLABCELL_X82_Y38_N24
\dp1|ACC1|Aout~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~11_combout\ = ( \Input[3]~input_o\ & ( \c1|Asel\(1) & ( (!\rst~input_o\ & ((!\c1|Asel\(0)) # (\dp1|MEM1|RAM~595_combout\))) ) ) ) # ( !\Input[3]~input_o\ & ( \c1|Asel\(1) & ( (\dp1|MEM1|RAM~595_combout\ & (\c1|Asel\(0) & !\rst~input_o\)) ) 
-- ) ) # ( \Input[3]~input_o\ & ( !\c1|Asel\(1) & ( (\dp1|ACC1|Aout~10_combout\ & !\rst~input_o\) ) ) ) # ( !\Input[3]~input_o\ & ( !\c1|Asel\(1) & ( (\dp1|ACC1|Aout~10_combout\ & !\rst~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~595_combout\,
	datab => \dp1|ACC1|ALT_INV_Aout~10_combout\,
	datac => \c1|ALT_INV_Asel\(0),
	datad => \ALT_INV_rst~input_o\,
	datae => \ALT_INV_Input[3]~input_o\,
	dataf => \c1|ALT_INV_Asel\(1),
	combout => \dp1|ACC1|Aout~11_combout\);

-- Location: FF_X82_Y38_N26
\dp1|ACC1|Aout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|ACC1|Aout~11_combout\,
	ena => \dp1|ACC1|Aout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|ACC1|Aout\(3));

-- Location: LABCELL_X81_Y40_N9
\dp1|RF1|RegFile~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|RF1|RegFile~3_combout\ = ( \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a2\ & ( (!\dp1|RF1|RegFile~0_combout\) # ((!\dp1|RF1|RegFile_rtl_0_bypass\(6) $ (!\dp1|RF1|RegFile_rtl_0_bypass\(5))) # (\dp1|RF1|RegFile_rtl_0_bypass\(9))) ) ) # ( 
-- !\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a2\ & ( (\dp1|RF1|RegFile~0_combout\ & (\dp1|RF1|RegFile_rtl_0_bypass\(9) & (!\dp1|RF1|RegFile_rtl_0_bypass\(6) $ (\dp1|RF1|RegFile_rtl_0_bypass\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100001000000000010000111011110111111111101111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(6),
	datab => \dp1|RF1|ALT_INV_RegFile~0_combout\,
	datac => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(5),
	datad => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(9),
	dataf => \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	combout => \dp1|RF1|RegFile~3_combout\);

-- Location: LABCELL_X81_Y40_N18
\dp1|ACC1|Aout~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~8_combout\ = ( \dp1|ACC1|Aout[2]~5_combout\ & ( \dp1|ALU1|Mux4~1_combout\ & ( (!\dp1|ACC1|Aout[2]~4_combout\ & (!\dp1|ALU1|Mux6~2_combout\)) # (\dp1|ACC1|Aout[2]~4_combout\ & ((!\dp1|ALU1|Mux5~1_combout\))) ) ) ) # ( 
-- !\dp1|ACC1|Aout[2]~5_combout\ & ( \dp1|ALU1|Mux4~1_combout\ & ( (\dp1|RF1|RegFile~3_combout\ & !\dp1|ACC1|Aout[2]~4_combout\) ) ) ) # ( \dp1|ACC1|Aout[2]~5_combout\ & ( !\dp1|ALU1|Mux4~1_combout\ & ( (!\dp1|ACC1|Aout[2]~4_combout\ & 
-- (!\dp1|ALU1|Mux6~2_combout\)) # (\dp1|ACC1|Aout[2]~4_combout\ & ((!\dp1|ALU1|Mux5~1_combout\))) ) ) ) # ( !\dp1|ACC1|Aout[2]~5_combout\ & ( !\dp1|ALU1|Mux4~1_combout\ & ( (\dp1|ACC1|Aout[2]~4_combout\) # (\dp1|RF1|RegFile~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111101010101111000000110011000000001010101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ALU1|ALT_INV_Mux6~2_combout\,
	datab => \dp1|RF1|ALT_INV_RegFile~3_combout\,
	datac => \dp1|ALU1|ALT_INV_Mux5~1_combout\,
	datad => \dp1|ACC1|ALT_INV_Aout[2]~4_combout\,
	datae => \dp1|ACC1|ALT_INV_Aout[2]~5_combout\,
	dataf => \dp1|ALU1|ALT_INV_Mux4~1_combout\,
	combout => \dp1|ACC1|Aout~8_combout\);

-- Location: IOIBUF_X89_Y36_N4
\Input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: LABCELL_X81_Y40_N42
\dp1|ACC1|Aout~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~9_combout\ = ( \dp1|MEM1|RAM~574_combout\ & ( \Input[2]~input_o\ & ( (!\rst~input_o\ & ((\c1|Asel\(1)) # (\dp1|ACC1|Aout~8_combout\))) ) ) ) # ( !\dp1|MEM1|RAM~574_combout\ & ( \Input[2]~input_o\ & ( (!\rst~input_o\ & ((!\c1|Asel\(1) & 
-- (\dp1|ACC1|Aout~8_combout\)) # (\c1|Asel\(1) & ((!\c1|Asel\(0)))))) ) ) ) # ( \dp1|MEM1|RAM~574_combout\ & ( !\Input[2]~input_o\ & ( (!\rst~input_o\ & ((!\c1|Asel\(1) & (\dp1|ACC1|Aout~8_combout\)) # (\c1|Asel\(1) & ((\c1|Asel\(0)))))) ) ) ) # ( 
-- !\dp1|MEM1|RAM~574_combout\ & ( !\Input[2]~input_o\ & ( (\dp1|ACC1|Aout~8_combout\ & (!\c1|Asel\(1) & !\rst~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100110000000001011100000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout~8_combout\,
	datab => \c1|ALT_INV_Asel\(0),
	datac => \c1|ALT_INV_Asel\(1),
	datad => \ALT_INV_rst~input_o\,
	datae => \dp1|MEM1|ALT_INV_RAM~574_combout\,
	dataf => \ALT_INV_Input[2]~input_o\,
	combout => \dp1|ACC1|Aout~9_combout\);

-- Location: FF_X81_Y40_N44
\dp1|ACC1|Aout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|ACC1|Aout~9_combout\,
	ena => \dp1|ACC1|Aout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|ACC1|Aout\(2));

-- Location: FF_X81_Y40_N2
\dp1|RF1|RegFile_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(7));

-- Location: LABCELL_X81_Y40_N0
\dp1|RF1|RegFile~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|RF1|RegFile~2_combout\ = ( \dp1|RF1|RegFile_rtl_0_bypass\(5) & ( (!\dp1|RF1|RegFile_rtl_0_bypass\(6) & (((\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (\dp1|RF1|RegFile_rtl_0_bypass\(6) & ((!\dp1|RF1|RegFile~0_combout\ & 
-- (\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (\dp1|RF1|RegFile~0_combout\ & ((\dp1|RF1|RegFile_rtl_0_bypass\(7)))))) ) ) # ( !\dp1|RF1|RegFile_rtl_0_bypass\(5) & ( (!\dp1|RF1|RegFile_rtl_0_bypass\(6) & 
-- ((!\dp1|RF1|RegFile~0_combout\ & (\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (\dp1|RF1|RegFile~0_combout\ & ((\dp1|RF1|RegFile_rtl_0_bypass\(7)))))) # (\dp1|RF1|RegFile_rtl_0_bypass\(6) & 
-- (((\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(6),
	datab => \dp1|RF1|ALT_INV_RegFile~0_combout\,
	datac => \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datad => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(7),
	dataf => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(5),
	combout => \dp1|RF1|RegFile~2_combout\);

-- Location: LABCELL_X81_Y38_N9
\dp1|ALU1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux7~0_combout\ = ( \dp1|ACC1|Aout\(0) & ( \dp1|RF1|RegFile~2_combout\ & ( (!\c1|ALUsel[0]~6_combout\ & (!\c1|ALUsel[1]~5_combout\ $ (((!\c1|state.010~q\) # (\c1|ALUsel~1_combout\))))) # (\c1|ALUsel[0]~6_combout\ & (((!\c1|ALUsel~1_combout\ & 
-- !\c1|ALUsel[1]~5_combout\)))) ) ) ) # ( !\dp1|ACC1|Aout\(0) & ( \dp1|RF1|RegFile~2_combout\ & ( (!\c1|ALUsel[1]~5_combout\ & ((!\c1|ALUsel[0]~6_combout\ & (\c1|state.010~q\ & !\c1|ALUsel~1_combout\)) # (\c1|ALUsel[0]~6_combout\ & 
-- ((\c1|ALUsel~1_combout\))))) ) ) ) # ( \dp1|ACC1|Aout\(0) & ( !\dp1|RF1|RegFile~2_combout\ & ( (!\c1|ALUsel[0]~6_combout\ & (!\c1|ALUsel[1]~5_combout\ $ (((!\c1|state.010~q\) # (\c1|ALUsel~1_combout\))))) # (\c1|ALUsel[0]~6_combout\ & (!\c1|state.010~q\ & 
-- (!\c1|ALUsel~1_combout\ & !\c1|ALUsel[1]~5_combout\))) ) ) ) # ( !\dp1|ACC1|Aout\(0) & ( !\dp1|RF1|RegFile~2_combout\ & ( (\c1|ALUsel[0]~6_combout\ & (\c1|ALUsel~1_combout\ & !\c1|ALUsel[1]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000011000001000101000100101000000000111000010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[0]~6_combout\,
	datab => \c1|ALT_INV_state.010~q\,
	datac => \c1|ALT_INV_ALUsel~1_combout\,
	datad => \c1|ALT_INV_ALUsel[1]~5_combout\,
	datae => \dp1|ACC1|ALT_INV_Aout\(0),
	dataf => \dp1|RF1|ALT_INV_RegFile~2_combout\,
	combout => \dp1|ALU1|Mux7~0_combout\);

-- Location: LABCELL_X81_Y40_N30
\dp1|ALU1|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux7~1_combout\ = ( \dp1|ALU1|Add0~5_sumout\ & ( (!\dp1|ALU1|Mux6~0_combout\ & !\dp1|ALU1|Mux7~0_combout\) ) ) # ( !\dp1|ALU1|Add0~5_sumout\ & ( !\dp1|ALU1|Mux7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ALU1|ALT_INV_Mux6~0_combout\,
	datac => \dp1|ALU1|ALT_INV_Mux7~0_combout\,
	dataf => \dp1|ALU1|ALT_INV_Add0~5_sumout\,
	combout => \dp1|ALU1|Mux7~1_combout\);

-- Location: LABCELL_X80_Y38_N21
\dp1|ALU1|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux6~1_combout\ = ( \c1|ALUsel[1]~5_combout\ & ( \c1|state.010~q\ & ( (\dp1|ACC1|Aout\(1) & (\c1|ALUsel~1_combout\ & !\c1|ALUsel[0]~6_combout\)) ) ) ) # ( !\c1|ALUsel[1]~5_combout\ & ( \c1|state.010~q\ & ( (!\dp1|ACC1|Aout\(1) & 
-- ((!\c1|ALUsel~1_combout\ & (!\c1|ALUsel[0]~6_combout\ & \dp1|RF1|RegFile~1_combout\)) # (\c1|ALUsel~1_combout\ & (\c1|ALUsel[0]~6_combout\)))) # (\dp1|ACC1|Aout\(1) & (!\c1|ALUsel~1_combout\ & ((!\c1|ALUsel[0]~6_combout\) # 
-- (\dp1|RF1|RegFile~1_combout\)))) ) ) ) # ( \c1|ALUsel[1]~5_combout\ & ( !\c1|state.010~q\ & ( (\dp1|ACC1|Aout\(1) & !\c1|ALUsel[0]~6_combout\) ) ) ) # ( !\c1|ALUsel[1]~5_combout\ & ( !\c1|state.010~q\ & ( (\c1|ALUsel[0]~6_combout\ & (!\dp1|ACC1|Aout\(1) $ 
-- (!\c1|ALUsel~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110010100000101000001000010110001100001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(1),
	datab => \c1|ALT_INV_ALUsel~1_combout\,
	datac => \c1|ALT_INV_ALUsel[0]~6_combout\,
	datad => \dp1|RF1|ALT_INV_RegFile~1_combout\,
	datae => \c1|ALT_INV_ALUsel[1]~5_combout\,
	dataf => \c1|ALT_INV_state.010~q\,
	combout => \dp1|ALU1|Mux6~1_combout\);

-- Location: LABCELL_X80_Y39_N45
\dp1|SH1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|SH1|Mux7~0_combout\ = ( \dp1|ALU1|Mux6~0_combout\ & ( \c1|SHsel[0]~2_combout\ & ( (!\c1|SHsel[1]~1_combout\ & ((\dp1|ALU1|Mux6~1_combout\) # (\dp1|ALU1|Add0~1_sumout\))) ) ) ) # ( !\dp1|ALU1|Mux6~0_combout\ & ( \c1|SHsel[0]~2_combout\ & ( 
-- (!\c1|SHsel[1]~1_combout\ & \dp1|ALU1|Mux6~1_combout\) ) ) ) # ( \dp1|ALU1|Mux6~0_combout\ & ( !\c1|SHsel[0]~2_combout\ & ( (!\c1|SHsel[1]~1_combout\ & (!\dp1|ALU1|Mux7~1_combout\)) # (\c1|SHsel[1]~1_combout\ & (((\dp1|ALU1|Mux6~1_combout\) # 
-- (\dp1|ALU1|Add0~1_sumout\)))) ) ) ) # ( !\dp1|ALU1|Mux6~0_combout\ & ( !\c1|SHsel[0]~2_combout\ & ( (!\c1|SHsel[1]~1_combout\ & (!\dp1|ALU1|Mux7~1_combout\)) # (\c1|SHsel[1]~1_combout\ & ((\dp1|ALU1|Mux6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010111011100010111011101100000000110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ALU1|ALT_INV_Mux7~1_combout\,
	datab => \c1|ALT_INV_SHsel[1]~1_combout\,
	datac => \dp1|ALU1|ALT_INV_Add0~1_sumout\,
	datad => \dp1|ALU1|ALT_INV_Mux6~1_combout\,
	datae => \dp1|ALU1|ALT_INV_Mux6~0_combout\,
	dataf => \c1|ALT_INV_SHsel[0]~2_combout\,
	combout => \dp1|SH1|Mux7~0_combout\);

-- Location: LABCELL_X80_Y39_N6
\dp1|AM1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|AM1|Mux7~0_combout\ = ( \c1|Asel\(0) & ( \dp1|SH1|Mux7~0_combout\ & ( (!\c1|Asel\(1) & ((\dp1|RF1|RegFile~2_combout\))) # (\c1|Asel\(1) & (\dp1|MEM1|RAM~532_combout\)) ) ) ) # ( !\c1|Asel\(0) & ( \dp1|SH1|Mux7~0_combout\ & ( (!\c1|Asel\(1)) # 
-- (\Input[0]~input_o\) ) ) ) # ( \c1|Asel\(0) & ( !\dp1|SH1|Mux7~0_combout\ & ( (!\c1|Asel\(1) & ((\dp1|RF1|RegFile~2_combout\))) # (\c1|Asel\(1) & (\dp1|MEM1|RAM~532_combout\)) ) ) ) # ( !\c1|Asel\(0) & ( !\dp1|SH1|Mux7~0_combout\ & ( (\c1|Asel\(1) & 
-- \Input[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_Asel\(1),
	datab => \ALT_INV_Input[0]~input_o\,
	datac => \dp1|MEM1|ALT_INV_RAM~532_combout\,
	datad => \dp1|RF1|ALT_INV_RegFile~2_combout\,
	datae => \c1|ALT_INV_Asel\(0),
	dataf => \dp1|SH1|ALT_INV_Mux7~0_combout\,
	combout => \dp1|AM1|Mux7~0_combout\);

-- Location: FF_X80_Y39_N8
\dp1|ACC1|Aout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|AM1|Mux7~0_combout\,
	sclr => \rst~input_o\,
	ena => \dp1|ACC1|Aout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|ACC1|Aout\(0));

-- Location: LABCELL_X81_Y40_N54
\dp1|RF1|RegFile~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|RF1|RegFile~7_combout\ = ( \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a6\ & ( (!\dp1|RF1|RegFile~0_combout\) # ((!\dp1|RF1|RegFile_rtl_0_bypass\(6) $ (!\dp1|RF1|RegFile_rtl_0_bypass\(5))) # (\dp1|RF1|RegFile_rtl_0_bypass\(13))) ) ) # ( 
-- !\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a6\ & ( (\dp1|RF1|RegFile~0_combout\ & (\dp1|RF1|RegFile_rtl_0_bypass\(13) & (!\dp1|RF1|RegFile_rtl_0_bypass\(6) $ (\dp1|RF1|RegFile_rtl_0_bypass\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100001000000000010000111011110111111111101111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(6),
	datab => \dp1|RF1|ALT_INV_RegFile~0_combout\,
	datac => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(5),
	datad => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(13),
	dataf => \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \dp1|RF1|RegFile~7_combout\);

-- Location: LABCELL_X83_Y38_N45
\dp1|ALU1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux1~0_combout\ = ( \dp1|ACC1|Aout\(6) & ( \dp1|RF1|RegFile~7_combout\ & ( (!\c1|ALUsel[0]~6_combout\ & (!\c1|ALUsel[1]~5_combout\ $ (((!\c1|state.010~q\) # (\c1|ALUsel~1_combout\))))) # (\c1|ALUsel[0]~6_combout\ & (!\c1|ALUsel[1]~5_combout\ & 
-- ((!\c1|ALUsel~1_combout\)))) ) ) ) # ( !\dp1|ACC1|Aout\(6) & ( \dp1|RF1|RegFile~7_combout\ & ( (!\c1|ALUsel[1]~5_combout\ & ((!\c1|ALUsel[0]~6_combout\ & (\c1|state.010~q\ & !\c1|ALUsel~1_combout\)) # (\c1|ALUsel[0]~6_combout\ & 
-- ((\c1|ALUsel~1_combout\))))) ) ) ) # ( \dp1|ACC1|Aout\(6) & ( !\dp1|RF1|RegFile~7_combout\ & ( (!\c1|ALUsel[1]~5_combout\ & (!\c1|ALUsel~1_combout\ & (!\c1|ALUsel[0]~6_combout\ $ (!\c1|state.010~q\)))) # (\c1|ALUsel[1]~5_combout\ & 
-- (!\c1|ALUsel[0]~6_combout\ & ((!\c1|state.010~q\) # (\c1|ALUsel~1_combout\)))) ) ) ) # ( !\dp1|ACC1|Aout\(6) & ( !\dp1|RF1|RegFile~7_combout\ & ( (!\c1|ALUsel[1]~5_combout\ & (\c1|ALUsel[0]~6_combout\ & \c1|ALUsel~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010011010000100010000001000001000100110101001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[1]~5_combout\,
	datab => \c1|ALT_INV_ALUsel[0]~6_combout\,
	datac => \c1|ALT_INV_state.010~q\,
	datad => \c1|ALT_INV_ALUsel~1_combout\,
	datae => \dp1|ACC1|ALT_INV_Aout\(6),
	dataf => \dp1|RF1|ALT_INV_RegFile~7_combout\,
	combout => \dp1|ALU1|Mux1~0_combout\);

-- Location: LABCELL_X81_Y38_N48
\dp1|ALU1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Add0~21_sumout\ = SUM(( (!\c1|ALUsel[2]~8_combout\ & (!\c1|ALUsel[0]~6_combout\ $ (((\dp1|RF1|RegFile~6_combout\))))) # (\c1|ALUsel[2]~8_combout\ & (((\c1|ALUsel[1]~5_combout\)))) ) + ( \dp1|ACC1|Aout\(5) ) + ( \dp1|ALU1|Add0~18\ ))
-- \dp1|ALU1|Add0~22\ = CARRY(( (!\c1|ALUsel[2]~8_combout\ & (!\c1|ALUsel[0]~6_combout\ $ (((\dp1|RF1|RegFile~6_combout\))))) # (\c1|ALUsel[2]~8_combout\ & (((\c1|ALUsel[1]~5_combout\)))) ) + ( \dp1|ACC1|Aout\(5) ) + ( \dp1|ALU1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000110100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[2]~8_combout\,
	datab => \c1|ALT_INV_ALUsel[0]~6_combout\,
	datac => \c1|ALT_INV_ALUsel[1]~5_combout\,
	datad => \dp1|RF1|ALT_INV_RegFile~6_combout\,
	dataf => \dp1|ACC1|ALT_INV_Aout\(5),
	cin => \dp1|ALU1|Add0~18\,
	sumout => \dp1|ALU1|Add0~21_sumout\,
	cout => \dp1|ALU1|Add0~22\);

-- Location: LABCELL_X81_Y38_N51
\dp1|ALU1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Add0~25_sumout\ = SUM(( (!\c1|ALUsel[2]~8_combout\ & (!\c1|ALUsel[0]~6_combout\ $ (((\dp1|RF1|RegFile~7_combout\))))) # (\c1|ALUsel[2]~8_combout\ & (((\c1|ALUsel[1]~5_combout\)))) ) + ( \dp1|ACC1|Aout\(6) ) + ( \dp1|ALU1|Add0~22\ ))
-- \dp1|ALU1|Add0~26\ = CARRY(( (!\c1|ALUsel[2]~8_combout\ & (!\c1|ALUsel[0]~6_combout\ $ (((\dp1|RF1|RegFile~7_combout\))))) # (\c1|ALUsel[2]~8_combout\ & (((\c1|ALUsel[1]~5_combout\)))) ) + ( \dp1|ACC1|Aout\(6) ) + ( \dp1|ALU1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000110100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[2]~8_combout\,
	datab => \c1|ALT_INV_ALUsel[0]~6_combout\,
	datac => \c1|ALT_INV_ALUsel[1]~5_combout\,
	datad => \dp1|RF1|ALT_INV_RegFile~7_combout\,
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	cin => \dp1|ALU1|Add0~22\,
	sumout => \dp1|ALU1|Add0~25_sumout\,
	cout => \dp1|ALU1|Add0~26\);

-- Location: MLABCELL_X82_Y38_N54
\dp1|ALU1|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux1~1_combout\ = ( \dp1|ALU1|Add0~25_sumout\ & ( (!\dp1|ALU1|Mux1~0_combout\ & !\dp1|ALU1|Mux6~0_combout\) ) ) # ( !\dp1|ALU1|Add0~25_sumout\ & ( !\dp1|ALU1|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ALU1|ALT_INV_Mux1~0_combout\,
	datad => \dp1|ALU1|ALT_INV_Mux6~0_combout\,
	dataf => \dp1|ALU1|ALT_INV_Add0~25_sumout\,
	combout => \dp1|ALU1|Mux1~1_combout\);

-- Location: FF_X81_Y40_N59
\dp1|RF1|RegFile_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(14));

-- Location: LABCELL_X81_Y40_N57
\dp1|RF1|RegFile~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|RF1|RegFile~8_combout\ = ( \dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a7\ & ( (!\dp1|RF1|RegFile~0_combout\) # ((!\dp1|RF1|RegFile_rtl_0_bypass\(6) $ (!\dp1|RF1|RegFile_rtl_0_bypass\(5))) # (\dp1|RF1|RegFile_rtl_0_bypass\(14))) ) ) # ( 
-- !\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a7\ & ( (\dp1|RF1|RegFile~0_combout\ & (\dp1|RF1|RegFile_rtl_0_bypass\(14) & (!\dp1|RF1|RegFile_rtl_0_bypass\(6) $ (\dp1|RF1|RegFile_rtl_0_bypass\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100001000000000010000111011110111111111101111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(6),
	datab => \dp1|RF1|ALT_INV_RegFile~0_combout\,
	datac => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(5),
	datad => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(14),
	dataf => \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \dp1|RF1|RegFile~8_combout\);

-- Location: LABCELL_X83_Y40_N45
\dp1|ALU1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux0~0_combout\ = ( \dp1|ACC1|Aout\(7) & ( \dp1|RF1|RegFile~8_combout\ & ( (!\c1|ALUsel[0]~6_combout\ & (!\c1|ALUsel[1]~5_combout\ $ (((!\c1|state.010~q\) # (\c1|ALUsel~1_combout\))))) # (\c1|ALUsel[0]~6_combout\ & (((!\c1|ALUsel~1_combout\ & 
-- !\c1|ALUsel[1]~5_combout\)))) ) ) ) # ( !\dp1|ACC1|Aout\(7) & ( \dp1|RF1|RegFile~8_combout\ & ( (!\c1|ALUsel[1]~5_combout\ & ((!\c1|ALUsel[0]~6_combout\ & (\c1|state.010~q\ & !\c1|ALUsel~1_combout\)) # (\c1|ALUsel[0]~6_combout\ & 
-- ((\c1|ALUsel~1_combout\))))) ) ) ) # ( \dp1|ACC1|Aout\(7) & ( !\dp1|RF1|RegFile~8_combout\ & ( (!\c1|ALUsel[0]~6_combout\ & (!\c1|ALUsel[1]~5_combout\ $ (((!\c1|state.010~q\) # (\c1|ALUsel~1_combout\))))) # (\c1|ALUsel[0]~6_combout\ & (!\c1|state.010~q\ & 
-- (!\c1|ALUsel~1_combout\ & !\c1|ALUsel[1]~5_combout\))) ) ) ) # ( !\dp1|ACC1|Aout\(7) & ( !\dp1|RF1|RegFile~8_combout\ & ( (\c1|ALUsel[0]~6_combout\ & (\c1|ALUsel~1_combout\ & !\c1|ALUsel[1]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000011000001000101000100101000000000111000010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[0]~6_combout\,
	datab => \c1|ALT_INV_state.010~q\,
	datac => \c1|ALT_INV_ALUsel~1_combout\,
	datad => \c1|ALT_INV_ALUsel[1]~5_combout\,
	datae => \dp1|ACC1|ALT_INV_Aout\(7),
	dataf => \dp1|RF1|ALT_INV_RegFile~8_combout\,
	combout => \dp1|ALU1|Mux0~0_combout\);

-- Location: LABCELL_X81_Y38_N54
\dp1|ALU1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Add0~29_sumout\ = SUM(( (!\c1|ALUsel[2]~8_combout\ & (!\c1|ALUsel[0]~6_combout\ $ (((\dp1|RF1|RegFile~8_combout\))))) # (\c1|ALUsel[2]~8_combout\ & (((\c1|ALUsel[1]~5_combout\)))) ) + ( \dp1|ACC1|Aout\(7) ) + ( \dp1|ALU1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000101101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[0]~6_combout\,
	datab => \c1|ALT_INV_ALUsel[2]~8_combout\,
	datac => \c1|ALT_INV_ALUsel[1]~5_combout\,
	datad => \dp1|RF1|ALT_INV_RegFile~8_combout\,
	dataf => \dp1|ACC1|ALT_INV_Aout\(7),
	cin => \dp1|ALU1|Add0~26\,
	sumout => \dp1|ALU1|Add0~29_sumout\);

-- Location: MLABCELL_X82_Y37_N0
\dp1|ALU1|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux0~1_combout\ = ( \dp1|ALU1|Mux6~0_combout\ & ( (!\dp1|ALU1|Mux0~0_combout\ & !\dp1|ALU1|Add0~29_sumout\) ) ) # ( !\dp1|ALU1|Mux6~0_combout\ & ( !\dp1|ALU1|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ALU1|ALT_INV_Mux0~0_combout\,
	datab => \dp1|ALU1|ALT_INV_Add0~29_sumout\,
	dataf => \dp1|ALU1|ALT_INV_Mux6~0_combout\,
	combout => \dp1|ALU1|Mux0~1_combout\);

-- Location: LABCELL_X83_Y37_N54
\dp1|ACC1|Aout~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~16_combout\ = ( \dp1|RF1|RegFile~7_combout\ & ( \dp1|ALU1|Mux0~1_combout\ & ( (!\dp1|ACC1|Aout[2]~5_combout\ & (((!\dp1|ACC1|Aout[2]~4_combout\)))) # (\dp1|ACC1|Aout[2]~5_combout\ & ((!\dp1|ACC1|Aout[2]~4_combout\ & 
-- (!\dp1|ALU1|Mux2~1_combout\)) # (\dp1|ACC1|Aout[2]~4_combout\ & ((!\dp1|ALU1|Mux1~1_combout\))))) ) ) ) # ( !\dp1|RF1|RegFile~7_combout\ & ( \dp1|ALU1|Mux0~1_combout\ & ( (\dp1|ACC1|Aout[2]~5_combout\ & ((!\dp1|ACC1|Aout[2]~4_combout\ & 
-- (!\dp1|ALU1|Mux2~1_combout\)) # (\dp1|ACC1|Aout[2]~4_combout\ & ((!\dp1|ALU1|Mux1~1_combout\))))) ) ) ) # ( \dp1|RF1|RegFile~7_combout\ & ( !\dp1|ALU1|Mux0~1_combout\ & ( (!\dp1|ACC1|Aout[2]~5_combout\) # ((!\dp1|ACC1|Aout[2]~4_combout\ & 
-- (!\dp1|ALU1|Mux2~1_combout\)) # (\dp1|ACC1|Aout[2]~4_combout\ & ((!\dp1|ALU1|Mux1~1_combout\)))) ) ) ) # ( !\dp1|RF1|RegFile~7_combout\ & ( !\dp1|ALU1|Mux0~1_combout\ & ( (!\dp1|ACC1|Aout[2]~5_combout\ & (((\dp1|ACC1|Aout[2]~4_combout\)))) # 
-- (\dp1|ACC1|Aout[2]~5_combout\ & ((!\dp1|ACC1|Aout[2]~4_combout\ & (!\dp1|ALU1|Mux2~1_combout\)) # (\dp1|ACC1|Aout[2]~4_combout\ & ((!\dp1|ALU1|Mux1~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111100111110101111110000001010000011001111101000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ALU1|ALT_INV_Mux2~1_combout\,
	datab => \dp1|ALU1|ALT_INV_Mux1~1_combout\,
	datac => \dp1|ACC1|ALT_INV_Aout[2]~5_combout\,
	datad => \dp1|ACC1|ALT_INV_Aout[2]~4_combout\,
	datae => \dp1|RF1|ALT_INV_RegFile~7_combout\,
	dataf => \dp1|ALU1|ALT_INV_Mux0~1_combout\,
	combout => \dp1|ACC1|Aout~16_combout\);

-- Location: IOIBUF_X89_Y35_N95
\Input[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(6),
	o => \Input[6]~input_o\);

-- Location: MLABCELL_X84_Y37_N42
\dp1|ACC1|Aout~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~17_combout\ = ( \c1|Asel\(0) & ( \dp1|MEM1|RAM~616_combout\ & ( (!\rst~input_o\ & ((\dp1|ACC1|Aout~16_combout\) # (\c1|Asel\(1)))) ) ) ) # ( !\c1|Asel\(0) & ( \dp1|MEM1|RAM~616_combout\ & ( (!\rst~input_o\ & ((!\c1|Asel\(1) & 
-- (\dp1|ACC1|Aout~16_combout\)) # (\c1|Asel\(1) & ((\Input[6]~input_o\))))) ) ) ) # ( \c1|Asel\(0) & ( !\dp1|MEM1|RAM~616_combout\ & ( (!\c1|Asel\(1) & (\dp1|ACC1|Aout~16_combout\ & !\rst~input_o\)) ) ) ) # ( !\c1|Asel\(0) & ( !\dp1|MEM1|RAM~616_combout\ & 
-- ( (!\rst~input_o\ & ((!\c1|Asel\(1) & (\dp1|ACC1|Aout~16_combout\)) # (\c1|Asel\(1) & ((\Input[6]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001000100000000000100111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_Asel\(1),
	datab => \dp1|ACC1|ALT_INV_Aout~16_combout\,
	datac => \ALT_INV_Input[6]~input_o\,
	datad => \ALT_INV_rst~input_o\,
	datae => \c1|ALT_INV_Asel\(0),
	dataf => \dp1|MEM1|ALT_INV_RAM~616_combout\,
	combout => \dp1|ACC1|Aout~17_combout\);

-- Location: FF_X84_Y37_N44
\dp1|ACC1|Aout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|ACC1|Aout~17_combout\,
	ena => \dp1|ACC1|Aout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|ACC1|Aout\(6));

-- Location: LABCELL_X85_Y40_N0
\c1|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector3~1_combout\ = ( \dp1|ACC1|Aout\(7) & ( \dp1|ACC1|Aout\(0) & ( !\c1|Selector3~0_combout\ $ (\dp1|IR1|InstrReg\(6)) ) ) ) # ( !\dp1|ACC1|Aout\(7) & ( \dp1|ACC1|Aout\(0) & ( !\c1|Selector3~0_combout\ $ (\dp1|IR1|InstrReg\(6)) ) ) ) # ( 
-- \dp1|ACC1|Aout\(7) & ( !\dp1|ACC1|Aout\(0) & ( !\c1|Selector3~0_combout\ $ (\dp1|IR1|InstrReg\(6)) ) ) ) # ( !\dp1|ACC1|Aout\(7) & ( !\dp1|ACC1|Aout\(0) & ( (!\c1|Selector3~0_combout\ & (!\dp1|IR1|InstrReg\(6))) # (\c1|Selector3~0_combout\ & 
-- (\dp1|IR1|InstrReg\(6) & ((!\dp1|NOR1~0_combout\) # (\dp1|ACC1|Aout\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100010011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_Selector3~0_combout\,
	datab => \dp1|IR1|ALT_INV_InstrReg\(6),
	datac => \dp1|ALT_INV_NOR1~0_combout\,
	datad => \dp1|ACC1|ALT_INV_Aout\(6),
	datae => \dp1|ACC1|ALT_INV_Aout\(7),
	dataf => \dp1|ACC1|ALT_INV_Aout\(0),
	combout => \c1|Selector3~1_combout\);

-- Location: LABCELL_X85_Y40_N36
\dp1|PC1|PCReg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|PC1|PCReg[0]~1_combout\ = ( \c1|Selector3~1_combout\ & ( \c1|state.001~q\ ) ) # ( !\c1|Selector3~1_combout\ & ( \c1|state.001~q\ ) ) # ( \c1|Selector3~1_combout\ & ( !\c1|state.001~q\ & ( ((\c1|Selector3~3_combout\ & \c1|state.010~q\)) # 
-- (\rst~input_o\) ) ) ) # ( !\c1|Selector3~1_combout\ & ( !\c1|state.001~q\ & ( ((\c1|state.010~q\ & ((!\dp1|IR1|InstrReg\(7)) # (\c1|Selector3~3_combout\)))) # (\rst~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100011111000111110001111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_Selector3~3_combout\,
	datab => \c1|ALT_INV_state.010~q\,
	datac => \ALT_INV_rst~input_o\,
	datad => \dp1|IR1|ALT_INV_InstrReg\(7),
	datae => \c1|ALT_INV_Selector3~1_combout\,
	dataf => \c1|ALT_INV_state.001~q\,
	combout => \dp1|PC1|PCReg[0]~1_combout\);

-- Location: FF_X80_Y39_N14
\dp1|PC1|PCReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|PC1|PCReg~0_combout\,
	sclr => \rst~input_o\,
	ena => \dp1|PC1|PCReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|PC1|PCReg\(0));

-- Location: MLABCELL_X84_Y38_N45
\c1|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector9~0_combout\ = ( !\dp1|IR1|InstrReg\(4) & ( (\c1|state.010~q\ & (!\dp1|IR1|InstrReg\(5) & (\dp1|IR1|InstrReg\(6) & !\dp1|IR1|InstrReg\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.010~q\,
	datab => \dp1|IR1|ALT_INV_InstrReg\(5),
	datac => \dp1|IR1|ALT_INV_InstrReg\(6),
	datad => \dp1|IR1|ALT_INV_InstrReg\(7),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(4),
	combout => \c1|Selector9~0_combout\);

-- Location: MLABCELL_X84_Y38_N42
\c1|nstate.100_320\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|nstate.100_320~combout\ = ( \c1|Selector9~0_combout\ & ( (\c1|Selector12~0_combout\) # (\c1|nstate.100_320~combout\) ) ) # ( !\c1|Selector9~0_combout\ & ( (\c1|nstate.100_320~combout\ & !\c1|Selector12~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_nstate.100_320~combout\,
	datad => \c1|ALT_INV_Selector12~0_combout\,
	dataf => \c1|ALT_INV_Selector9~0_combout\,
	combout => \c1|nstate.100_320~combout\);

-- Location: MLABCELL_X82_Y39_N33
\c1|state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|state~10_combout\ = ( \c1|nstate.100_320~combout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	dataf => \c1|ALT_INV_nstate.100_320~combout\,
	combout => \c1|state~10_combout\);

-- Location: FF_X82_Y39_N35
\c1|state.100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkin~combout\,
	d => \c1|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|state.100~q\);

-- Location: MLABCELL_X82_Y39_N45
\dp1|MIM1|out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MIM1|out[0]~0_combout\ = ( \c1|state.100~q\ & ( \dp1|MA1|Addr\(0) ) ) # ( !\c1|state.100~q\ & ( (!\c1|state.011~q\ & ((\dp1|PC1|PCReg\(0)))) # (\c1|state.011~q\ & (\dp1|MA1|Addr\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MA1|ALT_INV_Addr\(0),
	datac => \c1|ALT_INV_state.011~q\,
	datad => \dp1|PC1|ALT_INV_PCReg\(0),
	dataf => \c1|ALT_INV_state.100~q\,
	combout => \dp1|MIM1|out[0]~0_combout\);

-- Location: LABCELL_X79_Y40_N51
\dp1|MEM1|RAM~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~770_combout\ = ( \dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MIM1|out[2]~2_combout\ & (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MIM1|out[1]~1_combout\ & \dp1|MIM1|out[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~770_combout\);

-- Location: LABCELL_X79_Y40_N54
\dp1|MEM1|RAM~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~771_combout\ = ( \dp1|MEM1|RAM~770_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~770_combout\,
	combout => \dp1|MEM1|RAM~771_combout\);

-- Location: FF_X79_Y40_N56
\dp1|MEM1|RAM~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~771_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~312_q\);

-- Location: LABCELL_X79_Y40_N9
\dp1|MEM1|RAM~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~768_combout\ = ( \dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MIM1|out[0]~0_combout\ & (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MIM1|out[1]~1_combout\ & !\dp1|MIM1|out[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~768_combout\);

-- Location: LABCELL_X79_Y40_N15
\dp1|MEM1|RAM~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~769_combout\ = ( \dp1|MEM1|RAM~768_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~768_combout\,
	combout => \dp1|MEM1|RAM~769_combout\);

-- Location: FF_X79_Y40_N17
\dp1|MEM1|RAM~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~769_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~280_q\);

-- Location: MLABCELL_X78_Y40_N42
\dp1|MEM1|RAM~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~772_combout\ = ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MIM1|out[0]~0_combout\ & \dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~772_combout\);

-- Location: MLABCELL_X78_Y40_N9
\dp1|MEM1|RAM~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~773_combout\ = ( \dp1|MEM1|RAM~772_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~772_combout\,
	combout => \dp1|MEM1|RAM~773_combout\);

-- Location: FF_X78_Y40_N10
\dp1|MEM1|RAM~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~773_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~344_q\);

-- Location: MLABCELL_X78_Y39_N6
\dp1|MEM1|RAM~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~774_combout\ = ( \dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MIM1|out[3]~3_combout\ & \dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~774_combout\);

-- Location: MLABCELL_X78_Y39_N30
\dp1|MEM1|RAM~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~775_combout\ = ( \dp1|MEM1|RAM~774_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~774_combout\,
	combout => \dp1|MEM1|RAM~775_combout\);

-- Location: FF_X79_Y40_N2
\dp1|MEM1|RAM~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~775_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~376_q\);

-- Location: LABCELL_X79_Y40_N0
\dp1|MEM1|RAM~525\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~525_combout\ = ( \dp1|MEM1|RAM~376_q\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MEM1|RAM~344_q\) # (\dp1|MIM1|out[2]~2_combout\) ) ) ) # ( !\dp1|MEM1|RAM~376_q\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & 
-- \dp1|MEM1|RAM~344_q\) ) ) ) # ( \dp1|MEM1|RAM~376_q\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~280_q\))) # (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~312_q\)) ) ) ) # ( !\dp1|MEM1|RAM~376_q\ & ( 
-- !\dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~280_q\))) # (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~312_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~312_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~280_q\,
	datac => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~344_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~376_q\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~525_combout\);

-- Location: MLABCELL_X78_Y39_N39
\dp1|MEM1|RAM~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~750_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[1]~1_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[2]~2_combout\ & (!\dp1|MIM1|out[0]~0_combout\ & !\dp1|MIM1|out[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	combout => \dp1|MEM1|RAM~750_combout\);

-- Location: MLABCELL_X78_Y39_N57
\dp1|MEM1|RAM~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~751_combout\ = ( \dp1|MEM1|RAM~750_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~750_combout\,
	combout => \dp1|MEM1|RAM~751_combout\);

-- Location: FF_X79_Y38_N13
\dp1|MEM1|RAM~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~751_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~352_q\);

-- Location: LABCELL_X80_Y37_N33
\dp1|MEM1|RAM~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~746_combout\ = ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MIM1|out[5]~5_combout\ & !\dp1|MIM1|out[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~746_combout\);

-- Location: LABCELL_X80_Y37_N12
\dp1|MEM1|RAM~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~747_combout\ = ( \dp1|MEM1|RAM~746_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~746_combout\,
	combout => \dp1|MEM1|RAM~747_combout\);

-- Location: FF_X80_Y37_N31
\dp1|MEM1|RAM~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~288_q\);

-- Location: LABCELL_X80_Y40_N24
\dp1|MEM1|RAM~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~744_combout\ = ( !\dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MIM1|out[1]~1_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MIM1|out[5]~5_combout\ & !\dp1|MIM1|out[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	combout => \dp1|MEM1|RAM~744_combout\);

-- Location: LABCELL_X80_Y40_N21
\dp1|MEM1|RAM~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~745_combout\ = ( \dp1|MEM1|RAM~744_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~744_combout\,
	combout => \dp1|MEM1|RAM~745_combout\);

-- Location: FF_X80_Y40_N19
\dp1|MEM1|RAM~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~256_q\);

-- Location: LABCELL_X80_Y36_N42
\dp1|MEM1|RAM~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~748_combout\ = ( !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[0]~0_combout\ & !\dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~748_combout\);

-- Location: LABCELL_X80_Y36_N12
\dp1|MEM1|RAM~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~749_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~748_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~748_combout\,
	combout => \dp1|MEM1|RAM~749_combout\);

-- Location: FF_X80_Y36_N46
\dp1|MEM1|RAM~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~749_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~320_q\);

-- Location: LABCELL_X79_Y39_N3
\dp1|MEM1|RAM~522\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~522_combout\ = ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~352_q\ ) ) ) # ( !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~320_q\ ) ) ) # ( \dp1|MIM1|out[2]~2_combout\ & ( 
-- !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~288_q\ ) ) ) # ( !\dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~256_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~352_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~288_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~256_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~320_q\,
	datae => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~522_combout\);

-- Location: MLABCELL_X78_Y40_N39
\dp1|MEM1|RAM~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~752_combout\ = ( !\dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MIM1|out[5]~5_combout\ & !\dp1|MIM1|out[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~752_combout\);

-- Location: MLABCELL_X78_Y40_N0
\dp1|MEM1|RAM~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~753_combout\ = ( \dp1|MEM1|RAM~752_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~752_combout\,
	combout => \dp1|MEM1|RAM~753_combout\);

-- Location: FF_X87_Y40_N16
\dp1|MEM1|RAM~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~753_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~264_q\);

-- Location: LABCELL_X85_Y41_N39
\dp1|MEM1|RAM~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~756_combout\ = ( \dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MIM1|out[3]~3_combout\ & (!\dp1|MIM1|out[4]~4_combout\ & !\dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~756_combout\);

-- Location: LABCELL_X85_Y41_N33
\dp1|MEM1|RAM~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~757_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~756_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~756_combout\,
	combout => \dp1|MEM1|RAM~757_combout\);

-- Location: FF_X85_Y41_N40
\dp1|MEM1|RAM~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~757_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~328_q\);

-- Location: MLABCELL_X78_Y41_N27
\dp1|MEM1|RAM~296feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~296feeder_combout\ = \dp1|ACC1|Aout\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(0),
	combout => \dp1|MEM1|RAM~296feeder_combout\);

-- Location: MLABCELL_X78_Y41_N36
\dp1|MEM1|RAM~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~754_combout\ = ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MIM1|out[4]~4_combout\ & \dp1|MIM1|out[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~754_combout\);

-- Location: MLABCELL_X78_Y41_N21
\dp1|MEM1|RAM~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~755_combout\ = ( \dp1|MEM1|RAM~754_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	datae => \dp1|MEM1|ALT_INV_RAM~754_combout\,
	combout => \dp1|MEM1|RAM~755_combout\);

-- Location: FF_X78_Y41_N28
\dp1|MEM1|RAM~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~296feeder_combout\,
	ena => \dp1|MEM1|RAM~755_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~296_q\);

-- Location: LABCELL_X79_Y38_N48
\dp1|MEM1|RAM~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~758_combout\ = ( \dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MIM1|out[1]~1_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MIM1|out[2]~2_combout\ & !\dp1|MIM1|out[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	combout => \dp1|MEM1|RAM~758_combout\);

-- Location: LABCELL_X79_Y38_N3
\dp1|MEM1|RAM~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~759_combout\ = ( \dp1|MEM1|RAM~758_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~758_combout\,
	combout => \dp1|MEM1|RAM~759_combout\);

-- Location: FF_X79_Y38_N44
\dp1|MEM1|RAM~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~759_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~360_q\);

-- Location: LABCELL_X79_Y38_N42
\dp1|MEM1|RAM~523\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~523_combout\ = ( \dp1|MEM1|RAM~360_q\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MIM1|out[2]~2_combout\) # (\dp1|MEM1|RAM~328_q\) ) ) ) # ( !\dp1|MEM1|RAM~360_q\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MEM1|RAM~328_q\ & 
-- !\dp1|MIM1|out[2]~2_combout\) ) ) ) # ( \dp1|MEM1|RAM~360_q\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~264_q\)) # (\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~296_q\))) ) ) ) # ( !\dp1|MEM1|RAM~360_q\ & ( 
-- !\dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~264_q\)) # (\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~296_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~264_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~328_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~296_q\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~360_q\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~523_combout\);

-- Location: LABCELL_X85_Y39_N42
\dp1|MEM1|RAM~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~764_combout\ = ( !\dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[0]~0_combout\ & \dp1|MIM1|out[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~764_combout\);

-- Location: LABCELL_X85_Y39_N0
\dp1|MEM1|RAM~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~765_combout\ = ( \dp1|MEM1|RAM~764_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~764_combout\,
	combout => \dp1|MEM1|RAM~765_combout\);

-- Location: FF_X83_Y40_N16
\dp1|MEM1|RAM~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~765_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~336_q\);

-- Location: LABCELL_X80_Y42_N51
\dp1|MEM1|RAM~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~760_combout\ = ( !\dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MIM1|out[1]~1_combout\ & \dp1|MIM1|out[5]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~760_combout\);

-- Location: LABCELL_X80_Y42_N39
\dp1|MEM1|RAM~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~761_combout\ = ( \dp1|MEM1|RAM~760_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~760_combout\,
	combout => \dp1|MEM1|RAM~761_combout\);

-- Location: FF_X80_Y42_N40
\dp1|MEM1|RAM~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~761_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~272_q\);

-- Location: MLABCELL_X78_Y39_N36
\dp1|MEM1|RAM~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~762_combout\ = ( \dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[2]~2_combout\ & (!\dp1|MIM1|out[4]~4_combout\ & !\dp1|MIM1|out[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~762_combout\);

-- Location: MLABCELL_X78_Y39_N15
\dp1|MEM1|RAM~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~763_combout\ = ( \dp1|MEM1|RAM~762_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	datae => \dp1|MEM1|ALT_INV_RAM~762_combout\,
	combout => \dp1|MEM1|RAM~763_combout\);

-- Location: FF_X80_Y41_N26
\dp1|MEM1|RAM~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~763_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~304_q\);

-- Location: LABCELL_X79_Y38_N51
\dp1|MEM1|RAM~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~766_combout\ = ( \dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[3]~3_combout\ & (!\dp1|MIM1|out[4]~4_combout\ & \dp1|MIM1|out[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~766_combout\);

-- Location: LABCELL_X79_Y38_N27
\dp1|MEM1|RAM~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~767_combout\ = ( \dp1|MEM1|RAM~766_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~766_combout\,
	combout => \dp1|MEM1|RAM~767_combout\);

-- Location: FF_X80_Y41_N20
\dp1|MEM1|RAM~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~767_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~368_q\);

-- Location: LABCELL_X80_Y41_N18
\dp1|MEM1|RAM~524\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~524_combout\ = ( \dp1|MEM1|RAM~368_q\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MIM1|out[2]~2_combout\) # (\dp1|MEM1|RAM~336_q\) ) ) ) # ( !\dp1|MEM1|RAM~368_q\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MEM1|RAM~336_q\ & 
-- !\dp1|MIM1|out[2]~2_combout\) ) ) ) # ( \dp1|MEM1|RAM~368_q\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~272_q\)) # (\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~304_q\))) ) ) ) # ( !\dp1|MEM1|RAM~368_q\ & ( 
-- !\dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~272_q\)) # (\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~304_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~336_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~272_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~304_q\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~368_q\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~524_combout\);

-- Location: LABCELL_X80_Y39_N54
\dp1|MEM1|RAM~526\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~526_combout\ = ( \dp1|MEM1|RAM~523_combout\ & ( \dp1|MEM1|RAM~524_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (((\dp1|MEM1|RAM~522_combout\)) # (\dp1|MIM1|out[1]~1_combout\))) # (\dp1|MIM1|out[0]~0_combout\ & ((!\dp1|MIM1|out[1]~1_combout\) 
-- # ((\dp1|MEM1|RAM~525_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~523_combout\ & ( \dp1|MEM1|RAM~524_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (((\dp1|MEM1|RAM~522_combout\)) # (\dp1|MIM1|out[1]~1_combout\))) # (\dp1|MIM1|out[0]~0_combout\ & 
-- (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~525_combout\))) ) ) ) # ( \dp1|MEM1|RAM~523_combout\ & ( !\dp1|MEM1|RAM~524_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~522_combout\)))) # 
-- (\dp1|MIM1|out[0]~0_combout\ & ((!\dp1|MIM1|out[1]~1_combout\) # ((\dp1|MEM1|RAM~525_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~523_combout\ & ( !\dp1|MEM1|RAM~524_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (!\dp1|MIM1|out[1]~1_combout\ & 
-- ((\dp1|MEM1|RAM~522_combout\)))) # (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~525_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~525_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~522_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~523_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~524_combout\,
	combout => \dp1|MEM1|RAM~526_combout\);

-- Location: MLABCELL_X84_Y42_N51
\dp1|MEM1|RAM~392feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~392feeder_combout\ = ( \dp1|ACC1|Aout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(0),
	combout => \dp1|MEM1|RAM~392feeder_combout\);

-- Location: MLABCELL_X82_Y40_N48
\dp1|MEM1|RAM~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~778_combout\ = ( !\dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MIM1|out[0]~0_combout\ & \dp1|MIM1|out[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~778_combout\);

-- Location: LABCELL_X83_Y42_N54
\dp1|MEM1|RAM~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~779_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~778_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~778_combout\,
	combout => \dp1|MEM1|RAM~779_combout\);

-- Location: FF_X84_Y42_N53
\dp1|MEM1|RAM~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~392feeder_combout\,
	ena => \dp1|MEM1|RAM~779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~392_q\);

-- Location: LABCELL_X80_Y42_N12
\dp1|MEM1|RAM~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~780_combout\ = ( !\dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MIM1|out[5]~5_combout\ & \dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~780_combout\);

-- Location: LABCELL_X80_Y42_N54
\dp1|MEM1|RAM~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~781_combout\ = ( \dp1|MEM1|RAM~780_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~780_combout\,
	combout => \dp1|MEM1|RAM~781_combout\);

-- Location: FF_X80_Y42_N55
\dp1|MEM1|RAM~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~781_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~400_q\);

-- Location: MLABCELL_X82_Y36_N6
\dp1|MEM1|RAM~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~776_combout\ = ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MIM1|out[4]~4_combout\ & !\dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~776_combout\);

-- Location: MLABCELL_X82_Y36_N51
\dp1|MEM1|RAM~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~777_combout\ = ( \dp1|MEM1|RAM~776_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~776_combout\,
	combout => \dp1|MEM1|RAM~777_combout\);

-- Location: FF_X82_Y36_N25
\dp1|MEM1|RAM~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~384_q\);

-- Location: MLABCELL_X84_Y39_N12
\dp1|MEM1|RAM~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~782_combout\ = ( !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MIM1|out[5]~5_combout\ & \dp1|MIM1|out[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~782_combout\);

-- Location: MLABCELL_X84_Y39_N24
\dp1|MEM1|RAM~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~783_combout\ = ( \dp1|MEM1|RAM~782_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~782_combout\,
	combout => \dp1|MEM1|RAM~783_combout\);

-- Location: FF_X84_Y39_N20
\dp1|MEM1|RAM~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~783_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~408_q\);

-- Location: MLABCELL_X84_Y39_N18
\dp1|MEM1|RAM~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~527_combout\ = ( \dp1|MEM1|RAM~408_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~392_q\) ) ) ) # ( !\dp1|MEM1|RAM~408_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MEM1|RAM~392_q\ & 
-- !\dp1|MIM1|out[1]~1_combout\) ) ) ) # ( \dp1|MEM1|RAM~408_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~384_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~400_q\)) ) ) ) # ( !\dp1|MEM1|RAM~408_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~384_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~400_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~392_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~400_q\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~384_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~408_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~527_combout\);

-- Location: MLABCELL_X84_Y37_N30
\dp1|MEM1|RAM~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~802_combout\ = ( !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MIM1|out[5]~5_combout\ & \dp1|MIM1|out[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~802_combout\);

-- Location: LABCELL_X83_Y37_N33
\dp1|MEM1|RAM~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~803_combout\ = ( \dp1|MEM1|RAM~802_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~802_combout\,
	combout => \dp1|MEM1|RAM~803_combout\);

-- Location: FF_X83_Y37_N28
\dp1|MEM1|RAM~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~488_q\);

-- Location: LABCELL_X81_Y36_N39
\dp1|MEM1|RAM~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~800_combout\ = ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MIM1|out[3]~3_combout\ & !\dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~800_combout\);

-- Location: LABCELL_X81_Y36_N9
\dp1|MEM1|RAM~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~801_combout\ = ( \dp1|MEM1|RAM~800_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~800_combout\,
	combout => \dp1|MEM1|RAM~801_combout\);

-- Location: FF_X81_Y36_N10
\dp1|MEM1|RAM~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~480_q\);

-- Location: MLABCELL_X82_Y40_N0
\dp1|MEM1|RAM~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~806_combout\ = ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MIM1|out[5]~5_combout\ & \dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~806_combout\);

-- Location: MLABCELL_X82_Y40_N18
\dp1|MEM1|RAM~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~807_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~806_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|MEM1|ALT_INV_RAM~806_combout\,
	datae => \c1|ALT_INV_state.100~q\,
	combout => \dp1|MEM1|RAM~807_combout\);

-- Location: FF_X82_Y40_N29
\dp1|MEM1|RAM~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~504_q\);

-- Location: MLABCELL_X84_Y40_N12
\dp1|MEM1|RAM~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~804_combout\ = ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MIM1|out[4]~4_combout\ & \dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~804_combout\);

-- Location: MLABCELL_X84_Y40_N51
\dp1|MEM1|RAM~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~805_combout\ = ( \dp1|MEM1|RAM~804_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~804_combout\,
	combout => \dp1|MEM1|RAM~805_combout\);

-- Location: FF_X82_Y40_N58
\dp1|MEM1|RAM~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~496_q\);

-- Location: LABCELL_X79_Y39_N33
\dp1|MEM1|RAM~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~530_combout\ = ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~504_q\ ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~488_q\ ) ) ) # ( \dp1|MIM1|out[1]~1_combout\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~496_q\ ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~480_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~488_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~480_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~504_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~496_q\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~530_combout\);

-- Location: LABCELL_X83_Y42_N33
\dp1|MEM1|RAM~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~794_combout\ = ( !\dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MIM1|out[1]~1_combout\ & ( (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[3]~3_combout\ & \dp1|MIM1|out[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	combout => \dp1|MEM1|RAM~794_combout\);

-- Location: LABCELL_X83_Y42_N51
\dp1|MEM1|RAM~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~795_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~794_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~794_combout\,
	combout => \dp1|MEM1|RAM~795_combout\);

-- Location: FF_X82_Y41_N1
\dp1|MEM1|RAM~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~456_q\);

-- Location: LABCELL_X80_Y42_N0
\dp1|MEM1|RAM~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~792_combout\ = ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MIM1|out[0]~0_combout\ & !\dp1|MIM1|out[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~792_combout\);

-- Location: LABCELL_X81_Y41_N30
\dp1|MEM1|RAM~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~793_combout\ = ( \dp1|MEM1|RAM~792_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~792_combout\,
	combout => \dp1|MEM1|RAM~793_combout\);

-- Location: FF_X81_Y41_N10
\dp1|MEM1|RAM~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~448_q\);

-- Location: LABCELL_X81_Y42_N30
\dp1|MEM1|RAM~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~796_combout\ = ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MIM1|out[5]~5_combout\ & \dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~796_combout\);

-- Location: LABCELL_X81_Y42_N12
\dp1|MEM1|RAM~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~797_combout\ = ( \dp1|MEM1|RAM~796_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~796_combout\,
	combout => \dp1|MEM1|RAM~797_combout\);

-- Location: FF_X81_Y42_N16
\dp1|MEM1|RAM~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~464_q\);

-- Location: MLABCELL_X78_Y39_N9
\dp1|MEM1|RAM~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~798_combout\ = ( \dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MIM1|out[1]~1_combout\ & \dp1|MIM1|out[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~798_combout\);

-- Location: MLABCELL_X78_Y39_N3
\dp1|MEM1|RAM~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~799_combout\ = ( \dp1|MEM1|RAM~798_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~798_combout\,
	combout => \dp1|MEM1|RAM~799_combout\);

-- Location: FF_X84_Y41_N20
\dp1|MEM1|RAM~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~472_q\);

-- Location: MLABCELL_X84_Y41_N18
\dp1|MEM1|RAM~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~529_combout\ = ( \dp1|MEM1|RAM~472_q\ & ( \dp1|MIM1|out[1]~1_combout\ & ( (\dp1|MIM1|out[0]~0_combout\) # (\dp1|MEM1|RAM~464_q\) ) ) ) # ( !\dp1|MEM1|RAM~472_q\ & ( \dp1|MIM1|out[1]~1_combout\ & ( (\dp1|MEM1|RAM~464_q\ & 
-- !\dp1|MIM1|out[0]~0_combout\) ) ) ) # ( \dp1|MEM1|RAM~472_q\ & ( !\dp1|MIM1|out[1]~1_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~448_q\))) # (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~456_q\)) ) ) ) # ( !\dp1|MEM1|RAM~472_q\ & ( 
-- !\dp1|MIM1|out[1]~1_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~448_q\))) # (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~456_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~456_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~448_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~464_q\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~472_q\,
	dataf => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	combout => \dp1|MEM1|RAM~529_combout\);

-- Location: MLABCELL_X82_Y36_N45
\dp1|MEM1|RAM~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~784_combout\ = ( \dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MIM1|out[4]~4_combout\ & \dp1|MIM1|out[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~784_combout\);

-- Location: MLABCELL_X82_Y36_N21
\dp1|MEM1|RAM~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~785_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~784_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~784_combout\,
	combout => \dp1|MEM1|RAM~785_combout\);

-- Location: FF_X82_Y36_N23
\dp1|MEM1|RAM~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~785_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~416_q\);

-- Location: MLABCELL_X82_Y42_N9
\dp1|MEM1|RAM~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~788_combout\ = ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & !\dp1|MIM1|out[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~788_combout\);

-- Location: MLABCELL_X82_Y42_N15
\dp1|MEM1|RAM~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~789_combout\ = ( \dp1|MEM1|RAM~788_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~788_combout\,
	combout => \dp1|MEM1|RAM~789_combout\);

-- Location: FF_X82_Y42_N8
\dp1|MEM1|RAM~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~789_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~432_q\);

-- Location: MLABCELL_X78_Y41_N12
\dp1|MEM1|RAM~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~786_combout\ = ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MIM1|out[4]~4_combout\ & \dp1|MIM1|out[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~786_combout\);

-- Location: MLABCELL_X78_Y41_N42
\dp1|MEM1|RAM~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~787_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~786_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~786_combout\,
	combout => \dp1|MEM1|RAM~787_combout\);

-- Location: FF_X77_Y40_N16
\dp1|MEM1|RAM~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~787_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~424_q\);

-- Location: LABCELL_X80_Y37_N54
\dp1|MEM1|RAM~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~790_combout\ = ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & \dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~790_combout\);

-- Location: LABCELL_X80_Y37_N21
\dp1|MEM1|RAM~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~791_combout\ = ( \dp1|MEM1|RAM~790_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dp1|MEM1|ALT_INV_RAM~790_combout\,
	dataf => \c1|ALT_INV_state.100~q\,
	combout => \dp1|MEM1|RAM~791_combout\);

-- Location: FF_X80_Y37_N26
\dp1|MEM1|RAM~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~440_q\);

-- Location: LABCELL_X80_Y37_N24
\dp1|MEM1|RAM~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~528_combout\ = ( \dp1|MEM1|RAM~440_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~424_q\) ) ) ) # ( !\dp1|MEM1|RAM~440_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MEM1|RAM~424_q\ & 
-- !\dp1|MIM1|out[1]~1_combout\) ) ) ) # ( \dp1|MEM1|RAM~440_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~416_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~432_q\))) ) ) ) # ( !\dp1|MEM1|RAM~440_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~416_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~432_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~416_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~432_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~424_q\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~440_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~528_combout\);

-- Location: LABCELL_X80_Y39_N36
\dp1|MEM1|RAM~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~531_combout\ = ( \dp1|MEM1|RAM~529_combout\ & ( \dp1|MEM1|RAM~528_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MIM1|out[2]~2_combout\)) # (\dp1|MEM1|RAM~527_combout\))) # (\dp1|MIM1|out[3]~3_combout\ & 
-- (((!\dp1|MIM1|out[2]~2_combout\) # (\dp1|MEM1|RAM~530_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~529_combout\ & ( \dp1|MEM1|RAM~528_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MIM1|out[2]~2_combout\)) # (\dp1|MEM1|RAM~527_combout\))) # 
-- (\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MIM1|out[2]~2_combout\ & \dp1|MEM1|RAM~530_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~529_combout\ & ( !\dp1|MEM1|RAM~528_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~527_combout\ & 
-- (!\dp1|MIM1|out[2]~2_combout\))) # (\dp1|MIM1|out[3]~3_combout\ & (((!\dp1|MIM1|out[2]~2_combout\) # (\dp1|MEM1|RAM~530_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~529_combout\ & ( !\dp1|MEM1|RAM~528_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & 
-- (\dp1|MEM1|RAM~527_combout\ & (!\dp1|MIM1|out[2]~2_combout\))) # (\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MIM1|out[2]~2_combout\ & \dp1|MEM1|RAM~530_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~527_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~530_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~529_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~528_combout\,
	combout => \dp1|MEM1|RAM~531_combout\);

-- Location: LABCELL_X80_Y36_N51
\dp1|MEM1|RAM~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~700_combout\ = ( !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MIM1|out[1]~1_combout\ & !\dp1|MIM1|out[5]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datae => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~700_combout\);

-- Location: LABCELL_X80_Y36_N30
\dp1|MEM1|RAM~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~701_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~700_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~700_combout\,
	combout => \dp1|MEM1|RAM~701_combout\);

-- Location: FF_X80_Y36_N52
\dp1|MEM1|RAM~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~80_q\);

-- Location: MLABCELL_X82_Y41_N9
\dp1|MEM1|RAM~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~696_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[1]~1_combout\ & !\dp1|MIM1|out[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~696_combout\);

-- Location: LABCELL_X81_Y41_N12
\dp1|MEM1|RAM~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~697_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~696_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|MEM1|ALT_INV_RAM~696_combout\,
	dataf => \c1|ALT_INV_state.100~q\,
	combout => \dp1|MEM1|RAM~697_combout\);

-- Location: FF_X81_Y41_N14
\dp1|MEM1|RAM~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~64_q\);

-- Location: MLABCELL_X82_Y41_N21
\dp1|MEM1|RAM~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~698_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[1]~1_combout\ & \dp1|MIM1|out[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~698_combout\);

-- Location: MLABCELL_X82_Y41_N15
\dp1|MEM1|RAM~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~699_combout\ = ( \dp1|MEM1|RAM~698_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dp1|MEM1|ALT_INV_RAM~698_combout\,
	dataf => \c1|ALT_INV_state.100~q\,
	combout => \dp1|MEM1|RAM~699_combout\);

-- Location: FF_X78_Y38_N1
\dp1|MEM1|RAM~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~72_q\);

-- Location: LABCELL_X80_Y38_N12
\dp1|MEM1|RAM~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~702_combout\ = ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MIM1|out[1]~1_combout\ & !\dp1|MIM1|out[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~702_combout\);

-- Location: LABCELL_X80_Y38_N48
\dp1|MEM1|RAM~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~703_combout\ = ( \dp1|MEM1|RAM~702_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~702_combout\,
	combout => \dp1|MEM1|RAM~703_combout\);

-- Location: FF_X78_Y39_N26
\dp1|MEM1|RAM~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~88_q\);

-- Location: LABCELL_X79_Y39_N54
\dp1|MEM1|RAM~514\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~514_combout\ = ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~88_q\ & ( (\dp1|MIM1|out[0]~0_combout\) # (\dp1|MEM1|RAM~80_q\) ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~88_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & 
-- (\dp1|MEM1|RAM~64_q\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~72_q\))) ) ) ) # ( \dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MEM1|RAM~88_q\ & ( (\dp1|MEM1|RAM~80_q\ & !\dp1|MIM1|out[0]~0_combout\) ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( 
-- !\dp1|MEM1|RAM~88_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~64_q\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~72_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000000000110011000011110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~80_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~64_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~72_q\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~88_q\,
	combout => \dp1|MEM1|RAM~514_combout\);

-- Location: LABCELL_X81_Y36_N30
\dp1|MEM1|RAM~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~704_combout\ = ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MIM1|out[3]~3_combout\ & (!\dp1|MIM1|out[4]~4_combout\ & !\dp1|MIM1|out[5]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~704_combout\);

-- Location: LABCELL_X81_Y36_N21
\dp1|MEM1|RAM~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~705_combout\ = ( \dp1|MEM1|RAM~704_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~704_combout\,
	combout => \dp1|MEM1|RAM~705_combout\);

-- Location: FF_X81_Y36_N22
\dp1|MEM1|RAM~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~96_q\);

-- Location: MLABCELL_X78_Y37_N6
\dp1|MEM1|RAM~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~706_combout\ = ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MIM1|out[0]~0_combout\ & (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MIM1|out[2]~2_combout\ & !\dp1|MIM1|out[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~706_combout\);

-- Location: MLABCELL_X78_Y37_N24
\dp1|MEM1|RAM~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~707_combout\ = ( \dp1|MEM1|RAM~706_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~706_combout\,
	combout => \dp1|MEM1|RAM~707_combout\);

-- Location: FF_X75_Y39_N13
\dp1|MEM1|RAM~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~104_q\);

-- Location: MLABCELL_X78_Y38_N3
\dp1|MEM1|RAM~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~708_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[0]~0_combout\ & !\dp1|MIM1|out[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~708_combout\);

-- Location: MLABCELL_X78_Y38_N21
\dp1|MEM1|RAM~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~709_combout\ = ( \dp1|MEM1|RAM~708_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	datae => \dp1|MEM1|ALT_INV_RAM~708_combout\,
	combout => \dp1|MEM1|RAM~709_combout\);

-- Location: FF_X84_Y40_N16
\dp1|MEM1|RAM~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~709_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~112_q\);

-- Location: MLABCELL_X84_Y41_N36
\dp1|MEM1|RAM~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~710_combout\ = ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MIM1|out[0]~0_combout\ & \dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~710_combout\);

-- Location: MLABCELL_X84_Y41_N51
\dp1|MEM1|RAM~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~711_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~710_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dp1|MEM1|ALT_INV_RAM~710_combout\,
	dataf => \c1|ALT_INV_state.100~q\,
	combout => \dp1|MEM1|RAM~711_combout\);

-- Location: FF_X84_Y41_N53
\dp1|MEM1|RAM~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~120_q\);

-- Location: MLABCELL_X78_Y39_N48
\dp1|MEM1|RAM~515\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~515_combout\ = ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~120_q\ ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~112_q\ ) ) ) # ( \dp1|MIM1|out[0]~0_combout\ & ( 
-- !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~104_q\ ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~96_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~96_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~104_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~112_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~120_q\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	combout => \dp1|MEM1|RAM~515_combout\);

-- Location: LABCELL_X81_Y39_N30
\dp1|MEM1|RAM~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~684_combout\ = ( \dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MIM1|out[0]~0_combout\ & !\dp1|MIM1|out[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~684_combout\);

-- Location: LABCELL_X80_Y42_N42
\dp1|MEM1|RAM~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~685_combout\ = ( \dp1|MEM1|RAM~684_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~684_combout\,
	combout => \dp1|MEM1|RAM~685_combout\);

-- Location: FF_X80_Y42_N49
\dp1|MEM1|RAM~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~16_q\);

-- Location: LABCELL_X77_Y39_N51
\dp1|MEM1|RAM~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~808_combout\ = ( !\dp1|ACC1|Aout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dp1|ACC1|ALT_INV_Aout\(0),
	combout => \dp1|MEM1|RAM~808_combout\);

-- Location: LABCELL_X83_Y36_N33
\dp1|MEM1|RAM~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~682_combout\ = ( !\dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[0]~0_combout\ & (!\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & !\dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~682_combout\);

-- Location: LABCELL_X83_Y36_N39
\dp1|MEM1|RAM~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~683_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~682_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~682_combout\,
	combout => \dp1|MEM1|RAM~683_combout\);

-- Location: FF_X77_Y39_N37
\dp1|MEM1|RAM~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|MEM1|RAM~808_combout\,
	sload => VCC,
	ena => \dp1|MEM1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~8_q\);

-- Location: LABCELL_X79_Y39_N15
\dp1|MEM1|RAM~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~680_combout\ = ( !\dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & (!\dp1|MIM1|out[0]~0_combout\ & !\dp1|MIM1|out[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~680_combout\);

-- Location: LABCELL_X79_Y39_N36
\dp1|MEM1|RAM~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~681_combout\ = ( \dp1|MEM1|RAM~680_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~680_combout\,
	combout => \dp1|MEM1|RAM~681_combout\);

-- Location: FF_X80_Y40_N1
\dp1|MEM1|RAM~0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~0_q\);

-- Location: LABCELL_X79_Y41_N30
\dp1|MEM1|RAM~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~686_combout\ = ( \dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & \dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~686_combout\);

-- Location: LABCELL_X79_Y41_N3
\dp1|MEM1|RAM~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~687_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~686_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~686_combout\,
	combout => \dp1|MEM1|RAM~687_combout\);

-- Location: FF_X84_Y39_N58
\dp1|MEM1|RAM~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~24_q\);

-- Location: LABCELL_X79_Y39_N27
\dp1|MEM1|RAM~512\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~512_combout\ = ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~24_q\ & ( (\dp1|MIM1|out[0]~0_combout\) # (\dp1|MEM1|RAM~16_q\) ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~24_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & 
-- ((\dp1|MEM1|RAM~0_q\))) # (\dp1|MIM1|out[0]~0_combout\ & (!\dp1|MEM1|RAM~8_q\)) ) ) ) # ( \dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MEM1|RAM~24_q\ & ( (\dp1|MEM1|RAM~16_q\ & !\dp1|MIM1|out[0]~0_combout\) ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( 
-- !\dp1|MEM1|RAM~24_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~0_q\))) # (\dp1|MIM1|out[0]~0_combout\ & (!\dp1|MEM1|RAM~8_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100010100000101000000001100111111000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~16_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~8_q\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~0_q\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~24_q\,
	combout => \dp1|MEM1|RAM~512_combout\);

-- Location: MLABCELL_X78_Y39_N0
\dp1|MEM1|RAM~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~810_combout\ = !\dp1|ACC1|Aout\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(0),
	combout => \dp1|MEM1|RAM~810_combout\);

-- Location: MLABCELL_X84_Y39_N51
\dp1|MEM1|RAM~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~694_combout\ = ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & \dp1|MIM1|out[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~694_combout\);

-- Location: MLABCELL_X78_Y39_N33
\dp1|MEM1|RAM~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~695_combout\ = ( \dp1|MEM1|RAM~694_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~694_combout\,
	combout => \dp1|MEM1|RAM~695_combout\);

-- Location: FF_X78_Y39_N53
\dp1|MEM1|RAM~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|MEM1|RAM~810_combout\,
	sload => VCC,
	ena => \dp1|MEM1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~56_q\);

-- Location: LABCELL_X79_Y42_N18
\dp1|MEM1|RAM~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~692_combout\ = ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MIM1|out[0]~0_combout\ & !\dp1|MIM1|out[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~692_combout\);

-- Location: LABCELL_X79_Y42_N27
\dp1|MEM1|RAM~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~693_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~692_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~692_combout\,
	combout => \dp1|MEM1|RAM~693_combout\);

-- Location: FF_X82_Y42_N46
\dp1|MEM1|RAM~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~48_q\);

-- Location: LABCELL_X81_Y37_N21
\dp1|MEM1|RAM~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~809_combout\ = ( !\dp1|ACC1|Aout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(0),
	combout => \dp1|MEM1|RAM~809_combout\);

-- Location: LABCELL_X81_Y37_N30
\dp1|MEM1|RAM~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~690_combout\ = ( \dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (!\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MIM1|out[5]~5_combout\ & \dp1|MIM1|out[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~690_combout\);

-- Location: LABCELL_X81_Y37_N18
\dp1|MEM1|RAM~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~691_combout\ = ( \dp1|MEM1|RAM~690_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~690_combout\,
	combout => \dp1|MEM1|RAM~691_combout\);

-- Location: FF_X81_Y37_N22
\dp1|MEM1|RAM~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~809_combout\,
	ena => \dp1|MEM1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~40_q\);

-- Location: LABCELL_X81_Y39_N33
\dp1|MEM1|RAM~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~688_combout\ = ( \dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MIM1|out[1]~1_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & !\dp1|MIM1|out[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	combout => \dp1|MEM1|RAM~688_combout\);

-- Location: LABCELL_X81_Y39_N21
\dp1|MEM1|RAM~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~689_combout\ = ( \dp1|MEM1|RAM~688_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~688_combout\,
	combout => \dp1|MEM1|RAM~689_combout\);

-- Location: FF_X77_Y39_N44
\dp1|MEM1|RAM~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~32_q\);

-- Location: MLABCELL_X78_Y39_N18
\dp1|MEM1|RAM~513\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~513_combout\ = ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~32_q\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((!\dp1|MEM1|RAM~40_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MEM1|RAM~56_q\)) ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( 
-- \dp1|MEM1|RAM~32_q\ & ( (!\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~48_q\) ) ) ) # ( \dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MEM1|RAM~32_q\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((!\dp1|MEM1|RAM~40_q\))) # (\dp1|MIM1|out[1]~1_combout\ & 
-- (!\dp1|MEM1|RAM~56_q\)) ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MEM1|RAM~32_q\ & ( (\dp1|MEM1|RAM~48_q\ & \dp1|MIM1|out[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111100001010101011111111001100111111000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~56_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~48_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~40_q\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~32_q\,
	combout => \dp1|MEM1|RAM~513_combout\);

-- Location: LABCELL_X79_Y39_N48
\dp1|MEM1|RAM~516\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~516_combout\ = ( \dp1|MEM1|RAM~512_combout\ & ( \dp1|MEM1|RAM~513_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\) # ((!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~514_combout\)) # (\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~515_combout\)))) 
-- ) ) ) # ( !\dp1|MEM1|RAM~512_combout\ & ( \dp1|MEM1|RAM~513_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~514_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\) # 
-- ((\dp1|MEM1|RAM~515_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~512_combout\ & ( !\dp1|MEM1|RAM~513_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\) # ((\dp1|MEM1|RAM~514_combout\)))) # (\dp1|MIM1|out[2]~2_combout\ & 
-- (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~515_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~512_combout\ & ( !\dp1|MEM1|RAM~513_combout\ & ( (\dp1|MIM1|out[3]~3_combout\ & ((!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~514_combout\)) # 
-- (\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~515_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~514_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~515_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~512_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~513_combout\,
	combout => \dp1|MEM1|RAM~516_combout\);

-- Location: LABCELL_X80_Y39_N24
\dp1|MEM1|RAM~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~740_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[2]~2_combout\ & \dp1|MIM1|out[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datac => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~740_combout\);

-- Location: LABCELL_X81_Y39_N18
\dp1|MEM1|RAM~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~741_combout\ = ( \dp1|MEM1|RAM~740_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~740_combout\,
	combout => \dp1|MEM1|RAM~741_combout\);

-- Location: FF_X82_Y40_N38
\dp1|MEM1|RAM~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~240_q\);

-- Location: LABCELL_X85_Y38_N33
\dp1|MEM1|RAM~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~738_combout\ = ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MIM1|out[0]~0_combout\ & !\dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~738_combout\);

-- Location: LABCELL_X85_Y38_N45
\dp1|MEM1|RAM~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~739_combout\ = ( \dp1|MEM1|RAM~738_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~738_combout\,
	combout => \dp1|MEM1|RAM~739_combout\);

-- Location: FF_X79_Y39_N13
\dp1|MEM1|RAM~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~232_q\);

-- Location: MLABCELL_X82_Y37_N48
\dp1|MEM1|RAM~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~742_combout\ = ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MIM1|out[3]~3_combout\ & \dp1|MIM1|out[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~742_combout\);

-- Location: MLABCELL_X82_Y37_N42
\dp1|MEM1|RAM~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~743_combout\ = ( \dp1|MEM1|RAM~742_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~742_combout\,
	combout => \dp1|MEM1|RAM~743_combout\);

-- Location: FF_X82_Y37_N40
\dp1|MEM1|RAM~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~248_q\);

-- Location: LABCELL_X80_Y40_N9
\dp1|MEM1|RAM~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~736_combout\ = ( !\dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MIM1|out[4]~4_combout\ & \dp1|MIM1|out[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~736_combout\);

-- Location: LABCELL_X79_Y39_N21
\dp1|MEM1|RAM~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~737_combout\ = ( \dp1|MEM1|RAM~736_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~736_combout\,
	combout => \dp1|MEM1|RAM~737_combout\);

-- Location: FF_X79_Y39_N22
\dp1|MEM1|RAM~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~224_q\);

-- Location: LABCELL_X79_Y39_N9
\dp1|MEM1|RAM~520\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~520_combout\ = ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~224_q\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~232_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~248_q\))) ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( 
-- \dp1|MEM1|RAM~224_q\ & ( (!\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~240_q\) ) ) ) # ( \dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MEM1|RAM~224_q\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~232_q\)) # (\dp1|MIM1|out[1]~1_combout\ & 
-- ((\dp1|MEM1|RAM~248_q\))) ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MEM1|RAM~224_q\ & ( (\dp1|MEM1|RAM~240_q\ & \dp1|MIM1|out[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110000111111111111010101010011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~240_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~232_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~248_q\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~224_q\,
	combout => \dp1|MEM1|RAM~520_combout\);

-- Location: LABCELL_X80_Y38_N27
\dp1|MEM1|RAM~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~734_combout\ = ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MIM1|out[3]~3_combout\ & !\dp1|MIM1|out[5]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~734_combout\);

-- Location: LABCELL_X80_Y38_N54
\dp1|MEM1|RAM~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~735_combout\ = ( \dp1|MEM1|RAM~734_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_state.100~q\,
	datae => \dp1|MEM1|ALT_INV_RAM~734_combout\,
	combout => \dp1|MEM1|RAM~735_combout\);

-- Location: FF_X80_Y38_N37
\dp1|MEM1|RAM~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~216_q\);

-- Location: LABCELL_X79_Y42_N33
\dp1|MEM1|RAM~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~732_combout\ = ( !\dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MIM1|out[3]~3_combout\ & !\dp1|MIM1|out[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~732_combout\);

-- Location: LABCELL_X79_Y42_N54
\dp1|MEM1|RAM~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~733_combout\ = ( \dp1|MEM1|RAM~732_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~732_combout\,
	combout => \dp1|MEM1|RAM~733_combout\);

-- Location: FF_X81_Y42_N22
\dp1|MEM1|RAM~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~208_q\);

-- Location: LABCELL_X79_Y42_N12
\dp1|MEM1|RAM~192feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~192feeder_combout\ = ( \dp1|ACC1|Aout\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(0),
	combout => \dp1|MEM1|RAM~192feeder_combout\);

-- Location: MLABCELL_X78_Y38_N48
\dp1|MEM1|RAM~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~728_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MIM1|out[4]~4_combout\ & !\dp1|MIM1|out[5]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~728_combout\);

-- Location: MLABCELL_X78_Y38_N15
\dp1|MEM1|RAM~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~729_combout\ = ( \dp1|MEM1|RAM~728_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~728_combout\,
	combout => \dp1|MEM1|RAM~729_combout\);

-- Location: FF_X79_Y42_N14
\dp1|MEM1|RAM~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~192feeder_combout\,
	ena => \dp1|MEM1|RAM~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~192_q\);

-- Location: LABCELL_X79_Y41_N24
\dp1|MEM1|RAM~200feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~200feeder_combout\ = \dp1|ACC1|Aout\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(0),
	combout => \dp1|MEM1|RAM~200feeder_combout\);

-- Location: MLABCELL_X78_Y38_N33
\dp1|MEM1|RAM~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~730_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MIM1|out[0]~0_combout\ & (!\dp1|MIM1|out[5]~5_combout\ & \dp1|MIM1|out[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~730_combout\);

-- Location: MLABCELL_X78_Y38_N9
\dp1|MEM1|RAM~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~731_combout\ = ( \dp1|MEM1|RAM~730_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~730_combout\,
	combout => \dp1|MEM1|RAM~731_combout\);

-- Location: FF_X79_Y41_N25
\dp1|MEM1|RAM~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~200feeder_combout\,
	ena => \dp1|MEM1|RAM~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~200_q\);

-- Location: MLABCELL_X78_Y39_N42
\dp1|MEM1|RAM~519\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~519_combout\ = ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~216_q\ ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~208_q\ ) ) ) # ( \dp1|MIM1|out[0]~0_combout\ & ( 
-- !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~200_q\ ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~192_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~216_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~208_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~192_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~200_q\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	combout => \dp1|MEM1|RAM~519_combout\);

-- Location: LABCELL_X79_Y38_N15
\dp1|MEM1|RAM~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~724_combout\ = ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MIM1|out[4]~4_combout\ & !\dp1|MIM1|out[5]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~724_combout\);

-- Location: LABCELL_X79_Y38_N18
\dp1|MEM1|RAM~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~725_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~724_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~724_combout\,
	combout => \dp1|MEM1|RAM~725_combout\);

-- Location: FF_X85_Y40_N56
\dp1|MEM1|RAM~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~176_q\);

-- Location: MLABCELL_X78_Y40_N48
\dp1|MEM1|RAM~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~726_combout\ = ( \dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MIM1|out[2]~2_combout\ & \dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~726_combout\);

-- Location: MLABCELL_X78_Y40_N27
\dp1|MEM1|RAM~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~727_combout\ = ( \dp1|MEM1|RAM~726_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~726_combout\,
	combout => \dp1|MEM1|RAM~727_combout\);

-- Location: FF_X78_Y40_N28
\dp1|MEM1|RAM~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~184_q\);

-- Location: LABCELL_X85_Y37_N42
\dp1|MEM1|RAM~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~720_combout\ = ( \dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MIM1|out[2]~2_combout\ & (!\dp1|MIM1|out[5]~5_combout\ & !\dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~720_combout\);

-- Location: LABCELL_X85_Y37_N51
\dp1|MEM1|RAM~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~721_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~720_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~720_combout\,
	combout => \dp1|MEM1|RAM~721_combout\);

-- Location: FF_X85_Y37_N52
\dp1|MEM1|RAM~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~160_q\);

-- Location: LABCELL_X80_Y37_N0
\dp1|MEM1|RAM~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~722_combout\ = ( \dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MIM1|out[0]~0_combout\ & !\dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~722_combout\);

-- Location: LABCELL_X81_Y37_N45
\dp1|MEM1|RAM~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~723_combout\ = ( \dp1|MEM1|RAM~722_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dp1|MEM1|ALT_INV_RAM~722_combout\,
	dataf => \c1|ALT_INV_state.100~q\,
	combout => \dp1|MEM1|RAM~723_combout\);

-- Location: FF_X81_Y37_N38
\dp1|MEM1|RAM~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~168_q\);

-- Location: LABCELL_X81_Y37_N36
\dp1|MEM1|RAM~518\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~518_combout\ = ( \dp1|MEM1|RAM~168_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~184_q\) ) ) ) # ( !\dp1|MEM1|RAM~168_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MEM1|RAM~184_q\ & 
-- \dp1|MIM1|out[1]~1_combout\) ) ) ) # ( \dp1|MEM1|RAM~168_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~160_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~176_q\)) ) ) ) # ( !\dp1|MEM1|RAM~168_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~160_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~176_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~176_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~184_q\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~160_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~168_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~518_combout\);

-- Location: LABCELL_X79_Y37_N39
\dp1|MEM1|RAM~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~716_combout\ = ( !\dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MIM1|out[1]~1_combout\ & !\dp1|MIM1|out[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~716_combout\);

-- Location: LABCELL_X79_Y37_N48
\dp1|MEM1|RAM~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~717_combout\ = ( \dp1|MEM1|RAM~716_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~716_combout\,
	combout => \dp1|MEM1|RAM~717_combout\);

-- Location: FF_X79_Y37_N40
\dp1|MEM1|RAM~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~144_q\);

-- Location: LABCELL_X83_Y36_N18
\dp1|MEM1|RAM~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~712_combout\ = ( !\dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (!\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MIM1|out[5]~5_combout\ & \dp1|MIM1|out[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~712_combout\);

-- Location: LABCELL_X83_Y36_N48
\dp1|MEM1|RAM~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~713_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~712_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~712_combout\,
	combout => \dp1|MEM1|RAM~713_combout\);

-- Location: FF_X83_Y36_N22
\dp1|MEM1|RAM~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~128_q\);

-- Location: LABCELL_X83_Y36_N6
\dp1|MEM1|RAM~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~718_combout\ = ( \dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[0]~0_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & (!\dp1|MIM1|out[5]~5_combout\ & \dp1|MIM1|out[1]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~718_combout\);

-- Location: LABCELL_X83_Y36_N57
\dp1|MEM1|RAM~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~719_combout\ = ( \c1|state.100~q\ & ( \dp1|MEM1|RAM~718_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~718_combout\,
	combout => \dp1|MEM1|RAM~719_combout\);

-- Location: FF_X83_Y36_N59
\dp1|MEM1|RAM~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~152_q\);

-- Location: MLABCELL_X82_Y36_N9
\dp1|MEM1|RAM~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~714_combout\ = ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & (!\dp1|MIM1|out[1]~1_combout\ & \dp1|MIM1|out[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~714_combout\);

-- Location: MLABCELL_X82_Y36_N30
\dp1|MEM1|RAM~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~715_combout\ = ( \dp1|MEM1|RAM~714_combout\ & ( \c1|state.100~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.100~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~714_combout\,
	combout => \dp1|MEM1|RAM~715_combout\);

-- Location: FF_X83_Y36_N44
\dp1|MEM1|RAM~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sload => VCC,
	ena => \dp1|MEM1|RAM~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~136_q\);

-- Location: LABCELL_X83_Y36_N42
\dp1|MEM1|RAM~517\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~517_combout\ = ( \dp1|MEM1|RAM~136_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~152_q\) ) ) ) # ( !\dp1|MEM1|RAM~136_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[1]~1_combout\ & 
-- \dp1|MEM1|RAM~152_q\) ) ) ) # ( \dp1|MEM1|RAM~136_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~128_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~144_q\)) ) ) ) # ( !\dp1|MEM1|RAM~136_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~128_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~144_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~144_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~128_q\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~152_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~136_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~517_combout\);

-- Location: LABCELL_X80_Y39_N48
\dp1|MEM1|RAM~521\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~521_combout\ = ( \dp1|MEM1|RAM~518_combout\ & ( \dp1|MEM1|RAM~517_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\) # ((!\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~519_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~520_combout\))) 
-- ) ) ) # ( !\dp1|MEM1|RAM~518_combout\ & ( \dp1|MEM1|RAM~517_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (((!\dp1|MIM1|out[2]~2_combout\)))) # (\dp1|MIM1|out[3]~3_combout\ & ((!\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~519_combout\))) # 
-- (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~520_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~518_combout\ & ( !\dp1|MEM1|RAM~517_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MIM1|out[2]~2_combout\)))) # (\dp1|MIM1|out[3]~3_combout\ & 
-- ((!\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~519_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~520_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~518_combout\ & ( !\dp1|MEM1|RAM~517_combout\ & ( (\dp1|MIM1|out[3]~3_combout\ & 
-- ((!\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~519_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~520_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~520_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~519_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~518_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~517_combout\,
	combout => \dp1|MEM1|RAM~521_combout\);

-- Location: LABCELL_X80_Y39_N18
\dp1|MEM1|RAM~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~532_combout\ = ( \dp1|MEM1|RAM~516_combout\ & ( \dp1|MEM1|RAM~521_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\) # ((!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~526_combout\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~531_combout\)))) 
-- ) ) ) # ( !\dp1|MEM1|RAM~516_combout\ & ( \dp1|MEM1|RAM~521_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~526_combout\ & ((\dp1|MIM1|out[5]~5_combout\)))) # (\dp1|MIM1|out[4]~4_combout\ & (((!\dp1|MIM1|out[5]~5_combout\) # 
-- (\dp1|MEM1|RAM~531_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~516_combout\ & ( !\dp1|MEM1|RAM~521_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (((!\dp1|MIM1|out[5]~5_combout\)) # (\dp1|MEM1|RAM~526_combout\))) # (\dp1|MIM1|out[4]~4_combout\ & 
-- (((\dp1|MEM1|RAM~531_combout\ & \dp1|MIM1|out[5]~5_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~516_combout\ & ( !\dp1|MEM1|RAM~521_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & ((!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~526_combout\)) # 
-- (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~531_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~526_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~531_combout\,
	datad => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~516_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~521_combout\,
	combout => \dp1|MEM1|RAM~532_combout\);

-- Location: LABCELL_X80_Y39_N30
\dp1|IR1|InstrReg~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|IR1|InstrReg~7_combout\ = ( \c1|state.001~q\ & ( \dp1|MEM1|RAM~532_combout\ & ( !\rst~input_o\ ) ) ) # ( !\c1|state.001~q\ & ( \dp1|MEM1|RAM~532_combout\ & ( (\dp1|IR1|InstrReg\(0) & !\rst~input_o\) ) ) ) # ( !\c1|state.001~q\ & ( 
-- !\dp1|MEM1|RAM~532_combout\ & ( (\dp1|IR1|InstrReg\(0) & !\rst~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000000000000001000100010001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|IR1|ALT_INV_InstrReg\(0),
	datab => \ALT_INV_rst~input_o\,
	datae => \c1|ALT_INV_state.001~q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~532_combout\,
	combout => \dp1|IR1|InstrReg~7_combout\);

-- Location: FF_X80_Y39_N32
\dp1|RF1|RegFile_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|IR1|InstrReg~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(2));

-- Location: FF_X83_Y40_N56
\dp1|RF1|RegFile_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|IR1|InstrReg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(1));

-- Location: FF_X80_Y39_N2
\dp1|RF1|RegFile_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|IR1|InstrReg~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(4));

-- Location: LABCELL_X83_Y40_N54
\dp1|RF1|RegFile~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|RF1|RegFile~0_combout\ = ( \dp1|RF1|RegFile_rtl_0_bypass\(1) & ( \dp1|RF1|RegFile_rtl_0_bypass\(4) & ( (\dp1|RF1|RegFile_rtl_0_bypass\(3) & (\dp1|RF1|RegFile_rtl_0_bypass\(0) & \dp1|RF1|RegFile_rtl_0_bypass\(2))) ) ) ) # ( 
-- !\dp1|RF1|RegFile_rtl_0_bypass\(1) & ( \dp1|RF1|RegFile_rtl_0_bypass\(4) & ( (\dp1|RF1|RegFile_rtl_0_bypass\(3) & (\dp1|RF1|RegFile_rtl_0_bypass\(0) & !\dp1|RF1|RegFile_rtl_0_bypass\(2))) ) ) ) # ( \dp1|RF1|RegFile_rtl_0_bypass\(1) & ( 
-- !\dp1|RF1|RegFile_rtl_0_bypass\(4) & ( (!\dp1|RF1|RegFile_rtl_0_bypass\(3) & (\dp1|RF1|RegFile_rtl_0_bypass\(0) & \dp1|RF1|RegFile_rtl_0_bypass\(2))) ) ) ) # ( !\dp1|RF1|RegFile_rtl_0_bypass\(1) & ( !\dp1|RF1|RegFile_rtl_0_bypass\(4) & ( 
-- (!\dp1|RF1|RegFile_rtl_0_bypass\(3) & (\dp1|RF1|RegFile_rtl_0_bypass\(0) & !\dp1|RF1|RegFile_rtl_0_bypass\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000000000000010001000010001000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(3),
	datab => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(0),
	datad => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(2),
	datae => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(1),
	dataf => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(4),
	combout => \dp1|RF1|RegFile~0_combout\);

-- Location: FF_X81_Y40_N29
\dp1|RF1|RegFile_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|RF1|RegFile_rtl_0_bypass\(12));

-- Location: LABCELL_X81_Y40_N27
\dp1|RF1|RegFile~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|RF1|RegFile~6_combout\ = ( \dp1|RF1|RegFile_rtl_0_bypass\(5) & ( (!\dp1|RF1|RegFile_rtl_0_bypass\(6) & (((\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a5\)))) # (\dp1|RF1|RegFile_rtl_0_bypass\(6) & ((!\dp1|RF1|RegFile~0_combout\ & 
-- (\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a5\)) # (\dp1|RF1|RegFile~0_combout\ & ((\dp1|RF1|RegFile_rtl_0_bypass\(12)))))) ) ) # ( !\dp1|RF1|RegFile_rtl_0_bypass\(5) & ( (!\dp1|RF1|RegFile_rtl_0_bypass\(6) & ((!\dp1|RF1|RegFile~0_combout\ & 
-- (\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a5\)) # (\dp1|RF1|RegFile~0_combout\ & ((\dp1|RF1|RegFile_rtl_0_bypass\(12)))))) # (\dp1|RF1|RegFile_rtl_0_bypass\(6) & (((\dp1|RF1|RegFile_rtl_0|auto_generated|ram_block1a5\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(6),
	datab => \dp1|RF1|ALT_INV_RegFile~0_combout\,
	datac => \dp1|RF1|RegFile_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	datad => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(12),
	dataf => \dp1|RF1|ALT_INV_RegFile_rtl_0_bypass\(5),
	combout => \dp1|RF1|RegFile~6_combout\);

-- Location: LABCELL_X83_Y40_N30
\dp1|ALU1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux2~0_combout\ = ( \c1|ALUsel[0]~6_combout\ & ( \c1|state.010~q\ & ( (!\c1|ALUsel[1]~5_combout\ & ((!\dp1|ACC1|Aout\(5) & ((\c1|ALUsel~1_combout\))) # (\dp1|ACC1|Aout\(5) & (\dp1|RF1|RegFile~6_combout\ & !\c1|ALUsel~1_combout\)))) ) ) ) # ( 
-- !\c1|ALUsel[0]~6_combout\ & ( \c1|state.010~q\ & ( (!\c1|ALUsel[1]~5_combout\ & (!\c1|ALUsel~1_combout\ & ((\dp1|ACC1|Aout\(5)) # (\dp1|RF1|RegFile~6_combout\)))) # (\c1|ALUsel[1]~5_combout\ & (((\dp1|ACC1|Aout\(5) & \c1|ALUsel~1_combout\)))) ) ) ) # ( 
-- \c1|ALUsel[0]~6_combout\ & ( !\c1|state.010~q\ & ( (!\c1|ALUsel[1]~5_combout\ & (!\dp1|ACC1|Aout\(5) $ (!\c1|ALUsel~1_combout\))) ) ) ) # ( !\c1|ALUsel[0]~6_combout\ & ( !\c1|state.010~q\ & ( (\c1|ALUsel[1]~5_combout\ & \dp1|ACC1|Aout\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010101010000000101010000001010000001010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_ALUsel[1]~5_combout\,
	datab => \dp1|RF1|ALT_INV_RegFile~6_combout\,
	datac => \dp1|ACC1|ALT_INV_Aout\(5),
	datad => \c1|ALT_INV_ALUsel~1_combout\,
	datae => \c1|ALT_INV_ALUsel[0]~6_combout\,
	dataf => \c1|ALT_INV_state.010~q\,
	combout => \dp1|ALU1|Mux2~0_combout\);

-- Location: MLABCELL_X82_Y38_N57
\dp1|ALU1|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux2~1_combout\ = ( \dp1|ALU1|Add0~21_sumout\ & ( (!\dp1|ALU1|Mux2~0_combout\ & !\dp1|ALU1|Mux6~0_combout\) ) ) # ( !\dp1|ALU1|Add0~21_sumout\ & ( !\dp1|ALU1|Mux2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ALU1|ALT_INV_Mux2~0_combout\,
	datad => \dp1|ALU1|ALT_INV_Mux6~0_combout\,
	dataf => \dp1|ALU1|ALT_INV_Add0~21_sumout\,
	combout => \dp1|ALU1|Mux2~1_combout\);

-- Location: LABCELL_X83_Y40_N39
\dp1|ACC1|Aout~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~14_combout\ = ( \dp1|RF1|RegFile~6_combout\ & ( \dp1|ALU1|Mux3~1_combout\ & ( (!\dp1|ACC1|Aout[2]~4_combout\ & (((!\dp1|ACC1|Aout[2]~5_combout\)))) # (\dp1|ACC1|Aout[2]~4_combout\ & ((!\dp1|ACC1|Aout[2]~5_combout\ & 
-- ((!\dp1|ALU1|Mux1~1_combout\))) # (\dp1|ACC1|Aout[2]~5_combout\ & (!\dp1|ALU1|Mux2~1_combout\)))) ) ) ) # ( !\dp1|RF1|RegFile~6_combout\ & ( \dp1|ALU1|Mux3~1_combout\ & ( (\dp1|ACC1|Aout[2]~4_combout\ & ((!\dp1|ACC1|Aout[2]~5_combout\ & 
-- ((!\dp1|ALU1|Mux1~1_combout\))) # (\dp1|ACC1|Aout[2]~5_combout\ & (!\dp1|ALU1|Mux2~1_combout\)))) ) ) ) # ( \dp1|RF1|RegFile~6_combout\ & ( !\dp1|ALU1|Mux3~1_combout\ & ( (!\dp1|ACC1|Aout[2]~4_combout\) # ((!\dp1|ACC1|Aout[2]~5_combout\ & 
-- ((!\dp1|ALU1|Mux1~1_combout\))) # (\dp1|ACC1|Aout[2]~5_combout\ & (!\dp1|ALU1|Mux2~1_combout\))) ) ) ) # ( !\dp1|RF1|RegFile~6_combout\ & ( !\dp1|ALU1|Mux3~1_combout\ & ( (!\dp1|ACC1|Aout[2]~4_combout\ & (((\dp1|ACC1|Aout[2]~5_combout\)))) # 
-- (\dp1|ACC1|Aout[2]~4_combout\ & ((!\dp1|ACC1|Aout[2]~5_combout\ & ((!\dp1|ALU1|Mux1~1_combout\))) # (\dp1|ACC1|Aout[2]~5_combout\ & (!\dp1|ALU1|Mux2~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111000001110111111101100111000110010000000101111001011000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ALU1|ALT_INV_Mux2~1_combout\,
	datab => \dp1|ACC1|ALT_INV_Aout[2]~4_combout\,
	datac => \dp1|ACC1|ALT_INV_Aout[2]~5_combout\,
	datad => \dp1|ALU1|ALT_INV_Mux1~1_combout\,
	datae => \dp1|RF1|ALT_INV_RegFile~6_combout\,
	dataf => \dp1|ALU1|ALT_INV_Mux3~1_combout\,
	combout => \dp1|ACC1|Aout~14_combout\);

-- Location: IOIBUF_X84_Y81_N35
\Input[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(5),
	o => \Input[5]~input_o\);

-- Location: LABCELL_X83_Y40_N24
\dp1|ACC1|Aout~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~15_combout\ = ( \Input[5]~input_o\ & ( \dp1|MEM1|RAM~637_combout\ & ( (!\rst~input_o\ & ((\c1|Asel\(1)) # (\dp1|ACC1|Aout~14_combout\))) ) ) ) # ( !\Input[5]~input_o\ & ( \dp1|MEM1|RAM~637_combout\ & ( (!\rst~input_o\ & ((!\c1|Asel\(1) & 
-- (\dp1|ACC1|Aout~14_combout\)) # (\c1|Asel\(1) & ((\c1|Asel\(0)))))) ) ) ) # ( \Input[5]~input_o\ & ( !\dp1|MEM1|RAM~637_combout\ & ( (!\rst~input_o\ & ((!\c1|Asel\(1) & (\dp1|ACC1|Aout~14_combout\)) # (\c1|Asel\(1) & ((!\c1|Asel\(0)))))) ) ) ) # ( 
-- !\Input[5]~input_o\ & ( !\dp1|MEM1|RAM~637_combout\ & ( (\dp1|ACC1|Aout~14_combout\ & (!\rst~input_o\ & !\c1|Asel\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100001100000001010000001100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout~14_combout\,
	datab => \c1|ALT_INV_Asel\(0),
	datac => \ALT_INV_rst~input_o\,
	datad => \c1|ALT_INV_Asel\(1),
	datae => \ALT_INV_Input[5]~input_o\,
	dataf => \dp1|MEM1|ALT_INV_RAM~637_combout\,
	combout => \dp1|ACC1|Aout~15_combout\);

-- Location: FF_X83_Y40_N26
\dp1|ACC1|Aout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|ACC1|Aout~15_combout\,
	ena => \dp1|ACC1|Aout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|ACC1|Aout\(5));

-- Location: LABCELL_X85_Y40_N33
\dp1|NOR1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|NOR1~0_combout\ = ( !\dp1|ACC1|Aout\(4) & ( (!\dp1|ACC1|Aout\(5) & (!\dp1|ACC1|Aout\(2) & (!\dp1|ACC1|Aout\(1) & !\dp1|ACC1|Aout\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(5),
	datab => \dp1|ACC1|ALT_INV_Aout\(2),
	datac => \dp1|ACC1|ALT_INV_Aout\(1),
	datad => \dp1|ACC1|ALT_INV_Aout\(3),
	dataf => \dp1|ACC1|ALT_INV_Aout\(4),
	combout => \dp1|NOR1~0_combout\);

-- Location: LABCELL_X85_Y40_N51
\c1|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector3~2_combout\ = ( !\dp1|IR1|InstrReg\(5) & ( \dp1|IR1|InstrReg\(7) & ( !\dp1|IR1|InstrReg\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|IR1|ALT_INV_InstrReg\(6),
	datae => \dp1|IR1|ALT_INV_InstrReg\(5),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(7),
	combout => \c1|Selector3~2_combout\);

-- Location: LABCELL_X85_Y40_N21
\c1|Selector3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector3~3_combout\ = ( \dp1|ACC1|Aout\(7) & ( \c1|Selector3~2_combout\ & ( !\dp1|IR1|InstrReg\(4) ) ) ) # ( !\dp1|ACC1|Aout\(7) & ( \c1|Selector3~2_combout\ & ( (!\dp1|NOR1~0_combout\) # (((\dp1|ACC1|Aout\(0)) # (\dp1|ACC1|Aout\(6))) # 
-- (\dp1|IR1|InstrReg\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ALT_INV_NOR1~0_combout\,
	datab => \dp1|IR1|ALT_INV_InstrReg\(4),
	datac => \dp1|ACC1|ALT_INV_Aout\(6),
	datad => \dp1|ACC1|ALT_INV_Aout\(0),
	datae => \dp1|ACC1|ALT_INV_Aout\(7),
	dataf => \c1|ALT_INV_Selector3~2_combout\,
	combout => \c1|Selector3~3_combout\);

-- Location: LABCELL_X85_Y40_N15
\c1|Selector3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector3~4_combout\ = ( \c1|Selector3~1_combout\ & ( \dp1|IR1|InstrReg\(7) & ( ((\c1|Selector3~3_combout\ & \c1|state.010~q\)) # (\c1|state.001~q\) ) ) ) # ( !\c1|Selector3~1_combout\ & ( \dp1|IR1|InstrReg\(7) & ( ((\c1|Selector3~3_combout\ & 
-- \c1|state.010~q\)) # (\c1|state.001~q\) ) ) ) # ( \c1|Selector3~1_combout\ & ( !\dp1|IR1|InstrReg\(7) & ( ((\c1|Selector3~3_combout\ & \c1|state.010~q\)) # (\c1|state.001~q\) ) ) ) # ( !\c1|Selector3~1_combout\ & ( !\dp1|IR1|InstrReg\(7) & ( 
-- (\c1|state.010~q\) # (\c1|state.001~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001101110011011100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_Selector3~3_combout\,
	datab => \c1|ALT_INV_state.001~q\,
	datac => \c1|ALT_INV_state.010~q\,
	datae => \c1|ALT_INV_Selector3~1_combout\,
	dataf => \dp1|IR1|ALT_INV_InstrReg\(7),
	combout => \c1|Selector3~4_combout\);

-- Location: MLABCELL_X84_Y38_N24
\c1|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector10~0_combout\ = ( \c1|state.010~q\ & ( (!\dp1|IR1|InstrReg\(3) & !\c1|ALUsel~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|IR1|ALT_INV_InstrReg\(3),
	datad => \c1|ALT_INV_ALUsel~7_combout\,
	dataf => \c1|ALT_INV_state.010~q\,
	combout => \c1|Selector10~0_combout\);

-- Location: LABCELL_X83_Y38_N48
\c1|JMPsel[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|JMPsel\(0) = ( \c1|Selector10~0_combout\ & ( (\c1|Selector3~4_combout\) # (\c1|JMPsel\(0)) ) ) # ( !\c1|Selector10~0_combout\ & ( (\c1|JMPsel\(0) & !\c1|Selector3~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_JMPsel\(0),
	datad => \c1|ALT_INV_Selector3~4_combout\,
	dataf => \c1|ALT_INV_Selector10~0_combout\,
	combout => \c1|JMPsel\(0));

-- Location: LABCELL_X83_Y38_N6
\dp1|I1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|I1|Add0~5_sumout\ = SUM(( (\c1|JMPsel\(1) & (!\c1|JMPsel\(0) $ (!\dp1|IR1|InstrReg\(1)))) ) + ( \dp1|PC1|PCReg\(1) ) + ( \dp1|I1|Add0~2\ ))
-- \dp1|I1|Add0~6\ = CARRY(( (\c1|JMPsel\(1) & (!\c1|JMPsel\(0) $ (!\dp1|IR1|InstrReg\(1)))) ) + ( \dp1|PC1|PCReg\(1) ) + ( \dp1|I1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_JMPsel\(1),
	datac => \c1|ALT_INV_JMPsel\(0),
	datad => \dp1|IR1|ALT_INV_InstrReg\(1),
	dataf => \dp1|PC1|ALT_INV_PCReg\(1),
	cin => \dp1|I1|Add0~2\,
	sumout => \dp1|I1|Add0~5_sumout\,
	cout => \dp1|I1|Add0~6\);

-- Location: LABCELL_X83_Y38_N33
\dp1|PC1|PCReg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|PC1|PCReg~2_combout\ = ( \dp1|I1|Add0~5_sumout\ & ( (!\c1|JMPsel\(0)) # ((\c1|JMPsel\(1)) # (\dp1|MEM1|RAM~679_combout\)) ) ) # ( !\dp1|I1|Add0~5_sumout\ & ( (\c1|JMPsel\(0) & (\dp1|MEM1|RAM~679_combout\ & !\c1|JMPsel\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_JMPsel\(0),
	datac => \dp1|MEM1|ALT_INV_RAM~679_combout\,
	datad => \c1|ALT_INV_JMPsel\(1),
	dataf => \dp1|I1|ALT_INV_Add0~5_sumout\,
	combout => \dp1|PC1|PCReg~2_combout\);

-- Location: FF_X83_Y38_N35
\dp1|PC1|PCReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|PC1|PCReg~2_combout\,
	sclr => \rst~input_o\,
	ena => \dp1|PC1|PCReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|PC1|PCReg\(1));

-- Location: LABCELL_X83_Y38_N9
\dp1|I1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|I1|Add0~9_sumout\ = SUM(( \dp1|PC1|PCReg\(2) ) + ( (\c1|JMPsel\(1) & (!\c1|JMPsel\(0) $ (!\dp1|IR1|InstrReg\(2)))) ) + ( \dp1|I1|Add0~6\ ))
-- \dp1|I1|Add0~10\ = CARRY(( \dp1|PC1|PCReg\(2) ) + ( (\c1|JMPsel\(1) & (!\c1|JMPsel\(0) $ (!\dp1|IR1|InstrReg\(2)))) ) + ( \dp1|I1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_JMPsel\(1),
	datac => \c1|ALT_INV_JMPsel\(0),
	datad => \dp1|PC1|ALT_INV_PCReg\(2),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(2),
	cin => \dp1|I1|Add0~6\,
	sumout => \dp1|I1|Add0~9_sumout\,
	cout => \dp1|I1|Add0~10\);

-- Location: LABCELL_X83_Y38_N27
\dp1|PC1|PCReg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|PC1|PCReg~3_combout\ = ( \dp1|I1|Add0~9_sumout\ & ( ((!\c1|JMPsel\(0)) # (\c1|JMPsel\(1))) # (\dp1|MEM1|RAM~574_combout\) ) ) # ( !\dp1|I1|Add0~9_sumout\ & ( (\dp1|MEM1|RAM~574_combout\ & (\c1|JMPsel\(0) & !\c1|JMPsel\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~574_combout\,
	datac => \c1|ALT_INV_JMPsel\(0),
	datad => \c1|ALT_INV_JMPsel\(1),
	dataf => \dp1|I1|ALT_INV_Add0~9_sumout\,
	combout => \dp1|PC1|PCReg~3_combout\);

-- Location: FF_X83_Y38_N29
\dp1|PC1|PCReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|PC1|PCReg~3_combout\,
	sclr => \rst~input_o\,
	ena => \dp1|PC1|PCReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|PC1|PCReg\(2));

-- Location: LABCELL_X83_Y38_N12
\dp1|I1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|I1|Add0~13_sumout\ = SUM(( \c1|JMPsel\(0) ) + ( \dp1|PC1|PCReg\(3) ) + ( \dp1|I1|Add0~10\ ))
-- \dp1|I1|Add0~14\ = CARRY(( \c1|JMPsel\(0) ) + ( \dp1|PC1|PCReg\(3) ) + ( \dp1|I1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_JMPsel\(0),
	dataf => \dp1|PC1|ALT_INV_PCReg\(3),
	cin => \dp1|I1|Add0~10\,
	sumout => \dp1|I1|Add0~13_sumout\,
	cout => \dp1|I1|Add0~14\);

-- Location: LABCELL_X83_Y38_N39
\dp1|PC1|PCReg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|PC1|PCReg~4_combout\ = ( \dp1|I1|Add0~13_sumout\ & ( ((!\c1|JMPsel\(0)) # (\dp1|MEM1|RAM~595_combout\)) # (\c1|JMPsel\(1)) ) ) # ( !\dp1|I1|Add0~13_sumout\ & ( (!\c1|JMPsel\(1) & (\dp1|MEM1|RAM~595_combout\ & \c1|JMPsel\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_JMPsel\(1),
	datac => \dp1|MEM1|ALT_INV_RAM~595_combout\,
	datad => \c1|ALT_INV_JMPsel\(0),
	dataf => \dp1|I1|ALT_INV_Add0~13_sumout\,
	combout => \dp1|PC1|PCReg~4_combout\);

-- Location: FF_X83_Y38_N41
\dp1|PC1|PCReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|PC1|PCReg~4_combout\,
	sclr => \rst~input_o\,
	ena => \dp1|PC1|PCReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|PC1|PCReg\(3));

-- Location: LABCELL_X83_Y38_N15
\dp1|I1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|I1|Add0~17_sumout\ = SUM(( \c1|JMPsel\(0) ) + ( \dp1|PC1|PCReg\(4) ) + ( \dp1|I1|Add0~14\ ))
-- \dp1|I1|Add0~18\ = CARRY(( \c1|JMPsel\(0) ) + ( \dp1|PC1|PCReg\(4) ) + ( \dp1|I1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|PC1|ALT_INV_PCReg\(4),
	datad => \c1|ALT_INV_JMPsel\(0),
	cin => \dp1|I1|Add0~14\,
	sumout => \dp1|I1|Add0~17_sumout\,
	cout => \dp1|I1|Add0~18\);

-- Location: LABCELL_X83_Y38_N51
\dp1|PC1|PCReg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|PC1|PCReg~5_combout\ = ( \dp1|I1|Add0~17_sumout\ & ( ((!\c1|JMPsel\(0)) # (\c1|JMPsel\(1))) # (\dp1|MEM1|RAM~553_combout\) ) ) # ( !\dp1|I1|Add0~17_sumout\ & ( (\dp1|MEM1|RAM~553_combout\ & (\c1|JMPsel\(0) & !\c1|JMPsel\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~553_combout\,
	datac => \c1|ALT_INV_JMPsel\(0),
	datad => \c1|ALT_INV_JMPsel\(1),
	dataf => \dp1|I1|ALT_INV_Add0~17_sumout\,
	combout => \dp1|PC1|PCReg~5_combout\);

-- Location: FF_X83_Y38_N53
\dp1|PC1|PCReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|PC1|PCReg~5_combout\,
	sclr => \rst~input_o\,
	ena => \dp1|PC1|PCReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|PC1|PCReg\(4));

-- Location: FF_X82_Y38_N7
\dp1|MA1|Addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|IR1|InstrReg~0_combout\,
	ena => \dp1|MA1|Addr[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MA1|Addr\(4));

-- Location: MLABCELL_X82_Y39_N57
\dp1|MIM1|out[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MIM1|out[4]~4_combout\ = ( \c1|state.100~q\ & ( \dp1|MA1|Addr\(4) ) ) # ( !\c1|state.100~q\ & ( (!\c1|state.011~q\ & (\dp1|PC1|PCReg\(4))) # (\c1|state.011~q\ & ((\dp1|MA1|Addr\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|PC1|ALT_INV_PCReg\(4),
	datac => \c1|ALT_INV_state.011~q\,
	datad => \dp1|MA1|ALT_INV_Addr\(4),
	dataf => \c1|ALT_INV_state.100~q\,
	combout => \dp1|MIM1|out[4]~4_combout\);

-- Location: MLABCELL_X84_Y42_N24
\dp1|MEM1|RAM~398feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~398feeder_combout\ = ( \dp1|ACC1|Aout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~398feeder_combout\);

-- Location: FF_X84_Y42_N25
\dp1|MEM1|RAM~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~398feeder_combout\,
	ena => \dp1|MEM1|RAM~779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~398_q\);

-- Location: FF_X82_Y36_N53
\dp1|MEM1|RAM~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~390_q\);

-- Location: FF_X80_Y42_N16
\dp1|MEM1|RAM~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~781_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~406_q\);

-- Location: FF_X84_Y39_N50
\dp1|MEM1|RAM~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~783_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~414_q\);

-- Location: MLABCELL_X84_Y39_N30
\dp1|MEM1|RAM~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~599_combout\ = ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~414_q\ & ( (\dp1|MEM1|RAM~406_q\) # (\dp1|MIM1|out[0]~0_combout\) ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~414_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & 
-- ((\dp1|MEM1|RAM~390_q\))) # (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~398_q\)) ) ) ) # ( \dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MEM1|RAM~414_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & \dp1|MEM1|RAM~406_q\) ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( 
-- !\dp1|MEM1|RAM~414_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~390_q\))) # (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~398_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~398_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~390_q\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~406_q\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~414_q\,
	combout => \dp1|MEM1|RAM~599_combout\);

-- Location: FF_X84_Y39_N35
\dp1|MEM1|RAM~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~30_q\);

-- Location: LABCELL_X77_Y38_N15
\dp1|MEM1|RAM~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~818_combout\ = ( !\dp1|ACC1|Aout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~818_combout\);

-- Location: FF_X77_Y38_N17
\dp1|MEM1|RAM~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~818_combout\,
	ena => \dp1|MEM1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~22_q\);

-- Location: LABCELL_X77_Y39_N33
\dp1|MEM1|RAM~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~817_combout\ = ( !\dp1|ACC1|Aout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~817_combout\);

-- Location: FF_X77_Y39_N35
\dp1|MEM1|RAM~6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~817_combout\,
	ena => \dp1|MEM1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~6_q\);

-- Location: FF_X77_Y39_N5
\dp1|MEM1|RAM~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~14_q\);

-- Location: LABCELL_X77_Y39_N3
\dp1|MEM1|RAM~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~596_combout\ = ( \dp1|MEM1|RAM~14_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~30_q\) ) ) ) # ( !\dp1|MEM1|RAM~14_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MEM1|RAM~30_q\ & 
-- \dp1|MIM1|out[1]~1_combout\) ) ) ) # ( \dp1|MEM1|RAM~14_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((!\dp1|MEM1|RAM~6_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MEM1|RAM~22_q\)) ) ) ) # ( !\dp1|MEM1|RAM~14_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((!\dp1|MEM1|RAM~6_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MEM1|RAM~22_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000001100111111000000110000000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~30_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~22_q\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~6_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~14_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~596_combout\);

-- Location: MLABCELL_X87_Y40_N18
\dp1|MEM1|RAM~270feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~270feeder_combout\ = ( \dp1|ACC1|Aout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~270feeder_combout\);

-- Location: FF_X87_Y40_N19
\dp1|MEM1|RAM~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~270feeder_combout\,
	ena => \dp1|MEM1|RAM~753_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~270_q\);

-- Location: LABCELL_X80_Y41_N51
\dp1|MEM1|RAM~278feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~278feeder_combout\ = ( \dp1|ACC1|Aout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~278feeder_combout\);

-- Location: FF_X80_Y41_N52
\dp1|MEM1|RAM~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~278feeder_combout\,
	ena => \dp1|MEM1|RAM~761_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~278_q\);

-- Location: FF_X80_Y40_N32
\dp1|MEM1|RAM~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~262_q\);

-- Location: FF_X85_Y38_N44
\dp1|MEM1|RAM~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~769_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~286_q\);

-- Location: MLABCELL_X84_Y40_N33
\dp1|MEM1|RAM~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~598_combout\ = ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~286_q\ ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~270_q\ ) ) ) # ( \dp1|MIM1|out[1]~1_combout\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~278_q\ ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~262_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~270_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~278_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~262_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~286_q\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~598_combout\);

-- Location: FF_X80_Y40_N58
\dp1|MEM1|RAM~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~134_q\);

-- Location: FF_X82_Y37_N52
\dp1|MEM1|RAM~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~158_q\);

-- Location: FF_X78_Y37_N43
\dp1|MEM1|RAM~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~150_q\);

-- Location: FF_X83_Y36_N26
\dp1|MEM1|RAM~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~142_q\);

-- Location: LABCELL_X83_Y36_N24
\dp1|MEM1|RAM~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~597_combout\ = ( \dp1|MEM1|RAM~142_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~158_q\) ) ) ) # ( !\dp1|MEM1|RAM~142_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MEM1|RAM~158_q\ & 
-- \dp1|MIM1|out[1]~1_combout\) ) ) ) # ( \dp1|MEM1|RAM~142_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~134_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~150_q\))) ) ) ) # ( !\dp1|MEM1|RAM~142_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~134_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~150_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~134_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~158_q\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~150_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~142_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~597_combout\);

-- Location: MLABCELL_X84_Y37_N24
\dp1|MEM1|RAM~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~600_combout\ = ( \dp1|MEM1|RAM~598_combout\ & ( \dp1|MEM1|RAM~597_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MEM1|RAM~596_combout\)) # (\dp1|MIM1|out[4]~4_combout\))) # (\dp1|MIM1|out[5]~5_combout\ & ((!\dp1|MIM1|out[4]~4_combout\) 
-- # ((\dp1|MEM1|RAM~599_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~598_combout\ & ( \dp1|MEM1|RAM~597_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MEM1|RAM~596_combout\)) # (\dp1|MIM1|out[4]~4_combout\))) # (\dp1|MIM1|out[5]~5_combout\ & 
-- (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~599_combout\))) ) ) ) # ( \dp1|MEM1|RAM~598_combout\ & ( !\dp1|MEM1|RAM~597_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~596_combout\)))) # 
-- (\dp1|MIM1|out[5]~5_combout\ & ((!\dp1|MIM1|out[4]~4_combout\) # ((\dp1|MEM1|RAM~599_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~598_combout\ & ( !\dp1|MEM1|RAM~597_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[4]~4_combout\ & 
-- ((\dp1|MEM1|RAM~596_combout\)))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~599_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~599_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~596_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~598_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~597_combout\,
	combout => \dp1|MEM1|RAM~600_combout\);

-- Location: FF_X83_Y37_N59
\dp1|MEM1|RAM~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~238_q\);

-- Location: FF_X83_Y37_N1
\dp1|MEM1|RAM~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~494_q\);

-- Location: FF_X78_Y37_N25
\dp1|MEM1|RAM~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~110_q\);

-- Location: LABCELL_X77_Y40_N51
\dp1|MEM1|RAM~366feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~366feeder_combout\ = ( \dp1|ACC1|Aout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~366feeder_combout\);

-- Location: FF_X77_Y40_N52
\dp1|MEM1|RAM~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~366feeder_combout\,
	ena => \dp1|MEM1|RAM~759_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~366_q\);

-- Location: MLABCELL_X84_Y37_N6
\dp1|MEM1|RAM~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~612_combout\ = ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~494_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~238_q\ ) ) ) # ( \dp1|MIM1|out[5]~5_combout\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~366_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~110_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~238_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~494_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~110_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~366_q\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~612_combout\);

-- Location: FF_X81_Y36_N46
\dp1|MEM1|RAM~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~751_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~358_q\);

-- Location: FF_X81_Y36_N56
\dp1|MEM1|RAM~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~486_q\);

-- Location: LABCELL_X81_Y36_N18
\dp1|MEM1|RAM~823\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~823_combout\ = !\dp1|ACC1|Aout\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~823_combout\);

-- Location: FF_X81_Y36_N19
\dp1|MEM1|RAM~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~823_combout\,
	ena => \dp1|MEM1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~102_q\);

-- Location: FF_X79_Y39_N19
\dp1|MEM1|RAM~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~230_q\);

-- Location: LABCELL_X83_Y37_N12
\dp1|MEM1|RAM~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~611_combout\ = ( \dp1|MEM1|RAM~230_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~358_q\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~486_q\))) ) ) ) # ( !\dp1|MEM1|RAM~230_q\ & ( 
-- \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~358_q\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~486_q\))) ) ) ) # ( \dp1|MEM1|RAM~230_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MEM1|RAM~102_q\) # 
-- (\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( !\dp1|MEM1|RAM~230_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MEM1|RAM~102_q\ & !\dp1|MIM1|out[4]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100001111111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~358_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~486_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~102_q\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~230_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~611_combout\);

-- Location: MLABCELL_X82_Y40_N45
\dp1|MEM1|RAM~246feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~246feeder_combout\ = ( \dp1|ACC1|Aout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~246feeder_combout\);

-- Location: FF_X82_Y40_N46
\dp1|MEM1|RAM~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~246feeder_combout\,
	ena => \dp1|MEM1|RAM~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~246_q\);

-- Location: FF_X84_Y40_N29
\dp1|MEM1|RAM~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~709_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~118_q\);

-- Location: FF_X84_Y40_N56
\dp1|MEM1|RAM~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~502_q\);

-- Location: FF_X84_Y40_N22
\dp1|MEM1|RAM~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~767_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~374_q\);

-- Location: MLABCELL_X84_Y40_N54
\dp1|MEM1|RAM~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~613_combout\ = ( \dp1|MEM1|RAM~502_q\ & ( \dp1|MEM1|RAM~374_q\ & ( ((!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~118_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~246_q\))) # (\dp1|MIM1|out[5]~5_combout\) ) ) ) # ( 
-- !\dp1|MEM1|RAM~502_q\ & ( \dp1|MEM1|RAM~374_q\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (((\dp1|MIM1|out[5]~5_combout\) # (\dp1|MEM1|RAM~118_q\)))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~246_q\ & ((!\dp1|MIM1|out[5]~5_combout\)))) ) ) ) # ( 
-- \dp1|MEM1|RAM~502_q\ & ( !\dp1|MEM1|RAM~374_q\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (((\dp1|MEM1|RAM~118_q\ & !\dp1|MIM1|out[5]~5_combout\)))) # (\dp1|MIM1|out[4]~4_combout\ & (((\dp1|MIM1|out[5]~5_combout\)) # (\dp1|MEM1|RAM~246_q\))) ) ) ) # ( 
-- !\dp1|MEM1|RAM~502_q\ & ( !\dp1|MEM1|RAM~374_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~118_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~246_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~246_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~118_q\,
	datad => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~502_q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~374_q\,
	combout => \dp1|MEM1|RAM~613_combout\);

-- Location: FF_X82_Y37_N55
\dp1|MEM1|RAM~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~254_q\);

-- Location: FF_X82_Y40_N1
\dp1|MEM1|RAM~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~510_q\);

-- Location: FF_X79_Y40_N50
\dp1|MEM1|RAM~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~775_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~382_q\);

-- Location: FF_X85_Y38_N55
\dp1|MEM1|RAM~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~126_q\);

-- Location: MLABCELL_X84_Y40_N24
\dp1|MEM1|RAM~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~614_combout\ = ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~510_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~254_q\ ) ) ) # ( \dp1|MIM1|out[5]~5_combout\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~382_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~126_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~254_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~510_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~382_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~126_q\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~614_combout\);

-- Location: MLABCELL_X84_Y37_N39
\dp1|MEM1|RAM~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~615_combout\ = ( \dp1|MEM1|RAM~613_combout\ & ( \dp1|MEM1|RAM~614_combout\ & ( ((!\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~611_combout\))) # (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~612_combout\))) # (\dp1|MIM1|out[1]~1_combout\) ) 
-- ) ) # ( !\dp1|MEM1|RAM~613_combout\ & ( \dp1|MEM1|RAM~614_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((!\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~611_combout\))) # (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~612_combout\)))) # 
-- (\dp1|MIM1|out[1]~1_combout\ & (((\dp1|MIM1|out[0]~0_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~613_combout\ & ( !\dp1|MEM1|RAM~614_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((!\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~611_combout\))) # 
-- (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~612_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & (((!\dp1|MIM1|out[0]~0_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~613_combout\ & ( !\dp1|MEM1|RAM~614_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & 
-- ((!\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~611_combout\))) # (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~612_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~612_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~611_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~613_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~614_combout\,
	combout => \dp1|MEM1|RAM~615_combout\);

-- Location: FF_X79_Y42_N55
\dp1|MEM1|RAM~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~214_q\);

-- Location: FF_X79_Y42_N1
\dp1|MEM1|RAM~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~198_q\);

-- Location: LABCELL_X79_Y41_N15
\dp1|MEM1|RAM~206feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~206feeder_combout\ = ( \dp1|ACC1|Aout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~206feeder_combout\);

-- Location: FF_X79_Y41_N17
\dp1|MEM1|RAM~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~206feeder_combout\,
	ena => \dp1|MEM1|RAM~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~206_q\);

-- Location: FF_X80_Y38_N28
\dp1|MEM1|RAM~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~222_q\);

-- Location: LABCELL_X80_Y38_N0
\dp1|MEM1|RAM~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~607_combout\ = ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~222_q\ & ( (\dp1|MEM1|RAM~206_q\) # (\dp1|MIM1|out[1]~1_combout\) ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~222_q\ & ( (!\dp1|MIM1|out[1]~1_combout\ & 
-- ((\dp1|MEM1|RAM~198_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~214_q\)) ) ) ) # ( \dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MEM1|RAM~222_q\ & ( (!\dp1|MIM1|out[1]~1_combout\ & \dp1|MEM1|RAM~206_q\) ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( 
-- !\dp1|MEM1|RAM~222_q\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~198_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~214_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~214_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~198_q\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~206_q\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~222_q\,
	combout => \dp1|MEM1|RAM~607_combout\);

-- Location: LABCELL_X79_Y36_N0
\dp1|MEM1|RAM~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~822_combout\ = ( !\dp1|ACC1|Aout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~822_combout\);

-- Location: FF_X79_Y36_N2
\dp1|MEM1|RAM~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~822_combout\,
	ena => \dp1|MEM1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~86_q\);

-- Location: MLABCELL_X78_Y38_N12
\dp1|MEM1|RAM~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~821_combout\ = !\dp1|ACC1|Aout\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~821_combout\);

-- Location: FF_X78_Y38_N13
\dp1|MEM1|RAM~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~821_combout\,
	ena => \dp1|MEM1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~78_q\);

-- Location: LABCELL_X79_Y41_N42
\dp1|MEM1|RAM~70feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~70feeder_combout\ = ( \dp1|ACC1|Aout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~70feeder_combout\);

-- Location: FF_X79_Y41_N43
\dp1|MEM1|RAM~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~70feeder_combout\,
	ena => \dp1|MEM1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~70_q\);

-- Location: FF_X80_Y38_N44
\dp1|MEM1|RAM~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~94_q\);

-- Location: LABCELL_X80_Y38_N42
\dp1|MEM1|RAM~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~606_combout\ = ( \dp1|MEM1|RAM~94_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MEM1|RAM~78_q\) # (\dp1|MIM1|out[1]~1_combout\) ) ) ) # ( !\dp1|MEM1|RAM~94_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MEM1|RAM~78_q\ & 
-- !\dp1|MIM1|out[1]~1_combout\) ) ) ) # ( \dp1|MEM1|RAM~94_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~70_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MEM1|RAM~86_q\)) ) ) ) # ( !\dp1|MEM1|RAM~94_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~70_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MEM1|RAM~86_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111010000010101111101011000000110000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~86_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~78_q\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~70_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~94_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~606_combout\);

-- Location: FF_X81_Y41_N5
\dp1|MEM1|RAM~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~454_q\);

-- Location: FF_X81_Y42_N32
\dp1|MEM1|RAM~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~470_q\);

-- Location: FF_X82_Y41_N46
\dp1|MEM1|RAM~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~462_q\);

-- Location: FF_X80_Y38_N8
\dp1|MEM1|RAM~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~478_q\);

-- Location: LABCELL_X80_Y38_N6
\dp1|MEM1|RAM~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~609_combout\ = ( \dp1|MEM1|RAM~478_q\ & ( \dp1|MIM1|out[1]~1_combout\ & ( (\dp1|MIM1|out[0]~0_combout\) # (\dp1|MEM1|RAM~470_q\) ) ) ) # ( !\dp1|MEM1|RAM~478_q\ & ( \dp1|MIM1|out[1]~1_combout\ & ( (\dp1|MEM1|RAM~470_q\ & 
-- !\dp1|MIM1|out[0]~0_combout\) ) ) ) # ( \dp1|MEM1|RAM~478_q\ & ( !\dp1|MIM1|out[1]~1_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~454_q\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~462_q\))) ) ) ) # ( !\dp1|MEM1|RAM~478_q\ & ( 
-- !\dp1|MIM1|out[1]~1_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~454_q\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~462_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~454_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~470_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~462_q\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~478_q\,
	dataf => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	combout => \dp1|MEM1|RAM~609_combout\);

-- Location: FF_X83_Y40_N19
\dp1|MEM1|RAM~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~765_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~342_q\);

-- Location: FF_X80_Y36_N28
\dp1|MEM1|RAM~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~749_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~326_q\);

-- Location: FF_X85_Y41_N53
\dp1|MEM1|RAM~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~773_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~350_q\);

-- Location: FF_X85_Y41_N31
\dp1|MEM1|RAM~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~757_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~334_q\);

-- Location: LABCELL_X85_Y41_N51
\dp1|MEM1|RAM~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~608_combout\ = ( \dp1|MEM1|RAM~350_q\ & ( \dp1|MEM1|RAM~334_q\ & ( ((!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~326_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~342_q\))) # (\dp1|MIM1|out[0]~0_combout\) ) ) ) # ( 
-- !\dp1|MEM1|RAM~350_q\ & ( \dp1|MEM1|RAM~334_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & ((!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~326_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~342_q\)))) # (\dp1|MIM1|out[0]~0_combout\ & 
-- (((!\dp1|MIM1|out[1]~1_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~350_q\ & ( !\dp1|MEM1|RAM~334_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & ((!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~326_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~342_q\)))) # 
-- (\dp1|MIM1|out[0]~0_combout\ & (((\dp1|MIM1|out[1]~1_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~350_q\ & ( !\dp1|MEM1|RAM~334_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & ((!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~326_q\))) # (\dp1|MIM1|out[1]~1_combout\ & 
-- (\dp1|MEM1|RAM~342_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~342_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~326_q\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~350_q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~334_q\,
	combout => \dp1|MEM1|RAM~608_combout\);

-- Location: MLABCELL_X84_Y37_N57
\dp1|MEM1|RAM~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~610_combout\ = ( \dp1|MEM1|RAM~609_combout\ & ( \dp1|MEM1|RAM~608_combout\ & ( ((!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~606_combout\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~607_combout\))) # (\dp1|MIM1|out[5]~5_combout\) ) 
-- ) ) # ( !\dp1|MEM1|RAM~609_combout\ & ( \dp1|MEM1|RAM~608_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~606_combout\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~607_combout\)))) # 
-- (\dp1|MIM1|out[5]~5_combout\ & (((!\dp1|MIM1|out[4]~4_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~609_combout\ & ( !\dp1|MEM1|RAM~608_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~606_combout\))) # 
-- (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~607_combout\)))) # (\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MIM1|out[4]~4_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~609_combout\ & ( !\dp1|MEM1|RAM~608_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & 
-- ((!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~606_combout\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~607_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~607_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~606_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~609_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~608_combout\,
	combout => \dp1|MEM1|RAM~610_combout\);

-- Location: MLABCELL_X78_Y41_N3
\dp1|MEM1|RAM~302feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~302feeder_combout\ = ( \dp1|ACC1|Aout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~302feeder_combout\);

-- Location: FF_X78_Y41_N4
\dp1|MEM1|RAM~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~302feeder_combout\,
	ena => \dp1|MEM1|RAM~755_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~302_q\);

-- Location: LABCELL_X80_Y41_N6
\dp1|MEM1|RAM~310feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~310feeder_combout\ = ( \dp1|ACC1|Aout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~310feeder_combout\);

-- Location: FF_X80_Y41_N7
\dp1|MEM1|RAM~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~310feeder_combout\,
	ena => \dp1|MEM1|RAM~763_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~310_q\);

-- Location: FF_X80_Y37_N50
\dp1|MEM1|RAM~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~771_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~318_q\);

-- Location: FF_X80_Y37_N58
\dp1|MEM1|RAM~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~294_q\);

-- Location: LABCELL_X80_Y37_N48
\dp1|MEM1|RAM~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~603_combout\ = ( \dp1|MEM1|RAM~318_q\ & ( \dp1|MEM1|RAM~294_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (((!\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~310_q\)))) # (\dp1|MIM1|out[0]~0_combout\ & (((\dp1|MIM1|out[1]~1_combout\)) # 
-- (\dp1|MEM1|RAM~302_q\))) ) ) ) # ( !\dp1|MEM1|RAM~318_q\ & ( \dp1|MEM1|RAM~294_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (((!\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~310_q\)))) # (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~302_q\ & 
-- ((!\dp1|MIM1|out[1]~1_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~318_q\ & ( !\dp1|MEM1|RAM~294_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (((\dp1|MEM1|RAM~310_q\ & \dp1|MIM1|out[1]~1_combout\)))) # (\dp1|MIM1|out[0]~0_combout\ & (((\dp1|MIM1|out[1]~1_combout\)) # 
-- (\dp1|MEM1|RAM~302_q\))) ) ) ) # ( !\dp1|MEM1|RAM~318_q\ & ( !\dp1|MEM1|RAM~294_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (((\dp1|MEM1|RAM~310_q\ & \dp1|MIM1|out[1]~1_combout\)))) # (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~302_q\ & 
-- ((!\dp1|MIM1|out[1]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~302_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~310_q\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~318_q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~294_q\,
	combout => \dp1|MEM1|RAM~603_combout\);

-- Location: FF_X78_Y41_N43
\dp1|MEM1|RAM~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~787_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~430_q\);

-- Location: FF_X82_Y42_N4
\dp1|MEM1|RAM~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~789_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~438_q\);

-- Location: FF_X82_Y36_N59
\dp1|MEM1|RAM~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~785_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~422_q\);

-- Location: FF_X80_Y37_N44
\dp1|MEM1|RAM~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~446_q\);

-- Location: LABCELL_X80_Y37_N42
\dp1|MEM1|RAM~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~604_combout\ = ( \dp1|MEM1|RAM~446_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~430_q\) ) ) ) # ( !\dp1|MEM1|RAM~446_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MEM1|RAM~430_q\ & 
-- !\dp1|MIM1|out[1]~1_combout\) ) ) ) # ( \dp1|MEM1|RAM~446_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~422_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~438_q\)) ) ) ) # ( !\dp1|MEM1|RAM~446_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~422_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~438_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~430_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~438_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~422_q\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~446_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~604_combout\);

-- Location: FF_X81_Y37_N10
\dp1|MEM1|RAM~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~174_q\);

-- Location: MLABCELL_X87_Y39_N51
\dp1|MEM1|RAM~166feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~166feeder_combout\ = ( \dp1|ACC1|Aout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~166feeder_combout\);

-- Location: FF_X87_Y39_N52
\dp1|MEM1|RAM~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~166feeder_combout\,
	ena => \dp1|MEM1|RAM~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~166_q\);

-- Location: MLABCELL_X78_Y40_N12
\dp1|MEM1|RAM~182feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~182feeder_combout\ = ( \dp1|ACC1|Aout\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~182feeder_combout\);

-- Location: FF_X78_Y40_N13
\dp1|MEM1|RAM~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~182feeder_combout\,
	ena => \dp1|MEM1|RAM~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~182_q\);

-- Location: FF_X78_Y40_N56
\dp1|MEM1|RAM~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~190_q\);

-- Location: MLABCELL_X78_Y40_N54
\dp1|MEM1|RAM~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~602_combout\ = ( \dp1|MEM1|RAM~190_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~174_q\) ) ) ) # ( !\dp1|MEM1|RAM~190_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MEM1|RAM~174_q\ & 
-- !\dp1|MIM1|out[1]~1_combout\) ) ) ) # ( \dp1|MEM1|RAM~190_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~166_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~182_q\))) ) ) ) # ( !\dp1|MEM1|RAM~190_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~166_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~182_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~174_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~166_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~182_q\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~190_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~602_combout\);

-- Location: LABCELL_X79_Y37_N54
\dp1|MEM1|RAM~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~819_combout\ = !\dp1|ACC1|Aout\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~819_combout\);

-- Location: FF_X79_Y37_N55
\dp1|MEM1|RAM~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~819_combout\,
	ena => \dp1|MEM1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~46_q\);

-- Location: MLABCELL_X78_Y38_N6
\dp1|MEM1|RAM~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~820_combout\ = !\dp1|ACC1|Aout\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|ACC1|ALT_INV_Aout\(6),
	combout => \dp1|MEM1|RAM~820_combout\);

-- Location: FF_X78_Y38_N7
\dp1|MEM1|RAM~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~820_combout\,
	ena => \dp1|MEM1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~54_q\);

-- Location: FF_X78_Y39_N20
\dp1|MEM1|RAM~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~62_q\);

-- Location: FF_X84_Y37_N14
\dp1|MEM1|RAM~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sload => VCC,
	ena => \dp1|MEM1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~38_q\);

-- Location: MLABCELL_X84_Y37_N12
\dp1|MEM1|RAM~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~601_combout\ = ( \dp1|MEM1|RAM~38_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MEM1|RAM~46_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~62_q\))) ) ) ) # ( !\dp1|MEM1|RAM~38_q\ & ( 
-- \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MEM1|RAM~46_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~62_q\))) ) ) ) # ( \dp1|MEM1|RAM~38_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MEM1|RAM~54_q\) # 
-- (!\dp1|MIM1|out[1]~1_combout\) ) ) ) # ( !\dp1|MEM1|RAM~38_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MEM1|RAM~54_q\ & \dp1|MIM1|out[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111111001111110010100000101011111010000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~46_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~54_q\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~62_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~38_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~601_combout\);

-- Location: MLABCELL_X84_Y37_N18
\dp1|MEM1|RAM~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~605_combout\ = ( \dp1|MEM1|RAM~602_combout\ & ( \dp1|MEM1|RAM~601_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\) # ((!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~603_combout\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~604_combout\)))) 
-- ) ) ) # ( !\dp1|MEM1|RAM~602_combout\ & ( \dp1|MEM1|RAM~601_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MIM1|out[4]~4_combout\)) # (\dp1|MIM1|out[5]~5_combout\ & ((!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~603_combout\)) # 
-- (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~604_combout\))))) ) ) ) # ( \dp1|MEM1|RAM~602_combout\ & ( !\dp1|MEM1|RAM~601_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MIM1|out[4]~4_combout\)) # (\dp1|MIM1|out[5]~5_combout\ & 
-- ((!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~603_combout\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~604_combout\))))) ) ) ) # ( !\dp1|MEM1|RAM~602_combout\ & ( !\dp1|MEM1|RAM~601_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & 
-- ((!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~603_combout\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~604_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~603_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~604_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~602_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~601_combout\,
	combout => \dp1|MEM1|RAM~605_combout\);

-- Location: MLABCELL_X84_Y37_N48
\dp1|MEM1|RAM~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~616_combout\ = ( \dp1|MEM1|RAM~610_combout\ & ( \dp1|MEM1|RAM~605_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (((\dp1|MEM1|RAM~600_combout\)) # (\dp1|MIM1|out[3]~3_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\) 
-- # ((\dp1|MEM1|RAM~615_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~610_combout\ & ( \dp1|MEM1|RAM~605_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~600_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & 
-- ((!\dp1|MIM1|out[3]~3_combout\) # ((\dp1|MEM1|RAM~615_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~610_combout\ & ( !\dp1|MEM1|RAM~605_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (((\dp1|MEM1|RAM~600_combout\)) # (\dp1|MIM1|out[3]~3_combout\))) # 
-- (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~615_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~610_combout\ & ( !\dp1|MEM1|RAM~605_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & 
-- (\dp1|MEM1|RAM~600_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~615_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~600_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~615_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~610_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~605_combout\,
	combout => \dp1|MEM1|RAM~616_combout\);

-- Location: MLABCELL_X84_Y38_N12
\dp1|IR1|InstrReg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|IR1|InstrReg~4_combout\ = (!\rst~input_o\ & \dp1|MEM1|RAM~616_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst~input_o\,
	datad => \dp1|MEM1|ALT_INV_RAM~616_combout\,
	combout => \dp1|IR1|InstrReg~4_combout\);

-- Location: FF_X84_Y38_N14
\dp1|IR1|InstrReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|IR1|InstrReg~4_combout\,
	ena => \dp1|IR1|InstrReg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|IR1|InstrReg\(6));

-- Location: MLABCELL_X84_Y38_N54
\c1|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector8~0_combout\ = ( !\dp1|IR1|InstrReg\(6) & ( (\c1|state.010~q\ & (\dp1|IR1|InstrReg\(4) & (\dp1|IR1|InstrReg\(5) & !\dp1|IR1|InstrReg\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.010~q\,
	datab => \dp1|IR1|ALT_INV_InstrReg\(4),
	datac => \dp1|IR1|ALT_INV_InstrReg\(5),
	datad => \dp1|IR1|ALT_INV_InstrReg\(7),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(6),
	combout => \c1|Selector8~0_combout\);

-- Location: MLABCELL_X84_Y38_N36
\c1|nstate.011_333\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|nstate.011_333~combout\ = ( \c1|Selector8~0_combout\ & ( (\c1|nstate.011_333~combout\) # (\c1|Selector12~0_combout\) ) ) # ( !\c1|Selector8~0_combout\ & ( (!\c1|Selector12~0_combout\ & \c1|nstate.011_333~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_Selector12~0_combout\,
	datad => \c1|ALT_INV_nstate.011_333~combout\,
	dataf => \c1|ALT_INV_Selector8~0_combout\,
	combout => \c1|nstate.011_333~combout\);

-- Location: MLABCELL_X82_Y39_N12
\c1|state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|state~11_combout\ = ( \c1|nstate.011_333~combout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst~input_o\,
	dataf => \c1|ALT_INV_nstate.011_333~combout\,
	combout => \c1|state~11_combout\);

-- Location: FF_X82_Y39_N14
\c1|state.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkin~combout\,
	d => \c1|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|state.011~q\);

-- Location: LABCELL_X83_Y39_N12
\dp1|ACC1|Aout~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~18_combout\ = ( \dp1|ACC1|Aout~1_combout\ & ( \c1|ALUsel~7_combout\ & ( ((\c1|state.010~q\ & ((\dp1|IR1|InstrReg\(7)) # (\dp1|ACC1|Aout~0_combout\)))) # (\c1|state.011~q\) ) ) ) # ( !\dp1|ACC1|Aout~1_combout\ & ( \c1|ALUsel~7_combout\ & ( 
-- ((\c1|state.010~q\ & ((\dp1|IR1|InstrReg\(7)) # (\dp1|ACC1|Aout~0_combout\)))) # (\c1|state.011~q\) ) ) ) # ( \dp1|ACC1|Aout~1_combout\ & ( !\c1|ALUsel~7_combout\ & ( ((\c1|state.010~q\ & ((\dp1|IR1|InstrReg\(7)) # (\dp1|ACC1|Aout~0_combout\)))) # 
-- (\c1|state.011~q\) ) ) ) # ( !\dp1|ACC1|Aout~1_combout\ & ( !\c1|ALUsel~7_combout\ & ( ((\c1|state.010~q\ & \dp1|ACC1|Aout~0_combout\)) # (\c1|state.011~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110111011100110111011101110011011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.010~q\,
	datab => \c1|ALT_INV_state.011~q\,
	datac => \dp1|ACC1|ALT_INV_Aout~0_combout\,
	datad => \dp1|IR1|ALT_INV_InstrReg\(7),
	datae => \dp1|ACC1|ALT_INV_Aout~1_combout\,
	dataf => \c1|ALT_INV_ALUsel~7_combout\,
	combout => \dp1|ACC1|Aout~18_combout\);

-- Location: LABCELL_X83_Y39_N33
\c1|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector11~0_combout\ = ( \c1|state.011~q\ ) # ( !\c1|state.011~q\ & ( (\dp1|IR1|InstrReg\(4) & (\dp1|IR1|InstrReg\(6) & (!\dp1|IR1|InstrReg\(5) $ (\dp1|IR1|InstrReg\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000001000000000100000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|IR1|ALT_INV_InstrReg\(4),
	datab => \dp1|IR1|ALT_INV_InstrReg\(5),
	datac => \dp1|IR1|ALT_INV_InstrReg\(7),
	datad => \dp1|IR1|ALT_INV_InstrReg\(6),
	dataf => \c1|ALT_INV_state.011~q\,
	combout => \c1|Selector11~0_combout\);

-- Location: LABCELL_X83_Y39_N6
\c1|Asel[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Asel\(1) = ( \c1|Selector11~0_combout\ & ( (\dp1|ACC1|Aout~18_combout\) # (\c1|Asel\(1)) ) ) # ( !\c1|Selector11~0_combout\ & ( (\c1|Asel\(1) & !\dp1|ACC1|Aout~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_Asel\(1),
	datad => \dp1|ACC1|ALT_INV_Aout~18_combout\,
	dataf => \c1|ALT_INV_Selector11~0_combout\,
	combout => \c1|Asel\(1));

-- Location: IOIBUF_X89_Y35_N44
\Input[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(7),
	o => \Input[7]~input_o\);

-- Location: LABCELL_X83_Y38_N54
\dp1|SH1|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|SH1|Mux0~1_combout\ = ( \dp1|ALU1|Mux6~0_combout\ & ( \dp1|ALU1|Mux1~0_combout\ & ( (!\c1|SHsel[0]~2_combout\ & (\c1|SHsel[1]~1_combout\)) # (\c1|SHsel[0]~2_combout\ & (!\c1|SHsel[1]~1_combout\ & (!\dp1|ALU1|Mux7~0_combout\ & 
-- !\dp1|ALU1|Add0~5_sumout\))) ) ) ) # ( !\dp1|ALU1|Mux6~0_combout\ & ( \dp1|ALU1|Mux1~0_combout\ & ( (!\c1|SHsel[0]~2_combout\ & (\c1|SHsel[1]~1_combout\)) # (\c1|SHsel[0]~2_combout\ & (!\c1|SHsel[1]~1_combout\ & !\dp1|ALU1|Mux7~0_combout\)) ) ) ) # ( 
-- \dp1|ALU1|Mux6~0_combout\ & ( !\dp1|ALU1|Mux1~0_combout\ & ( (!\c1|SHsel[0]~2_combout\ & (\c1|SHsel[1]~1_combout\)) # (\c1|SHsel[0]~2_combout\ & (!\c1|SHsel[1]~1_combout\ & (!\dp1|ALU1|Mux7~0_combout\ & !\dp1|ALU1|Add0~5_sumout\))) ) ) ) # ( 
-- !\dp1|ALU1|Mux6~0_combout\ & ( !\dp1|ALU1|Mux1~0_combout\ & ( ((\c1|SHsel[0]~2_combout\ & !\dp1|ALU1|Mux7~0_combout\)) # (\c1|SHsel[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011011000100010001001100010011000100110001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_SHsel[0]~2_combout\,
	datab => \c1|ALT_INV_SHsel[1]~1_combout\,
	datac => \dp1|ALU1|ALT_INV_Mux7~0_combout\,
	datad => \dp1|ALU1|ALT_INV_Add0~5_sumout\,
	datae => \dp1|ALU1|ALT_INV_Mux6~0_combout\,
	dataf => \dp1|ALU1|ALT_INV_Mux1~0_combout\,
	combout => \dp1|SH1|Mux0~1_combout\);

-- Location: MLABCELL_X82_Y38_N12
\dp1|SH1|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|SH1|Mux0~2_combout\ = ( \dp1|ALU1|Mux1~0_combout\ & ( (!\dp1|ALU1|Mux6~0_combout\ & !\c1|SHsel[0]~2_combout\) ) ) # ( !\dp1|ALU1|Mux1~0_combout\ & ( (!\dp1|ALU1|Mux6~0_combout\ & (!\c1|SHsel[0]~2_combout\)) # (\dp1|ALU1|Mux6~0_combout\ & 
-- ((\c1|SHsel[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110011110000001111001111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|ALU1|ALT_INV_Mux6~0_combout\,
	datac => \c1|ALT_INV_SHsel[0]~2_combout\,
	datad => \c1|ALT_INV_SHsel[1]~1_combout\,
	dataf => \dp1|ALU1|ALT_INV_Mux1~0_combout\,
	combout => \dp1|SH1|Mux0~2_combout\);

-- Location: LABCELL_X81_Y38_N24
\dp1|SH1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|SH1|Mux0~0_combout\ = ( \dp1|ALU1|Add0~29_sumout\ & ( \dp1|ALU1|Add0~25_sumout\ & ( (!\dp1|SH1|Mux0~1_combout\ & (((!\dp1|SH1|Mux0~2_combout\) # (\dp1|ALU1|Mux0~0_combout\)) # (\c1|SHsel[0]~2_combout\))) ) ) ) # ( !\dp1|ALU1|Add0~29_sumout\ & ( 
-- \dp1|ALU1|Add0~25_sumout\ & ( (!\dp1|SH1|Mux0~1_combout\ & ((\dp1|ALU1|Mux0~0_combout\) # (\c1|SHsel[0]~2_combout\))) ) ) ) # ( \dp1|ALU1|Add0~29_sumout\ & ( !\dp1|ALU1|Add0~25_sumout\ & ( (!\dp1|SH1|Mux0~1_combout\ & ((!\dp1|SH1|Mux0~2_combout\) # 
-- ((!\c1|SHsel[0]~2_combout\ & \dp1|ALU1|Mux0~0_combout\)))) ) ) ) # ( !\dp1|ALU1|Add0~29_sumout\ & ( !\dp1|ALU1|Add0~25_sumout\ & ( (!\dp1|SH1|Mux0~1_combout\ & ((!\c1|SHsel[0]~2_combout\ & ((\dp1|ALU1|Mux0~0_combout\))) # (\c1|SHsel[0]~2_combout\ & 
-- (!\dp1|SH1|Mux0~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010101000101000001010100000100010101010101010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|SH1|ALT_INV_Mux0~1_combout\,
	datab => \c1|ALT_INV_SHsel[0]~2_combout\,
	datac => \dp1|SH1|ALT_INV_Mux0~2_combout\,
	datad => \dp1|ALU1|ALT_INV_Mux0~0_combout\,
	datae => \dp1|ALU1|ALT_INV_Add0~29_sumout\,
	dataf => \dp1|ALU1|ALT_INV_Add0~25_sumout\,
	combout => \dp1|SH1|Mux0~0_combout\);

-- Location: LABCELL_X81_Y38_N18
\dp1|AM1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|AM1|Mux0~0_combout\ = ( \dp1|MEM1|RAM~658_combout\ & ( \dp1|SH1|Mux0~0_combout\ & ( (!\c1|Asel\(1) & (((!\c1|Asel\(0)) # (\dp1|RF1|RegFile~8_combout\)))) # (\c1|Asel\(1) & (((\c1|Asel\(0))) # (\Input[7]~input_o\))) ) ) ) # ( 
-- !\dp1|MEM1|RAM~658_combout\ & ( \dp1|SH1|Mux0~0_combout\ & ( (!\c1|Asel\(1) & (((!\c1|Asel\(0)) # (\dp1|RF1|RegFile~8_combout\)))) # (\c1|Asel\(1) & (\Input[7]~input_o\ & (!\c1|Asel\(0)))) ) ) ) # ( \dp1|MEM1|RAM~658_combout\ & ( !\dp1|SH1|Mux0~0_combout\ 
-- & ( (!\c1|Asel\(1) & (((\c1|Asel\(0) & \dp1|RF1|RegFile~8_combout\)))) # (\c1|Asel\(1) & (((\c1|Asel\(0))) # (\Input[7]~input_o\))) ) ) ) # ( !\dp1|MEM1|RAM~658_combout\ & ( !\dp1|SH1|Mux0~0_combout\ & ( (!\c1|Asel\(1) & (((\c1|Asel\(0) & 
-- \dp1|RF1|RegFile~8_combout\)))) # (\c1|Asel\(1) & (\Input[7]~input_o\ & (!\c1|Asel\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_Asel\(1),
	datab => \ALT_INV_Input[7]~input_o\,
	datac => \c1|ALT_INV_Asel\(0),
	datad => \dp1|RF1|ALT_INV_RegFile~8_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~658_combout\,
	dataf => \dp1|SH1|ALT_INV_Mux0~0_combout\,
	combout => \dp1|AM1|Mux0~0_combout\);

-- Location: FF_X81_Y38_N20
\dp1|ACC1|Aout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|AM1|Mux0~0_combout\,
	sclr => \rst~input_o\,
	ena => \dp1|ACC1|Aout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|ACC1|Aout\(7));

-- Location: FF_X81_Y39_N28
\dp1|MEM1|RAM~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~143_q\);

-- Location: FF_X81_Y37_N58
\dp1|MEM1|RAM~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~175_q\);

-- Location: FF_X75_Y40_N43
\dp1|MEM1|RAM~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~207_q\);

-- Location: FF_X85_Y39_N22
\dp1|MEM1|RAM~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~239_q\);

-- Location: LABCELL_X85_Y39_N9
\dp1|MEM1|RAM~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~644_combout\ = ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~239_q\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~175_q\) ) ) ) # ( !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~239_q\ & ( (!\dp1|MIM1|out[3]~3_combout\ & 
-- (\dp1|MEM1|RAM~143_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~207_q\))) ) ) ) # ( \dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MEM1|RAM~239_q\ & ( (\dp1|MEM1|RAM~175_q\ & !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( !\dp1|MIM1|out[2]~2_combout\ & ( 
-- !\dp1|MEM1|RAM~239_q\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~143_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~207_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~143_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~175_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~207_q\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~239_q\,
	combout => \dp1|MEM1|RAM~644_combout\);

-- Location: FF_X79_Y41_N49
\dp1|MEM1|RAM~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~151_q\);

-- Location: LABCELL_X79_Y42_N6
\dp1|MEM1|RAM~215feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~215feeder_combout\ = ( \dp1|ACC1|Aout\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~215feeder_combout\);

-- Location: FF_X79_Y42_N7
\dp1|MEM1|RAM~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~215feeder_combout\,
	ena => \dp1|MEM1|RAM~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~215_q\);

-- Location: FF_X85_Y39_N14
\dp1|MEM1|RAM~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~247_q\);

-- Location: FF_X85_Y39_N34
\dp1|MEM1|RAM~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~183_q\);

-- Location: LABCELL_X85_Y39_N12
\dp1|MEM1|RAM~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~645_combout\ = ( \dp1|MEM1|RAM~247_q\ & ( \dp1|MEM1|RAM~183_q\ & ( ((!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~151_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~215_q\)))) # (\dp1|MIM1|out[2]~2_combout\) ) ) ) # ( 
-- !\dp1|MEM1|RAM~247_q\ & ( \dp1|MEM1|RAM~183_q\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~151_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~215_q\))))) # (\dp1|MIM1|out[2]~2_combout\ & 
-- (((!\dp1|MIM1|out[3]~3_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~247_q\ & ( !\dp1|MEM1|RAM~183_q\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~151_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~215_q\))))) # 
-- (\dp1|MIM1|out[2]~2_combout\ & (((\dp1|MIM1|out[3]~3_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~247_q\ & ( !\dp1|MEM1|RAM~183_q\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~151_q\)) # (\dp1|MIM1|out[3]~3_combout\ & 
-- ((\dp1|MEM1|RAM~215_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~151_q\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~215_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~247_q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~183_q\,
	combout => \dp1|MEM1|RAM~645_combout\);

-- Location: FF_X83_Y36_N50
\dp1|MEM1|RAM~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~135_q\);

-- Location: FF_X81_Y41_N47
\dp1|MEM1|RAM~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~199_q\);

-- Location: FF_X79_Y39_N53
\dp1|MEM1|RAM~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~231_q\);

-- Location: FF_X87_Y38_N29
\dp1|MEM1|RAM~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~167_q\);

-- Location: MLABCELL_X87_Y38_N27
\dp1|MEM1|RAM~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~643_combout\ = ( \dp1|MEM1|RAM~167_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~231_q\) ) ) ) # ( !\dp1|MEM1|RAM~167_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~231_q\ & 
-- \dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~167_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~135_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~199_q\))) ) ) ) # ( !\dp1|MEM1|RAM~167_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~135_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~199_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~135_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~199_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~231_q\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~167_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~643_combout\);

-- Location: FF_X82_Y37_N26
\dp1|MEM1|RAM~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~159_q\);

-- Location: FF_X80_Y38_N56
\dp1|MEM1|RAM~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~223_q\);

-- Location: FF_X78_Y40_N4
\dp1|MEM1|RAM~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~191_q\);

-- Location: FF_X82_Y37_N20
\dp1|MEM1|RAM~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~255_q\);

-- Location: MLABCELL_X82_Y37_N18
\dp1|MEM1|RAM~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~646_combout\ = ( \dp1|MEM1|RAM~255_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~191_q\) # (\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( !\dp1|MEM1|RAM~255_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & 
-- \dp1|MEM1|RAM~191_q\) ) ) ) # ( \dp1|MEM1|RAM~255_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~159_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~223_q\))) ) ) ) # ( !\dp1|MEM1|RAM~255_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~159_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~223_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~159_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~223_q\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~191_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~255_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~646_combout\);

-- Location: LABCELL_X85_Y38_N15
\dp1|MEM1|RAM~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~647_combout\ = ( \dp1|MEM1|RAM~643_combout\ & ( \dp1|MEM1|RAM~646_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (((!\dp1|MIM1|out[0]~0_combout\)) # (\dp1|MEM1|RAM~644_combout\))) # (\dp1|MIM1|out[1]~1_combout\ & 
-- (((\dp1|MIM1|out[0]~0_combout\) # (\dp1|MEM1|RAM~645_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~643_combout\ & ( \dp1|MEM1|RAM~646_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~644_combout\ & ((\dp1|MIM1|out[0]~0_combout\)))) # 
-- (\dp1|MIM1|out[1]~1_combout\ & (((\dp1|MIM1|out[0]~0_combout\) # (\dp1|MEM1|RAM~645_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~643_combout\ & ( !\dp1|MEM1|RAM~646_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (((!\dp1|MIM1|out[0]~0_combout\)) # 
-- (\dp1|MEM1|RAM~644_combout\))) # (\dp1|MIM1|out[1]~1_combout\ & (((\dp1|MEM1|RAM~645_combout\ & !\dp1|MIM1|out[0]~0_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~643_combout\ & ( !\dp1|MEM1|RAM~646_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & 
-- (\dp1|MEM1|RAM~644_combout\ & ((\dp1|MIM1|out[0]~0_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & (((\dp1|MEM1|RAM~645_combout\ & !\dp1|MIM1|out[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~644_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~645_combout\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~643_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~646_combout\,
	combout => \dp1|MEM1|RAM~647_combout\);

-- Location: FF_X79_Y39_N37
\dp1|MEM1|RAM~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~7_q\);

-- Location: FF_X85_Y38_N13
\dp1|MEM1|RAM~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~39_q\);

-- Location: FF_X81_Y41_N26
\dp1|MEM1|RAM~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~71_q\);

-- Location: LABCELL_X81_Y36_N24
\dp1|MEM1|RAM~828\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~828_combout\ = ( !\dp1|ACC1|Aout\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~828_combout\);

-- Location: FF_X81_Y36_N25
\dp1|MEM1|RAM~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~828_combout\,
	ena => \dp1|MEM1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~103_q\);

-- Location: LABCELL_X85_Y38_N24
\dp1|MEM1|RAM~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~638_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MEM1|RAM~103_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~39_q\ ) ) ) # ( \dp1|MIM1|out[3]~3_combout\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~71_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~7_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~7_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~39_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~71_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~103_q\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~638_combout\);

-- Location: LABCELL_X77_Y38_N30
\dp1|MEM1|RAM~831\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~831_combout\ = !\dp1|ACC1|Aout\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~831_combout\);

-- Location: FF_X77_Y38_N31
\dp1|MEM1|RAM~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~831_combout\,
	ena => \dp1|MEM1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~23_q\);

-- Location: FF_X80_Y36_N32
\dp1|MEM1|RAM~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~87_q\);

-- Location: FF_X78_Y38_N38
\dp1|MEM1|RAM~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~709_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~119_q\);

-- Location: FF_X78_Y38_N19
\dp1|MEM1|RAM~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~55_q\);

-- Location: MLABCELL_X78_Y38_N36
\dp1|MEM1|RAM~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~640_combout\ = ( \dp1|MEM1|RAM~119_q\ & ( \dp1|MEM1|RAM~55_q\ & ( ((!\dp1|MIM1|out[3]~3_combout\ & (!\dp1|MEM1|RAM~23_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~87_q\)))) # (\dp1|MIM1|out[2]~2_combout\) ) ) ) # ( 
-- !\dp1|MEM1|RAM~119_q\ & ( \dp1|MEM1|RAM~55_q\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\ & (!\dp1|MEM1|RAM~23_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~87_q\))))) # (\dp1|MIM1|out[2]~2_combout\ & 
-- (((!\dp1|MIM1|out[3]~3_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~119_q\ & ( !\dp1|MEM1|RAM~55_q\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\ & (!\dp1|MEM1|RAM~23_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~87_q\))))) # 
-- (\dp1|MIM1|out[2]~2_combout\ & (((\dp1|MIM1|out[3]~3_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~119_q\ & ( !\dp1|MEM1|RAM~55_q\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\ & (!\dp1|MEM1|RAM~23_q\)) # (\dp1|MIM1|out[3]~3_combout\ & 
-- ((\dp1|MEM1|RAM~87_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000110000101000000011111110101111001100001010111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~23_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~87_q\,
	datac => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~119_q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~55_q\,
	combout => \dp1|MEM1|RAM~640_combout\);

-- Location: FF_X80_Y38_N13
\dp1|MEM1|RAM~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~95_q\);

-- Location: FF_X78_Y39_N22
\dp1|MEM1|RAM~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~63_q\);

-- Location: FF_X84_Y41_N40
\dp1|MEM1|RAM~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~127_q\);

-- Location: MLABCELL_X84_Y40_N9
\dp1|MEM1|RAM~832\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~832_combout\ = !\dp1|ACC1|Aout\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~832_combout\);

-- Location: FF_X84_Y39_N46
\dp1|MEM1|RAM~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|MEM1|RAM~832_combout\,
	sload => VCC,
	ena => \dp1|MEM1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~31_q\);

-- Location: LABCELL_X85_Y38_N21
\dp1|MEM1|RAM~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~641_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~127_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~63_q\ ) ) ) # ( \dp1|MIM1|out[3]~3_combout\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~95_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MEM1|RAM~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~95_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~63_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~127_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~31_q\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~641_combout\);

-- Location: MLABCELL_X78_Y37_N12
\dp1|MEM1|RAM~830\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~830_combout\ = ( !\dp1|ACC1|Aout\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~830_combout\);

-- Location: FF_X78_Y37_N13
\dp1|MEM1|RAM~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~830_combout\,
	ena => \dp1|MEM1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~79_q\);

-- Location: LABCELL_X79_Y37_N27
\dp1|MEM1|RAM~829\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~829_combout\ = ( !\dp1|ACC1|Aout\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~829_combout\);

-- Location: FF_X79_Y37_N28
\dp1|MEM1|RAM~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~829_combout\,
	ena => \dp1|MEM1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~47_q\);

-- Location: LABCELL_X77_Y39_N54
\dp1|MEM1|RAM~15feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~15feeder_combout\ = ( \dp1|ACC1|Aout\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~15feeder_combout\);

-- Location: FF_X77_Y39_N55
\dp1|MEM1|RAM~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~15feeder_combout\,
	ena => \dp1|MEM1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~15_q\);

-- Location: LABCELL_X83_Y37_N39
\dp1|MEM1|RAM~111feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~111feeder_combout\ = \dp1|ACC1|Aout\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~111feeder_combout\);

-- Location: FF_X83_Y37_N41
\dp1|MEM1|RAM~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~111feeder_combout\,
	ena => \dp1|MEM1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~111_q\);

-- Location: LABCELL_X79_Y37_N30
\dp1|MEM1|RAM~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~639_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~111_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MEM1|RAM~47_q\ ) ) ) # ( \dp1|MIM1|out[3]~3_combout\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MEM1|RAM~79_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101010101010101011001100110011000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~79_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~47_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~15_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~111_q\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~639_combout\);

-- Location: LABCELL_X85_Y38_N57
\dp1|MEM1|RAM~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~642_combout\ = ( \dp1|MEM1|RAM~641_combout\ & ( \dp1|MEM1|RAM~639_combout\ & ( ((!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~638_combout\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~640_combout\)))) # (\dp1|MIM1|out[0]~0_combout\) ) 
-- ) ) # ( !\dp1|MEM1|RAM~641_combout\ & ( \dp1|MEM1|RAM~639_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (((\dp1|MIM1|out[0]~0_combout\)) # (\dp1|MEM1|RAM~638_combout\))) # (\dp1|MIM1|out[1]~1_combout\ & (((\dp1|MEM1|RAM~640_combout\ & 
-- !\dp1|MIM1|out[0]~0_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~641_combout\ & ( !\dp1|MEM1|RAM~639_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~638_combout\ & ((!\dp1|MIM1|out[0]~0_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & 
-- (((\dp1|MIM1|out[0]~0_combout\) # (\dp1|MEM1|RAM~640_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~641_combout\ & ( !\dp1|MEM1|RAM~639_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & ((!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~638_combout\)) # 
-- (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~640_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~638_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~640_combout\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~641_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~639_combout\,
	combout => \dp1|MEM1|RAM~642_combout\);

-- Location: FF_X80_Y42_N32
\dp1|MEM1|RAM~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~761_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~279_q\);

-- Location: MLABCELL_X87_Y40_N39
\dp1|MEM1|RAM~271feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~271feeder_combout\ = \dp1|ACC1|Aout\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~271feeder_combout\);

-- Location: FF_X87_Y40_N40
\dp1|MEM1|RAM~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~271feeder_combout\,
	ena => \dp1|MEM1|RAM~753_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~271_q\);

-- Location: LABCELL_X79_Y40_N21
\dp1|MEM1|RAM~287feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~287feeder_combout\ = ( \dp1|ACC1|Aout\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~287feeder_combout\);

-- Location: FF_X79_Y40_N22
\dp1|MEM1|RAM~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~287feeder_combout\,
	ena => \dp1|MEM1|RAM~769_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~287_q\);

-- Location: FF_X80_Y40_N25
\dp1|MEM1|RAM~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~263_q\);

-- Location: LABCELL_X80_Y40_N30
\dp1|MEM1|RAM~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~648_combout\ = ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~263_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~279_q\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~287_q\))) ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( 
-- \dp1|MEM1|RAM~263_q\ & ( (!\dp1|MIM1|out[0]~0_combout\) # (\dp1|MEM1|RAM~271_q\) ) ) ) # ( \dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MEM1|RAM~263_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~279_q\)) # (\dp1|MIM1|out[0]~0_combout\ & 
-- ((\dp1|MEM1|RAM~287_q\))) ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MEM1|RAM~263_q\ & ( (\dp1|MEM1|RAM~271_q\ & \dp1|MIM1|out[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~279_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~271_q\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~287_q\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~263_q\,
	combout => \dp1|MEM1|RAM~648_combout\);

-- Location: FF_X79_Y38_N28
\dp1|MEM1|RAM~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~767_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~375_q\);

-- Location: LABCELL_X79_Y40_N24
\dp1|MEM1|RAM~383feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~383feeder_combout\ = ( \dp1|ACC1|Aout\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~383feeder_combout\);

-- Location: FF_X79_Y40_N25
\dp1|MEM1|RAM~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~383feeder_combout\,
	ena => \dp1|MEM1|RAM~775_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~383_q\);

-- Location: FF_X77_Y40_N35
\dp1|MEM1|RAM~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~759_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~367_q\);

-- Location: LABCELL_X80_Y36_N39
\dp1|MEM1|RAM~359feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~359feeder_combout\ = ( \dp1|ACC1|Aout\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~359feeder_combout\);

-- Location: FF_X80_Y36_N41
\dp1|MEM1|RAM~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~359feeder_combout\,
	ena => \dp1|MEM1|RAM~751_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~359_q\);

-- Location: LABCELL_X80_Y40_N45
\dp1|MEM1|RAM~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~651_combout\ = ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~383_q\ ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~367_q\ ) ) ) # ( \dp1|MIM1|out[1]~1_combout\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~375_q\ ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~359_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~375_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~383_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~367_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~359_q\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~651_combout\);

-- Location: FF_X80_Y37_N16
\dp1|MEM1|RAM~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~295_q\);

-- Location: FF_X80_Y41_N37
\dp1|MEM1|RAM~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~763_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~311_q\);

-- Location: MLABCELL_X78_Y41_N48
\dp1|MEM1|RAM~303feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~303feeder_combout\ = ( \dp1|ACC1|Aout\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~303feeder_combout\);

-- Location: FF_X78_Y41_N49
\dp1|MEM1|RAM~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~303feeder_combout\,
	ena => \dp1|MEM1|RAM~755_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~303_q\);

-- Location: FF_X79_Y40_N44
\dp1|MEM1|RAM~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~771_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~319_q\);

-- Location: LABCELL_X79_Y40_N42
\dp1|MEM1|RAM~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~649_combout\ = ( \dp1|MEM1|RAM~319_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MEM1|RAM~303_q\) # (\dp1|MIM1|out[1]~1_combout\) ) ) ) # ( !\dp1|MEM1|RAM~319_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & 
-- \dp1|MEM1|RAM~303_q\) ) ) ) # ( \dp1|MEM1|RAM~319_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~295_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~311_q\))) ) ) ) # ( !\dp1|MEM1|RAM~319_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~295_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~311_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~295_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~311_q\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~303_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~319_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~649_combout\);

-- Location: FF_X85_Y41_N34
\dp1|MEM1|RAM~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~757_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~335_q\);

-- Location: FF_X78_Y40_N22
\dp1|MEM1|RAM~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~773_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~351_q\);

-- Location: FF_X83_Y40_N49
\dp1|MEM1|RAM~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~765_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~343_q\);

-- Location: LABCELL_X80_Y36_N24
\dp1|MEM1|RAM~327feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~327feeder_combout\ = ( \dp1|ACC1|Aout\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~327feeder_combout\);

-- Location: FF_X80_Y36_N25
\dp1|MEM1|RAM~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~327feeder_combout\,
	ena => \dp1|MEM1|RAM~749_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~327_q\);

-- Location: LABCELL_X80_Y40_N12
\dp1|MEM1|RAM~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~650_combout\ = ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~351_q\ ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~335_q\ ) ) ) # ( \dp1|MIM1|out[1]~1_combout\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~343_q\ ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~327_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~335_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~351_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~343_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~327_q\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~650_combout\);

-- Location: LABCELL_X80_Y40_N3
\dp1|MEM1|RAM~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~652_combout\ = ( \dp1|MEM1|RAM~649_combout\ & ( \dp1|MEM1|RAM~650_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MIM1|out[2]~2_combout\)) # (\dp1|MEM1|RAM~648_combout\))) # (\dp1|MIM1|out[3]~3_combout\ & 
-- (((!\dp1|MIM1|out[2]~2_combout\) # (\dp1|MEM1|RAM~651_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~649_combout\ & ( \dp1|MEM1|RAM~650_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~648_combout\ & ((!\dp1|MIM1|out[2]~2_combout\)))) # 
-- (\dp1|MIM1|out[3]~3_combout\ & (((!\dp1|MIM1|out[2]~2_combout\) # (\dp1|MEM1|RAM~651_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~649_combout\ & ( !\dp1|MEM1|RAM~650_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MIM1|out[2]~2_combout\)) # 
-- (\dp1|MEM1|RAM~648_combout\))) # (\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MEM1|RAM~651_combout\ & \dp1|MIM1|out[2]~2_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~649_combout\ & ( !\dp1|MEM1|RAM~650_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & 
-- (\dp1|MEM1|RAM~648_combout\ & ((!\dp1|MIM1|out[2]~2_combout\)))) # (\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MEM1|RAM~651_combout\ & \dp1|MIM1|out[2]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101001000101010111101110111000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~648_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~651_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~649_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~650_combout\,
	combout => \dp1|MEM1|RAM~652_combout\);

-- Location: FF_X82_Y42_N52
\dp1|MEM1|RAM~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~789_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~439_q\);

-- Location: FF_X80_Y42_N25
\dp1|MEM1|RAM~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~781_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~407_q\);

-- Location: FF_X81_Y42_N34
\dp1|MEM1|RAM~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~471_q\);

-- Location: FF_X84_Y40_N44
\dp1|MEM1|RAM~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~503_q\);

-- Location: MLABCELL_X84_Y40_N42
\dp1|MEM1|RAM~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~655_combout\ = ( \dp1|MEM1|RAM~503_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~439_q\) ) ) ) # ( !\dp1|MEM1|RAM~503_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~439_q\ & 
-- !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~503_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~407_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~471_q\))) ) ) ) # ( !\dp1|MEM1|RAM~503_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~407_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~471_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~439_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~407_q\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~471_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~503_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~655_combout\);

-- Location: FF_X81_Y39_N53
\dp1|MEM1|RAM~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~447_q\);

-- Location: FF_X82_Y39_N52
\dp1|MEM1|RAM~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~479_q\);

-- Location: FF_X84_Y39_N17
\dp1|MEM1|RAM~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~783_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~415_q\);

-- Location: FF_X83_Y41_N56
\dp1|MEM1|RAM~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~511_q\);

-- Location: LABCELL_X83_Y41_N54
\dp1|MEM1|RAM~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~656_combout\ = ( \dp1|MEM1|RAM~511_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~447_q\) ) ) ) # ( !\dp1|MEM1|RAM~511_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~447_q\ & 
-- !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~511_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~415_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~479_q\)) ) ) ) # ( !\dp1|MEM1|RAM~511_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~415_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~479_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~447_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~479_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~415_q\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~511_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~656_combout\);

-- Location: FF_X82_Y36_N43
\dp1|MEM1|RAM~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~785_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~423_q\);

-- Location: FF_X81_Y41_N23
\dp1|MEM1|RAM~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~455_q\);

-- Location: MLABCELL_X82_Y36_N24
\dp1|MEM1|RAM~391feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~391feeder_combout\ = \dp1|ACC1|Aout\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~391feeder_combout\);

-- Location: FF_X82_Y36_N26
\dp1|MEM1|RAM~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~391feeder_combout\,
	ena => \dp1|MEM1|RAM~777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~391_q\);

-- Location: FF_X82_Y36_N2
\dp1|MEM1|RAM~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~487_q\);

-- Location: MLABCELL_X82_Y36_N0
\dp1|MEM1|RAM~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~653_combout\ = ( \dp1|MEM1|RAM~487_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~423_q\) ) ) ) # ( !\dp1|MEM1|RAM~487_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~423_q\ & 
-- !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~487_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~391_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~455_q\)) ) ) ) # ( !\dp1|MEM1|RAM~487_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~391_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~455_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~423_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~455_q\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~391_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~487_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~653_combout\);

-- Location: FF_X83_Y37_N46
\dp1|MEM1|RAM~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~495_q\);

-- Location: MLABCELL_X84_Y42_N54
\dp1|MEM1|RAM~399feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~399feeder_combout\ = ( \dp1|ACC1|Aout\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(7),
	combout => \dp1|MEM1|RAM~399feeder_combout\);

-- Location: FF_X84_Y42_N56
\dp1|MEM1|RAM~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~399feeder_combout\,
	ena => \dp1|MEM1|RAM~779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~399_q\);

-- Location: FF_X77_Y40_N25
\dp1|MEM1|RAM~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~787_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~431_q\);

-- Location: FF_X82_Y41_N58
\dp1|MEM1|RAM~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sload => VCC,
	ena => \dp1|MEM1|RAM~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~463_q\);

-- Location: LABCELL_X81_Y36_N54
\dp1|MEM1|RAM~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~654_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~495_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~431_q\ ) ) ) # ( \dp1|MIM1|out[3]~3_combout\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~463_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~399_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~495_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~399_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~431_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~463_q\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~654_combout\);

-- Location: LABCELL_X85_Y38_N48
\dp1|MEM1|RAM~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~657_combout\ = ( \dp1|MEM1|RAM~653_combout\ & ( \dp1|MEM1|RAM~654_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\) # ((!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~655_combout\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~656_combout\)))) 
-- ) ) ) # ( !\dp1|MEM1|RAM~653_combout\ & ( \dp1|MEM1|RAM~654_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (((\dp1|MIM1|out[0]~0_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & ((!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~655_combout\)) # 
-- (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~656_combout\))))) ) ) ) # ( \dp1|MEM1|RAM~653_combout\ & ( !\dp1|MEM1|RAM~654_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (((!\dp1|MIM1|out[0]~0_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & 
-- ((!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~655_combout\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~656_combout\))))) ) ) ) # ( !\dp1|MEM1|RAM~653_combout\ & ( !\dp1|MEM1|RAM~654_combout\ & ( (\dp1|MIM1|out[1]~1_combout\ & 
-- ((!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~655_combout\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~656_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~655_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~656_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~653_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~654_combout\,
	combout => \dp1|MEM1|RAM~657_combout\);

-- Location: LABCELL_X85_Y38_N0
\dp1|MEM1|RAM~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~658_combout\ = ( \dp1|MEM1|RAM~652_combout\ & ( \dp1|MEM1|RAM~657_combout\ & ( ((!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~642_combout\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~647_combout\))) # (\dp1|MIM1|out[5]~5_combout\) ) 
-- ) ) # ( !\dp1|MEM1|RAM~652_combout\ & ( \dp1|MEM1|RAM~657_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~642_combout\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~647_combout\)))) # 
-- (\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MIM1|out[4]~4_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~652_combout\ & ( !\dp1|MEM1|RAM~657_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~642_combout\))) # 
-- (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~647_combout\)))) # (\dp1|MIM1|out[5]~5_combout\ & (((!\dp1|MIM1|out[4]~4_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~652_combout\ & ( !\dp1|MEM1|RAM~657_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & 
-- ((!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~642_combout\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~647_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~647_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~642_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~652_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~657_combout\,
	combout => \dp1|MEM1|RAM~658_combout\);

-- Location: MLABCELL_X84_Y38_N57
\dp1|IR1|InstrReg~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|IR1|InstrReg~6_combout\ = ( \dp1|MEM1|RAM~658_combout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst~input_o\,
	dataf => \dp1|MEM1|ALT_INV_RAM~658_combout\,
	combout => \dp1|IR1|InstrReg~6_combout\);

-- Location: FF_X84_Y38_N59
\dp1|IR1|InstrReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|IR1|InstrReg~6_combout\,
	ena => \dp1|IR1|InstrReg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|IR1|InstrReg\(7));

-- Location: MLABCELL_X84_Y40_N48
\c1|ALUsel[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|ALUsel[1]~0_combout\ = (\dp1|IR1|InstrReg\(5) & \dp1|IR1|InstrReg\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|IR1|ALT_INV_InstrReg\(5),
	datad => \dp1|IR1|ALT_INV_InstrReg\(7),
	combout => \c1|ALUsel[1]~0_combout\);

-- Location: LABCELL_X81_Y38_N12
\c1|ALUsel[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|ALUsel[1]~5_combout\ = ( \c1|ALUsel[1]~2_combout\ ) # ( !\c1|ALUsel[1]~2_combout\ & ( (!\c1|state.010~q\) # (!\c1|ALUsel[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.010~q\,
	datac => \c1|ALT_INV_ALUsel[1]~0_combout\,
	dataf => \c1|ALT_INV_ALUsel[1]~2_combout\,
	combout => \c1|ALUsel[1]~5_combout\);

-- Location: LABCELL_X81_Y40_N6
\dp1|ALU1|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ALU1|Mux6~2_combout\ = ( !\dp1|ALU1|Mux6~1_combout\ & ( (!\dp1|ALU1|Add0~1_sumout\) # (!\dp1|ALU1|Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ALU1|ALT_INV_Add0~1_sumout\,
	datad => \dp1|ALU1|ALT_INV_Mux6~0_combout\,
	dataf => \dp1|ALU1|ALT_INV_Mux6~1_combout\,
	combout => \dp1|ALU1|Mux6~2_combout\);

-- Location: LABCELL_X81_Y40_N12
\dp1|ACC1|Aout~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~6_combout\ = ( \dp1|ACC1|Aout[2]~5_combout\ & ( \dp1|ALU1|Mux7~1_combout\ & ( (!\dp1|ALU1|Mux6~2_combout\ & \dp1|ACC1|Aout[2]~4_combout\) ) ) ) # ( !\dp1|ACC1|Aout[2]~5_combout\ & ( \dp1|ALU1|Mux7~1_combout\ & ( 
-- (!\dp1|ACC1|Aout[2]~4_combout\ & ((\dp1|RF1|RegFile~1_combout\))) # (\dp1|ACC1|Aout[2]~4_combout\ & (!\dp1|ALU1|Mux5~1_combout\)) ) ) ) # ( \dp1|ACC1|Aout[2]~5_combout\ & ( !\dp1|ALU1|Mux7~1_combout\ & ( (!\dp1|ALU1|Mux6~2_combout\) # 
-- (!\dp1|ACC1|Aout[2]~4_combout\) ) ) ) # ( !\dp1|ACC1|Aout[2]~5_combout\ & ( !\dp1|ALU1|Mux7~1_combout\ & ( (!\dp1|ACC1|Aout[2]~4_combout\ & ((\dp1|RF1|RegFile~1_combout\))) # (\dp1|ACC1|Aout[2]~4_combout\ & (!\dp1|ALU1|Mux5~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001100111111111010101000001111110011000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ALU1|ALT_INV_Mux6~2_combout\,
	datab => \dp1|ALU1|ALT_INV_Mux5~1_combout\,
	datac => \dp1|RF1|ALT_INV_RegFile~1_combout\,
	datad => \dp1|ACC1|ALT_INV_Aout[2]~4_combout\,
	datae => \dp1|ACC1|ALT_INV_Aout[2]~5_combout\,
	dataf => \dp1|ALU1|ALT_INV_Mux7~1_combout\,
	combout => \dp1|ACC1|Aout~6_combout\);

-- Location: LABCELL_X81_Y40_N36
\dp1|ACC1|Aout~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|ACC1|Aout~7_combout\ = ( \c1|Asel\(0) & ( !\rst~input_o\ & ( (!\c1|Asel\(1) & (\dp1|ACC1|Aout~6_combout\)) # (\c1|Asel\(1) & ((\dp1|MEM1|RAM~679_combout\))) ) ) ) # ( !\c1|Asel\(0) & ( !\rst~input_o\ & ( (!\c1|Asel\(1) & 
-- ((\dp1|ACC1|Aout~6_combout\))) # (\c1|Asel\(1) & (\Input[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001100000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input[1]~input_o\,
	datab => \dp1|ACC1|ALT_INV_Aout~6_combout\,
	datac => \c1|ALT_INV_Asel\(1),
	datad => \dp1|MEM1|ALT_INV_RAM~679_combout\,
	datae => \c1|ALT_INV_Asel\(0),
	dataf => \ALT_INV_rst~input_o\,
	combout => \dp1|ACC1|Aout~7_combout\);

-- Location: FF_X81_Y40_N38
\dp1|ACC1|Aout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|ACC1|Aout~7_combout\,
	ena => \dp1|ACC1|Aout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|ACC1|Aout\(1));

-- Location: FF_X84_Y40_N58
\dp1|MEM1|RAM~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~497_q\);

-- Location: FF_X84_Y40_N37
\dp1|MEM1|RAM~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~767_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~369_q\);

-- Location: FF_X84_Y40_N7
\dp1|MEM1|RAM~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~709_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~113_q\);

-- Location: FF_X82_Y40_N23
\dp1|MEM1|RAM~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~241_q\);

-- Location: MLABCELL_X84_Y39_N9
\dp1|MEM1|RAM~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~672_combout\ = ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~497_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~241_q\ ) ) ) # ( \dp1|MIM1|out[5]~5_combout\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~369_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~113_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~497_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~369_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~113_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~241_q\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~672_combout\);

-- Location: LABCELL_X79_Y36_N9
\dp1|MEM1|RAM~81feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~81feeder_combout\ = ( \dp1|ACC1|Aout\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(1),
	combout => \dp1|MEM1|RAM~81feeder_combout\);

-- Location: FF_X79_Y36_N10
\dp1|MEM1|RAM~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~81feeder_combout\,
	ena => \dp1|MEM1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~81_q\);

-- Location: FF_X83_Y40_N44
\dp1|MEM1|RAM~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~765_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~337_q\);

-- Location: FF_X81_Y42_N37
\dp1|MEM1|RAM~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~465_q\);

-- Location: LABCELL_X81_Y42_N21
\dp1|MEM1|RAM~209feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~209feeder_combout\ = \dp1|ACC1|Aout\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(1),
	combout => \dp1|MEM1|RAM~209feeder_combout\);

-- Location: FF_X81_Y42_N23
\dp1|MEM1|RAM~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~209feeder_combout\,
	ena => \dp1|MEM1|RAM~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~209_q\);

-- Location: LABCELL_X81_Y42_N57
\dp1|MEM1|RAM~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~671_combout\ = ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~465_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~209_q\ ) ) ) # ( \dp1|MIM1|out[5]~5_combout\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~337_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~81_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~337_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~465_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~209_q\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~671_combout\);

-- Location: LABCELL_X80_Y42_N18
\dp1|MEM1|RAM~835\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~835_combout\ = !\dp1|ACC1|Aout\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|ACC1|ALT_INV_Aout\(1),
	combout => \dp1|MEM1|RAM~835_combout\);

-- Location: FF_X80_Y42_N20
\dp1|MEM1|RAM~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~835_combout\,
	ena => \dp1|MEM1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~17_q\);

-- Location: FF_X79_Y41_N34
\dp1|MEM1|RAM~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~145_q\);

-- Location: FF_X80_Y42_N34
\dp1|MEM1|RAM~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~761_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~273_q\);

-- Location: FF_X80_Y42_N8
\dp1|MEM1|RAM~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~781_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~401_q\);

-- Location: LABCELL_X80_Y42_N6
\dp1|MEM1|RAM~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~669_combout\ = ( \dp1|MEM1|RAM~401_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MIM1|out[5]~5_combout\) # (\dp1|MEM1|RAM~145_q\) ) ) ) # ( !\dp1|MEM1|RAM~401_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MEM1|RAM~145_q\ & 
-- !\dp1|MIM1|out[5]~5_combout\) ) ) ) # ( \dp1|MEM1|RAM~401_q\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MEM1|RAM~17_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~273_q\))) ) ) ) # ( !\dp1|MEM1|RAM~401_q\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (!\dp1|MEM1|RAM~17_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~273_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101111101000001010111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~17_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~145_q\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~273_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~401_q\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~669_combout\);

-- Location: FF_X85_Y40_N19
\dp1|MEM1|RAM~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~177_q\);

-- Location: FF_X82_Y42_N14
\dp1|MEM1|RAM~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~49_q\);

-- Location: FF_X82_Y42_N20
\dp1|MEM1|RAM~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~763_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~305_q\);

-- Location: FF_X82_Y42_N2
\dp1|MEM1|RAM~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~789_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~433_q\);

-- Location: MLABCELL_X82_Y42_N0
\dp1|MEM1|RAM~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~670_combout\ = ( \dp1|MEM1|RAM~433_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~305_q\) ) ) ) # ( !\dp1|MEM1|RAM~433_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~305_q\ & 
-- !\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( \dp1|MEM1|RAM~433_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~49_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~177_q\)) ) ) ) # ( !\dp1|MEM1|RAM~433_q\ & ( 
-- !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~49_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~177_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~177_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~49_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~305_q\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~433_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~670_combout\);

-- Location: LABCELL_X81_Y39_N42
\dp1|MEM1|RAM~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~673_combout\ = ( \dp1|MEM1|RAM~669_combout\ & ( \dp1|MEM1|RAM~670_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\) # ((!\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~671_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~672_combout\))) 
-- ) ) ) # ( !\dp1|MEM1|RAM~669_combout\ & ( \dp1|MEM1|RAM~670_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (((\dp1|MEM1|RAM~671_combout\ & \dp1|MIM1|out[3]~3_combout\)))) # (\dp1|MIM1|out[2]~2_combout\ & (((!\dp1|MIM1|out[3]~3_combout\)) # 
-- (\dp1|MEM1|RAM~672_combout\))) ) ) ) # ( \dp1|MEM1|RAM~669_combout\ & ( !\dp1|MEM1|RAM~670_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (((!\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~671_combout\)))) # (\dp1|MIM1|out[2]~2_combout\ & 
-- (\dp1|MEM1|RAM~672_combout\ & ((\dp1|MIM1|out[3]~3_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~669_combout\ & ( !\dp1|MEM1|RAM~670_combout\ & ( (\dp1|MIM1|out[3]~3_combout\ & ((!\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~671_combout\))) # 
-- (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~672_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~672_combout\,
	datab => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~671_combout\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~669_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~670_combout\,
	combout => \dp1|MEM1|RAM~673_combout\);

-- Location: FF_X80_Y38_N26
\dp1|MEM1|RAM~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~217_q\);

-- Location: FF_X78_Y40_N19
\dp1|MEM1|RAM~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~773_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~345_q\);

-- Location: FF_X78_Y39_N46
\dp1|MEM1|RAM~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~89_q\);

-- Location: FF_X82_Y39_N29
\dp1|MEM1|RAM~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~473_q\);

-- Location: LABCELL_X81_Y39_N24
\dp1|MEM1|RAM~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~676_combout\ = ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~473_q\ & ( (\dp1|MIM1|out[5]~5_combout\) # (\dp1|MEM1|RAM~217_q\) ) ) ) # ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~473_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & 
-- ((\dp1|MEM1|RAM~89_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~345_q\)) ) ) ) # ( \dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MEM1|RAM~473_q\ & ( (\dp1|MEM1|RAM~217_q\ & !\dp1|MIM1|out[5]~5_combout\) ) ) ) # ( !\dp1|MIM1|out[4]~4_combout\ & ( 
-- !\dp1|MEM1|RAM~473_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~89_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~345_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~217_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~345_q\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~89_q\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~473_q\,
	combout => \dp1|MEM1|RAM~676_combout\);

-- Location: FF_X84_Y39_N5
\dp1|MEM1|RAM~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~25_q\);

-- Location: FF_X85_Y38_N52
\dp1|MEM1|RAM~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~769_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~281_q\);

-- Location: FF_X84_Y39_N8
\dp1|MEM1|RAM~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~153_q\);

-- Location: FF_X84_Y39_N38
\dp1|MEM1|RAM~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~783_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~409_q\);

-- Location: MLABCELL_X84_Y39_N36
\dp1|MEM1|RAM~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~674_combout\ = ( \dp1|MEM1|RAM~409_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MEM1|RAM~153_q\) # (\dp1|MIM1|out[5]~5_combout\) ) ) ) # ( !\dp1|MEM1|RAM~409_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & 
-- \dp1|MEM1|RAM~153_q\) ) ) ) # ( \dp1|MEM1|RAM~409_q\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~25_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~281_q\))) ) ) ) # ( !\dp1|MEM1|RAM~409_q\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~25_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~281_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~25_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~281_q\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~153_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~409_q\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~674_combout\);

-- Location: FF_X79_Y40_N7
\dp1|MEM1|RAM~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~771_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~313_q\);

-- Location: FF_X78_Y40_N58
\dp1|MEM1|RAM~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~185_q\);

-- Location: MLABCELL_X78_Y39_N54
\dp1|MEM1|RAM~836\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~836_combout\ = !\dp1|ACC1|Aout\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(1),
	combout => \dp1|MEM1|RAM~836_combout\);

-- Location: FF_X78_Y39_N56
\dp1|MEM1|RAM~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~836_combout\,
	ena => \dp1|MEM1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~57_q\);

-- Location: FF_X81_Y39_N2
\dp1|MEM1|RAM~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~441_q\);

-- Location: LABCELL_X81_Y39_N0
\dp1|MEM1|RAM~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~675_combout\ = ( \dp1|MEM1|RAM~441_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~313_q\) ) ) ) # ( !\dp1|MEM1|RAM~441_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~313_q\ & 
-- !\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( \dp1|MEM1|RAM~441_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((!\dp1|MEM1|RAM~57_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~185_q\)) ) ) ) # ( !\dp1|MEM1|RAM~441_q\ & ( 
-- !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((!\dp1|MEM1|RAM~57_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~185_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110011111100000011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~313_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~185_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~57_q\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~441_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~675_combout\);

-- Location: FF_X82_Y37_N58
\dp1|MEM1|RAM~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~249_q\);

-- Location: MLABCELL_X84_Y41_N30
\dp1|MEM1|RAM~121feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~121feeder_combout\ = \dp1|ACC1|Aout\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(1),
	combout => \dp1|MEM1|RAM~121feeder_combout\);

-- Location: FF_X84_Y41_N31
\dp1|MEM1|RAM~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~121feeder_combout\,
	ena => \dp1|MEM1|RAM~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~121_q\);

-- Location: FF_X79_Y40_N28
\dp1|MEM1|RAM~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~775_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~377_q\);

-- Location: FF_X81_Y39_N8
\dp1|MEM1|RAM~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~505_q\);

-- Location: LABCELL_X81_Y39_N6
\dp1|MEM1|RAM~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~677_combout\ = ( \dp1|MEM1|RAM~505_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~377_q\) # (\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( !\dp1|MEM1|RAM~505_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & 
-- \dp1|MEM1|RAM~377_q\) ) ) ) # ( \dp1|MEM1|RAM~505_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~121_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~249_q\)) ) ) ) # ( !\dp1|MEM1|RAM~505_q\ & ( 
-- !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~121_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~249_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~249_q\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~121_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~377_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~505_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~677_combout\);

-- Location: LABCELL_X81_Y39_N54
\dp1|MEM1|RAM~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~678_combout\ = ( \dp1|MEM1|RAM~675_combout\ & ( \dp1|MEM1|RAM~677_combout\ & ( ((!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~674_combout\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~676_combout\))) # (\dp1|MIM1|out[2]~2_combout\) ) 
-- ) ) # ( !\dp1|MEM1|RAM~675_combout\ & ( \dp1|MEM1|RAM~677_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~674_combout\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~676_combout\)))) # 
-- (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MIM1|out[3]~3_combout\)) ) ) ) # ( \dp1|MEM1|RAM~675_combout\ & ( !\dp1|MEM1|RAM~677_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~674_combout\))) # 
-- (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~676_combout\)))) # (\dp1|MIM1|out[2]~2_combout\ & (!\dp1|MIM1|out[3]~3_combout\)) ) ) ) # ( !\dp1|MEM1|RAM~675_combout\ & ( !\dp1|MEM1|RAM~677_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & 
-- ((!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~674_combout\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~676_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~676_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~674_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~675_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~677_combout\,
	combout => \dp1|MEM1|RAM~678_combout\);

-- Location: FF_X81_Y39_N40
\dp1|MEM1|RAM~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~137_q\);

-- Location: FF_X83_Y39_N59
\dp1|MEM1|RAM~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~9_q\);

-- Location: MLABCELL_X87_Y40_N9
\dp1|MEM1|RAM~265feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~265feeder_combout\ = ( \dp1|ACC1|Aout\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(1),
	combout => \dp1|MEM1|RAM~265feeder_combout\);

-- Location: FF_X87_Y40_N11
\dp1|MEM1|RAM~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~265feeder_combout\,
	ena => \dp1|MEM1|RAM~753_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~265_q\);

-- Location: FF_X84_Y42_N17
\dp1|MEM1|RAM~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~393_q\);

-- Location: LABCELL_X83_Y39_N0
\dp1|MEM1|RAM~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~664_combout\ = ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MEM1|RAM~393_q\ ) ) ) # ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MEM1|RAM~265_q\ ) ) ) # ( \dp1|MIM1|out[4]~4_combout\ & ( 
-- !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MEM1|RAM~137_q\ ) ) ) # ( !\dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MEM1|RAM~9_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~137_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~9_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~265_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~393_q\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~664_combout\);

-- Location: FF_X83_Y37_N20
\dp1|MEM1|RAM~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~233_q\);

-- Location: FF_X79_Y38_N4
\dp1|MEM1|RAM~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~759_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~361_q\);

-- Location: FF_X83_Y37_N37
\dp1|MEM1|RAM~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~105_q\);

-- Location: FF_X83_Y37_N26
\dp1|MEM1|RAM~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~489_q\);

-- Location: LABCELL_X83_Y37_N24
\dp1|MEM1|RAM~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~667_combout\ = ( \dp1|MEM1|RAM~489_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MIM1|out[5]~5_combout\) # (\dp1|MEM1|RAM~233_q\) ) ) ) # ( !\dp1|MEM1|RAM~489_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MEM1|RAM~233_q\ & 
-- !\dp1|MIM1|out[5]~5_combout\) ) ) ) # ( \dp1|MEM1|RAM~489_q\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~105_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~361_q\)) ) ) ) # ( !\dp1|MEM1|RAM~489_q\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~105_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~361_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~233_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~361_q\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~105_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~489_q\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~667_combout\);

-- Location: FF_X81_Y37_N19
\dp1|MEM1|RAM~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~41_q\);

-- Location: MLABCELL_X78_Y41_N54
\dp1|MEM1|RAM~297feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~297feeder_combout\ = ( \dp1|ACC1|Aout\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(1),
	combout => \dp1|MEM1|RAM~297feeder_combout\);

-- Location: FF_X78_Y41_N55
\dp1|MEM1|RAM~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~297feeder_combout\,
	ena => \dp1|MEM1|RAM~755_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~297_q\);

-- Location: FF_X77_Y40_N56
\dp1|MEM1|RAM~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~787_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~425_q\);

-- Location: FF_X81_Y37_N8
\dp1|MEM1|RAM~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~169_q\);

-- Location: LABCELL_X81_Y37_N6
\dp1|MEM1|RAM~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~665_combout\ = ( \dp1|MEM1|RAM~169_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\) # (\dp1|MEM1|RAM~425_q\) ) ) ) # ( !\dp1|MEM1|RAM~169_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & 
-- \dp1|MEM1|RAM~425_q\) ) ) ) # ( \dp1|MEM1|RAM~169_q\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~41_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~297_q\))) ) ) ) # ( !\dp1|MEM1|RAM~169_q\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~41_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~297_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~41_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~297_q\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~425_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~169_q\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~665_combout\);

-- Location: FF_X82_Y41_N37
\dp1|MEM1|RAM~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~757_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~329_q\);

-- Location: FF_X79_Y41_N28
\dp1|MEM1|RAM~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~201_q\);

-- Location: FF_X82_Y41_N26
\dp1|MEM1|RAM~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~73_q\);

-- Location: FF_X82_Y41_N44
\dp1|MEM1|RAM~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~457_q\);

-- Location: MLABCELL_X82_Y41_N42
\dp1|MEM1|RAM~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~666_combout\ = ( \dp1|MEM1|RAM~457_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MIM1|out[5]~5_combout\) # (\dp1|MEM1|RAM~201_q\) ) ) ) # ( !\dp1|MEM1|RAM~457_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MEM1|RAM~201_q\ & 
-- !\dp1|MIM1|out[5]~5_combout\) ) ) ) # ( \dp1|MEM1|RAM~457_q\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~73_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~329_q\)) ) ) ) # ( !\dp1|MEM1|RAM~457_q\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~73_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~329_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~329_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~201_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~73_q\,
	datad => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~457_q\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~666_combout\);

-- Location: LABCELL_X81_Y39_N36
\dp1|MEM1|RAM~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~668_combout\ = ( \dp1|MEM1|RAM~665_combout\ & ( \dp1|MEM1|RAM~666_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (((\dp1|MEM1|RAM~664_combout\)) # (\dp1|MIM1|out[3]~3_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\) 
-- # ((\dp1|MEM1|RAM~667_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~665_combout\ & ( \dp1|MEM1|RAM~666_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (((\dp1|MEM1|RAM~664_combout\)) # (\dp1|MIM1|out[3]~3_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & 
-- (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~667_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~665_combout\ & ( !\dp1|MEM1|RAM~666_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~664_combout\))) # 
-- (\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\) # ((\dp1|MEM1|RAM~667_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~665_combout\ & ( !\dp1|MEM1|RAM~666_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (!\dp1|MIM1|out[3]~3_combout\ & 
-- (\dp1|MEM1|RAM~664_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~667_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~664_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~667_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~665_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~666_combout\,
	combout => \dp1|MEM1|RAM~668_combout\);

-- Location: FF_X82_Y36_N32
\dp1|MEM1|RAM~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~385_q\);

-- Location: FF_X80_Y40_N13
\dp1|MEM1|RAM~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~257_q\);

-- Location: FF_X80_Y40_N44
\dp1|MEM1|RAM~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~1_q\);

-- Location: FF_X80_Y40_N50
\dp1|MEM1|RAM~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~129_q\);

-- Location: LABCELL_X80_Y40_N48
\dp1|MEM1|RAM~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~659_combout\ = ( \dp1|MEM1|RAM~129_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~257_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~385_q\)) ) ) ) # ( !\dp1|MEM1|RAM~129_q\ & ( 
-- \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~257_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~385_q\)) ) ) ) # ( \dp1|MEM1|RAM~129_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~1_q\) # 
-- (\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( !\dp1|MEM1|RAM~129_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & \dp1|MEM1|RAM~1_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~385_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~257_q\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~1_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~129_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~659_combout\);

-- Location: FF_X80_Y36_N58
\dp1|MEM1|RAM~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~749_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~321_q\);

-- Location: LABCELL_X81_Y41_N54
\dp1|MEM1|RAM~193feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~193feeder_combout\ = ( \dp1|ACC1|Aout\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(1),
	combout => \dp1|MEM1|RAM~193feeder_combout\);

-- Location: FF_X81_Y41_N55
\dp1|MEM1|RAM~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~193feeder_combout\,
	ena => \dp1|MEM1|RAM~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~193_q\);

-- Location: FF_X81_Y41_N2
\dp1|MEM1|RAM~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~449_q\);

-- Location: FF_X81_Y41_N41
\dp1|MEM1|RAM~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~65_q\);

-- Location: LABCELL_X81_Y41_N0
\dp1|MEM1|RAM~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~661_combout\ = ( \dp1|MEM1|RAM~449_q\ & ( \dp1|MEM1|RAM~65_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((!\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~193_q\)))) # (\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MIM1|out[4]~4_combout\)) # 
-- (\dp1|MEM1|RAM~321_q\))) ) ) ) # ( !\dp1|MEM1|RAM~449_q\ & ( \dp1|MEM1|RAM~65_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((!\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~193_q\)))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~321_q\ & 
-- ((!\dp1|MIM1|out[4]~4_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~449_q\ & ( !\dp1|MEM1|RAM~65_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MEM1|RAM~193_q\ & \dp1|MIM1|out[4]~4_combout\)))) # (\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MIM1|out[4]~4_combout\)) # 
-- (\dp1|MEM1|RAM~321_q\))) ) ) ) # ( !\dp1|MEM1|RAM~449_q\ & ( !\dp1|MEM1|RAM~65_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MEM1|RAM~193_q\ & \dp1|MIM1|out[4]~4_combout\)))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~321_q\ & 
-- ((!\dp1|MIM1|out[4]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~321_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~193_q\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~449_q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~65_q\,
	combout => \dp1|MEM1|RAM~661_combout\);

-- Location: FF_X85_Y37_N1
\dp1|MEM1|RAM~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~161_q\);

-- Location: FF_X84_Y37_N55
\dp1|MEM1|RAM~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~289_q\);

-- Location: MLABCELL_X84_Y36_N15
\dp1|MEM1|RAM~833\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~833_combout\ = ( !\dp1|ACC1|Aout\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dp1|ACC1|ALT_INV_Aout\(1),
	combout => \dp1|MEM1|RAM~833_combout\);

-- Location: FF_X84_Y36_N16
\dp1|MEM1|RAM~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~833_combout\,
	ena => \dp1|MEM1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~33_q\);

-- Location: FF_X82_Y36_N17
\dp1|MEM1|RAM~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~785_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~417_q\);

-- Location: MLABCELL_X82_Y36_N15
\dp1|MEM1|RAM~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~660_combout\ = ( \dp1|MEM1|RAM~417_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~289_q\) ) ) ) # ( !\dp1|MEM1|RAM~417_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~289_q\ & 
-- !\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( \dp1|MEM1|RAM~417_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((!\dp1|MEM1|RAM~33_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~161_q\)) ) ) ) # ( !\dp1|MEM1|RAM~417_q\ & ( 
-- !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((!\dp1|MEM1|RAM~33_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~161_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010101111100000101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~161_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~289_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~33_q\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~417_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~660_combout\);

-- Location: FF_X79_Y39_N58
\dp1|MEM1|RAM~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~225_q\);

-- Location: LABCELL_X81_Y36_N27
\dp1|MEM1|RAM~834\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~834_combout\ = ( !\dp1|ACC1|Aout\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(1),
	combout => \dp1|MEM1|RAM~834_combout\);

-- Location: FF_X81_Y36_N28
\dp1|MEM1|RAM~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~834_combout\,
	ena => \dp1|MEM1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~97_q\);

-- Location: FF_X81_Y36_N38
\dp1|MEM1|RAM~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~751_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~353_q\);

-- Location: FF_X81_Y36_N14
\dp1|MEM1|RAM~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sload => VCC,
	ena => \dp1|MEM1|RAM~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~481_q\);

-- Location: LABCELL_X81_Y36_N12
\dp1|MEM1|RAM~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~662_combout\ = ( \dp1|MEM1|RAM~481_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~353_q\) ) ) ) # ( !\dp1|MEM1|RAM~481_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~353_q\ & 
-- !\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( \dp1|MEM1|RAM~481_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((!\dp1|MEM1|RAM~97_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~225_q\)) ) ) ) # ( !\dp1|MEM1|RAM~481_q\ & ( 
-- !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((!\dp1|MEM1|RAM~97_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~225_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001010101110011000101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~225_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~97_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~353_q\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~481_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~662_combout\);

-- Location: LABCELL_X81_Y39_N48
\dp1|MEM1|RAM~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~663_combout\ = ( \dp1|MEM1|RAM~660_combout\ & ( \dp1|MEM1|RAM~662_combout\ & ( ((!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~659_combout\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~661_combout\)))) # (\dp1|MIM1|out[2]~2_combout\) ) 
-- ) ) # ( !\dp1|MEM1|RAM~660_combout\ & ( \dp1|MEM1|RAM~662_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~659_combout\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~661_combout\))))) # 
-- (\dp1|MIM1|out[2]~2_combout\ & (((\dp1|MIM1|out[3]~3_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~660_combout\ & ( !\dp1|MEM1|RAM~662_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~659_combout\)) # 
-- (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~661_combout\))))) # (\dp1|MIM1|out[2]~2_combout\ & (((!\dp1|MIM1|out[3]~3_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~660_combout\ & ( !\dp1|MEM1|RAM~662_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & 
-- ((!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~659_combout\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~661_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~659_combout\,
	datab => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~661_combout\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~660_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~662_combout\,
	combout => \dp1|MEM1|RAM~663_combout\);

-- Location: LABCELL_X81_Y39_N12
\dp1|MEM1|RAM~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~679_combout\ = ( \dp1|MEM1|RAM~668_combout\ & ( \dp1|MEM1|RAM~663_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\) # ((!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~673_combout\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~678_combout\)))) 
-- ) ) ) # ( !\dp1|MEM1|RAM~668_combout\ & ( \dp1|MEM1|RAM~663_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (((!\dp1|MIM1|out[0]~0_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & ((!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~673_combout\)) # 
-- (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~678_combout\))))) ) ) ) # ( \dp1|MEM1|RAM~668_combout\ & ( !\dp1|MEM1|RAM~663_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (((\dp1|MIM1|out[0]~0_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & 
-- ((!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~673_combout\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~678_combout\))))) ) ) ) # ( !\dp1|MEM1|RAM~668_combout\ & ( !\dp1|MEM1|RAM~663_combout\ & ( (\dp1|MIM1|out[1]~1_combout\ & 
-- ((!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~673_combout\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~678_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~673_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~678_combout\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~668_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~663_combout\,
	combout => \dp1|MEM1|RAM~679_combout\);

-- Location: MLABCELL_X82_Y38_N9
\dp1|MA1|Addr~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MA1|Addr~2_combout\ = (!\rst~input_o\ & \dp1|MEM1|RAM~679_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datad => \dp1|MEM1|ALT_INV_RAM~679_combout\,
	combout => \dp1|MA1|Addr~2_combout\);

-- Location: FF_X82_Y38_N11
\dp1|MA1|Addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MA1|Addr~2_combout\,
	ena => \dp1|MA1|Addr[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MA1|Addr\(1));

-- Location: MLABCELL_X82_Y39_N6
\dp1|MIM1|out[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MIM1|out[1]~1_combout\ = ( \c1|state.011~q\ & ( \dp1|MA1|Addr\(1) ) ) # ( !\c1|state.011~q\ & ( (!\c1|state.100~q\ & ((\dp1|PC1|PCReg\(1)))) # (\c1|state.100~q\ & (\dp1|MA1|Addr\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MA1|ALT_INV_Addr\(1),
	datac => \c1|ALT_INV_state.100~q\,
	datad => \dp1|PC1|ALT_INV_PCReg\(1),
	dataf => \c1|ALT_INV_state.011~q\,
	combout => \dp1|MIM1|out[1]~1_combout\);

-- Location: FF_X84_Y39_N26
\dp1|MEM1|RAM~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~783_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~411_q\);

-- Location: FF_X81_Y39_N17
\dp1|MEM1|RAM~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~443_q\);

-- Location: FF_X82_Y39_N40
\dp1|MEM1|RAM~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~475_q\);

-- Location: LABCELL_X83_Y41_N18
\dp1|MEM1|RAM~507feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~507feeder_combout\ = ( \dp1|ACC1|Aout\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(3),
	combout => \dp1|MEM1|RAM~507feeder_combout\);

-- Location: FF_X83_Y41_N20
\dp1|MEM1|RAM~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~507feeder_combout\,
	ena => \dp1|MEM1|RAM~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~507_q\);

-- Location: MLABCELL_X82_Y41_N36
\dp1|MEM1|RAM~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~593_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~507_q\ & ( (\dp1|MEM1|RAM~475_q\) # (\dp1|MIM1|out[2]~2_combout\) ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~507_q\ & ( (!\dp1|MIM1|out[2]~2_combout\ & 
-- (\dp1|MEM1|RAM~411_q\)) # (\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~443_q\))) ) ) ) # ( \dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MEM1|RAM~507_q\ & ( (!\dp1|MIM1|out[2]~2_combout\ & \dp1|MEM1|RAM~475_q\) ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( 
-- !\dp1|MEM1|RAM~507_q\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~411_q\)) # (\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~443_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000001111000001010011010100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~411_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~443_q\,
	datac => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~475_q\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~507_q\,
	combout => \dp1|MEM1|RAM~593_combout\);

-- Location: FF_X80_Y38_N46
\dp1|MEM1|RAM~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~91_q\);

-- Location: LABCELL_X77_Y39_N24
\dp1|MEM1|RAM~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~816_combout\ = ( !\dp1|ACC1|Aout\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(3),
	combout => \dp1|MEM1|RAM~816_combout\);

-- Location: FF_X78_Y39_N50
\dp1|MEM1|RAM~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|MEM1|RAM~816_combout\,
	sload => VCC,
	ena => \dp1|MEM1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~59_q\);

-- Location: FF_X83_Y41_N17
\dp1|MEM1|RAM~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~123_q\);

-- Location: LABCELL_X83_Y41_N9
\dp1|MEM1|RAM~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~27feeder_combout\ = ( \dp1|ACC1|Aout\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(3),
	combout => \dp1|MEM1|RAM~27feeder_combout\);

-- Location: FF_X83_Y41_N11
\dp1|MEM1|RAM~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~27feeder_combout\,
	ena => \dp1|MEM1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~27_q\);

-- Location: LABCELL_X83_Y41_N15
\dp1|MEM1|RAM~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~590_combout\ = ( \dp1|MEM1|RAM~123_q\ & ( \dp1|MEM1|RAM~27_q\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (((!\dp1|MEM1|RAM~59_q\) # (!\dp1|MIM1|out[2]~2_combout\)))) # (\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MIM1|out[2]~2_combout\)) # 
-- (\dp1|MEM1|RAM~91_q\))) ) ) ) # ( !\dp1|MEM1|RAM~123_q\ & ( \dp1|MEM1|RAM~27_q\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (((!\dp1|MEM1|RAM~59_q\) # (!\dp1|MIM1|out[2]~2_combout\)))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~91_q\ & 
-- ((!\dp1|MIM1|out[2]~2_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~123_q\ & ( !\dp1|MEM1|RAM~27_q\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (((!\dp1|MEM1|RAM~59_q\ & \dp1|MIM1|out[2]~2_combout\)))) # (\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MIM1|out[2]~2_combout\)) # 
-- (\dp1|MEM1|RAM~91_q\))) ) ) ) # ( !\dp1|MEM1|RAM~123_q\ & ( !\dp1|MEM1|RAM~27_q\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (((!\dp1|MEM1|RAM~59_q\ & \dp1|MIM1|out[2]~2_combout\)))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~91_q\ & 
-- ((!\dp1|MIM1|out[2]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111000000000001011100111111110101110000001111010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~91_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~59_q\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~123_q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~27_q\,
	combout => \dp1|MEM1|RAM~590_combout\);

-- Location: FF_X79_Y40_N37
\dp1|MEM1|RAM~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~771_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~315_q\);

-- Location: MLABCELL_X87_Y39_N33
\dp1|MEM1|RAM~347feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~347feeder_combout\ = \dp1|ACC1|Aout\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(3),
	combout => \dp1|MEM1|RAM~347feeder_combout\);

-- Location: FF_X87_Y39_N34
\dp1|MEM1|RAM~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~347feeder_combout\,
	ena => \dp1|MEM1|RAM~773_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~347_q\);

-- Location: FF_X79_Y40_N13
\dp1|MEM1|RAM~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~769_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~283_q\);

-- Location: FF_X79_Y40_N4
\dp1|MEM1|RAM~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~775_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~379_q\);

-- Location: MLABCELL_X84_Y41_N54
\dp1|MEM1|RAM~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~592_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~379_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~315_q\ ) ) ) # ( \dp1|MIM1|out[3]~3_combout\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~347_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~283_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~315_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~347_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~283_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~379_q\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~592_combout\);

-- Location: FF_X83_Y36_N10
\dp1|MEM1|RAM~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~155_q\);

-- Location: FF_X82_Y37_N44
\dp1|MEM1|RAM~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~251_q\);

-- Location: FF_X80_Y38_N40
\dp1|MEM1|RAM~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~219_q\);

-- Location: FF_X78_Y40_N32
\dp1|MEM1|RAM~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~187_q\);

-- Location: MLABCELL_X82_Y40_N54
\dp1|MEM1|RAM~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~591_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~251_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~187_q\ ) ) ) # ( \dp1|MIM1|out[3]~3_combout\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~219_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~155_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~155_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~251_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~219_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~187_q\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~591_combout\);

-- Location: MLABCELL_X82_Y41_N3
\dp1|MEM1|RAM~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~594_combout\ = ( \dp1|MEM1|RAM~592_combout\ & ( \dp1|MEM1|RAM~591_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (((\dp1|MEM1|RAM~590_combout\) # (\dp1|MIM1|out[5]~5_combout\)))) # (\dp1|MIM1|out[4]~4_combout\ & 
-- (((!\dp1|MIM1|out[5]~5_combout\)) # (\dp1|MEM1|RAM~593_combout\))) ) ) ) # ( !\dp1|MEM1|RAM~592_combout\ & ( \dp1|MEM1|RAM~591_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (((!\dp1|MIM1|out[5]~5_combout\ & \dp1|MEM1|RAM~590_combout\)))) # 
-- (\dp1|MIM1|out[4]~4_combout\ & (((!\dp1|MIM1|out[5]~5_combout\)) # (\dp1|MEM1|RAM~593_combout\))) ) ) ) # ( \dp1|MEM1|RAM~592_combout\ & ( !\dp1|MEM1|RAM~591_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (((\dp1|MEM1|RAM~590_combout\) # 
-- (\dp1|MIM1|out[5]~5_combout\)))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~593_combout\ & (\dp1|MIM1|out[5]~5_combout\))) ) ) ) # ( !\dp1|MEM1|RAM~592_combout\ & ( !\dp1|MEM1|RAM~591_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & 
-- (((!\dp1|MIM1|out[5]~5_combout\ & \dp1|MEM1|RAM~590_combout\)))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~593_combout\ & (\dp1|MIM1|out[5]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000011011100110100110001111100010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~593_combout\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~590_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~592_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~591_combout\,
	combout => \dp1|MEM1|RAM~594_combout\);

-- Location: FF_X83_Y37_N40
\dp1|MEM1|RAM~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~107_q\);

-- Location: FF_X83_Y37_N32
\dp1|MEM1|RAM~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~491_q\);

-- Location: FF_X85_Y39_N52
\dp1|MEM1|RAM~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~235_q\);

-- Location: FF_X82_Y37_N13
\dp1|MEM1|RAM~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~759_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~363_q\);

-- Location: MLABCELL_X82_Y41_N54
\dp1|MEM1|RAM~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~583_combout\ = ( \dp1|MEM1|RAM~363_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~235_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~491_q\)) ) ) ) # ( !\dp1|MEM1|RAM~363_q\ & ( 
-- \dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~235_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~491_q\)) ) ) ) # ( \dp1|MEM1|RAM~363_q\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MIM1|out[5]~5_combout\) # 
-- (\dp1|MEM1|RAM~107_q\) ) ) ) # ( !\dp1|MEM1|RAM~363_q\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MEM1|RAM~107_q\ & !\dp1|MIM1|out[5]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~107_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~491_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~235_q\,
	datad => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~363_q\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~583_combout\);

-- Location: FF_X75_Y40_N25
\dp1|MEM1|RAM~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~203_q\);

-- Location: FF_X82_Y41_N14
\dp1|MEM1|RAM~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~75_q\);

-- Location: FF_X82_Y41_N32
\dp1|MEM1|RAM~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~459_q\);

-- Location: FF_X82_Y41_N41
\dp1|MEM1|RAM~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~757_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~331_q\);

-- Location: MLABCELL_X82_Y41_N30
\dp1|MEM1|RAM~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~582_combout\ = ( \dp1|MEM1|RAM~459_q\ & ( \dp1|MEM1|RAM~331_q\ & ( ((!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~75_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~203_q\))) # (\dp1|MIM1|out[5]~5_combout\) ) ) ) # ( 
-- !\dp1|MEM1|RAM~459_q\ & ( \dp1|MEM1|RAM~331_q\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (((\dp1|MIM1|out[5]~5_combout\) # (\dp1|MEM1|RAM~75_q\)))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~203_q\ & ((!\dp1|MIM1|out[5]~5_combout\)))) ) ) ) # ( 
-- \dp1|MEM1|RAM~459_q\ & ( !\dp1|MEM1|RAM~331_q\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (((\dp1|MEM1|RAM~75_q\ & !\dp1|MIM1|out[5]~5_combout\)))) # (\dp1|MIM1|out[4]~4_combout\ & (((\dp1|MIM1|out[5]~5_combout\)) # (\dp1|MEM1|RAM~203_q\))) ) ) ) # ( 
-- !\dp1|MEM1|RAM~459_q\ & ( !\dp1|MEM1|RAM~331_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~75_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~203_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000111100110101111100000011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~203_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~75_q\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~459_q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~331_q\,
	combout => \dp1|MEM1|RAM~582_combout\);

-- Location: FF_X81_Y37_N4
\dp1|MEM1|RAM~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~43_q\);

-- Location: FF_X75_Y40_N55
\dp1|MEM1|RAM~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~755_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~299_q\);

-- Location: FF_X81_Y37_N52
\dp1|MEM1|RAM~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~171_q\);

-- Location: FF_X78_Y41_N8
\dp1|MEM1|RAM~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~787_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~427_q\);

-- Location: MLABCELL_X78_Y41_N6
\dp1|MEM1|RAM~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~581_combout\ = ( \dp1|MEM1|RAM~427_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MEM1|RAM~171_q\) # (\dp1|MIM1|out[5]~5_combout\) ) ) ) # ( !\dp1|MEM1|RAM~427_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & 
-- \dp1|MEM1|RAM~171_q\) ) ) ) # ( \dp1|MEM1|RAM~427_q\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~43_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~299_q\))) ) ) ) # ( !\dp1|MEM1|RAM~427_q\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~43_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~299_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~43_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~299_q\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~171_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~427_q\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~581_combout\);

-- Location: FF_X83_Y42_N56
\dp1|MEM1|RAM~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~395_q\);

-- Location: LABCELL_X77_Y39_N15
\dp1|MEM1|RAM~11feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~11feeder_combout\ = \dp1|ACC1|Aout\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(3),
	combout => \dp1|MEM1|RAM~11feeder_combout\);

-- Location: FF_X77_Y39_N16
\dp1|MEM1|RAM~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~11feeder_combout\,
	ena => \dp1|MEM1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~11_q\);

-- Location: FF_X75_Y40_N40
\dp1|MEM1|RAM~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~753_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~267_q\);

-- Location: FF_X83_Y42_N5
\dp1|MEM1|RAM~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~139_q\);

-- Location: LABCELL_X83_Y42_N3
\dp1|MEM1|RAM~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~580_combout\ = ( \dp1|MEM1|RAM~139_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~267_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~395_q\)) ) ) ) # ( !\dp1|MEM1|RAM~139_q\ & ( 
-- \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~267_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~395_q\)) ) ) ) # ( \dp1|MEM1|RAM~139_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MIM1|out[4]~4_combout\) # 
-- (\dp1|MEM1|RAM~11_q\) ) ) ) # ( !\dp1|MEM1|RAM~139_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~11_q\ & !\dp1|MIM1|out[4]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~395_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~11_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~267_q\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~139_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~580_combout\);

-- Location: MLABCELL_X82_Y41_N27
\dp1|MEM1|RAM~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~584_combout\ = ( \dp1|MEM1|RAM~581_combout\ & ( \dp1|MEM1|RAM~580_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\) # ((!\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~582_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~583_combout\))) 
-- ) ) ) # ( !\dp1|MEM1|RAM~581_combout\ & ( \dp1|MEM1|RAM~580_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (((!\dp1|MIM1|out[2]~2_combout\)))) # (\dp1|MIM1|out[3]~3_combout\ & ((!\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~582_combout\))) # 
-- (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~583_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~581_combout\ & ( !\dp1|MEM1|RAM~580_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MIM1|out[2]~2_combout\)))) # (\dp1|MIM1|out[3]~3_combout\ & 
-- ((!\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~582_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~583_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~581_combout\ & ( !\dp1|MEM1|RAM~580_combout\ & ( (\dp1|MIM1|out[3]~3_combout\ & 
-- ((!\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~582_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~583_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~583_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~582_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~581_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~580_combout\,
	combout => \dp1|MEM1|RAM~584_combout\);

-- Location: LABCELL_X77_Y40_N6
\dp1|MEM1|RAM~339feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~339feeder_combout\ = \dp1|ACC1|Aout\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(3),
	combout => \dp1|MEM1|RAM~339feeder_combout\);

-- Location: FF_X77_Y40_N8
\dp1|MEM1|RAM~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~339feeder_combout\,
	ena => \dp1|MEM1|RAM~765_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~339_q\);

-- Location: LABCELL_X81_Y42_N24
\dp1|MEM1|RAM~83feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~83feeder_combout\ = ( \dp1|ACC1|Aout\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(3),
	combout => \dp1|MEM1|RAM~83feeder_combout\);

-- Location: FF_X81_Y42_N26
\dp1|MEM1|RAM~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~83feeder_combout\,
	ena => \dp1|MEM1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~83_q\);

-- Location: LABCELL_X81_Y42_N18
\dp1|MEM1|RAM~211feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~211feeder_combout\ = ( \dp1|ACC1|Aout\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(3),
	combout => \dp1|MEM1|RAM~211feeder_combout\);

-- Location: FF_X81_Y42_N19
\dp1|MEM1|RAM~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~211feeder_combout\,
	ena => \dp1|MEM1|RAM~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~211_q\);

-- Location: FF_X81_Y42_N2
\dp1|MEM1|RAM~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~467_q\);

-- Location: LABCELL_X81_Y42_N0
\dp1|MEM1|RAM~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~587_combout\ = ( \dp1|MEM1|RAM~467_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~339_q\) ) ) ) # ( !\dp1|MEM1|RAM~467_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~339_q\ & 
-- !\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( \dp1|MEM1|RAM~467_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~83_q\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~211_q\))) ) ) ) # ( !\dp1|MEM1|RAM~467_q\ & ( 
-- !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~83_q\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~211_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~339_q\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~83_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~211_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~467_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~587_combout\);

-- Location: FF_X79_Y41_N37
\dp1|MEM1|RAM~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~147_q\);

-- Location: LABCELL_X80_Y42_N30
\dp1|MEM1|RAM~275feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~275feeder_combout\ = \dp1|ACC1|Aout\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(3),
	combout => \dp1|MEM1|RAM~275feeder_combout\);

-- Location: FF_X80_Y42_N31
\dp1|MEM1|RAM~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~275feeder_combout\,
	ena => \dp1|MEM1|RAM~761_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~275_q\);

-- Location: FF_X80_Y42_N22
\dp1|MEM1|RAM~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~19_q\);

-- Location: FF_X80_Y42_N1
\dp1|MEM1|RAM~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~781_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~403_q\);

-- Location: LABCELL_X81_Y42_N9
\dp1|MEM1|RAM~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~585_combout\ = ( \dp1|MEM1|RAM~19_q\ & ( \dp1|MEM1|RAM~403_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((!\dp1|MIM1|out[4]~4_combout\)) # (\dp1|MEM1|RAM~147_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MEM1|RAM~275_q\) # 
-- (\dp1|MIM1|out[4]~4_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~19_q\ & ( \dp1|MEM1|RAM~403_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~147_q\ & (\dp1|MIM1|out[4]~4_combout\))) # (\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MEM1|RAM~275_q\) # 
-- (\dp1|MIM1|out[4]~4_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~19_q\ & ( !\dp1|MEM1|RAM~403_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((!\dp1|MIM1|out[4]~4_combout\)) # (\dp1|MEM1|RAM~147_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (((!\dp1|MIM1|out[4]~4_combout\ & 
-- \dp1|MEM1|RAM~275_q\)))) ) ) ) # ( !\dp1|MEM1|RAM~19_q\ & ( !\dp1|MEM1|RAM~403_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~147_q\ & (\dp1|MIM1|out[4]~4_combout\))) # (\dp1|MIM1|out[5]~5_combout\ & (((!\dp1|MIM1|out[4]~4_combout\ & 
-- \dp1|MEM1|RAM~275_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~147_q\,
	datab => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~275_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~19_q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~403_q\,
	combout => \dp1|MEM1|RAM~585_combout\);

-- Location: MLABCELL_X84_Y40_N39
\dp1|MEM1|RAM~371feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~371feeder_combout\ = \dp1|ACC1|Aout\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(3),
	combout => \dp1|MEM1|RAM~371feeder_combout\);

-- Location: FF_X84_Y40_N41
\dp1|MEM1|RAM~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~371feeder_combout\,
	ena => \dp1|MEM1|RAM~767_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~371_q\);

-- Location: FF_X84_Y40_N53
\dp1|MEM1|RAM~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~499_q\);

-- Location: FF_X84_Y40_N11
\dp1|MEM1|RAM~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~709_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~115_q\);

-- Location: FF_X82_Y40_N10
\dp1|MEM1|RAM~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~243_q\);

-- Location: LABCELL_X81_Y42_N36
\dp1|MEM1|RAM~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~588_combout\ = ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~499_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~243_q\ ) ) ) # ( \dp1|MIM1|out[5]~5_combout\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~371_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~115_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~371_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~499_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~115_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~243_q\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~588_combout\);

-- Location: LABCELL_X80_Y41_N30
\dp1|MEM1|RAM~307feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~307feeder_combout\ = ( \dp1|ACC1|Aout\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(3),
	combout => \dp1|MEM1|RAM~307feeder_combout\);

-- Location: FF_X80_Y41_N31
\dp1|MEM1|RAM~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~307feeder_combout\,
	ena => \dp1|MEM1|RAM~763_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~307_q\);

-- Location: FF_X78_Y40_N37
\dp1|MEM1|RAM~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~179_q\);

-- Location: FF_X82_Y42_N38
\dp1|MEM1|RAM~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~789_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~435_q\);

-- Location: FF_X82_Y42_N32
\dp1|MEM1|RAM~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~51_q\);

-- Location: MLABCELL_X82_Y42_N36
\dp1|MEM1|RAM~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~586_combout\ = ( \dp1|MEM1|RAM~435_q\ & ( \dp1|MEM1|RAM~51_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((!\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~179_q\)))) # (\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MIM1|out[4]~4_combout\)) # 
-- (\dp1|MEM1|RAM~307_q\))) ) ) ) # ( !\dp1|MEM1|RAM~435_q\ & ( \dp1|MEM1|RAM~51_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((!\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~179_q\)))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~307_q\ & 
-- ((!\dp1|MIM1|out[4]~4_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~435_q\ & ( !\dp1|MEM1|RAM~51_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MEM1|RAM~179_q\ & \dp1|MIM1|out[4]~4_combout\)))) # (\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MIM1|out[4]~4_combout\)) # 
-- (\dp1|MEM1|RAM~307_q\))) ) ) ) # ( !\dp1|MEM1|RAM~435_q\ & ( !\dp1|MEM1|RAM~51_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MEM1|RAM~179_q\ & \dp1|MIM1|out[4]~4_combout\)))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~307_q\ & 
-- ((!\dp1|MIM1|out[4]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~307_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~179_q\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~435_q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~51_q\,
	combout => \dp1|MEM1|RAM~586_combout\);

-- Location: LABCELL_X81_Y42_N51
\dp1|MEM1|RAM~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~589_combout\ = ( \dp1|MEM1|RAM~586_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~587_combout\)) # (\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~588_combout\))) ) ) ) # ( 
-- !\dp1|MEM1|RAM~586_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~587_combout\)) # (\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~588_combout\))) ) ) ) # ( \dp1|MEM1|RAM~586_combout\ & ( 
-- !\dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MEM1|RAM~585_combout\) # (\dp1|MIM1|out[2]~2_combout\) ) ) ) # ( !\dp1|MEM1|RAM~586_combout\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & \dp1|MEM1|RAM~585_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~587_combout\,
	datab => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~585_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~588_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~586_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~589_combout\);

-- Location: FF_X80_Y36_N55
\dp1|MEM1|RAM~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~749_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~323_q\);

-- Location: FF_X81_Y41_N17
\dp1|MEM1|RAM~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~67_q\);

-- Location: FF_X81_Y41_N50
\dp1|MEM1|RAM~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~451_q\);

-- Location: FF_X81_Y41_N58
\dp1|MEM1|RAM~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~195_q\);

-- Location: LABCELL_X81_Y41_N48
\dp1|MEM1|RAM~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~577_combout\ = ( \dp1|MEM1|RAM~451_q\ & ( \dp1|MEM1|RAM~195_q\ & ( ((!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~67_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~323_q\))) # (\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( 
-- !\dp1|MEM1|RAM~451_q\ & ( \dp1|MEM1|RAM~195_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~67_q\)))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~323_q\ & ((!\dp1|MIM1|out[4]~4_combout\)))) ) ) ) # ( 
-- \dp1|MEM1|RAM~451_q\ & ( !\dp1|MEM1|RAM~195_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MEM1|RAM~67_q\ & !\dp1|MIM1|out[4]~4_combout\)))) # (\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MIM1|out[4]~4_combout\)) # (\dp1|MEM1|RAM~323_q\))) ) ) ) # ( 
-- !\dp1|MEM1|RAM~451_q\ & ( !\dp1|MEM1|RAM~195_q\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~67_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~323_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000111100110101111100000011010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~323_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~67_q\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~451_q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~195_q\,
	combout => \dp1|MEM1|RAM~577_combout\);

-- Location: MLABCELL_X82_Y36_N48
\dp1|MEM1|RAM~387feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~387feeder_combout\ = ( \dp1|ACC1|Aout\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(3),
	combout => \dp1|MEM1|RAM~387feeder_combout\);

-- Location: FF_X82_Y36_N50
\dp1|MEM1|RAM~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~387feeder_combout\,
	ena => \dp1|MEM1|RAM~777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~387_q\);

-- Location: FF_X80_Y40_N5
\dp1|MEM1|RAM~3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~3_q\);

-- Location: FF_X80_Y40_N17
\dp1|MEM1|RAM~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~259_q\);

-- Location: FF_X80_Y40_N56
\dp1|MEM1|RAM~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~131_q\);

-- Location: LABCELL_X80_Y40_N54
\dp1|MEM1|RAM~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~575_combout\ = ( \dp1|MEM1|RAM~131_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~259_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~387_q\)) ) ) ) # ( !\dp1|MEM1|RAM~131_q\ & ( 
-- \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~259_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~387_q\)) ) ) ) # ( \dp1|MEM1|RAM~131_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~3_q\) # 
-- (\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( !\dp1|MEM1|RAM~131_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & \dp1|MEM1|RAM~3_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~387_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~3_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~259_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~131_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~575_combout\);

-- Location: FF_X84_Y37_N37
\dp1|MEM1|RAM~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~291_q\);

-- Location: FF_X85_Y37_N43
\dp1|MEM1|RAM~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~163_q\);

-- Location: FF_X82_Y36_N55
\dp1|MEM1|RAM~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~785_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~419_q\);

-- Location: FF_X84_Y37_N1
\dp1|MEM1|RAM~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~35_q\);

-- Location: LABCELL_X85_Y40_N24
\dp1|MEM1|RAM~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~576_combout\ = ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~419_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~163_q\ ) ) ) # ( \dp1|MIM1|out[5]~5_combout\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~291_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~291_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~163_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~419_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~35_q\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~576_combout\);

-- Location: LABCELL_X81_Y36_N51
\dp1|MEM1|RAM~99feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~99feeder_combout\ = ( \dp1|ACC1|Aout\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(3),
	combout => \dp1|MEM1|RAM~99feeder_combout\);

-- Location: FF_X81_Y36_N53
\dp1|MEM1|RAM~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~99feeder_combout\,
	ena => \dp1|MEM1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~99_q\);

-- Location: FF_X81_Y36_N44
\dp1|MEM1|RAM~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~751_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~355_q\);

-- Location: LABCELL_X79_Y39_N42
\dp1|MEM1|RAM~227feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~227feeder_combout\ = \dp1|ACC1|Aout\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|ACC1|ALT_INV_Aout\(3),
	combout => \dp1|MEM1|RAM~227feeder_combout\);

-- Location: FF_X79_Y39_N44
\dp1|MEM1|RAM~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~227feeder_combout\,
	ena => \dp1|MEM1|RAM~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~227_q\);

-- Location: FF_X81_Y36_N2
\dp1|MEM1|RAM~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sload => VCC,
	ena => \dp1|MEM1|RAM~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~483_q\);

-- Location: LABCELL_X81_Y36_N0
\dp1|MEM1|RAM~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~578_combout\ = ( \dp1|MEM1|RAM~483_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~355_q\) ) ) ) # ( !\dp1|MEM1|RAM~483_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~355_q\ & 
-- !\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( \dp1|MEM1|RAM~483_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~99_q\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~227_q\))) ) ) ) # ( !\dp1|MEM1|RAM~483_q\ & ( 
-- !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~99_q\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~227_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~99_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~355_q\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~227_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~483_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~578_combout\);

-- Location: MLABCELL_X82_Y40_N39
\dp1|MEM1|RAM~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~579_combout\ = ( \dp1|MEM1|RAM~576_combout\ & ( \dp1|MEM1|RAM~578_combout\ & ( ((!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~575_combout\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~577_combout\))) # (\dp1|MIM1|out[2]~2_combout\) ) 
-- ) ) # ( !\dp1|MEM1|RAM~576_combout\ & ( \dp1|MEM1|RAM~578_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MEM1|RAM~575_combout\ & !\dp1|MIM1|out[2]~2_combout\)))) # (\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MIM1|out[2]~2_combout\)) # 
-- (\dp1|MEM1|RAM~577_combout\))) ) ) ) # ( \dp1|MEM1|RAM~576_combout\ & ( !\dp1|MEM1|RAM~578_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MIM1|out[2]~2_combout\) # (\dp1|MEM1|RAM~575_combout\)))) # (\dp1|MIM1|out[3]~3_combout\ & 
-- (\dp1|MEM1|RAM~577_combout\ & ((!\dp1|MIM1|out[2]~2_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~576_combout\ & ( !\dp1|MEM1|RAM~578_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~575_combout\))) # 
-- (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~577_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011100110000011101001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~577_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~575_combout\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~576_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~578_combout\,
	combout => \dp1|MEM1|RAM~579_combout\);

-- Location: MLABCELL_X82_Y38_N18
\dp1|MEM1|RAM~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~595_combout\ = ( \dp1|MEM1|RAM~589_combout\ & ( \dp1|MEM1|RAM~579_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\) # ((!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~584_combout\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~594_combout\))) 
-- ) ) ) # ( !\dp1|MEM1|RAM~589_combout\ & ( \dp1|MEM1|RAM~579_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((!\dp1|MIM1|out[0]~0_combout\) # ((\dp1|MEM1|RAM~584_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MIM1|out[0]~0_combout\ & 
-- (\dp1|MEM1|RAM~594_combout\))) ) ) ) # ( \dp1|MEM1|RAM~589_combout\ & ( !\dp1|MEM1|RAM~579_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~584_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & 
-- ((!\dp1|MIM1|out[0]~0_combout\) # ((\dp1|MEM1|RAM~594_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~589_combout\ & ( !\dp1|MEM1|RAM~579_combout\ & ( (\dp1|MIM1|out[0]~0_combout\ & ((!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~584_combout\))) # 
-- (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~594_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~594_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~584_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~589_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~579_combout\,
	combout => \dp1|MEM1|RAM~595_combout\);

-- Location: MLABCELL_X82_Y38_N0
\dp1|IR1|InstrReg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|IR1|InstrReg~3_combout\ = ( \dp1|MEM1|RAM~595_combout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \dp1|MEM1|ALT_INV_RAM~595_combout\,
	combout => \dp1|IR1|InstrReg~3_combout\);

-- Location: FF_X82_Y38_N1
\dp1|MA1|Addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|IR1|InstrReg~3_combout\,
	ena => \dp1|MA1|Addr[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MA1|Addr\(3));

-- Location: MLABCELL_X82_Y39_N30
\dp1|MIM1|out[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MIM1|out[3]~3_combout\ = ( \c1|state.011~q\ & ( \dp1|MA1|Addr\(3) ) ) # ( !\c1|state.011~q\ & ( (!\c1|state.100~q\ & ((\dp1|PC1|PCReg\(3)))) # (\c1|state.100~q\ & (\dp1|MA1|Addr\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|MA1|ALT_INV_Addr\(3),
	datac => \c1|ALT_INV_state.100~q\,
	datad => \dp1|PC1|ALT_INV_PCReg\(3),
	dataf => \c1|ALT_INV_state.011~q\,
	combout => \dp1|MIM1|out[3]~3_combout\);

-- Location: FF_X81_Y41_N38
\dp1|MEM1|RAM~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~66_q\);

-- Location: FF_X79_Y42_N52
\dp1|MEM1|RAM~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~194_q\);

-- Location: FF_X80_Y36_N44
\dp1|MEM1|RAM~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~749_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~322_q\);

-- Location: FF_X81_Y41_N8
\dp1|MEM1|RAM~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~450_q\);

-- Location: LABCELL_X81_Y41_N6
\dp1|MEM1|RAM~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~564_combout\ = ( \dp1|MEM1|RAM~450_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MIM1|out[5]~5_combout\) # (\dp1|MEM1|RAM~194_q\) ) ) ) # ( !\dp1|MEM1|RAM~450_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MEM1|RAM~194_q\ & 
-- !\dp1|MIM1|out[5]~5_combout\) ) ) ) # ( \dp1|MEM1|RAM~450_q\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~66_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~322_q\))) ) ) ) # ( !\dp1|MEM1|RAM~450_q\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~66_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~322_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~66_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~194_q\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~322_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~450_q\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~564_combout\);

-- Location: LABCELL_X79_Y41_N6
\dp1|MEM1|RAM~202feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~202feeder_combout\ = \dp1|ACC1|Aout\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(2),
	combout => \dp1|MEM1|RAM~202feeder_combout\);

-- Location: FF_X79_Y41_N7
\dp1|MEM1|RAM~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~202feeder_combout\,
	ena => \dp1|MEM1|RAM~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~202_q\);

-- Location: FF_X82_Y41_N7
\dp1|MEM1|RAM~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~757_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~330_q\);

-- Location: FF_X82_Y41_N5
\dp1|MEM1|RAM~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~458_q\);

-- Location: FF_X82_Y41_N16
\dp1|MEM1|RAM~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~74_q\);

-- Location: LABCELL_X83_Y39_N42
\dp1|MEM1|RAM~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~565_combout\ = ( \dp1|MEM1|RAM~74_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~330_q\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~458_q\))) ) ) ) # ( !\dp1|MEM1|RAM~74_q\ & ( 
-- \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~330_q\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~458_q\))) ) ) ) # ( \dp1|MEM1|RAM~74_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\) # 
-- (\dp1|MEM1|RAM~202_q\) ) ) ) # ( !\dp1|MEM1|RAM~74_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~202_q\ & \dp1|MIM1|out[4]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~202_q\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~330_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~458_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~74_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~565_combout\);

-- Location: FF_X80_Y38_N49
\dp1|MEM1|RAM~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~90_q\);

-- Location: MLABCELL_X87_Y39_N39
\dp1|MEM1|RAM~346feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~346feeder_combout\ = \dp1|ACC1|Aout\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(2),
	combout => \dp1|MEM1|RAM~346feeder_combout\);

-- Location: FF_X87_Y39_N40
\dp1|MEM1|RAM~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~346feeder_combout\,
	ena => \dp1|MEM1|RAM~773_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~346_q\);

-- Location: FF_X80_Y38_N5
\dp1|MEM1|RAM~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~218_q\);

-- Location: FF_X82_Y39_N2
\dp1|MEM1|RAM~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~474_q\);

-- Location: MLABCELL_X82_Y39_N0
\dp1|MEM1|RAM~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~567_combout\ = ( \dp1|MEM1|RAM~474_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~346_q\) ) ) ) # ( !\dp1|MEM1|RAM~474_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~346_q\ & 
-- !\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( \dp1|MEM1|RAM~474_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~90_q\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~218_q\))) ) ) ) # ( !\dp1|MEM1|RAM~474_q\ & ( 
-- !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~90_q\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~218_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~90_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~346_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~218_q\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~474_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~567_combout\);

-- Location: FF_X81_Y42_N55
\dp1|MEM1|RAM~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~82_q\);

-- Location: FF_X81_Y42_N49
\dp1|MEM1|RAM~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~210_q\);

-- Location: FF_X79_Y42_N20
\dp1|MEM1|RAM~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~765_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~338_q\);

-- Location: FF_X81_Y42_N13
\dp1|MEM1|RAM~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~466_q\);

-- Location: LABCELL_X81_Y41_N21
\dp1|MEM1|RAM~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~566_combout\ = ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~466_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~210_q\ ) ) ) # ( \dp1|MIM1|out[5]~5_combout\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~338_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~82_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~210_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~338_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~466_q\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~566_combout\);

-- Location: MLABCELL_X82_Y39_N48
\dp1|MEM1|RAM~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~568_combout\ = ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~566_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~565_combout\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~567_combout\))) ) ) ) # ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~566_combout\ & ( (\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~564_combout\) ) ) ) # ( \dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MEM1|RAM~566_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & 
-- (\dp1|MEM1|RAM~565_combout\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~567_combout\))) ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MEM1|RAM~566_combout\ & ( (\dp1|MEM1|RAM~564_combout\ & !\dp1|MIM1|out[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111101010101111111110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~564_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~565_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~567_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~566_combout\,
	combout => \dp1|MEM1|RAM~568_combout\);

-- Location: FF_X80_Y41_N1
\dp1|MEM1|RAM~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~763_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~306_q\);

-- Location: FF_X78_Y41_N40
\dp1|MEM1|RAM~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~755_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~298_q\);

-- Location: FF_X81_Y37_N29
\dp1|MEM1|RAM~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~290_q\);

-- Location: FF_X80_Y37_N10
\dp1|MEM1|RAM~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~771_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~314_q\);

-- Location: LABCELL_X81_Y37_N27
\dp1|MEM1|RAM~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~561_combout\ = ( \dp1|MEM1|RAM~290_q\ & ( \dp1|MEM1|RAM~314_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (((!\dp1|MIM1|out[1]~1_combout\)) # (\dp1|MEM1|RAM~306_q\))) # (\dp1|MIM1|out[0]~0_combout\ & (((\dp1|MIM1|out[1]~1_combout\) # 
-- (\dp1|MEM1|RAM~298_q\)))) ) ) ) # ( !\dp1|MEM1|RAM~290_q\ & ( \dp1|MEM1|RAM~314_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~306_q\ & ((\dp1|MIM1|out[1]~1_combout\)))) # (\dp1|MIM1|out[0]~0_combout\ & (((\dp1|MIM1|out[1]~1_combout\) # 
-- (\dp1|MEM1|RAM~298_q\)))) ) ) ) # ( \dp1|MEM1|RAM~290_q\ & ( !\dp1|MEM1|RAM~314_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (((!\dp1|MIM1|out[1]~1_combout\)) # (\dp1|MEM1|RAM~306_q\))) # (\dp1|MIM1|out[0]~0_combout\ & (((\dp1|MEM1|RAM~298_q\ & 
-- !\dp1|MIM1|out[1]~1_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~290_q\ & ( !\dp1|MEM1|RAM~314_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~306_q\ & ((\dp1|MIM1|out[1]~1_combout\)))) # (\dp1|MIM1|out[0]~0_combout\ & (((\dp1|MEM1|RAM~298_q\ & 
-- !\dp1|MIM1|out[1]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~306_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~298_q\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~290_q\,
	dataf => \dp1|MEM1|ALT_INV_RAM~314_q\,
	combout => \dp1|MEM1|RAM~561_combout\);

-- Location: FF_X84_Y37_N4
\dp1|MEM1|RAM~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~34_q\);

-- Location: LABCELL_X75_Y40_N45
\dp1|MEM1|RAM~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~815_combout\ = ( !\dp1|ACC1|Aout\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dp1|ACC1|ALT_INV_Aout\(2),
	combout => \dp1|MEM1|RAM~815_combout\);

-- Location: FF_X78_Y39_N34
\dp1|MEM1|RAM~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|MEM1|RAM~815_combout\,
	sload => VCC,
	ena => \dp1|MEM1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~58_q\);

-- Location: FF_X78_Y38_N28
\dp1|MEM1|RAM~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~50_q\);

-- Location: FF_X81_Y37_N14
\dp1|MEM1|RAM~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~42_q\);

-- Location: LABCELL_X81_Y37_N12
\dp1|MEM1|RAM~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~559_combout\ = ( \dp1|MEM1|RAM~42_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MEM1|RAM~58_q\) # (!\dp1|MIM1|out[1]~1_combout\) ) ) ) # ( !\dp1|MEM1|RAM~42_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MEM1|RAM~58_q\ & 
-- \dp1|MIM1|out[1]~1_combout\) ) ) ) # ( \dp1|MEM1|RAM~42_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~34_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~50_q\))) ) ) ) # ( !\dp1|MEM1|RAM~42_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~34_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~50_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100001100000011001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~34_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~58_q\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~50_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~42_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~559_combout\);

-- Location: FF_X85_Y37_N40
\dp1|MEM1|RAM~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~162_q\);

-- Location: FF_X85_Y40_N28
\dp1|MEM1|RAM~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~178_q\);

-- Location: FF_X78_Y40_N25
\dp1|MEM1|RAM~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~186_q\);

-- Location: FF_X81_Y37_N56
\dp1|MEM1|RAM~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~170_q\);

-- Location: LABCELL_X81_Y37_N54
\dp1|MEM1|RAM~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~560_combout\ = ( \dp1|MEM1|RAM~170_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~186_q\) ) ) ) # ( !\dp1|MEM1|RAM~170_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[1]~1_combout\ & 
-- \dp1|MEM1|RAM~186_q\) ) ) ) # ( \dp1|MEM1|RAM~170_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~162_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~178_q\))) ) ) ) # ( !\dp1|MEM1|RAM~170_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~162_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~178_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~162_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~178_q\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~186_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~170_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~560_combout\);

-- Location: FF_X82_Y36_N19
\dp1|MEM1|RAM~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~785_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~418_q\);

-- Location: LABCELL_X77_Y40_N45
\dp1|MEM1|RAM~426feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~426feeder_combout\ = \dp1|ACC1|Aout\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(2),
	combout => \dp1|MEM1|RAM~426feeder_combout\);

-- Location: FF_X77_Y40_N46
\dp1|MEM1|RAM~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~426feeder_combout\,
	ena => \dp1|MEM1|RAM~787_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~426_q\);

-- Location: FF_X82_Y42_N10
\dp1|MEM1|RAM~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~789_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~434_q\);

-- Location: FF_X80_Y37_N38
\dp1|MEM1|RAM~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~442_q\);

-- Location: LABCELL_X80_Y37_N36
\dp1|MEM1|RAM~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~562_combout\ = ( \dp1|MEM1|RAM~442_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~426_q\) ) ) ) # ( !\dp1|MEM1|RAM~442_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MEM1|RAM~426_q\ & 
-- !\dp1|MIM1|out[1]~1_combout\) ) ) ) # ( \dp1|MEM1|RAM~442_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~418_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~434_q\))) ) ) ) # ( !\dp1|MEM1|RAM~442_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~418_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~434_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~418_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~426_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~434_q\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~442_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~562_combout\);

-- Location: LABCELL_X81_Y37_N48
\dp1|MEM1|RAM~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~563_combout\ = ( \dp1|MEM1|RAM~560_combout\ & ( \dp1|MEM1|RAM~562_combout\ & ( ((!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~559_combout\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~561_combout\))) # (\dp1|MIM1|out[4]~4_combout\) ) 
-- ) ) # ( !\dp1|MEM1|RAM~560_combout\ & ( \dp1|MEM1|RAM~562_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~559_combout\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~561_combout\)))) # 
-- (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MIM1|out[5]~5_combout\)) ) ) ) # ( \dp1|MEM1|RAM~560_combout\ & ( !\dp1|MEM1|RAM~562_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~559_combout\))) # 
-- (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~561_combout\)))) # (\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MIM1|out[5]~5_combout\)) ) ) ) # ( !\dp1|MEM1|RAM~560_combout\ & ( !\dp1|MEM1|RAM~562_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & 
-- ((!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~559_combout\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~561_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~561_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~559_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~560_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~562_combout\,
	combout => \dp1|MEM1|RAM~563_combout\);

-- Location: FF_X82_Y40_N53
\dp1|MEM1|RAM~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~498_q\);

-- Location: FF_X83_Y37_N10
\dp1|MEM1|RAM~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~490_q\);

-- Location: FF_X82_Y36_N5
\dp1|MEM1|RAM~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~482_q\);

-- Location: FF_X82_Y40_N26
\dp1|MEM1|RAM~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~506_q\);

-- Location: MLABCELL_X82_Y40_N24
\dp1|MEM1|RAM~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~572_combout\ = ( \dp1|MEM1|RAM~506_q\ & ( \dp1|MIM1|out[1]~1_combout\ & ( (\dp1|MIM1|out[0]~0_combout\) # (\dp1|MEM1|RAM~498_q\) ) ) ) # ( !\dp1|MEM1|RAM~506_q\ & ( \dp1|MIM1|out[1]~1_combout\ & ( (\dp1|MEM1|RAM~498_q\ & 
-- !\dp1|MIM1|out[0]~0_combout\) ) ) ) # ( \dp1|MEM1|RAM~506_q\ & ( !\dp1|MIM1|out[1]~1_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~482_q\))) # (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~490_q\)) ) ) ) # ( !\dp1|MEM1|RAM~506_q\ & ( 
-- !\dp1|MIM1|out[1]~1_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~482_q\))) # (\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~490_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~498_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~490_q\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~482_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~506_q\,
	dataf => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	combout => \dp1|MEM1|RAM~572_combout\);

-- Location: FF_X84_Y40_N40
\dp1|MEM1|RAM~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~767_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~370_q\);

-- Location: FF_X77_Y40_N37
\dp1|MEM1|RAM~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~759_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~362_q\);

-- Location: LABCELL_X81_Y36_N45
\dp1|MEM1|RAM~354feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~354feeder_combout\ = ( \dp1|ACC1|Aout\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(2),
	combout => \dp1|MEM1|RAM~354feeder_combout\);

-- Location: FF_X81_Y36_N47
\dp1|MEM1|RAM~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~354feeder_combout\,
	ena => \dp1|MEM1|RAM~751_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~354_q\);

-- Location: FF_X83_Y42_N43
\dp1|MEM1|RAM~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~775_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~378_q\);

-- Location: LABCELL_X83_Y40_N9
\dp1|MEM1|RAM~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~571_combout\ = ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~378_q\ ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~370_q\ ) ) ) # ( \dp1|MIM1|out[0]~0_combout\ & ( 
-- !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~362_q\ ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~354_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~370_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~362_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~354_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~378_q\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	combout => \dp1|MEM1|RAM~571_combout\);

-- Location: FF_X84_Y40_N31
\dp1|MEM1|RAM~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~709_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~114_q\);

-- Location: LABCELL_X83_Y37_N51
\dp1|MEM1|RAM~106feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~106feeder_combout\ = \dp1|ACC1|Aout\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(2),
	combout => \dp1|MEM1|RAM~106feeder_combout\);

-- Location: FF_X83_Y37_N53
\dp1|MEM1|RAM~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~106feeder_combout\,
	ena => \dp1|MEM1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~106_q\);

-- Location: FF_X84_Y41_N50
\dp1|MEM1|RAM~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~122_q\);

-- Location: LABCELL_X81_Y36_N48
\dp1|MEM1|RAM~98feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~98feeder_combout\ = ( \dp1|ACC1|Aout\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(2),
	combout => \dp1|MEM1|RAM~98feeder_combout\);

-- Location: FF_X81_Y36_N49
\dp1|MEM1|RAM~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~98feeder_combout\,
	ena => \dp1|MEM1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~98_q\);

-- Location: LABCELL_X83_Y39_N54
\dp1|MEM1|RAM~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~569_combout\ = ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~122_q\ ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~106_q\ ) ) ) # ( \dp1|MIM1|out[1]~1_combout\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~114_q\ ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MEM1|RAM~98_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~114_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~106_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~122_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~98_q\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~569_combout\);

-- Location: FF_X79_Y39_N46
\dp1|MEM1|RAM~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~226_q\);

-- Location: FF_X82_Y40_N34
\dp1|MEM1|RAM~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~242_q\);

-- Location: LABCELL_X83_Y37_N21
\dp1|MEM1|RAM~234feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~234feeder_combout\ = \dp1|ACC1|Aout\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(2),
	combout => \dp1|MEM1|RAM~234feeder_combout\);

-- Location: FF_X83_Y37_N23
\dp1|MEM1|RAM~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~234feeder_combout\,
	ena => \dp1|MEM1|RAM~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~234_q\);

-- Location: FF_X82_Y37_N32
\dp1|MEM1|RAM~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~250_q\);

-- Location: MLABCELL_X82_Y37_N30
\dp1|MEM1|RAM~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~570_combout\ = ( \dp1|MEM1|RAM~250_q\ & ( \dp1|MIM1|out[1]~1_combout\ & ( (\dp1|MIM1|out[0]~0_combout\) # (\dp1|MEM1|RAM~242_q\) ) ) ) # ( !\dp1|MEM1|RAM~250_q\ & ( \dp1|MIM1|out[1]~1_combout\ & ( (\dp1|MEM1|RAM~242_q\ & 
-- !\dp1|MIM1|out[0]~0_combout\) ) ) ) # ( \dp1|MEM1|RAM~250_q\ & ( !\dp1|MIM1|out[1]~1_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~226_q\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~234_q\))) ) ) ) # ( !\dp1|MEM1|RAM~250_q\ & ( 
-- !\dp1|MIM1|out[1]~1_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~226_q\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~234_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~226_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~242_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~234_q\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~250_q\,
	dataf => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	combout => \dp1|MEM1|RAM~570_combout\);

-- Location: MLABCELL_X82_Y39_N36
\dp1|MEM1|RAM~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~573_combout\ = ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~570_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\) # (\dp1|MEM1|RAM~572_combout\) ) ) ) # ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~570_combout\ & ( 
-- (!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~569_combout\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~571_combout\)) ) ) ) # ( \dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MEM1|RAM~570_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & 
-- \dp1|MEM1|RAM~572_combout\) ) ) ) # ( !\dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MEM1|RAM~570_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~569_combout\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~571_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~572_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~571_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~569_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~570_combout\,
	combout => \dp1|MEM1|RAM~573_combout\);

-- Location: FF_X80_Y42_N52
\dp1|MEM1|RAM~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~18_q\);

-- Location: LABCELL_X83_Y41_N48
\dp1|MEM1|RAM~26feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~26feeder_combout\ = \dp1|ACC1|Aout\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(2),
	combout => \dp1|MEM1|RAM~26feeder_combout\);

-- Location: FF_X83_Y41_N49
\dp1|MEM1|RAM~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~26feeder_combout\,
	ena => \dp1|MEM1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~26_q\);

-- Location: FF_X79_Y39_N8
\dp1|MEM1|RAM~2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~2_q\);

-- Location: LABCELL_X77_Y39_N39
\dp1|MEM1|RAM~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~814_combout\ = ( !\dp1|ACC1|Aout\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dp1|ACC1|ALT_INV_Aout\(2),
	combout => \dp1|MEM1|RAM~814_combout\);

-- Location: FF_X77_Y39_N40
\dp1|MEM1|RAM~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~814_combout\,
	ena => \dp1|MEM1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~10_q\);

-- Location: LABCELL_X81_Y41_N45
\dp1|MEM1|RAM~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~554_combout\ = ( \dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~26_q\ ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~18_q\ ) ) ) # ( \dp1|MIM1|out[0]~0_combout\ & ( 
-- !\dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MEM1|RAM~10_q\ ) ) ) # ( !\dp1|MIM1|out[0]~0_combout\ & ( !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~2_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111110000000001010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~18_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~26_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~2_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~10_q\,
	datae => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	combout => \dp1|MEM1|RAM~554_combout\);

-- Location: FF_X82_Y36_N49
\dp1|MEM1|RAM~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~386_q\);

-- Location: FF_X83_Y42_N37
\dp1|MEM1|RAM~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~394_q\);

-- Location: FF_X80_Y42_N4
\dp1|MEM1|RAM~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~781_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~402_q\);

-- Location: FF_X84_Y39_N13
\dp1|MEM1|RAM~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~783_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~410_q\);

-- Location: LABCELL_X83_Y39_N36
\dp1|MEM1|RAM~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~557_combout\ = ( \dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~410_q\ & ( (\dp1|MEM1|RAM~402_q\) # (\dp1|MIM1|out[0]~0_combout\) ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( \dp1|MEM1|RAM~410_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & 
-- (\dp1|MEM1|RAM~386_q\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~394_q\))) ) ) ) # ( \dp1|MIM1|out[1]~1_combout\ & ( !\dp1|MEM1|RAM~410_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & \dp1|MEM1|RAM~402_q\) ) ) ) # ( !\dp1|MIM1|out[1]~1_combout\ & ( 
-- !\dp1|MEM1|RAM~410_q\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~386_q\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~394_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000001111000001010011010100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~386_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~394_q\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~402_q\,
	datae => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~410_q\,
	combout => \dp1|MEM1|RAM~557_combout\);

-- Location: FF_X80_Y41_N55
\dp1|MEM1|RAM~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~761_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~274_q\);

-- Location: FF_X80_Y40_N23
\dp1|MEM1|RAM~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~258_q\);

-- Location: FF_X75_Y40_N31
\dp1|MEM1|RAM~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~753_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~266_q\);

-- Location: FF_X85_Y38_N38
\dp1|MEM1|RAM~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~769_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~282_q\);

-- Location: LABCELL_X85_Y38_N36
\dp1|MEM1|RAM~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~556_combout\ = ( \dp1|MEM1|RAM~282_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~266_q\) ) ) ) # ( !\dp1|MEM1|RAM~282_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MEM1|RAM~266_q\ & 
-- !\dp1|MIM1|out[1]~1_combout\) ) ) ) # ( \dp1|MEM1|RAM~282_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~258_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~274_q\)) ) ) ) # ( !\dp1|MEM1|RAM~282_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~258_q\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~274_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~274_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~258_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~266_q\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~282_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~556_combout\);

-- Location: FF_X80_Y40_N52
\dp1|MEM1|RAM~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~130_q\);

-- Location: FF_X83_Y36_N7
\dp1|MEM1|RAM~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~154_q\);

-- Location: FF_X79_Y37_N49
\dp1|MEM1|RAM~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~146_q\);

-- Location: FF_X83_Y36_N14
\dp1|MEM1|RAM~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sload => VCC,
	ena => \dp1|MEM1|RAM~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~138_q\);

-- Location: LABCELL_X83_Y36_N12
\dp1|MEM1|RAM~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~555_combout\ = ( \dp1|MEM1|RAM~138_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~154_q\) ) ) ) # ( !\dp1|MEM1|RAM~138_q\ & ( \dp1|MIM1|out[0]~0_combout\ & ( (\dp1|MEM1|RAM~154_q\ & 
-- \dp1|MIM1|out[1]~1_combout\) ) ) ) # ( \dp1|MEM1|RAM~138_q\ & ( !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~130_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~146_q\))) ) ) ) # ( !\dp1|MEM1|RAM~138_q\ & ( 
-- !\dp1|MIM1|out[0]~0_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~130_q\)) # (\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~146_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~130_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~154_q\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~146_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~138_q\,
	dataf => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	combout => \dp1|MEM1|RAM~555_combout\);

-- Location: MLABCELL_X82_Y39_N18
\dp1|MEM1|RAM~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~558_combout\ = ( \dp1|MEM1|RAM~556_combout\ & ( \dp1|MEM1|RAM~555_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MIM1|out[4]~4_combout\)) # (\dp1|MEM1|RAM~554_combout\))) # (\dp1|MIM1|out[5]~5_combout\ & 
-- (((!\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~557_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~556_combout\ & ( \dp1|MEM1|RAM~555_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MIM1|out[4]~4_combout\)) # (\dp1|MEM1|RAM~554_combout\))) # 
-- (\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MEM1|RAM~557_combout\ & \dp1|MIM1|out[4]~4_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~556_combout\ & ( !\dp1|MEM1|RAM~555_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~554_combout\ & 
-- ((!\dp1|MIM1|out[4]~4_combout\)))) # (\dp1|MIM1|out[5]~5_combout\ & (((!\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~557_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~556_combout\ & ( !\dp1|MEM1|RAM~555_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & 
-- (\dp1|MEM1|RAM~554_combout\ & ((!\dp1|MIM1|out[4]~4_combout\)))) # (\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MEM1|RAM~557_combout\ & \dp1|MIM1|out[4]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~554_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~557_combout\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~556_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~555_combout\,
	combout => \dp1|MEM1|RAM~558_combout\);

-- Location: MLABCELL_X82_Y39_N24
\dp1|MEM1|RAM~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~574_combout\ = ( \dp1|MEM1|RAM~573_combout\ & ( \dp1|MEM1|RAM~558_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((!\dp1|MIM1|out[2]~2_combout\) # ((\dp1|MEM1|RAM~563_combout\)))) # (\dp1|MIM1|out[3]~3_combout\ & 
-- (((\dp1|MEM1|RAM~568_combout\)) # (\dp1|MIM1|out[2]~2_combout\))) ) ) ) # ( !\dp1|MEM1|RAM~573_combout\ & ( \dp1|MEM1|RAM~558_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((!\dp1|MIM1|out[2]~2_combout\) # ((\dp1|MEM1|RAM~563_combout\)))) # 
-- (\dp1|MIM1|out[3]~3_combout\ & (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~568_combout\))) ) ) ) # ( \dp1|MEM1|RAM~573_combout\ & ( !\dp1|MEM1|RAM~558_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MIM1|out[2]~2_combout\ & 
-- ((\dp1|MEM1|RAM~563_combout\)))) # (\dp1|MIM1|out[3]~3_combout\ & (((\dp1|MEM1|RAM~568_combout\)) # (\dp1|MIM1|out[2]~2_combout\))) ) ) ) # ( !\dp1|MEM1|RAM~573_combout\ & ( !\dp1|MEM1|RAM~558_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & 
-- (\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~563_combout\)))) # (\dp1|MIM1|out[3]~3_combout\ & (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~568_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datab => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~568_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~563_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~573_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~558_combout\,
	combout => \dp1|MEM1|RAM~574_combout\);

-- Location: MLABCELL_X82_Y39_N42
\dp1|MA1|Addr~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MA1|Addr~3_combout\ = ( \dp1|MEM1|RAM~574_combout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst~input_o\,
	dataf => \dp1|MEM1|ALT_INV_RAM~574_combout\,
	combout => \dp1|MA1|Addr~3_combout\);

-- Location: FF_X82_Y39_N44
\dp1|MA1|Addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MA1|Addr~3_combout\,
	ena => \dp1|MA1|Addr[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MA1|Addr\(2));

-- Location: MLABCELL_X82_Y39_N9
\dp1|MIM1|out[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MIM1|out[2]~2_combout\ = ( \c1|state.100~q\ & ( \dp1|MA1|Addr\(2) ) ) # ( !\c1|state.100~q\ & ( (!\c1|state.011~q\ & ((\dp1|PC1|PCReg\(2)))) # (\c1|state.011~q\ & (\dp1|MA1|Addr\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|MA1|ALT_INV_Addr\(2),
	datac => \c1|ALT_INV_state.011~q\,
	datad => \dp1|PC1|ALT_INV_PCReg\(2),
	dataf => \c1|ALT_INV_state.100~q\,
	combout => \dp1|MIM1|out[2]~2_combout\);

-- Location: FF_X80_Y40_N29
\dp1|MEM1|RAM~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~261_q\);

-- Location: FF_X80_Y40_N8
\dp1|MEM1|RAM~5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~5_q\);

-- Location: MLABCELL_X82_Y36_N27
\dp1|MEM1|RAM~389feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~389feeder_combout\ = \dp1|ACC1|Aout\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~389feeder_combout\);

-- Location: FF_X82_Y36_N29
\dp1|MEM1|RAM~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~389feeder_combout\,
	ena => \dp1|MEM1|RAM~777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~389_q\);

-- Location: FF_X80_Y40_N38
\dp1|MEM1|RAM~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~133_q\);

-- Location: LABCELL_X80_Y40_N36
\dp1|MEM1|RAM~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~617_combout\ = ( \dp1|MEM1|RAM~133_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\) # (\dp1|MEM1|RAM~389_q\) ) ) ) # ( !\dp1|MEM1|RAM~133_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & 
-- \dp1|MEM1|RAM~389_q\) ) ) ) # ( \dp1|MEM1|RAM~133_q\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~5_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~261_q\)) ) ) ) # ( !\dp1|MEM1|RAM~133_q\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~5_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~261_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~261_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~5_q\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~389_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~133_q\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~617_combout\);

-- Location: LABCELL_X81_Y41_N33
\dp1|MEM1|RAM~824\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~824_combout\ = ( !\dp1|ACC1|Aout\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~824_combout\);

-- Location: FF_X81_Y41_N35
\dp1|MEM1|RAM~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~824_combout\,
	ena => \dp1|MEM1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~69_q\);

-- Location: FF_X81_Y41_N44
\dp1|MEM1|RAM~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~197_q\);

-- Location: FF_X80_Y36_N17
\dp1|MEM1|RAM~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~749_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~325_q\);

-- Location: FF_X81_Y41_N20
\dp1|MEM1|RAM~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~453_q\);

-- Location: LABCELL_X81_Y41_N39
\dp1|MEM1|RAM~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~619_combout\ = ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MEM1|RAM~453_q\ & ( (\dp1|MEM1|RAM~325_q\) # (\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MEM1|RAM~453_q\ & ( (!\dp1|MIM1|out[4]~4_combout\ & 
-- (!\dp1|MEM1|RAM~69_q\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~197_q\))) ) ) ) # ( \dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MEM1|RAM~453_q\ & ( (!\dp1|MIM1|out[4]~4_combout\ & \dp1|MEM1|RAM~325_q\) ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( 
-- !\dp1|MEM1|RAM~453_q\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MEM1|RAM~69_q\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~197_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001110100011000000001111000010100011101000110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~69_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~197_q\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~325_q\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~453_q\,
	combout => \dp1|MEM1|RAM~619_combout\);

-- Location: FF_X85_Y38_N19
\dp1|MEM1|RAM~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~37_q\);

-- Location: FF_X82_Y36_N13
\dp1|MEM1|RAM~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~785_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~421_q\);

-- Location: FF_X80_Y37_N34
\dp1|MEM1|RAM~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~293_q\);

-- Location: FF_X85_Y37_N14
\dp1|MEM1|RAM~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~165_q\);

-- Location: LABCELL_X85_Y37_N12
\dp1|MEM1|RAM~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~618_combout\ = ( \dp1|MEM1|RAM~165_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~293_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~421_q\)) ) ) ) # ( !\dp1|MEM1|RAM~165_q\ & ( 
-- \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~293_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~421_q\)) ) ) ) # ( \dp1|MEM1|RAM~165_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MIM1|out[4]~4_combout\) # 
-- (\dp1|MEM1|RAM~37_q\) ) ) ) # ( !\dp1|MEM1|RAM~165_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~37_q\ & !\dp1|MIM1|out[4]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~37_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~421_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~293_q\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~165_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~618_combout\);

-- Location: FF_X83_Y38_N58
\dp1|MEM1|RAM~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~485_q\);

-- Location: LABCELL_X81_Y36_N42
\dp1|MEM1|RAM~357feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~357feeder_combout\ = \dp1|ACC1|Aout\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~357feeder_combout\);

-- Location: FF_X81_Y36_N43
\dp1|MEM1|RAM~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~357feeder_combout\,
	ena => \dp1|MEM1|RAM~751_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~357_q\);

-- Location: FF_X79_Y39_N31
\dp1|MEM1|RAM~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~229_q\);

-- Location: LABCELL_X81_Y36_N6
\dp1|MEM1|RAM~825\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~825_combout\ = !\dp1|ACC1|Aout\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~825_combout\);

-- Location: FF_X81_Y36_N34
\dp1|MEM1|RAM~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|MEM1|RAM~825_combout\,
	sload => VCC,
	ena => \dp1|MEM1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~101_q\);

-- Location: MLABCELL_X82_Y36_N54
\dp1|MEM1|RAM~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~620_combout\ = ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~485_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~229_q\ ) ) ) # ( \dp1|MIM1|out[5]~5_combout\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~357_q\ ) ) ) # ( !\dp1|MIM1|out[5]~5_combout\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MEM1|RAM~101_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~485_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~357_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~229_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~101_q\,
	datae => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~620_combout\);

-- Location: MLABCELL_X82_Y40_N30
\dp1|MEM1|RAM~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~621_combout\ = ( \dp1|MEM1|RAM~618_combout\ & ( \dp1|MEM1|RAM~620_combout\ & ( ((!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~617_combout\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~619_combout\)))) # (\dp1|MIM1|out[2]~2_combout\) ) 
-- ) ) # ( !\dp1|MEM1|RAM~618_combout\ & ( \dp1|MEM1|RAM~620_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~617_combout\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~619_combout\))))) # 
-- (\dp1|MIM1|out[2]~2_combout\ & (\dp1|MIM1|out[3]~3_combout\)) ) ) ) # ( \dp1|MEM1|RAM~618_combout\ & ( !\dp1|MEM1|RAM~620_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & ((!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~617_combout\)) # 
-- (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~619_combout\))))) # (\dp1|MIM1|out[2]~2_combout\ & (!\dp1|MIM1|out[3]~3_combout\)) ) ) ) # ( !\dp1|MEM1|RAM~618_combout\ & ( !\dp1|MEM1|RAM~620_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & 
-- ((!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~617_combout\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~619_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datab => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~617_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~619_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~618_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~620_combout\,
	combout => \dp1|MEM1|RAM~621_combout\);

-- Location: LABCELL_X79_Y41_N54
\dp1|MEM1|RAM~205feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~205feeder_combout\ = ( \dp1|ACC1|Aout\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~205feeder_combout\);

-- Location: FF_X79_Y41_N56
\dp1|MEM1|RAM~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~205feeder_combout\,
	ena => \dp1|MEM1|RAM~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~205_q\);

-- Location: FF_X82_Y41_N19
\dp1|MEM1|RAM~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~77_q\);

-- Location: FF_X82_Y41_N55
\dp1|MEM1|RAM~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~461_q\);

-- Location: FF_X82_Y41_N50
\dp1|MEM1|RAM~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~757_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~333_q\);

-- Location: LABCELL_X83_Y41_N24
\dp1|MEM1|RAM~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~624_combout\ = ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MEM1|RAM~333_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~205_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~461_q\))) ) ) ) # ( !\dp1|MIM1|out[4]~4_combout\ & ( 
-- \dp1|MEM1|RAM~333_q\ & ( (\dp1|MIM1|out[5]~5_combout\) # (\dp1|MEM1|RAM~77_q\) ) ) ) # ( \dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MEM1|RAM~333_q\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~205_q\)) # (\dp1|MIM1|out[5]~5_combout\ & 
-- ((\dp1|MEM1|RAM~461_q\))) ) ) ) # ( !\dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MEM1|RAM~333_q\ & ( (\dp1|MEM1|RAM~77_q\ & !\dp1|MIM1|out[5]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000111100110011111111110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~205_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~77_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~461_q\,
	datad => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~333_q\,
	combout => \dp1|MEM1|RAM~624_combout\);

-- Location: FF_X81_Y37_N35
\dp1|MEM1|RAM~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~173_q\);

-- Location: FF_X78_Y41_N20
\dp1|MEM1|RAM~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~755_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~301_q\);

-- Location: FF_X78_Y41_N47
\dp1|MEM1|RAM~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~787_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~429_q\);

-- Location: LABCELL_X79_Y37_N12
\dp1|MEM1|RAM~826\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~826_combout\ = !\dp1|ACC1|Aout\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~826_combout\);

-- Location: FF_X79_Y37_N13
\dp1|MEM1|RAM~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~826_combout\,
	ena => \dp1|MEM1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~45_q\);

-- Location: MLABCELL_X82_Y41_N51
\dp1|MEM1|RAM~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~623_combout\ = ( \dp1|MEM1|RAM~45_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~173_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~429_q\))) ) ) ) # ( !\dp1|MEM1|RAM~45_q\ & ( 
-- \dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~173_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~429_q\))) ) ) ) # ( \dp1|MEM1|RAM~45_q\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MIM1|out[5]~5_combout\ & 
-- \dp1|MEM1|RAM~301_q\) ) ) ) # ( !\dp1|MEM1|RAM~45_q\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\) # (\dp1|MEM1|RAM~301_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111000000110000001101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~173_q\,
	datab => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~301_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~429_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~45_q\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~623_combout\);

-- Location: FF_X83_Y37_N16
\dp1|MEM1|RAM~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~237_q\);

-- Location: FF_X82_Y37_N16
\dp1|MEM1|RAM~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~759_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~365_q\);

-- Location: LABCELL_X83_Y37_N48
\dp1|MEM1|RAM~109feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~109feeder_combout\ = ( \dp1|ACC1|Aout\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~109feeder_combout\);

-- Location: FF_X83_Y37_N49
\dp1|MEM1|RAM~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~109feeder_combout\,
	ena => \dp1|MEM1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~109_q\);

-- Location: FF_X83_Y37_N34
\dp1|MEM1|RAM~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~493_q\);

-- Location: LABCELL_X83_Y41_N36
\dp1|MEM1|RAM~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~625_combout\ = ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MEM1|RAM~493_q\ ) ) ) # ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MEM1|RAM~365_q\ ) ) ) # ( \dp1|MIM1|out[4]~4_combout\ & ( 
-- !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MEM1|RAM~237_q\ ) ) ) # ( !\dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MEM1|RAM~109_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~237_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~365_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~109_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~493_q\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~625_combout\);

-- Location: FF_X83_Y42_N23
\dp1|MEM1|RAM~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~397_q\);

-- Location: FF_X77_Y39_N1
\dp1|MEM1|RAM~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~13_q\);

-- Location: FF_X87_Y40_N25
\dp1|MEM1|RAM~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~753_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~269_q\);

-- Location: FF_X83_Y42_N14
\dp1|MEM1|RAM~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~141_q\);

-- Location: LABCELL_X83_Y42_N12
\dp1|MEM1|RAM~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~622_combout\ = ( \dp1|MEM1|RAM~141_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\) # (\dp1|MEM1|RAM~397_q\) ) ) ) # ( !\dp1|MEM1|RAM~141_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MEM1|RAM~397_q\ & 
-- \dp1|MIM1|out[5]~5_combout\) ) ) ) # ( \dp1|MEM1|RAM~141_q\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~13_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~269_q\))) ) ) ) # ( !\dp1|MEM1|RAM~141_q\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~13_q\)) # (\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~269_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~397_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~13_q\,
	datac => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~269_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~141_q\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~622_combout\);

-- Location: LABCELL_X83_Y41_N45
\dp1|MEM1|RAM~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~626_combout\ = ( \dp1|MEM1|RAM~625_combout\ & ( \dp1|MEM1|RAM~622_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (((!\dp1|MIM1|out[3]~3_combout\)) # (\dp1|MEM1|RAM~624_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & (((\dp1|MEM1|RAM~623_combout\) 
-- # (\dp1|MIM1|out[3]~3_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~625_combout\ & ( \dp1|MEM1|RAM~622_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (((!\dp1|MIM1|out[3]~3_combout\)) # (\dp1|MEM1|RAM~624_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & 
-- (((!\dp1|MIM1|out[3]~3_combout\ & \dp1|MEM1|RAM~623_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~625_combout\ & ( !\dp1|MEM1|RAM~622_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~624_combout\ & (\dp1|MIM1|out[3]~3_combout\))) # 
-- (\dp1|MIM1|out[2]~2_combout\ & (((\dp1|MEM1|RAM~623_combout\) # (\dp1|MIM1|out[3]~3_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~625_combout\ & ( !\dp1|MEM1|RAM~622_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~624_combout\ & 
-- (\dp1|MIM1|out[3]~3_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & (((!\dp1|MIM1|out[3]~3_combout\ & \dp1|MEM1|RAM~623_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~624_combout\,
	datab => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~623_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~625_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~622_combout\,
	combout => \dp1|MEM1|RAM~626_combout\);

-- Location: FF_X84_Y39_N22
\dp1|MEM1|RAM~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~783_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~413_q\);

-- Location: FF_X80_Y37_N23
\dp1|MEM1|RAM~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~445_q\);

-- Location: FF_X78_Y39_N5
\dp1|MEM1|RAM~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~477_q\);

-- Location: FF_X82_Y40_N14
\dp1|MEM1|RAM~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~509_q\);

-- Location: MLABCELL_X82_Y40_N12
\dp1|MEM1|RAM~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~635_combout\ = ( \dp1|MEM1|RAM~509_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~445_q\) ) ) ) # ( !\dp1|MEM1|RAM~509_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~445_q\ & 
-- !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~509_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~413_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~477_q\))) ) ) ) # ( !\dp1|MEM1|RAM~509_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~413_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~477_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~413_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~445_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~477_q\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~509_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~635_combout\);

-- Location: FF_X78_Y39_N13
\dp1|MEM1|RAM~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~61_q\);

-- Location: FF_X80_Y38_N17
\dp1|MEM1|RAM~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~93_q\);

-- Location: FF_X83_Y41_N38
\dp1|MEM1|RAM~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~29_q\);

-- Location: FF_X83_Y41_N2
\dp1|MEM1|RAM~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~125_q\);

-- Location: LABCELL_X83_Y41_N0
\dp1|MEM1|RAM~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~632_combout\ = ( \dp1|MEM1|RAM~125_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~61_q\) ) ) ) # ( !\dp1|MEM1|RAM~125_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~61_q\ & 
-- !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~125_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~29_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~93_q\)) ) ) ) # ( !\dp1|MEM1|RAM~125_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~29_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~93_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~61_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~93_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~29_q\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~125_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~632_combout\);

-- Location: LABCELL_X79_Y40_N12
\dp1|MEM1|RAM~285feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~285feeder_combout\ = \dp1|ACC1|Aout\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~285feeder_combout\);

-- Location: FF_X79_Y40_N14
\dp1|MEM1|RAM~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~285feeder_combout\,
	ena => \dp1|MEM1|RAM~769_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~285_q\);

-- Location: FF_X78_Y40_N7
\dp1|MEM1|RAM~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~773_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~349_q\);

-- Location: FF_X80_Y37_N4
\dp1|MEM1|RAM~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~771_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~317_q\);

-- Location: FF_X87_Y40_N35
\dp1|MEM1|RAM~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~775_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~381_q\);

-- Location: MLABCELL_X87_Y40_N33
\dp1|MEM1|RAM~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~634_combout\ = ( \dp1|MEM1|RAM~381_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~317_q\) ) ) ) # ( !\dp1|MEM1|RAM~381_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~317_q\ & 
-- !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~381_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~285_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~349_q\))) ) ) ) # ( !\dp1|MEM1|RAM~381_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~285_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~349_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~285_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~349_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~317_q\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~381_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~634_combout\);

-- Location: FF_X82_Y37_N5
\dp1|MEM1|RAM~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~157_q\);

-- Location: FF_X78_Y40_N35
\dp1|MEM1|RAM~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~189_q\);

-- Location: FF_X80_Y38_N19
\dp1|MEM1|RAM~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~221_q\);

-- Location: FF_X82_Y37_N38
\dp1|MEM1|RAM~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~253_q\);

-- Location: MLABCELL_X82_Y37_N36
\dp1|MEM1|RAM~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~633_combout\ = ( \dp1|MEM1|RAM~253_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~189_q\) ) ) ) # ( !\dp1|MEM1|RAM~253_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~189_q\ & 
-- !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~253_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~157_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~221_q\))) ) ) ) # ( !\dp1|MEM1|RAM~253_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~157_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~221_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~157_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~189_q\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~221_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~253_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~633_combout\);

-- Location: MLABCELL_X82_Y40_N6
\dp1|MEM1|RAM~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~636_combout\ = ( \dp1|MEM1|RAM~633_combout\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~634_combout\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~635_combout\)) ) ) ) # ( 
-- !\dp1|MEM1|RAM~633_combout\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~634_combout\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~635_combout\)) ) ) ) # ( \dp1|MEM1|RAM~633_combout\ & ( 
-- !\dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~632_combout\) # (\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( !\dp1|MEM1|RAM~633_combout\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & \dp1|MEM1|RAM~632_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~635_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~632_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~634_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~633_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~636_combout\);

-- Location: LABCELL_X83_Y40_N51
\dp1|MEM1|RAM~341feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~341feeder_combout\ = ( \dp1|ACC1|Aout\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~341feeder_combout\);

-- Location: FF_X83_Y40_N52
\dp1|MEM1|RAM~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~341feeder_combout\,
	ena => \dp1|MEM1|RAM~765_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~341_q\);

-- Location: FF_X81_Y42_N20
\dp1|MEM1|RAM~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~213_q\);

-- Location: FF_X81_Y42_N8
\dp1|MEM1|RAM~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~85_q\);

-- Location: FF_X81_Y42_N44
\dp1|MEM1|RAM~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~469_q\);

-- Location: LABCELL_X81_Y42_N42
\dp1|MEM1|RAM~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~629_combout\ = ( \dp1|MEM1|RAM~469_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~341_q\) ) ) ) # ( !\dp1|MEM1|RAM~469_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~341_q\ & 
-- !\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( \dp1|MEM1|RAM~469_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~85_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~213_q\)) ) ) ) # ( !\dp1|MEM1|RAM~469_q\ & ( 
-- !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~85_q\))) # (\dp1|MIM1|out[4]~4_combout\ & (\dp1|MEM1|RAM~213_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~341_q\,
	datab => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~213_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~85_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~469_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~629_combout\);

-- Location: FF_X85_Y40_N58
\dp1|MEM1|RAM~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~181_q\);

-- Location: MLABCELL_X82_Y42_N27
\dp1|MEM1|RAM~309feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~309feeder_combout\ = \dp1|ACC1|Aout\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~309feeder_combout\);

-- Location: FF_X82_Y42_N29
\dp1|MEM1|RAM~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~309feeder_combout\,
	ena => \dp1|MEM1|RAM~763_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~309_q\);

-- Location: FF_X82_Y42_N44
\dp1|MEM1|RAM~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~53_q\);

-- Location: FF_X82_Y42_N56
\dp1|MEM1|RAM~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~789_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~437_q\);

-- Location: MLABCELL_X82_Y42_N54
\dp1|MEM1|RAM~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~628_combout\ = ( \dp1|MEM1|RAM~437_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MIM1|out[5]~5_combout\) # (\dp1|MEM1|RAM~181_q\) ) ) ) # ( !\dp1|MEM1|RAM~437_q\ & ( \dp1|MIM1|out[4]~4_combout\ & ( (\dp1|MEM1|RAM~181_q\ & 
-- !\dp1|MIM1|out[5]~5_combout\) ) ) ) # ( \dp1|MEM1|RAM~437_q\ & ( !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~53_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~309_q\)) ) ) ) # ( !\dp1|MEM1|RAM~437_q\ & ( 
-- !\dp1|MIM1|out[4]~4_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & ((\dp1|MEM1|RAM~53_q\))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~309_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~181_q\,
	datab => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~309_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~53_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~437_q\,
	dataf => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	combout => \dp1|MEM1|RAM~628_combout\);

-- Location: MLABCELL_X84_Y40_N3
\dp1|MEM1|RAM~117feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~117feeder_combout\ = ( \dp1|ACC1|Aout\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~117feeder_combout\);

-- Location: FF_X84_Y40_N4
\dp1|MEM1|RAM~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~117feeder_combout\,
	ena => \dp1|MEM1|RAM~709_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~117_q\);

-- Location: FF_X82_Y40_N50
\dp1|MEM1|RAM~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~501_q\);

-- Location: MLABCELL_X84_Y40_N36
\dp1|MEM1|RAM~373feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~373feeder_combout\ = ( \dp1|ACC1|Aout\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~373feeder_combout\);

-- Location: FF_X84_Y40_N38
\dp1|MEM1|RAM~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~373feeder_combout\,
	ena => \dp1|MEM1|RAM~767_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~373_q\);

-- Location: FF_X82_Y40_N44
\dp1|MEM1|RAM~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~245_q\);

-- Location: LABCELL_X83_Y42_N27
\dp1|MEM1|RAM~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~630_combout\ = ( \dp1|MIM1|out[4]~4_combout\ & ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MEM1|RAM~501_q\ ) ) ) # ( !\dp1|MIM1|out[4]~4_combout\ & ( \dp1|MIM1|out[5]~5_combout\ & ( \dp1|MEM1|RAM~373_q\ ) ) ) # ( \dp1|MIM1|out[4]~4_combout\ & ( 
-- !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MEM1|RAM~245_q\ ) ) ) # ( !\dp1|MIM1|out[4]~4_combout\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( \dp1|MEM1|RAM~117_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~117_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~501_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~373_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~245_q\,
	datae => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~630_combout\);

-- Location: LABCELL_X80_Y42_N36
\dp1|MEM1|RAM~277feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~277feeder_combout\ = \dp1|ACC1|Aout\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~277feeder_combout\);

-- Location: FF_X80_Y42_N38
\dp1|MEM1|RAM~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~277feeder_combout\,
	ena => \dp1|MEM1|RAM~761_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~277_q\);

-- Location: LABCELL_X80_Y42_N45
\dp1|MEM1|RAM~827\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~827_combout\ = !\dp1|ACC1|Aout\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~827_combout\);

-- Location: FF_X80_Y42_N47
\dp1|MEM1|RAM~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~827_combout\,
	ena => \dp1|MEM1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~21_q\);

-- Location: LABCELL_X79_Y37_N42
\dp1|MEM1|RAM~149feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~149feeder_combout\ = ( \dp1|ACC1|Aout\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(5),
	combout => \dp1|MEM1|RAM~149feeder_combout\);

-- Location: FF_X79_Y37_N44
\dp1|MEM1|RAM~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~149feeder_combout\,
	ena => \dp1|MEM1|RAM~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~149_q\);

-- Location: FF_X80_Y42_N29
\dp1|MEM1|RAM~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sload => VCC,
	ena => \dp1|MEM1|RAM~781_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~405_q\);

-- Location: LABCELL_X80_Y42_N27
\dp1|MEM1|RAM~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~627_combout\ = ( \dp1|MEM1|RAM~405_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~277_q\) ) ) ) # ( !\dp1|MEM1|RAM~405_q\ & ( \dp1|MIM1|out[5]~5_combout\ & ( (\dp1|MEM1|RAM~277_q\ & 
-- !\dp1|MIM1|out[4]~4_combout\) ) ) ) # ( \dp1|MEM1|RAM~405_q\ & ( !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MEM1|RAM~21_q\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~149_q\))) ) ) ) # ( !\dp1|MEM1|RAM~405_q\ & ( 
-- !\dp1|MIM1|out[5]~5_combout\ & ( (!\dp1|MIM1|out[4]~4_combout\ & (!\dp1|MEM1|RAM~21_q\)) # (\dp1|MIM1|out[4]~4_combout\ & ((\dp1|MEM1|RAM~149_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001111110011000000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~277_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~21_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~149_q\,
	datad => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~405_q\,
	dataf => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	combout => \dp1|MEM1|RAM~627_combout\);

-- Location: MLABCELL_X82_Y42_N33
\dp1|MEM1|RAM~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~631_combout\ = ( \dp1|MEM1|RAM~630_combout\ & ( \dp1|MEM1|RAM~627_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (((!\dp1|MIM1|out[3]~3_combout\)) # (\dp1|MEM1|RAM~629_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & (((\dp1|MEM1|RAM~628_combout\) 
-- # (\dp1|MIM1|out[3]~3_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~630_combout\ & ( \dp1|MEM1|RAM~627_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (((!\dp1|MIM1|out[3]~3_combout\)) # (\dp1|MEM1|RAM~629_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & 
-- (((!\dp1|MIM1|out[3]~3_combout\ & \dp1|MEM1|RAM~628_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~630_combout\ & ( !\dp1|MEM1|RAM~627_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~629_combout\ & (\dp1|MIM1|out[3]~3_combout\))) # 
-- (\dp1|MIM1|out[2]~2_combout\ & (((\dp1|MEM1|RAM~628_combout\) # (\dp1|MIM1|out[3]~3_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~630_combout\ & ( !\dp1|MEM1|RAM~627_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~629_combout\ & 
-- (\dp1|MIM1|out[3]~3_combout\))) # (\dp1|MIM1|out[2]~2_combout\ & (((!\dp1|MIM1|out[3]~3_combout\ & \dp1|MEM1|RAM~628_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~629_combout\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~628_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~630_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~627_combout\,
	combout => \dp1|MEM1|RAM~631_combout\);

-- Location: LABCELL_X83_Y40_N18
\dp1|MEM1|RAM~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~637_combout\ = ( \dp1|MEM1|RAM~636_combout\ & ( \dp1|MEM1|RAM~631_combout\ & ( ((!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~621_combout\)) # (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~626_combout\)))) # (\dp1|MIM1|out[1]~1_combout\) ) 
-- ) ) # ( !\dp1|MEM1|RAM~636_combout\ & ( \dp1|MEM1|RAM~631_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (((\dp1|MIM1|out[1]~1_combout\)) # (\dp1|MEM1|RAM~621_combout\))) # (\dp1|MIM1|out[0]~0_combout\ & (((\dp1|MEM1|RAM~626_combout\ & 
-- !\dp1|MIM1|out[1]~1_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~636_combout\ & ( !\dp1|MEM1|RAM~631_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~621_combout\ & ((!\dp1|MIM1|out[1]~1_combout\)))) # (\dp1|MIM1|out[0]~0_combout\ & 
-- (((\dp1|MIM1|out[1]~1_combout\) # (\dp1|MEM1|RAM~626_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~636_combout\ & ( !\dp1|MEM1|RAM~631_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & ((!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~621_combout\)) # 
-- (\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~626_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~621_combout\,
	datab => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~626_combout\,
	datad => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~636_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~631_combout\,
	combout => \dp1|MEM1|RAM~637_combout\);

-- Location: MLABCELL_X84_Y38_N48
\dp1|IR1|InstrReg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|IR1|InstrReg~5_combout\ = ( \dp1|MEM1|RAM~637_combout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \dp1|MEM1|ALT_INV_RAM~637_combout\,
	combout => \dp1|IR1|InstrReg~5_combout\);

-- Location: FF_X84_Y38_N49
\dp1|MA1|Addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|IR1|InstrReg~5_combout\,
	ena => \dp1|MA1|Addr[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MA1|Addr\(5));

-- Location: LABCELL_X83_Y38_N18
\dp1|I1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|I1|Add0~21_sumout\ = SUM(( \dp1|PC1|PCReg\(5) ) + ( \c1|JMPsel\(0) ) + ( \dp1|I1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|PC1|ALT_INV_PCReg\(5),
	datac => \c1|ALT_INV_JMPsel\(0),
	cin => \dp1|I1|Add0~18\,
	sumout => \dp1|I1|Add0~21_sumout\);

-- Location: LABCELL_X83_Y38_N30
\dp1|PC1|PCReg~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|PC1|PCReg~6_combout\ = ( \c1|JMPsel\(0) & ( (!\c1|JMPsel\(1) & ((\dp1|MEM1|RAM~637_combout\))) # (\c1|JMPsel\(1) & (\dp1|I1|Add0~21_sumout\)) ) ) # ( !\c1|JMPsel\(0) & ( \dp1|I1|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|I1|ALT_INV_Add0~21_sumout\,
	datac => \c1|ALT_INV_JMPsel\(1),
	datad => \dp1|MEM1|ALT_INV_RAM~637_combout\,
	dataf => \c1|ALT_INV_JMPsel\(0),
	combout => \dp1|PC1|PCReg~6_combout\);

-- Location: FF_X83_Y38_N32
\dp1|PC1|PCReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|PC1|PCReg~6_combout\,
	sclr => \rst~input_o\,
	ena => \dp1|PC1|PCReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|PC1|PCReg\(5));

-- Location: MLABCELL_X82_Y39_N15
\dp1|MIM1|out[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MIM1|out[5]~5_combout\ = ( \c1|state.100~q\ & ( \dp1|MA1|Addr\(5) ) ) # ( !\c1|state.100~q\ & ( (!\c1|state.011~q\ & ((\dp1|PC1|PCReg\(5)))) # (\c1|state.011~q\ & (\dp1|MA1|Addr\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MA1|ALT_INV_Addr\(5),
	datab => \dp1|PC1|ALT_INV_PCReg\(5),
	datac => \c1|ALT_INV_state.011~q\,
	dataf => \c1|ALT_INV_state.100~q\,
	combout => \dp1|MIM1|out[5]~5_combout\);

-- Location: LABCELL_X80_Y41_N15
\dp1|MEM1|RAM~308feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~308feeder_combout\ = \dp1|ACC1|Aout\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(4),
	combout => \dp1|MEM1|RAM~308feeder_combout\);

-- Location: FF_X80_Y41_N16
\dp1|MEM1|RAM~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~308feeder_combout\,
	ena => \dp1|MEM1|RAM~763_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~308_q\);

-- Location: FF_X80_Y42_N37
\dp1|MEM1|RAM~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~761_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~276_q\);

-- Location: LABCELL_X77_Y40_N18
\dp1|MEM1|RAM~340feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~340feeder_combout\ = ( \dp1|ACC1|Aout\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(4),
	combout => \dp1|MEM1|RAM~340feeder_combout\);

-- Location: FF_X77_Y40_N19
\dp1|MEM1|RAM~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~340feeder_combout\,
	ena => \dp1|MEM1|RAM~765_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~340_q\);

-- Location: FF_X79_Y38_N32
\dp1|MEM1|RAM~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~767_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~372_q\);

-- Location: LABCELL_X79_Y38_N30
\dp1|MEM1|RAM~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~545_combout\ = ( \dp1|MEM1|RAM~372_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~308_q\) ) ) ) # ( !\dp1|MEM1|RAM~372_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~308_q\ & 
-- !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~372_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~276_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~340_q\))) ) ) ) # ( !\dp1|MEM1|RAM~372_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~276_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~340_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~308_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~276_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~340_q\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~372_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~545_combout\);

-- Location: FF_X87_Y40_N49
\dp1|MEM1|RAM~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~757_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~332_q\);

-- Location: FF_X87_Y40_N46
\dp1|MEM1|RAM~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~753_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~268_q\);

-- Location: FF_X78_Y41_N22
\dp1|MEM1|RAM~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~755_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~300_q\);

-- Location: FF_X79_Y38_N8
\dp1|MEM1|RAM~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~759_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~364_q\);

-- Location: LABCELL_X79_Y38_N6
\dp1|MEM1|RAM~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~544_combout\ = ( \dp1|MEM1|RAM~364_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~300_q\) ) ) ) # ( !\dp1|MEM1|RAM~364_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~300_q\ & 
-- !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~364_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~268_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~332_q\)) ) ) ) # ( !\dp1|MEM1|RAM~364_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~268_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~332_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~332_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~268_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~300_q\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~364_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~544_combout\);

-- Location: FF_X80_Y36_N14
\dp1|MEM1|RAM~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~749_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~324_q\);

-- Location: FF_X80_Y37_N14
\dp1|MEM1|RAM~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~747_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~292_q\);

-- Location: FF_X80_Y40_N34
\dp1|MEM1|RAM~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~260_q\);

-- Location: FF_X79_Y38_N56
\dp1|MEM1|RAM~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~751_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~356_q\);

-- Location: LABCELL_X79_Y38_N54
\dp1|MEM1|RAM~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~543_combout\ = ( \dp1|MEM1|RAM~356_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~292_q\) ) ) ) # ( !\dp1|MEM1|RAM~356_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~292_q\ & 
-- !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~356_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~260_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~324_q\)) ) ) ) # ( !\dp1|MEM1|RAM~356_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~260_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~324_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~324_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~292_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~260_q\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~356_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~543_combout\);

-- Location: FF_X79_Y40_N20
\dp1|MEM1|RAM~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~769_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~284_q\);

-- Location: FF_X79_Y40_N41
\dp1|MEM1|RAM~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~771_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~316_q\);

-- Location: FF_X78_Y40_N46
\dp1|MEM1|RAM~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~773_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~348_q\);

-- Location: FF_X79_Y40_N32
\dp1|MEM1|RAM~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~775_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~380_q\);

-- Location: LABCELL_X79_Y40_N30
\dp1|MEM1|RAM~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~546_combout\ = ( \dp1|MEM1|RAM~380_q\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MIM1|out[2]~2_combout\) # (\dp1|MEM1|RAM~348_q\) ) ) ) # ( !\dp1|MEM1|RAM~380_q\ & ( \dp1|MIM1|out[3]~3_combout\ & ( (\dp1|MEM1|RAM~348_q\ & 
-- !\dp1|MIM1|out[2]~2_combout\) ) ) ) # ( \dp1|MEM1|RAM~380_q\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~284_q\)) # (\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~316_q\))) ) ) ) # ( !\dp1|MEM1|RAM~380_q\ & ( 
-- !\dp1|MIM1|out[3]~3_combout\ & ( (!\dp1|MIM1|out[2]~2_combout\ & (\dp1|MEM1|RAM~284_q\)) # (\dp1|MIM1|out[2]~2_combout\ & ((\dp1|MEM1|RAM~316_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~284_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~316_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~348_q\,
	datad => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~380_q\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~546_combout\);

-- Location: LABCELL_X79_Y38_N36
\dp1|MEM1|RAM~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~547_combout\ = ( \dp1|MEM1|RAM~543_combout\ & ( \dp1|MEM1|RAM~546_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (((!\dp1|MIM1|out[0]~0_combout\) # (\dp1|MEM1|RAM~544_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & 
-- (((\dp1|MIM1|out[0]~0_combout\)) # (\dp1|MEM1|RAM~545_combout\))) ) ) ) # ( !\dp1|MEM1|RAM~543_combout\ & ( \dp1|MEM1|RAM~546_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (((\dp1|MIM1|out[0]~0_combout\ & \dp1|MEM1|RAM~544_combout\)))) # 
-- (\dp1|MIM1|out[1]~1_combout\ & (((\dp1|MIM1|out[0]~0_combout\)) # (\dp1|MEM1|RAM~545_combout\))) ) ) ) # ( \dp1|MEM1|RAM~543_combout\ & ( !\dp1|MEM1|RAM~546_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (((!\dp1|MIM1|out[0]~0_combout\) # 
-- (\dp1|MEM1|RAM~544_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~545_combout\ & (!\dp1|MIM1|out[0]~0_combout\))) ) ) ) # ( !\dp1|MEM1|RAM~543_combout\ & ( !\dp1|MEM1|RAM~546_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & 
-- (((\dp1|MIM1|out[0]~0_combout\ & \dp1|MEM1|RAM~544_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~545_combout\ & (!\dp1|MIM1|out[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~545_combout\,
	datac => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~544_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~543_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~546_combout\,
	combout => \dp1|MEM1|RAM~547_combout\);

-- Location: LABCELL_X79_Y42_N9
\dp1|MEM1|RAM~212feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~212feeder_combout\ = \dp1|ACC1|Aout\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(4),
	combout => \dp1|MEM1|RAM~212feeder_combout\);

-- Location: FF_X79_Y42_N10
\dp1|MEM1|RAM~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~212feeder_combout\,
	ena => \dp1|MEM1|RAM~733_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~212_q\);

-- Location: FF_X82_Y40_N7
\dp1|MEM1|RAM~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~741_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~244_q\);

-- Location: FF_X79_Y37_N52
\dp1|MEM1|RAM~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~148_q\);

-- Location: FF_X85_Y40_N49
\dp1|MEM1|RAM~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~725_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~180_q\);

-- Location: LABCELL_X85_Y37_N54
\dp1|MEM1|RAM~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~540_combout\ = ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~244_q\ ) ) ) # ( !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~212_q\ ) ) ) # ( \dp1|MIM1|out[2]~2_combout\ & ( 
-- !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~180_q\ ) ) ) # ( !\dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~148_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~212_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~244_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~148_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~180_q\,
	datae => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~540_combout\);

-- Location: LABCELL_X85_Y39_N36
\dp1|MEM1|RAM~236feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~236feeder_combout\ = ( \dp1|ACC1|Aout\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(4),
	combout => \dp1|MEM1|RAM~236feeder_combout\);

-- Location: FF_X85_Y39_N37
\dp1|MEM1|RAM~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~236feeder_combout\,
	ena => \dp1|MEM1|RAM~739_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~236_q\);

-- Location: FF_X81_Y39_N47
\dp1|MEM1|RAM~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~715_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~140_q\);

-- Location: FF_X75_Y40_N52
\dp1|MEM1|RAM~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~731_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~204_q\);

-- Location: FF_X81_Y37_N46
\dp1|MEM1|RAM~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~723_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~172_q\);

-- Location: LABCELL_X85_Y37_N0
\dp1|MEM1|RAM~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~539_combout\ = ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~236_q\ ) ) ) # ( !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~204_q\ ) ) ) # ( \dp1|MIM1|out[2]~2_combout\ & ( 
-- !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~172_q\ ) ) ) # ( !\dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~140_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~236_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~140_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~204_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~172_q\,
	datae => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~539_combout\);

-- Location: FF_X83_Y36_N55
\dp1|MEM1|RAM~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~156_q\);

-- Location: FF_X78_Y40_N52
\dp1|MEM1|RAM~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~727_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~188_q\);

-- Location: FF_X80_Y38_N58
\dp1|MEM1|RAM~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~220_q\);

-- Location: FF_X82_Y37_N8
\dp1|MEM1|RAM~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~743_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~252_q\);

-- Location: MLABCELL_X82_Y37_N6
\dp1|MEM1|RAM~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~541_combout\ = ( \dp1|MEM1|RAM~252_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~188_q\) ) ) ) # ( !\dp1|MEM1|RAM~252_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~188_q\ & 
-- !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~252_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~156_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~220_q\))) ) ) ) # ( !\dp1|MEM1|RAM~252_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~156_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~220_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~156_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~188_q\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~220_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~252_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~541_combout\);

-- Location: FF_X80_Y40_N41
\dp1|MEM1|RAM~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~713_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~132_q\);

-- Location: FF_X79_Y37_N22
\dp1|MEM1|RAM~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~729_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~196_q\);

-- Location: FF_X79_Y39_N25
\dp1|MEM1|RAM~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~737_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~228_q\);

-- Location: FF_X85_Y37_N35
\dp1|MEM1|RAM~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~721_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~164_q\);

-- Location: LABCELL_X85_Y37_N33
\dp1|MEM1|RAM~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~538_combout\ = ( \dp1|MEM1|RAM~164_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~228_q\) ) ) ) # ( !\dp1|MEM1|RAM~164_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\ & 
-- \dp1|MEM1|RAM~228_q\) ) ) ) # ( \dp1|MEM1|RAM~164_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~132_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~196_q\))) ) ) ) # ( !\dp1|MEM1|RAM~164_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~132_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~196_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~132_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~196_q\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~228_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~164_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~538_combout\);

-- Location: LABCELL_X85_Y37_N36
\dp1|MEM1|RAM~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~542_combout\ = ( \dp1|MEM1|RAM~541_combout\ & ( \dp1|MEM1|RAM~538_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (((!\dp1|MIM1|out[0]~0_combout\) # (\dp1|MEM1|RAM~539_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & 
-- (((\dp1|MIM1|out[0]~0_combout\)) # (\dp1|MEM1|RAM~540_combout\))) ) ) ) # ( !\dp1|MEM1|RAM~541_combout\ & ( \dp1|MEM1|RAM~538_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (((!\dp1|MIM1|out[0]~0_combout\) # (\dp1|MEM1|RAM~539_combout\)))) # 
-- (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~540_combout\ & ((!\dp1|MIM1|out[0]~0_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~541_combout\ & ( !\dp1|MEM1|RAM~538_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (((\dp1|MEM1|RAM~539_combout\ & 
-- \dp1|MIM1|out[0]~0_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & (((\dp1|MIM1|out[0]~0_combout\)) # (\dp1|MEM1|RAM~540_combout\))) ) ) ) # ( !\dp1|MEM1|RAM~541_combout\ & ( !\dp1|MEM1|RAM~538_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & 
-- (((\dp1|MEM1|RAM~539_combout\ & \dp1|MIM1|out[0]~0_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~540_combout\ & ((!\dp1|MIM1|out[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~540_combout\,
	datab => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~539_combout\,
	datad => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~541_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~538_combout\,
	combout => \dp1|MEM1|RAM~542_combout\);

-- Location: LABCELL_X81_Y42_N27
\dp1|MEM1|RAM~84feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~84feeder_combout\ = \dp1|ACC1|Aout\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|ACC1|ALT_INV_Aout\(4),
	combout => \dp1|MEM1|RAM~84feeder_combout\);

-- Location: FF_X81_Y42_N28
\dp1|MEM1|RAM~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~84feeder_combout\,
	ena => \dp1|MEM1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~84_q\);

-- Location: MLABCELL_X82_Y42_N12
\dp1|MEM1|RAM~52feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~52feeder_combout\ = \dp1|ACC1|Aout\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dp1|ACC1|ALT_INV_Aout\(4),
	combout => \dp1|MEM1|RAM~52feeder_combout\);

-- Location: FF_X82_Y42_N13
\dp1|MEM1|RAM~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~52feeder_combout\,
	ena => \dp1|MEM1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~52_q\);

-- Location: FF_X80_Y42_N44
\dp1|MEM1|RAM~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~20_q\);

-- Location: FF_X78_Y38_N56
\dp1|MEM1|RAM~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~709_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~116_q\);

-- Location: MLABCELL_X78_Y38_N54
\dp1|MEM1|RAM~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~535_combout\ = ( \dp1|MEM1|RAM~116_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~52_q\) ) ) ) # ( !\dp1|MEM1|RAM~116_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~52_q\ & 
-- !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~116_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~20_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~84_q\)) ) ) ) # ( !\dp1|MEM1|RAM~116_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~20_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~84_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~84_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~52_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~20_q\,
	datad => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~116_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~535_combout\);

-- Location: FF_X77_Y39_N49
\dp1|MEM1|RAM~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~36_q\);

-- Location: FF_X81_Y41_N29
\dp1|MEM1|RAM~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~68_q\);

-- Location: LABCELL_X79_Y39_N39
\dp1|MEM1|RAM~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~811_combout\ = !\dp1|ACC1|Aout\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(4),
	combout => \dp1|MEM1|RAM~811_combout\);

-- Location: FF_X79_Y39_N40
\dp1|MEM1|RAM~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~811_combout\,
	ena => \dp1|MEM1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~4_q\);

-- Location: MLABCELL_X82_Y36_N33
\dp1|MEM1|RAM~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~812_combout\ = !\dp1|ACC1|Aout\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(4),
	combout => \dp1|MEM1|RAM~812_combout\);

-- Location: FF_X81_Y36_N31
\dp1|MEM1|RAM~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|MEM1|RAM~812_combout\,
	sload => VCC,
	ena => \dp1|MEM1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~100_q\);

-- Location: MLABCELL_X78_Y38_N42
\dp1|MEM1|RAM~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~533_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MEM1|RAM~100_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~36_q\ ) ) ) # ( \dp1|MIM1|out[3]~3_combout\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~68_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MEM1|RAM~4_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000001100110011001101010101010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~36_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~68_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~4_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~100_q\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~533_combout\);

-- Location: FF_X77_Y39_N19
\dp1|MEM1|RAM~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~12_q\);

-- Location: FF_X78_Y38_N53
\dp1|MEM1|RAM~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~76_q\);

-- Location: FF_X78_Y37_N29
\dp1|MEM1|RAM~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~108_q\);

-- Location: FF_X81_Y37_N2
\dp1|MEM1|RAM~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~44_q\);

-- Location: LABCELL_X81_Y37_N0
\dp1|MEM1|RAM~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~534_combout\ = ( \dp1|MEM1|RAM~44_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~108_q\) ) ) ) # ( !\dp1|MEM1|RAM~44_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\ & 
-- \dp1|MEM1|RAM~108_q\) ) ) ) # ( \dp1|MEM1|RAM~44_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~12_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~76_q\))) ) ) ) # ( !\dp1|MEM1|RAM~44_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~12_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~76_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~12_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~76_q\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~108_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~44_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~534_combout\);

-- Location: LABCELL_X80_Y38_N51
\dp1|MEM1|RAM~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~813_combout\ = !\dp1|ACC1|Aout\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dp1|ACC1|ALT_INV_Aout\(4),
	combout => \dp1|MEM1|RAM~813_combout\);

-- Location: FF_X80_Y38_N52
\dp1|MEM1|RAM~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~813_combout\,
	ena => \dp1|MEM1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~92_q\);

-- Location: FF_X83_Y41_N31
\dp1|MEM1|RAM~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~711_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~124_q\);

-- Location: FF_X78_Y39_N17
\dp1|MEM1|RAM~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~60_q\);

-- Location: FF_X83_Y41_N40
\dp1|MEM1|RAM~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~28_q\);

-- Location: MLABCELL_X78_Y39_N27
\dp1|MEM1|RAM~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~536_combout\ = ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~124_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~60_q\ ) ) ) # ( \dp1|MIM1|out[3]~3_combout\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MEM1|RAM~92_q\ ) ) ) # ( !\dp1|MIM1|out[3]~3_combout\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MEM1|RAM~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111101010101010101000001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~92_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~124_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~60_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~28_q\,
	datae => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~536_combout\);

-- Location: MLABCELL_X78_Y38_N24
\dp1|MEM1|RAM~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~537_combout\ = ( \dp1|MEM1|RAM~534_combout\ & ( \dp1|MEM1|RAM~536_combout\ & ( ((!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~533_combout\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~535_combout\))) # (\dp1|MIM1|out[0]~0_combout\) ) 
-- ) ) # ( !\dp1|MEM1|RAM~534_combout\ & ( \dp1|MEM1|RAM~536_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (!\dp1|MIM1|out[0]~0_combout\ & ((\dp1|MEM1|RAM~533_combout\)))) # (\dp1|MIM1|out[1]~1_combout\ & (((\dp1|MEM1|RAM~535_combout\)) # 
-- (\dp1|MIM1|out[0]~0_combout\))) ) ) ) # ( \dp1|MEM1|RAM~534_combout\ & ( !\dp1|MEM1|RAM~536_combout\ & ( (!\dp1|MIM1|out[1]~1_combout\ & (((\dp1|MEM1|RAM~533_combout\)) # (\dp1|MIM1|out[0]~0_combout\))) # (\dp1|MIM1|out[1]~1_combout\ & 
-- (!\dp1|MIM1|out[0]~0_combout\ & (\dp1|MEM1|RAM~535_combout\))) ) ) ) # ( !\dp1|MEM1|RAM~534_combout\ & ( !\dp1|MEM1|RAM~536_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & ((!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~533_combout\))) # 
-- (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~535_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datab => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datac => \dp1|MEM1|ALT_INV_RAM~535_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~533_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~534_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~536_combout\,
	combout => \dp1|MEM1|RAM~537_combout\);

-- Location: FF_X84_Y39_N40
\dp1|MEM1|RAM~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~783_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~412_q\);

-- Location: FF_X82_Y39_N23
\dp1|MEM1|RAM~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~476_q\);

-- Location: FF_X81_Y39_N59
\dp1|MEM1|RAM~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~444_q\);

-- Location: FF_X82_Y40_N4
\dp1|MEM1|RAM~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~508_q\);

-- Location: LABCELL_X83_Y37_N0
\dp1|MEM1|RAM~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~551_combout\ = ( \dp1|MEM1|RAM~508_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~444_q\) # (\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( !\dp1|MEM1|RAM~508_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & 
-- \dp1|MEM1|RAM~444_q\) ) ) ) # ( \dp1|MEM1|RAM~508_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~412_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~476_q\))) ) ) ) # ( !\dp1|MEM1|RAM~508_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~412_q\)) # (\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~476_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~412_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~476_q\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~444_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~508_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~551_combout\);

-- Location: LABCELL_X77_Y40_N0
\dp1|MEM1|RAM~428feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~428feeder_combout\ = ( \dp1|ACC1|Aout\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dp1|ACC1|ALT_INV_Aout\(4),
	combout => \dp1|MEM1|RAM~428feeder_combout\);

-- Location: FF_X77_Y40_N1
\dp1|MEM1|RAM~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~428feeder_combout\,
	ena => \dp1|MEM1|RAM~787_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~428_q\);

-- Location: FF_X82_Y41_N34
\dp1|MEM1|RAM~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~460_q\);

-- Location: MLABCELL_X84_Y42_N21
\dp1|MEM1|RAM~396feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~396feeder_combout\ = \dp1|ACC1|Aout\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|ACC1|ALT_INV_Aout\(4),
	combout => \dp1|MEM1|RAM~396feeder_combout\);

-- Location: FF_X84_Y42_N22
\dp1|MEM1|RAM~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	d => \dp1|MEM1|RAM~396feeder_combout\,
	ena => \dp1|MEM1|RAM~779_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~396_q\);

-- Location: FF_X83_Y37_N44
\dp1|MEM1|RAM~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~492_q\);

-- Location: LABCELL_X83_Y37_N42
\dp1|MEM1|RAM~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~549_combout\ = ( \dp1|MEM1|RAM~492_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~428_q\) ) ) ) # ( !\dp1|MEM1|RAM~492_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~428_q\ & 
-- !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~492_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~396_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~460_q\)) ) ) ) # ( !\dp1|MEM1|RAM~492_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~396_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~460_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~428_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~460_q\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~396_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~492_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~549_combout\);

-- Location: FF_X82_Y42_N49
\dp1|MEM1|RAM~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~789_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~436_q\);

-- Location: FF_X80_Y42_N58
\dp1|MEM1|RAM~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~781_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~404_q\);

-- Location: FF_X82_Y40_N55
\dp1|MEM1|RAM~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~500_q\);

-- Location: FF_X81_Y42_N4
\dp1|MEM1|RAM~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~468_q\);

-- Location: MLABCELL_X82_Y37_N27
\dp1|MEM1|RAM~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~550_combout\ = ( \dp1|MIM1|out[2]~2_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~500_q\ ) ) ) # ( !\dp1|MIM1|out[2]~2_combout\ & ( \dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~468_q\ ) ) ) # ( \dp1|MIM1|out[2]~2_combout\ & ( 
-- !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~436_q\ ) ) ) # ( !\dp1|MIM1|out[2]~2_combout\ & ( !\dp1|MIM1|out[3]~3_combout\ & ( \dp1|MEM1|RAM~404_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~436_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~404_q\,
	datac => \dp1|MEM1|ALT_INV_RAM~500_q\,
	datad => \dp1|MEM1|ALT_INV_RAM~468_q\,
	datae => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	dataf => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	combout => \dp1|MEM1|RAM~550_combout\);

-- Location: FF_X81_Y41_N53
\dp1|MEM1|RAM~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~452_q\);

-- Location: FF_X82_Y36_N47
\dp1|MEM1|RAM~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~785_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~420_q\);

-- Location: FF_X82_Y36_N28
\dp1|MEM1|RAM~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~777_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~388_q\);

-- Location: FF_X82_Y36_N38
\dp1|MEM1|RAM~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sload => VCC,
	ena => \dp1|MEM1|RAM~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|MEM1|RAM~484_q\);

-- Location: MLABCELL_X82_Y36_N36
\dp1|MEM1|RAM~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~548_combout\ = ( \dp1|MEM1|RAM~484_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MIM1|out[3]~3_combout\) # (\dp1|MEM1|RAM~420_q\) ) ) ) # ( !\dp1|MEM1|RAM~484_q\ & ( \dp1|MIM1|out[2]~2_combout\ & ( (\dp1|MEM1|RAM~420_q\ & 
-- !\dp1|MIM1|out[3]~3_combout\) ) ) ) # ( \dp1|MEM1|RAM~484_q\ & ( !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~388_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~452_q\)) ) ) ) # ( !\dp1|MEM1|RAM~484_q\ & ( 
-- !\dp1|MIM1|out[2]~2_combout\ & ( (!\dp1|MIM1|out[3]~3_combout\ & ((\dp1|MEM1|RAM~388_q\))) # (\dp1|MIM1|out[3]~3_combout\ & (\dp1|MEM1|RAM~452_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~452_q\,
	datab => \dp1|MEM1|ALT_INV_RAM~420_q\,
	datac => \dp1|MIM1|ALT_INV_out[3]~3_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~388_q\,
	datae => \dp1|MEM1|ALT_INV_RAM~484_q\,
	dataf => \dp1|MIM1|ALT_INV_out[2]~2_combout\,
	combout => \dp1|MEM1|RAM~548_combout\);

-- Location: LABCELL_X83_Y37_N6
\dp1|MEM1|RAM~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~552_combout\ = ( \dp1|MEM1|RAM~550_combout\ & ( \dp1|MEM1|RAM~548_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\) # ((!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~549_combout\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~551_combout\))) 
-- ) ) ) # ( !\dp1|MEM1|RAM~550_combout\ & ( \dp1|MEM1|RAM~548_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (((!\dp1|MIM1|out[1]~1_combout\)))) # (\dp1|MIM1|out[0]~0_combout\ & ((!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~549_combout\))) # 
-- (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~551_combout\)))) ) ) ) # ( \dp1|MEM1|RAM~550_combout\ & ( !\dp1|MEM1|RAM~548_combout\ & ( (!\dp1|MIM1|out[0]~0_combout\ & (((\dp1|MIM1|out[1]~1_combout\)))) # (\dp1|MIM1|out[0]~0_combout\ & 
-- ((!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~549_combout\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~551_combout\)))) ) ) ) # ( !\dp1|MEM1|RAM~550_combout\ & ( !\dp1|MEM1|RAM~548_combout\ & ( (\dp1|MIM1|out[0]~0_combout\ & 
-- ((!\dp1|MIM1|out[1]~1_combout\ & ((\dp1|MEM1|RAM~549_combout\))) # (\dp1|MIM1|out[1]~1_combout\ & (\dp1|MEM1|RAM~551_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MEM1|ALT_INV_RAM~551_combout\,
	datab => \dp1|MIM1|ALT_INV_out[0]~0_combout\,
	datac => \dp1|MIM1|ALT_INV_out[1]~1_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~549_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~550_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~548_combout\,
	combout => \dp1|MEM1|RAM~552_combout\);

-- Location: MLABCELL_X82_Y38_N30
\dp1|MEM1|RAM~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|MEM1|RAM~553_combout\ = ( \dp1|MEM1|RAM~537_combout\ & ( \dp1|MEM1|RAM~552_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((!\dp1|MIM1|out[4]~4_combout\) # (\dp1|MEM1|RAM~542_combout\)))) # (\dp1|MIM1|out[5]~5_combout\ & 
-- (((\dp1|MIM1|out[4]~4_combout\)) # (\dp1|MEM1|RAM~547_combout\))) ) ) ) # ( !\dp1|MEM1|RAM~537_combout\ & ( \dp1|MEM1|RAM~552_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MIM1|out[4]~4_combout\ & \dp1|MEM1|RAM~542_combout\)))) # 
-- (\dp1|MIM1|out[5]~5_combout\ & (((\dp1|MIM1|out[4]~4_combout\)) # (\dp1|MEM1|RAM~547_combout\))) ) ) ) # ( \dp1|MEM1|RAM~537_combout\ & ( !\dp1|MEM1|RAM~552_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & (((!\dp1|MIM1|out[4]~4_combout\) # 
-- (\dp1|MEM1|RAM~542_combout\)))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~547_combout\ & (!\dp1|MIM1|out[4]~4_combout\))) ) ) ) # ( !\dp1|MEM1|RAM~537_combout\ & ( !\dp1|MEM1|RAM~552_combout\ & ( (!\dp1|MIM1|out[5]~5_combout\ & 
-- (((\dp1|MIM1|out[4]~4_combout\ & \dp1|MEM1|RAM~542_combout\)))) # (\dp1|MIM1|out[5]~5_combout\ & (\dp1|MEM1|RAM~547_combout\ & (!\dp1|MIM1|out[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|MIM1|ALT_INV_out[5]~5_combout\,
	datab => \dp1|MEM1|ALT_INV_RAM~547_combout\,
	datac => \dp1|MIM1|ALT_INV_out[4]~4_combout\,
	datad => \dp1|MEM1|ALT_INV_RAM~542_combout\,
	datae => \dp1|MEM1|ALT_INV_RAM~537_combout\,
	dataf => \dp1|MEM1|ALT_INV_RAM~552_combout\,
	combout => \dp1|MEM1|RAM~553_combout\);

-- Location: MLABCELL_X82_Y38_N6
\dp1|IR1|InstrReg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|IR1|InstrReg~0_combout\ = ( \dp1|MEM1|RAM~553_combout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \dp1|MEM1|ALT_INV_RAM~553_combout\,
	combout => \dp1|IR1|InstrReg~0_combout\);

-- Location: FF_X84_Y38_N8
\dp1|IR1|InstrReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|IR1|InstrReg~0_combout\,
	sload => VCC,
	ena => \dp1|IR1|InstrReg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|IR1|InstrReg\(4));

-- Location: LABCELL_X85_Y39_N48
\c1|Decoder4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Decoder4~1_combout\ = ( \dp1|IR1|InstrReg\(5) & ( (!\dp1|IR1|InstrReg\(4) & (\dp1|IR1|InstrReg\(6) & \dp1|IR1|InstrReg\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|IR1|ALT_INV_InstrReg\(4),
	datab => \dp1|IR1|ALT_INV_InstrReg\(6),
	datac => \dp1|IR1|ALT_INV_InstrReg\(7),
	datae => \dp1|IR1|ALT_INV_InstrReg\(5),
	combout => \c1|Decoder4~1_combout\);

-- Location: LABCELL_X83_Y39_N48
\c1|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector13~0_combout\ = ( !\c1|state.011~q\ & ( (!\c1|state.001~q\ & !\c1|state.100~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_state.001~q\,
	datad => \c1|ALT_INV_state.100~q\,
	dataf => \c1|ALT_INV_state.011~q\,
	combout => \c1|Selector13~0_combout\);

-- Location: MLABCELL_X84_Y38_N18
\c1|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector13~1_combout\ = ( \c1|Selector13~0_combout\ & ( (!\c1|state.010~q\ & (((\start~input_o\)))) # (\c1|state.010~q\ & ((!\c1|Decoder4~1_combout\) # ((\dp1|ACC1|Aout~19_combout\)))) ) ) # ( !\c1|Selector13~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111101110110000111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_Decoder4~1_combout\,
	datab => \dp1|ACC1|ALT_INV_Aout~19_combout\,
	datac => \ALT_INV_start~input_o\,
	datad => \c1|ALT_INV_state.010~q\,
	dataf => \c1|ALT_INV_Selector13~0_combout\,
	combout => \c1|Selector13~1_combout\);

-- Location: MLABCELL_X84_Y38_N39
\c1|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector6~0_combout\ = ( \c1|Mux11~0_combout\ & ( (!\c1|state.001~q\ & !\c1|state.010~q\) ) ) # ( !\c1|Mux11~0_combout\ & ( !\c1|state.001~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_state.001~q\,
	datac => \c1|ALT_INV_state.010~q\,
	dataf => \c1|ALT_INV_Mux11~0_combout\,
	combout => \c1|Selector6~0_combout\);

-- Location: MLABCELL_X84_Y38_N51
\c1|nstate.001_359\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|nstate.001_359~combout\ = ( \c1|Selector6~0_combout\ & ( (\c1|nstate.001_359~combout\) # (\c1|Selector13~1_combout\) ) ) # ( !\c1|Selector6~0_combout\ & ( (!\c1|Selector13~1_combout\ & \c1|nstate.001_359~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_Selector13~1_combout\,
	datad => \c1|ALT_INV_nstate.001_359~combout\,
	dataf => \c1|ALT_INV_Selector6~0_combout\,
	combout => \c1|nstate.001_359~combout\);

-- Location: MLABCELL_X84_Y38_N27
\c1|state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|state~12_combout\ = ( \c1|nstate.001_359~combout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst~input_o\,
	dataf => \c1|ALT_INV_nstate.001_359~combout\,
	combout => \c1|state~12_combout\);

-- Location: FF_X84_Y38_N29
\c1|state.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkin~combout\,
	d => \c1|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|state.001~q\);

-- Location: MLABCELL_X84_Y38_N3
\c1|nstate.010_346\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|nstate.010_346~combout\ = ( \c1|Selector13~1_combout\ & ( \c1|state.001~q\ ) ) # ( !\c1|Selector13~1_combout\ & ( \c1|nstate.010_346~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_nstate.010_346~combout\,
	datad => \c1|ALT_INV_state.001~q\,
	dataf => \c1|ALT_INV_Selector13~1_combout\,
	combout => \c1|nstate.010_346~combout\);

-- Location: LABCELL_X81_Y38_N3
\c1|state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|state~9_combout\ = ( \c1|nstate.010_346~combout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst~input_o\,
	dataf => \c1|ALT_INV_nstate.010_346~combout\,
	combout => \c1|state~9_combout\);

-- Location: FF_X81_Y38_N5
\c1|state.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkin~combout\,
	d => \c1|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|state.010~q\);

-- Location: LABCELL_X85_Y39_N30
\c1|Decoder4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Decoder4~0_combout\ = ( \dp1|IR1|InstrReg\(5) & ( \dp1|IR1|InstrReg\(7) & ( \dp1|IR1|InstrReg\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dp1|IR1|ALT_INV_InstrReg\(6),
	datae => \dp1|IR1|ALT_INV_InstrReg\(5),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(7),
	combout => \c1|Decoder4~0_combout\);

-- Location: LABCELL_X85_Y38_N6
\c1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector0~0_combout\ = ( \c1|state.010~q\ & ( \dp1|IR1|InstrReg\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_state.010~q\,
	dataf => \dp1|IR1|ALT_INV_InstrReg\(4),
	combout => \c1|Selector0~0_combout\);

-- Location: LABCELL_X80_Y39_N0
\c1|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector0~1_combout\ = ( !\dp1|IR1|InstrReg\(0) & ( \dp1|IR1|InstrReg\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|IR1|ALT_INV_InstrReg\(1),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(0),
	combout => \c1|Selector0~1_combout\);

-- Location: MLABCELL_X84_Y38_N9
\c1|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Selector0~2_combout\ = ( \c1|Selector0~0_combout\ & ( \c1|Selector0~1_combout\ & ( (!\c1|Decoder4~0_combout\ & (((!\c1|state.000~q\ & \start~input_o\)))) # (\c1|Decoder4~0_combout\ & (((!\c1|state.000~q\ & \start~input_o\)) # 
-- (\c1|Decoder2~0_combout\))) ) ) ) # ( !\c1|Selector0~0_combout\ & ( \c1|Selector0~1_combout\ & ( (!\c1|state.000~q\ & \start~input_o\) ) ) ) # ( \c1|Selector0~0_combout\ & ( !\c1|Selector0~1_combout\ & ( (!\c1|state.000~q\ & \start~input_o\) ) ) ) # ( 
-- !\c1|Selector0~0_combout\ & ( !\c1|Selector0~1_combout\ & ( (!\c1|state.000~q\ & \start~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000001000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_Decoder4~0_combout\,
	datab => \c1|ALT_INV_Decoder2~0_combout\,
	datac => \c1|ALT_INV_state.000~q\,
	datad => \ALT_INV_start~input_o\,
	datae => \c1|ALT_INV_Selector0~0_combout\,
	dataf => \c1|ALT_INV_Selector0~1_combout\,
	combout => \c1|Selector0~2_combout\);

-- Location: MLABCELL_X84_Y38_N30
\c1|stop\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|stop~combout\ = ( \c1|Selector0~2_combout\ & ( \c1|state.010~q\ ) ) # ( !\c1|Selector0~2_combout\ & ( \c1|stop~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_stop~combout\,
	datad => \c1|ALT_INV_state.010~q\,
	dataf => \c1|ALT_INV_Selector0~2_combout\,
	combout => \c1|stop~combout\);

-- Location: IOIBUF_X89_Y38_N55
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X81_Y40_N48
clkin : cyclonev_lcell_comb
-- Equation(s):
-- \clkin~combout\ = LCELL(( \clk~input_o\ & ( !\c1|stop~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_stop~combout\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \clkin~combout\);

-- Location: MLABCELL_X84_Y39_N27
\dp1|OR1|Q[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|OR1|Q[6]~0_combout\ = ( \dp1|IR1|InstrReg\(0) & ( !\dp1|IR1|InstrReg\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dp1|IR1|ALT_INV_InstrReg\(1),
	dataf => \dp1|IR1|ALT_INV_InstrReg\(0),
	combout => \dp1|OR1|Q[6]~0_combout\);

-- Location: LABCELL_X85_Y39_N54
\dp1|OR1|Q[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dp1|OR1|Q[6]~1_combout\ = ( \c1|Decoder2~0_combout\ & ( \c1|Decoder4~0_combout\ & ( ((\dp1|IR1|InstrReg\(4) & (\c1|state.010~q\ & \dp1|OR1|Q[6]~0_combout\))) # (\rst~input_o\) ) ) ) # ( !\c1|Decoder2~0_combout\ & ( \c1|Decoder4~0_combout\ & ( 
-- \rst~input_o\ ) ) ) # ( \c1|Decoder2~0_combout\ & ( !\c1|Decoder4~0_combout\ & ( \rst~input_o\ ) ) ) # ( !\c1|Decoder2~0_combout\ & ( !\c1|Decoder4~0_combout\ & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dp1|IR1|ALT_INV_InstrReg\(4),
	datab => \c1|ALT_INV_state.010~q\,
	datac => \dp1|OR1|ALT_INV_Q[6]~0_combout\,
	datad => \ALT_INV_rst~input_o\,
	datae => \c1|ALT_INV_Decoder2~0_combout\,
	dataf => \c1|ALT_INV_Decoder4~0_combout\,
	combout => \dp1|OR1|Q[6]~1_combout\);

-- Location: FF_X81_Y40_N32
\dp1|OR1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(0),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \dp1|OR1|Q[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|OR1|Q\(0));

-- Location: FF_X81_Y40_N35
\dp1|OR1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(1),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \dp1|OR1|Q[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|OR1|Q\(1));

-- Location: FF_X81_Y40_N17
\dp1|OR1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(2),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \dp1|OR1|Q[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|OR1|Q\(2));

-- Location: FF_X83_Y39_N46
\dp1|OR1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(3),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \dp1|OR1|Q[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|OR1|Q\(3));

-- Location: FF_X85_Y40_N40
\dp1|OR1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(4),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \dp1|OR1|Q[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|OR1|Q\(4));

-- Location: FF_X81_Y40_N13
\dp1|OR1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(5),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \dp1|OR1|Q[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|OR1|Q\(5));

-- Location: FF_X85_Y40_N14
\dp1|OR1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(6),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \dp1|OR1|Q[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|OR1|Q\(6));

-- Location: FF_X81_Y40_N22
\dp1|OR1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~combout\,
	asdata => \dp1|ACC1|Aout\(7),
	sclr => \rst~input_o\,
	sload => VCC,
	ena => \dp1|OR1|Q[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp1|OR1|Q\(7));

-- Location: LABCELL_X67_Y33_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


