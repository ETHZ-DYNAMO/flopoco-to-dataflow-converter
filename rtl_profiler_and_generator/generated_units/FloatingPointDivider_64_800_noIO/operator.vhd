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
--                         (FPDiv_11_52_Freq800_uid2)
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Maxime Christ, Florent de Dinechin (2015)
--------------------------------------------------------------------------------
-- Pipeline depth: 63 cycles
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
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27, ce_28, ce_29, ce_30, ce_31, ce_32, ce_33, ce_34, ce_35, ce_36, ce_37, ce_38, ce_39, ce_40, ce_41, ce_42, ce_43, ce_44, ce_45, ce_46, ce_47, ce_48, ce_49, ce_50, ce_51, ce_52, ce_53, ce_54, ce_55, ce_56, ce_57, ce_58, ce_59, ce_60, ce_61, ce_62, ce_63 : in std_logic;
          X : in  std_logic_vector(11+52+2 downto 0);
          Y : in  std_logic_vector(11+52+2 downto 0);
          R : out  std_logic_vector(11+52+2 downto 0)   );
end entity;

architecture arch of FloatingPointDivider is
   component selFunction_Freq800_uid4 is
      port ( X : in  std_logic_vector(8 downto 0);
             Y : out  std_logic_vector(2 downto 0)   );
   end component;

