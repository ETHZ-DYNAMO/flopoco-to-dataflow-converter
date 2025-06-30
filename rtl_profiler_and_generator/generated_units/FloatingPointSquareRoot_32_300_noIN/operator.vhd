--------------------------------------------------------------------------------
--                          FloatingPointSquareRoot
--                               (FPSqrt_8_23)
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 9 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
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
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9 : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of FloatingPointSquareRoot is
signal fracX_c0 :  std_logic_vector(22 downto 0);
signal eRn0_c0 :  std_logic_vector(7 downto 0);
signal xsX_c0 :  std_logic_vector(2 downto 0);
signal eRn1_c0, eRn1_c1, eRn1_c2, eRn1_c3, eRn1_c4, eRn1_c5, eRn1_c6, eRn1_c7, eRn1_c8, eRn1_c9 :  std_logic_vector(7 downto 0);
signal fracXnorm_c0 :  std_logic_vector(26 downto 0);
signal S0_c0 :  std_logic_vector(1 downto 0);
signal T1_c0 :  std_logic_vector(26 downto 0);
signal d1_c0 :  std_logic;
signal T1s_c0 :  std_logic_vector(27 downto 0);
signal T1s_h_c0 :  std_logic_vector(5 downto 0);
signal T1s_l_c0 :  std_logic_vector(21 downto 0);
signal U1_c0 :  std_logic_vector(5 downto 0);
signal T3_h_c0 :  std_logic_vector(5 downto 0);
signal T2_c0 :  std_logic_vector(26 downto 0);
signal S1_c0 :  std_logic_vector(2 downto 0);
signal d2_c0, d2_c1 :  std_logic;
signal T2s_c0 :  std_logic_vector(27 downto 0);
signal T2s_h_c0, T2s_h_c1 :  std_logic_vector(6 downto 0);
signal T2s_l_c0, T2s_l_c1 :  std_logic_vector(20 downto 0);
signal U2_c0, U2_c1 :  std_logic_vector(6 downto 0);
signal T4_h_c1 :  std_logic_vector(6 downto 0);
signal T3_c1 :  std_logic_vector(26 downto 0);
signal S2_c0, S2_c1 :  std_logic_vector(3 downto 0);
signal d3_c1 :  std_logic;
signal T3s_c1 :  std_logic_vector(27 downto 0);
signal T3s_h_c1 :  std_logic_vector(7 downto 0);
signal T3s_l_c1 :  std_logic_vector(19 downto 0);
signal U3_c1 :  std_logic_vector(7 downto 0);
signal T5_h_c1 :  std_logic_vector(7 downto 0);
signal T4_c1 :  std_logic_vector(26 downto 0);
signal S3_c1 :  std_logic_vector(4 downto 0);
signal d4_c1 :  std_logic;
signal T4s_c1 :  std_logic_vector(27 downto 0);
signal T4s_h_c1 :  std_logic_vector(8 downto 0);
signal T4s_l_c1 :  std_logic_vector(18 downto 0);
signal U4_c1 :  std_logic_vector(8 downto 0);
signal T6_h_c1 :  std_logic_vector(8 downto 0);
signal T5_c1 :  std_logic_vector(26 downto 0);
signal S4_c1 :  std_logic_vector(5 downto 0);
signal d5_c1, d5_c2 :  std_logic;
signal T5s_c1 :  std_logic_vector(27 downto 0);
signal T5s_h_c1, T5s_h_c2 :  std_logic_vector(9 downto 0);
signal T5s_l_c1, T5s_l_c2 :  std_logic_vector(17 downto 0);
signal U5_c1, U5_c2 :  std_logic_vector(9 downto 0);
signal T7_h_c2 :  std_logic_vector(9 downto 0);
signal T6_c2 :  std_logic_vector(26 downto 0);
signal S5_c1, S5_c2 :  std_logic_vector(6 downto 0);
signal d6_c2 :  std_logic;
signal T6s_c2 :  std_logic_vector(27 downto 0);
signal T6s_h_c2 :  std_logic_vector(10 downto 0);
signal T6s_l_c2 :  std_logic_vector(16 downto 0);
signal U6_c2 :  std_logic_vector(10 downto 0);
signal T8_h_c2 :  std_logic_vector(10 downto 0);
signal T7_c2 :  std_logic_vector(26 downto 0);
signal S6_c2 :  std_logic_vector(7 downto 0);
signal d7_c2 :  std_logic;
signal T7s_c2 :  std_logic_vector(27 downto 0);
signal T7s_h_c2 :  std_logic_vector(11 downto 0);
signal T7s_l_c2 :  std_logic_vector(15 downto 0);
signal U7_c2 :  std_logic_vector(11 downto 0);
signal T9_h_c2 :  std_logic_vector(11 downto 0);
signal T8_c2 :  std_logic_vector(26 downto 0);
signal S7_c2 :  std_logic_vector(8 downto 0);
signal d8_c2, d8_c3 :  std_logic;
signal T8s_c2 :  std_logic_vector(27 downto 0);
signal T8s_h_c2, T8s_h_c3 :  std_logic_vector(12 downto 0);
signal T8s_l_c2, T8s_l_c3 :  std_logic_vector(14 downto 0);
signal U8_c2, U8_c3 :  std_logic_vector(12 downto 0);
signal T10_h_c3 :  std_logic_vector(12 downto 0);
signal T9_c3 :  std_logic_vector(26 downto 0);
signal S8_c2, S8_c3 :  std_logic_vector(9 downto 0);
signal d9_c3 :  std_logic;
signal T9s_c3 :  std_logic_vector(27 downto 0);
signal T9s_h_c3 :  std_logic_vector(13 downto 0);
signal T9s_l_c3 :  std_logic_vector(13 downto 0);
signal U9_c3 :  std_logic_vector(13 downto 0);
signal T11_h_c3 :  std_logic_vector(13 downto 0);
signal T10_c3 :  std_logic_vector(26 downto 0);
signal S9_c3 :  std_logic_vector(10 downto 0);
signal d10_c3 :  std_logic;
signal T10s_c3 :  std_logic_vector(27 downto 0);
signal T10s_h_c3 :  std_logic_vector(14 downto 0);
signal T10s_l_c3 :  std_logic_vector(12 downto 0);
signal U10_c3 :  std_logic_vector(14 downto 0);
signal T12_h_c3 :  std_logic_vector(14 downto 0);
signal T11_c3 :  std_logic_vector(26 downto 0);
signal S10_c3 :  std_logic_vector(11 downto 0);
signal d11_c3, d11_c4 :  std_logic;
signal T11s_c3 :  std_logic_vector(27 downto 0);
signal T11s_h_c3, T11s_h_c4 :  std_logic_vector(15 downto 0);
signal T11s_l_c3, T11s_l_c4 :  std_logic_vector(11 downto 0);
signal U11_c3, U11_c4 :  std_logic_vector(15 downto 0);
signal T13_h_c4 :  std_logic_vector(15 downto 0);
signal T12_c4 :  std_logic_vector(26 downto 0);
signal S11_c3, S11_c4 :  std_logic_vector(12 downto 0);
signal d12_c4 :  std_logic;
signal T12s_c4 :  std_logic_vector(27 downto 0);
signal T12s_h_c4 :  std_logic_vector(16 downto 0);
signal T12s_l_c4 :  std_logic_vector(10 downto 0);
signal U12_c4 :  std_logic_vector(16 downto 0);
signal T14_h_c4 :  std_logic_vector(16 downto 0);
signal T13_c4 :  std_logic_vector(26 downto 0);
signal S12_c4 :  std_logic_vector(13 downto 0);
signal d13_c4 :  std_logic;
signal T13s_c4 :  std_logic_vector(27 downto 0);
signal T13s_h_c4 :  std_logic_vector(17 downto 0);
signal T13s_l_c4 :  std_logic_vector(9 downto 0);
signal U13_c4 :  std_logic_vector(17 downto 0);
signal T15_h_c4 :  std_logic_vector(17 downto 0);
signal T14_c4 :  std_logic_vector(26 downto 0);
signal S13_c4 :  std_logic_vector(14 downto 0);
signal d14_c4, d14_c5 :  std_logic;
signal T14s_c4 :  std_logic_vector(27 downto 0);
signal T14s_h_c4, T14s_h_c5 :  std_logic_vector(18 downto 0);
signal T14s_l_c4, T14s_l_c5 :  std_logic_vector(8 downto 0);
signal U14_c4, U14_c5 :  std_logic_vector(18 downto 0);
signal T16_h_c5 :  std_logic_vector(18 downto 0);
signal T15_c5 :  std_logic_vector(26 downto 0);
signal S14_c4, S14_c5 :  std_logic_vector(15 downto 0);
signal d15_c5 :  std_logic;
signal T15s_c5 :  std_logic_vector(27 downto 0);
signal T15s_h_c5 :  std_logic_vector(19 downto 0);
signal T15s_l_c5 :  std_logic_vector(7 downto 0);
signal U15_c5 :  std_logic_vector(19 downto 0);
signal T17_h_c5 :  std_logic_vector(19 downto 0);
signal T16_c5 :  std_logic_vector(26 downto 0);
signal S15_c5 :  std_logic_vector(16 downto 0);
signal d16_c5, d16_c6 :  std_logic;
signal T16s_c5 :  std_logic_vector(27 downto 0);
signal T16s_h_c5, T16s_h_c6 :  std_logic_vector(20 downto 0);
signal T16s_l_c5, T16s_l_c6 :  std_logic_vector(6 downto 0);
signal U16_c5, U16_c6 :  std_logic_vector(20 downto 0);
signal T18_h_c6 :  std_logic_vector(20 downto 0);
signal T17_c6 :  std_logic_vector(26 downto 0);
signal S16_c5, S16_c6 :  std_logic_vector(17 downto 0);
signal d17_c6 :  std_logic;
signal T17s_c6 :  std_logic_vector(27 downto 0);
signal T17s_h_c6 :  std_logic_vector(21 downto 0);
signal T17s_l_c6 :  std_logic_vector(5 downto 0);
signal U17_c6 :  std_logic_vector(21 downto 0);
signal T19_h_c6 :  std_logic_vector(21 downto 0);
signal T18_c6 :  std_logic_vector(26 downto 0);
signal S17_c6 :  std_logic_vector(18 downto 0);
signal d18_c6 :  std_logic;
signal T18s_c6 :  std_logic_vector(27 downto 0);
signal T18s_h_c6 :  std_logic_vector(22 downto 0);
signal T18s_l_c6 :  std_logic_vector(4 downto 0);
signal U18_c6 :  std_logic_vector(22 downto 0);
signal T20_h_c6 :  std_logic_vector(22 downto 0);
signal T19_c6 :  std_logic_vector(26 downto 0);
signal S18_c6 :  std_logic_vector(19 downto 0);
signal d19_c6, d19_c7 :  std_logic;
signal T19s_c6 :  std_logic_vector(27 downto 0);
signal T19s_h_c6, T19s_h_c7 :  std_logic_vector(23 downto 0);
signal T19s_l_c6, T19s_l_c7 :  std_logic_vector(3 downto 0);
signal U19_c6, U19_c7 :  std_logic_vector(23 downto 0);
signal T21_h_c7 :  std_logic_vector(23 downto 0);
signal T20_c7 :  std_logic_vector(26 downto 0);
signal S19_c6, S19_c7 :  std_logic_vector(20 downto 0);
signal d20_c7 :  std_logic;
signal T20s_c7 :  std_logic_vector(27 downto 0);
signal T20s_h_c7 :  std_logic_vector(24 downto 0);
signal T20s_l_c7 :  std_logic_vector(2 downto 0);
signal U20_c7 :  std_logic_vector(24 downto 0);
signal T22_h_c7 :  std_logic_vector(24 downto 0);
signal T21_c7 :  std_logic_vector(26 downto 0);
signal S20_c7 :  std_logic_vector(21 downto 0);
signal d21_c7 :  std_logic;
signal T21s_c7 :  std_logic_vector(27 downto 0);
signal T21s_h_c7 :  std_logic_vector(25 downto 0);
signal T21s_l_c7 :  std_logic_vector(1 downto 0);
signal U21_c7 :  std_logic_vector(25 downto 0);
signal T23_h_c7 :  std_logic_vector(25 downto 0);
signal T22_c7 :  std_logic_vector(26 downto 0);
signal S21_c7 :  std_logic_vector(22 downto 0);
signal d22_c7, d22_c8 :  std_logic;
signal T22s_c7 :  std_logic_vector(27 downto 0);
signal T22s_h_c7, T22s_h_c8 :  std_logic_vector(26 downto 0);
signal T22s_l_c7, T22s_l_c8 :  std_logic_vector(0 downto 0);
signal U22_c7, U22_c8 :  std_logic_vector(26 downto 0);
signal T24_h_c8 :  std_logic_vector(26 downto 0);
signal T23_c8 :  std_logic_vector(26 downto 0);
signal S22_c7, S22_c8 :  std_logic_vector(23 downto 0);
signal d23_c8 :  std_logic;
signal T23s_c8 :  std_logic_vector(27 downto 0);
signal T23s_h_c8 :  std_logic_vector(27 downto 0);
signal U23_c8 :  std_logic_vector(27 downto 0);
signal T25_h_c8 :  std_logic_vector(27 downto 0);
signal T24_c8 :  std_logic_vector(26 downto 0);
signal S23_c8 :  std_logic_vector(24 downto 0);
signal d25_c8 :  std_logic;
signal mR_c8 :  std_logic_vector(25 downto 0);
signal fR_c8, fR_c9 :  std_logic_vector(22 downto 0);
signal round_c8, round_c9 :  std_logic;
signal fRrnd_c9 :  std_logic_vector(22 downto 0);
signal Rn2_c9 :  std_logic_vector(30 downto 0);
signal xsR_c0, xsR_c1, xsR_c2, xsR_c3, xsR_c4, xsR_c5, xsR_c6, xsR_c7, xsR_c8, xsR_c9 :  std_logic_vector(2 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               eRn1_c1 <= eRn1_c0;
               d2_c1 <= d2_c0;
               T2s_h_c1 <= T2s_h_c0;
               T2s_l_c1 <= T2s_l_c0;
               U2_c1 <= U2_c0;
               S2_c1 <= S2_c0;
               xsR_c1 <= xsR_c0;
            end if;
            if ce_2 = '1' then
               eRn1_c2 <= eRn1_c1;
               d5_c2 <= d5_c1;
               T5s_h_c2 <= T5s_h_c1;
               T5s_l_c2 <= T5s_l_c1;
               U5_c2 <= U5_c1;
               S5_c2 <= S5_c1;
               xsR_c2 <= xsR_c1;
            end if;
            if ce_3 = '1' then
               eRn1_c3 <= eRn1_c2;
               d8_c3 <= d8_c2;
               T8s_h_c3 <= T8s_h_c2;
               T8s_l_c3 <= T8s_l_c2;
               U8_c3 <= U8_c2;
               S8_c3 <= S8_c2;
               xsR_c3 <= xsR_c2;
            end if;
            if ce_4 = '1' then
               eRn1_c4 <= eRn1_c3;
               d11_c4 <= d11_c3;
               T11s_h_c4 <= T11s_h_c3;
               T11s_l_c4 <= T11s_l_c3;
               U11_c4 <= U11_c3;
               S11_c4 <= S11_c3;
               xsR_c4 <= xsR_c3;
            end if;
            if ce_5 = '1' then
               eRn1_c5 <= eRn1_c4;
               d14_c5 <= d14_c4;
               T14s_h_c5 <= T14s_h_c4;
               T14s_l_c5 <= T14s_l_c4;
               U14_c5 <= U14_c4;
               S14_c5 <= S14_c4;
               xsR_c5 <= xsR_c4;
            end if;
            if ce_6 = '1' then
               eRn1_c6 <= eRn1_c5;
               d16_c6 <= d16_c5;
               T16s_h_c6 <= T16s_h_c5;
               T16s_l_c6 <= T16s_l_c5;
               U16_c6 <= U16_c5;
               S16_c6 <= S16_c5;
               xsR_c6 <= xsR_c5;
            end if;
            if ce_7 = '1' then
               eRn1_c7 <= eRn1_c6;
               d19_c7 <= d19_c6;
               T19s_h_c7 <= T19s_h_c6;
               T19s_l_c7 <= T19s_l_c6;
               U19_c7 <= U19_c6;
               S19_c7 <= S19_c6;
               xsR_c7 <= xsR_c6;
            end if;
            if ce_8 = '1' then
               eRn1_c8 <= eRn1_c7;
               d22_c8 <= d22_c7;
               T22s_h_c8 <= T22s_h_c7;
               T22s_l_c8 <= T22s_l_c7;
               U22_c8 <= U22_c7;
               S22_c8 <= S22_c7;
               xsR_c8 <= xsR_c7;
            end if;
            if ce_9 = '1' then
               eRn1_c9 <= eRn1_c8;
               fR_c9 <= fR_c8;
               round_c9 <= round_c8;
               xsR_c9 <= xsR_c8;
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
   T1_c0 <= ("0111" + fracXnorm_c0(26 downto 23)) & fracXnorm_c0(22 downto 0);
   -- now implementing the recurrence 
   --  this is a binary non-restoring algorithm, see ASA book
   -- Step 2
   d1_c0 <= not T1_c0(26); --  bit of weight -1
   T1s_c0 <= T1_c0 & "0";
   T1s_h_c0 <= T1s_c0(27 downto 22);
   T1s_l_c0 <= T1s_c0(21 downto 0);
   U1_c0 <=  "0" & S0_c0 & d1_c0 & (not d1_c0) & "1"; 
   T3_h_c0 <=   T1s_h_c0 - U1_c0 when d1_c0='1'
        else T1s_h_c0 + U1_c0;
   T2_c0 <= T3_h_c0(4 downto 0) & T1s_l_c0;
   S1_c0 <= S0_c0 & d1_c0; -- here -1 becomes 0 and 1 becomes 1
   -- Step 3
   d2_c0 <= not T2_c0(26); --  bit of weight -2
   T2s_c0 <= T2_c0 & "0";
   T2s_h_c0 <= T2s_c0(27 downto 21);
   T2s_l_c0 <= T2s_c0(20 downto 0);
   U2_c0 <=  "0" & S1_c0 & d2_c0 & (not d2_c0) & "1"; 
   T4_h_c1 <=   T2s_h_c1 - U2_c1 when d2_c1='1'
        else T2s_h_c1 + U2_c1;
   T3_c1 <= T4_h_c1(5 downto 0) & T2s_l_c1;
   S2_c0 <= S1_c0 & d2_c0; -- here -1 becomes 0 and 1 becomes 1
   -- Step 4
   d3_c1 <= not T3_c1(26); --  bit of weight -3
   T3s_c1 <= T3_c1 & "0";
   T3s_h_c1 <= T3s_c1(27 downto 20);
   T3s_l_c1 <= T3s_c1(19 downto 0);
   U3_c1 <=  "0" & S2_c1 & d3_c1 & (not d3_c1) & "1"; 
   T5_h_c1 <=   T3s_h_c1 - U3_c1 when d3_c1='1'
        else T3s_h_c1 + U3_c1;
   T4_c1 <= T5_h_c1(6 downto 0) & T3s_l_c1;
   S3_c1 <= S2_c1 & d3_c1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 5
   d4_c1 <= not T4_c1(26); --  bit of weight -4
   T4s_c1 <= T4_c1 & "0";
   T4s_h_c1 <= T4s_c1(27 downto 19);
   T4s_l_c1 <= T4s_c1(18 downto 0);
   U4_c1 <=  "0" & S3_c1 & d4_c1 & (not d4_c1) & "1"; 
   T6_h_c1 <=   T4s_h_c1 - U4_c1 when d4_c1='1'
        else T4s_h_c1 + U4_c1;
   T5_c1 <= T6_h_c1(7 downto 0) & T4s_l_c1;
   S4_c1 <= S3_c1 & d4_c1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 6
   d5_c1 <= not T5_c1(26); --  bit of weight -5
   T5s_c1 <= T5_c1 & "0";
   T5s_h_c1 <= T5s_c1(27 downto 18);
   T5s_l_c1 <= T5s_c1(17 downto 0);
   U5_c1 <=  "0" & S4_c1 & d5_c1 & (not d5_c1) & "1"; 
   T7_h_c2 <=   T5s_h_c2 - U5_c2 when d5_c2='1'
        else T5s_h_c2 + U5_c2;
   T6_c2 <= T7_h_c2(8 downto 0) & T5s_l_c2;
   S5_c1 <= S4_c1 & d5_c1; -- here -1 becomes 0 and 1 becomes 1
   -- Step 7
   d6_c2 <= not T6_c2(26); --  bit of weight -6
   T6s_c2 <= T6_c2 & "0";
   T6s_h_c2 <= T6s_c2(27 downto 17);
   T6s_l_c2 <= T6s_c2(16 downto 0);
   U6_c2 <=  "0" & S5_c2 & d6_c2 & (not d6_c2) & "1"; 
   T8_h_c2 <=   T6s_h_c2 - U6_c2 when d6_c2='1'
        else T6s_h_c2 + U6_c2;
   T7_c2 <= T8_h_c2(9 downto 0) & T6s_l_c2;
   S6_c2 <= S5_c2 & d6_c2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 8
   d7_c2 <= not T7_c2(26); --  bit of weight -7
   T7s_c2 <= T7_c2 & "0";
   T7s_h_c2 <= T7s_c2(27 downto 16);
   T7s_l_c2 <= T7s_c2(15 downto 0);
   U7_c2 <=  "0" & S6_c2 & d7_c2 & (not d7_c2) & "1"; 
   T9_h_c2 <=   T7s_h_c2 - U7_c2 when d7_c2='1'
        else T7s_h_c2 + U7_c2;
   T8_c2 <= T9_h_c2(10 downto 0) & T7s_l_c2;
   S7_c2 <= S6_c2 & d7_c2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 9
   d8_c2 <= not T8_c2(26); --  bit of weight -8
   T8s_c2 <= T8_c2 & "0";
   T8s_h_c2 <= T8s_c2(27 downto 15);
   T8s_l_c2 <= T8s_c2(14 downto 0);
   U8_c2 <=  "0" & S7_c2 & d8_c2 & (not d8_c2) & "1"; 
   T10_h_c3 <=   T8s_h_c3 - U8_c3 when d8_c3='1'
        else T8s_h_c3 + U8_c3;
   T9_c3 <= T10_h_c3(11 downto 0) & T8s_l_c3;
   S8_c2 <= S7_c2 & d8_c2; -- here -1 becomes 0 and 1 becomes 1
   -- Step 10
   d9_c3 <= not T9_c3(26); --  bit of weight -9
   T9s_c3 <= T9_c3 & "0";
   T9s_h_c3 <= T9s_c3(27 downto 14);
   T9s_l_c3 <= T9s_c3(13 downto 0);
   U9_c3 <=  "0" & S8_c3 & d9_c3 & (not d9_c3) & "1"; 
   T11_h_c3 <=   T9s_h_c3 - U9_c3 when d9_c3='1'
        else T9s_h_c3 + U9_c3;
   T10_c3 <= T11_h_c3(12 downto 0) & T9s_l_c3;
   S9_c3 <= S8_c3 & d9_c3; -- here -1 becomes 0 and 1 becomes 1
   -- Step 11
   d10_c3 <= not T10_c3(26); --  bit of weight -10
   T10s_c3 <= T10_c3 & "0";
   T10s_h_c3 <= T10s_c3(27 downto 13);
   T10s_l_c3 <= T10s_c3(12 downto 0);
   U10_c3 <=  "0" & S9_c3 & d10_c3 & (not d10_c3) & "1"; 
   T12_h_c3 <=   T10s_h_c3 - U10_c3 when d10_c3='1'
        else T10s_h_c3 + U10_c3;
   T11_c3 <= T12_h_c3(13 downto 0) & T10s_l_c3;
   S10_c3 <= S9_c3 & d10_c3; -- here -1 becomes 0 and 1 becomes 1
   -- Step 12
   d11_c3 <= not T11_c3(26); --  bit of weight -11
   T11s_c3 <= T11_c3 & "0";
   T11s_h_c3 <= T11s_c3(27 downto 12);
   T11s_l_c3 <= T11s_c3(11 downto 0);
   U11_c3 <=  "0" & S10_c3 & d11_c3 & (not d11_c3) & "1"; 
   T13_h_c4 <=   T11s_h_c4 - U11_c4 when d11_c4='1'
        else T11s_h_c4 + U11_c4;
   T12_c4 <= T13_h_c4(14 downto 0) & T11s_l_c4;
   S11_c3 <= S10_c3 & d11_c3; -- here -1 becomes 0 and 1 becomes 1
   -- Step 13
   d12_c4 <= not T12_c4(26); --  bit of weight -12
   T12s_c4 <= T12_c4 & "0";
   T12s_h_c4 <= T12s_c4(27 downto 11);
   T12s_l_c4 <= T12s_c4(10 downto 0);
   U12_c4 <=  "0" & S11_c4 & d12_c4 & (not d12_c4) & "1"; 
   T14_h_c4 <=   T12s_h_c4 - U12_c4 when d12_c4='1'
        else T12s_h_c4 + U12_c4;
   T13_c4 <= T14_h_c4(15 downto 0) & T12s_l_c4;
   S12_c4 <= S11_c4 & d12_c4; -- here -1 becomes 0 and 1 becomes 1
   -- Step 14
   d13_c4 <= not T13_c4(26); --  bit of weight -13
   T13s_c4 <= T13_c4 & "0";
   T13s_h_c4 <= T13s_c4(27 downto 10);
   T13s_l_c4 <= T13s_c4(9 downto 0);
   U13_c4 <=  "0" & S12_c4 & d13_c4 & (not d13_c4) & "1"; 
   T15_h_c4 <=   T13s_h_c4 - U13_c4 when d13_c4='1'
        else T13s_h_c4 + U13_c4;
   T14_c4 <= T15_h_c4(16 downto 0) & T13s_l_c4;
   S13_c4 <= S12_c4 & d13_c4; -- here -1 becomes 0 and 1 becomes 1
   -- Step 15
   d14_c4 <= not T14_c4(26); --  bit of weight -14
   T14s_c4 <= T14_c4 & "0";
   T14s_h_c4 <= T14s_c4(27 downto 9);
   T14s_l_c4 <= T14s_c4(8 downto 0);
   U14_c4 <=  "0" & S13_c4 & d14_c4 & (not d14_c4) & "1"; 
   T16_h_c5 <=   T14s_h_c5 - U14_c5 when d14_c5='1'
        else T14s_h_c5 + U14_c5;
   T15_c5 <= T16_h_c5(17 downto 0) & T14s_l_c5;
   S14_c4 <= S13_c4 & d14_c4; -- here -1 becomes 0 and 1 becomes 1
   -- Step 16
   d15_c5 <= not T15_c5(26); --  bit of weight -15
   T15s_c5 <= T15_c5 & "0";
   T15s_h_c5 <= T15s_c5(27 downto 8);
   T15s_l_c5 <= T15s_c5(7 downto 0);
   U15_c5 <=  "0" & S14_c5 & d15_c5 & (not d15_c5) & "1"; 
   T17_h_c5 <=   T15s_h_c5 - U15_c5 when d15_c5='1'
        else T15s_h_c5 + U15_c5;
   T16_c5 <= T17_h_c5(18 downto 0) & T15s_l_c5;
   S15_c5 <= S14_c5 & d15_c5; -- here -1 becomes 0 and 1 becomes 1
   -- Step 17
   d16_c5 <= not T16_c5(26); --  bit of weight -16
   T16s_c5 <= T16_c5 & "0";
   T16s_h_c5 <= T16s_c5(27 downto 7);
   T16s_l_c5 <= T16s_c5(6 downto 0);
   U16_c5 <=  "0" & S15_c5 & d16_c5 & (not d16_c5) & "1"; 
   T18_h_c6 <=   T16s_h_c6 - U16_c6 when d16_c6='1'
        else T16s_h_c6 + U16_c6;
   T17_c6 <= T18_h_c6(19 downto 0) & T16s_l_c6;
   S16_c5 <= S15_c5 & d16_c5; -- here -1 becomes 0 and 1 becomes 1
   -- Step 18
   d17_c6 <= not T17_c6(26); --  bit of weight -17
   T17s_c6 <= T17_c6 & "0";
   T17s_h_c6 <= T17s_c6(27 downto 6);
   T17s_l_c6 <= T17s_c6(5 downto 0);
   U17_c6 <=  "0" & S16_c6 & d17_c6 & (not d17_c6) & "1"; 
   T19_h_c6 <=   T17s_h_c6 - U17_c6 when d17_c6='1'
        else T17s_h_c6 + U17_c6;
   T18_c6 <= T19_h_c6(20 downto 0) & T17s_l_c6;
   S17_c6 <= S16_c6 & d17_c6; -- here -1 becomes 0 and 1 becomes 1
   -- Step 19
   d18_c6 <= not T18_c6(26); --  bit of weight -18
   T18s_c6 <= T18_c6 & "0";
   T18s_h_c6 <= T18s_c6(27 downto 5);
   T18s_l_c6 <= T18s_c6(4 downto 0);
   U18_c6 <=  "0" & S17_c6 & d18_c6 & (not d18_c6) & "1"; 
   T20_h_c6 <=   T18s_h_c6 - U18_c6 when d18_c6='1'
        else T18s_h_c6 + U18_c6;
   T19_c6 <= T20_h_c6(21 downto 0) & T18s_l_c6;
   S18_c6 <= S17_c6 & d18_c6; -- here -1 becomes 0 and 1 becomes 1
   -- Step 20
   d19_c6 <= not T19_c6(26); --  bit of weight -19
   T19s_c6 <= T19_c6 & "0";
   T19s_h_c6 <= T19s_c6(27 downto 4);
   T19s_l_c6 <= T19s_c6(3 downto 0);
   U19_c6 <=  "0" & S18_c6 & d19_c6 & (not d19_c6) & "1"; 
   T21_h_c7 <=   T19s_h_c7 - U19_c7 when d19_c7='1'
        else T19s_h_c7 + U19_c7;
   T20_c7 <= T21_h_c7(22 downto 0) & T19s_l_c7;
   S19_c6 <= S18_c6 & d19_c6; -- here -1 becomes 0 and 1 becomes 1
   -- Step 21
   d20_c7 <= not T20_c7(26); --  bit of weight -20
   T20s_c7 <= T20_c7 & "0";
   T20s_h_c7 <= T20s_c7(27 downto 3);
   T20s_l_c7 <= T20s_c7(2 downto 0);
   U20_c7 <=  "0" & S19_c7 & d20_c7 & (not d20_c7) & "1"; 
   T22_h_c7 <=   T20s_h_c7 - U20_c7 when d20_c7='1'
        else T20s_h_c7 + U20_c7;
   T21_c7 <= T22_h_c7(23 downto 0) & T20s_l_c7;
   S20_c7 <= S19_c7 & d20_c7; -- here -1 becomes 0 and 1 becomes 1
   -- Step 22
   d21_c7 <= not T21_c7(26); --  bit of weight -21
   T21s_c7 <= T21_c7 & "0";
   T21s_h_c7 <= T21s_c7(27 downto 2);
   T21s_l_c7 <= T21s_c7(1 downto 0);
   U21_c7 <=  "0" & S20_c7 & d21_c7 & (not d21_c7) & "1"; 
   T23_h_c7 <=   T21s_h_c7 - U21_c7 when d21_c7='1'
        else T21s_h_c7 + U21_c7;
   T22_c7 <= T23_h_c7(24 downto 0) & T21s_l_c7;
   S21_c7 <= S20_c7 & d21_c7; -- here -1 becomes 0 and 1 becomes 1
   -- Step 23
   d22_c7 <= not T22_c7(26); --  bit of weight -22
   T22s_c7 <= T22_c7 & "0";
   T22s_h_c7 <= T22s_c7(27 downto 1);
   T22s_l_c7 <= T22s_c7(0 downto 0);
   U22_c7 <=  "0" & S21_c7 & d22_c7 & (not d22_c7) & "1"; 
   T24_h_c8 <=   T22s_h_c8 - U22_c8 when d22_c8='1'
        else T22s_h_c8 + U22_c8;
   T23_c8 <= T24_h_c8(25 downto 0) & T22s_l_c8;
   S22_c7 <= S21_c7 & d22_c7; -- here -1 becomes 0 and 1 becomes 1
   -- Step 24
   d23_c8 <= not T23_c8(26); --  bit of weight -23
   T23s_c8 <= T23_c8 & "0";
   T23s_h_c8 <= T23s_c8(27 downto 0);
   U23_c8 <=  "0" & S22_c8 & d23_c8 & (not d23_c8) & "1"; 
   T25_h_c8 <=   T23s_h_c8 - U23_c8 when d23_c8='1'
        else T23s_h_c8 + U23_c8;
   T24_c8 <= T25_h_c8(26 downto 0);
   S23_c8 <= S22_c8 & d23_c8; -- here -1 becomes 0 and 1 becomes 1
   d25_c8 <= not T24_c8(26) ; -- the sign of the remainder will become the round bit
   mR_c8 <= S23_c8 & d25_c8; -- result significand
   fR_c8 <= mR_c8(23 downto 1);-- removing leading 1
   round_c8 <= mR_c8(0); -- round bit
   fRrnd_c9 <= fR_c9 + ((22 downto 1 => '0') & round_c9); -- rounding sqrt never changes exponents 
   Rn2_c9 <= eRn1_c9 & fRrnd_c9;
   -- sign and exception processing
   with xsX_c0  select 
      xsR_c0 <= "010"  when "010",  -- normal case
             "100"  when "100",  -- +infty
             "000"  when "000",  -- +0
             "001"  when "001",  -- the infamous sqrt(-0)=-0
             "110"  when others; -- return NaN
   R <= xsR_c9 & Rn2_c9; 
end architecture;



