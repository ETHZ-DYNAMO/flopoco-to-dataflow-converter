--------------------------------------------------------------------------------
--                RightShifterSticky53_by_max_55_Freq800_uid4
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2008-2011), Florent de Dinechin (2008-2019)
--------------------------------------------------------------------------------
-- Pipeline depth: 7 cycles
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
-- Input signals: X S
-- Output signals: R Sticky

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifterSticky53_by_max_55_Freq800_uid4 is
    port (clk, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9 : in std_logic;
          X : in  std_logic_vector(52 downto 0);
          S : in  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(54 downto 0);
          Sticky : out  std_logic   );
end entity;

architecture arch of RightShifterSticky53_by_max_55_Freq800_uid4 is
signal ps_c2, ps_c3, ps_c4, ps_c5, ps_c6, ps_c7, ps_c8, ps_c9 :  std_logic_vector(5 downto 0);
signal Xpadded_c2 :  std_logic_vector(54 downto 0);
signal level6_c2, level6_c3, level6_c4 :  std_logic_vector(54 downto 0);
signal stk5_c4, stk5_c5 :  std_logic;
signal level5_c2, level5_c3, level5_c4, level5_c5 :  std_logic_vector(54 downto 0);
signal stk4_c5, stk4_c6 :  std_logic;
signal level4_c3, level4_c4, level4_c5, level4_c6 :  std_logic_vector(54 downto 0);
signal stk3_c6, stk3_c7 :  std_logic;
signal level3_c3, level3_c4, level3_c5, level3_c6, level3_c7 :  std_logic_vector(54 downto 0);
signal stk2_c7, stk2_c8 :  std_logic;
signal level2_c4, level2_c5, level2_c6, level2_c7, level2_c8 :  std_logic_vector(54 downto 0);
signal stk1_c8, stk1_c9 :  std_logic;
signal level1_c4, level1_c5, level1_c6, level1_c7, level1_c8, level1_c9 :  std_logic_vector(54 downto 0);
signal stk0_c9 :  std_logic;
signal level0_c4 :  std_logic_vector(54 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_3 = '1' then
               ps_c3 <= ps_c2;
               level6_c3 <= level6_c2;
               level5_c3 <= level5_c2;
            end if;
            if ce_4 = '1' then
               ps_c4 <= ps_c3;
               level6_c4 <= level6_c3;
               level5_c4 <= level5_c3;
               level4_c4 <= level4_c3;
               level3_c4 <= level3_c3;
            end if;
            if ce_5 = '1' then
               ps_c5 <= ps_c4;
               stk5_c5 <= stk5_c4;
               level5_c5 <= level5_c4;
               level4_c5 <= level4_c4;
               level3_c5 <= level3_c4;
               level2_c5 <= level2_c4;
               level1_c5 <= level1_c4;
            end if;
            if ce_6 = '1' then
               ps_c6 <= ps_c5;
               stk4_c6 <= stk4_c5;
               level4_c6 <= level4_c5;
               level3_c6 <= level3_c5;
               level2_c6 <= level2_c5;
               level1_c6 <= level1_c5;
            end if;
            if ce_7 = '1' then
               ps_c7 <= ps_c6;
               stk3_c7 <= stk3_c6;
               level3_c7 <= level3_c6;
               level2_c7 <= level2_c6;
               level1_c7 <= level1_c6;
            end if;
            if ce_8 = '1' then
               ps_c8 <= ps_c7;
               stk2_c8 <= stk2_c7;
               level2_c8 <= level2_c7;
               level1_c8 <= level1_c7;
            end if;
            if ce_9 = '1' then
               ps_c9 <= ps_c8;
               stk1_c9 <= stk1_c8;
               level1_c9 <= level1_c8;
            end if;
         end if;
      end process;
   ps_c2<= S;
   Xpadded_c2 <= X&(1 downto 0 => '0');
   level6_c2<= Xpadded_c2;
   stk5_c4 <= '1' when (level6_c4(31 downto 0)/="00000000000000000000000000000000" and ps_c4(5)='1')   else '0';
   level5_c2 <=  level6_c2 when  ps_c2(5)='0'    else (31 downto 0 => '0') & level6_c2(54 downto 32);
   stk4_c5 <= '1' when (level5_c5(15 downto 0)/="0000000000000000" and ps_c5(4)='1') or stk5_c5 ='1'   else '0';
   level4_c3 <=  level5_c3 when  ps_c3(4)='0'    else (15 downto 0 => '0') & level5_c3(54 downto 16);
   stk3_c6 <= '1' when (level4_c6(7 downto 0)/="00000000" and ps_c6(3)='1') or stk4_c6 ='1'   else '0';
   level3_c3 <=  level4_c3 when  ps_c3(3)='0'    else (7 downto 0 => '0') & level4_c3(54 downto 8);
   stk2_c7 <= '1' when (level3_c7(3 downto 0)/="0000" and ps_c7(2)='1') or stk3_c7 ='1'   else '0';
   level2_c4 <=  level3_c4 when  ps_c4(2)='0'    else (3 downto 0 => '0') & level3_c4(54 downto 4);
   stk1_c8 <= '1' when (level2_c8(1 downto 0)/="00" and ps_c8(1)='1') or stk2_c8 ='1'   else '0';
   level1_c4 <=  level2_c4 when  ps_c4(1)='0'    else (1 downto 0 => '0') & level2_c4(54 downto 2);
   stk0_c9 <= '1' when (level1_c9(0 downto 0)/="0" and ps_c9(0)='1') or stk1_c9 ='1'   else '0';
   level0_c4 <=  level1_c4 when  ps_c4(0)='0'    else (0 downto 0 => '0') & level1_c4(54 downto 1);
   R <= level0_c4;
   Sticky <= stk0_c9;
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_56_Freq800_uid6
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 28 cycles
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_56_Freq800_uid6 is
    port (clk, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27, ce_28, ce_29 : in std_logic;
          X : in  std_logic_vector(55 downto 0);
          Y : in  std_logic_vector(55 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(55 downto 0)   );
end entity;

architecture arch of IntAdder_56_Freq800_uid6 is
signal Cin_1_c9, Cin_1_c10 :  std_logic;
signal X_1_c1, X_1_c2, X_1_c3, X_1_c4, X_1_c5, X_1_c6, X_1_c7, X_1_c8, X_1_c9, X_1_c10 :  std_logic_vector(3 downto 0);
signal Y_1_c5, Y_1_c6, Y_1_c7, Y_1_c8, Y_1_c9, Y_1_c10 :  std_logic_vector(3 downto 0);
signal S_1_c10 :  std_logic_vector(3 downto 0);
signal R_1_c10, R_1_c11, R_1_c12, R_1_c13, R_1_c14, R_1_c15, R_1_c16, R_1_c17, R_1_c18, R_1_c19, R_1_c20, R_1_c21, R_1_c22, R_1_c23, R_1_c24, R_1_c25, R_1_c26, R_1_c27, R_1_c28, R_1_c29 :  std_logic_vector(2 downto 0);
signal Cin_2_c10, Cin_2_c11 :  std_logic;
signal X_2_c1, X_2_c2, X_2_c3, X_2_c4, X_2_c5, X_2_c6, X_2_c7, X_2_c8, X_2_c9, X_2_c10, X_2_c11 :  std_logic_vector(3 downto 0);
signal Y_2_c5, Y_2_c6, Y_2_c7, Y_2_c8, Y_2_c9, Y_2_c10, Y_2_c11 :  std_logic_vector(3 downto 0);
signal S_2_c11 :  std_logic_vector(3 downto 0);
signal R_2_c11, R_2_c12, R_2_c13, R_2_c14, R_2_c15, R_2_c16, R_2_c17, R_2_c18, R_2_c19, R_2_c20, R_2_c21, R_2_c22, R_2_c23, R_2_c24, R_2_c25, R_2_c26, R_2_c27, R_2_c28, R_2_c29 :  std_logic_vector(2 downto 0);
signal Cin_3_c11, Cin_3_c12 :  std_logic;
signal X_3_c1, X_3_c2, X_3_c3, X_3_c4, X_3_c5, X_3_c6, X_3_c7, X_3_c8, X_3_c9, X_3_c10, X_3_c11, X_3_c12 :  std_logic_vector(3 downto 0);
signal Y_3_c5, Y_3_c6, Y_3_c7, Y_3_c8, Y_3_c9, Y_3_c10, Y_3_c11, Y_3_c12 :  std_logic_vector(3 downto 0);
signal S_3_c12 :  std_logic_vector(3 downto 0);
signal R_3_c12, R_3_c13, R_3_c14, R_3_c15, R_3_c16, R_3_c17, R_3_c18, R_3_c19, R_3_c20, R_3_c21, R_3_c22, R_3_c23, R_3_c24, R_3_c25, R_3_c26, R_3_c27, R_3_c28, R_3_c29 :  std_logic_vector(2 downto 0);
signal Cin_4_c12, Cin_4_c13, Cin_4_c14 :  std_logic;
signal X_4_c1, X_4_c2, X_4_c3, X_4_c4, X_4_c5, X_4_c6, X_4_c7, X_4_c8, X_4_c9, X_4_c10, X_4_c11, X_4_c12, X_4_c13, X_4_c14 :  std_logic_vector(3 downto 0);
signal Y_4_c5, Y_4_c6, Y_4_c7, Y_4_c8, Y_4_c9, Y_4_c10, Y_4_c11, Y_4_c12, Y_4_c13, Y_4_c14 :  std_logic_vector(3 downto 0);
signal S_4_c14 :  std_logic_vector(3 downto 0);
signal R_4_c14, R_4_c15, R_4_c16, R_4_c17, R_4_c18, R_4_c19, R_4_c20, R_4_c21, R_4_c22, R_4_c23, R_4_c24, R_4_c25, R_4_c26, R_4_c27, R_4_c28, R_4_c29 :  std_logic_vector(2 downto 0);
signal Cin_5_c14, Cin_5_c15 :  std_logic;
signal X_5_c1, X_5_c2, X_5_c3, X_5_c4, X_5_c5, X_5_c6, X_5_c7, X_5_c8, X_5_c9, X_5_c10, X_5_c11, X_5_c12, X_5_c13, X_5_c14, X_5_c15 :  std_logic_vector(3 downto 0);
signal Y_5_c5, Y_5_c6, Y_5_c7, Y_5_c8, Y_5_c9, Y_5_c10, Y_5_c11, Y_5_c12, Y_5_c13, Y_5_c14, Y_5_c15 :  std_logic_vector(3 downto 0);
signal S_5_c15 :  std_logic_vector(3 downto 0);
signal R_5_c15, R_5_c16, R_5_c17, R_5_c18, R_5_c19, R_5_c20, R_5_c21, R_5_c22, R_5_c23, R_5_c24, R_5_c25, R_5_c26, R_5_c27, R_5_c28, R_5_c29 :  std_logic_vector(2 downto 0);
signal Cin_6_c15, Cin_6_c16 :  std_logic;
signal X_6_c1, X_6_c2, X_6_c3, X_6_c4, X_6_c5, X_6_c6, X_6_c7, X_6_c8, X_6_c9, X_6_c10, X_6_c11, X_6_c12, X_6_c13, X_6_c14, X_6_c15, X_6_c16 :  std_logic_vector(3 downto 0);
signal Y_6_c5, Y_6_c6, Y_6_c7, Y_6_c8, Y_6_c9, Y_6_c10, Y_6_c11, Y_6_c12, Y_6_c13, Y_6_c14, Y_6_c15, Y_6_c16 :  std_logic_vector(3 downto 0);
signal S_6_c16 :  std_logic_vector(3 downto 0);
signal R_6_c16, R_6_c17, R_6_c18, R_6_c19, R_6_c20, R_6_c21, R_6_c22, R_6_c23, R_6_c24, R_6_c25, R_6_c26, R_6_c27, R_6_c28, R_6_c29 :  std_logic_vector(2 downto 0);
signal Cin_7_c16, Cin_7_c17 :  std_logic;
signal X_7_c1, X_7_c2, X_7_c3, X_7_c4, X_7_c5, X_7_c6, X_7_c7, X_7_c8, X_7_c9, X_7_c10, X_7_c11, X_7_c12, X_7_c13, X_7_c14, X_7_c15, X_7_c16, X_7_c17 :  std_logic_vector(3 downto 0);
signal Y_7_c5, Y_7_c6, Y_7_c7, Y_7_c8, Y_7_c9, Y_7_c10, Y_7_c11, Y_7_c12, Y_7_c13, Y_7_c14, Y_7_c15, Y_7_c16, Y_7_c17 :  std_logic_vector(3 downto 0);
signal S_7_c17 :  std_logic_vector(3 downto 0);
signal R_7_c17, R_7_c18, R_7_c19, R_7_c20, R_7_c21, R_7_c22, R_7_c23, R_7_c24, R_7_c25, R_7_c26, R_7_c27, R_7_c28, R_7_c29 :  std_logic_vector(2 downto 0);
signal Cin_8_c17, Cin_8_c18 :  std_logic;
signal X_8_c1, X_8_c2, X_8_c3, X_8_c4, X_8_c5, X_8_c6, X_8_c7, X_8_c8, X_8_c9, X_8_c10, X_8_c11, X_8_c12, X_8_c13, X_8_c14, X_8_c15, X_8_c16, X_8_c17, X_8_c18 :  std_logic_vector(3 downto 0);
signal Y_8_c5, Y_8_c6, Y_8_c7, Y_8_c8, Y_8_c9, Y_8_c10, Y_8_c11, Y_8_c12, Y_8_c13, Y_8_c14, Y_8_c15, Y_8_c16, Y_8_c17, Y_8_c18 :  std_logic_vector(3 downto 0);
signal S_8_c18 :  std_logic_vector(3 downto 0);
signal R_8_c18, R_8_c19, R_8_c20, R_8_c21, R_8_c22, R_8_c23, R_8_c24, R_8_c25, R_8_c26, R_8_c27, R_8_c28, R_8_c29 :  std_logic_vector(2 downto 0);
signal Cin_9_c18, Cin_9_c19 :  std_logic;
signal X_9_c1, X_9_c2, X_9_c3, X_9_c4, X_9_c5, X_9_c6, X_9_c7, X_9_c8, X_9_c9, X_9_c10, X_9_c11, X_9_c12, X_9_c13, X_9_c14, X_9_c15, X_9_c16, X_9_c17, X_9_c18, X_9_c19 :  std_logic_vector(3 downto 0);
signal Y_9_c5, Y_9_c6, Y_9_c7, Y_9_c8, Y_9_c9, Y_9_c10, Y_9_c11, Y_9_c12, Y_9_c13, Y_9_c14, Y_9_c15, Y_9_c16, Y_9_c17, Y_9_c18, Y_9_c19 :  std_logic_vector(3 downto 0);
signal S_9_c19 :  std_logic_vector(3 downto 0);
signal R_9_c19, R_9_c20, R_9_c21, R_9_c22, R_9_c23, R_9_c24, R_9_c25, R_9_c26, R_9_c27, R_9_c28, R_9_c29 :  std_logic_vector(2 downto 0);
signal Cin_10_c19, Cin_10_c20 :  std_logic;
signal X_10_c1, X_10_c2, X_10_c3, X_10_c4, X_10_c5, X_10_c6, X_10_c7, X_10_c8, X_10_c9, X_10_c10, X_10_c11, X_10_c12, X_10_c13, X_10_c14, X_10_c15, X_10_c16, X_10_c17, X_10_c18, X_10_c19, X_10_c20 :  std_logic_vector(3 downto 0);
signal Y_10_c5, Y_10_c6, Y_10_c7, Y_10_c8, Y_10_c9, Y_10_c10, Y_10_c11, Y_10_c12, Y_10_c13, Y_10_c14, Y_10_c15, Y_10_c16, Y_10_c17, Y_10_c18, Y_10_c19, Y_10_c20 :  std_logic_vector(3 downto 0);
signal S_10_c20 :  std_logic_vector(3 downto 0);
signal R_10_c20, R_10_c21, R_10_c22, R_10_c23, R_10_c24, R_10_c25, R_10_c26, R_10_c27, R_10_c28, R_10_c29 :  std_logic_vector(2 downto 0);
signal Cin_11_c20, Cin_11_c21 :  std_logic;
signal X_11_c1, X_11_c2, X_11_c3, X_11_c4, X_11_c5, X_11_c6, X_11_c7, X_11_c8, X_11_c9, X_11_c10, X_11_c11, X_11_c12, X_11_c13, X_11_c14, X_11_c15, X_11_c16, X_11_c17, X_11_c18, X_11_c19, X_11_c20, X_11_c21 :  std_logic_vector(3 downto 0);
signal Y_11_c5, Y_11_c6, Y_11_c7, Y_11_c8, Y_11_c9, Y_11_c10, Y_11_c11, Y_11_c12, Y_11_c13, Y_11_c14, Y_11_c15, Y_11_c16, Y_11_c17, Y_11_c18, Y_11_c19, Y_11_c20, Y_11_c21 :  std_logic_vector(3 downto 0);
signal S_11_c21 :  std_logic_vector(3 downto 0);
signal R_11_c21, R_11_c22, R_11_c23, R_11_c24, R_11_c25, R_11_c26, R_11_c27, R_11_c28, R_11_c29 :  std_logic_vector(2 downto 0);
signal Cin_12_c21, Cin_12_c22 :  std_logic;
signal X_12_c1, X_12_c2, X_12_c3, X_12_c4, X_12_c5, X_12_c6, X_12_c7, X_12_c8, X_12_c9, X_12_c10, X_12_c11, X_12_c12, X_12_c13, X_12_c14, X_12_c15, X_12_c16, X_12_c17, X_12_c18, X_12_c19, X_12_c20, X_12_c21, X_12_c22 :  std_logic_vector(3 downto 0);
signal Y_12_c5, Y_12_c6, Y_12_c7, Y_12_c8, Y_12_c9, Y_12_c10, Y_12_c11, Y_12_c12, Y_12_c13, Y_12_c14, Y_12_c15, Y_12_c16, Y_12_c17, Y_12_c18, Y_12_c19, Y_12_c20, Y_12_c21, Y_12_c22 :  std_logic_vector(3 downto 0);
signal S_12_c22 :  std_logic_vector(3 downto 0);
signal R_12_c22, R_12_c23, R_12_c24, R_12_c25, R_12_c26, R_12_c27, R_12_c28, R_12_c29 :  std_logic_vector(2 downto 0);
signal Cin_13_c22, Cin_13_c23 :  std_logic;
signal X_13_c1, X_13_c2, X_13_c3, X_13_c4, X_13_c5, X_13_c6, X_13_c7, X_13_c8, X_13_c9, X_13_c10, X_13_c11, X_13_c12, X_13_c13, X_13_c14, X_13_c15, X_13_c16, X_13_c17, X_13_c18, X_13_c19, X_13_c20, X_13_c21, X_13_c22, X_13_c23 :  std_logic_vector(3 downto 0);
signal Y_13_c5, Y_13_c6, Y_13_c7, Y_13_c8, Y_13_c9, Y_13_c10, Y_13_c11, Y_13_c12, Y_13_c13, Y_13_c14, Y_13_c15, Y_13_c16, Y_13_c17, Y_13_c18, Y_13_c19, Y_13_c20, Y_13_c21, Y_13_c22, Y_13_c23 :  std_logic_vector(3 downto 0);
signal S_13_c23 :  std_logic_vector(3 downto 0);
signal R_13_c23, R_13_c24, R_13_c25, R_13_c26, R_13_c27, R_13_c28, R_13_c29 :  std_logic_vector(2 downto 0);
signal Cin_14_c23, Cin_14_c24 :  std_logic;
signal X_14_c1, X_14_c2, X_14_c3, X_14_c4, X_14_c5, X_14_c6, X_14_c7, X_14_c8, X_14_c9, X_14_c10, X_14_c11, X_14_c12, X_14_c13, X_14_c14, X_14_c15, X_14_c16, X_14_c17, X_14_c18, X_14_c19, X_14_c20, X_14_c21, X_14_c22, X_14_c23, X_14_c24 :  std_logic_vector(3 downto 0);
signal Y_14_c5, Y_14_c6, Y_14_c7, Y_14_c8, Y_14_c9, Y_14_c10, Y_14_c11, Y_14_c12, Y_14_c13, Y_14_c14, Y_14_c15, Y_14_c16, Y_14_c17, Y_14_c18, Y_14_c19, Y_14_c20, Y_14_c21, Y_14_c22, Y_14_c23, Y_14_c24 :  std_logic_vector(3 downto 0);
signal S_14_c24 :  std_logic_vector(3 downto 0);
signal R_14_c24, R_14_c25, R_14_c26, R_14_c27, R_14_c28, R_14_c29 :  std_logic_vector(2 downto 0);
signal Cin_15_c24, Cin_15_c25 :  std_logic;
signal X_15_c1, X_15_c2, X_15_c3, X_15_c4, X_15_c5, X_15_c6, X_15_c7, X_15_c8, X_15_c9, X_15_c10, X_15_c11, X_15_c12, X_15_c13, X_15_c14, X_15_c15, X_15_c16, X_15_c17, X_15_c18, X_15_c19, X_15_c20, X_15_c21, X_15_c22, X_15_c23, X_15_c24, X_15_c25 :  std_logic_vector(3 downto 0);
signal Y_15_c5, Y_15_c6, Y_15_c7, Y_15_c8, Y_15_c9, Y_15_c10, Y_15_c11, Y_15_c12, Y_15_c13, Y_15_c14, Y_15_c15, Y_15_c16, Y_15_c17, Y_15_c18, Y_15_c19, Y_15_c20, Y_15_c21, Y_15_c22, Y_15_c23, Y_15_c24, Y_15_c25 :  std_logic_vector(3 downto 0);
signal S_15_c25 :  std_logic_vector(3 downto 0);
signal R_15_c25, R_15_c26, R_15_c27, R_15_c28, R_15_c29 :  std_logic_vector(2 downto 0);
signal Cin_16_c25, Cin_16_c26 :  std_logic;
signal X_16_c1, X_16_c2, X_16_c3, X_16_c4, X_16_c5, X_16_c6, X_16_c7, X_16_c8, X_16_c9, X_16_c10, X_16_c11, X_16_c12, X_16_c13, X_16_c14, X_16_c15, X_16_c16, X_16_c17, X_16_c18, X_16_c19, X_16_c20, X_16_c21, X_16_c22, X_16_c23, X_16_c24, X_16_c25, X_16_c26 :  std_logic_vector(3 downto 0);
signal Y_16_c5, Y_16_c6, Y_16_c7, Y_16_c8, Y_16_c9, Y_16_c10, Y_16_c11, Y_16_c12, Y_16_c13, Y_16_c14, Y_16_c15, Y_16_c16, Y_16_c17, Y_16_c18, Y_16_c19, Y_16_c20, Y_16_c21, Y_16_c22, Y_16_c23, Y_16_c24, Y_16_c25, Y_16_c26 :  std_logic_vector(3 downto 0);
signal S_16_c26 :  std_logic_vector(3 downto 0);
signal R_16_c26, R_16_c27, R_16_c28, R_16_c29 :  std_logic_vector(2 downto 0);
signal Cin_17_c26, Cin_17_c27 :  std_logic;
signal X_17_c1, X_17_c2, X_17_c3, X_17_c4, X_17_c5, X_17_c6, X_17_c7, X_17_c8, X_17_c9, X_17_c10, X_17_c11, X_17_c12, X_17_c13, X_17_c14, X_17_c15, X_17_c16, X_17_c17, X_17_c18, X_17_c19, X_17_c20, X_17_c21, X_17_c22, X_17_c23, X_17_c24, X_17_c25, X_17_c26, X_17_c27 :  std_logic_vector(3 downto 0);
signal Y_17_c5, Y_17_c6, Y_17_c7, Y_17_c8, Y_17_c9, Y_17_c10, Y_17_c11, Y_17_c12, Y_17_c13, Y_17_c14, Y_17_c15, Y_17_c16, Y_17_c17, Y_17_c18, Y_17_c19, Y_17_c20, Y_17_c21, Y_17_c22, Y_17_c23, Y_17_c24, Y_17_c25, Y_17_c26, Y_17_c27 :  std_logic_vector(3 downto 0);
signal S_17_c27 :  std_logic_vector(3 downto 0);
signal R_17_c27, R_17_c28, R_17_c29 :  std_logic_vector(2 downto 0);
signal Cin_18_c27, Cin_18_c28 :  std_logic;
signal X_18_c1, X_18_c2, X_18_c3, X_18_c4, X_18_c5, X_18_c6, X_18_c7, X_18_c8, X_18_c9, X_18_c10, X_18_c11, X_18_c12, X_18_c13, X_18_c14, X_18_c15, X_18_c16, X_18_c17, X_18_c18, X_18_c19, X_18_c20, X_18_c21, X_18_c22, X_18_c23, X_18_c24, X_18_c25, X_18_c26, X_18_c27, X_18_c28 :  std_logic_vector(3 downto 0);
signal Y_18_c5, Y_18_c6, Y_18_c7, Y_18_c8, Y_18_c9, Y_18_c10, Y_18_c11, Y_18_c12, Y_18_c13, Y_18_c14, Y_18_c15, Y_18_c16, Y_18_c17, Y_18_c18, Y_18_c19, Y_18_c20, Y_18_c21, Y_18_c22, Y_18_c23, Y_18_c24, Y_18_c25, Y_18_c26, Y_18_c27, Y_18_c28 :  std_logic_vector(3 downto 0);
signal S_18_c28 :  std_logic_vector(3 downto 0);
signal R_18_c28, R_18_c29 :  std_logic_vector(2 downto 0);
signal Cin_19_c28, Cin_19_c29 :  std_logic;
signal X_19_c1, X_19_c2, X_19_c3, X_19_c4, X_19_c5, X_19_c6, X_19_c7, X_19_c8, X_19_c9, X_19_c10, X_19_c11, X_19_c12, X_19_c13, X_19_c14, X_19_c15, X_19_c16, X_19_c17, X_19_c18, X_19_c19, X_19_c20, X_19_c21, X_19_c22, X_19_c23, X_19_c24, X_19_c25, X_19_c26, X_19_c27, X_19_c28, X_19_c29 :  std_logic_vector(2 downto 0);
signal Y_19_c5, Y_19_c6, Y_19_c7, Y_19_c8, Y_19_c9, Y_19_c10, Y_19_c11, Y_19_c12, Y_19_c13, Y_19_c14, Y_19_c15, Y_19_c16, Y_19_c17, Y_19_c18, Y_19_c19, Y_19_c20, Y_19_c21, Y_19_c22, Y_19_c23, Y_19_c24, Y_19_c25, Y_19_c26, Y_19_c27, Y_19_c28, Y_19_c29 :  std_logic_vector(2 downto 0);
signal S_19_c29 :  std_logic_vector(2 downto 0);
signal R_19_c29 :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_2 = '1' then
               X_1_c2 <= X_1_c1;
               X_2_c2 <= X_2_c1;
               X_3_c2 <= X_3_c1;
               X_4_c2 <= X_4_c1;
               X_5_c2 <= X_5_c1;
               X_6_c2 <= X_6_c1;
               X_7_c2 <= X_7_c1;
               X_8_c2 <= X_8_c1;
               X_9_c2 <= X_9_c1;
               X_10_c2 <= X_10_c1;
               X_11_c2 <= X_11_c1;
               X_12_c2 <= X_12_c1;
               X_13_c2 <= X_13_c1;
               X_14_c2 <= X_14_c1;
               X_15_c2 <= X_15_c1;
               X_16_c2 <= X_16_c1;
               X_17_c2 <= X_17_c1;
               X_18_c2 <= X_18_c1;
               X_19_c2 <= X_19_c1;
            end if;
            if ce_3 = '1' then
               X_1_c3 <= X_1_c2;
               X_2_c3 <= X_2_c2;
               X_3_c3 <= X_3_c2;
               X_4_c3 <= X_4_c2;
               X_5_c3 <= X_5_c2;
               X_6_c3 <= X_6_c2;
               X_7_c3 <= X_7_c2;
               X_8_c3 <= X_8_c2;
               X_9_c3 <= X_9_c2;
               X_10_c3 <= X_10_c2;
               X_11_c3 <= X_11_c2;
               X_12_c3 <= X_12_c2;
               X_13_c3 <= X_13_c2;
               X_14_c3 <= X_14_c2;
               X_15_c3 <= X_15_c2;
               X_16_c3 <= X_16_c2;
               X_17_c3 <= X_17_c2;
               X_18_c3 <= X_18_c2;
               X_19_c3 <= X_19_c2;
            end if;
            if ce_4 = '1' then
               X_1_c4 <= X_1_c3;
               X_2_c4 <= X_2_c3;
               X_3_c4 <= X_3_c3;
               X_4_c4 <= X_4_c3;
               X_5_c4 <= X_5_c3;
               X_6_c4 <= X_6_c3;
               X_7_c4 <= X_7_c3;
               X_8_c4 <= X_8_c3;
               X_9_c4 <= X_9_c3;
               X_10_c4 <= X_10_c3;
               X_11_c4 <= X_11_c3;
               X_12_c4 <= X_12_c3;
               X_13_c4 <= X_13_c3;
               X_14_c4 <= X_14_c3;
               X_15_c4 <= X_15_c3;
               X_16_c4 <= X_16_c3;
               X_17_c4 <= X_17_c3;
               X_18_c4 <= X_18_c3;
               X_19_c4 <= X_19_c3;
            end if;
            if ce_5 = '1' then
               X_1_c5 <= X_1_c4;
               X_2_c5 <= X_2_c4;
               X_3_c5 <= X_3_c4;
               X_4_c5 <= X_4_c4;
               X_5_c5 <= X_5_c4;
               X_6_c5 <= X_6_c4;
               X_7_c5 <= X_7_c4;
               X_8_c5 <= X_8_c4;
               X_9_c5 <= X_9_c4;
               X_10_c5 <= X_10_c4;
               X_11_c5 <= X_11_c4;
               X_12_c5 <= X_12_c4;
               X_13_c5 <= X_13_c4;
               X_14_c5 <= X_14_c4;
               X_15_c5 <= X_15_c4;
               X_16_c5 <= X_16_c4;
               X_17_c5 <= X_17_c4;
               X_18_c5 <= X_18_c4;
               X_19_c5 <= X_19_c4;
            end if;
            if ce_6 = '1' then
               X_1_c6 <= X_1_c5;
               Y_1_c6 <= Y_1_c5;
               X_2_c6 <= X_2_c5;
               Y_2_c6 <= Y_2_c5;
               X_3_c6 <= X_3_c5;
               Y_3_c6 <= Y_3_c5;
               X_4_c6 <= X_4_c5;
               Y_4_c6 <= Y_4_c5;
               X_5_c6 <= X_5_c5;
               Y_5_c6 <= Y_5_c5;
               X_6_c6 <= X_6_c5;
               Y_6_c6 <= Y_6_c5;
               X_7_c6 <= X_7_c5;
               Y_7_c6 <= Y_7_c5;
               X_8_c6 <= X_8_c5;
               Y_8_c6 <= Y_8_c5;
               X_9_c6 <= X_9_c5;
               Y_9_c6 <= Y_9_c5;
               X_10_c6 <= X_10_c5;
               Y_10_c6 <= Y_10_c5;
               X_11_c6 <= X_11_c5;
               Y_11_c6 <= Y_11_c5;
               X_12_c6 <= X_12_c5;
               Y_12_c6 <= Y_12_c5;
               X_13_c6 <= X_13_c5;
               Y_13_c6 <= Y_13_c5;
               X_14_c6 <= X_14_c5;
               Y_14_c6 <= Y_14_c5;
               X_15_c6 <= X_15_c5;
               Y_15_c6 <= Y_15_c5;
               X_16_c6 <= X_16_c5;
               Y_16_c6 <= Y_16_c5;
               X_17_c6 <= X_17_c5;
               Y_17_c6 <= Y_17_c5;
               X_18_c6 <= X_18_c5;
               Y_18_c6 <= Y_18_c5;
               X_19_c6 <= X_19_c5;
               Y_19_c6 <= Y_19_c5;
            end if;
            if ce_7 = '1' then
               X_1_c7 <= X_1_c6;
               Y_1_c7 <= Y_1_c6;
               X_2_c7 <= X_2_c6;
               Y_2_c7 <= Y_2_c6;
               X_3_c7 <= X_3_c6;
               Y_3_c7 <= Y_3_c6;
               X_4_c7 <= X_4_c6;
               Y_4_c7 <= Y_4_c6;
               X_5_c7 <= X_5_c6;
               Y_5_c7 <= Y_5_c6;
               X_6_c7 <= X_6_c6;
               Y_6_c7 <= Y_6_c6;
               X_7_c7 <= X_7_c6;
               Y_7_c7 <= Y_7_c6;
               X_8_c7 <= X_8_c6;
               Y_8_c7 <= Y_8_c6;
               X_9_c7 <= X_9_c6;
               Y_9_c7 <= Y_9_c6;
               X_10_c7 <= X_10_c6;
               Y_10_c7 <= Y_10_c6;
               X_11_c7 <= X_11_c6;
               Y_11_c7 <= Y_11_c6;
               X_12_c7 <= X_12_c6;
               Y_12_c7 <= Y_12_c6;
               X_13_c7 <= X_13_c6;
               Y_13_c7 <= Y_13_c6;
               X_14_c7 <= X_14_c6;
               Y_14_c7 <= Y_14_c6;
               X_15_c7 <= X_15_c6;
               Y_15_c7 <= Y_15_c6;
               X_16_c7 <= X_16_c6;
               Y_16_c7 <= Y_16_c6;
               X_17_c7 <= X_17_c6;
               Y_17_c7 <= Y_17_c6;
               X_18_c7 <= X_18_c6;
               Y_18_c7 <= Y_18_c6;
               X_19_c7 <= X_19_c6;
               Y_19_c7 <= Y_19_c6;
            end if;
            if ce_8 = '1' then
               X_1_c8 <= X_1_c7;
               Y_1_c8 <= Y_1_c7;
               X_2_c8 <= X_2_c7;
               Y_2_c8 <= Y_2_c7;
               X_3_c8 <= X_3_c7;
               Y_3_c8 <= Y_3_c7;
               X_4_c8 <= X_4_c7;
               Y_4_c8 <= Y_4_c7;
               X_5_c8 <= X_5_c7;
               Y_5_c8 <= Y_5_c7;
               X_6_c8 <= X_6_c7;
               Y_6_c8 <= Y_6_c7;
               X_7_c8 <= X_7_c7;
               Y_7_c8 <= Y_7_c7;
               X_8_c8 <= X_8_c7;
               Y_8_c8 <= Y_8_c7;
               X_9_c8 <= X_9_c7;
               Y_9_c8 <= Y_9_c7;
               X_10_c8 <= X_10_c7;
               Y_10_c8 <= Y_10_c7;
               X_11_c8 <= X_11_c7;
               Y_11_c8 <= Y_11_c7;
               X_12_c8 <= X_12_c7;
               Y_12_c8 <= Y_12_c7;
               X_13_c8 <= X_13_c7;
               Y_13_c8 <= Y_13_c7;
               X_14_c8 <= X_14_c7;
               Y_14_c8 <= Y_14_c7;
               X_15_c8 <= X_15_c7;
               Y_15_c8 <= Y_15_c7;
               X_16_c8 <= X_16_c7;
               Y_16_c8 <= Y_16_c7;
               X_17_c8 <= X_17_c7;
               Y_17_c8 <= Y_17_c7;
               X_18_c8 <= X_18_c7;
               Y_18_c8 <= Y_18_c7;
               X_19_c8 <= X_19_c7;
               Y_19_c8 <= Y_19_c7;
            end if;
            if ce_9 = '1' then
               X_1_c9 <= X_1_c8;
               Y_1_c9 <= Y_1_c8;
               X_2_c9 <= X_2_c8;
               Y_2_c9 <= Y_2_c8;
               X_3_c9 <= X_3_c8;
               Y_3_c9 <= Y_3_c8;
               X_4_c9 <= X_4_c8;
               Y_4_c9 <= Y_4_c8;
               X_5_c9 <= X_5_c8;
               Y_5_c9 <= Y_5_c8;
               X_6_c9 <= X_6_c8;
               Y_6_c9 <= Y_6_c8;
               X_7_c9 <= X_7_c8;
               Y_7_c9 <= Y_7_c8;
               X_8_c9 <= X_8_c8;
               Y_8_c9 <= Y_8_c8;
               X_9_c9 <= X_9_c8;
               Y_9_c9 <= Y_9_c8;
               X_10_c9 <= X_10_c8;
               Y_10_c9 <= Y_10_c8;
               X_11_c9 <= X_11_c8;
               Y_11_c9 <= Y_11_c8;
               X_12_c9 <= X_12_c8;
               Y_12_c9 <= Y_12_c8;
               X_13_c9 <= X_13_c8;
               Y_13_c9 <= Y_13_c8;
               X_14_c9 <= X_14_c8;
               Y_14_c9 <= Y_14_c8;
               X_15_c9 <= X_15_c8;
               Y_15_c9 <= Y_15_c8;
               X_16_c9 <= X_16_c8;
               Y_16_c9 <= Y_16_c8;
               X_17_c9 <= X_17_c8;
               Y_17_c9 <= Y_17_c8;
               X_18_c9 <= X_18_c8;
               Y_18_c9 <= Y_18_c8;
               X_19_c9 <= X_19_c8;
               Y_19_c9 <= Y_19_c8;
            end if;
            if ce_10 = '1' then
               Cin_1_c10 <= Cin_1_c9;
               X_1_c10 <= X_1_c9;
               Y_1_c10 <= Y_1_c9;
               X_2_c10 <= X_2_c9;
               Y_2_c10 <= Y_2_c9;
               X_3_c10 <= X_3_c9;
               Y_3_c10 <= Y_3_c9;
               X_4_c10 <= X_4_c9;
               Y_4_c10 <= Y_4_c9;
               X_5_c10 <= X_5_c9;
               Y_5_c10 <= Y_5_c9;
               X_6_c10 <= X_6_c9;
               Y_6_c10 <= Y_6_c9;
               X_7_c10 <= X_7_c9;
               Y_7_c10 <= Y_7_c9;
               X_8_c10 <= X_8_c9;
               Y_8_c10 <= Y_8_c9;
               X_9_c10 <= X_9_c9;
               Y_9_c10 <= Y_9_c9;
               X_10_c10 <= X_10_c9;
               Y_10_c10 <= Y_10_c9;
               X_11_c10 <= X_11_c9;
               Y_11_c10 <= Y_11_c9;
               X_12_c10 <= X_12_c9;
               Y_12_c10 <= Y_12_c9;
               X_13_c10 <= X_13_c9;
               Y_13_c10 <= Y_13_c9;
               X_14_c10 <= X_14_c9;
               Y_14_c10 <= Y_14_c9;
               X_15_c10 <= X_15_c9;
               Y_15_c10 <= Y_15_c9;
               X_16_c10 <= X_16_c9;
               Y_16_c10 <= Y_16_c9;
               X_17_c10 <= X_17_c9;
               Y_17_c10 <= Y_17_c9;
               X_18_c10 <= X_18_c9;
               Y_18_c10 <= Y_18_c9;
               X_19_c10 <= X_19_c9;
               Y_19_c10 <= Y_19_c9;
            end if;
            if ce_11 = '1' then
               R_1_c11 <= R_1_c10;
               Cin_2_c11 <= Cin_2_c10;
               X_2_c11 <= X_2_c10;
               Y_2_c11 <= Y_2_c10;
               X_3_c11 <= X_3_c10;
               Y_3_c11 <= Y_3_c10;
               X_4_c11 <= X_4_c10;
               Y_4_c11 <= Y_4_c10;
               X_5_c11 <= X_5_c10;
               Y_5_c11 <= Y_5_c10;
               X_6_c11 <= X_6_c10;
               Y_6_c11 <= Y_6_c10;
               X_7_c11 <= X_7_c10;
               Y_7_c11 <= Y_7_c10;
               X_8_c11 <= X_8_c10;
               Y_8_c11 <= Y_8_c10;
               X_9_c11 <= X_9_c10;
               Y_9_c11 <= Y_9_c10;
               X_10_c11 <= X_10_c10;
               Y_10_c11 <= Y_10_c10;
               X_11_c11 <= X_11_c10;
               Y_11_c11 <= Y_11_c10;
               X_12_c11 <= X_12_c10;
               Y_12_c11 <= Y_12_c10;
               X_13_c11 <= X_13_c10;
               Y_13_c11 <= Y_13_c10;
               X_14_c11 <= X_14_c10;
               Y_14_c11 <= Y_14_c10;
               X_15_c11 <= X_15_c10;
               Y_15_c11 <= Y_15_c10;
               X_16_c11 <= X_16_c10;
               Y_16_c11 <= Y_16_c10;
               X_17_c11 <= X_17_c10;
               Y_17_c11 <= Y_17_c10;
               X_18_c11 <= X_18_c10;
               Y_18_c11 <= Y_18_c10;
               X_19_c11 <= X_19_c10;
               Y_19_c11 <= Y_19_c10;
            end if;
            if ce_12 = '1' then
               R_1_c12 <= R_1_c11;
               R_2_c12 <= R_2_c11;
               Cin_3_c12 <= Cin_3_c11;
               X_3_c12 <= X_3_c11;
               Y_3_c12 <= Y_3_c11;
               X_4_c12 <= X_4_c11;
               Y_4_c12 <= Y_4_c11;
               X_5_c12 <= X_5_c11;
               Y_5_c12 <= Y_5_c11;
               X_6_c12 <= X_6_c11;
               Y_6_c12 <= Y_6_c11;
               X_7_c12 <= X_7_c11;
               Y_7_c12 <= Y_7_c11;
               X_8_c12 <= X_8_c11;
               Y_8_c12 <= Y_8_c11;
               X_9_c12 <= X_9_c11;
               Y_9_c12 <= Y_9_c11;
               X_10_c12 <= X_10_c11;
               Y_10_c12 <= Y_10_c11;
               X_11_c12 <= X_11_c11;
               Y_11_c12 <= Y_11_c11;
               X_12_c12 <= X_12_c11;
               Y_12_c12 <= Y_12_c11;
               X_13_c12 <= X_13_c11;
               Y_13_c12 <= Y_13_c11;
               X_14_c12 <= X_14_c11;
               Y_14_c12 <= Y_14_c11;
               X_15_c12 <= X_15_c11;
               Y_15_c12 <= Y_15_c11;
               X_16_c12 <= X_16_c11;
               Y_16_c12 <= Y_16_c11;
               X_17_c12 <= X_17_c11;
               Y_17_c12 <= Y_17_c11;
               X_18_c12 <= X_18_c11;
               Y_18_c12 <= Y_18_c11;
               X_19_c12 <= X_19_c11;
               Y_19_c12 <= Y_19_c11;
            end if;
            if ce_13 = '1' then
               R_1_c13 <= R_1_c12;
               R_2_c13 <= R_2_c12;
               R_3_c13 <= R_3_c12;
               Cin_4_c13 <= Cin_4_c12;
               X_4_c13 <= X_4_c12;
               Y_4_c13 <= Y_4_c12;
               X_5_c13 <= X_5_c12;
               Y_5_c13 <= Y_5_c12;
               X_6_c13 <= X_6_c12;
               Y_6_c13 <= Y_6_c12;
               X_7_c13 <= X_7_c12;
               Y_7_c13 <= Y_7_c12;
               X_8_c13 <= X_8_c12;
               Y_8_c13 <= Y_8_c12;
               X_9_c13 <= X_9_c12;
               Y_9_c13 <= Y_9_c12;
               X_10_c13 <= X_10_c12;
               Y_10_c13 <= Y_10_c12;
               X_11_c13 <= X_11_c12;
               Y_11_c13 <= Y_11_c12;
               X_12_c13 <= X_12_c12;
               Y_12_c13 <= Y_12_c12;
               X_13_c13 <= X_13_c12;
               Y_13_c13 <= Y_13_c12;
               X_14_c13 <= X_14_c12;
               Y_14_c13 <= Y_14_c12;
               X_15_c13 <= X_15_c12;
               Y_15_c13 <= Y_15_c12;
               X_16_c13 <= X_16_c12;
               Y_16_c13 <= Y_16_c12;
               X_17_c13 <= X_17_c12;
               Y_17_c13 <= Y_17_c12;
               X_18_c13 <= X_18_c12;
               Y_18_c13 <= Y_18_c12;
               X_19_c13 <= X_19_c12;
               Y_19_c13 <= Y_19_c12;
            end if;
            if ce_14 = '1' then
               R_1_c14 <= R_1_c13;
               R_2_c14 <= R_2_c13;
               R_3_c14 <= R_3_c13;
               Cin_4_c14 <= Cin_4_c13;
               X_4_c14 <= X_4_c13;
               Y_4_c14 <= Y_4_c13;
               X_5_c14 <= X_5_c13;
               Y_5_c14 <= Y_5_c13;
               X_6_c14 <= X_6_c13;
               Y_6_c14 <= Y_6_c13;
               X_7_c14 <= X_7_c13;
               Y_7_c14 <= Y_7_c13;
               X_8_c14 <= X_8_c13;
               Y_8_c14 <= Y_8_c13;
               X_9_c14 <= X_9_c13;
               Y_9_c14 <= Y_9_c13;
               X_10_c14 <= X_10_c13;
               Y_10_c14 <= Y_10_c13;
               X_11_c14 <= X_11_c13;
               Y_11_c14 <= Y_11_c13;
               X_12_c14 <= X_12_c13;
               Y_12_c14 <= Y_12_c13;
               X_13_c14 <= X_13_c13;
               Y_13_c14 <= Y_13_c13;
               X_14_c14 <= X_14_c13;
               Y_14_c14 <= Y_14_c13;
               X_15_c14 <= X_15_c13;
               Y_15_c14 <= Y_15_c13;
               X_16_c14 <= X_16_c13;
               Y_16_c14 <= Y_16_c13;
               X_17_c14 <= X_17_c13;
               Y_17_c14 <= Y_17_c13;
               X_18_c14 <= X_18_c13;
               Y_18_c14 <= Y_18_c13;
               X_19_c14 <= X_19_c13;
               Y_19_c14 <= Y_19_c13;
            end if;
            if ce_15 = '1' then
               R_1_c15 <= R_1_c14;
               R_2_c15 <= R_2_c14;
               R_3_c15 <= R_3_c14;
               R_4_c15 <= R_4_c14;
               Cin_5_c15 <= Cin_5_c14;
               X_5_c15 <= X_5_c14;
               Y_5_c15 <= Y_5_c14;
               X_6_c15 <= X_6_c14;
               Y_6_c15 <= Y_6_c14;
               X_7_c15 <= X_7_c14;
               Y_7_c15 <= Y_7_c14;
               X_8_c15 <= X_8_c14;
               Y_8_c15 <= Y_8_c14;
               X_9_c15 <= X_9_c14;
               Y_9_c15 <= Y_9_c14;
               X_10_c15 <= X_10_c14;
               Y_10_c15 <= Y_10_c14;
               X_11_c15 <= X_11_c14;
               Y_11_c15 <= Y_11_c14;
               X_12_c15 <= X_12_c14;
               Y_12_c15 <= Y_12_c14;
               X_13_c15 <= X_13_c14;
               Y_13_c15 <= Y_13_c14;
               X_14_c15 <= X_14_c14;
               Y_14_c15 <= Y_14_c14;
               X_15_c15 <= X_15_c14;
               Y_15_c15 <= Y_15_c14;
               X_16_c15 <= X_16_c14;
               Y_16_c15 <= Y_16_c14;
               X_17_c15 <= X_17_c14;
               Y_17_c15 <= Y_17_c14;
               X_18_c15 <= X_18_c14;
               Y_18_c15 <= Y_18_c14;
               X_19_c15 <= X_19_c14;
               Y_19_c15 <= Y_19_c14;
            end if;
            if ce_16 = '1' then
               R_1_c16 <= R_1_c15;
               R_2_c16 <= R_2_c15;
               R_3_c16 <= R_3_c15;
               R_4_c16 <= R_4_c15;
               R_5_c16 <= R_5_c15;
               Cin_6_c16 <= Cin_6_c15;
               X_6_c16 <= X_6_c15;
               Y_6_c16 <= Y_6_c15;
               X_7_c16 <= X_7_c15;
               Y_7_c16 <= Y_7_c15;
               X_8_c16 <= X_8_c15;
               Y_8_c16 <= Y_8_c15;
               X_9_c16 <= X_9_c15;
               Y_9_c16 <= Y_9_c15;
               X_10_c16 <= X_10_c15;
               Y_10_c16 <= Y_10_c15;
               X_11_c16 <= X_11_c15;
               Y_11_c16 <= Y_11_c15;
               X_12_c16 <= X_12_c15;
               Y_12_c16 <= Y_12_c15;
               X_13_c16 <= X_13_c15;
               Y_13_c16 <= Y_13_c15;
               X_14_c16 <= X_14_c15;
               Y_14_c16 <= Y_14_c15;
               X_15_c16 <= X_15_c15;
               Y_15_c16 <= Y_15_c15;
               X_16_c16 <= X_16_c15;
               Y_16_c16 <= Y_16_c15;
               X_17_c16 <= X_17_c15;
               Y_17_c16 <= Y_17_c15;
               X_18_c16 <= X_18_c15;
               Y_18_c16 <= Y_18_c15;
               X_19_c16 <= X_19_c15;
               Y_19_c16 <= Y_19_c15;
            end if;
            if ce_17 = '1' then
               R_1_c17 <= R_1_c16;
               R_2_c17 <= R_2_c16;
               R_3_c17 <= R_3_c16;
               R_4_c17 <= R_4_c16;
               R_5_c17 <= R_5_c16;
               R_6_c17 <= R_6_c16;
               Cin_7_c17 <= Cin_7_c16;
               X_7_c17 <= X_7_c16;
               Y_7_c17 <= Y_7_c16;
               X_8_c17 <= X_8_c16;
               Y_8_c17 <= Y_8_c16;
               X_9_c17 <= X_9_c16;
               Y_9_c17 <= Y_9_c16;
               X_10_c17 <= X_10_c16;
               Y_10_c17 <= Y_10_c16;
               X_11_c17 <= X_11_c16;
               Y_11_c17 <= Y_11_c16;
               X_12_c17 <= X_12_c16;
               Y_12_c17 <= Y_12_c16;
               X_13_c17 <= X_13_c16;
               Y_13_c17 <= Y_13_c16;
               X_14_c17 <= X_14_c16;
               Y_14_c17 <= Y_14_c16;
               X_15_c17 <= X_15_c16;
               Y_15_c17 <= Y_15_c16;
               X_16_c17 <= X_16_c16;
               Y_16_c17 <= Y_16_c16;
               X_17_c17 <= X_17_c16;
               Y_17_c17 <= Y_17_c16;
               X_18_c17 <= X_18_c16;
               Y_18_c17 <= Y_18_c16;
               X_19_c17 <= X_19_c16;
               Y_19_c17 <= Y_19_c16;
            end if;
            if ce_18 = '1' then
               R_1_c18 <= R_1_c17;
               R_2_c18 <= R_2_c17;
               R_3_c18 <= R_3_c17;
               R_4_c18 <= R_4_c17;
               R_5_c18 <= R_5_c17;
               R_6_c18 <= R_6_c17;
               R_7_c18 <= R_7_c17;
               Cin_8_c18 <= Cin_8_c17;
               X_8_c18 <= X_8_c17;
               Y_8_c18 <= Y_8_c17;
               X_9_c18 <= X_9_c17;
               Y_9_c18 <= Y_9_c17;
               X_10_c18 <= X_10_c17;
               Y_10_c18 <= Y_10_c17;
               X_11_c18 <= X_11_c17;
               Y_11_c18 <= Y_11_c17;
               X_12_c18 <= X_12_c17;
               Y_12_c18 <= Y_12_c17;
               X_13_c18 <= X_13_c17;
               Y_13_c18 <= Y_13_c17;
               X_14_c18 <= X_14_c17;
               Y_14_c18 <= Y_14_c17;
               X_15_c18 <= X_15_c17;
               Y_15_c18 <= Y_15_c17;
               X_16_c18 <= X_16_c17;
               Y_16_c18 <= Y_16_c17;
               X_17_c18 <= X_17_c17;
               Y_17_c18 <= Y_17_c17;
               X_18_c18 <= X_18_c17;
               Y_18_c18 <= Y_18_c17;
               X_19_c18 <= X_19_c17;
               Y_19_c18 <= Y_19_c17;
            end if;
            if ce_19 = '1' then
               R_1_c19 <= R_1_c18;
               R_2_c19 <= R_2_c18;
               R_3_c19 <= R_3_c18;
               R_4_c19 <= R_4_c18;
               R_5_c19 <= R_5_c18;
               R_6_c19 <= R_6_c18;
               R_7_c19 <= R_7_c18;
               R_8_c19 <= R_8_c18;
               Cin_9_c19 <= Cin_9_c18;
               X_9_c19 <= X_9_c18;
               Y_9_c19 <= Y_9_c18;
               X_10_c19 <= X_10_c18;
               Y_10_c19 <= Y_10_c18;
               X_11_c19 <= X_11_c18;
               Y_11_c19 <= Y_11_c18;
               X_12_c19 <= X_12_c18;
               Y_12_c19 <= Y_12_c18;
               X_13_c19 <= X_13_c18;
               Y_13_c19 <= Y_13_c18;
               X_14_c19 <= X_14_c18;
               Y_14_c19 <= Y_14_c18;
               X_15_c19 <= X_15_c18;
               Y_15_c19 <= Y_15_c18;
               X_16_c19 <= X_16_c18;
               Y_16_c19 <= Y_16_c18;
               X_17_c19 <= X_17_c18;
               Y_17_c19 <= Y_17_c18;
               X_18_c19 <= X_18_c18;
               Y_18_c19 <= Y_18_c18;
               X_19_c19 <= X_19_c18;
               Y_19_c19 <= Y_19_c18;
            end if;
            if ce_20 = '1' then
               R_1_c20 <= R_1_c19;
               R_2_c20 <= R_2_c19;
               R_3_c20 <= R_3_c19;
               R_4_c20 <= R_4_c19;
               R_5_c20 <= R_5_c19;
               R_6_c20 <= R_6_c19;
               R_7_c20 <= R_7_c19;
               R_8_c20 <= R_8_c19;
               R_9_c20 <= R_9_c19;
               Cin_10_c20 <= Cin_10_c19;
               X_10_c20 <= X_10_c19;
               Y_10_c20 <= Y_10_c19;
               X_11_c20 <= X_11_c19;
               Y_11_c20 <= Y_11_c19;
               X_12_c20 <= X_12_c19;
               Y_12_c20 <= Y_12_c19;
               X_13_c20 <= X_13_c19;
               Y_13_c20 <= Y_13_c19;
               X_14_c20 <= X_14_c19;
               Y_14_c20 <= Y_14_c19;
               X_15_c20 <= X_15_c19;
               Y_15_c20 <= Y_15_c19;
               X_16_c20 <= X_16_c19;
               Y_16_c20 <= Y_16_c19;
               X_17_c20 <= X_17_c19;
               Y_17_c20 <= Y_17_c19;
               X_18_c20 <= X_18_c19;
               Y_18_c20 <= Y_18_c19;
               X_19_c20 <= X_19_c19;
               Y_19_c20 <= Y_19_c19;
            end if;
            if ce_21 = '1' then
               R_1_c21 <= R_1_c20;
               R_2_c21 <= R_2_c20;
               R_3_c21 <= R_3_c20;
               R_4_c21 <= R_4_c20;
               R_5_c21 <= R_5_c20;
               R_6_c21 <= R_6_c20;
               R_7_c21 <= R_7_c20;
               R_8_c21 <= R_8_c20;
               R_9_c21 <= R_9_c20;
               R_10_c21 <= R_10_c20;
               Cin_11_c21 <= Cin_11_c20;
               X_11_c21 <= X_11_c20;
               Y_11_c21 <= Y_11_c20;
               X_12_c21 <= X_12_c20;
               Y_12_c21 <= Y_12_c20;
               X_13_c21 <= X_13_c20;
               Y_13_c21 <= Y_13_c20;
               X_14_c21 <= X_14_c20;
               Y_14_c21 <= Y_14_c20;
               X_15_c21 <= X_15_c20;
               Y_15_c21 <= Y_15_c20;
               X_16_c21 <= X_16_c20;
               Y_16_c21 <= Y_16_c20;
               X_17_c21 <= X_17_c20;
               Y_17_c21 <= Y_17_c20;
               X_18_c21 <= X_18_c20;
               Y_18_c21 <= Y_18_c20;
               X_19_c21 <= X_19_c20;
               Y_19_c21 <= Y_19_c20;
            end if;
            if ce_22 = '1' then
               R_1_c22 <= R_1_c21;
               R_2_c22 <= R_2_c21;
               R_3_c22 <= R_3_c21;
               R_4_c22 <= R_4_c21;
               R_5_c22 <= R_5_c21;
               R_6_c22 <= R_6_c21;
               R_7_c22 <= R_7_c21;
               R_8_c22 <= R_8_c21;
               R_9_c22 <= R_9_c21;
               R_10_c22 <= R_10_c21;
               R_11_c22 <= R_11_c21;
               Cin_12_c22 <= Cin_12_c21;
               X_12_c22 <= X_12_c21;
               Y_12_c22 <= Y_12_c21;
               X_13_c22 <= X_13_c21;
               Y_13_c22 <= Y_13_c21;
               X_14_c22 <= X_14_c21;
               Y_14_c22 <= Y_14_c21;
               X_15_c22 <= X_15_c21;
               Y_15_c22 <= Y_15_c21;
               X_16_c22 <= X_16_c21;
               Y_16_c22 <= Y_16_c21;
               X_17_c22 <= X_17_c21;
               Y_17_c22 <= Y_17_c21;
               X_18_c22 <= X_18_c21;
               Y_18_c22 <= Y_18_c21;
               X_19_c22 <= X_19_c21;
               Y_19_c22 <= Y_19_c21;
            end if;
            if ce_23 = '1' then
               R_1_c23 <= R_1_c22;
               R_2_c23 <= R_2_c22;
               R_3_c23 <= R_3_c22;
               R_4_c23 <= R_4_c22;
               R_5_c23 <= R_5_c22;
               R_6_c23 <= R_6_c22;
               R_7_c23 <= R_7_c22;
               R_8_c23 <= R_8_c22;
               R_9_c23 <= R_9_c22;
               R_10_c23 <= R_10_c22;
               R_11_c23 <= R_11_c22;
               R_12_c23 <= R_12_c22;
               Cin_13_c23 <= Cin_13_c22;
               X_13_c23 <= X_13_c22;
               Y_13_c23 <= Y_13_c22;
               X_14_c23 <= X_14_c22;
               Y_14_c23 <= Y_14_c22;
               X_15_c23 <= X_15_c22;
               Y_15_c23 <= Y_15_c22;
               X_16_c23 <= X_16_c22;
               Y_16_c23 <= Y_16_c22;
               X_17_c23 <= X_17_c22;
               Y_17_c23 <= Y_17_c22;
               X_18_c23 <= X_18_c22;
               Y_18_c23 <= Y_18_c22;
               X_19_c23 <= X_19_c22;
               Y_19_c23 <= Y_19_c22;
            end if;
            if ce_24 = '1' then
               R_1_c24 <= R_1_c23;
               R_2_c24 <= R_2_c23;
               R_3_c24 <= R_3_c23;
               R_4_c24 <= R_4_c23;
               R_5_c24 <= R_5_c23;
               R_6_c24 <= R_6_c23;
               R_7_c24 <= R_7_c23;
               R_8_c24 <= R_8_c23;
               R_9_c24 <= R_9_c23;
               R_10_c24 <= R_10_c23;
               R_11_c24 <= R_11_c23;
               R_12_c24 <= R_12_c23;
               R_13_c24 <= R_13_c23;
               Cin_14_c24 <= Cin_14_c23;
               X_14_c24 <= X_14_c23;
               Y_14_c24 <= Y_14_c23;
               X_15_c24 <= X_15_c23;
               Y_15_c24 <= Y_15_c23;
               X_16_c24 <= X_16_c23;
               Y_16_c24 <= Y_16_c23;
               X_17_c24 <= X_17_c23;
               Y_17_c24 <= Y_17_c23;
               X_18_c24 <= X_18_c23;
               Y_18_c24 <= Y_18_c23;
               X_19_c24 <= X_19_c23;
               Y_19_c24 <= Y_19_c23;
            end if;
            if ce_25 = '1' then
               R_1_c25 <= R_1_c24;
               R_2_c25 <= R_2_c24;
               R_3_c25 <= R_3_c24;
               R_4_c25 <= R_4_c24;
               R_5_c25 <= R_5_c24;
               R_6_c25 <= R_6_c24;
               R_7_c25 <= R_7_c24;
               R_8_c25 <= R_8_c24;
               R_9_c25 <= R_9_c24;
               R_10_c25 <= R_10_c24;
               R_11_c25 <= R_11_c24;
               R_12_c25 <= R_12_c24;
               R_13_c25 <= R_13_c24;
               R_14_c25 <= R_14_c24;
               Cin_15_c25 <= Cin_15_c24;
               X_15_c25 <= X_15_c24;
               Y_15_c25 <= Y_15_c24;
               X_16_c25 <= X_16_c24;
               Y_16_c25 <= Y_16_c24;
               X_17_c25 <= X_17_c24;
               Y_17_c25 <= Y_17_c24;
               X_18_c25 <= X_18_c24;
               Y_18_c25 <= Y_18_c24;
               X_19_c25 <= X_19_c24;
               Y_19_c25 <= Y_19_c24;
            end if;
            if ce_26 = '1' then
               R_1_c26 <= R_1_c25;
               R_2_c26 <= R_2_c25;
               R_3_c26 <= R_3_c25;
               R_4_c26 <= R_4_c25;
               R_5_c26 <= R_5_c25;
               R_6_c26 <= R_6_c25;
               R_7_c26 <= R_7_c25;
               R_8_c26 <= R_8_c25;
               R_9_c26 <= R_9_c25;
               R_10_c26 <= R_10_c25;
               R_11_c26 <= R_11_c25;
               R_12_c26 <= R_12_c25;
               R_13_c26 <= R_13_c25;
               R_14_c26 <= R_14_c25;
               R_15_c26 <= R_15_c25;
               Cin_16_c26 <= Cin_16_c25;
               X_16_c26 <= X_16_c25;
               Y_16_c26 <= Y_16_c25;
               X_17_c26 <= X_17_c25;
               Y_17_c26 <= Y_17_c25;
               X_18_c26 <= X_18_c25;
               Y_18_c26 <= Y_18_c25;
               X_19_c26 <= X_19_c25;
               Y_19_c26 <= Y_19_c25;
            end if;
            if ce_27 = '1' then
               R_1_c27 <= R_1_c26;
               R_2_c27 <= R_2_c26;
               R_3_c27 <= R_3_c26;
               R_4_c27 <= R_4_c26;
               R_5_c27 <= R_5_c26;
               R_6_c27 <= R_6_c26;
               R_7_c27 <= R_7_c26;
               R_8_c27 <= R_8_c26;
               R_9_c27 <= R_9_c26;
               R_10_c27 <= R_10_c26;
               R_11_c27 <= R_11_c26;
               R_12_c27 <= R_12_c26;
               R_13_c27 <= R_13_c26;
               R_14_c27 <= R_14_c26;
               R_15_c27 <= R_15_c26;
               R_16_c27 <= R_16_c26;
               Cin_17_c27 <= Cin_17_c26;
               X_17_c27 <= X_17_c26;
               Y_17_c27 <= Y_17_c26;
               X_18_c27 <= X_18_c26;
               Y_18_c27 <= Y_18_c26;
               X_19_c27 <= X_19_c26;
               Y_19_c27 <= Y_19_c26;
            end if;
            if ce_28 = '1' then
               R_1_c28 <= R_1_c27;
               R_2_c28 <= R_2_c27;
               R_3_c28 <= R_3_c27;
               R_4_c28 <= R_4_c27;
               R_5_c28 <= R_5_c27;
               R_6_c28 <= R_6_c27;
               R_7_c28 <= R_7_c27;
               R_8_c28 <= R_8_c27;
               R_9_c28 <= R_9_c27;
               R_10_c28 <= R_10_c27;
               R_11_c28 <= R_11_c27;
               R_12_c28 <= R_12_c27;
               R_13_c28 <= R_13_c27;
               R_14_c28 <= R_14_c27;
               R_15_c28 <= R_15_c27;
               R_16_c28 <= R_16_c27;
               R_17_c28 <= R_17_c27;
               Cin_18_c28 <= Cin_18_c27;
               X_18_c28 <= X_18_c27;
               Y_18_c28 <= Y_18_c27;
               X_19_c28 <= X_19_c27;
               Y_19_c28 <= Y_19_c27;
            end if;
            if ce_29 = '1' then
               R_1_c29 <= R_1_c28;
               R_2_c29 <= R_2_c28;
               R_3_c29 <= R_3_c28;
               R_4_c29 <= R_4_c28;
               R_5_c29 <= R_5_c28;
               R_6_c29 <= R_6_c28;
               R_7_c29 <= R_7_c28;
               R_8_c29 <= R_8_c28;
               R_9_c29 <= R_9_c28;
               R_10_c29 <= R_10_c28;
               R_11_c29 <= R_11_c28;
               R_12_c29 <= R_12_c28;
               R_13_c29 <= R_13_c28;
               R_14_c29 <= R_14_c28;
               R_15_c29 <= R_15_c28;
               R_16_c29 <= R_16_c28;
               R_17_c29 <= R_17_c28;
               R_18_c29 <= R_18_c28;
               Cin_19_c29 <= Cin_19_c28;
               X_19_c29 <= X_19_c28;
               Y_19_c29 <= Y_19_c28;
            end if;
         end if;
      end process;
   Cin_1_c9 <= Cin;
   X_1_c1 <= '0' & X(2 downto 0);
   Y_1_c5 <= '0' & Y(2 downto 0);
   S_1_c10 <= X_1_c10 + Y_1_c10 + Cin_1_c10;
   R_1_c10 <= S_1_c10(2 downto 0);
   Cin_2_c10 <= S_1_c10(3);
   X_2_c1 <= '0' & X(5 downto 3);
   Y_2_c5 <= '0' & Y(5 downto 3);
   S_2_c11 <= X_2_c11 + Y_2_c11 + Cin_2_c11;
   R_2_c11 <= S_2_c11(2 downto 0);
   Cin_3_c11 <= S_2_c11(3);
   X_3_c1 <= '0' & X(8 downto 6);
   Y_3_c5 <= '0' & Y(8 downto 6);
   S_3_c12 <= X_3_c12 + Y_3_c12 + Cin_3_c12;
   R_3_c12 <= S_3_c12(2 downto 0);
   Cin_4_c12 <= S_3_c12(3);
   X_4_c1 <= '0' & X(11 downto 9);
   Y_4_c5 <= '0' & Y(11 downto 9);
   S_4_c14 <= X_4_c14 + Y_4_c14 + Cin_4_c14;
   R_4_c14 <= S_4_c14(2 downto 0);
   Cin_5_c14 <= S_4_c14(3);
   X_5_c1 <= '0' & X(14 downto 12);
   Y_5_c5 <= '0' & Y(14 downto 12);
   S_5_c15 <= X_5_c15 + Y_5_c15 + Cin_5_c15;
   R_5_c15 <= S_5_c15(2 downto 0);
   Cin_6_c15 <= S_5_c15(3);
   X_6_c1 <= '0' & X(17 downto 15);
   Y_6_c5 <= '0' & Y(17 downto 15);
   S_6_c16 <= X_6_c16 + Y_6_c16 + Cin_6_c16;
   R_6_c16 <= S_6_c16(2 downto 0);
   Cin_7_c16 <= S_6_c16(3);
   X_7_c1 <= '0' & X(20 downto 18);
   Y_7_c5 <= '0' & Y(20 downto 18);
   S_7_c17 <= X_7_c17 + Y_7_c17 + Cin_7_c17;
   R_7_c17 <= S_7_c17(2 downto 0);
   Cin_8_c17 <= S_7_c17(3);
   X_8_c1 <= '0' & X(23 downto 21);
   Y_8_c5 <= '0' & Y(23 downto 21);
   S_8_c18 <= X_8_c18 + Y_8_c18 + Cin_8_c18;
   R_8_c18 <= S_8_c18(2 downto 0);
   Cin_9_c18 <= S_8_c18(3);
   X_9_c1 <= '0' & X(26 downto 24);
   Y_9_c5 <= '0' & Y(26 downto 24);
   S_9_c19 <= X_9_c19 + Y_9_c19 + Cin_9_c19;
   R_9_c19 <= S_9_c19(2 downto 0);
   Cin_10_c19 <= S_9_c19(3);
   X_10_c1 <= '0' & X(29 downto 27);
   Y_10_c5 <= '0' & Y(29 downto 27);
   S_10_c20 <= X_10_c20 + Y_10_c20 + Cin_10_c20;
   R_10_c20 <= S_10_c20(2 downto 0);
   Cin_11_c20 <= S_10_c20(3);
   X_11_c1 <= '0' & X(32 downto 30);
   Y_11_c5 <= '0' & Y(32 downto 30);
   S_11_c21 <= X_11_c21 + Y_11_c21 + Cin_11_c21;
   R_11_c21 <= S_11_c21(2 downto 0);
   Cin_12_c21 <= S_11_c21(3);
   X_12_c1 <= '0' & X(35 downto 33);
   Y_12_c5 <= '0' & Y(35 downto 33);
   S_12_c22 <= X_12_c22 + Y_12_c22 + Cin_12_c22;
   R_12_c22 <= S_12_c22(2 downto 0);
   Cin_13_c22 <= S_12_c22(3);
   X_13_c1 <= '0' & X(38 downto 36);
   Y_13_c5 <= '0' & Y(38 downto 36);
   S_13_c23 <= X_13_c23 + Y_13_c23 + Cin_13_c23;
   R_13_c23 <= S_13_c23(2 downto 0);
   Cin_14_c23 <= S_13_c23(3);
   X_14_c1 <= '0' & X(41 downto 39);
   Y_14_c5 <= '0' & Y(41 downto 39);
   S_14_c24 <= X_14_c24 + Y_14_c24 + Cin_14_c24;
   R_14_c24 <= S_14_c24(2 downto 0);
   Cin_15_c24 <= S_14_c24(3);
   X_15_c1 <= '0' & X(44 downto 42);
   Y_15_c5 <= '0' & Y(44 downto 42);
   S_15_c25 <= X_15_c25 + Y_15_c25 + Cin_15_c25;
   R_15_c25 <= S_15_c25(2 downto 0);
   Cin_16_c25 <= S_15_c25(3);
   X_16_c1 <= '0' & X(47 downto 45);
   Y_16_c5 <= '0' & Y(47 downto 45);
   S_16_c26 <= X_16_c26 + Y_16_c26 + Cin_16_c26;
   R_16_c26 <= S_16_c26(2 downto 0);
   Cin_17_c26 <= S_16_c26(3);
   X_17_c1 <= '0' & X(50 downto 48);
   Y_17_c5 <= '0' & Y(50 downto 48);
   S_17_c27 <= X_17_c27 + Y_17_c27 + Cin_17_c27;
   R_17_c27 <= S_17_c27(2 downto 0);
   Cin_18_c27 <= S_17_c27(3);
   X_18_c1 <= '0' & X(53 downto 51);
   Y_18_c5 <= '0' & Y(53 downto 51);
   S_18_c28 <= X_18_c28 + Y_18_c28 + Cin_18_c28;
   R_18_c28 <= S_18_c28(2 downto 0);
   Cin_19_c28 <= S_18_c28(3);
   X_19_c1 <= '0' & X(55 downto 54);
   Y_19_c5 <= '0' & Y(55 downto 54);
   S_19_c29 <= X_19_c29 + Y_19_c29 + Cin_19_c29;
   R_19_c29 <= S_19_c29(1 downto 0);
   R <= R_19_c29 & R_18_c29 & R_17_c29 & R_16_c29 & R_15_c29 & R_14_c29 & R_13_c29 & R_12_c29 & R_11_c29 & R_10_c29 & R_9_c29 & R_8_c29 & R_7_c29 & R_6_c29 & R_5_c29 & R_4_c29 & R_3_c29 & R_2_c29 & R_1_c29 ;
end architecture;

--------------------------------------------------------------------------------
--                     Normalizer_Z_57_57_57_Freq800_uid8
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, (2007-2020)
--------------------------------------------------------------------------------
-- Pipeline depth: 6 cycles
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
-- Input signals: X
-- Output signals: Count R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Normalizer_Z_57_57_57_Freq800_uid8 is
    port (clk, ce_30, ce_31, ce_32, ce_33, ce_34, ce_35 : in std_logic;
          X : in  std_logic_vector(56 downto 0);
          Count : out  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(56 downto 0)   );
end entity;

architecture arch of Normalizer_Z_57_57_57_Freq800_uid8 is
signal level6_c29, level6_c30 :  std_logic_vector(56 downto 0);
signal count5_c29, count5_c30, count5_c31, count5_c32, count5_c33, count5_c34, count5_c35 :  std_logic;
signal level5_c30, level5_c31 :  std_logic_vector(56 downto 0);
signal count4_c30, count4_c31, count4_c32, count4_c33, count4_c34, count4_c35 :  std_logic;
signal level4_c31, level4_c32 :  std_logic_vector(56 downto 0);
signal count3_c31, count3_c32, count3_c33, count3_c34, count3_c35 :  std_logic;
signal level3_c32, level3_c33 :  std_logic_vector(56 downto 0);
signal count2_c32, count2_c33, count2_c34, count2_c35 :  std_logic;
signal level2_c33, level2_c34 :  std_logic_vector(56 downto 0);
signal count1_c33, count1_c34, count1_c35 :  std_logic;
signal level1_c34, level1_c35 :  std_logic_vector(56 downto 0);
signal count0_c35 :  std_logic;
signal level0_c35 :  std_logic_vector(56 downto 0);
signal sCount_c35 :  std_logic_vector(5 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_30 = '1' then
               level6_c30 <= level6_c29;
               count5_c30 <= count5_c29;
            end if;
            if ce_31 = '1' then
               count5_c31 <= count5_c30;
               level5_c31 <= level5_c30;
               count4_c31 <= count4_c30;
            end if;
            if ce_32 = '1' then
               count5_c32 <= count5_c31;
               count4_c32 <= count4_c31;
               level4_c32 <= level4_c31;
               count3_c32 <= count3_c31;
            end if;
            if ce_33 = '1' then
               count5_c33 <= count5_c32;
               count4_c33 <= count4_c32;
               count3_c33 <= count3_c32;
               level3_c33 <= level3_c32;
               count2_c33 <= count2_c32;
            end if;
            if ce_34 = '1' then
               count5_c34 <= count5_c33;
               count4_c34 <= count4_c33;
               count3_c34 <= count3_c33;
               count2_c34 <= count2_c33;
               level2_c34 <= level2_c33;
               count1_c34 <= count1_c33;
            end if;
            if ce_35 = '1' then
               count5_c35 <= count5_c34;
               count4_c35 <= count4_c34;
               count3_c35 <= count3_c34;
               count2_c35 <= count2_c34;
               count1_c35 <= count1_c34;
               level1_c35 <= level1_c34;
            end if;
         end if;
      end process;
   level6_c29 <= X ;
   count5_c29<= '1' when level6_c29(56 downto 25) = (56 downto 25=>'0') else '0';
   level5_c30<= level6_c30(56 downto 0) when count5_c30='0' else level6_c30(24 downto 0) & (31 downto 0 => '0');

   count4_c30<= '1' when level5_c30(56 downto 41) = (56 downto 41=>'0') else '0';
   level4_c31<= level5_c31(56 downto 0) when count4_c31='0' else level5_c31(40 downto 0) & (15 downto 0 => '0');

   count3_c31<= '1' when level4_c31(56 downto 49) = (56 downto 49=>'0') else '0';
   level3_c32<= level4_c32(56 downto 0) when count3_c32='0' else level4_c32(48 downto 0) & (7 downto 0 => '0');

   count2_c32<= '1' when level3_c32(56 downto 53) = (56 downto 53=>'0') else '0';
   level2_c33<= level3_c33(56 downto 0) when count2_c33='0' else level3_c33(52 downto 0) & (3 downto 0 => '0');

   count1_c33<= '1' when level2_c33(56 downto 55) = (56 downto 55=>'0') else '0';
   level1_c34<= level2_c34(56 downto 0) when count1_c34='0' else level2_c34(54 downto 0) & (1 downto 0 => '0');

   count0_c35<= '1' when level1_c35(56 downto 56) = (56 downto 56=>'0') else '0';
   level0_c35<= level1_c35(56 downto 0) when count0_c35='0' else level1_c35(55 downto 0) & (0 downto 0 => '0');

   R <= level0_c35;
   sCount_c35 <= count5_c35 & count4_c35 & count3_c35 & count2_c35 & count1_c35 & count0_c35;
   Count <= sCount_c35;
end architecture;

--------------------------------------------------------------------------------
--                         IntAdder_66_Freq800_uid11
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 58 cycles
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_66_Freq800_uid11 is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27, ce_28, ce_29, ce_30, ce_31, ce_32, ce_33, ce_34, ce_35, ce_36, ce_37, ce_38, ce_39, ce_40, ce_41, ce_42, ce_43, ce_44, ce_45, ce_46, ce_47, ce_48, ce_49, ce_50, ce_51, ce_52, ce_53, ce_54, ce_55, ce_56, ce_57, ce_58 : in std_logic;
          X : in  std_logic_vector(65 downto 0);
          Y : in  std_logic_vector(65 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(65 downto 0)   );
end entity;

architecture arch of IntAdder_66_Freq800_uid11 is
signal Cin_1_c36, Cin_1_c37 :  std_logic;
signal X_1_c36, X_1_c37 :  std_logic_vector(3 downto 0);
signal Y_1_c0, Y_1_c1, Y_1_c2, Y_1_c3, Y_1_c4, Y_1_c5, Y_1_c6, Y_1_c7, Y_1_c8, Y_1_c9, Y_1_c10, Y_1_c11, Y_1_c12, Y_1_c13, Y_1_c14, Y_1_c15, Y_1_c16, Y_1_c17, Y_1_c18, Y_1_c19, Y_1_c20, Y_1_c21, Y_1_c22, Y_1_c23, Y_1_c24, Y_1_c25, Y_1_c26, Y_1_c27, Y_1_c28, Y_1_c29, Y_1_c30, Y_1_c31, Y_1_c32, Y_1_c33, Y_1_c34, Y_1_c35, Y_1_c36, Y_1_c37 :  std_logic_vector(3 downto 0);
signal S_1_c37 :  std_logic_vector(3 downto 0);
signal R_1_c37, R_1_c38, R_1_c39, R_1_c40, R_1_c41, R_1_c42, R_1_c43, R_1_c44, R_1_c45, R_1_c46, R_1_c47, R_1_c48, R_1_c49, R_1_c50, R_1_c51, R_1_c52, R_1_c53, R_1_c54, R_1_c55, R_1_c56, R_1_c57, R_1_c58 :  std_logic_vector(2 downto 0);
signal Cin_2_c37, Cin_2_c38 :  std_logic;
signal X_2_c36, X_2_c37, X_2_c38 :  std_logic_vector(3 downto 0);
signal Y_2_c0, Y_2_c1, Y_2_c2, Y_2_c3, Y_2_c4, Y_2_c5, Y_2_c6, Y_2_c7, Y_2_c8, Y_2_c9, Y_2_c10, Y_2_c11, Y_2_c12, Y_2_c13, Y_2_c14, Y_2_c15, Y_2_c16, Y_2_c17, Y_2_c18, Y_2_c19, Y_2_c20, Y_2_c21, Y_2_c22, Y_2_c23, Y_2_c24, Y_2_c25, Y_2_c26, Y_2_c27, Y_2_c28, Y_2_c29, Y_2_c30, Y_2_c31, Y_2_c32, Y_2_c33, Y_2_c34, Y_2_c35, Y_2_c36, Y_2_c37, Y_2_c38 :  std_logic_vector(3 downto 0);
signal S_2_c38 :  std_logic_vector(3 downto 0);
signal R_2_c38, R_2_c39, R_2_c40, R_2_c41, R_2_c42, R_2_c43, R_2_c44, R_2_c45, R_2_c46, R_2_c47, R_2_c48, R_2_c49, R_2_c50, R_2_c51, R_2_c52, R_2_c53, R_2_c54, R_2_c55, R_2_c56, R_2_c57, R_2_c58 :  std_logic_vector(2 downto 0);
signal Cin_3_c38, Cin_3_c39 :  std_logic;
signal X_3_c36, X_3_c37, X_3_c38, X_3_c39 :  std_logic_vector(3 downto 0);
signal Y_3_c0, Y_3_c1, Y_3_c2, Y_3_c3, Y_3_c4, Y_3_c5, Y_3_c6, Y_3_c7, Y_3_c8, Y_3_c9, Y_3_c10, Y_3_c11, Y_3_c12, Y_3_c13, Y_3_c14, Y_3_c15, Y_3_c16, Y_3_c17, Y_3_c18, Y_3_c19, Y_3_c20, Y_3_c21, Y_3_c22, Y_3_c23, Y_3_c24, Y_3_c25, Y_3_c26, Y_3_c27, Y_3_c28, Y_3_c29, Y_3_c30, Y_3_c31, Y_3_c32, Y_3_c33, Y_3_c34, Y_3_c35, Y_3_c36, Y_3_c37, Y_3_c38, Y_3_c39 :  std_logic_vector(3 downto 0);
signal S_3_c39 :  std_logic_vector(3 downto 0);
signal R_3_c39, R_3_c40, R_3_c41, R_3_c42, R_3_c43, R_3_c44, R_3_c45, R_3_c46, R_3_c47, R_3_c48, R_3_c49, R_3_c50, R_3_c51, R_3_c52, R_3_c53, R_3_c54, R_3_c55, R_3_c56, R_3_c57, R_3_c58 :  std_logic_vector(2 downto 0);
signal Cin_4_c39, Cin_4_c40 :  std_logic;
signal X_4_c36, X_4_c37, X_4_c38, X_4_c39, X_4_c40 :  std_logic_vector(3 downto 0);
signal Y_4_c0, Y_4_c1, Y_4_c2, Y_4_c3, Y_4_c4, Y_4_c5, Y_4_c6, Y_4_c7, Y_4_c8, Y_4_c9, Y_4_c10, Y_4_c11, Y_4_c12, Y_4_c13, Y_4_c14, Y_4_c15, Y_4_c16, Y_4_c17, Y_4_c18, Y_4_c19, Y_4_c20, Y_4_c21, Y_4_c22, Y_4_c23, Y_4_c24, Y_4_c25, Y_4_c26, Y_4_c27, Y_4_c28, Y_4_c29, Y_4_c30, Y_4_c31, Y_4_c32, Y_4_c33, Y_4_c34, Y_4_c35, Y_4_c36, Y_4_c37, Y_4_c38, Y_4_c39, Y_4_c40 :  std_logic_vector(3 downto 0);
signal S_4_c40 :  std_logic_vector(3 downto 0);
signal R_4_c40, R_4_c41, R_4_c42, R_4_c43, R_4_c44, R_4_c45, R_4_c46, R_4_c47, R_4_c48, R_4_c49, R_4_c50, R_4_c51, R_4_c52, R_4_c53, R_4_c54, R_4_c55, R_4_c56, R_4_c57, R_4_c58 :  std_logic_vector(2 downto 0);
signal Cin_5_c40, Cin_5_c41 :  std_logic;
signal X_5_c36, X_5_c37, X_5_c38, X_5_c39, X_5_c40, X_5_c41 :  std_logic_vector(3 downto 0);
signal Y_5_c0, Y_5_c1, Y_5_c2, Y_5_c3, Y_5_c4, Y_5_c5, Y_5_c6, Y_5_c7, Y_5_c8, Y_5_c9, Y_5_c10, Y_5_c11, Y_5_c12, Y_5_c13, Y_5_c14, Y_5_c15, Y_5_c16, Y_5_c17, Y_5_c18, Y_5_c19, Y_5_c20, Y_5_c21, Y_5_c22, Y_5_c23, Y_5_c24, Y_5_c25, Y_5_c26, Y_5_c27, Y_5_c28, Y_5_c29, Y_5_c30, Y_5_c31, Y_5_c32, Y_5_c33, Y_5_c34, Y_5_c35, Y_5_c36, Y_5_c37, Y_5_c38, Y_5_c39, Y_5_c40, Y_5_c41 :  std_logic_vector(3 downto 0);
signal S_5_c41 :  std_logic_vector(3 downto 0);
signal R_5_c41, R_5_c42, R_5_c43, R_5_c44, R_5_c45, R_5_c46, R_5_c47, R_5_c48, R_5_c49, R_5_c50, R_5_c51, R_5_c52, R_5_c53, R_5_c54, R_5_c55, R_5_c56, R_5_c57, R_5_c58 :  std_logic_vector(2 downto 0);
signal Cin_6_c41, Cin_6_c42 :  std_logic;
signal X_6_c36, X_6_c37, X_6_c38, X_6_c39, X_6_c40, X_6_c41, X_6_c42 :  std_logic_vector(3 downto 0);
signal Y_6_c0, Y_6_c1, Y_6_c2, Y_6_c3, Y_6_c4, Y_6_c5, Y_6_c6, Y_6_c7, Y_6_c8, Y_6_c9, Y_6_c10, Y_6_c11, Y_6_c12, Y_6_c13, Y_6_c14, Y_6_c15, Y_6_c16, Y_6_c17, Y_6_c18, Y_6_c19, Y_6_c20, Y_6_c21, Y_6_c22, Y_6_c23, Y_6_c24, Y_6_c25, Y_6_c26, Y_6_c27, Y_6_c28, Y_6_c29, Y_6_c30, Y_6_c31, Y_6_c32, Y_6_c33, Y_6_c34, Y_6_c35, Y_6_c36, Y_6_c37, Y_6_c38, Y_6_c39, Y_6_c40, Y_6_c41, Y_6_c42 :  std_logic_vector(3 downto 0);
signal S_6_c42 :  std_logic_vector(3 downto 0);
signal R_6_c42, R_6_c43, R_6_c44, R_6_c45, R_6_c46, R_6_c47, R_6_c48, R_6_c49, R_6_c50, R_6_c51, R_6_c52, R_6_c53, R_6_c54, R_6_c55, R_6_c56, R_6_c57, R_6_c58 :  std_logic_vector(2 downto 0);
signal Cin_7_c42, Cin_7_c43 :  std_logic;
signal X_7_c36, X_7_c37, X_7_c38, X_7_c39, X_7_c40, X_7_c41, X_7_c42, X_7_c43 :  std_logic_vector(3 downto 0);
signal Y_7_c0, Y_7_c1, Y_7_c2, Y_7_c3, Y_7_c4, Y_7_c5, Y_7_c6, Y_7_c7, Y_7_c8, Y_7_c9, Y_7_c10, Y_7_c11, Y_7_c12, Y_7_c13, Y_7_c14, Y_7_c15, Y_7_c16, Y_7_c17, Y_7_c18, Y_7_c19, Y_7_c20, Y_7_c21, Y_7_c22, Y_7_c23, Y_7_c24, Y_7_c25, Y_7_c26, Y_7_c27, Y_7_c28, Y_7_c29, Y_7_c30, Y_7_c31, Y_7_c32, Y_7_c33, Y_7_c34, Y_7_c35, Y_7_c36, Y_7_c37, Y_7_c38, Y_7_c39, Y_7_c40, Y_7_c41, Y_7_c42, Y_7_c43 :  std_logic_vector(3 downto 0);
signal S_7_c43 :  std_logic_vector(3 downto 0);
signal R_7_c43, R_7_c44, R_7_c45, R_7_c46, R_7_c47, R_7_c48, R_7_c49, R_7_c50, R_7_c51, R_7_c52, R_7_c53, R_7_c54, R_7_c55, R_7_c56, R_7_c57, R_7_c58 :  std_logic_vector(2 downto 0);
signal Cin_8_c43, Cin_8_c44 :  std_logic;
signal X_8_c36, X_8_c37, X_8_c38, X_8_c39, X_8_c40, X_8_c41, X_8_c42, X_8_c43, X_8_c44 :  std_logic_vector(3 downto 0);
signal Y_8_c0, Y_8_c1, Y_8_c2, Y_8_c3, Y_8_c4, Y_8_c5, Y_8_c6, Y_8_c7, Y_8_c8, Y_8_c9, Y_8_c10, Y_8_c11, Y_8_c12, Y_8_c13, Y_8_c14, Y_8_c15, Y_8_c16, Y_8_c17, Y_8_c18, Y_8_c19, Y_8_c20, Y_8_c21, Y_8_c22, Y_8_c23, Y_8_c24, Y_8_c25, Y_8_c26, Y_8_c27, Y_8_c28, Y_8_c29, Y_8_c30, Y_8_c31, Y_8_c32, Y_8_c33, Y_8_c34, Y_8_c35, Y_8_c36, Y_8_c37, Y_8_c38, Y_8_c39, Y_8_c40, Y_8_c41, Y_8_c42, Y_8_c43, Y_8_c44 :  std_logic_vector(3 downto 0);
signal S_8_c44 :  std_logic_vector(3 downto 0);
signal R_8_c44, R_8_c45, R_8_c46, R_8_c47, R_8_c48, R_8_c49, R_8_c50, R_8_c51, R_8_c52, R_8_c53, R_8_c54, R_8_c55, R_8_c56, R_8_c57, R_8_c58 :  std_logic_vector(2 downto 0);
signal Cin_9_c44, Cin_9_c45 :  std_logic;
signal X_9_c36, X_9_c37, X_9_c38, X_9_c39, X_9_c40, X_9_c41, X_9_c42, X_9_c43, X_9_c44, X_9_c45 :  std_logic_vector(3 downto 0);
signal Y_9_c0, Y_9_c1, Y_9_c2, Y_9_c3, Y_9_c4, Y_9_c5, Y_9_c6, Y_9_c7, Y_9_c8, Y_9_c9, Y_9_c10, Y_9_c11, Y_9_c12, Y_9_c13, Y_9_c14, Y_9_c15, Y_9_c16, Y_9_c17, Y_9_c18, Y_9_c19, Y_9_c20, Y_9_c21, Y_9_c22, Y_9_c23, Y_9_c24, Y_9_c25, Y_9_c26, Y_9_c27, Y_9_c28, Y_9_c29, Y_9_c30, Y_9_c31, Y_9_c32, Y_9_c33, Y_9_c34, Y_9_c35, Y_9_c36, Y_9_c37, Y_9_c38, Y_9_c39, Y_9_c40, Y_9_c41, Y_9_c42, Y_9_c43, Y_9_c44, Y_9_c45 :  std_logic_vector(3 downto 0);
signal S_9_c45 :  std_logic_vector(3 downto 0);
signal R_9_c45, R_9_c46, R_9_c47, R_9_c48, R_9_c49, R_9_c50, R_9_c51, R_9_c52, R_9_c53, R_9_c54, R_9_c55, R_9_c56, R_9_c57, R_9_c58 :  std_logic_vector(2 downto 0);
signal Cin_10_c45, Cin_10_c46 :  std_logic;
signal X_10_c36, X_10_c37, X_10_c38, X_10_c39, X_10_c40, X_10_c41, X_10_c42, X_10_c43, X_10_c44, X_10_c45, X_10_c46 :  std_logic_vector(3 downto 0);
signal Y_10_c0, Y_10_c1, Y_10_c2, Y_10_c3, Y_10_c4, Y_10_c5, Y_10_c6, Y_10_c7, Y_10_c8, Y_10_c9, Y_10_c10, Y_10_c11, Y_10_c12, Y_10_c13, Y_10_c14, Y_10_c15, Y_10_c16, Y_10_c17, Y_10_c18, Y_10_c19, Y_10_c20, Y_10_c21, Y_10_c22, Y_10_c23, Y_10_c24, Y_10_c25, Y_10_c26, Y_10_c27, Y_10_c28, Y_10_c29, Y_10_c30, Y_10_c31, Y_10_c32, Y_10_c33, Y_10_c34, Y_10_c35, Y_10_c36, Y_10_c37, Y_10_c38, Y_10_c39, Y_10_c40, Y_10_c41, Y_10_c42, Y_10_c43, Y_10_c44, Y_10_c45, Y_10_c46 :  std_logic_vector(3 downto 0);
signal S_10_c46 :  std_logic_vector(3 downto 0);
signal R_10_c46, R_10_c47, R_10_c48, R_10_c49, R_10_c50, R_10_c51, R_10_c52, R_10_c53, R_10_c54, R_10_c55, R_10_c56, R_10_c57, R_10_c58 :  std_logic_vector(2 downto 0);
signal Cin_11_c46, Cin_11_c47 :  std_logic;
signal X_11_c36, X_11_c37, X_11_c38, X_11_c39, X_11_c40, X_11_c41, X_11_c42, X_11_c43, X_11_c44, X_11_c45, X_11_c46, X_11_c47 :  std_logic_vector(3 downto 0);
signal Y_11_c0, Y_11_c1, Y_11_c2, Y_11_c3, Y_11_c4, Y_11_c5, Y_11_c6, Y_11_c7, Y_11_c8, Y_11_c9, Y_11_c10, Y_11_c11, Y_11_c12, Y_11_c13, Y_11_c14, Y_11_c15, Y_11_c16, Y_11_c17, Y_11_c18, Y_11_c19, Y_11_c20, Y_11_c21, Y_11_c22, Y_11_c23, Y_11_c24, Y_11_c25, Y_11_c26, Y_11_c27, Y_11_c28, Y_11_c29, Y_11_c30, Y_11_c31, Y_11_c32, Y_11_c33, Y_11_c34, Y_11_c35, Y_11_c36, Y_11_c37, Y_11_c38, Y_11_c39, Y_11_c40, Y_11_c41, Y_11_c42, Y_11_c43, Y_11_c44, Y_11_c45, Y_11_c46, Y_11_c47 :  std_logic_vector(3 downto 0);
signal S_11_c47 :  std_logic_vector(3 downto 0);
signal R_11_c47, R_11_c48, R_11_c49, R_11_c50, R_11_c51, R_11_c52, R_11_c53, R_11_c54, R_11_c55, R_11_c56, R_11_c57, R_11_c58 :  std_logic_vector(2 downto 0);
signal Cin_12_c47, Cin_12_c48 :  std_logic;
signal X_12_c36, X_12_c37, X_12_c38, X_12_c39, X_12_c40, X_12_c41, X_12_c42, X_12_c43, X_12_c44, X_12_c45, X_12_c46, X_12_c47, X_12_c48 :  std_logic_vector(3 downto 0);
signal Y_12_c0, Y_12_c1, Y_12_c2, Y_12_c3, Y_12_c4, Y_12_c5, Y_12_c6, Y_12_c7, Y_12_c8, Y_12_c9, Y_12_c10, Y_12_c11, Y_12_c12, Y_12_c13, Y_12_c14, Y_12_c15, Y_12_c16, Y_12_c17, Y_12_c18, Y_12_c19, Y_12_c20, Y_12_c21, Y_12_c22, Y_12_c23, Y_12_c24, Y_12_c25, Y_12_c26, Y_12_c27, Y_12_c28, Y_12_c29, Y_12_c30, Y_12_c31, Y_12_c32, Y_12_c33, Y_12_c34, Y_12_c35, Y_12_c36, Y_12_c37, Y_12_c38, Y_12_c39, Y_12_c40, Y_12_c41, Y_12_c42, Y_12_c43, Y_12_c44, Y_12_c45, Y_12_c46, Y_12_c47, Y_12_c48 :  std_logic_vector(3 downto 0);
signal S_12_c48 :  std_logic_vector(3 downto 0);
signal R_12_c48, R_12_c49, R_12_c50, R_12_c51, R_12_c52, R_12_c53, R_12_c54, R_12_c55, R_12_c56, R_12_c57, R_12_c58 :  std_logic_vector(2 downto 0);
signal Cin_13_c48, Cin_13_c49 :  std_logic;
signal X_13_c36, X_13_c37, X_13_c38, X_13_c39, X_13_c40, X_13_c41, X_13_c42, X_13_c43, X_13_c44, X_13_c45, X_13_c46, X_13_c47, X_13_c48, X_13_c49 :  std_logic_vector(3 downto 0);
signal Y_13_c0, Y_13_c1, Y_13_c2, Y_13_c3, Y_13_c4, Y_13_c5, Y_13_c6, Y_13_c7, Y_13_c8, Y_13_c9, Y_13_c10, Y_13_c11, Y_13_c12, Y_13_c13, Y_13_c14, Y_13_c15, Y_13_c16, Y_13_c17, Y_13_c18, Y_13_c19, Y_13_c20, Y_13_c21, Y_13_c22, Y_13_c23, Y_13_c24, Y_13_c25, Y_13_c26, Y_13_c27, Y_13_c28, Y_13_c29, Y_13_c30, Y_13_c31, Y_13_c32, Y_13_c33, Y_13_c34, Y_13_c35, Y_13_c36, Y_13_c37, Y_13_c38, Y_13_c39, Y_13_c40, Y_13_c41, Y_13_c42, Y_13_c43, Y_13_c44, Y_13_c45, Y_13_c46, Y_13_c47, Y_13_c48, Y_13_c49 :  std_logic_vector(3 downto 0);
signal S_13_c49 :  std_logic_vector(3 downto 0);
signal R_13_c49, R_13_c50, R_13_c51, R_13_c52, R_13_c53, R_13_c54, R_13_c55, R_13_c56, R_13_c57, R_13_c58 :  std_logic_vector(2 downto 0);
signal Cin_14_c49, Cin_14_c50 :  std_logic;
signal X_14_c36, X_14_c37, X_14_c38, X_14_c39, X_14_c40, X_14_c41, X_14_c42, X_14_c43, X_14_c44, X_14_c45, X_14_c46, X_14_c47, X_14_c48, X_14_c49, X_14_c50 :  std_logic_vector(3 downto 0);
signal Y_14_c0, Y_14_c1, Y_14_c2, Y_14_c3, Y_14_c4, Y_14_c5, Y_14_c6, Y_14_c7, Y_14_c8, Y_14_c9, Y_14_c10, Y_14_c11, Y_14_c12, Y_14_c13, Y_14_c14, Y_14_c15, Y_14_c16, Y_14_c17, Y_14_c18, Y_14_c19, Y_14_c20, Y_14_c21, Y_14_c22, Y_14_c23, Y_14_c24, Y_14_c25, Y_14_c26, Y_14_c27, Y_14_c28, Y_14_c29, Y_14_c30, Y_14_c31, Y_14_c32, Y_14_c33, Y_14_c34, Y_14_c35, Y_14_c36, Y_14_c37, Y_14_c38, Y_14_c39, Y_14_c40, Y_14_c41, Y_14_c42, Y_14_c43, Y_14_c44, Y_14_c45, Y_14_c46, Y_14_c47, Y_14_c48, Y_14_c49, Y_14_c50 :  std_logic_vector(3 downto 0);
signal S_14_c50 :  std_logic_vector(3 downto 0);
signal R_14_c50, R_14_c51, R_14_c52, R_14_c53, R_14_c54, R_14_c55, R_14_c56, R_14_c57, R_14_c58 :  std_logic_vector(2 downto 0);
signal Cin_15_c50, Cin_15_c51 :  std_logic;
signal X_15_c36, X_15_c37, X_15_c38, X_15_c39, X_15_c40, X_15_c41, X_15_c42, X_15_c43, X_15_c44, X_15_c45, X_15_c46, X_15_c47, X_15_c48, X_15_c49, X_15_c50, X_15_c51 :  std_logic_vector(3 downto 0);
signal Y_15_c0, Y_15_c1, Y_15_c2, Y_15_c3, Y_15_c4, Y_15_c5, Y_15_c6, Y_15_c7, Y_15_c8, Y_15_c9, Y_15_c10, Y_15_c11, Y_15_c12, Y_15_c13, Y_15_c14, Y_15_c15, Y_15_c16, Y_15_c17, Y_15_c18, Y_15_c19, Y_15_c20, Y_15_c21, Y_15_c22, Y_15_c23, Y_15_c24, Y_15_c25, Y_15_c26, Y_15_c27, Y_15_c28, Y_15_c29, Y_15_c30, Y_15_c31, Y_15_c32, Y_15_c33, Y_15_c34, Y_15_c35, Y_15_c36, Y_15_c37, Y_15_c38, Y_15_c39, Y_15_c40, Y_15_c41, Y_15_c42, Y_15_c43, Y_15_c44, Y_15_c45, Y_15_c46, Y_15_c47, Y_15_c48, Y_15_c49, Y_15_c50, Y_15_c51 :  std_logic_vector(3 downto 0);
signal S_15_c51 :  std_logic_vector(3 downto 0);
signal R_15_c51, R_15_c52, R_15_c53, R_15_c54, R_15_c55, R_15_c56, R_15_c57, R_15_c58 :  std_logic_vector(2 downto 0);
signal Cin_16_c51, Cin_16_c52 :  std_logic;
signal X_16_c36, X_16_c37, X_16_c38, X_16_c39, X_16_c40, X_16_c41, X_16_c42, X_16_c43, X_16_c44, X_16_c45, X_16_c46, X_16_c47, X_16_c48, X_16_c49, X_16_c50, X_16_c51, X_16_c52 :  std_logic_vector(3 downto 0);
signal Y_16_c0, Y_16_c1, Y_16_c2, Y_16_c3, Y_16_c4, Y_16_c5, Y_16_c6, Y_16_c7, Y_16_c8, Y_16_c9, Y_16_c10, Y_16_c11, Y_16_c12, Y_16_c13, Y_16_c14, Y_16_c15, Y_16_c16, Y_16_c17, Y_16_c18, Y_16_c19, Y_16_c20, Y_16_c21, Y_16_c22, Y_16_c23, Y_16_c24, Y_16_c25, Y_16_c26, Y_16_c27, Y_16_c28, Y_16_c29, Y_16_c30, Y_16_c31, Y_16_c32, Y_16_c33, Y_16_c34, Y_16_c35, Y_16_c36, Y_16_c37, Y_16_c38, Y_16_c39, Y_16_c40, Y_16_c41, Y_16_c42, Y_16_c43, Y_16_c44, Y_16_c45, Y_16_c46, Y_16_c47, Y_16_c48, Y_16_c49, Y_16_c50, Y_16_c51, Y_16_c52 :  std_logic_vector(3 downto 0);
signal S_16_c52 :  std_logic_vector(3 downto 0);
signal R_16_c52, R_16_c53, R_16_c54, R_16_c55, R_16_c56, R_16_c57, R_16_c58 :  std_logic_vector(2 downto 0);
signal Cin_17_c52, Cin_17_c53 :  std_logic;
signal X_17_c36, X_17_c37, X_17_c38, X_17_c39, X_17_c40, X_17_c41, X_17_c42, X_17_c43, X_17_c44, X_17_c45, X_17_c46, X_17_c47, X_17_c48, X_17_c49, X_17_c50, X_17_c51, X_17_c52, X_17_c53 :  std_logic_vector(3 downto 0);
signal Y_17_c0, Y_17_c1, Y_17_c2, Y_17_c3, Y_17_c4, Y_17_c5, Y_17_c6, Y_17_c7, Y_17_c8, Y_17_c9, Y_17_c10, Y_17_c11, Y_17_c12, Y_17_c13, Y_17_c14, Y_17_c15, Y_17_c16, Y_17_c17, Y_17_c18, Y_17_c19, Y_17_c20, Y_17_c21, Y_17_c22, Y_17_c23, Y_17_c24, Y_17_c25, Y_17_c26, Y_17_c27, Y_17_c28, Y_17_c29, Y_17_c30, Y_17_c31, Y_17_c32, Y_17_c33, Y_17_c34, Y_17_c35, Y_17_c36, Y_17_c37, Y_17_c38, Y_17_c39, Y_17_c40, Y_17_c41, Y_17_c42, Y_17_c43, Y_17_c44, Y_17_c45, Y_17_c46, Y_17_c47, Y_17_c48, Y_17_c49, Y_17_c50, Y_17_c51, Y_17_c52, Y_17_c53 :  std_logic_vector(3 downto 0);
signal S_17_c53 :  std_logic_vector(3 downto 0);
signal R_17_c53, R_17_c54, R_17_c55, R_17_c56, R_17_c57, R_17_c58 :  std_logic_vector(2 downto 0);
signal Cin_18_c53, Cin_18_c54 :  std_logic;
signal X_18_c36, X_18_c37, X_18_c38, X_18_c39, X_18_c40, X_18_c41, X_18_c42, X_18_c43, X_18_c44, X_18_c45, X_18_c46, X_18_c47, X_18_c48, X_18_c49, X_18_c50, X_18_c51, X_18_c52, X_18_c53, X_18_c54 :  std_logic_vector(3 downto 0);
signal Y_18_c0, Y_18_c1, Y_18_c2, Y_18_c3, Y_18_c4, Y_18_c5, Y_18_c6, Y_18_c7, Y_18_c8, Y_18_c9, Y_18_c10, Y_18_c11, Y_18_c12, Y_18_c13, Y_18_c14, Y_18_c15, Y_18_c16, Y_18_c17, Y_18_c18, Y_18_c19, Y_18_c20, Y_18_c21, Y_18_c22, Y_18_c23, Y_18_c24, Y_18_c25, Y_18_c26, Y_18_c27, Y_18_c28, Y_18_c29, Y_18_c30, Y_18_c31, Y_18_c32, Y_18_c33, Y_18_c34, Y_18_c35, Y_18_c36, Y_18_c37, Y_18_c38, Y_18_c39, Y_18_c40, Y_18_c41, Y_18_c42, Y_18_c43, Y_18_c44, Y_18_c45, Y_18_c46, Y_18_c47, Y_18_c48, Y_18_c49, Y_18_c50, Y_18_c51, Y_18_c52, Y_18_c53, Y_18_c54 :  std_logic_vector(3 downto 0);
signal S_18_c54 :  std_logic_vector(3 downto 0);
signal R_18_c54, R_18_c55, R_18_c56, R_18_c57, R_18_c58 :  std_logic_vector(2 downto 0);
signal Cin_19_c54, Cin_19_c55 :  std_logic;
signal X_19_c36, X_19_c37, X_19_c38, X_19_c39, X_19_c40, X_19_c41, X_19_c42, X_19_c43, X_19_c44, X_19_c45, X_19_c46, X_19_c47, X_19_c48, X_19_c49, X_19_c50, X_19_c51, X_19_c52, X_19_c53, X_19_c54, X_19_c55 :  std_logic_vector(3 downto 0);
signal Y_19_c0, Y_19_c1, Y_19_c2, Y_19_c3, Y_19_c4, Y_19_c5, Y_19_c6, Y_19_c7, Y_19_c8, Y_19_c9, Y_19_c10, Y_19_c11, Y_19_c12, Y_19_c13, Y_19_c14, Y_19_c15, Y_19_c16, Y_19_c17, Y_19_c18, Y_19_c19, Y_19_c20, Y_19_c21, Y_19_c22, Y_19_c23, Y_19_c24, Y_19_c25, Y_19_c26, Y_19_c27, Y_19_c28, Y_19_c29, Y_19_c30, Y_19_c31, Y_19_c32, Y_19_c33, Y_19_c34, Y_19_c35, Y_19_c36, Y_19_c37, Y_19_c38, Y_19_c39, Y_19_c40, Y_19_c41, Y_19_c42, Y_19_c43, Y_19_c44, Y_19_c45, Y_19_c46, Y_19_c47, Y_19_c48, Y_19_c49, Y_19_c50, Y_19_c51, Y_19_c52, Y_19_c53, Y_19_c54, Y_19_c55 :  std_logic_vector(3 downto 0);
signal S_19_c55 :  std_logic_vector(3 downto 0);
signal R_19_c55, R_19_c56, R_19_c57, R_19_c58 :  std_logic_vector(2 downto 0);
signal Cin_20_c55, Cin_20_c56 :  std_logic;
signal X_20_c36, X_20_c37, X_20_c38, X_20_c39, X_20_c40, X_20_c41, X_20_c42, X_20_c43, X_20_c44, X_20_c45, X_20_c46, X_20_c47, X_20_c48, X_20_c49, X_20_c50, X_20_c51, X_20_c52, X_20_c53, X_20_c54, X_20_c55, X_20_c56 :  std_logic_vector(3 downto 0);
signal Y_20_c0, Y_20_c1, Y_20_c2, Y_20_c3, Y_20_c4, Y_20_c5, Y_20_c6, Y_20_c7, Y_20_c8, Y_20_c9, Y_20_c10, Y_20_c11, Y_20_c12, Y_20_c13, Y_20_c14, Y_20_c15, Y_20_c16, Y_20_c17, Y_20_c18, Y_20_c19, Y_20_c20, Y_20_c21, Y_20_c22, Y_20_c23, Y_20_c24, Y_20_c25, Y_20_c26, Y_20_c27, Y_20_c28, Y_20_c29, Y_20_c30, Y_20_c31, Y_20_c32, Y_20_c33, Y_20_c34, Y_20_c35, Y_20_c36, Y_20_c37, Y_20_c38, Y_20_c39, Y_20_c40, Y_20_c41, Y_20_c42, Y_20_c43, Y_20_c44, Y_20_c45, Y_20_c46, Y_20_c47, Y_20_c48, Y_20_c49, Y_20_c50, Y_20_c51, Y_20_c52, Y_20_c53, Y_20_c54, Y_20_c55, Y_20_c56 :  std_logic_vector(3 downto 0);
signal S_20_c56 :  std_logic_vector(3 downto 0);
signal R_20_c56, R_20_c57, R_20_c58 :  std_logic_vector(2 downto 0);
signal Cin_21_c56, Cin_21_c57 :  std_logic;
signal X_21_c36, X_21_c37, X_21_c38, X_21_c39, X_21_c40, X_21_c41, X_21_c42, X_21_c43, X_21_c44, X_21_c45, X_21_c46, X_21_c47, X_21_c48, X_21_c49, X_21_c50, X_21_c51, X_21_c52, X_21_c53, X_21_c54, X_21_c55, X_21_c56, X_21_c57 :  std_logic_vector(3 downto 0);
signal Y_21_c0, Y_21_c1, Y_21_c2, Y_21_c3, Y_21_c4, Y_21_c5, Y_21_c6, Y_21_c7, Y_21_c8, Y_21_c9, Y_21_c10, Y_21_c11, Y_21_c12, Y_21_c13, Y_21_c14, Y_21_c15, Y_21_c16, Y_21_c17, Y_21_c18, Y_21_c19, Y_21_c20, Y_21_c21, Y_21_c22, Y_21_c23, Y_21_c24, Y_21_c25, Y_21_c26, Y_21_c27, Y_21_c28, Y_21_c29, Y_21_c30, Y_21_c31, Y_21_c32, Y_21_c33, Y_21_c34, Y_21_c35, Y_21_c36, Y_21_c37, Y_21_c38, Y_21_c39, Y_21_c40, Y_21_c41, Y_21_c42, Y_21_c43, Y_21_c44, Y_21_c45, Y_21_c46, Y_21_c47, Y_21_c48, Y_21_c49, Y_21_c50, Y_21_c51, Y_21_c52, Y_21_c53, Y_21_c54, Y_21_c55, Y_21_c56, Y_21_c57 :  std_logic_vector(3 downto 0);
signal S_21_c57 :  std_logic_vector(3 downto 0);
signal R_21_c57, R_21_c58 :  std_logic_vector(2 downto 0);
signal Cin_22_c57, Cin_22_c58 :  std_logic;
signal X_22_c36, X_22_c37, X_22_c38, X_22_c39, X_22_c40, X_22_c41, X_22_c42, X_22_c43, X_22_c44, X_22_c45, X_22_c46, X_22_c47, X_22_c48, X_22_c49, X_22_c50, X_22_c51, X_22_c52, X_22_c53, X_22_c54, X_22_c55, X_22_c56, X_22_c57, X_22_c58 :  std_logic_vector(3 downto 0);
signal Y_22_c0, Y_22_c1, Y_22_c2, Y_22_c3, Y_22_c4, Y_22_c5, Y_22_c6, Y_22_c7, Y_22_c8, Y_22_c9, Y_22_c10, Y_22_c11, Y_22_c12, Y_22_c13, Y_22_c14, Y_22_c15, Y_22_c16, Y_22_c17, Y_22_c18, Y_22_c19, Y_22_c20, Y_22_c21, Y_22_c22, Y_22_c23, Y_22_c24, Y_22_c25, Y_22_c26, Y_22_c27, Y_22_c28, Y_22_c29, Y_22_c30, Y_22_c31, Y_22_c32, Y_22_c33, Y_22_c34, Y_22_c35, Y_22_c36, Y_22_c37, Y_22_c38, Y_22_c39, Y_22_c40, Y_22_c41, Y_22_c42, Y_22_c43, Y_22_c44, Y_22_c45, Y_22_c46, Y_22_c47, Y_22_c48, Y_22_c49, Y_22_c50, Y_22_c51, Y_22_c52, Y_22_c53, Y_22_c54, Y_22_c55, Y_22_c56, Y_22_c57, Y_22_c58 :  std_logic_vector(3 downto 0);
signal S_22_c58 :  std_logic_vector(3 downto 0);
signal R_22_c58 :  std_logic_vector(2 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               Y_1_c1 <= Y_1_c0;
               Y_2_c1 <= Y_2_c0;
               Y_3_c1 <= Y_3_c0;
               Y_4_c1 <= Y_4_c0;
               Y_5_c1 <= Y_5_c0;
               Y_6_c1 <= Y_6_c0;
               Y_7_c1 <= Y_7_c0;
               Y_8_c1 <= Y_8_c0;
               Y_9_c1 <= Y_9_c0;
               Y_10_c1 <= Y_10_c0;
               Y_11_c1 <= Y_11_c0;
               Y_12_c1 <= Y_12_c0;
               Y_13_c1 <= Y_13_c0;
               Y_14_c1 <= Y_14_c0;
               Y_15_c1 <= Y_15_c0;
               Y_16_c1 <= Y_16_c0;
               Y_17_c1 <= Y_17_c0;
               Y_18_c1 <= Y_18_c0;
               Y_19_c1 <= Y_19_c0;
               Y_20_c1 <= Y_20_c0;
               Y_21_c1 <= Y_21_c0;
               Y_22_c1 <= Y_22_c0;
            end if;
            if ce_2 = '1' then
               Y_1_c2 <= Y_1_c1;
               Y_2_c2 <= Y_2_c1;
               Y_3_c2 <= Y_3_c1;
               Y_4_c2 <= Y_4_c1;
               Y_5_c2 <= Y_5_c1;
               Y_6_c2 <= Y_6_c1;
               Y_7_c2 <= Y_7_c1;
               Y_8_c2 <= Y_8_c1;
               Y_9_c2 <= Y_9_c1;
               Y_10_c2 <= Y_10_c1;
               Y_11_c2 <= Y_11_c1;
               Y_12_c2 <= Y_12_c1;
               Y_13_c2 <= Y_13_c1;
               Y_14_c2 <= Y_14_c1;
               Y_15_c2 <= Y_15_c1;
               Y_16_c2 <= Y_16_c1;
               Y_17_c2 <= Y_17_c1;
               Y_18_c2 <= Y_18_c1;
               Y_19_c2 <= Y_19_c1;
               Y_20_c2 <= Y_20_c1;
               Y_21_c2 <= Y_21_c1;
               Y_22_c2 <= Y_22_c1;
            end if;
            if ce_3 = '1' then
               Y_1_c3 <= Y_1_c2;
               Y_2_c3 <= Y_2_c2;
               Y_3_c3 <= Y_3_c2;
               Y_4_c3 <= Y_4_c2;
               Y_5_c3 <= Y_5_c2;
               Y_6_c3 <= Y_6_c2;
               Y_7_c3 <= Y_7_c2;
               Y_8_c3 <= Y_8_c2;
               Y_9_c3 <= Y_9_c2;
               Y_10_c3 <= Y_10_c2;
               Y_11_c3 <= Y_11_c2;
               Y_12_c3 <= Y_12_c2;
               Y_13_c3 <= Y_13_c2;
               Y_14_c3 <= Y_14_c2;
               Y_15_c3 <= Y_15_c2;
               Y_16_c3 <= Y_16_c2;
               Y_17_c3 <= Y_17_c2;
               Y_18_c3 <= Y_18_c2;
               Y_19_c3 <= Y_19_c2;
               Y_20_c3 <= Y_20_c2;
               Y_21_c3 <= Y_21_c2;
               Y_22_c3 <= Y_22_c2;
            end if;
            if ce_4 = '1' then
               Y_1_c4 <= Y_1_c3;
               Y_2_c4 <= Y_2_c3;
               Y_3_c4 <= Y_3_c3;
               Y_4_c4 <= Y_4_c3;
               Y_5_c4 <= Y_5_c3;
               Y_6_c4 <= Y_6_c3;
               Y_7_c4 <= Y_7_c3;
               Y_8_c4 <= Y_8_c3;
               Y_9_c4 <= Y_9_c3;
               Y_10_c4 <= Y_10_c3;
               Y_11_c4 <= Y_11_c3;
               Y_12_c4 <= Y_12_c3;
               Y_13_c4 <= Y_13_c3;
               Y_14_c4 <= Y_14_c3;
               Y_15_c4 <= Y_15_c3;
               Y_16_c4 <= Y_16_c3;
               Y_17_c4 <= Y_17_c3;
               Y_18_c4 <= Y_18_c3;
               Y_19_c4 <= Y_19_c3;
               Y_20_c4 <= Y_20_c3;
               Y_21_c4 <= Y_21_c3;
               Y_22_c4 <= Y_22_c3;
            end if;
            if ce_5 = '1' then
               Y_1_c5 <= Y_1_c4;
               Y_2_c5 <= Y_2_c4;
               Y_3_c5 <= Y_3_c4;
               Y_4_c5 <= Y_4_c4;
               Y_5_c5 <= Y_5_c4;
               Y_6_c5 <= Y_6_c4;
               Y_7_c5 <= Y_7_c4;
               Y_8_c5 <= Y_8_c4;
               Y_9_c5 <= Y_9_c4;
               Y_10_c5 <= Y_10_c4;
               Y_11_c5 <= Y_11_c4;
               Y_12_c5 <= Y_12_c4;
               Y_13_c5 <= Y_13_c4;
               Y_14_c5 <= Y_14_c4;
               Y_15_c5 <= Y_15_c4;
               Y_16_c5 <= Y_16_c4;
               Y_17_c5 <= Y_17_c4;
               Y_18_c5 <= Y_18_c4;
               Y_19_c5 <= Y_19_c4;
               Y_20_c5 <= Y_20_c4;
               Y_21_c5 <= Y_21_c4;
               Y_22_c5 <= Y_22_c4;
            end if;
            if ce_6 = '1' then
               Y_1_c6 <= Y_1_c5;
               Y_2_c6 <= Y_2_c5;
               Y_3_c6 <= Y_3_c5;
               Y_4_c6 <= Y_4_c5;
               Y_5_c6 <= Y_5_c5;
               Y_6_c6 <= Y_6_c5;
               Y_7_c6 <= Y_7_c5;
               Y_8_c6 <= Y_8_c5;
               Y_9_c6 <= Y_9_c5;
               Y_10_c6 <= Y_10_c5;
               Y_11_c6 <= Y_11_c5;
               Y_12_c6 <= Y_12_c5;
               Y_13_c6 <= Y_13_c5;
               Y_14_c6 <= Y_14_c5;
               Y_15_c6 <= Y_15_c5;
               Y_16_c6 <= Y_16_c5;
               Y_17_c6 <= Y_17_c5;
               Y_18_c6 <= Y_18_c5;
               Y_19_c6 <= Y_19_c5;
               Y_20_c6 <= Y_20_c5;
               Y_21_c6 <= Y_21_c5;
               Y_22_c6 <= Y_22_c5;
            end if;
            if ce_7 = '1' then
               Y_1_c7 <= Y_1_c6;
               Y_2_c7 <= Y_2_c6;
               Y_3_c7 <= Y_3_c6;
               Y_4_c7 <= Y_4_c6;
               Y_5_c7 <= Y_5_c6;
               Y_6_c7 <= Y_6_c6;
               Y_7_c7 <= Y_7_c6;
               Y_8_c7 <= Y_8_c6;
               Y_9_c7 <= Y_9_c6;
               Y_10_c7 <= Y_10_c6;
               Y_11_c7 <= Y_11_c6;
               Y_12_c7 <= Y_12_c6;
               Y_13_c7 <= Y_13_c6;
               Y_14_c7 <= Y_14_c6;
               Y_15_c7 <= Y_15_c6;
               Y_16_c7 <= Y_16_c6;
               Y_17_c7 <= Y_17_c6;
               Y_18_c7 <= Y_18_c6;
               Y_19_c7 <= Y_19_c6;
               Y_20_c7 <= Y_20_c6;
               Y_21_c7 <= Y_21_c6;
               Y_22_c7 <= Y_22_c6;
            end if;
            if ce_8 = '1' then
               Y_1_c8 <= Y_1_c7;
               Y_2_c8 <= Y_2_c7;
               Y_3_c8 <= Y_3_c7;
               Y_4_c8 <= Y_4_c7;
               Y_5_c8 <= Y_5_c7;
               Y_6_c8 <= Y_6_c7;
               Y_7_c8 <= Y_7_c7;
               Y_8_c8 <= Y_8_c7;
               Y_9_c8 <= Y_9_c7;
               Y_10_c8 <= Y_10_c7;
               Y_11_c8 <= Y_11_c7;
               Y_12_c8 <= Y_12_c7;
               Y_13_c8 <= Y_13_c7;
               Y_14_c8 <= Y_14_c7;
               Y_15_c8 <= Y_15_c7;
               Y_16_c8 <= Y_16_c7;
               Y_17_c8 <= Y_17_c7;
               Y_18_c8 <= Y_18_c7;
               Y_19_c8 <= Y_19_c7;
               Y_20_c8 <= Y_20_c7;
               Y_21_c8 <= Y_21_c7;
               Y_22_c8 <= Y_22_c7;
            end if;
            if ce_9 = '1' then
               Y_1_c9 <= Y_1_c8;
               Y_2_c9 <= Y_2_c8;
               Y_3_c9 <= Y_3_c8;
               Y_4_c9 <= Y_4_c8;
               Y_5_c9 <= Y_5_c8;
               Y_6_c9 <= Y_6_c8;
               Y_7_c9 <= Y_7_c8;
               Y_8_c9 <= Y_8_c8;
               Y_9_c9 <= Y_9_c8;
               Y_10_c9 <= Y_10_c8;
               Y_11_c9 <= Y_11_c8;
               Y_12_c9 <= Y_12_c8;
               Y_13_c9 <= Y_13_c8;
               Y_14_c9 <= Y_14_c8;
               Y_15_c9 <= Y_15_c8;
               Y_16_c9 <= Y_16_c8;
               Y_17_c9 <= Y_17_c8;
               Y_18_c9 <= Y_18_c8;
               Y_19_c9 <= Y_19_c8;
               Y_20_c9 <= Y_20_c8;
               Y_21_c9 <= Y_21_c8;
               Y_22_c9 <= Y_22_c8;
            end if;
            if ce_10 = '1' then
               Y_1_c10 <= Y_1_c9;
               Y_2_c10 <= Y_2_c9;
               Y_3_c10 <= Y_3_c9;
               Y_4_c10 <= Y_4_c9;
               Y_5_c10 <= Y_5_c9;
               Y_6_c10 <= Y_6_c9;
               Y_7_c10 <= Y_7_c9;
               Y_8_c10 <= Y_8_c9;
               Y_9_c10 <= Y_9_c9;
               Y_10_c10 <= Y_10_c9;
               Y_11_c10 <= Y_11_c9;
               Y_12_c10 <= Y_12_c9;
               Y_13_c10 <= Y_13_c9;
               Y_14_c10 <= Y_14_c9;
               Y_15_c10 <= Y_15_c9;
               Y_16_c10 <= Y_16_c9;
               Y_17_c10 <= Y_17_c9;
               Y_18_c10 <= Y_18_c9;
               Y_19_c10 <= Y_19_c9;
               Y_20_c10 <= Y_20_c9;
               Y_21_c10 <= Y_21_c9;
               Y_22_c10 <= Y_22_c9;
            end if;
            if ce_11 = '1' then
               Y_1_c11 <= Y_1_c10;
               Y_2_c11 <= Y_2_c10;
               Y_3_c11 <= Y_3_c10;
               Y_4_c11 <= Y_4_c10;
               Y_5_c11 <= Y_5_c10;
               Y_6_c11 <= Y_6_c10;
               Y_7_c11 <= Y_7_c10;
               Y_8_c11 <= Y_8_c10;
               Y_9_c11 <= Y_9_c10;
               Y_10_c11 <= Y_10_c10;
               Y_11_c11 <= Y_11_c10;
               Y_12_c11 <= Y_12_c10;
               Y_13_c11 <= Y_13_c10;
               Y_14_c11 <= Y_14_c10;
               Y_15_c11 <= Y_15_c10;
               Y_16_c11 <= Y_16_c10;
               Y_17_c11 <= Y_17_c10;
               Y_18_c11 <= Y_18_c10;
               Y_19_c11 <= Y_19_c10;
               Y_20_c11 <= Y_20_c10;
               Y_21_c11 <= Y_21_c10;
               Y_22_c11 <= Y_22_c10;
            end if;
            if ce_12 = '1' then
               Y_1_c12 <= Y_1_c11;
               Y_2_c12 <= Y_2_c11;
               Y_3_c12 <= Y_3_c11;
               Y_4_c12 <= Y_4_c11;
               Y_5_c12 <= Y_5_c11;
               Y_6_c12 <= Y_6_c11;
               Y_7_c12 <= Y_7_c11;
               Y_8_c12 <= Y_8_c11;
               Y_9_c12 <= Y_9_c11;
               Y_10_c12 <= Y_10_c11;
               Y_11_c12 <= Y_11_c11;
               Y_12_c12 <= Y_12_c11;
               Y_13_c12 <= Y_13_c11;
               Y_14_c12 <= Y_14_c11;
               Y_15_c12 <= Y_15_c11;
               Y_16_c12 <= Y_16_c11;
               Y_17_c12 <= Y_17_c11;
               Y_18_c12 <= Y_18_c11;
               Y_19_c12 <= Y_19_c11;
               Y_20_c12 <= Y_20_c11;
               Y_21_c12 <= Y_21_c11;
               Y_22_c12 <= Y_22_c11;
            end if;
            if ce_13 = '1' then
               Y_1_c13 <= Y_1_c12;
               Y_2_c13 <= Y_2_c12;
               Y_3_c13 <= Y_3_c12;
               Y_4_c13 <= Y_4_c12;
               Y_5_c13 <= Y_5_c12;
               Y_6_c13 <= Y_6_c12;
               Y_7_c13 <= Y_7_c12;
               Y_8_c13 <= Y_8_c12;
               Y_9_c13 <= Y_9_c12;
               Y_10_c13 <= Y_10_c12;
               Y_11_c13 <= Y_11_c12;
               Y_12_c13 <= Y_12_c12;
               Y_13_c13 <= Y_13_c12;
               Y_14_c13 <= Y_14_c12;
               Y_15_c13 <= Y_15_c12;
               Y_16_c13 <= Y_16_c12;
               Y_17_c13 <= Y_17_c12;
               Y_18_c13 <= Y_18_c12;
               Y_19_c13 <= Y_19_c12;
               Y_20_c13 <= Y_20_c12;
               Y_21_c13 <= Y_21_c12;
               Y_22_c13 <= Y_22_c12;
            end if;
            if ce_14 = '1' then
               Y_1_c14 <= Y_1_c13;
               Y_2_c14 <= Y_2_c13;
               Y_3_c14 <= Y_3_c13;
               Y_4_c14 <= Y_4_c13;
               Y_5_c14 <= Y_5_c13;
               Y_6_c14 <= Y_6_c13;
               Y_7_c14 <= Y_7_c13;
               Y_8_c14 <= Y_8_c13;
               Y_9_c14 <= Y_9_c13;
               Y_10_c14 <= Y_10_c13;
               Y_11_c14 <= Y_11_c13;
               Y_12_c14 <= Y_12_c13;
               Y_13_c14 <= Y_13_c13;
               Y_14_c14 <= Y_14_c13;
               Y_15_c14 <= Y_15_c13;
               Y_16_c14 <= Y_16_c13;
               Y_17_c14 <= Y_17_c13;
               Y_18_c14 <= Y_18_c13;
               Y_19_c14 <= Y_19_c13;
               Y_20_c14 <= Y_20_c13;
               Y_21_c14 <= Y_21_c13;
               Y_22_c14 <= Y_22_c13;
            end if;
            if ce_15 = '1' then
               Y_1_c15 <= Y_1_c14;
               Y_2_c15 <= Y_2_c14;
               Y_3_c15 <= Y_3_c14;
               Y_4_c15 <= Y_4_c14;
               Y_5_c15 <= Y_5_c14;
               Y_6_c15 <= Y_6_c14;
               Y_7_c15 <= Y_7_c14;
               Y_8_c15 <= Y_8_c14;
               Y_9_c15 <= Y_9_c14;
               Y_10_c15 <= Y_10_c14;
               Y_11_c15 <= Y_11_c14;
               Y_12_c15 <= Y_12_c14;
               Y_13_c15 <= Y_13_c14;
               Y_14_c15 <= Y_14_c14;
               Y_15_c15 <= Y_15_c14;
               Y_16_c15 <= Y_16_c14;
               Y_17_c15 <= Y_17_c14;
               Y_18_c15 <= Y_18_c14;
               Y_19_c15 <= Y_19_c14;
               Y_20_c15 <= Y_20_c14;
               Y_21_c15 <= Y_21_c14;
               Y_22_c15 <= Y_22_c14;
            end if;
            if ce_16 = '1' then
               Y_1_c16 <= Y_1_c15;
               Y_2_c16 <= Y_2_c15;
               Y_3_c16 <= Y_3_c15;
               Y_4_c16 <= Y_4_c15;
               Y_5_c16 <= Y_5_c15;
               Y_6_c16 <= Y_6_c15;
               Y_7_c16 <= Y_7_c15;
               Y_8_c16 <= Y_8_c15;
               Y_9_c16 <= Y_9_c15;
               Y_10_c16 <= Y_10_c15;
               Y_11_c16 <= Y_11_c15;
               Y_12_c16 <= Y_12_c15;
               Y_13_c16 <= Y_13_c15;
               Y_14_c16 <= Y_14_c15;
               Y_15_c16 <= Y_15_c15;
               Y_16_c16 <= Y_16_c15;
               Y_17_c16 <= Y_17_c15;
               Y_18_c16 <= Y_18_c15;
               Y_19_c16 <= Y_19_c15;
               Y_20_c16 <= Y_20_c15;
               Y_21_c16 <= Y_21_c15;
               Y_22_c16 <= Y_22_c15;
            end if;
            if ce_17 = '1' then
               Y_1_c17 <= Y_1_c16;
               Y_2_c17 <= Y_2_c16;
               Y_3_c17 <= Y_3_c16;
               Y_4_c17 <= Y_4_c16;
               Y_5_c17 <= Y_5_c16;
               Y_6_c17 <= Y_6_c16;
               Y_7_c17 <= Y_7_c16;
               Y_8_c17 <= Y_8_c16;
               Y_9_c17 <= Y_9_c16;
               Y_10_c17 <= Y_10_c16;
               Y_11_c17 <= Y_11_c16;
               Y_12_c17 <= Y_12_c16;
               Y_13_c17 <= Y_13_c16;
               Y_14_c17 <= Y_14_c16;
               Y_15_c17 <= Y_15_c16;
               Y_16_c17 <= Y_16_c16;
               Y_17_c17 <= Y_17_c16;
               Y_18_c17 <= Y_18_c16;
               Y_19_c17 <= Y_19_c16;
               Y_20_c17 <= Y_20_c16;
               Y_21_c17 <= Y_21_c16;
               Y_22_c17 <= Y_22_c16;
            end if;
            if ce_18 = '1' then
               Y_1_c18 <= Y_1_c17;
               Y_2_c18 <= Y_2_c17;
               Y_3_c18 <= Y_3_c17;
               Y_4_c18 <= Y_4_c17;
               Y_5_c18 <= Y_5_c17;
               Y_6_c18 <= Y_6_c17;
               Y_7_c18 <= Y_7_c17;
               Y_8_c18 <= Y_8_c17;
               Y_9_c18 <= Y_9_c17;
               Y_10_c18 <= Y_10_c17;
               Y_11_c18 <= Y_11_c17;
               Y_12_c18 <= Y_12_c17;
               Y_13_c18 <= Y_13_c17;
               Y_14_c18 <= Y_14_c17;
               Y_15_c18 <= Y_15_c17;
               Y_16_c18 <= Y_16_c17;
               Y_17_c18 <= Y_17_c17;
               Y_18_c18 <= Y_18_c17;
               Y_19_c18 <= Y_19_c17;
               Y_20_c18 <= Y_20_c17;
               Y_21_c18 <= Y_21_c17;
               Y_22_c18 <= Y_22_c17;
            end if;
            if ce_19 = '1' then
               Y_1_c19 <= Y_1_c18;
               Y_2_c19 <= Y_2_c18;
               Y_3_c19 <= Y_3_c18;
               Y_4_c19 <= Y_4_c18;
               Y_5_c19 <= Y_5_c18;
               Y_6_c19 <= Y_6_c18;
               Y_7_c19 <= Y_7_c18;
               Y_8_c19 <= Y_8_c18;
               Y_9_c19 <= Y_9_c18;
               Y_10_c19 <= Y_10_c18;
               Y_11_c19 <= Y_11_c18;
               Y_12_c19 <= Y_12_c18;
               Y_13_c19 <= Y_13_c18;
               Y_14_c19 <= Y_14_c18;
               Y_15_c19 <= Y_15_c18;
               Y_16_c19 <= Y_16_c18;
               Y_17_c19 <= Y_17_c18;
               Y_18_c19 <= Y_18_c18;
               Y_19_c19 <= Y_19_c18;
               Y_20_c19 <= Y_20_c18;
               Y_21_c19 <= Y_21_c18;
               Y_22_c19 <= Y_22_c18;
            end if;
            if ce_20 = '1' then
               Y_1_c20 <= Y_1_c19;
               Y_2_c20 <= Y_2_c19;
               Y_3_c20 <= Y_3_c19;
               Y_4_c20 <= Y_4_c19;
               Y_5_c20 <= Y_5_c19;
               Y_6_c20 <= Y_6_c19;
               Y_7_c20 <= Y_7_c19;
               Y_8_c20 <= Y_8_c19;
               Y_9_c20 <= Y_9_c19;
               Y_10_c20 <= Y_10_c19;
               Y_11_c20 <= Y_11_c19;
               Y_12_c20 <= Y_12_c19;
               Y_13_c20 <= Y_13_c19;
               Y_14_c20 <= Y_14_c19;
               Y_15_c20 <= Y_15_c19;
               Y_16_c20 <= Y_16_c19;
               Y_17_c20 <= Y_17_c19;
               Y_18_c20 <= Y_18_c19;
               Y_19_c20 <= Y_19_c19;
               Y_20_c20 <= Y_20_c19;
               Y_21_c20 <= Y_21_c19;
               Y_22_c20 <= Y_22_c19;
            end if;
            if ce_21 = '1' then
               Y_1_c21 <= Y_1_c20;
               Y_2_c21 <= Y_2_c20;
               Y_3_c21 <= Y_3_c20;
               Y_4_c21 <= Y_4_c20;
               Y_5_c21 <= Y_5_c20;
               Y_6_c21 <= Y_6_c20;
               Y_7_c21 <= Y_7_c20;
               Y_8_c21 <= Y_8_c20;
               Y_9_c21 <= Y_9_c20;
               Y_10_c21 <= Y_10_c20;
               Y_11_c21 <= Y_11_c20;
               Y_12_c21 <= Y_12_c20;
               Y_13_c21 <= Y_13_c20;
               Y_14_c21 <= Y_14_c20;
               Y_15_c21 <= Y_15_c20;
               Y_16_c21 <= Y_16_c20;
               Y_17_c21 <= Y_17_c20;
               Y_18_c21 <= Y_18_c20;
               Y_19_c21 <= Y_19_c20;
               Y_20_c21 <= Y_20_c20;
               Y_21_c21 <= Y_21_c20;
               Y_22_c21 <= Y_22_c20;
            end if;
            if ce_22 = '1' then
               Y_1_c22 <= Y_1_c21;
               Y_2_c22 <= Y_2_c21;
               Y_3_c22 <= Y_3_c21;
               Y_4_c22 <= Y_4_c21;
               Y_5_c22 <= Y_5_c21;
               Y_6_c22 <= Y_6_c21;
               Y_7_c22 <= Y_7_c21;
               Y_8_c22 <= Y_8_c21;
               Y_9_c22 <= Y_9_c21;
               Y_10_c22 <= Y_10_c21;
               Y_11_c22 <= Y_11_c21;
               Y_12_c22 <= Y_12_c21;
               Y_13_c22 <= Y_13_c21;
               Y_14_c22 <= Y_14_c21;
               Y_15_c22 <= Y_15_c21;
               Y_16_c22 <= Y_16_c21;
               Y_17_c22 <= Y_17_c21;
               Y_18_c22 <= Y_18_c21;
               Y_19_c22 <= Y_19_c21;
               Y_20_c22 <= Y_20_c21;
               Y_21_c22 <= Y_21_c21;
               Y_22_c22 <= Y_22_c21;
            end if;
            if ce_23 = '1' then
               Y_1_c23 <= Y_1_c22;
               Y_2_c23 <= Y_2_c22;
               Y_3_c23 <= Y_3_c22;
               Y_4_c23 <= Y_4_c22;
               Y_5_c23 <= Y_5_c22;
               Y_6_c23 <= Y_6_c22;
               Y_7_c23 <= Y_7_c22;
               Y_8_c23 <= Y_8_c22;
               Y_9_c23 <= Y_9_c22;
               Y_10_c23 <= Y_10_c22;
               Y_11_c23 <= Y_11_c22;
               Y_12_c23 <= Y_12_c22;
               Y_13_c23 <= Y_13_c22;
               Y_14_c23 <= Y_14_c22;
               Y_15_c23 <= Y_15_c22;
               Y_16_c23 <= Y_16_c22;
               Y_17_c23 <= Y_17_c22;
               Y_18_c23 <= Y_18_c22;
               Y_19_c23 <= Y_19_c22;
               Y_20_c23 <= Y_20_c22;
               Y_21_c23 <= Y_21_c22;
               Y_22_c23 <= Y_22_c22;
            end if;
            if ce_24 = '1' then
               Y_1_c24 <= Y_1_c23;
               Y_2_c24 <= Y_2_c23;
               Y_3_c24 <= Y_3_c23;
               Y_4_c24 <= Y_4_c23;
               Y_5_c24 <= Y_5_c23;
               Y_6_c24 <= Y_6_c23;
               Y_7_c24 <= Y_7_c23;
               Y_8_c24 <= Y_8_c23;
               Y_9_c24 <= Y_9_c23;
               Y_10_c24 <= Y_10_c23;
               Y_11_c24 <= Y_11_c23;
               Y_12_c24 <= Y_12_c23;
               Y_13_c24 <= Y_13_c23;
               Y_14_c24 <= Y_14_c23;
               Y_15_c24 <= Y_15_c23;
               Y_16_c24 <= Y_16_c23;
               Y_17_c24 <= Y_17_c23;
               Y_18_c24 <= Y_18_c23;
               Y_19_c24 <= Y_19_c23;
               Y_20_c24 <= Y_20_c23;
               Y_21_c24 <= Y_21_c23;
               Y_22_c24 <= Y_22_c23;
            end if;
            if ce_25 = '1' then
               Y_1_c25 <= Y_1_c24;
               Y_2_c25 <= Y_2_c24;
               Y_3_c25 <= Y_3_c24;
               Y_4_c25 <= Y_4_c24;
               Y_5_c25 <= Y_5_c24;
               Y_6_c25 <= Y_6_c24;
               Y_7_c25 <= Y_7_c24;
               Y_8_c25 <= Y_8_c24;
               Y_9_c25 <= Y_9_c24;
               Y_10_c25 <= Y_10_c24;
               Y_11_c25 <= Y_11_c24;
               Y_12_c25 <= Y_12_c24;
               Y_13_c25 <= Y_13_c24;
               Y_14_c25 <= Y_14_c24;
               Y_15_c25 <= Y_15_c24;
               Y_16_c25 <= Y_16_c24;
               Y_17_c25 <= Y_17_c24;
               Y_18_c25 <= Y_18_c24;
               Y_19_c25 <= Y_19_c24;
               Y_20_c25 <= Y_20_c24;
               Y_21_c25 <= Y_21_c24;
               Y_22_c25 <= Y_22_c24;
            end if;
            if ce_26 = '1' then
               Y_1_c26 <= Y_1_c25;
               Y_2_c26 <= Y_2_c25;
               Y_3_c26 <= Y_3_c25;
               Y_4_c26 <= Y_4_c25;
               Y_5_c26 <= Y_5_c25;
               Y_6_c26 <= Y_6_c25;
               Y_7_c26 <= Y_7_c25;
               Y_8_c26 <= Y_8_c25;
               Y_9_c26 <= Y_9_c25;
               Y_10_c26 <= Y_10_c25;
               Y_11_c26 <= Y_11_c25;
               Y_12_c26 <= Y_12_c25;
               Y_13_c26 <= Y_13_c25;
               Y_14_c26 <= Y_14_c25;
               Y_15_c26 <= Y_15_c25;
               Y_16_c26 <= Y_16_c25;
               Y_17_c26 <= Y_17_c25;
               Y_18_c26 <= Y_18_c25;
               Y_19_c26 <= Y_19_c25;
               Y_20_c26 <= Y_20_c25;
               Y_21_c26 <= Y_21_c25;
               Y_22_c26 <= Y_22_c25;
            end if;
            if ce_27 = '1' then
               Y_1_c27 <= Y_1_c26;
               Y_2_c27 <= Y_2_c26;
               Y_3_c27 <= Y_3_c26;
               Y_4_c27 <= Y_4_c26;
               Y_5_c27 <= Y_5_c26;
               Y_6_c27 <= Y_6_c26;
               Y_7_c27 <= Y_7_c26;
               Y_8_c27 <= Y_8_c26;
               Y_9_c27 <= Y_9_c26;
               Y_10_c27 <= Y_10_c26;
               Y_11_c27 <= Y_11_c26;
               Y_12_c27 <= Y_12_c26;
               Y_13_c27 <= Y_13_c26;
               Y_14_c27 <= Y_14_c26;
               Y_15_c27 <= Y_15_c26;
               Y_16_c27 <= Y_16_c26;
               Y_17_c27 <= Y_17_c26;
               Y_18_c27 <= Y_18_c26;
               Y_19_c27 <= Y_19_c26;
               Y_20_c27 <= Y_20_c26;
               Y_21_c27 <= Y_21_c26;
               Y_22_c27 <= Y_22_c26;
            end if;
            if ce_28 = '1' then
               Y_1_c28 <= Y_1_c27;
               Y_2_c28 <= Y_2_c27;
               Y_3_c28 <= Y_3_c27;
               Y_4_c28 <= Y_4_c27;
               Y_5_c28 <= Y_5_c27;
               Y_6_c28 <= Y_6_c27;
               Y_7_c28 <= Y_7_c27;
               Y_8_c28 <= Y_8_c27;
               Y_9_c28 <= Y_9_c27;
               Y_10_c28 <= Y_10_c27;
               Y_11_c28 <= Y_11_c27;
               Y_12_c28 <= Y_12_c27;
               Y_13_c28 <= Y_13_c27;
               Y_14_c28 <= Y_14_c27;
               Y_15_c28 <= Y_15_c27;
               Y_16_c28 <= Y_16_c27;
               Y_17_c28 <= Y_17_c27;
               Y_18_c28 <= Y_18_c27;
               Y_19_c28 <= Y_19_c27;
               Y_20_c28 <= Y_20_c27;
               Y_21_c28 <= Y_21_c27;
               Y_22_c28 <= Y_22_c27;
            end if;
            if ce_29 = '1' then
               Y_1_c29 <= Y_1_c28;
               Y_2_c29 <= Y_2_c28;
               Y_3_c29 <= Y_3_c28;
               Y_4_c29 <= Y_4_c28;
               Y_5_c29 <= Y_5_c28;
               Y_6_c29 <= Y_6_c28;
               Y_7_c29 <= Y_7_c28;
               Y_8_c29 <= Y_8_c28;
               Y_9_c29 <= Y_9_c28;
               Y_10_c29 <= Y_10_c28;
               Y_11_c29 <= Y_11_c28;
               Y_12_c29 <= Y_12_c28;
               Y_13_c29 <= Y_13_c28;
               Y_14_c29 <= Y_14_c28;
               Y_15_c29 <= Y_15_c28;
               Y_16_c29 <= Y_16_c28;
               Y_17_c29 <= Y_17_c28;
               Y_18_c29 <= Y_18_c28;
               Y_19_c29 <= Y_19_c28;
               Y_20_c29 <= Y_20_c28;
               Y_21_c29 <= Y_21_c28;
               Y_22_c29 <= Y_22_c28;
            end if;
            if ce_30 = '1' then
               Y_1_c30 <= Y_1_c29;
               Y_2_c30 <= Y_2_c29;
               Y_3_c30 <= Y_3_c29;
               Y_4_c30 <= Y_4_c29;
               Y_5_c30 <= Y_5_c29;
               Y_6_c30 <= Y_6_c29;
               Y_7_c30 <= Y_7_c29;
               Y_8_c30 <= Y_8_c29;
               Y_9_c30 <= Y_9_c29;
               Y_10_c30 <= Y_10_c29;
               Y_11_c30 <= Y_11_c29;
               Y_12_c30 <= Y_12_c29;
               Y_13_c30 <= Y_13_c29;
               Y_14_c30 <= Y_14_c29;
               Y_15_c30 <= Y_15_c29;
               Y_16_c30 <= Y_16_c29;
               Y_17_c30 <= Y_17_c29;
               Y_18_c30 <= Y_18_c29;
               Y_19_c30 <= Y_19_c29;
               Y_20_c30 <= Y_20_c29;
               Y_21_c30 <= Y_21_c29;
               Y_22_c30 <= Y_22_c29;
            end if;
            if ce_31 = '1' then
               Y_1_c31 <= Y_1_c30;
               Y_2_c31 <= Y_2_c30;
               Y_3_c31 <= Y_3_c30;
               Y_4_c31 <= Y_4_c30;
               Y_5_c31 <= Y_5_c30;
               Y_6_c31 <= Y_6_c30;
               Y_7_c31 <= Y_7_c30;
               Y_8_c31 <= Y_8_c30;
               Y_9_c31 <= Y_9_c30;
               Y_10_c31 <= Y_10_c30;
               Y_11_c31 <= Y_11_c30;
               Y_12_c31 <= Y_12_c30;
               Y_13_c31 <= Y_13_c30;
               Y_14_c31 <= Y_14_c30;
               Y_15_c31 <= Y_15_c30;
               Y_16_c31 <= Y_16_c30;
               Y_17_c31 <= Y_17_c30;
               Y_18_c31 <= Y_18_c30;
               Y_19_c31 <= Y_19_c30;
               Y_20_c31 <= Y_20_c30;
               Y_21_c31 <= Y_21_c30;
               Y_22_c31 <= Y_22_c30;
            end if;
            if ce_32 = '1' then
               Y_1_c32 <= Y_1_c31;
               Y_2_c32 <= Y_2_c31;
               Y_3_c32 <= Y_3_c31;
               Y_4_c32 <= Y_4_c31;
               Y_5_c32 <= Y_5_c31;
               Y_6_c32 <= Y_6_c31;
               Y_7_c32 <= Y_7_c31;
               Y_8_c32 <= Y_8_c31;
               Y_9_c32 <= Y_9_c31;
               Y_10_c32 <= Y_10_c31;
               Y_11_c32 <= Y_11_c31;
               Y_12_c32 <= Y_12_c31;
               Y_13_c32 <= Y_13_c31;
               Y_14_c32 <= Y_14_c31;
               Y_15_c32 <= Y_15_c31;
               Y_16_c32 <= Y_16_c31;
               Y_17_c32 <= Y_17_c31;
               Y_18_c32 <= Y_18_c31;
               Y_19_c32 <= Y_19_c31;
               Y_20_c32 <= Y_20_c31;
               Y_21_c32 <= Y_21_c31;
               Y_22_c32 <= Y_22_c31;
            end if;
            if ce_33 = '1' then
               Y_1_c33 <= Y_1_c32;
               Y_2_c33 <= Y_2_c32;
               Y_3_c33 <= Y_3_c32;
               Y_4_c33 <= Y_4_c32;
               Y_5_c33 <= Y_5_c32;
               Y_6_c33 <= Y_6_c32;
               Y_7_c33 <= Y_7_c32;
               Y_8_c33 <= Y_8_c32;
               Y_9_c33 <= Y_9_c32;
               Y_10_c33 <= Y_10_c32;
               Y_11_c33 <= Y_11_c32;
               Y_12_c33 <= Y_12_c32;
               Y_13_c33 <= Y_13_c32;
               Y_14_c33 <= Y_14_c32;
               Y_15_c33 <= Y_15_c32;
               Y_16_c33 <= Y_16_c32;
               Y_17_c33 <= Y_17_c32;
               Y_18_c33 <= Y_18_c32;
               Y_19_c33 <= Y_19_c32;
               Y_20_c33 <= Y_20_c32;
               Y_21_c33 <= Y_21_c32;
               Y_22_c33 <= Y_22_c32;
            end if;
            if ce_34 = '1' then
               Y_1_c34 <= Y_1_c33;
               Y_2_c34 <= Y_2_c33;
               Y_3_c34 <= Y_3_c33;
               Y_4_c34 <= Y_4_c33;
               Y_5_c34 <= Y_5_c33;
               Y_6_c34 <= Y_6_c33;
               Y_7_c34 <= Y_7_c33;
               Y_8_c34 <= Y_8_c33;
               Y_9_c34 <= Y_9_c33;
               Y_10_c34 <= Y_10_c33;
               Y_11_c34 <= Y_11_c33;
               Y_12_c34 <= Y_12_c33;
               Y_13_c34 <= Y_13_c33;
               Y_14_c34 <= Y_14_c33;
               Y_15_c34 <= Y_15_c33;
               Y_16_c34 <= Y_16_c33;
               Y_17_c34 <= Y_17_c33;
               Y_18_c34 <= Y_18_c33;
               Y_19_c34 <= Y_19_c33;
               Y_20_c34 <= Y_20_c33;
               Y_21_c34 <= Y_21_c33;
               Y_22_c34 <= Y_22_c33;
            end if;
            if ce_35 = '1' then
               Y_1_c35 <= Y_1_c34;
               Y_2_c35 <= Y_2_c34;
               Y_3_c35 <= Y_3_c34;
               Y_4_c35 <= Y_4_c34;
               Y_5_c35 <= Y_5_c34;
               Y_6_c35 <= Y_6_c34;
               Y_7_c35 <= Y_7_c34;
               Y_8_c35 <= Y_8_c34;
               Y_9_c35 <= Y_9_c34;
               Y_10_c35 <= Y_10_c34;
               Y_11_c35 <= Y_11_c34;
               Y_12_c35 <= Y_12_c34;
               Y_13_c35 <= Y_13_c34;
               Y_14_c35 <= Y_14_c34;
               Y_15_c35 <= Y_15_c34;
               Y_16_c35 <= Y_16_c34;
               Y_17_c35 <= Y_17_c34;
               Y_18_c35 <= Y_18_c34;
               Y_19_c35 <= Y_19_c34;
               Y_20_c35 <= Y_20_c34;
               Y_21_c35 <= Y_21_c34;
               Y_22_c35 <= Y_22_c34;
            end if;
            if ce_36 = '1' then
               Y_1_c36 <= Y_1_c35;
               Y_2_c36 <= Y_2_c35;
               Y_3_c36 <= Y_3_c35;
               Y_4_c36 <= Y_4_c35;
               Y_5_c36 <= Y_5_c35;
               Y_6_c36 <= Y_6_c35;
               Y_7_c36 <= Y_7_c35;
               Y_8_c36 <= Y_8_c35;
               Y_9_c36 <= Y_9_c35;
               Y_10_c36 <= Y_10_c35;
               Y_11_c36 <= Y_11_c35;
               Y_12_c36 <= Y_12_c35;
               Y_13_c36 <= Y_13_c35;
               Y_14_c36 <= Y_14_c35;
               Y_15_c36 <= Y_15_c35;
               Y_16_c36 <= Y_16_c35;
               Y_17_c36 <= Y_17_c35;
               Y_18_c36 <= Y_18_c35;
               Y_19_c36 <= Y_19_c35;
               Y_20_c36 <= Y_20_c35;
               Y_21_c36 <= Y_21_c35;
               Y_22_c36 <= Y_22_c35;
            end if;
            if ce_37 = '1' then
               Cin_1_c37 <= Cin_1_c36;
               X_1_c37 <= X_1_c36;
               Y_1_c37 <= Y_1_c36;
               X_2_c37 <= X_2_c36;
               Y_2_c37 <= Y_2_c36;
               X_3_c37 <= X_3_c36;
               Y_3_c37 <= Y_3_c36;
               X_4_c37 <= X_4_c36;
               Y_4_c37 <= Y_4_c36;
               X_5_c37 <= X_5_c36;
               Y_5_c37 <= Y_5_c36;
               X_6_c37 <= X_6_c36;
               Y_6_c37 <= Y_6_c36;
               X_7_c37 <= X_7_c36;
               Y_7_c37 <= Y_7_c36;
               X_8_c37 <= X_8_c36;
               Y_8_c37 <= Y_8_c36;
               X_9_c37 <= X_9_c36;
               Y_9_c37 <= Y_9_c36;
               X_10_c37 <= X_10_c36;
               Y_10_c37 <= Y_10_c36;
               X_11_c37 <= X_11_c36;
               Y_11_c37 <= Y_11_c36;
               X_12_c37 <= X_12_c36;
               Y_12_c37 <= Y_12_c36;
               X_13_c37 <= X_13_c36;
               Y_13_c37 <= Y_13_c36;
               X_14_c37 <= X_14_c36;
               Y_14_c37 <= Y_14_c36;
               X_15_c37 <= X_15_c36;
               Y_15_c37 <= Y_15_c36;
               X_16_c37 <= X_16_c36;
               Y_16_c37 <= Y_16_c36;
               X_17_c37 <= X_17_c36;
               Y_17_c37 <= Y_17_c36;
               X_18_c37 <= X_18_c36;
               Y_18_c37 <= Y_18_c36;
               X_19_c37 <= X_19_c36;
               Y_19_c37 <= Y_19_c36;
               X_20_c37 <= X_20_c36;
               Y_20_c37 <= Y_20_c36;
               X_21_c37 <= X_21_c36;
               Y_21_c37 <= Y_21_c36;
               X_22_c37 <= X_22_c36;
               Y_22_c37 <= Y_22_c36;
            end if;
            if ce_38 = '1' then
               R_1_c38 <= R_1_c37;
               Cin_2_c38 <= Cin_2_c37;
               X_2_c38 <= X_2_c37;
               Y_2_c38 <= Y_2_c37;
               X_3_c38 <= X_3_c37;
               Y_3_c38 <= Y_3_c37;
               X_4_c38 <= X_4_c37;
               Y_4_c38 <= Y_4_c37;
               X_5_c38 <= X_5_c37;
               Y_5_c38 <= Y_5_c37;
               X_6_c38 <= X_6_c37;
               Y_6_c38 <= Y_6_c37;
               X_7_c38 <= X_7_c37;
               Y_7_c38 <= Y_7_c37;
               X_8_c38 <= X_8_c37;
               Y_8_c38 <= Y_8_c37;
               X_9_c38 <= X_9_c37;
               Y_9_c38 <= Y_9_c37;
               X_10_c38 <= X_10_c37;
               Y_10_c38 <= Y_10_c37;
               X_11_c38 <= X_11_c37;
               Y_11_c38 <= Y_11_c37;
               X_12_c38 <= X_12_c37;
               Y_12_c38 <= Y_12_c37;
               X_13_c38 <= X_13_c37;
               Y_13_c38 <= Y_13_c37;
               X_14_c38 <= X_14_c37;
               Y_14_c38 <= Y_14_c37;
               X_15_c38 <= X_15_c37;
               Y_15_c38 <= Y_15_c37;
               X_16_c38 <= X_16_c37;
               Y_16_c38 <= Y_16_c37;
               X_17_c38 <= X_17_c37;
               Y_17_c38 <= Y_17_c37;
               X_18_c38 <= X_18_c37;
               Y_18_c38 <= Y_18_c37;
               X_19_c38 <= X_19_c37;
               Y_19_c38 <= Y_19_c37;
               X_20_c38 <= X_20_c37;
               Y_20_c38 <= Y_20_c37;
               X_21_c38 <= X_21_c37;
               Y_21_c38 <= Y_21_c37;
               X_22_c38 <= X_22_c37;
               Y_22_c38 <= Y_22_c37;
            end if;
            if ce_39 = '1' then
               R_1_c39 <= R_1_c38;
               R_2_c39 <= R_2_c38;
               Cin_3_c39 <= Cin_3_c38;
               X_3_c39 <= X_3_c38;
               Y_3_c39 <= Y_3_c38;
               X_4_c39 <= X_4_c38;
               Y_4_c39 <= Y_4_c38;
               X_5_c39 <= X_5_c38;
               Y_5_c39 <= Y_5_c38;
               X_6_c39 <= X_6_c38;
               Y_6_c39 <= Y_6_c38;
               X_7_c39 <= X_7_c38;
               Y_7_c39 <= Y_7_c38;
               X_8_c39 <= X_8_c38;
               Y_8_c39 <= Y_8_c38;
               X_9_c39 <= X_9_c38;
               Y_9_c39 <= Y_9_c38;
               X_10_c39 <= X_10_c38;
               Y_10_c39 <= Y_10_c38;
               X_11_c39 <= X_11_c38;
               Y_11_c39 <= Y_11_c38;
               X_12_c39 <= X_12_c38;
               Y_12_c39 <= Y_12_c38;
               X_13_c39 <= X_13_c38;
               Y_13_c39 <= Y_13_c38;
               X_14_c39 <= X_14_c38;
               Y_14_c39 <= Y_14_c38;
               X_15_c39 <= X_15_c38;
               Y_15_c39 <= Y_15_c38;
               X_16_c39 <= X_16_c38;
               Y_16_c39 <= Y_16_c38;
               X_17_c39 <= X_17_c38;
               Y_17_c39 <= Y_17_c38;
               X_18_c39 <= X_18_c38;
               Y_18_c39 <= Y_18_c38;
               X_19_c39 <= X_19_c38;
               Y_19_c39 <= Y_19_c38;
               X_20_c39 <= X_20_c38;
               Y_20_c39 <= Y_20_c38;
               X_21_c39 <= X_21_c38;
               Y_21_c39 <= Y_21_c38;
               X_22_c39 <= X_22_c38;
               Y_22_c39 <= Y_22_c38;
            end if;
            if ce_40 = '1' then
               R_1_c40 <= R_1_c39;
               R_2_c40 <= R_2_c39;
               R_3_c40 <= R_3_c39;
               Cin_4_c40 <= Cin_4_c39;
               X_4_c40 <= X_4_c39;
               Y_4_c40 <= Y_4_c39;
               X_5_c40 <= X_5_c39;
               Y_5_c40 <= Y_5_c39;
               X_6_c40 <= X_6_c39;
               Y_6_c40 <= Y_6_c39;
               X_7_c40 <= X_7_c39;
               Y_7_c40 <= Y_7_c39;
               X_8_c40 <= X_8_c39;
               Y_8_c40 <= Y_8_c39;
               X_9_c40 <= X_9_c39;
               Y_9_c40 <= Y_9_c39;
               X_10_c40 <= X_10_c39;
               Y_10_c40 <= Y_10_c39;
               X_11_c40 <= X_11_c39;
               Y_11_c40 <= Y_11_c39;
               X_12_c40 <= X_12_c39;
               Y_12_c40 <= Y_12_c39;
               X_13_c40 <= X_13_c39;
               Y_13_c40 <= Y_13_c39;
               X_14_c40 <= X_14_c39;
               Y_14_c40 <= Y_14_c39;
               X_15_c40 <= X_15_c39;
               Y_15_c40 <= Y_15_c39;
               X_16_c40 <= X_16_c39;
               Y_16_c40 <= Y_16_c39;
               X_17_c40 <= X_17_c39;
               Y_17_c40 <= Y_17_c39;
               X_18_c40 <= X_18_c39;
               Y_18_c40 <= Y_18_c39;
               X_19_c40 <= X_19_c39;
               Y_19_c40 <= Y_19_c39;
               X_20_c40 <= X_20_c39;
               Y_20_c40 <= Y_20_c39;
               X_21_c40 <= X_21_c39;
               Y_21_c40 <= Y_21_c39;
               X_22_c40 <= X_22_c39;
               Y_22_c40 <= Y_22_c39;
            end if;
            if ce_41 = '1' then
               R_1_c41 <= R_1_c40;
               R_2_c41 <= R_2_c40;
               R_3_c41 <= R_3_c40;
               R_4_c41 <= R_4_c40;
               Cin_5_c41 <= Cin_5_c40;
               X_5_c41 <= X_5_c40;
               Y_5_c41 <= Y_5_c40;
               X_6_c41 <= X_6_c40;
               Y_6_c41 <= Y_6_c40;
               X_7_c41 <= X_7_c40;
               Y_7_c41 <= Y_7_c40;
               X_8_c41 <= X_8_c40;
               Y_8_c41 <= Y_8_c40;
               X_9_c41 <= X_9_c40;
               Y_9_c41 <= Y_9_c40;
               X_10_c41 <= X_10_c40;
               Y_10_c41 <= Y_10_c40;
               X_11_c41 <= X_11_c40;
               Y_11_c41 <= Y_11_c40;
               X_12_c41 <= X_12_c40;
               Y_12_c41 <= Y_12_c40;
               X_13_c41 <= X_13_c40;
               Y_13_c41 <= Y_13_c40;
               X_14_c41 <= X_14_c40;
               Y_14_c41 <= Y_14_c40;
               X_15_c41 <= X_15_c40;
               Y_15_c41 <= Y_15_c40;
               X_16_c41 <= X_16_c40;
               Y_16_c41 <= Y_16_c40;
               X_17_c41 <= X_17_c40;
               Y_17_c41 <= Y_17_c40;
               X_18_c41 <= X_18_c40;
               Y_18_c41 <= Y_18_c40;
               X_19_c41 <= X_19_c40;
               Y_19_c41 <= Y_19_c40;
               X_20_c41 <= X_20_c40;
               Y_20_c41 <= Y_20_c40;
               X_21_c41 <= X_21_c40;
               Y_21_c41 <= Y_21_c40;
               X_22_c41 <= X_22_c40;
               Y_22_c41 <= Y_22_c40;
            end if;
            if ce_42 = '1' then
               R_1_c42 <= R_1_c41;
               R_2_c42 <= R_2_c41;
               R_3_c42 <= R_3_c41;
               R_4_c42 <= R_4_c41;
               R_5_c42 <= R_5_c41;
               Cin_6_c42 <= Cin_6_c41;
               X_6_c42 <= X_6_c41;
               Y_6_c42 <= Y_6_c41;
               X_7_c42 <= X_7_c41;
               Y_7_c42 <= Y_7_c41;
               X_8_c42 <= X_8_c41;
               Y_8_c42 <= Y_8_c41;
               X_9_c42 <= X_9_c41;
               Y_9_c42 <= Y_9_c41;
               X_10_c42 <= X_10_c41;
               Y_10_c42 <= Y_10_c41;
               X_11_c42 <= X_11_c41;
               Y_11_c42 <= Y_11_c41;
               X_12_c42 <= X_12_c41;
               Y_12_c42 <= Y_12_c41;
               X_13_c42 <= X_13_c41;
               Y_13_c42 <= Y_13_c41;
               X_14_c42 <= X_14_c41;
               Y_14_c42 <= Y_14_c41;
               X_15_c42 <= X_15_c41;
               Y_15_c42 <= Y_15_c41;
               X_16_c42 <= X_16_c41;
               Y_16_c42 <= Y_16_c41;
               X_17_c42 <= X_17_c41;
               Y_17_c42 <= Y_17_c41;
               X_18_c42 <= X_18_c41;
               Y_18_c42 <= Y_18_c41;
               X_19_c42 <= X_19_c41;
               Y_19_c42 <= Y_19_c41;
               X_20_c42 <= X_20_c41;
               Y_20_c42 <= Y_20_c41;
               X_21_c42 <= X_21_c41;
               Y_21_c42 <= Y_21_c41;
               X_22_c42 <= X_22_c41;
               Y_22_c42 <= Y_22_c41;
            end if;
            if ce_43 = '1' then
               R_1_c43 <= R_1_c42;
               R_2_c43 <= R_2_c42;
               R_3_c43 <= R_3_c42;
               R_4_c43 <= R_4_c42;
               R_5_c43 <= R_5_c42;
               R_6_c43 <= R_6_c42;
               Cin_7_c43 <= Cin_7_c42;
               X_7_c43 <= X_7_c42;
               Y_7_c43 <= Y_7_c42;
               X_8_c43 <= X_8_c42;
               Y_8_c43 <= Y_8_c42;
               X_9_c43 <= X_9_c42;
               Y_9_c43 <= Y_9_c42;
               X_10_c43 <= X_10_c42;
               Y_10_c43 <= Y_10_c42;
               X_11_c43 <= X_11_c42;
               Y_11_c43 <= Y_11_c42;
               X_12_c43 <= X_12_c42;
               Y_12_c43 <= Y_12_c42;
               X_13_c43 <= X_13_c42;
               Y_13_c43 <= Y_13_c42;
               X_14_c43 <= X_14_c42;
               Y_14_c43 <= Y_14_c42;
               X_15_c43 <= X_15_c42;
               Y_15_c43 <= Y_15_c42;
               X_16_c43 <= X_16_c42;
               Y_16_c43 <= Y_16_c42;
               X_17_c43 <= X_17_c42;
               Y_17_c43 <= Y_17_c42;
               X_18_c43 <= X_18_c42;
               Y_18_c43 <= Y_18_c42;
               X_19_c43 <= X_19_c42;
               Y_19_c43 <= Y_19_c42;
               X_20_c43 <= X_20_c42;
               Y_20_c43 <= Y_20_c42;
               X_21_c43 <= X_21_c42;
               Y_21_c43 <= Y_21_c42;
               X_22_c43 <= X_22_c42;
               Y_22_c43 <= Y_22_c42;
            end if;
            if ce_44 = '1' then
               R_1_c44 <= R_1_c43;
               R_2_c44 <= R_2_c43;
               R_3_c44 <= R_3_c43;
               R_4_c44 <= R_4_c43;
               R_5_c44 <= R_5_c43;
               R_6_c44 <= R_6_c43;
               R_7_c44 <= R_7_c43;
               Cin_8_c44 <= Cin_8_c43;
               X_8_c44 <= X_8_c43;
               Y_8_c44 <= Y_8_c43;
               X_9_c44 <= X_9_c43;
               Y_9_c44 <= Y_9_c43;
               X_10_c44 <= X_10_c43;
               Y_10_c44 <= Y_10_c43;
               X_11_c44 <= X_11_c43;
               Y_11_c44 <= Y_11_c43;
               X_12_c44 <= X_12_c43;
               Y_12_c44 <= Y_12_c43;
               X_13_c44 <= X_13_c43;
               Y_13_c44 <= Y_13_c43;
               X_14_c44 <= X_14_c43;
               Y_14_c44 <= Y_14_c43;
               X_15_c44 <= X_15_c43;
               Y_15_c44 <= Y_15_c43;
               X_16_c44 <= X_16_c43;
               Y_16_c44 <= Y_16_c43;
               X_17_c44 <= X_17_c43;
               Y_17_c44 <= Y_17_c43;
               X_18_c44 <= X_18_c43;
               Y_18_c44 <= Y_18_c43;
               X_19_c44 <= X_19_c43;
               Y_19_c44 <= Y_19_c43;
               X_20_c44 <= X_20_c43;
               Y_20_c44 <= Y_20_c43;
               X_21_c44 <= X_21_c43;
               Y_21_c44 <= Y_21_c43;
               X_22_c44 <= X_22_c43;
               Y_22_c44 <= Y_22_c43;
            end if;
            if ce_45 = '1' then
               R_1_c45 <= R_1_c44;
               R_2_c45 <= R_2_c44;
               R_3_c45 <= R_3_c44;
               R_4_c45 <= R_4_c44;
               R_5_c45 <= R_5_c44;
               R_6_c45 <= R_6_c44;
               R_7_c45 <= R_7_c44;
               R_8_c45 <= R_8_c44;
               Cin_9_c45 <= Cin_9_c44;
               X_9_c45 <= X_9_c44;
               Y_9_c45 <= Y_9_c44;
               X_10_c45 <= X_10_c44;
               Y_10_c45 <= Y_10_c44;
               X_11_c45 <= X_11_c44;
               Y_11_c45 <= Y_11_c44;
               X_12_c45 <= X_12_c44;
               Y_12_c45 <= Y_12_c44;
               X_13_c45 <= X_13_c44;
               Y_13_c45 <= Y_13_c44;
               X_14_c45 <= X_14_c44;
               Y_14_c45 <= Y_14_c44;
               X_15_c45 <= X_15_c44;
               Y_15_c45 <= Y_15_c44;
               X_16_c45 <= X_16_c44;
               Y_16_c45 <= Y_16_c44;
               X_17_c45 <= X_17_c44;
               Y_17_c45 <= Y_17_c44;
               X_18_c45 <= X_18_c44;
               Y_18_c45 <= Y_18_c44;
               X_19_c45 <= X_19_c44;
               Y_19_c45 <= Y_19_c44;
               X_20_c45 <= X_20_c44;
               Y_20_c45 <= Y_20_c44;
               X_21_c45 <= X_21_c44;
               Y_21_c45 <= Y_21_c44;
               X_22_c45 <= X_22_c44;
               Y_22_c45 <= Y_22_c44;
            end if;
            if ce_46 = '1' then
               R_1_c46 <= R_1_c45;
               R_2_c46 <= R_2_c45;
               R_3_c46 <= R_3_c45;
               R_4_c46 <= R_4_c45;
               R_5_c46 <= R_5_c45;
               R_6_c46 <= R_6_c45;
               R_7_c46 <= R_7_c45;
               R_8_c46 <= R_8_c45;
               R_9_c46 <= R_9_c45;
               Cin_10_c46 <= Cin_10_c45;
               X_10_c46 <= X_10_c45;
               Y_10_c46 <= Y_10_c45;
               X_11_c46 <= X_11_c45;
               Y_11_c46 <= Y_11_c45;
               X_12_c46 <= X_12_c45;
               Y_12_c46 <= Y_12_c45;
               X_13_c46 <= X_13_c45;
               Y_13_c46 <= Y_13_c45;
               X_14_c46 <= X_14_c45;
               Y_14_c46 <= Y_14_c45;
               X_15_c46 <= X_15_c45;
               Y_15_c46 <= Y_15_c45;
               X_16_c46 <= X_16_c45;
               Y_16_c46 <= Y_16_c45;
               X_17_c46 <= X_17_c45;
               Y_17_c46 <= Y_17_c45;
               X_18_c46 <= X_18_c45;
               Y_18_c46 <= Y_18_c45;
               X_19_c46 <= X_19_c45;
               Y_19_c46 <= Y_19_c45;
               X_20_c46 <= X_20_c45;
               Y_20_c46 <= Y_20_c45;
               X_21_c46 <= X_21_c45;
               Y_21_c46 <= Y_21_c45;
               X_22_c46 <= X_22_c45;
               Y_22_c46 <= Y_22_c45;
            end if;
            if ce_47 = '1' then
               R_1_c47 <= R_1_c46;
               R_2_c47 <= R_2_c46;
               R_3_c47 <= R_3_c46;
               R_4_c47 <= R_4_c46;
               R_5_c47 <= R_5_c46;
               R_6_c47 <= R_6_c46;
               R_7_c47 <= R_7_c46;
               R_8_c47 <= R_8_c46;
               R_9_c47 <= R_9_c46;
               R_10_c47 <= R_10_c46;
               Cin_11_c47 <= Cin_11_c46;
               X_11_c47 <= X_11_c46;
               Y_11_c47 <= Y_11_c46;
               X_12_c47 <= X_12_c46;
               Y_12_c47 <= Y_12_c46;
               X_13_c47 <= X_13_c46;
               Y_13_c47 <= Y_13_c46;
               X_14_c47 <= X_14_c46;
               Y_14_c47 <= Y_14_c46;
               X_15_c47 <= X_15_c46;
               Y_15_c47 <= Y_15_c46;
               X_16_c47 <= X_16_c46;
               Y_16_c47 <= Y_16_c46;
               X_17_c47 <= X_17_c46;
               Y_17_c47 <= Y_17_c46;
               X_18_c47 <= X_18_c46;
               Y_18_c47 <= Y_18_c46;
               X_19_c47 <= X_19_c46;
               Y_19_c47 <= Y_19_c46;
               X_20_c47 <= X_20_c46;
               Y_20_c47 <= Y_20_c46;
               X_21_c47 <= X_21_c46;
               Y_21_c47 <= Y_21_c46;
               X_22_c47 <= X_22_c46;
               Y_22_c47 <= Y_22_c46;
            end if;
            if ce_48 = '1' then
               R_1_c48 <= R_1_c47;
               R_2_c48 <= R_2_c47;
               R_3_c48 <= R_3_c47;
               R_4_c48 <= R_4_c47;
               R_5_c48 <= R_5_c47;
               R_6_c48 <= R_6_c47;
               R_7_c48 <= R_7_c47;
               R_8_c48 <= R_8_c47;
               R_9_c48 <= R_9_c47;
               R_10_c48 <= R_10_c47;
               R_11_c48 <= R_11_c47;
               Cin_12_c48 <= Cin_12_c47;
               X_12_c48 <= X_12_c47;
               Y_12_c48 <= Y_12_c47;
               X_13_c48 <= X_13_c47;
               Y_13_c48 <= Y_13_c47;
               X_14_c48 <= X_14_c47;
               Y_14_c48 <= Y_14_c47;
               X_15_c48 <= X_15_c47;
               Y_15_c48 <= Y_15_c47;
               X_16_c48 <= X_16_c47;
               Y_16_c48 <= Y_16_c47;
               X_17_c48 <= X_17_c47;
               Y_17_c48 <= Y_17_c47;
               X_18_c48 <= X_18_c47;
               Y_18_c48 <= Y_18_c47;
               X_19_c48 <= X_19_c47;
               Y_19_c48 <= Y_19_c47;
               X_20_c48 <= X_20_c47;
               Y_20_c48 <= Y_20_c47;
               X_21_c48 <= X_21_c47;
               Y_21_c48 <= Y_21_c47;
               X_22_c48 <= X_22_c47;
               Y_22_c48 <= Y_22_c47;
            end if;
            if ce_49 = '1' then
               R_1_c49 <= R_1_c48;
               R_2_c49 <= R_2_c48;
               R_3_c49 <= R_3_c48;
               R_4_c49 <= R_4_c48;
               R_5_c49 <= R_5_c48;
               R_6_c49 <= R_6_c48;
               R_7_c49 <= R_7_c48;
               R_8_c49 <= R_8_c48;
               R_9_c49 <= R_9_c48;
               R_10_c49 <= R_10_c48;
               R_11_c49 <= R_11_c48;
               R_12_c49 <= R_12_c48;
               Cin_13_c49 <= Cin_13_c48;
               X_13_c49 <= X_13_c48;
               Y_13_c49 <= Y_13_c48;
               X_14_c49 <= X_14_c48;
               Y_14_c49 <= Y_14_c48;
               X_15_c49 <= X_15_c48;
               Y_15_c49 <= Y_15_c48;
               X_16_c49 <= X_16_c48;
               Y_16_c49 <= Y_16_c48;
               X_17_c49 <= X_17_c48;
               Y_17_c49 <= Y_17_c48;
               X_18_c49 <= X_18_c48;
               Y_18_c49 <= Y_18_c48;
               X_19_c49 <= X_19_c48;
               Y_19_c49 <= Y_19_c48;
               X_20_c49 <= X_20_c48;
               Y_20_c49 <= Y_20_c48;
               X_21_c49 <= X_21_c48;
               Y_21_c49 <= Y_21_c48;
               X_22_c49 <= X_22_c48;
               Y_22_c49 <= Y_22_c48;
            end if;
            if ce_50 = '1' then
               R_1_c50 <= R_1_c49;
               R_2_c50 <= R_2_c49;
               R_3_c50 <= R_3_c49;
               R_4_c50 <= R_4_c49;
               R_5_c50 <= R_5_c49;
               R_6_c50 <= R_6_c49;
               R_7_c50 <= R_7_c49;
               R_8_c50 <= R_8_c49;
               R_9_c50 <= R_9_c49;
               R_10_c50 <= R_10_c49;
               R_11_c50 <= R_11_c49;
               R_12_c50 <= R_12_c49;
               R_13_c50 <= R_13_c49;
               Cin_14_c50 <= Cin_14_c49;
               X_14_c50 <= X_14_c49;
               Y_14_c50 <= Y_14_c49;
               X_15_c50 <= X_15_c49;
               Y_15_c50 <= Y_15_c49;
               X_16_c50 <= X_16_c49;
               Y_16_c50 <= Y_16_c49;
               X_17_c50 <= X_17_c49;
               Y_17_c50 <= Y_17_c49;
               X_18_c50 <= X_18_c49;
               Y_18_c50 <= Y_18_c49;
               X_19_c50 <= X_19_c49;
               Y_19_c50 <= Y_19_c49;
               X_20_c50 <= X_20_c49;
               Y_20_c50 <= Y_20_c49;
               X_21_c50 <= X_21_c49;
               Y_21_c50 <= Y_21_c49;
               X_22_c50 <= X_22_c49;
               Y_22_c50 <= Y_22_c49;
            end if;
            if ce_51 = '1' then
               R_1_c51 <= R_1_c50;
               R_2_c51 <= R_2_c50;
               R_3_c51 <= R_3_c50;
               R_4_c51 <= R_4_c50;
               R_5_c51 <= R_5_c50;
               R_6_c51 <= R_6_c50;
               R_7_c51 <= R_7_c50;
               R_8_c51 <= R_8_c50;
               R_9_c51 <= R_9_c50;
               R_10_c51 <= R_10_c50;
               R_11_c51 <= R_11_c50;
               R_12_c51 <= R_12_c50;
               R_13_c51 <= R_13_c50;
               R_14_c51 <= R_14_c50;
               Cin_15_c51 <= Cin_15_c50;
               X_15_c51 <= X_15_c50;
               Y_15_c51 <= Y_15_c50;
               X_16_c51 <= X_16_c50;
               Y_16_c51 <= Y_16_c50;
               X_17_c51 <= X_17_c50;
               Y_17_c51 <= Y_17_c50;
               X_18_c51 <= X_18_c50;
               Y_18_c51 <= Y_18_c50;
               X_19_c51 <= X_19_c50;
               Y_19_c51 <= Y_19_c50;
               X_20_c51 <= X_20_c50;
               Y_20_c51 <= Y_20_c50;
               X_21_c51 <= X_21_c50;
               Y_21_c51 <= Y_21_c50;
               X_22_c51 <= X_22_c50;
               Y_22_c51 <= Y_22_c50;
            end if;
            if ce_52 = '1' then
               R_1_c52 <= R_1_c51;
               R_2_c52 <= R_2_c51;
               R_3_c52 <= R_3_c51;
               R_4_c52 <= R_4_c51;
               R_5_c52 <= R_5_c51;
               R_6_c52 <= R_6_c51;
               R_7_c52 <= R_7_c51;
               R_8_c52 <= R_8_c51;
               R_9_c52 <= R_9_c51;
               R_10_c52 <= R_10_c51;
               R_11_c52 <= R_11_c51;
               R_12_c52 <= R_12_c51;
               R_13_c52 <= R_13_c51;
               R_14_c52 <= R_14_c51;
               R_15_c52 <= R_15_c51;
               Cin_16_c52 <= Cin_16_c51;
               X_16_c52 <= X_16_c51;
               Y_16_c52 <= Y_16_c51;
               X_17_c52 <= X_17_c51;
               Y_17_c52 <= Y_17_c51;
               X_18_c52 <= X_18_c51;
               Y_18_c52 <= Y_18_c51;
               X_19_c52 <= X_19_c51;
               Y_19_c52 <= Y_19_c51;
               X_20_c52 <= X_20_c51;
               Y_20_c52 <= Y_20_c51;
               X_21_c52 <= X_21_c51;
               Y_21_c52 <= Y_21_c51;
               X_22_c52 <= X_22_c51;
               Y_22_c52 <= Y_22_c51;
            end if;
            if ce_53 = '1' then
               R_1_c53 <= R_1_c52;
               R_2_c53 <= R_2_c52;
               R_3_c53 <= R_3_c52;
               R_4_c53 <= R_4_c52;
               R_5_c53 <= R_5_c52;
               R_6_c53 <= R_6_c52;
               R_7_c53 <= R_7_c52;
               R_8_c53 <= R_8_c52;
               R_9_c53 <= R_9_c52;
               R_10_c53 <= R_10_c52;
               R_11_c53 <= R_11_c52;
               R_12_c53 <= R_12_c52;
               R_13_c53 <= R_13_c52;
               R_14_c53 <= R_14_c52;
               R_15_c53 <= R_15_c52;
               R_16_c53 <= R_16_c52;
               Cin_17_c53 <= Cin_17_c52;
               X_17_c53 <= X_17_c52;
               Y_17_c53 <= Y_17_c52;
               X_18_c53 <= X_18_c52;
               Y_18_c53 <= Y_18_c52;
               X_19_c53 <= X_19_c52;
               Y_19_c53 <= Y_19_c52;
               X_20_c53 <= X_20_c52;
               Y_20_c53 <= Y_20_c52;
               X_21_c53 <= X_21_c52;
               Y_21_c53 <= Y_21_c52;
               X_22_c53 <= X_22_c52;
               Y_22_c53 <= Y_22_c52;
            end if;
            if ce_54 = '1' then
               R_1_c54 <= R_1_c53;
               R_2_c54 <= R_2_c53;
               R_3_c54 <= R_3_c53;
               R_4_c54 <= R_4_c53;
               R_5_c54 <= R_5_c53;
               R_6_c54 <= R_6_c53;
               R_7_c54 <= R_7_c53;
               R_8_c54 <= R_8_c53;
               R_9_c54 <= R_9_c53;
               R_10_c54 <= R_10_c53;
               R_11_c54 <= R_11_c53;
               R_12_c54 <= R_12_c53;
               R_13_c54 <= R_13_c53;
               R_14_c54 <= R_14_c53;
               R_15_c54 <= R_15_c53;
               R_16_c54 <= R_16_c53;
               R_17_c54 <= R_17_c53;
               Cin_18_c54 <= Cin_18_c53;
               X_18_c54 <= X_18_c53;
               Y_18_c54 <= Y_18_c53;
               X_19_c54 <= X_19_c53;
               Y_19_c54 <= Y_19_c53;
               X_20_c54 <= X_20_c53;
               Y_20_c54 <= Y_20_c53;
               X_21_c54 <= X_21_c53;
               Y_21_c54 <= Y_21_c53;
               X_22_c54 <= X_22_c53;
               Y_22_c54 <= Y_22_c53;
            end if;
            if ce_55 = '1' then
               R_1_c55 <= R_1_c54;
               R_2_c55 <= R_2_c54;
               R_3_c55 <= R_3_c54;
               R_4_c55 <= R_4_c54;
               R_5_c55 <= R_5_c54;
               R_6_c55 <= R_6_c54;
               R_7_c55 <= R_7_c54;
               R_8_c55 <= R_8_c54;
               R_9_c55 <= R_9_c54;
               R_10_c55 <= R_10_c54;
               R_11_c55 <= R_11_c54;
               R_12_c55 <= R_12_c54;
               R_13_c55 <= R_13_c54;
               R_14_c55 <= R_14_c54;
               R_15_c55 <= R_15_c54;
               R_16_c55 <= R_16_c54;
               R_17_c55 <= R_17_c54;
               R_18_c55 <= R_18_c54;
               Cin_19_c55 <= Cin_19_c54;
               X_19_c55 <= X_19_c54;
               Y_19_c55 <= Y_19_c54;
               X_20_c55 <= X_20_c54;
               Y_20_c55 <= Y_20_c54;
               X_21_c55 <= X_21_c54;
               Y_21_c55 <= Y_21_c54;
               X_22_c55 <= X_22_c54;
               Y_22_c55 <= Y_22_c54;
            end if;
            if ce_56 = '1' then
               R_1_c56 <= R_1_c55;
               R_2_c56 <= R_2_c55;
               R_3_c56 <= R_3_c55;
               R_4_c56 <= R_4_c55;
               R_5_c56 <= R_5_c55;
               R_6_c56 <= R_6_c55;
               R_7_c56 <= R_7_c55;
               R_8_c56 <= R_8_c55;
               R_9_c56 <= R_9_c55;
               R_10_c56 <= R_10_c55;
               R_11_c56 <= R_11_c55;
               R_12_c56 <= R_12_c55;
               R_13_c56 <= R_13_c55;
               R_14_c56 <= R_14_c55;
               R_15_c56 <= R_15_c55;
               R_16_c56 <= R_16_c55;
               R_17_c56 <= R_17_c55;
               R_18_c56 <= R_18_c55;
               R_19_c56 <= R_19_c55;
               Cin_20_c56 <= Cin_20_c55;
               X_20_c56 <= X_20_c55;
               Y_20_c56 <= Y_20_c55;
               X_21_c56 <= X_21_c55;
               Y_21_c56 <= Y_21_c55;
               X_22_c56 <= X_22_c55;
               Y_22_c56 <= Y_22_c55;
            end if;
            if ce_57 = '1' then
               R_1_c57 <= R_1_c56;
               R_2_c57 <= R_2_c56;
               R_3_c57 <= R_3_c56;
               R_4_c57 <= R_4_c56;
               R_5_c57 <= R_5_c56;
               R_6_c57 <= R_6_c56;
               R_7_c57 <= R_7_c56;
               R_8_c57 <= R_8_c56;
               R_9_c57 <= R_9_c56;
               R_10_c57 <= R_10_c56;
               R_11_c57 <= R_11_c56;
               R_12_c57 <= R_12_c56;
               R_13_c57 <= R_13_c56;
               R_14_c57 <= R_14_c56;
               R_15_c57 <= R_15_c56;
               R_16_c57 <= R_16_c56;
               R_17_c57 <= R_17_c56;
               R_18_c57 <= R_18_c56;
               R_19_c57 <= R_19_c56;
               R_20_c57 <= R_20_c56;
               Cin_21_c57 <= Cin_21_c56;
               X_21_c57 <= X_21_c56;
               Y_21_c57 <= Y_21_c56;
               X_22_c57 <= X_22_c56;
               Y_22_c57 <= Y_22_c56;
            end if;
            if ce_58 = '1' then
               R_1_c58 <= R_1_c57;
               R_2_c58 <= R_2_c57;
               R_3_c58 <= R_3_c57;
               R_4_c58 <= R_4_c57;
               R_5_c58 <= R_5_c57;
               R_6_c58 <= R_6_c57;
               R_7_c58 <= R_7_c57;
               R_8_c58 <= R_8_c57;
               R_9_c58 <= R_9_c57;
               R_10_c58 <= R_10_c57;
               R_11_c58 <= R_11_c57;
               R_12_c58 <= R_12_c57;
               R_13_c58 <= R_13_c57;
               R_14_c58 <= R_14_c57;
               R_15_c58 <= R_15_c57;
               R_16_c58 <= R_16_c57;
               R_17_c58 <= R_17_c57;
               R_18_c58 <= R_18_c57;
               R_19_c58 <= R_19_c57;
               R_20_c58 <= R_20_c57;
               R_21_c58 <= R_21_c57;
               Cin_22_c58 <= Cin_22_c57;
               X_22_c58 <= X_22_c57;
               Y_22_c58 <= Y_22_c57;
            end if;
         end if;
      end process;
   Cin_1_c36 <= Cin;
   X_1_c36 <= '0' & X(2 downto 0);
   Y_1_c0 <= '0' & Y(2 downto 0);
   S_1_c37 <= X_1_c37 + Y_1_c37 + Cin_1_c37;
   R_1_c37 <= S_1_c37(2 downto 0);
   Cin_2_c37 <= S_1_c37(3);
   X_2_c36 <= '0' & X(5 downto 3);
   Y_2_c0 <= '0' & Y(5 downto 3);
   S_2_c38 <= X_2_c38 + Y_2_c38 + Cin_2_c38;
   R_2_c38 <= S_2_c38(2 downto 0);
   Cin_3_c38 <= S_2_c38(3);
   X_3_c36 <= '0' & X(8 downto 6);
   Y_3_c0 <= '0' & Y(8 downto 6);
   S_3_c39 <= X_3_c39 + Y_3_c39 + Cin_3_c39;
   R_3_c39 <= S_3_c39(2 downto 0);
   Cin_4_c39 <= S_3_c39(3);
   X_4_c36 <= '0' & X(11 downto 9);
   Y_4_c0 <= '0' & Y(11 downto 9);
   S_4_c40 <= X_4_c40 + Y_4_c40 + Cin_4_c40;
   R_4_c40 <= S_4_c40(2 downto 0);
   Cin_5_c40 <= S_4_c40(3);
   X_5_c36 <= '0' & X(14 downto 12);
   Y_5_c0 <= '0' & Y(14 downto 12);
   S_5_c41 <= X_5_c41 + Y_5_c41 + Cin_5_c41;
   R_5_c41 <= S_5_c41(2 downto 0);
   Cin_6_c41 <= S_5_c41(3);
   X_6_c36 <= '0' & X(17 downto 15);
   Y_6_c0 <= '0' & Y(17 downto 15);
   S_6_c42 <= X_6_c42 + Y_6_c42 + Cin_6_c42;
   R_6_c42 <= S_6_c42(2 downto 0);
   Cin_7_c42 <= S_6_c42(3);
   X_7_c36 <= '0' & X(20 downto 18);
   Y_7_c0 <= '0' & Y(20 downto 18);
   S_7_c43 <= X_7_c43 + Y_7_c43 + Cin_7_c43;
   R_7_c43 <= S_7_c43(2 downto 0);
   Cin_8_c43 <= S_7_c43(3);
   X_8_c36 <= '0' & X(23 downto 21);
   Y_8_c0 <= '0' & Y(23 downto 21);
   S_8_c44 <= X_8_c44 + Y_8_c44 + Cin_8_c44;
   R_8_c44 <= S_8_c44(2 downto 0);
   Cin_9_c44 <= S_8_c44(3);
   X_9_c36 <= '0' & X(26 downto 24);
   Y_9_c0 <= '0' & Y(26 downto 24);
   S_9_c45 <= X_9_c45 + Y_9_c45 + Cin_9_c45;
   R_9_c45 <= S_9_c45(2 downto 0);
   Cin_10_c45 <= S_9_c45(3);
   X_10_c36 <= '0' & X(29 downto 27);
   Y_10_c0 <= '0' & Y(29 downto 27);
   S_10_c46 <= X_10_c46 + Y_10_c46 + Cin_10_c46;
   R_10_c46 <= S_10_c46(2 downto 0);
   Cin_11_c46 <= S_10_c46(3);
   X_11_c36 <= '0' & X(32 downto 30);
   Y_11_c0 <= '0' & Y(32 downto 30);
   S_11_c47 <= X_11_c47 + Y_11_c47 + Cin_11_c47;
   R_11_c47 <= S_11_c47(2 downto 0);
   Cin_12_c47 <= S_11_c47(3);
   X_12_c36 <= '0' & X(35 downto 33);
   Y_12_c0 <= '0' & Y(35 downto 33);
   S_12_c48 <= X_12_c48 + Y_12_c48 + Cin_12_c48;
   R_12_c48 <= S_12_c48(2 downto 0);
   Cin_13_c48 <= S_12_c48(3);
   X_13_c36 <= '0' & X(38 downto 36);
   Y_13_c0 <= '0' & Y(38 downto 36);
   S_13_c49 <= X_13_c49 + Y_13_c49 + Cin_13_c49;
   R_13_c49 <= S_13_c49(2 downto 0);
   Cin_14_c49 <= S_13_c49(3);
   X_14_c36 <= '0' & X(41 downto 39);
   Y_14_c0 <= '0' & Y(41 downto 39);
   S_14_c50 <= X_14_c50 + Y_14_c50 + Cin_14_c50;
   R_14_c50 <= S_14_c50(2 downto 0);
   Cin_15_c50 <= S_14_c50(3);
   X_15_c36 <= '0' & X(44 downto 42);
   Y_15_c0 <= '0' & Y(44 downto 42);
   S_15_c51 <= X_15_c51 + Y_15_c51 + Cin_15_c51;
   R_15_c51 <= S_15_c51(2 downto 0);
   Cin_16_c51 <= S_15_c51(3);
   X_16_c36 <= '0' & X(47 downto 45);
   Y_16_c0 <= '0' & Y(47 downto 45);
   S_16_c52 <= X_16_c52 + Y_16_c52 + Cin_16_c52;
   R_16_c52 <= S_16_c52(2 downto 0);
   Cin_17_c52 <= S_16_c52(3);
   X_17_c36 <= '0' & X(50 downto 48);
   Y_17_c0 <= '0' & Y(50 downto 48);
   S_17_c53 <= X_17_c53 + Y_17_c53 + Cin_17_c53;
   R_17_c53 <= S_17_c53(2 downto 0);
   Cin_18_c53 <= S_17_c53(3);
   X_18_c36 <= '0' & X(53 downto 51);
   Y_18_c0 <= '0' & Y(53 downto 51);
   S_18_c54 <= X_18_c54 + Y_18_c54 + Cin_18_c54;
   R_18_c54 <= S_18_c54(2 downto 0);
   Cin_19_c54 <= S_18_c54(3);
   X_19_c36 <= '0' & X(56 downto 54);
   Y_19_c0 <= '0' & Y(56 downto 54);
   S_19_c55 <= X_19_c55 + Y_19_c55 + Cin_19_c55;
   R_19_c55 <= S_19_c55(2 downto 0);
   Cin_20_c55 <= S_19_c55(3);
   X_20_c36 <= '0' & X(59 downto 57);
   Y_20_c0 <= '0' & Y(59 downto 57);
   S_20_c56 <= X_20_c56 + Y_20_c56 + Cin_20_c56;
   R_20_c56 <= S_20_c56(2 downto 0);
   Cin_21_c56 <= S_20_c56(3);
   X_21_c36 <= '0' & X(62 downto 60);
   Y_21_c0 <= '0' & Y(62 downto 60);
   S_21_c57 <= X_21_c57 + Y_21_c57 + Cin_21_c57;
   R_21_c57 <= S_21_c57(2 downto 0);
   Cin_22_c57 <= S_21_c57(3);
   X_22_c36 <= '0' & X(65 downto 63);
   Y_22_c0 <= '0' & Y(65 downto 63);
   S_22_c58 <= X_22_c58 + Y_22_c58 + Cin_22_c58;
   R_22_c58 <= S_22_c58(2 downto 0);
   R <= R_22_c58 & R_21_c58 & R_20_c58 & R_19_c58 & R_18_c58 & R_17_c58 & R_16_c58 & R_15_c58 & R_14_c58 & R_13_c58 & R_12_c58 & R_11_c58 & R_10_c58 & R_9_c58 & R_8_c58 & R_7_c58 & R_6_c58 & R_5_c58 & R_4_c58 & R_3_c58 & R_2_c58 & R_1_c58 ;
end architecture;

--------------------------------------------------------------------------------
--                          FloatingPointSubtractor
--                         (FPAdd_11_52_Freq800_uid2)
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2010-2017)
--------------------------------------------------------------------------------
-- Pipeline depth: 59 cycles
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

entity FloatingPointSubtractor is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27, ce_28, ce_29, ce_30, ce_31, ce_32, ce_33, ce_34, ce_35, ce_36, ce_37, ce_38, ce_39, ce_40, ce_41, ce_42, ce_43, ce_44, ce_45, ce_46, ce_47, ce_48, ce_49, ce_50, ce_51, ce_52, ce_53, ce_54, ce_55, ce_56, ce_57, ce_58, ce_59 : in std_logic;
          X : in  std_logic_vector(11+52+2 downto 0);
          Y : in  std_logic_vector(11+52+2 downto 0);
          R : out  std_logic_vector(11+52+2 downto 0)   );
end entity;

architecture arch of FloatingPointSubtractor is
   component RightShifterSticky53_by_max_55_Freq800_uid4 is
      port ( clk, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9 : in std_logic;
             X : in  std_logic_vector(52 downto 0);
             S : in  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(54 downto 0);
             Sticky : out  std_logic   );
   end component;

   component IntAdder_56_Freq800_uid6 is
      port ( clk, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27, ce_28, ce_29 : in std_logic;
             X : in  std_logic_vector(55 downto 0);
             Y : in  std_logic_vector(55 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(55 downto 0)   );
   end component;

   component Normalizer_Z_57_57_57_Freq800_uid8 is
      port ( clk, ce_30, ce_31, ce_32, ce_33, ce_34, ce_35 : in std_logic;
             X : in  std_logic_vector(56 downto 0);
             Count : out  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(56 downto 0)   );
   end component;

   component IntAdder_66_Freq800_uid11 is
      port ( clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27, ce_28, ce_29, ce_30, ce_31, ce_32, ce_33, ce_34, ce_35, ce_36, ce_37, ce_38, ce_39, ce_40, ce_41, ce_42, ce_43, ce_44, ce_45, ce_46, ce_47, ce_48, ce_49, ce_50, ce_51, ce_52, ce_53, ce_54, ce_55, ce_56, ce_57, ce_58 : in std_logic;
             X : in  std_logic_vector(65 downto 0);
             Y : in  std_logic_vector(65 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(65 downto 0)   );
   end component;

signal excExpFracX_c0, excExpFracX_c1 :  std_logic_vector(64 downto 0);
signal excExpFracY_c0, excExpFracY_c1 :  std_logic_vector(64 downto 0);
signal swap_c1 :  std_logic;
signal eXmeY_c1 :  std_logic_vector(10 downto 0);
signal eYmeX_c1 :  std_logic_vector(10 downto 0);
signal expDiff_c1, expDiff_c2 :  std_logic_vector(10 downto 0);
signal newX_c1 :  std_logic_vector(65 downto 0);
signal newY_c1, newY_c2 :  std_logic_vector(65 downto 0);
signal expX_c1, expX_c2 :  std_logic_vector(10 downto 0);
signal excX_c1 :  std_logic_vector(1 downto 0);
signal excY_c1, excY_c2 :  std_logic_vector(1 downto 0);
signal signX_c1, signX_c2 :  std_logic;
signal signY_c1, signY_c2 :  std_logic;
signal EffSub_c2, EffSub_c3, EffSub_c4, EffSub_c5, EffSub_c6, EffSub_c7, EffSub_c8, EffSub_c9, EffSub_c10, EffSub_c11, EffSub_c12, EffSub_c13, EffSub_c14, EffSub_c15, EffSub_c16, EffSub_c17, EffSub_c18, EffSub_c19, EffSub_c20, EffSub_c21, EffSub_c22, EffSub_c23, EffSub_c24, EffSub_c25, EffSub_c26, EffSub_c27, EffSub_c28, EffSub_c29, EffSub_c30, EffSub_c31, EffSub_c32, EffSub_c33, EffSub_c34, EffSub_c35, EffSub_c36, EffSub_c37, EffSub_c38, EffSub_c39, EffSub_c40, EffSub_c41, EffSub_c42, EffSub_c43, EffSub_c44, EffSub_c45, EffSub_c46, EffSub_c47, EffSub_c48, EffSub_c49, EffSub_c50, EffSub_c51, EffSub_c52, EffSub_c53, EffSub_c54, EffSub_c55, EffSub_c56, EffSub_c57, EffSub_c58, EffSub_c59 :  std_logic;
signal sXsYExnXY_c1, sXsYExnXY_c2 :  std_logic_vector(5 downto 0);
signal sdExnXY_c1 :  std_logic_vector(3 downto 0);
signal fracY_c2 :  std_logic_vector(52 downto 0);
signal excRt_c2, excRt_c3, excRt_c4, excRt_c5, excRt_c6, excRt_c7, excRt_c8, excRt_c9, excRt_c10, excRt_c11, excRt_c12, excRt_c13, excRt_c14, excRt_c15, excRt_c16, excRt_c17, excRt_c18, excRt_c19, excRt_c20, excRt_c21, excRt_c22, excRt_c23, excRt_c24, excRt_c25, excRt_c26, excRt_c27, excRt_c28, excRt_c29, excRt_c30, excRt_c31, excRt_c32, excRt_c33, excRt_c34, excRt_c35, excRt_c36, excRt_c37, excRt_c38, excRt_c39, excRt_c40, excRt_c41, excRt_c42, excRt_c43, excRt_c44, excRt_c45, excRt_c46, excRt_c47, excRt_c48, excRt_c49, excRt_c50, excRt_c51, excRt_c52, excRt_c53, excRt_c54, excRt_c55, excRt_c56, excRt_c57, excRt_c58, excRt_c59 :  std_logic_vector(1 downto 0);
signal signR_c2, signR_c3, signR_c4, signR_c5, signR_c6, signR_c7, signR_c8, signR_c9, signR_c10, signR_c11, signR_c12, signR_c13, signR_c14, signR_c15, signR_c16, signR_c17, signR_c18, signR_c19, signR_c20, signR_c21, signR_c22, signR_c23, signR_c24, signR_c25, signR_c26, signR_c27, signR_c28, signR_c29, signR_c30, signR_c31, signR_c32, signR_c33, signR_c34, signR_c35 :  std_logic;
signal shiftedOut_c2 :  std_logic;
signal shiftVal_c2 :  std_logic_vector(5 downto 0);
signal shiftedFracY_c4 :  std_logic_vector(54 downto 0);
signal sticky_c9, sticky_c10, sticky_c11, sticky_c12, sticky_c13, sticky_c14, sticky_c15, sticky_c16, sticky_c17, sticky_c18, sticky_c19, sticky_c20, sticky_c21, sticky_c22, sticky_c23, sticky_c24, sticky_c25, sticky_c26, sticky_c27, sticky_c28, sticky_c29 :  std_logic;
signal fracYpad_c4, fracYpad_c5 :  std_logic_vector(55 downto 0);
signal EffSubVector_c2, EffSubVector_c3, EffSubVector_c4, EffSubVector_c5 :  std_logic_vector(55 downto 0);
signal fracYpadXorOp_c5 :  std_logic_vector(55 downto 0);
signal fracXpad_c1 :  std_logic_vector(55 downto 0);
signal cInSigAdd_c9 :  std_logic;
signal fracAddResult_c29 :  std_logic_vector(55 downto 0);
signal fracSticky_c29 :  std_logic_vector(56 downto 0);
signal nZerosNew_c35, nZerosNew_c36 :  std_logic_vector(5 downto 0);
signal shiftedFrac_c35, shiftedFrac_c36 :  std_logic_vector(56 downto 0);
signal extendedExpInc_c2, extendedExpInc_c3, extendedExpInc_c4, extendedExpInc_c5, extendedExpInc_c6, extendedExpInc_c7, extendedExpInc_c8, extendedExpInc_c9, extendedExpInc_c10, extendedExpInc_c11, extendedExpInc_c12, extendedExpInc_c13, extendedExpInc_c14, extendedExpInc_c15, extendedExpInc_c16, extendedExpInc_c17, extendedExpInc_c18, extendedExpInc_c19, extendedExpInc_c20, extendedExpInc_c21, extendedExpInc_c22, extendedExpInc_c23, extendedExpInc_c24, extendedExpInc_c25, extendedExpInc_c26, extendedExpInc_c27, extendedExpInc_c28, extendedExpInc_c29, extendedExpInc_c30, extendedExpInc_c31, extendedExpInc_c32, extendedExpInc_c33, extendedExpInc_c34, extendedExpInc_c35, extendedExpInc_c36 :  std_logic_vector(11 downto 0);
signal updatedExp_c36 :  std_logic_vector(12 downto 0);
signal eqdiffsign_c35, eqdiffsign_c36, eqdiffsign_c37, eqdiffsign_c38, eqdiffsign_c39, eqdiffsign_c40, eqdiffsign_c41, eqdiffsign_c42, eqdiffsign_c43, eqdiffsign_c44, eqdiffsign_c45, eqdiffsign_c46, eqdiffsign_c47, eqdiffsign_c48, eqdiffsign_c49, eqdiffsign_c50, eqdiffsign_c51, eqdiffsign_c52, eqdiffsign_c53, eqdiffsign_c54, eqdiffsign_c55, eqdiffsign_c56, eqdiffsign_c57, eqdiffsign_c58, eqdiffsign_c59 :  std_logic;
signal expFrac_c36 :  std_logic_vector(65 downto 0);
signal stk_c35, stk_c36 :  std_logic;
signal rnd_c35, rnd_c36 :  std_logic;
signal lsb_c35, lsb_c36 :  std_logic;
signal needToRound_c36 :  std_logic;
signal RoundedExpFrac_c58 :  std_logic_vector(65 downto 0);
signal upExc_c58 :  std_logic_vector(1 downto 0);
signal fracR_c58, fracR_c59 :  std_logic_vector(51 downto 0);
signal expR_c58, expR_c59 :  std_logic_vector(10 downto 0);
signal exExpExc_c58 :  std_logic_vector(3 downto 0);
signal excRt2_c58, excRt2_c59 :  std_logic_vector(1 downto 0);
signal excR_c59 :  std_logic_vector(1 downto 0);
signal signR2_c35, signR2_c36, signR2_c37, signR2_c38, signR2_c39, signR2_c40, signR2_c41, signR2_c42, signR2_c43, signR2_c44, signR2_c45, signR2_c46, signR2_c47, signR2_c48, signR2_c49, signR2_c50, signR2_c51, signR2_c52, signR2_c53, signR2_c54, signR2_c55, signR2_c56, signR2_c57, signR2_c58, signR2_c59 :  std_logic;
signal computedR_c59 :  std_logic_vector(65 downto 0);
signal X_c1 :  std_logic_vector(11+52+2 downto 0);
signal Y_c1 :  std_logic_vector(11+52+2 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               excExpFracX_c1 <= excExpFracX_c0;
               excExpFracY_c1 <= excExpFracY_c0;
               X_c1 <= X;
               Y_c1 <= Y;
            end if;
            if ce_2 = '1' then
               expDiff_c2 <= expDiff_c1;
               newY_c2 <= newY_c1;
               expX_c2 <= expX_c1;
               excY_c2 <= excY_c1;
               signX_c2 <= signX_c1;
               signY_c2 <= signY_c1;
               sXsYExnXY_c2 <= sXsYExnXY_c1;
            end if;
            if ce_3 = '1' then
               EffSub_c3 <= EffSub_c2;
               excRt_c3 <= excRt_c2;
               signR_c3 <= signR_c2;
               EffSubVector_c3 <= EffSubVector_c2;
               extendedExpInc_c3 <= extendedExpInc_c2;
            end if;
            if ce_4 = '1' then
               EffSub_c4 <= EffSub_c3;
               excRt_c4 <= excRt_c3;
               signR_c4 <= signR_c3;
               EffSubVector_c4 <= EffSubVector_c3;
               extendedExpInc_c4 <= extendedExpInc_c3;
            end if;
            if ce_5 = '1' then
               EffSub_c5 <= EffSub_c4;
               excRt_c5 <= excRt_c4;
               signR_c5 <= signR_c4;
               fracYpad_c5 <= fracYpad_c4;
               EffSubVector_c5 <= EffSubVector_c4;
               extendedExpInc_c5 <= extendedExpInc_c4;
            end if;
            if ce_6 = '1' then
               EffSub_c6 <= EffSub_c5;
               excRt_c6 <= excRt_c5;
               signR_c6 <= signR_c5;
               extendedExpInc_c6 <= extendedExpInc_c5;
            end if;
            if ce_7 = '1' then
               EffSub_c7 <= EffSub_c6;
               excRt_c7 <= excRt_c6;
               signR_c7 <= signR_c6;
               extendedExpInc_c7 <= extendedExpInc_c6;
            end if;
            if ce_8 = '1' then
               EffSub_c8 <= EffSub_c7;
               excRt_c8 <= excRt_c7;
               signR_c8 <= signR_c7;
               extendedExpInc_c8 <= extendedExpInc_c7;
            end if;
            if ce_9 = '1' then
               EffSub_c9 <= EffSub_c8;
               excRt_c9 <= excRt_c8;
               signR_c9 <= signR_c8;
               extendedExpInc_c9 <= extendedExpInc_c8;
            end if;
            if ce_10 = '1' then
               EffSub_c10 <= EffSub_c9;
               excRt_c10 <= excRt_c9;
               signR_c10 <= signR_c9;
               sticky_c10 <= sticky_c9;
               extendedExpInc_c10 <= extendedExpInc_c9;
            end if;
            if ce_11 = '1' then
               EffSub_c11 <= EffSub_c10;
               excRt_c11 <= excRt_c10;
               signR_c11 <= signR_c10;
               sticky_c11 <= sticky_c10;
               extendedExpInc_c11 <= extendedExpInc_c10;
            end if;
            if ce_12 = '1' then
               EffSub_c12 <= EffSub_c11;
               excRt_c12 <= excRt_c11;
               signR_c12 <= signR_c11;
               sticky_c12 <= sticky_c11;
               extendedExpInc_c12 <= extendedExpInc_c11;
            end if;
            if ce_13 = '1' then
               EffSub_c13 <= EffSub_c12;
               excRt_c13 <= excRt_c12;
               signR_c13 <= signR_c12;
               sticky_c13 <= sticky_c12;
               extendedExpInc_c13 <= extendedExpInc_c12;
            end if;
            if ce_14 = '1' then
               EffSub_c14 <= EffSub_c13;
               excRt_c14 <= excRt_c13;
               signR_c14 <= signR_c13;
               sticky_c14 <= sticky_c13;
               extendedExpInc_c14 <= extendedExpInc_c13;
            end if;
            if ce_15 = '1' then
               EffSub_c15 <= EffSub_c14;
               excRt_c15 <= excRt_c14;
               signR_c15 <= signR_c14;
               sticky_c15 <= sticky_c14;
               extendedExpInc_c15 <= extendedExpInc_c14;
            end if;
            if ce_16 = '1' then
               EffSub_c16 <= EffSub_c15;
               excRt_c16 <= excRt_c15;
               signR_c16 <= signR_c15;
               sticky_c16 <= sticky_c15;
               extendedExpInc_c16 <= extendedExpInc_c15;
            end if;
            if ce_17 = '1' then
               EffSub_c17 <= EffSub_c16;
               excRt_c17 <= excRt_c16;
               signR_c17 <= signR_c16;
               sticky_c17 <= sticky_c16;
               extendedExpInc_c17 <= extendedExpInc_c16;
            end if;
            if ce_18 = '1' then
               EffSub_c18 <= EffSub_c17;
               excRt_c18 <= excRt_c17;
               signR_c18 <= signR_c17;
               sticky_c18 <= sticky_c17;
               extendedExpInc_c18 <= extendedExpInc_c17;
            end if;
            if ce_19 = '1' then
               EffSub_c19 <= EffSub_c18;
               excRt_c19 <= excRt_c18;
               signR_c19 <= signR_c18;
               sticky_c19 <= sticky_c18;
               extendedExpInc_c19 <= extendedExpInc_c18;
            end if;
            if ce_20 = '1' then
               EffSub_c20 <= EffSub_c19;
               excRt_c20 <= excRt_c19;
               signR_c20 <= signR_c19;
               sticky_c20 <= sticky_c19;
               extendedExpInc_c20 <= extendedExpInc_c19;
            end if;
            if ce_21 = '1' then
               EffSub_c21 <= EffSub_c20;
               excRt_c21 <= excRt_c20;
               signR_c21 <= signR_c20;
               sticky_c21 <= sticky_c20;
               extendedExpInc_c21 <= extendedExpInc_c20;
            end if;
            if ce_22 = '1' then
               EffSub_c22 <= EffSub_c21;
               excRt_c22 <= excRt_c21;
               signR_c22 <= signR_c21;
               sticky_c22 <= sticky_c21;
               extendedExpInc_c22 <= extendedExpInc_c21;
            end if;
            if ce_23 = '1' then
               EffSub_c23 <= EffSub_c22;
               excRt_c23 <= excRt_c22;
               signR_c23 <= signR_c22;
               sticky_c23 <= sticky_c22;
               extendedExpInc_c23 <= extendedExpInc_c22;
            end if;
            if ce_24 = '1' then
               EffSub_c24 <= EffSub_c23;
               excRt_c24 <= excRt_c23;
               signR_c24 <= signR_c23;
               sticky_c24 <= sticky_c23;
               extendedExpInc_c24 <= extendedExpInc_c23;
            end if;
            if ce_25 = '1' then
               EffSub_c25 <= EffSub_c24;
               excRt_c25 <= excRt_c24;
               signR_c25 <= signR_c24;
               sticky_c25 <= sticky_c24;
               extendedExpInc_c25 <= extendedExpInc_c24;
            end if;
            if ce_26 = '1' then
               EffSub_c26 <= EffSub_c25;
               excRt_c26 <= excRt_c25;
               signR_c26 <= signR_c25;
               sticky_c26 <= sticky_c25;
               extendedExpInc_c26 <= extendedExpInc_c25;
            end if;
            if ce_27 = '1' then
               EffSub_c27 <= EffSub_c26;
               excRt_c27 <= excRt_c26;
               signR_c27 <= signR_c26;
               sticky_c27 <= sticky_c26;
               extendedExpInc_c27 <= extendedExpInc_c26;
            end if;
            if ce_28 = '1' then
               EffSub_c28 <= EffSub_c27;
               excRt_c28 <= excRt_c27;
               signR_c28 <= signR_c27;
               sticky_c28 <= sticky_c27;
               extendedExpInc_c28 <= extendedExpInc_c27;
            end if;
            if ce_29 = '1' then
               EffSub_c29 <= EffSub_c28;
               excRt_c29 <= excRt_c28;
               signR_c29 <= signR_c28;
               sticky_c29 <= sticky_c28;
               extendedExpInc_c29 <= extendedExpInc_c28;
            end if;
            if ce_30 = '1' then
               EffSub_c30 <= EffSub_c29;
               excRt_c30 <= excRt_c29;
               signR_c30 <= signR_c29;
               extendedExpInc_c30 <= extendedExpInc_c29;
            end if;
            if ce_31 = '1' then
               EffSub_c31 <= EffSub_c30;
               excRt_c31 <= excRt_c30;
               signR_c31 <= signR_c30;
               extendedExpInc_c31 <= extendedExpInc_c30;
            end if;
            if ce_32 = '1' then
               EffSub_c32 <= EffSub_c31;
               excRt_c32 <= excRt_c31;
               signR_c32 <= signR_c31;
               extendedExpInc_c32 <= extendedExpInc_c31;
            end if;
            if ce_33 = '1' then
               EffSub_c33 <= EffSub_c32;
               excRt_c33 <= excRt_c32;
               signR_c33 <= signR_c32;
               extendedExpInc_c33 <= extendedExpInc_c32;
            end if;
            if ce_34 = '1' then
               EffSub_c34 <= EffSub_c33;
               excRt_c34 <= excRt_c33;
               signR_c34 <= signR_c33;
               extendedExpInc_c34 <= extendedExpInc_c33;
            end if;
            if ce_35 = '1' then
               EffSub_c35 <= EffSub_c34;
               excRt_c35 <= excRt_c34;
               signR_c35 <= signR_c34;
               extendedExpInc_c35 <= extendedExpInc_c34;
            end if;
            if ce_36 = '1' then
               EffSub_c36 <= EffSub_c35;
               excRt_c36 <= excRt_c35;
               nZerosNew_c36 <= nZerosNew_c35;
               shiftedFrac_c36 <= shiftedFrac_c35;
               extendedExpInc_c36 <= extendedExpInc_c35;
               eqdiffsign_c36 <= eqdiffsign_c35;
               stk_c36 <= stk_c35;
               rnd_c36 <= rnd_c35;
               lsb_c36 <= lsb_c35;
               signR2_c36 <= signR2_c35;
            end if;
            if ce_37 = '1' then
               EffSub_c37 <= EffSub_c36;
               excRt_c37 <= excRt_c36;
               eqdiffsign_c37 <= eqdiffsign_c36;
               signR2_c37 <= signR2_c36;
            end if;
            if ce_38 = '1' then
               EffSub_c38 <= EffSub_c37;
               excRt_c38 <= excRt_c37;
               eqdiffsign_c38 <= eqdiffsign_c37;
               signR2_c38 <= signR2_c37;
            end if;
            if ce_39 = '1' then
               EffSub_c39 <= EffSub_c38;
               excRt_c39 <= excRt_c38;
               eqdiffsign_c39 <= eqdiffsign_c38;
               signR2_c39 <= signR2_c38;
            end if;
            if ce_40 = '1' then
               EffSub_c40 <= EffSub_c39;
               excRt_c40 <= excRt_c39;
               eqdiffsign_c40 <= eqdiffsign_c39;
               signR2_c40 <= signR2_c39;
            end if;
            if ce_41 = '1' then
               EffSub_c41 <= EffSub_c40;
               excRt_c41 <= excRt_c40;
               eqdiffsign_c41 <= eqdiffsign_c40;
               signR2_c41 <= signR2_c40;
            end if;
            if ce_42 = '1' then
               EffSub_c42 <= EffSub_c41;
               excRt_c42 <= excRt_c41;
               eqdiffsign_c42 <= eqdiffsign_c41;
               signR2_c42 <= signR2_c41;
            end if;
            if ce_43 = '1' then
               EffSub_c43 <= EffSub_c42;
               excRt_c43 <= excRt_c42;
               eqdiffsign_c43 <= eqdiffsign_c42;
               signR2_c43 <= signR2_c42;
            end if;
            if ce_44 = '1' then
               EffSub_c44 <= EffSub_c43;
               excRt_c44 <= excRt_c43;
               eqdiffsign_c44 <= eqdiffsign_c43;
               signR2_c44 <= signR2_c43;
            end if;
            if ce_45 = '1' then
               EffSub_c45 <= EffSub_c44;
               excRt_c45 <= excRt_c44;
               eqdiffsign_c45 <= eqdiffsign_c44;
               signR2_c45 <= signR2_c44;
            end if;
            if ce_46 = '1' then
               EffSub_c46 <= EffSub_c45;
               excRt_c46 <= excRt_c45;
               eqdiffsign_c46 <= eqdiffsign_c45;
               signR2_c46 <= signR2_c45;
            end if;
            if ce_47 = '1' then
               EffSub_c47 <= EffSub_c46;
               excRt_c47 <= excRt_c46;
               eqdiffsign_c47 <= eqdiffsign_c46;
               signR2_c47 <= signR2_c46;
            end if;
            if ce_48 = '1' then
               EffSub_c48 <= EffSub_c47;
               excRt_c48 <= excRt_c47;
               eqdiffsign_c48 <= eqdiffsign_c47;
               signR2_c48 <= signR2_c47;
            end if;
            if ce_49 = '1' then
               EffSub_c49 <= EffSub_c48;
               excRt_c49 <= excRt_c48;
               eqdiffsign_c49 <= eqdiffsign_c48;
               signR2_c49 <= signR2_c48;
            end if;
            if ce_50 = '1' then
               EffSub_c50 <= EffSub_c49;
               excRt_c50 <= excRt_c49;
               eqdiffsign_c50 <= eqdiffsign_c49;
               signR2_c50 <= signR2_c49;
            end if;
            if ce_51 = '1' then
               EffSub_c51 <= EffSub_c50;
               excRt_c51 <= excRt_c50;
               eqdiffsign_c51 <= eqdiffsign_c50;
               signR2_c51 <= signR2_c50;
            end if;
            if ce_52 = '1' then
               EffSub_c52 <= EffSub_c51;
               excRt_c52 <= excRt_c51;
               eqdiffsign_c52 <= eqdiffsign_c51;
               signR2_c52 <= signR2_c51;
            end if;
            if ce_53 = '1' then
               EffSub_c53 <= EffSub_c52;
               excRt_c53 <= excRt_c52;
               eqdiffsign_c53 <= eqdiffsign_c52;
               signR2_c53 <= signR2_c52;
            end if;
            if ce_54 = '1' then
               EffSub_c54 <= EffSub_c53;
               excRt_c54 <= excRt_c53;
               eqdiffsign_c54 <= eqdiffsign_c53;
               signR2_c54 <= signR2_c53;
            end if;
            if ce_55 = '1' then
               EffSub_c55 <= EffSub_c54;
               excRt_c55 <= excRt_c54;
               eqdiffsign_c55 <= eqdiffsign_c54;
               signR2_c55 <= signR2_c54;
            end if;
            if ce_56 = '1' then
               EffSub_c56 <= EffSub_c55;
               excRt_c56 <= excRt_c55;
               eqdiffsign_c56 <= eqdiffsign_c55;
               signR2_c56 <= signR2_c55;
            end if;
            if ce_57 = '1' then
               EffSub_c57 <= EffSub_c56;
               excRt_c57 <= excRt_c56;
               eqdiffsign_c57 <= eqdiffsign_c56;
               signR2_c57 <= signR2_c56;
            end if;
            if ce_58 = '1' then
               EffSub_c58 <= EffSub_c57;
               excRt_c58 <= excRt_c57;
               eqdiffsign_c58 <= eqdiffsign_c57;
               signR2_c58 <= signR2_c57;
            end if;
            if ce_59 = '1' then
               EffSub_c59 <= EffSub_c58;
               excRt_c59 <= excRt_c58;
               eqdiffsign_c59 <= eqdiffsign_c58;
               fracR_c59 <= fracR_c58;
               expR_c59 <= expR_c58;
               excRt2_c59 <= excRt2_c58;
               signR2_c59 <= signR2_c58;
            end if;
         end if;
      end process;
   excExpFracX_c0 <= X(65 downto 64) & X(62 downto 0);
   excExpFracY_c0 <= Y(65 downto 64) & Y(62 downto 0);
   swap_c1 <= '1' when excExpFracX_c1 < excExpFracY_c1 else '0';
   -- exponent difference
   eXmeY_c1 <= (X_c1(62 downto 52)) - (Y_c1(62 downto 52));
   eYmeX_c1 <= (Y_c1(62 downto 52)) - (X_c1(62 downto 52));
   expDiff_c1 <= eXmeY_c1 when swap_c1 = '0' else eYmeX_c1;
   -- input swap so that |X|>|Y|
   newX_c1 <= X_c1 when swap_c1 = '0' else Y_c1;
   newY_c1 <= Y_c1 when swap_c1 = '0' else X_c1;
   -- now we decompose the inputs into their sign, exponent, fraction
   expX_c1<= newX_c1(62 downto 52);
   excX_c1<= newX_c1(65 downto 64);
   excY_c1<= newY_c1(65 downto 64);
   signX_c1<= newX_c1(63);
   signY_c1<= newY_c1(63);
   EffSub_c2 <= signX_c2 xor signY_c2;
   sXsYExnXY_c1 <= signX_c1 & signY_c1 & excX_c1 & excY_c1;
   sdExnXY_c1 <= excX_c1 & excY_c1;
   fracY_c2 <= "00000000000000000000000000000000000000000000000000000" when excY_c2="00" else ('1' & newY_c2(51 downto 0));
   -- Exception management logic
   with sXsYExnXY_c2  select  
   excRt_c2 <= "00" when "000000"|"010000"|"100000"|"110000",
      "01" when "000101"|"010101"|"100101"|"110101"|"000100"|"010100"|"100100"|"110100"|"000001"|"010001"|"100001"|"110001",
      "10" when "111010"|"001010"|"001000"|"011000"|"101000"|"111000"|"000010"|"010010"|"100010"|"110010"|"001001"|"011001"|"101001"|"111001"|"000110"|"010110"|"100110"|"110110", 
      "11" when others;
   signR_c2<= '0' when (sXsYExnXY_c2="100000" or sXsYExnXY_c2="010000") else signX_c2;
   shiftedOut_c2 <= '1' when (expDiff_c2 > 54) else '0';
   shiftVal_c2 <= expDiff_c2(5 downto 0) when shiftedOut_c2='0' else CONV_STD_LOGIC_VECTOR(55,6);
   RightShifterComponent: RightShifterSticky53_by_max_55_Freq800_uid4
      port map ( clk  => clk,
                 ce_3 => ce_3,
                 ce_4=> ce_4,
                 ce_5=> ce_5,
                 ce_6=> ce_6,
                 ce_7=> ce_7,
                 ce_8=> ce_8,
                 ce_9=> ce_9,
                 S => shiftVal_c2,
                 X => fracY_c2,
                 R => shiftedFracY_c4,
                 Sticky => sticky_c9);
   fracYpad_c4 <= "0" & shiftedFracY_c4;
   EffSubVector_c2 <= (55 downto 0 => EffSub_c2);
   fracYpadXorOp_c5 <= fracYpad_c5 xor EffSubVector_c5;
   fracXpad_c1 <= "01" & (newX_c1(51 downto 0)) & "00";
   cInSigAdd_c9 <= EffSub_c9 and not sticky_c9; -- if we subtract and the sticky was one, some of the negated sticky bits would have absorbed this carry 
   fracAdder: IntAdder_56_Freq800_uid6
      port map ( clk  => clk,
                 ce_2 => ce_2,
                 ce_3=> ce_3,
                 ce_4=> ce_4,
                 ce_5=> ce_5,
                 ce_6=> ce_6,
                 ce_7=> ce_7,
                 ce_8=> ce_8,
                 ce_9=> ce_9,
                 ce_10=> ce_10,
                 ce_11=> ce_11,
                 ce_12=> ce_12,
                 ce_13=> ce_13,
                 ce_14=> ce_14,
                 ce_15=> ce_15,
                 ce_16=> ce_16,
                 ce_17=> ce_17,
                 ce_18=> ce_18,
                 ce_19=> ce_19,
                 ce_20=> ce_20,
                 ce_21=> ce_21,
                 ce_22=> ce_22,
                 ce_23=> ce_23,
                 ce_24=> ce_24,
                 ce_25=> ce_25,
                 ce_26=> ce_26,
                 ce_27=> ce_27,
                 ce_28=> ce_28,
                 ce_29=> ce_29,
                 Cin => cInSigAdd_c9,
                 X => fracXpad_c1,
                 Y => fracYpadXorOp_c5,
                 R => fracAddResult_c29);
   fracSticky_c29<= fracAddResult_c29 & sticky_c29; 
   LZCAndShifter: Normalizer_Z_57_57_57_Freq800_uid8
      port map ( clk  => clk,
                 ce_30 => ce_30,
                 ce_31=> ce_31,
                 ce_32=> ce_32,
                 ce_33=> ce_33,
                 ce_34=> ce_34,
                 ce_35=> ce_35,
                 X => fracSticky_c29,
                 Count => nZerosNew_c35,
                 R => shiftedFrac_c35);
   extendedExpInc_c2<= ("0" & expX_c2) + '1';
   updatedExp_c36 <= ("0" &extendedExpInc_c36) - ("0000000" & nZerosNew_c36);
   eqdiffsign_c35 <= '1' when nZerosNew_c35="111111" else '0';
   expFrac_c36<= updatedExp_c36 & shiftedFrac_c36(55 downto 3);
   stk_c35<= shiftedFrac_c35(2) or shiftedFrac_c35(1) or shiftedFrac_c35(0);
   rnd_c35<= shiftedFrac_c35(3);
   lsb_c35<= shiftedFrac_c35(4);
   needToRound_c36<= '1' when (rnd_c36='1' and stk_c36='1') or (rnd_c36='1' and stk_c36='0' and lsb_c36='1')
  else '0';
   roundingAdder: IntAdder_66_Freq800_uid11
      port map ( clk  => clk,
                 ce_1 => ce_1,
                 ce_2=> ce_2,
                 ce_3=> ce_3,
                 ce_4=> ce_4,
                 ce_5=> ce_5,
                 ce_6=> ce_6,
                 ce_7=> ce_7,
                 ce_8=> ce_8,
                 ce_9=> ce_9,
                 ce_10=> ce_10,
                 ce_11=> ce_11,
                 ce_12=> ce_12,
                 ce_13=> ce_13,
                 ce_14=> ce_14,
                 ce_15=> ce_15,
                 ce_16=> ce_16,
                 ce_17=> ce_17,
                 ce_18=> ce_18,
                 ce_19=> ce_19,
                 ce_20=> ce_20,
                 ce_21=> ce_21,
                 ce_22=> ce_22,
                 ce_23=> ce_23,
                 ce_24=> ce_24,
                 ce_25=> ce_25,
                 ce_26=> ce_26,
                 ce_27=> ce_27,
                 ce_28=> ce_28,
                 ce_29=> ce_29,
                 ce_30=> ce_30,
                 ce_31=> ce_31,
                 ce_32=> ce_32,
                 ce_33=> ce_33,
                 ce_34=> ce_34,
                 ce_35=> ce_35,
                 ce_36=> ce_36,
                 ce_37=> ce_37,
                 ce_38=> ce_38,
                 ce_39=> ce_39,
                 ce_40=> ce_40,
                 ce_41=> ce_41,
                 ce_42=> ce_42,
                 ce_43=> ce_43,
                 ce_44=> ce_44,
                 ce_45=> ce_45,
                 ce_46=> ce_46,
                 ce_47=> ce_47,
                 ce_48=> ce_48,
                 ce_49=> ce_49,
                 ce_50=> ce_50,
                 ce_51=> ce_51,
                 ce_52=> ce_52,
                 ce_53=> ce_53,
                 ce_54=> ce_54,
                 ce_55=> ce_55,
                 ce_56=> ce_56,
                 ce_57=> ce_57,
                 ce_58=> ce_58,
                 Cin => needToRound_c36,
                 X => expFrac_c36,
                 Y => "000000000000000000000000000000000000000000000000000000000000000000",
                 R => RoundedExpFrac_c58);
   -- possible update to exception bits
   upExc_c58 <= RoundedExpFrac_c58(65 downto 64);
   fracR_c58 <= RoundedExpFrac_c58(52 downto 1);
   expR_c58 <= RoundedExpFrac_c58(63 downto 53);
   exExpExc_c58 <= upExc_c58 & excRt_c58;
   with exExpExc_c58  select  
   excRt2_c58<= "00" when "0000"|"0100"|"1000"|"1100"|"1001"|"1101",
      "01" when "0001",
      "10" when "0010"|"0110"|"1010"|"1110"|"0101",
      "11" when others;
   excR_c59 <= "00" when (eqdiffsign_c59='1' and EffSub_c59='1'  and not(excRt_c59="11")) else excRt2_c59;
   signR2_c35 <= '0' when (eqdiffsign_c35='1' and EffSub_c35='1') else signR_c35;
   computedR_c59 <= excR_c59 & signR2_c59 & expR_c59 & fracR_c59;
   R <= computedR_c59;
end architecture;



