--------------------------------------------------------------------------------
--                RightShifterSticky53_by_max_55_Freq500_uid4
-- VHDL generated for Kintex7 @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2008-2011), Florent de Dinechin (2008-2019)
--------------------------------------------------------------------------------
-- Pipeline depth: 4 cycles
-- Clock period (ns): 2
-- Target frequency (MHz): 500
-- Input signals: X S
-- Output signals: R Sticky

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifterSticky53_by_max_55_Freq500_uid4 is
    port (clk, ce_2, ce_3, ce_4, ce_5 : in std_logic;
          X : in  std_logic_vector(52 downto 0);
          S : in  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(54 downto 0);
          Sticky : out  std_logic   );
end entity;

architecture arch of RightShifterSticky53_by_max_55_Freq500_uid4 is
signal ps_c1, ps_c2, ps_c3, ps_c4, ps_c5 :  std_logic_vector(5 downto 0);
signal Xpadded_c1 :  std_logic_vector(54 downto 0);
signal level6_c1, level6_c2 :  std_logic_vector(54 downto 0);
signal stk5_c2, stk5_c3 :  std_logic;
signal level5_c1, level5_c2, level5_c3 :  std_logic_vector(54 downto 0);
signal stk4_c3 :  std_logic;
signal level4_c2, level4_c3 :  std_logic_vector(54 downto 0);
signal stk3_c3, stk3_c4 :  std_logic;
signal level3_c2, level3_c3, level3_c4 :  std_logic_vector(54 downto 0);
signal stk2_c4 :  std_logic;
signal level2_c2, level2_c3, level2_c4 :  std_logic_vector(54 downto 0);
signal stk1_c4, stk1_c5 :  std_logic;
signal level1_c2, level1_c3, level1_c4, level1_c5 :  std_logic_vector(54 downto 0);
signal stk0_c5 :  std_logic;
signal level0_c2 :  std_logic_vector(54 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_2 = '1' then
               ps_c2 <= ps_c1;
               level6_c2 <= level6_c1;
               level5_c2 <= level5_c1;
            end if;
            if ce_3 = '1' then
               ps_c3 <= ps_c2;
               stk5_c3 <= stk5_c2;
               level5_c3 <= level5_c2;
               level4_c3 <= level4_c2;
               level3_c3 <= level3_c2;
               level2_c3 <= level2_c2;
               level1_c3 <= level1_c2;
            end if;
            if ce_4 = '1' then
               ps_c4 <= ps_c3;
               stk3_c4 <= stk3_c3;
               level3_c4 <= level3_c3;
               level2_c4 <= level2_c3;
               level1_c4 <= level1_c3;
            end if;
            if ce_5 = '1' then
               ps_c5 <= ps_c4;
               stk1_c5 <= stk1_c4;
               level1_c5 <= level1_c4;
            end if;
         end if;
      end process;
   ps_c1<= S;
   Xpadded_c1 <= X&(1 downto 0 => '0');
   level6_c1<= Xpadded_c1;
   stk5_c2 <= '1' when (level6_c2(31 downto 0)/="00000000000000000000000000000000" and ps_c2(5)='1')   else '0';
   level5_c1 <=  level6_c1 when  ps_c1(5)='0'    else (31 downto 0 => '0') & level6_c1(54 downto 32);
   stk4_c3 <= '1' when (level5_c3(15 downto 0)/="0000000000000000" and ps_c3(4)='1') or stk5_c3 ='1'   else '0';
   level4_c2 <=  level5_c2 when  ps_c2(4)='0'    else (15 downto 0 => '0') & level5_c2(54 downto 16);
   stk3_c3 <= '1' when (level4_c3(7 downto 0)/="00000000" and ps_c3(3)='1') or stk4_c3 ='1'   else '0';
   level3_c2 <=  level4_c2 when  ps_c2(3)='0'    else (7 downto 0 => '0') & level4_c2(54 downto 8);
   stk2_c4 <= '1' when (level3_c4(3 downto 0)/="0000" and ps_c4(2)='1') or stk3_c4 ='1'   else '0';
   level2_c2 <=  level3_c2 when  ps_c2(2)='0'    else (3 downto 0 => '0') & level3_c2(54 downto 4);
   stk1_c4 <= '1' when (level2_c4(1 downto 0)/="00" and ps_c4(1)='1') or stk2_c4 ='1'   else '0';
   level1_c2 <=  level2_c2 when  ps_c2(1)='0'    else (1 downto 0 => '0') & level2_c2(54 downto 2);
   stk0_c5 <= '1' when (level1_c5(0 downto 0)/="0" and ps_c5(0)='1') or stk1_c5 ='1'   else '0';
   level0_c2 <=  level1_c2 when  ps_c2(0)='0'    else (0 downto 0 => '0') & level1_c2(54 downto 1);
   R <= level0_c2;
   Sticky <= stk0_c5;
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_56_Freq500_uid6
-- VHDL generated for Kintex7 @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 5 cycles
-- Clock period (ns): 2
-- Target frequency (MHz): 500
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_56_Freq500_uid6 is
    port (clk, ce_2, ce_3, ce_4, ce_5, ce_6 : in std_logic;
          X : in  std_logic_vector(55 downto 0);
          Y : in  std_logic_vector(55 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(55 downto 0)   );
end entity;

architecture arch of IntAdder_56_Freq500_uid6 is
signal Cin_1_c5, Cin_1_c6 :  std_logic;
signal X_1_c1, X_1_c2, X_1_c3, X_1_c4, X_1_c5, X_1_c6 :  std_logic_vector(56 downto 0);
signal Y_1_c2, Y_1_c3, Y_1_c4, Y_1_c5, Y_1_c6 :  std_logic_vector(56 downto 0);
signal S_1_c6 :  std_logic_vector(56 downto 0);
signal R_1_c6 :  std_logic_vector(55 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_2 = '1' then
               X_1_c2 <= X_1_c1;
            end if;
            if ce_3 = '1' then
               X_1_c3 <= X_1_c2;
               Y_1_c3 <= Y_1_c2;
            end if;
            if ce_4 = '1' then
               X_1_c4 <= X_1_c3;
               Y_1_c4 <= Y_1_c3;
            end if;
            if ce_5 = '1' then
               X_1_c5 <= X_1_c4;
               Y_1_c5 <= Y_1_c4;
            end if;
            if ce_6 = '1' then
               Cin_1_c6 <= Cin_1_c5;
               X_1_c6 <= X_1_c5;
               Y_1_c6 <= Y_1_c5;
            end if;
         end if;
      end process;
   Cin_1_c5 <= Cin;
   X_1_c1 <= '0' & X(55 downto 0);
   Y_1_c2 <= '0' & Y(55 downto 0);
   S_1_c6 <= X_1_c6 + Y_1_c6 + Cin_1_c6;
   R_1_c6 <= S_1_c6(55 downto 0);
   R <= R_1_c6 ;
end architecture;

--------------------------------------------------------------------------------
--                     Normalizer_Z_57_57_57_Freq500_uid8
-- VHDL generated for Kintex7 @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, (2007-2020)
--------------------------------------------------------------------------------
-- Pipeline depth: 4 cycles
-- Clock period (ns): 2
-- Target frequency (MHz): 500
-- Input signals: X
-- Output signals: Count R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Normalizer_Z_57_57_57_Freq500_uid8 is
    port (clk, ce_7, ce_8, ce_9, ce_10 : in std_logic;
          X : in  std_logic_vector(56 downto 0);
          Count : out  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(56 downto 0)   );
end entity;

architecture arch of Normalizer_Z_57_57_57_Freq500_uid8 is
signal level6_c6, level6_c7 :  std_logic_vector(56 downto 0);
signal count5_c7, count5_c8, count5_c9, count5_c10 :  std_logic;
signal level5_c7, level5_c8 :  std_logic_vector(56 downto 0);
signal count4_c7, count4_c8, count4_c9, count4_c10 :  std_logic;
signal level4_c8 :  std_logic_vector(56 downto 0);
signal count3_c8, count3_c9, count3_c10 :  std_logic;
signal level3_c8, level3_c9 :  std_logic_vector(56 downto 0);
signal count2_c8, count2_c9, count2_c10 :  std_logic;
signal level2_c9 :  std_logic_vector(56 downto 0);
signal count1_c9, count1_c10 :  std_logic;
signal level1_c9, level1_c10 :  std_logic_vector(56 downto 0);
signal count0_c10 :  std_logic;
signal level0_c10 :  std_logic_vector(56 downto 0);
signal sCount_c10 :  std_logic_vector(5 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_7 = '1' then
               level6_c7 <= level6_c6;
            end if;
            if ce_8 = '1' then
               count5_c8 <= count5_c7;
               level5_c8 <= level5_c7;
               count4_c8 <= count4_c7;
            end if;
            if ce_9 = '1' then
               count5_c9 <= count5_c8;
               count4_c9 <= count4_c8;
               count3_c9 <= count3_c8;
               level3_c9 <= level3_c8;
               count2_c9 <= count2_c8;
            end if;
            if ce_10 = '1' then
               count5_c10 <= count5_c9;
               count4_c10 <= count4_c9;
               count3_c10 <= count3_c9;
               count2_c10 <= count2_c9;
               count1_c10 <= count1_c9;
               level1_c10 <= level1_c9;
            end if;
         end if;
      end process;
   level6_c6 <= X ;
   count5_c7<= '1' when level6_c7(56 downto 25) = (56 downto 25=>'0') else '0';
   level5_c7<= level6_c7(56 downto 0) when count5_c7='0' else level6_c7(24 downto 0) & (31 downto 0 => '0');

   count4_c7<= '1' when level5_c7(56 downto 41) = (56 downto 41=>'0') else '0';
   level4_c8<= level5_c8(56 downto 0) when count4_c8='0' else level5_c8(40 downto 0) & (15 downto 0 => '0');

   count3_c8<= '1' when level4_c8(56 downto 49) = (56 downto 49=>'0') else '0';
   level3_c8<= level4_c8(56 downto 0) when count3_c8='0' else level4_c8(48 downto 0) & (7 downto 0 => '0');

   count2_c8<= '1' when level3_c8(56 downto 53) = (56 downto 53=>'0') else '0';
   level2_c9<= level3_c9(56 downto 0) when count2_c9='0' else level3_c9(52 downto 0) & (3 downto 0 => '0');

   count1_c9<= '1' when level2_c9(56 downto 55) = (56 downto 55=>'0') else '0';
   level1_c9<= level2_c9(56 downto 0) when count1_c9='0' else level2_c9(54 downto 0) & (1 downto 0 => '0');

   count0_c10<= '1' when level1_c10(56 downto 56) = (56 downto 56=>'0') else '0';
   level0_c10<= level1_c10(56 downto 0) when count0_c10='0' else level1_c10(55 downto 0) & (0 downto 0 => '0');

   R <= level0_c10;
   sCount_c10 <= count5_c10 & count4_c10 & count3_c10 & count2_c10 & count1_c10 & count0_c10;
   Count <= sCount_c10;
end architecture;

--------------------------------------------------------------------------------
--                         IntAdder_66_Freq500_uid11
-- VHDL generated for Kintex7 @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 11 cycles
-- Clock period (ns): 2
-- Target frequency (MHz): 500
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_66_Freq500_uid11 is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11 : in std_logic;
          X : in  std_logic_vector(65 downto 0);
          Y : in  std_logic_vector(65 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(65 downto 0)   );
end entity;

architecture arch of IntAdder_66_Freq500_uid11 is
signal Cin_1_c10, Cin_1_c11 :  std_logic;
signal X_1_c10, X_1_c11 :  std_logic_vector(66 downto 0);
signal Y_1_c0, Y_1_c1, Y_1_c2, Y_1_c3, Y_1_c4, Y_1_c5, Y_1_c6, Y_1_c7, Y_1_c8, Y_1_c9, Y_1_c10, Y_1_c11 :  std_logic_vector(66 downto 0);
signal S_1_c11 :  std_logic_vector(66 downto 0);
signal R_1_c11 :  std_logic_vector(65 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               Y_1_c1 <= Y_1_c0;
            end if;
            if ce_2 = '1' then
               Y_1_c2 <= Y_1_c1;
            end if;
            if ce_3 = '1' then
               Y_1_c3 <= Y_1_c2;
            end if;
            if ce_4 = '1' then
               Y_1_c4 <= Y_1_c3;
            end if;
            if ce_5 = '1' then
               Y_1_c5 <= Y_1_c4;
            end if;
            if ce_6 = '1' then
               Y_1_c6 <= Y_1_c5;
            end if;
            if ce_7 = '1' then
               Y_1_c7 <= Y_1_c6;
            end if;
            if ce_8 = '1' then
               Y_1_c8 <= Y_1_c7;
            end if;
            if ce_9 = '1' then
               Y_1_c9 <= Y_1_c8;
            end if;
            if ce_10 = '1' then
               Y_1_c10 <= Y_1_c9;
            end if;
            if ce_11 = '1' then
               Cin_1_c11 <= Cin_1_c10;
               X_1_c11 <= X_1_c10;
               Y_1_c11 <= Y_1_c10;
            end if;
         end if;
      end process;
   Cin_1_c10 <= Cin;
   X_1_c10 <= '0' & X(65 downto 0);
   Y_1_c0 <= '0' & Y(65 downto 0);
   S_1_c11 <= X_1_c11 + Y_1_c11 + Cin_1_c11;
   R_1_c11 <= S_1_c11(65 downto 0);
   R <= R_1_c11 ;
end architecture;

--------------------------------------------------------------------------------
--                             FloatingPointAdder
--                         (FPAdd_11_52_Freq500_uid2)
-- VHDL generated for Kintex7 @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2010-2017)
--------------------------------------------------------------------------------
-- Pipeline depth: 12 cycles
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

entity FloatingPointAdder is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12 : in std_logic;
          X : in  std_logic_vector(11+52+2 downto 0);
          Y : in  std_logic_vector(11+52+2 downto 0);
          R : out  std_logic_vector(11+52+2 downto 0)   );
end entity;

architecture arch of FloatingPointAdder is
   component RightShifterSticky53_by_max_55_Freq500_uid4 is
      port ( clk, ce_2, ce_3, ce_4, ce_5 : in std_logic;
             X : in  std_logic_vector(52 downto 0);
             S : in  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(54 downto 0);
             Sticky : out  std_logic   );
   end component;

   component IntAdder_56_Freq500_uid6 is
      port ( clk, ce_2, ce_3, ce_4, ce_5, ce_6 : in std_logic;
             X : in  std_logic_vector(55 downto 0);
             Y : in  std_logic_vector(55 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(55 downto 0)   );
   end component;

   component Normalizer_Z_57_57_57_Freq500_uid8 is
      port ( clk, ce_7, ce_8, ce_9, ce_10 : in std_logic;
             X : in  std_logic_vector(56 downto 0);
             Count : out  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(56 downto 0)   );
   end component;

   component IntAdder_66_Freq500_uid11 is
      port ( clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11 : in std_logic;
             X : in  std_logic_vector(65 downto 0);
             Y : in  std_logic_vector(65 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(65 downto 0)   );
   end component;

signal excExpFracX_c0 :  std_logic_vector(64 downto 0);
signal excExpFracY_c0 :  std_logic_vector(64 downto 0);
signal swap_c0, swap_c1 :  std_logic;
signal eXmeY_c0, eXmeY_c1 :  std_logic_vector(10 downto 0);
signal eYmeX_c0, eYmeX_c1 :  std_logic_vector(10 downto 0);
signal expDiff_c1 :  std_logic_vector(10 downto 0);
signal newX_c1 :  std_logic_vector(65 downto 0);
signal newY_c1 :  std_logic_vector(65 downto 0);
signal expX_c1 :  std_logic_vector(10 downto 0);
signal excX_c1 :  std_logic_vector(1 downto 0);
signal excY_c1 :  std_logic_vector(1 downto 0);
signal signX_c1 :  std_logic;
signal signY_c1 :  std_logic;
signal EffSub_c1, EffSub_c2, EffSub_c3, EffSub_c4, EffSub_c5, EffSub_c6, EffSub_c7, EffSub_c8, EffSub_c9, EffSub_c10, EffSub_c11, EffSub_c12 :  std_logic;
signal sXsYExnXY_c1 :  std_logic_vector(5 downto 0);
signal sdExnXY_c1 :  std_logic_vector(3 downto 0);
signal fracY_c1 :  std_logic_vector(52 downto 0);
signal excRt_c1, excRt_c2, excRt_c3, excRt_c4, excRt_c5, excRt_c6, excRt_c7, excRt_c8, excRt_c9, excRt_c10, excRt_c11, excRt_c12 :  std_logic_vector(1 downto 0);
signal signR_c1, signR_c2, signR_c3, signR_c4, signR_c5, signR_c6, signR_c7, signR_c8, signR_c9, signR_c10 :  std_logic;
signal shiftedOut_c1 :  std_logic;
signal shiftVal_c1 :  std_logic_vector(5 downto 0);
signal shiftedFracY_c2 :  std_logic_vector(54 downto 0);
signal sticky_c5, sticky_c6 :  std_logic;
signal fracYpad_c2 :  std_logic_vector(55 downto 0);
signal EffSubVector_c1, EffSubVector_c2 :  std_logic_vector(55 downto 0);
signal fracYpadXorOp_c2 :  std_logic_vector(55 downto 0);
signal fracXpad_c1 :  std_logic_vector(55 downto 0);
signal cInSigAdd_c5 :  std_logic;
signal fracAddResult_c6 :  std_logic_vector(55 downto 0);
signal fracSticky_c6 :  std_logic_vector(56 downto 0);
signal nZerosNew_c10 :  std_logic_vector(5 downto 0);
signal shiftedFrac_c10 :  std_logic_vector(56 downto 0);
signal extendedExpInc_c1, extendedExpInc_c2, extendedExpInc_c3, extendedExpInc_c4, extendedExpInc_c5, extendedExpInc_c6, extendedExpInc_c7, extendedExpInc_c8, extendedExpInc_c9, extendedExpInc_c10 :  std_logic_vector(11 downto 0);
signal updatedExp_c10 :  std_logic_vector(12 downto 0);
signal eqdiffsign_c10, eqdiffsign_c11, eqdiffsign_c12 :  std_logic;
signal expFrac_c10 :  std_logic_vector(65 downto 0);
signal stk_c10 :  std_logic;
signal rnd_c10 :  std_logic;
signal lsb_c10 :  std_logic;
signal needToRound_c10 :  std_logic;
signal RoundedExpFrac_c11 :  std_logic_vector(65 downto 0);
signal upExc_c11 :  std_logic_vector(1 downto 0);
signal fracR_c11, fracR_c12 :  std_logic_vector(51 downto 0);
signal expR_c11, expR_c12 :  std_logic_vector(10 downto 0);
signal exExpExc_c11, exExpExc_c12 :  std_logic_vector(3 downto 0);
signal excRt2_c12 :  std_logic_vector(1 downto 0);
signal excR_c12 :  std_logic_vector(1 downto 0);
signal signR2_c10, signR2_c11, signR2_c12 :  std_logic;
signal computedR_c12 :  std_logic_vector(65 downto 0);
signal X_c1 :  std_logic_vector(11+52+2 downto 0);
signal Y_c1 :  std_logic_vector(11+52+2 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               swap_c1 <= swap_c0;
               eXmeY_c1 <= eXmeY_c0;
               eYmeX_c1 <= eYmeX_c0;
               X_c1 <= X;
               Y_c1 <= Y;
            end if;
            if ce_2 = '1' then
               EffSub_c2 <= EffSub_c1;
               excRt_c2 <= excRt_c1;
               signR_c2 <= signR_c1;
               EffSubVector_c2 <= EffSubVector_c1;
               extendedExpInc_c2 <= extendedExpInc_c1;
            end if;
            if ce_3 = '1' then
               EffSub_c3 <= EffSub_c2;
               excRt_c3 <= excRt_c2;
               signR_c3 <= signR_c2;
               extendedExpInc_c3 <= extendedExpInc_c2;
            end if;
            if ce_4 = '1' then
               EffSub_c4 <= EffSub_c3;
               excRt_c4 <= excRt_c3;
               signR_c4 <= signR_c3;
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
               sticky_c6 <= sticky_c5;
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
               extendedExpInc_c10 <= extendedExpInc_c9;
            end if;
            if ce_11 = '1' then
               EffSub_c11 <= EffSub_c10;
               excRt_c11 <= excRt_c10;
               eqdiffsign_c11 <= eqdiffsign_c10;
               signR2_c11 <= signR2_c10;
            end if;
            if ce_12 = '1' then
               EffSub_c12 <= EffSub_c11;
               excRt_c12 <= excRt_c11;
               eqdiffsign_c12 <= eqdiffsign_c11;
               fracR_c12 <= fracR_c11;
               expR_c12 <= expR_c11;
               exExpExc_c12 <= exExpExc_c11;
               signR2_c12 <= signR2_c11;
            end if;
         end if;
      end process;
   excExpFracX_c0 <= X(65 downto 64) & X(62 downto 0);
   excExpFracY_c0 <= Y(65 downto 64) & Y(62 downto 0);
   swap_c0 <= '1' when excExpFracX_c0 < excExpFracY_c0 else '0';
   -- exponent difference
   eXmeY_c0 <= (X(62 downto 52)) - (Y(62 downto 52));
   eYmeX_c0 <= (Y(62 downto 52)) - (X(62 downto 52));
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
   EffSub_c1 <= signX_c1 xor signY_c1;
   sXsYExnXY_c1 <= signX_c1 & signY_c1 & excX_c1 & excY_c1;
   sdExnXY_c1 <= excX_c1 & excY_c1;
   fracY_c1 <= "00000000000000000000000000000000000000000000000000000" when excY_c1="00" else ('1' & newY_c1(51 downto 0));
   -- Exception management logic
   with sXsYExnXY_c1  select  
   excRt_c1 <= "00" when "000000"|"010000"|"100000"|"110000",
      "01" when "000101"|"010101"|"100101"|"110101"|"000100"|"010100"|"100100"|"110100"|"000001"|"010001"|"100001"|"110001",
      "10" when "111010"|"001010"|"001000"|"011000"|"101000"|"111000"|"000010"|"010010"|"100010"|"110010"|"001001"|"011001"|"101001"|"111001"|"000110"|"010110"|"100110"|"110110", 
      "11" when others;
   signR_c1<= '0' when (sXsYExnXY_c1="100000" or sXsYExnXY_c1="010000") else signX_c1;
   shiftedOut_c1 <= '1' when (expDiff_c1 > 54) else '0';
   shiftVal_c1 <= expDiff_c1(5 downto 0) when shiftedOut_c1='0' else CONV_STD_LOGIC_VECTOR(55,6);
   RightShifterComponent: RightShifterSticky53_by_max_55_Freq500_uid4
      port map ( clk  => clk,
                 ce_2 => ce_2,
                 ce_3=> ce_3,
                 ce_4=> ce_4,
                 ce_5=> ce_5,
                 S => shiftVal_c1,
                 X => fracY_c1,
                 R => shiftedFracY_c2,
                 Sticky => sticky_c5);
   fracYpad_c2 <= "0" & shiftedFracY_c2;
   EffSubVector_c1 <= (55 downto 0 => EffSub_c1);
   fracYpadXorOp_c2 <= fracYpad_c2 xor EffSubVector_c2;
   fracXpad_c1 <= "01" & (newX_c1(51 downto 0)) & "00";
   cInSigAdd_c5 <= EffSub_c5 and not sticky_c5; -- if we subtract and the sticky was one, some of the negated sticky bits would have absorbed this carry 
   fracAdder: IntAdder_56_Freq500_uid6
      port map ( clk  => clk,
                 ce_2 => ce_2,
                 ce_3=> ce_3,
                 ce_4=> ce_4,
                 ce_5=> ce_5,
                 ce_6=> ce_6,
                 Cin => cInSigAdd_c5,
                 X => fracXpad_c1,
                 Y => fracYpadXorOp_c2,
                 R => fracAddResult_c6);
   fracSticky_c6<= fracAddResult_c6 & sticky_c6; 
   LZCAndShifter: Normalizer_Z_57_57_57_Freq500_uid8
      port map ( clk  => clk,
                 ce_7 => ce_7,
                 ce_8=> ce_8,
                 ce_9=> ce_9,
                 ce_10=> ce_10,
                 X => fracSticky_c6,
                 Count => nZerosNew_c10,
                 R => shiftedFrac_c10);
   extendedExpInc_c1<= ("0" & expX_c1) + '1';
   updatedExp_c10 <= ("0" &extendedExpInc_c10) - ("0000000" & nZerosNew_c10);
   eqdiffsign_c10 <= '1' when nZerosNew_c10="111111" else '0';
   expFrac_c10<= updatedExp_c10 & shiftedFrac_c10(55 downto 3);
   stk_c10<= shiftedFrac_c10(2) or shiftedFrac_c10(1) or shiftedFrac_c10(0);
   rnd_c10<= shiftedFrac_c10(3);
   lsb_c10<= shiftedFrac_c10(4);
   needToRound_c10<= '1' when (rnd_c10='1' and stk_c10='1') or (rnd_c10='1' and stk_c10='0' and lsb_c10='1')
  else '0';
   roundingAdder: IntAdder_66_Freq500_uid11
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
                 Cin => needToRound_c10,
                 X => expFrac_c10,
                 Y => "000000000000000000000000000000000000000000000000000000000000000000",
                 R => RoundedExpFrac_c11);
   -- possible update to exception bits
   upExc_c11 <= RoundedExpFrac_c11(65 downto 64);
   fracR_c11 <= RoundedExpFrac_c11(52 downto 1);
   expR_c11 <= RoundedExpFrac_c11(63 downto 53);
   exExpExc_c11 <= upExc_c11 & excRt_c11;
   with exExpExc_c12  select  
   excRt2_c12<= "00" when "0000"|"0100"|"1000"|"1100"|"1001"|"1101",
      "01" when "0001",
      "10" when "0010"|"0110"|"1010"|"1110"|"0101",
      "11" when others;
   excR_c12 <= "00" when (eqdiffsign_c12='1' and EffSub_c12='1'  and not(excRt_c12="11")) else excRt2_c12;
   signR2_c10 <= '0' when (eqdiffsign_c10='1' and EffSub_c10='1') else signR_c10;
   computedR_c12 <= excR_c12 & signR2_c12 & expR_c12 & fracR_c12;
   R <= computedR_c12;
end architecture;



