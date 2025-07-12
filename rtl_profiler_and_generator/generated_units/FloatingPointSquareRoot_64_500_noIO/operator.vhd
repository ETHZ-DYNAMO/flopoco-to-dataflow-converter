--------------------------------------------------------------------------------
--                          FloatingPointSquareRoot
--                               (FPSqrt_11_52)
-- VHDL generated for Kintex7 @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 40 cycles
-- Clock period (ns): 2
-- Target frequency (MHz): 500
-- Input signals: X
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FloatingPointSquareRoot is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27, ce_28, ce_29, ce_30, ce_31, ce_32, ce_33, ce_34, ce_35, ce_36, ce_37, ce_38, ce_39, ce_40 : in std_logic;
          X : in  std_logic_vector(11+52+2 downto 0);
          R : out  std_logic_vector(11+52+2 downto 0)   );
end entity;

architecture arch of FloatingPointSquareRoot is
signal fracX_c0 :  std_logic_vector(51 downto 0);
signal eRn0_c0 :  std_logic_vector(10 downto 0);
signal xsX_c0 :  std_logic_vector(2 downto 0);
signal eRn1_c0, eRn1_c1, eRn1_c2, eRn1_c3, eRn1_c4, eRn1_c5, eRn1_c6, eRn1_c7, eRn1_c8, eRn1_c9, eRn1_c10, eRn1_c11, eRn1_c12, eRn1_c13, eRn1_c14, eRn1_c15, eRn1_c16, eRn1_c17, eRn1_c18, eRn1_c19, eRn1_c20, eRn1_c21, eRn1_c22, eRn1_c23, eRn1_c24, eRn1_c25, eRn1_c26, eRn1_c27, eRn1_c28, eRn1_c29, eRn1_c30, eRn1_c31, eRn1_c32, eRn1_c33, eRn1_c34, eRn1_c35, eRn1_c36, eRn1_c37, eRn1_c38, eRn1_c39, eRn1_c40 :  std_logic_vector(10 downto 0);
signal fracXnorm_c0 :  std_logic_vector(55 downto 0);
signal S0_c0 :  std_logic_vector(1 downto 0);
signal T1_c0 :  std_logic_vector(55 downto 0);
signal d1_c0, d1_c1 :  std_logic;
signal T1s_c0 :  std_logic_vector(56 downto 0);
signal T1s_h_c0, T1s_h_c1 :  std_logic_vector(5 downto 0);
signal T1s_l_c0, T1s_l_c1 :  std_logic_vector(50 downto 0);
signal U1_c0, U1_c1 :  std_logic_vector(5 downto 0);
signal T3_h_c1 :  std_logic_vector(5 downto 0);
signal T2_c1 :  std_logic_vector(55 downto 0);
signal S1_c0, S1_c1 :  std_logic_vector(2 downto 0);
signal d2_c1 :  std_logic;
signal T2s_c1 :  std_logic_vector(56 downto 0);
signal T2s_h_c1 :  std_logic_vector(6 downto 0);
signal T2s_l_c1 :  std_logic_vector(49 downto 0);
signal U2_c1 :  std_logic_vector(6 downto 0);
signal T4_h_c1 :  std_logic_vector(6 downto 0);
signal T3_c1 :  std_logic_vector(55 downto 0);
signal S2_c1 :  std_logic_vector(3 downto 0);
signal d3_c1, d3_c2 :  std_logic;
signal T3s_c1 :  std_logic_vector(56 downto 0);
signal T3s_h_c1, T3s_h_c2 :  std_logic_vector(7 downto 0);
signal T3s_l_c1, T3s_l_c2 :  std_logic_vector(48 downto 0);
signal U3_c1, U3_c2 :  std_logic_vector(7 downto 0);
signal T5_h_c2 :  std_logic_vector(7 downto 0);
signal T4_c2 :  std_logic_vector(55 downto 0);
signal S3_c1, S3_c2 :  std_logic_vector(4 downto 0);
signal d4_c2 :  std_logic;
signal T4s_c2 :  std_logic_vector(56 downto 0);
signal T4s_h_c2 :  std_logic_vector(8 downto 0);
signal T4s_l_c2 :  std_logic_vector(47 downto 0);
signal U4_c2 :  std_logic_vector(8 downto 0);
signal T6_h_c2 :  std_logic_vector(8 downto 0);
signal T5_c2 :  std_logic_vector(55 downto 0);
signal S4_c2 :  std_logic_vector(5 downto 0);
signal d5_c2, d5_c3 :  std_logic;
signal T5s_c2 :  std_logic_vector(56 downto 0);
signal T5s_h_c2, T5s_h_c3 :  std_logic_vector(9 downto 0);
signal T5s_l_c2, T5s_l_c3 :  std_logic_vector(46 downto 0);
signal U5_c2, U5_c3 :  std_logic_vector(9 downto 0);
signal T7_h_c3 :  std_logic_vector(9 downto 0);
signal T6_c3 :  std_logic_vector(55 downto 0);
signal S5_c2, S5_c3 :  std_logic_vector(6 downto 0);
signal d6_c3, d6_c4 :  std_logic;
signal T6s_c3 :  std_logic_vector(56 downto 0);
signal T6s_h_c3, T6s_h_c4 :  std_logic_vector(10 downto 0);
signal T6s_l_c3, T6s_l_c4 :  std_logic_vector(45 downto 0);
signal U6_c3, U6_c4 :  std_logic_vector(10 downto 0);
signal T8_h_c4 :  std_logic_vector(10 downto 0);
signal T7_c4 :  std_logic_vector(55 downto 0);
signal S6_c3, S6_c4 :  std_logic_vector(7 downto 0);
signal d7_c4 :  std_logic;
signal T7s_c4 :  std_logic_vector(56 downto 0);
signal T7s_h_c4 :  std_logic_vector(11 downto 0);
signal T7s_l_c4 :  std_logic_vector(44 downto 0);
signal U7_c4 :  std_logic_vector(11 downto 0);
signal T9_h_c4 :  std_logic_vector(11 downto 0);
signal T8_c4 :  std_logic_vector(55 downto 0);
signal S7_c4 :  std_logic_vector(8 downto 0);
signal d8_c4, d8_c5 :  std_logic;
signal T8s_c4 :  std_logic_vector(56 downto 0);
signal T8s_h_c4, T8s_h_c5 :  std_logic_vector(12 downto 0);
signal T8s_l_c4, T8s_l_c5 :  std_logic_vector(43 downto 0);
signal U8_c4, U8_c5 :  std_logic_vector(12 downto 0);
signal T10_h_c5 :  std_logic_vector(12 downto 0);
signal T9_c5 :  std_logic_vector(55 downto 0);
signal S8_c4, S8_c5 :  std_logic_vector(9 downto 0);
signal d9_c5 :  std_logic;
signal T9s_c5 :  std_logic_vector(56 downto 0);
signal T9s_h_c5 :  std_logic_vector(13 downto 0);
signal T9s_l_c5 :  std_logic_vector(42 downto 0);
signal U9_c5 :  std_logic_vector(13 downto 0);
signal T11_h_c5 :  std_logic_vector(13 downto 0);
signal T10_c5 :  std_logic_vector(55 downto 0);
signal S9_c5 :  std_logic_vector(10 downto 0);
signal d10_c5, d10_c6 :  std_logic;
signal T10s_c5 :  std_logic_vector(56 downto 0);
signal T10s_h_c5, T10s_h_c6 :  std_logic_vector(14 downto 0);
signal T10s_l_c5, T10s_l_c6 :  std_logic_vector(41 downto 0);
signal U10_c5, U10_c6 :  std_logic_vector(14 downto 0);
signal T12_h_c6 :  std_logic_vector(14 downto 0);
signal T11_c6 :  std_logic_vector(55 downto 0);
signal S10_c5, S10_c6 :  std_logic_vector(11 downto 0);
signal d11_c6, d11_c7 :  std_logic;
signal T11s_c6 :  std_logic_vector(56 downto 0);
signal T11s_h_c6, T11s_h_c7 :  std_logic_vector(15 downto 0);
signal T11s_l_c6, T11s_l_c7 :  std_logic_vector(40 downto 0);
signal U11_c6, U11_c7 :  std_logic_vector(15 downto 0);
signal T13_h_c7 :  std_logic_vector(15 downto 0);
signal T12_c7 :  std_logic_vector(55 downto 0);
signal S11_c6, S11_c7 :  std_logic_vector(12 downto 0);
signal d12_c7 :  std_logic;
signal T12s_c7 :  std_logic_vector(56 downto 0);
signal T12s_h_c7 :  std_logic_vector(16 downto 0);
signal T12s_l_c7 :  std_logic_vector(39 downto 0);
signal U12_c7 :  std_logic_vector(16 downto 0);
signal T14_h_c7 :  std_logic_vector(16 downto 0);
signal T13_c7 :  std_logic_vector(55 downto 0);
signal S12_c7 :  std_logic_vector(13 downto 0);
signal d13_c7, d13_c8 :  std_logic;
signal T13s_c7 :  std_logic_vector(56 downto 0);
signal T13s_h_c7, T13s_h_c8 :  std_logic_vector(17 downto 0);
signal T13s_l_c7, T13s_l_c8 :  std_logic_vector(38 downto 0);
signal U13_c7, U13_c8 :  std_logic_vector(17 downto 0);
signal T15_h_c8 :  std_logic_vector(17 downto 0);
signal T14_c8 :  std_logic_vector(55 downto 0);
signal S13_c7, S13_c8 :  std_logic_vector(14 downto 0);
signal d14_c8, d14_c9 :  std_logic;
signal T14s_c8 :  std_logic_vector(56 downto 0);
signal T14s_h_c8, T14s_h_c9 :  std_logic_vector(18 downto 0);
signal T14s_l_c8, T14s_l_c9 :  std_logic_vector(37 downto 0);
signal U14_c8, U14_c9 :  std_logic_vector(18 downto 0);
signal T16_h_c9 :  std_logic_vector(18 downto 0);
signal T15_c9 :  std_logic_vector(55 downto 0);
signal S14_c8, S14_c9 :  std_logic_vector(15 downto 0);
signal d15_c9 :  std_logic;
signal T15s_c9 :  std_logic_vector(56 downto 0);
signal T15s_h_c9 :  std_logic_vector(19 downto 0);
signal T15s_l_c9 :  std_logic_vector(36 downto 0);
signal U15_c9 :  std_logic_vector(19 downto 0);
signal T17_h_c9 :  std_logic_vector(19 downto 0);
signal T16_c9 :  std_logic_vector(55 downto 0);
signal S15_c9 :  std_logic_vector(16 downto 0);
signal d16_c9, d16_c10 :  std_logic;
signal T16s_c9 :  std_logic_vector(56 downto 0);
signal T16s_h_c9, T16s_h_c10 :  std_logic_vector(20 downto 0);
signal T16s_l_c9, T16s_l_c10 :  std_logic_vector(35 downto 0);
signal U16_c9, U16_c10 :  std_logic_vector(20 downto 0);
signal T18_h_c10 :  std_logic_vector(20 downto 0);
signal T17_c10 :  std_logic_vector(55 downto 0);
signal S16_c9, S16_c10 :  std_logic_vector(17 downto 0);
signal d17_c10, d17_c11 :  std_logic;
signal T17s_c10 :  std_logic_vector(56 downto 0);
signal T17s_h_c10, T17s_h_c11 :  std_logic_vector(21 downto 0);
signal T17s_l_c10, T17s_l_c11 :  std_logic_vector(34 downto 0);
signal U17_c10, U17_c11 :  std_logic_vector(21 downto 0);
signal T19_h_c11 :  std_logic_vector(21 downto 0);
signal T18_c11 :  std_logic_vector(55 downto 0);
signal S17_c10, S17_c11 :  std_logic_vector(18 downto 0);
signal d18_c11 :  std_logic;
signal T18s_c11 :  std_logic_vector(56 downto 0);
signal T18s_h_c11 :  std_logic_vector(22 downto 0);
signal T18s_l_c11 :  std_logic_vector(33 downto 0);
signal U18_c11 :  std_logic_vector(22 downto 0);
signal T20_h_c11 :  std_logic_vector(22 downto 0);
signal T19_c11 :  std_logic_vector(55 downto 0);
signal S18_c11 :  std_logic_vector(19 downto 0);
signal d19_c11, d19_c12 :  std_logic;
signal T19s_c11 :  std_logic_vector(56 downto 0);
signal T19s_h_c11, T19s_h_c12 :  std_logic_vector(23 downto 0);
signal T19s_l_c11, T19s_l_c12 :  std_logic_vector(32 downto 0);
signal U19_c11, U19_c12 :  std_logic_vector(23 downto 0);
signal T21_h_c12 :  std_logic_vector(23 downto 0);
signal T20_c12 :  std_logic_vector(55 downto 0);
signal S19_c11, S19_c12 :  std_logic_vector(20 downto 0);
signal d20_c12, d20_c13 :  std_logic;
signal T20s_c12 :  std_logic_vector(56 downto 0);
signal T20s_h_c12, T20s_h_c13 :  std_logic_vector(24 downto 0);
signal T20s_l_c12, T20s_l_c13 :  std_logic_vector(31 downto 0);
signal U20_c12, U20_c13 :  std_logic_vector(24 downto 0);
signal T22_h_c13 :  std_logic_vector(24 downto 0);
signal T21_c13 :  std_logic_vector(55 downto 0);
signal S20_c12, S20_c13 :  std_logic_vector(21 downto 0);
signal d21_c13 :  std_logic;
signal T21s_c13 :  std_logic_vector(56 downto 0);
signal T21s_h_c13 :  std_logic_vector(25 downto 0);
signal T21s_l_c13 :  std_logic_vector(30 downto 0);
signal U21_c13 :  std_logic_vector(25 downto 0);
signal T23_h_c13 :  std_logic_vector(25 downto 0);
signal T22_c13 :  std_logic_vector(55 downto 0);
signal S21_c13 :  std_logic_vector(22 downto 0);
signal d22_c13, d22_c14 :  std_logic;
signal T22s_c13 :  std_logic_vector(56 downto 0);
signal T22s_h_c13, T22s_h_c14 :  std_logic_vector(26 downto 0);
signal T22s_l_c13, T22s_l_c14 :  std_logic_vector(29 downto 0);
signal U22_c13, U22_c14 :  std_logic_vector(26 downto 0);
signal T24_h_c14 :  std_logic_vector(26 downto 0);
signal T23_c14 :  std_logic_vector(55 downto 0);
signal S22_c13, S22_c14 :  std_logic_vector(23 downto 0);
signal d23_c14, d23_c15 :  std_logic;
signal T23s_c14 :  std_logic_vector(56 downto 0);
signal T23s_h_c14, T23s_h_c15 :  std_logic_vector(27 downto 0);
signal T23s_l_c14, T23s_l_c15 :  std_logic_vector(28 downto 0);
signal U23_c14, U23_c15 :  std_logic_vector(27 downto 0);
signal T25_h_c15 :  std_logic_vector(27 downto 0);
signal T24_c15 :  std_logic_vector(55 downto 0);
signal S23_c14, S23_c15 :  std_logic_vector(24 downto 0);
signal d24_c15, d24_c16 :  std_logic;
signal T24s_c15 :  std_logic_vector(56 downto 0);
signal T24s_h_c15, T24s_h_c16 :  std_logic_vector(28 downto 0);
signal T24s_l_c15, T24s_l_c16 :  std_logic_vector(27 downto 0);
signal U24_c15, U24_c16 :  std_logic_vector(28 downto 0);
signal T26_h_c16 :  std_logic_vector(28 downto 0);
signal T25_c16 :  std_logic_vector(55 downto 0);
signal S24_c15, S24_c16 :  std_logic_vector(25 downto 0);
signal d25_c16 :  std_logic;
signal T25s_c16 :  std_logic_vector(56 downto 0);
signal T25s_h_c16 :  std_logic_vector(29 downto 0);
signal T25s_l_c16 :  std_logic_vector(26 downto 0);
signal U25_c16 :  std_logic_vector(29 downto 0);
signal T27_h_c16 :  std_logic_vector(29 downto 0);
signal T26_c16 :  std_logic_vector(55 downto 0);
signal S25_c16 :  std_logic_vector(26 downto 0);
signal d26_c16, d26_c17 :  std_logic;
signal T26s_c16 :  std_logic_vector(56 downto 0);
signal T26s_h_c16, T26s_h_c17 :  std_logic_vector(30 downto 0);
signal T26s_l_c16, T26s_l_c17 :  std_logic_vector(25 downto 0);
signal U26_c16, U26_c17 :  std_logic_vector(30 downto 0);
signal T28_h_c17 :  std_logic_vector(30 downto 0);
signal T27_c17 :  std_logic_vector(55 downto 0);
signal S26_c16, S26_c17 :  std_logic_vector(27 downto 0);
signal d27_c17, d27_c18 :  std_logic;
signal T27s_c17 :  std_logic_vector(56 downto 0);
signal T27s_h_c17, T27s_h_c18 :  std_logic_vector(31 downto 0);
signal T27s_l_c17, T27s_l_c18 :  std_logic_vector(24 downto 0);
signal U27_c17, U27_c18 :  std_logic_vector(31 downto 0);
signal T29_h_c18 :  std_logic_vector(31 downto 0);
signal T28_c18 :  std_logic_vector(55 downto 0);
signal S27_c17, S27_c18 :  std_logic_vector(28 downto 0);
signal d28_c18, d28_c19 :  std_logic;
signal T28s_c18 :  std_logic_vector(56 downto 0);
signal T28s_h_c18, T28s_h_c19 :  std_logic_vector(32 downto 0);
signal T28s_l_c18, T28s_l_c19 :  std_logic_vector(23 downto 0);
signal U28_c18, U28_c19 :  std_logic_vector(32 downto 0);
signal T30_h_c19 :  std_logic_vector(32 downto 0);
signal T29_c19 :  std_logic_vector(55 downto 0);
signal S28_c18, S28_c19 :  std_logic_vector(29 downto 0);
signal d29_c19 :  std_logic;
signal T29s_c19 :  std_logic_vector(56 downto 0);
signal T29s_h_c19 :  std_logic_vector(33 downto 0);
signal T29s_l_c19 :  std_logic_vector(22 downto 0);
signal U29_c19 :  std_logic_vector(33 downto 0);
signal T31_h_c19 :  std_logic_vector(33 downto 0);
signal T30_c19 :  std_logic_vector(55 downto 0);
signal S29_c19 :  std_logic_vector(30 downto 0);
signal d30_c19, d30_c20 :  std_logic;
signal T30s_c19 :  std_logic_vector(56 downto 0);
signal T30s_h_c19, T30s_h_c20 :  std_logic_vector(34 downto 0);
signal T30s_l_c19, T30s_l_c20 :  std_logic_vector(21 downto 0);
signal U30_c19, U30_c20 :  std_logic_vector(34 downto 0);
signal T32_h_c20 :  std_logic_vector(34 downto 0);
signal T31_c20 :  std_logic_vector(55 downto 0);
signal S30_c19, S30_c20 :  std_logic_vector(31 downto 0);
signal d31_c20, d31_c21 :  std_logic;
signal T31s_c20 :  std_logic_vector(56 downto 0);
signal T31s_h_c20, T31s_h_c21 :  std_logic_vector(35 downto 0);
signal T31s_l_c20, T31s_l_c21 :  std_logic_vector(20 downto 0);
signal U31_c20, U31_c21 :  std_logic_vector(35 downto 0);
signal T33_h_c21 :  std_logic_vector(35 downto 0);
signal T32_c21 :  std_logic_vector(55 downto 0);
signal S31_c20, S31_c21 :  std_logic_vector(32 downto 0);
signal d32_c21, d32_c22 :  std_logic;
signal T32s_c21 :  std_logic_vector(56 downto 0);
signal T32s_h_c21, T32s_h_c22 :  std_logic_vector(36 downto 0);
signal T32s_l_c21, T32s_l_c22 :  std_logic_vector(19 downto 0);
signal U32_c21, U32_c22 :  std_logic_vector(36 downto 0);
signal T34_h_c22 :  std_logic_vector(36 downto 0);
signal T33_c22 :  std_logic_vector(55 downto 0);
signal S32_c21, S32_c22 :  std_logic_vector(33 downto 0);
signal d33_c22 :  std_logic;
signal T33s_c22 :  std_logic_vector(56 downto 0);
signal T33s_h_c22 :  std_logic_vector(37 downto 0);
signal T33s_l_c22 :  std_logic_vector(18 downto 0);
signal U33_c22 :  std_logic_vector(37 downto 0);
signal T35_h_c22 :  std_logic_vector(37 downto 0);
signal T34_c22 :  std_logic_vector(55 downto 0);
signal S33_c22 :  std_logic_vector(34 downto 0);
signal d34_c22, d34_c23 :  std_logic;
signal T34s_c22 :  std_logic_vector(56 downto 0);
signal T34s_h_c22, T34s_h_c23 :  std_logic_vector(38 downto 0);
signal T34s_l_c22, T34s_l_c23 :  std_logic_vector(17 downto 0);
signal U34_c22, U34_c23 :  std_logic_vector(38 downto 0);
signal T36_h_c23 :  std_logic_vector(38 downto 0);
signal T35_c23 :  std_logic_vector(55 downto 0);
signal S34_c22, S34_c23 :  std_logic_vector(35 downto 0);
signal d35_c23, d35_c24 :  std_logic;
signal T35s_c23 :  std_logic_vector(56 downto 0);
signal T35s_h_c23, T35s_h_c24 :  std_logic_vector(39 downto 0);
signal T35s_l_c23, T35s_l_c24 :  std_logic_vector(16 downto 0);
signal U35_c23, U35_c24 :  std_logic_vector(39 downto 0);
signal T37_h_c24 :  std_logic_vector(39 downto 0);
signal T36_c24 :  std_logic_vector(55 downto 0);
signal S35_c23, S35_c24 :  std_logic_vector(36 downto 0);
signal d36_c24, d36_c25 :  std_logic;
signal T36s_c24 :  std_logic_vector(56 downto 0);
signal T36s_h_c24, T36s_h_c25 :  std_logic_vector(40 downto 0);
signal T36s_l_c24, T36s_l_c25 :  std_logic_vector(15 downto 0);
signal U36_c24, U36_c25 :  std_logic_vector(40 downto 0);
signal T38_h_c25 :  std_logic_vector(40 downto 0);
signal T37_c25 :  std_logic_vector(55 downto 0);
signal S36_c24, S36_c25 :  std_logic_vector(37 downto 0);
signal d37_c25, d37_c26 :  std_logic;
signal T37s_c25 :  std_logic_vector(56 downto 0);
signal T37s_h_c25, T37s_h_c26 :  std_logic_vector(41 downto 0);
signal T37s_l_c25, T37s_l_c26 :  std_logic_vector(14 downto 0);
signal U37_c25, U37_c26 :  std_logic_vector(41 downto 0);
signal T39_h_c26 :  std_logic_vector(41 downto 0);
signal T38_c26 :  std_logic_vector(55 downto 0);
signal S37_c25, S37_c26 :  std_logic_vector(38 downto 0);
signal d38_c26, d38_c27 :  std_logic;
signal T38s_c26 :  std_logic_vector(56 downto 0);
signal T38s_h_c26, T38s_h_c27 :  std_logic_vector(42 downto 0);
signal T38s_l_c26, T38s_l_c27 :  std_logic_vector(13 downto 0);
signal U38_c26, U38_c27 :  std_logic_vector(42 downto 0);
signal T40_h_c27 :  std_logic_vector(42 downto 0);
signal T39_c27 :  std_logic_vector(55 downto 0);
signal S38_c26, S38_c27 :  std_logic_vector(39 downto 0);
signal d39_c27 :  std_logic;
signal T39s_c27 :  std_logic_vector(56 downto 0);
signal T39s_h_c27 :  std_logic_vector(43 downto 0);
signal T39s_l_c27 :  std_logic_vector(12 downto 0);
signal U39_c27 :  std_logic_vector(43 downto 0);
signal T41_h_c27 :  std_logic_vector(43 downto 0);
signal T40_c27 :  std_logic_vector(55 downto 0);
signal S39_c27 :  std_logic_vector(40 downto 0);
signal d40_c27, d40_c28 :  std_logic;
signal T40s_c27 :  std_logic_vector(56 downto 0);
signal T40s_h_c27, T40s_h_c28 :  std_logic_vector(44 downto 0);
signal T40s_l_c27, T40s_l_c28 :  std_logic_vector(11 downto 0);
signal U40_c27, U40_c28 :  std_logic_vector(44 downto 0);
signal T42_h_c28 :  std_logic_vector(44 downto 0);
signal T41_c28 :  std_logic_vector(55 downto 0);
signal S40_c27, S40_c28 :  std_logic_vector(41 downto 0);
signal d41_c28, d41_c29 :  std_logic;
signal T41s_c28 :  std_logic_vector(56 downto 0);
signal T41s_h_c28, T41s_h_c29 :  std_logic_vector(45 downto 0);
signal T41s_l_c28, T41s_l_c29 :  std_logic_vector(10 downto 0);
signal U41_c28, U41_c29 :  std_logic_vector(45 downto 0);
signal T43_h_c29 :  std_logic_vector(45 downto 0);
signal T42_c29 :  std_logic_vector(55 downto 0);
signal S41_c28, S41_c29 :  std_logic_vector(42 downto 0);
signal d42_c29, d42_c30 :  std_logic;
signal T42s_c29 :  std_logic_vector(56 downto 0);
signal T42s_h_c29, T42s_h_c30 :  std_logic_vector(46 downto 0);
signal T42s_l_c29, T42s_l_c30 :  std_logic_vector(9 downto 0);
signal U42_c29, U42_c30 :  std_logic_vector(46 downto 0);
signal T44_h_c30 :  std_logic_vector(46 downto 0);
signal T43_c30 :  std_logic_vector(55 downto 0);
signal S42_c29, S42_c30 :  std_logic_vector(43 downto 0);
signal d43_c30, d43_c31 :  std_logic;
signal T43s_c30 :  std_logic_vector(56 downto 0);
signal T43s_h_c30, T43s_h_c31 :  std_logic_vector(47 downto 0);
signal T43s_l_c30, T43s_l_c31 :  std_logic_vector(8 downto 0);
signal U43_c30, U43_c31 :  std_logic_vector(47 downto 0);
signal T45_h_c31 :  std_logic_vector(47 downto 0);
signal T44_c31 :  std_logic_vector(55 downto 0);
signal S43_c30, S43_c31 :  std_logic_vector(44 downto 0);
signal d44_c31, d44_c32 :  std_logic;
signal T44s_c31 :  std_logic_vector(56 downto 0);
signal T44s_h_c31, T44s_h_c32 :  std_logic_vector(48 downto 0);
signal T44s_l_c31, T44s_l_c32 :  std_logic_vector(7 downto 0);
signal U44_c31, U44_c32 :  std_logic_vector(48 downto 0);
signal T46_h_c32 :  std_logic_vector(48 downto 0);
signal T45_c32 :  std_logic_vector(55 downto 0);
signal S44_c31, S44_c32 :  std_logic_vector(45 downto 0);
signal d45_c32 :  std_logic;
signal T45s_c32 :  std_logic_vector(56 downto 0);
signal T45s_h_c32 :  std_logic_vector(49 downto 0);
signal T45s_l_c32 :  std_logic_vector(6 downto 0);
signal U45_c32 :  std_logic_vector(49 downto 0);
signal T47_h_c32 :  std_logic_vector(49 downto 0);
signal T46_c32 :  std_logic_vector(55 downto 0);
signal S45_c32 :  std_logic_vector(46 downto 0);
signal d46_c32, d46_c33 :  std_logic;
signal T46s_c32 :  std_logic_vector(56 downto 0);
signal T46s_h_c32, T46s_h_c33 :  std_logic_vector(50 downto 0);
signal T46s_l_c32, T46s_l_c33 :  std_logic_vector(5 downto 0);
signal U46_c32, U46_c33 :  std_logic_vector(50 downto 0);
signal T48_h_c33 :  std_logic_vector(50 downto 0);
signal T47_c33 :  std_logic_vector(55 downto 0);
signal S46_c32, S46_c33 :  std_logic_vector(47 downto 0);
signal d47_c33, d47_c34 :  std_logic;
signal T47s_c33 :  std_logic_vector(56 downto 0);
signal T47s_h_c33, T47s_h_c34 :  std_logic_vector(51 downto 0);
signal T47s_l_c33, T47s_l_c34 :  std_logic_vector(4 downto 0);
signal U47_c33, U47_c34 :  std_logic_vector(51 downto 0);
signal T49_h_c34 :  std_logic_vector(51 downto 0);
signal T48_c34 :  std_logic_vector(55 downto 0);
signal S47_c33, S47_c34 :  std_logic_vector(48 downto 0);
signal d48_c34, d48_c35 :  std_logic;
signal T48s_c34 :  std_logic_vector(56 downto 0);
signal T48s_h_c34, T48s_h_c35 :  std_logic_vector(52 downto 0);
signal T48s_l_c34, T48s_l_c35 :  std_logic_vector(3 downto 0);
signal U48_c34, U48_c35 :  std_logic_vector(52 downto 0);
signal T50_h_c35 :  std_logic_vector(52 downto 0);
signal T49_c35 :  std_logic_vector(55 downto 0);
signal S48_c34, S48_c35 :  std_logic_vector(49 downto 0);
signal d49_c35, d49_c36 :  std_logic;
signal T49s_c35 :  std_logic_vector(56 downto 0);
signal T49s_h_c35, T49s_h_c36 :  std_logic_vector(53 downto 0);
signal T49s_l_c35, T49s_l_c36 :  std_logic_vector(2 downto 0);
signal U49_c35, U49_c36 :  std_logic_vector(53 downto 0);
signal T51_h_c36 :  std_logic_vector(53 downto 0);
signal T50_c36 :  std_logic_vector(55 downto 0);
signal S49_c35, S49_c36 :  std_logic_vector(50 downto 0);
signal d50_c36, d50_c37 :  std_logic;
signal T50s_c36 :  std_logic_vector(56 downto 0);
signal T50s_h_c36, T50s_h_c37 :  std_logic_vector(54 downto 0);
signal T50s_l_c36, T50s_l_c37 :  std_logic_vector(1 downto 0);
signal U50_c36, U50_c37 :  std_logic_vector(54 downto 0);
signal T52_h_c37 :  std_logic_vector(54 downto 0);
signal T51_c37 :  std_logic_vector(55 downto 0);
signal S50_c36, S50_c37 :  std_logic_vector(51 downto 0);
signal d51_c37, d51_c38 :  std_logic;
signal T51s_c37 :  std_logic_vector(56 downto 0);
signal T51s_h_c37, T51s_h_c38 :  std_logic_vector(55 downto 0);
signal T51s_l_c37, T51s_l_c38 :  std_logic_vector(0 downto 0);
signal U51_c37, U51_c38 :  std_logic_vector(55 downto 0);
signal T53_h_c38 :  std_logic_vector(55 downto 0);
signal T52_c38 :  std_logic_vector(55 downto 0);
signal S51_c37, S51_c38 :  std_logic_vector(52 downto 0);
signal d52_c38, d52_c39 :  std_logic;
signal T52s_c38 :  std_logic_vector(56 downto 0);
signal T52s_h_c38, T52s_h_c39 :  std_logic_vector(56 downto 0);
signal U52_c38, U52_c39 :  std_logic_vector(56 downto 0);
signal T54_h_c39 :  std_logic_vector(56 downto 0);
signal T53_c39 :  std_logic_vector(55 downto 0);
signal S52_c38, S52_c39 :  std_logic_vector(53 downto 0);
signal d54_c39 :  std_logic;
signal mR_c39 :  std_logic_vector(54 downto 0);
signal fR_c39, fR_c40 :  std_logic_vector(51 downto 0);
signal round_c39, round_c40 :  std_logic;
signal fRrnd_c40 :  std_logic_vector(51 downto 0);
signal Rn2_c40 :  std_logic_vector(62 downto 0);
signal xsR_c0, xsR_c1, xsR_c2, xsR_c3, xsR_c4, xsR_c5, xsR_c6, xsR_c7, xsR_c8, xsR_c9, xsR_c10, xsR_c11, xsR_c12, xsR_c13, xsR_c14, xsR_c15, xsR_c16, xsR_c17, xsR_c18, xsR_c19, xsR_c20, xsR_c21, xsR_c22, xsR_c23, xsR_c24, xsR_c25, xsR_c26, xsR_c27, xsR_c28, xsR_c29, xsR_c30, xsR_c31, xsR_c32, xsR_c33, xsR_c34, xsR_c35, xsR_c36, xsR_c37, xsR_c38, xsR_c39, xsR_c40 :  std_logic_vector(2 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               eRn1_c1 <= eRn1_c0;
               d1_c1 <= d1_c0;
               T1s_h_c1 <= T1s_h_c0;
               T1s_l_c1 <= T1s_l_c0;
               U1_c1 <= U1_c0;
               S1_c1 <= S1_c0;
               xsR_c1 <= xsR_c0;
            end if;
            if ce_2 = '1' then
               eRn1_c2 <= eRn1_c1;
               d3_c2 <= d3_c1;
               T3s_h_c2 <= T3s_h_c1;
               T3s_l_c2 <= T3s_l_c1;
               U3_c2 <= U3_c1;
               S3_c2 <= S3_c1;
               xsR_c2 <= xsR_c1;
            end if;
            if ce_3 = '1' then
               eRn1_c3 <= eRn1_c2;
               d5_c3 <= d5_c2;
               T5s_h_c3 <= T5s_h_c2;
               T5s_l_c3 <= T5s_l_c2;
               U5_c3 <= U5_c2;
               S5_c3 <= S5_c2;
               xsR_c3 <= xsR_c2;
            end if;
            if ce_4 = '1' then
               eRn1_c4 <= eRn1_c3;
               d6_c4 <= d6_c3;
               T6s_h_c4 <= T6s_h_c3;
               T6s_l_c4 <= T6s_l_c3;
               U6_c4 <= U6_c3;
               S6_c4 <= S6_c3;
               xsR_c4 <= xsR_c3;
            end if;
            if ce_5 = '1' then
               eRn1_c5 <= eRn1_c4;
               d8_c5 <= d8_c4;
               T8s_h_c5 <= T8s_h_c4;
               T8s_l_c5 <= T8s_l_c4;
               U8_c5 <= U8_c4;
               S8_c5 <= S8_c4;
               xsR_c5 <= xsR_c4;
            end if;
            if ce_6 = '1' then
               eRn1_c6 <= eRn1_c5;
               d10_c6 <= d10_c5;
               T10s_h_c6 <= T10s_h_c5;
               T10s_l_c6 <= T10s_l_c5;
               U10_c6 <= U10_c5;
               S10_c6 <= S10_c5;
               xsR_c6 <= xsR_c5;
            end if;
            if ce_7 = '1' then
               eRn1_c7 <= eRn1_c6;
               d11_c7 <= d11_c6;
               T11s_h_c7 <= T11s_h_c6;
               T11s_l_c7 <= T11s_l_c6;
               U11_c7 <= U11_c6;
               S11_c7 <= S11_c6;
               xsR_c7 <= xsR_c6;
            end if;
            if ce_8 = '1' then
               eRn1_c8 <= eRn1_c7;
               d13_c8 <= d13_c7;
               T13s_h_c8 <= T13s_h_c7;
               T13s_l_c8 <= T13s_l_c7;
               U13_c8 <= U13_c7;
               S13_c8 <= S13_c7;
               xsR_c8 <= xsR_c7;
            end if;
            if ce_9 = '1' then
               eRn1_c9 <= eRn1_c8;
               d14_c9 <= d14_c8;
               T14s_h_c9 <= T14s_h_c8;
               T14s_l_c9 <= T14s_l_c8;
               U14_c9 <= U14_c8;
               S14_c9 <= S14_c8;
               xsR_c9 <= xsR_c8;
            end if;
            if ce_10 = '1' then
               eRn1_c10 <= eRn1_c9;
               d16_c10 <= d16_c9;
               T16s_h_c10 <= T16s_h_c9;
               T16s_l_c10 <= T16s_l_c9;
               U16_c10 <= U16_c9;
               S16_c10 <= S16_c9;
               xsR_c10 <= xsR_c9;
            end if;
            if ce_11 = '1' then
               eRn1_c11 <= eRn1_c10;
               d17_c11 <= d17_c10;
               T17s_h_c11 <= T17s_h_c10;
               T17s_l_c11 <= T17s_l_c10;
               U17_c11 <= U17_c10;
               S17_c11 <= S17_c10;
               xsR_c11 <= xsR_c10;
            end if;
            if ce_12 = '1' then
               eRn1_c12 <= eRn1_c11;
               d19_c12 <= d19_c11;
               T19s_h_c12 <= T19s_h_c11;
               T19s_l_c12 <= T19s_l_c11;
               U19_c12 <= U19_c11;
               S19_c12 <= S19_c11;
               xsR_c12 <= xsR_c11;
            end if;
            if ce_13 = '1' then
               eRn1_c13 <= eRn1_c12;
               d20_c13 <= d20_c12;
               T20s_h_c13 <= T20s_h_c12;
               T20s_l_c13 <= T20s_l_c12;
               U20_c13 <= U20_c12;
               S20_c13 <= S20_c12;
               xsR_c13 <= xsR_c12;
            end if;
            if ce_14 = '1' then
               eRn1_c14 <= eRn1_c13;
               d22_c14 <= d22_c13;
               T22s_h_c14 <= T22s_h_c13;
               T22s_l_c14 <= T22s_l_c13;
               U22_c14 <= U22_c13;
               S22_c14 <= S22_c13;
               xsR_c14 <= xsR_c13;
            end if;
            if ce_15 = '1' then
               eRn1_c15 <= eRn1_c14;
               d23_c15 <= d23_c14;
               T23s_h_c15 <= T23s_h_c14;
               T23s_l_c15 <= T23s_l_c14;
               U23_c15 <= U23_c14;
               S23_c15 <= S23_c14;
               xsR_c15 <= xsR_c14;
            end if;
            if ce_16 = '1' then
               eRn1_c16 <= eRn1_c15;
               d24_c16 <= d24_c15;
               T24s_h_c16 <= T24s_h_c15;
               T24s_l_c16 <= T24s_l_c15;
               U24_c16 <= U24_c15;
               S24_c16 <= S24_c15;
               xsR_c16 <= xsR_c15;
            end if;
            if ce_17 = '1' then
               eRn1_c17 <= eRn1_c16;
               d26_c17 <= d26_c16;
               T26s_h_c17 <= T26s_h_c16;
               T26s_l_c17 <= T26s_l_c16;
               U26_c17 <= U26_c16;
               S26_c17 <= S26_c16;
               xsR_c17 <= xsR_c16;
            end if;
            if ce_18 = '1' then
               eRn1_c18 <= eRn1_c17;
               d27_c18 <= d27_c17;
               T27s_h_c18 <= T27s_h_c17;
               T27s_l_c18 <= T27s_l_c17;
               U27_c18 <= U27_c17;
               S27_c18 <= S27_c17;
               xsR_c18 <= xsR_c17;
            end if;
            if ce_19 = '1' then
               eRn1_c19 <= eRn1_c18;
               d28_c19 <= d28_c18;
               T28s_h_c19 <= T28s_h_c18;
               T28s_l_c19 <= T28s_l_c18;
               U28_c19 <= U28_c18;
               S28_c19 <= S28_c18;
               xsR_c19 <= xsR_c18;
            end if;
            if ce_20 = '1' then
               eRn1_c20 <= eRn1_c19;
               d30_c20 <= d30_c19;
               T30s_h_c20 <= T30s_h_c19;
               T30s_l_c20 <= T30s_l_c19;
               U30_c20 <= U30_c19;
               S30_c20 <= S30_c19;
               xsR_c20 <= xsR_c19;
            end if;
            if ce_21 = '1' then
               eRn1_c21 <= eRn1_c20;
               d31_c21 <= d31_c20;
               T31s_h_c21 <= T31s_h_c20;
               T31s_l_c21 <= T31s_l_c20;
               U31_c21 <= U31_c20;
               S31_c21 <= S31_c20;
               xsR_c21 <= xsR_c20;
            end if;
            if ce_22 = '1' then
               eRn1_c22 <= eRn1_c21;
               d32_c22 <= d32_c21;
               T32s_h_c22 <= T32s_h_c21;
               T32s_l_c22 <= T32s_l_c21;
               U32_c22 <= U32_c21;
               S32_c22 <= S32_c21;
               xsR_c22 <= xsR_c21;
            end if;
            if ce_23 = '1' then
               eRn1_c23 <= eRn1_c22;
               d34_c23 <= d34_c22;
               T34s_h_c23 <= T34s_h_c22;
               T34s_l_c23 <= T34s_l_c22;
               U34_c23 <= U34_c22;
               S34_c23 <= S34_c22;
               xsR_c23 <= xsR_c22;
            end if;
            if ce_24 = '1' then
               eRn1_c24 <= eRn1_c23;
               d35_c24 <= d35_c23;
               T35s_h_c24 <= T35s_h_c23;
               T35s_l_c24 <= T35s_l_c23;
               U35_c24 <= U35_c23;
               S35_c24 <= S35_c23;
               xsR_c24 <= xsR_c23;
            end if;
            if ce_25 = '1' then
               eRn1_c25 <= eRn1_c24;
               d36_c25 <= d36_c24;
               T36s_h_c25 <= T36s_h_c24;
               T36s_l_c25 <= T36s_l_c24;
               U36_c25 <= U36_c24;
               S36_c25 <= S36_c24;
               xsR_c25 <= xsR_c24;
            end if;
            if ce_26 = '1' then
               eRn1_c26 <= eRn1_c25;
               d37_c26 <= d37_c25;
               T37s_h_c26 <= T37s_h_c25;
               T37s_l_c26 <= T37s_l_c25;
               U37_c26 <= U37_c25;
               S37_c26 <= S37_c25;
               xsR_c26 <= xsR_c25;
            end if;
            if ce_27 = '1' then
               eRn1_c27 <= eRn1_c26;
               d38_c27 <= d38_c26;
               T38s_h_c27 <= T38s_h_c26;
               T38s_l_c27 <= T38s_l_c26;
               U38_c27 <= U38_c26;
               S38_c27 <= S38_c26;
               xsR_c27 <= xsR_c26;
            end if;
            if ce_28 = '1' then
               eRn1_c28 <= eRn1_c27;
               d40_c28 <= d40_c27;
               T40s_h_c28 <= T40s_h_c27;
               T40s_l_c28 <= T40s_l_c27;
               U40_c28 <= U40_c27;
               S40_c28 <= S40_c27;
               xsR_c28 <= xsR_c27;
            end if;
            if ce_29 = '1' then
               eRn1_c29 <= eRn1_c28;
               d41_c29 <= d41_c28;
               T41s_h_c29 <= T41s_h_c28;
               T41s_l_c29 <= T41s_l_c28;
               U41_c29 <= U41_c28;
               S41_c29 <= S41_c28;
               xsR_c29 <= xsR_c28;
            end if;
            if ce_30 = '1' then
               eRn1_c30 <= eRn1_c29;
               d42_c30 <= d42_c29;
               T42s_h_c30 <= T42s_h_c29;
               T42s_l_c30 <= T42s_l_c29;
               U42_c30 <= U42_c29;
               S42_c30 <= S42_c29;
               xsR_c30 <= xsR_c29;
            end if;
            if ce_31 = '1' then
               eRn1_c31 <= eRn1_c30;
               d43_c31 <= d43_c30;
               T43s_h_c31 <= T43s_h_c30;
               T43s_l_c31 <= T43s_l_c30;
               U43_c31 <= U43_c30;
               S43_c31 <= S43_c30;
               xsR_c31 <= xsR_c30;
            end if;
            if ce_32 = '1' then
               eRn1_c32 <= eRn1_c31;
               d44_c32 <= d44_c31;
               T44s_h_c32 <= T44s_h_c31;
               T44s_l_c32 <= T44s_l_c31;
               U44_c32 <= U44_c31;
               S44_c32 <= S44_c31;
               xsR_c32 <= xsR_c31;
            end if;
            if ce_33 = '1' then
               eRn1_c33 <= eRn1_c32;
               d46_c33 <= d46_c32;
               T46s_h_c33 <= T46s_h_c32;
               T46s_l_c33 <= T46s_l_c32;
               U46_c33 <= U46_c32;
               S46_c33 <= S46_c32;
               xsR_c33 <= xsR_c32;
            end if;
            if ce_34 = '1' then
               eRn1_c34 <= eRn1_c33;
               d47_c34 <= d47_c33;
               T47s_h_c34 <= T47s_h_c33;
               T47s_l_c34 <= T47s_l_c33;
               U47_c34 <= U47_c33;
               S47_c34 <= S47_c33;
               xsR_c34 <= xsR_c33;
            end if;
            if ce_35 = '1' then
               eRn1_c35 <= eRn1_c34;
               d48_c35 <= d48_c34;
               T48s_h_c35 <= T48s_h_c34;
               T48s_l_c35 <= T48s_l_c34;
               U48_c35 <= U48_c34;
               S48_c35 <= S48_c34;
               xsR_c35 <= xsR_c34;
            end if;
            if ce_36 = '1' then
               eRn1_c36 <= eRn1_c35;
               d49_c36 <= d49_c35;
               T49s_h_c36 <= T49s_h_c35;
               T49s_l_c36 <= T49s_l_c35;
               U49_c36 <= U49_c35;
               S49_c36 <= S49_c35;
               xsR_c36 <= xsR_c35;
            end if;
            if ce_37 = '1' then
               eRn1_c37 <= eRn1_c36;
               d50_c37 <= d50_c36;
               T50s_h_c37 <= T50s_h_c36;
               T50s_l_c37 <= T50s_l_c36;
               U50_c37 <= U50_c36;
               S50_c37 <= S50_c36;
               xsR_c37 <= xsR_c36;
            end if;
            if ce_38 = '1' then
               eRn1_c38 <= eRn1_c37;
               d51_c38 <= d51_c37;
               T51s_h_c38 <= T51s_h_c37;
               T51s_l_c38 <= T51s_l_c37;
               U51_c38 <= U51_c37;
               S51_c38 <= S51_c37;
               xsR_c38 <= xsR_c37;
            end if;
            if ce_39 = '1' then
               eRn1_c39 <= eRn1_c38;
               d52_c39 <= d52_c38;
               T52s_h_c39 <= T52s_h_c38;
               U52_c39 <= U52_c38;
               S52_c39 <= S52_c38;
               xsR_c39 <= xsR_c38;
            end if;
            if ce_40 = '1' then
               eRn1_c40 <= eRn1_c39;
               fR_c40 <= fR_c39;
               round_c40 <= round_c39;
               xsR_c40 <= xsR_c39;
            end if;
         end if;
      end process;
   fracX_c0 <= X(51 downto 0); -- fraction
   eRn0_c0 <= "0" & X(62 downto 53); -- exponent
   xsX_c0 <= X(65 downto 63); -- exception and sign
   eRn1_c0 <= eRn0_c0 + ("00" & (8 downto 0 => '1')) + X(52);
   fracXnorm_c0 <= "1" & fracX_c0 & "000" when X(52) = '0' else
         "01" & fracX_c0&"00"; -- pre-normalization
   S0_c0 <= "01";
   T1_c0 <= ("0111" + fracXnorm_c0(55 downto 52)) & fracXnorm_c0(51 downto 0);
   -- now implementing the recurrence 
   --  this is a binary non-restoring algorithm, see ASA book
   -- Step 2
   d1_c0 <= not T1_c0(55); --  bit of weight -1
   T1s_c0 <= T1_c0 & "0";
   T1s_h_c0 <= T1s_c0(56 downto 51);
   T1s_l_c0 <= T1s_c0(50 downto 0);
   U1_c0 <=  "0" & S0_c0 & d1_c0 & (not d1_c0) & "1"; 
   T3_h_c1 <=   T1s_h_c1 - U1_c1 when d1_c1='1'
        else T1s_h_c1 + U1_c1;
   T2_c1 <= T3_h_c1(4 downto 0) & T1s_l_c1;
   S1_c0 <= S0_c0 & d1_c0; -- here -1 becomes 0 and 1 becomes 1
   -- Step 3
   d2_c1 <= not T2_c1(55); --  bit of weight -2
   T2s_c1 <= T2_c1 & "0";
   T2s_h_c1 <= T2s_c1(56 downto 50);
   T2s_l_c1 <= T2s_c1(49 downto 0);
   U2_c1 <=  "0" & S1_c1 & d2_c1 & (not d2_c1) & "1"; 
   T4_h_c1 <=   T2s_h_c1 - U2_c1 when d2_c1='1'
        else T2s_h_c1 + U2_c1;
   T3_c1 <= T4_h_c1(5 downto 0) & T2s_l_c1;
   S2_c1 <= S1_c1 & d2_c1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 4
   d3_c1 <= not T3_c1(55); --  bit of weight -3
   T3s_c1 <= T3_c1 & "0";
   T3s_h_c1 <= T3s_c1(56 downto 49);
   T3s_l_c1 <= T3s_c1(48 downto 0);
   U3_c1 <=  "0" & S2_c1 & d3_c1 & (not d3_c1) & "1"; 
   T5_h_c2 <=   T3s_h_c2 - U3_c2 when d3_c2='1'
        else T3s_h_c2 + U3_c2;
   T4_c2 <= T5_h_c2(6 downto 0) & T3s_l_c2;
   S3_c1 <= S2_c1 & d3_c1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 5
   d4_c2 <= not T4_c2(55); --  bit of weight -4
   T4s_c2 <= T4_c2 & "0";
   T4s_h_c2 <= T4s_c2(56 downto 48);
   T4s_l_c2 <= T4s_c2(47 downto 0);
   U4_c2 <=  "0" & S3_c2 & d4_c2 & (not d4_c2) & "1"; 
   T6_h_c2 <=   T4s_h_c2 - U4_c2 when d4_c2='1'
        else T4s_h_c2 + U4_c2;
   T5_c2 <= T6_h_c2(7 downto 0) & T4s_l_c2;
   S4_c2 <= S3_c2 & d4_c2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 6
   d5_c2 <= not T5_c2(55); --  bit of weight -5
   T5s_c2 <= T5_c2 & "0";
   T5s_h_c2 <= T5s_c2(56 downto 47);
   T5s_l_c2 <= T5s_c2(46 downto 0);
   U5_c2 <=  "0" & S4_c2 & d5_c2 & (not d5_c2) & "1"; 
   T7_h_c3 <=   T5s_h_c3 - U5_c3 when d5_c3='1'
        else T5s_h_c3 + U5_c3;
   T6_c3 <= T7_h_c3(8 downto 0) & T5s_l_c3;
   S5_c2 <= S4_c2 & d5_c2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 7
   d6_c3 <= not T6_c3(55); --  bit of weight -6
   T6s_c3 <= T6_c3 & "0";
   T6s_h_c3 <= T6s_c3(56 downto 46);
   T6s_l_c3 <= T6s_c3(45 downto 0);
   U6_c3 <=  "0" & S5_c3 & d6_c3 & (not d6_c3) & "1"; 
   T8_h_c4 <=   T6s_h_c4 - U6_c4 when d6_c4='1'
        else T6s_h_c4 + U6_c4;
   T7_c4 <= T8_h_c4(9 downto 0) & T6s_l_c4;
   S6_c3 <= S5_c3 & d6_c3; -- here -1 becomes 0 and 1 becomes 1
   -- Step 8
   d7_c4 <= not T7_c4(55); --  bit of weight -7
   T7s_c4 <= T7_c4 & "0";
   T7s_h_c4 <= T7s_c4(56 downto 45);
   T7s_l_c4 <= T7s_c4(44 downto 0);
   U7_c4 <=  "0" & S6_c4 & d7_c4 & (not d7_c4) & "1"; 
   T9_h_c4 <=   T7s_h_c4 - U7_c4 when d7_c4='1'
        else T7s_h_c4 + U7_c4;
   T8_c4 <= T9_h_c4(10 downto 0) & T7s_l_c4;
   S7_c4 <= S6_c4 & d7_c4; -- here -1 becomes 0 and 1 becomes 1
   -- Step 9
   d8_c4 <= not T8_c4(55); --  bit of weight -8
   T8s_c4 <= T8_c4 & "0";
   T8s_h_c4 <= T8s_c4(56 downto 44);
   T8s_l_c4 <= T8s_c4(43 downto 0);
   U8_c4 <=  "0" & S7_c4 & d8_c4 & (not d8_c4) & "1"; 
   T10_h_c5 <=   T8s_h_c5 - U8_c5 when d8_c5='1'
        else T8s_h_c5 + U8_c5;
   T9_c5 <= T10_h_c5(11 downto 0) & T8s_l_c5;
   S8_c4 <= S7_c4 & d8_c4; -- here -1 becomes 0 and 1 becomes 1
   -- Step 10
   d9_c5 <= not T9_c5(55); --  bit of weight -9
   T9s_c5 <= T9_c5 & "0";
   T9s_h_c5 <= T9s_c5(56 downto 43);
   T9s_l_c5 <= T9s_c5(42 downto 0);
   U9_c5 <=  "0" & S8_c5 & d9_c5 & (not d9_c5) & "1"; 
   T11_h_c5 <=   T9s_h_c5 - U9_c5 when d9_c5='1'
        else T9s_h_c5 + U9_c5;
   T10_c5 <= T11_h_c5(12 downto 0) & T9s_l_c5;
   S9_c5 <= S8_c5 & d9_c5; -- here -1 becomes 0 and 1 becomes 1
   -- Step 11
   d10_c5 <= not T10_c5(55); --  bit of weight -10
   T10s_c5 <= T10_c5 & "0";
   T10s_h_c5 <= T10s_c5(56 downto 42);
   T10s_l_c5 <= T10s_c5(41 downto 0);
   U10_c5 <=  "0" & S9_c5 & d10_c5 & (not d10_c5) & "1"; 
   T12_h_c6 <=   T10s_h_c6 - U10_c6 when d10_c6='1'
        else T10s_h_c6 + U10_c6;
   T11_c6 <= T12_h_c6(13 downto 0) & T10s_l_c6;
   S10_c5 <= S9_c5 & d10_c5; -- here -1 becomes 0 and 1 becomes 1
   -- Step 12
   d11_c6 <= not T11_c6(55); --  bit of weight -11
   T11s_c6 <= T11_c6 & "0";
   T11s_h_c6 <= T11s_c6(56 downto 41);
   T11s_l_c6 <= T11s_c6(40 downto 0);
   U11_c6 <=  "0" & S10_c6 & d11_c6 & (not d11_c6) & "1"; 
   T13_h_c7 <=   T11s_h_c7 - U11_c7 when d11_c7='1'
        else T11s_h_c7 + U11_c7;
   T12_c7 <= T13_h_c7(14 downto 0) & T11s_l_c7;
   S11_c6 <= S10_c6 & d11_c6; -- here -1 becomes 0 and 1 becomes 1
   -- Step 13
   d12_c7 <= not T12_c7(55); --  bit of weight -12
   T12s_c7 <= T12_c7 & "0";
   T12s_h_c7 <= T12s_c7(56 downto 40);
   T12s_l_c7 <= T12s_c7(39 downto 0);
   U12_c7 <=  "0" & S11_c7 & d12_c7 & (not d12_c7) & "1"; 
   T14_h_c7 <=   T12s_h_c7 - U12_c7 when d12_c7='1'
        else T12s_h_c7 + U12_c7;
   T13_c7 <= T14_h_c7(15 downto 0) & T12s_l_c7;
   S12_c7 <= S11_c7 & d12_c7; -- here -1 becomes 0 and 1 becomes 1
   -- Step 14
   d13_c7 <= not T13_c7(55); --  bit of weight -13
   T13s_c7 <= T13_c7 & "0";
   T13s_h_c7 <= T13s_c7(56 downto 39);
   T13s_l_c7 <= T13s_c7(38 downto 0);
   U13_c7 <=  "0" & S12_c7 & d13_c7 & (not d13_c7) & "1"; 
   T15_h_c8 <=   T13s_h_c8 - U13_c8 when d13_c8='1'
        else T13s_h_c8 + U13_c8;
   T14_c8 <= T15_h_c8(16 downto 0) & T13s_l_c8;
   S13_c7 <= S12_c7 & d13_c7; -- here -1 becomes 0 and 1 becomes 1
   -- Step 15
   d14_c8 <= not T14_c8(55); --  bit of weight -14
   T14s_c8 <= T14_c8 & "0";
   T14s_h_c8 <= T14s_c8(56 downto 38);
   T14s_l_c8 <= T14s_c8(37 downto 0);
   U14_c8 <=  "0" & S13_c8 & d14_c8 & (not d14_c8) & "1"; 
   T16_h_c9 <=   T14s_h_c9 - U14_c9 when d14_c9='1'
        else T14s_h_c9 + U14_c9;
   T15_c9 <= T16_h_c9(17 downto 0) & T14s_l_c9;
   S14_c8 <= S13_c8 & d14_c8; -- here -1 becomes 0 and 1 becomes 1
   -- Step 16
   d15_c9 <= not T15_c9(55); --  bit of weight -15
   T15s_c9 <= T15_c9 & "0";
   T15s_h_c9 <= T15s_c9(56 downto 37);
   T15s_l_c9 <= T15s_c9(36 downto 0);
   U15_c9 <=  "0" & S14_c9 & d15_c9 & (not d15_c9) & "1"; 
   T17_h_c9 <=   T15s_h_c9 - U15_c9 when d15_c9='1'
        else T15s_h_c9 + U15_c9;
   T16_c9 <= T17_h_c9(18 downto 0) & T15s_l_c9;
   S15_c9 <= S14_c9 & d15_c9; -- here -1 becomes 0 and 1 becomes 1
   -- Step 17
   d16_c9 <= not T16_c9(55); --  bit of weight -16
   T16s_c9 <= T16_c9 & "0";
   T16s_h_c9 <= T16s_c9(56 downto 36);
   T16s_l_c9 <= T16s_c9(35 downto 0);
   U16_c9 <=  "0" & S15_c9 & d16_c9 & (not d16_c9) & "1"; 
   T18_h_c10 <=   T16s_h_c10 - U16_c10 when d16_c10='1'
        else T16s_h_c10 + U16_c10;
   T17_c10 <= T18_h_c10(19 downto 0) & T16s_l_c10;
   S16_c9 <= S15_c9 & d16_c9; -- here -1 becomes 0 and 1 becomes 1
   -- Step 18
   d17_c10 <= not T17_c10(55); --  bit of weight -17
   T17s_c10 <= T17_c10 & "0";
   T17s_h_c10 <= T17s_c10(56 downto 35);
   T17s_l_c10 <= T17s_c10(34 downto 0);
   U17_c10 <=  "0" & S16_c10 & d17_c10 & (not d17_c10) & "1"; 
   T19_h_c11 <=   T17s_h_c11 - U17_c11 when d17_c11='1'
        else T17s_h_c11 + U17_c11;
   T18_c11 <= T19_h_c11(20 downto 0) & T17s_l_c11;
   S17_c10 <= S16_c10 & d17_c10; -- here -1 becomes 0 and 1 becomes 1
   -- Step 19
   d18_c11 <= not T18_c11(55); --  bit of weight -18
   T18s_c11 <= T18_c11 & "0";
   T18s_h_c11 <= T18s_c11(56 downto 34);
   T18s_l_c11 <= T18s_c11(33 downto 0);
   U18_c11 <=  "0" & S17_c11 & d18_c11 & (not d18_c11) & "1"; 
   T20_h_c11 <=   T18s_h_c11 - U18_c11 when d18_c11='1'
        else T18s_h_c11 + U18_c11;
   T19_c11 <= T20_h_c11(21 downto 0) & T18s_l_c11;
   S18_c11 <= S17_c11 & d18_c11; -- here -1 becomes 0 and 1 becomes 1
   -- Step 20
   d19_c11 <= not T19_c11(55); --  bit of weight -19
   T19s_c11 <= T19_c11 & "0";
   T19s_h_c11 <= T19s_c11(56 downto 33);
   T19s_l_c11 <= T19s_c11(32 downto 0);
   U19_c11 <=  "0" & S18_c11 & d19_c11 & (not d19_c11) & "1"; 
   T21_h_c12 <=   T19s_h_c12 - U19_c12 when d19_c12='1'
        else T19s_h_c12 + U19_c12;
   T20_c12 <= T21_h_c12(22 downto 0) & T19s_l_c12;
   S19_c11 <= S18_c11 & d19_c11; -- here -1 becomes 0 and 1 becomes 1
   -- Step 21
   d20_c12 <= not T20_c12(55); --  bit of weight -20
   T20s_c12 <= T20_c12 & "0";
   T20s_h_c12 <= T20s_c12(56 downto 32);
   T20s_l_c12 <= T20s_c12(31 downto 0);
   U20_c12 <=  "0" & S19_c12 & d20_c12 & (not d20_c12) & "1"; 
   T22_h_c13 <=   T20s_h_c13 - U20_c13 when d20_c13='1'
        else T20s_h_c13 + U20_c13;
   T21_c13 <= T22_h_c13(23 downto 0) & T20s_l_c13;
   S20_c12 <= S19_c12 & d20_c12; -- here -1 becomes 0 and 1 becomes 1
   -- Step 22
   d21_c13 <= not T21_c13(55); --  bit of weight -21
   T21s_c13 <= T21_c13 & "0";
   T21s_h_c13 <= T21s_c13(56 downto 31);
   T21s_l_c13 <= T21s_c13(30 downto 0);
   U21_c13 <=  "0" & S20_c13 & d21_c13 & (not d21_c13) & "1"; 
   T23_h_c13 <=   T21s_h_c13 - U21_c13 when d21_c13='1'
        else T21s_h_c13 + U21_c13;
   T22_c13 <= T23_h_c13(24 downto 0) & T21s_l_c13;
   S21_c13 <= S20_c13 & d21_c13; -- here -1 becomes 0 and 1 becomes 1
   -- Step 23
   d22_c13 <= not T22_c13(55); --  bit of weight -22
   T22s_c13 <= T22_c13 & "0";
   T22s_h_c13 <= T22s_c13(56 downto 30);
   T22s_l_c13 <= T22s_c13(29 downto 0);
   U22_c13 <=  "0" & S21_c13 & d22_c13 & (not d22_c13) & "1"; 
   T24_h_c14 <=   T22s_h_c14 - U22_c14 when d22_c14='1'
        else T22s_h_c14 + U22_c14;
   T23_c14 <= T24_h_c14(25 downto 0) & T22s_l_c14;
   S22_c13 <= S21_c13 & d22_c13; -- here -1 becomes 0 and 1 becomes 1
   -- Step 24
   d23_c14 <= not T23_c14(55); --  bit of weight -23
   T23s_c14 <= T23_c14 & "0";
   T23s_h_c14 <= T23s_c14(56 downto 29);
   T23s_l_c14 <= T23s_c14(28 downto 0);
   U23_c14 <=  "0" & S22_c14 & d23_c14 & (not d23_c14) & "1"; 
   T25_h_c15 <=   T23s_h_c15 - U23_c15 when d23_c15='1'
        else T23s_h_c15 + U23_c15;
   T24_c15 <= T25_h_c15(26 downto 0) & T23s_l_c15;
   S23_c14 <= S22_c14 & d23_c14; -- here -1 becomes 0 and 1 becomes 1
   -- Step 25
   d24_c15 <= not T24_c15(55); --  bit of weight -24
   T24s_c15 <= T24_c15 & "0";
   T24s_h_c15 <= T24s_c15(56 downto 28);
   T24s_l_c15 <= T24s_c15(27 downto 0);
   U24_c15 <=  "0" & S23_c15 & d24_c15 & (not d24_c15) & "1"; 
   T26_h_c16 <=   T24s_h_c16 - U24_c16 when d24_c16='1'
        else T24s_h_c16 + U24_c16;
   T25_c16 <= T26_h_c16(27 downto 0) & T24s_l_c16;
   S24_c15 <= S23_c15 & d24_c15; -- here -1 becomes 0 and 1 becomes 1
   -- Step 26
   d25_c16 <= not T25_c16(55); --  bit of weight -25
   T25s_c16 <= T25_c16 & "0";
   T25s_h_c16 <= T25s_c16(56 downto 27);
   T25s_l_c16 <= T25s_c16(26 downto 0);
   U25_c16 <=  "0" & S24_c16 & d25_c16 & (not d25_c16) & "1"; 
   T27_h_c16 <=   T25s_h_c16 - U25_c16 when d25_c16='1'
        else T25s_h_c16 + U25_c16;
   T26_c16 <= T27_h_c16(28 downto 0) & T25s_l_c16;
   S25_c16 <= S24_c16 & d25_c16; -- here -1 becomes 0 and 1 becomes 1
   -- Step 27
   d26_c16 <= not T26_c16(55); --  bit of weight -26
   T26s_c16 <= T26_c16 & "0";
   T26s_h_c16 <= T26s_c16(56 downto 26);
   T26s_l_c16 <= T26s_c16(25 downto 0);
   U26_c16 <=  "0" & S25_c16 & d26_c16 & (not d26_c16) & "1"; 
   T28_h_c17 <=   T26s_h_c17 - U26_c17 when d26_c17='1'
        else T26s_h_c17 + U26_c17;
   T27_c17 <= T28_h_c17(29 downto 0) & T26s_l_c17;
   S26_c16 <= S25_c16 & d26_c16; -- here -1 becomes 0 and 1 becomes 1
   -- Step 28
   d27_c17 <= not T27_c17(55); --  bit of weight -27
   T27s_c17 <= T27_c17 & "0";
   T27s_h_c17 <= T27s_c17(56 downto 25);
   T27s_l_c17 <= T27s_c17(24 downto 0);
   U27_c17 <=  "0" & S26_c17 & d27_c17 & (not d27_c17) & "1"; 
   T29_h_c18 <=   T27s_h_c18 - U27_c18 when d27_c18='1'
        else T27s_h_c18 + U27_c18;
   T28_c18 <= T29_h_c18(30 downto 0) & T27s_l_c18;
   S27_c17 <= S26_c17 & d27_c17; -- here -1 becomes 0 and 1 becomes 1
   -- Step 29
   d28_c18 <= not T28_c18(55); --  bit of weight -28
   T28s_c18 <= T28_c18 & "0";
   T28s_h_c18 <= T28s_c18(56 downto 24);
   T28s_l_c18 <= T28s_c18(23 downto 0);
   U28_c18 <=  "0" & S27_c18 & d28_c18 & (not d28_c18) & "1"; 
   T30_h_c19 <=   T28s_h_c19 - U28_c19 when d28_c19='1'
        else T28s_h_c19 + U28_c19;
   T29_c19 <= T30_h_c19(31 downto 0) & T28s_l_c19;
   S28_c18 <= S27_c18 & d28_c18; -- here -1 becomes 0 and 1 becomes 1
   -- Step 30
   d29_c19 <= not T29_c19(55); --  bit of weight -29
   T29s_c19 <= T29_c19 & "0";
   T29s_h_c19 <= T29s_c19(56 downto 23);
   T29s_l_c19 <= T29s_c19(22 downto 0);
   U29_c19 <=  "0" & S28_c19 & d29_c19 & (not d29_c19) & "1"; 
   T31_h_c19 <=   T29s_h_c19 - U29_c19 when d29_c19='1'
        else T29s_h_c19 + U29_c19;
   T30_c19 <= T31_h_c19(32 downto 0) & T29s_l_c19;
   S29_c19 <= S28_c19 & d29_c19; -- here -1 becomes 0 and 1 becomes 1
   -- Step 31
   d30_c19 <= not T30_c19(55); --  bit of weight -30
   T30s_c19 <= T30_c19 & "0";
   T30s_h_c19 <= T30s_c19(56 downto 22);
   T30s_l_c19 <= T30s_c19(21 downto 0);
   U30_c19 <=  "0" & S29_c19 & d30_c19 & (not d30_c19) & "1"; 
   T32_h_c20 <=   T30s_h_c20 - U30_c20 when d30_c20='1'
        else T30s_h_c20 + U30_c20;
   T31_c20 <= T32_h_c20(33 downto 0) & T30s_l_c20;
   S30_c19 <= S29_c19 & d30_c19; -- here -1 becomes 0 and 1 becomes 1
   -- Step 32
   d31_c20 <= not T31_c20(55); --  bit of weight -31
   T31s_c20 <= T31_c20 & "0";
   T31s_h_c20 <= T31s_c20(56 downto 21);
   T31s_l_c20 <= T31s_c20(20 downto 0);
   U31_c20 <=  "0" & S30_c20 & d31_c20 & (not d31_c20) & "1"; 
   T33_h_c21 <=   T31s_h_c21 - U31_c21 when d31_c21='1'
        else T31s_h_c21 + U31_c21;
   T32_c21 <= T33_h_c21(34 downto 0) & T31s_l_c21;
   S31_c20 <= S30_c20 & d31_c20; -- here -1 becomes 0 and 1 becomes 1
   -- Step 33
   d32_c21 <= not T32_c21(55); --  bit of weight -32
   T32s_c21 <= T32_c21 & "0";
   T32s_h_c21 <= T32s_c21(56 downto 20);
   T32s_l_c21 <= T32s_c21(19 downto 0);
   U32_c21 <=  "0" & S31_c21 & d32_c21 & (not d32_c21) & "1"; 
   T34_h_c22 <=   T32s_h_c22 - U32_c22 when d32_c22='1'
        else T32s_h_c22 + U32_c22;
   T33_c22 <= T34_h_c22(35 downto 0) & T32s_l_c22;
   S32_c21 <= S31_c21 & d32_c21; -- here -1 becomes 0 and 1 becomes 1
   -- Step 34
   d33_c22 <= not T33_c22(55); --  bit of weight -33
   T33s_c22 <= T33_c22 & "0";
   T33s_h_c22 <= T33s_c22(56 downto 19);
   T33s_l_c22 <= T33s_c22(18 downto 0);
   U33_c22 <=  "0" & S32_c22 & d33_c22 & (not d33_c22) & "1"; 
   T35_h_c22 <=   T33s_h_c22 - U33_c22 when d33_c22='1'
        else T33s_h_c22 + U33_c22;
   T34_c22 <= T35_h_c22(36 downto 0) & T33s_l_c22;
   S33_c22 <= S32_c22 & d33_c22; -- here -1 becomes 0 and 1 becomes 1
   -- Step 35
   d34_c22 <= not T34_c22(55); --  bit of weight -34
   T34s_c22 <= T34_c22 & "0";
   T34s_h_c22 <= T34s_c22(56 downto 18);
   T34s_l_c22 <= T34s_c22(17 downto 0);
   U34_c22 <=  "0" & S33_c22 & d34_c22 & (not d34_c22) & "1"; 
   T36_h_c23 <=   T34s_h_c23 - U34_c23 when d34_c23='1'
        else T34s_h_c23 + U34_c23;
   T35_c23 <= T36_h_c23(37 downto 0) & T34s_l_c23;
   S34_c22 <= S33_c22 & d34_c22; -- here -1 becomes 0 and 1 becomes 1
   -- Step 36
   d35_c23 <= not T35_c23(55); --  bit of weight -35
   T35s_c23 <= T35_c23 & "0";
   T35s_h_c23 <= T35s_c23(56 downto 17);
   T35s_l_c23 <= T35s_c23(16 downto 0);
   U35_c23 <=  "0" & S34_c23 & d35_c23 & (not d35_c23) & "1"; 
   T37_h_c24 <=   T35s_h_c24 - U35_c24 when d35_c24='1'
        else T35s_h_c24 + U35_c24;
   T36_c24 <= T37_h_c24(38 downto 0) & T35s_l_c24;
   S35_c23 <= S34_c23 & d35_c23; -- here -1 becomes 0 and 1 becomes 1
   -- Step 37
   d36_c24 <= not T36_c24(55); --  bit of weight -36
   T36s_c24 <= T36_c24 & "0";
   T36s_h_c24 <= T36s_c24(56 downto 16);
   T36s_l_c24 <= T36s_c24(15 downto 0);
   U36_c24 <=  "0" & S35_c24 & d36_c24 & (not d36_c24) & "1"; 
   T38_h_c25 <=   T36s_h_c25 - U36_c25 when d36_c25='1'
        else T36s_h_c25 + U36_c25;
   T37_c25 <= T38_h_c25(39 downto 0) & T36s_l_c25;
   S36_c24 <= S35_c24 & d36_c24; -- here -1 becomes 0 and 1 becomes 1
   -- Step 38
   d37_c25 <= not T37_c25(55); --  bit of weight -37
   T37s_c25 <= T37_c25 & "0";
   T37s_h_c25 <= T37s_c25(56 downto 15);
   T37s_l_c25 <= T37s_c25(14 downto 0);
   U37_c25 <=  "0" & S36_c25 & d37_c25 & (not d37_c25) & "1"; 
   T39_h_c26 <=   T37s_h_c26 - U37_c26 when d37_c26='1'
        else T37s_h_c26 + U37_c26;
   T38_c26 <= T39_h_c26(40 downto 0) & T37s_l_c26;
   S37_c25 <= S36_c25 & d37_c25; -- here -1 becomes 0 and 1 becomes 1
   -- Step 39
   d38_c26 <= not T38_c26(55); --  bit of weight -38
   T38s_c26 <= T38_c26 & "0";
   T38s_h_c26 <= T38s_c26(56 downto 14);
   T38s_l_c26 <= T38s_c26(13 downto 0);
   U38_c26 <=  "0" & S37_c26 & d38_c26 & (not d38_c26) & "1"; 
   T40_h_c27 <=   T38s_h_c27 - U38_c27 when d38_c27='1'
        else T38s_h_c27 + U38_c27;
   T39_c27 <= T40_h_c27(41 downto 0) & T38s_l_c27;
   S38_c26 <= S37_c26 & d38_c26; -- here -1 becomes 0 and 1 becomes 1
   -- Step 40
   d39_c27 <= not T39_c27(55); --  bit of weight -39
   T39s_c27 <= T39_c27 & "0";
   T39s_h_c27 <= T39s_c27(56 downto 13);
   T39s_l_c27 <= T39s_c27(12 downto 0);
   U39_c27 <=  "0" & S38_c27 & d39_c27 & (not d39_c27) & "1"; 
   T41_h_c27 <=   T39s_h_c27 - U39_c27 when d39_c27='1'
        else T39s_h_c27 + U39_c27;
   T40_c27 <= T41_h_c27(42 downto 0) & T39s_l_c27;
   S39_c27 <= S38_c27 & d39_c27; -- here -1 becomes 0 and 1 becomes 1
   -- Step 41
   d40_c27 <= not T40_c27(55); --  bit of weight -40
   T40s_c27 <= T40_c27 & "0";
   T40s_h_c27 <= T40s_c27(56 downto 12);
   T40s_l_c27 <= T40s_c27(11 downto 0);
   U40_c27 <=  "0" & S39_c27 & d40_c27 & (not d40_c27) & "1"; 
   T42_h_c28 <=   T40s_h_c28 - U40_c28 when d40_c28='1'
        else T40s_h_c28 + U40_c28;
   T41_c28 <= T42_h_c28(43 downto 0) & T40s_l_c28;
   S40_c27 <= S39_c27 & d40_c27; -- here -1 becomes 0 and 1 becomes 1
   -- Step 42
   d41_c28 <= not T41_c28(55); --  bit of weight -41
   T41s_c28 <= T41_c28 & "0";
   T41s_h_c28 <= T41s_c28(56 downto 11);
   T41s_l_c28 <= T41s_c28(10 downto 0);
   U41_c28 <=  "0" & S40_c28 & d41_c28 & (not d41_c28) & "1"; 
   T43_h_c29 <=   T41s_h_c29 - U41_c29 when d41_c29='1'
        else T41s_h_c29 + U41_c29;
   T42_c29 <= T43_h_c29(44 downto 0) & T41s_l_c29;
   S41_c28 <= S40_c28 & d41_c28; -- here -1 becomes 0 and 1 becomes 1
   -- Step 43
   d42_c29 <= not T42_c29(55); --  bit of weight -42
   T42s_c29 <= T42_c29 & "0";
   T42s_h_c29 <= T42s_c29(56 downto 10);
   T42s_l_c29 <= T42s_c29(9 downto 0);
   U42_c29 <=  "0" & S41_c29 & d42_c29 & (not d42_c29) & "1"; 
   T44_h_c30 <=   T42s_h_c30 - U42_c30 when d42_c30='1'
        else T42s_h_c30 + U42_c30;
   T43_c30 <= T44_h_c30(45 downto 0) & T42s_l_c30;
   S42_c29 <= S41_c29 & d42_c29; -- here -1 becomes 0 and 1 becomes 1
   -- Step 44
   d43_c30 <= not T43_c30(55); --  bit of weight -43
   T43s_c30 <= T43_c30 & "0";
   T43s_h_c30 <= T43s_c30(56 downto 9);
   T43s_l_c30 <= T43s_c30(8 downto 0);
   U43_c30 <=  "0" & S42_c30 & d43_c30 & (not d43_c30) & "1"; 
   T45_h_c31 <=   T43s_h_c31 - U43_c31 when d43_c31='1'
        else T43s_h_c31 + U43_c31;
   T44_c31 <= T45_h_c31(46 downto 0) & T43s_l_c31;
   S43_c30 <= S42_c30 & d43_c30; -- here -1 becomes 0 and 1 becomes 1
   -- Step 45
   d44_c31 <= not T44_c31(55); --  bit of weight -44
   T44s_c31 <= T44_c31 & "0";
   T44s_h_c31 <= T44s_c31(56 downto 8);
   T44s_l_c31 <= T44s_c31(7 downto 0);
   U44_c31 <=  "0" & S43_c31 & d44_c31 & (not d44_c31) & "1"; 
   T46_h_c32 <=   T44s_h_c32 - U44_c32 when d44_c32='1'
        else T44s_h_c32 + U44_c32;
   T45_c32 <= T46_h_c32(47 downto 0) & T44s_l_c32;
   S44_c31 <= S43_c31 & d44_c31; -- here -1 becomes 0 and 1 becomes 1
   -- Step 46
   d45_c32 <= not T45_c32(55); --  bit of weight -45
   T45s_c32 <= T45_c32 & "0";
   T45s_h_c32 <= T45s_c32(56 downto 7);
   T45s_l_c32 <= T45s_c32(6 downto 0);
   U45_c32 <=  "0" & S44_c32 & d45_c32 & (not d45_c32) & "1"; 
   T47_h_c32 <=   T45s_h_c32 - U45_c32 when d45_c32='1'
        else T45s_h_c32 + U45_c32;
   T46_c32 <= T47_h_c32(48 downto 0) & T45s_l_c32;
   S45_c32 <= S44_c32 & d45_c32; -- here -1 becomes 0 and 1 becomes 1
   -- Step 47
   d46_c32 <= not T46_c32(55); --  bit of weight -46
   T46s_c32 <= T46_c32 & "0";
   T46s_h_c32 <= T46s_c32(56 downto 6);
   T46s_l_c32 <= T46s_c32(5 downto 0);
   U46_c32 <=  "0" & S45_c32 & d46_c32 & (not d46_c32) & "1"; 
   T48_h_c33 <=   T46s_h_c33 - U46_c33 when d46_c33='1'
        else T46s_h_c33 + U46_c33;
   T47_c33 <= T48_h_c33(49 downto 0) & T46s_l_c33;
   S46_c32 <= S45_c32 & d46_c32; -- here -1 becomes 0 and 1 becomes 1
   -- Step 48
   d47_c33 <= not T47_c33(55); --  bit of weight -47
   T47s_c33 <= T47_c33 & "0";
   T47s_h_c33 <= T47s_c33(56 downto 5);
   T47s_l_c33 <= T47s_c33(4 downto 0);
   U47_c33 <=  "0" & S46_c33 & d47_c33 & (not d47_c33) & "1"; 
   T49_h_c34 <=   T47s_h_c34 - U47_c34 when d47_c34='1'
        else T47s_h_c34 + U47_c34;
   T48_c34 <= T49_h_c34(50 downto 0) & T47s_l_c34;
   S47_c33 <= S46_c33 & d47_c33; -- here -1 becomes 0 and 1 becomes 1
   -- Step 49
   d48_c34 <= not T48_c34(55); --  bit of weight -48
   T48s_c34 <= T48_c34 & "0";
   T48s_h_c34 <= T48s_c34(56 downto 4);
   T48s_l_c34 <= T48s_c34(3 downto 0);
   U48_c34 <=  "0" & S47_c34 & d48_c34 & (not d48_c34) & "1"; 
   T50_h_c35 <=   T48s_h_c35 - U48_c35 when d48_c35='1'
        else T48s_h_c35 + U48_c35;
   T49_c35 <= T50_h_c35(51 downto 0) & T48s_l_c35;
   S48_c34 <= S47_c34 & d48_c34; -- here -1 becomes 0 and 1 becomes 1
   -- Step 50
   d49_c35 <= not T49_c35(55); --  bit of weight -49
   T49s_c35 <= T49_c35 & "0";
   T49s_h_c35 <= T49s_c35(56 downto 3);
   T49s_l_c35 <= T49s_c35(2 downto 0);
   U49_c35 <=  "0" & S48_c35 & d49_c35 & (not d49_c35) & "1"; 
   T51_h_c36 <=   T49s_h_c36 - U49_c36 when d49_c36='1'
        else T49s_h_c36 + U49_c36;
   T50_c36 <= T51_h_c36(52 downto 0) & T49s_l_c36;
   S49_c35 <= S48_c35 & d49_c35; -- here -1 becomes 0 and 1 becomes 1
   -- Step 51
   d50_c36 <= not T50_c36(55); --  bit of weight -50
   T50s_c36 <= T50_c36 & "0";
   T50s_h_c36 <= T50s_c36(56 downto 2);
   T50s_l_c36 <= T50s_c36(1 downto 0);
   U50_c36 <=  "0" & S49_c36 & d50_c36 & (not d50_c36) & "1"; 
   T52_h_c37 <=   T50s_h_c37 - U50_c37 when d50_c37='1'
        else T50s_h_c37 + U50_c37;
   T51_c37 <= T52_h_c37(53 downto 0) & T50s_l_c37;
   S50_c36 <= S49_c36 & d50_c36; -- here -1 becomes 0 and 1 becomes 1
   -- Step 52
   d51_c37 <= not T51_c37(55); --  bit of weight -51
   T51s_c37 <= T51_c37 & "0";
   T51s_h_c37 <= T51s_c37(56 downto 1);
   T51s_l_c37 <= T51s_c37(0 downto 0);
   U51_c37 <=  "0" & S50_c37 & d51_c37 & (not d51_c37) & "1"; 
   T53_h_c38 <=   T51s_h_c38 - U51_c38 when d51_c38='1'
        else T51s_h_c38 + U51_c38;
   T52_c38 <= T53_h_c38(54 downto 0) & T51s_l_c38;
   S51_c37 <= S50_c37 & d51_c37; -- here -1 becomes 0 and 1 becomes 1
   -- Step 53
   d52_c38 <= not T52_c38(55); --  bit of weight -52
   T52s_c38 <= T52_c38 & "0";
   T52s_h_c38 <= T52s_c38(56 downto 0);
   U52_c38 <=  "0" & S51_c38 & d52_c38 & (not d52_c38) & "1"; 
   T54_h_c39 <=   T52s_h_c39 - U52_c39 when d52_c39='1'
        else T52s_h_c39 + U52_c39;
   T53_c39 <= T54_h_c39(55 downto 0);
   S52_c38 <= S51_c38 & d52_c38; -- here -1 becomes 0 and 1 becomes 1
   d54_c39 <= not T53_c39(55) ; -- the sign of the remainder will become the round bit
   mR_c39 <= S52_c39 & d54_c39; -- result significand
   fR_c39 <= mR_c39(52 downto 1);-- removing leading 1
   round_c39 <= mR_c39(0); -- round bit
   fRrnd_c40 <= fR_c40 + ((51 downto 1 => '0') & round_c40); -- rounding sqrt never changes exponents 
   Rn2_c40 <= eRn1_c40 & fRrnd_c40;
   -- sign and exception processing
   with xsX_c0  select 
      xsR_c0 <= "010"  when "010",  -- normal case
             "100"  when "100",  -- +infty
             "000"  when "000",  -- +0
             "001"  when "001",  -- the infamous sqrt(-0)=-0
             "110"  when others; -- return NaN
   R <= xsR_c40 & Rn2_c40; 
end architecture;



