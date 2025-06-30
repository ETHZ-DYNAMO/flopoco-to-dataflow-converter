--------------------------------------------------------------------------------
--                          FloatingPointSquareRoot
--                               (FPSqrt_8_23)
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 27 cycles
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
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
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27 : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of FloatingPointSquareRoot is
signal fracX_c0 :  std_logic_vector(22 downto 0);
signal eRn0_c0 :  std_logic_vector(7 downto 0);
signal xsX_c0 :  std_logic_vector(2 downto 0);
signal eRn1_c0, eRn1_c1, eRn1_c2, eRn1_c3, eRn1_c4, eRn1_c5, eRn1_c6, eRn1_c7, eRn1_c8, eRn1_c9, eRn1_c10, eRn1_c11, eRn1_c12, eRn1_c13, eRn1_c14, eRn1_c15, eRn1_c16, eRn1_c17, eRn1_c18, eRn1_c19, eRn1_c20, eRn1_c21, eRn1_c22, eRn1_c23, eRn1_c24, eRn1_c25, eRn1_c26, eRn1_c27 :  std_logic_vector(7 downto 0);
signal fracXnorm_c0, fracXnorm_c1 :  std_logic_vector(26 downto 0);
signal S0_c0, S0_c1 :  std_logic_vector(1 downto 0);
signal T1_c1 :  std_logic_vector(26 downto 0);
signal d1_c1, d1_c2 :  std_logic;
signal T1s_c1 :  std_logic_vector(27 downto 0);
signal T1s_h_c1, T1s_h_c2 :  std_logic_vector(5 downto 0);
signal T1s_l_c1, T1s_l_c2 :  std_logic_vector(21 downto 0);
signal U1_c1, U1_c2 :  std_logic_vector(5 downto 0);
signal T3_h_c2 :  std_logic_vector(5 downto 0);
signal T2_c2 :  std_logic_vector(26 downto 0);
signal S1_c1, S1_c2 :  std_logic_vector(2 downto 0);
signal d2_c2, d2_c3 :  std_logic;
signal T2s_c2 :  std_logic_vector(27 downto 0);
signal T2s_h_c2, T2s_h_c3 :  std_logic_vector(6 downto 0);
signal T2s_l_c2, T2s_l_c3 :  std_logic_vector(20 downto 0);
signal U2_c2, U2_c3 :  std_logic_vector(6 downto 0);
signal T4_h_c3 :  std_logic_vector(6 downto 0);
signal T3_c3 :  std_logic_vector(26 downto 0);
signal S2_c2, S2_c3 :  std_logic_vector(3 downto 0);
signal d3_c3, d3_c4 :  std_logic;
signal T3s_c3 :  std_logic_vector(27 downto 0);
signal T3s_h_c3, T3s_h_c4 :  std_logic_vector(7 downto 0);
signal T3s_l_c3, T3s_l_c4 :  std_logic_vector(19 downto 0);
signal U3_c3, U3_c4 :  std_logic_vector(7 downto 0);
signal T5_h_c4 :  std_logic_vector(7 downto 0);
signal T4_c4 :  std_logic_vector(26 downto 0);
signal S3_c3, S3_c4 :  std_logic_vector(4 downto 0);
signal d4_c4, d4_c5 :  std_logic;
signal T4s_c4 :  std_logic_vector(27 downto 0);
signal T4s_h_c4, T4s_h_c5 :  std_logic_vector(8 downto 0);
signal T4s_l_c4, T4s_l_c5 :  std_logic_vector(18 downto 0);
signal U4_c4, U4_c5 :  std_logic_vector(8 downto 0);
signal T6_h_c5 :  std_logic_vector(8 downto 0);
signal T5_c5 :  std_logic_vector(26 downto 0);
signal S4_c4, S4_c5 :  std_logic_vector(5 downto 0);
signal d5_c5, d5_c6 :  std_logic;
signal T5s_c5 :  std_logic_vector(27 downto 0);
signal T5s_h_c5, T5s_h_c6 :  std_logic_vector(9 downto 0);
signal T5s_l_c5, T5s_l_c6 :  std_logic_vector(17 downto 0);
signal U5_c5, U5_c6 :  std_logic_vector(9 downto 0);
signal T7_h_c6 :  std_logic_vector(9 downto 0);
signal T6_c6 :  std_logic_vector(26 downto 0);
signal S5_c5, S5_c6 :  std_logic_vector(6 downto 0);
signal d6_c6, d6_c7 :  std_logic;
signal T6s_c6 :  std_logic_vector(27 downto 0);
signal T6s_h_c6, T6s_h_c7 :  std_logic_vector(10 downto 0);
signal T6s_l_c6, T6s_l_c7 :  std_logic_vector(16 downto 0);
signal U6_c6, U6_c7 :  std_logic_vector(10 downto 0);
signal T8_h_c7 :  std_logic_vector(10 downto 0);
signal T7_c7 :  std_logic_vector(26 downto 0);
signal S6_c6, S6_c7 :  std_logic_vector(7 downto 0);
signal d7_c7, d7_c8 :  std_logic;
signal T7s_c7 :  std_logic_vector(27 downto 0);
signal T7s_h_c7, T7s_h_c8 :  std_logic_vector(11 downto 0);
signal T7s_l_c7, T7s_l_c8 :  std_logic_vector(15 downto 0);
signal U7_c7, U7_c8 :  std_logic_vector(11 downto 0);
signal T9_h_c8 :  std_logic_vector(11 downto 0);
signal T8_c8 :  std_logic_vector(26 downto 0);
signal S7_c7, S7_c8 :  std_logic_vector(8 downto 0);
signal d8_c8, d8_c9 :  std_logic;
signal T8s_c8 :  std_logic_vector(27 downto 0);
signal T8s_h_c8, T8s_h_c9 :  std_logic_vector(12 downto 0);
signal T8s_l_c8, T8s_l_c9 :  std_logic_vector(14 downto 0);
signal U8_c8, U8_c9 :  std_logic_vector(12 downto 0);
signal T10_h_c9 :  std_logic_vector(12 downto 0);
signal T9_c9 :  std_logic_vector(26 downto 0);
signal S8_c8, S8_c9 :  std_logic_vector(9 downto 0);
signal d9_c9, d9_c10 :  std_logic;
signal T9s_c9 :  std_logic_vector(27 downto 0);
signal T9s_h_c9, T9s_h_c10 :  std_logic_vector(13 downto 0);
signal T9s_l_c9, T9s_l_c10 :  std_logic_vector(13 downto 0);
signal U9_c9, U9_c10 :  std_logic_vector(13 downto 0);
signal T11_h_c10 :  std_logic_vector(13 downto 0);
signal T10_c10 :  std_logic_vector(26 downto 0);
signal S9_c9, S9_c10 :  std_logic_vector(10 downto 0);
signal d10_c10, d10_c11 :  std_logic;
signal T10s_c10 :  std_logic_vector(27 downto 0);
signal T10s_h_c10, T10s_h_c11 :  std_logic_vector(14 downto 0);
signal T10s_l_c10, T10s_l_c11 :  std_logic_vector(12 downto 0);
signal U10_c10, U10_c11 :  std_logic_vector(14 downto 0);
signal T12_h_c11 :  std_logic_vector(14 downto 0);
signal T11_c11 :  std_logic_vector(26 downto 0);
signal S10_c10, S10_c11 :  std_logic_vector(11 downto 0);
signal d11_c11, d11_c12 :  std_logic;
signal T11s_c11 :  std_logic_vector(27 downto 0);
signal T11s_h_c11, T11s_h_c12 :  std_logic_vector(15 downto 0);
signal T11s_l_c11, T11s_l_c12 :  std_logic_vector(11 downto 0);
signal U11_c11, U11_c12 :  std_logic_vector(15 downto 0);
signal T13_h_c12 :  std_logic_vector(15 downto 0);
signal T12_c12 :  std_logic_vector(26 downto 0);
signal S11_c11, S11_c12 :  std_logic_vector(12 downto 0);
signal d12_c12, d12_c13 :  std_logic;
signal T12s_c12 :  std_logic_vector(27 downto 0);
signal T12s_h_c12, T12s_h_c13 :  std_logic_vector(16 downto 0);
signal T12s_l_c12, T12s_l_c13 :  std_logic_vector(10 downto 0);
signal U12_c12, U12_c13 :  std_logic_vector(16 downto 0);
signal T14_h_c13 :  std_logic_vector(16 downto 0);
signal T13_c13 :  std_logic_vector(26 downto 0);
signal S12_c12, S12_c13 :  std_logic_vector(13 downto 0);
signal d13_c13, d13_c14 :  std_logic;
signal T13s_c13 :  std_logic_vector(27 downto 0);
signal T13s_h_c13, T13s_h_c14 :  std_logic_vector(17 downto 0);
signal T13s_l_c13, T13s_l_c14 :  std_logic_vector(9 downto 0);
signal U13_c13, U13_c14 :  std_logic_vector(17 downto 0);
signal T15_h_c14 :  std_logic_vector(17 downto 0);
signal T14_c14 :  std_logic_vector(26 downto 0);
signal S13_c13, S13_c14 :  std_logic_vector(14 downto 0);
signal d14_c14, d14_c15 :  std_logic;
signal T14s_c14 :  std_logic_vector(27 downto 0);
signal T14s_h_c14, T14s_h_c15 :  std_logic_vector(18 downto 0);
signal T14s_l_c14, T14s_l_c15 :  std_logic_vector(8 downto 0);
signal U14_c14, U14_c15 :  std_logic_vector(18 downto 0);
signal T16_h_c15 :  std_logic_vector(18 downto 0);
signal T15_c15 :  std_logic_vector(26 downto 0);
signal S14_c14, S14_c15 :  std_logic_vector(15 downto 0);
signal d15_c15, d15_c16 :  std_logic;
signal T15s_c15 :  std_logic_vector(27 downto 0);
signal T15s_h_c15, T15s_h_c16 :  std_logic_vector(19 downto 0);
signal T15s_l_c15, T15s_l_c16 :  std_logic_vector(7 downto 0);
signal U15_c15, U15_c16 :  std_logic_vector(19 downto 0);
signal T17_h_c16 :  std_logic_vector(19 downto 0);
signal T16_c16 :  std_logic_vector(26 downto 0);
signal S15_c15, S15_c16 :  std_logic_vector(16 downto 0);
signal d16_c16, d16_c17, d16_c18 :  std_logic;
signal T16s_c16 :  std_logic_vector(27 downto 0);
signal T16s_h_c16, T16s_h_c17, T16s_h_c18 :  std_logic_vector(20 downto 0);
signal T16s_l_c16, T16s_l_c17, T16s_l_c18 :  std_logic_vector(6 downto 0);
signal U16_c16, U16_c17, U16_c18 :  std_logic_vector(20 downto 0);
signal T18_h_c18 :  std_logic_vector(20 downto 0);
signal T17_c18 :  std_logic_vector(26 downto 0);
signal S16_c16, S16_c17, S16_c18 :  std_logic_vector(17 downto 0);
signal d17_c18, d17_c19 :  std_logic;
signal T17s_c18 :  std_logic_vector(27 downto 0);
signal T17s_h_c18, T17s_h_c19 :  std_logic_vector(21 downto 0);
signal T17s_l_c18, T17s_l_c19 :  std_logic_vector(5 downto 0);
signal U17_c18, U17_c19 :  std_logic_vector(21 downto 0);
signal T19_h_c19 :  std_logic_vector(21 downto 0);
signal T18_c19 :  std_logic_vector(26 downto 0);
signal S17_c18, S17_c19 :  std_logic_vector(18 downto 0);
signal d18_c19, d18_c20 :  std_logic;
signal T18s_c19 :  std_logic_vector(27 downto 0);
signal T18s_h_c19, T18s_h_c20 :  std_logic_vector(22 downto 0);
signal T18s_l_c19, T18s_l_c20 :  std_logic_vector(4 downto 0);
signal U18_c19, U18_c20 :  std_logic_vector(22 downto 0);
signal T20_h_c20 :  std_logic_vector(22 downto 0);
signal T19_c20 :  std_logic_vector(26 downto 0);
signal S18_c19, S18_c20 :  std_logic_vector(19 downto 0);
signal d19_c20, d19_c21 :  std_logic;
signal T19s_c20 :  std_logic_vector(27 downto 0);
signal T19s_h_c20, T19s_h_c21 :  std_logic_vector(23 downto 0);
signal T19s_l_c20, T19s_l_c21 :  std_logic_vector(3 downto 0);
signal U19_c20, U19_c21 :  std_logic_vector(23 downto 0);
signal T21_h_c21 :  std_logic_vector(23 downto 0);
signal T20_c21 :  std_logic_vector(26 downto 0);
signal S19_c20, S19_c21 :  std_logic_vector(20 downto 0);
signal d20_c21, d20_c22 :  std_logic;
signal T20s_c21 :  std_logic_vector(27 downto 0);
signal T20s_h_c21, T20s_h_c22 :  std_logic_vector(24 downto 0);
signal T20s_l_c21, T20s_l_c22 :  std_logic_vector(2 downto 0);
signal U20_c21, U20_c22 :  std_logic_vector(24 downto 0);
signal T22_h_c22 :  std_logic_vector(24 downto 0);
signal T21_c22 :  std_logic_vector(26 downto 0);
signal S20_c21, S20_c22 :  std_logic_vector(21 downto 0);
signal d21_c22, d21_c23, d21_c24 :  std_logic;
signal T21s_c22 :  std_logic_vector(27 downto 0);
signal T21s_h_c22, T21s_h_c23, T21s_h_c24 :  std_logic_vector(25 downto 0);
signal T21s_l_c22, T21s_l_c23, T21s_l_c24 :  std_logic_vector(1 downto 0);
signal U21_c22, U21_c23, U21_c24 :  std_logic_vector(25 downto 0);
signal T23_h_c24 :  std_logic_vector(25 downto 0);
signal T22_c24 :  std_logic_vector(26 downto 0);
signal S21_c22, S21_c23, S21_c24 :  std_logic_vector(22 downto 0);
signal d22_c24, d22_c25 :  std_logic;
signal T22s_c24 :  std_logic_vector(27 downto 0);
signal T22s_h_c24, T22s_h_c25 :  std_logic_vector(26 downto 0);
signal T22s_l_c24, T22s_l_c25 :  std_logic_vector(0 downto 0);
signal U22_c24, U22_c25 :  std_logic_vector(26 downto 0);
signal T24_h_c25 :  std_logic_vector(26 downto 0);
signal T23_c25 :  std_logic_vector(26 downto 0);
signal S22_c24, S22_c25 :  std_logic_vector(23 downto 0);
signal d23_c25, d23_c26 :  std_logic;
signal T23s_c25 :  std_logic_vector(27 downto 0);
signal T23s_h_c25, T23s_h_c26 :  std_logic_vector(27 downto 0);
signal U23_c25, U23_c26 :  std_logic_vector(27 downto 0);
signal T25_h_c26 :  std_logic_vector(27 downto 0);
signal T24_c26 :  std_logic_vector(26 downto 0);
signal S23_c25, S23_c26 :  std_logic_vector(24 downto 0);
signal d25_c26 :  std_logic;
signal mR_c26 :  std_logic_vector(25 downto 0);
signal fR_c26, fR_c27 :  std_logic_vector(22 downto 0);
signal round_c26, round_c27 :  std_logic;
signal fRrnd_c27 :  std_logic_vector(22 downto 0);
signal Rn2_c27 :  std_logic_vector(30 downto 0);
signal xsR_c0, xsR_c1, xsR_c2, xsR_c3, xsR_c4, xsR_c5, xsR_c6, xsR_c7, xsR_c8, xsR_c9, xsR_c10, xsR_c11, xsR_c12, xsR_c13, xsR_c14, xsR_c15, xsR_c16, xsR_c17, xsR_c18, xsR_c19, xsR_c20, xsR_c21, xsR_c22, xsR_c23, xsR_c24, xsR_c25, xsR_c26, xsR_c27 :  std_logic_vector(2 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               eRn1_c1 <= eRn1_c0;
               fracXnorm_c1 <= fracXnorm_c0;
               S0_c1 <= S0_c0;
               xsR_c1 <= xsR_c0;
            end if;
            if ce_2 = '1' then
               eRn1_c2 <= eRn1_c1;
               d1_c2 <= d1_c1;
               T1s_h_c2 <= T1s_h_c1;
               T1s_l_c2 <= T1s_l_c1;
               U1_c2 <= U1_c1;
               S1_c2 <= S1_c1;
               xsR_c2 <= xsR_c1;
            end if;
            if ce_3 = '1' then
               eRn1_c3 <= eRn1_c2;
               d2_c3 <= d2_c2;
               T2s_h_c3 <= T2s_h_c2;
               T2s_l_c3 <= T2s_l_c2;
               U2_c3 <= U2_c2;
               S2_c3 <= S2_c2;
               xsR_c3 <= xsR_c2;
            end if;
            if ce_4 = '1' then
               eRn1_c4 <= eRn1_c3;
               d3_c4 <= d3_c3;
               T3s_h_c4 <= T3s_h_c3;
               T3s_l_c4 <= T3s_l_c3;
               U3_c4 <= U3_c3;
               S3_c4 <= S3_c3;
               xsR_c4 <= xsR_c3;
            end if;
            if ce_5 = '1' then
               eRn1_c5 <= eRn1_c4;
               d4_c5 <= d4_c4;
               T4s_h_c5 <= T4s_h_c4;
               T4s_l_c5 <= T4s_l_c4;
               U4_c5 <= U4_c4;
               S4_c5 <= S4_c4;
               xsR_c5 <= xsR_c4;
            end if;
            if ce_6 = '1' then
               eRn1_c6 <= eRn1_c5;
               d5_c6 <= d5_c5;
               T5s_h_c6 <= T5s_h_c5;
               T5s_l_c6 <= T5s_l_c5;
               U5_c6 <= U5_c5;
               S5_c6 <= S5_c5;
               xsR_c6 <= xsR_c5;
            end if;
            if ce_7 = '1' then
               eRn1_c7 <= eRn1_c6;
               d6_c7 <= d6_c6;
               T6s_h_c7 <= T6s_h_c6;
               T6s_l_c7 <= T6s_l_c6;
               U6_c7 <= U6_c6;
               S6_c7 <= S6_c6;
               xsR_c7 <= xsR_c6;
            end if;
            if ce_8 = '1' then
               eRn1_c8 <= eRn1_c7;
               d7_c8 <= d7_c7;
               T7s_h_c8 <= T7s_h_c7;
               T7s_l_c8 <= T7s_l_c7;
               U7_c8 <= U7_c7;
               S7_c8 <= S7_c7;
               xsR_c8 <= xsR_c7;
            end if;
            if ce_9 = '1' then
               eRn1_c9 <= eRn1_c8;
               d8_c9 <= d8_c8;
               T8s_h_c9 <= T8s_h_c8;
               T8s_l_c9 <= T8s_l_c8;
               U8_c9 <= U8_c8;
               S8_c9 <= S8_c8;
               xsR_c9 <= xsR_c8;
            end if;
            if ce_10 = '1' then
               eRn1_c10 <= eRn1_c9;
               d9_c10 <= d9_c9;
               T9s_h_c10 <= T9s_h_c9;
               T9s_l_c10 <= T9s_l_c9;
               U9_c10 <= U9_c9;
               S9_c10 <= S9_c9;
               xsR_c10 <= xsR_c9;
            end if;
            if ce_11 = '1' then
               eRn1_c11 <= eRn1_c10;
               d10_c11 <= d10_c10;
               T10s_h_c11 <= T10s_h_c10;
               T10s_l_c11 <= T10s_l_c10;
               U10_c11 <= U10_c10;
               S10_c11 <= S10_c10;
               xsR_c11 <= xsR_c10;
            end if;
            if ce_12 = '1' then
               eRn1_c12 <= eRn1_c11;
               d11_c12 <= d11_c11;
               T11s_h_c12 <= T11s_h_c11;
               T11s_l_c12 <= T11s_l_c11;
               U11_c12 <= U11_c11;
               S11_c12 <= S11_c11;
               xsR_c12 <= xsR_c11;
            end if;
            if ce_13 = '1' then
               eRn1_c13 <= eRn1_c12;
               d12_c13 <= d12_c12;
               T12s_h_c13 <= T12s_h_c12;
               T12s_l_c13 <= T12s_l_c12;
               U12_c13 <= U12_c12;
               S12_c13 <= S12_c12;
               xsR_c13 <= xsR_c12;
            end if;
            if ce_14 = '1' then
               eRn1_c14 <= eRn1_c13;
               d13_c14 <= d13_c13;
               T13s_h_c14 <= T13s_h_c13;
               T13s_l_c14 <= T13s_l_c13;
               U13_c14 <= U13_c13;
               S13_c14 <= S13_c13;
               xsR_c14 <= xsR_c13;
            end if;
            if ce_15 = '1' then
               eRn1_c15 <= eRn1_c14;
               d14_c15 <= d14_c14;
               T14s_h_c15 <= T14s_h_c14;
               T14s_l_c15 <= T14s_l_c14;
               U14_c15 <= U14_c14;
               S14_c15 <= S14_c14;
               xsR_c15 <= xsR_c14;
            end if;
            if ce_16 = '1' then
               eRn1_c16 <= eRn1_c15;
               d15_c16 <= d15_c15;
               T15s_h_c16 <= T15s_h_c15;
               T15s_l_c16 <= T15s_l_c15;
               U15_c16 <= U15_c15;
               S15_c16 <= S15_c15;
               xsR_c16 <= xsR_c15;
            end if;
            if ce_17 = '1' then
               eRn1_c17 <= eRn1_c16;
               d16_c17 <= d16_c16;
               T16s_h_c17 <= T16s_h_c16;
               T16s_l_c17 <= T16s_l_c16;
               U16_c17 <= U16_c16;
               S16_c17 <= S16_c16;
               xsR_c17 <= xsR_c16;
            end if;
            if ce_18 = '1' then
               eRn1_c18 <= eRn1_c17;
               d16_c18 <= d16_c17;
               T16s_h_c18 <= T16s_h_c17;
               T16s_l_c18 <= T16s_l_c17;
               U16_c18 <= U16_c17;
               S16_c18 <= S16_c17;
               xsR_c18 <= xsR_c17;
            end if;
            if ce_19 = '1' then
               eRn1_c19 <= eRn1_c18;
               d17_c19 <= d17_c18;
               T17s_h_c19 <= T17s_h_c18;
               T17s_l_c19 <= T17s_l_c18;
               U17_c19 <= U17_c18;
               S17_c19 <= S17_c18;
               xsR_c19 <= xsR_c18;
            end if;
            if ce_20 = '1' then
               eRn1_c20 <= eRn1_c19;
               d18_c20 <= d18_c19;
               T18s_h_c20 <= T18s_h_c19;
               T18s_l_c20 <= T18s_l_c19;
               U18_c20 <= U18_c19;
               S18_c20 <= S18_c19;
               xsR_c20 <= xsR_c19;
            end if;
            if ce_21 = '1' then
               eRn1_c21 <= eRn1_c20;
               d19_c21 <= d19_c20;
               T19s_h_c21 <= T19s_h_c20;
               T19s_l_c21 <= T19s_l_c20;
               U19_c21 <= U19_c20;
               S19_c21 <= S19_c20;
               xsR_c21 <= xsR_c20;
            end if;
            if ce_22 = '1' then
               eRn1_c22 <= eRn1_c21;
               d20_c22 <= d20_c21;
               T20s_h_c22 <= T20s_h_c21;
               T20s_l_c22 <= T20s_l_c21;
               U20_c22 <= U20_c21;
               S20_c22 <= S20_c21;
               xsR_c22 <= xsR_c21;
            end if;
            if ce_23 = '1' then
               eRn1_c23 <= eRn1_c22;
               d21_c23 <= d21_c22;
               T21s_h_c23 <= T21s_h_c22;
               T21s_l_c23 <= T21s_l_c22;
               U21_c23 <= U21_c22;
               S21_c23 <= S21_c22;
               xsR_c23 <= xsR_c22;
            end if;
            if ce_24 = '1' then
               eRn1_c24 <= eRn1_c23;
               d21_c24 <= d21_c23;
               T21s_h_c24 <= T21s_h_c23;
               T21s_l_c24 <= T21s_l_c23;
               U21_c24 <= U21_c23;
               S21_c24 <= S21_c23;
               xsR_c24 <= xsR_c23;
            end if;
            if ce_25 = '1' then
               eRn1_c25 <= eRn1_c24;
               d22_c25 <= d22_c24;
               T22s_h_c25 <= T22s_h_c24;
               T22s_l_c25 <= T22s_l_c24;
               U22_c25 <= U22_c24;
               S22_c25 <= S22_c24;
               xsR_c25 <= xsR_c24;
            end if;
            if ce_26 = '1' then
               eRn1_c26 <= eRn1_c25;
               d23_c26 <= d23_c25;
               T23s_h_c26 <= T23s_h_c25;
               U23_c26 <= U23_c25;
               S23_c26 <= S23_c25;
               xsR_c26 <= xsR_c25;
            end if;
            if ce_27 = '1' then
               eRn1_c27 <= eRn1_c26;
               fR_c27 <= fR_c26;
               round_c27 <= round_c26;
               xsR_c27 <= xsR_c26;
            end if;
         end if;
      end process;
   fracX_c0 <= X(22 downto 0); -- fraction
   eRn0_c0 <= "0" & X(30 downto 24); -- exponent
   xsX_c0 <= X(33 downto 31); -- exception and sign
   eRn1_c0 <= eRn0_c0 + ("00" & (5 downto 0 => '1')) + X(23);
   fracXnorm_c0 <= "1" & fracX_c0 & "000" when X(23) = '0' else
         "01" & fracX_c0&"00"; -- pre-normalization
   S0_c0 <= "01";
   T1_c1 <= ("0111" + fracXnorm_c1(26 downto 23)) & fracXnorm_c1(22 downto 0);
   -- now implementing the recurrence 
   --  this is a binary non-restoring algorithm, see ASA book
   -- Step 2
   d1_c1 <= not T1_c1(26); --  bit of weight -1
   T1s_c1 <= T1_c1 & "0";
   T1s_h_c1 <= T1s_c1(27 downto 22);
   T1s_l_c1 <= T1s_c1(21 downto 0);
   U1_c1 <=  "0" & S0_c1 & d1_c1 & (not d1_c1) & "1"; 
   T3_h_c2 <=   T1s_h_c2 - U1_c2 when d1_c2='1'
        else T1s_h_c2 + U1_c2;
   T2_c2 <= T3_h_c2(4 downto 0) & T1s_l_c2;
   S1_c1 <= S0_c1 & d1_c1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 3
   d2_c2 <= not T2_c2(26); --  bit of weight -2
   T2s_c2 <= T2_c2 & "0";
   T2s_h_c2 <= T2s_c2(27 downto 21);
   T2s_l_c2 <= T2s_c2(20 downto 0);
   U2_c2 <=  "0" & S1_c2 & d2_c2 & (not d2_c2) & "1"; 
   T4_h_c3 <=   T2s_h_c3 - U2_c3 when d2_c3='1'
        else T2s_h_c3 + U2_c3;
   T3_c3 <= T4_h_c3(5 downto 0) & T2s_l_c3;
   S2_c2 <= S1_c2 & d2_c2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 4
   d3_c3 <= not T3_c3(26); --  bit of weight -3
   T3s_c3 <= T3_c3 & "0";
   T3s_h_c3 <= T3s_c3(27 downto 20);
   T3s_l_c3 <= T3s_c3(19 downto 0);
   U3_c3 <=  "0" & S2_c3 & d3_c3 & (not d3_c3) & "1"; 
   T5_h_c4 <=   T3s_h_c4 - U3_c4 when d3_c4='1'
        else T3s_h_c4 + U3_c4;
   T4_c4 <= T5_h_c4(6 downto 0) & T3s_l_c4;
   S3_c3 <= S2_c3 & d3_c3; -- here -1 becomes 0 and 1 becomes 1
   -- Step 5
   d4_c4 <= not T4_c4(26); --  bit of weight -4
   T4s_c4 <= T4_c4 & "0";
   T4s_h_c4 <= T4s_c4(27 downto 19);
   T4s_l_c4 <= T4s_c4(18 downto 0);
   U4_c4 <=  "0" & S3_c4 & d4_c4 & (not d4_c4) & "1"; 
   T6_h_c5 <=   T4s_h_c5 - U4_c5 when d4_c5='1'
        else T4s_h_c5 + U4_c5;
   T5_c5 <= T6_h_c5(7 downto 0) & T4s_l_c5;
   S4_c4 <= S3_c4 & d4_c4; -- here -1 becomes 0 and 1 becomes 1
   -- Step 6
   d5_c5 <= not T5_c5(26); --  bit of weight -5
   T5s_c5 <= T5_c5 & "0";
   T5s_h_c5 <= T5s_c5(27 downto 18);
   T5s_l_c5 <= T5s_c5(17 downto 0);
   U5_c5 <=  "0" & S4_c5 & d5_c5 & (not d5_c5) & "1"; 
   T7_h_c6 <=   T5s_h_c6 - U5_c6 when d5_c6='1'
        else T5s_h_c6 + U5_c6;
   T6_c6 <= T7_h_c6(8 downto 0) & T5s_l_c6;
   S5_c5 <= S4_c5 & d5_c5; -- here -1 becomes 0 and 1 becomes 1
   -- Step 7
   d6_c6 <= not T6_c6(26); --  bit of weight -6
   T6s_c6 <= T6_c6 & "0";
   T6s_h_c6 <= T6s_c6(27 downto 17);
   T6s_l_c6 <= T6s_c6(16 downto 0);
   U6_c6 <=  "0" & S5_c6 & d6_c6 & (not d6_c6) & "1"; 
   T8_h_c7 <=   T6s_h_c7 - U6_c7 when d6_c7='1'
        else T6s_h_c7 + U6_c7;
   T7_c7 <= T8_h_c7(9 downto 0) & T6s_l_c7;
   S6_c6 <= S5_c6 & d6_c6; -- here -1 becomes 0 and 1 becomes 1
   -- Step 8
   d7_c7 <= not T7_c7(26); --  bit of weight -7
   T7s_c7 <= T7_c7 & "0";
   T7s_h_c7 <= T7s_c7(27 downto 16);
   T7s_l_c7 <= T7s_c7(15 downto 0);
   U7_c7 <=  "0" & S6_c7 & d7_c7 & (not d7_c7) & "1"; 
   T9_h_c8 <=   T7s_h_c8 - U7_c8 when d7_c8='1'
        else T7s_h_c8 + U7_c8;
   T8_c8 <= T9_h_c8(10 downto 0) & T7s_l_c8;
   S7_c7 <= S6_c7 & d7_c7; -- here -1 becomes 0 and 1 becomes 1
   -- Step 9
   d8_c8 <= not T8_c8(26); --  bit of weight -8
   T8s_c8 <= T8_c8 & "0";
   T8s_h_c8 <= T8s_c8(27 downto 15);
   T8s_l_c8 <= T8s_c8(14 downto 0);
   U8_c8 <=  "0" & S7_c8 & d8_c8 & (not d8_c8) & "1"; 
   T10_h_c9 <=   T8s_h_c9 - U8_c9 when d8_c9='1'
        else T8s_h_c9 + U8_c9;
   T9_c9 <= T10_h_c9(11 downto 0) & T8s_l_c9;
   S8_c8 <= S7_c8 & d8_c8; -- here -1 becomes 0 and 1 becomes 1
   -- Step 10
   d9_c9 <= not T9_c9(26); --  bit of weight -9
   T9s_c9 <= T9_c9 & "0";
   T9s_h_c9 <= T9s_c9(27 downto 14);
   T9s_l_c9 <= T9s_c9(13 downto 0);
   U9_c9 <=  "0" & S8_c9 & d9_c9 & (not d9_c9) & "1"; 
   T11_h_c10 <=   T9s_h_c10 - U9_c10 when d9_c10='1'
        else T9s_h_c10 + U9_c10;
   T10_c10 <= T11_h_c10(12 downto 0) & T9s_l_c10;
   S9_c9 <= S8_c9 & d9_c9; -- here -1 becomes 0 and 1 becomes 1
   -- Step 11
   d10_c10 <= not T10_c10(26); --  bit of weight -10
   T10s_c10 <= T10_c10 & "0";
   T10s_h_c10 <= T10s_c10(27 downto 13);
   T10s_l_c10 <= T10s_c10(12 downto 0);
   U10_c10 <=  "0" & S9_c10 & d10_c10 & (not d10_c10) & "1"; 
   T12_h_c11 <=   T10s_h_c11 - U10_c11 when d10_c11='1'
        else T10s_h_c11 + U10_c11;
   T11_c11 <= T12_h_c11(13 downto 0) & T10s_l_c11;
   S10_c10 <= S9_c10 & d10_c10; -- here -1 becomes 0 and 1 becomes 1
   -- Step 12
   d11_c11 <= not T11_c11(26); --  bit of weight -11
   T11s_c11 <= T11_c11 & "0";
   T11s_h_c11 <= T11s_c11(27 downto 12);
   T11s_l_c11 <= T11s_c11(11 downto 0);
   U11_c11 <=  "0" & S10_c11 & d11_c11 & (not d11_c11) & "1"; 
   T13_h_c12 <=   T11s_h_c12 - U11_c12 when d11_c12='1'
        else T11s_h_c12 + U11_c12;
   T12_c12 <= T13_h_c12(14 downto 0) & T11s_l_c12;
   S11_c11 <= S10_c11 & d11_c11; -- here -1 becomes 0 and 1 becomes 1
   -- Step 13
   d12_c12 <= not T12_c12(26); --  bit of weight -12
   T12s_c12 <= T12_c12 & "0";
   T12s_h_c12 <= T12s_c12(27 downto 11);
   T12s_l_c12 <= T12s_c12(10 downto 0);
   U12_c12 <=  "0" & S11_c12 & d12_c12 & (not d12_c12) & "1"; 
   T14_h_c13 <=   T12s_h_c13 - U12_c13 when d12_c13='1'
        else T12s_h_c13 + U12_c13;
   T13_c13 <= T14_h_c13(15 downto 0) & T12s_l_c13;
   S12_c12 <= S11_c12 & d12_c12; -- here -1 becomes 0 and 1 becomes 1
   -- Step 14
   d13_c13 <= not T13_c13(26); --  bit of weight -13
   T13s_c13 <= T13_c13 & "0";
   T13s_h_c13 <= T13s_c13(27 downto 10);
   T13s_l_c13 <= T13s_c13(9 downto 0);
   U13_c13 <=  "0" & S12_c13 & d13_c13 & (not d13_c13) & "1"; 
   T15_h_c14 <=   T13s_h_c14 - U13_c14 when d13_c14='1'
        else T13s_h_c14 + U13_c14;
   T14_c14 <= T15_h_c14(16 downto 0) & T13s_l_c14;
   S13_c13 <= S12_c13 & d13_c13; -- here -1 becomes 0 and 1 becomes 1
   -- Step 15
   d14_c14 <= not T14_c14(26); --  bit of weight -14
   T14s_c14 <= T14_c14 & "0";
   T14s_h_c14 <= T14s_c14(27 downto 9);
   T14s_l_c14 <= T14s_c14(8 downto 0);
   U14_c14 <=  "0" & S13_c14 & d14_c14 & (not d14_c14) & "1"; 
   T16_h_c15 <=   T14s_h_c15 - U14_c15 when d14_c15='1'
        else T14s_h_c15 + U14_c15;
   T15_c15 <= T16_h_c15(17 downto 0) & T14s_l_c15;
   S14_c14 <= S13_c14 & d14_c14; -- here -1 becomes 0 and 1 becomes 1
   -- Step 16
   d15_c15 <= not T15_c15(26); --  bit of weight -15
   T15s_c15 <= T15_c15 & "0";
   T15s_h_c15 <= T15s_c15(27 downto 8);
   T15s_l_c15 <= T15s_c15(7 downto 0);
   U15_c15 <=  "0" & S14_c15 & d15_c15 & (not d15_c15) & "1"; 
   T17_h_c16 <=   T15s_h_c16 - U15_c16 when d15_c16='1'
        else T15s_h_c16 + U15_c16;
   T16_c16 <= T17_h_c16(18 downto 0) & T15s_l_c16;
   S15_c15 <= S14_c15 & d15_c15; -- here -1 becomes 0 and 1 becomes 1
   -- Step 17
   d16_c16 <= not T16_c16(26); --  bit of weight -16
   T16s_c16 <= T16_c16 & "0";
   T16s_h_c16 <= T16s_c16(27 downto 7);
   T16s_l_c16 <= T16s_c16(6 downto 0);
   U16_c16 <=  "0" & S15_c16 & d16_c16 & (not d16_c16) & "1"; 
   T18_h_c18 <=   T16s_h_c18 - U16_c18 when d16_c18='1'
        else T16s_h_c18 + U16_c18;
   T17_c18 <= T18_h_c18(19 downto 0) & T16s_l_c18;
   S16_c16 <= S15_c16 & d16_c16; -- here -1 becomes 0 and 1 becomes 1
   -- Step 18
   d17_c18 <= not T17_c18(26); --  bit of weight -17
   T17s_c18 <= T17_c18 & "0";
   T17s_h_c18 <= T17s_c18(27 downto 6);
   T17s_l_c18 <= T17s_c18(5 downto 0);
   U17_c18 <=  "0" & S16_c18 & d17_c18 & (not d17_c18) & "1"; 
   T19_h_c19 <=   T17s_h_c19 - U17_c19 when d17_c19='1'
        else T17s_h_c19 + U17_c19;
   T18_c19 <= T19_h_c19(20 downto 0) & T17s_l_c19;
   S17_c18 <= S16_c18 & d17_c18; -- here -1 becomes 0 and 1 becomes 1
   -- Step 19
   d18_c19 <= not T18_c19(26); --  bit of weight -18
   T18s_c19 <= T18_c19 & "0";
   T18s_h_c19 <= T18s_c19(27 downto 5);
   T18s_l_c19 <= T18s_c19(4 downto 0);
   U18_c19 <=  "0" & S17_c19 & d18_c19 & (not d18_c19) & "1"; 
   T20_h_c20 <=   T18s_h_c20 - U18_c20 when d18_c20='1'
        else T18s_h_c20 + U18_c20;
   T19_c20 <= T20_h_c20(21 downto 0) & T18s_l_c20;
   S18_c19 <= S17_c19 & d18_c19; -- here -1 becomes 0 and 1 becomes 1
   -- Step 20
   d19_c20 <= not T19_c20(26); --  bit of weight -19
   T19s_c20 <= T19_c20 & "0";
   T19s_h_c20 <= T19s_c20(27 downto 4);
   T19s_l_c20 <= T19s_c20(3 downto 0);
   U19_c20 <=  "0" & S18_c20 & d19_c20 & (not d19_c20) & "1"; 
   T21_h_c21 <=   T19s_h_c21 - U19_c21 when d19_c21='1'
        else T19s_h_c21 + U19_c21;
   T20_c21 <= T21_h_c21(22 downto 0) & T19s_l_c21;
   S19_c20 <= S18_c20 & d19_c20; -- here -1 becomes 0 and 1 becomes 1
   -- Step 21
   d20_c21 <= not T20_c21(26); --  bit of weight -20
   T20s_c21 <= T20_c21 & "0";
   T20s_h_c21 <= T20s_c21(27 downto 3);
   T20s_l_c21 <= T20s_c21(2 downto 0);
   U20_c21 <=  "0" & S19_c21 & d20_c21 & (not d20_c21) & "1"; 
   T22_h_c22 <=   T20s_h_c22 - U20_c22 when d20_c22='1'
        else T20s_h_c22 + U20_c22;
   T21_c22 <= T22_h_c22(23 downto 0) & T20s_l_c22;
   S20_c21 <= S19_c21 & d20_c21; -- here -1 becomes 0 and 1 becomes 1
   -- Step 22
   d21_c22 <= not T21_c22(26); --  bit of weight -21
   T21s_c22 <= T21_c22 & "0";
   T21s_h_c22 <= T21s_c22(27 downto 2);
   T21s_l_c22 <= T21s_c22(1 downto 0);
   U21_c22 <=  "0" & S20_c22 & d21_c22 & (not d21_c22) & "1"; 
   T23_h_c24 <=   T21s_h_c24 - U21_c24 when d21_c24='1'
        else T21s_h_c24 + U21_c24;
   T22_c24 <= T23_h_c24(24 downto 0) & T21s_l_c24;
   S21_c22 <= S20_c22 & d21_c22; -- here -1 becomes 0 and 1 becomes 1
   -- Step 23
   d22_c24 <= not T22_c24(26); --  bit of weight -22
   T22s_c24 <= T22_c24 & "0";
   T22s_h_c24 <= T22s_c24(27 downto 1);
   T22s_l_c24 <= T22s_c24(0 downto 0);
   U22_c24 <=  "0" & S21_c24 & d22_c24 & (not d22_c24) & "1"; 
   T24_h_c25 <=   T22s_h_c25 - U22_c25 when d22_c25='1'
        else T22s_h_c25 + U22_c25;
   T23_c25 <= T24_h_c25(25 downto 0) & T22s_l_c25;
   S22_c24 <= S21_c24 & d22_c24; -- here -1 becomes 0 and 1 becomes 1
   -- Step 24
   d23_c25 <= not T23_c25(26); --  bit of weight -23
   T23s_c25 <= T23_c25 & "0";
   T23s_h_c25 <= T23s_c25(27 downto 0);
   U23_c25 <=  "0" & S22_c25 & d23_c25 & (not d23_c25) & "1"; 
   T25_h_c26 <=   T23s_h_c26 - U23_c26 when d23_c26='1'
        else T23s_h_c26 + U23_c26;
   T24_c26 <= T25_h_c26(26 downto 0);
   S23_c25 <= S22_c25 & d23_c25; -- here -1 becomes 0 and 1 becomes 1
   d25_c26 <= not T24_c26(26) ; -- the sign of the remainder will become the round bit
   mR_c26 <= S23_c26 & d25_c26; -- result significand
   fR_c26 <= mR_c26(23 downto 1);-- removing leading 1
   round_c26 <= mR_c26(0); -- round bit
   fRrnd_c27 <= fR_c27 + ((22 downto 1 => '0') & round_c27); -- rounding sqrt never changes exponents 
   Rn2_c27 <= eRn1_c27 & fRrnd_c27;
   -- sign and exception processing
   with xsX_c0  select 
      xsR_c0 <= "010"  when "010",  -- normal case
             "100"  when "100",  -- +infty
             "000"  when "000",  -- +0
             "001"  when "001",  -- the infamous sqrt(-0)=-0
             "110"  when others; -- return NaN
   R <= xsR_c27 & Rn2_c27; 
end architecture;



