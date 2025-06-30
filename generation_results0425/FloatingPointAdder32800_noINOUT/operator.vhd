--------------------------------------------------------------------------------
--                RightShifterSticky24_by_max_26_Freq800_uid4
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2008-2011), Florent de Dinechin (2008-2019)
--------------------------------------------------------------------------------
-- Pipeline depth: 6 cycles
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

entity RightShifterSticky24_by_max_26_Freq800_uid4 is
    port (clk, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8 : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          S : in  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(25 downto 0);
          Sticky : out  std_logic   );
end entity;

architecture arch of RightShifterSticky24_by_max_26_Freq800_uid4 is
signal ps_c2, ps_c3, ps_c4, ps_c5, ps_c6, ps_c7, ps_c8 :  std_logic_vector(4 downto 0);
signal Xpadded_c2 :  std_logic_vector(25 downto 0);
signal level5_c2, level5_c3 :  std_logic_vector(25 downto 0);
signal stk4_c3, stk4_c4 :  std_logic;
signal level4_c2, level4_c3, level4_c4 :  std_logic_vector(25 downto 0);
signal stk3_c4, stk3_c5 :  std_logic;
signal level3_c3, level3_c4, level3_c5 :  std_logic_vector(25 downto 0);
signal stk2_c5, stk2_c6, stk2_c7 :  std_logic;
signal level2_c3, level2_c4, level2_c5, level2_c6, level2_c7 :  std_logic_vector(25 downto 0);
signal stk1_c7, stk1_c8 :  std_logic;
signal level1_c3, level1_c4, level1_c5, level1_c6, level1_c7, level1_c8 :  std_logic_vector(25 downto 0);
signal stk0_c8 :  std_logic;
signal level0_c3 :  std_logic_vector(25 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_3 = '1' then
               ps_c3 <= ps_c2;
               level5_c3 <= level5_c2;
               level4_c3 <= level4_c2;
            end if;
            if ce_4 = '1' then
               ps_c4 <= ps_c3;
               stk4_c4 <= stk4_c3;
               level4_c4 <= level4_c3;
               level3_c4 <= level3_c3;
               level2_c4 <= level2_c3;
               level1_c4 <= level1_c3;
            end if;
            if ce_5 = '1' then
               ps_c5 <= ps_c4;
               stk3_c5 <= stk3_c4;
               level3_c5 <= level3_c4;
               level2_c5 <= level2_c4;
               level1_c5 <= level1_c4;
            end if;
            if ce_6 = '1' then
               ps_c6 <= ps_c5;
               stk2_c6 <= stk2_c5;
               level2_c6 <= level2_c5;
               level1_c6 <= level1_c5;
            end if;
            if ce_7 = '1' then
               ps_c7 <= ps_c6;
               stk2_c7 <= stk2_c6;
               level2_c7 <= level2_c6;
               level1_c7 <= level1_c6;
            end if;
            if ce_8 = '1' then
               ps_c8 <= ps_c7;
               stk1_c8 <= stk1_c7;
               level1_c8 <= level1_c7;
            end if;
         end if;
      end process;
   ps_c2<= S;
   Xpadded_c2 <= X&(1 downto 0 => '0');
   level5_c2<= Xpadded_c2;
   stk4_c3 <= '1' when (level5_c3(15 downto 0)/="0000000000000000" and ps_c3(4)='1')   else '0';
   level4_c2 <=  level5_c2 when  ps_c2(4)='0'    else (15 downto 0 => '0') & level5_c2(25 downto 16);
   stk3_c4 <= '1' when (level4_c4(7 downto 0)/="00000000" and ps_c4(3)='1') or stk4_c4 ='1'   else '0';
   level3_c3 <=  level4_c3 when  ps_c3(3)='0'    else (7 downto 0 => '0') & level4_c3(25 downto 8);
   stk2_c5 <= '1' when (level3_c5(3 downto 0)/="0000" and ps_c5(2)='1') or stk3_c5 ='1'   else '0';
   level2_c3 <=  level3_c3 when  ps_c3(2)='0'    else (3 downto 0 => '0') & level3_c3(25 downto 4);
   stk1_c7 <= '1' when (level2_c7(1 downto 0)/="00" and ps_c7(1)='1') or stk2_c7 ='1'   else '0';
   level1_c3 <=  level2_c3 when  ps_c3(1)='0'    else (1 downto 0 => '0') & level2_c3(25 downto 2);
   stk0_c8 <= '1' when (level1_c8(0 downto 0)/="0" and ps_c8(0)='1') or stk1_c8 ='1'   else '0';
   level0_c3 <=  level1_c3 when  ps_c3(0)='0'    else (0 downto 0 => '0') & level1_c3(25 downto 1);
   R <= level0_c3;
   Sticky <= stk0_c8;
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_27_Freq800_uid6
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 16 cycles
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

entity IntAdder_27_Freq800_uid6 is
    port (clk, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17 : in std_logic;
          X : in  std_logic_vector(26 downto 0);
          Y : in  std_logic_vector(26 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of IntAdder_27_Freq800_uid6 is
signal Cin_1_c8, Cin_1_c9 :  std_logic;
signal X_1_c1, X_1_c2, X_1_c3, X_1_c4, X_1_c5, X_1_c6, X_1_c7, X_1_c8, X_1_c9 :  std_logic_vector(3 downto 0);
signal Y_1_c4, Y_1_c5, Y_1_c6, Y_1_c7, Y_1_c8, Y_1_c9 :  std_logic_vector(3 downto 0);
signal S_1_c9 :  std_logic_vector(3 downto 0);
signal R_1_c9, R_1_c10, R_1_c11, R_1_c12, R_1_c13, R_1_c14, R_1_c15, R_1_c16, R_1_c17 :  std_logic_vector(2 downto 0);
signal Cin_2_c9, Cin_2_c10 :  std_logic;
signal X_2_c1, X_2_c2, X_2_c3, X_2_c4, X_2_c5, X_2_c6, X_2_c7, X_2_c8, X_2_c9, X_2_c10 :  std_logic_vector(3 downto 0);
signal Y_2_c4, Y_2_c5, Y_2_c6, Y_2_c7, Y_2_c8, Y_2_c9, Y_2_c10 :  std_logic_vector(3 downto 0);
signal S_2_c10 :  std_logic_vector(3 downto 0);
signal R_2_c10, R_2_c11, R_2_c12, R_2_c13, R_2_c14, R_2_c15, R_2_c16, R_2_c17 :  std_logic_vector(2 downto 0);
signal Cin_3_c10, Cin_3_c11 :  std_logic;
signal X_3_c1, X_3_c2, X_3_c3, X_3_c4, X_3_c5, X_3_c6, X_3_c7, X_3_c8, X_3_c9, X_3_c10, X_3_c11 :  std_logic_vector(3 downto 0);
signal Y_3_c4, Y_3_c5, Y_3_c6, Y_3_c7, Y_3_c8, Y_3_c9, Y_3_c10, Y_3_c11 :  std_logic_vector(3 downto 0);
signal S_3_c11 :  std_logic_vector(3 downto 0);
signal R_3_c11, R_3_c12, R_3_c13, R_3_c14, R_3_c15, R_3_c16, R_3_c17 :  std_logic_vector(2 downto 0);
signal Cin_4_c11, Cin_4_c12 :  std_logic;
signal X_4_c1, X_4_c2, X_4_c3, X_4_c4, X_4_c5, X_4_c6, X_4_c7, X_4_c8, X_4_c9, X_4_c10, X_4_c11, X_4_c12 :  std_logic_vector(3 downto 0);
signal Y_4_c4, Y_4_c5, Y_4_c6, Y_4_c7, Y_4_c8, Y_4_c9, Y_4_c10, Y_4_c11, Y_4_c12 :  std_logic_vector(3 downto 0);
signal S_4_c12 :  std_logic_vector(3 downto 0);
signal R_4_c12, R_4_c13, R_4_c14, R_4_c15, R_4_c16, R_4_c17 :  std_logic_vector(2 downto 0);
signal Cin_5_c12, Cin_5_c13 :  std_logic;
signal X_5_c1, X_5_c2, X_5_c3, X_5_c4, X_5_c5, X_5_c6, X_5_c7, X_5_c8, X_5_c9, X_5_c10, X_5_c11, X_5_c12, X_5_c13 :  std_logic_vector(3 downto 0);
signal Y_5_c4, Y_5_c5, Y_5_c6, Y_5_c7, Y_5_c8, Y_5_c9, Y_5_c10, Y_5_c11, Y_5_c12, Y_5_c13 :  std_logic_vector(3 downto 0);
signal S_5_c13 :  std_logic_vector(3 downto 0);
signal R_5_c13, R_5_c14, R_5_c15, R_5_c16, R_5_c17 :  std_logic_vector(2 downto 0);
signal Cin_6_c13, Cin_6_c14 :  std_logic;
signal X_6_c1, X_6_c2, X_6_c3, X_6_c4, X_6_c5, X_6_c6, X_6_c7, X_6_c8, X_6_c9, X_6_c10, X_6_c11, X_6_c12, X_6_c13, X_6_c14 :  std_logic_vector(3 downto 0);
signal Y_6_c4, Y_6_c5, Y_6_c6, Y_6_c7, Y_6_c8, Y_6_c9, Y_6_c10, Y_6_c11, Y_6_c12, Y_6_c13, Y_6_c14 :  std_logic_vector(3 downto 0);
signal S_6_c14 :  std_logic_vector(3 downto 0);
signal R_6_c14, R_6_c15, R_6_c16, R_6_c17 :  std_logic_vector(2 downto 0);
signal Cin_7_c14, Cin_7_c15 :  std_logic;
signal X_7_c1, X_7_c2, X_7_c3, X_7_c4, X_7_c5, X_7_c6, X_7_c7, X_7_c8, X_7_c9, X_7_c10, X_7_c11, X_7_c12, X_7_c13, X_7_c14, X_7_c15 :  std_logic_vector(3 downto 0);
signal Y_7_c4, Y_7_c5, Y_7_c6, Y_7_c7, Y_7_c8, Y_7_c9, Y_7_c10, Y_7_c11, Y_7_c12, Y_7_c13, Y_7_c14, Y_7_c15 :  std_logic_vector(3 downto 0);
signal S_7_c15 :  std_logic_vector(3 downto 0);
signal R_7_c15, R_7_c16, R_7_c17 :  std_logic_vector(2 downto 0);
signal Cin_8_c15, Cin_8_c16 :  std_logic;
signal X_8_c1, X_8_c2, X_8_c3, X_8_c4, X_8_c5, X_8_c6, X_8_c7, X_8_c8, X_8_c9, X_8_c10, X_8_c11, X_8_c12, X_8_c13, X_8_c14, X_8_c15, X_8_c16 :  std_logic_vector(3 downto 0);
signal Y_8_c4, Y_8_c5, Y_8_c6, Y_8_c7, Y_8_c8, Y_8_c9, Y_8_c10, Y_8_c11, Y_8_c12, Y_8_c13, Y_8_c14, Y_8_c15, Y_8_c16 :  std_logic_vector(3 downto 0);
signal S_8_c16 :  std_logic_vector(3 downto 0);
signal R_8_c16, R_8_c17 :  std_logic_vector(2 downto 0);
signal Cin_9_c16, Cin_9_c17 :  std_logic;
signal X_9_c1, X_9_c2, X_9_c3, X_9_c4, X_9_c5, X_9_c6, X_9_c7, X_9_c8, X_9_c9, X_9_c10, X_9_c11, X_9_c12, X_9_c13, X_9_c14, X_9_c15, X_9_c16, X_9_c17 :  std_logic_vector(3 downto 0);
signal Y_9_c4, Y_9_c5, Y_9_c6, Y_9_c7, Y_9_c8, Y_9_c9, Y_9_c10, Y_9_c11, Y_9_c12, Y_9_c13, Y_9_c14, Y_9_c15, Y_9_c16, Y_9_c17 :  std_logic_vector(3 downto 0);
signal S_9_c17 :  std_logic_vector(3 downto 0);
signal R_9_c17 :  std_logic_vector(2 downto 0);
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
            end if;
            if ce_5 = '1' then
               X_1_c5 <= X_1_c4;
               Y_1_c5 <= Y_1_c4;
               X_2_c5 <= X_2_c4;
               Y_2_c5 <= Y_2_c4;
               X_3_c5 <= X_3_c4;
               Y_3_c5 <= Y_3_c4;
               X_4_c5 <= X_4_c4;
               Y_4_c5 <= Y_4_c4;
               X_5_c5 <= X_5_c4;
               Y_5_c5 <= Y_5_c4;
               X_6_c5 <= X_6_c4;
               Y_6_c5 <= Y_6_c4;
               X_7_c5 <= X_7_c4;
               Y_7_c5 <= Y_7_c4;
               X_8_c5 <= X_8_c4;
               Y_8_c5 <= Y_8_c4;
               X_9_c5 <= X_9_c4;
               Y_9_c5 <= Y_9_c4;
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
            end if;
            if ce_9 = '1' then
               Cin_1_c9 <= Cin_1_c8;
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
            end if;
            if ce_10 = '1' then
               R_1_c10 <= R_1_c9;
               Cin_2_c10 <= Cin_2_c9;
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
            end if;
            if ce_11 = '1' then
               R_1_c11 <= R_1_c10;
               R_2_c11 <= R_2_c10;
               Cin_3_c11 <= Cin_3_c10;
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
            end if;
            if ce_12 = '1' then
               R_1_c12 <= R_1_c11;
               R_2_c12 <= R_2_c11;
               R_3_c12 <= R_3_c11;
               Cin_4_c12 <= Cin_4_c11;
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
            end if;
            if ce_13 = '1' then
               R_1_c13 <= R_1_c12;
               R_2_c13 <= R_2_c12;
               R_3_c13 <= R_3_c12;
               R_4_c13 <= R_4_c12;
               Cin_5_c13 <= Cin_5_c12;
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
            end if;
            if ce_14 = '1' then
               R_1_c14 <= R_1_c13;
               R_2_c14 <= R_2_c13;
               R_3_c14 <= R_3_c13;
               R_4_c14 <= R_4_c13;
               R_5_c14 <= R_5_c13;
               Cin_6_c14 <= Cin_6_c13;
               X_6_c14 <= X_6_c13;
               Y_6_c14 <= Y_6_c13;
               X_7_c14 <= X_7_c13;
               Y_7_c14 <= Y_7_c13;
               X_8_c14 <= X_8_c13;
               Y_8_c14 <= Y_8_c13;
               X_9_c14 <= X_9_c13;
               Y_9_c14 <= Y_9_c13;
            end if;
            if ce_15 = '1' then
               R_1_c15 <= R_1_c14;
               R_2_c15 <= R_2_c14;
               R_3_c15 <= R_3_c14;
               R_4_c15 <= R_4_c14;
               R_5_c15 <= R_5_c14;
               R_6_c15 <= R_6_c14;
               Cin_7_c15 <= Cin_7_c14;
               X_7_c15 <= X_7_c14;
               Y_7_c15 <= Y_7_c14;
               X_8_c15 <= X_8_c14;
               Y_8_c15 <= Y_8_c14;
               X_9_c15 <= X_9_c14;
               Y_9_c15 <= Y_9_c14;
            end if;
            if ce_16 = '1' then
               R_1_c16 <= R_1_c15;
               R_2_c16 <= R_2_c15;
               R_3_c16 <= R_3_c15;
               R_4_c16 <= R_4_c15;
               R_5_c16 <= R_5_c15;
               R_6_c16 <= R_6_c15;
               R_7_c16 <= R_7_c15;
               Cin_8_c16 <= Cin_8_c15;
               X_8_c16 <= X_8_c15;
               Y_8_c16 <= Y_8_c15;
               X_9_c16 <= X_9_c15;
               Y_9_c16 <= Y_9_c15;
            end if;
            if ce_17 = '1' then
               R_1_c17 <= R_1_c16;
               R_2_c17 <= R_2_c16;
               R_3_c17 <= R_3_c16;
               R_4_c17 <= R_4_c16;
               R_5_c17 <= R_5_c16;
               R_6_c17 <= R_6_c16;
               R_7_c17 <= R_7_c16;
               R_8_c17 <= R_8_c16;
               Cin_9_c17 <= Cin_9_c16;
               X_9_c17 <= X_9_c16;
               Y_9_c17 <= Y_9_c16;
            end if;
         end if;
      end process;
   Cin_1_c8 <= Cin;
   X_1_c1 <= '0' & X(2 downto 0);
   Y_1_c4 <= '0' & Y(2 downto 0);
   S_1_c9 <= X_1_c9 + Y_1_c9 + Cin_1_c9;
   R_1_c9 <= S_1_c9(2 downto 0);
   Cin_2_c9 <= S_1_c9(3);
   X_2_c1 <= '0' & X(5 downto 3);
   Y_2_c4 <= '0' & Y(5 downto 3);
   S_2_c10 <= X_2_c10 + Y_2_c10 + Cin_2_c10;
   R_2_c10 <= S_2_c10(2 downto 0);
   Cin_3_c10 <= S_2_c10(3);
   X_3_c1 <= '0' & X(8 downto 6);
   Y_3_c4 <= '0' & Y(8 downto 6);
   S_3_c11 <= X_3_c11 + Y_3_c11 + Cin_3_c11;
   R_3_c11 <= S_3_c11(2 downto 0);
   Cin_4_c11 <= S_3_c11(3);
   X_4_c1 <= '0' & X(11 downto 9);
   Y_4_c4 <= '0' & Y(11 downto 9);
   S_4_c12 <= X_4_c12 + Y_4_c12 + Cin_4_c12;
   R_4_c12 <= S_4_c12(2 downto 0);
   Cin_5_c12 <= S_4_c12(3);
   X_5_c1 <= '0' & X(14 downto 12);
   Y_5_c4 <= '0' & Y(14 downto 12);
   S_5_c13 <= X_5_c13 + Y_5_c13 + Cin_5_c13;
   R_5_c13 <= S_5_c13(2 downto 0);
   Cin_6_c13 <= S_5_c13(3);
   X_6_c1 <= '0' & X(17 downto 15);
   Y_6_c4 <= '0' & Y(17 downto 15);
   S_6_c14 <= X_6_c14 + Y_6_c14 + Cin_6_c14;
   R_6_c14 <= S_6_c14(2 downto 0);
   Cin_7_c14 <= S_6_c14(3);
   X_7_c1 <= '0' & X(20 downto 18);
   Y_7_c4 <= '0' & Y(20 downto 18);
   S_7_c15 <= X_7_c15 + Y_7_c15 + Cin_7_c15;
   R_7_c15 <= S_7_c15(2 downto 0);
   Cin_8_c15 <= S_7_c15(3);
   X_8_c1 <= '0' & X(23 downto 21);
   Y_8_c4 <= '0' & Y(23 downto 21);
   S_8_c16 <= X_8_c16 + Y_8_c16 + Cin_8_c16;
   R_8_c16 <= S_8_c16(2 downto 0);
   Cin_9_c16 <= S_8_c16(3);
   X_9_c1 <= '0' & X(26 downto 24);
   Y_9_c4 <= '0' & Y(26 downto 24);
   S_9_c17 <= X_9_c17 + Y_9_c17 + Cin_9_c17;
   R_9_c17 <= S_9_c17(2 downto 0);
   R <= R_9_c17 & R_8_c17 & R_7_c17 & R_6_c17 & R_5_c17 & R_4_c17 & R_3_c17 & R_2_c17 & R_1_c17 ;
end architecture;

--------------------------------------------------------------------------------
--                     Normalizer_Z_28_28_28_Freq800_uid8
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

entity Normalizer_Z_28_28_28_Freq800_uid8 is
    port (clk, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23 : in std_logic;
          X : in  std_logic_vector(27 downto 0);
          Count : out  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(27 downto 0)   );
end entity;

architecture arch of Normalizer_Z_28_28_28_Freq800_uid8 is
signal level5_c17, level5_c18 :  std_logic_vector(27 downto 0);
signal count4_c18, count4_c19, count4_c20, count4_c21, count4_c22 :  std_logic;
signal level4_c18, level4_c19 :  std_logic_vector(27 downto 0);
signal count3_c19, count3_c20, count3_c21, count3_c22 :  std_logic;
signal level3_c19, level3_c20 :  std_logic_vector(27 downto 0);
signal count2_c20, count2_c21, count2_c22 :  std_logic;
signal level2_c20, level2_c21, level2_c22 :  std_logic_vector(27 downto 0);
signal count1_c21, count1_c22 :  std_logic;
signal level1_c22, level1_c23 :  std_logic_vector(27 downto 0);
signal count0_c22, count0_c23 :  std_logic;
signal level0_c23 :  std_logic_vector(27 downto 0);
signal sCount_c22 :  std_logic_vector(4 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_18 = '1' then
               level5_c18 <= level5_c17;
            end if;
            if ce_19 = '1' then
               count4_c19 <= count4_c18;
               level4_c19 <= level4_c18;
            end if;
            if ce_20 = '1' then
               count4_c20 <= count4_c19;
               count3_c20 <= count3_c19;
               level3_c20 <= level3_c19;
            end if;
            if ce_21 = '1' then
               count4_c21 <= count4_c20;
               count3_c21 <= count3_c20;
               count2_c21 <= count2_c20;
               level2_c21 <= level2_c20;
            end if;
            if ce_22 = '1' then
               count4_c22 <= count4_c21;
               count3_c22 <= count3_c21;
               count2_c22 <= count2_c21;
               level2_c22 <= level2_c21;
               count1_c22 <= count1_c21;
            end if;
            if ce_23 = '1' then
               level1_c23 <= level1_c22;
               count0_c23 <= count0_c22;
            end if;
         end if;
      end process;
   level5_c17 <= X ;
   count4_c18<= '1' when level5_c18(27 downto 12) = (27 downto 12=>'0') else '0';
   level4_c18<= level5_c18(27 downto 0) when count4_c18='0' else level5_c18(11 downto 0) & (15 downto 0 => '0');

   count3_c19<= '1' when level4_c19(27 downto 20) = (27 downto 20=>'0') else '0';
   level3_c19<= level4_c19(27 downto 0) when count3_c19='0' else level4_c19(19 downto 0) & (7 downto 0 => '0');

   count2_c20<= '1' when level3_c20(27 downto 24) = (27 downto 24=>'0') else '0';
   level2_c20<= level3_c20(27 downto 0) when count2_c20='0' else level3_c20(23 downto 0) & (3 downto 0 => '0');

   count1_c21<= '1' when level2_c21(27 downto 26) = (27 downto 26=>'0') else '0';
   level1_c22<= level2_c22(27 downto 0) when count1_c22='0' else level2_c22(25 downto 0) & (1 downto 0 => '0');

   count0_c22<= '1' when level1_c22(27 downto 27) = (27 downto 27=>'0') else '0';
   level0_c23<= level1_c23(27 downto 0) when count0_c23='0' else level1_c23(26 downto 0) & (0 downto 0 => '0');

   R <= level0_c23;
   sCount_c22 <= count4_c22 & count3_c22 & count2_c22 & count1_c22 & count0_c22;
   Count <= sCount_c22;
end architecture;

--------------------------------------------------------------------------------
--                         IntAdder_34_Freq800_uid11
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 35 cycles
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

entity IntAdder_34_Freq800_uid11 is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27, ce_28, ce_29, ce_30, ce_31, ce_32, ce_33, ce_34, ce_35 : in std_logic;
          X : in  std_logic_vector(33 downto 0);
          Y : in  std_logic_vector(33 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(33 downto 0)   );
end entity;

architecture arch of IntAdder_34_Freq800_uid11 is
signal Cin_1_c23, Cin_1_c24 :  std_logic;
signal X_1_c23, X_1_c24 :  std_logic_vector(3 downto 0);
signal Y_1_c0, Y_1_c1, Y_1_c2, Y_1_c3, Y_1_c4, Y_1_c5, Y_1_c6, Y_1_c7, Y_1_c8, Y_1_c9, Y_1_c10, Y_1_c11, Y_1_c12, Y_1_c13, Y_1_c14, Y_1_c15, Y_1_c16, Y_1_c17, Y_1_c18, Y_1_c19, Y_1_c20, Y_1_c21, Y_1_c22, Y_1_c23, Y_1_c24 :  std_logic_vector(3 downto 0);
signal S_1_c24 :  std_logic_vector(3 downto 0);
signal R_1_c24, R_1_c25, R_1_c26, R_1_c27, R_1_c28, R_1_c29, R_1_c30, R_1_c31, R_1_c32, R_1_c33, R_1_c34, R_1_c35 :  std_logic_vector(2 downto 0);
signal Cin_2_c24, Cin_2_c25 :  std_logic;
signal X_2_c23, X_2_c24, X_2_c25 :  std_logic_vector(3 downto 0);
signal Y_2_c0, Y_2_c1, Y_2_c2, Y_2_c3, Y_2_c4, Y_2_c5, Y_2_c6, Y_2_c7, Y_2_c8, Y_2_c9, Y_2_c10, Y_2_c11, Y_2_c12, Y_2_c13, Y_2_c14, Y_2_c15, Y_2_c16, Y_2_c17, Y_2_c18, Y_2_c19, Y_2_c20, Y_2_c21, Y_2_c22, Y_2_c23, Y_2_c24, Y_2_c25 :  std_logic_vector(3 downto 0);
signal S_2_c25 :  std_logic_vector(3 downto 0);
signal R_2_c25, R_2_c26, R_2_c27, R_2_c28, R_2_c29, R_2_c30, R_2_c31, R_2_c32, R_2_c33, R_2_c34, R_2_c35 :  std_logic_vector(2 downto 0);
signal Cin_3_c25, Cin_3_c26 :  std_logic;
signal X_3_c23, X_3_c24, X_3_c25, X_3_c26 :  std_logic_vector(3 downto 0);
signal Y_3_c0, Y_3_c1, Y_3_c2, Y_3_c3, Y_3_c4, Y_3_c5, Y_3_c6, Y_3_c7, Y_3_c8, Y_3_c9, Y_3_c10, Y_3_c11, Y_3_c12, Y_3_c13, Y_3_c14, Y_3_c15, Y_3_c16, Y_3_c17, Y_3_c18, Y_3_c19, Y_3_c20, Y_3_c21, Y_3_c22, Y_3_c23, Y_3_c24, Y_3_c25, Y_3_c26 :  std_logic_vector(3 downto 0);
signal S_3_c26 :  std_logic_vector(3 downto 0);
signal R_3_c26, R_3_c27, R_3_c28, R_3_c29, R_3_c30, R_3_c31, R_3_c32, R_3_c33, R_3_c34, R_3_c35 :  std_logic_vector(2 downto 0);
signal Cin_4_c26, Cin_4_c27 :  std_logic;
signal X_4_c23, X_4_c24, X_4_c25, X_4_c26, X_4_c27 :  std_logic_vector(3 downto 0);
signal Y_4_c0, Y_4_c1, Y_4_c2, Y_4_c3, Y_4_c4, Y_4_c5, Y_4_c6, Y_4_c7, Y_4_c8, Y_4_c9, Y_4_c10, Y_4_c11, Y_4_c12, Y_4_c13, Y_4_c14, Y_4_c15, Y_4_c16, Y_4_c17, Y_4_c18, Y_4_c19, Y_4_c20, Y_4_c21, Y_4_c22, Y_4_c23, Y_4_c24, Y_4_c25, Y_4_c26, Y_4_c27 :  std_logic_vector(3 downto 0);
signal S_4_c27 :  std_logic_vector(3 downto 0);
signal R_4_c27, R_4_c28, R_4_c29, R_4_c30, R_4_c31, R_4_c32, R_4_c33, R_4_c34, R_4_c35 :  std_logic_vector(2 downto 0);
signal Cin_5_c27, Cin_5_c28 :  std_logic;
signal X_5_c23, X_5_c24, X_5_c25, X_5_c26, X_5_c27, X_5_c28 :  std_logic_vector(3 downto 0);
signal Y_5_c0, Y_5_c1, Y_5_c2, Y_5_c3, Y_5_c4, Y_5_c5, Y_5_c6, Y_5_c7, Y_5_c8, Y_5_c9, Y_5_c10, Y_5_c11, Y_5_c12, Y_5_c13, Y_5_c14, Y_5_c15, Y_5_c16, Y_5_c17, Y_5_c18, Y_5_c19, Y_5_c20, Y_5_c21, Y_5_c22, Y_5_c23, Y_5_c24, Y_5_c25, Y_5_c26, Y_5_c27, Y_5_c28 :  std_logic_vector(3 downto 0);
signal S_5_c28 :  std_logic_vector(3 downto 0);
signal R_5_c28, R_5_c29, R_5_c30, R_5_c31, R_5_c32, R_5_c33, R_5_c34, R_5_c35 :  std_logic_vector(2 downto 0);
signal Cin_6_c28, Cin_6_c29 :  std_logic;
signal X_6_c23, X_6_c24, X_6_c25, X_6_c26, X_6_c27, X_6_c28, X_6_c29 :  std_logic_vector(3 downto 0);
signal Y_6_c0, Y_6_c1, Y_6_c2, Y_6_c3, Y_6_c4, Y_6_c5, Y_6_c6, Y_6_c7, Y_6_c8, Y_6_c9, Y_6_c10, Y_6_c11, Y_6_c12, Y_6_c13, Y_6_c14, Y_6_c15, Y_6_c16, Y_6_c17, Y_6_c18, Y_6_c19, Y_6_c20, Y_6_c21, Y_6_c22, Y_6_c23, Y_6_c24, Y_6_c25, Y_6_c26, Y_6_c27, Y_6_c28, Y_6_c29 :  std_logic_vector(3 downto 0);
signal S_6_c29 :  std_logic_vector(3 downto 0);
signal R_6_c29, R_6_c30, R_6_c31, R_6_c32, R_6_c33, R_6_c34, R_6_c35 :  std_logic_vector(2 downto 0);
signal Cin_7_c29, Cin_7_c30 :  std_logic;
signal X_7_c23, X_7_c24, X_7_c25, X_7_c26, X_7_c27, X_7_c28, X_7_c29, X_7_c30 :  std_logic_vector(3 downto 0);
signal Y_7_c0, Y_7_c1, Y_7_c2, Y_7_c3, Y_7_c4, Y_7_c5, Y_7_c6, Y_7_c7, Y_7_c8, Y_7_c9, Y_7_c10, Y_7_c11, Y_7_c12, Y_7_c13, Y_7_c14, Y_7_c15, Y_7_c16, Y_7_c17, Y_7_c18, Y_7_c19, Y_7_c20, Y_7_c21, Y_7_c22, Y_7_c23, Y_7_c24, Y_7_c25, Y_7_c26, Y_7_c27, Y_7_c28, Y_7_c29, Y_7_c30 :  std_logic_vector(3 downto 0);
signal S_7_c30 :  std_logic_vector(3 downto 0);
signal R_7_c30, R_7_c31, R_7_c32, R_7_c33, R_7_c34, R_7_c35 :  std_logic_vector(2 downto 0);
signal Cin_8_c30, Cin_8_c31 :  std_logic;
signal X_8_c23, X_8_c24, X_8_c25, X_8_c26, X_8_c27, X_8_c28, X_8_c29, X_8_c30, X_8_c31 :  std_logic_vector(3 downto 0);
signal Y_8_c0, Y_8_c1, Y_8_c2, Y_8_c3, Y_8_c4, Y_8_c5, Y_8_c6, Y_8_c7, Y_8_c8, Y_8_c9, Y_8_c10, Y_8_c11, Y_8_c12, Y_8_c13, Y_8_c14, Y_8_c15, Y_8_c16, Y_8_c17, Y_8_c18, Y_8_c19, Y_8_c20, Y_8_c21, Y_8_c22, Y_8_c23, Y_8_c24, Y_8_c25, Y_8_c26, Y_8_c27, Y_8_c28, Y_8_c29, Y_8_c30, Y_8_c31 :  std_logic_vector(3 downto 0);
signal S_8_c31 :  std_logic_vector(3 downto 0);
signal R_8_c31, R_8_c32, R_8_c33, R_8_c34, R_8_c35 :  std_logic_vector(2 downto 0);
signal Cin_9_c31, Cin_9_c32 :  std_logic;
signal X_9_c23, X_9_c24, X_9_c25, X_9_c26, X_9_c27, X_9_c28, X_9_c29, X_9_c30, X_9_c31, X_9_c32 :  std_logic_vector(3 downto 0);
signal Y_9_c0, Y_9_c1, Y_9_c2, Y_9_c3, Y_9_c4, Y_9_c5, Y_9_c6, Y_9_c7, Y_9_c8, Y_9_c9, Y_9_c10, Y_9_c11, Y_9_c12, Y_9_c13, Y_9_c14, Y_9_c15, Y_9_c16, Y_9_c17, Y_9_c18, Y_9_c19, Y_9_c20, Y_9_c21, Y_9_c22, Y_9_c23, Y_9_c24, Y_9_c25, Y_9_c26, Y_9_c27, Y_9_c28, Y_9_c29, Y_9_c30, Y_9_c31, Y_9_c32 :  std_logic_vector(3 downto 0);
signal S_9_c32 :  std_logic_vector(3 downto 0);
signal R_9_c32, R_9_c33, R_9_c34, R_9_c35 :  std_logic_vector(2 downto 0);
signal Cin_10_c32, Cin_10_c33 :  std_logic;
signal X_10_c23, X_10_c24, X_10_c25, X_10_c26, X_10_c27, X_10_c28, X_10_c29, X_10_c30, X_10_c31, X_10_c32, X_10_c33 :  std_logic_vector(3 downto 0);
signal Y_10_c0, Y_10_c1, Y_10_c2, Y_10_c3, Y_10_c4, Y_10_c5, Y_10_c6, Y_10_c7, Y_10_c8, Y_10_c9, Y_10_c10, Y_10_c11, Y_10_c12, Y_10_c13, Y_10_c14, Y_10_c15, Y_10_c16, Y_10_c17, Y_10_c18, Y_10_c19, Y_10_c20, Y_10_c21, Y_10_c22, Y_10_c23, Y_10_c24, Y_10_c25, Y_10_c26, Y_10_c27, Y_10_c28, Y_10_c29, Y_10_c30, Y_10_c31, Y_10_c32, Y_10_c33 :  std_logic_vector(3 downto 0);
signal S_10_c33 :  std_logic_vector(3 downto 0);
signal R_10_c33, R_10_c34, R_10_c35 :  std_logic_vector(2 downto 0);
signal Cin_11_c33, Cin_11_c34 :  std_logic;
signal X_11_c23, X_11_c24, X_11_c25, X_11_c26, X_11_c27, X_11_c28, X_11_c29, X_11_c30, X_11_c31, X_11_c32, X_11_c33, X_11_c34 :  std_logic_vector(3 downto 0);
signal Y_11_c0, Y_11_c1, Y_11_c2, Y_11_c3, Y_11_c4, Y_11_c5, Y_11_c6, Y_11_c7, Y_11_c8, Y_11_c9, Y_11_c10, Y_11_c11, Y_11_c12, Y_11_c13, Y_11_c14, Y_11_c15, Y_11_c16, Y_11_c17, Y_11_c18, Y_11_c19, Y_11_c20, Y_11_c21, Y_11_c22, Y_11_c23, Y_11_c24, Y_11_c25, Y_11_c26, Y_11_c27, Y_11_c28, Y_11_c29, Y_11_c30, Y_11_c31, Y_11_c32, Y_11_c33, Y_11_c34 :  std_logic_vector(3 downto 0);
signal S_11_c34 :  std_logic_vector(3 downto 0);
signal R_11_c34, R_11_c35 :  std_logic_vector(2 downto 0);
signal Cin_12_c34, Cin_12_c35 :  std_logic;
signal X_12_c23, X_12_c24, X_12_c25, X_12_c26, X_12_c27, X_12_c28, X_12_c29, X_12_c30, X_12_c31, X_12_c32, X_12_c33, X_12_c34, X_12_c35 :  std_logic_vector(1 downto 0);
signal Y_12_c0, Y_12_c1, Y_12_c2, Y_12_c3, Y_12_c4, Y_12_c5, Y_12_c6, Y_12_c7, Y_12_c8, Y_12_c9, Y_12_c10, Y_12_c11, Y_12_c12, Y_12_c13, Y_12_c14, Y_12_c15, Y_12_c16, Y_12_c17, Y_12_c18, Y_12_c19, Y_12_c20, Y_12_c21, Y_12_c22, Y_12_c23, Y_12_c24, Y_12_c25, Y_12_c26, Y_12_c27, Y_12_c28, Y_12_c29, Y_12_c30, Y_12_c31, Y_12_c32, Y_12_c33, Y_12_c34, Y_12_c35 :  std_logic_vector(1 downto 0);
signal S_12_c35 :  std_logic_vector(1 downto 0);
signal R_12_c35 :  std_logic_vector(0 downto 0);
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
            end if;
            if ce_24 = '1' then
               Cin_1_c24 <= Cin_1_c23;
               X_1_c24 <= X_1_c23;
               Y_1_c24 <= Y_1_c23;
               X_2_c24 <= X_2_c23;
               Y_2_c24 <= Y_2_c23;
               X_3_c24 <= X_3_c23;
               Y_3_c24 <= Y_3_c23;
               X_4_c24 <= X_4_c23;
               Y_4_c24 <= Y_4_c23;
               X_5_c24 <= X_5_c23;
               Y_5_c24 <= Y_5_c23;
               X_6_c24 <= X_6_c23;
               Y_6_c24 <= Y_6_c23;
               X_7_c24 <= X_7_c23;
               Y_7_c24 <= Y_7_c23;
               X_8_c24 <= X_8_c23;
               Y_8_c24 <= Y_8_c23;
               X_9_c24 <= X_9_c23;
               Y_9_c24 <= Y_9_c23;
               X_10_c24 <= X_10_c23;
               Y_10_c24 <= Y_10_c23;
               X_11_c24 <= X_11_c23;
               Y_11_c24 <= Y_11_c23;
               X_12_c24 <= X_12_c23;
               Y_12_c24 <= Y_12_c23;
            end if;
            if ce_25 = '1' then
               R_1_c25 <= R_1_c24;
               Cin_2_c25 <= Cin_2_c24;
               X_2_c25 <= X_2_c24;
               Y_2_c25 <= Y_2_c24;
               X_3_c25 <= X_3_c24;
               Y_3_c25 <= Y_3_c24;
               X_4_c25 <= X_4_c24;
               Y_4_c25 <= Y_4_c24;
               X_5_c25 <= X_5_c24;
               Y_5_c25 <= Y_5_c24;
               X_6_c25 <= X_6_c24;
               Y_6_c25 <= Y_6_c24;
               X_7_c25 <= X_7_c24;
               Y_7_c25 <= Y_7_c24;
               X_8_c25 <= X_8_c24;
               Y_8_c25 <= Y_8_c24;
               X_9_c25 <= X_9_c24;
               Y_9_c25 <= Y_9_c24;
               X_10_c25 <= X_10_c24;
               Y_10_c25 <= Y_10_c24;
               X_11_c25 <= X_11_c24;
               Y_11_c25 <= Y_11_c24;
               X_12_c25 <= X_12_c24;
               Y_12_c25 <= Y_12_c24;
            end if;
            if ce_26 = '1' then
               R_1_c26 <= R_1_c25;
               R_2_c26 <= R_2_c25;
               Cin_3_c26 <= Cin_3_c25;
               X_3_c26 <= X_3_c25;
               Y_3_c26 <= Y_3_c25;
               X_4_c26 <= X_4_c25;
               Y_4_c26 <= Y_4_c25;
               X_5_c26 <= X_5_c25;
               Y_5_c26 <= Y_5_c25;
               X_6_c26 <= X_6_c25;
               Y_6_c26 <= Y_6_c25;
               X_7_c26 <= X_7_c25;
               Y_7_c26 <= Y_7_c25;
               X_8_c26 <= X_8_c25;
               Y_8_c26 <= Y_8_c25;
               X_9_c26 <= X_9_c25;
               Y_9_c26 <= Y_9_c25;
               X_10_c26 <= X_10_c25;
               Y_10_c26 <= Y_10_c25;
               X_11_c26 <= X_11_c25;
               Y_11_c26 <= Y_11_c25;
               X_12_c26 <= X_12_c25;
               Y_12_c26 <= Y_12_c25;
            end if;
            if ce_27 = '1' then
               R_1_c27 <= R_1_c26;
               R_2_c27 <= R_2_c26;
               R_3_c27 <= R_3_c26;
               Cin_4_c27 <= Cin_4_c26;
               X_4_c27 <= X_4_c26;
               Y_4_c27 <= Y_4_c26;
               X_5_c27 <= X_5_c26;
               Y_5_c27 <= Y_5_c26;
               X_6_c27 <= X_6_c26;
               Y_6_c27 <= Y_6_c26;
               X_7_c27 <= X_7_c26;
               Y_7_c27 <= Y_7_c26;
               X_8_c27 <= X_8_c26;
               Y_8_c27 <= Y_8_c26;
               X_9_c27 <= X_9_c26;
               Y_9_c27 <= Y_9_c26;
               X_10_c27 <= X_10_c26;
               Y_10_c27 <= Y_10_c26;
               X_11_c27 <= X_11_c26;
               Y_11_c27 <= Y_11_c26;
               X_12_c27 <= X_12_c26;
               Y_12_c27 <= Y_12_c26;
            end if;
            if ce_28 = '1' then
               R_1_c28 <= R_1_c27;
               R_2_c28 <= R_2_c27;
               R_3_c28 <= R_3_c27;
               R_4_c28 <= R_4_c27;
               Cin_5_c28 <= Cin_5_c27;
               X_5_c28 <= X_5_c27;
               Y_5_c28 <= Y_5_c27;
               X_6_c28 <= X_6_c27;
               Y_6_c28 <= Y_6_c27;
               X_7_c28 <= X_7_c27;
               Y_7_c28 <= Y_7_c27;
               X_8_c28 <= X_8_c27;
               Y_8_c28 <= Y_8_c27;
               X_9_c28 <= X_9_c27;
               Y_9_c28 <= Y_9_c27;
               X_10_c28 <= X_10_c27;
               Y_10_c28 <= Y_10_c27;
               X_11_c28 <= X_11_c27;
               Y_11_c28 <= Y_11_c27;
               X_12_c28 <= X_12_c27;
               Y_12_c28 <= Y_12_c27;
            end if;
            if ce_29 = '1' then
               R_1_c29 <= R_1_c28;
               R_2_c29 <= R_2_c28;
               R_3_c29 <= R_3_c28;
               R_4_c29 <= R_4_c28;
               R_5_c29 <= R_5_c28;
               Cin_6_c29 <= Cin_6_c28;
               X_6_c29 <= X_6_c28;
               Y_6_c29 <= Y_6_c28;
               X_7_c29 <= X_7_c28;
               Y_7_c29 <= Y_7_c28;
               X_8_c29 <= X_8_c28;
               Y_8_c29 <= Y_8_c28;
               X_9_c29 <= X_9_c28;
               Y_9_c29 <= Y_9_c28;
               X_10_c29 <= X_10_c28;
               Y_10_c29 <= Y_10_c28;
               X_11_c29 <= X_11_c28;
               Y_11_c29 <= Y_11_c28;
               X_12_c29 <= X_12_c28;
               Y_12_c29 <= Y_12_c28;
            end if;
            if ce_30 = '1' then
               R_1_c30 <= R_1_c29;
               R_2_c30 <= R_2_c29;
               R_3_c30 <= R_3_c29;
               R_4_c30 <= R_4_c29;
               R_5_c30 <= R_5_c29;
               R_6_c30 <= R_6_c29;
               Cin_7_c30 <= Cin_7_c29;
               X_7_c30 <= X_7_c29;
               Y_7_c30 <= Y_7_c29;
               X_8_c30 <= X_8_c29;
               Y_8_c30 <= Y_8_c29;
               X_9_c30 <= X_9_c29;
               Y_9_c30 <= Y_9_c29;
               X_10_c30 <= X_10_c29;
               Y_10_c30 <= Y_10_c29;
               X_11_c30 <= X_11_c29;
               Y_11_c30 <= Y_11_c29;
               X_12_c30 <= X_12_c29;
               Y_12_c30 <= Y_12_c29;
            end if;
            if ce_31 = '1' then
               R_1_c31 <= R_1_c30;
               R_2_c31 <= R_2_c30;
               R_3_c31 <= R_3_c30;
               R_4_c31 <= R_4_c30;
               R_5_c31 <= R_5_c30;
               R_6_c31 <= R_6_c30;
               R_7_c31 <= R_7_c30;
               Cin_8_c31 <= Cin_8_c30;
               X_8_c31 <= X_8_c30;
               Y_8_c31 <= Y_8_c30;
               X_9_c31 <= X_9_c30;
               Y_9_c31 <= Y_9_c30;
               X_10_c31 <= X_10_c30;
               Y_10_c31 <= Y_10_c30;
               X_11_c31 <= X_11_c30;
               Y_11_c31 <= Y_11_c30;
               X_12_c31 <= X_12_c30;
               Y_12_c31 <= Y_12_c30;
            end if;
            if ce_32 = '1' then
               R_1_c32 <= R_1_c31;
               R_2_c32 <= R_2_c31;
               R_3_c32 <= R_3_c31;
               R_4_c32 <= R_4_c31;
               R_5_c32 <= R_5_c31;
               R_6_c32 <= R_6_c31;
               R_7_c32 <= R_7_c31;
               R_8_c32 <= R_8_c31;
               Cin_9_c32 <= Cin_9_c31;
               X_9_c32 <= X_9_c31;
               Y_9_c32 <= Y_9_c31;
               X_10_c32 <= X_10_c31;
               Y_10_c32 <= Y_10_c31;
               X_11_c32 <= X_11_c31;
               Y_11_c32 <= Y_11_c31;
               X_12_c32 <= X_12_c31;
               Y_12_c32 <= Y_12_c31;
            end if;
            if ce_33 = '1' then
               R_1_c33 <= R_1_c32;
               R_2_c33 <= R_2_c32;
               R_3_c33 <= R_3_c32;
               R_4_c33 <= R_4_c32;
               R_5_c33 <= R_5_c32;
               R_6_c33 <= R_6_c32;
               R_7_c33 <= R_7_c32;
               R_8_c33 <= R_8_c32;
               R_9_c33 <= R_9_c32;
               Cin_10_c33 <= Cin_10_c32;
               X_10_c33 <= X_10_c32;
               Y_10_c33 <= Y_10_c32;
               X_11_c33 <= X_11_c32;
               Y_11_c33 <= Y_11_c32;
               X_12_c33 <= X_12_c32;
               Y_12_c33 <= Y_12_c32;
            end if;
            if ce_34 = '1' then
               R_1_c34 <= R_1_c33;
               R_2_c34 <= R_2_c33;
               R_3_c34 <= R_3_c33;
               R_4_c34 <= R_4_c33;
               R_5_c34 <= R_5_c33;
               R_6_c34 <= R_6_c33;
               R_7_c34 <= R_7_c33;
               R_8_c34 <= R_8_c33;
               R_9_c34 <= R_9_c33;
               R_10_c34 <= R_10_c33;
               Cin_11_c34 <= Cin_11_c33;
               X_11_c34 <= X_11_c33;
               Y_11_c34 <= Y_11_c33;
               X_12_c34 <= X_12_c33;
               Y_12_c34 <= Y_12_c33;
            end if;
            if ce_35 = '1' then
               R_1_c35 <= R_1_c34;
               R_2_c35 <= R_2_c34;
               R_3_c35 <= R_3_c34;
               R_4_c35 <= R_4_c34;
               R_5_c35 <= R_5_c34;
               R_6_c35 <= R_6_c34;
               R_7_c35 <= R_7_c34;
               R_8_c35 <= R_8_c34;
               R_9_c35 <= R_9_c34;
               R_10_c35 <= R_10_c34;
               R_11_c35 <= R_11_c34;
               Cin_12_c35 <= Cin_12_c34;
               X_12_c35 <= X_12_c34;
               Y_12_c35 <= Y_12_c34;
            end if;
         end if;
      end process;
   Cin_1_c23 <= Cin;
   X_1_c23 <= '0' & X(2 downto 0);
   Y_1_c0 <= '0' & Y(2 downto 0);
   S_1_c24 <= X_1_c24 + Y_1_c24 + Cin_1_c24;
   R_1_c24 <= S_1_c24(2 downto 0);
   Cin_2_c24 <= S_1_c24(3);
   X_2_c23 <= '0' & X(5 downto 3);
   Y_2_c0 <= '0' & Y(5 downto 3);
   S_2_c25 <= X_2_c25 + Y_2_c25 + Cin_2_c25;
   R_2_c25 <= S_2_c25(2 downto 0);
   Cin_3_c25 <= S_2_c25(3);
   X_3_c23 <= '0' & X(8 downto 6);
   Y_3_c0 <= '0' & Y(8 downto 6);
   S_3_c26 <= X_3_c26 + Y_3_c26 + Cin_3_c26;
   R_3_c26 <= S_3_c26(2 downto 0);
   Cin_4_c26 <= S_3_c26(3);
   X_4_c23 <= '0' & X(11 downto 9);
   Y_4_c0 <= '0' & Y(11 downto 9);
   S_4_c27 <= X_4_c27 + Y_4_c27 + Cin_4_c27;
   R_4_c27 <= S_4_c27(2 downto 0);
   Cin_5_c27 <= S_4_c27(3);
   X_5_c23 <= '0' & X(14 downto 12);
   Y_5_c0 <= '0' & Y(14 downto 12);
   S_5_c28 <= X_5_c28 + Y_5_c28 + Cin_5_c28;
   R_5_c28 <= S_5_c28(2 downto 0);
   Cin_6_c28 <= S_5_c28(3);
   X_6_c23 <= '0' & X(17 downto 15);
   Y_6_c0 <= '0' & Y(17 downto 15);
   S_6_c29 <= X_6_c29 + Y_6_c29 + Cin_6_c29;
   R_6_c29 <= S_6_c29(2 downto 0);
   Cin_7_c29 <= S_6_c29(3);
   X_7_c23 <= '0' & X(20 downto 18);
   Y_7_c0 <= '0' & Y(20 downto 18);
   S_7_c30 <= X_7_c30 + Y_7_c30 + Cin_7_c30;
   R_7_c30 <= S_7_c30(2 downto 0);
   Cin_8_c30 <= S_7_c30(3);
   X_8_c23 <= '0' & X(23 downto 21);
   Y_8_c0 <= '0' & Y(23 downto 21);
   S_8_c31 <= X_8_c31 + Y_8_c31 + Cin_8_c31;
   R_8_c31 <= S_8_c31(2 downto 0);
   Cin_9_c31 <= S_8_c31(3);
   X_9_c23 <= '0' & X(26 downto 24);
   Y_9_c0 <= '0' & Y(26 downto 24);
   S_9_c32 <= X_9_c32 + Y_9_c32 + Cin_9_c32;
   R_9_c32 <= S_9_c32(2 downto 0);
   Cin_10_c32 <= S_9_c32(3);
   X_10_c23 <= '0' & X(29 downto 27);
   Y_10_c0 <= '0' & Y(29 downto 27);
   S_10_c33 <= X_10_c33 + Y_10_c33 + Cin_10_c33;
   R_10_c33 <= S_10_c33(2 downto 0);
   Cin_11_c33 <= S_10_c33(3);
   X_11_c23 <= '0' & X(32 downto 30);
   Y_11_c0 <= '0' & Y(32 downto 30);
   S_11_c34 <= X_11_c34 + Y_11_c34 + Cin_11_c34;
   R_11_c34 <= S_11_c34(2 downto 0);
   Cin_12_c34 <= S_11_c34(3);
   X_12_c23 <= '0' & X(33 downto 33);
   Y_12_c0 <= '0' & Y(33 downto 33);
   S_12_c35 <= X_12_c35 + Y_12_c35 + Cin_12_c35;
   R_12_c35 <= S_12_c35(0 downto 0);
   R <= R_12_c35 & R_11_c35 & R_10_c35 & R_9_c35 & R_8_c35 & R_7_c35 & R_6_c35 & R_5_c35 & R_4_c35 & R_3_c35 & R_2_c35 & R_1_c35 ;
end architecture;

--------------------------------------------------------------------------------
--                             FloatingPointAdder
--                         (FPAdd_8_23_Freq800_uid2)
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2010-2017)
--------------------------------------------------------------------------------
-- Pipeline depth: 36 cycles
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

entity FloatingPointAdder is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27, ce_28, ce_29, ce_30, ce_31, ce_32, ce_33, ce_34, ce_35, ce_36 : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of FloatingPointAdder is
   component RightShifterSticky24_by_max_26_Freq800_uid4 is
      port ( clk, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8 : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             S : in  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(25 downto 0);
             Sticky : out  std_logic   );
   end component;

   component IntAdder_27_Freq800_uid6 is
      port ( clk, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17 : in std_logic;
             X : in  std_logic_vector(26 downto 0);
             Y : in  std_logic_vector(26 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component Normalizer_Z_28_28_28_Freq800_uid8 is
      port ( clk, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23 : in std_logic;
             X : in  std_logic_vector(27 downto 0);
             Count : out  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(27 downto 0)   );
   end component;

   component IntAdder_34_Freq800_uid11 is
      port ( clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27, ce_28, ce_29, ce_30, ce_31, ce_32, ce_33, ce_34, ce_35 : in std_logic;
             X : in  std_logic_vector(33 downto 0);
             Y : in  std_logic_vector(33 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(33 downto 0)   );
   end component;

signal excExpFracX_c0, excExpFracX_c1 :  std_logic_vector(32 downto 0);
signal excExpFracY_c0, excExpFracY_c1 :  std_logic_vector(32 downto 0);
signal swap_c1 :  std_logic;
signal eXmeY_c1 :  std_logic_vector(7 downto 0);
signal eYmeX_c1 :  std_logic_vector(7 downto 0);
signal expDiff_c1, expDiff_c2 :  std_logic_vector(7 downto 0);
signal newX_c1 :  std_logic_vector(33 downto 0);
signal newY_c1, newY_c2 :  std_logic_vector(33 downto 0);
signal expX_c1, expX_c2 :  std_logic_vector(7 downto 0);
signal excX_c1 :  std_logic_vector(1 downto 0);
signal excY_c1, excY_c2 :  std_logic_vector(1 downto 0);
signal signX_c1, signX_c2 :  std_logic;
signal signY_c1, signY_c2 :  std_logic;
signal EffSub_c2, EffSub_c3, EffSub_c4, EffSub_c5, EffSub_c6, EffSub_c7, EffSub_c8, EffSub_c9, EffSub_c10, EffSub_c11, EffSub_c12, EffSub_c13, EffSub_c14, EffSub_c15, EffSub_c16, EffSub_c17, EffSub_c18, EffSub_c19, EffSub_c20, EffSub_c21, EffSub_c22, EffSub_c23, EffSub_c24, EffSub_c25, EffSub_c26, EffSub_c27, EffSub_c28, EffSub_c29, EffSub_c30, EffSub_c31, EffSub_c32, EffSub_c33, EffSub_c34, EffSub_c35, EffSub_c36 :  std_logic;
signal sXsYExnXY_c1, sXsYExnXY_c2 :  std_logic_vector(5 downto 0);
signal sdExnXY_c1 :  std_logic_vector(3 downto 0);
signal fracY_c2 :  std_logic_vector(23 downto 0);
signal excRt_c2, excRt_c3, excRt_c4, excRt_c5, excRt_c6, excRt_c7, excRt_c8, excRt_c9, excRt_c10, excRt_c11, excRt_c12, excRt_c13, excRt_c14, excRt_c15, excRt_c16, excRt_c17, excRt_c18, excRt_c19, excRt_c20, excRt_c21, excRt_c22, excRt_c23, excRt_c24, excRt_c25, excRt_c26, excRt_c27, excRt_c28, excRt_c29, excRt_c30, excRt_c31, excRt_c32, excRt_c33, excRt_c34, excRt_c35, excRt_c36 :  std_logic_vector(1 downto 0);
signal signR_c2, signR_c3, signR_c4, signR_c5, signR_c6, signR_c7, signR_c8, signR_c9, signR_c10, signR_c11, signR_c12, signR_c13, signR_c14, signR_c15, signR_c16, signR_c17, signR_c18, signR_c19, signR_c20, signR_c21, signR_c22, signR_c23 :  std_logic;
signal shiftedOut_c2 :  std_logic;
signal shiftVal_c2 :  std_logic_vector(4 downto 0);
signal shiftedFracY_c3 :  std_logic_vector(25 downto 0);
signal sticky_c8, sticky_c9, sticky_c10, sticky_c11, sticky_c12, sticky_c13, sticky_c14, sticky_c15, sticky_c16, sticky_c17 :  std_logic;
signal fracYpad_c3, fracYpad_c4 :  std_logic_vector(26 downto 0);
signal EffSubVector_c2, EffSubVector_c3, EffSubVector_c4 :  std_logic_vector(26 downto 0);
signal fracYpadXorOp_c4 :  std_logic_vector(26 downto 0);
signal fracXpad_c1 :  std_logic_vector(26 downto 0);
signal cInSigAdd_c8 :  std_logic;
signal fracAddResult_c17 :  std_logic_vector(26 downto 0);
signal fracSticky_c17 :  std_logic_vector(27 downto 0);
signal nZerosNew_c22, nZerosNew_c23 :  std_logic_vector(4 downto 0);
signal shiftedFrac_c23 :  std_logic_vector(27 downto 0);
signal extendedExpInc_c2, extendedExpInc_c3, extendedExpInc_c4, extendedExpInc_c5, extendedExpInc_c6, extendedExpInc_c7, extendedExpInc_c8, extendedExpInc_c9, extendedExpInc_c10, extendedExpInc_c11, extendedExpInc_c12, extendedExpInc_c13, extendedExpInc_c14, extendedExpInc_c15, extendedExpInc_c16, extendedExpInc_c17, extendedExpInc_c18, extendedExpInc_c19, extendedExpInc_c20, extendedExpInc_c21, extendedExpInc_c22, extendedExpInc_c23 :  std_logic_vector(8 downto 0);
signal updatedExp_c23 :  std_logic_vector(9 downto 0);
signal eqdiffsign_c22, eqdiffsign_c23, eqdiffsign_c24, eqdiffsign_c25, eqdiffsign_c26, eqdiffsign_c27, eqdiffsign_c28, eqdiffsign_c29, eqdiffsign_c30, eqdiffsign_c31, eqdiffsign_c32, eqdiffsign_c33, eqdiffsign_c34, eqdiffsign_c35, eqdiffsign_c36 :  std_logic;
signal expFrac_c23 :  std_logic_vector(33 downto 0);
signal stk_c23 :  std_logic;
signal rnd_c23 :  std_logic;
signal lsb_c23 :  std_logic;
signal needToRound_c23 :  std_logic;
signal RoundedExpFrac_c35 :  std_logic_vector(33 downto 0);
signal upExc_c35 :  std_logic_vector(1 downto 0);
signal fracR_c35, fracR_c36 :  std_logic_vector(22 downto 0);
signal expR_c35, expR_c36 :  std_logic_vector(7 downto 0);
signal exExpExc_c35, exExpExc_c36 :  std_logic_vector(3 downto 0);
signal excRt2_c36 :  std_logic_vector(1 downto 0);
signal excR_c36 :  std_logic_vector(1 downto 0);
signal signR2_c23, signR2_c24, signR2_c25, signR2_c26, signR2_c27, signR2_c28, signR2_c29, signR2_c30, signR2_c31, signR2_c32, signR2_c33, signR2_c34, signR2_c35, signR2_c36 :  std_logic;
signal computedR_c36 :  std_logic_vector(33 downto 0);
signal X_c1 :  std_logic_vector(8+23+2 downto 0);
signal Y_c1 :  std_logic_vector(8+23+2 downto 0);
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
               fracYpad_c4 <= fracYpad_c3;
               EffSubVector_c4 <= EffSubVector_c3;
               extendedExpInc_c4 <= extendedExpInc_c3;
            end if;
            if ce_5 = '1' then
               EffSub_c5 <= EffSub_c4;
               excRt_c5 <= excRt_c4;
               signR_c5 <= signR_c4;
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
               sticky_c9 <= sticky_c8;
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
               extendedExpInc_c18 <= extendedExpInc_c17;
            end if;
            if ce_19 = '1' then
               EffSub_c19 <= EffSub_c18;
               excRt_c19 <= excRt_c18;
               signR_c19 <= signR_c18;
               extendedExpInc_c19 <= extendedExpInc_c18;
            end if;
            if ce_20 = '1' then
               EffSub_c20 <= EffSub_c19;
               excRt_c20 <= excRt_c19;
               signR_c20 <= signR_c19;
               extendedExpInc_c20 <= extendedExpInc_c19;
            end if;
            if ce_21 = '1' then
               EffSub_c21 <= EffSub_c20;
               excRt_c21 <= excRt_c20;
               signR_c21 <= signR_c20;
               extendedExpInc_c21 <= extendedExpInc_c20;
            end if;
            if ce_22 = '1' then
               EffSub_c22 <= EffSub_c21;
               excRt_c22 <= excRt_c21;
               signR_c22 <= signR_c21;
               extendedExpInc_c22 <= extendedExpInc_c21;
            end if;
            if ce_23 = '1' then
               EffSub_c23 <= EffSub_c22;
               excRt_c23 <= excRt_c22;
               signR_c23 <= signR_c22;
               nZerosNew_c23 <= nZerosNew_c22;
               extendedExpInc_c23 <= extendedExpInc_c22;
               eqdiffsign_c23 <= eqdiffsign_c22;
            end if;
            if ce_24 = '1' then
               EffSub_c24 <= EffSub_c23;
               excRt_c24 <= excRt_c23;
               eqdiffsign_c24 <= eqdiffsign_c23;
               signR2_c24 <= signR2_c23;
            end if;
            if ce_25 = '1' then
               EffSub_c25 <= EffSub_c24;
               excRt_c25 <= excRt_c24;
               eqdiffsign_c25 <= eqdiffsign_c24;
               signR2_c25 <= signR2_c24;
            end if;
            if ce_26 = '1' then
               EffSub_c26 <= EffSub_c25;
               excRt_c26 <= excRt_c25;
               eqdiffsign_c26 <= eqdiffsign_c25;
               signR2_c26 <= signR2_c25;
            end if;
            if ce_27 = '1' then
               EffSub_c27 <= EffSub_c26;
               excRt_c27 <= excRt_c26;
               eqdiffsign_c27 <= eqdiffsign_c26;
               signR2_c27 <= signR2_c26;
            end if;
            if ce_28 = '1' then
               EffSub_c28 <= EffSub_c27;
               excRt_c28 <= excRt_c27;
               eqdiffsign_c28 <= eqdiffsign_c27;
               signR2_c28 <= signR2_c27;
            end if;
            if ce_29 = '1' then
               EffSub_c29 <= EffSub_c28;
               excRt_c29 <= excRt_c28;
               eqdiffsign_c29 <= eqdiffsign_c28;
               signR2_c29 <= signR2_c28;
            end if;
            if ce_30 = '1' then
               EffSub_c30 <= EffSub_c29;
               excRt_c30 <= excRt_c29;
               eqdiffsign_c30 <= eqdiffsign_c29;
               signR2_c30 <= signR2_c29;
            end if;
            if ce_31 = '1' then
               EffSub_c31 <= EffSub_c30;
               excRt_c31 <= excRt_c30;
               eqdiffsign_c31 <= eqdiffsign_c30;
               signR2_c31 <= signR2_c30;
            end if;
            if ce_32 = '1' then
               EffSub_c32 <= EffSub_c31;
               excRt_c32 <= excRt_c31;
               eqdiffsign_c32 <= eqdiffsign_c31;
               signR2_c32 <= signR2_c31;
            end if;
            if ce_33 = '1' then
               EffSub_c33 <= EffSub_c32;
               excRt_c33 <= excRt_c32;
               eqdiffsign_c33 <= eqdiffsign_c32;
               signR2_c33 <= signR2_c32;
            end if;
            if ce_34 = '1' then
               EffSub_c34 <= EffSub_c33;
               excRt_c34 <= excRt_c33;
               eqdiffsign_c34 <= eqdiffsign_c33;
               signR2_c34 <= signR2_c33;
            end if;
            if ce_35 = '1' then
               EffSub_c35 <= EffSub_c34;
               excRt_c35 <= excRt_c34;
               eqdiffsign_c35 <= eqdiffsign_c34;
               signR2_c35 <= signR2_c34;
            end if;
            if ce_36 = '1' then
               EffSub_c36 <= EffSub_c35;
               excRt_c36 <= excRt_c35;
               eqdiffsign_c36 <= eqdiffsign_c35;
               fracR_c36 <= fracR_c35;
               expR_c36 <= expR_c35;
               exExpExc_c36 <= exExpExc_c35;
               signR2_c36 <= signR2_c35;
            end if;
         end if;
      end process;
   excExpFracX_c0 <= X(33 downto 32) & X(30 downto 0);
   excExpFracY_c0 <= Y(33 downto 32) & Y(30 downto 0);
   swap_c1 <= '1' when excExpFracX_c1 < excExpFracY_c1 else '0';
   -- exponent difference
   eXmeY_c1 <= (X_c1(30 downto 23)) - (Y_c1(30 downto 23));
   eYmeX_c1 <= (Y_c1(30 downto 23)) - (X_c1(30 downto 23));
   expDiff_c1 <= eXmeY_c1 when swap_c1 = '0' else eYmeX_c1;
   -- input swap so that |X|>|Y|
   newX_c1 <= X_c1 when swap_c1 = '0' else Y_c1;
   newY_c1 <= Y_c1 when swap_c1 = '0' else X_c1;
   -- now we decompose the inputs into their sign, exponent, fraction
   expX_c1<= newX_c1(30 downto 23);
   excX_c1<= newX_c1(33 downto 32);
   excY_c1<= newY_c1(33 downto 32);
   signX_c1<= newX_c1(31);
   signY_c1<= newY_c1(31);
   EffSub_c2 <= signX_c2 xor signY_c2;
   sXsYExnXY_c1 <= signX_c1 & signY_c1 & excX_c1 & excY_c1;
   sdExnXY_c1 <= excX_c1 & excY_c1;
   fracY_c2 <= "000000000000000000000000" when excY_c2="00" else ('1' & newY_c2(22 downto 0));
   -- Exception management logic
   with sXsYExnXY_c2  select  
   excRt_c2 <= "00" when "000000"|"010000"|"100000"|"110000",
      "01" when "000101"|"010101"|"100101"|"110101"|"000100"|"010100"|"100100"|"110100"|"000001"|"010001"|"100001"|"110001",
      "10" when "111010"|"001010"|"001000"|"011000"|"101000"|"111000"|"000010"|"010010"|"100010"|"110010"|"001001"|"011001"|"101001"|"111001"|"000110"|"010110"|"100110"|"110110", 
      "11" when others;
   signR_c2<= '0' when (sXsYExnXY_c2="100000" or sXsYExnXY_c2="010000") else signX_c2;
   shiftedOut_c2 <= '1' when (expDiff_c2 > 25) else '0';
   shiftVal_c2 <= expDiff_c2(4 downto 0) when shiftedOut_c2='0' else CONV_STD_LOGIC_VECTOR(26,5);
   RightShifterComponent: RightShifterSticky24_by_max_26_Freq800_uid4
      port map ( clk  => clk,
                 ce_3 => ce_3,
                 ce_4=> ce_4,
                 ce_5=> ce_5,
                 ce_6=> ce_6,
                 ce_7=> ce_7,
                 ce_8=> ce_8,
                 S => shiftVal_c2,
                 X => fracY_c2,
                 R => shiftedFracY_c3,
                 Sticky => sticky_c8);
   fracYpad_c3 <= "0" & shiftedFracY_c3;
   EffSubVector_c2 <= (26 downto 0 => EffSub_c2);
   fracYpadXorOp_c4 <= fracYpad_c4 xor EffSubVector_c4;
   fracXpad_c1 <= "01" & (newX_c1(22 downto 0)) & "00";
   cInSigAdd_c8 <= EffSub_c8 and not sticky_c8; -- if we subtract and the sticky was one, some of the negated sticky bits would have absorbed this carry 
   fracAdder: IntAdder_27_Freq800_uid6
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
                 Cin => cInSigAdd_c8,
                 X => fracXpad_c1,
                 Y => fracYpadXorOp_c4,
                 R => fracAddResult_c17);
   fracSticky_c17<= fracAddResult_c17 & sticky_c17; 
   LZCAndShifter: Normalizer_Z_28_28_28_Freq800_uid8
      port map ( clk  => clk,
                 ce_18 => ce_18,
                 ce_19=> ce_19,
                 ce_20=> ce_20,
                 ce_21=> ce_21,
                 ce_22=> ce_22,
                 ce_23=> ce_23,
                 X => fracSticky_c17,
                 Count => nZerosNew_c22,
                 R => shiftedFrac_c23);
   extendedExpInc_c2<= ("0" & expX_c2) + '1';
   updatedExp_c23 <= ("0" &extendedExpInc_c23) - ("00000" & nZerosNew_c23);
   eqdiffsign_c22 <= '1' when nZerosNew_c22="11111" else '0';
   expFrac_c23<= updatedExp_c23 & shiftedFrac_c23(26 downto 3);
   stk_c23<= shiftedFrac_c23(2) or shiftedFrac_c23(1) or shiftedFrac_c23(0);
   rnd_c23<= shiftedFrac_c23(3);
   lsb_c23<= shiftedFrac_c23(4);
   needToRound_c23<= '1' when (rnd_c23='1' and stk_c23='1') or (rnd_c23='1' and stk_c23='0' and lsb_c23='1')
  else '0';
   roundingAdder: IntAdder_34_Freq800_uid11
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
                 Cin => needToRound_c23,
                 X => expFrac_c23,
                 Y => "0000000000000000000000000000000000",
                 R => RoundedExpFrac_c35);
   -- possible update to exception bits
   upExc_c35 <= RoundedExpFrac_c35(33 downto 32);
   fracR_c35 <= RoundedExpFrac_c35(23 downto 1);
   expR_c35 <= RoundedExpFrac_c35(31 downto 24);
   exExpExc_c35 <= upExc_c35 & excRt_c35;
   with exExpExc_c36  select  
   excRt2_c36<= "00" when "0000"|"0100"|"1000"|"1100"|"1001"|"1101",
      "01" when "0001",
      "10" when "0010"|"0110"|"1010"|"1110"|"0101",
      "11" when others;
   excR_c36 <= "00" when (eqdiffsign_c36='1' and EffSub_c36='1'  and not(excRt_c36="11")) else excRt2_c36;
   signR2_c23 <= '0' when (eqdiffsign_c23='1' and EffSub_c23='1') else signR_c23;
   computedR_c36 <= excR_c36 & signR2_c36 & expR_c36 & fracR_c36;
   R <= computedR_c36;
end architecture;



