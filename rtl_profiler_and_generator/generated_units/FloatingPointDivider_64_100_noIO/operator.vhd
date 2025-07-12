--------------------------------------------------------------------------------
--                          selFunction_Freq100_uid4
-- VHDL generated for Kintex7 @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007-2022)
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 10
-- Target frequency (MHz): 100
-- Input signals: X
-- Output signals: Y

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity selFunction_Freq100_uid4 is
    port (X : in  std_logic_vector(8 downto 0);
          Y : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of selFunction_Freq100_uid4 is
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
--                         (FPDiv_11_52_Freq100_uid2)
-- VHDL generated for Kintex7 @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Maxime Christ, Florent de Dinechin (2015)
--------------------------------------------------------------------------------
-- Pipeline depth: 6 cycles
-- Clock period (ns): 10
-- Target frequency (MHz): 100
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
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6 : in std_logic;
          X : in  std_logic_vector(11+52+2 downto 0);
          Y : in  std_logic_vector(11+52+2 downto 0);
          R : out  std_logic_vector(11+52+2 downto 0)   );
end entity;

architecture arch of FloatingPointDivider is
   component selFunction_Freq100_uid4 is
      port ( X : in  std_logic_vector(8 downto 0);
             Y : out  std_logic_vector(2 downto 0)   );
   end component;

