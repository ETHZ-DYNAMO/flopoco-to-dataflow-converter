--------------------------------------------------------------------------------
--                RightShifterSticky24_by_max_26_Freq300_uid4
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2008-2011), Florent de Dinechin (2008-2019)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X S
-- Output signals: R Sticky

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifterSticky24_by_max_26_Freq300_uid4 is
    port (clk, ce_1, ce_2 : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          S : in  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(25 downto 0);
          Sticky : out  std_logic   );
end entity;

architecture arch of RightShifterSticky24_by_max_26_Freq300_uid4 is
signal ps_c0, ps_c1, ps_c2 :  std_logic_vector(4 downto 0);
signal Xpadded_c0 :  std_logic_vector(25 downto 0);
signal level5_c0, level5_c1 :  std_logic_vector(25 downto 0);
signal stk4_c1 :  std_logic;
signal level4_c0, level4_c1 :  std_logic_vector(25 downto 0);
signal stk3_c1 :  std_logic;
signal level3_c1 :  std_logic_vector(25 downto 0);
signal stk2_c1, stk2_c2 :  std_logic;
signal level2_c1, level2_c2 :  std_logic_vector(25 downto 0);
signal stk1_c2 :  std_logic;
signal level1_c1, level1_c2 :  std_logic_vector(25 downto 0);
signal stk0_c2 :  std_logic;
signal level0_c1 :  std_logic_vector(25 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               ps_c1 <= ps_c0;
               level5_c1 <= level5_c0;
               level4_c1 <= level4_c0;
            end if;
            if ce_2 = '1' then
               ps_c2 <= ps_c1;
               stk2_c2 <= stk2_c1;
               level2_c2 <= level2_c1;
               level1_c2 <= level1_c1;
            end if;
         end if;
      end process;
   ps_c0<= S;
   Xpadded_c0 <= X&(1 downto 0 => '0');
   level5_c0<= Xpadded_c0;
   stk4_c1 <= '1' when (level5_c1(15 downto 0)/="0000000000000000" and ps_c1(4)='1')   else '0';
   level4_c0 <=  level5_c0 when  ps_c0(4)='0'    else (15 downto 0 => '0') & level5_c0(25 downto 16);
   stk3_c1 <= '1' when (level4_c1(7 downto 0)/="00000000" and ps_c1(3)='1') or stk4_c1 ='1'   else '0';
   level3_c1 <=  level4_c1 when  ps_c1(3)='0'    else (7 downto 0 => '0') & level4_c1(25 downto 8);
   stk2_c1 <= '1' when (level3_c1(3 downto 0)/="0000" and ps_c1(2)='1') or stk3_c1 ='1'   else '0';
   level2_c1 <=  level3_c1 when  ps_c1(2)='0'    else (3 downto 0 => '0') & level3_c1(25 downto 4);
   stk1_c2 <= '1' when (level2_c2(1 downto 0)/="00" and ps_c2(1)='1') or stk2_c2 ='1'   else '0';
   level1_c1 <=  level2_c1 when  ps_c1(1)='0'    else (1 downto 0 => '0') & level2_c1(25 downto 2);
   stk0_c2 <= '1' when (level1_c2(0 downto 0)/="0" and ps_c2(0)='1') or stk1_c2 ='1'   else '0';
   level0_c1 <=  level1_c1 when  ps_c1(0)='0'    else (0 downto 0 => '0') & level1_c1(25 downto 1);
   R <= level0_c1;
   Sticky <= stk0_c2;
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_27_Freq300_uid6
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_27_Freq300_uid6 is
    port (clk, ce_1, ce_2, ce_3 : in std_logic;
          X : in  std_logic_vector(26 downto 0);
          Y : in  std_logic_vector(26 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of IntAdder_27_Freq300_uid6 is
signal Cin_1_c2, Cin_1_c3 :  std_logic;
signal X_1_c0, X_1_c1, X_1_c2, X_1_c3 :  std_logic_vector(27 downto 0);
signal Y_1_c1, Y_1_c2, Y_1_c3 :  std_logic_vector(27 downto 0);
signal S_1_c3 :  std_logic_vector(27 downto 0);
signal R_1_c3 :  std_logic_vector(26 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               X_1_c1 <= X_1_c0;
            end if;
            if ce_2 = '1' then
               X_1_c2 <= X_1_c1;
               Y_1_c2 <= Y_1_c1;
            end if;
            if ce_3 = '1' then
               Cin_1_c3 <= Cin_1_c2;
               X_1_c3 <= X_1_c2;
               Y_1_c3 <= Y_1_c2;
            end if;
         end if;
      end process;
   Cin_1_c2 <= Cin;
   X_1_c0 <= '0' & X(26 downto 0);
   Y_1_c1 <= '0' & Y(26 downto 0);
   S_1_c3 <= X_1_c3 + Y_1_c3 + Cin_1_c3;
   R_1_c3 <= S_1_c3(26 downto 0);
   R <= R_1_c3 ;
end architecture;

--------------------------------------------------------------------------------
--                     Normalizer_Z_28_28_28_Freq300_uid8
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, (2007-2020)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X
-- Output signals: Count R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Normalizer_Z_28_28_28_Freq300_uid8 is
    port (clk, ce_4, ce_5 : in std_logic;
          X : in  std_logic_vector(27 downto 0);
          Count : out  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(27 downto 0)   );
end entity;

architecture arch of Normalizer_Z_28_28_28_Freq300_uid8 is
signal level5_c3 :  std_logic_vector(27 downto 0);
signal count4_c3, count4_c4 :  std_logic;
signal level4_c3, level4_c4 :  std_logic_vector(27 downto 0);
signal count3_c3, count3_c4 :  std_logic;
signal level3_c4 :  std_logic_vector(27 downto 0);
signal count2_c4 :  std_logic;
signal level2_c4 :  std_logic_vector(27 downto 0);
signal count1_c4 :  std_logic;
signal level1_c4, level1_c5 :  std_logic_vector(27 downto 0);
signal count0_c4, count0_c5 :  std_logic;
signal level0_c5 :  std_logic_vector(27 downto 0);
signal sCount_c4 :  std_logic_vector(4 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_4 = '1' then
               count4_c4 <= count4_c3;
               level4_c4 <= level4_c3;
               count3_c4 <= count3_c3;
            end if;
            if ce_5 = '1' then
               level1_c5 <= level1_c4;
               count0_c5 <= count0_c4;
            end if;
         end if;
      end process;
   level5_c3 <= X ;
   count4_c3<= '1' when level5_c3(27 downto 12) = (27 downto 12=>'0') else '0';
   level4_c3<= level5_c3(27 downto 0) when count4_c3='0' else level5_c3(11 downto 0) & (15 downto 0 => '0');

   count3_c3<= '1' when level4_c3(27 downto 20) = (27 downto 20=>'0') else '0';
   level3_c4<= level4_c4(27 downto 0) when count3_c4='0' else level4_c4(19 downto 0) & (7 downto 0 => '0');

   count2_c4<= '1' when level3_c4(27 downto 24) = (27 downto 24=>'0') else '0';
   level2_c4<= level3_c4(27 downto 0) when count2_c4='0' else level3_c4(23 downto 0) & (3 downto 0 => '0');

   count1_c4<= '1' when level2_c4(27 downto 26) = (27 downto 26=>'0') else '0';
   level1_c4<= level2_c4(27 downto 0) when count1_c4='0' else level2_c4(25 downto 0) & (1 downto 0 => '0');

   count0_c4<= '1' when level1_c4(27 downto 27) = (27 downto 27=>'0') else '0';
   level0_c5<= level1_c5(27 downto 0) when count0_c5='0' else level1_c5(26 downto 0) & (0 downto 0 => '0');

   R <= level0_c5;
   sCount_c4 <= count4_c4 & count3_c4 & count2_c4 & count1_c4 & count0_c4;
   Count <= sCount_c4;
end architecture;

--------------------------------------------------------------------------------
--                         IntAdder_34_Freq300_uid11
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 5 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_34_Freq300_uid11 is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5 : in std_logic;
          X : in  std_logic_vector(33 downto 0);
          Y : in  std_logic_vector(33 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(33 downto 0)   );
end entity;

architecture arch of IntAdder_34_Freq300_uid11 is
signal Rtmp_c5 :  std_logic_vector(33 downto 0);
signal Y_c1, Y_c2, Y_c3, Y_c4, Y_c5 :  std_logic_vector(33 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               Y_c1 <= Y;
            end if;
            if ce_2 = '1' then
               Y_c2 <= Y_c1;
            end if;
            if ce_3 = '1' then
               Y_c3 <= Y_c2;
            end if;
            if ce_4 = '1' then
               Y_c4 <= Y_c3;
            end if;
            if ce_5 = '1' then
               Y_c5 <= Y_c4;
            end if;
         end if;
      end process;
   Rtmp_c5 <= X + Y_c5 + Cin;
   R <= Rtmp_c5;
end architecture;

--------------------------------------------------------------------------------
--                             FloatingPointAdder
--                         (FPAdd_8_23_Freq300_uid2)
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2010-2017)
--------------------------------------------------------------------------------
-- Pipeline depth: 6 cycles
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

entity FloatingPointAdder is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6 : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of FloatingPointAdder is
   component RightShifterSticky24_by_max_26_Freq300_uid4 is
      port ( clk, ce_1, ce_2 : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             S : in  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(25 downto 0);
             Sticky : out  std_logic   );
   end component;

   component IntAdder_27_Freq300_uid6 is
      port ( clk, ce_1, ce_2, ce_3 : in std_logic;
             X : in  std_logic_vector(26 downto 0);
             Y : in  std_logic_vector(26 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component Normalizer_Z_28_28_28_Freq300_uid8 is
      port ( clk, ce_4, ce_5 : in std_logic;
             X : in  std_logic_vector(27 downto 0);
             Count : out  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(27 downto 0)   );
   end component;

   component IntAdder_34_Freq300_uid11 is
      port ( clk, ce_1, ce_2, ce_3, ce_4, ce_5 : in std_logic;
             X : in  std_logic_vector(33 downto 0);
             Y : in  std_logic_vector(33 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(33 downto 0)   );
   end component;

signal excExpFracX_c0 :  std_logic_vector(32 downto 0);
signal excExpFracY_c0 :  std_logic_vector(32 downto 0);
signal swap_c0 :  std_logic;
signal eXmeY_c0 :  std_logic_vector(7 downto 0);
signal eYmeX_c0 :  std_logic_vector(7 downto 0);
signal expDiff_c0 :  std_logic_vector(7 downto 0);
signal newX_c0 :  std_logic_vector(33 downto 0);
signal newY_c0 :  std_logic_vector(33 downto 0);
signal expX_c0 :  std_logic_vector(7 downto 0);
signal excX_c0 :  std_logic_vector(1 downto 0);
signal excY_c0 :  std_logic_vector(1 downto 0);
signal signX_c0 :  std_logic;
signal signY_c0 :  std_logic;
signal EffSub_c0, EffSub_c1, EffSub_c2, EffSub_c3, EffSub_c4, EffSub_c5, EffSub_c6 :  std_logic;
signal sXsYExnXY_c0 :  std_logic_vector(5 downto 0);
signal sdExnXY_c0 :  std_logic_vector(3 downto 0);
signal fracY_c0 :  std_logic_vector(23 downto 0);
signal excRt_c0, excRt_c1, excRt_c2, excRt_c3, excRt_c4, excRt_c5, excRt_c6 :  std_logic_vector(1 downto 0);
signal signR_c0, signR_c1, signR_c2, signR_c3, signR_c4, signR_c5 :  std_logic;
signal shiftedOut_c0 :  std_logic;
signal shiftVal_c0 :  std_logic_vector(4 downto 0);
signal shiftedFracY_c1 :  std_logic_vector(25 downto 0);
signal sticky_c2, sticky_c3 :  std_logic;
signal fracYpad_c1 :  std_logic_vector(26 downto 0);
signal EffSubVector_c0, EffSubVector_c1 :  std_logic_vector(26 downto 0);
signal fracYpadXorOp_c1 :  std_logic_vector(26 downto 0);
signal fracXpad_c0 :  std_logic_vector(26 downto 0);
signal cInSigAdd_c2 :  std_logic;
signal fracAddResult_c3 :  std_logic_vector(26 downto 0);
signal fracSticky_c3 :  std_logic_vector(27 downto 0);
signal nZerosNew_c4, nZerosNew_c5 :  std_logic_vector(4 downto 0);
signal shiftedFrac_c5 :  std_logic_vector(27 downto 0);
signal extendedExpInc_c0, extendedExpInc_c1, extendedExpInc_c2, extendedExpInc_c3, extendedExpInc_c4, extendedExpInc_c5 :  std_logic_vector(8 downto 0);
signal updatedExp_c5 :  std_logic_vector(9 downto 0);
signal eqdiffsign_c4, eqdiffsign_c5, eqdiffsign_c6 :  std_logic;
signal expFrac_c5 :  std_logic_vector(33 downto 0);
signal stk_c5 :  std_logic;
signal rnd_c5 :  std_logic;
signal lsb_c5 :  std_logic;
signal needToRound_c5 :  std_logic;
signal RoundedExpFrac_c5 :  std_logic_vector(33 downto 0);
signal upExc_c5 :  std_logic_vector(1 downto 0);
signal fracR_c5, fracR_c6 :  std_logic_vector(22 downto 0);
signal expR_c5, expR_c6 :  std_logic_vector(7 downto 0);
signal exExpExc_c5 :  std_logic_vector(3 downto 0);
signal excRt2_c5, excRt2_c6 :  std_logic_vector(1 downto 0);
signal excR_c6 :  std_logic_vector(1 downto 0);
signal signR2_c5, signR2_c6 :  std_logic;
signal computedR_c6 :  std_logic_vector(33 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               EffSub_c1 <= EffSub_c0;
               excRt_c1 <= excRt_c0;
               signR_c1 <= signR_c0;
               EffSubVector_c1 <= EffSubVector_c0;
               extendedExpInc_c1 <= extendedExpInc_c0;
            end if;
            if ce_2 = '1' then
               EffSub_c2 <= EffSub_c1;
               excRt_c2 <= excRt_c1;
               signR_c2 <= signR_c1;
               extendedExpInc_c2 <= extendedExpInc_c1;
            end if;
            if ce_3 = '1' then
               EffSub_c3 <= EffSub_c2;
               excRt_c3 <= excRt_c2;
               signR_c3 <= signR_c2;
               sticky_c3 <= sticky_c2;
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
               nZerosNew_c5 <= nZerosNew_c4;
               extendedExpInc_c5 <= extendedExpInc_c4;
               eqdiffsign_c5 <= eqdiffsign_c4;
            end if;
            if ce_6 = '1' then
               EffSub_c6 <= EffSub_c5;
               excRt_c6 <= excRt_c5;
               eqdiffsign_c6 <= eqdiffsign_c5;
               fracR_c6 <= fracR_c5;
               expR_c6 <= expR_c5;
               excRt2_c6 <= excRt2_c5;
               signR2_c6 <= signR2_c5;
            end if;
         end if;
      end process;
   excExpFracX_c0 <= X(33 downto 32) & X(30 downto 0);
   excExpFracY_c0 <= Y(33 downto 32) & Y(30 downto 0);
   swap_c0 <= '1' when excExpFracX_c0 < excExpFracY_c0 else '0';
   -- exponent difference
   eXmeY_c0 <= (X(30 downto 23)) - (Y(30 downto 23));
   eYmeX_c0 <= (Y(30 downto 23)) - (X(30 downto 23));
   expDiff_c0 <= eXmeY_c0 when swap_c0 = '0' else eYmeX_c0;
   -- input swap so that |X|>|Y|
   newX_c0 <= X when swap_c0 = '0' else Y;
   newY_c0 <= Y when swap_c0 = '0' else X;
   -- now we decompose the inputs into their sign, exponent, fraction
   expX_c0<= newX_c0(30 downto 23);
   excX_c0<= newX_c0(33 downto 32);
   excY_c0<= newY_c0(33 downto 32);
   signX_c0<= newX_c0(31);
   signY_c0<= newY_c0(31);
   EffSub_c0 <= signX_c0 xor signY_c0;
   sXsYExnXY_c0 <= signX_c0 & signY_c0 & excX_c0 & excY_c0;
   sdExnXY_c0 <= excX_c0 & excY_c0;
   fracY_c0 <= "000000000000000000000000" when excY_c0="00" else ('1' & newY_c0(22 downto 0));
   -- Exception management logic
   with sXsYExnXY_c0  select  
   excRt_c0 <= "00" when "000000"|"010000"|"100000"|"110000",
      "01" when "000101"|"010101"|"100101"|"110101"|"000100"|"010100"|"100100"|"110100"|"000001"|"010001"|"100001"|"110001",
      "10" when "111010"|"001010"|"001000"|"011000"|"101000"|"111000"|"000010"|"010010"|"100010"|"110010"|"001001"|"011001"|"101001"|"111001"|"000110"|"010110"|"100110"|"110110", 
      "11" when others;
   signR_c0<= '0' when (sXsYExnXY_c0="100000" or sXsYExnXY_c0="010000") else signX_c0;
   shiftedOut_c0 <= '1' when (expDiff_c0 > 25) else '0';
   shiftVal_c0 <= expDiff_c0(4 downto 0) when shiftedOut_c0='0' else CONV_STD_LOGIC_VECTOR(26,5);
   RightShifterComponent: RightShifterSticky24_by_max_26_Freq300_uid4
      port map ( clk  => clk,
                 ce_1 => ce_1,
                 ce_2=> ce_2,
                 S => shiftVal_c0,
                 X => fracY_c0,
                 R => shiftedFracY_c1,
                 Sticky => sticky_c2);
   fracYpad_c1 <= "0" & shiftedFracY_c1;
   EffSubVector_c0 <= (26 downto 0 => EffSub_c0);
   fracYpadXorOp_c1 <= fracYpad_c1 xor EffSubVector_c1;
   fracXpad_c0 <= "01" & (newX_c0(22 downto 0)) & "00";
   cInSigAdd_c2 <= EffSub_c2 and not sticky_c2; -- if we subtract and the sticky was one, some of the negated sticky bits would have absorbed this carry 
   fracAdder: IntAdder_27_Freq300_uid6
      port map ( clk  => clk,
                 ce_1 => ce_1,
                 ce_2=> ce_2,
                 ce_3=> ce_3,
                 Cin => cInSigAdd_c2,
                 X => fracXpad_c0,
                 Y => fracYpadXorOp_c1,
                 R => fracAddResult_c3);
   fracSticky_c3<= fracAddResult_c3 & sticky_c3; 
   LZCAndShifter: Normalizer_Z_28_28_28_Freq300_uid8
      port map ( clk  => clk,
                 ce_4 => ce_4,
                 ce_5=> ce_5,
                 X => fracSticky_c3,
                 Count => nZerosNew_c4,
                 R => shiftedFrac_c5);
   extendedExpInc_c0<= ("0" & expX_c0) + '1';
   updatedExp_c5 <= ("0" &extendedExpInc_c5) - ("00000" & nZerosNew_c5);
   eqdiffsign_c4 <= '1' when nZerosNew_c4="11111" else '0';
   expFrac_c5<= updatedExp_c5 & shiftedFrac_c5(26 downto 3);
   stk_c5<= shiftedFrac_c5(2) or shiftedFrac_c5(1) or shiftedFrac_c5(0);
   rnd_c5<= shiftedFrac_c5(3);
   lsb_c5<= shiftedFrac_c5(4);
   needToRound_c5<= '1' when (rnd_c5='1' and stk_c5='1') or (rnd_c5='1' and stk_c5='0' and lsb_c5='1')
  else '0';
   roundingAdder: IntAdder_34_Freq300_uid11
      port map ( clk  => clk,
                 ce_1 => ce_1,
                 ce_2=> ce_2,
                 ce_3=> ce_3,
                 ce_4=> ce_4,
                 ce_5=> ce_5,
                 Cin => needToRound_c5,
                 X => expFrac_c5,
                 Y => "0000000000000000000000000000000000",
                 R => RoundedExpFrac_c5);
   -- possible update to exception bits
   upExc_c5 <= RoundedExpFrac_c5(33 downto 32);
   fracR_c5 <= RoundedExpFrac_c5(23 downto 1);
   expR_c5 <= RoundedExpFrac_c5(31 downto 24);
   exExpExc_c5 <= upExc_c5 & excRt_c5;
   with exExpExc_c5  select  
   excRt2_c5<= "00" when "0000"|"0100"|"1000"|"1100"|"1001"|"1101",
      "01" when "0001",
      "10" when "0010"|"0110"|"1010"|"1110"|"0101",
      "11" when others;
   excR_c6 <= "00" when (eqdiffsign_c6='1' and EffSub_c6='1'  and not(excRt_c6="11")) else excRt2_c6;
   signR2_c5 <= '0' when (eqdiffsign_c5='1' and EffSub_c5='1') else signR_c5;
   computedR_c6 <= excR_c6 & signR2_c6 & expR_c6 & fracR_c6;
   R <= computedR_c6;
end architecture;



