--------------------------------------------------------------------------------
--                          selFunction_Freq300_uid4
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007-2022)
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X
-- Output signals: Y

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity selFunction_Freq300_uid4 is
    port (X : in  std_logic_vector(8 downto 0);
          Y : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of selFunction_Freq300_uid4 is
signal Y0 :  std_logic_vector(2 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(2 downto 0);
begin
   with X  select  Y0 <= 
      "000" when "000000000",
      "000" when "000000001",
      "000" when "000000010",
      "000" when "000000011",
      "000" when "000000100",
      "000" when "000000101",
      "000" when "000000110",
      "000" when "000000111",
      "000" when "000001000",
      "000" when "000001001",
      "000" when "000001010",
      "000" when "000001011",
      "000" when "000001100",
      "000" when "000001101",
      "000" when "000001110",
      "000" when "000001111",
      "001" when "000010000",
      "000" when "000010001",
      "000" when "000010010",
      "000" when "000010011",
      "000" when "000010100",
      "000" when "000010101",
      "000" when "000010110",
      "000" when "000010111",
      "001" when "000011000",
      "001" when "000011001",
      "001" when "000011010",
      "001" when "000011011",
      "000" when "000011100",
      "000" when "000011101",
      "000" when "000011110",
      "000" when "000011111",
      "001" when "000100000",
      "001" when "000100001",
      "001" when "000100010",
      "001" when "000100011",
      "001" when "000100100",
      "001" when "000100101",
      "001" when "000100110",
      "000" when "000100111",
      "001" when "000101000",
      "001" when "000101001",
      "001" when "000101010",
      "001" when "000101011",
      "001" when "000101100",
      "001" when "000101101",
      "001" when "000101110",
      "001" when "000101111",
      "010" when "000110000",
      "001" when "000110001",
      "001" when "000110010",
      "001" when "000110011",
      "001" when "000110100",
      "001" when "000110101",
      "001" when "000110110",
      "001" when "000110111",
      "010" when "000111000",
      "010" when "000111001",
      "001" when "000111010",
      "001" when "000111011",
      "001" when "000111100",
      "001" when "000111101",
      "001" when "000111110",
      "001" when "000111111",
      "010" when "001000000",
      "010" when "001000001",
      "010" when "001000010",
      "001" when "001000011",
      "001" when "001000100",
      "001" when "001000101",
      "001" when "001000110",
      "001" when "001000111",
      "010" when "001001000",
      "010" when "001001001",
      "010" when "001001010",
      "010" when "001001011",
      "001" when "001001100",
      "001" when "001001101",
      "001" when "001001110",
      "001" when "001001111",
      "010" when "001010000",
      "010" when "001010001",
      "010" when "001010010",
      "010" when "001010011",
      "010" when "001010100",
      "010" when "001010101",
      "001" when "001010110",
      "001" when "001010111",
      "010" when "001011000",
      "010" when "001011001",
      "010" when "001011010",
      "010" when "001011011",
      "010" when "001011100",
      "010" when "001011101",
      "010" when "001011110",
      "001" when "001011111",
      "010" when "001100000",
      "010" when "001100001",
      "010" when "001100010",
      "010" when "001100011",
      "010" when "001100100",
      "010" when "001100101",
      "010" when "001100110",
      "010" when "001100111",
      "010" when "001101000",
      "010" when "001101001",
      "010" when "001101010",
      "010" when "001101011",
      "010" when "001101100",
      "010" when "001101101",
      "010" when "001101110",
      "010" when "001101111",
      "010" when "001110000",
      "010" when "001110001",
      "010" when "001110010",
      "010" when "001110011",
      "010" when "001110100",
      "010" when "001110101",
      "010" when "001110110",
      "010" when "001110111",
      "010" when "001111000",
      "010" when "001111001",
      "010" when "001111010",
      "010" when "001111011",
      "010" when "001111100",
      "010" when "001111101",
      "010" when "001111110",
      "010" when "001111111",
      "010" when "010000000",
      "010" when "010000001",
      "010" when "010000010",
      "010" when "010000011",
      "010" when "010000100",
      "010" when "010000101",
      "010" when "010000110",
      "010" when "010000111",
      "010" when "010001000",
      "010" when "010001001",
      "010" when "010001010",
      "010" when "010001011",
      "010" when "010001100",
      "010" when "010001101",
      "010" when "010001110",
      "010" when "010001111",
      "010" when "010010000",
      "010" when "010010001",
      "010" when "010010010",
      "010" when "010010011",
      "010" when "010010100",
      "010" when "010010101",
      "010" when "010010110",
      "010" when "010010111",
      "010" when "010011000",
      "010" when "010011001",
      "010" when "010011010",
      "010" when "010011011",
      "010" when "010011100",
      "010" when "010011101",
      "010" when "010011110",
      "010" when "010011111",
      "010" when "010100000",
      "010" when "010100001",
      "010" when "010100010",
      "010" when "010100011",
      "010" when "010100100",
      "010" when "010100101",
      "010" when "010100110",
      "010" when "010100111",
      "010" when "010101000",
      "010" when "010101001",
      "010" when "010101010",
      "010" when "010101011",
      "010" when "010101100",
      "010" when "010101101",
      "010" when "010101110",
      "010" when "010101111",
      "010" when "010110000",
      "010" when "010110001",
      "010" when "010110010",
      "010" when "010110011",
      "010" when "010110100",
      "010" when "010110101",
      "010" when "010110110",
      "010" when "010110111",
      "010" when "010111000",
      "010" when "010111001",
      "010" when "010111010",
      "010" when "010111011",
      "010" when "010111100",
      "010" when "010111101",
      "010" when "010111110",
      "010" when "010111111",
      "010" when "011000000",
      "010" when "011000001",
      "010" when "011000010",
      "010" when "011000011",
      "010" when "011000100",
      "010" when "011000101",
      "010" when "011000110",
      "010" when "011000111",
      "010" when "011001000",
      "010" when "011001001",
      "010" when "011001010",
      "010" when "011001011",
      "010" when "011001100",
      "010" when "011001101",
      "010" when "011001110",
      "010" when "011001111",
      "010" when "011010000",
      "010" when "011010001",
      "010" when "011010010",
      "010" when "011010011",
      "010" when "011010100",
      "010" when "011010101",
      "010" when "011010110",
      "010" when "011010111",
      "010" when "011011000",
      "010" when "011011001",
      "010" when "011011010",
      "010" when "011011011",
      "010" when "011011100",
      "010" when "011011101",
      "010" when "011011110",
      "010" when "011011111",
      "010" when "011100000",
      "010" when "011100001",
      "010" when "011100010",
      "010" when "011100011",
      "010" when "011100100",
      "010" when "011100101",
      "010" when "011100110",
      "010" when "011100111",
      "010" when "011101000",
      "010" when "011101001",
      "010" when "011101010",
      "010" when "011101011",
      "010" when "011101100",
      "010" when "011101101",
      "010" when "011101110",
      "010" when "011101111",
      "010" when "011110000",
      "010" when "011110001",
      "010" when "011110010",
      "010" when "011110011",
      "010" when "011110100",
      "010" when "011110101",
      "010" when "011110110",
      "010" when "011110111",
      "010" when "011111000",
      "010" when "011111001",
      "010" when "011111010",
      "010" when "011111011",
      "010" when "011111100",
      "010" when "011111101",
      "010" when "011111110",
      "010" when "011111111",
      "110" when "100000000",
      "110" when "100000001",
      "110" when "100000010",
      "110" when "100000011",
      "110" when "100000100",
      "110" when "100000101",
      "110" when "100000110",
      "110" when "100000111",
      "110" when "100001000",
      "110" when "100001001",
      "110" when "100001010",
      "110" when "100001011",
      "110" when "100001100",
      "110" when "100001101",
      "110" when "100001110",
      "110" when "100001111",
      "110" when "100010000",
      "110" when "100010001",
      "110" when "100010010",
      "110" when "100010011",
      "110" when "100010100",
      "110" when "100010101",
      "110" when "100010110",
      "110" when "100010111",
      "110" when "100011000",
      "110" when "100011001",
      "110" when "100011010",
      "110" when "100011011",
      "110" when "100011100",
      "110" when "100011101",
      "110" when "100011110",
      "110" when "100011111",
      "110" when "100100000",
      "110" when "100100001",
      "110" when "100100010",
      "110" when "100100011",
      "110" when "100100100",
      "110" when "100100101",
      "110" when "100100110",
      "110" when "100100111",
      "110" when "100101000",
      "110" when "100101001",
      "110" when "100101010",
      "110" when "100101011",
      "110" when "100101100",
      "110" when "100101101",
      "110" when "100101110",
      "110" when "100101111",
      "110" when "100110000",
      "110" when "100110001",
      "110" when "100110010",
      "110" when "100110011",
      "110" when "100110100",
      "110" when "100110101",
      "110" when "100110110",
      "110" when "100110111",
      "110" when "100111000",
      "110" when "100111001",
      "110" when "100111010",
      "110" when "100111011",
      "110" when "100111100",
      "110" when "100111101",
      "110" when "100111110",
      "110" when "100111111",
      "110" when "101000000",
      "110" when "101000001",
      "110" when "101000010",
      "110" when "101000011",
      "110" when "101000100",
      "110" when "101000101",
      "110" when "101000110",
      "110" when "101000111",
      "110" when "101001000",
      "110" when "101001001",
      "110" when "101001010",
      "110" when "101001011",
      "110" when "101001100",
      "110" when "101001101",
      "110" when "101001110",
      "110" when "101001111",
      "110" when "101010000",
      "110" when "101010001",
      "110" when "101010010",
      "110" when "101010011",
      "110" when "101010100",
      "110" when "101010101",
      "110" when "101010110",
      "110" when "101010111",
      "110" when "101011000",
      "110" when "101011001",
      "110" when "101011010",
      "110" when "101011011",
      "110" when "101011100",
      "110" when "101011101",
      "110" when "101011110",
      "110" when "101011111",
      "110" when "101100000",
      "110" when "101100001",
      "110" when "101100010",
      "110" when "101100011",
      "110" when "101100100",
      "110" when "101100101",
      "110" when "101100110",
      "110" when "101100111",
      "110" when "101101000",
      "110" when "101101001",
      "110" when "101101010",
      "110" when "101101011",
      "110" when "101101100",
      "110" when "101101101",
      "110" when "101101110",
      "110" when "101101111",
      "110" when "101110000",
      "110" when "101110001",
      "110" when "101110010",
      "110" when "101110011",
      "110" when "101110100",
      "110" when "101110101",
      "110" when "101110110",
      "110" when "101110111",
      "110" when "101111000",
      "110" when "101111001",
      "110" when "101111010",
      "110" when "101111011",
      "110" when "101111100",
      "110" when "101111101",
      "110" when "101111110",
      "110" when "101111111",
      "110" when "110000000",
      "110" when "110000001",
      "110" when "110000010",
      "110" when "110000011",
      "110" when "110000100",
      "110" when "110000101",
      "110" when "110000110",
      "110" when "110000111",
      "110" when "110001000",
      "110" when "110001001",
      "110" when "110001010",
      "110" when "110001011",
      "110" when "110001100",
      "110" when "110001101",
      "110" when "110001110",
      "110" when "110001111",
      "110" when "110010000",
      "110" when "110010001",
      "110" when "110010010",
      "110" when "110010011",
      "110" when "110010100",
      "110" when "110010101",
      "110" when "110010110",
      "110" when "110010111",
      "110" when "110011000",
      "110" when "110011001",
      "110" when "110011010",
      "110" when "110011011",
      "110" when "110011100",
      "110" when "110011101",
      "110" when "110011110",
      "110" when "110011111",
      "110" when "110100000",
      "110" when "110100001",
      "110" when "110100010",
      "110" when "110100011",
      "110" when "110100100",
      "110" when "110100101",
      "110" when "110100110",
      "110" when "110100111",
      "110" when "110101000",
      "110" when "110101001",
      "110" when "110101010",
      "110" when "110101011",
      "110" when "110101100",
      "110" when "110101101",
      "110" when "110101110",
      "111" when "110101111",
      "110" when "110110000",
      "110" when "110110001",
      "110" when "110110010",
      "110" when "110110011",
      "110" when "110110100",
      "111" when "110110101",
      "111" when "110110110",
      "111" when "110110111",
      "110" when "110111000",
      "110" when "110111001",
      "110" when "110111010",
      "110" when "110111011",
      "111" when "110111100",
      "111" when "110111101",
      "111" when "110111110",
      "111" when "110111111",
      "110" when "111000000",
      "110" when "111000001",
      "111" when "111000010",
      "111" when "111000011",
      "111" when "111000100",
      "111" when "111000101",
      "111" when "111000110",
      "111" when "111000111",
      "110" when "111001000",
      "111" when "111001001",
      "111" when "111001010",
      "111" when "111001011",
      "111" when "111001100",
      "111" when "111001101",
      "111" when "111001110",
      "111" when "111001111",
      "111" when "111010000",
      "111" when "111010001",
      "111" when "111010010",
      "111" when "111010011",
      "111" when "111010100",
      "111" when "111010101",
      "111" when "111010110",
      "111" when "111010111",
      "111" when "111011000",
      "111" when "111011001",
      "111" when "111011010",
      "111" when "111011011",
      "111" when "111011100",
      "111" when "111011101",
      "111" when "111011110",
      "111" when "111011111",
      "111" when "111100000",
      "111" when "111100001",
      "111" when "111100010",
      "111" when "111100011",
      "111" when "111100100",
      "111" when "111100101",
      "111" when "111100110",
      "111" when "111100111",
      "111" when "111101000",
      "111" when "111101001",
      "111" when "111101010",
      "111" when "111101011",
      "000" when "111101100",
      "000" when "111101101",
      "000" when "111101110",
      "000" when "111101111",
      "000" when "111110000",
      "000" when "111110001",
      "000" when "111110010",
      "000" when "111110011",
      "000" when "111110100",
      "000" when "111110101",
      "000" when "111110110",
      "000" when "111110111",
      "000" when "111111000",
      "000" when "111111001",
      "000" when "111111010",
      "000" when "111111011",
      "000" when "111111100",
      "000" when "111111101",
      "000" when "111111110",
      "000" when "111111111",
      "---" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                            FloatingPointDivider
--                         (FPDiv_11_52_Freq300_uid2)
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Maxime Christ, Florent de Dinechin (2015)
--------------------------------------------------------------------------------
-- Pipeline depth: 20 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X Y
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FloatingPointDivider is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20 : in std_logic;
          X : in  std_logic_vector(11+52+2 downto 0);
          Y : in  std_logic_vector(11+52+2 downto 0);
          R : out  std_logic_vector(11+52+2 downto 0)   );
end entity;

architecture arch of FloatingPointDivider is
   component selFunction_Freq300_uid4 is
      port ( X : in  std_logic_vector(8 downto 0);
             Y : out  std_logic_vector(2 downto 0)   );
   end component;

signal fX_c0 :  std_logic_vector(52 downto 0);
signal fY_c0 :  std_logic_vector(52 downto 0);
signal expR0_c0, expR0_c1, expR0_c2, expR0_c3, expR0_c4, expR0_c5, expR0_c6, expR0_c7, expR0_c8, expR0_c9, expR0_c10, expR0_c11, expR0_c12, expR0_c13, expR0_c14, expR0_c15, expR0_c16, expR0_c17, expR0_c18, expR0_c19, expR0_c20 :  std_logic_vector(12 downto 0);
signal sR_c0, sR_c1, sR_c2, sR_c3, sR_c4, sR_c5, sR_c6, sR_c7, sR_c8, sR_c9, sR_c10, sR_c11, sR_c12, sR_c13, sR_c14, sR_c15, sR_c16, sR_c17, sR_c18, sR_c19, sR_c20 :  std_logic;
signal exnXY_c0 :  std_logic_vector(3 downto 0);
signal exnR0_c0, exnR0_c1, exnR0_c2, exnR0_c3, exnR0_c4, exnR0_c5, exnR0_c6, exnR0_c7, exnR0_c8, exnR0_c9, exnR0_c10, exnR0_c11, exnR0_c12, exnR0_c13, exnR0_c14, exnR0_c15, exnR0_c16, exnR0_c17, exnR0_c18, exnR0_c19, exnR0_c20 :  std_logic_vector(1 downto 0);
signal D_c0, D_c1, D_c2, D_c3, D_c4, D_c5, D_c6, D_c7, D_c8, D_c9, D_c10, D_c11, D_c12, D_c13, D_c14, D_c15, D_c16, D_c17, D_c18, D_c19 :  std_logic_vector(52 downto 0);
signal psX_c0 :  std_logic_vector(53 downto 0);
signal betaw28_c0 :  std_logic_vector(55 downto 0);
signal sel28_c0 :  std_logic_vector(8 downto 0);
signal q28_c0 :  std_logic_vector(2 downto 0);
signal q28_copy5_c0 :  std_logic_vector(2 downto 0);
signal absq28D_c0 :  std_logic_vector(55 downto 0);
signal w27_c0 :  std_logic_vector(55 downto 0);
signal betaw27_c0, betaw27_c1 :  std_logic_vector(55 downto 0);
signal sel27_c0 :  std_logic_vector(8 downto 0);
signal q27_c0, q27_c1 :  std_logic_vector(2 downto 0);
signal q27_copy6_c0 :  std_logic_vector(2 downto 0);
signal absq27D_c0, absq27D_c1 :  std_logic_vector(55 downto 0);
signal w26_c1 :  std_logic_vector(55 downto 0);
signal betaw26_c1, betaw26_c2 :  std_logic_vector(55 downto 0);
signal sel26_c1 :  std_logic_vector(8 downto 0);
signal q26_c1, q26_c2 :  std_logic_vector(2 downto 0);
signal q26_copy7_c1 :  std_logic_vector(2 downto 0);
signal absq26D_c1, absq26D_c2 :  std_logic_vector(55 downto 0);
signal w25_c2 :  std_logic_vector(55 downto 0);
signal betaw25_c2 :  std_logic_vector(55 downto 0);
signal sel25_c2 :  std_logic_vector(8 downto 0);
signal q25_c2 :  std_logic_vector(2 downto 0);
signal q25_copy8_c2 :  std_logic_vector(2 downto 0);
signal absq25D_c2 :  std_logic_vector(55 downto 0);
signal w24_c2 :  std_logic_vector(55 downto 0);
signal betaw24_c2, betaw24_c3 :  std_logic_vector(55 downto 0);
signal sel24_c2 :  std_logic_vector(8 downto 0);
signal q24_c3 :  std_logic_vector(2 downto 0);
signal q24_copy9_c2, q24_copy9_c3 :  std_logic_vector(2 downto 0);
signal absq24D_c3 :  std_logic_vector(55 downto 0);
signal w23_c3 :  std_logic_vector(55 downto 0);
signal betaw23_c3, betaw23_c4 :  std_logic_vector(55 downto 0);
signal sel23_c3 :  std_logic_vector(8 downto 0);
signal q23_c3, q23_c4 :  std_logic_vector(2 downto 0);
signal q23_copy10_c3 :  std_logic_vector(2 downto 0);
signal absq23D_c3, absq23D_c4 :  std_logic_vector(55 downto 0);
signal w22_c4 :  std_logic_vector(55 downto 0);
signal betaw22_c4 :  std_logic_vector(55 downto 0);
signal sel22_c4 :  std_logic_vector(8 downto 0);
signal q22_c4 :  std_logic_vector(2 downto 0);
signal q22_copy11_c4 :  std_logic_vector(2 downto 0);
signal absq22D_c4 :  std_logic_vector(55 downto 0);
signal w21_c4 :  std_logic_vector(55 downto 0);
signal betaw21_c4, betaw21_c5 :  std_logic_vector(55 downto 0);
signal sel21_c4 :  std_logic_vector(8 downto 0);
signal q21_c5 :  std_logic_vector(2 downto 0);
signal q21_copy12_c4, q21_copy12_c5 :  std_logic_vector(2 downto 0);
signal absq21D_c5 :  std_logic_vector(55 downto 0);
signal w20_c5 :  std_logic_vector(55 downto 0);
signal betaw20_c5, betaw20_c6 :  std_logic_vector(55 downto 0);
signal sel20_c5 :  std_logic_vector(8 downto 0);
signal q20_c5, q20_c6 :  std_logic_vector(2 downto 0);
signal q20_copy13_c5 :  std_logic_vector(2 downto 0);
signal absq20D_c5, absq20D_c6 :  std_logic_vector(55 downto 0);
signal w19_c6 :  std_logic_vector(55 downto 0);
signal betaw19_c6, betaw19_c7 :  std_logic_vector(55 downto 0);
signal sel19_c6 :  std_logic_vector(8 downto 0);
signal q19_c6, q19_c7 :  std_logic_vector(2 downto 0);
signal q19_copy14_c6 :  std_logic_vector(2 downto 0);
signal absq19D_c6, absq19D_c7 :  std_logic_vector(55 downto 0);
signal w18_c7 :  std_logic_vector(55 downto 0);
signal betaw18_c7 :  std_logic_vector(55 downto 0);
signal sel18_c7 :  std_logic_vector(8 downto 0);
signal q18_c7 :  std_logic_vector(2 downto 0);
signal q18_copy15_c7 :  std_logic_vector(2 downto 0);
signal absq18D_c7 :  std_logic_vector(55 downto 0);
signal w17_c7 :  std_logic_vector(55 downto 0);
signal betaw17_c7, betaw17_c8 :  std_logic_vector(55 downto 0);
signal sel17_c7 :  std_logic_vector(8 downto 0);
signal q17_c8 :  std_logic_vector(2 downto 0);
signal q17_copy16_c7, q17_copy16_c8 :  std_logic_vector(2 downto 0);
signal absq17D_c8 :  std_logic_vector(55 downto 0);
signal w16_c8 :  std_logic_vector(55 downto 0);
signal betaw16_c8, betaw16_c9 :  std_logic_vector(55 downto 0);
signal sel16_c8 :  std_logic_vector(8 downto 0);
signal q16_c8, q16_c9 :  std_logic_vector(2 downto 0);
signal q16_copy17_c8 :  std_logic_vector(2 downto 0);
signal absq16D_c8, absq16D_c9 :  std_logic_vector(55 downto 0);
signal w15_c9 :  std_logic_vector(55 downto 0);
signal betaw15_c9 :  std_logic_vector(55 downto 0);
signal sel15_c9 :  std_logic_vector(8 downto 0);
signal q15_c9 :  std_logic_vector(2 downto 0);
signal q15_copy18_c9 :  std_logic_vector(2 downto 0);
signal absq15D_c9 :  std_logic_vector(55 downto 0);
signal w14_c9 :  std_logic_vector(55 downto 0);
signal betaw14_c9, betaw14_c10 :  std_logic_vector(55 downto 0);
signal sel14_c9 :  std_logic_vector(8 downto 0);
signal q14_c10 :  std_logic_vector(2 downto 0);
signal q14_copy19_c9, q14_copy19_c10 :  std_logic_vector(2 downto 0);
signal absq14D_c10 :  std_logic_vector(55 downto 0);
signal w13_c10 :  std_logic_vector(55 downto 0);
signal betaw13_c10, betaw13_c11 :  std_logic_vector(55 downto 0);
signal sel13_c10 :  std_logic_vector(8 downto 0);
signal q13_c10, q13_c11 :  std_logic_vector(2 downto 0);
signal q13_copy20_c10 :  std_logic_vector(2 downto 0);
signal absq13D_c10, absq13D_c11 :  std_logic_vector(55 downto 0);
signal w12_c11 :  std_logic_vector(55 downto 0);
signal betaw12_c11, betaw12_c12 :  std_logic_vector(55 downto 0);
signal sel12_c11 :  std_logic_vector(8 downto 0);
signal q12_c11, q12_c12 :  std_logic_vector(2 downto 0);
signal q12_copy21_c11 :  std_logic_vector(2 downto 0);
signal absq12D_c11, absq12D_c12 :  std_logic_vector(55 downto 0);
signal w11_c12 :  std_logic_vector(55 downto 0);
signal betaw11_c12 :  std_logic_vector(55 downto 0);
signal sel11_c12 :  std_logic_vector(8 downto 0);
signal q11_c12 :  std_logic_vector(2 downto 0);
signal q11_copy22_c12 :  std_logic_vector(2 downto 0);
signal absq11D_c12 :  std_logic_vector(55 downto 0);
signal w10_c12 :  std_logic_vector(55 downto 0);
signal betaw10_c12, betaw10_c13 :  std_logic_vector(55 downto 0);
signal sel10_c12 :  std_logic_vector(8 downto 0);
signal q10_c13 :  std_logic_vector(2 downto 0);
signal q10_copy23_c12, q10_copy23_c13 :  std_logic_vector(2 downto 0);
signal absq10D_c13 :  std_logic_vector(55 downto 0);
signal w9_c13 :  std_logic_vector(55 downto 0);
signal betaw9_c13, betaw9_c14 :  std_logic_vector(55 downto 0);
signal sel9_c13 :  std_logic_vector(8 downto 0);
signal q9_c13, q9_c14 :  std_logic_vector(2 downto 0);
signal q9_copy24_c13 :  std_logic_vector(2 downto 0);
signal absq9D_c13, absq9D_c14 :  std_logic_vector(55 downto 0);
signal w8_c14 :  std_logic_vector(55 downto 0);
signal betaw8_c14 :  std_logic_vector(55 downto 0);
signal sel8_c14 :  std_logic_vector(8 downto 0);
signal q8_c14 :  std_logic_vector(2 downto 0);
signal q8_copy25_c14 :  std_logic_vector(2 downto 0);
signal absq8D_c14 :  std_logic_vector(55 downto 0);
signal w7_c14 :  std_logic_vector(55 downto 0);
signal betaw7_c14, betaw7_c15 :  std_logic_vector(55 downto 0);
signal sel7_c14 :  std_logic_vector(8 downto 0);
signal q7_c15 :  std_logic_vector(2 downto 0);
signal q7_copy26_c14, q7_copy26_c15 :  std_logic_vector(2 downto 0);
signal absq7D_c15 :  std_logic_vector(55 downto 0);
signal w6_c15 :  std_logic_vector(55 downto 0);
signal betaw6_c15, betaw6_c16 :  std_logic_vector(55 downto 0);
signal sel6_c15 :  std_logic_vector(8 downto 0);
signal q6_c15, q6_c16 :  std_logic_vector(2 downto 0);
signal q6_copy27_c15 :  std_logic_vector(2 downto 0);
signal absq6D_c15, absq6D_c16 :  std_logic_vector(55 downto 0);
signal w5_c16 :  std_logic_vector(55 downto 0);
signal betaw5_c16, betaw5_c17 :  std_logic_vector(55 downto 0);
signal sel5_c16 :  std_logic_vector(8 downto 0);
signal q5_c16, q5_c17 :  std_logic_vector(2 downto 0);
signal q5_copy28_c16 :  std_logic_vector(2 downto 0);
signal absq5D_c16, absq5D_c17 :  std_logic_vector(55 downto 0);
signal w4_c17 :  std_logic_vector(55 downto 0);
signal betaw4_c17 :  std_logic_vector(55 downto 0);
signal sel4_c17 :  std_logic_vector(8 downto 0);
signal q4_c17 :  std_logic_vector(2 downto 0);
signal q4_copy29_c17 :  std_logic_vector(2 downto 0);
signal absq4D_c17 :  std_logic_vector(55 downto 0);
signal w3_c17 :  std_logic_vector(55 downto 0);
signal betaw3_c17, betaw3_c18 :  std_logic_vector(55 downto 0);
signal sel3_c17 :  std_logic_vector(8 downto 0);
signal q3_c18 :  std_logic_vector(2 downto 0);
signal q3_copy30_c17, q3_copy30_c18 :  std_logic_vector(2 downto 0);
signal absq3D_c18 :  std_logic_vector(55 downto 0);
signal w2_c18 :  std_logic_vector(55 downto 0);
signal betaw2_c18, betaw2_c19 :  std_logic_vector(55 downto 0);
signal sel2_c18 :  std_logic_vector(8 downto 0);
signal q2_c18, q2_c19 :  std_logic_vector(2 downto 0);
signal q2_copy31_c18 :  std_logic_vector(2 downto 0);
signal absq2D_c18, absq2D_c19 :  std_logic_vector(55 downto 0);
signal w1_c19 :  std_logic_vector(55 downto 0);
signal betaw1_c19 :  std_logic_vector(55 downto 0);
signal sel1_c19 :  std_logic_vector(8 downto 0);
signal q1_c19 :  std_logic_vector(2 downto 0);
signal q1_copy32_c19 :  std_logic_vector(2 downto 0);
signal absq1D_c19 :  std_logic_vector(55 downto 0);
signal w0_c19 :  std_logic_vector(55 downto 0);
signal wfinal_c19 :  std_logic_vector(53 downto 0);
signal qM0_c19 :  std_logic;
signal qP28_c0, qP28_c1, qP28_c2, qP28_c3, qP28_c4, qP28_c5, qP28_c6, qP28_c7, qP28_c8, qP28_c9, qP28_c10, qP28_c11, qP28_c12, qP28_c13, qP28_c14, qP28_c15, qP28_c16, qP28_c17, qP28_c18, qP28_c19 :  std_logic_vector(1 downto 0);
signal qM28_c0, qM28_c1, qM28_c2, qM28_c3, qM28_c4, qM28_c5, qM28_c6, qM28_c7, qM28_c8, qM28_c9, qM28_c10, qM28_c11, qM28_c12, qM28_c13, qM28_c14, qM28_c15, qM28_c16, qM28_c17, qM28_c18, qM28_c19 :  std_logic_vector(1 downto 0);
signal qP27_c0, qP27_c1, qP27_c2, qP27_c3, qP27_c4, qP27_c5, qP27_c6, qP27_c7, qP27_c8, qP27_c9, qP27_c10, qP27_c11, qP27_c12, qP27_c13, qP27_c14, qP27_c15, qP27_c16, qP27_c17, qP27_c18, qP27_c19 :  std_logic_vector(1 downto 0);
signal qM27_c0, qM27_c1, qM27_c2, qM27_c3, qM27_c4, qM27_c5, qM27_c6, qM27_c7, qM27_c8, qM27_c9, qM27_c10, qM27_c11, qM27_c12, qM27_c13, qM27_c14, qM27_c15, qM27_c16, qM27_c17, qM27_c18, qM27_c19 :  std_logic_vector(1 downto 0);
signal qP26_c1, qP26_c2, qP26_c3, qP26_c4, qP26_c5, qP26_c6, qP26_c7, qP26_c8, qP26_c9, qP26_c10, qP26_c11, qP26_c12, qP26_c13, qP26_c14, qP26_c15, qP26_c16, qP26_c17, qP26_c18, qP26_c19 :  std_logic_vector(1 downto 0);
signal qM26_c1, qM26_c2, qM26_c3, qM26_c4, qM26_c5, qM26_c6, qM26_c7, qM26_c8, qM26_c9, qM26_c10, qM26_c11, qM26_c12, qM26_c13, qM26_c14, qM26_c15, qM26_c16, qM26_c17, qM26_c18, qM26_c19 :  std_logic_vector(1 downto 0);
signal qP25_c2, qP25_c3, qP25_c4, qP25_c5, qP25_c6, qP25_c7, qP25_c8, qP25_c9, qP25_c10, qP25_c11, qP25_c12, qP25_c13, qP25_c14, qP25_c15, qP25_c16, qP25_c17, qP25_c18, qP25_c19 :  std_logic_vector(1 downto 0);
signal qM25_c2, qM25_c3, qM25_c4, qM25_c5, qM25_c6, qM25_c7, qM25_c8, qM25_c9, qM25_c10, qM25_c11, qM25_c12, qM25_c13, qM25_c14, qM25_c15, qM25_c16, qM25_c17, qM25_c18, qM25_c19 :  std_logic_vector(1 downto 0);
signal qP24_c3, qP24_c4, qP24_c5, qP24_c6, qP24_c7, qP24_c8, qP24_c9, qP24_c10, qP24_c11, qP24_c12, qP24_c13, qP24_c14, qP24_c15, qP24_c16, qP24_c17, qP24_c18, qP24_c19 :  std_logic_vector(1 downto 0);
signal qM24_c3, qM24_c4, qM24_c5, qM24_c6, qM24_c7, qM24_c8, qM24_c9, qM24_c10, qM24_c11, qM24_c12, qM24_c13, qM24_c14, qM24_c15, qM24_c16, qM24_c17, qM24_c18, qM24_c19 :  std_logic_vector(1 downto 0);
signal qP23_c3, qP23_c4, qP23_c5, qP23_c6, qP23_c7, qP23_c8, qP23_c9, qP23_c10, qP23_c11, qP23_c12, qP23_c13, qP23_c14, qP23_c15, qP23_c16, qP23_c17, qP23_c18, qP23_c19 :  std_logic_vector(1 downto 0);
signal qM23_c3, qM23_c4, qM23_c5, qM23_c6, qM23_c7, qM23_c8, qM23_c9, qM23_c10, qM23_c11, qM23_c12, qM23_c13, qM23_c14, qM23_c15, qM23_c16, qM23_c17, qM23_c18, qM23_c19 :  std_logic_vector(1 downto 0);
signal qP22_c4, qP22_c5, qP22_c6, qP22_c7, qP22_c8, qP22_c9, qP22_c10, qP22_c11, qP22_c12, qP22_c13, qP22_c14, qP22_c15, qP22_c16, qP22_c17, qP22_c18, qP22_c19 :  std_logic_vector(1 downto 0);
signal qM22_c4, qM22_c5, qM22_c6, qM22_c7, qM22_c8, qM22_c9, qM22_c10, qM22_c11, qM22_c12, qM22_c13, qM22_c14, qM22_c15, qM22_c16, qM22_c17, qM22_c18, qM22_c19 :  std_logic_vector(1 downto 0);
signal qP21_c5, qP21_c6, qP21_c7, qP21_c8, qP21_c9, qP21_c10, qP21_c11, qP21_c12, qP21_c13, qP21_c14, qP21_c15, qP21_c16, qP21_c17, qP21_c18, qP21_c19 :  std_logic_vector(1 downto 0);
signal qM21_c5, qM21_c6, qM21_c7, qM21_c8, qM21_c9, qM21_c10, qM21_c11, qM21_c12, qM21_c13, qM21_c14, qM21_c15, qM21_c16, qM21_c17, qM21_c18, qM21_c19 :  std_logic_vector(1 downto 0);
signal qP20_c5, qP20_c6, qP20_c7, qP20_c8, qP20_c9, qP20_c10, qP20_c11, qP20_c12, qP20_c13, qP20_c14, qP20_c15, qP20_c16, qP20_c17, qP20_c18, qP20_c19 :  std_logic_vector(1 downto 0);
signal qM20_c5, qM20_c6, qM20_c7, qM20_c8, qM20_c9, qM20_c10, qM20_c11, qM20_c12, qM20_c13, qM20_c14, qM20_c15, qM20_c16, qM20_c17, qM20_c18, qM20_c19 :  std_logic_vector(1 downto 0);
signal qP19_c6, qP19_c7, qP19_c8, qP19_c9, qP19_c10, qP19_c11, qP19_c12, qP19_c13, qP19_c14, qP19_c15, qP19_c16, qP19_c17, qP19_c18, qP19_c19 :  std_logic_vector(1 downto 0);
signal qM19_c6, qM19_c7, qM19_c8, qM19_c9, qM19_c10, qM19_c11, qM19_c12, qM19_c13, qM19_c14, qM19_c15, qM19_c16, qM19_c17, qM19_c18, qM19_c19 :  std_logic_vector(1 downto 0);
signal qP18_c7, qP18_c8, qP18_c9, qP18_c10, qP18_c11, qP18_c12, qP18_c13, qP18_c14, qP18_c15, qP18_c16, qP18_c17, qP18_c18, qP18_c19 :  std_logic_vector(1 downto 0);
signal qM18_c7, qM18_c8, qM18_c9, qM18_c10, qM18_c11, qM18_c12, qM18_c13, qM18_c14, qM18_c15, qM18_c16, qM18_c17, qM18_c18, qM18_c19 :  std_logic_vector(1 downto 0);
signal qP17_c8, qP17_c9, qP17_c10, qP17_c11, qP17_c12, qP17_c13, qP17_c14, qP17_c15, qP17_c16, qP17_c17, qP17_c18, qP17_c19 :  std_logic_vector(1 downto 0);
signal qM17_c8, qM17_c9, qM17_c10, qM17_c11, qM17_c12, qM17_c13, qM17_c14, qM17_c15, qM17_c16, qM17_c17, qM17_c18, qM17_c19 :  std_logic_vector(1 downto 0);
signal qP16_c8, qP16_c9, qP16_c10, qP16_c11, qP16_c12, qP16_c13, qP16_c14, qP16_c15, qP16_c16, qP16_c17, qP16_c18, qP16_c19 :  std_logic_vector(1 downto 0);
signal qM16_c8, qM16_c9, qM16_c10, qM16_c11, qM16_c12, qM16_c13, qM16_c14, qM16_c15, qM16_c16, qM16_c17, qM16_c18, qM16_c19 :  std_logic_vector(1 downto 0);
signal qP15_c9, qP15_c10, qP15_c11, qP15_c12, qP15_c13, qP15_c14, qP15_c15, qP15_c16, qP15_c17, qP15_c18, qP15_c19 :  std_logic_vector(1 downto 0);
signal qM15_c9, qM15_c10, qM15_c11, qM15_c12, qM15_c13, qM15_c14, qM15_c15, qM15_c16, qM15_c17, qM15_c18, qM15_c19 :  std_logic_vector(1 downto 0);
signal qP14_c10, qP14_c11, qP14_c12, qP14_c13, qP14_c14, qP14_c15, qP14_c16, qP14_c17, qP14_c18, qP14_c19 :  std_logic_vector(1 downto 0);
signal qM14_c10, qM14_c11, qM14_c12, qM14_c13, qM14_c14, qM14_c15, qM14_c16, qM14_c17, qM14_c18, qM14_c19 :  std_logic_vector(1 downto 0);
signal qP13_c10, qP13_c11, qP13_c12, qP13_c13, qP13_c14, qP13_c15, qP13_c16, qP13_c17, qP13_c18, qP13_c19 :  std_logic_vector(1 downto 0);
signal qM13_c10, qM13_c11, qM13_c12, qM13_c13, qM13_c14, qM13_c15, qM13_c16, qM13_c17, qM13_c18, qM13_c19 :  std_logic_vector(1 downto 0);
signal qP12_c11, qP12_c12, qP12_c13, qP12_c14, qP12_c15, qP12_c16, qP12_c17, qP12_c18, qP12_c19 :  std_logic_vector(1 downto 0);
signal qM12_c11, qM12_c12, qM12_c13, qM12_c14, qM12_c15, qM12_c16, qM12_c17, qM12_c18, qM12_c19 :  std_logic_vector(1 downto 0);
signal qP11_c12, qP11_c13, qP11_c14, qP11_c15, qP11_c16, qP11_c17, qP11_c18, qP11_c19 :  std_logic_vector(1 downto 0);
signal qM11_c12, qM11_c13, qM11_c14, qM11_c15, qM11_c16, qM11_c17, qM11_c18, qM11_c19 :  std_logic_vector(1 downto 0);
signal qP10_c13, qP10_c14, qP10_c15, qP10_c16, qP10_c17, qP10_c18, qP10_c19 :  std_logic_vector(1 downto 0);
signal qM10_c13, qM10_c14, qM10_c15, qM10_c16, qM10_c17, qM10_c18, qM10_c19 :  std_logic_vector(1 downto 0);
signal qP9_c13, qP9_c14, qP9_c15, qP9_c16, qP9_c17, qP9_c18, qP9_c19 :  std_logic_vector(1 downto 0);
signal qM9_c13, qM9_c14, qM9_c15, qM9_c16, qM9_c17, qM9_c18, qM9_c19 :  std_logic_vector(1 downto 0);
signal qP8_c14, qP8_c15, qP8_c16, qP8_c17, qP8_c18, qP8_c19 :  std_logic_vector(1 downto 0);
signal qM8_c14, qM8_c15, qM8_c16, qM8_c17, qM8_c18, qM8_c19 :  std_logic_vector(1 downto 0);
signal qP7_c15, qP7_c16, qP7_c17, qP7_c18, qP7_c19 :  std_logic_vector(1 downto 0);
signal qM7_c15, qM7_c16, qM7_c17, qM7_c18, qM7_c19 :  std_logic_vector(1 downto 0);
signal qP6_c15, qP6_c16, qP6_c17, qP6_c18, qP6_c19 :  std_logic_vector(1 downto 0);
signal qM6_c15, qM6_c16, qM6_c17, qM6_c18, qM6_c19 :  std_logic_vector(1 downto 0);
signal qP5_c16, qP5_c17, qP5_c18, qP5_c19 :  std_logic_vector(1 downto 0);
signal qM5_c16, qM5_c17, qM5_c18, qM5_c19 :  std_logic_vector(1 downto 0);
signal qP4_c17, qP4_c18, qP4_c19 :  std_logic_vector(1 downto 0);
signal qM4_c17, qM4_c18, qM4_c19 :  std_logic_vector(1 downto 0);
signal qP3_c18, qP3_c19 :  std_logic_vector(1 downto 0);
signal qM3_c18, qM3_c19 :  std_logic_vector(1 downto 0);
signal qP2_c18, qP2_c19 :  std_logic_vector(1 downto 0);
signal qM2_c18, qM2_c19 :  std_logic_vector(1 downto 0);
signal qP1_c19 :  std_logic_vector(1 downto 0);
signal qM1_c19 :  std_logic_vector(1 downto 0);
signal qP_c19, qP_c20 :  std_logic_vector(55 downto 0);
signal qM_c19, qM_c20 :  std_logic_vector(55 downto 0);
signal quotient_c20 :  std_logic_vector(55 downto 0);
signal mR_c20 :  std_logic_vector(54 downto 0);
signal fRnorm_c20 :  std_logic_vector(52 downto 0);
signal round_c20 :  std_logic;
signal expR1_c20 :  std_logic_vector(12 downto 0);
signal expfrac_c20 :  std_logic_vector(64 downto 0);
signal expfracR_c20 :  std_logic_vector(64 downto 0);
signal exnR_c20 :  std_logic_vector(1 downto 0);
signal exnRfinal_c20 :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               expR0_c1 <= expR0_c0;
               sR_c1 <= sR_c0;
               exnR0_c1 <= exnR0_c0;
               D_c1 <= D_c0;
               betaw27_c1 <= betaw27_c0;
               q27_c1 <= q27_c0;
               absq27D_c1 <= absq27D_c0;
               qP28_c1 <= qP28_c0;
               qM28_c1 <= qM28_c0;
               qP27_c1 <= qP27_c0;
               qM27_c1 <= qM27_c0;
            end if;
            if ce_2 = '1' then
               expR0_c2 <= expR0_c1;
               sR_c2 <= sR_c1;
               exnR0_c2 <= exnR0_c1;
               D_c2 <= D_c1;
               betaw26_c2 <= betaw26_c1;
               q26_c2 <= q26_c1;
               absq26D_c2 <= absq26D_c1;
               qP28_c2 <= qP28_c1;
               qM28_c2 <= qM28_c1;
               qP27_c2 <= qP27_c1;
               qM27_c2 <= qM27_c1;
               qP26_c2 <= qP26_c1;
               qM26_c2 <= qM26_c1;
            end if;
            if ce_3 = '1' then
               expR0_c3 <= expR0_c2;
               sR_c3 <= sR_c2;
               exnR0_c3 <= exnR0_c2;
               D_c3 <= D_c2;
               betaw24_c3 <= betaw24_c2;
               q24_copy9_c3 <= q24_copy9_c2;
               qP28_c3 <= qP28_c2;
               qM28_c3 <= qM28_c2;
               qP27_c3 <= qP27_c2;
               qM27_c3 <= qM27_c2;
               qP26_c3 <= qP26_c2;
               qM26_c3 <= qM26_c2;
               qP25_c3 <= qP25_c2;
               qM25_c3 <= qM25_c2;
            end if;
            if ce_4 = '1' then
               expR0_c4 <= expR0_c3;
               sR_c4 <= sR_c3;
               exnR0_c4 <= exnR0_c3;
               D_c4 <= D_c3;
               betaw23_c4 <= betaw23_c3;
               q23_c4 <= q23_c3;
               absq23D_c4 <= absq23D_c3;
               qP28_c4 <= qP28_c3;
               qM28_c4 <= qM28_c3;
               qP27_c4 <= qP27_c3;
               qM27_c4 <= qM27_c3;
               qP26_c4 <= qP26_c3;
               qM26_c4 <= qM26_c3;
               qP25_c4 <= qP25_c3;
               qM25_c4 <= qM25_c3;
               qP24_c4 <= qP24_c3;
               qM24_c4 <= qM24_c3;
               qP23_c4 <= qP23_c3;
               qM23_c4 <= qM23_c3;
            end if;
            if ce_5 = '1' then
               expR0_c5 <= expR0_c4;
               sR_c5 <= sR_c4;
               exnR0_c5 <= exnR0_c4;
               D_c5 <= D_c4;
               betaw21_c5 <= betaw21_c4;
               q21_copy12_c5 <= q21_copy12_c4;
               qP28_c5 <= qP28_c4;
               qM28_c5 <= qM28_c4;
               qP27_c5 <= qP27_c4;
               qM27_c5 <= qM27_c4;
               qP26_c5 <= qP26_c4;
               qM26_c5 <= qM26_c4;
               qP25_c5 <= qP25_c4;
               qM25_c5 <= qM25_c4;
               qP24_c5 <= qP24_c4;
               qM24_c5 <= qM24_c4;
               qP23_c5 <= qP23_c4;
               qM23_c5 <= qM23_c4;
               qP22_c5 <= qP22_c4;
               qM22_c5 <= qM22_c4;
            end if;
            if ce_6 = '1' then
               expR0_c6 <= expR0_c5;
               sR_c6 <= sR_c5;
               exnR0_c6 <= exnR0_c5;
               D_c6 <= D_c5;
               betaw20_c6 <= betaw20_c5;
               q20_c6 <= q20_c5;
               absq20D_c6 <= absq20D_c5;
               qP28_c6 <= qP28_c5;
               qM28_c6 <= qM28_c5;
               qP27_c6 <= qP27_c5;
               qM27_c6 <= qM27_c5;
               qP26_c6 <= qP26_c5;
               qM26_c6 <= qM26_c5;
               qP25_c6 <= qP25_c5;
               qM25_c6 <= qM25_c5;
               qP24_c6 <= qP24_c5;
               qM24_c6 <= qM24_c5;
               qP23_c6 <= qP23_c5;
               qM23_c6 <= qM23_c5;
               qP22_c6 <= qP22_c5;
               qM22_c6 <= qM22_c5;
               qP21_c6 <= qP21_c5;
               qM21_c6 <= qM21_c5;
               qP20_c6 <= qP20_c5;
               qM20_c6 <= qM20_c5;
            end if;
            if ce_7 = '1' then
               expR0_c7 <= expR0_c6;
               sR_c7 <= sR_c6;
               exnR0_c7 <= exnR0_c6;
               D_c7 <= D_c6;
               betaw19_c7 <= betaw19_c6;
               q19_c7 <= q19_c6;
               absq19D_c7 <= absq19D_c6;
               qP28_c7 <= qP28_c6;
               qM28_c7 <= qM28_c6;
               qP27_c7 <= qP27_c6;
               qM27_c7 <= qM27_c6;
               qP26_c7 <= qP26_c6;
               qM26_c7 <= qM26_c6;
               qP25_c7 <= qP25_c6;
               qM25_c7 <= qM25_c6;
               qP24_c7 <= qP24_c6;
               qM24_c7 <= qM24_c6;
               qP23_c7 <= qP23_c6;
               qM23_c7 <= qM23_c6;
               qP22_c7 <= qP22_c6;
               qM22_c7 <= qM22_c6;
               qP21_c7 <= qP21_c6;
               qM21_c7 <= qM21_c6;
               qP20_c7 <= qP20_c6;
               qM20_c7 <= qM20_c6;
               qP19_c7 <= qP19_c6;
               qM19_c7 <= qM19_c6;
            end if;
            if ce_8 = '1' then
               expR0_c8 <= expR0_c7;
               sR_c8 <= sR_c7;
               exnR0_c8 <= exnR0_c7;
               D_c8 <= D_c7;
               betaw17_c8 <= betaw17_c7;
               q17_copy16_c8 <= q17_copy16_c7;
               qP28_c8 <= qP28_c7;
               qM28_c8 <= qM28_c7;
               qP27_c8 <= qP27_c7;
               qM27_c8 <= qM27_c7;
               qP26_c8 <= qP26_c7;
               qM26_c8 <= qM26_c7;
               qP25_c8 <= qP25_c7;
               qM25_c8 <= qM25_c7;
               qP24_c8 <= qP24_c7;
               qM24_c8 <= qM24_c7;
               qP23_c8 <= qP23_c7;
               qM23_c8 <= qM23_c7;
               qP22_c8 <= qP22_c7;
               qM22_c8 <= qM22_c7;
               qP21_c8 <= qP21_c7;
               qM21_c8 <= qM21_c7;
               qP20_c8 <= qP20_c7;
               qM20_c8 <= qM20_c7;
               qP19_c8 <= qP19_c7;
               qM19_c8 <= qM19_c7;
               qP18_c8 <= qP18_c7;
               qM18_c8 <= qM18_c7;
            end if;
            if ce_9 = '1' then
               expR0_c9 <= expR0_c8;
               sR_c9 <= sR_c8;
               exnR0_c9 <= exnR0_c8;
               D_c9 <= D_c8;
               betaw16_c9 <= betaw16_c8;
               q16_c9 <= q16_c8;
               absq16D_c9 <= absq16D_c8;
               qP28_c9 <= qP28_c8;
               qM28_c9 <= qM28_c8;
               qP27_c9 <= qP27_c8;
               qM27_c9 <= qM27_c8;
               qP26_c9 <= qP26_c8;
               qM26_c9 <= qM26_c8;
               qP25_c9 <= qP25_c8;
               qM25_c9 <= qM25_c8;
               qP24_c9 <= qP24_c8;
               qM24_c9 <= qM24_c8;
               qP23_c9 <= qP23_c8;
               qM23_c9 <= qM23_c8;
               qP22_c9 <= qP22_c8;
               qM22_c9 <= qM22_c8;
               qP21_c9 <= qP21_c8;
               qM21_c9 <= qM21_c8;
               qP20_c9 <= qP20_c8;
               qM20_c9 <= qM20_c8;
               qP19_c9 <= qP19_c8;
               qM19_c9 <= qM19_c8;
               qP18_c9 <= qP18_c8;
               qM18_c9 <= qM18_c8;
               qP17_c9 <= qP17_c8;
               qM17_c9 <= qM17_c8;
               qP16_c9 <= qP16_c8;
               qM16_c9 <= qM16_c8;
            end if;
            if ce_10 = '1' then
               expR0_c10 <= expR0_c9;
               sR_c10 <= sR_c9;
               exnR0_c10 <= exnR0_c9;
               D_c10 <= D_c9;
               betaw14_c10 <= betaw14_c9;
               q14_copy19_c10 <= q14_copy19_c9;
               qP28_c10 <= qP28_c9;
               qM28_c10 <= qM28_c9;
               qP27_c10 <= qP27_c9;
               qM27_c10 <= qM27_c9;
               qP26_c10 <= qP26_c9;
               qM26_c10 <= qM26_c9;
               qP25_c10 <= qP25_c9;
               qM25_c10 <= qM25_c9;
               qP24_c10 <= qP24_c9;
               qM24_c10 <= qM24_c9;
               qP23_c10 <= qP23_c9;
               qM23_c10 <= qM23_c9;
               qP22_c10 <= qP22_c9;
               qM22_c10 <= qM22_c9;
               qP21_c10 <= qP21_c9;
               qM21_c10 <= qM21_c9;
               qP20_c10 <= qP20_c9;
               qM20_c10 <= qM20_c9;
               qP19_c10 <= qP19_c9;
               qM19_c10 <= qM19_c9;
               qP18_c10 <= qP18_c9;
               qM18_c10 <= qM18_c9;
               qP17_c10 <= qP17_c9;
               qM17_c10 <= qM17_c9;
               qP16_c10 <= qP16_c9;
               qM16_c10 <= qM16_c9;
               qP15_c10 <= qP15_c9;
               qM15_c10 <= qM15_c9;
            end if;
            if ce_11 = '1' then
               expR0_c11 <= expR0_c10;
               sR_c11 <= sR_c10;
               exnR0_c11 <= exnR0_c10;
               D_c11 <= D_c10;
               betaw13_c11 <= betaw13_c10;
               q13_c11 <= q13_c10;
               absq13D_c11 <= absq13D_c10;
               qP28_c11 <= qP28_c10;
               qM28_c11 <= qM28_c10;
               qP27_c11 <= qP27_c10;
               qM27_c11 <= qM27_c10;
               qP26_c11 <= qP26_c10;
               qM26_c11 <= qM26_c10;
               qP25_c11 <= qP25_c10;
               qM25_c11 <= qM25_c10;
               qP24_c11 <= qP24_c10;
               qM24_c11 <= qM24_c10;
               qP23_c11 <= qP23_c10;
               qM23_c11 <= qM23_c10;
               qP22_c11 <= qP22_c10;
               qM22_c11 <= qM22_c10;
               qP21_c11 <= qP21_c10;
               qM21_c11 <= qM21_c10;
               qP20_c11 <= qP20_c10;
               qM20_c11 <= qM20_c10;
               qP19_c11 <= qP19_c10;
               qM19_c11 <= qM19_c10;
               qP18_c11 <= qP18_c10;
               qM18_c11 <= qM18_c10;
               qP17_c11 <= qP17_c10;
               qM17_c11 <= qM17_c10;
               qP16_c11 <= qP16_c10;
               qM16_c11 <= qM16_c10;
               qP15_c11 <= qP15_c10;
               qM15_c11 <= qM15_c10;
               qP14_c11 <= qP14_c10;
               qM14_c11 <= qM14_c10;
               qP13_c11 <= qP13_c10;
               qM13_c11 <= qM13_c10;
            end if;
            if ce_12 = '1' then
               expR0_c12 <= expR0_c11;
               sR_c12 <= sR_c11;
               exnR0_c12 <= exnR0_c11;
               D_c12 <= D_c11;
               betaw12_c12 <= betaw12_c11;
               q12_c12 <= q12_c11;
               absq12D_c12 <= absq12D_c11;
               qP28_c12 <= qP28_c11;
               qM28_c12 <= qM28_c11;
               qP27_c12 <= qP27_c11;
               qM27_c12 <= qM27_c11;
               qP26_c12 <= qP26_c11;
               qM26_c12 <= qM26_c11;
               qP25_c12 <= qP25_c11;
               qM25_c12 <= qM25_c11;
               qP24_c12 <= qP24_c11;
               qM24_c12 <= qM24_c11;
               qP23_c12 <= qP23_c11;
               qM23_c12 <= qM23_c11;
               qP22_c12 <= qP22_c11;
               qM22_c12 <= qM22_c11;
               qP21_c12 <= qP21_c11;
               qM21_c12 <= qM21_c11;
               qP20_c12 <= qP20_c11;
               qM20_c12 <= qM20_c11;
               qP19_c12 <= qP19_c11;
               qM19_c12 <= qM19_c11;
               qP18_c12 <= qP18_c11;
               qM18_c12 <= qM18_c11;
               qP17_c12 <= qP17_c11;
               qM17_c12 <= qM17_c11;
               qP16_c12 <= qP16_c11;
               qM16_c12 <= qM16_c11;
               qP15_c12 <= qP15_c11;
               qM15_c12 <= qM15_c11;
               qP14_c12 <= qP14_c11;
               qM14_c12 <= qM14_c11;
               qP13_c12 <= qP13_c11;
               qM13_c12 <= qM13_c11;
               qP12_c12 <= qP12_c11;
               qM12_c12 <= qM12_c11;
            end if;
            if ce_13 = '1' then
               expR0_c13 <= expR0_c12;
               sR_c13 <= sR_c12;
               exnR0_c13 <= exnR0_c12;
               D_c13 <= D_c12;
               betaw10_c13 <= betaw10_c12;
               q10_copy23_c13 <= q10_copy23_c12;
               qP28_c13 <= qP28_c12;
               qM28_c13 <= qM28_c12;
               qP27_c13 <= qP27_c12;
               qM27_c13 <= qM27_c12;
               qP26_c13 <= qP26_c12;
               qM26_c13 <= qM26_c12;
               qP25_c13 <= qP25_c12;
               qM25_c13 <= qM25_c12;
               qP24_c13 <= qP24_c12;
               qM24_c13 <= qM24_c12;
               qP23_c13 <= qP23_c12;
               qM23_c13 <= qM23_c12;
               qP22_c13 <= qP22_c12;
               qM22_c13 <= qM22_c12;
               qP21_c13 <= qP21_c12;
               qM21_c13 <= qM21_c12;
               qP20_c13 <= qP20_c12;
               qM20_c13 <= qM20_c12;
               qP19_c13 <= qP19_c12;
               qM19_c13 <= qM19_c12;
               qP18_c13 <= qP18_c12;
               qM18_c13 <= qM18_c12;
               qP17_c13 <= qP17_c12;
               qM17_c13 <= qM17_c12;
               qP16_c13 <= qP16_c12;
               qM16_c13 <= qM16_c12;
               qP15_c13 <= qP15_c12;
               qM15_c13 <= qM15_c12;
               qP14_c13 <= qP14_c12;
               qM14_c13 <= qM14_c12;
               qP13_c13 <= qP13_c12;
               qM13_c13 <= qM13_c12;
               qP12_c13 <= qP12_c12;
               qM12_c13 <= qM12_c12;
               qP11_c13 <= qP11_c12;
               qM11_c13 <= qM11_c12;
            end if;
            if ce_14 = '1' then
               expR0_c14 <= expR0_c13;
               sR_c14 <= sR_c13;
               exnR0_c14 <= exnR0_c13;
               D_c14 <= D_c13;
               betaw9_c14 <= betaw9_c13;
               q9_c14 <= q9_c13;
               absq9D_c14 <= absq9D_c13;
               qP28_c14 <= qP28_c13;
               qM28_c14 <= qM28_c13;
               qP27_c14 <= qP27_c13;
               qM27_c14 <= qM27_c13;
               qP26_c14 <= qP26_c13;
               qM26_c14 <= qM26_c13;
               qP25_c14 <= qP25_c13;
               qM25_c14 <= qM25_c13;
               qP24_c14 <= qP24_c13;
               qM24_c14 <= qM24_c13;
               qP23_c14 <= qP23_c13;
               qM23_c14 <= qM23_c13;
               qP22_c14 <= qP22_c13;
               qM22_c14 <= qM22_c13;
               qP21_c14 <= qP21_c13;
               qM21_c14 <= qM21_c13;
               qP20_c14 <= qP20_c13;
               qM20_c14 <= qM20_c13;
               qP19_c14 <= qP19_c13;
               qM19_c14 <= qM19_c13;
               qP18_c14 <= qP18_c13;
               qM18_c14 <= qM18_c13;
               qP17_c14 <= qP17_c13;
               qM17_c14 <= qM17_c13;
               qP16_c14 <= qP16_c13;
               qM16_c14 <= qM16_c13;
               qP15_c14 <= qP15_c13;
               qM15_c14 <= qM15_c13;
               qP14_c14 <= qP14_c13;
               qM14_c14 <= qM14_c13;
               qP13_c14 <= qP13_c13;
               qM13_c14 <= qM13_c13;
               qP12_c14 <= qP12_c13;
               qM12_c14 <= qM12_c13;
               qP11_c14 <= qP11_c13;
               qM11_c14 <= qM11_c13;
               qP10_c14 <= qP10_c13;
               qM10_c14 <= qM10_c13;
               qP9_c14 <= qP9_c13;
               qM9_c14 <= qM9_c13;
            end if;
            if ce_15 = '1' then
               expR0_c15 <= expR0_c14;
               sR_c15 <= sR_c14;
               exnR0_c15 <= exnR0_c14;
               D_c15 <= D_c14;
               betaw7_c15 <= betaw7_c14;
               q7_copy26_c15 <= q7_copy26_c14;
               qP28_c15 <= qP28_c14;
               qM28_c15 <= qM28_c14;
               qP27_c15 <= qP27_c14;
               qM27_c15 <= qM27_c14;
               qP26_c15 <= qP26_c14;
               qM26_c15 <= qM26_c14;
               qP25_c15 <= qP25_c14;
               qM25_c15 <= qM25_c14;
               qP24_c15 <= qP24_c14;
               qM24_c15 <= qM24_c14;
               qP23_c15 <= qP23_c14;
               qM23_c15 <= qM23_c14;
               qP22_c15 <= qP22_c14;
               qM22_c15 <= qM22_c14;
               qP21_c15 <= qP21_c14;
               qM21_c15 <= qM21_c14;
               qP20_c15 <= qP20_c14;
               qM20_c15 <= qM20_c14;
               qP19_c15 <= qP19_c14;
               qM19_c15 <= qM19_c14;
               qP18_c15 <= qP18_c14;
               qM18_c15 <= qM18_c14;
               qP17_c15 <= qP17_c14;
               qM17_c15 <= qM17_c14;
               qP16_c15 <= qP16_c14;
               qM16_c15 <= qM16_c14;
               qP15_c15 <= qP15_c14;
               qM15_c15 <= qM15_c14;
               qP14_c15 <= qP14_c14;
               qM14_c15 <= qM14_c14;
               qP13_c15 <= qP13_c14;
               qM13_c15 <= qM13_c14;
               qP12_c15 <= qP12_c14;
               qM12_c15 <= qM12_c14;
               qP11_c15 <= qP11_c14;
               qM11_c15 <= qM11_c14;
               qP10_c15 <= qP10_c14;
               qM10_c15 <= qM10_c14;
               qP9_c15 <= qP9_c14;
               qM9_c15 <= qM9_c14;
               qP8_c15 <= qP8_c14;
               qM8_c15 <= qM8_c14;
            end if;
            if ce_16 = '1' then
               expR0_c16 <= expR0_c15;
               sR_c16 <= sR_c15;
               exnR0_c16 <= exnR0_c15;
               D_c16 <= D_c15;
               betaw6_c16 <= betaw6_c15;
               q6_c16 <= q6_c15;
               absq6D_c16 <= absq6D_c15;
               qP28_c16 <= qP28_c15;
               qM28_c16 <= qM28_c15;
               qP27_c16 <= qP27_c15;
               qM27_c16 <= qM27_c15;
               qP26_c16 <= qP26_c15;
               qM26_c16 <= qM26_c15;
               qP25_c16 <= qP25_c15;
               qM25_c16 <= qM25_c15;
               qP24_c16 <= qP24_c15;
               qM24_c16 <= qM24_c15;
               qP23_c16 <= qP23_c15;
               qM23_c16 <= qM23_c15;
               qP22_c16 <= qP22_c15;
               qM22_c16 <= qM22_c15;
               qP21_c16 <= qP21_c15;
               qM21_c16 <= qM21_c15;
               qP20_c16 <= qP20_c15;
               qM20_c16 <= qM20_c15;
               qP19_c16 <= qP19_c15;
               qM19_c16 <= qM19_c15;
               qP18_c16 <= qP18_c15;
               qM18_c16 <= qM18_c15;
               qP17_c16 <= qP17_c15;
               qM17_c16 <= qM17_c15;
               qP16_c16 <= qP16_c15;
               qM16_c16 <= qM16_c15;
               qP15_c16 <= qP15_c15;
               qM15_c16 <= qM15_c15;
               qP14_c16 <= qP14_c15;
               qM14_c16 <= qM14_c15;
               qP13_c16 <= qP13_c15;
               qM13_c16 <= qM13_c15;
               qP12_c16 <= qP12_c15;
               qM12_c16 <= qM12_c15;
               qP11_c16 <= qP11_c15;
               qM11_c16 <= qM11_c15;
               qP10_c16 <= qP10_c15;
               qM10_c16 <= qM10_c15;
               qP9_c16 <= qP9_c15;
               qM9_c16 <= qM9_c15;
               qP8_c16 <= qP8_c15;
               qM8_c16 <= qM8_c15;
               qP7_c16 <= qP7_c15;
               qM7_c16 <= qM7_c15;
               qP6_c16 <= qP6_c15;
               qM6_c16 <= qM6_c15;
            end if;
            if ce_17 = '1' then
               expR0_c17 <= expR0_c16;
               sR_c17 <= sR_c16;
               exnR0_c17 <= exnR0_c16;
               D_c17 <= D_c16;
               betaw5_c17 <= betaw5_c16;
               q5_c17 <= q5_c16;
               absq5D_c17 <= absq5D_c16;
               qP28_c17 <= qP28_c16;
               qM28_c17 <= qM28_c16;
               qP27_c17 <= qP27_c16;
               qM27_c17 <= qM27_c16;
               qP26_c17 <= qP26_c16;
               qM26_c17 <= qM26_c16;
               qP25_c17 <= qP25_c16;
               qM25_c17 <= qM25_c16;
               qP24_c17 <= qP24_c16;
               qM24_c17 <= qM24_c16;
               qP23_c17 <= qP23_c16;
               qM23_c17 <= qM23_c16;
               qP22_c17 <= qP22_c16;
               qM22_c17 <= qM22_c16;
               qP21_c17 <= qP21_c16;
               qM21_c17 <= qM21_c16;
               qP20_c17 <= qP20_c16;
               qM20_c17 <= qM20_c16;
               qP19_c17 <= qP19_c16;
               qM19_c17 <= qM19_c16;
               qP18_c17 <= qP18_c16;
               qM18_c17 <= qM18_c16;
               qP17_c17 <= qP17_c16;
               qM17_c17 <= qM17_c16;
               qP16_c17 <= qP16_c16;
               qM16_c17 <= qM16_c16;
               qP15_c17 <= qP15_c16;
               qM15_c17 <= qM15_c16;
               qP14_c17 <= qP14_c16;
               qM14_c17 <= qM14_c16;
               qP13_c17 <= qP13_c16;
               qM13_c17 <= qM13_c16;
               qP12_c17 <= qP12_c16;
               qM12_c17 <= qM12_c16;
               qP11_c17 <= qP11_c16;
               qM11_c17 <= qM11_c16;
               qP10_c17 <= qP10_c16;
               qM10_c17 <= qM10_c16;
               qP9_c17 <= qP9_c16;
               qM9_c17 <= qM9_c16;
               qP8_c17 <= qP8_c16;
               qM8_c17 <= qM8_c16;
               qP7_c17 <= qP7_c16;
               qM7_c17 <= qM7_c16;
               qP6_c17 <= qP6_c16;
               qM6_c17 <= qM6_c16;
               qP5_c17 <= qP5_c16;
               qM5_c17 <= qM5_c16;
            end if;
            if ce_18 = '1' then
               expR0_c18 <= expR0_c17;
               sR_c18 <= sR_c17;
               exnR0_c18 <= exnR0_c17;
               D_c18 <= D_c17;
               betaw3_c18 <= betaw3_c17;
               q3_copy30_c18 <= q3_copy30_c17;
               qP28_c18 <= qP28_c17;
               qM28_c18 <= qM28_c17;
               qP27_c18 <= qP27_c17;
               qM27_c18 <= qM27_c17;
               qP26_c18 <= qP26_c17;
               qM26_c18 <= qM26_c17;
               qP25_c18 <= qP25_c17;
               qM25_c18 <= qM25_c17;
               qP24_c18 <= qP24_c17;
               qM24_c18 <= qM24_c17;
               qP23_c18 <= qP23_c17;
               qM23_c18 <= qM23_c17;
               qP22_c18 <= qP22_c17;
               qM22_c18 <= qM22_c17;
               qP21_c18 <= qP21_c17;
               qM21_c18 <= qM21_c17;
               qP20_c18 <= qP20_c17;
               qM20_c18 <= qM20_c17;
               qP19_c18 <= qP19_c17;
               qM19_c18 <= qM19_c17;
               qP18_c18 <= qP18_c17;
               qM18_c18 <= qM18_c17;
               qP17_c18 <= qP17_c17;
               qM17_c18 <= qM17_c17;
               qP16_c18 <= qP16_c17;
               qM16_c18 <= qM16_c17;
               qP15_c18 <= qP15_c17;
               qM15_c18 <= qM15_c17;
               qP14_c18 <= qP14_c17;
               qM14_c18 <= qM14_c17;
               qP13_c18 <= qP13_c17;
               qM13_c18 <= qM13_c17;
               qP12_c18 <= qP12_c17;
               qM12_c18 <= qM12_c17;
               qP11_c18 <= qP11_c17;
               qM11_c18 <= qM11_c17;
               qP10_c18 <= qP10_c17;
               qM10_c18 <= qM10_c17;
               qP9_c18 <= qP9_c17;
               qM9_c18 <= qM9_c17;
               qP8_c18 <= qP8_c17;
               qM8_c18 <= qM8_c17;
               qP7_c18 <= qP7_c17;
               qM7_c18 <= qM7_c17;
               qP6_c18 <= qP6_c17;
               qM6_c18 <= qM6_c17;
               qP5_c18 <= qP5_c17;
               qM5_c18 <= qM5_c17;
               qP4_c18 <= qP4_c17;
               qM4_c18 <= qM4_c17;
            end if;
            if ce_19 = '1' then
               expR0_c19 <= expR0_c18;
               sR_c19 <= sR_c18;
               exnR0_c19 <= exnR0_c18;
               D_c19 <= D_c18;
               betaw2_c19 <= betaw2_c18;
               q2_c19 <= q2_c18;
               absq2D_c19 <= absq2D_c18;
               qP28_c19 <= qP28_c18;
               qM28_c19 <= qM28_c18;
               qP27_c19 <= qP27_c18;
               qM27_c19 <= qM27_c18;
               qP26_c19 <= qP26_c18;
               qM26_c19 <= qM26_c18;
               qP25_c19 <= qP25_c18;
               qM25_c19 <= qM25_c18;
               qP24_c19 <= qP24_c18;
               qM24_c19 <= qM24_c18;
               qP23_c19 <= qP23_c18;
               qM23_c19 <= qM23_c18;
               qP22_c19 <= qP22_c18;
               qM22_c19 <= qM22_c18;
               qP21_c19 <= qP21_c18;
               qM21_c19 <= qM21_c18;
               qP20_c19 <= qP20_c18;
               qM20_c19 <= qM20_c18;
               qP19_c19 <= qP19_c18;
               qM19_c19 <= qM19_c18;
               qP18_c19 <= qP18_c18;
               qM18_c19 <= qM18_c18;
               qP17_c19 <= qP17_c18;
               qM17_c19 <= qM17_c18;
               qP16_c19 <= qP16_c18;
               qM16_c19 <= qM16_c18;
               qP15_c19 <= qP15_c18;
               qM15_c19 <= qM15_c18;
               qP14_c19 <= qP14_c18;
               qM14_c19 <= qM14_c18;
               qP13_c19 <= qP13_c18;
               qM13_c19 <= qM13_c18;
               qP12_c19 <= qP12_c18;
               qM12_c19 <= qM12_c18;
               qP11_c19 <= qP11_c18;
               qM11_c19 <= qM11_c18;
               qP10_c19 <= qP10_c18;
               qM10_c19 <= qM10_c18;
               qP9_c19 <= qP9_c18;
               qM9_c19 <= qM9_c18;
               qP8_c19 <= qP8_c18;
               qM8_c19 <= qM8_c18;
               qP7_c19 <= qP7_c18;
               qM7_c19 <= qM7_c18;
               qP6_c19 <= qP6_c18;
               qM6_c19 <= qM6_c18;
               qP5_c19 <= qP5_c18;
               qM5_c19 <= qM5_c18;
               qP4_c19 <= qP4_c18;
               qM4_c19 <= qM4_c18;
               qP3_c19 <= qP3_c18;
               qM3_c19 <= qM3_c18;
               qP2_c19 <= qP2_c18;
               qM2_c19 <= qM2_c18;
            end if;
            if ce_20 = '1' then
               expR0_c20 <= expR0_c19;
               sR_c20 <= sR_c19;
               exnR0_c20 <= exnR0_c19;
               qP_c20 <= qP_c19;
               qM_c20 <= qM_c19;
            end if;
         end if;
      end process;
   fX_c0 <= "1" & X(51 downto 0);
   fY_c0 <= "1" & Y(51 downto 0);
   -- exponent difference, sign and exception combination computed early, to have fewer bits to pipeline
   expR0_c0 <= ("00" & X(62 downto 52)) - ("00" & Y(62 downto 52));
   sR_c0 <= X(63) xor Y(63);
   -- early exception handling 
   exnXY_c0 <= X(65 downto 64) & Y(65 downto 64);
   with exnXY_c0  select 
      exnR0_c0 <= 
         "01"	 when "0101",										-- normal
         "00"	 when "0001" | "0010" | "0110", -- zero
         "10"	 when "0100" | "1000" | "1001", -- overflow
         "11"	 when others;										-- NaN
   D_c0 <= fY_c0 ;
   psX_c0 <= "0" & fX_c0 ;
   betaw28_c0 <=  "00" & psX_c0;
   sel28_c0 <= betaw28_c0(55 downto 50) & D_c0(51 downto 49);
   SelFunctionTable28: selFunction_Freq300_uid4
      port map ( X => sel28_c0,
                 Y => q28_copy5_c0);
   q28_c0 <= q28_copy5_c0; -- output copy to hold a pipeline register if needed

   with q28_c0  select 
      absq28D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q28_c0(2)  select 
   w27_c0<= betaw28_c0 - absq28D_c0 when '0',
         betaw28_c0 + absq28D_c0 when others;

   betaw27_c0 <= w27_c0(53 downto 0) & "00"; -- multiplication by the radix
   sel27_c0 <= betaw27_c0(55 downto 50) & D_c0(51 downto 49);
   SelFunctionTable27: selFunction_Freq300_uid4
      port map ( X => sel27_c0,
                 Y => q27_copy6_c0);
   q27_c0 <= q27_copy6_c0; -- output copy to hold a pipeline register if needed

   with q27_c0  select 
      absq27D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q27_c1(2)  select 
   w26_c1<= betaw27_c1 - absq27D_c1 when '0',
         betaw27_c1 + absq27D_c1 when others;

   betaw26_c1 <= w26_c1(53 downto 0) & "00"; -- multiplication by the radix
   sel26_c1 <= betaw26_c1(55 downto 50) & D_c1(51 downto 49);
   SelFunctionTable26: selFunction_Freq300_uid4
      port map ( X => sel26_c1,
                 Y => q26_copy7_c1);
   q26_c1 <= q26_copy7_c1; -- output copy to hold a pipeline register if needed

   with q26_c1  select 
      absq26D_c1 <= 
         "000" & D_c1						 when "001" | "111", -- mult by 1
         "00" & D_c1 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q26_c2(2)  select 
   w25_c2<= betaw26_c2 - absq26D_c2 when '0',
         betaw26_c2 + absq26D_c2 when others;

   betaw25_c2 <= w25_c2(53 downto 0) & "00"; -- multiplication by the radix
   sel25_c2 <= betaw25_c2(55 downto 50) & D_c2(51 downto 49);
   SelFunctionTable25: selFunction_Freq300_uid4
      port map ( X => sel25_c2,
                 Y => q25_copy8_c2);
   q25_c2 <= q25_copy8_c2; -- output copy to hold a pipeline register if needed

   with q25_c2  select 
      absq25D_c2 <= 
         "000" & D_c2						 when "001" | "111", -- mult by 1
         "00" & D_c2 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q25_c2(2)  select 
   w24_c2<= betaw25_c2 - absq25D_c2 when '0',
         betaw25_c2 + absq25D_c2 when others;

   betaw24_c2 <= w24_c2(53 downto 0) & "00"; -- multiplication by the radix
   sel24_c2 <= betaw24_c2(55 downto 50) & D_c2(51 downto 49);
   SelFunctionTable24: selFunction_Freq300_uid4
      port map ( X => sel24_c2,
                 Y => q24_copy9_c2);
   q24_c3 <= q24_copy9_c3; -- output copy to hold a pipeline register if needed

   with q24_c3  select 
      absq24D_c3 <= 
         "000" & D_c3						 when "001" | "111", -- mult by 1
         "00" & D_c3 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q24_c3(2)  select 
   w23_c3<= betaw24_c3 - absq24D_c3 when '0',
         betaw24_c3 + absq24D_c3 when others;

   betaw23_c3 <= w23_c3(53 downto 0) & "00"; -- multiplication by the radix
   sel23_c3 <= betaw23_c3(55 downto 50) & D_c3(51 downto 49);
   SelFunctionTable23: selFunction_Freq300_uid4
      port map ( X => sel23_c3,
                 Y => q23_copy10_c3);
   q23_c3 <= q23_copy10_c3; -- output copy to hold a pipeline register if needed

   with q23_c3  select 
      absq23D_c3 <= 
         "000" & D_c3						 when "001" | "111", -- mult by 1
         "00" & D_c3 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q23_c4(2)  select 
   w22_c4<= betaw23_c4 - absq23D_c4 when '0',
         betaw23_c4 + absq23D_c4 when others;

   betaw22_c4 <= w22_c4(53 downto 0) & "00"; -- multiplication by the radix
   sel22_c4 <= betaw22_c4(55 downto 50) & D_c4(51 downto 49);
   SelFunctionTable22: selFunction_Freq300_uid4
      port map ( X => sel22_c4,
                 Y => q22_copy11_c4);
   q22_c4 <= q22_copy11_c4; -- output copy to hold a pipeline register if needed

   with q22_c4  select 
      absq22D_c4 <= 
         "000" & D_c4						 when "001" | "111", -- mult by 1
         "00" & D_c4 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q22_c4(2)  select 
   w21_c4<= betaw22_c4 - absq22D_c4 when '0',
         betaw22_c4 + absq22D_c4 when others;

   betaw21_c4 <= w21_c4(53 downto 0) & "00"; -- multiplication by the radix
   sel21_c4 <= betaw21_c4(55 downto 50) & D_c4(51 downto 49);
   SelFunctionTable21: selFunction_Freq300_uid4
      port map ( X => sel21_c4,
                 Y => q21_copy12_c4);
   q21_c5 <= q21_copy12_c5; -- output copy to hold a pipeline register if needed

   with q21_c5  select 
      absq21D_c5 <= 
         "000" & D_c5						 when "001" | "111", -- mult by 1
         "00" & D_c5 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q21_c5(2)  select 
   w20_c5<= betaw21_c5 - absq21D_c5 when '0',
         betaw21_c5 + absq21D_c5 when others;

   betaw20_c5 <= w20_c5(53 downto 0) & "00"; -- multiplication by the radix
   sel20_c5 <= betaw20_c5(55 downto 50) & D_c5(51 downto 49);
   SelFunctionTable20: selFunction_Freq300_uid4
      port map ( X => sel20_c5,
                 Y => q20_copy13_c5);
   q20_c5 <= q20_copy13_c5; -- output copy to hold a pipeline register if needed

   with q20_c5  select 
      absq20D_c5 <= 
         "000" & D_c5						 when "001" | "111", -- mult by 1
         "00" & D_c5 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q20_c6(2)  select 
   w19_c6<= betaw20_c6 - absq20D_c6 when '0',
         betaw20_c6 + absq20D_c6 when others;

   betaw19_c6 <= w19_c6(53 downto 0) & "00"; -- multiplication by the radix
   sel19_c6 <= betaw19_c6(55 downto 50) & D_c6(51 downto 49);
   SelFunctionTable19: selFunction_Freq300_uid4
      port map ( X => sel19_c6,
                 Y => q19_copy14_c6);
   q19_c6 <= q19_copy14_c6; -- output copy to hold a pipeline register if needed

   with q19_c6  select 
      absq19D_c6 <= 
         "000" & D_c6						 when "001" | "111", -- mult by 1
         "00" & D_c6 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q19_c7(2)  select 
   w18_c7<= betaw19_c7 - absq19D_c7 when '0',
         betaw19_c7 + absq19D_c7 when others;

   betaw18_c7 <= w18_c7(53 downto 0) & "00"; -- multiplication by the radix
   sel18_c7 <= betaw18_c7(55 downto 50) & D_c7(51 downto 49);
   SelFunctionTable18: selFunction_Freq300_uid4
      port map ( X => sel18_c7,
                 Y => q18_copy15_c7);
   q18_c7 <= q18_copy15_c7; -- output copy to hold a pipeline register if needed

   with q18_c7  select 
      absq18D_c7 <= 
         "000" & D_c7						 when "001" | "111", -- mult by 1
         "00" & D_c7 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q18_c7(2)  select 
   w17_c7<= betaw18_c7 - absq18D_c7 when '0',
         betaw18_c7 + absq18D_c7 when others;

   betaw17_c7 <= w17_c7(53 downto 0) & "00"; -- multiplication by the radix
   sel17_c7 <= betaw17_c7(55 downto 50) & D_c7(51 downto 49);
   SelFunctionTable17: selFunction_Freq300_uid4
      port map ( X => sel17_c7,
                 Y => q17_copy16_c7);
   q17_c8 <= q17_copy16_c8; -- output copy to hold a pipeline register if needed

   with q17_c8  select 
      absq17D_c8 <= 
         "000" & D_c8						 when "001" | "111", -- mult by 1
         "00" & D_c8 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q17_c8(2)  select 
   w16_c8<= betaw17_c8 - absq17D_c8 when '0',
         betaw17_c8 + absq17D_c8 when others;

   betaw16_c8 <= w16_c8(53 downto 0) & "00"; -- multiplication by the radix
   sel16_c8 <= betaw16_c8(55 downto 50) & D_c8(51 downto 49);
   SelFunctionTable16: selFunction_Freq300_uid4
      port map ( X => sel16_c8,
                 Y => q16_copy17_c8);
   q16_c8 <= q16_copy17_c8; -- output copy to hold a pipeline register if needed

   with q16_c8  select 
      absq16D_c8 <= 
         "000" & D_c8						 when "001" | "111", -- mult by 1
         "00" & D_c8 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q16_c9(2)  select 
   w15_c9<= betaw16_c9 - absq16D_c9 when '0',
         betaw16_c9 + absq16D_c9 when others;

   betaw15_c9 <= w15_c9(53 downto 0) & "00"; -- multiplication by the radix
   sel15_c9 <= betaw15_c9(55 downto 50) & D_c9(51 downto 49);
   SelFunctionTable15: selFunction_Freq300_uid4
      port map ( X => sel15_c9,
                 Y => q15_copy18_c9);
   q15_c9 <= q15_copy18_c9; -- output copy to hold a pipeline register if needed

   with q15_c9  select 
      absq15D_c9 <= 
         "000" & D_c9						 when "001" | "111", -- mult by 1
         "00" & D_c9 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q15_c9(2)  select 
   w14_c9<= betaw15_c9 - absq15D_c9 when '0',
         betaw15_c9 + absq15D_c9 when others;

   betaw14_c9 <= w14_c9(53 downto 0) & "00"; -- multiplication by the radix
   sel14_c9 <= betaw14_c9(55 downto 50) & D_c9(51 downto 49);
   SelFunctionTable14: selFunction_Freq300_uid4
      port map ( X => sel14_c9,
                 Y => q14_copy19_c9);
   q14_c10 <= q14_copy19_c10; -- output copy to hold a pipeline register if needed

   with q14_c10  select 
      absq14D_c10 <= 
         "000" & D_c10						 when "001" | "111", -- mult by 1
         "00" & D_c10 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q14_c10(2)  select 
   w13_c10<= betaw14_c10 - absq14D_c10 when '0',
         betaw14_c10 + absq14D_c10 when others;

   betaw13_c10 <= w13_c10(53 downto 0) & "00"; -- multiplication by the radix
   sel13_c10 <= betaw13_c10(55 downto 50) & D_c10(51 downto 49);
   SelFunctionTable13: selFunction_Freq300_uid4
      port map ( X => sel13_c10,
                 Y => q13_copy20_c10);
   q13_c10 <= q13_copy20_c10; -- output copy to hold a pipeline register if needed

   with q13_c10  select 
      absq13D_c10 <= 
         "000" & D_c10						 when "001" | "111", -- mult by 1
         "00" & D_c10 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q13_c11(2)  select 
   w12_c11<= betaw13_c11 - absq13D_c11 when '0',
         betaw13_c11 + absq13D_c11 when others;

   betaw12_c11 <= w12_c11(53 downto 0) & "00"; -- multiplication by the radix
   sel12_c11 <= betaw12_c11(55 downto 50) & D_c11(51 downto 49);
   SelFunctionTable12: selFunction_Freq300_uid4
      port map ( X => sel12_c11,
                 Y => q12_copy21_c11);
   q12_c11 <= q12_copy21_c11; -- output copy to hold a pipeline register if needed

   with q12_c11  select 
      absq12D_c11 <= 
         "000" & D_c11						 when "001" | "111", -- mult by 1
         "00" & D_c11 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q12_c12(2)  select 
   w11_c12<= betaw12_c12 - absq12D_c12 when '0',
         betaw12_c12 + absq12D_c12 when others;

   betaw11_c12 <= w11_c12(53 downto 0) & "00"; -- multiplication by the radix
   sel11_c12 <= betaw11_c12(55 downto 50) & D_c12(51 downto 49);
   SelFunctionTable11: selFunction_Freq300_uid4
      port map ( X => sel11_c12,
                 Y => q11_copy22_c12);
   q11_c12 <= q11_copy22_c12; -- output copy to hold a pipeline register if needed

   with q11_c12  select 
      absq11D_c12 <= 
         "000" & D_c12						 when "001" | "111", -- mult by 1
         "00" & D_c12 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q11_c12(2)  select 
   w10_c12<= betaw11_c12 - absq11D_c12 when '0',
         betaw11_c12 + absq11D_c12 when others;

   betaw10_c12 <= w10_c12(53 downto 0) & "00"; -- multiplication by the radix
   sel10_c12 <= betaw10_c12(55 downto 50) & D_c12(51 downto 49);
   SelFunctionTable10: selFunction_Freq300_uid4
      port map ( X => sel10_c12,
                 Y => q10_copy23_c12);
   q10_c13 <= q10_copy23_c13; -- output copy to hold a pipeline register if needed

   with q10_c13  select 
      absq10D_c13 <= 
         "000" & D_c13						 when "001" | "111", -- mult by 1
         "00" & D_c13 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q10_c13(2)  select 
   w9_c13<= betaw10_c13 - absq10D_c13 when '0',
         betaw10_c13 + absq10D_c13 when others;

   betaw9_c13 <= w9_c13(53 downto 0) & "00"; -- multiplication by the radix
   sel9_c13 <= betaw9_c13(55 downto 50) & D_c13(51 downto 49);
   SelFunctionTable9: selFunction_Freq300_uid4
      port map ( X => sel9_c13,
                 Y => q9_copy24_c13);
   q9_c13 <= q9_copy24_c13; -- output copy to hold a pipeline register if needed

   with q9_c13  select 
      absq9D_c13 <= 
         "000" & D_c13						 when "001" | "111", -- mult by 1
         "00" & D_c13 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q9_c14(2)  select 
   w8_c14<= betaw9_c14 - absq9D_c14 when '0',
         betaw9_c14 + absq9D_c14 when others;

   betaw8_c14 <= w8_c14(53 downto 0) & "00"; -- multiplication by the radix
   sel8_c14 <= betaw8_c14(55 downto 50) & D_c14(51 downto 49);
   SelFunctionTable8: selFunction_Freq300_uid4
      port map ( X => sel8_c14,
                 Y => q8_copy25_c14);
   q8_c14 <= q8_copy25_c14; -- output copy to hold a pipeline register if needed

   with q8_c14  select 
      absq8D_c14 <= 
         "000" & D_c14						 when "001" | "111", -- mult by 1
         "00" & D_c14 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q8_c14(2)  select 
   w7_c14<= betaw8_c14 - absq8D_c14 when '0',
         betaw8_c14 + absq8D_c14 when others;

   betaw7_c14 <= w7_c14(53 downto 0) & "00"; -- multiplication by the radix
   sel7_c14 <= betaw7_c14(55 downto 50) & D_c14(51 downto 49);
   SelFunctionTable7: selFunction_Freq300_uid4
      port map ( X => sel7_c14,
                 Y => q7_copy26_c14);
   q7_c15 <= q7_copy26_c15; -- output copy to hold a pipeline register if needed

   with q7_c15  select 
      absq7D_c15 <= 
         "000" & D_c15						 when "001" | "111", -- mult by 1
         "00" & D_c15 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q7_c15(2)  select 
   w6_c15<= betaw7_c15 - absq7D_c15 when '0',
         betaw7_c15 + absq7D_c15 when others;

   betaw6_c15 <= w6_c15(53 downto 0) & "00"; -- multiplication by the radix
   sel6_c15 <= betaw6_c15(55 downto 50) & D_c15(51 downto 49);
   SelFunctionTable6: selFunction_Freq300_uid4
      port map ( X => sel6_c15,
                 Y => q6_copy27_c15);
   q6_c15 <= q6_copy27_c15; -- output copy to hold a pipeline register if needed

   with q6_c15  select 
      absq6D_c15 <= 
         "000" & D_c15						 when "001" | "111", -- mult by 1
         "00" & D_c15 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q6_c16(2)  select 
   w5_c16<= betaw6_c16 - absq6D_c16 when '0',
         betaw6_c16 + absq6D_c16 when others;

   betaw5_c16 <= w5_c16(53 downto 0) & "00"; -- multiplication by the radix
   sel5_c16 <= betaw5_c16(55 downto 50) & D_c16(51 downto 49);
   SelFunctionTable5: selFunction_Freq300_uid4
      port map ( X => sel5_c16,
                 Y => q5_copy28_c16);
   q5_c16 <= q5_copy28_c16; -- output copy to hold a pipeline register if needed

   with q5_c16  select 
      absq5D_c16 <= 
         "000" & D_c16						 when "001" | "111", -- mult by 1
         "00" & D_c16 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q5_c17(2)  select 
   w4_c17<= betaw5_c17 - absq5D_c17 when '0',
         betaw5_c17 + absq5D_c17 when others;

   betaw4_c17 <= w4_c17(53 downto 0) & "00"; -- multiplication by the radix
   sel4_c17 <= betaw4_c17(55 downto 50) & D_c17(51 downto 49);
   SelFunctionTable4: selFunction_Freq300_uid4
      port map ( X => sel4_c17,
                 Y => q4_copy29_c17);
   q4_c17 <= q4_copy29_c17; -- output copy to hold a pipeline register if needed

   with q4_c17  select 
      absq4D_c17 <= 
         "000" & D_c17						 when "001" | "111", -- mult by 1
         "00" & D_c17 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q4_c17(2)  select 
   w3_c17<= betaw4_c17 - absq4D_c17 when '0',
         betaw4_c17 + absq4D_c17 when others;

   betaw3_c17 <= w3_c17(53 downto 0) & "00"; -- multiplication by the radix
   sel3_c17 <= betaw3_c17(55 downto 50) & D_c17(51 downto 49);
   SelFunctionTable3: selFunction_Freq300_uid4
      port map ( X => sel3_c17,
                 Y => q3_copy30_c17);
   q3_c18 <= q3_copy30_c18; -- output copy to hold a pipeline register if needed

   with q3_c18  select 
      absq3D_c18 <= 
         "000" & D_c18						 when "001" | "111", -- mult by 1
         "00" & D_c18 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q3_c18(2)  select 
   w2_c18<= betaw3_c18 - absq3D_c18 when '0',
         betaw3_c18 + absq3D_c18 when others;

   betaw2_c18 <= w2_c18(53 downto 0) & "00"; -- multiplication by the radix
   sel2_c18 <= betaw2_c18(55 downto 50) & D_c18(51 downto 49);
   SelFunctionTable2: selFunction_Freq300_uid4
      port map ( X => sel2_c18,
                 Y => q2_copy31_c18);
   q2_c18 <= q2_copy31_c18; -- output copy to hold a pipeline register if needed

   with q2_c18  select 
      absq2D_c18 <= 
         "000" & D_c18						 when "001" | "111", -- mult by 1
         "00" & D_c18 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q2_c19(2)  select 
   w1_c19<= betaw2_c19 - absq2D_c19 when '0',
         betaw2_c19 + absq2D_c19 when others;

   betaw1_c19 <= w1_c19(53 downto 0) & "00"; -- multiplication by the radix
   sel1_c19 <= betaw1_c19(55 downto 50) & D_c19(51 downto 49);
   SelFunctionTable1: selFunction_Freq300_uid4
      port map ( X => sel1_c19,
                 Y => q1_copy32_c19);
   q1_c19 <= q1_copy32_c19; -- output copy to hold a pipeline register if needed

   with q1_c19  select 
      absq1D_c19 <= 
         "000" & D_c19						 when "001" | "111", -- mult by 1
         "00" & D_c19 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q1_c19(2)  select 
   w0_c19<= betaw1_c19 - absq1D_c19 when '0',
         betaw1_c19 + absq1D_c19 when others;

   wfinal_c19 <= w0_c19(53 downto 0);
   qM0_c19 <= wfinal_c19(53); -- rounding bit is the sign of the remainder
   qP28_c0 <=      q28_c0(1 downto 0);
   qM28_c0 <=      q28_c0(2) & "0";
   qP27_c0 <=      q27_c0(1 downto 0);
   qM27_c0 <=      q27_c0(2) & "0";
   qP26_c1 <=      q26_c1(1 downto 0);
   qM26_c1 <=      q26_c1(2) & "0";
   qP25_c2 <=      q25_c2(1 downto 0);
   qM25_c2 <=      q25_c2(2) & "0";
   qP24_c3 <=      q24_c3(1 downto 0);
   qM24_c3 <=      q24_c3(2) & "0";
   qP23_c3 <=      q23_c3(1 downto 0);
   qM23_c3 <=      q23_c3(2) & "0";
   qP22_c4 <=      q22_c4(1 downto 0);
   qM22_c4 <=      q22_c4(2) & "0";
   qP21_c5 <=      q21_c5(1 downto 0);
   qM21_c5 <=      q21_c5(2) & "0";
   qP20_c5 <=      q20_c5(1 downto 0);
   qM20_c5 <=      q20_c5(2) & "0";
   qP19_c6 <=      q19_c6(1 downto 0);
   qM19_c6 <=      q19_c6(2) & "0";
   qP18_c7 <=      q18_c7(1 downto 0);
   qM18_c7 <=      q18_c7(2) & "0";
   qP17_c8 <=      q17_c8(1 downto 0);
   qM17_c8 <=      q17_c8(2) & "0";
   qP16_c8 <=      q16_c8(1 downto 0);
   qM16_c8 <=      q16_c8(2) & "0";
   qP15_c9 <=      q15_c9(1 downto 0);
   qM15_c9 <=      q15_c9(2) & "0";
   qP14_c10 <=      q14_c10(1 downto 0);
   qM14_c10 <=      q14_c10(2) & "0";
   qP13_c10 <=      q13_c10(1 downto 0);
   qM13_c10 <=      q13_c10(2) & "0";
   qP12_c11 <=      q12_c11(1 downto 0);
   qM12_c11 <=      q12_c11(2) & "0";
   qP11_c12 <=      q11_c12(1 downto 0);
   qM11_c12 <=      q11_c12(2) & "0";
   qP10_c13 <=      q10_c13(1 downto 0);
   qM10_c13 <=      q10_c13(2) & "0";
   qP9_c13 <=      q9_c13(1 downto 0);
   qM9_c13 <=      q9_c13(2) & "0";
   qP8_c14 <=      q8_c14(1 downto 0);
   qM8_c14 <=      q8_c14(2) & "0";
   qP7_c15 <=      q7_c15(1 downto 0);
   qM7_c15 <=      q7_c15(2) & "0";
   qP6_c15 <=      q6_c15(1 downto 0);
   qM6_c15 <=      q6_c15(2) & "0";
   qP5_c16 <=      q5_c16(1 downto 0);
   qM5_c16 <=      q5_c16(2) & "0";
   qP4_c17 <=      q4_c17(1 downto 0);
   qM4_c17 <=      q4_c17(2) & "0";
   qP3_c18 <=      q3_c18(1 downto 0);
   qM3_c18 <=      q3_c18(2) & "0";
   qP2_c18 <=      q2_c18(1 downto 0);
   qM2_c18 <=      q2_c18(2) & "0";
   qP1_c19 <=      q1_c19(1 downto 0);
   qM1_c19 <=      q1_c19(2) & "0";
   qP_c19 <= qP28_c19 & qP27_c19 & qP26_c19 & qP25_c19 & qP24_c19 & qP23_c19 & qP22_c19 & qP21_c19 & qP20_c19 & qP19_c19 & qP18_c19 & qP17_c19 & qP16_c19 & qP15_c19 & qP14_c19 & qP13_c19 & qP12_c19 & qP11_c19 & qP10_c19 & qP9_c19 & qP8_c19 & qP7_c19 & qP6_c19 & qP5_c19 & qP4_c19 & qP3_c19 & qP2_c19 & qP1_c19;
   qM_c19 <= qM28_c19(0) & qM27_c19 & qM26_c19 & qM25_c19 & qM24_c19 & qM23_c19 & qM22_c19 & qM21_c19 & qM20_c19 & qM19_c19 & qM18_c19 & qM17_c19 & qM16_c19 & qM15_c19 & qM14_c19 & qM13_c19 & qM12_c19 & qM11_c19 & qM10_c19 & qM9_c19 & qM8_c19 & qM7_c19 & qM6_c19 & qM5_c19 & qM4_c19 & qM3_c19 & qM2_c19 & qM1_c19 & qM0_c19;
   quotient_c20 <= qP_c20 - qM_c20;
   -- We need a mR in (0, -wf-2) format: 1+wF fraction bits, 1 round bit, and 1 guard bit for the normalisation,
   -- quotient is the truncation of the exact quotient to at least 2^(-wF-2) bits
   -- now discarding its possible known MSB zeroes, and dropping the possible extra LSB bit (due to radix 4) 
   mR_c20 <= quotient_c20(54 downto 0); 
   -- normalisation
   fRnorm_c20 <=    mR_c20(53 downto 1)  when mR_c20(54)= '1'
           else mR_c20(52 downto 0);  -- now fRnorm is a (-1, -wF-1) fraction
   round_c20 <= fRnorm_c20(0); 
   expR1_c20 <= expR0_c20 + ("000" & (9 downto 1 => '1') & mR_c20(54)); -- add back bias
   -- final rounding
   expfrac_c20 <= expR1_c20 & fRnorm_c20(52 downto 1) ;
   expfracR_c20 <= expfrac_c20 + ((64 downto 1 => '0') & round_c20);
   exnR_c20 <=      "00"  when expfracR_c20(64) = '1'   -- underflow
           else "10"  when  expfracR_c20(64 downto 63) =  "01" -- overflow
           else "01";      -- 00, normal case
   with exnR0_c20  select 
      exnRfinal_c20 <= 
         exnR_c20   when "01", -- normal
         exnR0_c20  when others;
   R <= exnRfinal_c20 & sR_c20 & expfracR_c20(62 downto 0);
end architecture;



