--------------------------------------------------------------------------------
--                          selFunction_Freq800_uid4
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007-2022)
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
-- Input signals: X
-- Output signals: Y

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity selFunction_Freq800_uid4 is
    port (X : in  std_logic_vector(8 downto 0);
          Y : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of selFunction_Freq800_uid4 is
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
--                         (FPDiv_8_23_Freq800_uid2)
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Maxime Christ, Florent de Dinechin (2015)
--------------------------------------------------------------------------------
-- Pipeline depth: 27 cycles
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
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
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27 : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of FloatingPointDivider is
   component selFunction_Freq800_uid4 is
      port ( X : in  std_logic_vector(8 downto 0);
             Y : out  std_logic_vector(2 downto 0)   );
   end component;

signal fX_c0 :  std_logic_vector(23 downto 0);
signal fY_c0 :  std_logic_vector(23 downto 0);
signal expR0_c0, expR0_c1, expR0_c2, expR0_c3, expR0_c4, expR0_c5, expR0_c6, expR0_c7, expR0_c8, expR0_c9, expR0_c10, expR0_c11, expR0_c12, expR0_c13, expR0_c14, expR0_c15, expR0_c16, expR0_c17, expR0_c18, expR0_c19, expR0_c20, expR0_c21, expR0_c22, expR0_c23, expR0_c24, expR0_c25, expR0_c26, expR0_c27 :  std_logic_vector(9 downto 0);
signal sR_c0, sR_c1, sR_c2, sR_c3, sR_c4, sR_c5, sR_c6, sR_c7, sR_c8, sR_c9, sR_c10, sR_c11, sR_c12, sR_c13, sR_c14, sR_c15, sR_c16, sR_c17, sR_c18, sR_c19, sR_c20, sR_c21, sR_c22, sR_c23, sR_c24, sR_c25, sR_c26, sR_c27 :  std_logic;
signal exnXY_c0 :  std_logic_vector(3 downto 0);
signal exnR0_c0, exnR0_c1, exnR0_c2, exnR0_c3, exnR0_c4, exnR0_c5, exnR0_c6, exnR0_c7, exnR0_c8, exnR0_c9, exnR0_c10, exnR0_c11, exnR0_c12, exnR0_c13, exnR0_c14, exnR0_c15, exnR0_c16, exnR0_c17, exnR0_c18, exnR0_c19, exnR0_c20, exnR0_c21, exnR0_c22, exnR0_c23, exnR0_c24, exnR0_c25, exnR0_c26, exnR0_c27 :  std_logic_vector(1 downto 0);
signal D_c0, D_c1, D_c2, D_c3, D_c4, D_c5, D_c6, D_c7, D_c8, D_c9, D_c10, D_c11, D_c12, D_c13, D_c14, D_c15, D_c16, D_c17, D_c18, D_c19, D_c20, D_c21, D_c22, D_c23 :  std_logic_vector(23 downto 0);
signal psX_c0 :  std_logic_vector(24 downto 0);
signal betaw14_c0, betaw14_c1 :  std_logic_vector(26 downto 0);
signal sel14_c0 :  std_logic_vector(8 downto 0);
signal q14_c0, q14_c1 :  std_logic_vector(2 downto 0);
signal q14_copy5_c0 :  std_logic_vector(2 downto 0);
signal absq14D_c0, absq14D_c1 :  std_logic_vector(26 downto 0);
signal w13_c1 :  std_logic_vector(26 downto 0);
signal betaw13_c1, betaw13_c2, betaw13_c3 :  std_logic_vector(26 downto 0);
signal sel13_c1 :  std_logic_vector(8 downto 0);
signal q13_c2, q13_c3 :  std_logic_vector(2 downto 0);
signal q13_copy6_c1, q13_copy6_c2 :  std_logic_vector(2 downto 0);
signal absq13D_c2, absq13D_c3 :  std_logic_vector(26 downto 0);
signal w12_c3 :  std_logic_vector(26 downto 0);
signal betaw12_c3, betaw12_c4, betaw12_c5 :  std_logic_vector(26 downto 0);
signal sel12_c3 :  std_logic_vector(8 downto 0);
signal q12_c4, q12_c5 :  std_logic_vector(2 downto 0);
signal q12_copy7_c3, q12_copy7_c4 :  std_logic_vector(2 downto 0);
signal absq12D_c4, absq12D_c5 :  std_logic_vector(26 downto 0);
signal w11_c5 :  std_logic_vector(26 downto 0);
signal betaw11_c5, betaw11_c6, betaw11_c7 :  std_logic_vector(26 downto 0);
signal sel11_c5 :  std_logic_vector(8 downto 0);
signal q11_c5, q11_c6, q11_c7 :  std_logic_vector(2 downto 0);
signal q11_copy8_c5 :  std_logic_vector(2 downto 0);
signal absq11D_c5, absq11D_c6, absq11D_c7 :  std_logic_vector(26 downto 0);
signal w10_c7 :  std_logic_vector(26 downto 0);
signal betaw10_c7, betaw10_c8 :  std_logic_vector(26 downto 0);
signal sel10_c7 :  std_logic_vector(8 downto 0);
signal q10_c7, q10_c8 :  std_logic_vector(2 downto 0);
signal q10_copy9_c7 :  std_logic_vector(2 downto 0);
signal absq10D_c7, absq10D_c8 :  std_logic_vector(26 downto 0);
signal w9_c8 :  std_logic_vector(26 downto 0);
signal betaw9_c8, betaw9_c9, betaw9_c10 :  std_logic_vector(26 downto 0);
signal sel9_c8 :  std_logic_vector(8 downto 0);
signal q9_c9, q9_c10 :  std_logic_vector(2 downto 0);
signal q9_copy10_c8, q9_copy10_c9 :  std_logic_vector(2 downto 0);
signal absq9D_c9, absq9D_c10 :  std_logic_vector(26 downto 0);
signal w8_c10 :  std_logic_vector(26 downto 0);
signal betaw8_c10, betaw8_c11, betaw8_c12 :  std_logic_vector(26 downto 0);
signal sel8_c10 :  std_logic_vector(8 downto 0);
signal q8_c11, q8_c12 :  std_logic_vector(2 downto 0);
signal q8_copy11_c10, q8_copy11_c11 :  std_logic_vector(2 downto 0);
signal absq8D_c11, absq8D_c12 :  std_logic_vector(26 downto 0);
signal w7_c12 :  std_logic_vector(26 downto 0);
signal betaw7_c12, betaw7_c13, betaw7_c14 :  std_logic_vector(26 downto 0);
signal sel7_c12 :  std_logic_vector(8 downto 0);
signal q7_c12, q7_c13, q7_c14 :  std_logic_vector(2 downto 0);
signal q7_copy12_c12 :  std_logic_vector(2 downto 0);
signal absq7D_c12, absq7D_c13, absq7D_c14 :  std_logic_vector(26 downto 0);
signal w6_c14 :  std_logic_vector(26 downto 0);
signal betaw6_c14, betaw6_c15 :  std_logic_vector(26 downto 0);
signal sel6_c14 :  std_logic_vector(8 downto 0);
signal q6_c14, q6_c15 :  std_logic_vector(2 downto 0);
signal q6_copy13_c14 :  std_logic_vector(2 downto 0);
signal absq6D_c14, absq6D_c15 :  std_logic_vector(26 downto 0);
signal w5_c15 :  std_logic_vector(26 downto 0);
signal betaw5_c15, betaw5_c16, betaw5_c17 :  std_logic_vector(26 downto 0);
signal sel5_c15 :  std_logic_vector(8 downto 0);
signal q5_c16, q5_c17 :  std_logic_vector(2 downto 0);
signal q5_copy14_c15, q5_copy14_c16 :  std_logic_vector(2 downto 0);
signal absq5D_c16, absq5D_c17 :  std_logic_vector(26 downto 0);
signal w4_c17 :  std_logic_vector(26 downto 0);
signal betaw4_c17, betaw4_c18, betaw4_c19 :  std_logic_vector(26 downto 0);
signal sel4_c17 :  std_logic_vector(8 downto 0);
signal q4_c18, q4_c19 :  std_logic_vector(2 downto 0);
signal q4_copy15_c17, q4_copy15_c18 :  std_logic_vector(2 downto 0);
signal absq4D_c18, absq4D_c19 :  std_logic_vector(26 downto 0);
signal w3_c19 :  std_logic_vector(26 downto 0);
signal betaw3_c19, betaw3_c20, betaw3_c21 :  std_logic_vector(26 downto 0);
signal sel3_c19 :  std_logic_vector(8 downto 0);
signal q3_c20, q3_c21 :  std_logic_vector(2 downto 0);
signal q3_copy16_c19, q3_copy16_c20 :  std_logic_vector(2 downto 0);
signal absq3D_c20, absq3D_c21 :  std_logic_vector(26 downto 0);
signal w2_c21 :  std_logic_vector(26 downto 0);
signal betaw2_c21, betaw2_c22, betaw2_c23 :  std_logic_vector(26 downto 0);
signal sel2_c21 :  std_logic_vector(8 downto 0);
signal q2_c21, q2_c22, q2_c23 :  std_logic_vector(2 downto 0);
signal q2_copy17_c21 :  std_logic_vector(2 downto 0);
signal absq2D_c21, absq2D_c22, absq2D_c23 :  std_logic_vector(26 downto 0);
signal w1_c23 :  std_logic_vector(26 downto 0);
signal betaw1_c23, betaw1_c24 :  std_logic_vector(26 downto 0);
signal sel1_c23 :  std_logic_vector(8 downto 0);
signal q1_c23, q1_c24 :  std_logic_vector(2 downto 0);
signal q1_copy18_c23 :  std_logic_vector(2 downto 0);
signal absq1D_c23, absq1D_c24 :  std_logic_vector(26 downto 0);
signal w0_c24 :  std_logic_vector(26 downto 0);
signal wfinal_c24 :  std_logic_vector(24 downto 0);
signal qM0_c24 :  std_logic;
signal qP14_c0, qP14_c1, qP14_c2, qP14_c3, qP14_c4, qP14_c5, qP14_c6, qP14_c7, qP14_c8, qP14_c9, qP14_c10, qP14_c11, qP14_c12, qP14_c13, qP14_c14, qP14_c15, qP14_c16, qP14_c17, qP14_c18, qP14_c19, qP14_c20, qP14_c21, qP14_c22, qP14_c23 :  std_logic_vector(1 downto 0);
signal qM14_c0, qM14_c1, qM14_c2, qM14_c3, qM14_c4, qM14_c5, qM14_c6, qM14_c7, qM14_c8, qM14_c9, qM14_c10, qM14_c11, qM14_c12, qM14_c13, qM14_c14, qM14_c15, qM14_c16, qM14_c17, qM14_c18, qM14_c19, qM14_c20, qM14_c21, qM14_c22, qM14_c23, qM14_c24 :  std_logic_vector(1 downto 0);
signal qP13_c2, qP13_c3, qP13_c4, qP13_c5, qP13_c6, qP13_c7, qP13_c8, qP13_c9, qP13_c10, qP13_c11, qP13_c12, qP13_c13, qP13_c14, qP13_c15, qP13_c16, qP13_c17, qP13_c18, qP13_c19, qP13_c20, qP13_c21, qP13_c22, qP13_c23 :  std_logic_vector(1 downto 0);
signal qM13_c2, qM13_c3, qM13_c4, qM13_c5, qM13_c6, qM13_c7, qM13_c8, qM13_c9, qM13_c10, qM13_c11, qM13_c12, qM13_c13, qM13_c14, qM13_c15, qM13_c16, qM13_c17, qM13_c18, qM13_c19, qM13_c20, qM13_c21, qM13_c22, qM13_c23, qM13_c24 :  std_logic_vector(1 downto 0);
signal qP12_c4, qP12_c5, qP12_c6, qP12_c7, qP12_c8, qP12_c9, qP12_c10, qP12_c11, qP12_c12, qP12_c13, qP12_c14, qP12_c15, qP12_c16, qP12_c17, qP12_c18, qP12_c19, qP12_c20, qP12_c21, qP12_c22, qP12_c23 :  std_logic_vector(1 downto 0);
signal qM12_c4, qM12_c5, qM12_c6, qM12_c7, qM12_c8, qM12_c9, qM12_c10, qM12_c11, qM12_c12, qM12_c13, qM12_c14, qM12_c15, qM12_c16, qM12_c17, qM12_c18, qM12_c19, qM12_c20, qM12_c21, qM12_c22, qM12_c23, qM12_c24 :  std_logic_vector(1 downto 0);
signal qP11_c5, qP11_c6, qP11_c7, qP11_c8, qP11_c9, qP11_c10, qP11_c11, qP11_c12, qP11_c13, qP11_c14, qP11_c15, qP11_c16, qP11_c17, qP11_c18, qP11_c19, qP11_c20, qP11_c21, qP11_c22, qP11_c23 :  std_logic_vector(1 downto 0);
signal qM11_c5, qM11_c6, qM11_c7, qM11_c8, qM11_c9, qM11_c10, qM11_c11, qM11_c12, qM11_c13, qM11_c14, qM11_c15, qM11_c16, qM11_c17, qM11_c18, qM11_c19, qM11_c20, qM11_c21, qM11_c22, qM11_c23, qM11_c24 :  std_logic_vector(1 downto 0);
signal qP10_c7, qP10_c8, qP10_c9, qP10_c10, qP10_c11, qP10_c12, qP10_c13, qP10_c14, qP10_c15, qP10_c16, qP10_c17, qP10_c18, qP10_c19, qP10_c20, qP10_c21, qP10_c22, qP10_c23 :  std_logic_vector(1 downto 0);
signal qM10_c7, qM10_c8, qM10_c9, qM10_c10, qM10_c11, qM10_c12, qM10_c13, qM10_c14, qM10_c15, qM10_c16, qM10_c17, qM10_c18, qM10_c19, qM10_c20, qM10_c21, qM10_c22, qM10_c23, qM10_c24 :  std_logic_vector(1 downto 0);
signal qP9_c9, qP9_c10, qP9_c11, qP9_c12, qP9_c13, qP9_c14, qP9_c15, qP9_c16, qP9_c17, qP9_c18, qP9_c19, qP9_c20, qP9_c21, qP9_c22, qP9_c23 :  std_logic_vector(1 downto 0);
signal qM9_c9, qM9_c10, qM9_c11, qM9_c12, qM9_c13, qM9_c14, qM9_c15, qM9_c16, qM9_c17, qM9_c18, qM9_c19, qM9_c20, qM9_c21, qM9_c22, qM9_c23, qM9_c24 :  std_logic_vector(1 downto 0);
signal qP8_c11, qP8_c12, qP8_c13, qP8_c14, qP8_c15, qP8_c16, qP8_c17, qP8_c18, qP8_c19, qP8_c20, qP8_c21, qP8_c22, qP8_c23 :  std_logic_vector(1 downto 0);
signal qM8_c11, qM8_c12, qM8_c13, qM8_c14, qM8_c15, qM8_c16, qM8_c17, qM8_c18, qM8_c19, qM8_c20, qM8_c21, qM8_c22, qM8_c23, qM8_c24 :  std_logic_vector(1 downto 0);
signal qP7_c12, qP7_c13, qP7_c14, qP7_c15, qP7_c16, qP7_c17, qP7_c18, qP7_c19, qP7_c20, qP7_c21, qP7_c22, qP7_c23 :  std_logic_vector(1 downto 0);
signal qM7_c12, qM7_c13, qM7_c14, qM7_c15, qM7_c16, qM7_c17, qM7_c18, qM7_c19, qM7_c20, qM7_c21, qM7_c22, qM7_c23, qM7_c24 :  std_logic_vector(1 downto 0);
signal qP6_c14, qP6_c15, qP6_c16, qP6_c17, qP6_c18, qP6_c19, qP6_c20, qP6_c21, qP6_c22, qP6_c23 :  std_logic_vector(1 downto 0);
signal qM6_c14, qM6_c15, qM6_c16, qM6_c17, qM6_c18, qM6_c19, qM6_c20, qM6_c21, qM6_c22, qM6_c23, qM6_c24 :  std_logic_vector(1 downto 0);
signal qP5_c16, qP5_c17, qP5_c18, qP5_c19, qP5_c20, qP5_c21, qP5_c22, qP5_c23 :  std_logic_vector(1 downto 0);
signal qM5_c16, qM5_c17, qM5_c18, qM5_c19, qM5_c20, qM5_c21, qM5_c22, qM5_c23, qM5_c24 :  std_logic_vector(1 downto 0);
signal qP4_c18, qP4_c19, qP4_c20, qP4_c21, qP4_c22, qP4_c23 :  std_logic_vector(1 downto 0);
signal qM4_c18, qM4_c19, qM4_c20, qM4_c21, qM4_c22, qM4_c23, qM4_c24 :  std_logic_vector(1 downto 0);
signal qP3_c20, qP3_c21, qP3_c22, qP3_c23 :  std_logic_vector(1 downto 0);
signal qM3_c20, qM3_c21, qM3_c22, qM3_c23, qM3_c24 :  std_logic_vector(1 downto 0);
signal qP2_c21, qP2_c22, qP2_c23 :  std_logic_vector(1 downto 0);
signal qM2_c21, qM2_c22, qM2_c23, qM2_c24 :  std_logic_vector(1 downto 0);
signal qP1_c23 :  std_logic_vector(1 downto 0);
signal qM1_c23, qM1_c24 :  std_logic_vector(1 downto 0);
signal qP_c23, qP_c24, qP_c25, qP_c26 :  std_logic_vector(27 downto 0);
signal qM_c24, qM_c25, qM_c26 :  std_logic_vector(27 downto 0);
signal quotient_c26 :  std_logic_vector(27 downto 0);
signal mR_c26, mR_c27 :  std_logic_vector(25 downto 0);
signal fRnorm_c26, fRnorm_c27 :  std_logic_vector(23 downto 0);
signal round_c26, round_c27 :  std_logic;
signal expR1_c27 :  std_logic_vector(9 downto 0);
signal expfrac_c27 :  std_logic_vector(32 downto 0);
signal expfracR_c27 :  std_logic_vector(32 downto 0);
signal exnR_c27 :  std_logic_vector(1 downto 0);
signal exnRfinal_c27 :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               expR0_c1 <= expR0_c0;
               sR_c1 <= sR_c0;
               exnR0_c1 <= exnR0_c0;
               D_c1 <= D_c0;
               betaw14_c1 <= betaw14_c0;
               q14_c1 <= q14_c0;
               absq14D_c1 <= absq14D_c0;
               qP14_c1 <= qP14_c0;
               qM14_c1 <= qM14_c0;
            end if;
            if ce_2 = '1' then
               expR0_c2 <= expR0_c1;
               sR_c2 <= sR_c1;
               exnR0_c2 <= exnR0_c1;
               D_c2 <= D_c1;
               betaw13_c2 <= betaw13_c1;
               q13_copy6_c2 <= q13_copy6_c1;
               qP14_c2 <= qP14_c1;
               qM14_c2 <= qM14_c1;
            end if;
            if ce_3 = '1' then
               expR0_c3 <= expR0_c2;
               sR_c3 <= sR_c2;
               exnR0_c3 <= exnR0_c2;
               D_c3 <= D_c2;
               betaw13_c3 <= betaw13_c2;
               q13_c3 <= q13_c2;
               absq13D_c3 <= absq13D_c2;
               qP14_c3 <= qP14_c2;
               qM14_c3 <= qM14_c2;
               qP13_c3 <= qP13_c2;
               qM13_c3 <= qM13_c2;
            end if;
            if ce_4 = '1' then
               expR0_c4 <= expR0_c3;
               sR_c4 <= sR_c3;
               exnR0_c4 <= exnR0_c3;
               D_c4 <= D_c3;
               betaw12_c4 <= betaw12_c3;
               q12_copy7_c4 <= q12_copy7_c3;
               qP14_c4 <= qP14_c3;
               qM14_c4 <= qM14_c3;
               qP13_c4 <= qP13_c3;
               qM13_c4 <= qM13_c3;
            end if;
            if ce_5 = '1' then
               expR0_c5 <= expR0_c4;
               sR_c5 <= sR_c4;
               exnR0_c5 <= exnR0_c4;
               D_c5 <= D_c4;
               betaw12_c5 <= betaw12_c4;
               q12_c5 <= q12_c4;
               absq12D_c5 <= absq12D_c4;
               qP14_c5 <= qP14_c4;
               qM14_c5 <= qM14_c4;
               qP13_c5 <= qP13_c4;
               qM13_c5 <= qM13_c4;
               qP12_c5 <= qP12_c4;
               qM12_c5 <= qM12_c4;
            end if;
            if ce_6 = '1' then
               expR0_c6 <= expR0_c5;
               sR_c6 <= sR_c5;
               exnR0_c6 <= exnR0_c5;
               D_c6 <= D_c5;
               betaw11_c6 <= betaw11_c5;
               q11_c6 <= q11_c5;
               absq11D_c6 <= absq11D_c5;
               qP14_c6 <= qP14_c5;
               qM14_c6 <= qM14_c5;
               qP13_c6 <= qP13_c5;
               qM13_c6 <= qM13_c5;
               qP12_c6 <= qP12_c5;
               qM12_c6 <= qM12_c5;
               qP11_c6 <= qP11_c5;
               qM11_c6 <= qM11_c5;
            end if;
            if ce_7 = '1' then
               expR0_c7 <= expR0_c6;
               sR_c7 <= sR_c6;
               exnR0_c7 <= exnR0_c6;
               D_c7 <= D_c6;
               betaw11_c7 <= betaw11_c6;
               q11_c7 <= q11_c6;
               absq11D_c7 <= absq11D_c6;
               qP14_c7 <= qP14_c6;
               qM14_c7 <= qM14_c6;
               qP13_c7 <= qP13_c6;
               qM13_c7 <= qM13_c6;
               qP12_c7 <= qP12_c6;
               qM12_c7 <= qM12_c6;
               qP11_c7 <= qP11_c6;
               qM11_c7 <= qM11_c6;
            end if;
            if ce_8 = '1' then
               expR0_c8 <= expR0_c7;
               sR_c8 <= sR_c7;
               exnR0_c8 <= exnR0_c7;
               D_c8 <= D_c7;
               betaw10_c8 <= betaw10_c7;
               q10_c8 <= q10_c7;
               absq10D_c8 <= absq10D_c7;
               qP14_c8 <= qP14_c7;
               qM14_c8 <= qM14_c7;
               qP13_c8 <= qP13_c7;
               qM13_c8 <= qM13_c7;
               qP12_c8 <= qP12_c7;
               qM12_c8 <= qM12_c7;
               qP11_c8 <= qP11_c7;
               qM11_c8 <= qM11_c7;
               qP10_c8 <= qP10_c7;
               qM10_c8 <= qM10_c7;
            end if;
            if ce_9 = '1' then
               expR0_c9 <= expR0_c8;
               sR_c9 <= sR_c8;
               exnR0_c9 <= exnR0_c8;
               D_c9 <= D_c8;
               betaw9_c9 <= betaw9_c8;
               q9_copy10_c9 <= q9_copy10_c8;
               qP14_c9 <= qP14_c8;
               qM14_c9 <= qM14_c8;
               qP13_c9 <= qP13_c8;
               qM13_c9 <= qM13_c8;
               qP12_c9 <= qP12_c8;
               qM12_c9 <= qM12_c8;
               qP11_c9 <= qP11_c8;
               qM11_c9 <= qM11_c8;
               qP10_c9 <= qP10_c8;
               qM10_c9 <= qM10_c8;
            end if;
            if ce_10 = '1' then
               expR0_c10 <= expR0_c9;
               sR_c10 <= sR_c9;
               exnR0_c10 <= exnR0_c9;
               D_c10 <= D_c9;
               betaw9_c10 <= betaw9_c9;
               q9_c10 <= q9_c9;
               absq9D_c10 <= absq9D_c9;
               qP14_c10 <= qP14_c9;
               qM14_c10 <= qM14_c9;
               qP13_c10 <= qP13_c9;
               qM13_c10 <= qM13_c9;
               qP12_c10 <= qP12_c9;
               qM12_c10 <= qM12_c9;
               qP11_c10 <= qP11_c9;
               qM11_c10 <= qM11_c9;
               qP10_c10 <= qP10_c9;
               qM10_c10 <= qM10_c9;
               qP9_c10 <= qP9_c9;
               qM9_c10 <= qM9_c9;
            end if;
            if ce_11 = '1' then
               expR0_c11 <= expR0_c10;
               sR_c11 <= sR_c10;
               exnR0_c11 <= exnR0_c10;
               D_c11 <= D_c10;
               betaw8_c11 <= betaw8_c10;
               q8_copy11_c11 <= q8_copy11_c10;
               qP14_c11 <= qP14_c10;
               qM14_c11 <= qM14_c10;
               qP13_c11 <= qP13_c10;
               qM13_c11 <= qM13_c10;
               qP12_c11 <= qP12_c10;
               qM12_c11 <= qM12_c10;
               qP11_c11 <= qP11_c10;
               qM11_c11 <= qM11_c10;
               qP10_c11 <= qP10_c10;
               qM10_c11 <= qM10_c10;
               qP9_c11 <= qP9_c10;
               qM9_c11 <= qM9_c10;
            end if;
            if ce_12 = '1' then
               expR0_c12 <= expR0_c11;
               sR_c12 <= sR_c11;
               exnR0_c12 <= exnR0_c11;
               D_c12 <= D_c11;
               betaw8_c12 <= betaw8_c11;
               q8_c12 <= q8_c11;
               absq8D_c12 <= absq8D_c11;
               qP14_c12 <= qP14_c11;
               qM14_c12 <= qM14_c11;
               qP13_c12 <= qP13_c11;
               qM13_c12 <= qM13_c11;
               qP12_c12 <= qP12_c11;
               qM12_c12 <= qM12_c11;
               qP11_c12 <= qP11_c11;
               qM11_c12 <= qM11_c11;
               qP10_c12 <= qP10_c11;
               qM10_c12 <= qM10_c11;
               qP9_c12 <= qP9_c11;
               qM9_c12 <= qM9_c11;
               qP8_c12 <= qP8_c11;
               qM8_c12 <= qM8_c11;
            end if;
            if ce_13 = '1' then
               expR0_c13 <= expR0_c12;
               sR_c13 <= sR_c12;
               exnR0_c13 <= exnR0_c12;
               D_c13 <= D_c12;
               betaw7_c13 <= betaw7_c12;
               q7_c13 <= q7_c12;
               absq7D_c13 <= absq7D_c12;
               qP14_c13 <= qP14_c12;
               qM14_c13 <= qM14_c12;
               qP13_c13 <= qP13_c12;
               qM13_c13 <= qM13_c12;
               qP12_c13 <= qP12_c12;
               qM12_c13 <= qM12_c12;
               qP11_c13 <= qP11_c12;
               qM11_c13 <= qM11_c12;
               qP10_c13 <= qP10_c12;
               qM10_c13 <= qM10_c12;
               qP9_c13 <= qP9_c12;
               qM9_c13 <= qM9_c12;
               qP8_c13 <= qP8_c12;
               qM8_c13 <= qM8_c12;
               qP7_c13 <= qP7_c12;
               qM7_c13 <= qM7_c12;
            end if;
            if ce_14 = '1' then
               expR0_c14 <= expR0_c13;
               sR_c14 <= sR_c13;
               exnR0_c14 <= exnR0_c13;
               D_c14 <= D_c13;
               betaw7_c14 <= betaw7_c13;
               q7_c14 <= q7_c13;
               absq7D_c14 <= absq7D_c13;
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
               qP8_c14 <= qP8_c13;
               qM8_c14 <= qM8_c13;
               qP7_c14 <= qP7_c13;
               qM7_c14 <= qM7_c13;
            end if;
            if ce_15 = '1' then
               expR0_c15 <= expR0_c14;
               sR_c15 <= sR_c14;
               exnR0_c15 <= exnR0_c14;
               D_c15 <= D_c14;
               betaw6_c15 <= betaw6_c14;
               q6_c15 <= q6_c14;
               absq6D_c15 <= absq6D_c14;
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
               qP7_c15 <= qP7_c14;
               qM7_c15 <= qM7_c14;
               qP6_c15 <= qP6_c14;
               qM6_c15 <= qM6_c14;
            end if;
            if ce_16 = '1' then
               expR0_c16 <= expR0_c15;
               sR_c16 <= sR_c15;
               exnR0_c16 <= exnR0_c15;
               D_c16 <= D_c15;
               betaw5_c16 <= betaw5_c15;
               q5_copy14_c16 <= q5_copy14_c15;
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
               betaw4_c18 <= betaw4_c17;
               q4_copy15_c18 <= q4_copy15_c17;
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
            end if;
            if ce_19 = '1' then
               expR0_c19 <= expR0_c18;
               sR_c19 <= sR_c18;
               exnR0_c19 <= exnR0_c18;
               D_c19 <= D_c18;
               betaw4_c19 <= betaw4_c18;
               q4_c19 <= q4_c18;
               absq4D_c19 <= absq4D_c18;
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
            end if;
            if ce_20 = '1' then
               expR0_c20 <= expR0_c19;
               sR_c20 <= sR_c19;
               exnR0_c20 <= exnR0_c19;
               D_c20 <= D_c19;
               betaw3_c20 <= betaw3_c19;
               q3_copy16_c20 <= q3_copy16_c19;
               qP14_c20 <= qP14_c19;
               qM14_c20 <= qM14_c19;
               qP13_c20 <= qP13_c19;
               qM13_c20 <= qM13_c19;
               qP12_c20 <= qP12_c19;
               qM12_c20 <= qM12_c19;
               qP11_c20 <= qP11_c19;
               qM11_c20 <= qM11_c19;
               qP10_c20 <= qP10_c19;
               qM10_c20 <= qM10_c19;
               qP9_c20 <= qP9_c19;
               qM9_c20 <= qM9_c19;
               qP8_c20 <= qP8_c19;
               qM8_c20 <= qM8_c19;
               qP7_c20 <= qP7_c19;
               qM7_c20 <= qM7_c19;
               qP6_c20 <= qP6_c19;
               qM6_c20 <= qM6_c19;
               qP5_c20 <= qP5_c19;
               qM5_c20 <= qM5_c19;
               qP4_c20 <= qP4_c19;
               qM4_c20 <= qM4_c19;
            end if;
            if ce_21 = '1' then
               expR0_c21 <= expR0_c20;
               sR_c21 <= sR_c20;
               exnR0_c21 <= exnR0_c20;
               D_c21 <= D_c20;
               betaw3_c21 <= betaw3_c20;
               q3_c21 <= q3_c20;
               absq3D_c21 <= absq3D_c20;
               qP14_c21 <= qP14_c20;
               qM14_c21 <= qM14_c20;
               qP13_c21 <= qP13_c20;
               qM13_c21 <= qM13_c20;
               qP12_c21 <= qP12_c20;
               qM12_c21 <= qM12_c20;
               qP11_c21 <= qP11_c20;
               qM11_c21 <= qM11_c20;
               qP10_c21 <= qP10_c20;
               qM10_c21 <= qM10_c20;
               qP9_c21 <= qP9_c20;
               qM9_c21 <= qM9_c20;
               qP8_c21 <= qP8_c20;
               qM8_c21 <= qM8_c20;
               qP7_c21 <= qP7_c20;
               qM7_c21 <= qM7_c20;
               qP6_c21 <= qP6_c20;
               qM6_c21 <= qM6_c20;
               qP5_c21 <= qP5_c20;
               qM5_c21 <= qM5_c20;
               qP4_c21 <= qP4_c20;
               qM4_c21 <= qM4_c20;
               qP3_c21 <= qP3_c20;
               qM3_c21 <= qM3_c20;
            end if;
            if ce_22 = '1' then
               expR0_c22 <= expR0_c21;
               sR_c22 <= sR_c21;
               exnR0_c22 <= exnR0_c21;
               D_c22 <= D_c21;
               betaw2_c22 <= betaw2_c21;
               q2_c22 <= q2_c21;
               absq2D_c22 <= absq2D_c21;
               qP14_c22 <= qP14_c21;
               qM14_c22 <= qM14_c21;
               qP13_c22 <= qP13_c21;
               qM13_c22 <= qM13_c21;
               qP12_c22 <= qP12_c21;
               qM12_c22 <= qM12_c21;
               qP11_c22 <= qP11_c21;
               qM11_c22 <= qM11_c21;
               qP10_c22 <= qP10_c21;
               qM10_c22 <= qM10_c21;
               qP9_c22 <= qP9_c21;
               qM9_c22 <= qM9_c21;
               qP8_c22 <= qP8_c21;
               qM8_c22 <= qM8_c21;
               qP7_c22 <= qP7_c21;
               qM7_c22 <= qM7_c21;
               qP6_c22 <= qP6_c21;
               qM6_c22 <= qM6_c21;
               qP5_c22 <= qP5_c21;
               qM5_c22 <= qM5_c21;
               qP4_c22 <= qP4_c21;
               qM4_c22 <= qM4_c21;
               qP3_c22 <= qP3_c21;
               qM3_c22 <= qM3_c21;
               qP2_c22 <= qP2_c21;
               qM2_c22 <= qM2_c21;
            end if;
            if ce_23 = '1' then
               expR0_c23 <= expR0_c22;
               sR_c23 <= sR_c22;
               exnR0_c23 <= exnR0_c22;
               D_c23 <= D_c22;
               betaw2_c23 <= betaw2_c22;
               q2_c23 <= q2_c22;
               absq2D_c23 <= absq2D_c22;
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
               qP9_c23 <= qP9_c22;
               qM9_c23 <= qM9_c22;
               qP8_c23 <= qP8_c22;
               qM8_c23 <= qM8_c22;
               qP7_c23 <= qP7_c22;
               qM7_c23 <= qM7_c22;
               qP6_c23 <= qP6_c22;
               qM6_c23 <= qM6_c22;
               qP5_c23 <= qP5_c22;
               qM5_c23 <= qM5_c22;
               qP4_c23 <= qP4_c22;
               qM4_c23 <= qM4_c22;
               qP3_c23 <= qP3_c22;
               qM3_c23 <= qM3_c22;
               qP2_c23 <= qP2_c22;
               qM2_c23 <= qM2_c22;
            end if;
            if ce_24 = '1' then
               expR0_c24 <= expR0_c23;
               sR_c24 <= sR_c23;
               exnR0_c24 <= exnR0_c23;
               betaw1_c24 <= betaw1_c23;
               q1_c24 <= q1_c23;
               absq1D_c24 <= absq1D_c23;
               qM14_c24 <= qM14_c23;
               qM13_c24 <= qM13_c23;
               qM12_c24 <= qM12_c23;
               qM11_c24 <= qM11_c23;
               qM10_c24 <= qM10_c23;
               qM9_c24 <= qM9_c23;
               qM8_c24 <= qM8_c23;
               qM7_c24 <= qM7_c23;
               qM6_c24 <= qM6_c23;
               qM5_c24 <= qM5_c23;
               qM4_c24 <= qM4_c23;
               qM3_c24 <= qM3_c23;
               qM2_c24 <= qM2_c23;
               qM1_c24 <= qM1_c23;
               qP_c24 <= qP_c23;
            end if;
            if ce_25 = '1' then
               expR0_c25 <= expR0_c24;
               sR_c25 <= sR_c24;
               exnR0_c25 <= exnR0_c24;
               qP_c25 <= qP_c24;
               qM_c25 <= qM_c24;
            end if;
            if ce_26 = '1' then
               expR0_c26 <= expR0_c25;
               sR_c26 <= sR_c25;
               exnR0_c26 <= exnR0_c25;
               qP_c26 <= qP_c25;
               qM_c26 <= qM_c25;
            end if;
            if ce_27 = '1' then
               expR0_c27 <= expR0_c26;
               sR_c27 <= sR_c26;
               exnR0_c27 <= exnR0_c26;
               mR_c27 <= mR_c26;
               fRnorm_c27 <= fRnorm_c26;
               round_c27 <= round_c26;
            end if;
         end if;
      end process;
   fX_c0 <= "1" & X(22 downto 0);
   fY_c0 <= "1" & Y(22 downto 0);
   -- exponent difference, sign and exception combination computed early, to have fewer bits to pipeline
   expR0_c0 <= ("00" & X(30 downto 23)) - ("00" & Y(30 downto 23));
   sR_c0 <= X(31) xor Y(31);
   -- early exception handling 
   exnXY_c0 <= X(33 downto 32) & Y(33 downto 32);
   with exnXY_c0  select 
      exnR0_c0 <= 
         "01"	 when "0101",										-- normal
         "00"	 when "0001" | "0010" | "0110", -- zero
         "10"	 when "0100" | "1000" | "1001", -- overflow
         "11"	 when others;										-- NaN
   D_c0 <= fY_c0 ;
   psX_c0 <= "0" & fX_c0 ;
   betaw14_c0 <=  "00" & psX_c0;
   sel14_c0 <= betaw14_c0(26 downto 21) & D_c0(22 downto 20);
   SelFunctionTable14: selFunction_Freq800_uid4
      port map ( X => sel14_c0,
                 Y => q14_copy5_c0);
   q14_c0 <= q14_copy5_c0; -- output copy to hold a pipeline register if needed

   with q14_c0  select 
      absq14D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q14_c1(2)  select 
   w13_c1<= betaw14_c1 - absq14D_c1 when '0',
         betaw14_c1 + absq14D_c1 when others;

   betaw13_c1 <= w13_c1(24 downto 0) & "00"; -- multiplication by the radix
   sel13_c1 <= betaw13_c1(26 downto 21) & D_c1(22 downto 20);
   SelFunctionTable13: selFunction_Freq800_uid4
      port map ( X => sel13_c1,
                 Y => q13_copy6_c1);
   q13_c2 <= q13_copy6_c2; -- output copy to hold a pipeline register if needed

   with q13_c2  select 
      absq13D_c2 <= 
         "000" & D_c2						 when "001" | "111", -- mult by 1
         "00" & D_c2 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q13_c3(2)  select 
   w12_c3<= betaw13_c3 - absq13D_c3 when '0',
         betaw13_c3 + absq13D_c3 when others;

   betaw12_c3 <= w12_c3(24 downto 0) & "00"; -- multiplication by the radix
   sel12_c3 <= betaw12_c3(26 downto 21) & D_c3(22 downto 20);
   SelFunctionTable12: selFunction_Freq800_uid4
      port map ( X => sel12_c3,
                 Y => q12_copy7_c3);
   q12_c4 <= q12_copy7_c4; -- output copy to hold a pipeline register if needed

   with q12_c4  select 
      absq12D_c4 <= 
         "000" & D_c4						 when "001" | "111", -- mult by 1
         "00" & D_c4 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q12_c5(2)  select 
   w11_c5<= betaw12_c5 - absq12D_c5 when '0',
         betaw12_c5 + absq12D_c5 when others;

   betaw11_c5 <= w11_c5(24 downto 0) & "00"; -- multiplication by the radix
   sel11_c5 <= betaw11_c5(26 downto 21) & D_c5(22 downto 20);
   SelFunctionTable11: selFunction_Freq800_uid4
      port map ( X => sel11_c5,
                 Y => q11_copy8_c5);
   q11_c5 <= q11_copy8_c5; -- output copy to hold a pipeline register if needed

   with q11_c5  select 
      absq11D_c5 <= 
         "000" & D_c5						 when "001" | "111", -- mult by 1
         "00" & D_c5 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q11_c7(2)  select 
   w10_c7<= betaw11_c7 - absq11D_c7 when '0',
         betaw11_c7 + absq11D_c7 when others;

   betaw10_c7 <= w10_c7(24 downto 0) & "00"; -- multiplication by the radix
   sel10_c7 <= betaw10_c7(26 downto 21) & D_c7(22 downto 20);
   SelFunctionTable10: selFunction_Freq800_uid4
      port map ( X => sel10_c7,
                 Y => q10_copy9_c7);
   q10_c7 <= q10_copy9_c7; -- output copy to hold a pipeline register if needed

   with q10_c7  select 
      absq10D_c7 <= 
         "000" & D_c7						 when "001" | "111", -- mult by 1
         "00" & D_c7 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q10_c8(2)  select 
   w9_c8<= betaw10_c8 - absq10D_c8 when '0',
         betaw10_c8 + absq10D_c8 when others;

   betaw9_c8 <= w9_c8(24 downto 0) & "00"; -- multiplication by the radix
   sel9_c8 <= betaw9_c8(26 downto 21) & D_c8(22 downto 20);
   SelFunctionTable9: selFunction_Freq800_uid4
      port map ( X => sel9_c8,
                 Y => q9_copy10_c8);
   q9_c9 <= q9_copy10_c9; -- output copy to hold a pipeline register if needed

   with q9_c9  select 
      absq9D_c9 <= 
         "000" & D_c9						 when "001" | "111", -- mult by 1
         "00" & D_c9 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q9_c10(2)  select 
   w8_c10<= betaw9_c10 - absq9D_c10 when '0',
         betaw9_c10 + absq9D_c10 when others;

   betaw8_c10 <= w8_c10(24 downto 0) & "00"; -- multiplication by the radix
   sel8_c10 <= betaw8_c10(26 downto 21) & D_c10(22 downto 20);
   SelFunctionTable8: selFunction_Freq800_uid4
      port map ( X => sel8_c10,
                 Y => q8_copy11_c10);
   q8_c11 <= q8_copy11_c11; -- output copy to hold a pipeline register if needed

   with q8_c11  select 
      absq8D_c11 <= 
         "000" & D_c11						 when "001" | "111", -- mult by 1
         "00" & D_c11 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q8_c12(2)  select 
   w7_c12<= betaw8_c12 - absq8D_c12 when '0',
         betaw8_c12 + absq8D_c12 when others;

   betaw7_c12 <= w7_c12(24 downto 0) & "00"; -- multiplication by the radix
   sel7_c12 <= betaw7_c12(26 downto 21) & D_c12(22 downto 20);
   SelFunctionTable7: selFunction_Freq800_uid4
      port map ( X => sel7_c12,
                 Y => q7_copy12_c12);
   q7_c12 <= q7_copy12_c12; -- output copy to hold a pipeline register if needed

   with q7_c12  select 
      absq7D_c12 <= 
         "000" & D_c12						 when "001" | "111", -- mult by 1
         "00" & D_c12 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q7_c14(2)  select 
   w6_c14<= betaw7_c14 - absq7D_c14 when '0',
         betaw7_c14 + absq7D_c14 when others;

   betaw6_c14 <= w6_c14(24 downto 0) & "00"; -- multiplication by the radix
   sel6_c14 <= betaw6_c14(26 downto 21) & D_c14(22 downto 20);
   SelFunctionTable6: selFunction_Freq800_uid4
      port map ( X => sel6_c14,
                 Y => q6_copy13_c14);
   q6_c14 <= q6_copy13_c14; -- output copy to hold a pipeline register if needed

   with q6_c14  select 
      absq6D_c14 <= 
         "000" & D_c14						 when "001" | "111", -- mult by 1
         "00" & D_c14 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q6_c15(2)  select 
   w5_c15<= betaw6_c15 - absq6D_c15 when '0',
         betaw6_c15 + absq6D_c15 when others;

   betaw5_c15 <= w5_c15(24 downto 0) & "00"; -- multiplication by the radix
   sel5_c15 <= betaw5_c15(26 downto 21) & D_c15(22 downto 20);
   SelFunctionTable5: selFunction_Freq800_uid4
      port map ( X => sel5_c15,
                 Y => q5_copy14_c15);
   q5_c16 <= q5_copy14_c16; -- output copy to hold a pipeline register if needed

   with q5_c16  select 
      absq5D_c16 <= 
         "000" & D_c16						 when "001" | "111", -- mult by 1
         "00" & D_c16 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q5_c17(2)  select 
   w4_c17<= betaw5_c17 - absq5D_c17 when '0',
         betaw5_c17 + absq5D_c17 when others;

   betaw4_c17 <= w4_c17(24 downto 0) & "00"; -- multiplication by the radix
   sel4_c17 <= betaw4_c17(26 downto 21) & D_c17(22 downto 20);
   SelFunctionTable4: selFunction_Freq800_uid4
      port map ( X => sel4_c17,
                 Y => q4_copy15_c17);
   q4_c18 <= q4_copy15_c18; -- output copy to hold a pipeline register if needed

   with q4_c18  select 
      absq4D_c18 <= 
         "000" & D_c18						 when "001" | "111", -- mult by 1
         "00" & D_c18 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q4_c19(2)  select 
   w3_c19<= betaw4_c19 - absq4D_c19 when '0',
         betaw4_c19 + absq4D_c19 when others;

   betaw3_c19 <= w3_c19(24 downto 0) & "00"; -- multiplication by the radix
   sel3_c19 <= betaw3_c19(26 downto 21) & D_c19(22 downto 20);
   SelFunctionTable3: selFunction_Freq800_uid4
      port map ( X => sel3_c19,
                 Y => q3_copy16_c19);
   q3_c20 <= q3_copy16_c20; -- output copy to hold a pipeline register if needed

   with q3_c20  select 
      absq3D_c20 <= 
         "000" & D_c20						 when "001" | "111", -- mult by 1
         "00" & D_c20 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q3_c21(2)  select 
   w2_c21<= betaw3_c21 - absq3D_c21 when '0',
         betaw3_c21 + absq3D_c21 when others;

   betaw2_c21 <= w2_c21(24 downto 0) & "00"; -- multiplication by the radix
   sel2_c21 <= betaw2_c21(26 downto 21) & D_c21(22 downto 20);
   SelFunctionTable2: selFunction_Freq800_uid4
      port map ( X => sel2_c21,
                 Y => q2_copy17_c21);
   q2_c21 <= q2_copy17_c21; -- output copy to hold a pipeline register if needed

   with q2_c21  select 
      absq2D_c21 <= 
         "000" & D_c21						 when "001" | "111", -- mult by 1
         "00" & D_c21 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q2_c23(2)  select 
   w1_c23<= betaw2_c23 - absq2D_c23 when '0',
         betaw2_c23 + absq2D_c23 when others;

   betaw1_c23 <= w1_c23(24 downto 0) & "00"; -- multiplication by the radix
   sel1_c23 <= betaw1_c23(26 downto 21) & D_c23(22 downto 20);
   SelFunctionTable1: selFunction_Freq800_uid4
      port map ( X => sel1_c23,
                 Y => q1_copy18_c23);
   q1_c23 <= q1_copy18_c23; -- output copy to hold a pipeline register if needed

   with q1_c23  select 
      absq1D_c23 <= 
         "000" & D_c23						 when "001" | "111", -- mult by 1
         "00" & D_c23 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q1_c24(2)  select 
   w0_c24<= betaw1_c24 - absq1D_c24 when '0',
         betaw1_c24 + absq1D_c24 when others;

   wfinal_c24 <= w0_c24(24 downto 0);
   qM0_c24 <= wfinal_c24(24); -- rounding bit is the sign of the remainder
   qP14_c0 <=      q14_c0(1 downto 0);
   qM14_c0 <=      q14_c0(2) & "0";
   qP13_c2 <=      q13_c2(1 downto 0);
   qM13_c2 <=      q13_c2(2) & "0";
   qP12_c4 <=      q12_c4(1 downto 0);
   qM12_c4 <=      q12_c4(2) & "0";
   qP11_c5 <=      q11_c5(1 downto 0);
   qM11_c5 <=      q11_c5(2) & "0";
   qP10_c7 <=      q10_c7(1 downto 0);
   qM10_c7 <=      q10_c7(2) & "0";
   qP9_c9 <=      q9_c9(1 downto 0);
   qM9_c9 <=      q9_c9(2) & "0";
   qP8_c11 <=      q8_c11(1 downto 0);
   qM8_c11 <=      q8_c11(2) & "0";
   qP7_c12 <=      q7_c12(1 downto 0);
   qM7_c12 <=      q7_c12(2) & "0";
   qP6_c14 <=      q6_c14(1 downto 0);
   qM6_c14 <=      q6_c14(2) & "0";
   qP5_c16 <=      q5_c16(1 downto 0);
   qM5_c16 <=      q5_c16(2) & "0";
   qP4_c18 <=      q4_c18(1 downto 0);
   qM4_c18 <=      q4_c18(2) & "0";
   qP3_c20 <=      q3_c20(1 downto 0);
   qM3_c20 <=      q3_c20(2) & "0";
   qP2_c21 <=      q2_c21(1 downto 0);
   qM2_c21 <=      q2_c21(2) & "0";
   qP1_c23 <=      q1_c23(1 downto 0);
   qM1_c23 <=      q1_c23(2) & "0";
   qP_c23 <= qP14_c23 & qP13_c23 & qP12_c23 & qP11_c23 & qP10_c23 & qP9_c23 & qP8_c23 & qP7_c23 & qP6_c23 & qP5_c23 & qP4_c23 & qP3_c23 & qP2_c23 & qP1_c23;
   qM_c24 <= qM14_c24(0) & qM13_c24 & qM12_c24 & qM11_c24 & qM10_c24 & qM9_c24 & qM8_c24 & qM7_c24 & qM6_c24 & qM5_c24 & qM4_c24 & qM3_c24 & qM2_c24 & qM1_c24 & qM0_c24;
   quotient_c26 <= qP_c26 - qM_c26;
   -- We need a mR in (0, -wf-2) format: 1+wF fraction bits, 1 round bit, and 1 guard bit for the normalisation,
   -- quotient is the truncation of the exact quotient to at least 2^(-wF-2) bits
   -- now discarding its possible known MSB zeroes, and dropping the possible extra LSB bit (due to radix 4) 
   mR_c26 <= quotient_c26(26 downto 1); 
   -- normalisation
   fRnorm_c26 <=    mR_c26(24 downto 1)  when mR_c26(25)= '1'
           else mR_c26(23 downto 0);  -- now fRnorm is a (-1, -wF-1) fraction
   round_c26 <= fRnorm_c26(0); 
   expR1_c27 <= expR0_c27 + ("000" & (6 downto 1 => '1') & mR_c27(25)); -- add back bias
   -- final rounding
   expfrac_c27 <= expR1_c27 & fRnorm_c27(23 downto 1) ;
   expfracR_c27 <= expfrac_c27 + ((32 downto 1 => '0') & round_c27);
   exnR_c27 <=      "00"  when expfracR_c27(32) = '1'   -- underflow
           else "10"  when  expfracR_c27(32 downto 31) =  "01" -- overflow
           else "01";      -- 00, normal case
   with exnR0_c27  select 
      exnRfinal_c27 <= 
         exnR_c27   when "01", -- normal
         exnR0_c27  when others;
   R <= exnRfinal_c27 & sR_c27 & expfracR_c27(30 downto 0);
end architecture;