signal fX_c0 :  std_logic_vector(52 downto 0);
signal fY_c0 :  std_logic_vector(52 downto 0);
signal expR0_c0, expR0_c1, expR0_c2, expR0_c3, expR0_c4, expR0_c5, expR0_c6, expR0_c7, expR0_c8, expR0_c9, expR0_c10, expR0_c11, expR0_c12, expR0_c13, expR0_c14, expR0_c15, expR0_c16, expR0_c17, expR0_c18, expR0_c19, expR0_c20, expR0_c21, expR0_c22, expR0_c23, expR0_c24, expR0_c25, expR0_c26, expR0_c27, expR0_c28, expR0_c29, expR0_c30, expR0_c31, expR0_c32, expR0_c33, expR0_c34, expR0_c35, expR0_c36, expR0_c37, expR0_c38, expR0_c39, expR0_c40, expR0_c41, expR0_c42, expR0_c43, expR0_c44, expR0_c45, expR0_c46, expR0_c47, expR0_c48, expR0_c49, expR0_c50, expR0_c51, expR0_c52, expR0_c53, expR0_c54, expR0_c55, expR0_c56, expR0_c57, expR0_c58, expR0_c59, expR0_c60, expR0_c61, expR0_c62 :  std_logic_vector(12 downto 0);
signal sR_c0, sR_c1, sR_c2, sR_c3, sR_c4, sR_c5, sR_c6, sR_c7, sR_c8, sR_c9, sR_c10, sR_c11, sR_c12, sR_c13, sR_c14, sR_c15, sR_c16, sR_c17, sR_c18, sR_c19, sR_c20, sR_c21, sR_c22, sR_c23, sR_c24, sR_c25, sR_c26, sR_c27, sR_c28, sR_c29, sR_c30, sR_c31, sR_c32, sR_c33, sR_c34, sR_c35, sR_c36, sR_c37, sR_c38, sR_c39, sR_c40, sR_c41, sR_c42, sR_c43, sR_c44, sR_c45, sR_c46, sR_c47, sR_c48, sR_c49, sR_c50, sR_c51, sR_c52, sR_c53, sR_c54, sR_c55, sR_c56, sR_c57, sR_c58, sR_c59, sR_c60, sR_c61, sR_c62, sR_c63 :  std_logic;
signal exnXY_c0 :  std_logic_vector(3 downto 0);
signal exnR0_c0, exnR0_c1, exnR0_c2, exnR0_c3, exnR0_c4, exnR0_c5, exnR0_c6, exnR0_c7, exnR0_c8, exnR0_c9, exnR0_c10, exnR0_c11, exnR0_c12, exnR0_c13, exnR0_c14, exnR0_c15, exnR0_c16, exnR0_c17, exnR0_c18, exnR0_c19, exnR0_c20, exnR0_c21, exnR0_c22, exnR0_c23, exnR0_c24, exnR0_c25, exnR0_c26, exnR0_c27, exnR0_c28, exnR0_c29, exnR0_c30, exnR0_c31, exnR0_c32, exnR0_c33, exnR0_c34, exnR0_c35, exnR0_c36, exnR0_c37, exnR0_c38, exnR0_c39, exnR0_c40, exnR0_c41, exnR0_c42, exnR0_c43, exnR0_c44, exnR0_c45, exnR0_c46, exnR0_c47, exnR0_c48, exnR0_c49, exnR0_c50, exnR0_c51, exnR0_c52, exnR0_c53, exnR0_c54, exnR0_c55, exnR0_c56, exnR0_c57, exnR0_c58, exnR0_c59, exnR0_c60, exnR0_c61, exnR0_c62, exnR0_c63 :  std_logic_vector(1 downto 0);
signal D_c0, D_c1, D_c2, D_c3, D_c4, D_c5, D_c6, D_c7, D_c8, D_c9, D_c10, D_c11, D_c12, D_c13, D_c14, D_c15, D_c16, D_c17, D_c18, D_c19, D_c20, D_c21, D_c22, D_c23, D_c24, D_c25, D_c26, D_c27, D_c28, D_c29, D_c30, D_c31, D_c32, D_c33, D_c34, D_c35, D_c36, D_c37, D_c38, D_c39, D_c40, D_c41, D_c42, D_c43, D_c44, D_c45, D_c46, D_c47, D_c48, D_c49, D_c50, D_c51, D_c52, D_c53, D_c54, D_c55, D_c56, D_c57, D_c58 :  std_logic_vector(52 downto 0);
signal psX_c0 :  std_logic_vector(53 downto 0);
signal betaw28_c0, betaw28_c1, betaw28_c2 :  std_logic_vector(55 downto 0);
signal sel28_c0 :  std_logic_vector(8 downto 0);
signal q28_c0, q28_c1, q28_c2 :  std_logic_vector(2 downto 0);
signal q28_copy5_c0 :  std_logic_vector(2 downto 0);
signal absq28D_c0, absq28D_c1, absq28D_c2 :  std_logic_vector(55 downto 0);
signal w27_c2 :  std_logic_vector(55 downto 0);
signal betaw27_c2, betaw27_c3, betaw27_c4 :  std_logic_vector(55 downto 0);
signal sel27_c2 :  std_logic_vector(8 downto 0);
signal q27_c2, q27_c3, q27_c4 :  std_logic_vector(2 downto 0);
signal q27_copy6_c2 :  std_logic_vector(2 downto 0);
signal absq27D_c2, absq27D_c3, absq27D_c4 :  std_logic_vector(55 downto 0);
signal w26_c4 :  std_logic_vector(55 downto 0);
signal betaw26_c4, betaw26_c5, betaw26_c6 :  std_logic_vector(55 downto 0);
signal sel26_c4 :  std_logic_vector(8 downto 0);
signal q26_c4, q26_c5, q26_c6 :  std_logic_vector(2 downto 0);
signal q26_copy7_c4 :  std_logic_vector(2 downto 0);
signal absq26D_c4, absq26D_c5, absq26D_c6 :  std_logic_vector(55 downto 0);
signal w25_c6 :  std_logic_vector(55 downto 0);
signal betaw25_c6, betaw25_c7, betaw25_c8 :  std_logic_vector(55 downto 0);
signal sel25_c6 :  std_logic_vector(8 downto 0);
signal q25_c6, q25_c7, q25_c8 :  std_logic_vector(2 downto 0);
signal q25_copy8_c6 :  std_logic_vector(2 downto 0);
signal absq25D_c6, absq25D_c7, absq25D_c8 :  std_logic_vector(55 downto 0);
signal w24_c8 :  std_logic_vector(55 downto 0);
signal betaw24_c8, betaw24_c9, betaw24_c10 :  std_logic_vector(55 downto 0);
signal sel24_c8 :  std_logic_vector(8 downto 0);
signal q24_c9, q24_c10 :  std_logic_vector(2 downto 0);
signal q24_copy9_c8, q24_copy9_c9 :  std_logic_vector(2 downto 0);
signal absq24D_c9, absq24D_c10 :  std_logic_vector(55 downto 0);
signal w23_c10 :  std_logic_vector(55 downto 0);
signal betaw23_c10, betaw23_c11, betaw23_c12 :  std_logic_vector(55 downto 0);
signal sel23_c10 :  std_logic_vector(8 downto 0);
signal q23_c11, q23_c12 :  std_logic_vector(2 downto 0);
signal q23_copy10_c10, q23_copy10_c11 :  std_logic_vector(2 downto 0);
signal absq23D_c11, absq23D_c12 :  std_logic_vector(55 downto 0);
signal w22_c12 :  std_logic_vector(55 downto 0);
signal betaw22_c12, betaw22_c13, betaw22_c14, betaw22_c15 :  std_logic_vector(55 downto 0);
signal sel22_c12 :  std_logic_vector(8 downto 0);
signal q22_c13, q22_c14, q22_c15 :  std_logic_vector(2 downto 0);
signal q22_copy11_c12, q22_copy11_c13 :  std_logic_vector(2 downto 0);
signal absq22D_c13, absq22D_c14, absq22D_c15 :  std_logic_vector(55 downto 0);
signal w21_c15 :  std_logic_vector(55 downto 0);
signal betaw21_c15, betaw21_c16, betaw21_c17 :  std_logic_vector(55 downto 0);
signal sel21_c15 :  std_logic_vector(8 downto 0);
signal q21_c15, q21_c16, q21_c17 :  std_logic_vector(2 downto 0);
signal q21_copy12_c15 :  std_logic_vector(2 downto 0);
signal absq21D_c15, absq21D_c16, absq21D_c17 :  std_logic_vector(55 downto 0);
signal w20_c17 :  std_logic_vector(55 downto 0);
signal betaw20_c17, betaw20_c18, betaw20_c19 :  std_logic_vector(55 downto 0);
signal sel20_c17 :  std_logic_vector(8 downto 0);
signal q20_c17, q20_c18, q20_c19 :  std_logic_vector(2 downto 0);
signal q20_copy13_c17 :  std_logic_vector(2 downto 0);
signal absq20D_c17, absq20D_c18, absq20D_c19 :  std_logic_vector(55 downto 0);
signal w19_c19 :  std_logic_vector(55 downto 0);
signal betaw19_c19, betaw19_c20, betaw19_c21 :  std_logic_vector(55 downto 0);
signal sel19_c19 :  std_logic_vector(8 downto 0);
signal q19_c19, q19_c20, q19_c21 :  std_logic_vector(2 downto 0);
signal q19_copy14_c19 :  std_logic_vector(2 downto 0);
signal absq19D_c19, absq19D_c20, absq19D_c21 :  std_logic_vector(55 downto 0);
signal w18_c21 :  std_logic_vector(55 downto 0);
signal betaw18_c21, betaw18_c22, betaw18_c23 :  std_logic_vector(55 downto 0);
signal sel18_c21 :  std_logic_vector(8 downto 0);
signal q18_c22, q18_c23 :  std_logic_vector(2 downto 0);
signal q18_copy15_c21, q18_copy15_c22 :  std_logic_vector(2 downto 0);
signal absq18D_c22, absq18D_c23 :  std_logic_vector(55 downto 0);
signal w17_c23 :  std_logic_vector(55 downto 0);
signal betaw17_c23, betaw17_c24, betaw17_c25 :  std_logic_vector(55 downto 0);
signal sel17_c23 :  std_logic_vector(8 downto 0);
signal q17_c24, q17_c25 :  std_logic_vector(2 downto 0);
signal q17_copy16_c23, q17_copy16_c24 :  std_logic_vector(2 downto 0);
signal absq17D_c24, absq17D_c25 :  std_logic_vector(55 downto 0);
signal w16_c25 :  std_logic_vector(55 downto 0);
signal betaw16_c25, betaw16_c26, betaw16_c27 :  std_logic_vector(55 downto 0);
signal sel16_c25 :  std_logic_vector(8 downto 0);
signal q16_c26, q16_c27 :  std_logic_vector(2 downto 0);
signal q16_copy17_c25, q16_copy17_c26 :  std_logic_vector(2 downto 0);
signal absq16D_c26, absq16D_c27 :  std_logic_vector(55 downto 0);
signal w15_c27 :  std_logic_vector(55 downto 0);
signal betaw15_c27, betaw15_c28, betaw15_c29, betaw15_c30 :  std_logic_vector(55 downto 0);
signal sel15_c27 :  std_logic_vector(8 downto 0);
signal q15_c28, q15_c29, q15_c30 :  std_logic_vector(2 downto 0);
signal q15_copy18_c27, q15_copy18_c28 :  std_logic_vector(2 downto 0);
signal absq15D_c28, absq15D_c29, absq15D_c30 :  std_logic_vector(55 downto 0);
signal w14_c30 :  std_logic_vector(55 downto 0);
signal betaw14_c30, betaw14_c31, betaw14_c32 :  std_logic_vector(55 downto 0);
signal sel14_c30 :  std_logic_vector(8 downto 0);
signal q14_c30, q14_c31, q14_c32 :  std_logic_vector(2 downto 0);
signal q14_copy19_c30 :  std_logic_vector(2 downto 0);
signal absq14D_c30, absq14D_c31, absq14D_c32 :  std_logic_vector(55 downto 0);
signal w13_c32 :  std_logic_vector(55 downto 0);
signal betaw13_c32, betaw13_c33, betaw13_c34 :  std_logic_vector(55 downto 0);
signal sel13_c32 :  std_logic_vector(8 downto 0);
signal q13_c32, q13_c33, q13_c34 :  std_logic_vector(2 downto 0);
signal q13_copy20_c32 :  std_logic_vector(2 downto 0);
signal absq13D_c32, absq13D_c33, absq13D_c34 :  std_logic_vector(55 downto 0);
signal w12_c34 :  std_logic_vector(55 downto 0);
signal betaw12_c34, betaw12_c35, betaw12_c36 :  std_logic_vector(55 downto 0);
signal sel12_c34 :  std_logic_vector(8 downto 0);
signal q12_c34, q12_c35, q12_c36 :  std_logic_vector(2 downto 0);
signal q12_copy21_c34 :  std_logic_vector(2 downto 0);
signal absq12D_c34, absq12D_c35, absq12D_c36 :  std_logic_vector(55 downto 0);
signal w11_c36 :  std_logic_vector(55 downto 0);
signal betaw11_c36, betaw11_c37, betaw11_c38 :  std_logic_vector(55 downto 0);
signal sel11_c36 :  std_logic_vector(8 downto 0);
signal q11_c37, q11_c38 :  std_logic_vector(2 downto 0);
signal q11_copy22_c36, q11_copy22_c37 :  std_logic_vector(2 downto 0);
signal absq11D_c37, absq11D_c38 :  std_logic_vector(55 downto 0);
signal w10_c38 :  std_logic_vector(55 downto 0);
signal betaw10_c38, betaw10_c39, betaw10_c40 :  std_logic_vector(55 downto 0);
signal sel10_c38 :  std_logic_vector(8 downto 0);
signal q10_c39, q10_c40 :  std_logic_vector(2 downto 0);
signal q10_copy23_c38, q10_copy23_c39 :  std_logic_vector(2 downto 0);
signal absq10D_c39, absq10D_c40 :  std_logic_vector(55 downto 0);
signal w9_c40 :  std_logic_vector(55 downto 0);
signal betaw9_c40, betaw9_c41, betaw9_c42 :  std_logic_vector(55 downto 0);
signal sel9_c40 :  std_logic_vector(8 downto 0);
signal q9_c41, q9_c42 :  std_logic_vector(2 downto 0);
signal q9_copy24_c40, q9_copy24_c41 :  std_logic_vector(2 downto 0);
signal absq9D_c41, absq9D_c42 :  std_logic_vector(55 downto 0);
signal w8_c42 :  std_logic_vector(55 downto 0);
signal betaw8_c42, betaw8_c43, betaw8_c44, betaw8_c45 :  std_logic_vector(55 downto 0);
signal sel8_c42 :  std_logic_vector(8 downto 0);
signal q8_c43, q8_c44, q8_c45 :  std_logic_vector(2 downto 0);
signal q8_copy25_c42, q8_copy25_c43 :  std_logic_vector(2 downto 0);
signal absq8D_c43, absq8D_c44, absq8D_c45 :  std_logic_vector(55 downto 0);
signal w7_c45 :  std_logic_vector(55 downto 0);
signal betaw7_c45, betaw7_c46, betaw7_c47 :  std_logic_vector(55 downto 0);
signal sel7_c45 :  std_logic_vector(8 downto 0);
signal q7_c45, q7_c46, q7_c47 :  std_logic_vector(2 downto 0);
signal q7_copy26_c45 :  std_logic_vector(2 downto 0);
signal absq7D_c45, absq7D_c46, absq7D_c47 :  std_logic_vector(55 downto 0);
signal w6_c47 :  std_logic_vector(55 downto 0);
signal betaw6_c47, betaw6_c48, betaw6_c49 :  std_logic_vector(55 downto 0);
signal sel6_c47 :  std_logic_vector(8 downto 0);
signal q6_c47, q6_c48, q6_c49 :  std_logic_vector(2 downto 0);
signal q6_copy27_c47 :  std_logic_vector(2 downto 0);
signal absq6D_c47, absq6D_c48, absq6D_c49 :  std_logic_vector(55 downto 0);
signal w5_c49 :  std_logic_vector(55 downto 0);
signal betaw5_c49, betaw5_c50, betaw5_c51 :  std_logic_vector(55 downto 0);
signal sel5_c49 :  std_logic_vector(8 downto 0);
signal q5_c49, q5_c50, q5_c51 :  std_logic_vector(2 downto 0);
signal q5_copy28_c49 :  std_logic_vector(2 downto 0);
signal absq5D_c49, absq5D_c50, absq5D_c51 :  std_logic_vector(55 downto 0);
signal w4_c51 :  std_logic_vector(55 downto 0);
signal betaw4_c51, betaw4_c52, betaw4_c53 :  std_logic_vector(55 downto 0);
signal sel4_c51 :  std_logic_vector(8 downto 0);
signal q4_c52, q4_c53 :  std_logic_vector(2 downto 0);
signal q4_copy29_c51, q4_copy29_c52 :  std_logic_vector(2 downto 0);
signal absq4D_c52, absq4D_c53 :  std_logic_vector(55 downto 0);
signal w3_c53 :  std_logic_vector(55 downto 0);
signal betaw3_c53, betaw3_c54, betaw3_c55 :  std_logic_vector(55 downto 0);
signal sel3_c53 :  std_logic_vector(8 downto 0);
signal q3_c54, q3_c55 :  std_logic_vector(2 downto 0);
signal q3_copy30_c53, q3_copy30_c54 :  std_logic_vector(2 downto 0);
signal absq3D_c54, absq3D_c55 :  std_logic_vector(55 downto 0);
signal w2_c55 :  std_logic_vector(55 downto 0);
signal betaw2_c55, betaw2_c56, betaw2_c57, betaw2_c58 :  std_logic_vector(55 downto 0);
signal sel2_c55 :  std_logic_vector(8 downto 0);
signal q2_c56, q2_c57, q2_c58 :  std_logic_vector(2 downto 0);
signal q2_copy31_c55, q2_copy31_c56 :  std_logic_vector(2 downto 0);
signal absq2D_c56, absq2D_c57, absq2D_c58 :  std_logic_vector(55 downto 0);
signal w1_c58 :  std_logic_vector(55 downto 0);
signal betaw1_c58, betaw1_c59, betaw1_c60 :  std_logic_vector(55 downto 0);
signal sel1_c58 :  std_logic_vector(8 downto 0);
signal q1_c58, q1_c59, q1_c60 :  std_logic_vector(2 downto 0);
signal q1_copy32_c58 :  std_logic_vector(2 downto 0);
signal absq1D_c58, absq1D_c59, absq1D_c60 :  std_logic_vector(55 downto 0);
signal w0_c60 :  std_logic_vector(55 downto 0);
signal wfinal_c60 :  std_logic_vector(53 downto 0);
signal qM0_c60 :  std_logic;
signal qP28_c0, qP28_c1, qP28_c2, qP28_c3, qP28_c4, qP28_c5, qP28_c6, qP28_c7, qP28_c8, qP28_c9, qP28_c10, qP28_c11, qP28_c12, qP28_c13, qP28_c14, qP28_c15, qP28_c16, qP28_c17, qP28_c18, qP28_c19, qP28_c20, qP28_c21, qP28_c22, qP28_c23, qP28_c24, qP28_c25, qP28_c26, qP28_c27, qP28_c28, qP28_c29, qP28_c30, qP28_c31, qP28_c32, qP28_c33, qP28_c34, qP28_c35, qP28_c36, qP28_c37, qP28_c38, qP28_c39, qP28_c40, qP28_c41, qP28_c42, qP28_c43, qP28_c44, qP28_c45, qP28_c46, qP28_c47, qP28_c48, qP28_c49, qP28_c50, qP28_c51, qP28_c52, qP28_c53, qP28_c54, qP28_c55, qP28_c56, qP28_c57, qP28_c58 :  std_logic_vector(1 downto 0);
signal qM28_c0, qM28_c1, qM28_c2, qM28_c3, qM28_c4, qM28_c5, qM28_c6, qM28_c7, qM28_c8, qM28_c9, qM28_c10, qM28_c11, qM28_c12, qM28_c13, qM28_c14, qM28_c15, qM28_c16, qM28_c17, qM28_c18, qM28_c19, qM28_c20, qM28_c21, qM28_c22, qM28_c23, qM28_c24, qM28_c25, qM28_c26, qM28_c27, qM28_c28, qM28_c29, qM28_c30, qM28_c31, qM28_c32, qM28_c33, qM28_c34, qM28_c35, qM28_c36, qM28_c37, qM28_c38, qM28_c39, qM28_c40, qM28_c41, qM28_c42, qM28_c43, qM28_c44, qM28_c45, qM28_c46, qM28_c47, qM28_c48, qM28_c49, qM28_c50, qM28_c51, qM28_c52, qM28_c53, qM28_c54, qM28_c55, qM28_c56, qM28_c57, qM28_c58, qM28_c59, qM28_c60 :  std_logic_vector(1 downto 0);
signal qP27_c2, qP27_c3, qP27_c4, qP27_c5, qP27_c6, qP27_c7, qP27_c8, qP27_c9, qP27_c10, qP27_c11, qP27_c12, qP27_c13, qP27_c14, qP27_c15, qP27_c16, qP27_c17, qP27_c18, qP27_c19, qP27_c20, qP27_c21, qP27_c22, qP27_c23, qP27_c24, qP27_c25, qP27_c26, qP27_c27, qP27_c28, qP27_c29, qP27_c30, qP27_c31, qP27_c32, qP27_c33, qP27_c34, qP27_c35, qP27_c36, qP27_c37, qP27_c38, qP27_c39, qP27_c40, qP27_c41, qP27_c42, qP27_c43, qP27_c44, qP27_c45, qP27_c46, qP27_c47, qP27_c48, qP27_c49, qP27_c50, qP27_c51, qP27_c52, qP27_c53, qP27_c54, qP27_c55, qP27_c56, qP27_c57, qP27_c58 :  std_logic_vector(1 downto 0);
signal qM27_c2, qM27_c3, qM27_c4, qM27_c5, qM27_c6, qM27_c7, qM27_c8, qM27_c9, qM27_c10, qM27_c11, qM27_c12, qM27_c13, qM27_c14, qM27_c15, qM27_c16, qM27_c17, qM27_c18, qM27_c19, qM27_c20, qM27_c21, qM27_c22, qM27_c23, qM27_c24, qM27_c25, qM27_c26, qM27_c27, qM27_c28, qM27_c29, qM27_c30, qM27_c31, qM27_c32, qM27_c33, qM27_c34, qM27_c35, qM27_c36, qM27_c37, qM27_c38, qM27_c39, qM27_c40, qM27_c41, qM27_c42, qM27_c43, qM27_c44, qM27_c45, qM27_c46, qM27_c47, qM27_c48, qM27_c49, qM27_c50, qM27_c51, qM27_c52, qM27_c53, qM27_c54, qM27_c55, qM27_c56, qM27_c57, qM27_c58, qM27_c59, qM27_c60 :  std_logic_vector(1 downto 0);
signal qP26_c4, qP26_c5, qP26_c6, qP26_c7, qP26_c8, qP26_c9, qP26_c10, qP26_c11, qP26_c12, qP26_c13, qP26_c14, qP26_c15, qP26_c16, qP26_c17, qP26_c18, qP26_c19, qP26_c20, qP26_c21, qP26_c22, qP26_c23, qP26_c24, qP26_c25, qP26_c26, qP26_c27, qP26_c28, qP26_c29, qP26_c30, qP26_c31, qP26_c32, qP26_c33, qP26_c34, qP26_c35, qP26_c36, qP26_c37, qP26_c38, qP26_c39, qP26_c40, qP26_c41, qP26_c42, qP26_c43, qP26_c44, qP26_c45, qP26_c46, qP26_c47, qP26_c48, qP26_c49, qP26_c50, qP26_c51, qP26_c52, qP26_c53, qP26_c54, qP26_c55, qP26_c56, qP26_c57, qP26_c58 :  std_logic_vector(1 downto 0);
signal qM26_c4, qM26_c5, qM26_c6, qM26_c7, qM26_c8, qM26_c9, qM26_c10, qM26_c11, qM26_c12, qM26_c13, qM26_c14, qM26_c15, qM26_c16, qM26_c17, qM26_c18, qM26_c19, qM26_c20, qM26_c21, qM26_c22, qM26_c23, qM26_c24, qM26_c25, qM26_c26, qM26_c27, qM26_c28, qM26_c29, qM26_c30, qM26_c31, qM26_c32, qM26_c33, qM26_c34, qM26_c35, qM26_c36, qM26_c37, qM26_c38, qM26_c39, qM26_c40, qM26_c41, qM26_c42, qM26_c43, qM26_c44, qM26_c45, qM26_c46, qM26_c47, qM26_c48, qM26_c49, qM26_c50, qM26_c51, qM26_c52, qM26_c53, qM26_c54, qM26_c55, qM26_c56, qM26_c57, qM26_c58, qM26_c59, qM26_c60 :  std_logic_vector(1 downto 0);
signal qP25_c6, qP25_c7, qP25_c8, qP25_c9, qP25_c10, qP25_c11, qP25_c12, qP25_c13, qP25_c14, qP25_c15, qP25_c16, qP25_c17, qP25_c18, qP25_c19, qP25_c20, qP25_c21, qP25_c22, qP25_c23, qP25_c24, qP25_c25, qP25_c26, qP25_c27, qP25_c28, qP25_c29, qP25_c30, qP25_c31, qP25_c32, qP25_c33, qP25_c34, qP25_c35, qP25_c36, qP25_c37, qP25_c38, qP25_c39, qP25_c40, qP25_c41, qP25_c42, qP25_c43, qP25_c44, qP25_c45, qP25_c46, qP25_c47, qP25_c48, qP25_c49, qP25_c50, qP25_c51, qP25_c52, qP25_c53, qP25_c54, qP25_c55, qP25_c56, qP25_c57, qP25_c58 :  std_logic_vector(1 downto 0);
signal qM25_c6, qM25_c7, qM25_c8, qM25_c9, qM25_c10, qM25_c11, qM25_c12, qM25_c13, qM25_c14, qM25_c15, qM25_c16, qM25_c17, qM25_c18, qM25_c19, qM25_c20, qM25_c21, qM25_c22, qM25_c23, qM25_c24, qM25_c25, qM25_c26, qM25_c27, qM25_c28, qM25_c29, qM25_c30, qM25_c31, qM25_c32, qM25_c33, qM25_c34, qM25_c35, qM25_c36, qM25_c37, qM25_c38, qM25_c39, qM25_c40, qM25_c41, qM25_c42, qM25_c43, qM25_c44, qM25_c45, qM25_c46, qM25_c47, qM25_c48, qM25_c49, qM25_c50, qM25_c51, qM25_c52, qM25_c53, qM25_c54, qM25_c55, qM25_c56, qM25_c57, qM25_c58, qM25_c59, qM25_c60 :  std_logic_vector(1 downto 0);
signal qP24_c9, qP24_c10, qP24_c11, qP24_c12, qP24_c13, qP24_c14, qP24_c15, qP24_c16, qP24_c17, qP24_c18, qP24_c19, qP24_c20, qP24_c21, qP24_c22, qP24_c23, qP24_c24, qP24_c25, qP24_c26, qP24_c27, qP24_c28, qP24_c29, qP24_c30, qP24_c31, qP24_c32, qP24_c33, qP24_c34, qP24_c35, qP24_c36, qP24_c37, qP24_c38, qP24_c39, qP24_c40, qP24_c41, qP24_c42, qP24_c43, qP24_c44, qP24_c45, qP24_c46, qP24_c47, qP24_c48, qP24_c49, qP24_c50, qP24_c51, qP24_c52, qP24_c53, qP24_c54, qP24_c55, qP24_c56, qP24_c57, qP24_c58 :  std_logic_vector(1 downto 0);
signal qM24_c9, qM24_c10, qM24_c11, qM24_c12, qM24_c13, qM24_c14, qM24_c15, qM24_c16, qM24_c17, qM24_c18, qM24_c19, qM24_c20, qM24_c21, qM24_c22, qM24_c23, qM24_c24, qM24_c25, qM24_c26, qM24_c27, qM24_c28, qM24_c29, qM24_c30, qM24_c31, qM24_c32, qM24_c33, qM24_c34, qM24_c35, qM24_c36, qM24_c37, qM24_c38, qM24_c39, qM24_c40, qM24_c41, qM24_c42, qM24_c43, qM24_c44, qM24_c45, qM24_c46, qM24_c47, qM24_c48, qM24_c49, qM24_c50, qM24_c51, qM24_c52, qM24_c53, qM24_c54, qM24_c55, qM24_c56, qM24_c57, qM24_c58, qM24_c59, qM24_c60 :  std_logic_vector(1 downto 0);
signal qP23_c11, qP23_c12, qP23_c13, qP23_c14, qP23_c15, qP23_c16, qP23_c17, qP23_c18, qP23_c19, qP23_c20, qP23_c21, qP23_c22, qP23_c23, qP23_c24, qP23_c25, qP23_c26, qP23_c27, qP23_c28, qP23_c29, qP23_c30, qP23_c31, qP23_c32, qP23_c33, qP23_c34, qP23_c35, qP23_c36, qP23_c37, qP23_c38, qP23_c39, qP23_c40, qP23_c41, qP23_c42, qP23_c43, qP23_c44, qP23_c45, qP23_c46, qP23_c47, qP23_c48, qP23_c49, qP23_c50, qP23_c51, qP23_c52, qP23_c53, qP23_c54, qP23_c55, qP23_c56, qP23_c57, qP23_c58 :  std_logic_vector(1 downto 0);
signal qM23_c11, qM23_c12, qM23_c13, qM23_c14, qM23_c15, qM23_c16, qM23_c17, qM23_c18, qM23_c19, qM23_c20, qM23_c21, qM23_c22, qM23_c23, qM23_c24, qM23_c25, qM23_c26, qM23_c27, qM23_c28, qM23_c29, qM23_c30, qM23_c31, qM23_c32, qM23_c33, qM23_c34, qM23_c35, qM23_c36, qM23_c37, qM23_c38, qM23_c39, qM23_c40, qM23_c41, qM23_c42, qM23_c43, qM23_c44, qM23_c45, qM23_c46, qM23_c47, qM23_c48, qM23_c49, qM23_c50, qM23_c51, qM23_c52, qM23_c53, qM23_c54, qM23_c55, qM23_c56, qM23_c57, qM23_c58, qM23_c59, qM23_c60 :  std_logic_vector(1 downto 0);
signal qP22_c13, qP22_c14, qP22_c15, qP22_c16, qP22_c17, qP22_c18, qP22_c19, qP22_c20, qP22_c21, qP22_c22, qP22_c23, qP22_c24, qP22_c25, qP22_c26, qP22_c27, qP22_c28, qP22_c29, qP22_c30, qP22_c31, qP22_c32, qP22_c33, qP22_c34, qP22_c35, qP22_c36, qP22_c37, qP22_c38, qP22_c39, qP22_c40, qP22_c41, qP22_c42, qP22_c43, qP22_c44, qP22_c45, qP22_c46, qP22_c47, qP22_c48, qP22_c49, qP22_c50, qP22_c51, qP22_c52, qP22_c53, qP22_c54, qP22_c55, qP22_c56, qP22_c57, qP22_c58 :  std_logic_vector(1 downto 0);
signal qM22_c13, qM22_c14, qM22_c15, qM22_c16, qM22_c17, qM22_c18, qM22_c19, qM22_c20, qM22_c21, qM22_c22, qM22_c23, qM22_c24, qM22_c25, qM22_c26, qM22_c27, qM22_c28, qM22_c29, qM22_c30, qM22_c31, qM22_c32, qM22_c33, qM22_c34, qM22_c35, qM22_c36, qM22_c37, qM22_c38, qM22_c39, qM22_c40, qM22_c41, qM22_c42, qM22_c43, qM22_c44, qM22_c45, qM22_c46, qM22_c47, qM22_c48, qM22_c49, qM22_c50, qM22_c51, qM22_c52, qM22_c53, qM22_c54, qM22_c55, qM22_c56, qM22_c57, qM22_c58, qM22_c59, qM22_c60 :  std_logic_vector(1 downto 0);
signal qP21_c15, qP21_c16, qP21_c17, qP21_c18, qP21_c19, qP21_c20, qP21_c21, qP21_c22, qP21_c23, qP21_c24, qP21_c25, qP21_c26, qP21_c27, qP21_c28, qP21_c29, qP21_c30, qP21_c31, qP21_c32, qP21_c33, qP21_c34, qP21_c35, qP21_c36, qP21_c37, qP21_c38, qP21_c39, qP21_c40, qP21_c41, qP21_c42, qP21_c43, qP21_c44, qP21_c45, qP21_c46, qP21_c47, qP21_c48, qP21_c49, qP21_c50, qP21_c51, qP21_c52, qP21_c53, qP21_c54, qP21_c55, qP21_c56, qP21_c57, qP21_c58 :  std_logic_vector(1 downto 0);
signal qM21_c15, qM21_c16, qM21_c17, qM21_c18, qM21_c19, qM21_c20, qM21_c21, qM21_c22, qM21_c23, qM21_c24, qM21_c25, qM21_c26, qM21_c27, qM21_c28, qM21_c29, qM21_c30, qM21_c31, qM21_c32, qM21_c33, qM21_c34, qM21_c35, qM21_c36, qM21_c37, qM21_c38, qM21_c39, qM21_c40, qM21_c41, qM21_c42, qM21_c43, qM21_c44, qM21_c45, qM21_c46, qM21_c47, qM21_c48, qM21_c49, qM21_c50, qM21_c51, qM21_c52, qM21_c53, qM21_c54, qM21_c55, qM21_c56, qM21_c57, qM21_c58, qM21_c59, qM21_c60 :  std_logic_vector(1 downto 0);
signal qP20_c17, qP20_c18, qP20_c19, qP20_c20, qP20_c21, qP20_c22, qP20_c23, qP20_c24, qP20_c25, qP20_c26, qP20_c27, qP20_c28, qP20_c29, qP20_c30, qP20_c31, qP20_c32, qP20_c33, qP20_c34, qP20_c35, qP20_c36, qP20_c37, qP20_c38, qP20_c39, qP20_c40, qP20_c41, qP20_c42, qP20_c43, qP20_c44, qP20_c45, qP20_c46, qP20_c47, qP20_c48, qP20_c49, qP20_c50, qP20_c51, qP20_c52, qP20_c53, qP20_c54, qP20_c55, qP20_c56, qP20_c57, qP20_c58 :  std_logic_vector(1 downto 0);
signal qM20_c17, qM20_c18, qM20_c19, qM20_c20, qM20_c21, qM20_c22, qM20_c23, qM20_c24, qM20_c25, qM20_c26, qM20_c27, qM20_c28, qM20_c29, qM20_c30, qM20_c31, qM20_c32, qM20_c33, qM20_c34, qM20_c35, qM20_c36, qM20_c37, qM20_c38, qM20_c39, qM20_c40, qM20_c41, qM20_c42, qM20_c43, qM20_c44, qM20_c45, qM20_c46, qM20_c47, qM20_c48, qM20_c49, qM20_c50, qM20_c51, qM20_c52, qM20_c53, qM20_c54, qM20_c55, qM20_c56, qM20_c57, qM20_c58, qM20_c59, qM20_c60 :  std_logic_vector(1 downto 0);
signal qP19_c19, qP19_c20, qP19_c21, qP19_c22, qP19_c23, qP19_c24, qP19_c25, qP19_c26, qP19_c27, qP19_c28, qP19_c29, qP19_c30, qP19_c31, qP19_c32, qP19_c33, qP19_c34, qP19_c35, qP19_c36, qP19_c37, qP19_c38, qP19_c39, qP19_c40, qP19_c41, qP19_c42, qP19_c43, qP19_c44, qP19_c45, qP19_c46, qP19_c47, qP19_c48, qP19_c49, qP19_c50, qP19_c51, qP19_c52, qP19_c53, qP19_c54, qP19_c55, qP19_c56, qP19_c57, qP19_c58 :  std_logic_vector(1 downto 0);
signal qM19_c19, qM19_c20, qM19_c21, qM19_c22, qM19_c23, qM19_c24, qM19_c25, qM19_c26, qM19_c27, qM19_c28, qM19_c29, qM19_c30, qM19_c31, qM19_c32, qM19_c33, qM19_c34, qM19_c35, qM19_c36, qM19_c37, qM19_c38, qM19_c39, qM19_c40, qM19_c41, qM19_c42, qM19_c43, qM19_c44, qM19_c45, qM19_c46, qM19_c47, qM19_c48, qM19_c49, qM19_c50, qM19_c51, qM19_c52, qM19_c53, qM19_c54, qM19_c55, qM19_c56, qM19_c57, qM19_c58, qM19_c59, qM19_c60 :  std_logic_vector(1 downto 0);
signal qP18_c22, qP18_c23, qP18_c24, qP18_c25, qP18_c26, qP18_c27, qP18_c28, qP18_c29, qP18_c30, qP18_c31, qP18_c32, qP18_c33, qP18_c34, qP18_c35, qP18_c36, qP18_c37, qP18_c38, qP18_c39, qP18_c40, qP18_c41, qP18_c42, qP18_c43, qP18_c44, qP18_c45, qP18_c46, qP18_c47, qP18_c48, qP18_c49, qP18_c50, qP18_c51, qP18_c52, qP18_c53, qP18_c54, qP18_c55, qP18_c56, qP18_c57, qP18_c58 :  std_logic_vector(1 downto 0);
signal qM18_c22, qM18_c23, qM18_c24, qM18_c25, qM18_c26, qM18_c27, qM18_c28, qM18_c29, qM18_c30, qM18_c31, qM18_c32, qM18_c33, qM18_c34, qM18_c35, qM18_c36, qM18_c37, qM18_c38, qM18_c39, qM18_c40, qM18_c41, qM18_c42, qM18_c43, qM18_c44, qM18_c45, qM18_c46, qM18_c47, qM18_c48, qM18_c49, qM18_c50, qM18_c51, qM18_c52, qM18_c53, qM18_c54, qM18_c55, qM18_c56, qM18_c57, qM18_c58, qM18_c59, qM18_c60 :  std_logic_vector(1 downto 0);
signal qP17_c24, qP17_c25, qP17_c26, qP17_c27, qP17_c28, qP17_c29, qP17_c30, qP17_c31, qP17_c32, qP17_c33, qP17_c34, qP17_c35, qP17_c36, qP17_c37, qP17_c38, qP17_c39, qP17_c40, qP17_c41, qP17_c42, qP17_c43, qP17_c44, qP17_c45, qP17_c46, qP17_c47, qP17_c48, qP17_c49, qP17_c50, qP17_c51, qP17_c52, qP17_c53, qP17_c54, qP17_c55, qP17_c56, qP17_c57, qP17_c58 :  std_logic_vector(1 downto 0);
signal qM17_c24, qM17_c25, qM17_c26, qM17_c27, qM17_c28, qM17_c29, qM17_c30, qM17_c31, qM17_c32, qM17_c33, qM17_c34, qM17_c35, qM17_c36, qM17_c37, qM17_c38, qM17_c39, qM17_c40, qM17_c41, qM17_c42, qM17_c43, qM17_c44, qM17_c45, qM17_c46, qM17_c47, qM17_c48, qM17_c49, qM17_c50, qM17_c51, qM17_c52, qM17_c53, qM17_c54, qM17_c55, qM17_c56, qM17_c57, qM17_c58, qM17_c59, qM17_c60 :  std_logic_vector(1 downto 0);
signal qP16_c26, qP16_c27, qP16_c28, qP16_c29, qP16_c30, qP16_c31, qP16_c32, qP16_c33, qP16_c34, qP16_c35, qP16_c36, qP16_c37, qP16_c38, qP16_c39, qP16_c40, qP16_c41, qP16_c42, qP16_c43, qP16_c44, qP16_c45, qP16_c46, qP16_c47, qP16_c48, qP16_c49, qP16_c50, qP16_c51, qP16_c52, qP16_c53, qP16_c54, qP16_c55, qP16_c56, qP16_c57, qP16_c58 :  std_logic_vector(1 downto 0);
signal qM16_c26, qM16_c27, qM16_c28, qM16_c29, qM16_c30, qM16_c31, qM16_c32, qM16_c33, qM16_c34, qM16_c35, qM16_c36, qM16_c37, qM16_c38, qM16_c39, qM16_c40, qM16_c41, qM16_c42, qM16_c43, qM16_c44, qM16_c45, qM16_c46, qM16_c47, qM16_c48, qM16_c49, qM16_c50, qM16_c51, qM16_c52, qM16_c53, qM16_c54, qM16_c55, qM16_c56, qM16_c57, qM16_c58, qM16_c59, qM16_c60 :  std_logic_vector(1 downto 0);
signal qP15_c28, qP15_c29, qP15_c30, qP15_c31, qP15_c32, qP15_c33, qP15_c34, qP15_c35, qP15_c36, qP15_c37, qP15_c38, qP15_c39, qP15_c40, qP15_c41, qP15_c42, qP15_c43, qP15_c44, qP15_c45, qP15_c46, qP15_c47, qP15_c48, qP15_c49, qP15_c50, qP15_c51, qP15_c52, qP15_c53, qP15_c54, qP15_c55, qP15_c56, qP15_c57, qP15_c58 :  std_logic_vector(1 downto 0);
signal qM15_c28, qM15_c29, qM15_c30, qM15_c31, qM15_c32, qM15_c33, qM15_c34, qM15_c35, qM15_c36, qM15_c37, qM15_c38, qM15_c39, qM15_c40, qM15_c41, qM15_c42, qM15_c43, qM15_c44, qM15_c45, qM15_c46, qM15_c47, qM15_c48, qM15_c49, qM15_c50, qM15_c51, qM15_c52, qM15_c53, qM15_c54, qM15_c55, qM15_c56, qM15_c57, qM15_c58, qM15_c59, qM15_c60 :  std_logic_vector(1 downto 0);
signal qP14_c30, qP14_c31, qP14_c32, qP14_c33, qP14_c34, qP14_c35, qP14_c36, qP14_c37, qP14_c38, qP14_c39, qP14_c40, qP14_c41, qP14_c42, qP14_c43, qP14_c44, qP14_c45, qP14_c46, qP14_c47, qP14_c48, qP14_c49, qP14_c50, qP14_c51, qP14_c52, qP14_c53, qP14_c54, qP14_c55, qP14_c56, qP14_c57, qP14_c58 :  std_logic_vector(1 downto 0);
signal qM14_c30, qM14_c31, qM14_c32, qM14_c33, qM14_c34, qM14_c35, qM14_c36, qM14_c37, qM14_c38, qM14_c39, qM14_c40, qM14_c41, qM14_c42, qM14_c43, qM14_c44, qM14_c45, qM14_c46, qM14_c47, qM14_c48, qM14_c49, qM14_c50, qM14_c51, qM14_c52, qM14_c53, qM14_c54, qM14_c55, qM14_c56, qM14_c57, qM14_c58, qM14_c59, qM14_c60 :  std_logic_vector(1 downto 0);
signal qP13_c32, qP13_c33, qP13_c34, qP13_c35, qP13_c36, qP13_c37, qP13_c38, qP13_c39, qP13_c40, qP13_c41, qP13_c42, qP13_c43, qP13_c44, qP13_c45, qP13_c46, qP13_c47, qP13_c48, qP13_c49, qP13_c50, qP13_c51, qP13_c52, qP13_c53, qP13_c54, qP13_c55, qP13_c56, qP13_c57, qP13_c58 :  std_logic_vector(1 downto 0);
signal qM13_c32, qM13_c33, qM13_c34, qM13_c35, qM13_c36, qM13_c37, qM13_c38, qM13_c39, qM13_c40, qM13_c41, qM13_c42, qM13_c43, qM13_c44, qM13_c45, qM13_c46, qM13_c47, qM13_c48, qM13_c49, qM13_c50, qM13_c51, qM13_c52, qM13_c53, qM13_c54, qM13_c55, qM13_c56, qM13_c57, qM13_c58, qM13_c59, qM13_c60 :  std_logic_vector(1 downto 0);
signal qP12_c34, qP12_c35, qP12_c36, qP12_c37, qP12_c38, qP12_c39, qP12_c40, qP12_c41, qP12_c42, qP12_c43, qP12_c44, qP12_c45, qP12_c46, qP12_c47, qP12_c48, qP12_c49, qP12_c50, qP12_c51, qP12_c52, qP12_c53, qP12_c54, qP12_c55, qP12_c56, qP12_c57, qP12_c58 :  std_logic_vector(1 downto 0);
signal qM12_c34, qM12_c35, qM12_c36, qM12_c37, qM12_c38, qM12_c39, qM12_c40, qM12_c41, qM12_c42, qM12_c43, qM12_c44, qM12_c45, qM12_c46, qM12_c47, qM12_c48, qM12_c49, qM12_c50, qM12_c51, qM12_c52, qM12_c53, qM12_c54, qM12_c55, qM12_c56, qM12_c57, qM12_c58, qM12_c59, qM12_c60 :  std_logic_vector(1 downto 0);
signal qP11_c37, qP11_c38, qP11_c39, qP11_c40, qP11_c41, qP11_c42, qP11_c43, qP11_c44, qP11_c45, qP11_c46, qP11_c47, qP11_c48, qP11_c49, qP11_c50, qP11_c51, qP11_c52, qP11_c53, qP11_c54, qP11_c55, qP11_c56, qP11_c57, qP11_c58 :  std_logic_vector(1 downto 0);
signal qM11_c37, qM11_c38, qM11_c39, qM11_c40, qM11_c41, qM11_c42, qM11_c43, qM11_c44, qM11_c45, qM11_c46, qM11_c47, qM11_c48, qM11_c49, qM11_c50, qM11_c51, qM11_c52, qM11_c53, qM11_c54, qM11_c55, qM11_c56, qM11_c57, qM11_c58, qM11_c59, qM11_c60 :  std_logic_vector(1 downto 0);
signal qP10_c39, qP10_c40, qP10_c41, qP10_c42, qP10_c43, qP10_c44, qP10_c45, qP10_c46, qP10_c47, qP10_c48, qP10_c49, qP10_c50, qP10_c51, qP10_c52, qP10_c53, qP10_c54, qP10_c55, qP10_c56, qP10_c57, qP10_c58 :  std_logic_vector(1 downto 0);
signal qM10_c39, qM10_c40, qM10_c41, qM10_c42, qM10_c43, qM10_c44, qM10_c45, qM10_c46, qM10_c47, qM10_c48, qM10_c49, qM10_c50, qM10_c51, qM10_c52, qM10_c53, qM10_c54, qM10_c55, qM10_c56, qM10_c57, qM10_c58, qM10_c59, qM10_c60 :  std_logic_vector(1 downto 0);
signal qP9_c41, qP9_c42, qP9_c43, qP9_c44, qP9_c45, qP9_c46, qP9_c47, qP9_c48, qP9_c49, qP9_c50, qP9_c51, qP9_c52, qP9_c53, qP9_c54, qP9_c55, qP9_c56, qP9_c57, qP9_c58 :  std_logic_vector(1 downto 0);
signal qM9_c41, qM9_c42, qM9_c43, qM9_c44, qM9_c45, qM9_c46, qM9_c47, qM9_c48, qM9_c49, qM9_c50, qM9_c51, qM9_c52, qM9_c53, qM9_c54, qM9_c55, qM9_c56, qM9_c57, qM9_c58, qM9_c59, qM9_c60 :  std_logic_vector(1 downto 0);
signal qP8_c43, qP8_c44, qP8_c45, qP8_c46, qP8_c47, qP8_c48, qP8_c49, qP8_c50, qP8_c51, qP8_c52, qP8_c53, qP8_c54, qP8_c55, qP8_c56, qP8_c57, qP8_c58 :  std_logic_vector(1 downto 0);
signal qM8_c43, qM8_c44, qM8_c45, qM8_c46, qM8_c47, qM8_c48, qM8_c49, qM8_c50, qM8_c51, qM8_c52, qM8_c53, qM8_c54, qM8_c55, qM8_c56, qM8_c57, qM8_c58, qM8_c59, qM8_c60 :  std_logic_vector(1 downto 0);
signal qP7_c45, qP7_c46, qP7_c47, qP7_c48, qP7_c49, qP7_c50, qP7_c51, qP7_c52, qP7_c53, qP7_c54, qP7_c55, qP7_c56, qP7_c57, qP7_c58 :  std_logic_vector(1 downto 0);
signal qM7_c45, qM7_c46, qM7_c47, qM7_c48, qM7_c49, qM7_c50, qM7_c51, qM7_c52, qM7_c53, qM7_c54, qM7_c55, qM7_c56, qM7_c57, qM7_c58, qM7_c59, qM7_c60 :  std_logic_vector(1 downto 0);
signal qP6_c47, qP6_c48, qP6_c49, qP6_c50, qP6_c51, qP6_c52, qP6_c53, qP6_c54, qP6_c55, qP6_c56, qP6_c57, qP6_c58 :  std_logic_vector(1 downto 0);
signal qM6_c47, qM6_c48, qM6_c49, qM6_c50, qM6_c51, qM6_c52, qM6_c53, qM6_c54, qM6_c55, qM6_c56, qM6_c57, qM6_c58, qM6_c59, qM6_c60 :  std_logic_vector(1 downto 0);
signal qP5_c49, qP5_c50, qP5_c51, qP5_c52, qP5_c53, qP5_c54, qP5_c55, qP5_c56, qP5_c57, qP5_c58 :  std_logic_vector(1 downto 0);
signal qM5_c49, qM5_c50, qM5_c51, qM5_c52, qM5_c53, qM5_c54, qM5_c55, qM5_c56, qM5_c57, qM5_c58, qM5_c59, qM5_c60 :  std_logic_vector(1 downto 0);
signal qP4_c52, qP4_c53, qP4_c54, qP4_c55, qP4_c56, qP4_c57, qP4_c58 :  std_logic_vector(1 downto 0);
signal qM4_c52, qM4_c53, qM4_c54, qM4_c55, qM4_c56, qM4_c57, qM4_c58, qM4_c59, qM4_c60 :  std_logic_vector(1 downto 0);
signal qP3_c54, qP3_c55, qP3_c56, qP3_c57, qP3_c58 :  std_logic_vector(1 downto 0);
signal qM3_c54, qM3_c55, qM3_c56, qM3_c57, qM3_c58, qM3_c59, qM3_c60 :  std_logic_vector(1 downto 0);
signal qP2_c56, qP2_c57, qP2_c58 :  std_logic_vector(1 downto 0);
signal qM2_c56, qM2_c57, qM2_c58, qM2_c59, qM2_c60 :  std_logic_vector(1 downto 0);
signal qP1_c58 :  std_logic_vector(1 downto 0);
signal qM1_c58, qM1_c59, qM1_c60 :  std_logic_vector(1 downto 0);
signal qP_c58, qP_c59, qP_c60, qP_c61 :  std_logic_vector(55 downto 0);
signal qM_c60, qM_c61 :  std_logic_vector(55 downto 0);
signal quotient_c61 :  std_logic_vector(55 downto 0);
signal mR_c61, mR_c62 :  std_logic_vector(54 downto 0);
signal fRnorm_c61, fRnorm_c62 :  std_logic_vector(52 downto 0);
signal round_c61, round_c62 :  std_logic;
signal expR1_c62 :  std_logic_vector(12 downto 0);
signal expfrac_c62 :  std_logic_vector(64 downto 0);
signal expfracR_c62, expfracR_c63 :  std_logic_vector(64 downto 0);
signal exnR_c63 :  std_logic_vector(1 downto 0);
signal exnRfinal_c63 :  std_logic_vector(1 downto 0);
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
               betaw28_c2 <= betaw28_c1;
               q28_c2 <= q28_c1;
               absq28D_c2 <= absq28D_c1;
               qP28_c2 <= qP28_c1;
               qM28_c2 <= qM28_c1;
            end if;
            if ce_3 = '1' then
               expR0_c3 <= expR0_c2;
               sR_c3 <= sR_c2;
               exnR0_c3 <= exnR0_c2;
               D_c3 <= D_c2;
               betaw27_c3 <= betaw27_c2;
               q27_c3 <= q27_c2;
               absq27D_c3 <= absq27D_c2;
               qP28_c3 <= qP28_c2;
               qM28_c3 <= qM28_c2;
               qP27_c3 <= qP27_c2;
               qM27_c3 <= qM27_c2;
            end if;
            if ce_4 = '1' then
               expR0_c4 <= expR0_c3;
               sR_c4 <= sR_c3;
               exnR0_c4 <= exnR0_c3;
               D_c4 <= D_c3;
               betaw27_c4 <= betaw27_c3;
               q27_c4 <= q27_c3;
               absq27D_c4 <= absq27D_c3;
               qP28_c4 <= qP28_c3;
               qM28_c4 <= qM28_c3;
               qP27_c4 <= qP27_c3;
               qM27_c4 <= qM27_c3;
            end if;
            if ce_5 = '1' then
               expR0_c5 <= expR0_c4;
               sR_c5 <= sR_c4;
               exnR0_c5 <= exnR0_c4;
               D_c5 <= D_c4;
               betaw26_c5 <= betaw26_c4;
               q26_c5 <= q26_c4;
               absq26D_c5 <= absq26D_c4;
               qP28_c5 <= qP28_c4;
               qM28_c5 <= qM28_c4;
               qP27_c5 <= qP27_c4;
               qM27_c5 <= qM27_c4;
               qP26_c5 <= qP26_c4;
               qM26_c5 <= qM26_c4;
            end if;
            if ce_6 = '1' then
               expR0_c6 <= expR0_c5;
               sR_c6 <= sR_c5;
               exnR0_c6 <= exnR0_c5;
               D_c6 <= D_c5;
               betaw26_c6 <= betaw26_c5;
               q26_c6 <= q26_c5;
               absq26D_c6 <= absq26D_c5;
               qP28_c6 <= qP28_c5;
               qM28_c6 <= qM28_c5;
               qP27_c6 <= qP27_c5;
               qM27_c6 <= qM27_c5;
               qP26_c6 <= qP26_c5;
               qM26_c6 <= qM26_c5;
            end if;
            if ce_7 = '1' then
               expR0_c7 <= expR0_c6;
               sR_c7 <= sR_c6;
               exnR0_c7 <= exnR0_c6;
               D_c7 <= D_c6;
               betaw25_c7 <= betaw25_c6;
               q25_c7 <= q25_c6;
               absq25D_c7 <= absq25D_c6;
               qP28_c7 <= qP28_c6;
               qM28_c7 <= qM28_c6;
               qP27_c7 <= qP27_c6;
               qM27_c7 <= qM27_c6;
               qP26_c7 <= qP26_c6;
               qM26_c7 <= qM26_c6;
               qP25_c7 <= qP25_c6;
               qM25_c7 <= qM25_c6;
            end if;
            if ce_8 = '1' then
               expR0_c8 <= expR0_c7;
               sR_c8 <= sR_c7;
               exnR0_c8 <= exnR0_c7;
               D_c8 <= D_c7;
               betaw25_c8 <= betaw25_c7;
               q25_c8 <= q25_c7;
               absq25D_c8 <= absq25D_c7;
               qP28_c8 <= qP28_c7;
               qM28_c8 <= qM28_c7;
               qP27_c8 <= qP27_c7;
               qM27_c8 <= qM27_c7;
               qP26_c8 <= qP26_c7;
               qM26_c8 <= qM26_c7;
               qP25_c8 <= qP25_c7;
               qM25_c8 <= qM25_c7;
            end if;
            if ce_9 = '1' then
               expR0_c9 <= expR0_c8;
               sR_c9 <= sR_c8;
               exnR0_c9 <= exnR0_c8;
               D_c9 <= D_c8;
               betaw24_c9 <= betaw24_c8;
               q24_copy9_c9 <= q24_copy9_c8;
               qP28_c9 <= qP28_c8;
               qM28_c9 <= qM28_c8;
               qP27_c9 <= qP27_c8;
               qM27_c9 <= qM27_c8;
               qP26_c9 <= qP26_c8;
               qM26_c9 <= qM26_c8;
               qP25_c9 <= qP25_c8;
               qM25_c9 <= qM25_c8;
            end if;
            if ce_10 = '1' then
               expR0_c10 <= expR0_c9;
               sR_c10 <= sR_c9;
               exnR0_c10 <= exnR0_c9;
               D_c10 <= D_c9;
               betaw24_c10 <= betaw24_c9;
               q24_c10 <= q24_c9;
               absq24D_c10 <= absq24D_c9;
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
            end if;
            if ce_11 = '1' then
               expR0_c11 <= expR0_c10;
               sR_c11 <= sR_c10;
               exnR0_c11 <= exnR0_c10;
               D_c11 <= D_c10;
               betaw23_c11 <= betaw23_c10;
               q23_copy10_c11 <= q23_copy10_c10;
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
            end if;
            if ce_12 = '1' then
               expR0_c12 <= expR0_c11;
               sR_c12 <= sR_c11;
               exnR0_c12 <= exnR0_c11;
               D_c12 <= D_c11;
               betaw23_c12 <= betaw23_c11;
               q23_c12 <= q23_c11;
               absq23D_c12 <= absq23D_c11;
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
            end if;
            if ce_13 = '1' then
               expR0_c13 <= expR0_c12;
               sR_c13 <= sR_c12;
               exnR0_c13 <= exnR0_c12;
               D_c13 <= D_c12;
               betaw22_c13 <= betaw22_c12;
               q22_copy11_c13 <= q22_copy11_c12;
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
            end if;
            if ce_14 = '1' then
               expR0_c14 <= expR0_c13;
               sR_c14 <= sR_c13;
               exnR0_c14 <= exnR0_c13;
               D_c14 <= D_c13;
               betaw22_c14 <= betaw22_c13;
               q22_c14 <= q22_c13;
               absq22D_c14 <= absq22D_c13;
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
            end if;
            if ce_15 = '1' then
               expR0_c15 <= expR0_c14;
               sR_c15 <= sR_c14;
               exnR0_c15 <= exnR0_c14;
               D_c15 <= D_c14;
               betaw22_c15 <= betaw22_c14;
               q22_c15 <= q22_c14;
               absq22D_c15 <= absq22D_c14;
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
            end if;
            if ce_16 = '1' then
               expR0_c16 <= expR0_c15;
               sR_c16 <= sR_c15;
               exnR0_c16 <= exnR0_c15;
               D_c16 <= D_c15;
               betaw21_c16 <= betaw21_c15;
               q21_c16 <= q21_c15;
               absq21D_c16 <= absq21D_c15;
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
            end if;
            if ce_17 = '1' then
               expR0_c17 <= expR0_c16;
               sR_c17 <= sR_c16;
               exnR0_c17 <= exnR0_c16;
               D_c17 <= D_c16;
               betaw21_c17 <= betaw21_c16;
               q21_c17 <= q21_c16;
               absq21D_c17 <= absq21D_c16;
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
            end if;
            if ce_18 = '1' then
               expR0_c18 <= expR0_c17;
               sR_c18 <= sR_c17;
               exnR0_c18 <= exnR0_c17;
               D_c18 <= D_c17;
               betaw20_c18 <= betaw20_c17;
               q20_c18 <= q20_c17;
               absq20D_c18 <= absq20D_c17;
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
            end if;
            if ce_19 = '1' then
               expR0_c19 <= expR0_c18;
               sR_c19 <= sR_c18;
               exnR0_c19 <= exnR0_c18;
               D_c19 <= D_c18;
               betaw20_c19 <= betaw20_c18;
               q20_c19 <= q20_c18;
               absq20D_c19 <= absq20D_c18;
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
            end if;
            if ce_20 = '1' then
               expR0_c20 <= expR0_c19;
               sR_c20 <= sR_c19;
               exnR0_c20 <= exnR0_c19;
               D_c20 <= D_c19;
               betaw19_c20 <= betaw19_c19;
               q19_c20 <= q19_c19;
               absq19D_c20 <= absq19D_c19;
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
            end if;
            if ce_21 = '1' then
               expR0_c21 <= expR0_c20;
               sR_c21 <= sR_c20;
               exnR0_c21 <= exnR0_c20;
               D_c21 <= D_c20;
               betaw19_c21 <= betaw19_c20;
               q19_c21 <= q19_c20;
               absq19D_c21 <= absq19D_c20;
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
            end if;
            if ce_22 = '1' then
               expR0_c22 <= expR0_c21;
               sR_c22 <= sR_c21;
               exnR0_c22 <= exnR0_c21;
               D_c22 <= D_c21;
               betaw18_c22 <= betaw18_c21;
               q18_copy15_c22 <= q18_copy15_c21;
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
            end if;
            if ce_23 = '1' then
               expR0_c23 <= expR0_c22;
               sR_c23 <= sR_c22;
               exnR0_c23 <= exnR0_c22;
               D_c23 <= D_c22;
               betaw18_c23 <= betaw18_c22;
               q18_c23 <= q18_c22;
               absq18D_c23 <= absq18D_c22;
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
            end if;
            if ce_24 = '1' then
               expR0_c24 <= expR0_c23;
               sR_c24 <= sR_c23;
               exnR0_c24 <= exnR0_c23;
               D_c24 <= D_c23;
               betaw17_c24 <= betaw17_c23;
               q17_copy16_c24 <= q17_copy16_c23;
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
            end if;
            if ce_25 = '1' then
               expR0_c25 <= expR0_c24;
               sR_c25 <= sR_c24;
               exnR0_c25 <= exnR0_c24;
               D_c25 <= D_c24;
               betaw17_c25 <= betaw17_c24;
               q17_c25 <= q17_c24;
               absq17D_c25 <= absq17D_c24;
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
            end if;
            if ce_26 = '1' then
               expR0_c26 <= expR0_c25;
               sR_c26 <= sR_c25;
               exnR0_c26 <= exnR0_c25;
               D_c26 <= D_c25;
               betaw16_c26 <= betaw16_c25;
               q16_copy17_c26 <= q16_copy17_c25;
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
            end if;
            if ce_27 = '1' then
               expR0_c27 <= expR0_c26;
               sR_c27 <= sR_c26;
               exnR0_c27 <= exnR0_c26;
               D_c27 <= D_c26;
               betaw16_c27 <= betaw16_c26;
               q16_c27 <= q16_c26;
               absq16D_c27 <= absq16D_c26;
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
            end if;
            if ce_28 = '1' then
               expR0_c28 <= expR0_c27;
               sR_c28 <= sR_c27;
               exnR0_c28 <= exnR0_c27;
               D_c28 <= D_c27;
               betaw15_c28 <= betaw15_c27;
               q15_copy18_c28 <= q15_copy18_c27;
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
            end if;
            if ce_29 = '1' then
               expR0_c29 <= expR0_c28;
               sR_c29 <= sR_c28;
               exnR0_c29 <= exnR0_c28;
               D_c29 <= D_c28;
               betaw15_c29 <= betaw15_c28;
               q15_c29 <= q15_c28;
               absq15D_c29 <= absq15D_c28;
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
            end if;
            if ce_30 = '1' then
               expR0_c30 <= expR0_c29;
               sR_c30 <= sR_c29;
               exnR0_c30 <= exnR0_c29;
               D_c30 <= D_c29;
               betaw15_c30 <= betaw15_c29;
               q15_c30 <= q15_c29;
               absq15D_c30 <= absq15D_c29;
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
            end if;
            if ce_31 = '1' then
               expR0_c31 <= expR0_c30;
               sR_c31 <= sR_c30;
               exnR0_c31 <= exnR0_c30;
               D_c31 <= D_c30;
               betaw14_c31 <= betaw14_c30;
               q14_c31 <= q14_c30;
               absq14D_c31 <= absq14D_c30;
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
            end if;
            if ce_32 = '1' then
               expR0_c32 <= expR0_c31;
               sR_c32 <= sR_c31;
               exnR0_c32 <= exnR0_c31;
               D_c32 <= D_c31;
               betaw14_c32 <= betaw14_c31;
               q14_c32 <= q14_c31;
               absq14D_c32 <= absq14D_c31;
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
            end if;
            if ce_33 = '1' then
               expR0_c33 <= expR0_c32;
               sR_c33 <= sR_c32;
               exnR0_c33 <= exnR0_c32;
               D_c33 <= D_c32;
               betaw13_c33 <= betaw13_c32;
               q13_c33 <= q13_c32;
               absq13D_c33 <= absq13D_c32;
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
            end if;
            if ce_34 = '1' then
               expR0_c34 <= expR0_c33;
               sR_c34 <= sR_c33;
               exnR0_c34 <= exnR0_c33;
               D_c34 <= D_c33;
               betaw13_c34 <= betaw13_c33;
               q13_c34 <= q13_c33;
               absq13D_c34 <= absq13D_c33;
               qP28_c34 <= qP28_c33;
               qM28_c34 <= qM28_c33;
               qP27_c34 <= qP27_c33;
               qM27_c34 <= qM27_c33;
               qP26_c34 <= qP26_c33;
               qM26_c34 <= qM26_c33;
               qP25_c34 <= qP25_c33;
               qM25_c34 <= qM25_c33;
               qP24_c34 <= qP24_c33;
               qM24_c34 <= qM24_c33;
               qP23_c34 <= qP23_c33;
               qM23_c34 <= qM23_c33;
               qP22_c34 <= qP22_c33;
               qM22_c34 <= qM22_c33;
               qP21_c34 <= qP21_c33;
               qM21_c34 <= qM21_c33;
               qP20_c34 <= qP20_c33;
               qM20_c34 <= qM20_c33;
               qP19_c34 <= qP19_c33;
               qM19_c34 <= qM19_c33;
               qP18_c34 <= qP18_c33;
               qM18_c34 <= qM18_c33;
               qP17_c34 <= qP17_c33;
               qM17_c34 <= qM17_c33;
               qP16_c34 <= qP16_c33;
               qM16_c34 <= qM16_c33;
               qP15_c34 <= qP15_c33;
               qM15_c34 <= qM15_c33;
               qP14_c34 <= qP14_c33;
               qM14_c34 <= qM14_c33;
               qP13_c34 <= qP13_c33;
               qM13_c34 <= qM13_c33;
            end if;
            if ce_35 = '1' then
               expR0_c35 <= expR0_c34;
               sR_c35 <= sR_c34;
               exnR0_c35 <= exnR0_c34;
               D_c35 <= D_c34;
               betaw12_c35 <= betaw12_c34;
               q12_c35 <= q12_c34;
               absq12D_c35 <= absq12D_c34;
               qP28_c35 <= qP28_c34;
               qM28_c35 <= qM28_c34;
               qP27_c35 <= qP27_c34;
               qM27_c35 <= qM27_c34;
               qP26_c35 <= qP26_c34;
               qM26_c35 <= qM26_c34;
               qP25_c35 <= qP25_c34;
               qM25_c35 <= qM25_c34;
               qP24_c35 <= qP24_c34;
               qM24_c35 <= qM24_c34;
               qP23_c35 <= qP23_c34;
               qM23_c35 <= qM23_c34;
               qP22_c35 <= qP22_c34;
               qM22_c35 <= qM22_c34;
               qP21_c35 <= qP21_c34;
               qM21_c35 <= qM21_c34;
               qP20_c35 <= qP20_c34;
               qM20_c35 <= qM20_c34;
               qP19_c35 <= qP19_c34;
               qM19_c35 <= qM19_c34;
               qP18_c35 <= qP18_c34;
               qM18_c35 <= qM18_c34;
               qP17_c35 <= qP17_c34;
               qM17_c35 <= qM17_c34;
               qP16_c35 <= qP16_c34;
               qM16_c35 <= qM16_c34;
               qP15_c35 <= qP15_c34;
               qM15_c35 <= qM15_c34;
               qP14_c35 <= qP14_c34;
               qM14_c35 <= qM14_c34;
               qP13_c35 <= qP13_c34;
               qM13_c35 <= qM13_c34;
               qP12_c35 <= qP12_c34;
               qM12_c35 <= qM12_c34;
            end if;
            if ce_36 = '1' then
               expR0_c36 <= expR0_c35;
               sR_c36 <= sR_c35;
               exnR0_c36 <= exnR0_c35;
               D_c36 <= D_c35;
               betaw12_c36 <= betaw12_c35;
               q12_c36 <= q12_c35;
               absq12D_c36 <= absq12D_c35;
               qP28_c36 <= qP28_c35;
               qM28_c36 <= qM28_c35;
               qP27_c36 <= qP27_c35;
               qM27_c36 <= qM27_c35;
               qP26_c36 <= qP26_c35;
               qM26_c36 <= qM26_c35;
               qP25_c36 <= qP25_c35;
               qM25_c36 <= qM25_c35;
               qP24_c36 <= qP24_c35;
               qM24_c36 <= qM24_c35;
               qP23_c36 <= qP23_c35;
               qM23_c36 <= qM23_c35;
               qP22_c36 <= qP22_c35;
               qM22_c36 <= qM22_c35;
               qP21_c36 <= qP21_c35;
               qM21_c36 <= qM21_c35;
               qP20_c36 <= qP20_c35;
               qM20_c36 <= qM20_c35;
               qP19_c36 <= qP19_c35;
               qM19_c36 <= qM19_c35;
               qP18_c36 <= qP18_c35;
               qM18_c36 <= qM18_c35;
               qP17_c36 <= qP17_c35;
               qM17_c36 <= qM17_c35;
               qP16_c36 <= qP16_c35;
               qM16_c36 <= qM16_c35;
               qP15_c36 <= qP15_c35;
               qM15_c36 <= qM15_c35;
               qP14_c36 <= qP14_c35;
               qM14_c36 <= qM14_c35;
               qP13_c36 <= qP13_c35;
               qM13_c36 <= qM13_c35;
               qP12_c36 <= qP12_c35;
               qM12_c36 <= qM12_c35;
            end if;
            if ce_37 = '1' then
               expR0_c37 <= expR0_c36;
               sR_c37 <= sR_c36;
               exnR0_c37 <= exnR0_c36;
               D_c37 <= D_c36;
               betaw11_c37 <= betaw11_c36;
               q11_copy22_c37 <= q11_copy22_c36;
               qP28_c37 <= qP28_c36;
               qM28_c37 <= qM28_c36;
               qP27_c37 <= qP27_c36;
               qM27_c37 <= qM27_c36;
               qP26_c37 <= qP26_c36;
               qM26_c37 <= qM26_c36;
               qP25_c37 <= qP25_c36;
               qM25_c37 <= qM25_c36;
               qP24_c37 <= qP24_c36;
               qM24_c37 <= qM24_c36;
               qP23_c37 <= qP23_c36;
               qM23_c37 <= qM23_c36;
               qP22_c37 <= qP22_c36;
               qM22_c37 <= qM22_c36;
               qP21_c37 <= qP21_c36;
               qM21_c37 <= qM21_c36;
               qP20_c37 <= qP20_c36;
               qM20_c37 <= qM20_c36;
               qP19_c37 <= qP19_c36;
               qM19_c37 <= qM19_c36;
               qP18_c37 <= qP18_c36;
               qM18_c37 <= qM18_c36;
               qP17_c37 <= qP17_c36;
               qM17_c37 <= qM17_c36;
               qP16_c37 <= qP16_c36;
               qM16_c37 <= qM16_c36;
               qP15_c37 <= qP15_c36;
               qM15_c37 <= qM15_c36;
               qP14_c37 <= qP14_c36;
               qM14_c37 <= qM14_c36;
               qP13_c37 <= qP13_c36;
               qM13_c37 <= qM13_c36;
               qP12_c37 <= qP12_c36;
               qM12_c37 <= qM12_c36;
            end if;
            if ce_38 = '1' then
               expR0_c38 <= expR0_c37;
               sR_c38 <= sR_c37;
               exnR0_c38 <= exnR0_c37;
               D_c38 <= D_c37;
               betaw11_c38 <= betaw11_c37;
               q11_c38 <= q11_c37;
               absq11D_c38 <= absq11D_c37;
               qP28_c38 <= qP28_c37;
               qM28_c38 <= qM28_c37;
               qP27_c38 <= qP27_c37;
               qM27_c38 <= qM27_c37;
               qP26_c38 <= qP26_c37;
               qM26_c38 <= qM26_c37;
               qP25_c38 <= qP25_c37;
               qM25_c38 <= qM25_c37;
               qP24_c38 <= qP24_c37;
               qM24_c38 <= qM24_c37;
               qP23_c38 <= qP23_c37;
               qM23_c38 <= qM23_c37;
               qP22_c38 <= qP22_c37;
               qM22_c38 <= qM22_c37;
               qP21_c38 <= qP21_c37;
               qM21_c38 <= qM21_c37;
               qP20_c38 <= qP20_c37;
               qM20_c38 <= qM20_c37;
               qP19_c38 <= qP19_c37;
               qM19_c38 <= qM19_c37;
               qP18_c38 <= qP18_c37;
               qM18_c38 <= qM18_c37;
               qP17_c38 <= qP17_c37;
               qM17_c38 <= qM17_c37;
               qP16_c38 <= qP16_c37;
               qM16_c38 <= qM16_c37;
               qP15_c38 <= qP15_c37;
               qM15_c38 <= qM15_c37;
               qP14_c38 <= qP14_c37;
               qM14_c38 <= qM14_c37;
               qP13_c38 <= qP13_c37;
               qM13_c38 <= qM13_c37;
               qP12_c38 <= qP12_c37;
               qM12_c38 <= qM12_c37;
               qP11_c38 <= qP11_c37;
               qM11_c38 <= qM11_c37;
            end if;
            if ce_39 = '1' then
               expR0_c39 <= expR0_c38;
               sR_c39 <= sR_c38;
               exnR0_c39 <= exnR0_c38;
               D_c39 <= D_c38;
               betaw10_c39 <= betaw10_c38;
               q10_copy23_c39 <= q10_copy23_c38;
               qP28_c39 <= qP28_c38;
               qM28_c39 <= qM28_c38;
               qP27_c39 <= qP27_c38;
               qM27_c39 <= qM27_c38;
               qP26_c39 <= qP26_c38;
               qM26_c39 <= qM26_c38;
               qP25_c39 <= qP25_c38;
               qM25_c39 <= qM25_c38;
               qP24_c39 <= qP24_c38;
               qM24_c39 <= qM24_c38;
               qP23_c39 <= qP23_c38;
               qM23_c39 <= qM23_c38;
               qP22_c39 <= qP22_c38;
               qM22_c39 <= qM22_c38;
               qP21_c39 <= qP21_c38;
               qM21_c39 <= qM21_c38;
               qP20_c39 <= qP20_c38;
               qM20_c39 <= qM20_c38;
               qP19_c39 <= qP19_c38;
               qM19_c39 <= qM19_c38;
               qP18_c39 <= qP18_c38;
               qM18_c39 <= qM18_c38;
               qP17_c39 <= qP17_c38;
               qM17_c39 <= qM17_c38;
               qP16_c39 <= qP16_c38;
               qM16_c39 <= qM16_c38;
               qP15_c39 <= qP15_c38;
               qM15_c39 <= qM15_c38;
               qP14_c39 <= qP14_c38;
               qM14_c39 <= qM14_c38;
               qP13_c39 <= qP13_c38;
               qM13_c39 <= qM13_c38;
               qP12_c39 <= qP12_c38;
               qM12_c39 <= qM12_c38;
               qP11_c39 <= qP11_c38;
               qM11_c39 <= qM11_c38;
            end if;
            if ce_40 = '1' then
               expR0_c40 <= expR0_c39;
               sR_c40 <= sR_c39;
               exnR0_c40 <= exnR0_c39;
               D_c40 <= D_c39;
               betaw10_c40 <= betaw10_c39;
               q10_c40 <= q10_c39;
               absq10D_c40 <= absq10D_c39;
               qP28_c40 <= qP28_c39;
               qM28_c40 <= qM28_c39;
               qP27_c40 <= qP27_c39;
               qM27_c40 <= qM27_c39;
               qP26_c40 <= qP26_c39;
               qM26_c40 <= qM26_c39;
               qP25_c40 <= qP25_c39;
               qM25_c40 <= qM25_c39;
               qP24_c40 <= qP24_c39;
               qM24_c40 <= qM24_c39;
               qP23_c40 <= qP23_c39;
               qM23_c40 <= qM23_c39;
               qP22_c40 <= qP22_c39;
               qM22_c40 <= qM22_c39;
               qP21_c40 <= qP21_c39;
               qM21_c40 <= qM21_c39;
               qP20_c40 <= qP20_c39;
               qM20_c40 <= qM20_c39;
               qP19_c40 <= qP19_c39;
               qM19_c40 <= qM19_c39;
               qP18_c40 <= qP18_c39;
               qM18_c40 <= qM18_c39;
               qP17_c40 <= qP17_c39;
               qM17_c40 <= qM17_c39;
               qP16_c40 <= qP16_c39;
               qM16_c40 <= qM16_c39;
               qP15_c40 <= qP15_c39;
               qM15_c40 <= qM15_c39;
               qP14_c40 <= qP14_c39;
               qM14_c40 <= qM14_c39;
               qP13_c40 <= qP13_c39;
               qM13_c40 <= qM13_c39;
               qP12_c40 <= qP12_c39;
               qM12_c40 <= qM12_c39;
               qP11_c40 <= qP11_c39;
               qM11_c40 <= qM11_c39;
               qP10_c40 <= qP10_c39;
               qM10_c40 <= qM10_c39;
            end if;
            if ce_41 = '1' then
               expR0_c41 <= expR0_c40;
               sR_c41 <= sR_c40;
               exnR0_c41 <= exnR0_c40;
               D_c41 <= D_c40;
               betaw9_c41 <= betaw9_c40;
               q9_copy24_c41 <= q9_copy24_c40;
               qP28_c41 <= qP28_c40;
               qM28_c41 <= qM28_c40;
               qP27_c41 <= qP27_c40;
               qM27_c41 <= qM27_c40;
               qP26_c41 <= qP26_c40;
               qM26_c41 <= qM26_c40;
               qP25_c41 <= qP25_c40;
               qM25_c41 <= qM25_c40;
               qP24_c41 <= qP24_c40;
               qM24_c41 <= qM24_c40;
               qP23_c41 <= qP23_c40;
               qM23_c41 <= qM23_c40;
               qP22_c41 <= qP22_c40;
               qM22_c41 <= qM22_c40;
               qP21_c41 <= qP21_c40;
               qM21_c41 <= qM21_c40;
               qP20_c41 <= qP20_c40;
               qM20_c41 <= qM20_c40;
               qP19_c41 <= qP19_c40;
               qM19_c41 <= qM19_c40;
               qP18_c41 <= qP18_c40;
               qM18_c41 <= qM18_c40;
               qP17_c41 <= qP17_c40;
               qM17_c41 <= qM17_c40;
               qP16_c41 <= qP16_c40;
               qM16_c41 <= qM16_c40;
               qP15_c41 <= qP15_c40;
               qM15_c41 <= qM15_c40;
               qP14_c41 <= qP14_c40;
               qM14_c41 <= qM14_c40;
               qP13_c41 <= qP13_c40;
               qM13_c41 <= qM13_c40;
               qP12_c41 <= qP12_c40;
               qM12_c41 <= qM12_c40;
               qP11_c41 <= qP11_c40;
               qM11_c41 <= qM11_c40;
               qP10_c41 <= qP10_c40;
               qM10_c41 <= qM10_c40;
            end if;
            if ce_42 = '1' then
               expR0_c42 <= expR0_c41;
               sR_c42 <= sR_c41;
               exnR0_c42 <= exnR0_c41;
               D_c42 <= D_c41;
               betaw9_c42 <= betaw9_c41;
               q9_c42 <= q9_c41;
               absq9D_c42 <= absq9D_c41;
               qP28_c42 <= qP28_c41;
               qM28_c42 <= qM28_c41;
               qP27_c42 <= qP27_c41;
               qM27_c42 <= qM27_c41;
               qP26_c42 <= qP26_c41;
               qM26_c42 <= qM26_c41;
               qP25_c42 <= qP25_c41;
               qM25_c42 <= qM25_c41;
               qP24_c42 <= qP24_c41;
               qM24_c42 <= qM24_c41;
               qP23_c42 <= qP23_c41;
               qM23_c42 <= qM23_c41;
               qP22_c42 <= qP22_c41;
               qM22_c42 <= qM22_c41;
               qP21_c42 <= qP21_c41;
               qM21_c42 <= qM21_c41;
               qP20_c42 <= qP20_c41;
               qM20_c42 <= qM20_c41;
               qP19_c42 <= qP19_c41;
               qM19_c42 <= qM19_c41;
               qP18_c42 <= qP18_c41;
               qM18_c42 <= qM18_c41;
               qP17_c42 <= qP17_c41;
               qM17_c42 <= qM17_c41;
               qP16_c42 <= qP16_c41;
               qM16_c42 <= qM16_c41;
               qP15_c42 <= qP15_c41;
               qM15_c42 <= qM15_c41;
               qP14_c42 <= qP14_c41;
               qM14_c42 <= qM14_c41;
               qP13_c42 <= qP13_c41;
               qM13_c42 <= qM13_c41;
               qP12_c42 <= qP12_c41;
               qM12_c42 <= qM12_c41;
               qP11_c42 <= qP11_c41;
               qM11_c42 <= qM11_c41;
               qP10_c42 <= qP10_c41;
               qM10_c42 <= qM10_c41;
               qP9_c42 <= qP9_c41;
               qM9_c42 <= qM9_c41;
            end if;
            if ce_43 = '1' then
               expR0_c43 <= expR0_c42;
               sR_c43 <= sR_c42;
               exnR0_c43 <= exnR0_c42;
               D_c43 <= D_c42;
               betaw8_c43 <= betaw8_c42;
               q8_copy25_c43 <= q8_copy25_c42;
               qP28_c43 <= qP28_c42;
               qM28_c43 <= qM28_c42;
               qP27_c43 <= qP27_c42;
               qM27_c43 <= qM27_c42;
               qP26_c43 <= qP26_c42;
               qM26_c43 <= qM26_c42;
               qP25_c43 <= qP25_c42;
               qM25_c43 <= qM25_c42;
               qP24_c43 <= qP24_c42;
               qM24_c43 <= qM24_c42;
               qP23_c43 <= qP23_c42;
               qM23_c43 <= qM23_c42;
               qP22_c43 <= qP22_c42;
               qM22_c43 <= qM22_c42;
               qP21_c43 <= qP21_c42;
               qM21_c43 <= qM21_c42;
               qP20_c43 <= qP20_c42;
               qM20_c43 <= qM20_c42;
               qP19_c43 <= qP19_c42;
               qM19_c43 <= qM19_c42;
               qP18_c43 <= qP18_c42;
               qM18_c43 <= qM18_c42;
               qP17_c43 <= qP17_c42;
               qM17_c43 <= qM17_c42;
               qP16_c43 <= qP16_c42;
               qM16_c43 <= qM16_c42;
               qP15_c43 <= qP15_c42;
               qM15_c43 <= qM15_c42;
               qP14_c43 <= qP14_c42;
               qM14_c43 <= qM14_c42;
               qP13_c43 <= qP13_c42;
               qM13_c43 <= qM13_c42;
               qP12_c43 <= qP12_c42;
               qM12_c43 <= qM12_c42;
               qP11_c43 <= qP11_c42;
               qM11_c43 <= qM11_c42;
               qP10_c43 <= qP10_c42;
               qM10_c43 <= qM10_c42;
               qP9_c43 <= qP9_c42;
               qM9_c43 <= qM9_c42;
            end if;
            if ce_44 = '1' then
               expR0_c44 <= expR0_c43;
               sR_c44 <= sR_c43;
               exnR0_c44 <= exnR0_c43;
               D_c44 <= D_c43;
               betaw8_c44 <= betaw8_c43;
               q8_c44 <= q8_c43;
               absq8D_c44 <= absq8D_c43;
               qP28_c44 <= qP28_c43;
               qM28_c44 <= qM28_c43;
               qP27_c44 <= qP27_c43;
               qM27_c44 <= qM27_c43;
               qP26_c44 <= qP26_c43;
               qM26_c44 <= qM26_c43;
               qP25_c44 <= qP25_c43;
               qM25_c44 <= qM25_c43;
               qP24_c44 <= qP24_c43;
               qM24_c44 <= qM24_c43;
               qP23_c44 <= qP23_c43;
               qM23_c44 <= qM23_c43;
               qP22_c44 <= qP22_c43;
               qM22_c44 <= qM22_c43;
               qP21_c44 <= qP21_c43;
               qM21_c44 <= qM21_c43;
               qP20_c44 <= qP20_c43;
               qM20_c44 <= qM20_c43;
               qP19_c44 <= qP19_c43;
               qM19_c44 <= qM19_c43;
               qP18_c44 <= qP18_c43;
               qM18_c44 <= qM18_c43;
               qP17_c44 <= qP17_c43;
               qM17_c44 <= qM17_c43;
               qP16_c44 <= qP16_c43;
               qM16_c44 <= qM16_c43;
               qP15_c44 <= qP15_c43;
               qM15_c44 <= qM15_c43;
               qP14_c44 <= qP14_c43;
               qM14_c44 <= qM14_c43;
               qP13_c44 <= qP13_c43;
               qM13_c44 <= qM13_c43;
               qP12_c44 <= qP12_c43;
               qM12_c44 <= qM12_c43;
               qP11_c44 <= qP11_c43;
               qM11_c44 <= qM11_c43;
               qP10_c44 <= qP10_c43;
               qM10_c44 <= qM10_c43;
               qP9_c44 <= qP9_c43;
               qM9_c44 <= qM9_c43;
               qP8_c44 <= qP8_c43;
               qM8_c44 <= qM8_c43;
            end if;
            if ce_45 = '1' then
               expR0_c45 <= expR0_c44;
               sR_c45 <= sR_c44;
               exnR0_c45 <= exnR0_c44;
               D_c45 <= D_c44;
               betaw8_c45 <= betaw8_c44;
               q8_c45 <= q8_c44;
               absq8D_c45 <= absq8D_c44;
               qP28_c45 <= qP28_c44;
               qM28_c45 <= qM28_c44;
               qP27_c45 <= qP27_c44;
               qM27_c45 <= qM27_c44;
               qP26_c45 <= qP26_c44;
               qM26_c45 <= qM26_c44;
               qP25_c45 <= qP25_c44;
               qM25_c45 <= qM25_c44;
               qP24_c45 <= qP24_c44;
               qM24_c45 <= qM24_c44;
               qP23_c45 <= qP23_c44;
               qM23_c45 <= qM23_c44;
               qP22_c45 <= qP22_c44;
               qM22_c45 <= qM22_c44;
               qP21_c45 <= qP21_c44;
               qM21_c45 <= qM21_c44;
               qP20_c45 <= qP20_c44;
               qM20_c45 <= qM20_c44;
               qP19_c45 <= qP19_c44;
               qM19_c45 <= qM19_c44;
               qP18_c45 <= qP18_c44;
               qM18_c45 <= qM18_c44;
               qP17_c45 <= qP17_c44;
               qM17_c45 <= qM17_c44;
               qP16_c45 <= qP16_c44;
               qM16_c45 <= qM16_c44;
               qP15_c45 <= qP15_c44;
               qM15_c45 <= qM15_c44;
               qP14_c45 <= qP14_c44;
               qM14_c45 <= qM14_c44;
               qP13_c45 <= qP13_c44;
               qM13_c45 <= qM13_c44;
               qP12_c45 <= qP12_c44;
               qM12_c45 <= qM12_c44;
               qP11_c45 <= qP11_c44;
               qM11_c45 <= qM11_c44;
               qP10_c45 <= qP10_c44;
               qM10_c45 <= qM10_c44;
               qP9_c45 <= qP9_c44;
               qM9_c45 <= qM9_c44;
               qP8_c45 <= qP8_c44;
               qM8_c45 <= qM8_c44;
            end if;
            if ce_46 = '1' then
               expR0_c46 <= expR0_c45;
               sR_c46 <= sR_c45;
               exnR0_c46 <= exnR0_c45;
               D_c46 <= D_c45;
               betaw7_c46 <= betaw7_c45;
               q7_c46 <= q7_c45;
               absq7D_c46 <= absq7D_c45;
               qP28_c46 <= qP28_c45;
               qM28_c46 <= qM28_c45;
               qP27_c46 <= qP27_c45;
               qM27_c46 <= qM27_c45;
               qP26_c46 <= qP26_c45;
               qM26_c46 <= qM26_c45;
               qP25_c46 <= qP25_c45;
               qM25_c46 <= qM25_c45;
               qP24_c46 <= qP24_c45;
               qM24_c46 <= qM24_c45;
               qP23_c46 <= qP23_c45;
               qM23_c46 <= qM23_c45;
               qP22_c46 <= qP22_c45;
               qM22_c46 <= qM22_c45;
               qP21_c46 <= qP21_c45;
               qM21_c46 <= qM21_c45;
               qP20_c46 <= qP20_c45;
               qM20_c46 <= qM20_c45;
               qP19_c46 <= qP19_c45;
               qM19_c46 <= qM19_c45;
               qP18_c46 <= qP18_c45;
               qM18_c46 <= qM18_c45;
               qP17_c46 <= qP17_c45;
               qM17_c46 <= qM17_c45;
               qP16_c46 <= qP16_c45;
               qM16_c46 <= qM16_c45;
               qP15_c46 <= qP15_c45;
               qM15_c46 <= qM15_c45;
               qP14_c46 <= qP14_c45;
               qM14_c46 <= qM14_c45;
               qP13_c46 <= qP13_c45;
               qM13_c46 <= qM13_c45;
               qP12_c46 <= qP12_c45;
               qM12_c46 <= qM12_c45;
               qP11_c46 <= qP11_c45;
               qM11_c46 <= qM11_c45;
               qP10_c46 <= qP10_c45;
               qM10_c46 <= qM10_c45;
               qP9_c46 <= qP9_c45;
               qM9_c46 <= qM9_c45;
               qP8_c46 <= qP8_c45;
               qM8_c46 <= qM8_c45;
               qP7_c46 <= qP7_c45;
               qM7_c46 <= qM7_c45;
            end if;
            if ce_47 = '1' then
               expR0_c47 <= expR0_c46;
               sR_c47 <= sR_c46;
               exnR0_c47 <= exnR0_c46;
               D_c47 <= D_c46;
               betaw7_c47 <= betaw7_c46;
               q7_c47 <= q7_c46;
               absq7D_c47 <= absq7D_c46;
               qP28_c47 <= qP28_c46;
               qM28_c47 <= qM28_c46;
               qP27_c47 <= qP27_c46;
               qM27_c47 <= qM27_c46;
               qP26_c47 <= qP26_c46;
               qM26_c47 <= qM26_c46;
               qP25_c47 <= qP25_c46;
               qM25_c47 <= qM25_c46;
               qP24_c47 <= qP24_c46;
               qM24_c47 <= qM24_c46;
               qP23_c47 <= qP23_c46;
               qM23_c47 <= qM23_c46;
               qP22_c47 <= qP22_c46;
               qM22_c47 <= qM22_c46;
               qP21_c47 <= qP21_c46;
               qM21_c47 <= qM21_c46;
               qP20_c47 <= qP20_c46;
               qM20_c47 <= qM20_c46;
               qP19_c47 <= qP19_c46;
               qM19_c47 <= qM19_c46;
               qP18_c47 <= qP18_c46;
               qM18_c47 <= qM18_c46;
               qP17_c47 <= qP17_c46;
               qM17_c47 <= qM17_c46;
               qP16_c47 <= qP16_c46;
               qM16_c47 <= qM16_c46;
               qP15_c47 <= qP15_c46;
               qM15_c47 <= qM15_c46;
               qP14_c47 <= qP14_c46;
               qM14_c47 <= qM14_c46;
               qP13_c47 <= qP13_c46;
               qM13_c47 <= qM13_c46;
               qP12_c47 <= qP12_c46;
               qM12_c47 <= qM12_c46;
               qP11_c47 <= qP11_c46;
               qM11_c47 <= qM11_c46;
               qP10_c47 <= qP10_c46;
               qM10_c47 <= qM10_c46;
               qP9_c47 <= qP9_c46;
               qM9_c47 <= qM9_c46;
               qP8_c47 <= qP8_c46;
               qM8_c47 <= qM8_c46;
               qP7_c47 <= qP7_c46;
               qM7_c47 <= qM7_c46;
            end if;
            if ce_48 = '1' then
               expR0_c48 <= expR0_c47;
               sR_c48 <= sR_c47;
               exnR0_c48 <= exnR0_c47;
               D_c48 <= D_c47;
               betaw6_c48 <= betaw6_c47;
               q6_c48 <= q6_c47;
               absq6D_c48 <= absq6D_c47;
               qP28_c48 <= qP28_c47;
               qM28_c48 <= qM28_c47;
               qP27_c48 <= qP27_c47;
               qM27_c48 <= qM27_c47;
               qP26_c48 <= qP26_c47;
               qM26_c48 <= qM26_c47;
               qP25_c48 <= qP25_c47;
               qM25_c48 <= qM25_c47;
               qP24_c48 <= qP24_c47;
               qM24_c48 <= qM24_c47;
               qP23_c48 <= qP23_c47;
               qM23_c48 <= qM23_c47;
               qP22_c48 <= qP22_c47;
               qM22_c48 <= qM22_c47;
               qP21_c48 <= qP21_c47;
               qM21_c48 <= qM21_c47;
               qP20_c48 <= qP20_c47;
               qM20_c48 <= qM20_c47;
               qP19_c48 <= qP19_c47;
               qM19_c48 <= qM19_c47;
               qP18_c48 <= qP18_c47;
               qM18_c48 <= qM18_c47;
               qP17_c48 <= qP17_c47;
               qM17_c48 <= qM17_c47;
               qP16_c48 <= qP16_c47;
               qM16_c48 <= qM16_c47;
               qP15_c48 <= qP15_c47;
               qM15_c48 <= qM15_c47;
               qP14_c48 <= qP14_c47;
               qM14_c48 <= qM14_c47;
               qP13_c48 <= qP13_c47;
               qM13_c48 <= qM13_c47;
               qP12_c48 <= qP12_c47;
               qM12_c48 <= qM12_c47;
               qP11_c48 <= qP11_c47;
               qM11_c48 <= qM11_c47;
               qP10_c48 <= qP10_c47;
               qM10_c48 <= qM10_c47;
               qP9_c48 <= qP9_c47;
               qM9_c48 <= qM9_c47;
               qP8_c48 <= qP8_c47;
               qM8_c48 <= qM8_c47;
               qP7_c48 <= qP7_c47;
               qM7_c48 <= qM7_c47;
               qP6_c48 <= qP6_c47;
               qM6_c48 <= qM6_c47;
            end if;
            if ce_49 = '1' then
               expR0_c49 <= expR0_c48;
               sR_c49 <= sR_c48;
               exnR0_c49 <= exnR0_c48;
               D_c49 <= D_c48;
               betaw6_c49 <= betaw6_c48;
               q6_c49 <= q6_c48;
               absq6D_c49 <= absq6D_c48;
               qP28_c49 <= qP28_c48;
               qM28_c49 <= qM28_c48;
               qP27_c49 <= qP27_c48;
               qM27_c49 <= qM27_c48;
               qP26_c49 <= qP26_c48;
               qM26_c49 <= qM26_c48;
               qP25_c49 <= qP25_c48;
               qM25_c49 <= qM25_c48;
               qP24_c49 <= qP24_c48;
               qM24_c49 <= qM24_c48;
               qP23_c49 <= qP23_c48;
               qM23_c49 <= qM23_c48;
               qP22_c49 <= qP22_c48;
               qM22_c49 <= qM22_c48;
               qP21_c49 <= qP21_c48;
               qM21_c49 <= qM21_c48;
               qP20_c49 <= qP20_c48;
               qM20_c49 <= qM20_c48;
               qP19_c49 <= qP19_c48;
               qM19_c49 <= qM19_c48;
               qP18_c49 <= qP18_c48;
               qM18_c49 <= qM18_c48;
               qP17_c49 <= qP17_c48;
               qM17_c49 <= qM17_c48;
               qP16_c49 <= qP16_c48;
               qM16_c49 <= qM16_c48;
               qP15_c49 <= qP15_c48;
               qM15_c49 <= qM15_c48;
               qP14_c49 <= qP14_c48;
               qM14_c49 <= qM14_c48;
               qP13_c49 <= qP13_c48;
               qM13_c49 <= qM13_c48;
               qP12_c49 <= qP12_c48;
               qM12_c49 <= qM12_c48;
               qP11_c49 <= qP11_c48;
               qM11_c49 <= qM11_c48;
               qP10_c49 <= qP10_c48;
               qM10_c49 <= qM10_c48;
               qP9_c49 <= qP9_c48;
               qM9_c49 <= qM9_c48;
               qP8_c49 <= qP8_c48;
               qM8_c49 <= qM8_c48;
               qP7_c49 <= qP7_c48;
               qM7_c49 <= qM7_c48;
               qP6_c49 <= qP6_c48;
               qM6_c49 <= qM6_c48;
            end if;
            if ce_50 = '1' then
               expR0_c50 <= expR0_c49;
               sR_c50 <= sR_c49;
               exnR0_c50 <= exnR0_c49;
               D_c50 <= D_c49;
               betaw5_c50 <= betaw5_c49;
               q5_c50 <= q5_c49;
               absq5D_c50 <= absq5D_c49;
               qP28_c50 <= qP28_c49;
               qM28_c50 <= qM28_c49;
               qP27_c50 <= qP27_c49;
               qM27_c50 <= qM27_c49;
               qP26_c50 <= qP26_c49;
               qM26_c50 <= qM26_c49;
               qP25_c50 <= qP25_c49;
               qM25_c50 <= qM25_c49;
               qP24_c50 <= qP24_c49;
               qM24_c50 <= qM24_c49;
               qP23_c50 <= qP23_c49;
               qM23_c50 <= qM23_c49;
               qP22_c50 <= qP22_c49;
               qM22_c50 <= qM22_c49;
               qP21_c50 <= qP21_c49;
               qM21_c50 <= qM21_c49;
               qP20_c50 <= qP20_c49;
               qM20_c50 <= qM20_c49;
               qP19_c50 <= qP19_c49;
               qM19_c50 <= qM19_c49;
               qP18_c50 <= qP18_c49;
               qM18_c50 <= qM18_c49;
               qP17_c50 <= qP17_c49;
               qM17_c50 <= qM17_c49;
               qP16_c50 <= qP16_c49;
               qM16_c50 <= qM16_c49;
               qP15_c50 <= qP15_c49;
               qM15_c50 <= qM15_c49;
               qP14_c50 <= qP14_c49;
               qM14_c50 <= qM14_c49;
               qP13_c50 <= qP13_c49;
               qM13_c50 <= qM13_c49;
               qP12_c50 <= qP12_c49;
               qM12_c50 <= qM12_c49;
               qP11_c50 <= qP11_c49;
               qM11_c50 <= qM11_c49;
               qP10_c50 <= qP10_c49;
               qM10_c50 <= qM10_c49;
               qP9_c50 <= qP9_c49;
               qM9_c50 <= qM9_c49;
               qP8_c50 <= qP8_c49;
               qM8_c50 <= qM8_c49;
               qP7_c50 <= qP7_c49;
               qM7_c50 <= qM7_c49;
               qP6_c50 <= qP6_c49;
               qM6_c50 <= qM6_c49;
               qP5_c50 <= qP5_c49;
               qM5_c50 <= qM5_c49;
            end if;
            if ce_51 = '1' then
               expR0_c51 <= expR0_c50;
               sR_c51 <= sR_c50;
               exnR0_c51 <= exnR0_c50;
               D_c51 <= D_c50;
               betaw5_c51 <= betaw5_c50;
               q5_c51 <= q5_c50;
               absq5D_c51 <= absq5D_c50;
               qP28_c51 <= qP28_c50;
               qM28_c51 <= qM28_c50;
               qP27_c51 <= qP27_c50;
               qM27_c51 <= qM27_c50;
               qP26_c51 <= qP26_c50;
               qM26_c51 <= qM26_c50;
               qP25_c51 <= qP25_c50;
               qM25_c51 <= qM25_c50;
               qP24_c51 <= qP24_c50;
               qM24_c51 <= qM24_c50;
               qP23_c51 <= qP23_c50;
               qM23_c51 <= qM23_c50;
               qP22_c51 <= qP22_c50;
               qM22_c51 <= qM22_c50;
               qP21_c51 <= qP21_c50;
               qM21_c51 <= qM21_c50;
               qP20_c51 <= qP20_c50;
               qM20_c51 <= qM20_c50;
               qP19_c51 <= qP19_c50;
               qM19_c51 <= qM19_c50;
               qP18_c51 <= qP18_c50;
               qM18_c51 <= qM18_c50;
               qP17_c51 <= qP17_c50;
               qM17_c51 <= qM17_c50;
               qP16_c51 <= qP16_c50;
               qM16_c51 <= qM16_c50;
               qP15_c51 <= qP15_c50;
               qM15_c51 <= qM15_c50;
               qP14_c51 <= qP14_c50;
               qM14_c51 <= qM14_c50;
               qP13_c51 <= qP13_c50;
               qM13_c51 <= qM13_c50;
               qP12_c51 <= qP12_c50;
               qM12_c51 <= qM12_c50;
               qP11_c51 <= qP11_c50;
               qM11_c51 <= qM11_c50;
               qP10_c51 <= qP10_c50;
               qM10_c51 <= qM10_c50;
               qP9_c51 <= qP9_c50;
               qM9_c51 <= qM9_c50;
               qP8_c51 <= qP8_c50;
               qM8_c51 <= qM8_c50;
               qP7_c51 <= qP7_c50;
               qM7_c51 <= qM7_c50;
               qP6_c51 <= qP6_c50;
               qM6_c51 <= qM6_c50;
               qP5_c51 <= qP5_c50;
               qM5_c51 <= qM5_c50;
            end if;
            if ce_52 = '1' then
               expR0_c52 <= expR0_c51;
               sR_c52 <= sR_c51;
               exnR0_c52 <= exnR0_c51;
               D_c52 <= D_c51;
               betaw4_c52 <= betaw4_c51;
               q4_copy29_c52 <= q4_copy29_c51;
               qP28_c52 <= qP28_c51;
               qM28_c52 <= qM28_c51;
               qP27_c52 <= qP27_c51;
               qM27_c52 <= qM27_c51;
               qP26_c52 <= qP26_c51;
               qM26_c52 <= qM26_c51;
               qP25_c52 <= qP25_c51;
               qM25_c52 <= qM25_c51;
               qP24_c52 <= qP24_c51;
               qM24_c52 <= qM24_c51;
               qP23_c52 <= qP23_c51;
               qM23_c52 <= qM23_c51;
               qP22_c52 <= qP22_c51;
               qM22_c52 <= qM22_c51;
               qP21_c52 <= qP21_c51;
               qM21_c52 <= qM21_c51;
               qP20_c52 <= qP20_c51;
               qM20_c52 <= qM20_c51;
               qP19_c52 <= qP19_c51;
               qM19_c52 <= qM19_c51;
               qP18_c52 <= qP18_c51;
               qM18_c52 <= qM18_c51;
               qP17_c52 <= qP17_c51;
               qM17_c52 <= qM17_c51;
               qP16_c52 <= qP16_c51;
               qM16_c52 <= qM16_c51;
               qP15_c52 <= qP15_c51;
               qM15_c52 <= qM15_c51;
               qP14_c52 <= qP14_c51;
               qM14_c52 <= qM14_c51;
               qP13_c52 <= qP13_c51;
               qM13_c52 <= qM13_c51;
               qP12_c52 <= qP12_c51;
               qM12_c52 <= qM12_c51;
               qP11_c52 <= qP11_c51;
               qM11_c52 <= qM11_c51;
               qP10_c52 <= qP10_c51;
               qM10_c52 <= qM10_c51;
               qP9_c52 <= qP9_c51;
               qM9_c52 <= qM9_c51;
               qP8_c52 <= qP8_c51;
               qM8_c52 <= qM8_c51;
               qP7_c52 <= qP7_c51;
               qM7_c52 <= qM7_c51;
               qP6_c52 <= qP6_c51;
               qM6_c52 <= qM6_c51;
               qP5_c52 <= qP5_c51;
               qM5_c52 <= qM5_c51;
            end if;
            if ce_53 = '1' then
               expR0_c53 <= expR0_c52;
               sR_c53 <= sR_c52;
               exnR0_c53 <= exnR0_c52;
               D_c53 <= D_c52;
               betaw4_c53 <= betaw4_c52;
               q4_c53 <= q4_c52;
               absq4D_c53 <= absq4D_c52;
               qP28_c53 <= qP28_c52;
               qM28_c53 <= qM28_c52;
               qP27_c53 <= qP27_c52;
               qM27_c53 <= qM27_c52;
               qP26_c53 <= qP26_c52;
               qM26_c53 <= qM26_c52;
               qP25_c53 <= qP25_c52;
               qM25_c53 <= qM25_c52;
               qP24_c53 <= qP24_c52;
               qM24_c53 <= qM24_c52;
               qP23_c53 <= qP23_c52;
               qM23_c53 <= qM23_c52;
               qP22_c53 <= qP22_c52;
               qM22_c53 <= qM22_c52;
               qP21_c53 <= qP21_c52;
               qM21_c53 <= qM21_c52;
               qP20_c53 <= qP20_c52;
               qM20_c53 <= qM20_c52;
               qP19_c53 <= qP19_c52;
               qM19_c53 <= qM19_c52;
               qP18_c53 <= qP18_c52;
               qM18_c53 <= qM18_c52;
               qP17_c53 <= qP17_c52;
               qM17_c53 <= qM17_c52;
               qP16_c53 <= qP16_c52;
               qM16_c53 <= qM16_c52;
               qP15_c53 <= qP15_c52;
               qM15_c53 <= qM15_c52;
               qP14_c53 <= qP14_c52;
               qM14_c53 <= qM14_c52;
               qP13_c53 <= qP13_c52;
               qM13_c53 <= qM13_c52;
               qP12_c53 <= qP12_c52;
               qM12_c53 <= qM12_c52;
               qP11_c53 <= qP11_c52;
               qM11_c53 <= qM11_c52;
               qP10_c53 <= qP10_c52;
               qM10_c53 <= qM10_c52;
               qP9_c53 <= qP9_c52;
               qM9_c53 <= qM9_c52;
               qP8_c53 <= qP8_c52;
               qM8_c53 <= qM8_c52;
               qP7_c53 <= qP7_c52;
               qM7_c53 <= qM7_c52;
               qP6_c53 <= qP6_c52;
               qM6_c53 <= qM6_c52;
               qP5_c53 <= qP5_c52;
               qM5_c53 <= qM5_c52;
               qP4_c53 <= qP4_c52;
               qM4_c53 <= qM4_c52;
            end if;
            if ce_54 = '1' then
               expR0_c54 <= expR0_c53;
               sR_c54 <= sR_c53;
               exnR0_c54 <= exnR0_c53;
               D_c54 <= D_c53;
               betaw3_c54 <= betaw3_c53;
               q3_copy30_c54 <= q3_copy30_c53;
               qP28_c54 <= qP28_c53;
               qM28_c54 <= qM28_c53;
               qP27_c54 <= qP27_c53;
               qM27_c54 <= qM27_c53;
               qP26_c54 <= qP26_c53;
               qM26_c54 <= qM26_c53;
               qP25_c54 <= qP25_c53;
               qM25_c54 <= qM25_c53;
               qP24_c54 <= qP24_c53;
               qM24_c54 <= qM24_c53;
               qP23_c54 <= qP23_c53;
               qM23_c54 <= qM23_c53;
               qP22_c54 <= qP22_c53;
               qM22_c54 <= qM22_c53;
               qP21_c54 <= qP21_c53;
               qM21_c54 <= qM21_c53;
               qP20_c54 <= qP20_c53;
               qM20_c54 <= qM20_c53;
               qP19_c54 <= qP19_c53;
               qM19_c54 <= qM19_c53;
               qP18_c54 <= qP18_c53;
               qM18_c54 <= qM18_c53;
               qP17_c54 <= qP17_c53;
               qM17_c54 <= qM17_c53;
               qP16_c54 <= qP16_c53;
               qM16_c54 <= qM16_c53;
               qP15_c54 <= qP15_c53;
               qM15_c54 <= qM15_c53;
               qP14_c54 <= qP14_c53;
               qM14_c54 <= qM14_c53;
               qP13_c54 <= qP13_c53;
               qM13_c54 <= qM13_c53;
               qP12_c54 <= qP12_c53;
               qM12_c54 <= qM12_c53;
               qP11_c54 <= qP11_c53;
               qM11_c54 <= qM11_c53;
               qP10_c54 <= qP10_c53;
               qM10_c54 <= qM10_c53;
               qP9_c54 <= qP9_c53;
               qM9_c54 <= qM9_c53;
               qP8_c54 <= qP8_c53;
               qM8_c54 <= qM8_c53;
               qP7_c54 <= qP7_c53;
               qM7_c54 <= qM7_c53;
               qP6_c54 <= qP6_c53;
               qM6_c54 <= qM6_c53;
               qP5_c54 <= qP5_c53;
               qM5_c54 <= qM5_c53;
               qP4_c54 <= qP4_c53;
               qM4_c54 <= qM4_c53;
            end if;
            if ce_55 = '1' then
               expR0_c55 <= expR0_c54;
               sR_c55 <= sR_c54;
               exnR0_c55 <= exnR0_c54;
               D_c55 <= D_c54;
               betaw3_c55 <= betaw3_c54;
               q3_c55 <= q3_c54;
               absq3D_c55 <= absq3D_c54;
               qP28_c55 <= qP28_c54;
               qM28_c55 <= qM28_c54;
               qP27_c55 <= qP27_c54;
               qM27_c55 <= qM27_c54;
               qP26_c55 <= qP26_c54;
               qM26_c55 <= qM26_c54;
               qP25_c55 <= qP25_c54;
               qM25_c55 <= qM25_c54;
               qP24_c55 <= qP24_c54;
               qM24_c55 <= qM24_c54;
               qP23_c55 <= qP23_c54;
               qM23_c55 <= qM23_c54;
               qP22_c55 <= qP22_c54;
               qM22_c55 <= qM22_c54;
               qP21_c55 <= qP21_c54;
               qM21_c55 <= qM21_c54;
               qP20_c55 <= qP20_c54;
               qM20_c55 <= qM20_c54;
               qP19_c55 <= qP19_c54;
               qM19_c55 <= qM19_c54;
               qP18_c55 <= qP18_c54;
               qM18_c55 <= qM18_c54;
               qP17_c55 <= qP17_c54;
               qM17_c55 <= qM17_c54;
               qP16_c55 <= qP16_c54;
               qM16_c55 <= qM16_c54;
               qP15_c55 <= qP15_c54;
               qM15_c55 <= qM15_c54;
               qP14_c55 <= qP14_c54;
               qM14_c55 <= qM14_c54;
               qP13_c55 <= qP13_c54;
               qM13_c55 <= qM13_c54;
               qP12_c55 <= qP12_c54;
               qM12_c55 <= qM12_c54;
               qP11_c55 <= qP11_c54;
               qM11_c55 <= qM11_c54;
               qP10_c55 <= qP10_c54;
               qM10_c55 <= qM10_c54;
               qP9_c55 <= qP9_c54;
               qM9_c55 <= qM9_c54;
               qP8_c55 <= qP8_c54;
               qM8_c55 <= qM8_c54;
               qP7_c55 <= qP7_c54;
               qM7_c55 <= qM7_c54;
               qP6_c55 <= qP6_c54;
               qM6_c55 <= qM6_c54;
               qP5_c55 <= qP5_c54;
               qM5_c55 <= qM5_c54;
               qP4_c55 <= qP4_c54;
               qM4_c55 <= qM4_c54;
               qP3_c55 <= qP3_c54;
               qM3_c55 <= qM3_c54;
            end if;
            if ce_56 = '1' then
               expR0_c56 <= expR0_c55;
               sR_c56 <= sR_c55;
               exnR0_c56 <= exnR0_c55;
               D_c56 <= D_c55;
               betaw2_c56 <= betaw2_c55;
               q2_copy31_c56 <= q2_copy31_c55;
               qP28_c56 <= qP28_c55;
               qM28_c56 <= qM28_c55;
               qP27_c56 <= qP27_c55;
               qM27_c56 <= qM27_c55;
               qP26_c56 <= qP26_c55;
               qM26_c56 <= qM26_c55;
               qP25_c56 <= qP25_c55;
               qM25_c56 <= qM25_c55;
               qP24_c56 <= qP24_c55;
               qM24_c56 <= qM24_c55;
               qP23_c56 <= qP23_c55;
               qM23_c56 <= qM23_c55;
               qP22_c56 <= qP22_c55;
               qM22_c56 <= qM22_c55;
               qP21_c56 <= qP21_c55;
               qM21_c56 <= qM21_c55;
               qP20_c56 <= qP20_c55;
               qM20_c56 <= qM20_c55;
               qP19_c56 <= qP19_c55;
               qM19_c56 <= qM19_c55;
               qP18_c56 <= qP18_c55;
               qM18_c56 <= qM18_c55;
               qP17_c56 <= qP17_c55;
               qM17_c56 <= qM17_c55;
               qP16_c56 <= qP16_c55;
               qM16_c56 <= qM16_c55;
               qP15_c56 <= qP15_c55;
               qM15_c56 <= qM15_c55;
               qP14_c56 <= qP14_c55;
               qM14_c56 <= qM14_c55;
               qP13_c56 <= qP13_c55;
               qM13_c56 <= qM13_c55;
               qP12_c56 <= qP12_c55;
               qM12_c56 <= qM12_c55;
               qP11_c56 <= qP11_c55;
               qM11_c56 <= qM11_c55;
               qP10_c56 <= qP10_c55;
               qM10_c56 <= qM10_c55;
               qP9_c56 <= qP9_c55;
               qM9_c56 <= qM9_c55;
               qP8_c56 <= qP8_c55;
               qM8_c56 <= qM8_c55;
               qP7_c56 <= qP7_c55;
               qM7_c56 <= qM7_c55;
               qP6_c56 <= qP6_c55;
               qM6_c56 <= qM6_c55;
               qP5_c56 <= qP5_c55;
               qM5_c56 <= qM5_c55;
               qP4_c56 <= qP4_c55;
               qM4_c56 <= qM4_c55;
               qP3_c56 <= qP3_c55;
               qM3_c56 <= qM3_c55;
            end if;
            if ce_57 = '1' then
               expR0_c57 <= expR0_c56;
               sR_c57 <= sR_c56;
               exnR0_c57 <= exnR0_c56;
               D_c57 <= D_c56;
               betaw2_c57 <= betaw2_c56;
               q2_c57 <= q2_c56;
               absq2D_c57 <= absq2D_c56;
               qP28_c57 <= qP28_c56;
               qM28_c57 <= qM28_c56;
               qP27_c57 <= qP27_c56;
               qM27_c57 <= qM27_c56;
               qP26_c57 <= qP26_c56;
               qM26_c57 <= qM26_c56;
               qP25_c57 <= qP25_c56;
               qM25_c57 <= qM25_c56;
               qP24_c57 <= qP24_c56;
               qM24_c57 <= qM24_c56;
               qP23_c57 <= qP23_c56;
               qM23_c57 <= qM23_c56;
               qP22_c57 <= qP22_c56;
               qM22_c57 <= qM22_c56;
               qP21_c57 <= qP21_c56;
               qM21_c57 <= qM21_c56;
               qP20_c57 <= qP20_c56;
               qM20_c57 <= qM20_c56;
               qP19_c57 <= qP19_c56;
               qM19_c57 <= qM19_c56;
               qP18_c57 <= qP18_c56;
               qM18_c57 <= qM18_c56;
               qP17_c57 <= qP17_c56;
               qM17_c57 <= qM17_c56;
               qP16_c57 <= qP16_c56;
               qM16_c57 <= qM16_c56;
               qP15_c57 <= qP15_c56;
               qM15_c57 <= qM15_c56;
               qP14_c57 <= qP14_c56;
               qM14_c57 <= qM14_c56;
               qP13_c57 <= qP13_c56;
               qM13_c57 <= qM13_c56;
               qP12_c57 <= qP12_c56;
               qM12_c57 <= qM12_c56;
               qP11_c57 <= qP11_c56;
               qM11_c57 <= qM11_c56;
               qP10_c57 <= qP10_c56;
               qM10_c57 <= qM10_c56;
               qP9_c57 <= qP9_c56;
               qM9_c57 <= qM9_c56;
               qP8_c57 <= qP8_c56;
               qM8_c57 <= qM8_c56;
               qP7_c57 <= qP7_c56;
               qM7_c57 <= qM7_c56;
               qP6_c57 <= qP6_c56;
               qM6_c57 <= qM6_c56;
               qP5_c57 <= qP5_c56;
               qM5_c57 <= qM5_c56;
               qP4_c57 <= qP4_c56;
               qM4_c57 <= qM4_c56;
               qP3_c57 <= qP3_c56;
               qM3_c57 <= qM3_c56;
               qP2_c57 <= qP2_c56;
               qM2_c57 <= qM2_c56;
            end if;
            if ce_58 = '1' then
               expR0_c58 <= expR0_c57;
               sR_c58 <= sR_c57;
               exnR0_c58 <= exnR0_c57;
               D_c58 <= D_c57;
               betaw2_c58 <= betaw2_c57;
               q2_c58 <= q2_c57;
               absq2D_c58 <= absq2D_c57;
               qP28_c58 <= qP28_c57;
               qM28_c58 <= qM28_c57;
               qP27_c58 <= qP27_c57;
               qM27_c58 <= qM27_c57;
               qP26_c58 <= qP26_c57;
               qM26_c58 <= qM26_c57;
               qP25_c58 <= qP25_c57;
               qM25_c58 <= qM25_c57;
               qP24_c58 <= qP24_c57;
               qM24_c58 <= qM24_c57;
               qP23_c58 <= qP23_c57;
               qM23_c58 <= qM23_c57;
               qP22_c58 <= qP22_c57;
               qM22_c58 <= qM22_c57;
               qP21_c58 <= qP21_c57;
               qM21_c58 <= qM21_c57;
               qP20_c58 <= qP20_c57;
               qM20_c58 <= qM20_c57;
               qP19_c58 <= qP19_c57;
               qM19_c58 <= qM19_c57;
               qP18_c58 <= qP18_c57;
               qM18_c58 <= qM18_c57;
               qP17_c58 <= qP17_c57;
               qM17_c58 <= qM17_c57;
               qP16_c58 <= qP16_c57;
               qM16_c58 <= qM16_c57;
               qP15_c58 <= qP15_c57;
               qM15_c58 <= qM15_c57;
               qP14_c58 <= qP14_c57;
               qM14_c58 <= qM14_c57;
               qP13_c58 <= qP13_c57;
               qM13_c58 <= qM13_c57;
               qP12_c58 <= qP12_c57;
               qM12_c58 <= qM12_c57;
               qP11_c58 <= qP11_c57;
               qM11_c58 <= qM11_c57;
               qP10_c58 <= qP10_c57;
               qM10_c58 <= qM10_c57;
               qP9_c58 <= qP9_c57;
               qM9_c58 <= qM9_c57;
               qP8_c58 <= qP8_c57;
               qM8_c58 <= qM8_c57;
               qP7_c58 <= qP7_c57;
               qM7_c58 <= qM7_c57;
               qP6_c58 <= qP6_c57;
               qM6_c58 <= qM6_c57;
               qP5_c58 <= qP5_c57;
               qM5_c58 <= qM5_c57;
               qP4_c58 <= qP4_c57;
               qM4_c58 <= qM4_c57;
               qP3_c58 <= qP3_c57;
               qM3_c58 <= qM3_c57;
               qP2_c58 <= qP2_c57;
               qM2_c58 <= qM2_c57;
            end if;
            if ce_59 = '1' then
               expR0_c59 <= expR0_c58;
               sR_c59 <= sR_c58;
               exnR0_c59 <= exnR0_c58;
               betaw1_c59 <= betaw1_c58;
               q1_c59 <= q1_c58;
               absq1D_c59 <= absq1D_c58;
               qM28_c59 <= qM28_c58;
               qM27_c59 <= qM27_c58;
               qM26_c59 <= qM26_c58;
               qM25_c59 <= qM25_c58;
               qM24_c59 <= qM24_c58;
               qM23_c59 <= qM23_c58;
               qM22_c59 <= qM22_c58;
               qM21_c59 <= qM21_c58;
               qM20_c59 <= qM20_c58;
               qM19_c59 <= qM19_c58;
               qM18_c59 <= qM18_c58;
               qM17_c59 <= qM17_c58;
               qM16_c59 <= qM16_c58;
               qM15_c59 <= qM15_c58;
               qM14_c59 <= qM14_c58;
               qM13_c59 <= qM13_c58;
               qM12_c59 <= qM12_c58;
               qM11_c59 <= qM11_c58;
               qM10_c59 <= qM10_c58;
               qM9_c59 <= qM9_c58;
               qM8_c59 <= qM8_c58;
               qM7_c59 <= qM7_c58;
               qM6_c59 <= qM6_c58;
               qM5_c59 <= qM5_c58;
               qM4_c59 <= qM4_c58;
               qM3_c59 <= qM3_c58;
               qM2_c59 <= qM2_c58;
               qM1_c59 <= qM1_c58;
               qP_c59 <= qP_c58;
            end if;
            if ce_60 = '1' then
               expR0_c60 <= expR0_c59;
               sR_c60 <= sR_c59;
               exnR0_c60 <= exnR0_c59;
               betaw1_c60 <= betaw1_c59;
               q1_c60 <= q1_c59;
               absq1D_c60 <= absq1D_c59;
               qM28_c60 <= qM28_c59;
               qM27_c60 <= qM27_c59;
               qM26_c60 <= qM26_c59;
               qM25_c60 <= qM25_c59;
               qM24_c60 <= qM24_c59;
               qM23_c60 <= qM23_c59;
               qM22_c60 <= qM22_c59;
               qM21_c60 <= qM21_c59;
               qM20_c60 <= qM20_c59;
               qM19_c60 <= qM19_c59;
               qM18_c60 <= qM18_c59;
               qM17_c60 <= qM17_c59;
               qM16_c60 <= qM16_c59;
               qM15_c60 <= qM15_c59;
               qM14_c60 <= qM14_c59;
               qM13_c60 <= qM13_c59;
               qM12_c60 <= qM12_c59;
               qM11_c60 <= qM11_c59;
               qM10_c60 <= qM10_c59;
               qM9_c60 <= qM9_c59;
               qM8_c60 <= qM8_c59;
               qM7_c60 <= qM7_c59;
               qM6_c60 <= qM6_c59;
               qM5_c60 <= qM5_c59;
               qM4_c60 <= qM4_c59;
               qM3_c60 <= qM3_c59;
               qM2_c60 <= qM2_c59;
               qM1_c60 <= qM1_c59;
               qP_c60 <= qP_c59;
            end if;
            if ce_61 = '1' then
               expR0_c61 <= expR0_c60;
               sR_c61 <= sR_c60;
               exnR0_c61 <= exnR0_c60;
               qP_c61 <= qP_c60;
               qM_c61 <= qM_c60;
            end if;
            if ce_62 = '1' then
               expR0_c62 <= expR0_c61;
               sR_c62 <= sR_c61;
               exnR0_c62 <= exnR0_c61;
               mR_c62 <= mR_c61;
               fRnorm_c62 <= fRnorm_c61;
               round_c62 <= round_c61;
            end if;
            if ce_63 = '1' then
               sR_c63 <= sR_c62;
               exnR0_c63 <= exnR0_c62;
               expfracR_c63 <= expfracR_c62;
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
   SelFunctionTable28: selFunction_Freq800_uid4
      port map ( X => sel28_c0,
                 Y => q28_copy5_c0);
   q28_c0 <= q28_copy5_c0; -- output copy to hold a pipeline register if needed

   with q28_c0  select 
      absq28D_c0 <= 
         "000" & D_c0						 when "001" | "111", -- mult by 1
         "00" & D_c0 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q28_c2(2)  select 
   w27_c2<= betaw28_c2 - absq28D_c2 when '0',
         betaw28_c2 + absq28D_c2 when others;

   betaw27_c2 <= w27_c2(53 downto 0) & "00"; -- multiplication by the radix
   sel27_c2 <= betaw27_c2(55 downto 50) & D_c2(51 downto 49);
   SelFunctionTable27: selFunction_Freq800_uid4
      port map ( X => sel27_c2,
                 Y => q27_copy6_c2);
   q27_c2 <= q27_copy6_c2; -- output copy to hold a pipeline register if needed

   with q27_c2  select 
      absq27D_c2 <= 
         "000" & D_c2						 when "001" | "111", -- mult by 1
         "00" & D_c2 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q27_c4(2)  select 
   w26_c4<= betaw27_c4 - absq27D_c4 when '0',
         betaw27_c4 + absq27D_c4 when others;

   betaw26_c4 <= w26_c4(53 downto 0) & "00"; -- multiplication by the radix
   sel26_c4 <= betaw26_c4(55 downto 50) & D_c4(51 downto 49);
   SelFunctionTable26: selFunction_Freq800_uid4
      port map ( X => sel26_c4,
                 Y => q26_copy7_c4);
   q26_c4 <= q26_copy7_c4; -- output copy to hold a pipeline register if needed

   with q26_c4  select 
      absq26D_c4 <= 
         "000" & D_c4						 when "001" | "111", -- mult by 1
         "00" & D_c4 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q26_c6(2)  select 
   w25_c6<= betaw26_c6 - absq26D_c6 when '0',
         betaw26_c6 + absq26D_c6 when others;

   betaw25_c6 <= w25_c6(53 downto 0) & "00"; -- multiplication by the radix
   sel25_c6 <= betaw25_c6(55 downto 50) & D_c6(51 downto 49);
   SelFunctionTable25: selFunction_Freq800_uid4
      port map ( X => sel25_c6,
                 Y => q25_copy8_c6);
   q25_c6 <= q25_copy8_c6; -- output copy to hold a pipeline register if needed

   with q25_c6  select 
      absq25D_c6 <= 
         "000" & D_c6						 when "001" | "111", -- mult by 1
         "00" & D_c6 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q25_c8(2)  select 
   w24_c8<= betaw25_c8 - absq25D_c8 when '0',
         betaw25_c8 + absq25D_c8 when others;

   betaw24_c8 <= w24_c8(53 downto 0) & "00"; -- multiplication by the radix
   sel24_c8 <= betaw24_c8(55 downto 50) & D_c8(51 downto 49);
   SelFunctionTable24: selFunction_Freq800_uid4
      port map ( X => sel24_c8,
                 Y => q24_copy9_c8);
   q24_c9 <= q24_copy9_c9; -- output copy to hold a pipeline register if needed

   with q24_c9  select 
      absq24D_c9 <= 
         "000" & D_c9						 when "001" | "111", -- mult by 1
         "00" & D_c9 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q24_c10(2)  select 
   w23_c10<= betaw24_c10 - absq24D_c10 when '0',
         betaw24_c10 + absq24D_c10 when others;

   betaw23_c10 <= w23_c10(53 downto 0) & "00"; -- multiplication by the radix
   sel23_c10 <= betaw23_c10(55 downto 50) & D_c10(51 downto 49);
   SelFunctionTable23: selFunction_Freq800_uid4
      port map ( X => sel23_c10,
                 Y => q23_copy10_c10);
   q23_c11 <= q23_copy10_c11; -- output copy to hold a pipeline register if needed

   with q23_c11  select 
      absq23D_c11 <= 
         "000" & D_c11						 when "001" | "111", -- mult by 1
         "00" & D_c11 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q23_c12(2)  select 
   w22_c12<= betaw23_c12 - absq23D_c12 when '0',
         betaw23_c12 + absq23D_c12 when others;

   betaw22_c12 <= w22_c12(53 downto 0) & "00"; -- multiplication by the radix
   sel22_c12 <= betaw22_c12(55 downto 50) & D_c12(51 downto 49);
   SelFunctionTable22: selFunction_Freq800_uid4
      port map ( X => sel22_c12,
                 Y => q22_copy11_c12);
   q22_c13 <= q22_copy11_c13; -- output copy to hold a pipeline register if needed

   with q22_c13  select 
      absq22D_c13 <= 
         "000" & D_c13						 when "001" | "111", -- mult by 1
         "00" & D_c13 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q22_c15(2)  select 
   w21_c15<= betaw22_c15 - absq22D_c15 when '0',
         betaw22_c15 + absq22D_c15 when others;

   betaw21_c15 <= w21_c15(53 downto 0) & "00"; -- multiplication by the radix
   sel21_c15 <= betaw21_c15(55 downto 50) & D_c15(51 downto 49);
   SelFunctionTable21: selFunction_Freq800_uid4
      port map ( X => sel21_c15,
                 Y => q21_copy12_c15);
   q21_c15 <= q21_copy12_c15; -- output copy to hold a pipeline register if needed

   with q21_c15  select 
      absq21D_c15 <= 
         "000" & D_c15						 when "001" | "111", -- mult by 1
         "00" & D_c15 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q21_c17(2)  select 
   w20_c17<= betaw21_c17 - absq21D_c17 when '0',
         betaw21_c17 + absq21D_c17 when others;

   betaw20_c17 <= w20_c17(53 downto 0) & "00"; -- multiplication by the radix
   sel20_c17 <= betaw20_c17(55 downto 50) & D_c17(51 downto 49);
   SelFunctionTable20: selFunction_Freq800_uid4
      port map ( X => sel20_c17,
                 Y => q20_copy13_c17);
   q20_c17 <= q20_copy13_c17; -- output copy to hold a pipeline register if needed

   with q20_c17  select 
      absq20D_c17 <= 
         "000" & D_c17						 when "001" | "111", -- mult by 1
         "00" & D_c17 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q20_c19(2)  select 
   w19_c19<= betaw20_c19 - absq20D_c19 when '0',
         betaw20_c19 + absq20D_c19 when others;

   betaw19_c19 <= w19_c19(53 downto 0) & "00"; -- multiplication by the radix
   sel19_c19 <= betaw19_c19(55 downto 50) & D_c19(51 downto 49);
   SelFunctionTable19: selFunction_Freq800_uid4
      port map ( X => sel19_c19,
                 Y => q19_copy14_c19);
   q19_c19 <= q19_copy14_c19; -- output copy to hold a pipeline register if needed

   with q19_c19  select 
      absq19D_c19 <= 
         "000" & D_c19						 when "001" | "111", -- mult by 1
         "00" & D_c19 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q19_c21(2)  select 
   w18_c21<= betaw19_c21 - absq19D_c21 when '0',
         betaw19_c21 + absq19D_c21 when others;

   betaw18_c21 <= w18_c21(53 downto 0) & "00"; -- multiplication by the radix
   sel18_c21 <= betaw18_c21(55 downto 50) & D_c21(51 downto 49);
   SelFunctionTable18: selFunction_Freq800_uid4
      port map ( X => sel18_c21,
                 Y => q18_copy15_c21);
   q18_c22 <= q18_copy15_c22; -- output copy to hold a pipeline register if needed

   with q18_c22  select 
      absq18D_c22 <= 
         "000" & D_c22						 when "001" | "111", -- mult by 1
         "00" & D_c22 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q18_c23(2)  select 
   w17_c23<= betaw18_c23 - absq18D_c23 when '0',
         betaw18_c23 + absq18D_c23 when others;

   betaw17_c23 <= w17_c23(53 downto 0) & "00"; -- multiplication by the radix
   sel17_c23 <= betaw17_c23(55 downto 50) & D_c23(51 downto 49);
   SelFunctionTable17: selFunction_Freq800_uid4
      port map ( X => sel17_c23,
                 Y => q17_copy16_c23);
   q17_c24 <= q17_copy16_c24; -- output copy to hold a pipeline register if needed

   with q17_c24  select 
      absq17D_c24 <= 
         "000" & D_c24						 when "001" | "111", -- mult by 1
         "00" & D_c24 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q17_c25(2)  select 
   w16_c25<= betaw17_c25 - absq17D_c25 when '0',
         betaw17_c25 + absq17D_c25 when others;

   betaw16_c25 <= w16_c25(53 downto 0) & "00"; -- multiplication by the radix
   sel16_c25 <= betaw16_c25(55 downto 50) & D_c25(51 downto 49);
   SelFunctionTable16: selFunction_Freq800_uid4
      port map ( X => sel16_c25,
                 Y => q16_copy17_c25);
   q16_c26 <= q16_copy17_c26; -- output copy to hold a pipeline register if needed

   with q16_c26  select 
      absq16D_c26 <= 
         "000" & D_c26						 when "001" | "111", -- mult by 1
         "00" & D_c26 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q16_c27(2)  select 
   w15_c27<= betaw16_c27 - absq16D_c27 when '0',
         betaw16_c27 + absq16D_c27 when others;

   betaw15_c27 <= w15_c27(53 downto 0) & "00"; -- multiplication by the radix
   sel15_c27 <= betaw15_c27(55 downto 50) & D_c27(51 downto 49);
   SelFunctionTable15: selFunction_Freq800_uid4
      port map ( X => sel15_c27,
                 Y => q15_copy18_c27);
   q15_c28 <= q15_copy18_c28; -- output copy to hold a pipeline register if needed

   with q15_c28  select 
      absq15D_c28 <= 
         "000" & D_c28						 when "001" | "111", -- mult by 1
         "00" & D_c28 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q15_c30(2)  select 
   w14_c30<= betaw15_c30 - absq15D_c30 when '0',
         betaw15_c30 + absq15D_c30 when others;

   betaw14_c30 <= w14_c30(53 downto 0) & "00"; -- multiplication by the radix
   sel14_c30 <= betaw14_c30(55 downto 50) & D_c30(51 downto 49);
   SelFunctionTable14: selFunction_Freq800_uid4
      port map ( X => sel14_c30,
                 Y => q14_copy19_c30);
   q14_c30 <= q14_copy19_c30; -- output copy to hold a pipeline register if needed

   with q14_c30  select 
      absq14D_c30 <= 
         "000" & D_c30						 when "001" | "111", -- mult by 1
         "00" & D_c30 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q14_c32(2)  select 
   w13_c32<= betaw14_c32 - absq14D_c32 when '0',
         betaw14_c32 + absq14D_c32 when others;

   betaw13_c32 <= w13_c32(53 downto 0) & "00"; -- multiplication by the radix
   sel13_c32 <= betaw13_c32(55 downto 50) & D_c32(51 downto 49);
   SelFunctionTable13: selFunction_Freq800_uid4
      port map ( X => sel13_c32,
                 Y => q13_copy20_c32);
   q13_c32 <= q13_copy20_c32; -- output copy to hold a pipeline register if needed

   with q13_c32  select 
      absq13D_c32 <= 
         "000" & D_c32						 when "001" | "111", -- mult by 1
         "00" & D_c32 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q13_c34(2)  select 
   w12_c34<= betaw13_c34 - absq13D_c34 when '0',
         betaw13_c34 + absq13D_c34 when others;

   betaw12_c34 <= w12_c34(53 downto 0) & "00"; -- multiplication by the radix
   sel12_c34 <= betaw12_c34(55 downto 50) & D_c34(51 downto 49);
   SelFunctionTable12: selFunction_Freq800_uid4
      port map ( X => sel12_c34,
                 Y => q12_copy21_c34);
   q12_c34 <= q12_copy21_c34; -- output copy to hold a pipeline register if needed

   with q12_c34  select 
      absq12D_c34 <= 
         "000" & D_c34						 when "001" | "111", -- mult by 1
         "00" & D_c34 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q12_c36(2)  select 
   w11_c36<= betaw12_c36 - absq12D_c36 when '0',
         betaw12_c36 + absq12D_c36 when others;

   betaw11_c36 <= w11_c36(53 downto 0) & "00"; -- multiplication by the radix
   sel11_c36 <= betaw11_c36(55 downto 50) & D_c36(51 downto 49);
   SelFunctionTable11: selFunction_Freq800_uid4
      port map ( X => sel11_c36,
                 Y => q11_copy22_c36);
   q11_c37 <= q11_copy22_c37; -- output copy to hold a pipeline register if needed

   with q11_c37  select 
      absq11D_c37 <= 
         "000" & D_c37						 when "001" | "111", -- mult by 1
         "00" & D_c37 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q11_c38(2)  select 
   w10_c38<= betaw11_c38 - absq11D_c38 when '0',
         betaw11_c38 + absq11D_c38 when others;

   betaw10_c38 <= w10_c38(53 downto 0) & "00"; -- multiplication by the radix
   sel10_c38 <= betaw10_c38(55 downto 50) & D_c38(51 downto 49);
   SelFunctionTable10: selFunction_Freq800_uid4
      port map ( X => sel10_c38,
                 Y => q10_copy23_c38);
   q10_c39 <= q10_copy23_c39; -- output copy to hold a pipeline register if needed

   with q10_c39  select 
      absq10D_c39 <= 
         "000" & D_c39						 when "001" | "111", -- mult by 1
         "00" & D_c39 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q10_c40(2)  select 
   w9_c40<= betaw10_c40 - absq10D_c40 when '0',
         betaw10_c40 + absq10D_c40 when others;

   betaw9_c40 <= w9_c40(53 downto 0) & "00"; -- multiplication by the radix
   sel9_c40 <= betaw9_c40(55 downto 50) & D_c40(51 downto 49);
   SelFunctionTable9: selFunction_Freq800_uid4
      port map ( X => sel9_c40,
                 Y => q9_copy24_c40);
   q9_c41 <= q9_copy24_c41; -- output copy to hold a pipeline register if needed

   with q9_c41  select 
      absq9D_c41 <= 
         "000" & D_c41						 when "001" | "111", -- mult by 1
         "00" & D_c41 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q9_c42(2)  select 
   w8_c42<= betaw9_c42 - absq9D_c42 when '0',
         betaw9_c42 + absq9D_c42 when others;

   betaw8_c42 <= w8_c42(53 downto 0) & "00"; -- multiplication by the radix
   sel8_c42 <= betaw8_c42(55 downto 50) & D_c42(51 downto 49);
   SelFunctionTable8: selFunction_Freq800_uid4
      port map ( X => sel8_c42,
                 Y => q8_copy25_c42);
   q8_c43 <= q8_copy25_c43; -- output copy to hold a pipeline register if needed

   with q8_c43  select 
      absq8D_c43 <= 
         "000" & D_c43						 when "001" | "111", -- mult by 1
         "00" & D_c43 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q8_c45(2)  select 
   w7_c45<= betaw8_c45 - absq8D_c45 when '0',
         betaw8_c45 + absq8D_c45 when others;

   betaw7_c45 <= w7_c45(53 downto 0) & "00"; -- multiplication by the radix
   sel7_c45 <= betaw7_c45(55 downto 50) & D_c45(51 downto 49);
   SelFunctionTable7: selFunction_Freq800_uid4
      port map ( X => sel7_c45,
                 Y => q7_copy26_c45);
   q7_c45 <= q7_copy26_c45; -- output copy to hold a pipeline register if needed

   with q7_c45  select 
      absq7D_c45 <= 
         "000" & D_c45						 when "001" | "111", -- mult by 1
         "00" & D_c45 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q7_c47(2)  select 
   w6_c47<= betaw7_c47 - absq7D_c47 when '0',
         betaw7_c47 + absq7D_c47 when others;

   betaw6_c47 <= w6_c47(53 downto 0) & "00"; -- multiplication by the radix
   sel6_c47 <= betaw6_c47(55 downto 50) & D_c47(51 downto 49);
   SelFunctionTable6: selFunction_Freq800_uid4
      port map ( X => sel6_c47,
                 Y => q6_copy27_c47);
   q6_c47 <= q6_copy27_c47; -- output copy to hold a pipeline register if needed

   with q6_c47  select 
      absq6D_c47 <= 
         "000" & D_c47						 when "001" | "111", -- mult by 1
         "00" & D_c47 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q6_c49(2)  select 
   w5_c49<= betaw6_c49 - absq6D_c49 when '0',
         betaw6_c49 + absq6D_c49 when others;

   betaw5_c49 <= w5_c49(53 downto 0) & "00"; -- multiplication by the radix
   sel5_c49 <= betaw5_c49(55 downto 50) & D_c49(51 downto 49);
   SelFunctionTable5: selFunction_Freq800_uid4
      port map ( X => sel5_c49,
                 Y => q5_copy28_c49);
   q5_c49 <= q5_copy28_c49; -- output copy to hold a pipeline register if needed

   with q5_c49  select 
      absq5D_c49 <= 
         "000" & D_c49						 when "001" | "111", -- mult by 1
         "00" & D_c49 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q5_c51(2)  select 
   w4_c51<= betaw5_c51 - absq5D_c51 when '0',
         betaw5_c51 + absq5D_c51 when others;

   betaw4_c51 <= w4_c51(53 downto 0) & "00"; -- multiplication by the radix
   sel4_c51 <= betaw4_c51(55 downto 50) & D_c51(51 downto 49);
   SelFunctionTable4: selFunction_Freq800_uid4
      port map ( X => sel4_c51,
                 Y => q4_copy29_c51);
   q4_c52 <= q4_copy29_c52; -- output copy to hold a pipeline register if needed

   with q4_c52  select 
      absq4D_c52 <= 
         "000" & D_c52						 when "001" | "111", -- mult by 1
         "00" & D_c52 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q4_c53(2)  select 
   w3_c53<= betaw4_c53 - absq4D_c53 when '0',
         betaw4_c53 + absq4D_c53 when others;

   betaw3_c53 <= w3_c53(53 downto 0) & "00"; -- multiplication by the radix
   sel3_c53 <= betaw3_c53(55 downto 50) & D_c53(51 downto 49);
   SelFunctionTable3: selFunction_Freq800_uid4
      port map ( X => sel3_c53,
                 Y => q3_copy30_c53);
   q3_c54 <= q3_copy30_c54; -- output copy to hold a pipeline register if needed

   with q3_c54  select 
      absq3D_c54 <= 
         "000" & D_c54						 when "001" | "111", -- mult by 1
         "00" & D_c54 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q3_c55(2)  select 
   w2_c55<= betaw3_c55 - absq3D_c55 when '0',
         betaw3_c55 + absq3D_c55 when others;

   betaw2_c55 <= w2_c55(53 downto 0) & "00"; -- multiplication by the radix
   sel2_c55 <= betaw2_c55(55 downto 50) & D_c55(51 downto 49);
   SelFunctionTable2: selFunction_Freq800_uid4
      port map ( X => sel2_c55,
                 Y => q2_copy31_c55);
   q2_c56 <= q2_copy31_c56; -- output copy to hold a pipeline register if needed

   with q2_c56  select 
      absq2D_c56 <= 
         "000" & D_c56						 when "001" | "111", -- mult by 1
         "00" & D_c56 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q2_c58(2)  select 
   w1_c58<= betaw2_c58 - absq2D_c58 when '0',
         betaw2_c58 + absq2D_c58 when others;

   betaw1_c58 <= w1_c58(53 downto 0) & "00"; -- multiplication by the radix
   sel1_c58 <= betaw1_c58(55 downto 50) & D_c58(51 downto 49);
   SelFunctionTable1: selFunction_Freq800_uid4
      port map ( X => sel1_c58,
                 Y => q1_copy32_c58);
   q1_c58 <= q1_copy32_c58; -- output copy to hold a pipeline register if needed

   with q1_c58  select 
      absq1D_c58 <= 
         "000" & D_c58						 when "001" | "111", -- mult by 1
         "00" & D_c58 & "0"			   when "010" | "110", -- mult by 2
         (55 downto 0 => '0')	 when others;        -- mult by 0

   with q1_c60(2)  select 
   w0_c60<= betaw1_c60 - absq1D_c60 when '0',
         betaw1_c60 + absq1D_c60 when others;

   wfinal_c60 <= w0_c60(53 downto 0);
   qM0_c60 <= wfinal_c60(53); -- rounding bit is the sign of the remainder
   qP28_c0 <=      q28_c0(1 downto 0);
   qM28_c0 <=      q28_c0(2) & "0";
   qP27_c2 <=      q27_c2(1 downto 0);
   qM27_c2 <=      q27_c2(2) & "0";
   qP26_c4 <=      q26_c4(1 downto 0);
   qM26_c4 <=      q26_c4(2) & "0";
   qP25_c6 <=      q25_c6(1 downto 0);
   qM25_c6 <=      q25_c6(2) & "0";
   qP24_c9 <=      q24_c9(1 downto 0);
   qM24_c9 <=      q24_c9(2) & "0";
   qP23_c11 <=      q23_c11(1 downto 0);
   qM23_c11 <=      q23_c11(2) & "0";
   qP22_c13 <=      q22_c13(1 downto 0);
   qM22_c13 <=      q22_c13(2) & "0";
   qP21_c15 <=      q21_c15(1 downto 0);
   qM21_c15 <=      q21_c15(2) & "0";
   qP20_c17 <=      q20_c17(1 downto 0);
   qM20_c17 <=      q20_c17(2) & "0";
   qP19_c19 <=      q19_c19(1 downto 0);
   qM19_c19 <=      q19_c19(2) & "0";
   qP18_c22 <=      q18_c22(1 downto 0);
   qM18_c22 <=      q18_c22(2) & "0";
   qP17_c24 <=      q17_c24(1 downto 0);
   qM17_c24 <=      q17_c24(2) & "0";
   qP16_c26 <=      q16_c26(1 downto 0);
   qM16_c26 <=      q16_c26(2) & "0";
   qP15_c28 <=      q15_c28(1 downto 0);
   qM15_c28 <=      q15_c28(2) & "0";
   qP14_c30 <=      q14_c30(1 downto 0);
   qM14_c30 <=      q14_c30(2) & "0";
   qP13_c32 <=      q13_c32(1 downto 0);
   qM13_c32 <=      q13_c32(2) & "0";
   qP12_c34 <=      q12_c34(1 downto 0);
   qM12_c34 <=      q12_c34(2) & "0";
   qP11_c37 <=      q11_c37(1 downto 0);
   qM11_c37 <=      q11_c37(2) & "0";
   qP10_c39 <=      q10_c39(1 downto 0);
   qM10_c39 <=      q10_c39(2) & "0";
   qP9_c41 <=      q9_c41(1 downto 0);
   qM9_c41 <=      q9_c41(2) & "0";
   qP8_c43 <=      q8_c43(1 downto 0);
   qM8_c43 <=      q8_c43(2) & "0";
   qP7_c45 <=      q7_c45(1 downto 0);
   qM7_c45 <=      q7_c45(2) & "0";
   qP6_c47 <=      q6_c47(1 downto 0);
   qM6_c47 <=      q6_c47(2) & "0";
   qP5_c49 <=      q5_c49(1 downto 0);
   qM5_c49 <=      q5_c49(2) & "0";
   qP4_c52 <=      q4_c52(1 downto 0);
   qM4_c52 <=      q4_c52(2) & "0";
   qP3_c54 <=      q3_c54(1 downto 0);
   qM3_c54 <=      q3_c54(2) & "0";
   qP2_c56 <=      q2_c56(1 downto 0);
   qM2_c56 <=      q2_c56(2) & "0";
   qP1_c58 <=      q1_c58(1 downto 0);
   qM1_c58 <=      q1_c58(2) & "0";
   qP_c58 <= qP28_c58 & qP27_c58 & qP26_c58 & qP25_c58 & qP24_c58 & qP23_c58 & qP22_c58 & qP21_c58 & qP20_c58 & qP19_c58 & qP18_c58 & qP17_c58 & qP16_c58 & qP15_c58 & qP14_c58 & qP13_c58 & qP12_c58 & qP11_c58 & qP10_c58 & qP9_c58 & qP8_c58 & qP7_c58 & qP6_c58 & qP5_c58 & qP4_c58 & qP3_c58 & qP2_c58 & qP1_c58;
   qM_c60 <= qM28_c60(0) & qM27_c60 & qM26_c60 & qM25_c60 & qM24_c60 & qM23_c60 & qM22_c60 & qM21_c60 & qM20_c60 & qM19_c60 & qM18_c60 & qM17_c60 & qM16_c60 & qM15_c60 & qM14_c60 & qM13_c60 & qM12_c60 & qM11_c60 & qM10_c60 & qM9_c60 & qM8_c60 & qM7_c60 & qM6_c60 & qM5_c60 & qM4_c60 & qM3_c60 & qM2_c60 & qM1_c60 & qM0_c60;
   quotient_c61 <= qP_c61 - qM_c61;
   -- We need a mR in (0, -wf-2) format: 1+wF fraction bits, 1 round bit, and 1 guard bit for the normalisation,
   -- quotient is the truncation of the exact quotient to at least 2^(-wF-2) bits
   -- now discarding its possible known MSB zeroes, and dropping the possible extra LSB bit (due to radix 4) 
   mR_c61 <= quotient_c61(54 downto 0); 
   -- normalisation
   fRnorm_c61 <=    mR_c61(53 downto 1)  when mR_c61(54)= '1'
           else mR_c61(52 downto 0);  -- now fRnorm is a (-1, -wF-1) fraction
   round_c61 <= fRnorm_c61(0); 
   expR1_c62 <= expR0_c62 + ("000" & (9 downto 1 => '1') & mR_c62(54)); -- add back bias
   -- final rounding
   expfrac_c62 <= expR1_c62 & fRnorm_c62(52 downto 1) ;
   expfracR_c62 <= expfrac_c62 + ((64 downto 1 => '0') & round_c62);
   exnR_c63 <=      "00"  when expfracR_c63(64) = '1'   -- underflow
           else "10"  when  expfracR_c63(64 downto 63) =  "01" -- overflow
           else "01";      -- 00, normal case
   with exnR0_c63  select 
      exnRfinal_c63 <= 
         exnR_c63   when "01", -- normal
         exnR0_c63  when others;
   R <= exnRfinal_c63 & sR_c63 & expfracR_c63(62 downto 0);
end architecture;



