--------------------------------------------------------------------------------
--                          FloatingPointSquareRoot
--                               (FPSqrt_11_52)
-- VHDL generated for Kintex7 @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 7 cycles
-- Clock period (ns): 10
-- Target frequency (MHz): 100
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
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7 : in std_logic;
          X : in  std_logic_vector(11+52+2 downto 0);
          R : out  std_logic_vector(11+52+2 downto 0)   );
end entity;

architecture arch of FloatingPointSquareRoot is
signal fracX_c0 :  std_logic_vector(51 downto 0);
signal eRn0_c0 :  std_logic_vector(10 downto 0);
signal xsX_c0 :  std_logic_vector(2 downto 0);
signal eRn1_c0, eRn1_c1, eRn1_c2, eRn1_c3, eRn1_c4, eRn1_c5, eRn1_c6, eRn1_c7 :  std_logic_vector(10 downto 0);
signal fracXnorm_c0 :  std_logic_vector(55 downto 0);
signal S0_c0 :  std_logic_vector(1 downto 0);
signal T1_c0 :  std_logic_vector(55 downto 0);
signal d1_c0 :  std_logic;
signal T1s_c0 :  std_logic_vector(56 downto 0);
signal T1s_h_c0 :  std_logic_vector(5 downto 0);
signal T1s_l_c0 :  std_logic_vector(50 downto 0);
signal U1_c0 :  std_logic_vector(5 downto 0);
signal T3_h_c0 :  std_logic_vector(5 downto 0);
signal T2_c0 :  std_logic_vector(55 downto 0);
signal S1_c0 :  std_logic_vector(2 downto 0);
signal d2_c0 :  std_logic;
signal T2s_c0 :  std_logic_vector(56 downto 0);
signal T2s_h_c0 :  std_logic_vector(6 downto 0);
signal T2s_l_c0 :  std_logic_vector(49 downto 0);
signal U2_c0 :  std_logic_vector(6 downto 0);
signal T4_h_c0 :  std_logic_vector(6 downto 0);
signal T3_c0 :  std_logic_vector(55 downto 0);
signal S2_c0 :  std_logic_vector(3 downto 0);
signal d3_c0 :  std_logic;
signal T3s_c0 :  std_logic_vector(56 downto 0);
signal T3s_h_c0 :  std_logic_vector(7 downto 0);
signal T3s_l_c0 :  std_logic_vector(48 downto 0);
signal U3_c0 :  std_logic_vector(7 downto 0);
signal T5_h_c0 :  std_logic_vector(7 downto 0);
signal T4_c0 :  std_logic_vector(55 downto 0);
signal S3_c0 :  std_logic_vector(4 downto 0);
signal d4_c0 :  std_logic;
signal T4s_c0 :  std_logic_vector(56 downto 0);
signal T4s_h_c0 :  std_logic_vector(8 downto 0);
signal T4s_l_c0 :  std_logic_vector(47 downto 0);
signal U4_c0 :  std_logic_vector(8 downto 0);
signal T6_h_c0 :  std_logic_vector(8 downto 0);
signal T5_c0 :  std_logic_vector(55 downto 0);
signal S4_c0 :  std_logic_vector(5 downto 0);
signal d5_c0 :  std_logic;
signal T5s_c0 :  std_logic_vector(56 downto 0);
signal T5s_h_c0 :  std_logic_vector(9 downto 0);
signal T5s_l_c0 :  std_logic_vector(46 downto 0);
signal U5_c0 :  std_logic_vector(9 downto 0);
signal T7_h_c0 :  std_logic_vector(9 downto 0);
signal T6_c0 :  std_logic_vector(55 downto 0);
signal S5_c0 :  std_logic_vector(6 downto 0);
signal d6_c0 :  std_logic;
signal T6s_c0 :  std_logic_vector(56 downto 0);
signal T6s_h_c0 :  std_logic_vector(10 downto 0);
signal T6s_l_c0 :  std_logic_vector(45 downto 0);
signal U6_c0 :  std_logic_vector(10 downto 0);
signal T8_h_c0 :  std_logic_vector(10 downto 0);
signal T7_c0 :  std_logic_vector(55 downto 0);
signal S6_c0 :  std_logic_vector(7 downto 0);
signal d7_c0 :  std_logic;
signal T7s_c0 :  std_logic_vector(56 downto 0);
signal T7s_h_c0 :  std_logic_vector(11 downto 0);
signal T7s_l_c0 :  std_logic_vector(44 downto 0);
signal U7_c0 :  std_logic_vector(11 downto 0);
signal T9_h_c0 :  std_logic_vector(11 downto 0);
signal T8_c0 :  std_logic_vector(55 downto 0);
signal S7_c0 :  std_logic_vector(8 downto 0);
signal d8_c0 :  std_logic;
signal T8s_c0 :  std_logic_vector(56 downto 0);
signal T8s_h_c0 :  std_logic_vector(12 downto 0);
signal T8s_l_c0 :  std_logic_vector(43 downto 0);
signal U8_c0 :  std_logic_vector(12 downto 0);
signal T10_h_c0 :  std_logic_vector(12 downto 0);
signal T9_c0 :  std_logic_vector(55 downto 0);
signal S8_c0 :  std_logic_vector(9 downto 0);
signal d9_c0, d9_c1 :  std_logic;
signal T9s_c0 :  std_logic_vector(56 downto 0);
signal T9s_h_c0, T9s_h_c1 :  std_logic_vector(13 downto 0);
signal T9s_l_c0, T9s_l_c1 :  std_logic_vector(42 downto 0);
signal U9_c0, U9_c1 :  std_logic_vector(13 downto 0);
signal T11_h_c1 :  std_logic_vector(13 downto 0);
signal T10_c1 :  std_logic_vector(55 downto 0);
signal S9_c0, S9_c1 :  std_logic_vector(10 downto 0);
signal d10_c1 :  std_logic;
signal T10s_c1 :  std_logic_vector(56 downto 0);
signal T10s_h_c1 :  std_logic_vector(14 downto 0);
signal T10s_l_c1 :  std_logic_vector(41 downto 0);
signal U10_c1 :  std_logic_vector(14 downto 0);
signal T12_h_c1 :  std_logic_vector(14 downto 0);
signal T11_c1 :  std_logic_vector(55 downto 0);
signal S10_c1 :  std_logic_vector(11 downto 0);
signal d11_c1 :  std_logic;
signal T11s_c1 :  std_logic_vector(56 downto 0);
signal T11s_h_c1 :  std_logic_vector(15 downto 0);
signal T11s_l_c1 :  std_logic_vector(40 downto 0);
signal U11_c1 :  std_logic_vector(15 downto 0);
signal T13_h_c1 :  std_logic_vector(15 downto 0);
signal T12_c1 :  std_logic_vector(55 downto 0);
signal S11_c1 :  std_logic_vector(12 downto 0);
signal d12_c1 :  std_logic;
signal T12s_c1 :  std_logic_vector(56 downto 0);
signal T12s_h_c1 :  std_logic_vector(16 downto 0);
signal T12s_l_c1 :  std_logic_vector(39 downto 0);
signal U12_c1 :  std_logic_vector(16 downto 0);
signal T14_h_c1 :  std_logic_vector(16 downto 0);
signal T13_c1 :  std_logic_vector(55 downto 0);
signal S12_c1 :  std_logic_vector(13 downto 0);
signal d13_c1 :  std_logic;
signal T13s_c1 :  std_logic_vector(56 downto 0);
signal T13s_h_c1 :  std_logic_vector(17 downto 0);
signal T13s_l_c1 :  std_logic_vector(38 downto 0);
signal U13_c1 :  std_logic_vector(17 downto 0);
signal T15_h_c1 :  std_logic_vector(17 downto 0);
signal T14_c1 :  std_logic_vector(55 downto 0);
signal S13_c1 :  std_logic_vector(14 downto 0);
signal d14_c1 :  std_logic;
signal T14s_c1 :  std_logic_vector(56 downto 0);
signal T14s_h_c1 :  std_logic_vector(18 downto 0);
signal T14s_l_c1 :  std_logic_vector(37 downto 0);
signal U14_c1 :  std_logic_vector(18 downto 0);
signal T16_h_c1 :  std_logic_vector(18 downto 0);
signal T15_c1 :  std_logic_vector(55 downto 0);
signal S14_c1 :  std_logic_vector(15 downto 0);
signal d15_c1 :  std_logic;
signal T15s_c1 :  std_logic_vector(56 downto 0);
signal T15s_h_c1 :  std_logic_vector(19 downto 0);
signal T15s_l_c1 :  std_logic_vector(36 downto 0);
signal U15_c1 :  std_logic_vector(19 downto 0);
signal T17_h_c1 :  std_logic_vector(19 downto 0);
signal T16_c1 :  std_logic_vector(55 downto 0);
signal S15_c1 :  std_logic_vector(16 downto 0);
signal d16_c1 :  std_logic;
signal T16s_c1 :  std_logic_vector(56 downto 0);
signal T16s_h_c1 :  std_logic_vector(20 downto 0);
signal T16s_l_c1 :  std_logic_vector(35 downto 0);
signal U16_c1 :  std_logic_vector(20 downto 0);
signal T18_h_c1 :  std_logic_vector(20 downto 0);
signal T17_c1 :  std_logic_vector(55 downto 0);
signal S16_c1 :  std_logic_vector(17 downto 0);
signal d17_c1, d17_c2 :  std_logic;
signal T17s_c1 :  std_logic_vector(56 downto 0);
signal T17s_h_c1, T17s_h_c2 :  std_logic_vector(21 downto 0);
signal T17s_l_c1, T17s_l_c2 :  std_logic_vector(34 downto 0);
signal U17_c1, U17_c2 :  std_logic_vector(21 downto 0);
signal T19_h_c2 :  std_logic_vector(21 downto 0);
signal T18_c2 :  std_logic_vector(55 downto 0);
signal S17_c1, S17_c2 :  std_logic_vector(18 downto 0);
signal d18_c2 :  std_logic;
signal T18s_c2 :  std_logic_vector(56 downto 0);
signal T18s_h_c2 :  std_logic_vector(22 downto 0);
signal T18s_l_c2 :  std_logic_vector(33 downto 0);
signal U18_c2 :  std_logic_vector(22 downto 0);
signal T20_h_c2 :  std_logic_vector(22 downto 0);
signal T19_c2 :  std_logic_vector(55 downto 0);
signal S18_c2 :  std_logic_vector(19 downto 0);
signal d19_c2 :  std_logic;
signal T19s_c2 :  std_logic_vector(56 downto 0);
signal T19s_h_c2 :  std_logic_vector(23 downto 0);
signal T19s_l_c2 :  std_logic_vector(32 downto 0);
signal U19_c2 :  std_logic_vector(23 downto 0);
signal T21_h_c2 :  std_logic_vector(23 downto 0);
signal T20_c2 :  std_logic_vector(55 downto 0);
signal S19_c2 :  std_logic_vector(20 downto 0);
signal d20_c2 :  std_logic;
signal T20s_c2 :  std_logic_vector(56 downto 0);
signal T20s_h_c2 :  std_logic_vector(24 downto 0);
signal T20s_l_c2 :  std_logic_vector(31 downto 0);
signal U20_c2 :  std_logic_vector(24 downto 0);
signal T22_h_c2 :  std_logic_vector(24 downto 0);
signal T21_c2 :  std_logic_vector(55 downto 0);
signal S20_c2 :  std_logic_vector(21 downto 0);
signal d21_c2 :  std_logic;
signal T21s_c2 :  std_logic_vector(56 downto 0);
signal T21s_h_c2 :  std_logic_vector(25 downto 0);
signal T21s_l_c2 :  std_logic_vector(30 downto 0);
signal U21_c2 :  std_logic_vector(25 downto 0);
signal T23_h_c2 :  std_logic_vector(25 downto 0);
signal T22_c2 :  std_logic_vector(55 downto 0);
signal S21_c2 :  std_logic_vector(22 downto 0);
signal d22_c2 :  std_logic;
signal T22s_c2 :  std_logic_vector(56 downto 0);
signal T22s_h_c2 :  std_logic_vector(26 downto 0);
signal T22s_l_c2 :  std_logic_vector(29 downto 0);
signal U22_c2 :  std_logic_vector(26 downto 0);
signal T24_h_c2 :  std_logic_vector(26 downto 0);
signal T23_c2 :  std_logic_vector(55 downto 0);
signal S22_c2 :  std_logic_vector(23 downto 0);
signal d23_c2 :  std_logic;
signal T23s_c2 :  std_logic_vector(56 downto 0);
signal T23s_h_c2 :  std_logic_vector(27 downto 0);
signal T23s_l_c2 :  std_logic_vector(28 downto 0);
signal U23_c2 :  std_logic_vector(27 downto 0);
signal T25_h_c2 :  std_logic_vector(27 downto 0);
signal T24_c2 :  std_logic_vector(55 downto 0);
signal S23_c2 :  std_logic_vector(24 downto 0);
signal d24_c2 :  std_logic;
signal T24s_c2 :  std_logic_vector(56 downto 0);
signal T24s_h_c2 :  std_logic_vector(28 downto 0);
signal T24s_l_c2 :  std_logic_vector(27 downto 0);
signal U24_c2 :  std_logic_vector(28 downto 0);
signal T26_h_c2 :  std_logic_vector(28 downto 0);
signal T25_c2 :  std_logic_vector(55 downto 0);
signal S24_c2 :  std_logic_vector(25 downto 0);
signal d25_c2, d25_c3 :  std_logic;
signal T25s_c2 :  std_logic_vector(56 downto 0);
signal T25s_h_c2, T25s_h_c3 :  std_logic_vector(29 downto 0);
signal T25s_l_c2, T25s_l_c3 :  std_logic_vector(26 downto 0);
signal U25_c2, U25_c3 :  std_logic_vector(29 downto 0);
signal T27_h_c3 :  std_logic_vector(29 downto 0);
signal T26_c3 :  std_logic_vector(55 downto 0);
signal S25_c2, S25_c3 :  std_logic_vector(26 downto 0);
signal d26_c3 :  std_logic;
signal T26s_c3 :  std_logic_vector(56 downto 0);
signal T26s_h_c3 :  std_logic_vector(30 downto 0);
signal T26s_l_c3 :  std_logic_vector(25 downto 0);
signal U26_c3 :  std_logic_vector(30 downto 0);
signal T28_h_c3 :  std_logic_vector(30 downto 0);
signal T27_c3 :  std_logic_vector(55 downto 0);
signal S26_c3 :  std_logic_vector(27 downto 0);
signal d27_c3 :  std_logic;
signal T27s_c3 :  std_logic_vector(56 downto 0);
signal T27s_h_c3 :  std_logic_vector(31 downto 0);
signal T27s_l_c3 :  std_logic_vector(24 downto 0);
signal U27_c3 :  std_logic_vector(31 downto 0);
signal T29_h_c3 :  std_logic_vector(31 downto 0);
signal T28_c3 :  std_logic_vector(55 downto 0);
signal S27_c3 :  std_logic_vector(28 downto 0);
signal d28_c3 :  std_logic;
signal T28s_c3 :  std_logic_vector(56 downto 0);
signal T28s_h_c3 :  std_logic_vector(32 downto 0);
signal T28s_l_c3 :  std_logic_vector(23 downto 0);
signal U28_c3 :  std_logic_vector(32 downto 0);
signal T30_h_c3 :  std_logic_vector(32 downto 0);
signal T29_c3 :  std_logic_vector(55 downto 0);
signal S28_c3 :  std_logic_vector(29 downto 0);
signal d29_c3 :  std_logic;
signal T29s_c3 :  std_logic_vector(56 downto 0);
signal T29s_h_c3 :  std_logic_vector(33 downto 0);
signal T29s_l_c3 :  std_logic_vector(22 downto 0);
signal U29_c3 :  std_logic_vector(33 downto 0);
signal T31_h_c3 :  std_logic_vector(33 downto 0);
signal T30_c3 :  std_logic_vector(55 downto 0);
signal S29_c3 :  std_logic_vector(30 downto 0);
signal d30_c3 :  std_logic;
signal T30s_c3 :  std_logic_vector(56 downto 0);
signal T30s_h_c3 :  std_logic_vector(34 downto 0);
signal T30s_l_c3 :  std_logic_vector(21 downto 0);
signal U30_c3 :  std_logic_vector(34 downto 0);
signal T32_h_c3 :  std_logic_vector(34 downto 0);
signal T31_c3 :  std_logic_vector(55 downto 0);
signal S30_c3 :  std_logic_vector(31 downto 0);
signal d31_c3 :  std_logic;
signal T31s_c3 :  std_logic_vector(56 downto 0);
signal T31s_h_c3 :  std_logic_vector(35 downto 0);
signal T31s_l_c3 :  std_logic_vector(20 downto 0);
signal U31_c3 :  std_logic_vector(35 downto 0);
signal T33_h_c3 :  std_logic_vector(35 downto 0);
signal T32_c3 :  std_logic_vector(55 downto 0);
signal S31_c3 :  std_logic_vector(32 downto 0);
signal d32_c3, d32_c4 :  std_logic;
signal T32s_c3 :  std_logic_vector(56 downto 0);
signal T32s_h_c3, T32s_h_c4 :  std_logic_vector(36 downto 0);
signal T32s_l_c3, T32s_l_c4 :  std_logic_vector(19 downto 0);
signal U32_c3, U32_c4 :  std_logic_vector(36 downto 0);
signal T34_h_c4 :  std_logic_vector(36 downto 0);
signal T33_c4 :  std_logic_vector(55 downto 0);
signal S32_c3, S32_c4 :  std_logic_vector(33 downto 0);
signal d33_c4 :  std_logic;
signal T33s_c4 :  std_logic_vector(56 downto 0);
signal T33s_h_c4 :  std_logic_vector(37 downto 0);
signal T33s_l_c4 :  std_logic_vector(18 downto 0);
signal U33_c4 :  std_logic_vector(37 downto 0);
signal T35_h_c4 :  std_logic_vector(37 downto 0);
signal T34_c4 :  std_logic_vector(55 downto 0);
signal S33_c4 :  std_logic_vector(34 downto 0);
signal d34_c4 :  std_logic;
signal T34s_c4 :  std_logic_vector(56 downto 0);
signal T34s_h_c4 :  std_logic_vector(38 downto 0);
signal T34s_l_c4 :  std_logic_vector(17 downto 0);
signal U34_c4 :  std_logic_vector(38 downto 0);
signal T36_h_c4 :  std_logic_vector(38 downto 0);
signal T35_c4 :  std_logic_vector(55 downto 0);
signal S34_c4 :  std_logic_vector(35 downto 0);
signal d35_c4 :  std_logic;
signal T35s_c4 :  std_logic_vector(56 downto 0);
signal T35s_h_c4 :  std_logic_vector(39 downto 0);
signal T35s_l_c4 :  std_logic_vector(16 downto 0);
signal U35_c4 :  std_logic_vector(39 downto 0);
signal T37_h_c4 :  std_logic_vector(39 downto 0);
signal T36_c4 :  std_logic_vector(55 downto 0);
signal S35_c4 :  std_logic_vector(36 downto 0);
signal d36_c4 :  std_logic;
signal T36s_c4 :  std_logic_vector(56 downto 0);
signal T36s_h_c4 :  std_logic_vector(40 downto 0);
signal T36s_l_c4 :  std_logic_vector(15 downto 0);
signal U36_c4 :  std_logic_vector(40 downto 0);
signal T38_h_c4 :  std_logic_vector(40 downto 0);
signal T37_c4 :  std_logic_vector(55 downto 0);
signal S36_c4 :  std_logic_vector(37 downto 0);
signal d37_c4 :  std_logic;
signal T37s_c4 :  std_logic_vector(56 downto 0);
signal T37s_h_c4 :  std_logic_vector(41 downto 0);
signal T37s_l_c4 :  std_logic_vector(14 downto 0);
signal U37_c4 :  std_logic_vector(41 downto 0);
signal T39_h_c4 :  std_logic_vector(41 downto 0);
signal T38_c4 :  std_logic_vector(55 downto 0);
signal S37_c4 :  std_logic_vector(38 downto 0);
signal d38_c4 :  std_logic;
signal T38s_c4 :  std_logic_vector(56 downto 0);
signal T38s_h_c4 :  std_logic_vector(42 downto 0);
signal T38s_l_c4 :  std_logic_vector(13 downto 0);
signal U38_c4 :  std_logic_vector(42 downto 0);
signal T40_h_c4 :  std_logic_vector(42 downto 0);
signal T39_c4 :  std_logic_vector(55 downto 0);
signal S38_c4 :  std_logic_vector(39 downto 0);
signal d39_c4, d39_c5 :  std_logic;
signal T39s_c4 :  std_logic_vector(56 downto 0);
signal T39s_h_c4, T39s_h_c5 :  std_logic_vector(43 downto 0);
signal T39s_l_c4, T39s_l_c5 :  std_logic_vector(12 downto 0);
signal U39_c4, U39_c5 :  std_logic_vector(43 downto 0);
signal T41_h_c5 :  std_logic_vector(43 downto 0);
signal T40_c5 :  std_logic_vector(55 downto 0);
signal S39_c4, S39_c5 :  std_logic_vector(40 downto 0);
signal d40_c5 :  std_logic;
signal T40s_c5 :  std_logic_vector(56 downto 0);
signal T40s_h_c5 :  std_logic_vector(44 downto 0);
signal T40s_l_c5 :  std_logic_vector(11 downto 0);
signal U40_c5 :  std_logic_vector(44 downto 0);
signal T42_h_c5 :  std_logic_vector(44 downto 0);
signal T41_c5 :  std_logic_vector(55 downto 0);
signal S40_c5 :  std_logic_vector(41 downto 0);
signal d41_c5 :  std_logic;
signal T41s_c5 :  std_logic_vector(56 downto 0);
signal T41s_h_c5 :  std_logic_vector(45 downto 0);
signal T41s_l_c5 :  std_logic_vector(10 downto 0);
signal U41_c5 :  std_logic_vector(45 downto 0);
signal T43_h_c5 :  std_logic_vector(45 downto 0);
signal T42_c5 :  std_logic_vector(55 downto 0);
signal S41_c5 :  std_logic_vector(42 downto 0);
signal d42_c5 :  std_logic;
signal T42s_c5 :  std_logic_vector(56 downto 0);
signal T42s_h_c5 :  std_logic_vector(46 downto 0);
signal T42s_l_c5 :  std_logic_vector(9 downto 0);
signal U42_c5 :  std_logic_vector(46 downto 0);
signal T44_h_c5 :  std_logic_vector(46 downto 0);
signal T43_c5 :  std_logic_vector(55 downto 0);
signal S42_c5 :  std_logic_vector(43 downto 0);
signal d43_c5 :  std_logic;
signal T43s_c5 :  std_logic_vector(56 downto 0);
signal T43s_h_c5 :  std_logic_vector(47 downto 0);
signal T43s_l_c5 :  std_logic_vector(8 downto 0);
signal U43_c5 :  std_logic_vector(47 downto 0);
signal T45_h_c5 :  std_logic_vector(47 downto 0);
signal T44_c5 :  std_logic_vector(55 downto 0);
signal S43_c5 :  std_logic_vector(44 downto 0);
signal d44_c5 :  std_logic;
signal T44s_c5 :  std_logic_vector(56 downto 0);
signal T44s_h_c5 :  std_logic_vector(48 downto 0);
signal T44s_l_c5 :  std_logic_vector(7 downto 0);
signal U44_c5 :  std_logic_vector(48 downto 0);
signal T46_h_c5 :  std_logic_vector(48 downto 0);
signal T45_c5 :  std_logic_vector(55 downto 0);
signal S44_c5 :  std_logic_vector(45 downto 0);
signal d45_c5, d45_c6 :  std_logic;
signal T45s_c5 :  std_logic_vector(56 downto 0);
signal T45s_h_c5, T45s_h_c6 :  std_logic_vector(49 downto 0);
signal T45s_l_c5, T45s_l_c6 :  std_logic_vector(6 downto 0);
signal U45_c5, U45_c6 :  std_logic_vector(49 downto 0);
signal T47_h_c6 :  std_logic_vector(49 downto 0);
signal T46_c6 :  std_logic_vector(55 downto 0);
signal S45_c5, S45_c6 :  std_logic_vector(46 downto 0);
signal d46_c6 :  std_logic;
signal T46s_c6 :  std_logic_vector(56 downto 0);
signal T46s_h_c6 :  std_logic_vector(50 downto 0);
signal T46s_l_c6 :  std_logic_vector(5 downto 0);
signal U46_c6 :  std_logic_vector(50 downto 0);
signal T48_h_c6 :  std_logic_vector(50 downto 0);
signal T47_c6 :  std_logic_vector(55 downto 0);
signal S46_c6 :  std_logic_vector(47 downto 0);
signal d47_c6 :  std_logic;
signal T47s_c6 :  std_logic_vector(56 downto 0);
signal T47s_h_c6 :  std_logic_vector(51 downto 0);
signal T47s_l_c6 :  std_logic_vector(4 downto 0);
signal U47_c6 :  std_logic_vector(51 downto 0);
signal T49_h_c6 :  std_logic_vector(51 downto 0);
signal T48_c6 :  std_logic_vector(55 downto 0);
signal S47_c6 :  std_logic_vector(48 downto 0);
signal d48_c6 :  std_logic;
signal T48s_c6 :  std_logic_vector(56 downto 0);
signal T48s_h_c6 :  std_logic_vector(52 downto 0);
signal T48s_l_c6 :  std_logic_vector(3 downto 0);
signal U48_c6 :  std_logic_vector(52 downto 0);
signal T50_h_c6 :  std_logic_vector(52 downto 0);
signal T49_c6 :  std_logic_vector(55 downto 0);
signal S48_c6 :  std_logic_vector(49 downto 0);
signal d49_c6 :  std_logic;
signal T49s_c6 :  std_logic_vector(56 downto 0);
signal T49s_h_c6 :  std_logic_vector(53 downto 0);
signal T49s_l_c6 :  std_logic_vector(2 downto 0);
signal U49_c6 :  std_logic_vector(53 downto 0);
signal T51_h_c6 :  std_logic_vector(53 downto 0);
signal T50_c6 :  std_logic_vector(55 downto 0);
signal S49_c6 :  std_logic_vector(50 downto 0);
signal d50_c6 :  std_logic;
signal T50s_c6 :  std_logic_vector(56 downto 0);
signal T50s_h_c6 :  std_logic_vector(54 downto 0);
signal T50s_l_c6 :  std_logic_vector(1 downto 0);
signal U50_c6 :  std_logic_vector(54 downto 0);
signal T52_h_c6 :  std_logic_vector(54 downto 0);
signal T51_c6 :  std_logic_vector(55 downto 0);
signal S50_c6 :  std_logic_vector(51 downto 0);
signal d51_c6 :  std_logic;
signal T51s_c6 :  std_logic_vector(56 downto 0);
signal T51s_h_c6 :  std_logic_vector(55 downto 0);
signal T51s_l_c6 :  std_logic_vector(0 downto 0);
signal U51_c6 :  std_logic_vector(55 downto 0);
signal T53_h_c6 :  std_logic_vector(55 downto 0);
signal T52_c6 :  std_logic_vector(55 downto 0);
signal S51_c6 :  std_logic_vector(52 downto 0);
signal d52_c6, d52_c7 :  std_logic;
signal T52s_c6 :  std_logic_vector(56 downto 0);
signal T52s_h_c6, T52s_h_c7 :  std_logic_vector(56 downto 0);
signal U52_c6, U52_c7 :  std_logic_vector(56 downto 0);
signal T54_h_c7 :  std_logic_vector(56 downto 0);
signal T53_c7 :  std_logic_vector(55 downto 0);
signal S52_c6, S52_c7 :  std_logic_vector(53 downto 0);
signal d54_c7 :  std_logic;
signal mR_c7 :  std_logic_vector(54 downto 0);
signal fR_c7 :  std_logic_vector(51 downto 0);
signal round_c7 :  std_logic;
signal fRrnd_c7 :  std_logic_vector(51 downto 0);
signal Rn2_c7 :  std_logic_vector(62 downto 0);
signal xsR_c0, xsR_c1, xsR_c2, xsR_c3, xsR_c4, xsR_c5, xsR_c6, xsR_c7 :  std_logic_vector(2 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               eRn1_c1 <= eRn1_c0;
               d9_c1 <= d9_c0;
               T9s_h_c1 <= T9s_h_c0;
               T9s_l_c1 <= T9s_l_c0;
               U9_c1 <= U9_c0;
               S9_c1 <= S9_c0;
               xsR_c1 <= xsR_c0;
            end if;
            if ce_2 = '1' then
               eRn1_c2 <= eRn1_c1;
               d17_c2 <= d17_c1;
               T17s_h_c2 <= T17s_h_c1;
               T17s_l_c2 <= T17s_l_c1;
               U17_c2 <= U17_c1;
               S17_c2 <= S17_c1;
               xsR_c2 <= xsR_c1;
            end if;
            if ce_3 = '1' then
               eRn1_c3 <= eRn1_c2;
               d25_c3 <= d25_c2;
               T25s_h_c3 <= T25s_h_c2;
               T25s_l_c3 <= T25s_l_c2;
               U25_c3 <= U25_c2;
               S25_c3 <= S25_c2;
               xsR_c3 <= xsR_c2;
            end if;
            if ce_4 = '1' then
               eRn1_c4 <= eRn1_c3;
               d32_c4 <= d32_c3;
               T32s_h_c4 <= T32s_h_c3;
               T32s_l_c4 <= T32s_l_c3;
               U32_c4 <= U32_c3;
               S32_c4 <= S32_c3;
               xsR_c4 <= xsR_c3;
            end if;
            if ce_5 = '1' then
               eRn1_c5 <= eRn1_c4;
               d39_c5 <= d39_c4;
               T39s_h_c5 <= T39s_h_c4;
               T39s_l_c5 <= T39s_l_c4;
               U39_c5 <= U39_c4;
               S39_c5 <= S39_c4;
               xsR_c5 <= xsR_c4;
            end if;
            if ce_6 = '1' then
               eRn1_c6 <= eRn1_c5;
               d45_c6 <= d45_c5;
               T45s_h_c6 <= T45s_h_c5;
               T45s_l_c6 <= T45s_l_c5;
               U45_c6 <= U45_c5;
               S45_c6 <= S45_c5;
               xsR_c6 <= xsR_c5;
            end if;
            if ce_7 = '1' then
               eRn1_c7 <= eRn1_c6;
               d52_c7 <= d52_c6;
               T52s_h_c7 <= T52s_h_c6;
               U52_c7 <= U52_c6;
               S52_c7 <= S52_c6;
               xsR_c7 <= xsR_c6;
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
   T3_h_c0 <=   T1s_h_c0 - U1_c0 when d1_c0='1'
        else T1s_h_c0 + U1_c0;
   T2_c0 <= T3_h_c0(4 downto 0) & T1s_l_c0;
   S1_c0 <= S0_c0 & d1_c0; -- here -1 becomes 0 and 1 becomes 1
   -- Step 3
   d2_c0 <= not T2_c0(55); --  bit of weight -2
   T2s_c0 <= T2_c0 & "0";
   T2s_h_c0 <= T2s_c0(56 downto 50);
   T2s_l_c0 <= T2s_c0(49 downto 0);
   U2_c0 <=  "0" & S1_c0 & d2_c0 & (not d2_c0) & "1"; 
   T4_h_c0 <=   T2s_h_c0 - U2_c0 when d2_c0='1'
        else T2s_h_c0 + U2_c0;
   T3_c0 <= T4_h_c0(5 downto 0) & T2s_l_c0;
   S2_c0 <= S1_c0 & d2_c0; -- here -1 becomes 0 and 1 becomes 1
   -- Step 4
   d3_c0 <= not T3_c0(55); --  bit of weight -3
   T3s_c0 <= T3_c0 & "0";
   T3s_h_c0 <= T3s_c0(56 downto 49);
   T3s_l_c0 <= T3s_c0(48 downto 0);
   U3_c0 <=  "0" & S2_c0 & d3_c0 & (not d3_c0) & "1"; 
   T5_h_c0 <=   T3s_h_c0 - U3_c0 when d3_c0='1'
        else T3s_h_c0 + U3_c0;
   T4_c0 <= T5_h_c0(6 downto 0) & T3s_l_c0;
   S3_c0 <= S2_c0 & d3_c0; -- here -1 becomes 0 and 1 becomes 1
   -- Step 5
   d4_c0 <= not T4_c0(55); --  bit of weight -4
   T4s_c0 <= T4_c0 & "0";
   T4s_h_c0 <= T4s_c0(56 downto 48);
   T4s_l_c0 <= T4s_c0(47 downto 0);
   U4_c0 <=  "0" & S3_c0 & d4_c0 & (not d4_c0) & "1"; 
   T6_h_c0 <=   T4s_h_c0 - U4_c0 when d4_c0='1'
        else T4s_h_c0 + U4_c0;
   T5_c0 <= T6_h_c0(7 downto 0) & T4s_l_c0;
   S4_c0 <= S3_c0 & d4_c0; -- here -1 becomes 0 and 1 becomes 1
   -- Step 6
   d5_c0 <= not T5_c0(55); --  bit of weight -5
   T5s_c0 <= T5_c0 & "0";
   T5s_h_c0 <= T5s_c0(56 downto 47);
   T5s_l_c0 <= T5s_c0(46 downto 0);
   U5_c0 <=  "0" & S4_c0 & d5_c0 & (not d5_c0) & "1"; 
   T7_h_c0 <=   T5s_h_c0 - U5_c0 when d5_c0='1'
        else T5s_h_c0 + U5_c0;
   T6_c0 <= T7_h_c0(8 downto 0) & T5s_l_c0;
   S5_c0 <= S4_c0 & d5_c0; -- here -1 becomes 0 and 1 becomes 1
   -- Step 7
   d6_c0 <= not T6_c0(55); --  bit of weight -6
   T6s_c0 <= T6_c0 & "0";
   T6s_h_c0 <= T6s_c0(56 downto 46);
   T6s_l_c0 <= T6s_c0(45 downto 0);
   U6_c0 <=  "0" & S5_c0 & d6_c0 & (not d6_c0) & "1"; 
   T8_h_c0 <=   T6s_h_c0 - U6_c0 when d6_c0='1'
        else T6s_h_c0 + U6_c0;
   T7_c0 <= T8_h_c0(9 downto 0) & T6s_l_c0;
   S6_c0 <= S5_c0 & d6_c0; -- here -1 becomes 0 and 1 becomes 1
   -- Step 8
   d7_c0 <= not T7_c0(55); --  bit of weight -7
   T7s_c0 <= T7_c0 & "0";
   T7s_h_c0 <= T7s_c0(56 downto 45);
   T7s_l_c0 <= T7s_c0(44 downto 0);
   U7_c0 <=  "0" & S6_c0 & d7_c0 & (not d7_c0) & "1"; 
   T9_h_c0 <=   T7s_h_c0 - U7_c0 when d7_c0='1'
        else T7s_h_c0 + U7_c0;
   T8_c0 <= T9_h_c0(10 downto 0) & T7s_l_c0;
   S7_c0 <= S6_c0 & d7_c0; -- here -1 becomes 0 and 1 becomes 1
   -- Step 9
   d8_c0 <= not T8_c0(55); --  bit of weight -8
   T8s_c0 <= T8_c0 & "0";
   T8s_h_c0 <= T8s_c0(56 downto 44);
   T8s_l_c0 <= T8s_c0(43 downto 0);
   U8_c0 <=  "0" & S7_c0 & d8_c0 & (not d8_c0) & "1"; 
   T10_h_c0 <=   T8s_h_c0 - U8_c0 when d8_c0='1'
        else T8s_h_c0 + U8_c0;
   T9_c0 <= T10_h_c0(11 downto 0) & T8s_l_c0;
   S8_c0 <= S7_c0 & d8_c0; -- here -1 becomes 0 and 1 becomes 1
   -- Step 10
   d9_c0 <= not T9_c0(55); --  bit of weight -9
   T9s_c0 <= T9_c0 & "0";
   T9s_h_c0 <= T9s_c0(56 downto 43);
   T9s_l_c0 <= T9s_c0(42 downto 0);
   U9_c0 <=  "0" & S8_c0 & d9_c0 & (not d9_c0) & "1"; 
   T11_h_c1 <=   T9s_h_c1 - U9_c1 when d9_c1='1'
        else T9s_h_c1 + U9_c1;
   T10_c1 <= T11_h_c1(12 downto 0) & T9s_l_c1;
   S9_c0 <= S8_c0 & d9_c0; -- here -1 becomes 0 and 1 becomes 1
   -- Step 11
   d10_c1 <= not T10_c1(55); --  bit of weight -10
   T10s_c1 <= T10_c1 & "0";
   T10s_h_c1 <= T10s_c1(56 downto 42);
   T10s_l_c1 <= T10s_c1(41 downto 0);
   U10_c1 <=  "0" & S9_c1 & d10_c1 & (not d10_c1) & "1"; 
   T12_h_c1 <=   T10s_h_c1 - U10_c1 when d10_c1='1'
        else T10s_h_c1 + U10_c1;
   T11_c1 <= T12_h_c1(13 downto 0) & T10s_l_c1;
   S10_c1 <= S9_c1 & d10_c1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 12
   d11_c1 <= not T11_c1(55); --  bit of weight -11
   T11s_c1 <= T11_c1 & "0";
   T11s_h_c1 <= T11s_c1(56 downto 41);
   T11s_l_c1 <= T11s_c1(40 downto 0);
   U11_c1 <=  "0" & S10_c1 & d11_c1 & (not d11_c1) & "1"; 
   T13_h_c1 <=   T11s_h_c1 - U11_c1 when d11_c1='1'
        else T11s_h_c1 + U11_c1;
   T12_c1 <= T13_h_c1(14 downto 0) & T11s_l_c1;
   S11_c1 <= S10_c1 & d11_c1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 13
   d12_c1 <= not T12_c1(55); --  bit of weight -12
   T12s_c1 <= T12_c1 & "0";
   T12s_h_c1 <= T12s_c1(56 downto 40);
   T12s_l_c1 <= T12s_c1(39 downto 0);
   U12_c1 <=  "0" & S11_c1 & d12_c1 & (not d12_c1) & "1"; 
   T14_h_c1 <=   T12s_h_c1 - U12_c1 when d12_c1='1'
        else T12s_h_c1 + U12_c1;
   T13_c1 <= T14_h_c1(15 downto 0) & T12s_l_c1;
   S12_c1 <= S11_c1 & d12_c1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 14
   d13_c1 <= not T13_c1(55); --  bit of weight -13
   T13s_c1 <= T13_c1 & "0";
   T13s_h_c1 <= T13s_c1(56 downto 39);
   T13s_l_c1 <= T13s_c1(38 downto 0);
   U13_c1 <=  "0" & S12_c1 & d13_c1 & (not d13_c1) & "1"; 
   T15_h_c1 <=   T13s_h_c1 - U13_c1 when d13_c1='1'
        else T13s_h_c1 + U13_c1;
   T14_c1 <= T15_h_c1(16 downto 0) & T13s_l_c1;
   S13_c1 <= S12_c1 & d13_c1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 15
   d14_c1 <= not T14_c1(55); --  bit of weight -14
   T14s_c1 <= T14_c1 & "0";
   T14s_h_c1 <= T14s_c1(56 downto 38);
   T14s_l_c1 <= T14s_c1(37 downto 0);
   U14_c1 <=  "0" & S13_c1 & d14_c1 & (not d14_c1) & "1"; 
   T16_h_c1 <=   T14s_h_c1 - U14_c1 when d14_c1='1'
        else T14s_h_c1 + U14_c1;
   T15_c1 <= T16_h_c1(17 downto 0) & T14s_l_c1;
   S14_c1 <= S13_c1 & d14_c1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 16
   d15_c1 <= not T15_c1(55); --  bit of weight -15
   T15s_c1 <= T15_c1 & "0";
   T15s_h_c1 <= T15s_c1(56 downto 37);
   T15s_l_c1 <= T15s_c1(36 downto 0);
   U15_c1 <=  "0" & S14_c1 & d15_c1 & (not d15_c1) & "1"; 
   T17_h_c1 <=   T15s_h_c1 - U15_c1 when d15_c1='1'
        else T15s_h_c1 + U15_c1;
   T16_c1 <= T17_h_c1(18 downto 0) & T15s_l_c1;
   S15_c1 <= S14_c1 & d15_c1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 17
   d16_c1 <= not T16_c1(55); --  bit of weight -16
   T16s_c1 <= T16_c1 & "0";
   T16s_h_c1 <= T16s_c1(56 downto 36);
   T16s_l_c1 <= T16s_c1(35 downto 0);
   U16_c1 <=  "0" & S15_c1 & d16_c1 & (not d16_c1) & "1"; 
   T18_h_c1 <=   T16s_h_c1 - U16_c1 when d16_c1='1'
        else T16s_h_c1 + U16_c1;
   T17_c1 <= T18_h_c1(19 downto 0) & T16s_l_c1;
   S16_c1 <= S15_c1 & d16_c1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 18
   d17_c1 <= not T17_c1(55); --  bit of weight -17
   T17s_c1 <= T17_c1 & "0";
   T17s_h_c1 <= T17s_c1(56 downto 35);
   T17s_l_c1 <= T17s_c1(34 downto 0);
   U17_c1 <=  "0" & S16_c1 & d17_c1 & (not d17_c1) & "1"; 
   T19_h_c2 <=   T17s_h_c2 - U17_c2 when d17_c2='1'
        else T17s_h_c2 + U17_c2;
   T18_c2 <= T19_h_c2(20 downto 0) & T17s_l_c2;
   S17_c1 <= S16_c1 & d17_c1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 19
   d18_c2 <= not T18_c2(55); --  bit of weight -18
   T18s_c2 <= T18_c2 & "0";
   T18s_h_c2 <= T18s_c2(56 downto 34);
   T18s_l_c2 <= T18s_c2(33 downto 0);
   U18_c2 <=  "0" & S17_c2 & d18_c2 & (not d18_c2) & "1"; 
   T20_h_c2 <=   T18s_h_c2 - U18_c2 when d18_c2='1'
        else T18s_h_c2 + U18_c2;
   T19_c2 <= T20_h_c2(21 downto 0) & T18s_l_c2;
   S18_c2 <= S17_c2 & d18_c2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 20
   d19_c2 <= not T19_c2(55); --  bit of weight -19
   T19s_c2 <= T19_c2 & "0";
   T19s_h_c2 <= T19s_c2(56 downto 33);
   T19s_l_c2 <= T19s_c2(32 downto 0);
   U19_c2 <=  "0" & S18_c2 & d19_c2 & (not d19_c2) & "1"; 
   T21_h_c2 <=   T19s_h_c2 - U19_c2 when d19_c2='1'
        else T19s_h_c2 + U19_c2;
   T20_c2 <= T21_h_c2(22 downto 0) & T19s_l_c2;
   S19_c2 <= S18_c2 & d19_c2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 21
   d20_c2 <= not T20_c2(55); --  bit of weight -20
   T20s_c2 <= T20_c2 & "0";
   T20s_h_c2 <= T20s_c2(56 downto 32);
   T20s_l_c2 <= T20s_c2(31 downto 0);
   U20_c2 <=  "0" & S19_c2 & d20_c2 & (not d20_c2) & "1"; 
   T22_h_c2 <=   T20s_h_c2 - U20_c2 when d20_c2='1'
        else T20s_h_c2 + U20_c2;
   T21_c2 <= T22_h_c2(23 downto 0) & T20s_l_c2;
   S20_c2 <= S19_c2 & d20_c2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 22
   d21_c2 <= not T21_c2(55); --  bit of weight -21
   T21s_c2 <= T21_c2 & "0";
   T21s_h_c2 <= T21s_c2(56 downto 31);
   T21s_l_c2 <= T21s_c2(30 downto 0);
   U21_c2 <=  "0" & S20_c2 & d21_c2 & (not d21_c2) & "1"; 
   T23_h_c2 <=   T21s_h_c2 - U21_c2 when d21_c2='1'
        else T21s_h_c2 + U21_c2;
   T22_c2 <= T23_h_c2(24 downto 0) & T21s_l_c2;
   S21_c2 <= S20_c2 & d21_c2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 23
   d22_c2 <= not T22_c2(55); --  bit of weight -22
   T22s_c2 <= T22_c2 & "0";
   T22s_h_c2 <= T22s_c2(56 downto 30);
   T22s_l_c2 <= T22s_c2(29 downto 0);
   U22_c2 <=  "0" & S21_c2 & d22_c2 & (not d22_c2) & "1"; 
   T24_h_c2 <=   T22s_h_c2 - U22_c2 when d22_c2='1'
        else T22s_h_c2 + U22_c2;
   T23_c2 <= T24_h_c2(25 downto 0) & T22s_l_c2;
   S22_c2 <= S21_c2 & d22_c2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 24
   d23_c2 <= not T23_c2(55); --  bit of weight -23
   T23s_c2 <= T23_c2 & "0";
   T23s_h_c2 <= T23s_c2(56 downto 29);
   T23s_l_c2 <= T23s_c2(28 downto 0);
   U23_c2 <=  "0" & S22_c2 & d23_c2 & (not d23_c2) & "1"; 
   T25_h_c2 <=   T23s_h_c2 - U23_c2 when d23_c2='1'
        else T23s_h_c2 + U23_c2;
   T24_c2 <= T25_h_c2(26 downto 0) & T23s_l_c2;
   S23_c2 <= S22_c2 & d23_c2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 25
   d24_c2 <= not T24_c2(55); --  bit of weight -24
   T24s_c2 <= T24_c2 & "0";
   T24s_h_c2 <= T24s_c2(56 downto 28);
   T24s_l_c2 <= T24s_c2(27 downto 0);
   U24_c2 <=  "0" & S23_c2 & d24_c2 & (not d24_c2) & "1"; 
   T26_h_c2 <=   T24s_h_c2 - U24_c2 when d24_c2='1'
        else T24s_h_c2 + U24_c2;
   T25_c2 <= T26_h_c2(27 downto 0) & T24s_l_c2;
   S24_c2 <= S23_c2 & d24_c2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 26
   d25_c2 <= not T25_c2(55); --  bit of weight -25
   T25s_c2 <= T25_c2 & "0";
   T25s_h_c2 <= T25s_c2(56 downto 27);
   T25s_l_c2 <= T25s_c2(26 downto 0);
   U25_c2 <=  "0" & S24_c2 & d25_c2 & (not d25_c2) & "1"; 
   T27_h_c3 <=   T25s_h_c3 - U25_c3 when d25_c3='1'
        else T25s_h_c3 + U25_c3;
   T26_c3 <= T27_h_c3(28 downto 0) & T25s_l_c3;
   S25_c2 <= S24_c2 & d25_c2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 27
   d26_c3 <= not T26_c3(55); --  bit of weight -26
   T26s_c3 <= T26_c3 & "0";
   T26s_h_c3 <= T26s_c3(56 downto 26);
   T26s_l_c3 <= T26s_c3(25 downto 0);
   U26_c3 <=  "0" & S25_c3 & d26_c3 & (not d26_c3) & "1"; 
   T28_h_c3 <=   T26s_h_c3 - U26_c3 when d26_c3='1'
        else T26s_h_c3 + U26_c3;
   T27_c3 <= T28_h_c3(29 downto 0) & T26s_l_c3;
   S26_c3 <= S25_c3 & d26_c3; -- here -1 becomes 0 and 1 becomes 1
   -- Step 28
   d27_c3 <= not T27_c3(55); --  bit of weight -27
   T27s_c3 <= T27_c3 & "0";
   T27s_h_c3 <= T27s_c3(56 downto 25);
   T27s_l_c3 <= T27s_c3(24 downto 0);
   U27_c3 <=  "0" & S26_c3 & d27_c3 & (not d27_c3) & "1"; 
   T29_h_c3 <=   T27s_h_c3 - U27_c3 when d27_c3='1'
        else T27s_h_c3 + U27_c3;
   T28_c3 <= T29_h_c3(30 downto 0) & T27s_l_c3;
   S27_c3 <= S26_c3 & d27_c3; -- here -1 becomes 0 and 1 becomes 1
   -- Step 29
   d28_c3 <= not T28_c3(55); --  bit of weight -28
   T28s_c3 <= T28_c3 & "0";
   T28s_h_c3 <= T28s_c3(56 downto 24);
   T28s_l_c3 <= T28s_c3(23 downto 0);
   U28_c3 <=  "0" & S27_c3 & d28_c3 & (not d28_c3) & "1"; 
   T30_h_c3 <=   T28s_h_c3 - U28_c3 when d28_c3='1'
        else T28s_h_c3 + U28_c3;
   T29_c3 <= T30_h_c3(31 downto 0) & T28s_l_c3;
   S28_c3 <= S27_c3 & d28_c3; -- here -1 becomes 0 and 1 becomes 1
   -- Step 30
   d29_c3 <= not T29_c3(55); --  bit of weight -29
   T29s_c3 <= T29_c3 & "0";
   T29s_h_c3 <= T29s_c3(56 downto 23);
   T29s_l_c3 <= T29s_c3(22 downto 0);
   U29_c3 <=  "0" & S28_c3 & d29_c3 & (not d29_c3) & "1"; 
   T31_h_c3 <=   T29s_h_c3 - U29_c3 when d29_c3='1'
        else T29s_h_c3 + U29_c3;
   T30_c3 <= T31_h_c3(32 downto 0) & T29s_l_c3;
   S29_c3 <= S28_c3 & d29_c3; -- here -1 becomes 0 and 1 becomes 1
   -- Step 31
   d30_c3 <= not T30_c3(55); --  bit of weight -30
   T30s_c3 <= T30_c3 & "0";
   T30s_h_c3 <= T30s_c3(56 downto 22);
   T30s_l_c3 <= T30s_c3(21 downto 0);
   U30_c3 <=  "0" & S29_c3 & d30_c3 & (not d30_c3) & "1"; 
   T32_h_c3 <=   T30s_h_c3 - U30_c3 when d30_c3='1'
        else T30s_h_c3 + U30_c3;
   T31_c3 <= T32_h_c3(33 downto 0) & T30s_l_c3;
   S30_c3 <= S29_c3 & d30_c3; -- here -1 becomes 0 and 1 becomes 1
   -- Step 32
   d31_c3 <= not T31_c3(55); --  bit of weight -31
   T31s_c3 <= T31_c3 & "0";
   T31s_h_c3 <= T31s_c3(56 downto 21);
   T31s_l_c3 <= T31s_c3(20 downto 0);
   U31_c3 <=  "0" & S30_c3 & d31_c3 & (not d31_c3) & "1"; 
   T33_h_c3 <=   T31s_h_c3 - U31_c3 when d31_c3='1'
        else T31s_h_c3 + U31_c3;
   T32_c3 <= T33_h_c3(34 downto 0) & T31s_l_c3;
   S31_c3 <= S30_c3 & d31_c3; -- here -1 becomes 0 and 1 becomes 1
   -- Step 33
   d32_c3 <= not T32_c3(55); --  bit of weight -32
   T32s_c3 <= T32_c3 & "0";
   T32s_h_c3 <= T32s_c3(56 downto 20);
   T32s_l_c3 <= T32s_c3(19 downto 0);
   U32_c3 <=  "0" & S31_c3 & d32_c3 & (not d32_c3) & "1"; 
   T34_h_c4 <=   T32s_h_c4 - U32_c4 when d32_c4='1'
        else T32s_h_c4 + U32_c4;
   T33_c4 <= T34_h_c4(35 downto 0) & T32s_l_c4;
   S32_c3 <= S31_c3 & d32_c3; -- here -1 becomes 0 and 1 becomes 1
   -- Step 34
   d33_c4 <= not T33_c4(55); --  bit of weight -33
   T33s_c4 <= T33_c4 & "0";
   T33s_h_c4 <= T33s_c4(56 downto 19);
   T33s_l_c4 <= T33s_c4(18 downto 0);
   U33_c4 <=  "0" & S32_c4 & d33_c4 & (not d33_c4) & "1"; 
   T35_h_c4 <=   T33s_h_c4 - U33_c4 when d33_c4='1'
        else T33s_h_c4 + U33_c4;
   T34_c4 <= T35_h_c4(36 downto 0) & T33s_l_c4;
   S33_c4 <= S32_c4 & d33_c4; -- here -1 becomes 0 and 1 becomes 1
   -- Step 35
   d34_c4 <= not T34_c4(55); --  bit of weight -34
   T34s_c4 <= T34_c4 & "0";
   T34s_h_c4 <= T34s_c4(56 downto 18);
   T34s_l_c4 <= T34s_c4(17 downto 0);
   U34_c4 <=  "0" & S33_c4 & d34_c4 & (not d34_c4) & "1"; 
   T36_h_c4 <=   T34s_h_c4 - U34_c4 when d34_c4='1'
        else T34s_h_c4 + U34_c4;
   T35_c4 <= T36_h_c4(37 downto 0) & T34s_l_c4;
   S34_c4 <= S33_c4 & d34_c4; -- here -1 becomes 0 and 1 becomes 1
   -- Step 36
   d35_c4 <= not T35_c4(55); --  bit of weight -35
   T35s_c4 <= T35_c4 & "0";
   T35s_h_c4 <= T35s_c4(56 downto 17);
   T35s_l_c4 <= T35s_c4(16 downto 0);
   U35_c4 <=  "0" & S34_c4 & d35_c4 & (not d35_c4) & "1"; 
   T37_h_c4 <=   T35s_h_c4 - U35_c4 when d35_c4='1'
        else T35s_h_c4 + U35_c4;
   T36_c4 <= T37_h_c4(38 downto 0) & T35s_l_c4;
   S35_c4 <= S34_c4 & d35_c4; -- here -1 becomes 0 and 1 becomes 1
   -- Step 37
   d36_c4 <= not T36_c4(55); --  bit of weight -36
   T36s_c4 <= T36_c4 & "0";
   T36s_h_c4 <= T36s_c4(56 downto 16);
   T36s_l_c4 <= T36s_c4(15 downto 0);
   U36_c4 <=  "0" & S35_c4 & d36_c4 & (not d36_c4) & "1"; 
   T38_h_c4 <=   T36s_h_c4 - U36_c4 when d36_c4='1'
        else T36s_h_c4 + U36_c4;
   T37_c4 <= T38_h_c4(39 downto 0) & T36s_l_c4;
   S36_c4 <= S35_c4 & d36_c4; -- here -1 becomes 0 and 1 becomes 1
   -- Step 38
   d37_c4 <= not T37_c4(55); --  bit of weight -37
   T37s_c4 <= T37_c4 & "0";
   T37s_h_c4 <= T37s_c4(56 downto 15);
   T37s_l_c4 <= T37s_c4(14 downto 0);
   U37_c4 <=  "0" & S36_c4 & d37_c4 & (not d37_c4) & "1"; 
   T39_h_c4 <=   T37s_h_c4 - U37_c4 when d37_c4='1'
        else T37s_h_c4 + U37_c4;
   T38_c4 <= T39_h_c4(40 downto 0) & T37s_l_c4;
   S37_c4 <= S36_c4 & d37_c4; -- here -1 becomes 0 and 1 becomes 1
   -- Step 39
   d38_c4 <= not T38_c4(55); --  bit of weight -38
   T38s_c4 <= T38_c4 & "0";
   T38s_h_c4 <= T38s_c4(56 downto 14);
   T38s_l_c4 <= T38s_c4(13 downto 0);
   U38_c4 <=  "0" & S37_c4 & d38_c4 & (not d38_c4) & "1"; 
   T40_h_c4 <=   T38s_h_c4 - U38_c4 when d38_c4='1'
        else T38s_h_c4 + U38_c4;
   T39_c4 <= T40_h_c4(41 downto 0) & T38s_l_c4;
   S38_c4 <= S37_c4 & d38_c4; -- here -1 becomes 0 and 1 becomes 1
   -- Step 40
   d39_c4 <= not T39_c4(55); --  bit of weight -39
   T39s_c4 <= T39_c4 & "0";
   T39s_h_c4 <= T39s_c4(56 downto 13);
   T39s_l_c4 <= T39s_c4(12 downto 0);
   U39_c4 <=  "0" & S38_c4 & d39_c4 & (not d39_c4) & "1"; 
   T41_h_c5 <=   T39s_h_c5 - U39_c5 when d39_c5='1'
        else T39s_h_c5 + U39_c5;
   T40_c5 <= T41_h_c5(42 downto 0) & T39s_l_c5;
   S39_c4 <= S38_c4 & d39_c4; -- here -1 becomes 0 and 1 becomes 1
   -- Step 41
   d40_c5 <= not T40_c5(55); --  bit of weight -40
   T40s_c5 <= T40_c5 & "0";
   T40s_h_c5 <= T40s_c5(56 downto 12);
   T40s_l_c5 <= T40s_c5(11 downto 0);
   U40_c5 <=  "0" & S39_c5 & d40_c5 & (not d40_c5) & "1"; 
   T42_h_c5 <=   T40s_h_c5 - U40_c5 when d40_c5='1'
        else T40s_h_c5 + U40_c5;
   T41_c5 <= T42_h_c5(43 downto 0) & T40s_l_c5;
   S40_c5 <= S39_c5 & d40_c5; -- here -1 becomes 0 and 1 becomes 1
   -- Step 42
   d41_c5 <= not T41_c5(55); --  bit of weight -41
   T41s_c5 <= T41_c5 & "0";
   T41s_h_c5 <= T41s_c5(56 downto 11);
   T41s_l_c5 <= T41s_c5(10 downto 0);
   U41_c5 <=  "0" & S40_c5 & d41_c5 & (not d41_c5) & "1"; 
   T43_h_c5 <=   T41s_h_c5 - U41_c5 when d41_c5='1'
        else T41s_h_c5 + U41_c5;
   T42_c5 <= T43_h_c5(44 downto 0) & T41s_l_c5;
   S41_c5 <= S40_c5 & d41_c5; -- here -1 becomes 0 and 1 becomes 1
   -- Step 43
   d42_c5 <= not T42_c5(55); --  bit of weight -42
   T42s_c5 <= T42_c5 & "0";
   T42s_h_c5 <= T42s_c5(56 downto 10);
   T42s_l_c5 <= T42s_c5(9 downto 0);
   U42_c5 <=  "0" & S41_c5 & d42_c5 & (not d42_c5) & "1"; 
   T44_h_c5 <=   T42s_h_c5 - U42_c5 when d42_c5='1'
        else T42s_h_c5 + U42_c5;
   T43_c5 <= T44_h_c5(45 downto 0) & T42s_l_c5;
   S42_c5 <= S41_c5 & d42_c5; -- here -1 becomes 0 and 1 becomes 1
   -- Step 44
   d43_c5 <= not T43_c5(55); --  bit of weight -43
   T43s_c5 <= T43_c5 & "0";
   T43s_h_c5 <= T43s_c5(56 downto 9);
   T43s_l_c5 <= T43s_c5(8 downto 0);
   U43_c5 <=  "0" & S42_c5 & d43_c5 & (not d43_c5) & "1"; 
   T45_h_c5 <=   T43s_h_c5 - U43_c5 when d43_c5='1'
        else T43s_h_c5 + U43_c5;
   T44_c5 <= T45_h_c5(46 downto 0) & T43s_l_c5;
   S43_c5 <= S42_c5 & d43_c5; -- here -1 becomes 0 and 1 becomes 1
   -- Step 45
   d44_c5 <= not T44_c5(55); --  bit of weight -44
   T44s_c5 <= T44_c5 & "0";
   T44s_h_c5 <= T44s_c5(56 downto 8);
   T44s_l_c5 <= T44s_c5(7 downto 0);
   U44_c5 <=  "0" & S43_c5 & d44_c5 & (not d44_c5) & "1"; 
   T46_h_c5 <=   T44s_h_c5 - U44_c5 when d44_c5='1'
        else T44s_h_c5 + U44_c5;
   T45_c5 <= T46_h_c5(47 downto 0) & T44s_l_c5;
   S44_c5 <= S43_c5 & d44_c5; -- here -1 becomes 0 and 1 becomes 1
   -- Step 46
   d45_c5 <= not T45_c5(55); --  bit of weight -45
   T45s_c5 <= T45_c5 & "0";
   T45s_h_c5 <= T45s_c5(56 downto 7);
   T45s_l_c5 <= T45s_c5(6 downto 0);
   U45_c5 <=  "0" & S44_c5 & d45_c5 & (not d45_c5) & "1"; 
   T47_h_c6 <=   T45s_h_c6 - U45_c6 when d45_c6='1'
        else T45s_h_c6 + U45_c6;
   T46_c6 <= T47_h_c6(48 downto 0) & T45s_l_c6;
   S45_c5 <= S44_c5 & d45_c5; -- here -1 becomes 0 and 1 becomes 1
   -- Step 47
   d46_c6 <= not T46_c6(55); --  bit of weight -46
   T46s_c6 <= T46_c6 & "0";
   T46s_h_c6 <= T46s_c6(56 downto 6);
   T46s_l_c6 <= T46s_c6(5 downto 0);
   U46_c6 <=  "0" & S45_c6 & d46_c6 & (not d46_c6) & "1"; 
   T48_h_c6 <=   T46s_h_c6 - U46_c6 when d46_c6='1'
        else T46s_h_c6 + U46_c6;
   T47_c6 <= T48_h_c6(49 downto 0) & T46s_l_c6;
   S46_c6 <= S45_c6 & d46_c6; -- here -1 becomes 0 and 1 becomes 1
   -- Step 48
   d47_c6 <= not T47_c6(55); --  bit of weight -47
   T47s_c6 <= T47_c6 & "0";
   T47s_h_c6 <= T47s_c6(56 downto 5);
   T47s_l_c6 <= T47s_c6(4 downto 0);
   U47_c6 <=  "0" & S46_c6 & d47_c6 & (not d47_c6) & "1"; 
   T49_h_c6 <=   T47s_h_c6 - U47_c6 when d47_c6='1'
        else T47s_h_c6 + U47_c6;
   T48_c6 <= T49_h_c6(50 downto 0) & T47s_l_c6;
   S47_c6 <= S46_c6 & d47_c6; -- here -1 becomes 0 and 1 becomes 1
   -- Step 49
   d48_c6 <= not T48_c6(55); --  bit of weight -48
   T48s_c6 <= T48_c6 & "0";
   T48s_h_c6 <= T48s_c6(56 downto 4);
   T48s_l_c6 <= T48s_c6(3 downto 0);
   U48_c6 <=  "0" & S47_c6 & d48_c6 & (not d48_c6) & "1"; 
   T50_h_c6 <=   T48s_h_c6 - U48_c6 when d48_c6='1'
        else T48s_h_c6 + U48_c6;
   T49_c6 <= T50_h_c6(51 downto 0) & T48s_l_c6;
   S48_c6 <= S47_c6 & d48_c6; -- here -1 becomes 0 and 1 becomes 1
   -- Step 50
   d49_c6 <= not T49_c6(55); --  bit of weight -49
   T49s_c6 <= T49_c6 & "0";
   T49s_h_c6 <= T49s_c6(56 downto 3);
   T49s_l_c6 <= T49s_c6(2 downto 0);
   U49_c6 <=  "0" & S48_c6 & d49_c6 & (not d49_c6) & "1"; 
   T51_h_c6 <=   T49s_h_c6 - U49_c6 when d49_c6='1'
        else T49s_h_c6 + U49_c6;
   T50_c6 <= T51_h_c6(52 downto 0) & T49s_l_c6;
   S49_c6 <= S48_c6 & d49_c6; -- here -1 becomes 0 and 1 becomes 1
   -- Step 51
   d50_c6 <= not T50_c6(55); --  bit of weight -50
   T50s_c6 <= T50_c6 & "0";
   T50s_h_c6 <= T50s_c6(56 downto 2);
   T50s_l_c6 <= T50s_c6(1 downto 0);
   U50_c6 <=  "0" & S49_c6 & d50_c6 & (not d50_c6) & "1"; 
   T52_h_c6 <=   T50s_h_c6 - U50_c6 when d50_c6='1'
        else T50s_h_c6 + U50_c6;
   T51_c6 <= T52_h_c6(53 downto 0) & T50s_l_c6;
   S50_c6 <= S49_c6 & d50_c6; -- here -1 becomes 0 and 1 becomes 1
   -- Step 52
   d51_c6 <= not T51_c6(55); --  bit of weight -51
   T51s_c6 <= T51_c6 & "0";
   T51s_h_c6 <= T51s_c6(56 downto 1);
   T51s_l_c6 <= T51s_c6(0 downto 0);
   U51_c6 <=  "0" & S50_c6 & d51_c6 & (not d51_c6) & "1"; 
   T53_h_c6 <=   T51s_h_c6 - U51_c6 when d51_c6='1'
        else T51s_h_c6 + U51_c6;
   T52_c6 <= T53_h_c6(54 downto 0) & T51s_l_c6;
   S51_c6 <= S50_c6 & d51_c6; -- here -1 becomes 0 and 1 becomes 1
   -- Step 53
   d52_c6 <= not T52_c6(55); --  bit of weight -52
   T52s_c6 <= T52_c6 & "0";
   T52s_h_c6 <= T52s_c6(56 downto 0);
   U52_c6 <=  "0" & S51_c6 & d52_c6 & (not d52_c6) & "1"; 
   T54_h_c7 <=   T52s_h_c7 - U52_c7 when d52_c7='1'
        else T52s_h_c7 + U52_c7;
   T53_c7 <= T54_h_c7(55 downto 0);
   S52_c6 <= S51_c6 & d52_c6; -- here -1 becomes 0 and 1 becomes 1
   d54_c7 <= not T53_c7(55) ; -- the sign of the remainder will become the round bit
   mR_c7 <= S52_c7 & d54_c7; -- result significand
   fR_c7 <= mR_c7(52 downto 1);-- removing leading 1
   round_c7 <= mR_c7(0); -- round bit
   fRrnd_c7 <= fR_c7 + ((51 downto 1 => '0') & round_c7); -- rounding sqrt never changes exponents 
   Rn2_c7 <= eRn1_c7 & fRrnd_c7;
   -- sign and exception processing
   with xsX_c0  select 
      xsR_c0 <= "010"  when "010",  -- normal case
             "100"  when "100",  -- +infty
             "000"  when "000",  -- +0
             "001"  when "001",  -- the infamous sqrt(-0)=-0
             "110"  when others; -- return NaN
   R <= xsR_c7 & Rn2_c7; 
end architecture;



