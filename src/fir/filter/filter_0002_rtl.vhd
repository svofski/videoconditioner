----------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 13.0sp1
-- Quartus II development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2013 Altera Corporation.  All rights reserved.    
-- Your use of  Altera  Corporation's design tools,  logic functions and other 
-- software and tools,  and its AMPP  partner logic functions, and  any output 
-- files  any of the  foregoing  device programming or simulation files),  and 
-- any associated  documentation or information are expressly subject  to  the 
-- terms and conditions  of the Altera Program License Subscription Agreement, 
-- Altera  MegaCore  Function  License  Agreement, or other applicable license 
-- agreement,  including,  without limitation,  that your use  is for the sole 
-- purpose of  programming  logic  devices  manufactured by Altera and sold by 
-- Altera or its authorized  distributors.  Please  refer  to  the  applicable 
-- agreement for further details.
----------------------------------------------------------------------------- 

-- VHDL created from filter_0002_rtl
-- VHDL created on Sat Aug 02 00:57:05 2014


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

-- Text written from d:/SJ/nightly/13.0sp1/232/w32/p4/ip/aion/src/mip_common/hw_model.cpp:1303
entity filter_0002_rtl is
    port (
        xIn_v : in std_logic_vector(0 downto 0);
        xIn_c : in std_logic_vector(7 downto 0);
        xIn_0 : in std_logic_vector(6 downto 0);
        xOut_v : out std_logic_vector(0 downto 0);
        xOut_c : out std_logic_vector(7 downto 0);
        xOut_0 : out std_logic_vector(20 downto 0);
        clk : in std_logic;
        areset : in std_logic
        );
end;

