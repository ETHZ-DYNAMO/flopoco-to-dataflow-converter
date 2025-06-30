--------------------------------------------------------------------------------
--                          selFunction_Freq500_uid4
-- VHDL generated for Kintex7 @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007-2022)
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 2
-- Target frequency (MHz): 500
-- Input signals: X
-- Output signals: Y

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity selFunction_Freq500_uid4 is
    port (X : in  std_logic_vector(8 downto 0);
          Y : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of selFunction_Freq500_uid4 is
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
--                         (FPDiv_11_52_Freq500_uid2)
-- VHDL generated for Kintex7 @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Maxime Christ, Florent de Dinechin (2015)
--------------------------------------------------------------------------------
-- Pipeline depth: 36 cycles
-- Clock period (ns): 2
-- Target frequency (MHz): 500
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
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27, ce_28, ce_29, ce_30, ce_31, ce_32, ce_33, ce_34, ce_35, ce_36 : in std_logic;
          X : in  std_logic_vector(11+52+2 downto 0);
          Y : in  std_logic_vector(11+52+2 downto 0);
          R : out  std_logic_vector(11+52+2 downto 0)   );
end entity;

architecture arch of FloatingPointDivider is
   component selFunction_Freq500_uid4 is
      port ( X : in  std_logic_vector(8 downto 0);
             Y : out  std_logic_vector(2 downto 0)   );
   end component;