signal fX_c0 :  std_logic_vector(52 downto 0);
signal fY_c0 :  std_logic_vector(52 downto 0);
signal expR0_c0, expR0_c1, expR0_c2, expR0_c3, expR0_c4, expR0_c5, expR0_c6 :  std_logic_vector(12 downto 0);
signal sR_c0, sR_c1, sR_c2, sR_c3, sR_c4, sR_c5, sR_c6 :  std_logic;
signal exnXY_c0 :  std_logic_vector(3 downto 0);
signal exnR0_c0, exnR0_c1, exnR0_c2, exnR0_c3, exnR0_c4, exnR0_c5, exnR0_c6 :  std_logic_vector(1 downto 0);
signal D_c0, D_c1, D_c2, D_c3, D_c4, D_c5, D_c6 :  std_logic_vector(52 downto 0);
signal psX_c0 :  std_logic_vector(53 downto 0);
signal betaw28_c0 :  std_logic_vector(55 downto 0);
signal sel28_c0 :  std_logic_vector(8 downto 0);
signal q28_c0 :  std_logic_vector(2 downto 0);
signal q28_copy5_c0 :  std_logic_vector(2 downto 0);
signal absq28D_c0 :  std_logic_vector(55 downto 0);
signal w27_c0 :  std_logic_vector(55 downto 0);
signal betaw27_c0 :  std_logic_vector(55 downto 0);
signal sel27_c0 :  std_logic_vector(8 downto 0);
signal q27_c0 :  std_logic_vector(2 downto 0);
signal q27_copy6_c0 :  std_logic_vector(2 downto 0);
signal absq27D_c0 :  std_logic_vector(55 downto 0);
signal w26_c0 :  std_logic_vector(55 downto 0);
signal betaw26_c0 :  std_logic_vector(55 downto 0);
signal sel26_c0 :  std_logic_vector(8 downto 0);
signal q26_c0 :  std_logic_vector(2 downto 0);
signal q26_copy7_c0 :  std_logic_vector(2 downto 0);
signal absq26D_c0 :  std_logic_vector(55 downto 0);
signal w25_c0 :  std_logic_vector(55 downto 0);
signal betaw25_c0 :  std_logic_vector(55 downto 0);
signal sel25_c0 :  std_logic_vector(8 downto 0);
signal q25_c0 :  std_logic_vector(2 downto 0);
signal q25_copy8_c0 :  std_logic_vector(2 downto 0);
signal absq25D_c0 :  std_logic_vector(55 downto 0);
signal w24_c0 :  std_logic_vector(55 downto 0);
signal betaw24_c0, betaw24_c1 :  std_logic_vector(55 downto 0);
signal sel24_c0 :  std_logic_vector(8 downto 0);
signal q24_c0, q24_c1 :  std_logic_vector(2 downto 0);
signal q24_copy9_c0 :  std_logic_vector(2 downto 0);
signal absq24D_c0, absq24D_c1 :  std_logic_vector(55 downto 0);
signal w23_c1 :  std_logic_vector(55 downto 0);
signal betaw23_c1 :  std_logic_vector(55 downto 0);
signal sel23_c1 :  std_logic_vector(8 downto 0);
signal q23_c1 :  std_logic_vector(2 downto 0);
signal q23_copy10_c1 :  std_logic_vector(2 downto 0);
signal absq23D_c1 :  std_logic_vector(55 downto 0);
signal w22_c1 :  std_logic_vector(55 downto 0);
signal betaw22_c1 :  std_logic_vector(55 downto 0);
signal sel22_c1 :  std_logic_vector(8 downto 0);
signal q22_c1 :  std_logic_vector(2 downto 0);
signal q22_copy11_c1 :  std_logic_vector(2 downto 0);
signal absq22D_c1 :  std_logic_vector(55 downto 0);
signal w21_c1 :  std_logic_vector(55 downto 0);
signal betaw21_c1 :  std_logic_vector(55 downto 0);
signal sel21_c1 :  std_logic_vector(8 downto 0);
signal q21_c1 :  std_logic_vector(2 downto 0);
signal q21_copy12_c1 :  std_logic_vector(2 downto 0);
signal absq21D_c1 :  std_logic_vector(55 downto 0);
signal w20_c1 :  std_logic_vector(55 downto 0);
signal betaw20_c1, betaw20_c2 :  std_logic_vector(55 downto 0);
signal sel20_c1 :  std_logic_vector(8 downto 0);
signal q20_c1, q20_c2 :  std_logic_vector(2 downto 0);
signal q20_copy13_c1 :  std_logic_vector(2 downto 0);
signal absq20D_c1, absq20D_c2 :  std_logic_vector(55 downto 0);
signal w19_c2 :  std_logic_vector(55 downto 0);
signal betaw19_c2 :  std_logic_vector(55 downto 0);
signal sel19_c2 :  std_logic_vector(8 downto 0);
signal q19_c2 :  std_logic_vector(2 downto 0);
signal q19_copy14_c2 :  std_logic_vector(2 downto 0);
signal absq19D_c2 :  std_logic_vector(55 downto 0);
signal w18_c2 :  std_logic_vector(55 downto 0);
signal betaw18_c2 :  std_logic_vector(55 downto 0);
signal sel18_c2 :  std_logic_vector(8 downto 0);
signal q18_c2 :  std_logic_vector(2 downto 0);
signal q18_copy15_c2 :  std_logic_vector(2 downto 0);
signal absq18D_c2 :  std_logic_vector(55 downto 0);
signal w17_c2 :  std_logic_vector(55 downto 0);
signal betaw17_c2 :  std_logic_vector(55 downto 0);
signal sel17_c2 :  std_logic_vector(8 downto 0);
signal q17_c2 :  std_logic_vector(2 downto 0);
signal q17_copy16_c2 :  std_logic_vector(2 downto 0);
signal absq17D_c2 :  std_logic_vector(55 downto 0);
signal w16_c2 :  std_logic_vector(55 downto 0);
signal betaw16_c2 :  std_logic_vector(55 downto 0);
signal sel16_c2 :  std_logic_vector(8 downto 0);
signal q16_c2 :  std_logic_vector(2 downto 0);
signal q16_copy17_c2 :  std_logic_vector(2 downto 0);
signal absq16D_c2 :  std_logic_vector(55 downto 0);
signal w15_c2 :  std_logic_vector(55 downto 0);
signal betaw15_c2, betaw15_c3 :  std_logic_vector(55 downto 0);
signal sel15_c2 :  std_logic_vector(8 downto 0);
signal q15_c3 :  std_logic_vector(2 downto 0);
signal q15_copy18_c2, q15_copy18_c3 :  std_logic_vector(2 downto 0);
signal absq15D_c3 :  std_logic_vector(55 downto 0);
signal w14_c3 :  std_logic_vector(55 downto 0);
signal betaw14_c3 :  std_logic_vector(55 downto 0);
signal sel14_c3 :  std_logic_vector(8 downto 0);
signal q14_c3 :  std_logic_vector(2 downto 0);
signal q14_copy19_c3 :  std_logic_vector(2 downto 0);
signal absq14D_c3 :  std_logic_vector(55 downto 0);
signal w13_c3 :  std_logic_vector(55 downto 0);
signal betaw13_c3 :  std_logic_vector(55 downto 0);
signal sel13_c3 :  std_logic_vector(8 downto 0);
signal q13_c3 :  std_logic_vector(2 downto 0);
signal q13_copy20_c3 :  std_logic_vector(2 downto 0);
signal absq13D_c3 :  std_logic_vector(55 downto 0);
signal w12_c3 :  std_logic_vector(55 downto 0);
signal betaw12_c3 :  std_logic_vector(55 downto 0);
signal sel12_c3 :  std_logic_vector(8 downto 0);
signal q12_c3 :  std_logic_vector(2 downto 0);
signal q12_copy21_c3 :  std_logic_vector(2 downto 0);
signal absq12D_c3 :  std_logic_vector(55 downto 0);
signal w11_c3 :  std_logic_vector(55 downto 0);
signal betaw11_c3, betaw11_c4 :  std_logic_vector(55 downto 0);
signal sel11_c3 :  std_logic_vector(8 downto 0);
signal q11_c3, q11_c4 :  std_logic_vector(2 downto 0);
signal q11_copy22_c3 :  std_logic_vector(2 downto 0);
signal absq11D_c3, absq11D_c4 :  std_logic_vector(55 downto 0);
signal w10_c4 :  std_logic_vector(55 downto 0);
signal betaw10_c4 :  std_logic_vector(55 downto 0);
signal sel10_c4 :  std_logic_vector(8 downto 0);
signal q10_c4 :  std_logic_vector(2 downto 0);
signal q10_copy23_c4 :  std_logic_vector(2 downto 0);
signal absq10D_c4 :  std_logic_vector(55 downto 0);
signal w9_c4 :  std_logic_vector(55 downto 0);
signal betaw9_c4 :  std_logic_vector(55 downto 0);
signal sel9_c4 :  std_logic_vector(8 downto 0);
signal q9_c4 :  std_logic_vector(2 downto 0);
signal q9_copy24_c4 :  std_logic_vector(2 downto 0);
signal absq9D_c4 :  std_logic_vector(55 downto 0);
signal w8_c4 :  std_logic_vector(55 downto 0);
signal betaw8_c4 :  std_logic_vector(55 downto 0);
signal sel8_c4 :  std_logic_vector(8 downto 0);
signal q8_c4 :  std_logic_vector(2 downto 0);
signal q8_copy25_c4 :  std_logic_vector(2 downto 0);
signal absq8D_c4 :  std_logic_vector(55 downto 0);
signal w7_c4 :  std_logic_vector(55 downto 0);
signal betaw7_c4 :  std_logic_vector(55 downto 0);
signal sel7_c4 :  std_logic_vector(8 downto 0);
signal q7_c4 :  std_logic_vector(2 downto 0);
signal q7_copy26_c4 :  std_logic_vector(2 downto 0);
signal absq7D_c4 :  std_logic_vector(55 downto 0);
signal w6_c4 :  std_logic_vector(55 downto 0);
signal betaw6_c4, betaw6_c5 :  std_logic_vector(55 downto 0);
signal sel6_c4 :  std_logic_vector(8 downto 0);
signal q6_c5 :  std_logic_vector(2 downto 0);
signal q6_copy27_c4, q6_copy27_c5 :  std_logic_vector(2 downto 0);
signal absq6D_c5 :  std_logic_vector(55 downto 0);
signal w5_c5 :  std_logic_vector(55 downto 0);
signal betaw5_c5 :  std_logic_vector(55 downto 0);
signal sel5_c5 :  std_logic_vector(8 downto 0);
signal q5_c5 :  std_logic_vector(2 downto 0);
signal q5_copy28_c5 :  std_logic_vector(2 downto 0);
signal absq5D_c5 :  std_logic_vector(55 downto 0);
signal w4_c5 :  std_logic_vector(55 downto 0);
signal betaw4_c5 :  std_logic_vector(55 downto 0);
signal sel4_c5 :  std_logic_vector(8 downto 0);
signal q4_c5 :  std_logic_vector(2 downto 0);
signal q4_copy29_c5 :  std_logic_vector(2 downto 0);
signal absq4D_c5 :  std_logic_vector(55 downto 0);
signal w3_c5 :  std_logic_vector(55 downto 0);
signal betaw3_c5 :  std_logic_vector(55 downto 0);
signal sel3_c5 :  std_logic_vector(8 downto 0);
signal q3_c5 :  std_logic_vector(2 downto 0);
signal q3_copy30_c5 :  std_logic_vector(2 downto 0);
signal absq3D_c5 :  std_logic_vector(55 downto 0);
signal w2_c5 :  std_logic_vector(55 downto 0);
signal betaw2_c5, betaw2_c6 :  std_logic_vector(55 downto 0);
signal sel2_c5 :  std_logic_vector(8 downto 0);
signal q2_c5, q2_c6 :  std_logic_vector(2 downto 0);
signal q2_copy31_c5 :  std_logic_vector(2 downto 0);
signal absq2D_c5, absq2D_c6 :  std_logic_vector(55 downto 0);
signal w1_c6 :  std_logic_vector(55 downto 0);
signal betaw1_c6 :  std_logic_vector(55 downto 0);
signal sel1_c6 :  std_logic_vector(8 downto 0);
signal q1_c6 :  std_logic_vector(2 downto 0);
signal q1_copy32_c6 :  std_logic_vector(2 downto 0);
signal absq1D_c6 :  std_logic_vector(55 downto 0);
signal w0_c6 :  std_logic_vector(55 downto 0);
signal wfinal_c6 :  std_logic_vector(53 downto 0);
signal qM0_c6 :  std_logic;
signal qP28_c0, qP28_c1, qP28_c2, qP28_c3, qP28_c4, qP28_c5, qP28_c6 :  std_logic_vector(1 downto 0);
signal qM28_c0, qM28_c1, qM28_c2, qM28_c3, qM28_c4, qM28_c5, qM28_c6 :  std_logic_vector(1 downto 0);
signal qP27_c0, qP27_c1, qP27_c2, qP27_c3, qP27_c4, qP27_c5, qP27_c6 :  std_logic_vector(1 downto 0);
signal qM27_c0, qM27_c1, qM27_c2, qM27_c3, qM27_c4, qM27_c5, qM27_c6 :  std_logic_vector(1 downto 0);
signal qP26_c0, qP26_c1, qP26_c2, qP26_c3, qP26_c4, qP26_c5, qP26_c6 :  std_logic_vector(1 downto 0);
signal qM26_c0, qM26_c1, qM26_c2, qM26_c3, qM26_c4, qM26_c5, qM26_c6 :  std_logic_vector(1 downto 0);
signal qP25_c0, qP25_c1, qP25_c2, qP25_c3, qP25_c4, qP25_c5, qP25_c6 :  std_logic_vector(1 downto 0);
signal qM25_c0, qM25_c1, qM25_c2, qM25_c3, qM25_c4, qM25_c5, qM25_c6 :  std_logic_vector(1 downto 0);
signal qP24_c0, qP24_c1, qP24_c2, qP24_c3, qP24_c4, qP24_c5, qP24_c6 :  std_logic_vector(1 downto 0);
signal qM24_c0, qM24_c1, qM24_c2, qM24_c3, qM24_c4, qM24_c5, qM24_c6 :  std_logic_vector(1 downto 0);
signal qP23_c1, qP23_c2, qP23_c3, qP23_c4, qP23_c5, qP23_c6 :  std_logic_vector(1 downto 0);
signal qM23_c1, qM23_c2, qM23_c3, qM23_c4, qM23_c5, qM23_c6 :  std_logic_vector(1 downto 0);
signal qP22_c1, qP22_c2, qP22_c3, qP22_c4, qP22_c5, qP22_c6 :  std_logic_vector(1 downto 0);
signal qM22_c1, qM22_c2, qM22_c3, qM22_c4, qM22_c5, qM22_c6 :  std_logic_vector(1 downto 0);
signal qP21_c1, qP21_c2, qP21_c3, qP21_c4, qP21_c5, qP21_c6 :  std_logic_vector(1 downto 0);
signal qM21_c1, qM21_c2, qM21_c3, qM21_c4, qM21_c5, qM21_c6 :  std_logic_vector(1 downto 0);
signal qP20_c1, qP20_c2, qP20_c3, qP20_c4, qP20_c5, qP20_c6 :  std_logic_vector(1 downto 0);
signal qM20_c1, qM20_c2, qM20_c3, qM20_c4, qM20_c5, qM20_c6 :  std_logic_vector(1 downto 0);
signal qP19_c2, qP19_c3, qP19_c4, qP19_c5, qP19_c6 :  std_logic_vector(1 downto 0);
signal qM19_c2, qM19_c3, qM19_c4, qM19_c5, qM19_c6 :  std_logic_vector(1 downto 0);
signal qP18_c2, qP18_c3, qP18_c4, qP18_c5, qP18_c6 :  std_logic_vector(1 downto 0);
signal qM18_c2, qM18_c3, qM18_c4, qM18_c5, qM18_c6 :  std_logic_vector(1 downto 0);
signal qP17_c2, qP17_c3, qP17_c4, qP17_c5, qP17_c6 :  std_logic_vector(1 downto 0);
signal qM17_c2, qM17_c3, qM17_c4, qM17_c5, qM17_c6 :  std_logic_vector(1 downto 0);
signal qP16_c2, qP16_c3, qP16_c4, qP16_c5, qP16_c6 :  std_logic_vector(1 downto 0);
signal qM16_c2, qM16_c3, qM16_c4, qM16_c5, qM16_c6 :  std_logic_vector(1 downto 0);
signal qP15_c3, qP15_c4, qP15_c5, qP15_c6 :  std_logic_vector(1 downto 0);
signal qM15_c3, qM15_c4, qM15_c5, qM15_c6 :  std_logic_vector(1 downto 0);
signal qP14_c3, qP14_c4, qP14_c5, qP14_c6 :  std_logic_vector(1 downto 0);
signal qM14_c3, qM14_c4, qM14_c5, qM14_c6 :  std_logic_vector(1 downto 0);
signal qP13_c3, qP13_c4, qP13_c5, qP13_c6 :  std_logic_vector(1 downto 0);
signal qM13_c3, qM13_c4, qM13_c5, qM13_c6 :  std_logic_vector(1 downto 0);
signal qP12_c3, qP12_c4, qP12_c5, qP12_c6 :  std_logic_vector(1 downto 0);
signal qM12_c3, qM12_c4, qM12_c5, qM12_c6 :  std_logic_vector(1 downto 0);
signal qP11_c3, qP11_c4, qP11_c5, qP11_c6 :  std_logic_vector(1 downto 0);
signal qM11_c3, qM11_c4, qM11_c5, qM11_c6 :  std_logic_vector(1 downto 0);
signal qP10_c4, qP10_c5, qP10_c6 :  std_logic_vector(1 downto 0);
signal qM10_c4, qM10_c5, qM10_c6 :  std_logic_vector(1 downto 0);
signal qP9_c4, qP9_c5, qP9_c6 :  std_logic_vector(1 downto 0);
signal qM9_c4, qM9_c5, qM9_c6 :  std_logic_vector(1 downto 0);
signal qP8_c4, qP8_c5, qP8_c6 :  std_logic_vector(1 downto 0);
signal qM8_c4, qM8_c5, qM8_c6 :  std_logic_vector(1 downto 0);
signal qP7_c4, qP7_c5, qP7_c6 :  std_logic_vector(1 downto 0);
signal qM7_c4, qM7_c5, qM7_c6 :  std_logic_vector(1 downto 0);
signal qP6_c5, qP6_c6 :  std_logic_vector(1 downto 0);
signal qM6_c5, qM6_c6 :  std_logic_vector(1 downto 0);
signal qP5_c5, qP5_c6 :  std_logic_vector(1 downto 0);
signal qM5_c5, qM5_c6 :  std_logic_vector(1 downto 0);
signal qP4_c5, qP4_c6 :  std_logic_vector(1 downto 0);
signal qM4_c5, qM4_c6 :  std_logic_vector(1 downto 0);
signal qP3_c5, qP3_c6 :  std_logic_vector(1 downto 0);
signal qM3_c5, qM3_c6 :  std_logic_vector(1 downto 0);
signal qP2_c5, qP2_c6 :  std_logic_vector(1 downto 0);
signal qM2_c5, qM2_c6 :  std_logic_vector(1 downto 0);
signal qP1_c6 :  std_logic_vector(1 downto 0);
signal qM1_c6 :  std_logic_vector(1 downto 0);
signal qP_c6 :  std_logic_vector(55 downto 0);
signal qM_c6 :  std_logic_vector(55 downto 0);
signal quotient_c6 :  std_logic_vector(55 downto 0);
signal mR_c6 :  std_logic_vector(54 downto 0);
signal fRnorm_c6 :  std_logic_vector(52 downto 0);
signal round_c6 :  std_logic;
signal expR1_c6 :  std_logic_vector(12 downto 0);
signal expfrac_c6 :  std_logic_vector(64 downto 0);
signal expfracR_c6 :  std_logic_vector(64 downto 0);
signal exnR_c6 :  std_logic_vector(1 downto 0);
signal exnRfinal_c6 :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               expR0_c1 <= expR0_c0;
               sR_c1 <= sR_c0;
               exnR0_c1 <= exnR0_c0;
               D_c1 <= D_c0;
               betaw24_c1 <= betaw24_c0;
               q24_c1 <= q24_c0;
               absq24D_c1 <= absq24D_c0;
               qP28_c1 <= qP28_c0;
               qM28_c1 <= qM28_c0;
               qP27_c1 <= qP27_c0;
               qM27_c1 <= qM27_c0;
               qP26_c1 <= qP26_c0;
               qM26_c1 <= qM26_c0;
               qP25_c1 <= qP25_c0;
               qM25_c1 <= qM25_c0;
               qP24_c1 <= qP24_c0;
               qM24_c1 <= qM24_c0;
            end if;
            if ce_2 = '1' then
               expR0_c2 <= expR0_c1;
               sR_c2 <= sR_c1;
               exnR0_c2 <= exnR0_c1;
               D_c2 <= D_c1;
               betaw20_c2 <= betaw20_c1;
               q20_c2 <= q20_c1;
               absq20D_c2 <= absq20D_c1;
               qP28_c2 <= qP28_c1;
               qM28_c2 <= qM28_c1;
               qP27_c2 <= qP27_c1;
               qM27_c2 <= qM27_c1;
               qP26_c2 <= qP26_c1;
               qM26_c2 <= qM26_c1;
               qP25_c2 <= qP25_c1;
               qM25_c2 <= qM25_c1;
               qP24_c2 <= qP24_c1;
               qM24_c2 <= qM24_c1;
               qP23_c2 <= qP23_c1;
               qM23_c2 <= qM23_c1;
               qP22_c2 <= qP22_c1;
               qM22_c2 <= qM22_c1;
               qP21_c2 <= qP21_c1;
               qM21_c2 <= qM21_c1;
               qP20_c2 <= qP20_c1;
               qM20_c2 <= qM20_c1;
            end if;
            if ce_3 = '1' then
               expR0_c3 <= expR0_c2;
               sR_c3 <= sR_c2;
               exnR0_c3 <= exnR0_c2;
               D_c3 <= D_c2;
               betaw15_c3 <= betaw15_c2;
               q15_copy18_c3 <= q15_copy18_c2;
               qP28_c3 <= qP28_c2;
               qM28_c3 <= qM28_c2;
               qP27_c3 <= qP27_c2;
               qM27_c3 <= qM27_c2;
               qP26_c3 <= qP26_c2;
               qM26_c3 <= qM26_c2;
               qP25_c3 <= qP25_c2;
               qM25_c3 <= qM25_c2;
               qP24_c3 <= qP24_c2;
               qM24_c3 <= qM24_c2;
               qP23_c3 <= qP23_c2;
               qM23_c3 <= qM23_c2;
               qP22_c3 <= qP22_c2;
               qM22_c3 <= qM22_c2;
               qP21_c3 <= qP21_c2;
               qM21_c3 <= qM21_c2;
               qP20_c3 <= qP20_c2;
               qM20_c3 <= qM20_c2;
               qP19_c3 <= qP19_c2;
               qM19_c3 <= qM19_c2;
               qP18_c3 <= qP18_c2;
               qM18_c3 <= qM18_c2;
               qP17_c3 <= qP17_c2;
               qM17_c3 <= qM17_c2;
               qP16_c3 <= qP16_c2;
               qM16_c3 <= qM16_c2;
            end if;
            if ce_4 = '1' then
               expR0_c4 <= expR0_c3;
               sR_c4 <= sR_c3;
               exnR0_c4 <= exnR0_c3;
               D_c4 <= D_c3;
               betaw11_c4 <= betaw11_c3;
               q11_c4 <= q11_c3;
               absq11D_c4 <= absq11D_c3;
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
               qP22_c4 <= qP22_c3;
               qM22_c4 <= qM22_c3;
               qP21_c4 <= qP21_c3;
               qM21_c4 <= qM21_c3;
               qP20_c4 <= qP20_c3;
               qM20_c4 <= qM20_c3;
               qP19_c4 <= qP19_c3;
               qM19_c4 <= qM19_c3;
               qP18_c4 <= qP18_c3;
               qM18_c4 <= qM18_c3;
               qP17_c4 <= qP17_c3;
               qM17_c4 <= qM17_c3;
               qP16_c4 <= qP16_c3;
               qM16_c4 <= qM16_c3;
               qP15_c4 <= qP15_c3;
               qM15_c4 <= qM15_c3;
               qP14_c4 <= qP14_c3;
               qM14_c4 <= qM14_c3;
               qP13_c4 <= qP13_c3;
               qM13_c4 <= qM13_c3;
               qP12_c4 <= qP12_c3;
               qM12_c4 <= qM12_c3;
               qP11_c4 <= qP11_c3;
               qM11_c4 <= qM11_c3;
            end if;
            if ce_5 = '1' then
               expR0_c5 <= expR0_c4;
               sR_c5 <= sR_c4;
               exnR0_c5 <= exnR0_c4;
               D_c5 <= D_c4;
               betaw6_c5 <= betaw6_c4;
               q6_copy27_c5 <= q6_copy27_c4;
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
               qP21_c5 <= qP21_c4;
               qM21_c5 <= qM21_c4;
               qP20_c5 <= qP20_c4;
               qM20_c5 <= qM20_c4;
               qP19_c5 <= qP19_c4;
               qM19_c5 <= qM19_c4;
               qP18_c5 <= qP18_c4;
               qM18_c5 <= qM18_c4;
               qP17_c5 <= qP17_c4;
               qM17_c5 <= qM17_c4;
               qP16_c5 <= qP16_c4;
               qM16_c5 <= qM16_c4;
               qP15_c5 <= qP15_c4;
               qM15_c5 <= qM15_c4;
               qP14_c5 <= qP14_c4;
               qM14_c5 <= qM14_c4;
               qP13_c5 <= qP13_c4;
               qM13_c5 <= qM13_c4;
               qP12_c5 <= qP12_c4;
               qM12_c5 <= qM12_c4;
               qP11_c5 <= qP11_c4;
               qM11_c5 <= qM11_c4;
               qP10_c5 <= qP10_c4;
               qM10_c5 <= qM10_c4;
               qP9_c5 <= qP9_c4;
               qM9_c5 <= qM9_c4;
               qP8_c5 <= qP8_c4;
               qM8_c5 <= qM8_c4;
               qP7_c5 <= qP7_c4;
               qM7_c5 <= qM7_c4;
            end if;
            if ce_6 = '1' then
               expR0_c6 <= expR0_c5;
               sR_c6 <= sR_c5;
               exnR0_c6 <= exnR0_c5;
               D_c6 <= D_c5;
               betaw2_c6 <= betaw2_c5;
               q2_c6 <= q2_c5;
               absq2D_c6 <= absq2D_c5;
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
               qP19_c6 <= qP19_c5;
               qM19_c6 <= qM19_c5;
               qP18_c6 <= qP18_c5;
               qM18_c6 <= qM18_c5;
               qP17_c6 <= qP17_c5;
               qM17_c6 <= qM17_c5;
               qP16_c6 <= qP16_c5;
               qM16_c6 <= qM16_c5;
               qP15_c6 <= qP15_c5;
               qM15_c6 <= qM15_c5;
               qP14_c6 <= qP14_c5;
               qM14_c6 <= qM14_c5;
               qP13_c6 <= qP13_c5;
               qM13_c6 <= qM13_c5;
               qP12_c6 <= qP12_c5;
               qM12_c6 <= qM12_c5;
               qP11_c6 <= qP11_c5;
               qM11_c6 <= qM11_c5;
               qP10_c6 <= qP10_c5;
               qM10_c6 <= qM10_c5;
               qP9_c6 <= qP9_c5;
               qM9_c6 <= qM9_c5;
               qP8_c6 <= qP8_c5;
               qM8_c6 <= qM8_c5;
               qP7_c6 <= qP7_c5;
               qM7_c6 <= qM7_c5;
               qP6_c6 <= qP6_c5;
               qM6_c6 <= qM6_c5;
               qP5_c6 <= qP5_c5;
               qM5_c6 <= qM5_c5;
               qP4_c6 <= qP4_c5;
               qM4_c6 <= qM4_c5;
               qP3_c6 <= qP3_c5;
               qM3_c6 <= qM3_c5;
               qP2_c6 <= qP2_c5;
               qM2_c6 <= qM2_c5;
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
   SelFunctionTable28: selFunction_Freq100_uid4
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
   SelFunctionTable27: selFunction_Freq100_uid4
      port map ( X => sel27_c0,
                 Y => q27_copy6_c0);
   q27_c0 <= q27_copy6_c0; -- output copy to hold a pipeline register if needed

   with q27_c0  select 
      absq27D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q27_c0(2)  select 
   w26_c0<= betaw27_c0 - absq27D_c0 when '0',
         betaw27_c0 + absq27D_c0 when others;

   betaw26_c0 <= w26_c0(53 downto 0) & "00"; -- multiplication by the radix
   sel26_c0 <= betaw26_c0(55 downto 50) & D_c0(51 downto 49);
   SelFunctionTable26: selFunction_Freq100_uid4
      port map ( X => sel26_c0,
                 Y => q26_copy7_c0);
   q26_c0 <= q26_copy7_c0; -- output copy to hold a pipeline register if needed

   with q26_c0  select 
      absq26D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q26_c0(2)  select 
   w25_c0<= betaw26_c0 - absq26D_c0 when '0',
         betaw26_c0 + absq26D_c0 when others;

   betaw25_c0 <= w25_c0(53 downto 0) & "00"; -- multiplication by the radix
   sel25_c0 <= betaw25_c0(55 downto 50) & D_c0(51 downto 49);
   SelFunctionTable25: selFunction_Freq100_uid4
      port map ( X => sel25_c0,
                 Y => q25_copy8_c0);
   q25_c0 <= q25_copy8_c0; -- output copy to hold a pipeline register if needed

   with q25_c0  select 
      absq25D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q25_c0(2)  select 
   w24_c0<= betaw25_c0 - absq25D_c0 when '0',
         betaw25_c0 + absq25D_c0 when others;

   betaw24_c0 <= w24_c0(53 downto 0) & "00"; -- multiplication by the radix
   sel24_c0 <= betaw24_c0(55 downto 50) & D_c0(51 downto 49);
   SelFunctionTable24: selFunction_Freq100_uid4
      port map ( X => sel24_c0,
                 Y => q24_copy9_c0);
   q24_c0 <= q24_copy9_c0; -- output copy to hold a pipeline register if needed

   with q24_c0  select 
      absq24D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q24_c1(2)  select 
   w23_c1<= betaw24_c1 - absq24D_c1 when '0',
         betaw24_c1 + absq24D_c1 when others;

   betaw23_c1 <= w23_c1(53 downto 0) & "00"; -- multiplication by the radix
   sel23_c1 <= betaw23_c1(55 downto 50) & D_c1(51 downto 49);
   SelFunctionTable23: selFunction_Freq100_uid4
      port map ( X => sel23_c1,
                 Y => q23_copy10_c1);
   q23_c1 <= q23_copy10_c1; -- output copy to hold a pipeline register if needed

   with q23_c1  select 
      absq23D_c1 <= 
         "000" & D_c1						 when "001" | "111", -- mult by 1
         "00" & D_c1 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q23_c1(2)  select 
   w22_c1<= betaw23_c1 - absq23D_c1 when '0',
         betaw23_c1 + absq23D_c1 when others;

   betaw22_c1 <= w22_c1(53 downto 0) & "00"; -- multiplication by the radix
   sel22_c1 <= betaw22_c1(55 downto 50) & D_c1(51 downto 49);
   SelFunctionTable22: selFunction_Freq100_uid4
      port map ( X => sel22_c1,
                 Y => q22_copy11_c1);
   q22_c1 <= q22_copy11_c1; -- output copy to hold a pipeline register if needed

   with q22_c1  select 
      absq22D_c1 <= 
         "000" & D_c1						 when "001" | "111", -- mult by 1
         "00" & D_c1 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q22_c1(2)  select 
   w21_c1<= betaw22_c1 - absq22D_c1 when '0',
         betaw22_c1 + absq22D_c1 when others;

   betaw21_c1 <= w21_c1(53 downto 0) & "00"; -- multiplication by the radix
   sel21_c1 <= betaw21_c1(55 downto 50) & D_c1(51 downto 49);
   SelFunctionTable21: selFunction_Freq100_uid4
      port map ( X => sel21_c1,
                 Y => q21_copy12_c1);
   q21_c1 <= q21_copy12_c1; -- output copy to hold a pipeline register if needed

   with q21_c1  select 
      absq21D_c1 <= 
         "000" & D_c1						 when "001" | "111", -- mult by 1
         "00" & D_c1 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q21_c1(2)  select 
   w20_c1<= betaw21_c1 - absq21D_c1 when '0',
         betaw21_c1 + absq21D_c1 when others;

   betaw20_c1 <= w20_c1(53 downto 0) & "00"; -- multiplication by the radix
   sel20_c1 <= betaw20_c1(55 downto 50) & D_c1(51 downto 49);
   SelFunctionTable20: selFunction_Freq100_uid4
      port map ( X => sel20_c1,
                 Y => q20_copy13_c1);
   q20_c1 <= q20_copy13_c1; -- output copy to hold a pipeline register if needed

   with q20_c1  select 
      absq20D_c1 <= 
         "000" & D_c1						 when "001" | "111", -- mult by 1
         "00" & D_c1 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q20_c2(2)  select 
   w19_c2<= betaw20_c2 - absq20D_c2 when '0',
         betaw20_c2 + absq20D_c2 when others;

   betaw19_c2 <= w19_c2(53 downto 0) & "00"; -- multiplication by the radix
   sel19_c2 <= betaw19_c2(55 downto 50) & D_c2(51 downto 49);
   SelFunctionTable19: selFunction_Freq100_uid4
      port map ( X => sel19_c2,
                 Y => q19_copy14_c2);
   q19_c2 <= q19_copy14_c2; -- output copy to hold a pipeline register if needed

   with q19_c2  select 
      absq19D_c2 <= 
         "000" & D_c2						 when "001" | "111", -- mult by 1
         "00" & D_c2 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q19_c2(2)  select 
   w18_c2<= betaw19_c2 - absq19D_c2 when '0',
         betaw19_c2 + absq19D_c2 when others;

   betaw18_c2 <= w18_c2(53 downto 0) & "00"; -- multiplication by the radix
   sel18_c2 <= betaw18_c2(55 downto 50) & D_c2(51 downto 49);
   SelFunctionTable18: selFunction_Freq100_uid4
      port map ( X => sel18_c2,
                 Y => q18_copy15_c2);
   q18_c2 <= q18_copy15_c2; -- output copy to hold a pipeline register if needed

   with q18_c2  select 
      absq18D_c2 <= 
         "000" & D_c2						 when "001" | "111", -- mult by 1
         "00" & D_c2 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q18_c2(2)  select 
   w17_c2<= betaw18_c2 - absq18D_c2 when '0',
         betaw18_c2 + absq18D_c2 when others;

   betaw17_c2 <= w17_c2(53 downto 0) & "00"; -- multiplication by the radix
   sel17_c2 <= betaw17_c2(55 downto 50) & D_c2(51 downto 49);
   SelFunctionTable17: selFunction_Freq100_uid4
      port map ( X => sel17_c2,
                 Y => q17_copy16_c2);
   q17_c2 <= q17_copy16_c2; -- output copy to hold a pipeline register if needed

   with q17_c2  select 
      absq17D_c2 <= 
         "000" & D_c2						 when "001" | "111", -- mult by 1
         "00" & D_c2 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q17_c2(2)  select 
   w16_c2<= betaw17_c2 - absq17D_c2 when '0',
         betaw17_c2 + absq17D_c2 when others;

   betaw16_c2 <= w16_c2(53 downto 0) & "00"; -- multiplication by the radix
   sel16_c2 <= betaw16_c2(55 downto 50) & D_c2(51 downto 49);
   SelFunctionTable16: selFunction_Freq100_uid4
      port map ( X => sel16_c2,
                 Y => q16_copy17_c2);
   q16_c2 <= q16_copy17_c2; -- output copy to hold a pipeline register if needed

   with q16_c2  select 
      absq16D_c2 <= 
         "000" & D_c2						 when "001" | "111", -- mult by 1
         "00" & D_c2 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q16_c2(2)  select 
   w15_c2<= betaw16_c2 - absq16D_c2 when '0',
         betaw16_c2 + absq16D_c2 when others;

   betaw15_c2 <= w15_c2(53 downto 0) & "00"; -- multiplication by the radix
   sel15_c2 <= betaw15_c2(55 downto 50) & D_c2(51 downto 49);
   SelFunctionTable15: selFunction_Freq100_uid4
      port map ( X => sel15_c2,
                 Y => q15_copy18_c2);
   q15_c3 <= q15_copy18_c3; -- output copy to hold a pipeline register if needed

   with q15_c3  select 
      absq15D_c3 <= 
         "000" & D_c3						 when "001" | "111", -- mult by 1
         "00" & D_c3 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q15_c3(2)  select 
   w14_c3<= betaw15_c3 - absq15D_c3 when '0',
         betaw15_c3 + absq15D_c3 when others;

   betaw14_c3 <= w14_c3(53 downto 0) & "00"; -- multiplication by the radix
   sel14_c3 <= betaw14_c3(55 downto 50) & D_c3(51 downto 49);
   SelFunctionTable14: selFunction_Freq100_uid4
      port map ( X => sel14_c3,
                 Y => q14_copy19_c3);
   q14_c3 <= q14_copy19_c3; -- output copy to hold a pipeline register if needed

   with q14_c3  select 
      absq14D_c3 <= 
         "000" & D_c3						 when "001" | "111", -- mult by 1
         "00" & D_c3 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q14_c3(2)  select 
   w13_c3<= betaw14_c3 - absq14D_c3 when '0',
         betaw14_c3 + absq14D_c3 when others;

   betaw13_c3 <= w13_c3(53 downto 0) & "00"; -- multiplication by the radix
   sel13_c3 <= betaw13_c3(55 downto 50) & D_c3(51 downto 49);
   SelFunctionTable13: selFunction_Freq100_uid4
      port map ( X => sel13_c3,
                 Y => q13_copy20_c3);
   q13_c3 <= q13_copy20_c3; -- output copy to hold a pipeline register if needed

   with q13_c3  select 
      absq13D_c3 <= 
         "000" & D_c3						 when "001" | "111", -- mult by 1
         "00" & D_c3 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q13_c3(2)  select 
   w12_c3<= betaw13_c3 - absq13D_c3 when '0',
         betaw13_c3 + absq13D_c3 when others;

   betaw12_c3 <= w12_c3(53 downto 0) & "00"; -- multiplication by the radix
   sel12_c3 <= betaw12_c3(55 downto 50) & D_c3(51 downto 49);
   SelFunctionTable12: selFunction_Freq100_uid4
      port map ( X => sel12_c3,
                 Y => q12_copy21_c3);
   q12_c3 <= q12_copy21_c3; -- output copy to hold a pipeline register if needed

   with q12_c3  select 
      absq12D_c3 <= 
         "000" & D_c3						 when "001" | "111", -- mult by 1
         "00" & D_c3 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q12_c3(2)  select 
   w11_c3<= betaw12_c3 - absq12D_c3 when '0',
         betaw12_c3 + absq12D_c3 when others;

   betaw11_c3 <= w11_c3(53 downto 0) & "00"; -- multiplication by the radix
   sel11_c3 <= betaw11_c3(55 downto 50) & D_c3(51 downto 49);
   SelFunctionTable11: selFunction_Freq100_uid4
      port map ( X => sel11_c3,
                 Y => q11_copy22_c3);
   q11_c3 <= q11_copy22_c3; -- output copy to hold a pipeline register if needed

   with q11_c3  select 
      absq11D_c3 <= 
         "000" & D_c3						 when "001" | "111", -- mult by 1
         "00" & D_c3 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q11_c4(2)  select 
   w10_c4<= betaw11_c4 - absq11D_c4 when '0',
         betaw11_c4 + absq11D_c4 when others;

   betaw10_c4 <= w10_c4(53 downto 0) & "00"; -- multiplication by the radix
   sel10_c4 <= betaw10_c4(55 downto 50) & D_c4(51 downto 49);
   SelFunctionTable10: selFunction_Freq100_uid4
      port map ( X => sel10_c4,
                 Y => q10_copy23_c4);
   q10_c4 <= q10_copy23_c4; -- output copy to hold a pipeline register if needed

   with q10_c4  select 
      absq10D_c4 <= 
         "000" & D_c4						 when "001" | "111", -- mult by 1
         "00" & D_c4 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q10_c4(2)  select 
   w9_c4<= betaw10_c4 - absq10D_c4 when '0',
         betaw10_c4 + absq10D_c4 when others;

   betaw9_c4 <= w9_c4(53 downto 0) & "00"; -- multiplication by the radix
   sel9_c4 <= betaw9_c4(55 downto 50) & D_c4(51 downto 49);
   SelFunctionTable9: selFunction_Freq100_uid4
      port map ( X => sel9_c4,
                 Y => q9_copy24_c4);
   q9_c4 <= q9_copy24_c4; -- output copy to hold a pipeline register if needed

   with q9_c4  select 
      absq9D_c4 <= 
         "000" & D_c4						 when "001" | "111", -- mult by 1
         "00" & D_c4 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q9_c4(2)  select 
   w8_c4<= betaw9_c4 - absq9D_c4 when '0',
         betaw9_c4 + absq9D_c4 when others;

   betaw8_c4 <= w8_c4(53 downto 0) & "00"; -- multiplication by the radix
   sel8_c4 <= betaw8_c4(55 downto 50) & D_c4(51 downto 49);
   SelFunctionTable8: selFunction_Freq100_uid4
      port map ( X => sel8_c4,
                 Y => q8_copy25_c4);
   q8_c4 <= q8_copy25_c4; -- output copy to hold a pipeline register if needed

   with q8_c4  select 
      absq8D_c4 <= 
         "000" & D_c4						 when "001" | "111", -- mult by 1
         "00" & D_c4 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q8_c4(2)  select 
   w7_c4<= betaw8_c4 - absq8D_c4 when '0',
         betaw8_c4 + absq8D_c4 when others;

   betaw7_c4 <= w7_c4(53 downto 0) & "00"; -- multiplication by the radix
   sel7_c4 <= betaw7_c4(55 downto 50) & D_c4(51 downto 49);
   SelFunctionTable7: selFunction_Freq100_uid4
      port map ( X => sel7_c4,
                 Y => q7_copy26_c4);
   q7_c4 <= q7_copy26_c4; -- output copy to hold a pipeline register if needed

   with q7_c4  select 
      absq7D_c4 <= 
         "000" & D_c4						 when "001" | "111", -- mult by 1
         "00" & D_c4 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q7_c4(2)  select 
   w6_c4<= betaw7_c4 - absq7D_c4 when '0',
         betaw7_c4 + absq7D_c4 when others;

   betaw6_c4 <= w6_c4(53 downto 0) & "00"; -- multiplication by the radix
   sel6_c4 <= betaw6_c4(55 downto 50) & D_c4(51 downto 49);
   SelFunctionTable6: selFunction_Freq100_uid4
      port map ( X => sel6_c4,
                 Y => q6_copy27_c4);
   q6_c5 <= q6_copy27_c5; -- output copy to hold a pipeline register if needed

   with q6_c5  select 
      absq6D_c5 <= 
         "000" & D_c5						 when "001" | "111", -- mult by 1
         "00" & D_c5 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q6_c5(2)  select 
   w5_c5<= betaw6_c5 - absq6D_c5 when '0',
         betaw6_c5 + absq6D_c5 when others;

   betaw5_c5 <= w5_c5(53 downto 0) & "00"; -- multiplication by the radix
   sel5_c5 <= betaw5_c5(55 downto 50) & D_c5(51 downto 49);
   SelFunctionTable5: selFunction_Freq100_uid4
      port map ( X => sel5_c5,
                 Y => q5_copy28_c5);
   q5_c5 <= q5_copy28_c5; -- output copy to hold a pipeline register if needed

   with q5_c5  select 
      absq5D_c5 <= 
         "000" & D_c5						 when "001" | "111", -- mult by 1
         "00" & D_c5 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q5_c5(2)  select 
   w4_c5<= betaw5_c5 - absq5D_c5 when '0',
         betaw5_c5 + absq5D_c5 when others;

   betaw4_c5 <= w4_c5(53 downto 0) & "00"; -- multiplication by the radix
   sel4_c5 <= betaw4_c5(55 downto 50) & D_c5(51 downto 49);
   SelFunctionTable4: selFunction_Freq100_uid4
      port map ( X => sel4_c5,
                 Y => q4_copy29_c5);
   q4_c5 <= q4_copy29_c5; -- output copy to hold a pipeline register if needed

   with q4_c5  select 
      absq4D_c5 <= 
         "000" & D_c5						 when "001" | "111", -- mult by 1
         "00" & D_c5 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q4_c5(2)  select 
   w3_c5<= betaw4_c5 - absq4D_c5 when '0',
         betaw4_c5 + absq4D_c5 when others;

   betaw3_c5 <= w3_c5(53 downto 0) & "00"; -- multiplication by the radix
   sel3_c5 <= betaw3_c5(55 downto 50) & D_c5(51 downto 49);
   SelFunctionTable3: selFunction_Freq100_uid4
      port map ( X => sel3_c5,
                 Y => q3_copy30_c5);
   q3_c5 <= q3_copy30_c5; -- output copy to hold a pipeline register if needed

   with q3_c5  select 
      absq3D_c5 <= 
         "000" & D_c5						 when "001" | "111", -- mult by 1
         "00" & D_c5 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q3_c5(2)  select 
   w2_c5<= betaw3_c5 - absq3D_c5 when '0',
         betaw3_c5 + absq3D_c5 when others;

   betaw2_c5 <= w2_c5(53 downto 0) & "00"; -- multiplication by the radix
   sel2_c5 <= betaw2_c5(55 downto 50) & D_c5(51 downto 49);
   SelFunctionTable2: selFunction_Freq100_uid4
      port map ( X => sel2_c5,
                 Y => q2_copy31_c5);
   q2_c5 <= q2_copy31_c5; -- output copy to hold a pipeline register if needed

   with q2_c5  select 
      absq2D_c5 <= 
         "000" & D_c5						 when "001" | "111", -- mult by 1
         "00" & D_c5 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q2_c6(2)  select 
   w1_c6<= betaw2_c6 - absq2D_c6 when '0',
         betaw2_c6 + absq2D_c6 when others;

   betaw1_c6 <= w1_c6(53 downto 0) & "00"; -- multiplication by the radix
   sel1_c6 <= betaw1_c6(55 downto 50) & D_c6(51 downto 49);
   SelFunctionTable1: selFunction_Freq100_uid4
      port map ( X => sel1_c6,
                 Y => q1_copy32_c6);
   q1_c6 <= q1_copy32_c6; -- output copy to hold a pipeline register if needed

   with q1_c6  select 
      absq1D_c6 <= 
         "000" & D_c6						 when "001" | "111", -- mult by 1
         "00" & D_c6 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q1_c6(2)  select 
   w0_c6<= betaw1_c6 - absq1D_c6 when '0',
         betaw1_c6 + absq1D_c6 when others;

   wfinal_c6 <= w0_c6(53 downto 0);
   qM0_c6 <= wfinal_c6(53); -- rounding bit is the sign of the remainder
   qP28_c0 <=      q28_c0(1 downto 0);
   qM28_c0 <=      q28_c0(2) & "0";
   qP27_c0 <=      q27_c0(1 downto 0);
   qM27_c0 <=      q27_c0(2) & "0";
   qP26_c0 <=      q26_c0(1 downto 0);
   qM26_c0 <=      q26_c0(2) & "0";
   qP25_c0 <=      q25_c0(1 downto 0);
   qM25_c0 <=      q25_c0(2) & "0";
   qP24_c0 <=      q24_c0(1 downto 0);
   qM24_c0 <=      q24_c0(2) & "0";
   qP23_c1 <=      q23_c1(1 downto 0);
   qM23_c1 <=      q23_c1(2) & "0";
   qP22_c1 <=      q22_c1(1 downto 0);
   qM22_c1 <=      q22_c1(2) & "0";
   qP21_c1 <=      q21_c1(1 downto 0);
   qM21_c1 <=      q21_c1(2) & "0";
   qP20_c1 <=      q20_c1(1 downto 0);
   qM20_c1 <=      q20_c1(2) & "0";
   qP19_c2 <=      q19_c2(1 downto 0);
   qM19_c2 <=      q19_c2(2) & "0";
   qP18_c2 <=      q18_c2(1 downto 0);
   qM18_c2 <=      q18_c2(2) & "0";
   qP17_c2 <=      q17_c2(1 downto 0);
   qM17_c2 <=      q17_c2(2) & "0";
   qP16_c2 <=      q16_c2(1 downto 0);
   qM16_c2 <=      q16_c2(2) & "0";
   qP15_c3 <=      q15_c3(1 downto 0);
   qM15_c3 <=      q15_c3(2) & "0";
   qP14_c3 <=      q14_c3(1 downto 0);
   qM14_c3 <=      q14_c3(2) & "0";
   qP13_c3 <=      q13_c3(1 downto 0);
   qM13_c3 <=      q13_c3(2) & "0";
   qP12_c3 <=      q12_c3(1 downto 0);
   qM12_c3 <=      q12_c3(2) & "0";
   qP11_c3 <=      q11_c3(1 downto 0);
   qM11_c3 <=      q11_c3(2) & "0";
   qP10_c4 <=      q10_c4(1 downto 0);
   qM10_c4 <=      q10_c4(2) & "0";
   qP9_c4 <=      q9_c4(1 downto 0);
   qM9_c4 <=      q9_c4(2) & "0";
   qP8_c4 <=      q8_c4(1 downto 0);
   qM8_c4 <=      q8_c4(2) & "0";
   qP7_c4 <=      q7_c4(1 downto 0);
   qM7_c4 <=      q7_c4(2) & "0";
   qP6_c5 <=      q6_c5(1 downto 0);
   qM6_c5 <=      q6_c5(2) & "0";
   qP5_c5 <=      q5_c5(1 downto 0);
   qM5_c5 <=      q5_c5(2) & "0";
   qP4_c5 <=      q4_c5(1 downto 0);
   qM4_c5 <=      q4_c5(2) & "0";
   qP3_c5 <=      q3_c5(1 downto 0);
   qM3_c5 <=      q3_c5(2) & "0";
   qP2_c5 <=      q2_c5(1 downto 0);
   qM2_c5 <=      q2_c5(2) & "0";
   qP1_c6 <=      q1_c6(1 downto 0);
   qM1_c6 <=      q1_c6(2) & "0";
   qP_c6 <= qP28_c6 & qP27_c6 & qP26_c6 & qP25_c6 & qP24_c6 & qP23_c6 & qP22_c6 & qP21_c6 & qP20_c6 & qP19_c6 & qP18_c6 & qP17_c6 & qP16_c6 & qP15_c6 & qP14_c6 & qP13_c6 & qP12_c6 & qP11_c6 & qP10_c6 & qP9_c6 & qP8_c6 & qP7_c6 & qP6_c6 & qP5_c6 & qP4_c6 & qP3_c6 & qP2_c6 & qP1_c6;
   qM_c6 <= qM28_c6(0) & qM27_c6 & qM26_c6 & qM25_c6 & qM24_c6 & qM23_c6 & qM22_c6 & qM21_c6 & qM20_c6 & qM19_c6 & qM18_c6 & qM17_c6 & qM16_c6 & qM15_c6 & qM14_c6 & qM13_c6 & qM12_c6 & qM11_c6 & qM10_c6 & qM9_c6 & qM8_c6 & qM7_c6 & qM6_c6 & qM5_c6 & qM4_c6 & qM3_c6 & qM2_c6 & qM1_c6 & qM0_c6;
   quotient_c6 <= qP_c6 - qM_c6;
   -- We need a mR in (0, -wf-2) format: 1+wF fraction bits, 1 round bit, and 1 guard bit for the normalisation,
   -- quotient is the truncation of the exact quotient to at least 2^(-wF-2) bits
   -- now discarding its possible known MSB zeroes, and dropping the possible extra LSB bit (due to radix 4) 
   mR_c6 <= quotient_c6(54 downto 0); 
   -- normalisation
   fRnorm_c6 <=    mR_c6(53 downto 1)  when mR_c6(54)= '1'
           else mR_c6(52 downto 0);  -- now fRnorm is a (-1, -wF-1) fraction
   round_c6 <= fRnorm_c6(0); 
   expR1_c6 <= expR0_c6 + ("000" & (9 downto 1 => '1') & mR_c6(54)); -- add back bias
   -- final rounding
   expfrac_c6 <= expR1_c6 & fRnorm_c6(52 downto 1) ;
   expfracR_c6 <= expfrac_c6 + ((64 downto 1 => '0') & round_c6);
   exnR_c6 <=      "00"  when expfracR_c6(64) = '1'   -- underflow
           else "10"  when  expfracR_c6(64 downto 63) =  "01" -- overflow
           else "01";      -- 00, normal case
   with exnR0_c6  select 
      exnRfinal_c6 <= 
         exnR_c6   when "01", -- normal
         exnR0_c6  when others;
   R <= exnRfinal_c6 & sR_c6 & expfracR_c6(62 downto 0);
end architecture;