architecture normal of filter_0002_rtl is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name NOT_GATE_PUSH_BACK OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410";

    signal GND_q : std_logic_vector (0 downto 0);
    signal VCC_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_memread_q_11_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_memread_q_12_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_memread_q_13_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_memread_q_17_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_wi0_delayr1_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr2_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr3_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr4_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr5_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr5_q_14_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr6_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr6_q_14_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr7_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr7_q_14_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr8_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr8_q_14_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr9_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr9_q_12_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr10_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr11_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr11_q_11_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr12_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr12_q_11_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr13_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr13_q_11_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr14_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr14_q_11_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr15_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr15_q_11_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr16_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr16_q_11_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr17_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr18_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr18_q_11_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr19_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr19_q_11_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr20_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr20_q_11_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr21_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr21_q_11_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr22_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr22_q_11_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr23_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr24_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr24_q_11_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr25_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr25_q_11_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr26_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr26_q_11_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr27_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr28_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr29_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr29_q_12_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr30_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr31_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr32_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr32_q_12_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr33_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr34_q : std_logic_vector (6 downto 0);
    signal d_u0_m0_wo0_wi0_delayr34_q_13_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_wi0_delayr35_q : std_logic_vector (6 downto 0);
    signal u0_m0_wo0_mtree_add0_3_a : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_add0_3_b : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_add0_3_o : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_add0_3_q : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_add0_6_a : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_mtree_add0_6_b : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_mtree_add0_6_o : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_add0_6_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_add0_7_a : std_logic_vector(14 downto 0);
    signal u0_m0_wo0_mtree_add0_7_b : std_logic_vector(14 downto 0);
    signal u0_m0_wo0_mtree_add0_7_o : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_add0_7_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_add0_8_a : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_add0_8_b : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_add0_8_o : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_add0_8_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_add0_9_a : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_add0_9_b : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_add0_9_o : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_add0_9_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_add0_10_a : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_add0_10_b : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_add0_10_o : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_add0_10_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_add0_11_a : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_add0_11_b : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_add0_11_o : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_add0_11_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_add0_12_a : std_logic_vector(14 downto 0);
    signal u0_m0_wo0_mtree_add0_12_b : std_logic_vector(14 downto 0);
    signal u0_m0_wo0_mtree_add0_12_o : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_add0_12_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_add0_13_a : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_mtree_add0_13_b : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_mtree_add0_13_o : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_add0_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_add0_14_a : std_logic_vector(12 downto 0);
    signal u0_m0_wo0_mtree_add0_14_b : std_logic_vector(12 downto 0);
    signal u0_m0_wo0_mtree_add0_14_o : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_add0_14_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_add0_16_a : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_add0_16_b : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_add0_16_o : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_add0_16_q : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_add0_17_a : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_add0_17_b : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_add0_17_o : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_add0_17_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : std_logic_vector(11 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : std_logic_vector(11 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_add1_2_a : std_logic_vector(12 downto 0);
    signal u0_m0_wo0_mtree_add1_2_b : std_logic_vector(12 downto 0);
    signal u0_m0_wo0_mtree_add1_2_o : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_add1_2_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_add1_3_a : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_add1_3_b : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_add1_3_o : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_add1_3_q : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_add1_4_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_add1_4_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_add1_4_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_add1_4_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_add1_5_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_add1_5_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_add1_5_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_add1_5_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_add1_6_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_add1_6_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_add1_6_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_add1_6_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_add1_7_a : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_mtree_add1_7_b : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_mtree_add1_7_o : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_add1_7_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_add1_8_a : std_logic_vector(11 downto 0);
    signal u0_m0_wo0_mtree_add1_8_b : std_logic_vector(11 downto 0);
    signal u0_m0_wo0_mtree_add1_8_o : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_add1_8_q : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_add2_1_a : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_add2_1_b : std_logic_vector(16 downto 0);
    signal u0_m0_wo0_mtree_add2_1_o : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_add2_1_q : std_logic_vector (16 downto 0);
    signal u0_m0_wo0_mtree_add2_2_a : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_add2_2_b : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_add2_2_o : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_add2_2_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_add2_3_a : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_add2_3_b : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_add2_3_o : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_add2_3_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : std_logic_vector(17 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : std_logic_vector (17 downto 0);
    signal u0_m0_wo0_mtree_add3_1_a : std_logic_vector(18 downto 0);
    signal u0_m0_wo0_mtree_add3_1_b : std_logic_vector(18 downto 0);
    signal u0_m0_wo0_mtree_add3_1_o : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_add3_1_q : std_logic_vector (18 downto 0);
    signal u0_m0_wo0_mtree_add4_0_a : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_add4_0_b : std_logic_vector(19 downto 0);
    signal u0_m0_wo0_mtree_add4_0_o : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_add4_0_q : std_logic_vector (19 downto 0);
    signal u0_m0_wo0_mtree_add5_0_a : std_logic_vector(20 downto 0);
    signal u0_m0_wo0_mtree_add5_0_b : std_logic_vector(20 downto 0);
    signal u0_m0_wo0_mtree_add5_0_o : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_mtree_add5_0_q : std_logic_vector (20 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_sub_0_a : std_logic_vector(7 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_sub_0_b : std_logic_vector(7 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_sub_0_o : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_sub_0_q : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_sub_1_a : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_sub_1_b : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_sub_1_o : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_sub_1_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_sub_1_a : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_sub_1_b : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_sub_1_o : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_sub_1_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_sub_1_a : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_sub_1_b : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_sub_1_o : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_sub_1_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_sub_1_a : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_sub_1_b : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_sub_1_o : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_sub_1_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_add_1_a : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_add_1_b : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_add_1_o : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_add_1_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_sub_1_a : std_logic_vector(11 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_sub_1_b : std_logic_vector(11 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_sub_1_o : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_sub_1_q : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_sub_1_a : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_sub_1_b : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_sub_1_o : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_sub_1_q : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_1_a : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_1_b : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_1_o : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_1_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_3_a : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_3_b : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_3_o : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_add_3_q : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_sub_1_a : std_logic_vector(12 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_sub_1_b : std_logic_vector(12 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_sub_1_o : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_sub_1_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_1_a : std_logic_vector(11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_1_b : std_logic_vector(11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_1_o : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_1_q : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_3_a : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_3_b : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_3_o : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_3_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_1_a : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_1_b : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_1_o : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_1_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_3_a : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_3_b : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_3_o : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_3_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_5_a : std_logic_vector(14 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_5_b : std_logic_vector(14 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_5_o : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_5_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_sub_1_a : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_sub_1_b : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_sub_1_o : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_sub_1_q : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_3_a : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_3_b : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_3_o : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_3_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_add_1_a : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_add_1_b : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_add_1_o : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_add_1_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_3_a : std_logic_vector(14 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_3_b : std_logic_vector(14 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_3_o : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_3_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_sub_1_a : std_logic_vector(14 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_sub_1_b : std_logic_vector(14 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_sub_1_o : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_sub_1_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_a : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_b : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_o : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_sub_3_a : std_logic_vector(14 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_sub_3_b : std_logic_vector(14 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_sub_3_o : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_sub_3_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_1_a : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_1_b : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_1_o : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_sub_1_q : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_3_a : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_3_b : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_3_o : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_3_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_1_a : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_1_b : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_1_o : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_1_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_3_a : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_3_b : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_3_o : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_3_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_5_a : std_logic_vector(14 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_5_b : std_logic_vector(14 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_5_o : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_5_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_1_a : std_logic_vector(11 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_1_b : std_logic_vector(11 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_1_o : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_1_q : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_3_a : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_3_b : std_logic_vector(13 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_3_o : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_3_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_sub_1_a : std_logic_vector(12 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_sub_1_b : std_logic_vector(12 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_sub_1_o : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_sub_1_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_1_a : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_1_b : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_1_o : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_1_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_3_a : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_3_b : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_3_o : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_add_3_q : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_a : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_b : std_logic_vector(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_o : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_q : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_sub_1_a : std_logic_vector(11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_sub_1_b : std_logic_vector(11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_sub_1_o : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_sub_1_q : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_1_a : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_1_b : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_1_o : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_add_1_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_sub_1_a : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_sub_1_b : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_sub_1_o : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_sub_1_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_sub_1_a : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_sub_1_b : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_sub_1_o : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_sub_1_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_sub_1_a : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_sub_1_b : std_logic_vector(9 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_sub_1_o : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_sub_1_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_sub_1_a : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_sub_1_b : std_logic_vector(8 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_sub_1_o : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_sub_1_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_0_a : std_logic_vector(7 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_0_b : std_logic_vector(7 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_0_o : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_sub_0_q : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_shift0_q_int : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_shift0_q : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift0_q_int : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_shift0_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_shift0_q_int : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_shift0_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift0_q_int : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift0_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_shift0_q_int : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_shift0_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_shift0_q_int : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_shift0_q : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_shift0_q_int : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_shift0_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift0_q_int : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift0_q : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift2_q_int : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift2_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift0_q_int : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift0_q : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift0_q_int : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift0_q : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift2_q_int : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift2_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift0_q_int : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift0_q : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift2_q_int : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift2_q : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_shift0_q_int : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_shift0_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_shift2_q_int : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_shift2_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_shift0_q_int : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_shift0_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_shift2_q_int : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_shift2_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift0_q_int : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift0_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_shift0_q_int : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_shift0_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_shift2_q_int : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_shift2_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift0_q_int : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift0_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift2_q_int : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift2_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift0_q_int : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift0_q : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift2_q_int : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift2_q : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift0_q_int : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift0_q : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift2_q_int : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift2_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_shift0_q_int : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_shift0_q : std_logic_vector (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift0_q_int : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift0_q : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift2_q_int : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift2_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_shift0_q_int : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_shift0_q : std_logic_vector (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift0_q_int : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift0_q : std_logic_vector (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift0_q_int : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift0_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_shift0_q_int : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_shift0_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_shift0_q_int : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_shift0_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_shift0_q_int : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_shift0_q : std_logic_vector (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_shift0_q_int : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_shift0_q : std_logic_vector (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_shift2_q_int : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_shift2_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift4_q_int : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift4_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift2_q_int : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_shift2_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift4_q_int : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift4_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_shift4_q_int : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_shift4_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift4_q_int : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift4_q : std_logic_vector (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift4_q_int : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift4_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_shift2_q_int : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_shift2_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift4_q_int : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift4_q : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_shift2_q_int : std_logic_vector (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_shift2_q : std_logic_vector (12 downto 0);
begin


	--VCC(CONSTANT,1)@0
    VCC_q <= "1";

	--xIn(PORTIN,2)@10

	--u0_m0_wo0_wi0_delayr1(DELAY,8)@10
    u0_m0_wo0_wi0_delayr1 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => xIn_0, xout => u0_m0_wo0_wi0_delayr1_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr2(DELAY,9)@10
    u0_m0_wo0_wi0_delayr2 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr1_q, xout => u0_m0_wo0_wi0_delayr2_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr3(DELAY,10)@10
    u0_m0_wo0_wi0_delayr3 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr2_q, xout => u0_m0_wo0_wi0_delayr3_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr4(DELAY,11)@10
    u0_m0_wo0_wi0_delayr4 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr3_q, xout => u0_m0_wo0_wi0_delayr4_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr5(DELAY,12)@10
    u0_m0_wo0_wi0_delayr5 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr4_q, xout => u0_m0_wo0_wi0_delayr5_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr5_q_14(DELAY,284)@10
    d_u0_m0_wo0_wi0_delayr5_q_14 : dspba_delay
    GENERIC MAP ( width => 7, depth => 4 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr5_q, xout => d_u0_m0_wo0_wi0_delayr5_q_14_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_35_sub_0(SUB,192)@14
    u0_m0_wo0_mtree_mult1_35_sub_0_a <= STD_LOGIC_VECTOR((7 downto 1 => GND_q(0)) & GND_q);
    u0_m0_wo0_mtree_mult1_35_sub_0_b <= STD_LOGIC_VECTOR((7 downto 7 => d_u0_m0_wo0_wi0_delayr5_q_14_q(6)) & d_u0_m0_wo0_wi0_delayr5_q_14_q);
    u0_m0_wo0_mtree_mult1_35_sub_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_35_sub_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_35_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_35_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_35_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_35_sub_0_q <= u0_m0_wo0_mtree_mult1_35_sub_0_o(7 downto 0);


	--u0_m0_wo0_wi0_delayr6(DELAY,13)@10
    u0_m0_wo0_wi0_delayr6 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr5_q, xout => u0_m0_wo0_wi0_delayr6_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr6_q_14(DELAY,285)@10
    d_u0_m0_wo0_wi0_delayr6_q_14 : dspba_delay
    GENERIC MAP ( width => 7, depth => 4 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr6_q, xout => d_u0_m0_wo0_wi0_delayr6_q_14_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_34_shift0(BITSHIFT,193)@14
    u0_m0_wo0_mtree_mult1_34_shift0_q_int <= d_u0_m0_wo0_wi0_delayr6_q_14_q & "0";
    u0_m0_wo0_mtree_mult1_34_shift0_q <= u0_m0_wo0_mtree_mult1_34_shift0_q_int(7 downto 0);

	--u0_m0_wo0_mtree_mult1_34_sub_1(SUB,194)@14
    u0_m0_wo0_mtree_mult1_34_sub_1_a <= STD_LOGIC_VECTOR((8 downto 1 => GND_q(0)) & GND_q);
    u0_m0_wo0_mtree_mult1_34_sub_1_b <= STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_34_shift0_q(7)) & u0_m0_wo0_mtree_mult1_34_shift0_q);
    u0_m0_wo0_mtree_mult1_34_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_34_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_34_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_34_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_34_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_34_sub_1_q <= u0_m0_wo0_mtree_mult1_34_sub_1_o(8 downto 0);


	--u0_m0_wo0_mtree_add0_17(ADD,147)@15
    u0_m0_wo0_mtree_add0_17_a <= STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_34_sub_1_q(8)) & u0_m0_wo0_mtree_mult1_34_sub_1_q);
    u0_m0_wo0_mtree_add0_17_b <= STD_LOGIC_VECTOR((9 downto 8 => u0_m0_wo0_mtree_mult1_35_sub_0_q(7)) & u0_m0_wo0_mtree_mult1_35_sub_0_q);
    u0_m0_wo0_mtree_add0_17: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_17_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_17_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_17_a) + SIGNED(u0_m0_wo0_mtree_add0_17_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_17_q <= u0_m0_wo0_mtree_add0_17_o(9 downto 0);


	--u0_m0_wo0_mtree_mult1_33_shift0(BITSHIFT,195)@14
    u0_m0_wo0_mtree_mult1_33_shift0_q_int <= d_u0_m0_wo0_wi0_delayr7_q_14_q & "00";
    u0_m0_wo0_mtree_mult1_33_shift0_q <= u0_m0_wo0_mtree_mult1_33_shift0_q_int(8 downto 0);

	--u0_m0_wo0_wi0_delayr7(DELAY,14)@10
    u0_m0_wo0_wi0_delayr7 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr6_q, xout => u0_m0_wo0_wi0_delayr7_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr7_q_14(DELAY,286)@10
    d_u0_m0_wo0_wi0_delayr7_q_14 : dspba_delay
    GENERIC MAP ( width => 7, depth => 4 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr7_q, xout => d_u0_m0_wo0_wi0_delayr7_q_14_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_33_sub_1(SUB,196)@14
    u0_m0_wo0_mtree_mult1_33_sub_1_a <= STD_LOGIC_VECTOR((9 downto 7 => d_u0_m0_wo0_wi0_delayr7_q_14_q(6)) & d_u0_m0_wo0_wi0_delayr7_q_14_q);
    u0_m0_wo0_mtree_mult1_33_sub_1_b <= STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_33_shift0_q(8)) & u0_m0_wo0_mtree_mult1_33_shift0_q);
    u0_m0_wo0_mtree_mult1_33_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_33_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_33_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_33_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_33_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_33_sub_1_q <= u0_m0_wo0_mtree_mult1_33_sub_1_o(9 downto 0);


	--u0_m0_wo0_mtree_mult1_32_shift0(BITSHIFT,197)@14
    u0_m0_wo0_mtree_mult1_32_shift0_q_int <= d_u0_m0_wo0_wi0_delayr8_q_14_q & "00";
    u0_m0_wo0_mtree_mult1_32_shift0_q <= u0_m0_wo0_mtree_mult1_32_shift0_q_int(8 downto 0);

	--u0_m0_wo0_wi0_delayr8(DELAY,15)@10
    u0_m0_wo0_wi0_delayr8 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr7_q, xout => u0_m0_wo0_wi0_delayr8_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr8_q_14(DELAY,287)@10
    d_u0_m0_wo0_wi0_delayr8_q_14 : dspba_delay
    GENERIC MAP ( width => 7, depth => 4 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr8_q, xout => d_u0_m0_wo0_wi0_delayr8_q_14_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_32_sub_1(SUB,198)@14
    u0_m0_wo0_mtree_mult1_32_sub_1_a <= STD_LOGIC_VECTOR((9 downto 7 => d_u0_m0_wo0_wi0_delayr8_q_14_q(6)) & d_u0_m0_wo0_wi0_delayr8_q_14_q);
    u0_m0_wo0_mtree_mult1_32_sub_1_b <= STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_32_shift0_q(8)) & u0_m0_wo0_mtree_mult1_32_shift0_q);
    u0_m0_wo0_mtree_mult1_32_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_32_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_32_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_32_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_32_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_32_sub_1_q <= u0_m0_wo0_mtree_mult1_32_sub_1_o(9 downto 0);


	--u0_m0_wo0_mtree_add0_16(ADD,146)@15
    u0_m0_wo0_mtree_add0_16_a <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_32_sub_1_q(9)) & u0_m0_wo0_mtree_mult1_32_sub_1_q);
    u0_m0_wo0_mtree_add0_16_b <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_33_sub_1_q(9)) & u0_m0_wo0_mtree_mult1_33_sub_1_q);
    u0_m0_wo0_mtree_add0_16: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_16_a) + SIGNED(u0_m0_wo0_mtree_add0_16_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_16_q <= u0_m0_wo0_mtree_add0_16_o(10 downto 0);


	--u0_m0_wo0_mtree_add1_8(ADD,158)@16
    u0_m0_wo0_mtree_add1_8_a <= STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_add0_16_q(10)) & u0_m0_wo0_mtree_add0_16_q);
    u0_m0_wo0_mtree_add1_8_b <= STD_LOGIC_VECTOR((11 downto 10 => u0_m0_wo0_mtree_add0_17_q(9)) & u0_m0_wo0_mtree_add0_17_q);
    u0_m0_wo0_mtree_add1_8: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_8_a) + SIGNED(u0_m0_wo0_mtree_add1_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_8_q <= u0_m0_wo0_mtree_add1_8_o(11 downto 0);


	--u0_m0_wo0_mtree_mult1_31_shift0(BITSHIFT,199)@12
    u0_m0_wo0_mtree_mult1_31_shift0_q_int <= d_u0_m0_wo0_wi0_delayr9_q_12_q & "00";
    u0_m0_wo0_mtree_mult1_31_shift0_q <= u0_m0_wo0_mtree_mult1_31_shift0_q_int(8 downto 0);

	--u0_m0_wo0_wi0_delayr9(DELAY,16)@10
    u0_m0_wo0_wi0_delayr9 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr8_q, xout => u0_m0_wo0_wi0_delayr9_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr9_q_12(DELAY,288)@10
    d_u0_m0_wo0_wi0_delayr9_q_12 : dspba_delay
    GENERIC MAP ( width => 7, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr9_q, xout => d_u0_m0_wo0_wi0_delayr9_q_12_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_31_sub_1(SUB,200)@12
    u0_m0_wo0_mtree_mult1_31_sub_1_a <= STD_LOGIC_VECTOR((9 downto 7 => d_u0_m0_wo0_wi0_delayr9_q_12_q(6)) & d_u0_m0_wo0_wi0_delayr9_q_12_q);
    u0_m0_wo0_mtree_mult1_31_sub_1_b <= STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_31_shift0_q(8)) & u0_m0_wo0_mtree_mult1_31_shift0_q);
    u0_m0_wo0_mtree_mult1_31_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_31_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_sub_1_q <= u0_m0_wo0_mtree_mult1_31_sub_1_o(9 downto 0);


	--u0_m0_wo0_mtree_mult1_29_shift0(BITSHIFT,201)@11
    u0_m0_wo0_mtree_mult1_29_shift0_q_int <= d_u0_m0_wo0_wi0_delayr11_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_29_shift0_q <= u0_m0_wo0_mtree_mult1_29_shift0_q_int(8 downto 0);

	--u0_m0_wo0_wi0_delayr10(DELAY,17)@10
    u0_m0_wo0_wi0_delayr10 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr9_q, xout => u0_m0_wo0_wi0_delayr10_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr11(DELAY,18)@10
    u0_m0_wo0_wi0_delayr11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr10_q, xout => u0_m0_wo0_wi0_delayr11_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr11_q_11(DELAY,289)@10
    d_u0_m0_wo0_wi0_delayr11_q_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr11_q, xout => d_u0_m0_wo0_wi0_delayr11_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_29_add_1(ADD,202)@11
    u0_m0_wo0_mtree_mult1_29_add_1_a <= STD_LOGIC_VECTOR((9 downto 7 => d_u0_m0_wo0_wi0_delayr11_q_11_q(6)) & d_u0_m0_wo0_wi0_delayr11_q_11_q);
    u0_m0_wo0_mtree_mult1_29_add_1_b <= STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_29_shift0_q(8)) & u0_m0_wo0_mtree_mult1_29_shift0_q);
    u0_m0_wo0_mtree_mult1_29_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_29_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_29_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_29_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_29_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_29_add_1_q <= u0_m0_wo0_mtree_mult1_29_add_1_o(9 downto 0);


	--u0_m0_wo0_wi0_delayr12(DELAY,19)@10
    u0_m0_wo0_wi0_delayr12 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr11_q, xout => u0_m0_wo0_wi0_delayr12_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr12_q_11(DELAY,290)@10
    d_u0_m0_wo0_wi0_delayr12_q_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr12_q, xout => d_u0_m0_wo0_wi0_delayr12_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_28_shift0(BITSHIFT,203)@11
    u0_m0_wo0_mtree_mult1_28_shift0_q_int <= d_u0_m0_wo0_wi0_delayr12_q_11_q & "0000";
    u0_m0_wo0_mtree_mult1_28_shift0_q <= u0_m0_wo0_mtree_mult1_28_shift0_q_int(10 downto 0);

	--u0_m0_wo0_mtree_mult1_28_sub_1(SUB,204)@11
    u0_m0_wo0_mtree_mult1_28_sub_1_a <= STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_28_shift0_q(10)) & u0_m0_wo0_mtree_mult1_28_shift0_q);
    u0_m0_wo0_mtree_mult1_28_sub_1_b <= STD_LOGIC_VECTOR((11 downto 7 => d_u0_m0_wo0_wi0_delayr12_q_11_q(6)) & d_u0_m0_wo0_wi0_delayr12_q_11_q);
    u0_m0_wo0_mtree_mult1_28_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_28_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_28_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_28_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_28_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_28_sub_1_q <= u0_m0_wo0_mtree_mult1_28_sub_1_o(11 downto 0);


	--u0_m0_wo0_mtree_add0_14(ADD,144)@12
    u0_m0_wo0_mtree_add0_14_a <= STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_28_sub_1_q(11)) & u0_m0_wo0_mtree_mult1_28_sub_1_q);
    u0_m0_wo0_mtree_add0_14_b <= STD_LOGIC_VECTOR((12 downto 10 => u0_m0_wo0_mtree_mult1_29_add_1_q(9)) & u0_m0_wo0_mtree_mult1_29_add_1_q);
    u0_m0_wo0_mtree_add0_14: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_14_a) + SIGNED(u0_m0_wo0_mtree_add0_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_14_q <= u0_m0_wo0_mtree_add0_14_o(12 downto 0);


	--u0_m0_wo0_mtree_add1_7(ADD,157)@13
    u0_m0_wo0_mtree_add1_7_a <= STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_add0_14_q(12)) & u0_m0_wo0_mtree_add0_14_q);
    u0_m0_wo0_mtree_add1_7_b <= STD_LOGIC_VECTOR((13 downto 10 => u0_m0_wo0_mtree_mult1_31_sub_1_q(9)) & u0_m0_wo0_mtree_mult1_31_sub_1_q);
    u0_m0_wo0_mtree_add1_7: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_7_a) + SIGNED(u0_m0_wo0_mtree_add1_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_7_q <= u0_m0_wo0_mtree_add1_7_o(13 downto 0);


	--u0_m0_wo0_wi0_delayr13(DELAY,20)@10
    u0_m0_wo0_wi0_delayr13 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr12_q, xout => u0_m0_wo0_wi0_delayr13_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr13_q_11(DELAY,291)@10
    d_u0_m0_wo0_wi0_delayr13_q_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr13_q, xout => d_u0_m0_wo0_wi0_delayr13_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_27_shift0(BITSHIFT,205)@11
    u0_m0_wo0_mtree_mult1_27_shift0_q_int <= d_u0_m0_wo0_wi0_delayr13_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_27_shift0_q <= u0_m0_wo0_mtree_mult1_27_shift0_q_int(9 downto 0);

	--u0_m0_wo0_mtree_mult1_27_sub_1(SUB,206)@11
    u0_m0_wo0_mtree_mult1_27_sub_1_a <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_27_shift0_q(9)) & u0_m0_wo0_mtree_mult1_27_shift0_q);
    u0_m0_wo0_mtree_mult1_27_sub_1_b <= STD_LOGIC_VECTOR((10 downto 7 => d_u0_m0_wo0_wi0_delayr13_q_11_q(6)) & d_u0_m0_wo0_wi0_delayr13_q_11_q);
    u0_m0_wo0_mtree_mult1_27_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_27_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_27_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_27_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_27_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_27_sub_1_q <= u0_m0_wo0_mtree_mult1_27_sub_1_o(10 downto 0);


	--u0_m0_wo0_mtree_mult1_27_shift2(BITSHIFT,207)@12
    u0_m0_wo0_mtree_mult1_27_shift2_q_int <= u0_m0_wo0_mtree_mult1_27_sub_1_q & "00";
    u0_m0_wo0_mtree_mult1_27_shift2_q <= u0_m0_wo0_mtree_mult1_27_shift2_q_int(12 downto 0);

	--u0_m0_wo0_wi0_delayr14(DELAY,21)@10
    u0_m0_wo0_wi0_delayr14 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr13_q, xout => u0_m0_wo0_wi0_delayr14_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr14_q_11(DELAY,292)@10
    d_u0_m0_wo0_wi0_delayr14_q_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr14_q, xout => d_u0_m0_wo0_wi0_delayr14_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_26_shift2(BITSHIFT,210)@11
    u0_m0_wo0_mtree_mult1_26_shift2_q_int <= d_u0_m0_wo0_wi0_delayr14_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_26_shift2_q <= u0_m0_wo0_mtree_mult1_26_shift2_q_int(9 downto 0);

	--u0_m0_wo0_mtree_mult1_26_shift0(BITSHIFT,208)@10
    u0_m0_wo0_mtree_mult1_26_shift0_q_int <= u0_m0_wo0_wi0_delayr14_q & "0";
    u0_m0_wo0_mtree_mult1_26_shift0_q <= u0_m0_wo0_mtree_mult1_26_shift0_q_int(7 downto 0);

	--u0_m0_wo0_mtree_mult1_26_add_1(ADD,209)@10
    u0_m0_wo0_mtree_mult1_26_add_1_a <= STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_wi0_delayr14_q(6)) & u0_m0_wo0_wi0_delayr14_q);
    u0_m0_wo0_mtree_mult1_26_add_1_b <= STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_26_shift0_q(7)) & u0_m0_wo0_mtree_mult1_26_shift0_q);
    u0_m0_wo0_mtree_mult1_26_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_26_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_26_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_26_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_26_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_26_add_1_q <= u0_m0_wo0_mtree_mult1_26_add_1_o(8 downto 0);


	--u0_m0_wo0_mtree_mult1_26_add_3(ADD,211)@11
    u0_m0_wo0_mtree_mult1_26_add_3_a <= STD_LOGIC_VECTOR((10 downto 9 => u0_m0_wo0_mtree_mult1_26_add_1_q(8)) & u0_m0_wo0_mtree_mult1_26_add_1_q);
    u0_m0_wo0_mtree_mult1_26_add_3_b <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_26_shift2_q(9)) & u0_m0_wo0_mtree_mult1_26_shift2_q);
    u0_m0_wo0_mtree_mult1_26_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_26_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_26_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_26_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_26_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_26_add_3_q <= u0_m0_wo0_mtree_mult1_26_add_3_o(10 downto 0);


	--u0_m0_wo0_mtree_mult1_26_shift4(BITSHIFT,212)@12
    u0_m0_wo0_mtree_mult1_26_shift4_q_int <= u0_m0_wo0_mtree_mult1_26_add_3_q & "00";
    u0_m0_wo0_mtree_mult1_26_shift4_q <= u0_m0_wo0_mtree_mult1_26_shift4_q_int(12 downto 0);

	--u0_m0_wo0_mtree_add0_13(ADD,143)@12
    u0_m0_wo0_mtree_add0_13_a <= STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_26_shift4_q(12)) & u0_m0_wo0_mtree_mult1_26_shift4_q);
    u0_m0_wo0_mtree_add0_13_b <= STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_27_shift2_q(12)) & u0_m0_wo0_mtree_mult1_27_shift2_q);
    u0_m0_wo0_mtree_add0_13: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_13_a) + SIGNED(u0_m0_wo0_mtree_add0_13_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_13_q <= u0_m0_wo0_mtree_add0_13_o(13 downto 0);


	--u0_m0_wo0_wi0_delayr15(DELAY,22)@10
    u0_m0_wo0_wi0_delayr15 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr14_q, xout => u0_m0_wo0_wi0_delayr15_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr15_q_11(DELAY,293)@10
    d_u0_m0_wo0_wi0_delayr15_q_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr15_q, xout => d_u0_m0_wo0_wi0_delayr15_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_25_shift0(BITSHIFT,213)@11
    u0_m0_wo0_mtree_mult1_25_shift0_q_int <= d_u0_m0_wo0_wi0_delayr15_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_25_shift0_q <= u0_m0_wo0_mtree_mult1_25_shift0_q_int(11 downto 0);

	--u0_m0_wo0_mtree_mult1_25_sub_1(SUB,214)@11
    u0_m0_wo0_mtree_mult1_25_sub_1_a <= STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_25_shift0_q(11)) & u0_m0_wo0_mtree_mult1_25_shift0_q);
    u0_m0_wo0_mtree_mult1_25_sub_1_b <= STD_LOGIC_VECTOR((12 downto 7 => d_u0_m0_wo0_wi0_delayr15_q_11_q(6)) & d_u0_m0_wo0_wi0_delayr15_q_11_q);
    u0_m0_wo0_mtree_mult1_25_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_25_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_sub_1_q <= u0_m0_wo0_mtree_mult1_25_sub_1_o(12 downto 0);


	--u0_m0_wo0_mtree_mult1_25_shift2(BITSHIFT,215)@12
    u0_m0_wo0_mtree_mult1_25_shift2_q_int <= u0_m0_wo0_mtree_mult1_25_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_25_shift2_q <= u0_m0_wo0_mtree_mult1_25_shift2_q_int(13 downto 0);

	--u0_m0_wo0_wi0_delayr16(DELAY,23)@10
    u0_m0_wo0_wi0_delayr16 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr15_q, xout => u0_m0_wo0_wi0_delayr16_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr16_q_11(DELAY,294)@10
    d_u0_m0_wo0_wi0_delayr16_q_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr16_q, xout => d_u0_m0_wo0_wi0_delayr16_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_24_shift2(BITSHIFT,218)@11
    u0_m0_wo0_mtree_mult1_24_shift2_q_int <= d_u0_m0_wo0_wi0_delayr16_q_11_q & "000000";
    u0_m0_wo0_mtree_mult1_24_shift2_q <= u0_m0_wo0_mtree_mult1_24_shift2_q_int(12 downto 0);

	--u0_m0_wo0_mtree_mult1_24_shift0(BITSHIFT,216)@10
    u0_m0_wo0_mtree_mult1_24_shift0_q_int <= u0_m0_wo0_wi0_delayr16_q & "0000";
    u0_m0_wo0_mtree_mult1_24_shift0_q <= u0_m0_wo0_mtree_mult1_24_shift0_q_int(10 downto 0);

	--u0_m0_wo0_mtree_mult1_24_add_1(ADD,217)@10
    u0_m0_wo0_mtree_mult1_24_add_1_a <= STD_LOGIC_VECTOR((11 downto 7 => u0_m0_wo0_wi0_delayr16_q(6)) & u0_m0_wo0_wi0_delayr16_q);
    u0_m0_wo0_mtree_mult1_24_add_1_b <= STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_24_shift0_q(10)) & u0_m0_wo0_mtree_mult1_24_shift0_q);
    u0_m0_wo0_mtree_mult1_24_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_24_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_add_1_q <= u0_m0_wo0_mtree_mult1_24_add_1_o(11 downto 0);


	--u0_m0_wo0_mtree_mult1_24_add_3(ADD,219)@11
    u0_m0_wo0_mtree_mult1_24_add_3_a <= STD_LOGIC_VECTOR((13 downto 12 => u0_m0_wo0_mtree_mult1_24_add_1_q(11)) & u0_m0_wo0_mtree_mult1_24_add_1_q);
    u0_m0_wo0_mtree_mult1_24_add_3_b <= STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_24_shift2_q(12)) & u0_m0_wo0_mtree_mult1_24_shift2_q);
    u0_m0_wo0_mtree_mult1_24_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_24_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_add_3_q <= u0_m0_wo0_mtree_mult1_24_add_3_o(13 downto 0);


	--u0_m0_wo0_mtree_add0_12(ADD,142)@12
    u0_m0_wo0_mtree_add0_12_a <= STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_24_add_3_q(13)) & u0_m0_wo0_mtree_mult1_24_add_3_q);
    u0_m0_wo0_mtree_add0_12_b <= STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_25_shift2_q(13)) & u0_m0_wo0_mtree_mult1_25_shift2_q);
    u0_m0_wo0_mtree_add0_12: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_12_a) + SIGNED(u0_m0_wo0_mtree_add0_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_12_q <= u0_m0_wo0_mtree_add0_12_o(14 downto 0);


	--u0_m0_wo0_mtree_add1_6(ADD,156)@13
    u0_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR((16 downto 15 => u0_m0_wo0_mtree_add0_12_q(14)) & u0_m0_wo0_mtree_add0_12_q);
    u0_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_mtree_add0_13_q(13)) & u0_m0_wo0_mtree_add0_13_q);
    u0_m0_wo0_mtree_add1_6: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_6_a) + SIGNED(u0_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_6_q <= u0_m0_wo0_mtree_add1_6_o(16 downto 0);


	--u0_m0_wo0_mtree_add2_3(ADD,163)@14
    u0_m0_wo0_mtree_add2_3_a <= STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_add1_6_q(16)) & u0_m0_wo0_mtree_add1_6_q);
    u0_m0_wo0_mtree_add2_3_b <= STD_LOGIC_VECTOR((17 downto 14 => u0_m0_wo0_mtree_add1_7_q(13)) & u0_m0_wo0_mtree_add1_7_q);
    u0_m0_wo0_mtree_add2_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_3_a) + SIGNED(u0_m0_wo0_mtree_add2_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_3_q <= u0_m0_wo0_mtree_add2_3_o(17 downto 0);


	--u0_m0_wo0_mtree_mult1_23_shift2(BITSHIFT,222)@10
    u0_m0_wo0_mtree_mult1_23_shift2_q_int <= u0_m0_wo0_wi0_delayr17_q & "0";
    u0_m0_wo0_mtree_mult1_23_shift2_q <= u0_m0_wo0_mtree_mult1_23_shift2_q_int(7 downto 0);

	--u0_m0_wo0_wi0_delayr17(DELAY,24)@10
    u0_m0_wo0_wi0_delayr17 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr16_q, xout => u0_m0_wo0_wi0_delayr17_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_23_add_3(ADD,223)@10
    u0_m0_wo0_mtree_mult1_23_add_3_a <= STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_wi0_delayr17_q(6)) & u0_m0_wo0_wi0_delayr17_q);
    u0_m0_wo0_mtree_mult1_23_add_3_b <= STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_23_shift2_q(7)) & u0_m0_wo0_mtree_mult1_23_shift2_q);
    u0_m0_wo0_mtree_mult1_23_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_add_3_q <= u0_m0_wo0_mtree_mult1_23_add_3_o(8 downto 0);


	--u0_m0_wo0_mtree_mult1_23_shift4(BITSHIFT,224)@11
    u0_m0_wo0_mtree_mult1_23_shift4_q_int <= u0_m0_wo0_mtree_mult1_23_add_3_q & "00000";
    u0_m0_wo0_mtree_mult1_23_shift4_q <= u0_m0_wo0_mtree_mult1_23_shift4_q_int(13 downto 0);

	--u0_m0_wo0_mtree_mult1_23_shift0(BITSHIFT,220)@10
    u0_m0_wo0_mtree_mult1_23_shift0_q_int <= u0_m0_wo0_wi0_delayr17_q & "0";
    u0_m0_wo0_mtree_mult1_23_shift0_q <= u0_m0_wo0_mtree_mult1_23_shift0_q_int(7 downto 0);

	--u0_m0_wo0_mtree_mult1_23_add_1(ADD,221)@10
    u0_m0_wo0_mtree_mult1_23_add_1_a <= STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_wi0_delayr17_q(6)) & u0_m0_wo0_wi0_delayr17_q);
    u0_m0_wo0_mtree_mult1_23_add_1_b <= STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_23_shift0_q(7)) & u0_m0_wo0_mtree_mult1_23_shift0_q);
    u0_m0_wo0_mtree_mult1_23_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_add_1_q <= u0_m0_wo0_mtree_mult1_23_add_1_o(8 downto 0);


	--u0_m0_wo0_mtree_mult1_23_add_5(ADD,225)@11
    u0_m0_wo0_mtree_mult1_23_add_5_a <= STD_LOGIC_VECTOR((14 downto 9 => u0_m0_wo0_mtree_mult1_23_add_1_q(8)) & u0_m0_wo0_mtree_mult1_23_add_1_q);
    u0_m0_wo0_mtree_mult1_23_add_5_b <= STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_23_shift4_q(13)) & u0_m0_wo0_mtree_mult1_23_shift4_q);
    u0_m0_wo0_mtree_mult1_23_add_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_add_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_add_5_q <= u0_m0_wo0_mtree_mult1_23_add_5_o(14 downto 0);


	--u0_m0_wo0_wi0_delayr18(DELAY,25)@10
    u0_m0_wo0_wi0_delayr18 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr17_q, xout => u0_m0_wo0_wi0_delayr18_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr18_q_11(DELAY,295)@10
    d_u0_m0_wo0_wi0_delayr18_q_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr18_q, xout => d_u0_m0_wo0_wi0_delayr18_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_22_shift2(BITSHIFT,228)@11
    u0_m0_wo0_mtree_mult1_22_shift2_q_int <= d_u0_m0_wo0_wi0_delayr18_q_11_q & "000000";
    u0_m0_wo0_mtree_mult1_22_shift2_q <= u0_m0_wo0_mtree_mult1_22_shift2_q_int(12 downto 0);

	--u0_m0_wo0_mtree_mult1_22_shift0(BITSHIFT,226)@10
    u0_m0_wo0_mtree_mult1_22_shift0_q_int <= u0_m0_wo0_wi0_delayr18_q & "000";
    u0_m0_wo0_mtree_mult1_22_shift0_q <= u0_m0_wo0_mtree_mult1_22_shift0_q_int(9 downto 0);

	--u0_m0_wo0_mtree_mult1_22_sub_1(SUB,227)@10
    u0_m0_wo0_mtree_mult1_22_sub_1_a <= STD_LOGIC_VECTOR((10 downto 7 => u0_m0_wo0_wi0_delayr18_q(6)) & u0_m0_wo0_wi0_delayr18_q);
    u0_m0_wo0_mtree_mult1_22_sub_1_b <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_22_shift0_q(9)) & u0_m0_wo0_mtree_mult1_22_shift0_q);
    u0_m0_wo0_mtree_mult1_22_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_22_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_22_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_22_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_22_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_22_sub_1_q <= u0_m0_wo0_mtree_mult1_22_sub_1_o(10 downto 0);


	--u0_m0_wo0_mtree_mult1_22_add_3(ADD,229)@11
    u0_m0_wo0_mtree_mult1_22_add_3_a <= STD_LOGIC_VECTOR((13 downto 11 => u0_m0_wo0_mtree_mult1_22_sub_1_q(10)) & u0_m0_wo0_mtree_mult1_22_sub_1_q);
    u0_m0_wo0_mtree_mult1_22_add_3_b <= STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_22_shift2_q(12)) & u0_m0_wo0_mtree_mult1_22_shift2_q);
    u0_m0_wo0_mtree_mult1_22_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_22_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_22_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_22_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_22_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_22_add_3_q <= u0_m0_wo0_mtree_mult1_22_add_3_o(13 downto 0);


	--u0_m0_wo0_mtree_mult1_22_shift4(BITSHIFT,230)@12
    u0_m0_wo0_mtree_mult1_22_shift4_q_int <= u0_m0_wo0_mtree_mult1_22_add_3_q & "0";
    u0_m0_wo0_mtree_mult1_22_shift4_q <= u0_m0_wo0_mtree_mult1_22_shift4_q_int(14 downto 0);

	--u0_m0_wo0_mtree_add0_11(ADD,141)@12
    u0_m0_wo0_mtree_add0_11_a <= STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_22_shift4_q(14)) & u0_m0_wo0_mtree_mult1_22_shift4_q);
    u0_m0_wo0_mtree_add0_11_b <= STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_23_add_5_q(14)) & u0_m0_wo0_mtree_mult1_23_add_5_q);
    u0_m0_wo0_mtree_add0_11: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_11_a) + SIGNED(u0_m0_wo0_mtree_add0_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_11_q <= u0_m0_wo0_mtree_add0_11_o(15 downto 0);


	--u0_m0_wo0_mtree_mult1_21_shift0(BITSHIFT,231)@10
    u0_m0_wo0_mtree_mult1_21_shift0_q_int <= u0_m0_wo0_wi0_delayr19_q & "00";
    u0_m0_wo0_mtree_mult1_21_shift0_q <= u0_m0_wo0_mtree_mult1_21_shift0_q_int(8 downto 0);

	--u0_m0_wo0_wi0_delayr19(DELAY,26)@10
    u0_m0_wo0_wi0_delayr19 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr18_q, xout => u0_m0_wo0_wi0_delayr19_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_21_add_1(ADD,232)@10
    u0_m0_wo0_mtree_mult1_21_add_1_a <= STD_LOGIC_VECTOR((9 downto 7 => u0_m0_wo0_wi0_delayr19_q(6)) & u0_m0_wo0_wi0_delayr19_q);
    u0_m0_wo0_mtree_mult1_21_add_1_b <= STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_21_shift0_q(8)) & u0_m0_wo0_mtree_mult1_21_shift0_q);
    u0_m0_wo0_mtree_mult1_21_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_add_1_q <= u0_m0_wo0_mtree_mult1_21_add_1_o(9 downto 0);


	--d_u0_m0_wo0_wi0_delayr19_q_11(DELAY,296)@10
    d_u0_m0_wo0_wi0_delayr19_q_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr19_q, xout => d_u0_m0_wo0_wi0_delayr19_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_21_shift2(BITSHIFT,233)@11
    u0_m0_wo0_mtree_mult1_21_shift2_q_int <= d_u0_m0_wo0_wi0_delayr19_q_11_q & "0000000";
    u0_m0_wo0_mtree_mult1_21_shift2_q <= u0_m0_wo0_mtree_mult1_21_shift2_q_int(13 downto 0);

	--u0_m0_wo0_mtree_mult1_21_sub_3(SUB,234)@11
    u0_m0_wo0_mtree_mult1_21_sub_3_a <= STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_21_shift2_q(13)) & u0_m0_wo0_mtree_mult1_21_shift2_q);
    u0_m0_wo0_mtree_mult1_21_sub_3_b <= STD_LOGIC_VECTOR((14 downto 10 => u0_m0_wo0_mtree_mult1_21_add_1_q(9)) & u0_m0_wo0_mtree_mult1_21_add_1_q);
    u0_m0_wo0_mtree_mult1_21_sub_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_sub_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_21_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_sub_3_q <= u0_m0_wo0_mtree_mult1_21_sub_3_o(14 downto 0);


	--u0_m0_wo0_wi0_delayr20(DELAY,27)@10
    u0_m0_wo0_wi0_delayr20 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr19_q, xout => u0_m0_wo0_wi0_delayr20_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr20_q_11(DELAY,297)@10
    d_u0_m0_wo0_wi0_delayr20_q_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr20_q, xout => d_u0_m0_wo0_wi0_delayr20_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_20_shift0(BITSHIFT,235)@11
    u0_m0_wo0_mtree_mult1_20_shift0_q_int <= d_u0_m0_wo0_wi0_delayr20_q_11_q & "0000000";
    u0_m0_wo0_mtree_mult1_20_shift0_q <= u0_m0_wo0_mtree_mult1_20_shift0_q_int(13 downto 0);

	--u0_m0_wo0_mtree_mult1_20_sub_1(SUB,236)@11
    u0_m0_wo0_mtree_mult1_20_sub_1_a <= STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_20_shift0_q(13)) & u0_m0_wo0_mtree_mult1_20_shift0_q);
    u0_m0_wo0_mtree_mult1_20_sub_1_b <= STD_LOGIC_VECTOR((14 downto 7 => d_u0_m0_wo0_wi0_delayr20_q_11_q(6)) & d_u0_m0_wo0_wi0_delayr20_q_11_q);
    u0_m0_wo0_mtree_mult1_20_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_20_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_sub_1_q <= u0_m0_wo0_mtree_mult1_20_sub_1_o(14 downto 0);


	--u0_m0_wo0_mtree_add0_10(ADD,140)@12
    u0_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_20_sub_1_q(14)) & u0_m0_wo0_mtree_mult1_20_sub_1_q);
    u0_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_21_sub_3_q(14)) & u0_m0_wo0_mtree_mult1_21_sub_3_q);
    u0_m0_wo0_mtree_add0_10: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_10_a) + SIGNED(u0_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(15 downto 0);


	--u0_m0_wo0_mtree_add1_5(ADD,155)@13
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_add0_10_q(15)) & u0_m0_wo0_mtree_add0_10_q);
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_add0_11_q(15)) & u0_m0_wo0_mtree_add0_11_q);
    u0_m0_wo0_mtree_add1_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(16 downto 0);


	--u0_m0_wo0_mtree_mult1_19_shift0(BITSHIFT,237)@10
    u0_m0_wo0_mtree_mult1_19_shift0_q_int <= u0_m0_wo0_wi0_delayr21_q & "00";
    u0_m0_wo0_mtree_mult1_19_shift0_q <= u0_m0_wo0_mtree_mult1_19_shift0_q_int(8 downto 0);

	--u0_m0_wo0_wi0_delayr21(DELAY,28)@10
    u0_m0_wo0_wi0_delayr21 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr20_q, xout => u0_m0_wo0_wi0_delayr21_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_19_add_1(ADD,238)@10
    u0_m0_wo0_mtree_mult1_19_add_1_a <= STD_LOGIC_VECTOR((9 downto 7 => u0_m0_wo0_wi0_delayr21_q(6)) & u0_m0_wo0_wi0_delayr21_q);
    u0_m0_wo0_mtree_mult1_19_add_1_b <= STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_19_shift0_q(8)) & u0_m0_wo0_mtree_mult1_19_shift0_q);
    u0_m0_wo0_mtree_mult1_19_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_add_1_q <= u0_m0_wo0_mtree_mult1_19_add_1_o(9 downto 0);


	--d_u0_m0_wo0_wi0_delayr21_q_11(DELAY,298)@10
    d_u0_m0_wo0_wi0_delayr21_q_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr21_q, xout => d_u0_m0_wo0_wi0_delayr21_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_19_shift2(BITSHIFT,239)@11
    u0_m0_wo0_mtree_mult1_19_shift2_q_int <= d_u0_m0_wo0_wi0_delayr21_q_11_q & "0000000";
    u0_m0_wo0_mtree_mult1_19_shift2_q <= u0_m0_wo0_mtree_mult1_19_shift2_q_int(13 downto 0);

	--u0_m0_wo0_mtree_mult1_19_sub_3(SUB,240)@11
    u0_m0_wo0_mtree_mult1_19_sub_3_a <= STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_19_shift2_q(13)) & u0_m0_wo0_mtree_mult1_19_shift2_q);
    u0_m0_wo0_mtree_mult1_19_sub_3_b <= STD_LOGIC_VECTOR((14 downto 10 => u0_m0_wo0_mtree_mult1_19_add_1_q(9)) & u0_m0_wo0_mtree_mult1_19_add_1_q);
    u0_m0_wo0_mtree_mult1_19_sub_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_sub_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_19_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_sub_3_q <= u0_m0_wo0_mtree_mult1_19_sub_3_o(14 downto 0);


	--u0_m0_wo0_wi0_delayr22(DELAY,29)@10
    u0_m0_wo0_wi0_delayr22 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr21_q, xout => u0_m0_wo0_wi0_delayr22_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr22_q_11(DELAY,299)@10
    d_u0_m0_wo0_wi0_delayr22_q_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr22_q, xout => d_u0_m0_wo0_wi0_delayr22_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_18_shift2(BITSHIFT,243)@11
    u0_m0_wo0_mtree_mult1_18_shift2_q_int <= d_u0_m0_wo0_wi0_delayr22_q_11_q & "000000";
    u0_m0_wo0_mtree_mult1_18_shift2_q <= u0_m0_wo0_mtree_mult1_18_shift2_q_int(12 downto 0);

	--u0_m0_wo0_mtree_mult1_18_shift0(BITSHIFT,241)@10
    u0_m0_wo0_mtree_mult1_18_shift0_q_int <= u0_m0_wo0_wi0_delayr22_q & "000";
    u0_m0_wo0_mtree_mult1_18_shift0_q <= u0_m0_wo0_mtree_mult1_18_shift0_q_int(9 downto 0);

	--u0_m0_wo0_mtree_mult1_18_sub_1(SUB,242)@10
    u0_m0_wo0_mtree_mult1_18_sub_1_a <= STD_LOGIC_VECTOR((10 downto 7 => u0_m0_wo0_wi0_delayr22_q(6)) & u0_m0_wo0_wi0_delayr22_q);
    u0_m0_wo0_mtree_mult1_18_sub_1_b <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_18_shift0_q(9)) & u0_m0_wo0_mtree_mult1_18_shift0_q);
    u0_m0_wo0_mtree_mult1_18_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_18_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_sub_1_q <= u0_m0_wo0_mtree_mult1_18_sub_1_o(10 downto 0);


	--u0_m0_wo0_mtree_mult1_18_add_3(ADD,244)@11
    u0_m0_wo0_mtree_mult1_18_add_3_a <= STD_LOGIC_VECTOR((13 downto 11 => u0_m0_wo0_mtree_mult1_18_sub_1_q(10)) & u0_m0_wo0_mtree_mult1_18_sub_1_q);
    u0_m0_wo0_mtree_mult1_18_add_3_b <= STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_18_shift2_q(12)) & u0_m0_wo0_mtree_mult1_18_shift2_q);
    u0_m0_wo0_mtree_mult1_18_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_18_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_add_3_q <= u0_m0_wo0_mtree_mult1_18_add_3_o(13 downto 0);


	--u0_m0_wo0_mtree_mult1_18_shift4(BITSHIFT,245)@12
    u0_m0_wo0_mtree_mult1_18_shift4_q_int <= u0_m0_wo0_mtree_mult1_18_add_3_q & "0";
    u0_m0_wo0_mtree_mult1_18_shift4_q <= u0_m0_wo0_mtree_mult1_18_shift4_q_int(14 downto 0);

	--u0_m0_wo0_mtree_add0_9(ADD,139)@12
    u0_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_18_shift4_q(14)) & u0_m0_wo0_mtree_mult1_18_shift4_q);
    u0_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_19_sub_3_q(14)) & u0_m0_wo0_mtree_mult1_19_sub_3_q);
    u0_m0_wo0_mtree_add0_9: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_9_a) + SIGNED(u0_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(15 downto 0);


	--u0_m0_wo0_mtree_mult1_17_shift2(BITSHIFT,248)@10
    u0_m0_wo0_mtree_mult1_17_shift2_q_int <= u0_m0_wo0_wi0_delayr23_q & "0";
    u0_m0_wo0_mtree_mult1_17_shift2_q <= u0_m0_wo0_mtree_mult1_17_shift2_q_int(7 downto 0);

	--u0_m0_wo0_wi0_delayr23(DELAY,30)@10
    u0_m0_wo0_wi0_delayr23 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr22_q, xout => u0_m0_wo0_wi0_delayr23_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_17_add_3(ADD,249)@10
    u0_m0_wo0_mtree_mult1_17_add_3_a <= STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_wi0_delayr23_q(6)) & u0_m0_wo0_wi0_delayr23_q);
    u0_m0_wo0_mtree_mult1_17_add_3_b <= STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_17_shift2_q(7)) & u0_m0_wo0_mtree_mult1_17_shift2_q);
    u0_m0_wo0_mtree_mult1_17_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_add_3_q <= u0_m0_wo0_mtree_mult1_17_add_3_o(8 downto 0);


	--u0_m0_wo0_mtree_mult1_17_shift4(BITSHIFT,250)@11
    u0_m0_wo0_mtree_mult1_17_shift4_q_int <= u0_m0_wo0_mtree_mult1_17_add_3_q & "00000";
    u0_m0_wo0_mtree_mult1_17_shift4_q <= u0_m0_wo0_mtree_mult1_17_shift4_q_int(13 downto 0);

	--u0_m0_wo0_mtree_mult1_17_shift0(BITSHIFT,246)@10
    u0_m0_wo0_mtree_mult1_17_shift0_q_int <= u0_m0_wo0_wi0_delayr23_q & "0";
    u0_m0_wo0_mtree_mult1_17_shift0_q <= u0_m0_wo0_mtree_mult1_17_shift0_q_int(7 downto 0);

	--u0_m0_wo0_mtree_mult1_17_add_1(ADD,247)@10
    u0_m0_wo0_mtree_mult1_17_add_1_a <= STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_wi0_delayr23_q(6)) & u0_m0_wo0_wi0_delayr23_q);
    u0_m0_wo0_mtree_mult1_17_add_1_b <= STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_17_shift0_q(7)) & u0_m0_wo0_mtree_mult1_17_shift0_q);
    u0_m0_wo0_mtree_mult1_17_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_add_1_q <= u0_m0_wo0_mtree_mult1_17_add_1_o(8 downto 0);


	--u0_m0_wo0_mtree_mult1_17_add_5(ADD,251)@11
    u0_m0_wo0_mtree_mult1_17_add_5_a <= STD_LOGIC_VECTOR((14 downto 9 => u0_m0_wo0_mtree_mult1_17_add_1_q(8)) & u0_m0_wo0_mtree_mult1_17_add_1_q);
    u0_m0_wo0_mtree_mult1_17_add_5_b <= STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_17_shift4_q(13)) & u0_m0_wo0_mtree_mult1_17_shift4_q);
    u0_m0_wo0_mtree_mult1_17_add_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_add_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_add_5_q <= u0_m0_wo0_mtree_mult1_17_add_5_o(14 downto 0);


	--u0_m0_wo0_wi0_delayr24(DELAY,31)@10
    u0_m0_wo0_wi0_delayr24 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr23_q, xout => u0_m0_wo0_wi0_delayr24_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr24_q_11(DELAY,300)@10
    d_u0_m0_wo0_wi0_delayr24_q_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr24_q, xout => d_u0_m0_wo0_wi0_delayr24_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_16_shift2(BITSHIFT,254)@11
    u0_m0_wo0_mtree_mult1_16_shift2_q_int <= d_u0_m0_wo0_wi0_delayr24_q_11_q & "000000";
    u0_m0_wo0_mtree_mult1_16_shift2_q <= u0_m0_wo0_mtree_mult1_16_shift2_q_int(12 downto 0);

	--u0_m0_wo0_mtree_mult1_16_shift0(BITSHIFT,252)@10
    u0_m0_wo0_mtree_mult1_16_shift0_q_int <= u0_m0_wo0_wi0_delayr24_q & "0000";
    u0_m0_wo0_mtree_mult1_16_shift0_q <= u0_m0_wo0_mtree_mult1_16_shift0_q_int(10 downto 0);

	--u0_m0_wo0_mtree_mult1_16_add_1(ADD,253)@10
    u0_m0_wo0_mtree_mult1_16_add_1_a <= STD_LOGIC_VECTOR((11 downto 7 => u0_m0_wo0_wi0_delayr24_q(6)) & u0_m0_wo0_wi0_delayr24_q);
    u0_m0_wo0_mtree_mult1_16_add_1_b <= STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_16_shift0_q(10)) & u0_m0_wo0_mtree_mult1_16_shift0_q);
    u0_m0_wo0_mtree_mult1_16_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_add_1_q <= u0_m0_wo0_mtree_mult1_16_add_1_o(11 downto 0);


	--u0_m0_wo0_mtree_mult1_16_add_3(ADD,255)@11
    u0_m0_wo0_mtree_mult1_16_add_3_a <= STD_LOGIC_VECTOR((13 downto 12 => u0_m0_wo0_mtree_mult1_16_add_1_q(11)) & u0_m0_wo0_mtree_mult1_16_add_1_q);
    u0_m0_wo0_mtree_mult1_16_add_3_b <= STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_16_shift2_q(12)) & u0_m0_wo0_mtree_mult1_16_shift2_q);
    u0_m0_wo0_mtree_mult1_16_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_add_3_q <= u0_m0_wo0_mtree_mult1_16_add_3_o(13 downto 0);


	--u0_m0_wo0_mtree_add0_8(ADD,138)@12
    u0_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR((15 downto 14 => u0_m0_wo0_mtree_mult1_16_add_3_q(13)) & u0_m0_wo0_mtree_mult1_16_add_3_q);
    u0_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_17_add_5_q(14)) & u0_m0_wo0_mtree_mult1_17_add_5_q);
    u0_m0_wo0_mtree_add0_8: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_8_a) + SIGNED(u0_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(15 downto 0);


	--u0_m0_wo0_mtree_add1_4(ADD,154)@13
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_add0_8_q(15)) & u0_m0_wo0_mtree_add0_8_q);
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_add0_9_q(15)) & u0_m0_wo0_mtree_add0_9_q);
    u0_m0_wo0_mtree_add1_4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(16 downto 0);


	--u0_m0_wo0_mtree_add2_2(ADD,162)@14
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_add1_4_q(16)) & u0_m0_wo0_mtree_add1_4_q);
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_add1_5_q(16)) & u0_m0_wo0_mtree_add1_5_q);
    u0_m0_wo0_mtree_add2_2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(17 downto 0);


	--u0_m0_wo0_mtree_add3_1(ADD,166)@15
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_add2_2_q(17)) & u0_m0_wo0_mtree_add2_2_q);
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_add2_3_q(17)) & u0_m0_wo0_mtree_add2_3_q);
    u0_m0_wo0_mtree_add3_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(18 downto 0);


	--u0_m0_wo0_wi0_delayr25(DELAY,32)@10
    u0_m0_wo0_wi0_delayr25 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr24_q, xout => u0_m0_wo0_wi0_delayr25_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr25_q_11(DELAY,301)@10
    d_u0_m0_wo0_wi0_delayr25_q_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr25_q, xout => d_u0_m0_wo0_wi0_delayr25_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_15_shift0(BITSHIFT,256)@11
    u0_m0_wo0_mtree_mult1_15_shift0_q_int <= d_u0_m0_wo0_wi0_delayr25_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_15_shift0_q <= u0_m0_wo0_mtree_mult1_15_shift0_q_int(11 downto 0);

	--u0_m0_wo0_mtree_mult1_15_sub_1(SUB,257)@11
    u0_m0_wo0_mtree_mult1_15_sub_1_a <= STD_LOGIC_VECTOR((12 downto 12 => u0_m0_wo0_mtree_mult1_15_shift0_q(11)) & u0_m0_wo0_mtree_mult1_15_shift0_q);
    u0_m0_wo0_mtree_mult1_15_sub_1_b <= STD_LOGIC_VECTOR((12 downto 7 => d_u0_m0_wo0_wi0_delayr25_q_11_q(6)) & d_u0_m0_wo0_wi0_delayr25_q_11_q);
    u0_m0_wo0_mtree_mult1_15_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_15_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_sub_1_q <= u0_m0_wo0_mtree_mult1_15_sub_1_o(12 downto 0);


	--u0_m0_wo0_mtree_mult1_15_shift2(BITSHIFT,258)@12
    u0_m0_wo0_mtree_mult1_15_shift2_q_int <= u0_m0_wo0_mtree_mult1_15_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_15_shift2_q <= u0_m0_wo0_mtree_mult1_15_shift2_q_int(13 downto 0);

	--u0_m0_wo0_wi0_delayr26(DELAY,33)@10
    u0_m0_wo0_wi0_delayr26 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr25_q, xout => u0_m0_wo0_wi0_delayr26_q, ena => xIn_v(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr26_q_11(DELAY,302)@10
    d_u0_m0_wo0_wi0_delayr26_q_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr26_q, xout => d_u0_m0_wo0_wi0_delayr26_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_14_shift2(BITSHIFT,261)@11
    u0_m0_wo0_mtree_mult1_14_shift2_q_int <= d_u0_m0_wo0_wi0_delayr26_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_14_shift2_q <= u0_m0_wo0_mtree_mult1_14_shift2_q_int(9 downto 0);

	--u0_m0_wo0_mtree_mult1_14_shift0(BITSHIFT,259)@10
    u0_m0_wo0_mtree_mult1_14_shift0_q_int <= u0_m0_wo0_wi0_delayr26_q & "0";
    u0_m0_wo0_mtree_mult1_14_shift0_q <= u0_m0_wo0_mtree_mult1_14_shift0_q_int(7 downto 0);

	--u0_m0_wo0_mtree_mult1_14_add_1(ADD,260)@10
    u0_m0_wo0_mtree_mult1_14_add_1_a <= STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_wi0_delayr26_q(6)) & u0_m0_wo0_wi0_delayr26_q);
    u0_m0_wo0_mtree_mult1_14_add_1_b <= STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_14_shift0_q(7)) & u0_m0_wo0_mtree_mult1_14_shift0_q);
    u0_m0_wo0_mtree_mult1_14_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_14_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_14_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_14_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_14_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_14_add_1_q <= u0_m0_wo0_mtree_mult1_14_add_1_o(8 downto 0);


	--u0_m0_wo0_mtree_mult1_14_add_3(ADD,262)@11
    u0_m0_wo0_mtree_mult1_14_add_3_a <= STD_LOGIC_VECTOR((10 downto 9 => u0_m0_wo0_mtree_mult1_14_add_1_q(8)) & u0_m0_wo0_mtree_mult1_14_add_1_q);
    u0_m0_wo0_mtree_mult1_14_add_3_b <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_14_shift2_q(9)) & u0_m0_wo0_mtree_mult1_14_shift2_q);
    u0_m0_wo0_mtree_mult1_14_add_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_14_add_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_14_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_14_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_14_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_14_add_3_q <= u0_m0_wo0_mtree_mult1_14_add_3_o(10 downto 0);


	--u0_m0_wo0_mtree_mult1_14_shift4(BITSHIFT,263)@12
    u0_m0_wo0_mtree_mult1_14_shift4_q_int <= u0_m0_wo0_mtree_mult1_14_add_3_q & "00";
    u0_m0_wo0_mtree_mult1_14_shift4_q <= u0_m0_wo0_mtree_mult1_14_shift4_q_int(12 downto 0);

	--u0_m0_wo0_mtree_add0_7(ADD,137)@12
    u0_m0_wo0_mtree_add0_7_a <= STD_LOGIC_VECTOR((14 downto 13 => u0_m0_wo0_mtree_mult1_14_shift4_q(12)) & u0_m0_wo0_mtree_mult1_14_shift4_q);
    u0_m0_wo0_mtree_add0_7_b <= STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_15_shift2_q(13)) & u0_m0_wo0_mtree_mult1_15_shift2_q);
    u0_m0_wo0_mtree_add0_7: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_7_a) + SIGNED(u0_m0_wo0_mtree_add0_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_7_q <= u0_m0_wo0_mtree_add0_7_o(14 downto 0);


	--d_u0_m0_wo0_memread_q_11(DELAY,280)@10
    d_u0_m0_wo0_memread_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_memread_q_11_q, clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr27(DELAY,34)@11
    u0_m0_wo0_wi0_delayr27 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_wi0_delayr26_q_11_q, xout => u0_m0_wo0_wi0_delayr27_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_13_shift0(BITSHIFT,264)@11
    u0_m0_wo0_mtree_mult1_13_shift0_q_int <= u0_m0_wo0_wi0_delayr27_q & "000";
    u0_m0_wo0_mtree_mult1_13_shift0_q <= u0_m0_wo0_mtree_mult1_13_shift0_q_int(9 downto 0);

	--u0_m0_wo0_mtree_mult1_13_sub_1(SUB,265)@11
    u0_m0_wo0_mtree_mult1_13_sub_1_a <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_13_shift0_q(9)) & u0_m0_wo0_mtree_mult1_13_shift0_q);
    u0_m0_wo0_mtree_mult1_13_sub_1_b <= STD_LOGIC_VECTOR((10 downto 7 => u0_m0_wo0_wi0_delayr27_q(6)) & u0_m0_wo0_wi0_delayr27_q);
    u0_m0_wo0_mtree_mult1_13_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_13_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_sub_1_q <= u0_m0_wo0_mtree_mult1_13_sub_1_o(10 downto 0);


	--u0_m0_wo0_mtree_mult1_13_shift2(BITSHIFT,266)@12
    u0_m0_wo0_mtree_mult1_13_shift2_q_int <= u0_m0_wo0_mtree_mult1_13_sub_1_q & "00";
    u0_m0_wo0_mtree_mult1_13_shift2_q <= u0_m0_wo0_mtree_mult1_13_shift2_q_int(12 downto 0);

	--u0_m0_wo0_wi0_delayr28(DELAY,35)@11
    u0_m0_wo0_wi0_delayr28 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr27_q, xout => u0_m0_wo0_wi0_delayr28_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_12_shift0(BITSHIFT,267)@11
    u0_m0_wo0_mtree_mult1_12_shift0_q_int <= u0_m0_wo0_wi0_delayr28_q & "0000";
    u0_m0_wo0_mtree_mult1_12_shift0_q <= u0_m0_wo0_mtree_mult1_12_shift0_q_int(10 downto 0);

	--u0_m0_wo0_mtree_mult1_12_sub_1(SUB,268)@11
    u0_m0_wo0_mtree_mult1_12_sub_1_a <= STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_12_shift0_q(10)) & u0_m0_wo0_mtree_mult1_12_shift0_q);
    u0_m0_wo0_mtree_mult1_12_sub_1_b <= STD_LOGIC_VECTOR((11 downto 7 => u0_m0_wo0_wi0_delayr28_q(6)) & u0_m0_wo0_wi0_delayr28_q);
    u0_m0_wo0_mtree_mult1_12_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_12_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_sub_1_q <= u0_m0_wo0_mtree_mult1_12_sub_1_o(11 downto 0);


	--u0_m0_wo0_mtree_add0_6(ADD,136)@12
    u0_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR((13 downto 12 => u0_m0_wo0_mtree_mult1_12_sub_1_q(11)) & u0_m0_wo0_mtree_mult1_12_sub_1_q);
    u0_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_13_shift2_q(12)) & u0_m0_wo0_mtree_mult1_13_shift2_q);
    u0_m0_wo0_mtree_add0_6: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_6_a) + SIGNED(u0_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(13 downto 0);


	--u0_m0_wo0_mtree_add1_3(ADD,153)@13
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR((15 downto 14 => u0_m0_wo0_mtree_add0_6_q(13)) & u0_m0_wo0_mtree_add0_6_q);
    u0_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_add0_7_q(14)) & u0_m0_wo0_mtree_add0_7_q);
    u0_m0_wo0_mtree_add1_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(15 downto 0);


	--u0_m0_wo0_mtree_mult1_11_shift0(BITSHIFT,269)@12
    u0_m0_wo0_mtree_mult1_11_shift0_q_int <= d_u0_m0_wo0_wi0_delayr29_q_12_q & "00";
    u0_m0_wo0_mtree_mult1_11_shift0_q <= u0_m0_wo0_mtree_mult1_11_shift0_q_int(8 downto 0);

	--u0_m0_wo0_wi0_delayr29(DELAY,36)@11
    u0_m0_wo0_wi0_delayr29 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr28_q, xout => u0_m0_wo0_wi0_delayr29_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr29_q_12(DELAY,303)@11
    d_u0_m0_wo0_wi0_delayr29_q_12 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr29_q, xout => d_u0_m0_wo0_wi0_delayr29_q_12_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_11_add_1(ADD,270)@12
    u0_m0_wo0_mtree_mult1_11_add_1_a <= STD_LOGIC_VECTOR((9 downto 7 => d_u0_m0_wo0_wi0_delayr29_q_12_q(6)) & d_u0_m0_wo0_wi0_delayr29_q_12_q);
    u0_m0_wo0_mtree_mult1_11_add_1_b <= STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_11_shift0_q(8)) & u0_m0_wo0_mtree_mult1_11_shift0_q);
    u0_m0_wo0_mtree_mult1_11_add_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_add_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_11_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_add_1_q <= u0_m0_wo0_mtree_mult1_11_add_1_o(9 downto 0);


	--u0_m0_wo0_mtree_mult1_9_shift0(BITSHIFT,271)@11
    u0_m0_wo0_mtree_mult1_9_shift0_q_int <= u0_m0_wo0_wi0_delayr31_q & "00";
    u0_m0_wo0_mtree_mult1_9_shift0_q <= u0_m0_wo0_mtree_mult1_9_shift0_q_int(8 downto 0);

	--u0_m0_wo0_wi0_delayr30(DELAY,37)@11
    u0_m0_wo0_wi0_delayr30 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr29_q, xout => u0_m0_wo0_wi0_delayr30_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr31(DELAY,38)@11
    u0_m0_wo0_wi0_delayr31 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr30_q, xout => u0_m0_wo0_wi0_delayr31_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_9_sub_1(SUB,272)@11
    u0_m0_wo0_mtree_mult1_9_sub_1_a <= STD_LOGIC_VECTOR((9 downto 7 => u0_m0_wo0_wi0_delayr31_q(6)) & u0_m0_wo0_wi0_delayr31_q);
    u0_m0_wo0_mtree_mult1_9_sub_1_b <= STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_9_shift0_q(8)) & u0_m0_wo0_mtree_mult1_9_shift0_q);
    u0_m0_wo0_mtree_mult1_9_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_9_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_9_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_9_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_9_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_9_sub_1_q <= u0_m0_wo0_mtree_mult1_9_sub_1_o(9 downto 0);


	--u0_m0_wo0_mtree_mult1_8_shift0(BITSHIFT,273)@11
    u0_m0_wo0_mtree_mult1_8_shift0_q_int <= u0_m0_wo0_wi0_delayr32_q & "00";
    u0_m0_wo0_mtree_mult1_8_shift0_q <= u0_m0_wo0_mtree_mult1_8_shift0_q_int(8 downto 0);

	--u0_m0_wo0_wi0_delayr32(DELAY,39)@11
    u0_m0_wo0_wi0_delayr32 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr31_q, xout => u0_m0_wo0_wi0_delayr32_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_8_sub_1(SUB,274)@11
    u0_m0_wo0_mtree_mult1_8_sub_1_a <= STD_LOGIC_VECTOR((9 downto 7 => u0_m0_wo0_wi0_delayr32_q(6)) & u0_m0_wo0_wi0_delayr32_q);
    u0_m0_wo0_mtree_mult1_8_sub_1_b <= STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_8_shift0_q(8)) & u0_m0_wo0_mtree_mult1_8_shift0_q);
    u0_m0_wo0_mtree_mult1_8_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_8_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_8_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_8_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_8_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_8_sub_1_q <= u0_m0_wo0_mtree_mult1_8_sub_1_o(9 downto 0);


	--u0_m0_wo0_mtree_add0_4(ADD,134)@12
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_8_sub_1_q(9)) & u0_m0_wo0_mtree_mult1_8_sub_1_q);
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_9_sub_1_q(9)) & u0_m0_wo0_mtree_mult1_9_sub_1_q);
    u0_m0_wo0_mtree_add0_4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(10 downto 0);


	--u0_m0_wo0_mtree_add1_2(ADD,152)@13
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR((12 downto 11 => u0_m0_wo0_mtree_add0_4_q(10)) & u0_m0_wo0_mtree_add0_4_q);
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR((12 downto 10 => u0_m0_wo0_mtree_mult1_11_add_1_q(9)) & u0_m0_wo0_mtree_mult1_11_add_1_q);
    u0_m0_wo0_mtree_add1_2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(12 downto 0);


	--u0_m0_wo0_mtree_add2_1(ADD,161)@14
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR((16 downto 13 => u0_m0_wo0_mtree_add1_2_q(12)) & u0_m0_wo0_mtree_add1_2_q);
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_add1_3_q(15)) & u0_m0_wo0_mtree_add1_3_q);
    u0_m0_wo0_mtree_add2_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(16 downto 0);


	--u0_m0_wo0_mtree_mult1_7_shift0(BITSHIFT,275)@12
    u0_m0_wo0_mtree_mult1_7_shift0_q_int <= u0_m0_wo0_wi0_delayr33_q & "00";
    u0_m0_wo0_mtree_mult1_7_shift0_q <= u0_m0_wo0_mtree_mult1_7_shift0_q_int(8 downto 0);

	--d_u0_m0_wo0_memread_q_12(DELAY,281)@11
    d_u0_m0_wo0_memread_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_11_q, xout => d_u0_m0_wo0_memread_q_12_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr32_q_12(DELAY,304)@11
    d_u0_m0_wo0_wi0_delayr32_q_12 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr32_q, xout => d_u0_m0_wo0_wi0_delayr32_q_12_q, clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr33(DELAY,40)@12
    u0_m0_wo0_wi0_delayr33 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_wi0_delayr32_q_12_q, xout => u0_m0_wo0_wi0_delayr33_q, ena => d_u0_m0_wo0_memread_q_12_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_7_sub_1(SUB,276)@12
    u0_m0_wo0_mtree_mult1_7_sub_1_a <= STD_LOGIC_VECTOR((9 downto 7 => u0_m0_wo0_wi0_delayr33_q(6)) & u0_m0_wo0_wi0_delayr33_q);
    u0_m0_wo0_mtree_mult1_7_sub_1_b <= STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_7_shift0_q(8)) & u0_m0_wo0_mtree_mult1_7_shift0_q);
    u0_m0_wo0_mtree_mult1_7_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_7_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_7_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_7_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_7_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_7_sub_1_q <= u0_m0_wo0_mtree_mult1_7_sub_1_o(9 downto 0);


	--u0_m0_wo0_wi0_delayr34(DELAY,41)@12
    u0_m0_wo0_wi0_delayr34 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr33_q, xout => u0_m0_wo0_wi0_delayr34_q, ena => d_u0_m0_wo0_memread_q_12_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_6_shift0(BITSHIFT,277)@12
    u0_m0_wo0_mtree_mult1_6_shift0_q_int <= u0_m0_wo0_wi0_delayr34_q & "0";
    u0_m0_wo0_mtree_mult1_6_shift0_q <= u0_m0_wo0_mtree_mult1_6_shift0_q_int(7 downto 0);

	--u0_m0_wo0_mtree_mult1_6_sub_1(SUB,278)@12
    u0_m0_wo0_mtree_mult1_6_sub_1_a <= STD_LOGIC_VECTOR((8 downto 1 => GND_q(0)) & GND_q);
    u0_m0_wo0_mtree_mult1_6_sub_1_b <= STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_6_shift0_q(7)) & u0_m0_wo0_mtree_mult1_6_shift0_q);
    u0_m0_wo0_mtree_mult1_6_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_6_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_6_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_6_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_6_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_6_sub_1_q <= u0_m0_wo0_mtree_mult1_6_sub_1_o(8 downto 0);


	--u0_m0_wo0_mtree_add0_3(ADD,133)@13
    u0_m0_wo0_mtree_add0_3_a <= STD_LOGIC_VECTOR((10 downto 9 => u0_m0_wo0_mtree_mult1_6_sub_1_q(8)) & u0_m0_wo0_mtree_mult1_6_sub_1_q);
    u0_m0_wo0_mtree_add0_3_b <= STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_7_sub_1_q(9)) & u0_m0_wo0_mtree_mult1_7_sub_1_q);
    u0_m0_wo0_mtree_add0_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_3_a) + SIGNED(u0_m0_wo0_mtree_add0_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_3_q <= u0_m0_wo0_mtree_add0_3_o(10 downto 0);


	--d_u0_m0_wo0_memread_q_13(DELAY,282)@12
    d_u0_m0_wo0_memread_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_12_q, xout => d_u0_m0_wo0_memread_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr34_q_13(DELAY,305)@12
    d_u0_m0_wo0_wi0_delayr34_q_13 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr34_q, xout => d_u0_m0_wo0_wi0_delayr34_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr35(DELAY,42)@13
    u0_m0_wo0_wi0_delayr35 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_wi0_delayr34_q_13_q, xout => u0_m0_wo0_wi0_delayr35_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_mult1_5_sub_0(SUB,279)@13
    u0_m0_wo0_mtree_mult1_5_sub_0_a <= STD_LOGIC_VECTOR((7 downto 1 => GND_q(0)) & GND_q);
    u0_m0_wo0_mtree_mult1_5_sub_0_b <= STD_LOGIC_VECTOR((7 downto 7 => u0_m0_wo0_wi0_delayr35_q(6)) & u0_m0_wo0_wi0_delayr35_q);
    u0_m0_wo0_mtree_mult1_5_sub_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_sub_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_5_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_sub_0_q <= u0_m0_wo0_mtree_mult1_5_sub_0_o(7 downto 0);


	--u0_m0_wo0_mtree_add1_1(ADD,151)@14
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR((11 downto 8 => u0_m0_wo0_mtree_mult1_5_sub_0_q(7)) & u0_m0_wo0_mtree_mult1_5_sub_0_q);
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_add0_3_q(10)) & u0_m0_wo0_mtree_add0_3_q);
    u0_m0_wo0_mtree_add1_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(11 downto 0);


	--u0_m0_wo0_mtree_add3_0(ADD,165)@15
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR((17 downto 12 => u0_m0_wo0_mtree_add1_1_q(11)) & u0_m0_wo0_mtree_add1_1_q);
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_add2_1_q(16)) & u0_m0_wo0_mtree_add2_1_q);
    u0_m0_wo0_mtree_add3_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(17 downto 0);


	--u0_m0_wo0_mtree_add4_0(ADD,168)@16
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR((19 downto 18 => u0_m0_wo0_mtree_add3_0_q(17)) & u0_m0_wo0_mtree_add3_0_q);
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_add3_1_q(18)) & u0_m0_wo0_mtree_add3_1_q);
    u0_m0_wo0_mtree_add4_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(19 downto 0);


	--u0_m0_wo0_mtree_add5_0(ADD,169)@17
    u0_m0_wo0_mtree_add5_0_a <= STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_add4_0_q(19)) & u0_m0_wo0_mtree_add4_0_q);
    u0_m0_wo0_mtree_add5_0_b <= STD_LOGIC_VECTOR((20 downto 12 => u0_m0_wo0_mtree_add1_8_q(11)) & u0_m0_wo0_mtree_add1_8_q);
    u0_m0_wo0_mtree_add5_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add5_0_a) + SIGNED(u0_m0_wo0_mtree_add5_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add5_0_q <= u0_m0_wo0_mtree_add5_0_o(20 downto 0);


	--GND(CONSTANT,0)@0
    GND_q <= "0";

	--d_u0_m0_wo0_memread_q_17(DELAY,283)@13
    d_u0_m0_wo0_memread_q_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4 )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_13_q, xout => d_u0_m0_wo0_memread_q_17_q, clk => clk, aclr => areset );

	--u0_m0_wo0_oseq_gated_reg(REG,170)@17
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF rising_edge(clk) THEN
            u0_m0_wo0_oseq_gated_reg_q <= d_u0_m0_wo0_memread_q_17_q;
        END IF;
    END PROCESS;


	--xOut(PORTOUT,173)@18
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_mtree_add5_0_q;


end normal;