signal fX_c0 :  std_logic_vector(52 downto 0);
signal fY_c0 :  std_logic_vector(52 downto 0);
signal expR0_c0, expR0_c1, expR0_c2, expR0_c3, expR0_c4, expR0_c5, expR0_c6, expR0_c7, expR0_c8, expR0_c9, expR0_c10, expR0_c11, expR0_c12, expR0_c13, expR0_c14, expR0_c15, expR0_c16, expR0_c17, expR0_c18, expR0_c19, expR0_c20, expR0_c21, expR0_c22, expR0_c23, expR0_c24, expR0_c25, expR0_c26, expR0_c27, expR0_c28, expR0_c29, expR0_c30, expR0_c31, expR0_c32, expR0_c33, expR0_c34, expR0_c35, expR0_c36 :  std_logic_vector(12 downto 0);
signal sR_c0, sR_c1, sR_c2, sR_c3, sR_c4, sR_c5, sR_c6, sR_c7, sR_c8, sR_c9, sR_c10, sR_c11, sR_c12, sR_c13, sR_c14, sR_c15, sR_c16, sR_c17, sR_c18, sR_c19, sR_c20, sR_c21, sR_c22, sR_c23, sR_c24, sR_c25, sR_c26, sR_c27, sR_c28, sR_c29, sR_c30, sR_c31, sR_c32, sR_c33, sR_c34, sR_c35, sR_c36 :  std_logic;
signal exnXY_c0 :  std_logic_vector(3 downto 0);
signal exnR0_c0, exnR0_c1, exnR0_c2, exnR0_c3, exnR0_c4, exnR0_c5, exnR0_c6, exnR0_c7, exnR0_c8, exnR0_c9, exnR0_c10, exnR0_c11, exnR0_c12, exnR0_c13, exnR0_c14, exnR0_c15, exnR0_c16, exnR0_c17, exnR0_c18, exnR0_c19, exnR0_c20, exnR0_c21, exnR0_c22, exnR0_c23, exnR0_c24, exnR0_c25, exnR0_c26, exnR0_c27, exnR0_c28, exnR0_c29, exnR0_c30, exnR0_c31, exnR0_c32, exnR0_c33, exnR0_c34, exnR0_c35, exnR0_c36 :  std_logic_vector(1 downto 0);
signal D_c0, D_c1, D_c2, D_c3, D_c4, D_c5, D_c6, D_c7, D_c8, D_c9, D_c10, D_c11, D_c12, D_c13, D_c14, D_c15, D_c16, D_c17, D_c18, D_c19, D_c20, D_c21, D_c22, D_c23, D_c24, D_c25, D_c26, D_c27, D_c28, D_c29, D_c30, D_c31, D_c32, D_c33 :  std_logic_vector(52 downto 0);
signal psX_c0 :  std_logic_vector(53 downto 0);
signal betaw28_c0, betaw28_c1 :  std_logic_vector(55 downto 0);
signal sel28_c0 :  std_logic_vector(8 downto 0);
signal q28_c0, q28_c1 :  std_logic_vector(2 downto 0);
signal q28_copy5_c0 :  std_logic_vector(2 downto 0);
signal absq28D_c0, absq28D_c1 :  std_logic_vector(55 downto 0);
signal w27_c1 :  std_logic_vector(55 downto 0);
signal betaw27_c1, betaw27_c2 :  std_logic_vector(55 downto 0);
signal sel27_c1 :  std_logic_vector(8 downto 0);
signal q27_c1, q27_c2 :  std_logic_vector(2 downto 0);
signal q27_copy6_c1 :  std_logic_vector(2 downto 0);
signal absq27D_c1, absq27D_c2 :  std_logic_vector(55 downto 0);
signal w26_c2 :  std_logic_vector(55 downto 0);
signal betaw26_c2, betaw26_c3 :  std_logic_vector(55 downto 0);
signal sel26_c2 :  std_logic_vector(8 downto 0);
signal q26_c2, q26_c3 :  std_logic_vector(2 downto 0);
signal q26_copy7_c2 :  std_logic_vector(2 downto 0);
signal absq26D_c2, absq26D_c3 :  std_logic_vector(55 downto 0);
signal w25_c3 :  std_logic_vector(55 downto 0);
signal betaw25_c3, betaw25_c4 :  std_logic_vector(55 downto 0);
signal sel25_c3 :  std_logic_vector(8 downto 0);
signal q25_c4 :  std_logic_vector(2 downto 0);
signal q25_copy8_c3, q25_copy8_c4 :  std_logic_vector(2 downto 0);
signal absq25D_c4 :  std_logic_vector(55 downto 0);
signal w24_c4 :  std_logic_vector(55 downto 0);
signal betaw24_c4, betaw24_c5, betaw24_c6 :  std_logic_vector(55 downto 0);
signal sel24_c4 :  std_logic_vector(8 downto 0);
signal q24_c5, q24_c6 :  std_logic_vector(2 downto 0);
signal q24_copy9_c4, q24_copy9_c5 :  std_logic_vector(2 downto 0);
signal absq24D_c5, absq24D_c6 :  std_logic_vector(55 downto 0);
signal w23_c6 :  std_logic_vector(55 downto 0);
signal betaw23_c6, betaw23_c7 :  std_logic_vector(55 downto 0);
signal sel23_c6 :  std_logic_vector(8 downto 0);
signal q23_c6, q23_c7 :  std_logic_vector(2 downto 0);
signal q23_copy10_c6 :  std_logic_vector(2 downto 0);
signal absq23D_c6, absq23D_c7 :  std_logic_vector(55 downto 0);
signal w22_c7 :  std_logic_vector(55 downto 0);
signal betaw22_c7, betaw22_c8 :  std_logic_vector(55 downto 0);
signal sel22_c7 :  std_logic_vector(8 downto 0);
signal q22_c7, q22_c8 :  std_logic_vector(2 downto 0);
signal q22_copy11_c7 :  std_logic_vector(2 downto 0);
signal absq22D_c7, absq22D_c8 :  std_logic_vector(55 downto 0);
signal w21_c8 :  std_logic_vector(55 downto 0);
signal betaw21_c8, betaw21_c9 :  std_logic_vector(55 downto 0);
signal sel21_c8 :  std_logic_vector(8 downto 0);
signal q21_c9 :  std_logic_vector(2 downto 0);
signal q21_copy12_c8, q21_copy12_c9 :  std_logic_vector(2 downto 0);
signal absq21D_c9 :  std_logic_vector(55 downto 0);
signal w20_c9 :  std_logic_vector(55 downto 0);
signal betaw20_c9, betaw20_c10, betaw20_c11 :  std_logic_vector(55 downto 0);
signal sel20_c9 :  std_logic_vector(8 downto 0);
signal q20_c10, q20_c11 :  std_logic_vector(2 downto 0);
signal q20_copy13_c9, q20_copy13_c10 :  std_logic_vector(2 downto 0);
signal absq20D_c10, absq20D_c11 :  std_logic_vector(55 downto 0);
signal w19_c11 :  std_logic_vector(55 downto 0);
signal betaw19_c11, betaw19_c12 :  std_logic_vector(55 downto 0);
signal sel19_c11 :  std_logic_vector(8 downto 0);
signal q19_c11, q19_c12 :  std_logic_vector(2 downto 0);
signal q19_copy14_c11 :  std_logic_vector(2 downto 0);
signal absq19D_c11, absq19D_c12 :  std_logic_vector(55 downto 0);
signal w18_c12 :  std_logic_vector(55 downto 0);
signal betaw18_c12, betaw18_c13 :  std_logic_vector(55 downto 0);
signal sel18_c12 :  std_logic_vector(8 downto 0);
signal q18_c12, q18_c13 :  std_logic_vector(2 downto 0);
signal q18_copy15_c12 :  std_logic_vector(2 downto 0);
signal absq18D_c12, absq18D_c13 :  std_logic_vector(55 downto 0);
signal w17_c13 :  std_logic_vector(55 downto 0);
signal betaw17_c13, betaw17_c14 :  std_logic_vector(55 downto 0);
signal sel17_c13 :  std_logic_vector(8 downto 0);
signal q17_c14 :  std_logic_vector(2 downto 0);
signal q17_copy16_c13, q17_copy16_c14 :  std_logic_vector(2 downto 0);
signal absq17D_c14 :  std_logic_vector(55 downto 0);
signal w16_c14 :  std_logic_vector(55 downto 0);
signal betaw16_c14, betaw16_c15, betaw16_c16 :  std_logic_vector(55 downto 0);
signal sel16_c14 :  std_logic_vector(8 downto 0);
signal q16_c15, q16_c16 :  std_logic_vector(2 downto 0);
signal q16_copy17_c14, q16_copy17_c15 :  std_logic_vector(2 downto 0);
signal absq16D_c15, absq16D_c16 :  std_logic_vector(55 downto 0);
signal w15_c16 :  std_logic_vector(55 downto 0);
signal betaw15_c16, betaw15_c17 :  std_logic_vector(55 downto 0);
signal sel15_c16 :  std_logic_vector(8 downto 0);
signal q15_c16, q15_c17 :  std_logic_vector(2 downto 0);
signal q15_copy18_c16 :  std_logic_vector(2 downto 0);
signal absq15D_c16, absq15D_c17 :  std_logic_vector(55 downto 0);
signal w14_c17 :  std_logic_vector(55 downto 0);
signal betaw14_c17, betaw14_c18 :  std_logic_vector(55 downto 0);
signal sel14_c17 :  std_logic_vector(8 downto 0);
signal q14_c17, q14_c18 :  std_logic_vector(2 downto 0);
signal q14_copy19_c17 :  std_logic_vector(2 downto 0);
signal absq14D_c17, absq14D_c18 :  std_logic_vector(55 downto 0);
signal w13_c18 :  std_logic_vector(55 downto 0);
signal betaw13_c18, betaw13_c19 :  std_logic_vector(55 downto 0);
signal sel13_c18 :  std_logic_vector(8 downto 0);
signal q13_c18, q13_c19 :  std_logic_vector(2 downto 0);
signal q13_copy20_c18 :  std_logic_vector(2 downto 0);
signal absq13D_c18, absq13D_c19 :  std_logic_vector(55 downto 0);
signal w12_c19 :  std_logic_vector(55 downto 0);
signal betaw12_c19, betaw12_c20, betaw12_c21 :  std_logic_vector(55 downto 0);
signal sel12_c19 :  std_logic_vector(8 downto 0);
signal q12_c20, q12_c21 :  std_logic_vector(2 downto 0);
signal q12_copy21_c19, q12_copy21_c20 :  std_logic_vector(2 downto 0);
signal absq12D_c20, absq12D_c21 :  std_logic_vector(55 downto 0);
signal w11_c21 :  std_logic_vector(55 downto 0);
signal betaw11_c21, betaw11_c22 :  std_logic_vector(55 downto 0);
signal sel11_c21 :  std_logic_vector(8 downto 0);
signal q11_c21, q11_c22 :  std_logic_vector(2 downto 0);
signal q11_copy22_c21 :  std_logic_vector(2 downto 0);
signal absq11D_c21, absq11D_c22 :  std_logic_vector(55 downto 0);
signal w10_c22 :  std_logic_vector(55 downto 0);
signal betaw10_c22, betaw10_c23 :  std_logic_vector(55 downto 0);
signal sel10_c22 :  std_logic_vector(8 downto 0);
signal q10_c22, q10_c23 :  std_logic_vector(2 downto 0);
signal q10_copy23_c22 :  std_logic_vector(2 downto 0);
signal absq10D_c22, absq10D_c23 :  std_logic_vector(55 downto 0);
signal w9_c23 :  std_logic_vector(55 downto 0);
signal betaw9_c23, betaw9_c24 :  std_logic_vector(55 downto 0);
signal sel9_c23 :  std_logic_vector(8 downto 0);
signal q9_c23, q9_c24 :  std_logic_vector(2 downto 0);
signal q9_copy24_c23 :  std_logic_vector(2 downto 0);
signal absq9D_c23, absq9D_c24 :  std_logic_vector(55 downto 0);
signal w8_c24 :  std_logic_vector(55 downto 0);
signal betaw8_c24, betaw8_c25, betaw8_c26 :  std_logic_vector(55 downto 0);
signal sel8_c24 :  std_logic_vector(8 downto 0);
signal q8_c25, q8_c26 :  std_logic_vector(2 downto 0);
signal q8_copy25_c24, q8_copy25_c25 :  std_logic_vector(2 downto 0);
signal absq8D_c25, absq8D_c26 :  std_logic_vector(55 downto 0);
signal w7_c26 :  std_logic_vector(55 downto 0);
signal betaw7_c26, betaw7_c27 :  std_logic_vector(55 downto 0);
signal sel7_c26 :  std_logic_vector(8 downto 0);
signal q7_c26, q7_c27 :  std_logic_vector(2 downto 0);
signal q7_copy26_c26 :  std_logic_vector(2 downto 0);
signal absq7D_c26, absq7D_c27 :  std_logic_vector(55 downto 0);
signal w6_c27 :  std_logic_vector(55 downto 0);
signal betaw6_c27, betaw6_c28 :  std_logic_vector(55 downto 0);
signal sel6_c27 :  std_logic_vector(8 downto 0);
signal q6_c27, q6_c28 :  std_logic_vector(2 downto 0);
signal q6_copy27_c27 :  std_logic_vector(2 downto 0);
signal absq6D_c27, absq6D_c28 :  std_logic_vector(55 downto 0);
signal w5_c28 :  std_logic_vector(55 downto 0);
signal betaw5_c28, betaw5_c29 :  std_logic_vector(55 downto 0);
signal sel5_c28 :  std_logic_vector(8 downto 0);
signal q5_c28, q5_c29 :  std_logic_vector(2 downto 0);
signal q5_copy28_c28 :  std_logic_vector(2 downto 0);
signal absq5D_c28, absq5D_c29 :  std_logic_vector(55 downto 0);
signal w4_c29 :  std_logic_vector(55 downto 0);
signal betaw4_c29, betaw4_c30, betaw4_c31 :  std_logic_vector(55 downto 0);
signal sel4_c29 :  std_logic_vector(8 downto 0);
signal q4_c30, q4_c31 :  std_logic_vector(2 downto 0);
signal q4_copy29_c29, q4_copy29_c30 :  std_logic_vector(2 downto 0);
signal absq4D_c30, absq4D_c31 :  std_logic_vector(55 downto 0);
signal w3_c31 :  std_logic_vector(55 downto 0);
signal betaw3_c31, betaw3_c32 :  std_logic_vector(55 downto 0);
signal sel3_c31 :  std_logic_vector(8 downto 0);
signal q3_c31, q3_c32 :  std_logic_vector(2 downto 0);
signal q3_copy30_c31 :  std_logic_vector(2 downto 0);
signal absq3D_c31, absq3D_c32 :  std_logic_vector(55 downto 0);
signal w2_c32 :  std_logic_vector(55 downto 0);
signal betaw2_c32, betaw2_c33 :  std_logic_vector(55 downto 0);
signal sel2_c32 :  std_logic_vector(8 downto 0);
signal q2_c32, q2_c33 :  std_logic_vector(2 downto 0);
signal q2_copy31_c32 :  std_logic_vector(2 downto 0);
signal absq2D_c32, absq2D_c33 :  std_logic_vector(55 downto 0);
signal w1_c33 :  std_logic_vector(55 downto 0);
signal betaw1_c33, betaw1_c34 :  std_logic_vector(55 downto 0);
signal sel1_c33 :  std_logic_vector(8 downto 0);
signal q1_c33, q1_c34 :  std_logic_vector(2 downto 0);
signal q1_copy32_c33 :  std_logic_vector(2 downto 0);
signal absq1D_c33, absq1D_c34 :  std_logic_vector(55 downto 0);
signal w0_c34 :  std_logic_vector(55 downto 0);
signal wfinal_c34 :  std_logic_vector(53 downto 0);
signal qM0_c34 :  std_logic;
signal qP28_c0, qP28_c1, qP28_c2, qP28_c3, qP28_c4, qP28_c5, qP28_c6, qP28_c7, qP28_c8, qP28_c9, qP28_c10, qP28_c11, qP28_c12, qP28_c13, qP28_c14, qP28_c15, qP28_c16, qP28_c17, qP28_c18, qP28_c19, qP28_c20, qP28_c21, qP28_c22, qP28_c23, qP28_c24, qP28_c25, qP28_c26, qP28_c27, qP28_c28, qP28_c29, qP28_c30, qP28_c31, qP28_c32, qP28_c33 :  std_logic_vector(1 downto 0);
signal qM28_c0, qM28_c1, qM28_c2, qM28_c3, qM28_c4, qM28_c5, qM28_c6, qM28_c7, qM28_c8, qM28_c9, qM28_c10, qM28_c11, qM28_c12, qM28_c13, qM28_c14, qM28_c15, qM28_c16, qM28_c17, qM28_c18, qM28_c19, qM28_c20, qM28_c21, qM28_c22, qM28_c23, qM28_c24, qM28_c25, qM28_c26, qM28_c27, qM28_c28, qM28_c29, qM28_c30, qM28_c31, qM28_c32, qM28_c33, qM28_c34 :  std_logic_vector(1 downto 0);
signal qP27_c1, qP27_c2, qP27_c3, qP27_c4, qP27_c5, qP27_c6, qP27_c7, qP27_c8, qP27_c9, qP27_c10, qP27_c11, qP27_c12, qP27_c13, qP27_c14, qP27_c15, qP27_c16, qP27_c17, qP27_c18, qP27_c19, qP27_c20, qP27_c21, qP27_c22, qP27_c23, qP27_c24, qP27_c25, qP27_c26, qP27_c27, qP27_c28, qP27_c29, qP27_c30, qP27_c31, qP27_c32, qP27_c33 :  std_logic_vector(1 downto 0);
signal qM27_c1, qM27_c2, qM27_c3, qM27_c4, qM27_c5, qM27_c6, qM27_c7, qM27_c8, qM27_c9, qM27_c10, qM27_c11, qM27_c12, qM27_c13, qM27_c14, qM27_c15, qM27_c16, qM27_c17, qM27_c18, qM27_c19, qM27_c20, qM27_c21, qM27_c22, qM27_c23, qM27_c24, qM27_c25, qM27_c26, qM27_c27, qM27_c28, qM27_c29, qM27_c30, qM27_c31, qM27_c32, qM27_c33, qM27_c34 :  std_logic_vector(1 downto 0);
signal qP26_c2, qP26_c3, qP26_c4, qP26_c5, qP26_c6, qP26_c7, qP26_c8, qP26_c9, qP26_c10, qP26_c11, qP26_c12, qP26_c13, qP26_c14, qP26_c15, qP26_c16, qP26_c17, qP26_c18, qP26_c19, qP26_c20, qP26_c21, qP26_c22, qP26_c23, qP26_c24, qP26_c25, qP26_c26, qP26_c27, qP26_c28, qP26_c29, qP26_c30, qP26_c31, qP26_c32, qP26_c33 :  std_logic_vector(1 downto 0);
signal qM26_c2, qM26_c3, qM26_c4, qM26_c5, qM26_c6, qM26_c7, qM26_c8, qM26_c9, qM26_c10, qM26_c11, qM26_c12, qM26_c13, qM26_c14, qM26_c15, qM26_c16, qM26_c17, qM26_c18, qM26_c19, qM26_c20, qM26_c21, qM26_c22, qM26_c23, qM26_c24, qM26_c25, qM26_c26, qM26_c27, qM26_c28, qM26_c29, qM26_c30, qM26_c31, qM26_c32, qM26_c33, qM26_c34 :  std_logic_vector(1 downto 0);
signal qP25_c4, qP25_c5, qP25_c6, qP25_c7, qP25_c8, qP25_c9, qP25_c10, qP25_c11, qP25_c12, qP25_c13, qP25_c14, qP25_c15, qP25_c16, qP25_c17, qP25_c18, qP25_c19, qP25_c20, qP25_c21, qP25_c22, qP25_c23, qP25_c24, qP25_c25, qP25_c26, qP25_c27, qP25_c28, qP25_c29, qP25_c30, qP25_c31, qP25_c32, qP25_c33 :  std_logic_vector(1 downto 0);
signal qM25_c4, qM25_c5, qM25_c6, qM25_c7, qM25_c8, qM25_c9, qM25_c10, qM25_c11, qM25_c12, qM25_c13, qM25_c14, qM25_c15, qM25_c16, qM25_c17, qM25_c18, qM25_c19, qM25_c20, qM25_c21, qM25_c22, qM25_c23, qM25_c24, qM25_c25, qM25_c26, qM25_c27, qM25_c28, qM25_c29, qM25_c30, qM25_c31, qM25_c32, qM25_c33, qM25_c34 :  std_logic_vector(1 downto 0);
signal qP24_c5, qP24_c6, qP24_c7, qP24_c8, qP24_c9, qP24_c10, qP24_c11, qP24_c12, qP24_c13, qP24_c14, qP24_c15, qP24_c16, qP24_c17, qP24_c18, qP24_c19, qP24_c20, qP24_c21, qP24_c22, qP24_c23, qP24_c24, qP24_c25, qP24_c26, qP24_c27, qP24_c28, qP24_c29, qP24_c30, qP24_c31, qP24_c32, qP24_c33 :  std_logic_vector(1 downto 0);
signal qM24_c5, qM24_c6, qM24_c7, qM24_c8, qM24_c9, qM24_c10, qM24_c11, qM24_c12, qM24_c13, qM24_c14, qM24_c15, qM24_c16, qM24_c17, qM24_c18, qM24_c19, qM24_c20, qM24_c21, qM24_c22, qM24_c23, qM24_c24, qM24_c25, qM24_c26, qM24_c27, qM24_c28, qM24_c29, qM24_c30, qM24_c31, qM24_c32, qM24_c33, qM24_c34 :  std_logic_vector(1 downto 0);
signal qP23_c6, qP23_c7, qP23_c8, qP23_c9, qP23_c10, qP23_c11, qP23_c12, qP23_c13, qP23_c14, qP23_c15, qP23_c16, qP23_c17, qP23_c18, qP23_c19, qP23_c20, qP23_c21, qP23_c22, qP23_c23, qP23_c24, qP23_c25, qP23_c26, qP23_c27, qP23_c28, qP23_c29, qP23_c30, qP23_c31, qP23_c32, qP23_c33 :  std_logic_vector(1 downto 0);
signal qM23_c6, qM23_c7, qM23_c8, qM23_c9, qM23_c10, qM23_c11, qM23_c12, qM23_c13, qM23_c14, qM23_c15, qM23_c16, qM23_c17, qM23_c18, qM23_c19, qM23_c20, qM23_c21, qM23_c22, qM23_c23, qM23_c24, qM23_c25, qM23_c26, qM23_c27, qM23_c28, qM23_c29, qM23_c30, qM23_c31, qM23_c32, qM23_c33, qM23_c34 :  std_logic_vector(1 downto 0);
signal qP22_c7, qP22_c8, qP22_c9, qP22_c10, qP22_c11, qP22_c12, qP22_c13, qP22_c14, qP22_c15, qP22_c16, qP22_c17, qP22_c18, qP22_c19, qP22_c20, qP22_c21, qP22_c22, qP22_c23, qP22_c24, qP22_c25, qP22_c26, qP22_c27, qP22_c28, qP22_c29, qP22_c30, qP22_c31, qP22_c32, qP22_c33 :  std_logic_vector(1 downto 0);
signal qM22_c7, qM22_c8, qM22_c9, qM22_c10, qM22_c11, qM22_c12, qM22_c13, qM22_c14, qM22_c15, qM22_c16, qM22_c17, qM22_c18, qM22_c19, qM22_c20, qM22_c21, qM22_c22, qM22_c23, qM22_c24, qM22_c25, qM22_c26, qM22_c27, qM22_c28, qM22_c29, qM22_c30, qM22_c31, qM22_c32, qM22_c33, qM22_c34 :  std_logic_vector(1 downto 0);
signal qP21_c9, qP21_c10, qP21_c11, qP21_c12, qP21_c13, qP21_c14, qP21_c15, qP21_c16, qP21_c17, qP21_c18, qP21_c19, qP21_c20, qP21_c21, qP21_c22, qP21_c23, qP21_c24, qP21_c25, qP21_c26, qP21_c27, qP21_c28, qP21_c29, qP21_c30, qP21_c31, qP21_c32, qP21_c33 :  std_logic_vector(1 downto 0);
signal qM21_c9, qM21_c10, qM21_c11, qM21_c12, qM21_c13, qM21_c14, qM21_c15, qM21_c16, qM21_c17, qM21_c18, qM21_c19, qM21_c20, qM21_c21, qM21_c22, qM21_c23, qM21_c24, qM21_c25, qM21_c26, qM21_c27, qM21_c28, qM21_c29, qM21_c30, qM21_c31, qM21_c32, qM21_c33, qM21_c34 :  std_logic_vector(1 downto 0);
signal qP20_c10, qP20_c11, qP20_c12, qP20_c13, qP20_c14, qP20_c15, qP20_c16, qP20_c17, qP20_c18, qP20_c19, qP20_c20, qP20_c21, qP20_c22, qP20_c23, qP20_c24, qP20_c25, qP20_c26, qP20_c27, qP20_c28, qP20_c29, qP20_c30, qP20_c31, qP20_c32, qP20_c33 :  std_logic_vector(1 downto 0);
signal qM20_c10, qM20_c11, qM20_c12, qM20_c13, qM20_c14, qM20_c15, qM20_c16, qM20_c17, qM20_c18, qM20_c19, qM20_c20, qM20_c21, qM20_c22, qM20_c23, qM20_c24, qM20_c25, qM20_c26, qM20_c27, qM20_c28, qM20_c29, qM20_c30, qM20_c31, qM20_c32, qM20_c33, qM20_c34 :  std_logic_vector(1 downto 0);
signal qP19_c11, qP19_c12, qP19_c13, qP19_c14, qP19_c15, qP19_c16, qP19_c17, qP19_c18, qP19_c19, qP19_c20, qP19_c21, qP19_c22, qP19_c23, qP19_c24, qP19_c25, qP19_c26, qP19_c27, qP19_c28, qP19_c29, qP19_c30, qP19_c31, qP19_c32, qP19_c33 :  std_logic_vector(1 downto 0);
signal qM19_c11, qM19_c12, qM19_c13, qM19_c14, qM19_c15, qM19_c16, qM19_c17, qM19_c18, qM19_c19, qM19_c20, qM19_c21, qM19_c22, qM19_c23, qM19_c24, qM19_c25, qM19_c26, qM19_c27, qM19_c28, qM19_c29, qM19_c30, qM19_c31, qM19_c32, qM19_c33, qM19_c34 :  std_logic_vector(1 downto 0);
signal qP18_c12, qP18_c13, qP18_c14, qP18_c15, qP18_c16, qP18_c17, qP18_c18, qP18_c19, qP18_c20, qP18_c21, qP18_c22, qP18_c23, qP18_c24, qP18_c25, qP18_c26, qP18_c27, qP18_c28, qP18_c29, qP18_c30, qP18_c31, qP18_c32, qP18_c33 :  std_logic_vector(1 downto 0);
signal qM18_c12, qM18_c13, qM18_c14, qM18_c15, qM18_c16, qM18_c17, qM18_c18, qM18_c19, qM18_c20, qM18_c21, qM18_c22, qM18_c23, qM18_c24, qM18_c25, qM18_c26, qM18_c27, qM18_c28, qM18_c29, qM18_c30, qM18_c31, qM18_c32, qM18_c33, qM18_c34 :  std_logic_vector(1 downto 0);
signal qP17_c14, qP17_c15, qP17_c16, qP17_c17, qP17_c18, qP17_c19, qP17_c20, qP17_c21, qP17_c22, qP17_c23, qP17_c24, qP17_c25, qP17_c26, qP17_c27, qP17_c28, qP17_c29, qP17_c30, qP17_c31, qP17_c32, qP17_c33 :  std_logic_vector(1 downto 0);
signal qM17_c14, qM17_c15, qM17_c16, qM17_c17, qM17_c18, qM17_c19, qM17_c20, qM17_c21, qM17_c22, qM17_c23, qM17_c24, qM17_c25, qM17_c26, qM17_c27, qM17_c28, qM17_c29, qM17_c30, qM17_c31, qM17_c32, qM17_c33, qM17_c34 :  std_logic_vector(1 downto 0);
signal qP16_c15, qP16_c16, qP16_c17, qP16_c18, qP16_c19, qP16_c20, qP16_c21, qP16_c22, qP16_c23, qP16_c24, qP16_c25, qP16_c26, qP16_c27, qP16_c28, qP16_c29, qP16_c30, qP16_c31, qP16_c32, qP16_c33 :  std_logic_vector(1 downto 0);
signal qM16_c15, qM16_c16, qM16_c17, qM16_c18, qM16_c19, qM16_c20, qM16_c21, qM16_c22, qM16_c23, qM16_c24, qM16_c25, qM16_c26, qM16_c27, qM16_c28, qM16_c29, qM16_c30, qM16_c31, qM16_c32, qM16_c33, qM16_c34 :  std_logic_vector(1 downto 0);
signal qP15_c16, qP15_c17, qP15_c18, qP15_c19, qP15_c20, qP15_c21, qP15_c22, qP15_c23, qP15_c24, qP15_c25, qP15_c26, qP15_c27, qP15_c28, qP15_c29, qP15_c30, qP15_c31, qP15_c32, qP15_c33 :  std_logic_vector(1 downto 0);
signal qM15_c16, qM15_c17, qM15_c18, qM15_c19, qM15_c20, qM15_c21, qM15_c22, qM15_c23, qM15_c24, qM15_c25, qM15_c26, qM15_c27, qM15_c28, qM15_c29, qM15_c30, qM15_c31, qM15_c32, qM15_c33, qM15_c34 :  std_logic_vector(1 downto 0);
signal qP14_c17, qP14_c18, qP14_c19, qP14_c20, qP14_c21, qP14_c22, qP14_c23, qP14_c24, qP14_c25, qP14_c26, qP14_c27, qP14_c28, qP14_c29, qP14_c30, qP14_c31, qP14_c32, qP14_c33 :  std_logic_vector(1 downto 0);
signal qM14_c17, qM14_c18, qM14_c19, qM14_c20, qM14_c21, qM14_c22, qM14_c23, qM14_c24, qM14_c25, qM14_c26, qM14_c27, qM14_c28, qM14_c29, qM14_c30, qM14_c31, qM14_c32, qM14_c33, qM14_c34 :  std_logic_vector(1 downto 0);
signal qP13_c18, qP13_c19, qP13_c20, qP13_c21, qP13_c22, qP13_c23, qP13_c24, qP13_c25, qP13_c26, qP13_c27, qP13_c28, qP13_c29, qP13_c30, qP13_c31, qP13_c32, qP13_c33 :  std_logic_vector(1 downto 0);
signal qM13_c18, qM13_c19, qM13_c20, qM13_c21, qM13_c22, qM13_c23, qM13_c24, qM13_c25, qM13_c26, qM13_c27, qM13_c28, qM13_c29, qM13_c30, qM13_c31, qM13_c32, qM13_c33, qM13_c34 :  std_logic_vector(1 downto 0);
signal qP12_c20, qP12_c21, qP12_c22, qP12_c23, qP12_c24, qP12_c25, qP12_c26, qP12_c27, qP12_c28, qP12_c29, qP12_c30, qP12_c31, qP12_c32, qP12_c33 :  std_logic_vector(1 downto 0);
signal qM12_c20, qM12_c21, qM12_c22, qM12_c23, qM12_c24, qM12_c25, qM12_c26, qM12_c27, qM12_c28, qM12_c29, qM12_c30, qM12_c31, qM12_c32, qM12_c33, qM12_c34 :  std_logic_vector(1 downto 0);
signal qP11_c21, qP11_c22, qP11_c23, qP11_c24, qP11_c25, qP11_c26, qP11_c27, qP11_c28, qP11_c29, qP11_c30, qP11_c31, qP11_c32, qP11_c33 :  std_logic_vector(1 downto 0);
signal qM11_c21, qM11_c22, qM11_c23, qM11_c24, qM11_c25, qM11_c26, qM11_c27, qM11_c28, qM11_c29, qM11_c30, qM11_c31, qM11_c32, qM11_c33, qM11_c34 :  std_logic_vector(1 downto 0);
signal qP10_c22, qP10_c23, qP10_c24, qP10_c25, qP10_c26, qP10_c27, qP10_c28, qP10_c29, qP10_c30, qP10_c31, qP10_c32, qP10_c33 :  std_logic_vector(1 downto 0);
signal qM10_c22, qM10_c23, qM10_c24, qM10_c25, qM10_c26, qM10_c27, qM10_c28, qM10_c29, qM10_c30, qM10_c31, qM10_c32, qM10_c33, qM10_c34 :  std_logic_vector(1 downto 0);
signal qP9_c23, qP9_c24, qP9_c25, qP9_c26, qP9_c27, qP9_c28, qP9_c29, qP9_c30, qP9_c31, qP9_c32, qP9_c33 :  std_logic_vector(1 downto 0);
signal qM9_c23, qM9_c24, qM9_c25, qM9_c26, qM9_c27, qM9_c28, qM9_c29, qM9_c30, qM9_c31, qM9_c32, qM9_c33, qM9_c34 :  std_logic_vector(1 downto 0);
signal qP8_c25, qP8_c26, qP8_c27, qP8_c28, qP8_c29, qP8_c30, qP8_c31, qP8_c32, qP8_c33 :  std_logic_vector(1 downto 0);
signal qM8_c25, qM8_c26, qM8_c27, qM8_c28, qM8_c29, qM8_c30, qM8_c31, qM8_c32, qM8_c33, qM8_c34 :  std_logic_vector(1 downto 0);
signal qP7_c26, qP7_c27, qP7_c28, qP7_c29, qP7_c30, qP7_c31, qP7_c32, qP7_c33 :  std_logic_vector(1 downto 0);
signal qM7_c26, qM7_c27, qM7_c28, qM7_c29, qM7_c30, qM7_c31, qM7_c32, qM7_c33, qM7_c34 :  std_logic_vector(1 downto 0);
signal qP6_c27, qP6_c28, qP6_c29, qP6_c30, qP6_c31, qP6_c32, qP6_c33 :  std_logic_vector(1 downto 0);
signal qM6_c27, qM6_c28, qM6_c29, qM6_c30, qM6_c31, qM6_c32, qM6_c33, qM6_c34 :  std_logic_vector(1 downto 0);
signal qP5_c28, qP5_c29, qP5_c30, qP5_c31, qP5_c32, qP5_c33 :  std_logic_vector(1 downto 0);
signal qM5_c28, qM5_c29, qM5_c30, qM5_c31, qM5_c32, qM5_c33, qM5_c34 :  std_logic_vector(1 downto 0);
signal qP4_c30, qP4_c31, qP4_c32, qP4_c33 :  std_logic_vector(1 downto 0);
signal qM4_c30, qM4_c31, qM4_c32, qM4_c33, qM4_c34 :  std_logic_vector(1 downto 0);
signal qP3_c31, qP3_c32, qP3_c33 :  std_logic_vector(1 downto 0);
signal qM3_c31, qM3_c32, qM3_c33, qM3_c34 :  std_logic_vector(1 downto 0);
signal qP2_c32, qP2_c33 :  std_logic_vector(1 downto 0);
signal qM2_c32, qM2_c33, qM2_c34 :  std_logic_vector(1 downto 0);
signal qP1_c33 :  std_logic_vector(1 downto 0);
signal qM1_c33, qM1_c34 :  std_logic_vector(1 downto 0);
signal qP_c33, qP_c34, qP_c35 :  std_logic_vector(55 downto 0);
signal qM_c34, qM_c35 :  std_logic_vector(55 downto 0);
signal quotient_c35 :  std_logic_vector(55 downto 0);
signal mR_c35, mR_c36 :  std_logic_vector(54 downto 0);
signal fRnorm_c35, fRnorm_c36 :  std_logic_vector(52 downto 0);
signal round_c35, round_c36 :  std_logic;
signal expR1_c36 :  std_logic_vector(12 downto 0);
signal expfrac_c36 :  std_logic_vector(64 downto 0);
signal expfracR_c36 :  std_logic_vector(64 downto 0);
signal exnR_c36 :  std_logic_vector(1 downto 0);
signal exnRfinal_c36 :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               expR0_c1 <= expR0_c0;
               sR_c1 <= sR_c0;
               exnR0_c1 <= exnR0_c0;
               D_c1 <= D_c0;
               betaw28_c1 <= betaw28_c0;
               q28_c1 <= q28_c0;
               absq28D_c1 <= absq28D_c0;
               qP28_c1 <= qP28_c0;
               qM28_c1 <= qM28_c0;
            end if;
            if ce_2 = '1' then
               expR0_c2 <= expR0_c1;
               sR_c2 <= sR_c1;
               exnR0_c2 <= exnR0_c1;
               D_c2 <= D_c1;
               betaw27_c2 <= betaw27_c1;
               q27_c2 <= q27_c1;
               absq27D_c2 <= absq27D_c1;
               qP28_c2 <= qP28_c1;
               qM28_c2 <= qM28_c1;
               qP27_c2 <= qP27_c1;
               qM27_c2 <= qM27_c1;
            end if;
            if ce_3 = '1' then
               expR0_c3 <= expR0_c2;
               sR_c3 <= sR_c2;
               exnR0_c3 <= exnR0_c2;
               D_c3 <= D_c2;
               betaw26_c3 <= betaw26_c2;
               q26_c3 <= q26_c2;
               absq26D_c3 <= absq26D_c2;
               qP28_c3 <= qP28_c2;
               qM28_c3 <= qM28_c2;
               qP27_c3 <= qP27_c2;
               qM27_c3 <= qM27_c2;
               qP26_c3 <= qP26_c2;
               qM26_c3 <= qM26_c2;
            end if;
            if ce_4 = '1' then
               expR0_c4 <= expR0_c3;
               sR_c4 <= sR_c3;
               exnR0_c4 <= exnR0_c3;
               D_c4 <= D_c3;
               betaw25_c4 <= betaw25_c3;
               q25_copy8_c4 <= q25_copy8_c3;
               qP28_c4 <= qP28_c3;
               qM28_c4 <= qM28_c3;
               qP27_c4 <= qP27_c3;
               qM27_c4 <= qM27_c3;
               qP26_c4 <= qP26_c3;
               qM26_c4 <= qM26_c3;
            end if;
            if ce_5 = '1' then
               expR0_c5 <= expR0_c4;
               sR_c5 <= sR_c4;
               exnR0_c5 <= exnR0_c4;
               D_c5 <= D_c4;
               betaw24_c5 <= betaw24_c4;
               q24_copy9_c5 <= q24_copy9_c4;
               qP28_c5 <= qP28_c4;
               qM28_c5 <= qM28_c4;
               qP27_c5 <= qP27_c4;
               qM27_c5 <= qM27_c4;
               qP26_c5 <= qP26_c4;
               qM26_c5 <= qM26_c4;
               qP25_c5 <= qP25_c4;
               qM25_c5 <= qM25_c4;
            end if;
            if ce_6 = '1' then
               expR0_c6 <= expR0_c5;
               sR_c6 <= sR_c5;
               exnR0_c6 <= exnR0_c5;
               D_c6 <= D_c5;
               betaw24_c6 <= betaw24_c5;
               q24_c6 <= q24_c5;
               absq24D_c6 <= absq24D_c5;
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
            end if;
            if ce_7 = '1' then
               expR0_c7 <= expR0_c6;
               sR_c7 <= sR_c6;
               exnR0_c7 <= exnR0_c6;
               D_c7 <= D_c6;
               betaw23_c7 <= betaw23_c6;
               q23_c7 <= q23_c6;
               absq23D_c7 <= absq23D_c6;
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
            end if;
            if ce_8 = '1' then
               expR0_c8 <= expR0_c7;
               sR_c8 <= sR_c7;
               exnR0_c8 <= exnR0_c7;
               D_c8 <= D_c7;
               betaw22_c8 <= betaw22_c7;
               q22_c8 <= q22_c7;
               absq22D_c8 <= absq22D_c7;
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
            end if;
            if ce_9 = '1' then
               expR0_c9 <= expR0_c8;
               sR_c9 <= sR_c8;
               exnR0_c9 <= exnR0_c8;
               D_c9 <= D_c8;
               betaw21_c9 <= betaw21_c8;
               q21_copy12_c9 <= q21_copy12_c8;
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
            end if;
            if ce_10 = '1' then
               expR0_c10 <= expR0_c9;
               sR_c10 <= sR_c9;
               exnR0_c10 <= exnR0_c9;
               D_c10 <= D_c9;
               betaw20_c10 <= betaw20_c9;
               q20_copy13_c10 <= q20_copy13_c9;
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
            end if;
            if ce_11 = '1' then
               expR0_c11 <= expR0_c10;
               sR_c11 <= sR_c10;
               exnR0_c11 <= exnR0_c10;
               D_c11 <= D_c10;
               betaw20_c11 <= betaw20_c10;
               q20_c11 <= q20_c10;
               absq20D_c11 <= absq20D_c10;
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
            end if;
            if ce_12 = '1' then
               expR0_c12 <= expR0_c11;
               sR_c12 <= sR_c11;
               exnR0_c12 <= exnR0_c11;
               D_c12 <= D_c11;
               betaw19_c12 <= betaw19_c11;
               q19_c12 <= q19_c11;
               absq19D_c12 <= absq19D_c11;
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
            end if;
            if ce_13 = '1' then
               expR0_c13 <= expR0_c12;
               sR_c13 <= sR_c12;
               exnR0_c13 <= exnR0_c12;
               D_c13 <= D_c12;
               betaw18_c13 <= betaw18_c12;
               q18_c13 <= q18_c12;
               absq18D_c13 <= absq18D_c12;
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
            end if;
            if ce_14 = '1' then
               expR0_c14 <= expR0_c13;
               sR_c14 <= sR_c13;
               exnR0_c14 <= exnR0_c13;
               D_c14 <= D_c13;
               betaw17_c14 <= betaw17_c13;
               q17_copy16_c14 <= q17_copy16_c13;
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
            end if;
            if ce_15 = '1' then
               expR0_c15 <= expR0_c14;
               sR_c15 <= sR_c14;
               exnR0_c15 <= exnR0_c14;
               D_c15 <= D_c14;
               betaw16_c15 <= betaw16_c14;
               q16_copy17_c15 <= q16_copy17_c14;
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
            end if;
            if ce_16 = '1' then
               expR0_c16 <= expR0_c15;
               sR_c16 <= sR_c15;
               exnR0_c16 <= exnR0_c15;
               D_c16 <= D_c15;
               betaw16_c16 <= betaw16_c15;
               q16_c16 <= q16_c15;
               absq16D_c16 <= absq16D_c15;
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
            end if;
            if ce_17 = '1' then
               expR0_c17 <= expR0_c16;
               sR_c17 <= sR_c16;
               exnR0_c17 <= exnR0_c16;
               D_c17 <= D_c16;
               betaw15_c17 <= betaw15_c16;
               q15_c17 <= q15_c16;
               absq15D_c17 <= absq15D_c16;
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
            end if;
            if ce_18 = '1' then
               expR0_c18 <= expR0_c17;
               sR_c18 <= sR_c17;
               exnR0_c18 <= exnR0_c17;
               D_c18 <= D_c17;
               betaw14_c18 <= betaw14_c17;
               q14_c18 <= q14_c17;
               absq14D_c18 <= absq14D_c17;
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
            end if;
            if ce_19 = '1' then
               expR0_c19 <= expR0_c18;
               sR_c19 <= sR_c18;
               exnR0_c19 <= exnR0_c18;
               D_c19 <= D_c18;
               betaw13_c19 <= betaw13_c18;
               q13_c19 <= q13_c18;
               absq13D_c19 <= absq13D_c18;
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
            end if;
            if ce_20 = '1' then
               expR0_c20 <= expR0_c19;
               sR_c20 <= sR_c19;
               exnR0_c20 <= exnR0_c19;
               D_c20 <= D_c19;
               betaw12_c20 <= betaw12_c19;
               q12_copy21_c20 <= q12_copy21_c19;
               qP28_c20 <= qP28_c19;
               qM28_c20 <= qM28_c19;
               qP27_c20 <= qP27_c19;
               qM27_c20 <= qM27_c19;
               qP26_c20 <= qP26_c19;
               qM26_c20 <= qM26_c19;
               qP25_c20 <= qP25_c19;
               qM25_c20 <= qM25_c19;
               qP24_c20 <= qP24_c19;
               qM24_c20 <= qM24_c19;
               qP23_c20 <= qP23_c19;
               qM23_c20 <= qM23_c19;
               qP22_c20 <= qP22_c19;
               qM22_c20 <= qM22_c19;
               qP21_c20 <= qP21_c19;
               qM21_c20 <= qM21_c19;
               qP20_c20 <= qP20_c19;
               qM20_c20 <= qM20_c19;
               qP19_c20 <= qP19_c19;
               qM19_c20 <= qM19_c19;
               qP18_c20 <= qP18_c19;
               qM18_c20 <= qM18_c19;
               qP17_c20 <= qP17_c19;
               qM17_c20 <= qM17_c19;
               qP16_c20 <= qP16_c19;
               qM16_c20 <= qM16_c19;
               qP15_c20 <= qP15_c19;
               qM15_c20 <= qM15_c19;
               qP14_c20 <= qP14_c19;
               qM14_c20 <= qM14_c19;
               qP13_c20 <= qP13_c19;
               qM13_c20 <= qM13_c19;
            end if;
            if ce_21 = '1' then
               expR0_c21 <= expR0_c20;
               sR_c21 <= sR_c20;
               exnR0_c21 <= exnR0_c20;
               D_c21 <= D_c20;
               betaw12_c21 <= betaw12_c20;
               q12_c21 <= q12_c20;
               absq12D_c21 <= absq12D_c20;
               qP28_c21 <= qP28_c20;
               qM28_c21 <= qM28_c20;
               qP27_c21 <= qP27_c20;
               qM27_c21 <= qM27_c20;
               qP26_c21 <= qP26_c20;
               qM26_c21 <= qM26_c20;
               qP25_c21 <= qP25_c20;
               qM25_c21 <= qM25_c20;
               qP24_c21 <= qP24_c20;
               qM24_c21 <= qM24_c20;
               qP23_c21 <= qP23_c20;
               qM23_c21 <= qM23_c20;
               qP22_c21 <= qP22_c20;
               qM22_c21 <= qM22_c20;
               qP21_c21 <= qP21_c20;
               qM21_c21 <= qM21_c20;
               qP20_c21 <= qP20_c20;
               qM20_c21 <= qM20_c20;
               qP19_c21 <= qP19_c20;
               qM19_c21 <= qM19_c20;
               qP18_c21 <= qP18_c20;
               qM18_c21 <= qM18_c20;
               qP17_c21 <= qP17_c20;
               qM17_c21 <= qM17_c20;
               qP16_c21 <= qP16_c20;
               qM16_c21 <= qM16_c20;
               qP15_c21 <= qP15_c20;
               qM15_c21 <= qM15_c20;
               qP14_c21 <= qP14_c20;
               qM14_c21 <= qM14_c20;
               qP13_c21 <= qP13_c20;
               qM13_c21 <= qM13_c20;
               qP12_c21 <= qP12_c20;
               qM12_c21 <= qM12_c20;
            end if;
            if ce_22 = '1' then
               expR0_c22 <= expR0_c21;
               sR_c22 <= sR_c21;
               exnR0_c22 <= exnR0_c21;
               D_c22 <= D_c21;
               betaw11_c22 <= betaw11_c21;
               q11_c22 <= q11_c21;
               absq11D_c22 <= absq11D_c21;
               qP28_c22 <= qP28_c21;
               qM28_c22 <= qM28_c21;
               qP27_c22 <= qP27_c21;
               qM27_c22 <= qM27_c21;
               qP26_c22 <= qP26_c21;
               qM26_c22 <= qM26_c21;
               qP25_c22 <= qP25_c21;
               qM25_c22 <= qM25_c21;
               qP24_c22 <= qP24_c21;
               qM24_c22 <= qM24_c21;
               qP23_c22 <= qP23_c21;
               qM23_c22 <= qM23_c21;
               qP22_c22 <= qP22_c21;
               qM22_c22 <= qM22_c21;
               qP21_c22 <= qP21_c21;
               qM21_c22 <= qM21_c21;
               qP20_c22 <= qP20_c21;
               qM20_c22 <= qM20_c21;
               qP19_c22 <= qP19_c21;
               qM19_c22 <= qM19_c21;
               qP18_c22 <= qP18_c21;
               qM18_c22 <= qM18_c21;
               qP17_c22 <= qP17_c21;
               qM17_c22 <= qM17_c21;
               qP16_c22 <= qP16_c21;
               qM16_c22 <= qM16_c21;
               qP15_c22 <= qP15_c21;
               qM15_c22 <= qM15_c21;
               qP14_c22 <= qP14_c21;
               qM14_c22 <= qM14_c21;
               qP13_c22 <= qP13_c21;
               qM13_c22 <= qM13_c21;
               qP12_c22 <= qP12_c21;
               qM12_c22 <= qM12_c21;
               qP11_c22 <= qP11_c21;
               qM11_c22 <= qM11_c21;
            end if;
            if ce_23 = '1' then
               expR0_c23 <= expR0_c22;
               sR_c23 <= sR_c22;
               exnR0_c23 <= exnR0_c22;
               D_c23 <= D_c22;
               betaw10_c23 <= betaw10_c22;
               q10_c23 <= q10_c22;
               absq10D_c23 <= absq10D_c22;
               qP28_c23 <= qP28_c22;
               qM28_c23 <= qM28_c22;
               qP27_c23 <= qP27_c22;
               qM27_c23 <= qM27_c22;
               qP26_c23 <= qP26_c22;
               qM26_c23 <= qM26_c22;
               qP25_c23 <= qP25_c22;
               qM25_c23 <= qM25_c22;
               qP24_c23 <= qP24_c22;
               qM24_c23 <= qM24_c22;
               qP23_c23 <= qP23_c22;
               qM23_c23 <= qM23_c22;
               qP22_c23 <= qP22_c22;
               qM22_c23 <= qM22_c22;
               qP21_c23 <= qP21_c22;
               qM21_c23 <= qM21_c22;
               qP20_c23 <= qP20_c22;
               qM20_c23 <= qM20_c22;
               qP19_c23 <= qP19_c22;
               qM19_c23 <= qM19_c22;
               qP18_c23 <= qP18_c22;
               qM18_c23 <= qM18_c22;
               qP17_c23 <= qP17_c22;
               qM17_c23 <= qM17_c22;
               qP16_c23 <= qP16_c22;
               qM16_c23 <= qM16_c22;
               qP15_c23 <= qP15_c22;
               qM15_c23 <= qM15_c22;
               qP14_c23 <= qP14_c22;
               qM14_c23 <= qM14_c22;
               qP13_c23 <= qP13_c22;
               qM13_c23 <= qM13_c22;
               qP12_c23 <= qP12_c22;
               qM12_c23 <= qM12_c22;
               qP11_c23 <= qP11_c22;
               qM11_c23 <= qM11_c22;
               qP10_c23 <= qP10_c22;
               qM10_c23 <= qM10_c22;
            end if;
            if ce_24 = '1' then
               expR0_c24 <= expR0_c23;
               sR_c24 <= sR_c23;
               exnR0_c24 <= exnR0_c23;
               D_c24 <= D_c23;
               betaw9_c24 <= betaw9_c23;
               q9_c24 <= q9_c23;
               absq9D_c24 <= absq9D_c23;
               qP28_c24 <= qP28_c23;
               qM28_c24 <= qM28_c23;
               qP27_c24 <= qP27_c23;
               qM27_c24 <= qM27_c23;
               qP26_c24 <= qP26_c23;
               qM26_c24 <= qM26_c23;
               qP25_c24 <= qP25_c23;
               qM25_c24 <= qM25_c23;
               qP24_c24 <= qP24_c23;
               qM24_c24 <= qM24_c23;
               qP23_c24 <= qP23_c23;
               qM23_c24 <= qM23_c23;
               qP22_c24 <= qP22_c23;
               qM22_c24 <= qM22_c23;
               qP21_c24 <= qP21_c23;
               qM21_c24 <= qM21_c23;
               qP20_c24 <= qP20_c23;
               qM20_c24 <= qM20_c23;
               qP19_c24 <= qP19_c23;
               qM19_c24 <= qM19_c23;
               qP18_c24 <= qP18_c23;
               qM18_c24 <= qM18_c23;
               qP17_c24 <= qP17_c23;
               qM17_c24 <= qM17_c23;
               qP16_c24 <= qP16_c23;
               qM16_c24 <= qM16_c23;
               qP15_c24 <= qP15_c23;
               qM15_c24 <= qM15_c23;
               qP14_c24 <= qP14_c23;
               qM14_c24 <= qM14_c23;
               qP13_c24 <= qP13_c23;
               qM13_c24 <= qM13_c23;
               qP12_c24 <= qP12_c23;
               qM12_c24 <= qM12_c23;
               qP11_c24 <= qP11_c23;
               qM11_c24 <= qM11_c23;
               qP10_c24 <= qP10_c23;
               qM10_c24 <= qM10_c23;
               qP9_c24 <= qP9_c23;
               qM9_c24 <= qM9_c23;
            end if;
            if ce_25 = '1' then
               expR0_c25 <= expR0_c24;
               sR_c25 <= sR_c24;
               exnR0_c25 <= exnR0_c24;
               D_c25 <= D_c24;
               betaw8_c25 <= betaw8_c24;
               q8_copy25_c25 <= q8_copy25_c24;
               qP28_c25 <= qP28_c24;
               qM28_c25 <= qM28_c24;
               qP27_c25 <= qP27_c24;
               qM27_c25 <= qM27_c24;
               qP26_c25 <= qP26_c24;
               qM26_c25 <= qM26_c24;
               qP25_c25 <= qP25_c24;
               qM25_c25 <= qM25_c24;
               qP24_c25 <= qP24_c24;
               qM24_c25 <= qM24_c24;
               qP23_c25 <= qP23_c24;
               qM23_c25 <= qM23_c24;
               qP22_c25 <= qP22_c24;
               qM22_c25 <= qM22_c24;
               qP21_c25 <= qP21_c24;
               qM21_c25 <= qM21_c24;
               qP20_c25 <= qP20_c24;
               qM20_c25 <= qM20_c24;
               qP19_c25 <= qP19_c24;
               qM19_c25 <= qM19_c24;
               qP18_c25 <= qP18_c24;
               qM18_c25 <= qM18_c24;
               qP17_c25 <= qP17_c24;
               qM17_c25 <= qM17_c24;
               qP16_c25 <= qP16_c24;
               qM16_c25 <= qM16_c24;
               qP15_c25 <= qP15_c24;
               qM15_c25 <= qM15_c24;
               qP14_c25 <= qP14_c24;
               qM14_c25 <= qM14_c24;
               qP13_c25 <= qP13_c24;
               qM13_c25 <= qM13_c24;
               qP12_c25 <= qP12_c24;
               qM12_c25 <= qM12_c24;
               qP11_c25 <= qP11_c24;
               qM11_c25 <= qM11_c24;
               qP10_c25 <= qP10_c24;
               qM10_c25 <= qM10_c24;
               qP9_c25 <= qP9_c24;
               qM9_c25 <= qM9_c24;
            end if;
            if ce_26 = '1' then
               expR0_c26 <= expR0_c25;
               sR_c26 <= sR_c25;
               exnR0_c26 <= exnR0_c25;
               D_c26 <= D_c25;
               betaw8_c26 <= betaw8_c25;
               q8_c26 <= q8_c25;
               absq8D_c26 <= absq8D_c25;
               qP28_c26 <= qP28_c25;
               qM28_c26 <= qM28_c25;
               qP27_c26 <= qP27_c25;
               qM27_c26 <= qM27_c25;
               qP26_c26 <= qP26_c25;
               qM26_c26 <= qM26_c25;
               qP25_c26 <= qP25_c25;
               qM25_c26 <= qM25_c25;
               qP24_c26 <= qP24_c25;
               qM24_c26 <= qM24_c25;
               qP23_c26 <= qP23_c25;
               qM23_c26 <= qM23_c25;
               qP22_c26 <= qP22_c25;
               qM22_c26 <= qM22_c25;
               qP21_c26 <= qP21_c25;
               qM21_c26 <= qM21_c25;
               qP20_c26 <= qP20_c25;
               qM20_c26 <= qM20_c25;
               qP19_c26 <= qP19_c25;
               qM19_c26 <= qM19_c25;
               qP18_c26 <= qP18_c25;
               qM18_c26 <= qM18_c25;
               qP17_c26 <= qP17_c25;
               qM17_c26 <= qM17_c25;
               qP16_c26 <= qP16_c25;
               qM16_c26 <= qM16_c25;
               qP15_c26 <= qP15_c25;
               qM15_c26 <= qM15_c25;
               qP14_c26 <= qP14_c25;
               qM14_c26 <= qM14_c25;
               qP13_c26 <= qP13_c25;
               qM13_c26 <= qM13_c25;
               qP12_c26 <= qP12_c25;
               qM12_c26 <= qM12_c25;
               qP11_c26 <= qP11_c25;
               qM11_c26 <= qM11_c25;
               qP10_c26 <= qP10_c25;
               qM10_c26 <= qM10_c25;
               qP9_c26 <= qP9_c25;
               qM9_c26 <= qM9_c25;
               qP8_c26 <= qP8_c25;
               qM8_c26 <= qM8_c25;
            end if;
            if ce_27 = '1' then
               expR0_c27 <= expR0_c26;
               sR_c27 <= sR_c26;
               exnR0_c27 <= exnR0_c26;
               D_c27 <= D_c26;
               betaw7_c27 <= betaw7_c26;
               q7_c27 <= q7_c26;
               absq7D_c27 <= absq7D_c26;
               qP28_c27 <= qP28_c26;
               qM28_c27 <= qM28_c26;
               qP27_c27 <= qP27_c26;
               qM27_c27 <= qM27_c26;
               qP26_c27 <= qP26_c26;
               qM26_c27 <= qM26_c26;
               qP25_c27 <= qP25_c26;
               qM25_c27 <= qM25_c26;
               qP24_c27 <= qP24_c26;
               qM24_c27 <= qM24_c26;
               qP23_c27 <= qP23_c26;
               qM23_c27 <= qM23_c26;
               qP22_c27 <= qP22_c26;
               qM22_c27 <= qM22_c26;
               qP21_c27 <= qP21_c26;
               qM21_c27 <= qM21_c26;
               qP20_c27 <= qP20_c26;
               qM20_c27 <= qM20_c26;
               qP19_c27 <= qP19_c26;
               qM19_c27 <= qM19_c26;
               qP18_c27 <= qP18_c26;
               qM18_c27 <= qM18_c26;
               qP17_c27 <= qP17_c26;
               qM17_c27 <= qM17_c26;
               qP16_c27 <= qP16_c26;
               qM16_c27 <= qM16_c26;
               qP15_c27 <= qP15_c26;
               qM15_c27 <= qM15_c26;
               qP14_c27 <= qP14_c26;
               qM14_c27 <= qM14_c26;
               qP13_c27 <= qP13_c26;
               qM13_c27 <= qM13_c26;
               qP12_c27 <= qP12_c26;
               qM12_c27 <= qM12_c26;
               qP11_c27 <= qP11_c26;
               qM11_c27 <= qM11_c26;
               qP10_c27 <= qP10_c26;
               qM10_c27 <= qM10_c26;
               qP9_c27 <= qP9_c26;
               qM9_c27 <= qM9_c26;
               qP8_c27 <= qP8_c26;
               qM8_c27 <= qM8_c26;
               qP7_c27 <= qP7_c26;
               qM7_c27 <= qM7_c26;
            end if;
            if ce_28 = '1' then
               expR0_c28 <= expR0_c27;
               sR_c28 <= sR_c27;
               exnR0_c28 <= exnR0_c27;
               D_c28 <= D_c27;
               betaw6_c28 <= betaw6_c27;
               q6_c28 <= q6_c27;
               absq6D_c28 <= absq6D_c27;
               qP28_c28 <= qP28_c27;
               qM28_c28 <= qM28_c27;
               qP27_c28 <= qP27_c27;
               qM27_c28 <= qM27_c27;
               qP26_c28 <= qP26_c27;
               qM26_c28 <= qM26_c27;
               qP25_c28 <= qP25_c27;
               qM25_c28 <= qM25_c27;
               qP24_c28 <= qP24_c27;
               qM24_c28 <= qM24_c27;
               qP23_c28 <= qP23_c27;
               qM23_c28 <= qM23_c27;
               qP22_c28 <= qP22_c27;
               qM22_c28 <= qM22_c27;
               qP21_c28 <= qP21_c27;
               qM21_c28 <= qM21_c27;
               qP20_c28 <= qP20_c27;
               qM20_c28 <= qM20_c27;
               qP19_c28 <= qP19_c27;
               qM19_c28 <= qM19_c27;
               qP18_c28 <= qP18_c27;
               qM18_c28 <= qM18_c27;
               qP17_c28 <= qP17_c27;
               qM17_c28 <= qM17_c27;
               qP16_c28 <= qP16_c27;
               qM16_c28 <= qM16_c27;
               qP15_c28 <= qP15_c27;
               qM15_c28 <= qM15_c27;
               qP14_c28 <= qP14_c27;
               qM14_c28 <= qM14_c27;
               qP13_c28 <= qP13_c27;
               qM13_c28 <= qM13_c27;
               qP12_c28 <= qP12_c27;
               qM12_c28 <= qM12_c27;
               qP11_c28 <= qP11_c27;
               qM11_c28 <= qM11_c27;
               qP10_c28 <= qP10_c27;
               qM10_c28 <= qM10_c27;
               qP9_c28 <= qP9_c27;
               qM9_c28 <= qM9_c27;
               qP8_c28 <= qP8_c27;
               qM8_c28 <= qM8_c27;
               qP7_c28 <= qP7_c27;
               qM7_c28 <= qM7_c27;
               qP6_c28 <= qP6_c27;
               qM6_c28 <= qM6_c27;
            end if;
            if ce_29 = '1' then
               expR0_c29 <= expR0_c28;
               sR_c29 <= sR_c28;
               exnR0_c29 <= exnR0_c28;
               D_c29 <= D_c28;
               betaw5_c29 <= betaw5_c28;
               q5_c29 <= q5_c28;
               absq5D_c29 <= absq5D_c28;
               qP28_c29 <= qP28_c28;
               qM28_c29 <= qM28_c28;
               qP27_c29 <= qP27_c28;
               qM27_c29 <= qM27_c28;
               qP26_c29 <= qP26_c28;
               qM26_c29 <= qM26_c28;
               qP25_c29 <= qP25_c28;
               qM25_c29 <= qM25_c28;
               qP24_c29 <= qP24_c28;
               qM24_c29 <= qM24_c28;
               qP23_c29 <= qP23_c28;
               qM23_c29 <= qM23_c28;
               qP22_c29 <= qP22_c28;
               qM22_c29 <= qM22_c28;
               qP21_c29 <= qP21_c28;
               qM21_c29 <= qM21_c28;
               qP20_c29 <= qP20_c28;
               qM20_c29 <= qM20_c28;
               qP19_c29 <= qP19_c28;
               qM19_c29 <= qM19_c28;
               qP18_c29 <= qP18_c28;
               qM18_c29 <= qM18_c28;
               qP17_c29 <= qP17_c28;
               qM17_c29 <= qM17_c28;
               qP16_c29 <= qP16_c28;
               qM16_c29 <= qM16_c28;
               qP15_c29 <= qP15_c28;
               qM15_c29 <= qM15_c28;
               qP14_c29 <= qP14_c28;
               qM14_c29 <= qM14_c28;
               qP13_c29 <= qP13_c28;
               qM13_c29 <= qM13_c28;
               qP12_c29 <= qP12_c28;
               qM12_c29 <= qM12_c28;
               qP11_c29 <= qP11_c28;
               qM11_c29 <= qM11_c28;
               qP10_c29 <= qP10_c28;
               qM10_c29 <= qM10_c28;
               qP9_c29 <= qP9_c28;
               qM9_c29 <= qM9_c28;
               qP8_c29 <= qP8_c28;
               qM8_c29 <= qM8_c28;
               qP7_c29 <= qP7_c28;
               qM7_c29 <= qM7_c28;
               qP6_c29 <= qP6_c28;
               qM6_c29 <= qM6_c28;
               qP5_c29 <= qP5_c28;
               qM5_c29 <= qM5_c28;
            end if;
            if ce_30 = '1' then
               expR0_c30 <= expR0_c29;
               sR_c30 <= sR_c29;
               exnR0_c30 <= exnR0_c29;
               D_c30 <= D_c29;
               betaw4_c30 <= betaw4_c29;
               q4_copy29_c30 <= q4_copy29_c29;
               qP28_c30 <= qP28_c29;
               qM28_c30 <= qM28_c29;
               qP27_c30 <= qP27_c29;
               qM27_c30 <= qM27_c29;
               qP26_c30 <= qP26_c29;
               qM26_c30 <= qM26_c29;
               qP25_c30 <= qP25_c29;
               qM25_c30 <= qM25_c29;
               qP24_c30 <= qP24_c29;
               qM24_c30 <= qM24_c29;
               qP23_c30 <= qP23_c29;
               qM23_c30 <= qM23_c29;
               qP22_c30 <= qP22_c29;
               qM22_c30 <= qM22_c29;
               qP21_c30 <= qP21_c29;
               qM21_c30 <= qM21_c29;
               qP20_c30 <= qP20_c29;
               qM20_c30 <= qM20_c29;
               qP19_c30 <= qP19_c29;
               qM19_c30 <= qM19_c29;
               qP18_c30 <= qP18_c29;
               qM18_c30 <= qM18_c29;
               qP17_c30 <= qP17_c29;
               qM17_c30 <= qM17_c29;
               qP16_c30 <= qP16_c29;
               qM16_c30 <= qM16_c29;
               qP15_c30 <= qP15_c29;
               qM15_c30 <= qM15_c29;
               qP14_c30 <= qP14_c29;
               qM14_c30 <= qM14_c29;
               qP13_c30 <= qP13_c29;
               qM13_c30 <= qM13_c29;
               qP12_c30 <= qP12_c29;
               qM12_c30 <= qM12_c29;
               qP11_c30 <= qP11_c29;
               qM11_c30 <= qM11_c29;
               qP10_c30 <= qP10_c29;
               qM10_c30 <= qM10_c29;
               qP9_c30 <= qP9_c29;
               qM9_c30 <= qM9_c29;
               qP8_c30 <= qP8_c29;
               qM8_c30 <= qM8_c29;
               qP7_c30 <= qP7_c29;
               qM7_c30 <= qM7_c29;
               qP6_c30 <= qP6_c29;
               qM6_c30 <= qM6_c29;
               qP5_c30 <= qP5_c29;
               qM5_c30 <= qM5_c29;
            end if;
            if ce_31 = '1' then
               expR0_c31 <= expR0_c30;
               sR_c31 <= sR_c30;
               exnR0_c31 <= exnR0_c30;
               D_c31 <= D_c30;
               betaw4_c31 <= betaw4_c30;
               q4_c31 <= q4_c30;
               absq4D_c31 <= absq4D_c30;
               qP28_c31 <= qP28_c30;
               qM28_c31 <= qM28_c30;
               qP27_c31 <= qP27_c30;
               qM27_c31 <= qM27_c30;
               qP26_c31 <= qP26_c30;
               qM26_c31 <= qM26_c30;
               qP25_c31 <= qP25_c30;
               qM25_c31 <= qM25_c30;
               qP24_c31 <= qP24_c30;
               qM24_c31 <= qM24_c30;
               qP23_c31 <= qP23_c30;
               qM23_c31 <= qM23_c30;
               qP22_c31 <= qP22_c30;
               qM22_c31 <= qM22_c30;
               qP21_c31 <= qP21_c30;
               qM21_c31 <= qM21_c30;
               qP20_c31 <= qP20_c30;
               qM20_c31 <= qM20_c30;
               qP19_c31 <= qP19_c30;
               qM19_c31 <= qM19_c30;
               qP18_c31 <= qP18_c30;
               qM18_c31 <= qM18_c30;
               qP17_c31 <= qP17_c30;
               qM17_c31 <= qM17_c30;
               qP16_c31 <= qP16_c30;
               qM16_c31 <= qM16_c30;
               qP15_c31 <= qP15_c30;
               qM15_c31 <= qM15_c30;
               qP14_c31 <= qP14_c30;
               qM14_c31 <= qM14_c30;
               qP13_c31 <= qP13_c30;
               qM13_c31 <= qM13_c30;
               qP12_c31 <= qP12_c30;
               qM12_c31 <= qM12_c30;
               qP11_c31 <= qP11_c30;
               qM11_c31 <= qM11_c30;
               qP10_c31 <= qP10_c30;
               qM10_c31 <= qM10_c30;
               qP9_c31 <= qP9_c30;
               qM9_c31 <= qM9_c30;
               qP8_c31 <= qP8_c30;
               qM8_c31 <= qM8_c30;
               qP7_c31 <= qP7_c30;
               qM7_c31 <= qM7_c30;
               qP6_c31 <= qP6_c30;
               qM6_c31 <= qM6_c30;
               qP5_c31 <= qP5_c30;
               qM5_c31 <= qM5_c30;
               qP4_c31 <= qP4_c30;
               qM4_c31 <= qM4_c30;
            end if;
            if ce_32 = '1' then
               expR0_c32 <= expR0_c31;
               sR_c32 <= sR_c31;
               exnR0_c32 <= exnR0_c31;
               D_c32 <= D_c31;
               betaw3_c32 <= betaw3_c31;
               q3_c32 <= q3_c31;
               absq3D_c32 <= absq3D_c31;
               qP28_c32 <= qP28_c31;
               qM28_c32 <= qM28_c31;
               qP27_c32 <= qP27_c31;
               qM27_c32 <= qM27_c31;
               qP26_c32 <= qP26_c31;
               qM26_c32 <= qM26_c31;
               qP25_c32 <= qP25_c31;
               qM25_c32 <= qM25_c31;
               qP24_c32 <= qP24_c31;
               qM24_c32 <= qM24_c31;
               qP23_c32 <= qP23_c31;
               qM23_c32 <= qM23_c31;
               qP22_c32 <= qP22_c31;
               qM22_c32 <= qM22_c31;
               qP21_c32 <= qP21_c31;
               qM21_c32 <= qM21_c31;
               qP20_c32 <= qP20_c31;
               qM20_c32 <= qM20_c31;
               qP19_c32 <= qP19_c31;
               qM19_c32 <= qM19_c31;
               qP18_c32 <= qP18_c31;
               qM18_c32 <= qM18_c31;
               qP17_c32 <= qP17_c31;
               qM17_c32 <= qM17_c31;
               qP16_c32 <= qP16_c31;
               qM16_c32 <= qM16_c31;
               qP15_c32 <= qP15_c31;
               qM15_c32 <= qM15_c31;
               qP14_c32 <= qP14_c31;
               qM14_c32 <= qM14_c31;
               qP13_c32 <= qP13_c31;
               qM13_c32 <= qM13_c31;
               qP12_c32 <= qP12_c31;
               qM12_c32 <= qM12_c31;
               qP11_c32 <= qP11_c31;
               qM11_c32 <= qM11_c31;
               qP10_c32 <= qP10_c31;
               qM10_c32 <= qM10_c31;
               qP9_c32 <= qP9_c31;
               qM9_c32 <= qM9_c31;
               qP8_c32 <= qP8_c31;
               qM8_c32 <= qM8_c31;
               qP7_c32 <= qP7_c31;
               qM7_c32 <= qM7_c31;
               qP6_c32 <= qP6_c31;
               qM6_c32 <= qM6_c31;
               qP5_c32 <= qP5_c31;
               qM5_c32 <= qM5_c31;
               qP4_c32 <= qP4_c31;
               qM4_c32 <= qM4_c31;
               qP3_c32 <= qP3_c31;
               qM3_c32 <= qM3_c31;
            end if;
            if ce_33 = '1' then
               expR0_c33 <= expR0_c32;
               sR_c33 <= sR_c32;
               exnR0_c33 <= exnR0_c32;
               D_c33 <= D_c32;
               betaw2_c33 <= betaw2_c32;
               q2_c33 <= q2_c32;
               absq2D_c33 <= absq2D_c32;
               qP28_c33 <= qP28_c32;
               qM28_c33 <= qM28_c32;
               qP27_c33 <= qP27_c32;
               qM27_c33 <= qM27_c32;
               qP26_c33 <= qP26_c32;
               qM26_c33 <= qM26_c32;
               qP25_c33 <= qP25_c32;
               qM25_c33 <= qM25_c32;
               qP24_c33 <= qP24_c32;
               qM24_c33 <= qM24_c32;
               qP23_c33 <= qP23_c32;
               qM23_c33 <= qM23_c32;
               qP22_c33 <= qP22_c32;
               qM22_c33 <= qM22_c32;
               qP21_c33 <= qP21_c32;
               qM21_c33 <= qM21_c32;
               qP20_c33 <= qP20_c32;
               qM20_c33 <= qM20_c32;
               qP19_c33 <= qP19_c32;
               qM19_c33 <= qM19_c32;
               qP18_c33 <= qP18_c32;
               qM18_c33 <= qM18_c32;
               qP17_c33 <= qP17_c32;
               qM17_c33 <= qM17_c32;
               qP16_c33 <= qP16_c32;
               qM16_c33 <= qM16_c32;
               qP15_c33 <= qP15_c32;
               qM15_c33 <= qM15_c32;
               qP14_c33 <= qP14_c32;
               qM14_c33 <= qM14_c32;
               qP13_c33 <= qP13_c32;
               qM13_c33 <= qM13_c32;
               qP12_c33 <= qP12_c32;
               qM12_c33 <= qM12_c32;
               qP11_c33 <= qP11_c32;
               qM11_c33 <= qM11_c32;
               qP10_c33 <= qP10_c32;
               qM10_c33 <= qM10_c32;
               qP9_c33 <= qP9_c32;
               qM9_c33 <= qM9_c32;
               qP8_c33 <= qP8_c32;
               qM8_c33 <= qM8_c32;
               qP7_c33 <= qP7_c32;
               qM7_c33 <= qM7_c32;
               qP6_c33 <= qP6_c32;
               qM6_c33 <= qM6_c32;
               qP5_c33 <= qP5_c32;
               qM5_c33 <= qM5_c32;
               qP4_c33 <= qP4_c32;
               qM4_c33 <= qM4_c32;
               qP3_c33 <= qP3_c32;
               qM3_c33 <= qM3_c32;
               qP2_c33 <= qP2_c32;
               qM2_c33 <= qM2_c32;
            end if;
            if ce_34 = '1' then
               expR0_c34 <= expR0_c33;
               sR_c34 <= sR_c33;
               exnR0_c34 <= exnR0_c33;
               betaw1_c34 <= betaw1_c33;
               q1_c34 <= q1_c33;
               absq1D_c34 <= absq1D_c33;
               qM28_c34 <= qM28_c33;
               qM27_c34 <= qM27_c33;
               qM26_c34 <= qM26_c33;
               qM25_c34 <= qM25_c33;
               qM24_c34 <= qM24_c33;
               qM23_c34 <= qM23_c33;
               qM22_c34 <= qM22_c33;
               qM21_c34 <= qM21_c33;
               qM20_c34 <= qM20_c33;
               qM19_c34 <= qM19_c33;
               qM18_c34 <= qM18_c33;
               qM17_c34 <= qM17_c33;
               qM16_c34 <= qM16_c33;
               qM15_c34 <= qM15_c33;
               qM14_c34 <= qM14_c33;
               qM13_c34 <= qM13_c33;
               qM12_c34 <= qM12_c33;
               qM11_c34 <= qM11_c33;
               qM10_c34 <= qM10_c33;
               qM9_c34 <= qM9_c33;
               qM8_c34 <= qM8_c33;
               qM7_c34 <= qM7_c33;
               qM6_c34 <= qM6_c33;
               qM5_c34 <= qM5_c33;
               qM4_c34 <= qM4_c33;
               qM3_c34 <= qM3_c33;
               qM2_c34 <= qM2_c33;
               qM1_c34 <= qM1_c33;
               qP_c34 <= qP_c33;
            end if;
            if ce_35 = '1' then
               expR0_c35 <= expR0_c34;
               sR_c35 <= sR_c34;
               exnR0_c35 <= exnR0_c34;
               qP_c35 <= qP_c34;
               qM_c35 <= qM_c34;
            end if;
            if ce_36 = '1' then
               expR0_c36 <= expR0_c35;
               sR_c36 <= sR_c35;
               exnR0_c36 <= exnR0_c35;
               mR_c36 <= mR_c35;
               fRnorm_c36 <= fRnorm_c35;
               round_c36 <= round_c35;
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
   SelFunctionTable28: selFunction_Freq500_uid4
      port map ( X => sel28_c0,
                 Y => q28_copy5_c0);
   q28_c0 <= q28_copy5_c0; -- output copy to hold a pipeline register if needed

   with q28_c0  select 
      absq28D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q28_c1(2)  select 
   w27_c1<= betaw28_c1 - absq28D_c1 when '0',
         betaw28_c1 + absq28D_c1 when others;

   betaw27_c1 <= w27_c1(53 downto 0) & "00"; -- multiplication by the radix
   sel27_c1 <= betaw27_c1(55 downto 50) & D_c1(51 downto 49);
   SelFunctionTable27: selFunction_Freq500_uid4
      port map ( X => sel27_c1,
                 Y => q27_copy6_c1);
   q27_c1 <= q27_copy6_c1; -- output copy to hold a pipeline register if needed

   with q27_c1  select 
      absq27D_c1 <= 
         "000" & D_c1						 when "001" | "111", -- mult by 1
         "00" & D_c1 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q27_c2(2)  select 
   w26_c2<= betaw27_c2 - absq27D_c2 when '0',
         betaw27_c2 + absq27D_c2 when others;

   betaw26_c2 <= w26_c2(53 downto 0) & "00"; -- multiplication by the radix
   sel26_c2 <= betaw26_c2(55 downto 50) & D_c2(51 downto 49);
   SelFunctionTable26: selFunction_Freq500_uid4
      port map ( X => sel26_c2,
                 Y => q26_copy7_c2);
   q26_c2 <= q26_copy7_c2; -- output copy to hold a pipeline register if needed

   with q26_c2  select 
      absq26D_c2 <= 
         "000" & D_c2						 when "001" | "111", -- mult by 1
         "00" & D_c2 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q26_c3(2)  select 
   w25_c3<= betaw26_c3 - absq26D_c3 when '0',
         betaw26_c3 + absq26D_c3 when others;

   betaw25_c3 <= w25_c3(53 downto 0) & "00"; -- multiplication by the radix
   sel25_c3 <= betaw25_c3(55 downto 50) & D_c3(51 downto 49);
   SelFunctionTable25: selFunction_Freq500_uid4
      port map ( X => sel25_c3,
                 Y => q25_copy8_c3);
   q25_c4 <= q25_copy8_c4; -- output copy to hold a pipeline register if needed

   with q25_c4  select 
      absq25D_c4 <= 
         "000" & D_c4						 when "001" | "111", -- mult by 1
         "00" & D_c4 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q25_c4(2)  select 
   w24_c4<= betaw25_c4 - absq25D_c4 when '0',
         betaw25_c4 + absq25D_c4 when others;

   betaw24_c4 <= w24_c4(53 downto 0) & "00"; -- multiplication by the radix
   sel24_c4 <= betaw24_c4(55 downto 50) & D_c4(51 downto 49);
   SelFunctionTable24: selFunction_Freq500_uid4
      port map ( X => sel24_c4,
                 Y => q24_copy9_c4);
   q24_c5 <= q24_copy9_c5; -- output copy to hold a pipeline register if needed

   with q24_c5  select 
      absq24D_c5 <= 
         "000" & D_c5						 when "001" | "111", -- mult by 1
         "00" & D_c5 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q24_c6(2)  select 
   w23_c6<= betaw24_c6 - absq24D_c6 when '0',
         betaw24_c6 + absq24D_c6 when others;

   betaw23_c6 <= w23_c6(53 downto 0) & "00"; -- multiplication by the radix
   sel23_c6 <= betaw23_c6(55 downto 50) & D_c6(51 downto 49);
   SelFunctionTable23: selFunction_Freq500_uid4
      port map ( X => sel23_c6,
                 Y => q23_copy10_c6);
   q23_c6 <= q23_copy10_c6; -- output copy to hold a pipeline register if needed

   with q23_c6  select 
      absq23D_c6 <= 
         "000" & D_c6						 when "001" | "111", -- mult by 1
         "00" & D_c6 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q23_c7(2)  select 
   w22_c7<= betaw23_c7 - absq23D_c7 when '0',
         betaw23_c7 + absq23D_c7 when others;

   betaw22_c7 <= w22_c7(53 downto 0) & "00"; -- multiplication by the radix
   sel22_c7 <= betaw22_c7(55 downto 50) & D_c7(51 downto 49);
   SelFunctionTable22: selFunction_Freq500_uid4
      port map ( X => sel22_c7,
                 Y => q22_copy11_c7);
   q22_c7 <= q22_copy11_c7; -- output copy to hold a pipeline register if needed

   with q22_c7  select 
      absq22D_c7 <= 
         "000" & D_c7						 when "001" | "111", -- mult by 1
         "00" & D_c7 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q22_c8(2)  select 
   w21_c8<= betaw22_c8 - absq22D_c8 when '0',
         betaw22_c8 + absq22D_c8 when others;

   betaw21_c8 <= w21_c8(53 downto 0) & "00"; -- multiplication by the radix
   sel21_c8 <= betaw21_c8(55 downto 50) & D_c8(51 downto 49);
   SelFunctionTable21: selFunction_Freq500_uid4
      port map ( X => sel21_c8,
                 Y => q21_copy12_c8);
   q21_c9 <= q21_copy12_c9; -- output copy to hold a pipeline register if needed

   with q21_c9  select 
      absq21D_c9 <= 
         "000" & D_c9						 when "001" | "111", -- mult by 1
         "00" & D_c9 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q21_c9(2)  select 
   w20_c9<= betaw21_c9 - absq21D_c9 when '0',
         betaw21_c9 + absq21D_c9 when others;

   betaw20_c9 <= w20_c9(53 downto 0) & "00"; -- multiplication by the radix
   sel20_c9 <= betaw20_c9(55 downto 50) & D_c9(51 downto 49);
   SelFunctionTable20: selFunction_Freq500_uid4
      port map ( X => sel20_c9,
                 Y => q20_copy13_c9);
   q20_c10 <= q20_copy13_c10; -- output copy to hold a pipeline register if needed

   with q20_c10  select 
      absq20D_c10 <= 
         "000" & D_c10						 when "001" | "111", -- mult by 1
         "00" & D_c10 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q20_c11(2)  select 
   w19_c11<= betaw20_c11 - absq20D_c11 when '0',
         betaw20_c11 + absq20D_c11 when others;

   betaw19_c11 <= w19_c11(53 downto 0) & "00"; -- multiplication by the radix
   sel19_c11 <= betaw19_c11(55 downto 50) & D_c11(51 downto 49);
   SelFunctionTable19: selFunction_Freq500_uid4
      port map ( X => sel19_c11,
                 Y => q19_copy14_c11);
   q19_c11 <= q19_copy14_c11; -- output copy to hold a pipeline register if needed

   with q19_c11  select 
      absq19D_c11 <= 
         "000" & D_c11						 when "001" | "111", -- mult by 1
         "00" & D_c11 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q19_c12(2)  select 
   w18_c12<= betaw19_c12 - absq19D_c12 when '0',
         betaw19_c12 + absq19D_c12 when others;

   betaw18_c12 <= w18_c12(53 downto 0) & "00"; -- multiplication by the radix
   sel18_c12 <= betaw18_c12(55 downto 50) & D_c12(51 downto 49);
   SelFunctionTable18: selFunction_Freq500_uid4
      port map ( X => sel18_c12,
                 Y => q18_copy15_c12);
   q18_c12 <= q18_copy15_c12; -- output copy to hold a pipeline register if needed

   with q18_c12  select 
      absq18D_c12 <= 
         "000" & D_c12						 when "001" | "111", -- mult by 1
         "00" & D_c12 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q18_c13(2)  select 
   w17_c13<= betaw18_c13 - absq18D_c13 when '0',
         betaw18_c13 + absq18D_c13 when others;

   betaw17_c13 <= w17_c13(53 downto 0) & "00"; -- multiplication by the radix
   sel17_c13 <= betaw17_c13(55 downto 50) & D_c13(51 downto 49);
   SelFunctionTable17: selFunction_Freq500_uid4
      port map ( X => sel17_c13,
                 Y => q17_copy16_c13);
   q17_c14 <= q17_copy16_c14; -- output copy to hold a pipeline register if needed

   with q17_c14  select 
      absq17D_c14 <= 
         "000" & D_c14						 when "001" | "111", -- mult by 1
         "00" & D_c14 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q17_c14(2)  select 
   w16_c14<= betaw17_c14 - absq17D_c14 when '0',
         betaw17_c14 + absq17D_c14 when others;

   betaw16_c14 <= w16_c14(53 downto 0) & "00"; -- multiplication by the radix
   sel16_c14 <= betaw16_c14(55 downto 50) & D_c14(51 downto 49);
   SelFunctionTable16: selFunction_Freq500_uid4
      port map ( X => sel16_c14,
                 Y => q16_copy17_c14);
   q16_c15 <= q16_copy17_c15; -- output copy to hold a pipeline register if needed

   with q16_c15  select 
      absq16D_c15 <= 
         "000" & D_c15						 when "001" | "111", -- mult by 1
         "00" & D_c15 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q16_c16(2)  select 
   w15_c16<= betaw16_c16 - absq16D_c16 when '0',
         betaw16_c16 + absq16D_c16 when others;

   betaw15_c16 <= w15_c16(53 downto 0) & "00"; -- multiplication by the radix
   sel15_c16 <= betaw15_c16(55 downto 50) & D_c16(51 downto 49);
   SelFunctionTable15: selFunction_Freq500_uid4
      port map ( X => sel15_c16,
                 Y => q15_copy18_c16);
   q15_c16 <= q15_copy18_c16; -- output copy to hold a pipeline register if needed

   with q15_c16  select 
      absq15D_c16 <= 
         "000" & D_c16						 when "001" | "111", -- mult by 1
         "00" & D_c16 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q15_c17(2)  select 
   w14_c17<= betaw15_c17 - absq15D_c17 when '0',
         betaw15_c17 + absq15D_c17 when others;

   betaw14_c17 <= w14_c17(53 downto 0) & "00"; -- multiplication by the radix
   sel14_c17 <= betaw14_c17(55 downto 50) & D_c17(51 downto 49);
   SelFunctionTable14: selFunction_Freq500_uid4
      port map ( X => sel14_c17,
                 Y => q14_copy19_c17);
   q14_c17 <= q14_copy19_c17; -- output copy to hold a pipeline register if needed

   with q14_c17  select 
      absq14D_c17 <= 
         "000" & D_c17						 when "001" | "111", -- mult by 1
         "00" & D_c17 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q14_c18(2)  select 
   w13_c18<= betaw14_c18 - absq14D_c18 when '0',
         betaw14_c18 + absq14D_c18 when others;

   betaw13_c18 <= w13_c18(53 downto 0) & "00"; -- multiplication by the radix
   sel13_c18 <= betaw13_c18(55 downto 50) & D_c18(51 downto 49);
   SelFunctionTable13: selFunction_Freq500_uid4
      port map ( X => sel13_c18,
                 Y => q13_copy20_c18);
   q13_c18 <= q13_copy20_c18; -- output copy to hold a pipeline register if needed

   with q13_c18  select 
      absq13D_c18 <= 
         "000" & D_c18						 when "001" | "111", -- mult by 1
         "00" & D_c18 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q13_c19(2)  select 
   w12_c19<= betaw13_c19 - absq13D_c19 when '0',
         betaw13_c19 + absq13D_c19 when others;

   betaw12_c19 <= w12_c19(53 downto 0) & "00"; -- multiplication by the radix
   sel12_c19 <= betaw12_c19(55 downto 50) & D_c19(51 downto 49);
   SelFunctionTable12: selFunction_Freq500_uid4
      port map ( X => sel12_c19,
                 Y => q12_copy21_c19);
   q12_c20 <= q12_copy21_c20; -- output copy to hold a pipeline register if needed

   with q12_c20  select 
      absq12D_c20 <= 
         "000" & D_c20						 when "001" | "111", -- mult by 1
         "00" & D_c20 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q12_c21(2)  select 
   w11_c21<= betaw12_c21 - absq12D_c21 when '0',
         betaw12_c21 + absq12D_c21 when others;

   betaw11_c21 <= w11_c21(53 downto 0) & "00"; -- multiplication by the radix
   sel11_c21 <= betaw11_c21(55 downto 50) & D_c21(51 downto 49);
   SelFunctionTable11: selFunction_Freq500_uid4
      port map ( X => sel11_c21,
                 Y => q11_copy22_c21);
   q11_c21 <= q11_copy22_c21; -- output copy to hold a pipeline register if needed

   with q11_c21  select 
      absq11D_c21 <= 
         "000" & D_c21						 when "001" | "111", -- mult by 1
         "00" & D_c21 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q11_c22(2)  select 
   w10_c22<= betaw11_c22 - absq11D_c22 when '0',
         betaw11_c22 + absq11D_c22 when others;

   betaw10_c22 <= w10_c22(53 downto 0) & "00"; -- multiplication by the radix
   sel10_c22 <= betaw10_c22(55 downto 50) & D_c22(51 downto 49);
   SelFunctionTable10: selFunction_Freq500_uid4
      port map ( X => sel10_c22,
                 Y => q10_copy23_c22);
   q10_c22 <= q10_copy23_c22; -- output copy to hold a pipeline register if needed

   with q10_c22  select 
      absq10D_c22 <= 
         "000" & D_c22						 when "001" | "111", -- mult by 1
         "00" & D_c22 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q10_c23(2)  select 
   w9_c23<= betaw10_c23 - absq10D_c23 when '0',
         betaw10_c23 + absq10D_c23 when others;

   betaw9_c23 <= w9_c23(53 downto 0) & "00"; -- multiplication by the radix
   sel9_c23 <= betaw9_c23(55 downto 50) & D_c23(51 downto 49);
   SelFunctionTable9: selFunction_Freq500_uid4
      port map ( X => sel9_c23,
                 Y => q9_copy24_c23);
   q9_c23 <= q9_copy24_c23; -- output copy to hold a pipeline register if needed

   with q9_c23  select 
      absq9D_c23 <= 
         "000" & D_c23						 when "001" | "111", -- mult by 1
         "00" & D_c23 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q9_c24(2)  select 
   w8_c24<= betaw9_c24 - absq9D_c24 when '0',
         betaw9_c24 + absq9D_c24 when others;

   betaw8_c24 <= w8_c24(53 downto 0) & "00"; -- multiplication by the radix
   sel8_c24 <= betaw8_c24(55 downto 50) & D_c24(51 downto 49);
   SelFunctionTable8: selFunction_Freq500_uid4
      port map ( X => sel8_c24,
                 Y => q8_copy25_c24);
   q8_c25 <= q8_copy25_c25; -- output copy to hold a pipeline register if needed

   with q8_c25  select 
      absq8D_c25 <= 
         "000" & D_c25						 when "001" | "111", -- mult by 1
         "00" & D_c25 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q8_c26(2)  select 
   w7_c26<= betaw8_c26 - absq8D_c26 when '0',
         betaw8_c26 + absq8D_c26 when others;

   betaw7_c26 <= w7_c26(53 downto 0) & "00"; -- multiplication by the radix
   sel7_c26 <= betaw7_c26(55 downto 50) & D_c26(51 downto 49);
   SelFunctionTable7: selFunction_Freq500_uid4
      port map ( X => sel7_c26,
                 Y => q7_copy26_c26);
   q7_c26 <= q7_copy26_c26; -- output copy to hold a pipeline register if needed

   with q7_c26  select 
      absq7D_c26 <= 
         "000" & D_c26						 when "001" | "111", -- mult by 1
         "00" & D_c26 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q7_c27(2)  select 
   w6_c27<= betaw7_c27 - absq7D_c27 when '0',
         betaw7_c27 + absq7D_c27 when others;

   betaw6_c27 <= w6_c27(53 downto 0) & "00"; -- multiplication by the radix
   sel6_c27 <= betaw6_c27(55 downto 50) & D_c27(51 downto 49);
   SelFunctionTable6: selFunction_Freq500_uid4
      port map ( X => sel6_c27,
                 Y => q6_copy27_c27);
   q6_c27 <= q6_copy27_c27; -- output copy to hold a pipeline register if needed

   with q6_c27  select 
      absq6D_c27 <= 
         "000" & D_c27						 when "001" | "111", -- mult by 1
         "00" & D_c27 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q6_c28(2)  select 
   w5_c28<= betaw6_c28 - absq6D_c28 when '0',
         betaw6_c28 + absq6D_c28 when others;

   betaw5_c28 <= w5_c28(53 downto 0) & "00"; -- multiplication by the radix
   sel5_c28 <= betaw5_c28(55 downto 50) & D_c28(51 downto 49);
   SelFunctionTable5: selFunction_Freq500_uid4
      port map ( X => sel5_c28,
                 Y => q5_copy28_c28);
   q5_c28 <= q5_copy28_c28; -- output copy to hold a pipeline register if needed

   with q5_c28  select 
      absq5D_c28 <= 
         "000" & D_c28						 when "001" | "111", -- mult by 1
         "00" & D_c28 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q5_c29(2)  select 
   w4_c29<= betaw5_c29 - absq5D_c29 when '0',
         betaw5_c29 + absq5D_c29 when others;

   betaw4_c29 <= w4_c29(53 downto 0) & "00"; -- multiplication by the radix
   sel4_c29 <= betaw4_c29(55 downto 50) & D_c29(51 downto 49);
   SelFunctionTable4: selFunction_Freq500_uid4
      port map ( X => sel4_c29,
                 Y => q4_copy29_c29);
   q4_c30 <= q4_copy29_c30; -- output copy to hold a pipeline register if needed

   with q4_c30  select 
      absq4D_c30 <= 
         "000" & D_c30						 when "001" | "111", -- mult by 1
         "00" & D_c30 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q4_c31(2)  select 
   w3_c31<= betaw4_c31 - absq4D_c31 when '0',
         betaw4_c31 + absq4D_c31 when others;

   betaw3_c31 <= w3_c31(53 downto 0) & "00"; -- multiplication by the radix
   sel3_c31 <= betaw3_c31(55 downto 50) & D_c31(51 downto 49);
   SelFunctionTable3: selFunction_Freq500_uid4
      port map ( X => sel3_c31,
                 Y => q3_copy30_c31);
   q3_c31 <= q3_copy30_c31; -- output copy to hold a pipeline register if needed

   with q3_c31  select 
      absq3D_c31 <= 
         "000" & D_c31						 when "001" | "111", -- mult by 1
         "00" & D_c31 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q3_c32(2)  select 
   w2_c32<= betaw3_c32 - absq3D_c32 when '0',
         betaw3_c32 + absq3D_c32 when others;

   betaw2_c32 <= w2_c32(53 downto 0) & "00"; -- multiplication by the radix
   sel2_c32 <= betaw2_c32(55 downto 50) & D_c32(51 downto 49);
   SelFunctionTable2: selFunction_Freq500_uid4
      port map ( X => sel2_c32,
                 Y => q2_copy31_c32);
   q2_c32 <= q2_copy31_c32; -- output copy to hold a pipeline register if needed

   with q2_c32  select 
      absq2D_c32 <= 
         "000" & D_c32						 when "001" | "111", -- mult by 1
         "00" & D_c32 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q2_c33(2)  select 
   w1_c33<= betaw2_c33 - absq2D_c33 when '0',
         betaw2_c33 + absq2D_c33 when others;

   betaw1_c33 <= w1_c33(53 downto 0) & "00"; -- multiplication by the radix
   sel1_c33 <= betaw1_c33(55 downto 50) & D_c33(51 downto 49);
   SelFunctionTable1: selFunction_Freq500_uid4
      port map ( X => sel1_c33,
                 Y => q1_copy32_c33);
   q1_c33 <= q1_copy32_c33; -- output copy to hold a pipeline register if needed

   with q1_c33  select 
      absq1D_c33 <= 
         "000" & D_c33						 when "001" | "111", -- mult by 1
         "00" & D_c33 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q1_c34(2)  select 
   w0_c34<= betaw1_c34 - absq1D_c34 when '0',
         betaw1_c34 + absq1D_c34 when others;

   wfinal_c34 <= w0_c34(53 downto 0);
   qM0_c34 <= wfinal_c34(53); -- rounding bit is the sign of the remainder
   qP28_c0 <=      q28_c0(1 downto 0);
   qM28_c0 <=      q28_c0(2) & "0";
   qP27_c1 <=      q27_c1(1 downto 0);
   qM27_c1 <=      q27_c1(2) & "0";
   qP26_c2 <=      q26_c2(1 downto 0);
   qM26_c2 <=      q26_c2(2) & "0";
   qP25_c4 <=      q25_c4(1 downto 0);
   qM25_c4 <=      q25_c4(2) & "0";
   qP24_c5 <=      q24_c5(1 downto 0);
   qM24_c5 <=      q24_c5(2) & "0";
   qP23_c6 <=      q23_c6(1 downto 0);
   qM23_c6 <=      q23_c6(2) & "0";
   qP22_c7 <=      q22_c7(1 downto 0);
   qM22_c7 <=      q22_c7(2) & "0";
   qP21_c9 <=      q21_c9(1 downto 0);
   qM21_c9 <=      q21_c9(2) & "0";
   qP20_c10 <=      q20_c10(1 downto 0);
   qM20_c10 <=      q20_c10(2) & "0";
   qP19_c11 <=      q19_c11(1 downto 0);
   qM19_c11 <=      q19_c11(2) & "0";
   qP18_c12 <=      q18_c12(1 downto 0);
   qM18_c12 <=      q18_c12(2) & "0";
   qP17_c14 <=      q17_c14(1 downto 0);
   qM17_c14 <=      q17_c14(2) & "0";
   qP16_c15 <=      q16_c15(1 downto 0);
   qM16_c15 <=      q16_c15(2) & "0";
   qP15_c16 <=      q15_c16(1 downto 0);
   qM15_c16 <=      q15_c16(2) & "0";
   qP14_c17 <=      q14_c17(1 downto 0);
   qM14_c17 <=      q14_c17(2) & "0";
   qP13_c18 <=      q13_c18(1 downto 0);
   qM13_c18 <=      q13_c18(2) & "0";
   qP12_c20 <=      q12_c20(1 downto 0);
   qM12_c20 <=      q12_c20(2) & "0";
   qP11_c21 <=      q11_c21(1 downto 0);
   qM11_c21 <=      q11_c21(2) & "0";
   qP10_c22 <=      q10_c22(1 downto 0);
   qM10_c22 <=      q10_c22(2) & "0";
   qP9_c23 <=      q9_c23(1 downto 0);
   qM9_c23 <=      q9_c23(2) & "0";
   qP8_c25 <=      q8_c25(1 downto 0);
   qM8_c25 <=      q8_c25(2) & "0";
   qP7_c26 <=      q7_c26(1 downto 0);
   qM7_c26 <=      q7_c26(2) & "0";
   qP6_c27 <=      q6_c27(1 downto 0);
   qM6_c27 <=      q6_c27(2) & "0";
   qP5_c28 <=      q5_c28(1 downto 0);
   qM5_c28 <=      q5_c28(2) & "0";
   qP4_c30 <=      q4_c30(1 downto 0);
   qM4_c30 <=      q4_c30(2) & "0";
   qP3_c31 <=      q3_c31(1 downto 0);
   qM3_c31 <=      q3_c31(2) & "0";
   qP2_c32 <=      q2_c32(1 downto 0);
   qM2_c32 <=      q2_c32(2) & "0";
   qP1_c33 <=      q1_c33(1 downto 0);
   qM1_c33 <=      q1_c33(2) & "0";
   qP_c33 <= qP28_c33 & qP27_c33 & qP26_c33 & qP25_c33 & qP24_c33 & qP23_c33 & qP22_c33 & qP21_c33 & qP20_c33 & qP19_c33 & qP18_c33 & qP17_c33 & qP16_c33 & qP15_c33 & qP14_c33 & qP13_c33 & qP12_c33 & qP11_c33 & qP10_c33 & qP9_c33 & qP8_c33 & qP7_c33 & qP6_c33 & qP5_c33 & qP4_c33 & qP3_c33 & qP2_c33 & qP1_c33;
   qM_c34 <= qM28_c34(0) & qM27_c34 & qM26_c34 & qM25_c34 & qM24_c34 & qM23_c34 & qM22_c34 & qM21_c34 & qM20_c34 & qM19_c34 & qM18_c34 & qM17_c34 & qM16_c34 & qM15_c34 & qM14_c34 & qM13_c34 & qM12_c34 & qM11_c34 & qM10_c34 & qM9_c34 & qM8_c34 & qM7_c34 & qM6_c34 & qM5_c34 & qM4_c34 & qM3_c34 & qM2_c34 & qM1_c34 & qM0_c34;
   quotient_c35 <= qP_c35 - qM_c35;
   -- We need a mR in (0, -wf-2) format: 1+wF fraction bits, 1 round bit, and 1 guard bit for the normalisation,
   -- quotient is the truncation of the exact quotient to at least 2^(-wF-2) bits
   -- now discarding its possible known MSB zeroes, and dropping the possible extra LSB bit (due to radix 4) 
   mR_c35 <= quotient_c35(54 downto 0); 
   -- normalisation
   fRnorm_c35 <=    mR_c35(53 downto 1)  when mR_c35(54)= '1'
           else mR_c35(52 downto 0);  -- now fRnorm is a (-1, -wF-1) fraction
   round_c35 <= fRnorm_c35(0); 
   expR1_c36 <= expR0_c36 + ("000" & (9 downto 1 => '1') & mR_c36(54)); -- add back bias
   -- final rounding
   expfrac_c36 <= expR1_c36 & fRnorm_c36(52 downto 1) ;
   expfracR_c36 <= expfrac_c36 + ((64 downto 1 => '0') & round_c36);
   exnR_c36 <=      "00"  when expfracR_c36(64) = '1'   -- underflow
           else "10"  when  expfracR_c36(64 downto 63) =  "01" -- overflow
           else "01";      -- 00, normal case
   with exnR0_c36  select 
      exnRfinal_c36 <= 
         exnR_c36   when "01", -- normal
         exnR0_c36  when others;
   R <= exnRfinal_c36 & sR_c36 & expfracR_c36(62 downto 0);
end architecture;



