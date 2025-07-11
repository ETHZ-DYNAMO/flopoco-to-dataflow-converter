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
--                         (FPDiv_8_23_Freq100_uid2)
-- VHDL generated for Kintex7 @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Maxime Christ, Florent de Dinechin (2015)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
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
    port (clk, ce_1, ce_2 : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of FloatingPointDivider is
   component selFunction_Freq100_uid4 is
      port ( X : in  std_logic_vector(8 downto 0);
             Y : out  std_logic_vector(2 downto 0)   );
   end component;

signal fX_c0 :  std_logic_vector(23 downto 0);
signal fY_c0 :  std_logic_vector(23 downto 0);
signal expR0_c0, expR0_c1, expR0_c2 :  std_logic_vector(9 downto 0);
signal sR_c0, sR_c1, sR_c2 :  std_logic;
signal exnXY_c0 :  std_logic_vector(3 downto 0);
signal exnR0_c0, exnR0_c1, exnR0_c2 :  std_logic_vector(1 downto 0);
signal D_c0, D_c1, D_c2 :  std_logic_vector(23 downto 0);
signal psX_c0 :  std_logic_vector(24 downto 0);
signal betaw14_c0 :  std_logic_vector(26 downto 0);
signal sel14_c0 :  std_logic_vector(8 downto 0);
signal q14_c0 :  std_logic_vector(2 downto 0);
signal q14_copy5_c0 :  std_logic_vector(2 downto 0);
signal absq14D_c0 :  std_logic_vector(26 downto 0);
signal w13_c0 :  std_logic_vector(26 downto 0);
signal betaw13_c0 :  std_logic_vector(26 downto 0);
signal sel13_c0 :  std_logic_vector(8 downto 0);
signal q13_c0 :  std_logic_vector(2 downto 0);
signal q13_copy6_c0 :  std_logic_vector(2 downto 0);
signal absq13D_c0 :  std_logic_vector(26 downto 0);
signal w12_c0 :  std_logic_vector(26 downto 0);
signal betaw12_c0 :  std_logic_vector(26 downto 0);
signal sel12_c0 :  std_logic_vector(8 downto 0);
signal q12_c0 :  std_logic_vector(2 downto 0);
signal q12_copy7_c0 :  std_logic_vector(2 downto 0);
signal absq12D_c0 :  std_logic_vector(26 downto 0);
signal w11_c0 :  std_logic_vector(26 downto 0);
signal betaw11_c0 :  std_logic_vector(26 downto 0);
signal sel11_c0 :  std_logic_vector(8 downto 0);
signal q11_c0 :  std_logic_vector(2 downto 0);
signal q11_copy8_c0 :  std_logic_vector(2 downto 0);
signal absq11D_c0 :  std_logic_vector(26 downto 0);
signal w10_c0 :  std_logic_vector(26 downto 0);
signal betaw10_c0 :  std_logic_vector(26 downto 0);
signal sel10_c0 :  std_logic_vector(8 downto 0);
signal q10_c0 :  std_logic_vector(2 downto 0);
signal q10_copy9_c0 :  std_logic_vector(2 downto 0);
signal absq10D_c0 :  std_logic_vector(26 downto 0);
signal w9_c0 :  std_logic_vector(26 downto 0);
signal betaw9_c0, betaw9_c1 :  std_logic_vector(26 downto 0);
signal sel9_c0 :  std_logic_vector(8 downto 0);
signal q9_c0, q9_c1 :  std_logic_vector(2 downto 0);
signal q9_copy10_c0 :  std_logic_vector(2 downto 0);
signal absq9D_c0, absq9D_c1 :  std_logic_vector(26 downto 0);
signal w8_c1 :  std_logic_vector(26 downto 0);
signal betaw8_c1 :  std_logic_vector(26 downto 0);
signal sel8_c1 :  std_logic_vector(8 downto 0);
signal q8_c1 :  std_logic_vector(2 downto 0);
signal q8_copy11_c1 :  std_logic_vector(2 downto 0);
signal absq8D_c1 :  std_logic_vector(26 downto 0);
signal w7_c1 :  std_logic_vector(26 downto 0);
signal betaw7_c1 :  std_logic_vector(26 downto 0);
signal sel7_c1 :  std_logic_vector(8 downto 0);
signal q7_c1 :  std_logic_vector(2 downto 0);
signal q7_copy12_c1 :  std_logic_vector(2 downto 0);
signal absq7D_c1 :  std_logic_vector(26 downto 0);
signal w6_c1 :  std_logic_vector(26 downto 0);
signal betaw6_c1 :  std_logic_vector(26 downto 0);
signal sel6_c1 :  std_logic_vector(8 downto 0);
signal q6_c1 :  std_logic_vector(2 downto 0);
signal q6_copy13_c1 :  std_logic_vector(2 downto 0);
signal absq6D_c1 :  std_logic_vector(26 downto 0);
signal w5_c1 :  std_logic_vector(26 downto 0);
signal betaw5_c1 :  std_logic_vector(26 downto 0);
signal sel5_c1 :  std_logic_vector(8 downto 0);
signal q5_c1 :  std_logic_vector(2 downto 0);
signal q5_copy14_c1 :  std_logic_vector(2 downto 0);
signal absq5D_c1 :  std_logic_vector(26 downto 0);
signal w4_c1 :  std_logic_vector(26 downto 0);
signal betaw4_c1, betaw4_c2 :  std_logic_vector(26 downto 0);
signal sel4_c1 :  std_logic_vector(8 downto 0);
signal q4_c1, q4_c2 :  std_logic_vector(2 downto 0);
signal q4_copy15_c1 :  std_logic_vector(2 downto 0);
signal absq4D_c1, absq4D_c2 :  std_logic_vector(26 downto 0);
signal w3_c2 :  std_logic_vector(26 downto 0);
signal betaw3_c2 :  std_logic_vector(26 downto 0);
signal sel3_c2 :  std_logic_vector(8 downto 0);
signal q3_c2 :  std_logic_vector(2 downto 0);
signal q3_copy16_c2 :  std_logic_vector(2 downto 0);
signal absq3D_c2 :  std_logic_vector(26 downto 0);
signal w2_c2 :  std_logic_vector(26 downto 0);
signal betaw2_c2 :  std_logic_vector(26 downto 0);
signal sel2_c2 :  std_logic_vector(8 downto 0);
signal q2_c2 :  std_logic_vector(2 downto 0);
signal q2_copy17_c2 :  std_logic_vector(2 downto 0);
signal absq2D_c2 :  std_logic_vector(26 downto 0);
signal w1_c2 :  std_logic_vector(26 downto 0);
signal betaw1_c2 :  std_logic_vector(26 downto 0);
signal sel1_c2 :  std_logic_vector(8 downto 0);
signal q1_c2 :  std_logic_vector(2 downto 0);
signal q1_copy18_c2 :  std_logic_vector(2 downto 0);
signal absq1D_c2 :  std_logic_vector(26 downto 0);
signal w0_c2 :  std_logic_vector(26 downto 0);
signal wfinal_c2 :  std_logic_vector(24 downto 0);
signal qM0_c2 :  std_logic;
signal qP14_c0, qP14_c1, qP14_c2 :  std_logic_vector(1 downto 0);
signal qM14_c0, qM14_c1, qM14_c2 :  std_logic_vector(1 downto 0);
signal qP13_c0, qP13_c1, qP13_c2 :  std_logic_vector(1 downto 0);
signal qM13_c0, qM13_c1, qM13_c2 :  std_logic_vector(1 downto 0);
signal qP12_c0, qP12_c1, qP12_c2 :  std_logic_vector(1 downto 0);
signal qM12_c0, qM12_c1, qM12_c2 :  std_logic_vector(1 downto 0);
signal qP11_c0, qP11_c1, qP11_c2 :  std_logic_vector(1 downto 0);
signal qM11_c0, qM11_c1, qM11_c2 :  std_logic_vector(1 downto 0);
signal qP10_c0, qP10_c1, qP10_c2 :  std_logic_vector(1 downto 0);
signal qM10_c0, qM10_c1, qM10_c2 :  std_logic_vector(1 downto 0);
signal qP9_c0, qP9_c1, qP9_c2 :  std_logic_vector(1 downto 0);
signal qM9_c0, qM9_c1, qM9_c2 :  std_logic_vector(1 downto 0);
signal qP8_c1, qP8_c2 :  std_logic_vector(1 downto 0);
signal qM8_c1, qM8_c2 :  std_logic_vector(1 downto 0);
signal qP7_c1, qP7_c2 :  std_logic_vector(1 downto 0);
signal qM7_c1, qM7_c2 :  std_logic_vector(1 downto 0);
signal qP6_c1, qP6_c2 :  std_logic_vector(1 downto 0);
signal qM6_c1, qM6_c2 :  std_logic_vector(1 downto 0);
signal qP5_c1, qP5_c2 :  std_logic_vector(1 downto 0);
signal qM5_c1, qM5_c2 :  std_logic_vector(1 downto 0);
signal qP4_c1, qP4_c2 :  std_logic_vector(1 downto 0);
signal qM4_c1, qM4_c2 :  std_logic_vector(1 downto 0);
signal qP3_c2 :  std_logic_vector(1 downto 0);
signal qM3_c2 :  std_logic_vector(1 downto 0);
signal qP2_c2 :  std_logic_vector(1 downto 0);
signal qM2_c2 :  std_logic_vector(1 downto 0);
signal qP1_c2 :  std_logic_vector(1 downto 0);
signal qM1_c2 :  std_logic_vector(1 downto 0);
signal qP_c2 :  std_logic_vector(27 downto 0);
signal qM_c2 :  std_logic_vector(27 downto 0);
signal quotient_c2 :  std_logic_vector(27 downto 0);
signal mR_c2 :  std_logic_vector(25 downto 0);
signal fRnorm_c2 :  std_logic_vector(23 downto 0);
signal round_c2 :  std_logic;
signal expR1_c2 :  std_logic_vector(9 downto 0);
signal expfrac_c2 :  std_logic_vector(32 downto 0);
signal expfracR_c2 :  std_logic_vector(32 downto 0);
signal exnR_c2 :  std_logic_vector(1 downto 0);
signal exnRfinal_c2 :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               expR0_c1 <= expR0_c0;
               sR_c1 <= sR_c0;
               exnR0_c1 <= exnR0_c0;
               D_c1 <= D_c0;
               betaw9_c1 <= betaw9_c0;
               q9_c1 <= q9_c0;
               absq9D_c1 <= absq9D_c0;
               qP14_c1 <= qP14_c0;
               qM14_c1 <= qM14_c0;
               qP13_c1 <= qP13_c0;
               qM13_c1 <= qM13_c0;
               qP12_c1 <= qP12_c0;
               qM12_c1 <= qM12_c0;
               qP11_c1 <= qP11_c0;
               qM11_c1 <= qM11_c0;
               qP10_c1 <= qP10_c0;
               qM10_c1 <= qM10_c0;
               qP9_c1 <= qP9_c0;
               qM9_c1 <= qM9_c0;
            end if;
            if ce_2 = '1' then
               expR0_c2 <= expR0_c1;
               sR_c2 <= sR_c1;
               exnR0_c2 <= exnR0_c1;
               D_c2 <= D_c1;
               betaw4_c2 <= betaw4_c1;
               q4_c2 <= q4_c1;
               absq4D_c2 <= absq4D_c1;
               qP14_c2 <= qP14_c1;
               qM14_c2 <= qM14_c1;
               qP13_c2 <= qP13_c1;
               qM13_c2 <= qM13_c1;
               qP12_c2 <= qP12_c1;
               qM12_c2 <= qM12_c1;
               qP11_c2 <= qP11_c1;
               qM11_c2 <= qM11_c1;
               qP10_c2 <= qP10_c1;
               qM10_c2 <= qM10_c1;
               qP9_c2 <= qP9_c1;
               qM9_c2 <= qM9_c1;
               qP8_c2 <= qP8_c1;
               qM8_c2 <= qM8_c1;
               qP7_c2 <= qP7_c1;
               qM7_c2 <= qM7_c1;
               qP6_c2 <= qP6_c1;
               qM6_c2 <= qM6_c1;
               qP5_c2 <= qP5_c1;
               qM5_c2 <= qM5_c1;
               qP4_c2 <= qP4_c1;
               qM4_c2 <= qM4_c1;
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
   SelFunctionTable14: selFunction_Freq100_uid4
      port map ( X => sel14_c0,
                 Y => q14_copy5_c0);
   q14_c0 <= q14_copy5_c0; -- output copy to hold a pipeline register if needed

   with q14_c0  select 
      absq14D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q14_c0(2)  select 
   w13_c0<= betaw14_c0 - absq14D_c0 when '0',
         betaw14_c0 + absq14D_c0 when others;

   betaw13_c0 <= w13_c0(24 downto 0) & "00"; -- multiplication by the radix
   sel13_c0 <= betaw13_c0(26 downto 21) & D_c0(22 downto 20);
   SelFunctionTable13: selFunction_Freq100_uid4
      port map ( X => sel13_c0,
                 Y => q13_copy6_c0);
   q13_c0 <= q13_copy6_c0; -- output copy to hold a pipeline register if needed

   with q13_c0  select 
      absq13D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q13_c0(2)  select 
   w12_c0<= betaw13_c0 - absq13D_c0 when '0',
         betaw13_c0 + absq13D_c0 when others;

   betaw12_c0 <= w12_c0(24 downto 0) & "00"; -- multiplication by the radix
   sel12_c0 <= betaw12_c0(26 downto 21) & D_c0(22 downto 20);
   SelFunctionTable12: selFunction_Freq100_uid4
      port map ( X => sel12_c0,
                 Y => q12_copy7_c0);
   q12_c0 <= q12_copy7_c0; -- output copy to hold a pipeline register if needed

   with q12_c0  select 
      absq12D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q12_c0(2)  select 
   w11_c0<= betaw12_c0 - absq12D_c0 when '0',
         betaw12_c0 + absq12D_c0 when others;

   betaw11_c0 <= w11_c0(24 downto 0) & "00"; -- multiplication by the radix
   sel11_c0 <= betaw11_c0(26 downto 21) & D_c0(22 downto 20);
   SelFunctionTable11: selFunction_Freq100_uid4
      port map ( X => sel11_c0,
                 Y => q11_copy8_c0);
   q11_c0 <= q11_copy8_c0; -- output copy to hold a pipeline register if needed

   with q11_c0  select 
      absq11D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q11_c0(2)  select 
   w10_c0<= betaw11_c0 - absq11D_c0 when '0',
         betaw11_c0 + absq11D_c0 when others;

   betaw10_c0 <= w10_c0(24 downto 0) & "00"; -- multiplication by the radix
   sel10_c0 <= betaw10_c0(26 downto 21) & D_c0(22 downto 20);
   SelFunctionTable10: selFunction_Freq100_uid4
      port map ( X => sel10_c0,
                 Y => q10_copy9_c0);
   q10_c0 <= q10_copy9_c0; -- output copy to hold a pipeline register if needed

   with q10_c0  select 
      absq10D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q10_c0(2)  select 
   w9_c0<= betaw10_c0 - absq10D_c0 when '0',
         betaw10_c0 + absq10D_c0 when others;

   betaw9_c0 <= w9_c0(24 downto 0) & "00"; -- multiplication by the radix
   sel9_c0 <= betaw9_c0(26 downto 21) & D_c0(22 downto 20);
   SelFunctionTable9: selFunction_Freq100_uid4
      port map ( X => sel9_c0,
                 Y => q9_copy10_c0);
   q9_c0 <= q9_copy10_c0; -- output copy to hold a pipeline register if needed

   with q9_c0  select 
      absq9D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q9_c1(2)  select 
   w8_c1<= betaw9_c1 - absq9D_c1 when '0',
         betaw9_c1 + absq9D_c1 when others;

   betaw8_c1 <= w8_c1(24 downto 0) & "00"; -- multiplication by the radix
   sel8_c1 <= betaw8_c1(26 downto 21) & D_c1(22 downto 20);
   SelFunctionTable8: selFunction_Freq100_uid4
      port map ( X => sel8_c1,
                 Y => q8_copy11_c1);
   q8_c1 <= q8_copy11_c1; -- output copy to hold a pipeline register if needed

   with q8_c1  select 
      absq8D_c1 <= 
         "000" & D_c1						 when "001" | "111", -- mult by 1
         "00" & D_c1 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q8_c1(2)  select 
   w7_c1<= betaw8_c1 - absq8D_c1 when '0',
         betaw8_c1 + absq8D_c1 when others;

   betaw7_c1 <= w7_c1(24 downto 0) & "00"; -- multiplication by the radix
   sel7_c1 <= betaw7_c1(26 downto 21) & D_c1(22 downto 20);
   SelFunctionTable7: selFunction_Freq100_uid4
      port map ( X => sel7_c1,
                 Y => q7_copy12_c1);
   q7_c1 <= q7_copy12_c1; -- output copy to hold a pipeline register if needed

   with q7_c1  select 
      absq7D_c1 <= 
         "000" & D_c1						 when "001" | "111", -- mult by 1
         "00" & D_c1 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q7_c1(2)  select 
   w6_c1<= betaw7_c1 - absq7D_c1 when '0',
         betaw7_c1 + absq7D_c1 when others;

   betaw6_c1 <= w6_c1(24 downto 0) & "00"; -- multiplication by the radix
   sel6_c1 <= betaw6_c1(26 downto 21) & D_c1(22 downto 20);
   SelFunctionTable6: selFunction_Freq100_uid4
      port map ( X => sel6_c1,
                 Y => q6_copy13_c1);
   q6_c1 <= q6_copy13_c1; -- output copy to hold a pipeline register if needed

   with q6_c1  select 
      absq6D_c1 <= 
         "000" & D_c1						 when "001" | "111", -- mult by 1
         "00" & D_c1 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q6_c1(2)  select 
   w5_c1<= betaw6_c1 - absq6D_c1 when '0',
         betaw6_c1 + absq6D_c1 when others;

   betaw5_c1 <= w5_c1(24 downto 0) & "00"; -- multiplication by the radix
   sel5_c1 <= betaw5_c1(26 downto 21) & D_c1(22 downto 20);
   SelFunctionTable5: selFunction_Freq100_uid4
      port map ( X => sel5_c1,
                 Y => q5_copy14_c1);
   q5_c1 <= q5_copy14_c1; -- output copy to hold a pipeline register if needed

   with q5_c1  select 
      absq5D_c1 <= 
         "000" & D_c1						 when "001" | "111", -- mult by 1
         "00" & D_c1 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q5_c1(2)  select 
   w4_c1<= betaw5_c1 - absq5D_c1 when '0',
         betaw5_c1 + absq5D_c1 when others;

   betaw4_c1 <= w4_c1(24 downto 0) & "00"; -- multiplication by the radix
   sel4_c1 <= betaw4_c1(26 downto 21) & D_c1(22 downto 20);
   SelFunctionTable4: selFunction_Freq100_uid4
      port map ( X => sel4_c1,
                 Y => q4_copy15_c1);
   q4_c1 <= q4_copy15_c1; -- output copy to hold a pipeline register if needed

   with q4_c1  select 
      absq4D_c1 <= 
         "000" & D_c1						 when "001" | "111", -- mult by 1
         "00" & D_c1 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q4_c2(2)  select 
   w3_c2<= betaw4_c2 - absq4D_c2 when '0',
         betaw4_c2 + absq4D_c2 when others;

   betaw3_c2 <= w3_c2(24 downto 0) & "00"; -- multiplication by the radix
   sel3_c2 <= betaw3_c2(26 downto 21) & D_c2(22 downto 20);
   SelFunctionTable3: selFunction_Freq100_uid4
      port map ( X => sel3_c2,
                 Y => q3_copy16_c2);
   q3_c2 <= q3_copy16_c2; -- output copy to hold a pipeline register if needed

   with q3_c2  select 
      absq3D_c2 <= 
         "000" & D_c2						 when "001" | "111", -- mult by 1
         "00" & D_c2 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q3_c2(2)  select 
   w2_c2<= betaw3_c2 - absq3D_c2 when '0',
         betaw3_c2 + absq3D_c2 when others;

   betaw2_c2 <= w2_c2(24 downto 0) & "00"; -- multiplication by the radix
   sel2_c2 <= betaw2_c2(26 downto 21) & D_c2(22 downto 20);
   SelFunctionTable2: selFunction_Freq100_uid4
      port map ( X => sel2_c2,
                 Y => q2_copy17_c2);
   q2_c2 <= q2_copy17_c2; -- output copy to hold a pipeline register if needed

   with q2_c2  select 
      absq2D_c2 <= 
         "000" & D_c2						 when "001" | "111", -- mult by 1
         "00" & D_c2 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q2_c2(2)  select 
   w1_c2<= betaw2_c2 - absq2D_c2 when '0',
         betaw2_c2 + absq2D_c2 when others;

   betaw1_c2 <= w1_c2(24 downto 0) & "00"; -- multiplication by the radix
   sel1_c2 <= betaw1_c2(26 downto 21) & D_c2(22 downto 20);
   SelFunctionTable1: selFunction_Freq100_uid4
      port map ( X => sel1_c2,
                 Y => q1_copy18_c2);
   q1_c2 <= q1_copy18_c2; -- output copy to hold a pipeline register if needed

   with q1_c2  select 
      absq1D_c2 <= 
         "000" & D_c2						 when "001" | "111", -- mult by 1
         "00" & D_c2 & "0"			   when "010" | "110", -- mult by 2
         (26 downto 0 => '0')	 when others;        -- mult by 0

   with q1_c2(2)  select 
   w0_c2<= betaw1_c2 - absq1D_c2 when '0',
         betaw1_c2 + absq1D_c2 when others;

   wfinal_c2 <= w0_c2(24 downto 0);
   qM0_c2 <= wfinal_c2(24); -- rounding bit is the sign of the remainder
   qP14_c0 <=      q14_c0(1 downto 0);
   qM14_c0 <=      q14_c0(2) & "0";
   qP13_c0 <=      q13_c0(1 downto 0);
   qM13_c0 <=      q13_c0(2) & "0";
   qP12_c0 <=      q12_c0(1 downto 0);
   qM12_c0 <=      q12_c0(2) & "0";
   qP11_c0 <=      q11_c0(1 downto 0);
   qM11_c0 <=      q11_c0(2) & "0";
   qP10_c0 <=      q10_c0(1 downto 0);
   qM10_c0 <=      q10_c0(2) & "0";
   qP9_c0 <=      q9_c0(1 downto 0);
   qM9_c0 <=      q9_c0(2) & "0";
   qP8_c1 <=      q8_c1(1 downto 0);
   qM8_c1 <=      q8_c1(2) & "0";
   qP7_c1 <=      q7_c1(1 downto 0);
   qM7_c1 <=      q7_c1(2) & "0";
   qP6_c1 <=      q6_c1(1 downto 0);
   qM6_c1 <=      q6_c1(2) & "0";
   qP5_c1 <=      q5_c1(1 downto 0);
   qM5_c1 <=      q5_c1(2) & "0";
   qP4_c1 <=      q4_c1(1 downto 0);
   qM4_c1 <=      q4_c1(2) & "0";
   qP3_c2 <=      q3_c2(1 downto 0);
   qM3_c2 <=      q3_c2(2) & "0";
   qP2_c2 <=      q2_c2(1 downto 0);
   qM2_c2 <=      q2_c2(2) & "0";
   qP1_c2 <=      q1_c2(1 downto 0);
   qM1_c2 <=      q1_c2(2) & "0";
   qP_c2 <= qP14_c2 & qP13_c2 & qP12_c2 & qP11_c2 & qP10_c2 & qP9_c2 & qP8_c2 & qP7_c2 & qP6_c2 & qP5_c2 & qP4_c2 & qP3_c2 & qP2_c2 & qP1_c2;
   qM_c2 <= qM14_c2(0) & qM13_c2 & qM12_c2 & qM11_c2 & qM10_c2 & qM9_c2 & qM8_c2 & qM7_c2 & qM6_c2 & qM5_c2 & qM4_c2 & qM3_c2 & qM2_c2 & qM1_c2 & qM0_c2;
   quotient_c2 <= qP_c2 - qM_c2;
   -- We need a mR in (0, -wf-2) format: 1+wF fraction bits, 1 round bit, and 1 guard bit for the normalisation,
   -- quotient is the truncation of the exact quotient to at least 2^(-wF-2) bits
   -- now discarding its possible known MSB zeroes, and dropping the possible extra LSB bit (due to radix 4) 
   mR_c2 <= quotient_c2(26 downto 1); 
   -- normalisation
   fRnorm_c2 <=    mR_c2(24 downto 1)  when mR_c2(25)= '1'
           else mR_c2(23 downto 0);  -- now fRnorm is a (-1, -wF-1) fraction
   round_c2 <= fRnorm_c2(0); 
   expR1_c2 <= expR0_c2 + ("000" & (6 downto 1 => '1') & mR_c2(25)); -- add back bias
   -- final rounding
   expfrac_c2 <= expR1_c2 & fRnorm_c2(23 downto 1) ;
   expfracR_c2 <= expfrac_c2 + ((32 downto 1 => '0') & round_c2);
   exnR_c2 <=      "00"  when expfracR_c2(32) = '1'   -- underflow
           else "10"  when  expfracR_c2(32 downto 31) =  "01" -- overflow
           else "01";      -- 00, normal case
   with exnR0_c2  select 
      exnRfinal_c2 <= 
         exnR_c2   when "01", -- normal
         exnR0_c2  when others;
   R <= exnRfinal_c2 & sR_c2 & expfracR_c2(30 downto 0);
end architecture;



