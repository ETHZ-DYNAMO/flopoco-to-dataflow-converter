--------------------------------------------------------------------------------
--                RightShifterSticky53_by_max_55_Freq100_9_068000_uid4
-- VHDL generated for Kintex7 @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2008-2011), Florent de Dinechin (2008-2019)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 10
-- Target frequency (MHz): 100
-- Input signals: X S
-- Output signals: R Sticky

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifterSticky53_by_max_55_Freq100_9_068000_uid4 is
    port (clk : in std_logic;
          X : in  std_logic_vector(52 downto 0);
          S : in  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(54 downto 0);
          Sticky : out  std_logic   );
end entity;

architecture arch of RightShifterSticky53_by_max_55_Freq100_9_068000_uid4 is
signal ps_c0 :  std_logic_vector(5 downto 0);
signal Xpadded_c0 :  std_logic_vector(54 downto 0);
signal level6_c0 :  std_logic_vector(54 downto 0);
signal stk5_c0 :  std_logic;
signal level5_c0 :  std_logic_vector(54 downto 0);
signal stk4_c0 :  std_logic;
signal level4_c0 :  std_logic_vector(54 downto 0);
signal stk3_c0 :  std_logic;
signal level3_c0 :  std_logic_vector(54 downto 0);
signal stk2_c0 :  std_logic;
signal level2_c0 :  std_logic_vector(54 downto 0);
signal stk1_c0 :  std_logic;
signal level1_c0 :  std_logic_vector(54 downto 0);
signal stk0_c0 :  std_logic;
signal level0_c0 :  std_logic_vector(54 downto 0);
begin
   ps_c0<= S;
   Xpadded_c0 <= X&(1 downto 0 => '0');
   level6_c0<= Xpadded_c0;
   stk5_c0 <= '1' when (level6_c0(31 downto 0)/="00000000000000000000000000000000" and ps_c0(5)='1')   else '0';
   level5_c0 <=  level6_c0 when  ps_c0(5)='0'    else (31 downto 0 => '0') & level6_c0(54 downto 32);
   stk4_c0 <= '1' when (level5_c0(15 downto 0)/="0000000000000000" and ps_c0(4)='1') or stk5_c0 ='1'   else '0';
   level4_c0 <=  level5_c0 when  ps_c0(4)='0'    else (15 downto 0 => '0') & level5_c0(54 downto 16);
   stk3_c0 <= '1' when (level4_c0(7 downto 0)/="00000000" and ps_c0(3)='1') or stk4_c0 ='1'   else '0';
   level3_c0 <=  level4_c0 when  ps_c0(3)='0'    else (7 downto 0 => '0') & level4_c0(54 downto 8);
   stk2_c0 <= '1' when (level3_c0(3 downto 0)/="0000" and ps_c0(2)='1') or stk3_c0 ='1'   else '0';
   level2_c0 <=  level3_c0 when  ps_c0(2)='0'    else (3 downto 0 => '0') & level3_c0(54 downto 4);
   stk1_c0 <= '1' when (level2_c0(1 downto 0)/="00" and ps_c0(1)='1') or stk2_c0 ='1'   else '0';
   level1_c0 <=  level2_c0 when  ps_c0(1)='0'    else (1 downto 0 => '0') & level2_c0(54 downto 2);
   stk0_c0 <= '1' when (level1_c0(0 downto 0)/="0" and ps_c0(0)='1') or stk1_c0 ='1'   else '0';
   level0_c0 <=  level1_c0 when  ps_c0(0)='0'    else (0 downto 0 => '0') & level1_c0(54 downto 1);
   R <= level0_c0;
   Sticky <= stk0_c0;
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_56_Freq100_9_068000_uid6
-- VHDL generated for Kintex7 @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles
-- Clock period (ns): 10
-- Target frequency (MHz): 100
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_56_Freq100_9_068000_uid6 is
    port (clk, ce_1 : in std_logic;
          X : in  std_logic_vector(55 downto 0);
          Y : in  std_logic_vector(55 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(55 downto 0)   );
end entity;

architecture arch of IntAdder_56_Freq100_9_068000_uid6 is
signal Rtmp_c1 :  std_logic_vector(55 downto 0);
signal X_c1 :  std_logic_vector(55 downto 0);
signal Y_c1 :  std_logic_vector(55 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               X_c1 <= X;
               Y_c1 <= Y;
            end if;
         end if;
      end process;
   Rtmp_c1 <= X_c1 + Y_c1 + Cin;
   R <= Rtmp_c1;
end architecture;

--------------------------------------------------------------------------------
--                     Normalizer_Z_57_57_57_Freq100_9_068000_uid8
-- VHDL generated for Kintex7 @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, (2007-2020)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 10
-- Target frequency (MHz): 100
-- Input signals: X
-- Output signals: Count R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Normalizer_Z_57_57_57_Freq100_9_068000_uid8 is
    port (clk : in std_logic;
          X : in  std_logic_vector(56 downto 0);
          Count : out  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(56 downto 0)   );
end entity;

architecture arch of Normalizer_Z_57_57_57_Freq100_9_068000_uid8 is
signal level6_c1 :  std_logic_vector(56 downto 0);
signal count5_c1 :  std_logic;
signal level5_c1 :  std_logic_vector(56 downto 0);
signal count4_c1 :  std_logic;
signal level4_c1 :  std_logic_vector(56 downto 0);
signal count3_c1 :  std_logic;
signal level3_c1 :  std_logic_vector(56 downto 0);
signal count2_c1 :  std_logic;
signal level2_c1 :  std_logic_vector(56 downto 0);
signal count1_c1 :  std_logic;
signal level1_c1 :  std_logic_vector(56 downto 0);
signal count0_c1 :  std_logic;
signal level0_c1 :  std_logic_vector(56 downto 0);
signal sCount_c1 :  std_logic_vector(5 downto 0);
begin
   level6_c1 <= X ;
   count5_c1<= '1' when level6_c1(56 downto 25) = (56 downto 25=>'0') else '0';
   level5_c1<= level6_c1(56 downto 0) when count5_c1='0' else level6_c1(24 downto 0) & (31 downto 0 => '0');

   count4_c1<= '1' when level5_c1(56 downto 41) = (56 downto 41=>'0') else '0';
   level4_c1<= level5_c1(56 downto 0) when count4_c1='0' else level5_c1(40 downto 0) & (15 downto 0 => '0');

   count3_c1<= '1' when level4_c1(56 downto 49) = (56 downto 49=>'0') else '0';
   level3_c1<= level4_c1(56 downto 0) when count3_c1='0' else level4_c1(48 downto 0) & (7 downto 0 => '0');

   count2_c1<= '1' when level3_c1(56 downto 53) = (56 downto 53=>'0') else '0';
   level2_c1<= level3_c1(56 downto 0) when count2_c1='0' else level3_c1(52 downto 0) & (3 downto 0 => '0');

   count1_c1<= '1' when level2_c1(56 downto 55) = (56 downto 55=>'0') else '0';
   level1_c1<= level2_c1(56 downto 0) when count1_c1='0' else level2_c1(54 downto 0) & (1 downto 0 => '0');

   count0_c1<= '1' when level1_c1(56 downto 56) = (56 downto 56=>'0') else '0';
   level0_c1<= level1_c1(56 downto 0) when count0_c1='0' else level1_c1(55 downto 0) & (0 downto 0 => '0');

   R <= level0_c1;
   sCount_c1 <= count5_c1 & count4_c1 & count3_c1 & count2_c1 & count1_c1 & count0_c1;
   Count <= sCount_c1;
end architecture;

--------------------------------------------------------------------------------
--                         IntAdder_66_Freq100_9_068000_uid11
-- VHDL generated for Kintex7 @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
-- Clock period (ns): 10
-- Target frequency (MHz): 100
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_66_Freq100_9_068000_uid11 is
    port (clk, ce_1, ce_2 : in std_logic;
          X : in  std_logic_vector(65 downto 0);
          Y : in  std_logic_vector(65 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(65 downto 0)   );
end entity;

architecture arch of IntAdder_66_Freq100_9_068000_uid11 is
signal Cin_1_c1, Cin_1_c2 :  std_logic;
signal X_1_c1, X_1_c2 :  std_logic_vector(66 downto 0);
signal Y_1_c0, Y_1_c1, Y_1_c2 :  std_logic_vector(66 downto 0);
signal S_1_c2 :  std_logic_vector(66 downto 0);
signal R_1_c2 :  std_logic_vector(65 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               Y_1_c1 <= Y_1_c0;
            end if;
            if ce_2 = '1' then
               Cin_1_c2 <= Cin_1_c1;
               X_1_c2 <= X_1_c1;
               Y_1_c2 <= Y_1_c1;
            end if;
         end if;
      end process;
   Cin_1_c1 <= Cin;
   X_1_c1 <= '0' & X(65 downto 0);
   Y_1_c0 <= '0' & Y(65 downto 0);
   S_1_c2 <= X_1_c2 + Y_1_c2 + Cin_1_c2;
   R_1_c2 <= S_1_c2(65 downto 0);
   R <= R_1_c2 ;
end architecture;

--------------------------------------------------------------------------------
--                             FloatingPointAdder
--                         (FPAdd_11_52_Freq100_9_068000_uid2)
-- VHDL generated for Kintex7 @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2010-2017)
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

entity FloatingPointAdder_64_9_068000 is
    port (clk, ce_1, ce_2 : in std_logic;
          X : in  std_logic_vector(11+52+2 downto 0);
          Y : in  std_logic_vector(11+52+2 downto 0);
          R : out  std_logic_vector(11+52+2 downto 0)   );
end entity;

architecture arch of FloatingPointAdder_64_9_068000 is
   component RightShifterSticky53_by_max_55_Freq100_9_068000_uid4 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(52 downto 0);
             S : in  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(54 downto 0);
             Sticky : out  std_logic   );
   end component;

   component IntAdder_56_Freq100_9_068000_uid6 is
      port ( clk, ce_1 : in std_logic;
             X : in  std_logic_vector(55 downto 0);
             Y : in  std_logic_vector(55 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(55 downto 0)   );
   end component;

   component Normalizer_Z_57_57_57_Freq100_9_068000_uid8 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(56 downto 0);
             Count : out  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(56 downto 0)   );
   end component;

   component IntAdder_66_Freq100_9_068000_uid11 is
      port ( clk, ce_1, ce_2 : in std_logic;
             X : in  std_logic_vector(65 downto 0);
             Y : in  std_logic_vector(65 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(65 downto 0)   );
   end component;

signal excExpFracX_c0 :  std_logic_vector(64 downto 0);
signal excExpFracY_c0 :  std_logic_vector(64 downto 0);
signal swap_c0 :  std_logic;
signal eXmeY_c0 :  std_logic_vector(10 downto 0);
signal eYmeX_c0 :  std_logic_vector(10 downto 0);
signal expDiff_c0 :  std_logic_vector(10 downto 0);
signal newX_c0 :  std_logic_vector(65 downto 0);
signal newY_c0 :  std_logic_vector(65 downto 0);
signal expX_c0 :  std_logic_vector(10 downto 0);
signal excX_c0 :  std_logic_vector(1 downto 0);
signal excY_c0 :  std_logic_vector(1 downto 0);
signal signX_c0 :  std_logic;
signal signY_c0 :  std_logic;
signal EffSub_c0, EffSub_c1, EffSub_c2 :  std_logic;
signal sXsYExnXY_c0 :  std_logic_vector(5 downto 0);
signal sdExnXY_c0 :  std_logic_vector(3 downto 0);
signal fracY_c0 :  std_logic_vector(52 downto 0);
signal excRt_c0, excRt_c1, excRt_c2 :  std_logic_vector(1 downto 0);
signal signR_c0, signR_c1 :  std_logic;
signal shiftedOut_c0 :  std_logic;
signal shiftVal_c0 :  std_logic_vector(5 downto 0);
signal shiftedFracY_c0 :  std_logic_vector(54 downto 0);
signal sticky_c0, sticky_c1 :  std_logic;
signal fracYpad_c0 :  std_logic_vector(55 downto 0);
signal EffSubVector_c0 :  std_logic_vector(55 downto 0);
signal fracYpadXorOp_c0 :  std_logic_vector(55 downto 0);
signal fracXpad_c0 :  std_logic_vector(55 downto 0);
signal cInSigAdd_c1 :  std_logic;
signal fracAddResult_c1 :  std_logic_vector(55 downto 0);
signal fracSticky_c1 :  std_logic_vector(56 downto 0);
signal nZerosNew_c1 :  std_logic_vector(5 downto 0);
signal shiftedFrac_c1 :  std_logic_vector(56 downto 0);
signal extendedExpInc_c0, extendedExpInc_c1 :  std_logic_vector(11 downto 0);
signal updatedExp_c1 :  std_logic_vector(12 downto 0);
signal eqdiffsign_c1, eqdiffsign_c2 :  std_logic;
signal expFrac_c1 :  std_logic_vector(65 downto 0);
signal stk_c1 :  std_logic;
signal rnd_c1 :  std_logic;
signal lsb_c1 :  std_logic;
signal needToRound_c1 :  std_logic;
signal RoundedExpFrac_c2 :  std_logic_vector(65 downto 0);
signal upExc_c2 :  std_logic_vector(1 downto 0);
signal fracR_c2 :  std_logic_vector(51 downto 0);
signal expR_c2 :  std_logic_vector(10 downto 0);
signal exExpExc_c2 :  std_logic_vector(3 downto 0);
signal excRt2_c2 :  std_logic_vector(1 downto 0);
signal excR_c2 :  std_logic_vector(1 downto 0);
signal signR2_c1, signR2_c2 :  std_logic;
signal computedR_c2 :  std_logic_vector(65 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               EffSub_c1 <= EffSub_c0;
               excRt_c1 <= excRt_c0;
               signR_c1 <= signR_c0;
               sticky_c1 <= sticky_c0;
               extendedExpInc_c1 <= extendedExpInc_c0;
            end if;
            if ce_2 = '1' then
               EffSub_c2 <= EffSub_c1;
               excRt_c2 <= excRt_c1;
               eqdiffsign_c2 <= eqdiffsign_c1;
               signR2_c2 <= signR2_c1;
            end if;
         end if;
      end process;
   excExpFracX_c0 <= X(65 downto 64) & X(62 downto 0);
   excExpFracY_c0 <= Y(65 downto 64) & Y(62 downto 0);
   swap_c0 <= '1' when excExpFracX_c0 < excExpFracY_c0 else '0';
   -- exponent difference
   eXmeY_c0 <= (X(62 downto 52)) - (Y(62 downto 52));
   eYmeX_c0 <= (Y(62 downto 52)) - (X(62 downto 52));
   expDiff_c0 <= eXmeY_c0 when swap_c0 = '0' else eYmeX_c0;
   -- input swap so that |X|>|Y|
   newX_c0 <= X when swap_c0 = '0' else Y;
   newY_c0 <= Y when swap_c0 = '0' else X;
   -- now we decompose the inputs into their sign, exponent, fraction
   expX_c0<= newX_c0(62 downto 52);
   excX_c0<= newX_c0(65 downto 64);
   excY_c0<= newY_c0(65 downto 64);
   signX_c0<= newX_c0(63);
   signY_c0<= newY_c0(63);
   EffSub_c0 <= signX_c0 xor signY_c0;
   sXsYExnXY_c0 <= signX_c0 & signY_c0 & excX_c0 & excY_c0;
   sdExnXY_c0 <= excX_c0 & excY_c0;
   fracY_c0 <= "00000000000000000000000000000000000000000000000000000" when excY_c0="00" else ('1' & newY_c0(51 downto 0));
   -- Exception management logic
   with sXsYExnXY_c0  select  
   excRt_c0 <= "00" when "000000"|"010000"|"100000"|"110000",
      "01" when "000101"|"010101"|"100101"|"110101"|"000100"|"010100"|"100100"|"110100"|"000001"|"010001"|"100001"|"110001",
      "10" when "111010"|"001010"|"001000"|"011000"|"101000"|"111000"|"000010"|"010010"|"100010"|"110010"|"001001"|"011001"|"101001"|"111001"|"000110"|"010110"|"100110"|"110110", 
      "11" when others;
   signR_c0<= '0' when (sXsYExnXY_c0="100000" or sXsYExnXY_c0="010000") else signX_c0;
   shiftedOut_c0 <= '1' when (expDiff_c0 > 54) else '0';
   shiftVal_c0 <= expDiff_c0(5 downto 0) when shiftedOut_c0='0' else CONV_STD_LOGIC_VECTOR(55,6);
   RightShifterComponent: RightShifterSticky53_by_max_55_Freq100_9_068000_uid4
      port map ( clk  => clk,
                 S => shiftVal_c0,
                 X => fracY_c0,
                 R => shiftedFracY_c0,
                 Sticky => sticky_c0);
   fracYpad_c0 <= "0" & shiftedFracY_c0;
   EffSubVector_c0 <= (55 downto 0 => EffSub_c0);
   fracYpadXorOp_c0 <= fracYpad_c0 xor EffSubVector_c0;
   fracXpad_c0 <= "01" & (newX_c0(51 downto 0)) & "00";
   cInSigAdd_c1 <= EffSub_c1 and not sticky_c1; -- if we subtract and the sticky was one, some of the negated sticky bits would have absorbed this carry 
   fracAdder: IntAdder_56_Freq100_9_068000_uid6
      port map ( clk  => clk,
                 ce_1 => ce_1,
                 Cin => cInSigAdd_c1,
                 X => fracXpad_c0,
                 Y => fracYpadXorOp_c0,
                 R => fracAddResult_c1);
   fracSticky_c1<= fracAddResult_c1 & sticky_c1; 
   LZCAndShifter: Normalizer_Z_57_57_57_Freq100_9_068000_uid8
      port map ( clk  => clk,
                 X => fracSticky_c1,
                 Count => nZerosNew_c1,
                 R => shiftedFrac_c1);
   extendedExpInc_c0<= ("0" & expX_c0) + '1';
   updatedExp_c1 <= ("0" &extendedExpInc_c1) - ("0000000" & nZerosNew_c1);
   eqdiffsign_c1 <= '1' when nZerosNew_c1="111111" else '0';
   expFrac_c1<= updatedExp_c1 & shiftedFrac_c1(55 downto 3);
   stk_c1<= shiftedFrac_c1(2) or shiftedFrac_c1(1) or shiftedFrac_c1(0);
   rnd_c1<= shiftedFrac_c1(3);
   lsb_c1<= shiftedFrac_c1(4);
   needToRound_c1<= '1' when (rnd_c1='1' and stk_c1='1') or (rnd_c1='1' and stk_c1='0' and lsb_c1='1')
  else '0';
   roundingAdder: IntAdder_66_Freq100_9_068000_uid11
      port map ( clk  => clk,
                 ce_1 => ce_1,
                 ce_2=> ce_2,
                 Cin => needToRound_c1,
                 X => expFrac_c1,
                 Y => "000000000000000000000000000000000000000000000000000000000000000000",
                 R => RoundedExpFrac_c2);
   -- possible update to exception bits
   upExc_c2 <= RoundedExpFrac_c2(65 downto 64);
   fracR_c2 <= RoundedExpFrac_c2(52 downto 1);
   expR_c2 <= RoundedExpFrac_c2(63 downto 53);
   exExpExc_c2 <= upExc_c2 & excRt_c2;
   with exExpExc_c2  select  
   excRt2_c2<= "00" when "0000"|"0100"|"1000"|"1100"|"1001"|"1101",
      "01" when "0001",
      "10" when "0010"|"0110"|"1010"|"1110"|"0101",
      "11" when others;
   excR_c2 <= "00" when (eqdiffsign_c2='1' and EffSub_c2='1'  and not(excRt_c2="11")) else excRt2_c2;
   signR2_c1 <= '0' when (eqdiffsign_c1='1' and EffSub_c1='1') else signR_c1;
   computedR_c2 <= excR_c2 & signR2_c2 & expR_c2 & fracR_c2;
   R <= computedR_c2;
end architecture;




--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid15
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

entity MultTable_Freq800_2_034000_uid15 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid15 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid20
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

entity MultTable_Freq800_2_034000_uid20 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid20 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid27
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

entity MultTable_Freq800_2_034000_uid27 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid27 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid32
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

entity MultTable_Freq800_2_034000_uid32 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid32 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid39
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

entity MultTable_Freq800_2_034000_uid39 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid39 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid44
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

entity MultTable_Freq800_2_034000_uid44 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid44 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid51
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

entity MultTable_Freq800_2_034000_uid51 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid51 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid56
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

entity MultTable_Freq800_2_034000_uid56 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid56 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid63
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

entity MultTable_Freq800_2_034000_uid63 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid63 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid68
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

entity MultTable_Freq800_2_034000_uid68 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid68 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid75
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

entity MultTable_Freq800_2_034000_uid75 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid75 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid80
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

entity MultTable_Freq800_2_034000_uid80 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid80 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid87
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

entity MultTable_Freq800_2_034000_uid87 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid87 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid92
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

entity MultTable_Freq800_2_034000_uid92 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid92 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid99
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

entity MultTable_Freq800_2_034000_uid99 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid99 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid104
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

entity MultTable_Freq800_2_034000_uid104 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid104 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid111
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

entity MultTable_Freq800_2_034000_uid111 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid111 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid116
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

entity MultTable_Freq800_2_034000_uid116 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid116 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid123
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

entity MultTable_Freq800_2_034000_uid123 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid123 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid128
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

entity MultTable_Freq800_2_034000_uid128 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid128 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid135
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

entity MultTable_Freq800_2_034000_uid135 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid135 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid140
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

entity MultTable_Freq800_2_034000_uid140 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid140 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid147
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

entity MultTable_Freq800_2_034000_uid147 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid147 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq800_2_034000_uid152
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

entity MultTable_Freq800_2_034000_uid152 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq800_2_034000_uid152 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                       Compressor_23_3_Freq800_2_034000_uid156
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
-- Input signals: X1 X0
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_23_3_Freq800_2_034000_uid156 is
    port (X1 : in  std_logic_vector(1 downto 0);
          X0 : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_23_3_Freq800_2_034000_uid156 is
signal X :  std_logic_vector(4 downto 0);
signal R0 :  std_logic_vector(2 downto 0);
begin
   X <= X1 & X0 ;

   with X  select  R0 <= 
      "000" when "00000",
      "001" when "00001" | "00010" | "00100",
      "010" when "00011" | "00101" | "00110" | "01000" | "10000",
      "011" when "00111" | "01001" | "01010" | "01100" | "10001" | "10010" | "10100",
      "100" when "01011" | "01101" | "01110" | "10011" | "10101" | "10110" | "11000",
      "101" when "01111" | "10111" | "11001" | "11010" | "11100",
      "110" when "11011" | "11101" | "11110",
      "111" when "11111",
      "---" when others;
   R <= R0;
end architecture;

--------------------------------------------------------------------------------
--                       Compressor_3_2_Freq800_2_034000_uid160
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
-- Input signals: X0
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_3_2_Freq800_2_034000_uid160 is
    port (X0 : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of Compressor_3_2_Freq800_2_034000_uid160 is
signal X :  std_logic_vector(2 downto 0);
signal R0 :  std_logic_vector(1 downto 0);
begin
   X <= X0 ;

   with X  select  R0 <= 
      "00" when "000",
      "01" when "001" | "010" | "100",
      "10" when "011" | "101" | "110",
      "11" when "111",
      "--" when others;
   R <= R0;
end architecture;

--------------------------------------------------------------------------------
--                       Compressor_14_3_Freq800_2_034000_uid164
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
-- Input signals: X1 X0
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_14_3_Freq800_2_034000_uid164 is
    port (X1 : in  std_logic_vector(0 downto 0);
          X0 : in  std_logic_vector(3 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_14_3_Freq800_2_034000_uid164 is
signal X :  std_logic_vector(4 downto 0);
signal R0 :  std_logic_vector(2 downto 0);
begin
   X <= X1 & X0 ;

   with X  select  R0 <= 
      "000" when "00000",
      "001" when "00001" | "00010" | "00100" | "01000",
      "010" when "00011" | "00101" | "00110" | "01001" | "01010" | "01100" | "10000",
      "011" when "00111" | "01011" | "01101" | "01110" | "10001" | "10010" | "10100" | "11000",
      "100" when "01111" | "10011" | "10101" | "10110" | "11001" | "11010" | "11100",
      "101" when "10111" | "11011" | "11101" | "11110",
      "110" when "11111",
      "---" when others;
   R <= R0;
end architecture;

--------------------------------------------------------------------------------
--                       Compressor_6_3_Freq800_2_034000_uid170
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
-- Input signals: X0
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_6_3_Freq800_2_034000_uid170 is
    port (X0 : in  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_6_3_Freq800_2_034000_uid170 is
signal X :  std_logic_vector(5 downto 0);
signal R0 :  std_logic_vector(2 downto 0);
begin
   X <= X0 ;

   with X  select  R0 <= 
      "000" when "000000",
      "001" when "000001" | "000010" | "000100" | "001000" | "010000" | "100000",
      "010" when "000011" | "000101" | "000110" | "001001" | "001010" | "001100" | "010001" | "010010" | "010100" | "011000" | "100001" | "100010" | "100100" | "101000" | "110000",
      "011" when "000111" | "001011" | "001101" | "001110" | "010011" | "010101" | "010110" | "011001" | "011010" | "011100" | "100011" | "100101" | "100110" | "101001" | "101010" | "101100" | "110001" | "110010" | "110100" | "111000",
      "100" when "001111" | "010111" | "011011" | "011101" | "011110" | "100111" | "101011" | "101101" | "101110" | "110011" | "110101" | "110110" | "111001" | "111010" | "111100",
      "101" when "011111" | "101111" | "110111" | "111011" | "111101" | "111110",
      "110" when "111111",
      "---" when others;
   R <= R0;
end architecture;

--------------------------------------------------------------------------------
--                        DSPBlock_17x24_Freq800_2_034000_uid9
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
-- Input signals: X Y
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity DSPBlock_17x24_Freq800_2_034000_uid9 is
    port (clk, ce_1, ce_2 : in std_logic;
          X : in  std_logic_vector(16 downto 0);
          Y : in  std_logic_vector(23 downto 0);
          R : out  std_logic_vector(40 downto 0)   );
end entity;

architecture arch of DSPBlock_17x24_Freq800_2_034000_uid9 is
signal Mfull_c0, Mfull_c1, Mfull_c2 :  std_logic_vector(40 downto 0);
signal M_c2 :  std_logic_vector(40 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               Mfull_c1 <= Mfull_c0;
            end if;
            if ce_2 = '1' then
               Mfull_c2 <= Mfull_c1;
            end if;
         end if;
      end process;
   Mfull_c0 <= std_logic_vector(unsigned(X) * unsigned(Y)); -- multiplier
   M_c2 <= Mfull_c2(40 downto 0);
   R <= M_c2;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq800_2_034000_uid11
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq800_2_034000_uid11 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq800_2_034000_uid11 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid13
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid13 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid13 is
   component MultTable_Freq800_2_034000_uid15 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy16_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid15
      port map ( X => Xtable_c0,
                 Y => Y1_copy16_c0);
   Y1_c0 <= Y1_copy16_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid18
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid18 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid18 is
   component MultTable_Freq800_2_034000_uid20 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy21_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid20
      port map ( X => Xtable_c0,
                 Y => Y1_copy21_c0);
   Y1_c0 <= Y1_copy21_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq800_2_034000_uid23
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq800_2_034000_uid23 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq800_2_034000_uid23 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid25
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid25 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid25 is
   component MultTable_Freq800_2_034000_uid27 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy28_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid27
      port map ( X => Xtable_c0,
                 Y => Y1_copy28_c0);
   Y1_c0 <= Y1_copy28_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid30
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid30 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid30 is
   component MultTable_Freq800_2_034000_uid32 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy33_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid32
      port map ( X => Xtable_c0,
                 Y => Y1_copy33_c0);
   Y1_c0 <= Y1_copy33_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq800_2_034000_uid35
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq800_2_034000_uid35 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq800_2_034000_uid35 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid37
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid37 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid37 is
   component MultTable_Freq800_2_034000_uid39 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy40_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid39
      port map ( X => Xtable_c0,
                 Y => Y1_copy40_c0);
   Y1_c0 <= Y1_copy40_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid42
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid42 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid42 is
   component MultTable_Freq800_2_034000_uid44 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy45_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid44
      port map ( X => Xtable_c0,
                 Y => Y1_copy45_c0);
   Y1_c0 <= Y1_copy45_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq800_2_034000_uid47
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq800_2_034000_uid47 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq800_2_034000_uid47 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid49
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid49 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid49 is
   component MultTable_Freq800_2_034000_uid51 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy52_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid51
      port map ( X => Xtable_c0,
                 Y => Y1_copy52_c0);
   Y1_c0 <= Y1_copy52_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid54
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid54 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid54 is
   component MultTable_Freq800_2_034000_uid56 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy57_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid56
      port map ( X => Xtable_c0,
                 Y => Y1_copy57_c0);
   Y1_c0 <= Y1_copy57_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq800_2_034000_uid59
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq800_2_034000_uid59 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq800_2_034000_uid59 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid61
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid61 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid61 is
   component MultTable_Freq800_2_034000_uid63 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy64_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid63
      port map ( X => Xtable_c0,
                 Y => Y1_copy64_c0);
   Y1_c0 <= Y1_copy64_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid66
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid66 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid66 is
   component MultTable_Freq800_2_034000_uid68 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy69_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid68
      port map ( X => Xtable_c0,
                 Y => Y1_copy69_c0);
   Y1_c0 <= Y1_copy69_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq800_2_034000_uid71
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq800_2_034000_uid71 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq800_2_034000_uid71 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid73
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid73 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid73 is
   component MultTable_Freq800_2_034000_uid75 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy76_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid75
      port map ( X => Xtable_c0,
                 Y => Y1_copy76_c0);
   Y1_c0 <= Y1_copy76_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid78
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid78 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid78 is
   component MultTable_Freq800_2_034000_uid80 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy81_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid80
      port map ( X => Xtable_c0,
                 Y => Y1_copy81_c0);
   Y1_c0 <= Y1_copy81_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq800_2_034000_uid83
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq800_2_034000_uid83 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq800_2_034000_uid83 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid85
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid85 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid85 is
   component MultTable_Freq800_2_034000_uid87 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy88_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid87
      port map ( X => Xtable_c0,
                 Y => Y1_copy88_c0);
   Y1_c0 <= Y1_copy88_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid90
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid90 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid90 is
   component MultTable_Freq800_2_034000_uid92 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy93_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid92
      port map ( X => Xtable_c0,
                 Y => Y1_copy93_c0);
   Y1_c0 <= Y1_copy93_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq800_2_034000_uid95
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq800_2_034000_uid95 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq800_2_034000_uid95 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq800_2_034000_uid97
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid97 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid97 is
   component MultTable_Freq800_2_034000_uid99 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy100_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid99
      port map ( X => Xtable_c0,
                 Y => Y1_copy100_c0);
   Y1_c0 <= Y1_copy100_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq800_2_034000_uid102
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid102 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid102 is
   component MultTable_Freq800_2_034000_uid104 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy105_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid104
      port map ( X => Xtable_c0,
                 Y => Y1_copy105_c0);
   Y1_c0 <= Y1_copy105_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_1x2_Freq800_2_034000_uid107
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq800_2_034000_uid107 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq800_2_034000_uid107 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq800_2_034000_uid109
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid109 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid109 is
   component MultTable_Freq800_2_034000_uid111 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy112_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid111
      port map ( X => Xtable_c0,
                 Y => Y1_copy112_c0);
   Y1_c0 <= Y1_copy112_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq800_2_034000_uid114
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid114 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid114 is
   component MultTable_Freq800_2_034000_uid116 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy117_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid116
      port map ( X => Xtable_c0,
                 Y => Y1_copy117_c0);
   Y1_c0 <= Y1_copy117_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_1x2_Freq800_2_034000_uid119
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq800_2_034000_uid119 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq800_2_034000_uid119 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq800_2_034000_uid121
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid121 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid121 is
   component MultTable_Freq800_2_034000_uid123 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy124_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid123
      port map ( X => Xtable_c0,
                 Y => Y1_copy124_c0);
   Y1_c0 <= Y1_copy124_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq800_2_034000_uid126
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid126 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid126 is
   component MultTable_Freq800_2_034000_uid128 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy129_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid128
      port map ( X => Xtable_c0,
                 Y => Y1_copy129_c0);
   Y1_c0 <= Y1_copy129_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_1x2_Freq800_2_034000_uid131
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq800_2_034000_uid131 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq800_2_034000_uid131 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq800_2_034000_uid133
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid133 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid133 is
   component MultTable_Freq800_2_034000_uid135 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy136_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid135
      port map ( X => Xtable_c0,
                 Y => Y1_copy136_c0);
   Y1_c0 <= Y1_copy136_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq800_2_034000_uid138
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid138 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid138 is
   component MultTable_Freq800_2_034000_uid140 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy141_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid140
      port map ( X => Xtable_c0,
                 Y => Y1_copy141_c0);
   Y1_c0 <= Y1_copy141_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_1x2_Freq800_2_034000_uid143
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq800_2_034000_uid143 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq800_2_034000_uid143 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq800_2_034000_uid145
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid145 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid145 is
   component MultTable_Freq800_2_034000_uid147 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy148_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid147
      port map ( X => Xtable_c0,
                 Y => Y1_copy148_c0);
   Y1_c0 <= Y1_copy148_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq800_2_034000_uid150
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq800_2_034000_uid150 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq800_2_034000_uid150 is
   component MultTable_Freq800_2_034000_uid152 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy153_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq800_2_034000_uid152
      port map ( X => Xtable_c0,
                 Y => Y1_copy153_c0);
   Y1_c0 <= Y1_copy153_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                         IntAdder_30_Freq800_2_034000_uid352
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 13 cycles
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

entity IntAdder_30_Freq800_2_034000_uid352 is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13 : in std_logic;
          X : in  std_logic_vector(29 downto 0);
          Y : in  std_logic_vector(29 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(29 downto 0)   );
end entity;

architecture arch of IntAdder_30_Freq800_2_034000_uid352 is
signal Cin_0_c0, Cin_0_c1, Cin_0_c2, Cin_0_c3, Cin_0_c4 :  std_logic;
signal X_0_c3, X_0_c4 :  std_logic_vector(3 downto 0);
signal Y_0_c3, Y_0_c4 :  std_logic_vector(3 downto 0);
signal S_0_c4 :  std_logic_vector(3 downto 0);
signal R_0_c4, R_0_c5, R_0_c6, R_0_c7, R_0_c8, R_0_c9, R_0_c10, R_0_c11, R_0_c12, R_0_c13 :  std_logic_vector(2 downto 0);
signal Cin_1_c4, Cin_1_c5 :  std_logic;
signal X_1_c3, X_1_c4, X_1_c5 :  std_logic_vector(3 downto 0);
signal Y_1_c3, Y_1_c4, Y_1_c5 :  std_logic_vector(3 downto 0);
signal S_1_c5 :  std_logic_vector(3 downto 0);
signal R_1_c5, R_1_c6, R_1_c7, R_1_c8, R_1_c9, R_1_c10, R_1_c11, R_1_c12, R_1_c13 :  std_logic_vector(2 downto 0);
signal Cin_2_c5, Cin_2_c6 :  std_logic;
signal X_2_c3, X_2_c4, X_2_c5, X_2_c6 :  std_logic_vector(3 downto 0);
signal Y_2_c3, Y_2_c4, Y_2_c5, Y_2_c6 :  std_logic_vector(3 downto 0);
signal S_2_c6 :  std_logic_vector(3 downto 0);
signal R_2_c6, R_2_c7, R_2_c8, R_2_c9, R_2_c10, R_2_c11, R_2_c12, R_2_c13 :  std_logic_vector(2 downto 0);
signal Cin_3_c6, Cin_3_c7 :  std_logic;
signal X_3_c3, X_3_c4, X_3_c5, X_3_c6, X_3_c7 :  std_logic_vector(3 downto 0);
signal Y_3_c3, Y_3_c4, Y_3_c5, Y_3_c6, Y_3_c7 :  std_logic_vector(3 downto 0);
signal S_3_c7 :  std_logic_vector(3 downto 0);
signal R_3_c7, R_3_c8, R_3_c9, R_3_c10, R_3_c11, R_3_c12, R_3_c13 :  std_logic_vector(2 downto 0);
signal Cin_4_c7, Cin_4_c8 :  std_logic;
signal X_4_c3, X_4_c4, X_4_c5, X_4_c6, X_4_c7, X_4_c8 :  std_logic_vector(3 downto 0);
signal Y_4_c3, Y_4_c4, Y_4_c5, Y_4_c6, Y_4_c7, Y_4_c8 :  std_logic_vector(3 downto 0);
signal S_4_c8 :  std_logic_vector(3 downto 0);
signal R_4_c8, R_4_c9, R_4_c10, R_4_c11, R_4_c12, R_4_c13 :  std_logic_vector(2 downto 0);
signal Cin_5_c8, Cin_5_c9 :  std_logic;
signal X_5_c3, X_5_c4, X_5_c5, X_5_c6, X_5_c7, X_5_c8, X_5_c9 :  std_logic_vector(3 downto 0);
signal Y_5_c3, Y_5_c4, Y_5_c5, Y_5_c6, Y_5_c7, Y_5_c8, Y_5_c9 :  std_logic_vector(3 downto 0);
signal S_5_c9 :  std_logic_vector(3 downto 0);
signal R_5_c9, R_5_c10, R_5_c11, R_5_c12, R_5_c13 :  std_logic_vector(2 downto 0);
signal Cin_6_c9, Cin_6_c10 :  std_logic;
signal X_6_c3, X_6_c4, X_6_c5, X_6_c6, X_6_c7, X_6_c8, X_6_c9, X_6_c10 :  std_logic_vector(3 downto 0);
signal Y_6_c3, Y_6_c4, Y_6_c5, Y_6_c6, Y_6_c7, Y_6_c8, Y_6_c9, Y_6_c10 :  std_logic_vector(3 downto 0);
signal S_6_c10 :  std_logic_vector(3 downto 0);
signal R_6_c10, R_6_c11, R_6_c12, R_6_c13 :  std_logic_vector(2 downto 0);
signal Cin_7_c10, Cin_7_c11 :  std_logic;
signal X_7_c3, X_7_c4, X_7_c5, X_7_c6, X_7_c7, X_7_c8, X_7_c9, X_7_c10, X_7_c11 :  std_logic_vector(3 downto 0);
signal Y_7_c3, Y_7_c4, Y_7_c5, Y_7_c6, Y_7_c7, Y_7_c8, Y_7_c9, Y_7_c10, Y_7_c11 :  std_logic_vector(3 downto 0);
signal S_7_c11 :  std_logic_vector(3 downto 0);
signal R_7_c11, R_7_c12, R_7_c13 :  std_logic_vector(2 downto 0);
signal Cin_8_c11, Cin_8_c12 :  std_logic;
signal X_8_c3, X_8_c4, X_8_c5, X_8_c6, X_8_c7, X_8_c8, X_8_c9, X_8_c10, X_8_c11, X_8_c12 :  std_logic_vector(3 downto 0);
signal Y_8_c3, Y_8_c4, Y_8_c5, Y_8_c6, Y_8_c7, Y_8_c8, Y_8_c9, Y_8_c10, Y_8_c11, Y_8_c12 :  std_logic_vector(3 downto 0);
signal S_8_c12 :  std_logic_vector(3 downto 0);
signal R_8_c12, R_8_c13 :  std_logic_vector(2 downto 0);
signal Cin_9_c12, Cin_9_c13 :  std_logic;
signal X_9_c3, X_9_c4, X_9_c5, X_9_c6, X_9_c7, X_9_c8, X_9_c9, X_9_c10, X_9_c11, X_9_c12, X_9_c13 :  std_logic_vector(3 downto 0);
signal Y_9_c3, Y_9_c4, Y_9_c5, Y_9_c6, Y_9_c7, Y_9_c8, Y_9_c9, Y_9_c10, Y_9_c11, Y_9_c12, Y_9_c13 :  std_logic_vector(3 downto 0);
signal S_9_c13 :  std_logic_vector(3 downto 0);
signal R_9_c13 :  std_logic_vector(2 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               Cin_0_c1 <= Cin_0_c0;
            end if;
            if ce_2 = '1' then
               Cin_0_c2 <= Cin_0_c1;
            end if;
            if ce_3 = '1' then
               Cin_0_c3 <= Cin_0_c2;
            end if;
            if ce_4 = '1' then
               Cin_0_c4 <= Cin_0_c3;
               X_0_c4 <= X_0_c3;
               Y_0_c4 <= Y_0_c3;
               X_1_c4 <= X_1_c3;
               Y_1_c4 <= Y_1_c3;
               X_2_c4 <= X_2_c3;
               Y_2_c4 <= Y_2_c3;
               X_3_c4 <= X_3_c3;
               Y_3_c4 <= Y_3_c3;
               X_4_c4 <= X_4_c3;
               Y_4_c4 <= Y_4_c3;
               X_5_c4 <= X_5_c3;
               Y_5_c4 <= Y_5_c3;
               X_6_c4 <= X_6_c3;
               Y_6_c4 <= Y_6_c3;
               X_7_c4 <= X_7_c3;
               Y_7_c4 <= Y_7_c3;
               X_8_c4 <= X_8_c3;
               Y_8_c4 <= Y_8_c3;
               X_9_c4 <= X_9_c3;
               Y_9_c4 <= Y_9_c3;
            end if;
            if ce_5 = '1' then
               R_0_c5 <= R_0_c4;
               Cin_1_c5 <= Cin_1_c4;
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
               R_0_c6 <= R_0_c5;
               R_1_c6 <= R_1_c5;
               Cin_2_c6 <= Cin_2_c5;
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
               R_0_c7 <= R_0_c6;
               R_1_c7 <= R_1_c6;
               R_2_c7 <= R_2_c6;
               Cin_3_c7 <= Cin_3_c6;
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
               R_0_c8 <= R_0_c7;
               R_1_c8 <= R_1_c7;
               R_2_c8 <= R_2_c7;
               R_3_c8 <= R_3_c7;
               Cin_4_c8 <= Cin_4_c7;
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
               R_0_c9 <= R_0_c8;
               R_1_c9 <= R_1_c8;
               R_2_c9 <= R_2_c8;
               R_3_c9 <= R_3_c8;
               R_4_c9 <= R_4_c8;
               Cin_5_c9 <= Cin_5_c8;
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
               R_0_c10 <= R_0_c9;
               R_1_c10 <= R_1_c9;
               R_2_c10 <= R_2_c9;
               R_3_c10 <= R_3_c9;
               R_4_c10 <= R_4_c9;
               R_5_c10 <= R_5_c9;
               Cin_6_c10 <= Cin_6_c9;
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
               R_0_c11 <= R_0_c10;
               R_1_c11 <= R_1_c10;
               R_2_c11 <= R_2_c10;
               R_3_c11 <= R_3_c10;
               R_4_c11 <= R_4_c10;
               R_5_c11 <= R_5_c10;
               R_6_c11 <= R_6_c10;
               Cin_7_c11 <= Cin_7_c10;
               X_7_c11 <= X_7_c10;
               Y_7_c11 <= Y_7_c10;
               X_8_c11 <= X_8_c10;
               Y_8_c11 <= Y_8_c10;
               X_9_c11 <= X_9_c10;
               Y_9_c11 <= Y_9_c10;
            end if;
            if ce_12 = '1' then
               R_0_c12 <= R_0_c11;
               R_1_c12 <= R_1_c11;
               R_2_c12 <= R_2_c11;
               R_3_c12 <= R_3_c11;
               R_4_c12 <= R_4_c11;
               R_5_c12 <= R_5_c11;
               R_6_c12 <= R_6_c11;
               R_7_c12 <= R_7_c11;
               Cin_8_c12 <= Cin_8_c11;
               X_8_c12 <= X_8_c11;
               Y_8_c12 <= Y_8_c11;
               X_9_c12 <= X_9_c11;
               Y_9_c12 <= Y_9_c11;
            end if;
            if ce_13 = '1' then
               R_0_c13 <= R_0_c12;
               R_1_c13 <= R_1_c12;
               R_2_c13 <= R_2_c12;
               R_3_c13 <= R_3_c12;
               R_4_c13 <= R_4_c12;
               R_5_c13 <= R_5_c12;
               R_6_c13 <= R_6_c12;
               R_7_c13 <= R_7_c12;
               R_8_c13 <= R_8_c12;
               Cin_9_c13 <= Cin_9_c12;
               X_9_c13 <= X_9_c12;
               Y_9_c13 <= Y_9_c12;
            end if;
         end if;
      end process;
   Cin_0_c0 <= Cin;
   X_0_c3 <= '0' & X(2 downto 0);
   Y_0_c3 <= '0' & Y(2 downto 0);
   S_0_c4 <= X_0_c4 + Y_0_c4 + Cin_0_c4;
   R_0_c4 <= S_0_c4(2 downto 0);
   Cin_1_c4 <= S_0_c4(3);
   X_1_c3 <= '0' & X(5 downto 3);
   Y_1_c3 <= '0' & Y(5 downto 3);
   S_1_c5 <= X_1_c5 + Y_1_c5 + Cin_1_c5;
   R_1_c5 <= S_1_c5(2 downto 0);
   Cin_2_c5 <= S_1_c5(3);
   X_2_c3 <= '0' & X(8 downto 6);
   Y_2_c3 <= '0' & Y(8 downto 6);
   S_2_c6 <= X_2_c6 + Y_2_c6 + Cin_2_c6;
   R_2_c6 <= S_2_c6(2 downto 0);
   Cin_3_c6 <= S_2_c6(3);
   X_3_c3 <= '0' & X(11 downto 9);
   Y_3_c3 <= '0' & Y(11 downto 9);
   S_3_c7 <= X_3_c7 + Y_3_c7 + Cin_3_c7;
   R_3_c7 <= S_3_c7(2 downto 0);
   Cin_4_c7 <= S_3_c7(3);
   X_4_c3 <= '0' & X(14 downto 12);
   Y_4_c3 <= '0' & Y(14 downto 12);
   S_4_c8 <= X_4_c8 + Y_4_c8 + Cin_4_c8;
   R_4_c8 <= S_4_c8(2 downto 0);
   Cin_5_c8 <= S_4_c8(3);
   X_5_c3 <= '0' & X(17 downto 15);
   Y_5_c3 <= '0' & Y(17 downto 15);
   S_5_c9 <= X_5_c9 + Y_5_c9 + Cin_5_c9;
   R_5_c9 <= S_5_c9(2 downto 0);
   Cin_6_c9 <= S_5_c9(3);
   X_6_c3 <= '0' & X(20 downto 18);
   Y_6_c3 <= '0' & Y(20 downto 18);
   S_6_c10 <= X_6_c10 + Y_6_c10 + Cin_6_c10;
   R_6_c10 <= S_6_c10(2 downto 0);
   Cin_7_c10 <= S_6_c10(3);
   X_7_c3 <= '0' & X(23 downto 21);
   Y_7_c3 <= '0' & Y(23 downto 21);
   S_7_c11 <= X_7_c11 + Y_7_c11 + Cin_7_c11;
   R_7_c11 <= S_7_c11(2 downto 0);
   Cin_8_c11 <= S_7_c11(3);
   X_8_c3 <= '0' & X(26 downto 24);
   Y_8_c3 <= '0' & Y(26 downto 24);
   S_8_c12 <= X_8_c12 + Y_8_c12 + Cin_8_c12;
   R_8_c12 <= S_8_c12(2 downto 0);
   Cin_9_c12 <= S_8_c12(3);
   X_9_c3 <= '0' & X(29 downto 27);
   Y_9_c3 <= '0' & Y(29 downto 27);
   S_9_c13 <= X_9_c13 + Y_9_c13 + Cin_9_c13;
   R_9_c13 <= S_9_c13(2 downto 0);
   R <= R_9_c13 & R_8_c13 & R_7_c13 & R_6_c13 & R_5_c13 & R_4_c13 & R_3_c13 & R_2_c13 & R_1_c13 & R_0_c13 ;
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplier_24x24_48_Freq800_2_034000_uid5
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Martin Kumm, Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012-
--------------------------------------------------------------------------------
-- Pipeline depth: 13 cycles
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
-- Input signals: X Y
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_24x24_48_Freq800_2_034000_uid5 is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13 : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          Y : in  std_logic_vector(23 downto 0);
          R : out  std_logic_vector(47 downto 0)   );
end entity;

architecture arch of IntMultiplier_24x24_48_Freq800_2_034000_uid5 is
   component DSPBlock_17x24_Freq800_2_034000_uid9 is
      port ( clk, ce_1, ce_2 : in std_logic;
             X : in  std_logic_vector(16 downto 0);
             Y : in  std_logic_vector(23 downto 0);
             R : out  std_logic_vector(40 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq800_2_034000_uid11 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid13 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid18 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq800_2_034000_uid23 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid25 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid30 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq800_2_034000_uid35 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid37 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid42 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq800_2_034000_uid47 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid49 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid54 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq800_2_034000_uid59 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid61 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid66 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq800_2_034000_uid71 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid73 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid78 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq800_2_034000_uid83 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid85 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid90 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq800_2_034000_uid95 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid97 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid102 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq800_2_034000_uid107 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid109 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid114 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq800_2_034000_uid119 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid121 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid126 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq800_2_034000_uid131 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid133 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid138 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq800_2_034000_uid143 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid145 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq800_2_034000_uid150 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component Compressor_23_3_Freq800_2_034000_uid156 is
      port ( X1 : in  std_logic_vector(1 downto 0);
             X0 : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_3_2_Freq800_2_034000_uid160 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component Compressor_14_3_Freq800_2_034000_uid164 is
      port ( X1 : in  std_logic_vector(0 downto 0);
             X0 : in  std_logic_vector(3 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_6_3_Freq800_2_034000_uid170 is
      port ( X0 : in  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component IntAdder_30_Freq800_2_034000_uid352 is
      port ( clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13 : in std_logic;
             X : in  std_logic_vector(29 downto 0);
             Y : in  std_logic_vector(29 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(29 downto 0)   );
   end component;

signal XX_m6_c0 :  std_logic_vector(23 downto 0);
signal YY_m6_c0 :  std_logic_vector(23 downto 0);
signal tile_0_X_c0 :  std_logic_vector(16 downto 0);
signal tile_0_Y_c0 :  std_logic_vector(23 downto 0);
signal tile_0_output_c2 :  std_logic_vector(40 downto 0);
signal tile_0_filtered_output_c2 :  unsigned(40-0 downto 0);
signal bh7_w0_0_c2, bh7_w0_0_c3 :  std_logic;
signal bh7_w1_0_c2, bh7_w1_0_c3 :  std_logic;
signal bh7_w2_0_c2, bh7_w2_0_c3 :  std_logic;
signal bh7_w3_0_c2, bh7_w3_0_c3 :  std_logic;
signal bh7_w4_0_c2, bh7_w4_0_c3 :  std_logic;
signal bh7_w5_0_c2, bh7_w5_0_c3 :  std_logic;
signal bh7_w6_0_c2, bh7_w6_0_c3 :  std_logic;
signal bh7_w7_0_c2, bh7_w7_0_c3 :  std_logic;
signal bh7_w8_0_c2, bh7_w8_0_c3 :  std_logic;
signal bh7_w9_0_c2, bh7_w9_0_c3 :  std_logic;
signal bh7_w10_0_c2, bh7_w10_0_c3 :  std_logic;
signal bh7_w11_0_c2, bh7_w11_0_c3 :  std_logic;
signal bh7_w12_0_c2, bh7_w12_0_c3 :  std_logic;
signal bh7_w13_0_c2, bh7_w13_0_c3 :  std_logic;
signal bh7_w14_0_c2, bh7_w14_0_c3 :  std_logic;
signal bh7_w15_0_c2, bh7_w15_0_c3 :  std_logic;
signal bh7_w16_0_c2, bh7_w16_0_c3 :  std_logic;
signal bh7_w17_0_c2 :  std_logic;
signal bh7_w18_0_c2 :  std_logic;
signal bh7_w19_0_c2 :  std_logic;
signal bh7_w20_0_c2 :  std_logic;
signal bh7_w21_0_c2 :  std_logic;
signal bh7_w22_0_c2 :  std_logic;
signal bh7_w23_0_c2 :  std_logic;
signal bh7_w24_0_c2 :  std_logic;
signal bh7_w25_0_c2 :  std_logic;
signal bh7_w26_0_c2, bh7_w26_0_c3 :  std_logic;
signal bh7_w27_0_c2, bh7_w27_0_c3 :  std_logic;
signal bh7_w28_0_c2, bh7_w28_0_c3 :  std_logic;
signal bh7_w29_0_c2, bh7_w29_0_c3 :  std_logic;
signal bh7_w30_0_c2, bh7_w30_0_c3 :  std_logic;
signal bh7_w31_0_c2, bh7_w31_0_c3 :  std_logic;
signal bh7_w32_0_c2, bh7_w32_0_c3 :  std_logic;
signal bh7_w33_0_c2, bh7_w33_0_c3 :  std_logic;
signal bh7_w34_0_c2, bh7_w34_0_c3 :  std_logic;
signal bh7_w35_0_c2, bh7_w35_0_c3 :  std_logic;
signal bh7_w36_0_c2, bh7_w36_0_c3 :  std_logic;
signal bh7_w37_0_c2, bh7_w37_0_c3 :  std_logic;
signal bh7_w38_0_c2, bh7_w38_0_c3 :  std_logic;
signal bh7_w39_0_c2, bh7_w39_0_c3 :  std_logic;
signal bh7_w40_0_c2, bh7_w40_0_c3 :  std_logic;
signal tile_1_X_c0 :  std_logic_vector(0 downto 0);
signal tile_1_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_1_output_c0 :  std_logic_vector(1 downto 0);
signal tile_1_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w45_0_c0 :  std_logic;
signal bh7_w46_0_c0 :  std_logic;
signal tile_2_X_c0 :  std_logic_vector(2 downto 0);
signal tile_2_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_2_output_c0 :  std_logic_vector(4 downto 0);
signal tile_2_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w42_0_c0 :  std_logic;
signal bh7_w43_0_c0 :  std_logic;
signal bh7_w44_0_c0 :  std_logic;
signal bh7_w45_1_c0 :  std_logic;
signal bh7_w46_1_c0 :  std_logic;
signal tile_3_X_c0 :  std_logic_vector(2 downto 0);
signal tile_3_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_3_output_c0 :  std_logic_vector(4 downto 0);
signal tile_3_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w39_1_c0 :  std_logic;
signal bh7_w40_1_c0 :  std_logic;
signal bh7_w41_0_c0 :  std_logic;
signal bh7_w42_1_c0 :  std_logic;
signal bh7_w43_1_c0 :  std_logic;
signal tile_4_X_c0 :  std_logic_vector(0 downto 0);
signal tile_4_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_4_output_c0 :  std_logic_vector(1 downto 0);
signal tile_4_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w43_2_c0 :  std_logic;
signal bh7_w44_1_c0 :  std_logic;
signal tile_5_X_c0 :  std_logic_vector(2 downto 0);
signal tile_5_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_5_output_c0 :  std_logic_vector(4 downto 0);
signal tile_5_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w40_2_c0 :  std_logic;
signal bh7_w41_1_c0 :  std_logic;
signal bh7_w42_2_c0 :  std_logic;
signal bh7_w43_3_c0 :  std_logic;
signal bh7_w44_2_c0, bh7_w44_2_c1 :  std_logic;
signal tile_6_X_c0 :  std_logic_vector(2 downto 0);
signal tile_6_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_6_output_c0 :  std_logic_vector(4 downto 0);
signal tile_6_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w37_1_c0 :  std_logic;
signal bh7_w38_1_c0 :  std_logic;
signal bh7_w39_2_c0 :  std_logic;
signal bh7_w40_3_c0 :  std_logic;
signal bh7_w41_2_c0 :  std_logic;
signal tile_7_X_c0 :  std_logic_vector(0 downto 0);
signal tile_7_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_7_output_c0 :  std_logic_vector(1 downto 0);
signal tile_7_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w41_3_c0 :  std_logic;
signal bh7_w42_3_c0 :  std_logic;
signal tile_8_X_c0 :  std_logic_vector(2 downto 0);
signal tile_8_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_8_output_c0 :  std_logic_vector(4 downto 0);
signal tile_8_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w38_2_c0 :  std_logic;
signal bh7_w39_3_c0 :  std_logic;
signal bh7_w40_4_c0 :  std_logic;
signal bh7_w41_4_c0, bh7_w41_4_c1 :  std_logic;
signal bh7_w42_4_c0 :  std_logic;
signal tile_9_X_c0 :  std_logic_vector(2 downto 0);
signal tile_9_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_9_output_c0 :  std_logic_vector(4 downto 0);
signal tile_9_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w35_1_c0 :  std_logic;
signal bh7_w36_1_c0 :  std_logic;
signal bh7_w37_2_c0 :  std_logic;
signal bh7_w38_3_c0 :  std_logic;
signal bh7_w39_4_c0 :  std_logic;
signal tile_10_X_c0 :  std_logic_vector(0 downto 0);
signal tile_10_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_10_output_c0 :  std_logic_vector(1 downto 0);
signal tile_10_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w39_5_c0 :  std_logic;
signal bh7_w40_5_c0 :  std_logic;
signal tile_11_X_c0 :  std_logic_vector(2 downto 0);
signal tile_11_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_11_output_c0 :  std_logic_vector(4 downto 0);
signal tile_11_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w36_2_c0 :  std_logic;
signal bh7_w37_3_c0 :  std_logic;
signal bh7_w38_4_c0 :  std_logic;
signal bh7_w39_6_c0 :  std_logic;
signal bh7_w40_6_c0 :  std_logic;
signal tile_12_X_c0 :  std_logic_vector(2 downto 0);
signal tile_12_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_12_output_c0 :  std_logic_vector(4 downto 0);
signal tile_12_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w33_1_c0 :  std_logic;
signal bh7_w34_1_c0 :  std_logic;
signal bh7_w35_2_c0 :  std_logic;
signal bh7_w36_3_c0 :  std_logic;
signal bh7_w37_4_c0 :  std_logic;
signal tile_13_X_c0 :  std_logic_vector(0 downto 0);
signal tile_13_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_13_output_c0 :  std_logic_vector(1 downto 0);
signal tile_13_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w37_5_c0 :  std_logic;
signal bh7_w38_5_c0 :  std_logic;
signal tile_14_X_c0 :  std_logic_vector(2 downto 0);
signal tile_14_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_14_output_c0 :  std_logic_vector(4 downto 0);
signal tile_14_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w34_2_c0 :  std_logic;
signal bh7_w35_3_c0 :  std_logic;
signal bh7_w36_4_c0 :  std_logic;
signal bh7_w37_6_c0 :  std_logic;
signal bh7_w38_6_c0 :  std_logic;
signal tile_15_X_c0 :  std_logic_vector(2 downto 0);
signal tile_15_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_15_output_c0 :  std_logic_vector(4 downto 0);
signal tile_15_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w31_1_c0 :  std_logic;
signal bh7_w32_1_c0 :  std_logic;
signal bh7_w33_2_c0 :  std_logic;
signal bh7_w34_3_c0 :  std_logic;
signal bh7_w35_4_c0 :  std_logic;
signal tile_16_X_c0 :  std_logic_vector(0 downto 0);
signal tile_16_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_16_output_c0 :  std_logic_vector(1 downto 0);
signal tile_16_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w35_5_c0 :  std_logic;
signal bh7_w36_5_c0 :  std_logic;
signal tile_17_X_c0 :  std_logic_vector(2 downto 0);
signal tile_17_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_17_output_c0 :  std_logic_vector(4 downto 0);
signal tile_17_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w32_2_c0 :  std_logic;
signal bh7_w33_3_c0 :  std_logic;
signal bh7_w34_4_c0 :  std_logic;
signal bh7_w35_6_c0 :  std_logic;
signal bh7_w36_6_c0 :  std_logic;
signal tile_18_X_c0 :  std_logic_vector(2 downto 0);
signal tile_18_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_18_output_c0 :  std_logic_vector(4 downto 0);
signal tile_18_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w29_1_c0 :  std_logic;
signal bh7_w30_1_c0 :  std_logic;
signal bh7_w31_2_c0 :  std_logic;
signal bh7_w32_3_c0 :  std_logic;
signal bh7_w33_4_c0 :  std_logic;
signal tile_19_X_c0 :  std_logic_vector(0 downto 0);
signal tile_19_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_19_output_c0 :  std_logic_vector(1 downto 0);
signal tile_19_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w33_5_c0 :  std_logic;
signal bh7_w34_5_c0 :  std_logic;
signal tile_20_X_c0 :  std_logic_vector(2 downto 0);
signal tile_20_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_20_output_c0 :  std_logic_vector(4 downto 0);
signal tile_20_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w30_2_c0 :  std_logic;
signal bh7_w31_3_c0 :  std_logic;
signal bh7_w32_4_c0 :  std_logic;
signal bh7_w33_6_c0 :  std_logic;
signal bh7_w34_6_c0 :  std_logic;
signal tile_21_X_c0 :  std_logic_vector(2 downto 0);
signal tile_21_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_21_output_c0 :  std_logic_vector(4 downto 0);
signal tile_21_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w27_1_c0 :  std_logic;
signal bh7_w28_1_c0 :  std_logic;
signal bh7_w29_2_c0 :  std_logic;
signal bh7_w30_3_c0 :  std_logic;
signal bh7_w31_4_c0 :  std_logic;
signal tile_22_X_c0 :  std_logic_vector(0 downto 0);
signal tile_22_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_22_output_c0 :  std_logic_vector(1 downto 0);
signal tile_22_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w31_5_c0 :  std_logic;
signal bh7_w32_5_c0 :  std_logic;
signal tile_23_X_c0 :  std_logic_vector(2 downto 0);
signal tile_23_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_23_output_c0 :  std_logic_vector(4 downto 0);
signal tile_23_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w28_2_c0 :  std_logic;
signal bh7_w29_3_c0 :  std_logic;
signal bh7_w30_4_c0 :  std_logic;
signal bh7_w31_6_c0 :  std_logic;
signal bh7_w32_6_c0 :  std_logic;
signal tile_24_X_c0 :  std_logic_vector(2 downto 0);
signal tile_24_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_24_output_c0 :  std_logic_vector(4 downto 0);
signal tile_24_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w25_1_c0 :  std_logic;
signal bh7_w26_1_c0 :  std_logic;
signal bh7_w27_2_c0 :  std_logic;
signal bh7_w28_3_c0 :  std_logic;
signal bh7_w29_4_c0 :  std_logic;
signal tile_25_X_c0 :  std_logic_vector(0 downto 0);
signal tile_25_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_25_output_c0 :  std_logic_vector(1 downto 0);
signal tile_25_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w29_5_c0 :  std_logic;
signal bh7_w30_5_c0 :  std_logic;
signal tile_26_X_c0 :  std_logic_vector(2 downto 0);
signal tile_26_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_26_output_c0 :  std_logic_vector(4 downto 0);
signal tile_26_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w26_2_c0 :  std_logic;
signal bh7_w27_3_c0 :  std_logic;
signal bh7_w28_4_c0 :  std_logic;
signal bh7_w29_6_c0 :  std_logic;
signal bh7_w30_6_c0 :  std_logic;
signal tile_27_X_c0 :  std_logic_vector(2 downto 0);
signal tile_27_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_27_output_c0 :  std_logic_vector(4 downto 0);
signal tile_27_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w23_1_c0 :  std_logic;
signal bh7_w24_1_c0 :  std_logic;
signal bh7_w25_2_c0 :  std_logic;
signal bh7_w26_3_c0 :  std_logic;
signal bh7_w27_4_c0 :  std_logic;
signal tile_28_X_c0 :  std_logic_vector(0 downto 0);
signal tile_28_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_28_output_c0 :  std_logic_vector(1 downto 0);
signal tile_28_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w27_5_c0 :  std_logic;
signal bh7_w28_5_c0 :  std_logic;
signal tile_29_X_c0 :  std_logic_vector(2 downto 0);
signal tile_29_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_29_output_c0 :  std_logic_vector(4 downto 0);
signal tile_29_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w24_2_c0 :  std_logic;
signal bh7_w25_3_c0 :  std_logic;
signal bh7_w26_4_c0 :  std_logic;
signal bh7_w27_6_c0 :  std_logic;
signal bh7_w28_6_c0 :  std_logic;
signal tile_30_X_c0 :  std_logic_vector(2 downto 0);
signal tile_30_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_30_output_c0 :  std_logic_vector(4 downto 0);
signal tile_30_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w21_1_c0 :  std_logic;
signal bh7_w22_1_c0 :  std_logic;
signal bh7_w23_2_c0 :  std_logic;
signal bh7_w24_3_c0 :  std_logic;
signal bh7_w25_4_c0 :  std_logic;
signal tile_31_X_c0 :  std_logic_vector(0 downto 0);
signal tile_31_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_31_output_c0 :  std_logic_vector(1 downto 0);
signal tile_31_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w25_5_c0 :  std_logic;
signal bh7_w26_5_c0 :  std_logic;
signal tile_32_X_c0 :  std_logic_vector(2 downto 0);
signal tile_32_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_32_output_c0 :  std_logic_vector(4 downto 0);
signal tile_32_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w22_2_c0 :  std_logic;
signal bh7_w23_3_c0 :  std_logic;
signal bh7_w24_4_c0 :  std_logic;
signal bh7_w25_6_c0 :  std_logic;
signal bh7_w26_6_c0 :  std_logic;
signal tile_33_X_c0 :  std_logic_vector(2 downto 0);
signal tile_33_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_33_output_c0 :  std_logic_vector(4 downto 0);
signal tile_33_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w19_1_c0 :  std_logic;
signal bh7_w20_1_c0 :  std_logic;
signal bh7_w21_2_c0 :  std_logic;
signal bh7_w22_3_c0 :  std_logic;
signal bh7_w23_4_c0 :  std_logic;
signal tile_34_X_c0 :  std_logic_vector(0 downto 0);
signal tile_34_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_34_output_c0 :  std_logic_vector(1 downto 0);
signal tile_34_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w23_5_c0 :  std_logic;
signal bh7_w24_5_c0 :  std_logic;
signal tile_35_X_c0 :  std_logic_vector(2 downto 0);
signal tile_35_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_35_output_c0 :  std_logic_vector(4 downto 0);
signal tile_35_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w20_2_c0 :  std_logic;
signal bh7_w21_3_c0 :  std_logic;
signal bh7_w22_4_c0 :  std_logic;
signal bh7_w23_6_c0 :  std_logic;
signal bh7_w24_6_c0 :  std_logic;
signal tile_36_X_c0 :  std_logic_vector(2 downto 0);
signal tile_36_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_36_output_c0 :  std_logic_vector(4 downto 0);
signal tile_36_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w17_1_c0, bh7_w17_1_c1, bh7_w17_1_c2 :  std_logic;
signal bh7_w18_1_c0 :  std_logic;
signal bh7_w19_2_c0 :  std_logic;
signal bh7_w20_3_c0 :  std_logic;
signal bh7_w21_4_c0 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w18_2_c1, bh7_w18_2_c2 :  std_logic;
signal bh7_w19_3_c1, bh7_w19_3_c2 :  std_logic;
signal bh7_w20_4_c1 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_Out0_copy158_c0, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_Out0_copy158_c1 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid161_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid161_Out0_c1 :  std_logic_vector(1 downto 0);
signal bh7_w20_5_c1 :  std_logic;
signal bh7_w21_5_c1 :  std_logic;
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid161_Out0_copy162_c0, Compressor_3_2_Freq800_2_034000_uid160_bh7_uid161_Out0_copy162_c1 :  std_logic_vector(1 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w21_6_c1 :  std_logic;
signal bh7_w22_5_c1 :  std_logic;
signal bh7_w23_7_c1 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_Out0_copy166_c0, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_Out0_copy166_c1 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid167_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid167_Out0_c1 :  std_logic_vector(1 downto 0);
signal bh7_w22_6_c1 :  std_logic;
signal bh7_w23_8_c1 :  std_logic;
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid167_Out0_copy168_c0, Compressor_3_2_Freq800_2_034000_uid160_bh7_uid167_Out0_copy168_c1 :  std_logic_vector(1 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid171_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid171_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w23_9_c1 :  std_logic;
signal bh7_w24_7_c1 :  std_logic;
signal bh7_w25_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid171_Out0_copy172_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid171_Out0_copy172_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid173_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid173_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w24_8_c1 :  std_logic;
signal bh7_w25_8_c1 :  std_logic;
signal bh7_w26_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid173_Out0_copy174_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid173_Out0_copy174_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid175_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid175_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w25_9_c1 :  std_logic;
signal bh7_w26_8_c1 :  std_logic;
signal bh7_w27_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid175_Out0_copy176_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid175_Out0_copy176_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid177_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid177_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w26_9_c1 :  std_logic;
signal bh7_w27_8_c1 :  std_logic;
signal bh7_w28_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid177_Out0_copy178_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid177_Out0_copy178_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid179_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid179_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w27_9_c1 :  std_logic;
signal bh7_w28_8_c1 :  std_logic;
signal bh7_w29_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid179_Out0_copy180_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid179_Out0_copy180_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid181_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid181_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w28_9_c1 :  std_logic;
signal bh7_w29_8_c1 :  std_logic;
signal bh7_w30_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid181_Out0_copy182_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid181_Out0_copy182_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid183_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid183_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w29_9_c1 :  std_logic;
signal bh7_w30_8_c1 :  std_logic;
signal bh7_w31_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid183_Out0_copy184_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid183_Out0_copy184_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid185_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid185_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w30_9_c1 :  std_logic;
signal bh7_w31_8_c1 :  std_logic;
signal bh7_w32_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid185_Out0_copy186_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid185_Out0_copy186_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid187_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid187_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w31_9_c1 :  std_logic;
signal bh7_w32_8_c1 :  std_logic;
signal bh7_w33_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid187_Out0_copy188_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid187_Out0_copy188_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid189_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid189_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w32_9_c1 :  std_logic;
signal bh7_w33_8_c1 :  std_logic;
signal bh7_w34_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid189_Out0_copy190_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid189_Out0_copy190_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid191_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid191_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w33_9_c1 :  std_logic;
signal bh7_w34_8_c1 :  std_logic;
signal bh7_w35_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid191_Out0_copy192_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid191_Out0_copy192_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid193_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid193_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w34_9_c1 :  std_logic;
signal bh7_w35_8_c1 :  std_logic;
signal bh7_w36_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid193_Out0_copy194_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid193_Out0_copy194_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid195_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid195_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w35_9_c1 :  std_logic;
signal bh7_w36_8_c1 :  std_logic;
signal bh7_w37_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid195_Out0_copy196_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid195_Out0_copy196_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid197_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid197_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w36_9_c1 :  std_logic;
signal bh7_w37_8_c1 :  std_logic;
signal bh7_w38_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid197_Out0_copy198_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid197_Out0_copy198_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid199_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid199_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w37_9_c1 :  std_logic;
signal bh7_w38_8_c1 :  std_logic;
signal bh7_w39_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid199_Out0_copy200_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid199_Out0_copy200_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid201_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid201_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w38_9_c1 :  std_logic;
signal bh7_w39_8_c1 :  std_logic;
signal bh7_w40_7_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid201_Out0_copy202_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid201_Out0_copy202_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid203_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid203_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w39_9_c1 :  std_logic;
signal bh7_w40_8_c1 :  std_logic;
signal bh7_w41_5_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid203_Out0_copy204_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid203_Out0_copy204_c1 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid205_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid205_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w40_9_c1 :  std_logic;
signal bh7_w41_6_c1 :  std_logic;
signal bh7_w42_5_c1 :  std_logic;
signal Compressor_6_3_Freq800_2_034000_uid170_bh7_uid205_Out0_copy206_c0, Compressor_6_3_Freq800_2_034000_uid170_bh7_uid205_Out0_copy206_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w41_7_c1 :  std_logic;
signal bh7_w42_6_c1 :  std_logic;
signal bh7_w43_4_c1 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_Out0_copy208_c0, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_Out0_copy208_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w42_7_c1 :  std_logic;
signal bh7_w43_5_c1 :  std_logic;
signal bh7_w44_3_c1 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_Out0_copy210_c0, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_Out0_copy210_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w43_6_c1 :  std_logic;
signal bh7_w44_4_c1 :  std_logic;
signal bh7_w45_2_c1 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_Out0_copy212_c0, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_Out0_copy212_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w45_3_c1 :  std_logic;
signal bh7_w46_2_c1 :  std_logic;
signal bh7_w47_0_c1 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_Out0_copy214_c0, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_Out0_copy214_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid215_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid215_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid215_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w20_6_c1, bh7_w20_6_c2 :  std_logic;
signal bh7_w21_7_c1, bh7_w21_7_c2 :  std_logic;
signal bh7_w22_7_c1 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid215_Out0_copy216_c1 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid217_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid217_Out0_c1 :  std_logic_vector(1 downto 0);
signal bh7_w22_8_c1 :  std_logic;
signal bh7_w23_10_c1 :  std_logic;
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid217_Out0_copy218_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid219_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid219_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid219_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w23_11_c1 :  std_logic;
signal bh7_w24_9_c1, bh7_w24_9_c2 :  std_logic;
signal bh7_w25_10_c1 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid219_Out0_copy220_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid221_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid221_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid221_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w25_11_c1 :  std_logic;
signal bh7_w26_10_c1 :  std_logic;
signal bh7_w27_10_c1 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid221_Out0_copy222_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid223_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid223_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid223_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w27_11_c1 :  std_logic;
signal bh7_w28_10_c1 :  std_logic;
signal bh7_w29_10_c1 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid223_Out0_copy224_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid225_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid225_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid225_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w29_11_c1 :  std_logic;
signal bh7_w30_10_c1 :  std_logic;
signal bh7_w31_10_c1 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid225_Out0_copy226_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid227_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid227_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid227_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w31_11_c1 :  std_logic;
signal bh7_w32_10_c1 :  std_logic;
signal bh7_w33_10_c1 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid227_Out0_copy228_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid229_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid229_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid229_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w33_11_c1 :  std_logic;
signal bh7_w34_10_c1 :  std_logic;
signal bh7_w35_10_c1 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid229_Out0_copy230_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid231_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid231_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid231_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w35_11_c1 :  std_logic;
signal bh7_w36_10_c1 :  std_logic;
signal bh7_w37_10_c1 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid231_Out0_copy232_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid233_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid233_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid233_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w37_11_c1 :  std_logic;
signal bh7_w38_10_c1 :  std_logic;
signal bh7_w39_10_c1 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid233_Out0_copy234_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid235_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid235_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid235_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w39_11_c1 :  std_logic;
signal bh7_w40_10_c1 :  std_logic;
signal bh7_w41_8_c1 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid235_Out0_copy236_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_In0_c1 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_In1_c0, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_In1_c1 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w41_9_c1 :  std_logic;
signal bh7_w42_8_c1 :  std_logic;
signal bh7_w43_7_c1 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_Out0_copy238_c1 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid239_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid239_Out0_c1 :  std_logic_vector(1 downto 0);
signal bh7_w42_9_c1 :  std_logic;
signal bh7_w43_8_c1 :  std_logic;
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid239_Out0_copy240_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid241_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid241_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid241_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w43_9_c1 :  std_logic;
signal bh7_w44_5_c1 :  std_logic;
signal bh7_w45_4_c1 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid241_Out0_copy242_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid243_In0_c1 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid243_In1_c1 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid243_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w45_5_c1 :  std_logic;
signal bh7_w46_3_c1 :  std_logic;
signal bh7_w47_1_c1 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid243_Out0_copy244_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w22_9_c2 :  std_logic;
signal bh7_w23_12_c2 :  std_logic;
signal bh7_w24_10_c2 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_Out0_copy246_c1, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_Out0_copy246_c2 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w25_12_c2 :  std_logic;
signal bh7_w26_11_c2 :  std_logic;
signal bh7_w27_12_c2 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_Out0_copy248_c1, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_Out0_copy248_c2 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w27_13_c2 :  std_logic;
signal bh7_w28_11_c2 :  std_logic;
signal bh7_w29_12_c2 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_Out0_copy250_c1, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_Out0_copy250_c2 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w29_13_c2 :  std_logic;
signal bh7_w30_11_c2 :  std_logic;
signal bh7_w31_12_c2 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_Out0_copy252_c1, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_Out0_copy252_c2 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w31_13_c2 :  std_logic;
signal bh7_w32_11_c2 :  std_logic;
signal bh7_w33_12_c2 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_Out0_copy254_c1, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_Out0_copy254_c2 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w33_13_c2 :  std_logic;
signal bh7_w34_11_c2 :  std_logic;
signal bh7_w35_12_c2 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_Out0_copy256_c1, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_Out0_copy256_c2 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w35_13_c2 :  std_logic;
signal bh7_w36_11_c2 :  std_logic;
signal bh7_w37_12_c2 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_Out0_copy258_c1, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_Out0_copy258_c2 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w37_13_c2 :  std_logic;
signal bh7_w38_11_c2 :  std_logic;
signal bh7_w39_12_c2 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_Out0_copy260_c1, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_Out0_copy260_c2 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w39_13_c2 :  std_logic;
signal bh7_w40_11_c2 :  std_logic;
signal bh7_w41_10_c2 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_Out0_copy262_c1, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_Out0_copy262_c2 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w41_11_c2 :  std_logic;
signal bh7_w42_10_c2 :  std_logic;
signal bh7_w43_10_c2 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_Out0_copy264_c1, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_Out0_copy264_c2 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w43_11_c2 :  std_logic;
signal bh7_w44_6_c2 :  std_logic;
signal bh7_w45_6_c2 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_Out0_copy266_c1, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_Out0_copy266_c2 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_In0_c1 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_In1_c1 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w45_7_c2 :  std_logic;
signal bh7_w46_4_c2 :  std_logic;
signal bh7_w47_2_c2 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_Out0_copy268_c1, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_Out0_copy268_c2 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid269_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid269_Out0_c2 :  std_logic_vector(1 downto 0);
signal bh7_w47_3_c2 :  std_logic;
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid269_Out0_copy270_c1, Compressor_3_2_Freq800_2_034000_uid160_bh7_uid269_Out0_copy270_c2 :  std_logic_vector(1 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid271_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid271_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid271_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w24_11_c2 :  std_logic;
signal bh7_w25_13_c2 :  std_logic;
signal bh7_w26_12_c2 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid271_Out0_copy272_c2 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid273_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid273_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid273_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w27_14_c2 :  std_logic;
signal bh7_w28_12_c2, bh7_w28_12_c3 :  std_logic;
signal bh7_w29_14_c2 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid273_Out0_copy274_c2 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid275_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid275_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid275_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w29_15_c2 :  std_logic;
signal bh7_w30_12_c2 :  std_logic;
signal bh7_w31_14_c2 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid275_Out0_copy276_c2 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid277_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid277_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid277_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w31_15_c2 :  std_logic;
signal bh7_w32_12_c2 :  std_logic;
signal bh7_w33_14_c2 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid277_Out0_copy278_c2 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid279_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid279_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid279_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w33_15_c2 :  std_logic;
signal bh7_w34_12_c2 :  std_logic;
signal bh7_w35_14_c2 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid279_Out0_copy280_c2 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid281_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid281_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid281_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w35_15_c2 :  std_logic;
signal bh7_w36_12_c2 :  std_logic;
signal bh7_w37_14_c2 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid281_Out0_copy282_c2 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid283_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid283_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid283_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w37_15_c2 :  std_logic;
signal bh7_w38_12_c2 :  std_logic;
signal bh7_w39_14_c2 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid283_Out0_copy284_c2 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid285_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid285_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid285_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w39_15_c2 :  std_logic;
signal bh7_w40_12_c2 :  std_logic;
signal bh7_w41_12_c2 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid285_Out0_copy286_c2 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid287_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid287_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid287_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w41_13_c2 :  std_logic;
signal bh7_w42_11_c2 :  std_logic;
signal bh7_w43_12_c2 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid287_Out0_copy288_c2 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid289_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid289_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid289_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w43_13_c2 :  std_logic;
signal bh7_w44_7_c2 :  std_logic;
signal bh7_w45_8_c2 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid289_Out0_copy290_c2 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid291_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid291_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid291_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w45_9_c2 :  std_logic;
signal bh7_w46_5_c2 :  std_logic;
signal bh7_w47_4_c2 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid291_Out0_copy292_c2 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_In1_c0, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_In1_c1, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_Out0_c2 :  std_logic_vector(2 downto 0);
signal bh7_w47_5_c2 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_Out0_copy294_c2 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w26_13_c3 :  std_logic;
signal bh7_w27_15_c3 :  std_logic;
signal bh7_w28_13_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_Out0_copy296_c2, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_Out0_copy296_c3 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w29_16_c3 :  std_logic;
signal bh7_w30_13_c3 :  std_logic;
signal bh7_w31_16_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_Out0_copy298_c2, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_Out0_copy298_c3 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w31_17_c3 :  std_logic;
signal bh7_w32_13_c3 :  std_logic;
signal bh7_w33_16_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_Out0_copy300_c2, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_Out0_copy300_c3 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w33_17_c3 :  std_logic;
signal bh7_w34_13_c3 :  std_logic;
signal bh7_w35_16_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_Out0_copy302_c2, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_Out0_copy302_c3 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w35_17_c3 :  std_logic;
signal bh7_w36_13_c3 :  std_logic;
signal bh7_w37_16_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_Out0_copy304_c2, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_Out0_copy304_c3 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w37_17_c3 :  std_logic;
signal bh7_w38_13_c3 :  std_logic;
signal bh7_w39_16_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_Out0_copy306_c2, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_Out0_copy306_c3 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w39_17_c3 :  std_logic;
signal bh7_w40_13_c3 :  std_logic;
signal bh7_w41_14_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_Out0_copy308_c2, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_Out0_copy308_c3 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w41_15_c3 :  std_logic;
signal bh7_w42_12_c3 :  std_logic;
signal bh7_w43_14_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_Out0_copy310_c2, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_Out0_copy310_c3 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w43_15_c3 :  std_logic;
signal bh7_w44_8_c3 :  std_logic;
signal bh7_w45_10_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_Out0_copy312_c2, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_Out0_copy312_c3 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w45_11_c3 :  std_logic;
signal bh7_w46_6_c3 :  std_logic;
signal bh7_w47_6_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_Out0_copy314_c2, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_Out0_copy314_c3 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_In0_c2 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_In1_c0, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_In1_c1, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_In1_c2 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w47_7_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_Out0_copy316_c2, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_Out0_copy316_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_In0_c2 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_In1_c2 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w17_2_c3 :  std_logic;
signal bh7_w18_3_c3 :  std_logic;
signal bh7_w19_4_c3 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_Out0_copy318_c2, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_Out0_copy318_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_In0_c2 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_In1_c2 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w19_5_c3 :  std_logic;
signal bh7_w20_7_c3 :  std_logic;
signal bh7_w21_8_c3 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_Out0_copy320_c2, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_Out0_copy320_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_In0_c2 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_In1_c2 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w21_9_c3 :  std_logic;
signal bh7_w22_10_c3 :  std_logic;
signal bh7_w23_13_c3 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_Out0_copy322_c2, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_Out0_copy322_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_In0_c2 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_In1_c2 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w23_14_c3 :  std_logic;
signal bh7_w24_12_c3 :  std_logic;
signal bh7_w25_14_c3 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_Out0_copy324_c2, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_Out0_copy324_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_In0_c2, Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_In0_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_In1_c3 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w25_15_c3 :  std_logic;
signal bh7_w26_14_c3 :  std_logic;
signal bh7_w27_16_c3 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_Out0_copy326_c3 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid327_In0_c3 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid327_Out0_c3 :  std_logic_vector(1 downto 0);
signal bh7_w27_17_c3 :  std_logic;
signal bh7_w28_14_c3 :  std_logic;
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid327_Out0_copy328_c3 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid329_In0_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid329_In1_c3 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid329_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w28_15_c3 :  std_logic;
signal bh7_w29_17_c3 :  std_logic;
signal bh7_w30_14_c3 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid329_Out0_copy330_c3 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid331_In0_c3 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid331_Out0_c3 :  std_logic_vector(1 downto 0);
signal bh7_w30_15_c3 :  std_logic;
signal bh7_w31_18_c3 :  std_logic;
signal Compressor_3_2_Freq800_2_034000_uid160_bh7_uid331_Out0_copy332_c3 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid333_In0_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid333_In1_c3 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid333_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w31_19_c3 :  std_logic;
signal bh7_w32_14_c3 :  std_logic;
signal bh7_w33_18_c3 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid333_Out0_copy334_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid335_In0_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid335_In1_c3 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid335_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w33_19_c3 :  std_logic;
signal bh7_w34_14_c3 :  std_logic;
signal bh7_w35_18_c3 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid335_Out0_copy336_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid337_In0_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid337_In1_c3 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid337_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w35_19_c3 :  std_logic;
signal bh7_w36_14_c3 :  std_logic;
signal bh7_w37_18_c3 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid337_Out0_copy338_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid339_In0_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid339_In1_c3 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid339_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w37_19_c3 :  std_logic;
signal bh7_w38_14_c3 :  std_logic;
signal bh7_w39_18_c3 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid339_Out0_copy340_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid341_In0_c3 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid341_In1_c3 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid341_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w39_19_c3 :  std_logic;
signal bh7_w40_14_c3 :  std_logic;
signal bh7_w41_16_c3 :  std_logic;
signal Compressor_23_3_Freq800_2_034000_uid156_bh7_uid341_Out0_copy342_c3 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid343_In0_c3 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid343_In1_c3 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid343_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w41_17_c3 :  std_logic;
signal bh7_w42_13_c3 :  std_logic;
signal bh7_w43_16_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid343_Out0_copy344_c3 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid345_In0_c3 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid345_In1_c3 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid345_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w43_17_c3 :  std_logic;
signal bh7_w44_9_c3 :  std_logic;
signal bh7_w45_12_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid345_Out0_copy346_c3 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid347_In0_c3 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid347_In1_c3 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid347_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w45_13_c3 :  std_logic;
signal bh7_w46_7_c3 :  std_logic;
signal bh7_w47_8_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid347_Out0_copy348_c3 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In0_c3 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In1_c0, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In1_c1, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In1_c2, Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In1_c3 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_Out0_c3 :  std_logic_vector(2 downto 0);
signal bh7_w47_9_c3 :  std_logic;
signal Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_Out0_copy350_c3 :  std_logic_vector(2 downto 0);
signal tmp_bitheapResult_bh7_18_c3, tmp_bitheapResult_bh7_18_c4, tmp_bitheapResult_bh7_18_c5, tmp_bitheapResult_bh7_18_c6, tmp_bitheapResult_bh7_18_c7, tmp_bitheapResult_bh7_18_c8, tmp_bitheapResult_bh7_18_c9, tmp_bitheapResult_bh7_18_c10, tmp_bitheapResult_bh7_18_c11, tmp_bitheapResult_bh7_18_c12, tmp_bitheapResult_bh7_18_c13 :  std_logic_vector(18 downto 0);
signal bitheapFinalAdd_bh7_In0_c3 :  std_logic_vector(29 downto 0);
signal bitheapFinalAdd_bh7_In1_c3 :  std_logic_vector(29 downto 0);
signal bitheapFinalAdd_bh7_Cin_c0 :  std_logic;
signal bitheapFinalAdd_bh7_Out_c13 :  std_logic_vector(29 downto 0);
signal bitheapResult_bh7_c13 :  std_logic_vector(47 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               bh7_w44_2_c1 <= bh7_w44_2_c0;
               bh7_w41_4_c1 <= bh7_w41_4_c0;
               bh7_w17_1_c1 <= bh7_w17_1_c0;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_Out0_copy158_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_Out0_copy158_c0;
               Compressor_3_2_Freq800_2_034000_uid160_bh7_uid161_Out0_copy162_c1 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid161_Out0_copy162_c0;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_Out0_copy166_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_Out0_copy166_c0;
               Compressor_3_2_Freq800_2_034000_uid160_bh7_uid167_Out0_copy168_c1 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid167_Out0_copy168_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid171_Out0_copy172_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid171_Out0_copy172_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid173_Out0_copy174_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid173_Out0_copy174_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid175_Out0_copy176_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid175_Out0_copy176_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid177_Out0_copy178_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid177_Out0_copy178_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid179_Out0_copy180_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid179_Out0_copy180_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid181_Out0_copy182_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid181_Out0_copy182_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid183_Out0_copy184_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid183_Out0_copy184_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid185_Out0_copy186_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid185_Out0_copy186_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid187_Out0_copy188_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid187_Out0_copy188_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid189_Out0_copy190_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid189_Out0_copy190_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid191_Out0_copy192_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid191_Out0_copy192_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid193_Out0_copy194_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid193_Out0_copy194_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid195_Out0_copy196_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid195_Out0_copy196_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid197_Out0_copy198_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid197_Out0_copy198_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid199_Out0_copy200_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid199_Out0_copy200_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid201_Out0_copy202_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid201_Out0_copy202_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid203_Out0_copy204_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid203_Out0_copy204_c0;
               Compressor_6_3_Freq800_2_034000_uid170_bh7_uid205_Out0_copy206_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid205_Out0_copy206_c0;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_Out0_copy208_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_Out0_copy208_c0;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_Out0_copy210_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_Out0_copy210_c0;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_Out0_copy212_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_Out0_copy212_c0;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_Out0_copy214_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_Out0_copy214_c0;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_In1_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_In1_c0;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_In1_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_In1_c0;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_In1_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_In1_c0;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In1_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In1_c0;
            end if;
            if ce_2 = '1' then
               bh7_w17_1_c2 <= bh7_w17_1_c1;
               bh7_w18_2_c2 <= bh7_w18_2_c1;
               bh7_w19_3_c2 <= bh7_w19_3_c1;
               bh7_w20_6_c2 <= bh7_w20_6_c1;
               bh7_w21_7_c2 <= bh7_w21_7_c1;
               bh7_w24_9_c2 <= bh7_w24_9_c1;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_Out0_copy246_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_Out0_copy246_c1;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_Out0_copy248_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_Out0_copy248_c1;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_Out0_copy250_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_Out0_copy250_c1;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_Out0_copy252_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_Out0_copy252_c1;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_Out0_copy254_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_Out0_copy254_c1;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_Out0_copy256_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_Out0_copy256_c1;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_Out0_copy258_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_Out0_copy258_c1;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_Out0_copy260_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_Out0_copy260_c1;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_Out0_copy262_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_Out0_copy262_c1;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_Out0_copy264_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_Out0_copy264_c1;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_Out0_copy266_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_Out0_copy266_c1;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_Out0_copy268_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_Out0_copy268_c1;
               Compressor_3_2_Freq800_2_034000_uid160_bh7_uid269_Out0_copy270_c2 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid269_Out0_copy270_c1;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_In1_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_In1_c1;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_In1_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_In1_c1;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In1_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In1_c1;
            end if;
            if ce_3 = '1' then
               bh7_w0_0_c3 <= bh7_w0_0_c2;
               bh7_w1_0_c3 <= bh7_w1_0_c2;
               bh7_w2_0_c3 <= bh7_w2_0_c2;
               bh7_w3_0_c3 <= bh7_w3_0_c2;
               bh7_w4_0_c3 <= bh7_w4_0_c2;
               bh7_w5_0_c3 <= bh7_w5_0_c2;
               bh7_w6_0_c3 <= bh7_w6_0_c2;
               bh7_w7_0_c3 <= bh7_w7_0_c2;
               bh7_w8_0_c3 <= bh7_w8_0_c2;
               bh7_w9_0_c3 <= bh7_w9_0_c2;
               bh7_w10_0_c3 <= bh7_w10_0_c2;
               bh7_w11_0_c3 <= bh7_w11_0_c2;
               bh7_w12_0_c3 <= bh7_w12_0_c2;
               bh7_w13_0_c3 <= bh7_w13_0_c2;
               bh7_w14_0_c3 <= bh7_w14_0_c2;
               bh7_w15_0_c3 <= bh7_w15_0_c2;
               bh7_w16_0_c3 <= bh7_w16_0_c2;
               bh7_w26_0_c3 <= bh7_w26_0_c2;
               bh7_w27_0_c3 <= bh7_w27_0_c2;
               bh7_w28_0_c3 <= bh7_w28_0_c2;
               bh7_w29_0_c3 <= bh7_w29_0_c2;
               bh7_w30_0_c3 <= bh7_w30_0_c2;
               bh7_w31_0_c3 <= bh7_w31_0_c2;
               bh7_w32_0_c3 <= bh7_w32_0_c2;
               bh7_w33_0_c3 <= bh7_w33_0_c2;
               bh7_w34_0_c3 <= bh7_w34_0_c2;
               bh7_w35_0_c3 <= bh7_w35_0_c2;
               bh7_w36_0_c3 <= bh7_w36_0_c2;
               bh7_w37_0_c3 <= bh7_w37_0_c2;
               bh7_w38_0_c3 <= bh7_w38_0_c2;
               bh7_w39_0_c3 <= bh7_w39_0_c2;
               bh7_w40_0_c3 <= bh7_w40_0_c2;
               bh7_w28_12_c3 <= bh7_w28_12_c2;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_Out0_copy296_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_Out0_copy296_c2;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_Out0_copy298_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_Out0_copy298_c2;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_Out0_copy300_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_Out0_copy300_c2;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_Out0_copy302_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_Out0_copy302_c2;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_Out0_copy304_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_Out0_copy304_c2;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_Out0_copy306_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_Out0_copy306_c2;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_Out0_copy308_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_Out0_copy308_c2;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_Out0_copy310_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_Out0_copy310_c2;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_Out0_copy312_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_Out0_copy312_c2;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_Out0_copy314_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_Out0_copy314_c2;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_Out0_copy316_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_Out0_copy316_c2;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_Out0_copy318_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_Out0_copy318_c2;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_Out0_copy320_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_Out0_copy320_c2;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_Out0_copy322_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_Out0_copy322_c2;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_Out0_copy324_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_Out0_copy324_c2;
               Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_In0_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_In0_c2;
               Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In1_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In1_c2;
            end if;
            if ce_4 = '1' then
               tmp_bitheapResult_bh7_18_c4 <= tmp_bitheapResult_bh7_18_c3;
            end if;
            if ce_5 = '1' then
               tmp_bitheapResult_bh7_18_c5 <= tmp_bitheapResult_bh7_18_c4;
            end if;
            if ce_6 = '1' then
               tmp_bitheapResult_bh7_18_c6 <= tmp_bitheapResult_bh7_18_c5;
            end if;
            if ce_7 = '1' then
               tmp_bitheapResult_bh7_18_c7 <= tmp_bitheapResult_bh7_18_c6;
            end if;
            if ce_8 = '1' then
               tmp_bitheapResult_bh7_18_c8 <= tmp_bitheapResult_bh7_18_c7;
            end if;
            if ce_9 = '1' then
               tmp_bitheapResult_bh7_18_c9 <= tmp_bitheapResult_bh7_18_c8;
            end if;
            if ce_10 = '1' then
               tmp_bitheapResult_bh7_18_c10 <= tmp_bitheapResult_bh7_18_c9;
            end if;
            if ce_11 = '1' then
               tmp_bitheapResult_bh7_18_c11 <= tmp_bitheapResult_bh7_18_c10;
            end if;
            if ce_12 = '1' then
               tmp_bitheapResult_bh7_18_c12 <= tmp_bitheapResult_bh7_18_c11;
            end if;
            if ce_13 = '1' then
               tmp_bitheapResult_bh7_18_c13 <= tmp_bitheapResult_bh7_18_c12;
            end if;
         end if;
      end process;
   XX_m6_c0 <= X ;
   YY_m6_c0 <= Y ;
   tile_0_X_c0 <= X(16 downto 0);
   tile_0_Y_c0 <= Y(23 downto 0);
   tile_0_mult: DSPBlock_17x24_Freq800_2_034000_uid9
      port map ( clk  => clk,
                 ce_1 => ce_1,
                 ce_2=> ce_2,
                 X => tile_0_X_c0,
                 Y => tile_0_Y_c0,
                 R => tile_0_output_c2);

   tile_0_filtered_output_c2 <= unsigned(tile_0_output_c2(40 downto 0));
   bh7_w0_0_c2 <= tile_0_filtered_output_c2(0);
   bh7_w1_0_c2 <= tile_0_filtered_output_c2(1);
   bh7_w2_0_c2 <= tile_0_filtered_output_c2(2);
   bh7_w3_0_c2 <= tile_0_filtered_output_c2(3);
   bh7_w4_0_c2 <= tile_0_filtered_output_c2(4);
   bh7_w5_0_c2 <= tile_0_filtered_output_c2(5);
   bh7_w6_0_c2 <= tile_0_filtered_output_c2(6);
   bh7_w7_0_c2 <= tile_0_filtered_output_c2(7);
   bh7_w8_0_c2 <= tile_0_filtered_output_c2(8);
   bh7_w9_0_c2 <= tile_0_filtered_output_c2(9);
   bh7_w10_0_c2 <= tile_0_filtered_output_c2(10);
   bh7_w11_0_c2 <= tile_0_filtered_output_c2(11);
   bh7_w12_0_c2 <= tile_0_filtered_output_c2(12);
   bh7_w13_0_c2 <= tile_0_filtered_output_c2(13);
   bh7_w14_0_c2 <= tile_0_filtered_output_c2(14);
   bh7_w15_0_c2 <= tile_0_filtered_output_c2(15);
   bh7_w16_0_c2 <= tile_0_filtered_output_c2(16);
   bh7_w17_0_c2 <= tile_0_filtered_output_c2(17);
   bh7_w18_0_c2 <= tile_0_filtered_output_c2(18);
   bh7_w19_0_c2 <= tile_0_filtered_output_c2(19);
   bh7_w20_0_c2 <= tile_0_filtered_output_c2(20);
   bh7_w21_0_c2 <= tile_0_filtered_output_c2(21);
   bh7_w22_0_c2 <= tile_0_filtered_output_c2(22);
   bh7_w23_0_c2 <= tile_0_filtered_output_c2(23);
   bh7_w24_0_c2 <= tile_0_filtered_output_c2(24);
   bh7_w25_0_c2 <= tile_0_filtered_output_c2(25);
   bh7_w26_0_c2 <= tile_0_filtered_output_c2(26);
   bh7_w27_0_c2 <= tile_0_filtered_output_c2(27);
   bh7_w28_0_c2 <= tile_0_filtered_output_c2(28);
   bh7_w29_0_c2 <= tile_0_filtered_output_c2(29);
   bh7_w30_0_c2 <= tile_0_filtered_output_c2(30);
   bh7_w31_0_c2 <= tile_0_filtered_output_c2(31);
   bh7_w32_0_c2 <= tile_0_filtered_output_c2(32);
   bh7_w33_0_c2 <= tile_0_filtered_output_c2(33);
   bh7_w34_0_c2 <= tile_0_filtered_output_c2(34);
   bh7_w35_0_c2 <= tile_0_filtered_output_c2(35);
   bh7_w36_0_c2 <= tile_0_filtered_output_c2(36);
   bh7_w37_0_c2 <= tile_0_filtered_output_c2(37);
   bh7_w38_0_c2 <= tile_0_filtered_output_c2(38);
   bh7_w39_0_c2 <= tile_0_filtered_output_c2(39);
   bh7_w40_0_c2 <= tile_0_filtered_output_c2(40);
   tile_1_X_c0 <= X(23 downto 23);
   tile_1_Y_c0 <= Y(23 downto 22);
   tile_1_mult: IntMultiplierLUT_1x2_Freq800_2_034000_uid11
      port map ( clk  => clk,
                 X => tile_1_X_c0,
                 Y => tile_1_Y_c0,
                 R => tile_1_output_c0);

   tile_1_filtered_output_c0 <= unsigned(tile_1_output_c0(1 downto 0));
   bh7_w45_0_c0 <= tile_1_filtered_output_c0(0);
   bh7_w46_0_c0 <= tile_1_filtered_output_c0(1);
   tile_2_X_c0 <= X(22 downto 20);
   tile_2_Y_c0 <= Y(23 downto 22);
   tile_2_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid13
      port map ( clk  => clk,
                 X => tile_2_X_c0,
                 Y => tile_2_Y_c0,
                 R => tile_2_output_c0);

   tile_2_filtered_output_c0 <= unsigned(tile_2_output_c0(4 downto 0));
   bh7_w42_0_c0 <= tile_2_filtered_output_c0(0);
   bh7_w43_0_c0 <= tile_2_filtered_output_c0(1);
   bh7_w44_0_c0 <= tile_2_filtered_output_c0(2);
   bh7_w45_1_c0 <= tile_2_filtered_output_c0(3);
   bh7_w46_1_c0 <= tile_2_filtered_output_c0(4);
   tile_3_X_c0 <= X(19 downto 17);
   tile_3_Y_c0 <= Y(23 downto 22);
   tile_3_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid18
      port map ( clk  => clk,
                 X => tile_3_X_c0,
                 Y => tile_3_Y_c0,
                 R => tile_3_output_c0);

   tile_3_filtered_output_c0 <= unsigned(tile_3_output_c0(4 downto 0));
   bh7_w39_1_c0 <= tile_3_filtered_output_c0(0);
   bh7_w40_1_c0 <= tile_3_filtered_output_c0(1);
   bh7_w41_0_c0 <= tile_3_filtered_output_c0(2);
   bh7_w42_1_c0 <= tile_3_filtered_output_c0(3);
   bh7_w43_1_c0 <= tile_3_filtered_output_c0(4);
   tile_4_X_c0 <= X(23 downto 23);
   tile_4_Y_c0 <= Y(21 downto 20);
   tile_4_mult: IntMultiplierLUT_1x2_Freq800_2_034000_uid23
      port map ( clk  => clk,
                 X => tile_4_X_c0,
                 Y => tile_4_Y_c0,
                 R => tile_4_output_c0);

   tile_4_filtered_output_c0 <= unsigned(tile_4_output_c0(1 downto 0));
   bh7_w43_2_c0 <= tile_4_filtered_output_c0(0);
   bh7_w44_1_c0 <= tile_4_filtered_output_c0(1);
   tile_5_X_c0 <= X(22 downto 20);
   tile_5_Y_c0 <= Y(21 downto 20);
   tile_5_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid25
      port map ( clk  => clk,
                 X => tile_5_X_c0,
                 Y => tile_5_Y_c0,
                 R => tile_5_output_c0);

   tile_5_filtered_output_c0 <= unsigned(tile_5_output_c0(4 downto 0));
   bh7_w40_2_c0 <= tile_5_filtered_output_c0(0);
   bh7_w41_1_c0 <= tile_5_filtered_output_c0(1);
   bh7_w42_2_c0 <= tile_5_filtered_output_c0(2);
   bh7_w43_3_c0 <= tile_5_filtered_output_c0(3);
   bh7_w44_2_c0 <= tile_5_filtered_output_c0(4);
   tile_6_X_c0 <= X(19 downto 17);
   tile_6_Y_c0 <= Y(21 downto 20);
   tile_6_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid30
      port map ( clk  => clk,
                 X => tile_6_X_c0,
                 Y => tile_6_Y_c0,
                 R => tile_6_output_c0);

   tile_6_filtered_output_c0 <= unsigned(tile_6_output_c0(4 downto 0));
   bh7_w37_1_c0 <= tile_6_filtered_output_c0(0);
   bh7_w38_1_c0 <= tile_6_filtered_output_c0(1);
   bh7_w39_2_c0 <= tile_6_filtered_output_c0(2);
   bh7_w40_3_c0 <= tile_6_filtered_output_c0(3);
   bh7_w41_2_c0 <= tile_6_filtered_output_c0(4);
   tile_7_X_c0 <= X(23 downto 23);
   tile_7_Y_c0 <= Y(19 downto 18);
   tile_7_mult: IntMultiplierLUT_1x2_Freq800_2_034000_uid35
      port map ( clk  => clk,
                 X => tile_7_X_c0,
                 Y => tile_7_Y_c0,
                 R => tile_7_output_c0);

   tile_7_filtered_output_c0 <= unsigned(tile_7_output_c0(1 downto 0));
   bh7_w41_3_c0 <= tile_7_filtered_output_c0(0);
   bh7_w42_3_c0 <= tile_7_filtered_output_c0(1);
   tile_8_X_c0 <= X(22 downto 20);
   tile_8_Y_c0 <= Y(19 downto 18);
   tile_8_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid37
      port map ( clk  => clk,
                 X => tile_8_X_c0,
                 Y => tile_8_Y_c0,
                 R => tile_8_output_c0);

   tile_8_filtered_output_c0 <= unsigned(tile_8_output_c0(4 downto 0));
   bh7_w38_2_c0 <= tile_8_filtered_output_c0(0);
   bh7_w39_3_c0 <= tile_8_filtered_output_c0(1);
   bh7_w40_4_c0 <= tile_8_filtered_output_c0(2);
   bh7_w41_4_c0 <= tile_8_filtered_output_c0(3);
   bh7_w42_4_c0 <= tile_8_filtered_output_c0(4);
   tile_9_X_c0 <= X(19 downto 17);
   tile_9_Y_c0 <= Y(19 downto 18);
   tile_9_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid42
      port map ( clk  => clk,
                 X => tile_9_X_c0,
                 Y => tile_9_Y_c0,
                 R => tile_9_output_c0);

   tile_9_filtered_output_c0 <= unsigned(tile_9_output_c0(4 downto 0));
   bh7_w35_1_c0 <= tile_9_filtered_output_c0(0);
   bh7_w36_1_c0 <= tile_9_filtered_output_c0(1);
   bh7_w37_2_c0 <= tile_9_filtered_output_c0(2);
   bh7_w38_3_c0 <= tile_9_filtered_output_c0(3);
   bh7_w39_4_c0 <= tile_9_filtered_output_c0(4);
   tile_10_X_c0 <= X(23 downto 23);
   tile_10_Y_c0 <= Y(17 downto 16);
   tile_10_mult: IntMultiplierLUT_1x2_Freq800_2_034000_uid47
      port map ( clk  => clk,
                 X => tile_10_X_c0,
                 Y => tile_10_Y_c0,
                 R => tile_10_output_c0);

   tile_10_filtered_output_c0 <= unsigned(tile_10_output_c0(1 downto 0));
   bh7_w39_5_c0 <= tile_10_filtered_output_c0(0);
   bh7_w40_5_c0 <= tile_10_filtered_output_c0(1);
   tile_11_X_c0 <= X(22 downto 20);
   tile_11_Y_c0 <= Y(17 downto 16);
   tile_11_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid49
      port map ( clk  => clk,
                 X => tile_11_X_c0,
                 Y => tile_11_Y_c0,
                 R => tile_11_output_c0);

   tile_11_filtered_output_c0 <= unsigned(tile_11_output_c0(4 downto 0));
   bh7_w36_2_c0 <= tile_11_filtered_output_c0(0);
   bh7_w37_3_c0 <= tile_11_filtered_output_c0(1);
   bh7_w38_4_c0 <= tile_11_filtered_output_c0(2);
   bh7_w39_6_c0 <= tile_11_filtered_output_c0(3);
   bh7_w40_6_c0 <= tile_11_filtered_output_c0(4);
   tile_12_X_c0 <= X(19 downto 17);
   tile_12_Y_c0 <= Y(17 downto 16);
   tile_12_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid54
      port map ( clk  => clk,
                 X => tile_12_X_c0,
                 Y => tile_12_Y_c0,
                 R => tile_12_output_c0);

   tile_12_filtered_output_c0 <= unsigned(tile_12_output_c0(4 downto 0));
   bh7_w33_1_c0 <= tile_12_filtered_output_c0(0);
   bh7_w34_1_c0 <= tile_12_filtered_output_c0(1);
   bh7_w35_2_c0 <= tile_12_filtered_output_c0(2);
   bh7_w36_3_c0 <= tile_12_filtered_output_c0(3);
   bh7_w37_4_c0 <= tile_12_filtered_output_c0(4);
   tile_13_X_c0 <= X(23 downto 23);
   tile_13_Y_c0 <= Y(15 downto 14);
   tile_13_mult: IntMultiplierLUT_1x2_Freq800_2_034000_uid59
      port map ( clk  => clk,
                 X => tile_13_X_c0,
                 Y => tile_13_Y_c0,
                 R => tile_13_output_c0);

   tile_13_filtered_output_c0 <= unsigned(tile_13_output_c0(1 downto 0));
   bh7_w37_5_c0 <= tile_13_filtered_output_c0(0);
   bh7_w38_5_c0 <= tile_13_filtered_output_c0(1);
   tile_14_X_c0 <= X(22 downto 20);
   tile_14_Y_c0 <= Y(15 downto 14);
   tile_14_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid61
      port map ( clk  => clk,
                 X => tile_14_X_c0,
                 Y => tile_14_Y_c0,
                 R => tile_14_output_c0);

   tile_14_filtered_output_c0 <= unsigned(tile_14_output_c0(4 downto 0));
   bh7_w34_2_c0 <= tile_14_filtered_output_c0(0);
   bh7_w35_3_c0 <= tile_14_filtered_output_c0(1);
   bh7_w36_4_c0 <= tile_14_filtered_output_c0(2);
   bh7_w37_6_c0 <= tile_14_filtered_output_c0(3);
   bh7_w38_6_c0 <= tile_14_filtered_output_c0(4);
   tile_15_X_c0 <= X(19 downto 17);
   tile_15_Y_c0 <= Y(15 downto 14);
   tile_15_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid66
      port map ( clk  => clk,
                 X => tile_15_X_c0,
                 Y => tile_15_Y_c0,
                 R => tile_15_output_c0);

   tile_15_filtered_output_c0 <= unsigned(tile_15_output_c0(4 downto 0));
   bh7_w31_1_c0 <= tile_15_filtered_output_c0(0);
   bh7_w32_1_c0 <= tile_15_filtered_output_c0(1);
   bh7_w33_2_c0 <= tile_15_filtered_output_c0(2);
   bh7_w34_3_c0 <= tile_15_filtered_output_c0(3);
   bh7_w35_4_c0 <= tile_15_filtered_output_c0(4);
   tile_16_X_c0 <= X(23 downto 23);
   tile_16_Y_c0 <= Y(13 downto 12);
   tile_16_mult: IntMultiplierLUT_1x2_Freq800_2_034000_uid71
      port map ( clk  => clk,
                 X => tile_16_X_c0,
                 Y => tile_16_Y_c0,
                 R => tile_16_output_c0);

   tile_16_filtered_output_c0 <= unsigned(tile_16_output_c0(1 downto 0));
   bh7_w35_5_c0 <= tile_16_filtered_output_c0(0);
   bh7_w36_5_c0 <= tile_16_filtered_output_c0(1);
   tile_17_X_c0 <= X(22 downto 20);
   tile_17_Y_c0 <= Y(13 downto 12);
   tile_17_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid73
      port map ( clk  => clk,
                 X => tile_17_X_c0,
                 Y => tile_17_Y_c0,
                 R => tile_17_output_c0);

   tile_17_filtered_output_c0 <= unsigned(tile_17_output_c0(4 downto 0));
   bh7_w32_2_c0 <= tile_17_filtered_output_c0(0);
   bh7_w33_3_c0 <= tile_17_filtered_output_c0(1);
   bh7_w34_4_c0 <= tile_17_filtered_output_c0(2);
   bh7_w35_6_c0 <= tile_17_filtered_output_c0(3);
   bh7_w36_6_c0 <= tile_17_filtered_output_c0(4);
   tile_18_X_c0 <= X(19 downto 17);
   tile_18_Y_c0 <= Y(13 downto 12);
   tile_18_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid78
      port map ( clk  => clk,
                 X => tile_18_X_c0,
                 Y => tile_18_Y_c0,
                 R => tile_18_output_c0);

   tile_18_filtered_output_c0 <= unsigned(tile_18_output_c0(4 downto 0));
   bh7_w29_1_c0 <= tile_18_filtered_output_c0(0);
   bh7_w30_1_c0 <= tile_18_filtered_output_c0(1);
   bh7_w31_2_c0 <= tile_18_filtered_output_c0(2);
   bh7_w32_3_c0 <= tile_18_filtered_output_c0(3);
   bh7_w33_4_c0 <= tile_18_filtered_output_c0(4);
   tile_19_X_c0 <= X(23 downto 23);
   tile_19_Y_c0 <= Y(11 downto 10);
   tile_19_mult: IntMultiplierLUT_1x2_Freq800_2_034000_uid83
      port map ( clk  => clk,
                 X => tile_19_X_c0,
                 Y => tile_19_Y_c0,
                 R => tile_19_output_c0);

   tile_19_filtered_output_c0 <= unsigned(tile_19_output_c0(1 downto 0));
   bh7_w33_5_c0 <= tile_19_filtered_output_c0(0);
   bh7_w34_5_c0 <= tile_19_filtered_output_c0(1);
   tile_20_X_c0 <= X(22 downto 20);
   tile_20_Y_c0 <= Y(11 downto 10);
   tile_20_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid85
      port map ( clk  => clk,
                 X => tile_20_X_c0,
                 Y => tile_20_Y_c0,
                 R => tile_20_output_c0);

   tile_20_filtered_output_c0 <= unsigned(tile_20_output_c0(4 downto 0));
   bh7_w30_2_c0 <= tile_20_filtered_output_c0(0);
   bh7_w31_3_c0 <= tile_20_filtered_output_c0(1);
   bh7_w32_4_c0 <= tile_20_filtered_output_c0(2);
   bh7_w33_6_c0 <= tile_20_filtered_output_c0(3);
   bh7_w34_6_c0 <= tile_20_filtered_output_c0(4);
   tile_21_X_c0 <= X(19 downto 17);
   tile_21_Y_c0 <= Y(11 downto 10);
   tile_21_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid90
      port map ( clk  => clk,
                 X => tile_21_X_c0,
                 Y => tile_21_Y_c0,
                 R => tile_21_output_c0);

   tile_21_filtered_output_c0 <= unsigned(tile_21_output_c0(4 downto 0));
   bh7_w27_1_c0 <= tile_21_filtered_output_c0(0);
   bh7_w28_1_c0 <= tile_21_filtered_output_c0(1);
   bh7_w29_2_c0 <= tile_21_filtered_output_c0(2);
   bh7_w30_3_c0 <= tile_21_filtered_output_c0(3);
   bh7_w31_4_c0 <= tile_21_filtered_output_c0(4);
   tile_22_X_c0 <= X(23 downto 23);
   tile_22_Y_c0 <= Y(9 downto 8);
   tile_22_mult: IntMultiplierLUT_1x2_Freq800_2_034000_uid95
      port map ( clk  => clk,
                 X => tile_22_X_c0,
                 Y => tile_22_Y_c0,
                 R => tile_22_output_c0);

   tile_22_filtered_output_c0 <= unsigned(tile_22_output_c0(1 downto 0));
   bh7_w31_5_c0 <= tile_22_filtered_output_c0(0);
   bh7_w32_5_c0 <= tile_22_filtered_output_c0(1);
   tile_23_X_c0 <= X(22 downto 20);
   tile_23_Y_c0 <= Y(9 downto 8);
   tile_23_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid97
      port map ( clk  => clk,
                 X => tile_23_X_c0,
                 Y => tile_23_Y_c0,
                 R => tile_23_output_c0);

   tile_23_filtered_output_c0 <= unsigned(tile_23_output_c0(4 downto 0));
   bh7_w28_2_c0 <= tile_23_filtered_output_c0(0);
   bh7_w29_3_c0 <= tile_23_filtered_output_c0(1);
   bh7_w30_4_c0 <= tile_23_filtered_output_c0(2);
   bh7_w31_6_c0 <= tile_23_filtered_output_c0(3);
   bh7_w32_6_c0 <= tile_23_filtered_output_c0(4);
   tile_24_X_c0 <= X(19 downto 17);
   tile_24_Y_c0 <= Y(9 downto 8);
   tile_24_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid102
      port map ( clk  => clk,
                 X => tile_24_X_c0,
                 Y => tile_24_Y_c0,
                 R => tile_24_output_c0);

   tile_24_filtered_output_c0 <= unsigned(tile_24_output_c0(4 downto 0));
   bh7_w25_1_c0 <= tile_24_filtered_output_c0(0);
   bh7_w26_1_c0 <= tile_24_filtered_output_c0(1);
   bh7_w27_2_c0 <= tile_24_filtered_output_c0(2);
   bh7_w28_3_c0 <= tile_24_filtered_output_c0(3);
   bh7_w29_4_c0 <= tile_24_filtered_output_c0(4);
   tile_25_X_c0 <= X(23 downto 23);
   tile_25_Y_c0 <= Y(7 downto 6);
   tile_25_mult: IntMultiplierLUT_1x2_Freq800_2_034000_uid107
      port map ( clk  => clk,
                 X => tile_25_X_c0,
                 Y => tile_25_Y_c0,
                 R => tile_25_output_c0);

   tile_25_filtered_output_c0 <= unsigned(tile_25_output_c0(1 downto 0));
   bh7_w29_5_c0 <= tile_25_filtered_output_c0(0);
   bh7_w30_5_c0 <= tile_25_filtered_output_c0(1);
   tile_26_X_c0 <= X(22 downto 20);
   tile_26_Y_c0 <= Y(7 downto 6);
   tile_26_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid109
      port map ( clk  => clk,
                 X => tile_26_X_c0,
                 Y => tile_26_Y_c0,
                 R => tile_26_output_c0);

   tile_26_filtered_output_c0 <= unsigned(tile_26_output_c0(4 downto 0));
   bh7_w26_2_c0 <= tile_26_filtered_output_c0(0);
   bh7_w27_3_c0 <= tile_26_filtered_output_c0(1);
   bh7_w28_4_c0 <= tile_26_filtered_output_c0(2);
   bh7_w29_6_c0 <= tile_26_filtered_output_c0(3);
   bh7_w30_6_c0 <= tile_26_filtered_output_c0(4);
   tile_27_X_c0 <= X(19 downto 17);
   tile_27_Y_c0 <= Y(7 downto 6);
   tile_27_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid114
      port map ( clk  => clk,
                 X => tile_27_X_c0,
                 Y => tile_27_Y_c0,
                 R => tile_27_output_c0);

   tile_27_filtered_output_c0 <= unsigned(tile_27_output_c0(4 downto 0));
   bh7_w23_1_c0 <= tile_27_filtered_output_c0(0);
   bh7_w24_1_c0 <= tile_27_filtered_output_c0(1);
   bh7_w25_2_c0 <= tile_27_filtered_output_c0(2);
   bh7_w26_3_c0 <= tile_27_filtered_output_c0(3);
   bh7_w27_4_c0 <= tile_27_filtered_output_c0(4);
   tile_28_X_c0 <= X(23 downto 23);
   tile_28_Y_c0 <= Y(5 downto 4);
   tile_28_mult: IntMultiplierLUT_1x2_Freq800_2_034000_uid119
      port map ( clk  => clk,
                 X => tile_28_X_c0,
                 Y => tile_28_Y_c0,
                 R => tile_28_output_c0);

   tile_28_filtered_output_c0 <= unsigned(tile_28_output_c0(1 downto 0));
   bh7_w27_5_c0 <= tile_28_filtered_output_c0(0);
   bh7_w28_5_c0 <= tile_28_filtered_output_c0(1);
   tile_29_X_c0 <= X(22 downto 20);
   tile_29_Y_c0 <= Y(5 downto 4);
   tile_29_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid121
      port map ( clk  => clk,
                 X => tile_29_X_c0,
                 Y => tile_29_Y_c0,
                 R => tile_29_output_c0);

   tile_29_filtered_output_c0 <= unsigned(tile_29_output_c0(4 downto 0));
   bh7_w24_2_c0 <= tile_29_filtered_output_c0(0);
   bh7_w25_3_c0 <= tile_29_filtered_output_c0(1);
   bh7_w26_4_c0 <= tile_29_filtered_output_c0(2);
   bh7_w27_6_c0 <= tile_29_filtered_output_c0(3);
   bh7_w28_6_c0 <= tile_29_filtered_output_c0(4);
   tile_30_X_c0 <= X(19 downto 17);
   tile_30_Y_c0 <= Y(5 downto 4);
   tile_30_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid126
      port map ( clk  => clk,
                 X => tile_30_X_c0,
                 Y => tile_30_Y_c0,
                 R => tile_30_output_c0);

   tile_30_filtered_output_c0 <= unsigned(tile_30_output_c0(4 downto 0));
   bh7_w21_1_c0 <= tile_30_filtered_output_c0(0);
   bh7_w22_1_c0 <= tile_30_filtered_output_c0(1);
   bh7_w23_2_c0 <= tile_30_filtered_output_c0(2);
   bh7_w24_3_c0 <= tile_30_filtered_output_c0(3);
   bh7_w25_4_c0 <= tile_30_filtered_output_c0(4);
   tile_31_X_c0 <= X(23 downto 23);
   tile_31_Y_c0 <= Y(3 downto 2);
   tile_31_mult: IntMultiplierLUT_1x2_Freq800_2_034000_uid131
      port map ( clk  => clk,
                 X => tile_31_X_c0,
                 Y => tile_31_Y_c0,
                 R => tile_31_output_c0);

   tile_31_filtered_output_c0 <= unsigned(tile_31_output_c0(1 downto 0));
   bh7_w25_5_c0 <= tile_31_filtered_output_c0(0);
   bh7_w26_5_c0 <= tile_31_filtered_output_c0(1);
   tile_32_X_c0 <= X(22 downto 20);
   tile_32_Y_c0 <= Y(3 downto 2);
   tile_32_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid133
      port map ( clk  => clk,
                 X => tile_32_X_c0,
                 Y => tile_32_Y_c0,
                 R => tile_32_output_c0);

   tile_32_filtered_output_c0 <= unsigned(tile_32_output_c0(4 downto 0));
   bh7_w22_2_c0 <= tile_32_filtered_output_c0(0);
   bh7_w23_3_c0 <= tile_32_filtered_output_c0(1);
   bh7_w24_4_c0 <= tile_32_filtered_output_c0(2);
   bh7_w25_6_c0 <= tile_32_filtered_output_c0(3);
   bh7_w26_6_c0 <= tile_32_filtered_output_c0(4);
   tile_33_X_c0 <= X(19 downto 17);
   tile_33_Y_c0 <= Y(3 downto 2);
   tile_33_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid138
      port map ( clk  => clk,
                 X => tile_33_X_c0,
                 Y => tile_33_Y_c0,
                 R => tile_33_output_c0);

   tile_33_filtered_output_c0 <= unsigned(tile_33_output_c0(4 downto 0));
   bh7_w19_1_c0 <= tile_33_filtered_output_c0(0);
   bh7_w20_1_c0 <= tile_33_filtered_output_c0(1);
   bh7_w21_2_c0 <= tile_33_filtered_output_c0(2);
   bh7_w22_3_c0 <= tile_33_filtered_output_c0(3);
   bh7_w23_4_c0 <= tile_33_filtered_output_c0(4);
   tile_34_X_c0 <= X(23 downto 23);
   tile_34_Y_c0 <= Y(1 downto 0);
   tile_34_mult: IntMultiplierLUT_1x2_Freq800_2_034000_uid143
      port map ( clk  => clk,
                 X => tile_34_X_c0,
                 Y => tile_34_Y_c0,
                 R => tile_34_output_c0);

   tile_34_filtered_output_c0 <= unsigned(tile_34_output_c0(1 downto 0));
   bh7_w23_5_c0 <= tile_34_filtered_output_c0(0);
   bh7_w24_5_c0 <= tile_34_filtered_output_c0(1);
   tile_35_X_c0 <= X(22 downto 20);
   tile_35_Y_c0 <= Y(1 downto 0);
   tile_35_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid145
      port map ( clk  => clk,
                 X => tile_35_X_c0,
                 Y => tile_35_Y_c0,
                 R => tile_35_output_c0);

   tile_35_filtered_output_c0 <= unsigned(tile_35_output_c0(4 downto 0));
   bh7_w20_2_c0 <= tile_35_filtered_output_c0(0);
   bh7_w21_3_c0 <= tile_35_filtered_output_c0(1);
   bh7_w22_4_c0 <= tile_35_filtered_output_c0(2);
   bh7_w23_6_c0 <= tile_35_filtered_output_c0(3);
   bh7_w24_6_c0 <= tile_35_filtered_output_c0(4);
   tile_36_X_c0 <= X(19 downto 17);
   tile_36_Y_c0 <= Y(1 downto 0);
   tile_36_mult: IntMultiplierLUT_3x2_Freq800_2_034000_uid150
      port map ( clk  => clk,
                 X => tile_36_X_c0,
                 Y => tile_36_Y_c0,
                 R => tile_36_output_c0);

   tile_36_filtered_output_c0 <= unsigned(tile_36_output_c0(4 downto 0));
   bh7_w17_1_c0 <= tile_36_filtered_output_c0(0);
   bh7_w18_1_c0 <= tile_36_filtered_output_c0(1);
   bh7_w19_2_c0 <= tile_36_filtered_output_c0(2);
   bh7_w20_3_c0 <= tile_36_filtered_output_c0(3);
   bh7_w21_4_c0 <= tile_36_filtered_output_c0(4);

   -- Adding the constant bits 
      -- All the constant bits are zero, nothing to add


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_In0_c0 <= "" & bh7_w18_1_c0 & "0" & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_In1_c0 <= "" & bh7_w19_1_c0 & bh7_w19_2_c0;
   bh7_w18_2_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_Out0_c1(0);
   bh7_w19_3_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_Out0_c1(1);
   bh7_w20_4_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_Out0_c1(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid157: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_In0_c0,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_In1_c0,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_Out0_copy158_c0);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_Out0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid157_Out0_copy158_c1; -- output copy to hold a pipeline register if needed


   Compressor_3_2_Freq800_2_034000_uid160_bh7_uid161_In0_c0 <= "" & bh7_w20_1_c0 & bh7_w20_2_c0 & bh7_w20_3_c0;
   bh7_w20_5_c1 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid161_Out0_c1(0);
   bh7_w21_5_c1 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid161_Out0_c1(1);
   Compressor_3_2_Freq800_2_034000_uid160_uid161: Compressor_3_2_Freq800_2_034000_uid160
      port map ( X0 => Compressor_3_2_Freq800_2_034000_uid160_bh7_uid161_In0_c0,
                 R => Compressor_3_2_Freq800_2_034000_uid160_bh7_uid161_Out0_copy162_c0);
   Compressor_3_2_Freq800_2_034000_uid160_bh7_uid161_Out0_c1 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid161_Out0_copy162_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_In0_c0 <= "" & bh7_w21_1_c0 & bh7_w21_2_c0 & bh7_w21_3_c0 & bh7_w21_4_c0;
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_In1_c0 <= "" & bh7_w22_1_c0;
   bh7_w21_6_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_Out0_c1(0);
   bh7_w22_5_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_Out0_c1(1);
   bh7_w23_7_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_Out0_c1(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid165: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_In0_c0,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_In1_c0,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_Out0_copy166_c0);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_Out0_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid165_Out0_copy166_c1; -- output copy to hold a pipeline register if needed


   Compressor_3_2_Freq800_2_034000_uid160_bh7_uid167_In0_c0 <= "" & bh7_w22_2_c0 & bh7_w22_3_c0 & bh7_w22_4_c0;
   bh7_w22_6_c1 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid167_Out0_c1(0);
   bh7_w23_8_c1 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid167_Out0_c1(1);
   Compressor_3_2_Freq800_2_034000_uid160_uid167: Compressor_3_2_Freq800_2_034000_uid160
      port map ( X0 => Compressor_3_2_Freq800_2_034000_uid160_bh7_uid167_In0_c0,
                 R => Compressor_3_2_Freq800_2_034000_uid160_bh7_uid167_Out0_copy168_c0);
   Compressor_3_2_Freq800_2_034000_uid160_bh7_uid167_Out0_c1 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid167_Out0_copy168_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid171_In0_c0 <= "" & bh7_w23_1_c0 & bh7_w23_2_c0 & bh7_w23_3_c0 & bh7_w23_4_c0 & bh7_w23_5_c0 & bh7_w23_6_c0;
   bh7_w23_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid171_Out0_c1(0);
   bh7_w24_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid171_Out0_c1(1);
   bh7_w25_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid171_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid171: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid171_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid171_Out0_copy172_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid171_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid171_Out0_copy172_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid173_In0_c0 <= "" & bh7_w24_1_c0 & bh7_w24_2_c0 & bh7_w24_3_c0 & bh7_w24_4_c0 & bh7_w24_5_c0 & bh7_w24_6_c0;
   bh7_w24_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid173_Out0_c1(0);
   bh7_w25_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid173_Out0_c1(1);
   bh7_w26_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid173_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid173: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid173_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid173_Out0_copy174_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid173_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid173_Out0_copy174_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid175_In0_c0 <= "" & bh7_w25_1_c0 & bh7_w25_2_c0 & bh7_w25_3_c0 & bh7_w25_4_c0 & bh7_w25_5_c0 & bh7_w25_6_c0;
   bh7_w25_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid175_Out0_c1(0);
   bh7_w26_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid175_Out0_c1(1);
   bh7_w27_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid175_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid175: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid175_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid175_Out0_copy176_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid175_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid175_Out0_copy176_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid177_In0_c0 <= "" & bh7_w26_1_c0 & bh7_w26_2_c0 & bh7_w26_3_c0 & bh7_w26_4_c0 & bh7_w26_5_c0 & bh7_w26_6_c0;
   bh7_w26_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid177_Out0_c1(0);
   bh7_w27_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid177_Out0_c1(1);
   bh7_w28_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid177_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid177: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid177_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid177_Out0_copy178_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid177_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid177_Out0_copy178_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid179_In0_c0 <= "" & bh7_w27_1_c0 & bh7_w27_2_c0 & bh7_w27_3_c0 & bh7_w27_4_c0 & bh7_w27_5_c0 & bh7_w27_6_c0;
   bh7_w27_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid179_Out0_c1(0);
   bh7_w28_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid179_Out0_c1(1);
   bh7_w29_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid179_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid179: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid179_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid179_Out0_copy180_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid179_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid179_Out0_copy180_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid181_In0_c0 <= "" & bh7_w28_1_c0 & bh7_w28_2_c0 & bh7_w28_3_c0 & bh7_w28_4_c0 & bh7_w28_5_c0 & bh7_w28_6_c0;
   bh7_w28_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid181_Out0_c1(0);
   bh7_w29_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid181_Out0_c1(1);
   bh7_w30_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid181_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid181: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid181_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid181_Out0_copy182_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid181_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid181_Out0_copy182_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid183_In0_c0 <= "" & bh7_w29_1_c0 & bh7_w29_2_c0 & bh7_w29_3_c0 & bh7_w29_4_c0 & bh7_w29_5_c0 & bh7_w29_6_c0;
   bh7_w29_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid183_Out0_c1(0);
   bh7_w30_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid183_Out0_c1(1);
   bh7_w31_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid183_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid183: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid183_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid183_Out0_copy184_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid183_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid183_Out0_copy184_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid185_In0_c0 <= "" & bh7_w30_1_c0 & bh7_w30_2_c0 & bh7_w30_3_c0 & bh7_w30_4_c0 & bh7_w30_5_c0 & bh7_w30_6_c0;
   bh7_w30_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid185_Out0_c1(0);
   bh7_w31_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid185_Out0_c1(1);
   bh7_w32_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid185_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid185: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid185_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid185_Out0_copy186_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid185_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid185_Out0_copy186_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid187_In0_c0 <= "" & bh7_w31_1_c0 & bh7_w31_2_c0 & bh7_w31_3_c0 & bh7_w31_4_c0 & bh7_w31_5_c0 & bh7_w31_6_c0;
   bh7_w31_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid187_Out0_c1(0);
   bh7_w32_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid187_Out0_c1(1);
   bh7_w33_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid187_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid187: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid187_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid187_Out0_copy188_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid187_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid187_Out0_copy188_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid189_In0_c0 <= "" & bh7_w32_1_c0 & bh7_w32_2_c0 & bh7_w32_3_c0 & bh7_w32_4_c0 & bh7_w32_5_c0 & bh7_w32_6_c0;
   bh7_w32_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid189_Out0_c1(0);
   bh7_w33_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid189_Out0_c1(1);
   bh7_w34_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid189_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid189: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid189_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid189_Out0_copy190_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid189_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid189_Out0_copy190_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid191_In0_c0 <= "" & bh7_w33_1_c0 & bh7_w33_2_c0 & bh7_w33_3_c0 & bh7_w33_4_c0 & bh7_w33_5_c0 & bh7_w33_6_c0;
   bh7_w33_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid191_Out0_c1(0);
   bh7_w34_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid191_Out0_c1(1);
   bh7_w35_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid191_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid191: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid191_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid191_Out0_copy192_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid191_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid191_Out0_copy192_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid193_In0_c0 <= "" & bh7_w34_1_c0 & bh7_w34_2_c0 & bh7_w34_3_c0 & bh7_w34_4_c0 & bh7_w34_5_c0 & bh7_w34_6_c0;
   bh7_w34_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid193_Out0_c1(0);
   bh7_w35_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid193_Out0_c1(1);
   bh7_w36_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid193_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid193: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid193_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid193_Out0_copy194_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid193_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid193_Out0_copy194_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid195_In0_c0 <= "" & bh7_w35_1_c0 & bh7_w35_2_c0 & bh7_w35_3_c0 & bh7_w35_4_c0 & bh7_w35_5_c0 & bh7_w35_6_c0;
   bh7_w35_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid195_Out0_c1(0);
   bh7_w36_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid195_Out0_c1(1);
   bh7_w37_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid195_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid195: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid195_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid195_Out0_copy196_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid195_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid195_Out0_copy196_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid197_In0_c0 <= "" & bh7_w36_1_c0 & bh7_w36_2_c0 & bh7_w36_3_c0 & bh7_w36_4_c0 & bh7_w36_5_c0 & bh7_w36_6_c0;
   bh7_w36_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid197_Out0_c1(0);
   bh7_w37_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid197_Out0_c1(1);
   bh7_w38_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid197_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid197: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid197_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid197_Out0_copy198_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid197_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid197_Out0_copy198_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid199_In0_c0 <= "" & bh7_w37_1_c0 & bh7_w37_2_c0 & bh7_w37_3_c0 & bh7_w37_4_c0 & bh7_w37_5_c0 & bh7_w37_6_c0;
   bh7_w37_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid199_Out0_c1(0);
   bh7_w38_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid199_Out0_c1(1);
   bh7_w39_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid199_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid199: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid199_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid199_Out0_copy200_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid199_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid199_Out0_copy200_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid201_In0_c0 <= "" & bh7_w38_1_c0 & bh7_w38_2_c0 & bh7_w38_3_c0 & bh7_w38_4_c0 & bh7_w38_5_c0 & bh7_w38_6_c0;
   bh7_w38_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid201_Out0_c1(0);
   bh7_w39_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid201_Out0_c1(1);
   bh7_w40_7_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid201_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid201: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid201_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid201_Out0_copy202_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid201_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid201_Out0_copy202_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid203_In0_c0 <= "" & bh7_w39_1_c0 & bh7_w39_2_c0 & bh7_w39_3_c0 & bh7_w39_4_c0 & bh7_w39_5_c0 & bh7_w39_6_c0;
   bh7_w39_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid203_Out0_c1(0);
   bh7_w40_8_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid203_Out0_c1(1);
   bh7_w41_5_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid203_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid203: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid203_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid203_Out0_copy204_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid203_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid203_Out0_copy204_c1; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid205_In0_c0 <= "" & bh7_w40_1_c0 & bh7_w40_2_c0 & bh7_w40_3_c0 & bh7_w40_4_c0 & bh7_w40_5_c0 & bh7_w40_6_c0;
   bh7_w40_9_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid205_Out0_c1(0);
   bh7_w41_6_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid205_Out0_c1(1);
   bh7_w42_5_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid205_Out0_c1(2);
   Compressor_6_3_Freq800_2_034000_uid170_uid205: Compressor_6_3_Freq800_2_034000_uid170
      port map ( X0 => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid205_In0_c0,
                 R => Compressor_6_3_Freq800_2_034000_uid170_bh7_uid205_Out0_copy206_c0);
   Compressor_6_3_Freq800_2_034000_uid170_bh7_uid205_Out0_c1 <= Compressor_6_3_Freq800_2_034000_uid170_bh7_uid205_Out0_copy206_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_In0_c0 <= "" & bh7_w41_0_c0 & bh7_w41_1_c0 & bh7_w41_2_c0 & bh7_w41_3_c0;
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_In1_c0 <= "" & bh7_w42_0_c0;
   bh7_w41_7_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_Out0_c1(0);
   bh7_w42_6_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_Out0_c1(1);
   bh7_w43_4_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_Out0_c1(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid207: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_In0_c0,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_In1_c0,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_Out0_copy208_c0);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_Out0_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid207_Out0_copy208_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_In0_c0 <= "" & bh7_w42_1_c0 & bh7_w42_2_c0 & bh7_w42_3_c0 & bh7_w42_4_c0;
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_In1_c0 <= "" & bh7_w43_0_c0;
   bh7_w42_7_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_Out0_c1(0);
   bh7_w43_5_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_Out0_c1(1);
   bh7_w44_3_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_Out0_c1(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid209: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_In0_c0,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_In1_c0,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_Out0_copy210_c0);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_Out0_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid209_Out0_copy210_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_In0_c0 <= "" & bh7_w43_1_c0 & bh7_w43_2_c0 & bh7_w43_3_c0;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_In1_c0 <= "" & bh7_w44_0_c0 & bh7_w44_1_c0;
   bh7_w43_6_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_Out0_c1(0);
   bh7_w44_4_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_Out0_c1(1);
   bh7_w45_2_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_Out0_c1(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid211: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_In0_c0,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_In1_c0,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_Out0_copy212_c0);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_Out0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid211_Out0_copy212_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_In0_c0 <= "" & bh7_w45_0_c0 & bh7_w45_1_c0 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_In1_c0 <= "" & bh7_w46_0_c0 & bh7_w46_1_c0;
   bh7_w45_3_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_Out0_c1(0);
   bh7_w46_2_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_Out0_c1(1);
   bh7_w47_0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_Out0_c1(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid213: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_In0_c0,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_In1_c0,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_Out0_copy214_c0);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_Out0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid213_Out0_copy214_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid215_In0_c1 <= "" & bh7_w20_5_c1 & bh7_w20_4_c1 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid215_In1_c1 <= "" & bh7_w21_6_c1 & bh7_w21_5_c1;
   bh7_w20_6_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid215_Out0_c1(0);
   bh7_w21_7_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid215_Out0_c1(1);
   bh7_w22_7_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid215_Out0_c1(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid215: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid215_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid215_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid215_Out0_copy216_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid215_Out0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid215_Out0_copy216_c1; -- output copy to hold a pipeline register if needed


   Compressor_3_2_Freq800_2_034000_uid160_bh7_uid217_In0_c1 <= "" & bh7_w22_6_c1 & bh7_w22_5_c1 & "0";
   bh7_w22_8_c1 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid217_Out0_c1(0);
   bh7_w23_10_c1 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid217_Out0_c1(1);
   Compressor_3_2_Freq800_2_034000_uid160_uid217: Compressor_3_2_Freq800_2_034000_uid160
      port map ( X0 => Compressor_3_2_Freq800_2_034000_uid160_bh7_uid217_In0_c1,
                 R => Compressor_3_2_Freq800_2_034000_uid160_bh7_uid217_Out0_copy218_c1);
   Compressor_3_2_Freq800_2_034000_uid160_bh7_uid217_Out0_c1 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid217_Out0_copy218_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid219_In0_c1 <= "" & bh7_w23_8_c1 & bh7_w23_7_c1 & bh7_w23_9_c1;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid219_In1_c1 <= "" & bh7_w24_8_c1 & bh7_w24_7_c1;
   bh7_w23_11_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid219_Out0_c1(0);
   bh7_w24_9_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid219_Out0_c1(1);
   bh7_w25_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid219_Out0_c1(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid219: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid219_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid219_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid219_Out0_copy220_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid219_Out0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid219_Out0_copy220_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid221_In0_c1 <= "" & bh7_w25_9_c1 & bh7_w25_8_c1 & bh7_w25_7_c1;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid221_In1_c1 <= "" & bh7_w26_9_c1 & bh7_w26_8_c1;
   bh7_w25_11_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid221_Out0_c1(0);
   bh7_w26_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid221_Out0_c1(1);
   bh7_w27_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid221_Out0_c1(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid221: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid221_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid221_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid221_Out0_copy222_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid221_Out0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid221_Out0_copy222_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid223_In0_c1 <= "" & bh7_w27_9_c1 & bh7_w27_8_c1 & bh7_w27_7_c1;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid223_In1_c1 <= "" & bh7_w28_9_c1 & bh7_w28_8_c1;
   bh7_w27_11_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid223_Out0_c1(0);
   bh7_w28_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid223_Out0_c1(1);
   bh7_w29_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid223_Out0_c1(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid223: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid223_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid223_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid223_Out0_copy224_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid223_Out0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid223_Out0_copy224_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid225_In0_c1 <= "" & bh7_w29_9_c1 & bh7_w29_8_c1 & bh7_w29_7_c1;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid225_In1_c1 <= "" & bh7_w30_9_c1 & bh7_w30_8_c1;
   bh7_w29_11_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid225_Out0_c1(0);
   bh7_w30_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid225_Out0_c1(1);
   bh7_w31_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid225_Out0_c1(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid225: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid225_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid225_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid225_Out0_copy226_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid225_Out0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid225_Out0_copy226_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid227_In0_c1 <= "" & bh7_w31_9_c1 & bh7_w31_8_c1 & bh7_w31_7_c1;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid227_In1_c1 <= "" & bh7_w32_9_c1 & bh7_w32_8_c1;
   bh7_w31_11_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid227_Out0_c1(0);
   bh7_w32_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid227_Out0_c1(1);
   bh7_w33_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid227_Out0_c1(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid227: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid227_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid227_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid227_Out0_copy228_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid227_Out0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid227_Out0_copy228_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid229_In0_c1 <= "" & bh7_w33_9_c1 & bh7_w33_8_c1 & bh7_w33_7_c1;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid229_In1_c1 <= "" & bh7_w34_9_c1 & bh7_w34_8_c1;
   bh7_w33_11_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid229_Out0_c1(0);
   bh7_w34_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid229_Out0_c1(1);
   bh7_w35_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid229_Out0_c1(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid229: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid229_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid229_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid229_Out0_copy230_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid229_Out0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid229_Out0_copy230_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid231_In0_c1 <= "" & bh7_w35_9_c1 & bh7_w35_8_c1 & bh7_w35_7_c1;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid231_In1_c1 <= "" & bh7_w36_9_c1 & bh7_w36_8_c1;
   bh7_w35_11_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid231_Out0_c1(0);
   bh7_w36_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid231_Out0_c1(1);
   bh7_w37_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid231_Out0_c1(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid231: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid231_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid231_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid231_Out0_copy232_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid231_Out0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid231_Out0_copy232_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid233_In0_c1 <= "" & bh7_w37_9_c1 & bh7_w37_8_c1 & bh7_w37_7_c1;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid233_In1_c1 <= "" & bh7_w38_9_c1 & bh7_w38_8_c1;
   bh7_w37_11_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid233_Out0_c1(0);
   bh7_w38_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid233_Out0_c1(1);
   bh7_w39_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid233_Out0_c1(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid233: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid233_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid233_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid233_Out0_copy234_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid233_Out0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid233_Out0_copy234_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid235_In0_c1 <= "" & bh7_w39_9_c1 & bh7_w39_8_c1 & bh7_w39_7_c1;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid235_In1_c1 <= "" & bh7_w40_9_c1 & bh7_w40_8_c1;
   bh7_w39_11_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid235_Out0_c1(0);
   bh7_w40_10_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid235_Out0_c1(1);
   bh7_w41_8_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid235_Out0_c1(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid235: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid235_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid235_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid235_Out0_copy236_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid235_Out0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid235_Out0_copy236_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_In0_c1 <= "" & bh7_w41_4_c1 & bh7_w41_7_c1 & bh7_w41_6_c1 & bh7_w41_5_c1;
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_In1_c0 <= "" & "0";
   bh7_w41_9_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_Out0_c1(0);
   bh7_w42_8_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_Out0_c1(1);
   bh7_w43_7_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_Out0_c1(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid237: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_In0_c1,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_In1_c1,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_Out0_copy238_c1);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_Out0_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid237_Out0_copy238_c1; -- output copy to hold a pipeline register if needed


   Compressor_3_2_Freq800_2_034000_uid160_bh7_uid239_In0_c1 <= "" & bh7_w42_7_c1 & bh7_w42_6_c1 & bh7_w42_5_c1;
   bh7_w42_9_c1 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid239_Out0_c1(0);
   bh7_w43_8_c1 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid239_Out0_c1(1);
   Compressor_3_2_Freq800_2_034000_uid160_uid239: Compressor_3_2_Freq800_2_034000_uid160
      port map ( X0 => Compressor_3_2_Freq800_2_034000_uid160_bh7_uid239_In0_c1,
                 R => Compressor_3_2_Freq800_2_034000_uid160_bh7_uid239_Out0_copy240_c1);
   Compressor_3_2_Freq800_2_034000_uid160_bh7_uid239_Out0_c1 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid239_Out0_copy240_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid241_In0_c1 <= "" & bh7_w43_6_c1 & bh7_w43_5_c1 & bh7_w43_4_c1;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid241_In1_c1 <= "" & bh7_w44_2_c1 & bh7_w44_4_c1;
   bh7_w43_9_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid241_Out0_c1(0);
   bh7_w44_5_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid241_Out0_c1(1);
   bh7_w45_4_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid241_Out0_c1(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid241: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid241_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid241_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid241_Out0_copy242_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid241_Out0_c1 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid241_Out0_copy242_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid243_In0_c1 <= "" & bh7_w45_3_c1 & bh7_w45_2_c1 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid243_In1_c1 <= "" & bh7_w46_2_c1;
   bh7_w45_5_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid243_Out0_c1(0);
   bh7_w46_3_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid243_Out0_c1(1);
   bh7_w47_1_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid243_Out0_c1(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid243: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid243_In0_c1,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid243_In1_c1,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid243_Out0_copy244_c1);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid243_Out0_c1 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid243_Out0_copy244_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_In0_c1 <= "" & bh7_w22_8_c1 & bh7_w22_7_c1 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_In1_c1 <= "" & bh7_w23_10_c1 & bh7_w23_11_c1;
   bh7_w22_9_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_Out0_c2(0);
   bh7_w23_12_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_Out0_c2(1);
   bh7_w24_10_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_Out0_c2(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid245: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_Out0_copy246_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_Out0_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid245_Out0_copy246_c2; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_In0_c1 <= "" & bh7_w25_11_c1 & bh7_w25_10_c1 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_In1_c1 <= "" & bh7_w26_7_c1 & bh7_w26_10_c1;
   bh7_w25_12_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_Out0_c2(0);
   bh7_w26_11_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_Out0_c2(1);
   bh7_w27_12_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_Out0_c2(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid247: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_Out0_copy248_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_Out0_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid247_Out0_copy248_c2; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_In0_c1 <= "" & bh7_w27_11_c1 & bh7_w27_10_c1 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_In1_c1 <= "" & bh7_w28_7_c1 & bh7_w28_10_c1;
   bh7_w27_13_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_Out0_c2(0);
   bh7_w28_11_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_Out0_c2(1);
   bh7_w29_12_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_Out0_c2(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid249: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_Out0_copy250_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_Out0_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid249_Out0_copy250_c2; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_In0_c1 <= "" & bh7_w29_11_c1 & bh7_w29_10_c1 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_In1_c1 <= "" & bh7_w30_7_c1 & bh7_w30_10_c1;
   bh7_w29_13_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_Out0_c2(0);
   bh7_w30_11_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_Out0_c2(1);
   bh7_w31_12_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_Out0_c2(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid251: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_Out0_copy252_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_Out0_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid251_Out0_copy252_c2; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_In0_c1 <= "" & bh7_w31_11_c1 & bh7_w31_10_c1 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_In1_c1 <= "" & bh7_w32_7_c1 & bh7_w32_10_c1;
   bh7_w31_13_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_Out0_c2(0);
   bh7_w32_11_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_Out0_c2(1);
   bh7_w33_12_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_Out0_c2(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid253: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_Out0_copy254_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_Out0_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid253_Out0_copy254_c2; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_In0_c1 <= "" & bh7_w33_11_c1 & bh7_w33_10_c1 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_In1_c1 <= "" & bh7_w34_7_c1 & bh7_w34_10_c1;
   bh7_w33_13_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_Out0_c2(0);
   bh7_w34_11_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_Out0_c2(1);
   bh7_w35_12_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_Out0_c2(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid255: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_Out0_copy256_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_Out0_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid255_Out0_copy256_c2; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_In0_c1 <= "" & bh7_w35_11_c1 & bh7_w35_10_c1 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_In1_c1 <= "" & bh7_w36_7_c1 & bh7_w36_10_c1;
   bh7_w35_13_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_Out0_c2(0);
   bh7_w36_11_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_Out0_c2(1);
   bh7_w37_12_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_Out0_c2(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid257: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_Out0_copy258_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_Out0_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid257_Out0_copy258_c2; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_In0_c1 <= "" & bh7_w37_11_c1 & bh7_w37_10_c1 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_In1_c1 <= "" & bh7_w38_7_c1 & bh7_w38_10_c1;
   bh7_w37_13_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_Out0_c2(0);
   bh7_w38_11_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_Out0_c2(1);
   bh7_w39_12_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_Out0_c2(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid259: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_Out0_copy260_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_Out0_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid259_Out0_copy260_c2; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_In0_c1 <= "" & bh7_w39_11_c1 & bh7_w39_10_c1 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_In1_c1 <= "" & bh7_w40_7_c1 & bh7_w40_10_c1;
   bh7_w39_13_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_Out0_c2(0);
   bh7_w40_11_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_Out0_c2(1);
   bh7_w41_10_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_Out0_c2(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid261: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_Out0_copy262_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_Out0_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid261_Out0_copy262_c2; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_In0_c1 <= "" & bh7_w41_9_c1 & bh7_w41_8_c1 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_In1_c1 <= "" & bh7_w42_8_c1 & bh7_w42_9_c1;
   bh7_w41_11_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_Out0_c2(0);
   bh7_w42_10_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_Out0_c2(1);
   bh7_w43_10_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_Out0_c2(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid263: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_Out0_copy264_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_Out0_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid263_Out0_copy264_c2; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_In0_c1 <= "" & bh7_w43_7_c1 & bh7_w43_9_c1 & bh7_w43_8_c1;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_In1_c1 <= "" & bh7_w44_3_c1 & bh7_w44_5_c1;
   bh7_w43_11_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_Out0_c2(0);
   bh7_w44_6_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_Out0_c2(1);
   bh7_w45_6_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_Out0_c2(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid265: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_In0_c1,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_In1_c1,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_Out0_copy266_c1);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_Out0_c2 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid265_Out0_copy266_c2; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_In0_c1 <= "" & bh7_w45_5_c1 & bh7_w45_4_c1 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_In1_c1 <= "" & bh7_w46_3_c1;
   bh7_w45_7_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_Out0_c2(0);
   bh7_w46_4_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_Out0_c2(1);
   bh7_w47_2_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_Out0_c2(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid267: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_In0_c1,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_In1_c1,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_Out0_copy268_c1);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_Out0_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid267_Out0_copy268_c2; -- output copy to hold a pipeline register if needed


   Compressor_3_2_Freq800_2_034000_uid160_bh7_uid269_In0_c1 <= "" & bh7_w47_0_c1 & bh7_w47_1_c1 & "0";
   bh7_w47_3_c2 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid269_Out0_c2(0);
   Compressor_3_2_Freq800_2_034000_uid160_uid269: Compressor_3_2_Freq800_2_034000_uid160
      port map ( X0 => Compressor_3_2_Freq800_2_034000_uid160_bh7_uid269_In0_c1,
                 R => Compressor_3_2_Freq800_2_034000_uid160_bh7_uid269_Out0_copy270_c1);
   Compressor_3_2_Freq800_2_034000_uid160_bh7_uid269_Out0_c2 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid269_Out0_copy270_c2; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid271_In0_c2 <= "" & bh7_w24_9_c2 & bh7_w24_10_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid271_In1_c2 <= "" & bh7_w25_12_c2;
   bh7_w24_11_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid271_Out0_c2(0);
   bh7_w25_13_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid271_Out0_c2(1);
   bh7_w26_12_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid271_Out0_c2(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid271: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid271_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid271_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid271_Out0_copy272_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid271_Out0_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid271_Out0_copy272_c2; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid273_In0_c2 <= "" & bh7_w27_13_c2 & bh7_w27_12_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid273_In1_c2 <= "" & bh7_w28_11_c2;
   bh7_w27_14_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid273_Out0_c2(0);
   bh7_w28_12_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid273_Out0_c2(1);
   bh7_w29_14_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid273_Out0_c2(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid273: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid273_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid273_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid273_Out0_copy274_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid273_Out0_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid273_Out0_copy274_c2; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid275_In0_c2 <= "" & bh7_w29_13_c2 & bh7_w29_12_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid275_In1_c2 <= "" & bh7_w30_11_c2;
   bh7_w29_15_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid275_Out0_c2(0);
   bh7_w30_12_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid275_Out0_c2(1);
   bh7_w31_14_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid275_Out0_c2(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid275: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid275_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid275_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid275_Out0_copy276_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid275_Out0_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid275_Out0_copy276_c2; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid277_In0_c2 <= "" & bh7_w31_13_c2 & bh7_w31_12_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid277_In1_c2 <= "" & bh7_w32_11_c2;
   bh7_w31_15_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid277_Out0_c2(0);
   bh7_w32_12_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid277_Out0_c2(1);
   bh7_w33_14_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid277_Out0_c2(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid277: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid277_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid277_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid277_Out0_copy278_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid277_Out0_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid277_Out0_copy278_c2; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid279_In0_c2 <= "" & bh7_w33_13_c2 & bh7_w33_12_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid279_In1_c2 <= "" & bh7_w34_11_c2;
   bh7_w33_15_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid279_Out0_c2(0);
   bh7_w34_12_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid279_Out0_c2(1);
   bh7_w35_14_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid279_Out0_c2(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid279: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid279_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid279_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid279_Out0_copy280_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid279_Out0_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid279_Out0_copy280_c2; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid281_In0_c2 <= "" & bh7_w35_13_c2 & bh7_w35_12_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid281_In1_c2 <= "" & bh7_w36_11_c2;
   bh7_w35_15_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid281_Out0_c2(0);
   bh7_w36_12_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid281_Out0_c2(1);
   bh7_w37_14_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid281_Out0_c2(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid281: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid281_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid281_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid281_Out0_copy282_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid281_Out0_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid281_Out0_copy282_c2; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid283_In0_c2 <= "" & bh7_w37_13_c2 & bh7_w37_12_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid283_In1_c2 <= "" & bh7_w38_11_c2;
   bh7_w37_15_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid283_Out0_c2(0);
   bh7_w38_12_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid283_Out0_c2(1);
   bh7_w39_14_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid283_Out0_c2(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid283: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid283_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid283_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid283_Out0_copy284_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid283_Out0_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid283_Out0_copy284_c2; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid285_In0_c2 <= "" & bh7_w39_13_c2 & bh7_w39_12_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid285_In1_c2 <= "" & bh7_w40_11_c2;
   bh7_w39_15_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid285_Out0_c2(0);
   bh7_w40_12_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid285_Out0_c2(1);
   bh7_w41_12_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid285_Out0_c2(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid285: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid285_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid285_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid285_Out0_copy286_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid285_Out0_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid285_Out0_copy286_c2; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid287_In0_c2 <= "" & bh7_w41_11_c2 & bh7_w41_10_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid287_In1_c2 <= "" & bh7_w42_10_c2;
   bh7_w41_13_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid287_Out0_c2(0);
   bh7_w42_11_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid287_Out0_c2(1);
   bh7_w43_12_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid287_Out0_c2(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid287: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid287_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid287_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid287_Out0_copy288_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid287_Out0_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid287_Out0_copy288_c2; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid289_In0_c2 <= "" & bh7_w43_10_c2 & bh7_w43_11_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid289_In1_c2 <= "" & bh7_w44_6_c2;
   bh7_w43_13_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid289_Out0_c2(0);
   bh7_w44_7_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid289_Out0_c2(1);
   bh7_w45_8_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid289_Out0_c2(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid289: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid289_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid289_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid289_Out0_copy290_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid289_Out0_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid289_Out0_copy290_c2; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid291_In0_c2 <= "" & bh7_w45_6_c2 & bh7_w45_7_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid291_In1_c2 <= "" & bh7_w46_4_c2;
   bh7_w45_9_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid291_Out0_c2(0);
   bh7_w46_5_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid291_Out0_c2(1);
   bh7_w47_4_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid291_Out0_c2(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid291: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid291_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid291_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid291_Out0_copy292_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid291_Out0_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid291_Out0_copy292_c2; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_In0_c2 <= "" & bh7_w47_3_c2 & bh7_w47_2_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_In1_c0 <= "" & "0";
   bh7_w47_5_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_Out0_c2(0);
   Compressor_14_3_Freq800_2_034000_uid164_uid293: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_Out0_copy294_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_Out0_c2 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid293_Out0_copy294_c2; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_In0_c2 <= "" & bh7_w26_11_c2 & bh7_w26_12_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_In1_c2 <= "" & bh7_w27_14_c2;
   bh7_w26_13_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_Out0_c3(0);
   bh7_w27_15_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_Out0_c3(1);
   bh7_w28_13_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_Out0_c3(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid295: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_Out0_copy296_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid295_Out0_copy296_c3; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_In0_c2 <= "" & bh7_w29_15_c2 & bh7_w29_14_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_In1_c2 <= "" & bh7_w30_12_c2;
   bh7_w29_16_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_Out0_c3(0);
   bh7_w30_13_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_Out0_c3(1);
   bh7_w31_16_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_Out0_c3(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid297: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_Out0_copy298_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid297_Out0_copy298_c3; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_In0_c2 <= "" & bh7_w31_15_c2 & bh7_w31_14_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_In1_c2 <= "" & bh7_w32_12_c2;
   bh7_w31_17_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_Out0_c3(0);
   bh7_w32_13_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_Out0_c3(1);
   bh7_w33_16_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_Out0_c3(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid299: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_Out0_copy300_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid299_Out0_copy300_c3; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_In0_c2 <= "" & bh7_w33_15_c2 & bh7_w33_14_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_In1_c2 <= "" & bh7_w34_12_c2;
   bh7_w33_17_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_Out0_c3(0);
   bh7_w34_13_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_Out0_c3(1);
   bh7_w35_16_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_Out0_c3(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid301: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_Out0_copy302_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid301_Out0_copy302_c3; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_In0_c2 <= "" & bh7_w35_15_c2 & bh7_w35_14_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_In1_c2 <= "" & bh7_w36_12_c2;
   bh7_w35_17_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_Out0_c3(0);
   bh7_w36_13_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_Out0_c3(1);
   bh7_w37_16_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_Out0_c3(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid303: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_Out0_copy304_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid303_Out0_copy304_c3; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_In0_c2 <= "" & bh7_w37_15_c2 & bh7_w37_14_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_In1_c2 <= "" & bh7_w38_12_c2;
   bh7_w37_17_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_Out0_c3(0);
   bh7_w38_13_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_Out0_c3(1);
   bh7_w39_16_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_Out0_c3(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid305: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_Out0_copy306_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid305_Out0_copy306_c3; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_In0_c2 <= "" & bh7_w39_15_c2 & bh7_w39_14_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_In1_c2 <= "" & bh7_w40_12_c2;
   bh7_w39_17_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_Out0_c3(0);
   bh7_w40_13_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_Out0_c3(1);
   bh7_w41_14_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_Out0_c3(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid307: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_Out0_copy308_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid307_Out0_copy308_c3; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_In0_c2 <= "" & bh7_w41_13_c2 & bh7_w41_12_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_In1_c2 <= "" & bh7_w42_11_c2;
   bh7_w41_15_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_Out0_c3(0);
   bh7_w42_12_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_Out0_c3(1);
   bh7_w43_14_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_Out0_c3(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid309: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_Out0_copy310_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid309_Out0_copy310_c3; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_In0_c2 <= "" & bh7_w43_12_c2 & bh7_w43_13_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_In1_c2 <= "" & bh7_w44_7_c2;
   bh7_w43_15_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_Out0_c3(0);
   bh7_w44_8_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_Out0_c3(1);
   bh7_w45_10_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_Out0_c3(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid311: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_Out0_copy312_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid311_Out0_copy312_c3; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_In0_c2 <= "" & bh7_w45_8_c2 & bh7_w45_9_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_In1_c2 <= "" & bh7_w46_5_c2;
   bh7_w45_11_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_Out0_c3(0);
   bh7_w46_6_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_Out0_c3(1);
   bh7_w47_6_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_Out0_c3(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid313: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_Out0_copy314_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid313_Out0_copy314_c3; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_In0_c2 <= "" & bh7_w47_4_c2 & bh7_w47_5_c2 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_In1_c0 <= "" & "0";
   bh7_w47_7_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_Out0_c3(0);
   Compressor_14_3_Freq800_2_034000_uid164_uid315: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_In0_c2,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_In1_c2,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_Out0_copy316_c2);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid315_Out0_copy316_c3; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_In0_c2 <= "" & bh7_w17_1_c2 & bh7_w17_0_c2 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_In1_c2 <= "" & bh7_w18_2_c2 & bh7_w18_0_c2;
   bh7_w17_2_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_Out0_c3(0);
   bh7_w18_3_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_Out0_c3(1);
   bh7_w19_4_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_Out0_c3(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid317: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_In0_c2,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_In1_c2,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_Out0_copy318_c2);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_Out0_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid317_Out0_copy318_c3; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_In0_c2 <= "" & bh7_w19_3_c2 & bh7_w19_0_c2 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_In1_c2 <= "" & bh7_w20_6_c2 & bh7_w20_0_c2;
   bh7_w19_5_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_Out0_c3(0);
   bh7_w20_7_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_Out0_c3(1);
   bh7_w21_8_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_Out0_c3(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid319: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_In0_c2,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_In1_c2,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_Out0_copy320_c2);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_Out0_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid319_Out0_copy320_c3; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_In0_c2 <= "" & bh7_w21_7_c2 & bh7_w21_0_c2 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_In1_c2 <= "" & bh7_w22_9_c2 & bh7_w22_0_c2;
   bh7_w21_9_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_Out0_c3(0);
   bh7_w22_10_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_Out0_c3(1);
   bh7_w23_13_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_Out0_c3(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid321: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_In0_c2,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_In1_c2,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_Out0_copy322_c2);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_Out0_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid321_Out0_copy322_c3; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_In0_c2 <= "" & bh7_w23_12_c2 & bh7_w23_0_c2 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_In1_c2 <= "" & bh7_w24_11_c2 & bh7_w24_0_c2;
   bh7_w23_14_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_Out0_c3(0);
   bh7_w24_12_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_Out0_c3(1);
   bh7_w25_14_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_Out0_c3(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid323: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_In0_c2,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_In1_c2,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_Out0_copy324_c2);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_Out0_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid323_Out0_copy324_c3; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_In0_c2 <= "" & bh7_w25_13_c2 & bh7_w25_0_c2 & "0";
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_In1_c3 <= "" & bh7_w26_0_c3 & bh7_w26_13_c3;
   bh7_w25_15_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_Out0_c3(0);
   bh7_w26_14_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_Out0_c3(1);
   bh7_w27_16_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_Out0_c3(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid325: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_In0_c3,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_In1_c3,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_Out0_copy326_c3);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_Out0_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid325_Out0_copy326_c3; -- output copy to hold a pipeline register if needed


   Compressor_3_2_Freq800_2_034000_uid160_bh7_uid327_In0_c3 <= "" & bh7_w27_0_c3 & bh7_w27_15_c3 & "0";
   bh7_w27_17_c3 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid327_Out0_c3(0);
   bh7_w28_14_c3 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid327_Out0_c3(1);
   Compressor_3_2_Freq800_2_034000_uid160_uid327: Compressor_3_2_Freq800_2_034000_uid160
      port map ( X0 => Compressor_3_2_Freq800_2_034000_uid160_bh7_uid327_In0_c3,
                 R => Compressor_3_2_Freq800_2_034000_uid160_bh7_uid327_Out0_copy328_c3);
   Compressor_3_2_Freq800_2_034000_uid160_bh7_uid327_Out0_c3 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid327_Out0_copy328_c3; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid329_In0_c3 <= "" & bh7_w28_12_c3 & bh7_w28_0_c3 & bh7_w28_13_c3;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid329_In1_c3 <= "" & bh7_w29_0_c3 & bh7_w29_16_c3;
   bh7_w28_15_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid329_Out0_c3(0);
   bh7_w29_17_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid329_Out0_c3(1);
   bh7_w30_14_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid329_Out0_c3(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid329: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid329_In0_c3,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid329_In1_c3,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid329_Out0_copy330_c3);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid329_Out0_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid329_Out0_copy330_c3; -- output copy to hold a pipeline register if needed


   Compressor_3_2_Freq800_2_034000_uid160_bh7_uid331_In0_c3 <= "" & bh7_w30_0_c3 & bh7_w30_13_c3 & "0";
   bh7_w30_15_c3 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid331_Out0_c3(0);
   bh7_w31_18_c3 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid331_Out0_c3(1);
   Compressor_3_2_Freq800_2_034000_uid160_uid331: Compressor_3_2_Freq800_2_034000_uid160
      port map ( X0 => Compressor_3_2_Freq800_2_034000_uid160_bh7_uid331_In0_c3,
                 R => Compressor_3_2_Freq800_2_034000_uid160_bh7_uid331_Out0_copy332_c3);
   Compressor_3_2_Freq800_2_034000_uid160_bh7_uid331_Out0_c3 <= Compressor_3_2_Freq800_2_034000_uid160_bh7_uid331_Out0_copy332_c3; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid333_In0_c3 <= "" & bh7_w31_0_c3 & bh7_w31_17_c3 & bh7_w31_16_c3;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid333_In1_c3 <= "" & bh7_w32_0_c3 & bh7_w32_13_c3;
   bh7_w31_19_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid333_Out0_c3(0);
   bh7_w32_14_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid333_Out0_c3(1);
   bh7_w33_18_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid333_Out0_c3(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid333: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid333_In0_c3,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid333_In1_c3,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid333_Out0_copy334_c3);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid333_Out0_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid333_Out0_copy334_c3; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid335_In0_c3 <= "" & bh7_w33_0_c3 & bh7_w33_17_c3 & bh7_w33_16_c3;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid335_In1_c3 <= "" & bh7_w34_0_c3 & bh7_w34_13_c3;
   bh7_w33_19_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid335_Out0_c3(0);
   bh7_w34_14_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid335_Out0_c3(1);
   bh7_w35_18_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid335_Out0_c3(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid335: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid335_In0_c3,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid335_In1_c3,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid335_Out0_copy336_c3);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid335_Out0_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid335_Out0_copy336_c3; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid337_In0_c3 <= "" & bh7_w35_0_c3 & bh7_w35_17_c3 & bh7_w35_16_c3;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid337_In1_c3 <= "" & bh7_w36_0_c3 & bh7_w36_13_c3;
   bh7_w35_19_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid337_Out0_c3(0);
   bh7_w36_14_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid337_Out0_c3(1);
   bh7_w37_18_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid337_Out0_c3(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid337: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid337_In0_c3,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid337_In1_c3,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid337_Out0_copy338_c3);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid337_Out0_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid337_Out0_copy338_c3; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid339_In0_c3 <= "" & bh7_w37_0_c3 & bh7_w37_17_c3 & bh7_w37_16_c3;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid339_In1_c3 <= "" & bh7_w38_0_c3 & bh7_w38_13_c3;
   bh7_w37_19_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid339_Out0_c3(0);
   bh7_w38_14_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid339_Out0_c3(1);
   bh7_w39_18_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid339_Out0_c3(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid339: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid339_In0_c3,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid339_In1_c3,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid339_Out0_copy340_c3);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid339_Out0_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid339_Out0_copy340_c3; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid341_In0_c3 <= "" & bh7_w39_0_c3 & bh7_w39_17_c3 & bh7_w39_16_c3;
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid341_In1_c3 <= "" & bh7_w40_0_c3 & bh7_w40_13_c3;
   bh7_w39_19_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid341_Out0_c3(0);
   bh7_w40_14_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid341_Out0_c3(1);
   bh7_w41_16_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid341_Out0_c3(2);
   Compressor_23_3_Freq800_2_034000_uid156_uid341: Compressor_23_3_Freq800_2_034000_uid156
      port map ( X0 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid341_In0_c3,
                 X1 => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid341_In1_c3,
                 R => Compressor_23_3_Freq800_2_034000_uid156_bh7_uid341_Out0_copy342_c3);
   Compressor_23_3_Freq800_2_034000_uid156_bh7_uid341_Out0_c3 <= Compressor_23_3_Freq800_2_034000_uid156_bh7_uid341_Out0_copy342_c3; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid343_In0_c3 <= "" & bh7_w41_15_c3 & bh7_w41_14_c3 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid343_In1_c3 <= "" & bh7_w42_12_c3;
   bh7_w41_17_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid343_Out0_c3(0);
   bh7_w42_13_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid343_Out0_c3(1);
   bh7_w43_16_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid343_Out0_c3(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid343: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid343_In0_c3,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid343_In1_c3,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid343_Out0_copy344_c3);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid343_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid343_Out0_copy344_c3; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid345_In0_c3 <= "" & bh7_w43_14_c3 & bh7_w43_15_c3 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid345_In1_c3 <= "" & bh7_w44_8_c3;
   bh7_w43_17_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid345_Out0_c3(0);
   bh7_w44_9_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid345_Out0_c3(1);
   bh7_w45_12_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid345_Out0_c3(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid345: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid345_In0_c3,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid345_In1_c3,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid345_Out0_copy346_c3);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid345_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid345_Out0_copy346_c3; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid347_In0_c3 <= "" & bh7_w45_10_c3 & bh7_w45_11_c3 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid347_In1_c3 <= "" & bh7_w46_6_c3;
   bh7_w45_13_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid347_Out0_c3(0);
   bh7_w46_7_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid347_Out0_c3(1);
   bh7_w47_8_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid347_Out0_c3(2);
   Compressor_14_3_Freq800_2_034000_uid164_uid347: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid347_In0_c3,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid347_In1_c3,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid347_Out0_copy348_c3);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid347_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid347_Out0_copy348_c3; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In0_c3 <= "" & bh7_w47_6_c3 & bh7_w47_7_c3 & "0" & "0";
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In1_c0 <= "" & "0";
   bh7_w47_9_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_Out0_c3(0);
   Compressor_14_3_Freq800_2_034000_uid164_uid349: Compressor_14_3_Freq800_2_034000_uid164
      port map ( X0 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In0_c3,
                 X1 => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_In1_c3,
                 R => Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_Out0_copy350_c3);
   Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_Out0_c3 <= Compressor_14_3_Freq800_2_034000_uid164_bh7_uid349_Out0_copy350_c3; -- output copy to hold a pipeline register if needed

   tmp_bitheapResult_bh7_18_c3 <= bh7_w18_3_c3 & bh7_w17_2_c3 & bh7_w16_0_c3 & bh7_w15_0_c3 & bh7_w14_0_c3 & bh7_w13_0_c3 & bh7_w12_0_c3 & bh7_w11_0_c3 & bh7_w10_0_c3 & bh7_w9_0_c3 & bh7_w8_0_c3 & bh7_w7_0_c3 & bh7_w6_0_c3 & bh7_w5_0_c3 & bh7_w4_0_c3 & bh7_w3_0_c3 & bh7_w2_0_c3 & bh7_w1_0_c3 & bh7_w0_0_c3;

   bitheapFinalAdd_bh7_In0_c3 <= "0" & bh7_w47_8_c3 & bh7_w46_7_c3 & bh7_w45_12_c3 & bh7_w44_9_c3 & bh7_w43_16_c3 & bh7_w42_13_c3 & bh7_w41_17_c3 & bh7_w40_14_c3 & bh7_w39_19_c3 & bh7_w38_14_c3 & bh7_w37_19_c3 & bh7_w36_14_c3 & bh7_w35_19_c3 & bh7_w34_14_c3 & bh7_w33_19_c3 & bh7_w32_14_c3 & bh7_w31_19_c3 & bh7_w30_15_c3 & bh7_w29_17_c3 & bh7_w28_15_c3 & bh7_w27_17_c3 & bh7_w26_14_c3 & bh7_w25_14_c3 & bh7_w24_12_c3 & bh7_w23_14_c3 & bh7_w22_10_c3 & bh7_w21_9_c3 & bh7_w20_7_c3 & bh7_w19_5_c3;
   bitheapFinalAdd_bh7_In1_c3 <= "0" & bh7_w47_9_c3 & "0" & bh7_w45_13_c3 & "0" & bh7_w43_17_c3 & "0" & bh7_w41_16_c3 & "0" & bh7_w39_18_c3 & "0" & bh7_w37_18_c3 & "0" & bh7_w35_18_c3 & "0" & bh7_w33_18_c3 & "0" & bh7_w31_18_c3 & bh7_w30_14_c3 & "0" & bh7_w28_14_c3 & bh7_w27_16_c3 & "0" & bh7_w25_15_c3 & "0" & bh7_w23_13_c3 & "0" & bh7_w21_8_c3 & "0" & bh7_w19_4_c3;
   bitheapFinalAdd_bh7_Cin_c0 <= '0';

   bitheapFinalAdd_bh7: IntAdder_30_Freq800_2_034000_uid352
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
                 Cin => bitheapFinalAdd_bh7_Cin_c0,
                 X => bitheapFinalAdd_bh7_In0_c3,
                 Y => bitheapFinalAdd_bh7_In1_c3,
                 R => bitheapFinalAdd_bh7_Out_c13);
   bitheapResult_bh7_c13 <= bitheapFinalAdd_bh7_Out_c13(28 downto 0) & tmp_bitheapResult_bh7_18_c13;
   R <= bitheapResult_bh7_c13(47 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                         IntAdder_33_Freq800_2_034000_uid355
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 26 cycles
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

entity IntAdder_33_Freq800_2_034000_uid355 is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26 : in std_logic;
          X : in  std_logic_vector(32 downto 0);
          Y : in  std_logic_vector(32 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of IntAdder_33_Freq800_2_034000_uid355 is
signal Cin_1_c15, Cin_1_c16 :  std_logic;
signal X_1_c14, X_1_c15, X_1_c16 :  std_logic_vector(3 downto 0);
signal Y_1_c0, Y_1_c1, Y_1_c2, Y_1_c3, Y_1_c4, Y_1_c5, Y_1_c6, Y_1_c7, Y_1_c8, Y_1_c9, Y_1_c10, Y_1_c11, Y_1_c12, Y_1_c13, Y_1_c14, Y_1_c15, Y_1_c16 :  std_logic_vector(3 downto 0);
signal S_1_c16 :  std_logic_vector(3 downto 0);
signal R_1_c16, R_1_c17, R_1_c18, R_1_c19, R_1_c20, R_1_c21, R_1_c22, R_1_c23, R_1_c24, R_1_c25, R_1_c26 :  std_logic_vector(2 downto 0);
signal Cin_2_c16, Cin_2_c17 :  std_logic;
signal X_2_c14, X_2_c15, X_2_c16, X_2_c17 :  std_logic_vector(3 downto 0);
signal Y_2_c0, Y_2_c1, Y_2_c2, Y_2_c3, Y_2_c4, Y_2_c5, Y_2_c6, Y_2_c7, Y_2_c8, Y_2_c9, Y_2_c10, Y_2_c11, Y_2_c12, Y_2_c13, Y_2_c14, Y_2_c15, Y_2_c16, Y_2_c17 :  std_logic_vector(3 downto 0);
signal S_2_c17 :  std_logic_vector(3 downto 0);
signal R_2_c17, R_2_c18, R_2_c19, R_2_c20, R_2_c21, R_2_c22, R_2_c23, R_2_c24, R_2_c25, R_2_c26 :  std_logic_vector(2 downto 0);
signal Cin_3_c17, Cin_3_c18 :  std_logic;
signal X_3_c14, X_3_c15, X_3_c16, X_3_c17, X_3_c18 :  std_logic_vector(3 downto 0);
signal Y_3_c0, Y_3_c1, Y_3_c2, Y_3_c3, Y_3_c4, Y_3_c5, Y_3_c6, Y_3_c7, Y_3_c8, Y_3_c9, Y_3_c10, Y_3_c11, Y_3_c12, Y_3_c13, Y_3_c14, Y_3_c15, Y_3_c16, Y_3_c17, Y_3_c18 :  std_logic_vector(3 downto 0);
signal S_3_c18 :  std_logic_vector(3 downto 0);
signal R_3_c18, R_3_c19, R_3_c20, R_3_c21, R_3_c22, R_3_c23, R_3_c24, R_3_c25, R_3_c26 :  std_logic_vector(2 downto 0);
signal Cin_4_c18, Cin_4_c19 :  std_logic;
signal X_4_c14, X_4_c15, X_4_c16, X_4_c17, X_4_c18, X_4_c19 :  std_logic_vector(3 downto 0);
signal Y_4_c0, Y_4_c1, Y_4_c2, Y_4_c3, Y_4_c4, Y_4_c5, Y_4_c6, Y_4_c7, Y_4_c8, Y_4_c9, Y_4_c10, Y_4_c11, Y_4_c12, Y_4_c13, Y_4_c14, Y_4_c15, Y_4_c16, Y_4_c17, Y_4_c18, Y_4_c19 :  std_logic_vector(3 downto 0);
signal S_4_c19 :  std_logic_vector(3 downto 0);
signal R_4_c19, R_4_c20, R_4_c21, R_4_c22, R_4_c23, R_4_c24, R_4_c25, R_4_c26 :  std_logic_vector(2 downto 0);
signal Cin_5_c19, Cin_5_c20 :  std_logic;
signal X_5_c14, X_5_c15, X_5_c16, X_5_c17, X_5_c18, X_5_c19, X_5_c20 :  std_logic_vector(3 downto 0);
signal Y_5_c0, Y_5_c1, Y_5_c2, Y_5_c3, Y_5_c4, Y_5_c5, Y_5_c6, Y_5_c7, Y_5_c8, Y_5_c9, Y_5_c10, Y_5_c11, Y_5_c12, Y_5_c13, Y_5_c14, Y_5_c15, Y_5_c16, Y_5_c17, Y_5_c18, Y_5_c19, Y_5_c20 :  std_logic_vector(3 downto 0);
signal S_5_c20 :  std_logic_vector(3 downto 0);
signal R_5_c20, R_5_c21, R_5_c22, R_5_c23, R_5_c24, R_5_c25, R_5_c26 :  std_logic_vector(2 downto 0);
signal Cin_6_c20, Cin_6_c21 :  std_logic;
signal X_6_c14, X_6_c15, X_6_c16, X_6_c17, X_6_c18, X_6_c19, X_6_c20, X_6_c21 :  std_logic_vector(3 downto 0);
signal Y_6_c0, Y_6_c1, Y_6_c2, Y_6_c3, Y_6_c4, Y_6_c5, Y_6_c6, Y_6_c7, Y_6_c8, Y_6_c9, Y_6_c10, Y_6_c11, Y_6_c12, Y_6_c13, Y_6_c14, Y_6_c15, Y_6_c16, Y_6_c17, Y_6_c18, Y_6_c19, Y_6_c20, Y_6_c21 :  std_logic_vector(3 downto 0);
signal S_6_c21 :  std_logic_vector(3 downto 0);
signal R_6_c21, R_6_c22, R_6_c23, R_6_c24, R_6_c25, R_6_c26 :  std_logic_vector(2 downto 0);
signal Cin_7_c21, Cin_7_c22 :  std_logic;
signal X_7_c14, X_7_c15, X_7_c16, X_7_c17, X_7_c18, X_7_c19, X_7_c20, X_7_c21, X_7_c22 :  std_logic_vector(3 downto 0);
signal Y_7_c0, Y_7_c1, Y_7_c2, Y_7_c3, Y_7_c4, Y_7_c5, Y_7_c6, Y_7_c7, Y_7_c8, Y_7_c9, Y_7_c10, Y_7_c11, Y_7_c12, Y_7_c13, Y_7_c14, Y_7_c15, Y_7_c16, Y_7_c17, Y_7_c18, Y_7_c19, Y_7_c20, Y_7_c21, Y_7_c22 :  std_logic_vector(3 downto 0);
signal S_7_c22 :  std_logic_vector(3 downto 0);
signal R_7_c22, R_7_c23, R_7_c24, R_7_c25, R_7_c26 :  std_logic_vector(2 downto 0);
signal Cin_8_c22, Cin_8_c23 :  std_logic;
signal X_8_c14, X_8_c15, X_8_c16, X_8_c17, X_8_c18, X_8_c19, X_8_c20, X_8_c21, X_8_c22, X_8_c23 :  std_logic_vector(3 downto 0);
signal Y_8_c0, Y_8_c1, Y_8_c2, Y_8_c3, Y_8_c4, Y_8_c5, Y_8_c6, Y_8_c7, Y_8_c8, Y_8_c9, Y_8_c10, Y_8_c11, Y_8_c12, Y_8_c13, Y_8_c14, Y_8_c15, Y_8_c16, Y_8_c17, Y_8_c18, Y_8_c19, Y_8_c20, Y_8_c21, Y_8_c22, Y_8_c23 :  std_logic_vector(3 downto 0);
signal S_8_c23 :  std_logic_vector(3 downto 0);
signal R_8_c23, R_8_c24, R_8_c25, R_8_c26 :  std_logic_vector(2 downto 0);
signal Cin_9_c23, Cin_9_c24 :  std_logic;
signal X_9_c14, X_9_c15, X_9_c16, X_9_c17, X_9_c18, X_9_c19, X_9_c20, X_9_c21, X_9_c22, X_9_c23, X_9_c24 :  std_logic_vector(3 downto 0);
signal Y_9_c0, Y_9_c1, Y_9_c2, Y_9_c3, Y_9_c4, Y_9_c5, Y_9_c6, Y_9_c7, Y_9_c8, Y_9_c9, Y_9_c10, Y_9_c11, Y_9_c12, Y_9_c13, Y_9_c14, Y_9_c15, Y_9_c16, Y_9_c17, Y_9_c18, Y_9_c19, Y_9_c20, Y_9_c21, Y_9_c22, Y_9_c23, Y_9_c24 :  std_logic_vector(3 downto 0);
signal S_9_c24 :  std_logic_vector(3 downto 0);
signal R_9_c24, R_9_c25, R_9_c26 :  std_logic_vector(2 downto 0);
signal Cin_10_c24, Cin_10_c25 :  std_logic;
signal X_10_c14, X_10_c15, X_10_c16, X_10_c17, X_10_c18, X_10_c19, X_10_c20, X_10_c21, X_10_c22, X_10_c23, X_10_c24, X_10_c25 :  std_logic_vector(3 downto 0);
signal Y_10_c0, Y_10_c1, Y_10_c2, Y_10_c3, Y_10_c4, Y_10_c5, Y_10_c6, Y_10_c7, Y_10_c8, Y_10_c9, Y_10_c10, Y_10_c11, Y_10_c12, Y_10_c13, Y_10_c14, Y_10_c15, Y_10_c16, Y_10_c17, Y_10_c18, Y_10_c19, Y_10_c20, Y_10_c21, Y_10_c22, Y_10_c23, Y_10_c24, Y_10_c25 :  std_logic_vector(3 downto 0);
signal S_10_c25 :  std_logic_vector(3 downto 0);
signal R_10_c25, R_10_c26 :  std_logic_vector(2 downto 0);
signal Cin_11_c25, Cin_11_c26 :  std_logic;
signal X_11_c14, X_11_c15, X_11_c16, X_11_c17, X_11_c18, X_11_c19, X_11_c20, X_11_c21, X_11_c22, X_11_c23, X_11_c24, X_11_c25, X_11_c26 :  std_logic_vector(3 downto 0);
signal Y_11_c0, Y_11_c1, Y_11_c2, Y_11_c3, Y_11_c4, Y_11_c5, Y_11_c6, Y_11_c7, Y_11_c8, Y_11_c9, Y_11_c10, Y_11_c11, Y_11_c12, Y_11_c13, Y_11_c14, Y_11_c15, Y_11_c16, Y_11_c17, Y_11_c18, Y_11_c19, Y_11_c20, Y_11_c21, Y_11_c22, Y_11_c23, Y_11_c24, Y_11_c25, Y_11_c26 :  std_logic_vector(3 downto 0);
signal S_11_c26 :  std_logic_vector(3 downto 0);
signal R_11_c26 :  std_logic_vector(2 downto 0);
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
            end if;
            if ce_15 = '1' then
               X_1_c15 <= X_1_c14;
               Y_1_c15 <= Y_1_c14;
               X_2_c15 <= X_2_c14;
               Y_2_c15 <= Y_2_c14;
               X_3_c15 <= X_3_c14;
               Y_3_c15 <= Y_3_c14;
               X_4_c15 <= X_4_c14;
               Y_4_c15 <= Y_4_c14;
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
            end if;
            if ce_16 = '1' then
               Cin_1_c16 <= Cin_1_c15;
               X_1_c16 <= X_1_c15;
               Y_1_c16 <= Y_1_c15;
               X_2_c16 <= X_2_c15;
               Y_2_c16 <= Y_2_c15;
               X_3_c16 <= X_3_c15;
               Y_3_c16 <= Y_3_c15;
               X_4_c16 <= X_4_c15;
               Y_4_c16 <= Y_4_c15;
               X_5_c16 <= X_5_c15;
               Y_5_c16 <= Y_5_c15;
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
            end if;
            if ce_17 = '1' then
               R_1_c17 <= R_1_c16;
               Cin_2_c17 <= Cin_2_c16;
               X_2_c17 <= X_2_c16;
               Y_2_c17 <= Y_2_c16;
               X_3_c17 <= X_3_c16;
               Y_3_c17 <= Y_3_c16;
               X_4_c17 <= X_4_c16;
               Y_4_c17 <= Y_4_c16;
               X_5_c17 <= X_5_c16;
               Y_5_c17 <= Y_5_c16;
               X_6_c17 <= X_6_c16;
               Y_6_c17 <= Y_6_c16;
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
            end if;
            if ce_18 = '1' then
               R_1_c18 <= R_1_c17;
               R_2_c18 <= R_2_c17;
               Cin_3_c18 <= Cin_3_c17;
               X_3_c18 <= X_3_c17;
               Y_3_c18 <= Y_3_c17;
               X_4_c18 <= X_4_c17;
               Y_4_c18 <= Y_4_c17;
               X_5_c18 <= X_5_c17;
               Y_5_c18 <= Y_5_c17;
               X_6_c18 <= X_6_c17;
               Y_6_c18 <= Y_6_c17;
               X_7_c18 <= X_7_c17;
               Y_7_c18 <= Y_7_c17;
               X_8_c18 <= X_8_c17;
               Y_8_c18 <= Y_8_c17;
               X_9_c18 <= X_9_c17;
               Y_9_c18 <= Y_9_c17;
               X_10_c18 <= X_10_c17;
               Y_10_c18 <= Y_10_c17;
               X_11_c18 <= X_11_c17;
               Y_11_c18 <= Y_11_c17;
            end if;
            if ce_19 = '1' then
               R_1_c19 <= R_1_c18;
               R_2_c19 <= R_2_c18;
               R_3_c19 <= R_3_c18;
               Cin_4_c19 <= Cin_4_c18;
               X_4_c19 <= X_4_c18;
               Y_4_c19 <= Y_4_c18;
               X_5_c19 <= X_5_c18;
               Y_5_c19 <= Y_5_c18;
               X_6_c19 <= X_6_c18;
               Y_6_c19 <= Y_6_c18;
               X_7_c19 <= X_7_c18;
               Y_7_c19 <= Y_7_c18;
               X_8_c19 <= X_8_c18;
               Y_8_c19 <= Y_8_c18;
               X_9_c19 <= X_9_c18;
               Y_9_c19 <= Y_9_c18;
               X_10_c19 <= X_10_c18;
               Y_10_c19 <= Y_10_c18;
               X_11_c19 <= X_11_c18;
               Y_11_c19 <= Y_11_c18;
            end if;
            if ce_20 = '1' then
               R_1_c20 <= R_1_c19;
               R_2_c20 <= R_2_c19;
               R_3_c20 <= R_3_c19;
               R_4_c20 <= R_4_c19;
               Cin_5_c20 <= Cin_5_c19;
               X_5_c20 <= X_5_c19;
               Y_5_c20 <= Y_5_c19;
               X_6_c20 <= X_6_c19;
               Y_6_c20 <= Y_6_c19;
               X_7_c20 <= X_7_c19;
               Y_7_c20 <= Y_7_c19;
               X_8_c20 <= X_8_c19;
               Y_8_c20 <= Y_8_c19;
               X_9_c20 <= X_9_c19;
               Y_9_c20 <= Y_9_c19;
               X_10_c20 <= X_10_c19;
               Y_10_c20 <= Y_10_c19;
               X_11_c20 <= X_11_c19;
               Y_11_c20 <= Y_11_c19;
            end if;
            if ce_21 = '1' then
               R_1_c21 <= R_1_c20;
               R_2_c21 <= R_2_c20;
               R_3_c21 <= R_3_c20;
               R_4_c21 <= R_4_c20;
               R_5_c21 <= R_5_c20;
               Cin_6_c21 <= Cin_6_c20;
               X_6_c21 <= X_6_c20;
               Y_6_c21 <= Y_6_c20;
               X_7_c21 <= X_7_c20;
               Y_7_c21 <= Y_7_c20;
               X_8_c21 <= X_8_c20;
               Y_8_c21 <= Y_8_c20;
               X_9_c21 <= X_9_c20;
               Y_9_c21 <= Y_9_c20;
               X_10_c21 <= X_10_c20;
               Y_10_c21 <= Y_10_c20;
               X_11_c21 <= X_11_c20;
               Y_11_c21 <= Y_11_c20;
            end if;
            if ce_22 = '1' then
               R_1_c22 <= R_1_c21;
               R_2_c22 <= R_2_c21;
               R_3_c22 <= R_3_c21;
               R_4_c22 <= R_4_c21;
               R_5_c22 <= R_5_c21;
               R_6_c22 <= R_6_c21;
               Cin_7_c22 <= Cin_7_c21;
               X_7_c22 <= X_7_c21;
               Y_7_c22 <= Y_7_c21;
               X_8_c22 <= X_8_c21;
               Y_8_c22 <= Y_8_c21;
               X_9_c22 <= X_9_c21;
               Y_9_c22 <= Y_9_c21;
               X_10_c22 <= X_10_c21;
               Y_10_c22 <= Y_10_c21;
               X_11_c22 <= X_11_c21;
               Y_11_c22 <= Y_11_c21;
            end if;
            if ce_23 = '1' then
               R_1_c23 <= R_1_c22;
               R_2_c23 <= R_2_c22;
               R_3_c23 <= R_3_c22;
               R_4_c23 <= R_4_c22;
               R_5_c23 <= R_5_c22;
               R_6_c23 <= R_6_c22;
               R_7_c23 <= R_7_c22;
               Cin_8_c23 <= Cin_8_c22;
               X_8_c23 <= X_8_c22;
               Y_8_c23 <= Y_8_c22;
               X_9_c23 <= X_9_c22;
               Y_9_c23 <= Y_9_c22;
               X_10_c23 <= X_10_c22;
               Y_10_c23 <= Y_10_c22;
               X_11_c23 <= X_11_c22;
               Y_11_c23 <= Y_11_c22;
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
               Cin_9_c24 <= Cin_9_c23;
               X_9_c24 <= X_9_c23;
               Y_9_c24 <= Y_9_c23;
               X_10_c24 <= X_10_c23;
               Y_10_c24 <= Y_10_c23;
               X_11_c24 <= X_11_c23;
               Y_11_c24 <= Y_11_c23;
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
               Cin_10_c25 <= Cin_10_c24;
               X_10_c25 <= X_10_c24;
               Y_10_c25 <= Y_10_c24;
               X_11_c25 <= X_11_c24;
               Y_11_c25 <= Y_11_c24;
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
               Cin_11_c26 <= Cin_11_c25;
               X_11_c26 <= X_11_c25;
               Y_11_c26 <= Y_11_c25;
            end if;
         end if;
      end process;
   Cin_1_c15 <= Cin;
   X_1_c14 <= '0' & X(2 downto 0);
   Y_1_c0 <= '0' & Y(2 downto 0);
   S_1_c16 <= X_1_c16 + Y_1_c16 + Cin_1_c16;
   R_1_c16 <= S_1_c16(2 downto 0);
   Cin_2_c16 <= S_1_c16(3);
   X_2_c14 <= '0' & X(5 downto 3);
   Y_2_c0 <= '0' & Y(5 downto 3);
   S_2_c17 <= X_2_c17 + Y_2_c17 + Cin_2_c17;
   R_2_c17 <= S_2_c17(2 downto 0);
   Cin_3_c17 <= S_2_c17(3);
   X_3_c14 <= '0' & X(8 downto 6);
   Y_3_c0 <= '0' & Y(8 downto 6);
   S_3_c18 <= X_3_c18 + Y_3_c18 + Cin_3_c18;
   R_3_c18 <= S_3_c18(2 downto 0);
   Cin_4_c18 <= S_3_c18(3);
   X_4_c14 <= '0' & X(11 downto 9);
   Y_4_c0 <= '0' & Y(11 downto 9);
   S_4_c19 <= X_4_c19 + Y_4_c19 + Cin_4_c19;
   R_4_c19 <= S_4_c19(2 downto 0);
   Cin_5_c19 <= S_4_c19(3);
   X_5_c14 <= '0' & X(14 downto 12);
   Y_5_c0 <= '0' & Y(14 downto 12);
   S_5_c20 <= X_5_c20 + Y_5_c20 + Cin_5_c20;
   R_5_c20 <= S_5_c20(2 downto 0);
   Cin_6_c20 <= S_5_c20(3);
   X_6_c14 <= '0' & X(17 downto 15);
   Y_6_c0 <= '0' & Y(17 downto 15);
   S_6_c21 <= X_6_c21 + Y_6_c21 + Cin_6_c21;
   R_6_c21 <= S_6_c21(2 downto 0);
   Cin_7_c21 <= S_6_c21(3);
   X_7_c14 <= '0' & X(20 downto 18);
   Y_7_c0 <= '0' & Y(20 downto 18);
   S_7_c22 <= X_7_c22 + Y_7_c22 + Cin_7_c22;
   R_7_c22 <= S_7_c22(2 downto 0);
   Cin_8_c22 <= S_7_c22(3);
   X_8_c14 <= '0' & X(23 downto 21);
   Y_8_c0 <= '0' & Y(23 downto 21);
   S_8_c23 <= X_8_c23 + Y_8_c23 + Cin_8_c23;
   R_8_c23 <= S_8_c23(2 downto 0);
   Cin_9_c23 <= S_8_c23(3);
   X_9_c14 <= '0' & X(26 downto 24);
   Y_9_c0 <= '0' & Y(26 downto 24);
   S_9_c24 <= X_9_c24 + Y_9_c24 + Cin_9_c24;
   R_9_c24 <= S_9_c24(2 downto 0);
   Cin_10_c24 <= S_9_c24(3);
   X_10_c14 <= '0' & X(29 downto 27);
   Y_10_c0 <= '0' & Y(29 downto 27);
   S_10_c25 <= X_10_c25 + Y_10_c25 + Cin_10_c25;
   R_10_c25 <= S_10_c25(2 downto 0);
   Cin_11_c25 <= S_10_c25(3);
   X_11_c14 <= '0' & X(32 downto 30);
   Y_11_c0 <= '0' & Y(32 downto 30);
   S_11_c26 <= X_11_c26 + Y_11_c26 + Cin_11_c26;
   R_11_c26 <= S_11_c26(2 downto 0);
   R <= R_11_c26 & R_10_c26 & R_9_c26 & R_8_c26 & R_7_c26 & R_6_c26 & R_5_c26 & R_4_c26 & R_3_c26 & R_2_c26 & R_1_c26 ;
end architecture;

--------------------------------------------------------------------------------
--                          FloatingPointMultiplier
--                      (FPMult_8_23_uid2_Freq800_2_034000_uid3)
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin 2008-2021
--------------------------------------------------------------------------------
-- Pipeline depth: 26 cycles
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

entity FloatingPointMultiplier_32_2_034000 is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26 : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of FloatingPointMultiplier_32_2_034000 is
   component IntMultiplier_24x24_48_Freq800_2_034000_uid5 is
      port ( clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13 : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             Y : in  std_logic_vector(23 downto 0);
             R : out  std_logic_vector(47 downto 0)   );
   end component;

   component IntAdder_33_Freq800_2_034000_uid355 is
      port ( clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26 : in std_logic;
             X : in  std_logic_vector(32 downto 0);
             Y : in  std_logic_vector(32 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(32 downto 0)   );
   end component;

signal sign_c0, sign_c1, sign_c2, sign_c3, sign_c4, sign_c5, sign_c6, sign_c7, sign_c8, sign_c9, sign_c10, sign_c11, sign_c12, sign_c13, sign_c14, sign_c15, sign_c16, sign_c17, sign_c18, sign_c19, sign_c20, sign_c21, sign_c22, sign_c23, sign_c24, sign_c25, sign_c26 :  std_logic;
signal expX_c0, expX_c1 :  std_logic_vector(7 downto 0);
signal expY_c0, expY_c1 :  std_logic_vector(7 downto 0);
signal expSumPreSub_c1, expSumPreSub_c2 :  std_logic_vector(9 downto 0);
signal bias_c0, bias_c1, bias_c2 :  std_logic_vector(9 downto 0);
signal expSum_c2, expSum_c3, expSum_c4, expSum_c5, expSum_c6, expSum_c7, expSum_c8, expSum_c9, expSum_c10, expSum_c11, expSum_c12, expSum_c13 :  std_logic_vector(9 downto 0);
signal sigX_c0 :  std_logic_vector(23 downto 0);
signal sigY_c0 :  std_logic_vector(23 downto 0);
signal sigProd_c13, sigProd_c14 :  std_logic_vector(47 downto 0);
signal excSel_c0 :  std_logic_vector(3 downto 0);
signal exc_c0, exc_c1, exc_c2, exc_c3, exc_c4, exc_c5, exc_c6, exc_c7, exc_c8, exc_c9, exc_c10, exc_c11, exc_c12, exc_c13, exc_c14, exc_c15, exc_c16, exc_c17, exc_c18, exc_c19, exc_c20, exc_c21, exc_c22, exc_c23, exc_c24, exc_c25, exc_c26 :  std_logic_vector(1 downto 0);
signal norm_c13, norm_c14 :  std_logic;
signal expPostNorm_c13, expPostNorm_c14 :  std_logic_vector(9 downto 0);
signal sigProdExt_c14, sigProdExt_c15 :  std_logic_vector(47 downto 0);
signal expSig_c14 :  std_logic_vector(32 downto 0);
signal sticky_c14, sticky_c15 :  std_logic;
signal guard_c14, guard_c15 :  std_logic;
signal round_c15 :  std_logic;
signal expSigPostRound_c26 :  std_logic_vector(32 downto 0);
signal excPostNorm_c26 :  std_logic_vector(1 downto 0);
signal finalExc_c26 :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               sign_c1 <= sign_c0;
               expX_c1 <= expX_c0;
               expY_c1 <= expY_c0;
               bias_c1 <= bias_c0;
               exc_c1 <= exc_c0;
            end if;
            if ce_2 = '1' then
               sign_c2 <= sign_c1;
               expSumPreSub_c2 <= expSumPreSub_c1;
               bias_c2 <= bias_c1;
               exc_c2 <= exc_c1;
            end if;
            if ce_3 = '1' then
               sign_c3 <= sign_c2;
               expSum_c3 <= expSum_c2;
               exc_c3 <= exc_c2;
            end if;
            if ce_4 = '1' then
               sign_c4 <= sign_c3;
               expSum_c4 <= expSum_c3;
               exc_c4 <= exc_c3;
            end if;
            if ce_5 = '1' then
               sign_c5 <= sign_c4;
               expSum_c5 <= expSum_c4;
               exc_c5 <= exc_c4;
            end if;
            if ce_6 = '1' then
               sign_c6 <= sign_c5;
               expSum_c6 <= expSum_c5;
               exc_c6 <= exc_c5;
            end if;
            if ce_7 = '1' then
               sign_c7 <= sign_c6;
               expSum_c7 <= expSum_c6;
               exc_c7 <= exc_c6;
            end if;
            if ce_8 = '1' then
               sign_c8 <= sign_c7;
               expSum_c8 <= expSum_c7;
               exc_c8 <= exc_c7;
            end if;
            if ce_9 = '1' then
               sign_c9 <= sign_c8;
               expSum_c9 <= expSum_c8;
               exc_c9 <= exc_c8;
            end if;
            if ce_10 = '1' then
               sign_c10 <= sign_c9;
               expSum_c10 <= expSum_c9;
               exc_c10 <= exc_c9;
            end if;
            if ce_11 = '1' then
               sign_c11 <= sign_c10;
               expSum_c11 <= expSum_c10;
               exc_c11 <= exc_c10;
            end if;
            if ce_12 = '1' then
               sign_c12 <= sign_c11;
               expSum_c12 <= expSum_c11;
               exc_c12 <= exc_c11;
            end if;
            if ce_13 = '1' then
               sign_c13 <= sign_c12;
               expSum_c13 <= expSum_c12;
               exc_c13 <= exc_c12;
            end if;
            if ce_14 = '1' then
               sign_c14 <= sign_c13;
               sigProd_c14 <= sigProd_c13;
               exc_c14 <= exc_c13;
               norm_c14 <= norm_c13;
               expPostNorm_c14 <= expPostNorm_c13;
            end if;
            if ce_15 = '1' then
               sign_c15 <= sign_c14;
               exc_c15 <= exc_c14;
               sigProdExt_c15 <= sigProdExt_c14;
               sticky_c15 <= sticky_c14;
               guard_c15 <= guard_c14;
            end if;
            if ce_16 = '1' then
               sign_c16 <= sign_c15;
               exc_c16 <= exc_c15;
            end if;
            if ce_17 = '1' then
               sign_c17 <= sign_c16;
               exc_c17 <= exc_c16;
            end if;
            if ce_18 = '1' then
               sign_c18 <= sign_c17;
               exc_c18 <= exc_c17;
            end if;
            if ce_19 = '1' then
               sign_c19 <= sign_c18;
               exc_c19 <= exc_c18;
            end if;
            if ce_20 = '1' then
               sign_c20 <= sign_c19;
               exc_c20 <= exc_c19;
            end if;
            if ce_21 = '1' then
               sign_c21 <= sign_c20;
               exc_c21 <= exc_c20;
            end if;
            if ce_22 = '1' then
               sign_c22 <= sign_c21;
               exc_c22 <= exc_c21;
            end if;
            if ce_23 = '1' then
               sign_c23 <= sign_c22;
               exc_c23 <= exc_c22;
            end if;
            if ce_24 = '1' then
               sign_c24 <= sign_c23;
               exc_c24 <= exc_c23;
            end if;
            if ce_25 = '1' then
               sign_c25 <= sign_c24;
               exc_c25 <= exc_c24;
            end if;
            if ce_26 = '1' then
               sign_c26 <= sign_c25;
               exc_c26 <= exc_c25;
            end if;
         end if;
      end process;
   sign_c0 <= X(31) xor Y(31);
   expX_c0 <= X(30 downto 23);
   expY_c0 <= Y(30 downto 23);
   expSumPreSub_c1 <= ("00" & expX_c1) + ("00" & expY_c1);
   bias_c0 <= CONV_STD_LOGIC_VECTOR(127,10);
   expSum_c2 <= expSumPreSub_c2 - bias_c2;
   sigX_c0 <= "1" & X(22 downto 0);
   sigY_c0 <= "1" & Y(22 downto 0);
   SignificandMultiplication: IntMultiplier_24x24_48_Freq800_2_034000_uid5
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
                 X => sigX_c0,
                 Y => sigY_c0,
                 R => sigProd_c13);
   excSel_c0 <= X(33 downto 32) & Y(33 downto 32);
   with excSel_c0  select  
   exc_c0 <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   norm_c13 <= sigProd_c13(47);
   -- exponent update
   expPostNorm_c13 <= expSum_c13 + ("000000000" & norm_c13);
   -- significand normalization shift
   sigProdExt_c14 <= sigProd_c14(46 downto 0) & "0" when norm_c14='1' else
                         sigProd_c14(45 downto 0) & "00";
   expSig_c14 <= expPostNorm_c14 & sigProdExt_c14(47 downto 25);
   sticky_c14 <= sigProdExt_c14(24);
   guard_c14 <= '0' when sigProdExt_c14(23 downto 0)="000000000000000000000000" else '1';
   round_c15 <= sticky_c15 and ( (guard_c15 and not(sigProdExt_c15(25))) or (sigProdExt_c15(25) ))  ;
   RoundingAdder: IntAdder_33_Freq800_2_034000_uid355
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
                 Cin => round_c15,
                 X => expSig_c14,
                 Y => "000000000000000000000000000000000",
                 R => expSigPostRound_c26);
   with expSigPostRound_c26(32 downto 31)  select 
   excPostNorm_c26 <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc_c26  select  
   finalExc_c26 <= exc_c26 when  "11"|"10"|"00",
                       excPostNorm_c26 when others; 
   R <= finalExc_c26 & sign_c26 & expSigPostRound_c26(30 downto 0);
end architecture;




--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid15
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

entity MultTable_Freq300_2_875333_uid15 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid15 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid20
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

entity MultTable_Freq300_2_875333_uid20 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid20 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid27
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

entity MultTable_Freq300_2_875333_uid27 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid27 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid32
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

entity MultTable_Freq300_2_875333_uid32 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid32 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid39
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

entity MultTable_Freq300_2_875333_uid39 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid39 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid44
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

entity MultTable_Freq300_2_875333_uid44 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid44 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid51
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

entity MultTable_Freq300_2_875333_uid51 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid51 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid56
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

entity MultTable_Freq300_2_875333_uid56 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid56 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid63
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

entity MultTable_Freq300_2_875333_uid63 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid63 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid68
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

entity MultTable_Freq300_2_875333_uid68 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid68 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid75
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

entity MultTable_Freq300_2_875333_uid75 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid75 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid80
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

entity MultTable_Freq300_2_875333_uid80 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid80 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid87
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

entity MultTable_Freq300_2_875333_uid87 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid87 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid92
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

entity MultTable_Freq300_2_875333_uid92 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid92 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid99
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

entity MultTable_Freq300_2_875333_uid99 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid99 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid104
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

entity MultTable_Freq300_2_875333_uid104 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid104 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid111
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

entity MultTable_Freq300_2_875333_uid111 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid111 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid116
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

entity MultTable_Freq300_2_875333_uid116 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid116 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid123
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

entity MultTable_Freq300_2_875333_uid123 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid123 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid128
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

entity MultTable_Freq300_2_875333_uid128 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid128 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid135
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

entity MultTable_Freq300_2_875333_uid135 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid135 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid140
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

entity MultTable_Freq300_2_875333_uid140 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid140 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid147
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

entity MultTable_Freq300_2_875333_uid147 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid147 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                          MultTable_Freq300_2_875333_uid152
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

entity MultTable_Freq300_2_875333_uid152 is
    port (X : in  std_logic_vector(4 downto 0);
          Y : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of MultTable_Freq300_2_875333_uid152 is
signal Y0 :  std_logic_vector(4 downto 0);
attribute ram_extract: string;
attribute ram_style: string;
attribute ram_extract of Y0: signal is "yes";
attribute ram_style of Y0: signal is "distributed";
signal Y1 :  std_logic_vector(4 downto 0);
begin
   with X  select  Y0 <= 
      "00000" when "00000",
      "00000" when "00001",
      "00000" when "00010",
      "00000" when "00011",
      "00000" when "00100",
      "00000" when "00101",
      "00000" when "00110",
      "00000" when "00111",
      "00000" when "01000",
      "00001" when "01001",
      "00010" when "01010",
      "00011" when "01011",
      "00100" when "01100",
      "00101" when "01101",
      "00110" when "01110",
      "00111" when "01111",
      "00000" when "10000",
      "00010" when "10001",
      "00100" when "10010",
      "00110" when "10011",
      "01000" when "10100",
      "01010" when "10101",
      "01100" when "10110",
      "01110" when "10111",
      "00000" when "11000",
      "00011" when "11001",
      "00110" when "11010",
      "01001" when "11011",
      "01100" when "11100",
      "01111" when "11101",
      "10010" when "11110",
      "10101" when "11111",
      "-----" when others;
   Y1 <= Y0; -- for the possible blockram register
   Y <= Y1;
end architecture;

--------------------------------------------------------------------------------
--                       Compressor_23_3_Freq300_2_875333_uid156
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X1 X0
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_23_3_Freq300_2_875333_uid156 is
    port (X1 : in  std_logic_vector(1 downto 0);
          X0 : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_23_3_Freq300_2_875333_uid156 is
signal X :  std_logic_vector(4 downto 0);
signal R0 :  std_logic_vector(2 downto 0);
begin
   X <= X1 & X0 ;

   with X  select  R0 <= 
      "000" when "00000",
      "001" when "00001" | "00010" | "00100",
      "010" when "00011" | "00101" | "00110" | "01000" | "10000",
      "011" when "00111" | "01001" | "01010" | "01100" | "10001" | "10010" | "10100",
      "100" when "01011" | "01101" | "01110" | "10011" | "10101" | "10110" | "11000",
      "101" when "01111" | "10111" | "11001" | "11010" | "11100",
      "110" when "11011" | "11101" | "11110",
      "111" when "11111",
      "---" when others;
   R <= R0;
end architecture;

--------------------------------------------------------------------------------
--                       Compressor_3_2_Freq300_2_875333_uid160
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X0
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_3_2_Freq300_2_875333_uid160 is
    port (X0 : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of Compressor_3_2_Freq300_2_875333_uid160 is
signal X :  std_logic_vector(2 downto 0);
signal R0 :  std_logic_vector(1 downto 0);
begin
   X <= X0 ;

   with X  select  R0 <= 
      "00" when "000",
      "01" when "001" | "010" | "100",
      "10" when "011" | "101" | "110",
      "11" when "111",
      "--" when others;
   R <= R0;
end architecture;

--------------------------------------------------------------------------------
--                       Compressor_14_3_Freq300_2_875333_uid164
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X1 X0
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_14_3_Freq300_2_875333_uid164 is
    port (X1 : in  std_logic_vector(0 downto 0);
          X0 : in  std_logic_vector(3 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_14_3_Freq300_2_875333_uid164 is
signal X :  std_logic_vector(4 downto 0);
signal R0 :  std_logic_vector(2 downto 0);
begin
   X <= X1 & X0 ;

   with X  select  R0 <= 
      "000" when "00000",
      "001" when "00001" | "00010" | "00100" | "01000",
      "010" when "00011" | "00101" | "00110" | "01001" | "01010" | "01100" | "10000",
      "011" when "00111" | "01011" | "01101" | "01110" | "10001" | "10010" | "10100" | "11000",
      "100" when "01111" | "10011" | "10101" | "10110" | "11001" | "11010" | "11100",
      "101" when "10111" | "11011" | "11101" | "11110",
      "110" when "11111",
      "---" when others;
   R <= R0;
end architecture;

--------------------------------------------------------------------------------
--                       Compressor_6_3_Freq300_2_875333_uid170
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X0
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_6_3_Freq300_2_875333_uid170 is
    port (X0 : in  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_6_3_Freq300_2_875333_uid170 is
signal X :  std_logic_vector(5 downto 0);
signal R0 :  std_logic_vector(2 downto 0);
begin
   X <= X0 ;

   with X  select  R0 <= 
      "000" when "000000",
      "001" when "000001" | "000010" | "000100" | "001000" | "010000" | "100000",
      "010" when "000011" | "000101" | "000110" | "001001" | "001010" | "001100" | "010001" | "010010" | "010100" | "011000" | "100001" | "100010" | "100100" | "101000" | "110000",
      "011" when "000111" | "001011" | "001101" | "001110" | "010011" | "010101" | "010110" | "011001" | "011010" | "011100" | "100011" | "100101" | "100110" | "101001" | "101010" | "101100" | "110001" | "110010" | "110100" | "111000",
      "100" when "001111" | "010111" | "011011" | "011101" | "011110" | "100111" | "101011" | "101101" | "101110" | "110011" | "110101" | "110110" | "111001" | "111010" | "111100",
      "101" when "011111" | "101111" | "110111" | "111011" | "111101" | "111110",
      "110" when "111111",
      "---" when others;
   R <= R0;
end architecture;

--------------------------------------------------------------------------------
--                        DSPBlock_17x24_Freq300_2_875333_uid9
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X Y
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity DSPBlock_17x24_Freq300_2_875333_uid9 is
    port (clk : in std_logic;
          X : in  std_logic_vector(16 downto 0);
          Y : in  std_logic_vector(23 downto 0);
          R : out  std_logic_vector(40 downto 0)   );
end entity;

architecture arch of DSPBlock_17x24_Freq300_2_875333_uid9 is
signal Mfull_c0 :  std_logic_vector(40 downto 0);
signal M_c0 :  std_logic_vector(40 downto 0);
begin
   Mfull_c0 <= std_logic_vector(unsigned(X) * unsigned(Y)); -- multiplier
   M_c0 <= Mfull_c0(40 downto 0);
   R <= M_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq300_2_875333_uid11
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq300_2_875333_uid11 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq300_2_875333_uid11 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid13
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid13 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid13 is
   component MultTable_Freq300_2_875333_uid15 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy16_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid15
      port map ( X => Xtable_c0,
                 Y => Y1_copy16_c0);
   Y1_c0 <= Y1_copy16_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid18
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid18 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid18 is
   component MultTable_Freq300_2_875333_uid20 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy21_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid20
      port map ( X => Xtable_c0,
                 Y => Y1_copy21_c0);
   Y1_c0 <= Y1_copy21_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq300_2_875333_uid23
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq300_2_875333_uid23 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq300_2_875333_uid23 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid25
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid25 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid25 is
   component MultTable_Freq300_2_875333_uid27 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy28_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid27
      port map ( X => Xtable_c0,
                 Y => Y1_copy28_c0);
   Y1_c0 <= Y1_copy28_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid30
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid30 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid30 is
   component MultTable_Freq300_2_875333_uid32 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy33_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid32
      port map ( X => Xtable_c0,
                 Y => Y1_copy33_c0);
   Y1_c0 <= Y1_copy33_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq300_2_875333_uid35
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq300_2_875333_uid35 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq300_2_875333_uid35 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid37
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid37 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid37 is
   component MultTable_Freq300_2_875333_uid39 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy40_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid39
      port map ( X => Xtable_c0,
                 Y => Y1_copy40_c0);
   Y1_c0 <= Y1_copy40_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid42
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid42 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid42 is
   component MultTable_Freq300_2_875333_uid44 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy45_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid44
      port map ( X => Xtable_c0,
                 Y => Y1_copy45_c0);
   Y1_c0 <= Y1_copy45_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq300_2_875333_uid47
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq300_2_875333_uid47 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq300_2_875333_uid47 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid49
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid49 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid49 is
   component MultTable_Freq300_2_875333_uid51 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy52_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid51
      port map ( X => Xtable_c0,
                 Y => Y1_copy52_c0);
   Y1_c0 <= Y1_copy52_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid54
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid54 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid54 is
   component MultTable_Freq300_2_875333_uid56 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy57_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid56
      port map ( X => Xtable_c0,
                 Y => Y1_copy57_c0);
   Y1_c0 <= Y1_copy57_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq300_2_875333_uid59
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq300_2_875333_uid59 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq300_2_875333_uid59 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid61
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid61 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid61 is
   component MultTable_Freq300_2_875333_uid63 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy64_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid63
      port map ( X => Xtable_c0,
                 Y => Y1_copy64_c0);
   Y1_c0 <= Y1_copy64_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid66
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid66 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid66 is
   component MultTable_Freq300_2_875333_uid68 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy69_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid68
      port map ( X => Xtable_c0,
                 Y => Y1_copy69_c0);
   Y1_c0 <= Y1_copy69_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq300_2_875333_uid71
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq300_2_875333_uid71 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq300_2_875333_uid71 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid73
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid73 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid73 is
   component MultTable_Freq300_2_875333_uid75 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy76_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid75
      port map ( X => Xtable_c0,
                 Y => Y1_copy76_c0);
   Y1_c0 <= Y1_copy76_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid78
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid78 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid78 is
   component MultTable_Freq300_2_875333_uid80 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy81_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid80
      port map ( X => Xtable_c0,
                 Y => Y1_copy81_c0);
   Y1_c0 <= Y1_copy81_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq300_2_875333_uid83
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq300_2_875333_uid83 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq300_2_875333_uid83 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid85
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid85 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid85 is
   component MultTable_Freq300_2_875333_uid87 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy88_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid87
      port map ( X => Xtable_c0,
                 Y => Y1_copy88_c0);
   Y1_c0 <= Y1_copy88_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid90
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid90 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid90 is
   component MultTable_Freq300_2_875333_uid92 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy93_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid92
      port map ( X => Xtable_c0,
                 Y => Y1_copy93_c0);
   Y1_c0 <= Y1_copy93_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_1x2_Freq300_2_875333_uid95
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq300_2_875333_uid95 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq300_2_875333_uid95 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                     IntMultiplierLUT_3x2_Freq300_2_875333_uid97
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid97 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid97 is
   component MultTable_Freq300_2_875333_uid99 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy100_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid99
      port map ( X => Xtable_c0,
                 Y => Y1_copy100_c0);
   Y1_c0 <= Y1_copy100_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq300_2_875333_uid102
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid102 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid102 is
   component MultTable_Freq300_2_875333_uid104 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy105_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid104
      port map ( X => Xtable_c0,
                 Y => Y1_copy105_c0);
   Y1_c0 <= Y1_copy105_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_1x2_Freq300_2_875333_uid107
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq300_2_875333_uid107 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq300_2_875333_uid107 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq300_2_875333_uid109
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid109 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid109 is
   component MultTable_Freq300_2_875333_uid111 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy112_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid111
      port map ( X => Xtable_c0,
                 Y => Y1_copy112_c0);
   Y1_c0 <= Y1_copy112_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq300_2_875333_uid114
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid114 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid114 is
   component MultTable_Freq300_2_875333_uid116 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy117_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid116
      port map ( X => Xtable_c0,
                 Y => Y1_copy117_c0);
   Y1_c0 <= Y1_copy117_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_1x2_Freq300_2_875333_uid119
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq300_2_875333_uid119 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq300_2_875333_uid119 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq300_2_875333_uid121
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid121 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid121 is
   component MultTable_Freq300_2_875333_uid123 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy124_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid123
      port map ( X => Xtable_c0,
                 Y => Y1_copy124_c0);
   Y1_c0 <= Y1_copy124_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq300_2_875333_uid126
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid126 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid126 is
   component MultTable_Freq300_2_875333_uid128 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy129_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid128
      port map ( X => Xtable_c0,
                 Y => Y1_copy129_c0);
   Y1_c0 <= Y1_copy129_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_1x2_Freq300_2_875333_uid131
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq300_2_875333_uid131 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq300_2_875333_uid131 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq300_2_875333_uid133
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid133 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid133 is
   component MultTable_Freq300_2_875333_uid135 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy136_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid135
      port map ( X => Xtable_c0,
                 Y => Y1_copy136_c0);
   Y1_c0 <= Y1_copy136_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq300_2_875333_uid138
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid138 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid138 is
   component MultTable_Freq300_2_875333_uid140 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy141_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid140
      port map ( X => Xtable_c0,
                 Y => Y1_copy141_c0);
   Y1_c0 <= Y1_copy141_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_1x2_Freq300_2_875333_uid143
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_1x2_Freq300_2_875333_uid143 is
    port (clk : in std_logic;
          X : in  std_logic_vector(0 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_1x2_Freq300_2_875333_uid143 is
signal replicated_c0 :  std_logic_vector(1 downto 0);
signal prod_c0 :  std_logic_vector(1 downto 0);
begin
   replicated_c0 <= (1 downto 0 => X(0));
   prod_c0 <= Y and replicated_c0;
   R <= prod_c0;
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq300_2_875333_uid145
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid145 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid145 is
   component MultTable_Freq300_2_875333_uid147 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy148_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid147
      port map ( X => Xtable_c0,
                 Y => Y1_copy148_c0);
   Y1_c0 <= Y1_copy148_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplierLUT_3x2_Freq300_2_875333_uid150
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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

entity IntMultiplierLUT_3x2_Freq300_2_875333_uid150 is
    port (clk : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(4 downto 0)   );
end entity;

architecture arch of IntMultiplierLUT_3x2_Freq300_2_875333_uid150 is
   component MultTable_Freq300_2_875333_uid152 is
      port ( X : in  std_logic_vector(4 downto 0);
             Y : out  std_logic_vector(4 downto 0)   );
   end component;

signal Xtable_c0 :  std_logic_vector(4 downto 0);
signal Y1_c0 :  std_logic_vector(4 downto 0);
signal Y1_copy153_c0 :  std_logic_vector(4 downto 0);
begin
Xtable_c0 <= Y & X;
   R <= Y1_c0;
   TableMult: MultTable_Freq300_2_875333_uid152
      port map ( X => Xtable_c0,
                 Y => Y1_copy153_c0);
   Y1_c0 <= Y1_copy153_c0; -- output copy to hold a pipeline register if needed
end architecture;

--------------------------------------------------------------------------------
--                         IntAdder_30_Freq300_2_875333_uid352
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles
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

entity IntAdder_30_Freq300_2_875333_uid352 is
    port (clk, ce_1 : in std_logic;
          X : in  std_logic_vector(29 downto 0);
          Y : in  std_logic_vector(29 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(29 downto 0)   );
end entity;

architecture arch of IntAdder_30_Freq300_2_875333_uid352 is
signal Rtmp_c1 :  std_logic_vector(29 downto 0);
signal Cin_c1 :  std_logic;
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               Cin_c1 <= Cin;
            end if;
         end if;
      end process;
   Rtmp_c1 <= X + Y + Cin_c1;
   R <= Rtmp_c1;
end architecture;

--------------------------------------------------------------------------------
--                    IntMultiplier_24x24_48_Freq300_2_875333_uid5
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Martin Kumm, Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012-
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles
-- Clock period (ns): 3.33333
-- Target frequency (MHz): 300
-- Input signals: X Y
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_24x24_48_Freq300_2_875333_uid5 is
    port (clk, ce_1 : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          Y : in  std_logic_vector(23 downto 0);
          R : out  std_logic_vector(47 downto 0)   );
end entity;

architecture arch of IntMultiplier_24x24_48_Freq300_2_875333_uid5 is
   component DSPBlock_17x24_Freq300_2_875333_uid9 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(16 downto 0);
             Y : in  std_logic_vector(23 downto 0);
             R : out  std_logic_vector(40 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq300_2_875333_uid11 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid13 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid18 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq300_2_875333_uid23 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid25 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid30 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq300_2_875333_uid35 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid37 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid42 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq300_2_875333_uid47 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid49 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid54 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq300_2_875333_uid59 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid61 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid66 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq300_2_875333_uid71 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid73 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid78 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq300_2_875333_uid83 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid85 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid90 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq300_2_875333_uid95 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid97 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid102 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq300_2_875333_uid107 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid109 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid114 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq300_2_875333_uid119 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid121 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid126 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq300_2_875333_uid131 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid133 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid138 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_1x2_Freq300_2_875333_uid143 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(0 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid145 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component IntMultiplierLUT_3x2_Freq300_2_875333_uid150 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(4 downto 0)   );
   end component;

   component Compressor_23_3_Freq300_2_875333_uid156 is
      port ( X1 : in  std_logic_vector(1 downto 0);
             X0 : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_3_2_Freq300_2_875333_uid160 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component Compressor_14_3_Freq300_2_875333_uid164 is
      port ( X1 : in  std_logic_vector(0 downto 0);
             X0 : in  std_logic_vector(3 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_6_3_Freq300_2_875333_uid170 is
      port ( X0 : in  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component IntAdder_30_Freq300_2_875333_uid352 is
      port ( clk, ce_1 : in std_logic;
             X : in  std_logic_vector(29 downto 0);
             Y : in  std_logic_vector(29 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(29 downto 0)   );
   end component;

signal XX_m6_c0 :  std_logic_vector(23 downto 0);
signal YY_m6_c0 :  std_logic_vector(23 downto 0);
signal tile_0_X_c0 :  std_logic_vector(16 downto 0);
signal tile_0_Y_c0 :  std_logic_vector(23 downto 0);
signal tile_0_output_c0 :  std_logic_vector(40 downto 0);
signal tile_0_filtered_output_c0 :  unsigned(40-0 downto 0);
signal bh7_w0_0_c0, bh7_w0_0_c1 :  std_logic;
signal bh7_w1_0_c0, bh7_w1_0_c1 :  std_logic;
signal bh7_w2_0_c0, bh7_w2_0_c1 :  std_logic;
signal bh7_w3_0_c0, bh7_w3_0_c1 :  std_logic;
signal bh7_w4_0_c0, bh7_w4_0_c1 :  std_logic;
signal bh7_w5_0_c0, bh7_w5_0_c1 :  std_logic;
signal bh7_w6_0_c0, bh7_w6_0_c1 :  std_logic;
signal bh7_w7_0_c0, bh7_w7_0_c1 :  std_logic;
signal bh7_w8_0_c0, bh7_w8_0_c1 :  std_logic;
signal bh7_w9_0_c0, bh7_w9_0_c1 :  std_logic;
signal bh7_w10_0_c0, bh7_w10_0_c1 :  std_logic;
signal bh7_w11_0_c0, bh7_w11_0_c1 :  std_logic;
signal bh7_w12_0_c0, bh7_w12_0_c1 :  std_logic;
signal bh7_w13_0_c0, bh7_w13_0_c1 :  std_logic;
signal bh7_w14_0_c0, bh7_w14_0_c1 :  std_logic;
signal bh7_w15_0_c0, bh7_w15_0_c1 :  std_logic;
signal bh7_w16_0_c0, bh7_w16_0_c1 :  std_logic;
signal bh7_w17_0_c0 :  std_logic;
signal bh7_w18_0_c0 :  std_logic;
signal bh7_w19_0_c0 :  std_logic;
signal bh7_w20_0_c0 :  std_logic;
signal bh7_w21_0_c0 :  std_logic;
signal bh7_w22_0_c0 :  std_logic;
signal bh7_w23_0_c0 :  std_logic;
signal bh7_w24_0_c0 :  std_logic;
signal bh7_w25_0_c0 :  std_logic;
signal bh7_w26_0_c0, bh7_w26_0_c1 :  std_logic;
signal bh7_w27_0_c0, bh7_w27_0_c1 :  std_logic;
signal bh7_w28_0_c0, bh7_w28_0_c1 :  std_logic;
signal bh7_w29_0_c0, bh7_w29_0_c1 :  std_logic;
signal bh7_w30_0_c0, bh7_w30_0_c1 :  std_logic;
signal bh7_w31_0_c0, bh7_w31_0_c1 :  std_logic;
signal bh7_w32_0_c0, bh7_w32_0_c1 :  std_logic;
signal bh7_w33_0_c0, bh7_w33_0_c1 :  std_logic;
signal bh7_w34_0_c0, bh7_w34_0_c1 :  std_logic;
signal bh7_w35_0_c0, bh7_w35_0_c1 :  std_logic;
signal bh7_w36_0_c0, bh7_w36_0_c1 :  std_logic;
signal bh7_w37_0_c0, bh7_w37_0_c1 :  std_logic;
signal bh7_w38_0_c0, bh7_w38_0_c1 :  std_logic;
signal bh7_w39_0_c0, bh7_w39_0_c1 :  std_logic;
signal bh7_w40_0_c0, bh7_w40_0_c1 :  std_logic;
signal tile_1_X_c0 :  std_logic_vector(0 downto 0);
signal tile_1_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_1_output_c0 :  std_logic_vector(1 downto 0);
signal tile_1_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w45_0_c0 :  std_logic;
signal bh7_w46_0_c0 :  std_logic;
signal tile_2_X_c0 :  std_logic_vector(2 downto 0);
signal tile_2_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_2_output_c0 :  std_logic_vector(4 downto 0);
signal tile_2_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w42_0_c0 :  std_logic;
signal bh7_w43_0_c0 :  std_logic;
signal bh7_w44_0_c0 :  std_logic;
signal bh7_w45_1_c0 :  std_logic;
signal bh7_w46_1_c0 :  std_logic;
signal tile_3_X_c0 :  std_logic_vector(2 downto 0);
signal tile_3_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_3_output_c0 :  std_logic_vector(4 downto 0);
signal tile_3_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w39_1_c0 :  std_logic;
signal bh7_w40_1_c0 :  std_logic;
signal bh7_w41_0_c0 :  std_logic;
signal bh7_w42_1_c0 :  std_logic;
signal bh7_w43_1_c0 :  std_logic;
signal tile_4_X_c0 :  std_logic_vector(0 downto 0);
signal tile_4_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_4_output_c0 :  std_logic_vector(1 downto 0);
signal tile_4_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w43_2_c0 :  std_logic;
signal bh7_w44_1_c0 :  std_logic;
signal tile_5_X_c0 :  std_logic_vector(2 downto 0);
signal tile_5_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_5_output_c0 :  std_logic_vector(4 downto 0);
signal tile_5_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w40_2_c0 :  std_logic;
signal bh7_w41_1_c0 :  std_logic;
signal bh7_w42_2_c0 :  std_logic;
signal bh7_w43_3_c0 :  std_logic;
signal bh7_w44_2_c0 :  std_logic;
signal tile_6_X_c0 :  std_logic_vector(2 downto 0);
signal tile_6_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_6_output_c0 :  std_logic_vector(4 downto 0);
signal tile_6_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w37_1_c0 :  std_logic;
signal bh7_w38_1_c0 :  std_logic;
signal bh7_w39_2_c0 :  std_logic;
signal bh7_w40_3_c0 :  std_logic;
signal bh7_w41_2_c0 :  std_logic;
signal tile_7_X_c0 :  std_logic_vector(0 downto 0);
signal tile_7_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_7_output_c0 :  std_logic_vector(1 downto 0);
signal tile_7_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w41_3_c0 :  std_logic;
signal bh7_w42_3_c0 :  std_logic;
signal tile_8_X_c0 :  std_logic_vector(2 downto 0);
signal tile_8_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_8_output_c0 :  std_logic_vector(4 downto 0);
signal tile_8_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w38_2_c0 :  std_logic;
signal bh7_w39_3_c0 :  std_logic;
signal bh7_w40_4_c0 :  std_logic;
signal bh7_w41_4_c0 :  std_logic;
signal bh7_w42_4_c0 :  std_logic;
signal tile_9_X_c0 :  std_logic_vector(2 downto 0);
signal tile_9_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_9_output_c0 :  std_logic_vector(4 downto 0);
signal tile_9_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w35_1_c0 :  std_logic;
signal bh7_w36_1_c0 :  std_logic;
signal bh7_w37_2_c0 :  std_logic;
signal bh7_w38_3_c0 :  std_logic;
signal bh7_w39_4_c0 :  std_logic;
signal tile_10_X_c0 :  std_logic_vector(0 downto 0);
signal tile_10_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_10_output_c0 :  std_logic_vector(1 downto 0);
signal tile_10_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w39_5_c0 :  std_logic;
signal bh7_w40_5_c0 :  std_logic;
signal tile_11_X_c0 :  std_logic_vector(2 downto 0);
signal tile_11_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_11_output_c0 :  std_logic_vector(4 downto 0);
signal tile_11_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w36_2_c0 :  std_logic;
signal bh7_w37_3_c0 :  std_logic;
signal bh7_w38_4_c0 :  std_logic;
signal bh7_w39_6_c0 :  std_logic;
signal bh7_w40_6_c0 :  std_logic;
signal tile_12_X_c0 :  std_logic_vector(2 downto 0);
signal tile_12_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_12_output_c0 :  std_logic_vector(4 downto 0);
signal tile_12_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w33_1_c0 :  std_logic;
signal bh7_w34_1_c0 :  std_logic;
signal bh7_w35_2_c0 :  std_logic;
signal bh7_w36_3_c0 :  std_logic;
signal bh7_w37_4_c0 :  std_logic;
signal tile_13_X_c0 :  std_logic_vector(0 downto 0);
signal tile_13_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_13_output_c0 :  std_logic_vector(1 downto 0);
signal tile_13_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w37_5_c0 :  std_logic;
signal bh7_w38_5_c0 :  std_logic;
signal tile_14_X_c0 :  std_logic_vector(2 downto 0);
signal tile_14_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_14_output_c0 :  std_logic_vector(4 downto 0);
signal tile_14_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w34_2_c0 :  std_logic;
signal bh7_w35_3_c0 :  std_logic;
signal bh7_w36_4_c0 :  std_logic;
signal bh7_w37_6_c0 :  std_logic;
signal bh7_w38_6_c0 :  std_logic;
signal tile_15_X_c0 :  std_logic_vector(2 downto 0);
signal tile_15_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_15_output_c0 :  std_logic_vector(4 downto 0);
signal tile_15_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w31_1_c0 :  std_logic;
signal bh7_w32_1_c0 :  std_logic;
signal bh7_w33_2_c0 :  std_logic;
signal bh7_w34_3_c0 :  std_logic;
signal bh7_w35_4_c0 :  std_logic;
signal tile_16_X_c0 :  std_logic_vector(0 downto 0);
signal tile_16_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_16_output_c0 :  std_logic_vector(1 downto 0);
signal tile_16_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w35_5_c0 :  std_logic;
signal bh7_w36_5_c0 :  std_logic;
signal tile_17_X_c0 :  std_logic_vector(2 downto 0);
signal tile_17_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_17_output_c0 :  std_logic_vector(4 downto 0);
signal tile_17_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w32_2_c0 :  std_logic;
signal bh7_w33_3_c0 :  std_logic;
signal bh7_w34_4_c0 :  std_logic;
signal bh7_w35_6_c0 :  std_logic;
signal bh7_w36_6_c0 :  std_logic;
signal tile_18_X_c0 :  std_logic_vector(2 downto 0);
signal tile_18_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_18_output_c0 :  std_logic_vector(4 downto 0);
signal tile_18_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w29_1_c0 :  std_logic;
signal bh7_w30_1_c0 :  std_logic;
signal bh7_w31_2_c0 :  std_logic;
signal bh7_w32_3_c0 :  std_logic;
signal bh7_w33_4_c0 :  std_logic;
signal tile_19_X_c0 :  std_logic_vector(0 downto 0);
signal tile_19_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_19_output_c0 :  std_logic_vector(1 downto 0);
signal tile_19_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w33_5_c0 :  std_logic;
signal bh7_w34_5_c0 :  std_logic;
signal tile_20_X_c0 :  std_logic_vector(2 downto 0);
signal tile_20_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_20_output_c0 :  std_logic_vector(4 downto 0);
signal tile_20_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w30_2_c0 :  std_logic;
signal bh7_w31_3_c0 :  std_logic;
signal bh7_w32_4_c0 :  std_logic;
signal bh7_w33_6_c0 :  std_logic;
signal bh7_w34_6_c0 :  std_logic;
signal tile_21_X_c0 :  std_logic_vector(2 downto 0);
signal tile_21_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_21_output_c0 :  std_logic_vector(4 downto 0);
signal tile_21_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w27_1_c0 :  std_logic;
signal bh7_w28_1_c0 :  std_logic;
signal bh7_w29_2_c0 :  std_logic;
signal bh7_w30_3_c0 :  std_logic;
signal bh7_w31_4_c0 :  std_logic;
signal tile_22_X_c0 :  std_logic_vector(0 downto 0);
signal tile_22_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_22_output_c0 :  std_logic_vector(1 downto 0);
signal tile_22_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w31_5_c0 :  std_logic;
signal bh7_w32_5_c0 :  std_logic;
signal tile_23_X_c0 :  std_logic_vector(2 downto 0);
signal tile_23_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_23_output_c0 :  std_logic_vector(4 downto 0);
signal tile_23_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w28_2_c0 :  std_logic;
signal bh7_w29_3_c0 :  std_logic;
signal bh7_w30_4_c0 :  std_logic;
signal bh7_w31_6_c0 :  std_logic;
signal bh7_w32_6_c0 :  std_logic;
signal tile_24_X_c0 :  std_logic_vector(2 downto 0);
signal tile_24_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_24_output_c0 :  std_logic_vector(4 downto 0);
signal tile_24_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w25_1_c0 :  std_logic;
signal bh7_w26_1_c0 :  std_logic;
signal bh7_w27_2_c0 :  std_logic;
signal bh7_w28_3_c0 :  std_logic;
signal bh7_w29_4_c0 :  std_logic;
signal tile_25_X_c0 :  std_logic_vector(0 downto 0);
signal tile_25_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_25_output_c0 :  std_logic_vector(1 downto 0);
signal tile_25_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w29_5_c0 :  std_logic;
signal bh7_w30_5_c0 :  std_logic;
signal tile_26_X_c0 :  std_logic_vector(2 downto 0);
signal tile_26_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_26_output_c0 :  std_logic_vector(4 downto 0);
signal tile_26_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w26_2_c0 :  std_logic;
signal bh7_w27_3_c0 :  std_logic;
signal bh7_w28_4_c0 :  std_logic;
signal bh7_w29_6_c0 :  std_logic;
signal bh7_w30_6_c0 :  std_logic;
signal tile_27_X_c0 :  std_logic_vector(2 downto 0);
signal tile_27_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_27_output_c0 :  std_logic_vector(4 downto 0);
signal tile_27_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w23_1_c0 :  std_logic;
signal bh7_w24_1_c0 :  std_logic;
signal bh7_w25_2_c0 :  std_logic;
signal bh7_w26_3_c0 :  std_logic;
signal bh7_w27_4_c0 :  std_logic;
signal tile_28_X_c0 :  std_logic_vector(0 downto 0);
signal tile_28_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_28_output_c0 :  std_logic_vector(1 downto 0);
signal tile_28_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w27_5_c0 :  std_logic;
signal bh7_w28_5_c0 :  std_logic;
signal tile_29_X_c0 :  std_logic_vector(2 downto 0);
signal tile_29_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_29_output_c0 :  std_logic_vector(4 downto 0);
signal tile_29_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w24_2_c0 :  std_logic;
signal bh7_w25_3_c0 :  std_logic;
signal bh7_w26_4_c0 :  std_logic;
signal bh7_w27_6_c0 :  std_logic;
signal bh7_w28_6_c0 :  std_logic;
signal tile_30_X_c0 :  std_logic_vector(2 downto 0);
signal tile_30_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_30_output_c0 :  std_logic_vector(4 downto 0);
signal tile_30_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w21_1_c0 :  std_logic;
signal bh7_w22_1_c0 :  std_logic;
signal bh7_w23_2_c0 :  std_logic;
signal bh7_w24_3_c0 :  std_logic;
signal bh7_w25_4_c0 :  std_logic;
signal tile_31_X_c0 :  std_logic_vector(0 downto 0);
signal tile_31_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_31_output_c0 :  std_logic_vector(1 downto 0);
signal tile_31_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w25_5_c0 :  std_logic;
signal bh7_w26_5_c0 :  std_logic;
signal tile_32_X_c0 :  std_logic_vector(2 downto 0);
signal tile_32_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_32_output_c0 :  std_logic_vector(4 downto 0);
signal tile_32_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w22_2_c0 :  std_logic;
signal bh7_w23_3_c0 :  std_logic;
signal bh7_w24_4_c0 :  std_logic;
signal bh7_w25_6_c0 :  std_logic;
signal bh7_w26_6_c0 :  std_logic;
signal tile_33_X_c0 :  std_logic_vector(2 downto 0);
signal tile_33_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_33_output_c0 :  std_logic_vector(4 downto 0);
signal tile_33_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w19_1_c0 :  std_logic;
signal bh7_w20_1_c0 :  std_logic;
signal bh7_w21_2_c0 :  std_logic;
signal bh7_w22_3_c0 :  std_logic;
signal bh7_w23_4_c0 :  std_logic;
signal tile_34_X_c0 :  std_logic_vector(0 downto 0);
signal tile_34_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_34_output_c0 :  std_logic_vector(1 downto 0);
signal tile_34_filtered_output_c0 :  unsigned(1-0 downto 0);
signal bh7_w23_5_c0 :  std_logic;
signal bh7_w24_5_c0 :  std_logic;
signal tile_35_X_c0 :  std_logic_vector(2 downto 0);
signal tile_35_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_35_output_c0 :  std_logic_vector(4 downto 0);
signal tile_35_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w20_2_c0 :  std_logic;
signal bh7_w21_3_c0 :  std_logic;
signal bh7_w22_4_c0 :  std_logic;
signal bh7_w23_6_c0 :  std_logic;
signal bh7_w24_6_c0 :  std_logic;
signal tile_36_X_c0 :  std_logic_vector(2 downto 0);
signal tile_36_Y_c0 :  std_logic_vector(1 downto 0);
signal tile_36_output_c0 :  std_logic_vector(4 downto 0);
signal tile_36_filtered_output_c0 :  unsigned(4-0 downto 0);
signal bh7_w17_1_c0 :  std_logic;
signal bh7_w18_1_c0 :  std_logic;
signal bh7_w19_2_c0 :  std_logic;
signal bh7_w20_3_c0 :  std_logic;
signal bh7_w21_4_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid157_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid157_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid157_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w18_2_c0 :  std_logic;
signal bh7_w19_3_c0 :  std_logic;
signal bh7_w20_4_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid157_Out0_copy158_c0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid161_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid161_Out0_c0 :  std_logic_vector(1 downto 0);
signal bh7_w20_5_c0 :  std_logic;
signal bh7_w21_5_c0 :  std_logic;
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid161_Out0_copy162_c0 :  std_logic_vector(1 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid165_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid165_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid165_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w21_6_c0 :  std_logic;
signal bh7_w22_5_c0 :  std_logic;
signal bh7_w23_7_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid165_Out0_copy166_c0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid167_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid167_Out0_c0 :  std_logic_vector(1 downto 0);
signal bh7_w22_6_c0 :  std_logic;
signal bh7_w23_8_c0 :  std_logic;
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid167_Out0_copy168_c0 :  std_logic_vector(1 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid171_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid171_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w23_9_c0 :  std_logic;
signal bh7_w24_7_c0 :  std_logic;
signal bh7_w25_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid171_Out0_copy172_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid173_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid173_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w24_8_c0 :  std_logic;
signal bh7_w25_8_c0 :  std_logic;
signal bh7_w26_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid173_Out0_copy174_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid175_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid175_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w25_9_c0 :  std_logic;
signal bh7_w26_8_c0 :  std_logic;
signal bh7_w27_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid175_Out0_copy176_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid177_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid177_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w26_9_c0 :  std_logic;
signal bh7_w27_8_c0 :  std_logic;
signal bh7_w28_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid177_Out0_copy178_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid179_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid179_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w27_9_c0 :  std_logic;
signal bh7_w28_8_c0 :  std_logic;
signal bh7_w29_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid179_Out0_copy180_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid181_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid181_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w28_9_c0 :  std_logic;
signal bh7_w29_8_c0 :  std_logic;
signal bh7_w30_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid181_Out0_copy182_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid183_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid183_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w29_9_c0 :  std_logic;
signal bh7_w30_8_c0 :  std_logic;
signal bh7_w31_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid183_Out0_copy184_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid185_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid185_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w30_9_c0 :  std_logic;
signal bh7_w31_8_c0 :  std_logic;
signal bh7_w32_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid185_Out0_copy186_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid187_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid187_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w31_9_c0 :  std_logic;
signal bh7_w32_8_c0 :  std_logic;
signal bh7_w33_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid187_Out0_copy188_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid189_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid189_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w32_9_c0 :  std_logic;
signal bh7_w33_8_c0 :  std_logic;
signal bh7_w34_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid189_Out0_copy190_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid191_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid191_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w33_9_c0 :  std_logic;
signal bh7_w34_8_c0 :  std_logic;
signal bh7_w35_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid191_Out0_copy192_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid193_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid193_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w34_9_c0 :  std_logic;
signal bh7_w35_8_c0 :  std_logic;
signal bh7_w36_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid193_Out0_copy194_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid195_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid195_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w35_9_c0 :  std_logic;
signal bh7_w36_8_c0 :  std_logic;
signal bh7_w37_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid195_Out0_copy196_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid197_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid197_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w36_9_c0 :  std_logic;
signal bh7_w37_8_c0 :  std_logic;
signal bh7_w38_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid197_Out0_copy198_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid199_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid199_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w37_9_c0 :  std_logic;
signal bh7_w38_8_c0 :  std_logic;
signal bh7_w39_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid199_Out0_copy200_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid201_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid201_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w38_9_c0 :  std_logic;
signal bh7_w39_8_c0 :  std_logic;
signal bh7_w40_7_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid201_Out0_copy202_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid203_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid203_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w39_9_c0 :  std_logic;
signal bh7_w40_8_c0 :  std_logic;
signal bh7_w41_5_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid203_Out0_copy204_c0 :  std_logic_vector(2 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid205_In0_c0 :  std_logic_vector(5 downto 0);
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid205_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w40_9_c0 :  std_logic;
signal bh7_w41_6_c0 :  std_logic;
signal bh7_w42_5_c0 :  std_logic;
signal Compressor_6_3_Freq300_2_875333_uid170_bh7_uid205_Out0_copy206_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid207_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid207_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid207_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w41_7_c0 :  std_logic;
signal bh7_w42_6_c0 :  std_logic;
signal bh7_w43_4_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid207_Out0_copy208_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid209_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid209_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid209_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w42_7_c0 :  std_logic;
signal bh7_w43_5_c0 :  std_logic;
signal bh7_w44_3_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid209_Out0_copy210_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid211_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid211_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid211_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w43_6_c0 :  std_logic;
signal bh7_w44_4_c0 :  std_logic;
signal bh7_w45_2_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid211_Out0_copy212_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid213_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid213_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid213_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w45_3_c0 :  std_logic;
signal bh7_w46_2_c0 :  std_logic;
signal bh7_w47_0_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid213_Out0_copy214_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid215_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid215_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid215_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w20_6_c0 :  std_logic;
signal bh7_w21_7_c0 :  std_logic;
signal bh7_w22_7_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid215_Out0_copy216_c0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid217_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid217_Out0_c0 :  std_logic_vector(1 downto 0);
signal bh7_w22_8_c0 :  std_logic;
signal bh7_w23_10_c0 :  std_logic;
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid217_Out0_copy218_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid219_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid219_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid219_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w23_11_c0 :  std_logic;
signal bh7_w24_9_c0 :  std_logic;
signal bh7_w25_10_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid219_Out0_copy220_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid221_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid221_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid221_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w25_11_c0 :  std_logic;
signal bh7_w26_10_c0 :  std_logic;
signal bh7_w27_10_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid221_Out0_copy222_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid223_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid223_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid223_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w27_11_c0 :  std_logic;
signal bh7_w28_10_c0 :  std_logic;
signal bh7_w29_10_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid223_Out0_copy224_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid225_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid225_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid225_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w29_11_c0 :  std_logic;
signal bh7_w30_10_c0 :  std_logic;
signal bh7_w31_10_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid225_Out0_copy226_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid227_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid227_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid227_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w31_11_c0 :  std_logic;
signal bh7_w32_10_c0 :  std_logic;
signal bh7_w33_10_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid227_Out0_copy228_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid229_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid229_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid229_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w33_11_c0 :  std_logic;
signal bh7_w34_10_c0 :  std_logic;
signal bh7_w35_10_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid229_Out0_copy230_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid231_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid231_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid231_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w35_11_c0 :  std_logic;
signal bh7_w36_10_c0 :  std_logic;
signal bh7_w37_10_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid231_Out0_copy232_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid233_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid233_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid233_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w37_11_c0 :  std_logic;
signal bh7_w38_10_c0 :  std_logic;
signal bh7_w39_10_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid233_Out0_copy234_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid235_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid235_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid235_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w39_11_c0 :  std_logic;
signal bh7_w40_10_c0 :  std_logic;
signal bh7_w41_8_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid235_Out0_copy236_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid237_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid237_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid237_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w41_9_c0 :  std_logic;
signal bh7_w42_8_c0 :  std_logic;
signal bh7_w43_7_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid237_Out0_copy238_c0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid239_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid239_Out0_c0 :  std_logic_vector(1 downto 0);
signal bh7_w42_9_c0 :  std_logic;
signal bh7_w43_8_c0 :  std_logic;
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid239_Out0_copy240_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid241_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid241_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid241_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w43_9_c0 :  std_logic;
signal bh7_w44_5_c0 :  std_logic;
signal bh7_w45_4_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid241_Out0_copy242_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid243_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid243_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid243_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w45_5_c0 :  std_logic;
signal bh7_w46_3_c0 :  std_logic;
signal bh7_w47_1_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid243_Out0_copy244_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid245_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid245_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid245_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w22_9_c0 :  std_logic;
signal bh7_w23_12_c0 :  std_logic;
signal bh7_w24_10_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid245_Out0_copy246_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid247_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid247_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid247_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w25_12_c0 :  std_logic;
signal bh7_w26_11_c0 :  std_logic;
signal bh7_w27_12_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid247_Out0_copy248_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid249_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid249_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid249_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w27_13_c0 :  std_logic;
signal bh7_w28_11_c0 :  std_logic;
signal bh7_w29_12_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid249_Out0_copy250_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid251_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid251_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid251_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w29_13_c0 :  std_logic;
signal bh7_w30_11_c0 :  std_logic;
signal bh7_w31_12_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid251_Out0_copy252_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid253_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid253_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid253_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w31_13_c0 :  std_logic;
signal bh7_w32_11_c0 :  std_logic;
signal bh7_w33_12_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid253_Out0_copy254_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid255_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid255_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid255_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w33_13_c0 :  std_logic;
signal bh7_w34_11_c0 :  std_logic;
signal bh7_w35_12_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid255_Out0_copy256_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid257_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid257_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid257_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w35_13_c0 :  std_logic;
signal bh7_w36_11_c0 :  std_logic;
signal bh7_w37_12_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid257_Out0_copy258_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid259_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid259_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid259_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w37_13_c0 :  std_logic;
signal bh7_w38_11_c0 :  std_logic;
signal bh7_w39_12_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid259_Out0_copy260_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid261_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid261_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid261_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w39_13_c0 :  std_logic;
signal bh7_w40_11_c0 :  std_logic;
signal bh7_w41_10_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid261_Out0_copy262_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid263_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid263_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid263_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w41_11_c0 :  std_logic;
signal bh7_w42_10_c0 :  std_logic;
signal bh7_w43_10_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid263_Out0_copy264_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid265_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid265_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid265_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w43_11_c0 :  std_logic;
signal bh7_w44_6_c0 :  std_logic;
signal bh7_w45_6_c0 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid265_Out0_copy266_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid267_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid267_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid267_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w45_7_c0 :  std_logic;
signal bh7_w46_4_c0 :  std_logic;
signal bh7_w47_2_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid267_Out0_copy268_c0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid269_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid269_Out0_c0 :  std_logic_vector(1 downto 0);
signal bh7_w47_3_c0 :  std_logic;
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid269_Out0_copy270_c0 :  std_logic_vector(1 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid271_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid271_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid271_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w24_11_c0 :  std_logic;
signal bh7_w25_13_c0 :  std_logic;
signal bh7_w26_12_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid271_Out0_copy272_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid273_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid273_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid273_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w27_14_c0 :  std_logic;
signal bh7_w28_12_c0, bh7_w28_12_c1 :  std_logic;
signal bh7_w29_14_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid273_Out0_copy274_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid275_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid275_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid275_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w29_15_c0 :  std_logic;
signal bh7_w30_12_c0 :  std_logic;
signal bh7_w31_14_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid275_Out0_copy276_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid277_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid277_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid277_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w31_15_c0 :  std_logic;
signal bh7_w32_12_c0 :  std_logic;
signal bh7_w33_14_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid277_Out0_copy278_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid279_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid279_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid279_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w33_15_c0 :  std_logic;
signal bh7_w34_12_c0 :  std_logic;
signal bh7_w35_14_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid279_Out0_copy280_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid281_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid281_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid281_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w35_15_c0 :  std_logic;
signal bh7_w36_12_c0 :  std_logic;
signal bh7_w37_14_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid281_Out0_copy282_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid283_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid283_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid283_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w37_15_c0 :  std_logic;
signal bh7_w38_12_c0 :  std_logic;
signal bh7_w39_14_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid283_Out0_copy284_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid285_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid285_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid285_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w39_15_c0 :  std_logic;
signal bh7_w40_12_c0 :  std_logic;
signal bh7_w41_12_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid285_Out0_copy286_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid287_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid287_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid287_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w41_13_c0 :  std_logic;
signal bh7_w42_11_c0 :  std_logic;
signal bh7_w43_12_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid287_Out0_copy288_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid289_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid289_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid289_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w43_13_c0 :  std_logic;
signal bh7_w44_7_c0 :  std_logic;
signal bh7_w45_8_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid289_Out0_copy290_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid291_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid291_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid291_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w45_9_c0 :  std_logic;
signal bh7_w46_5_c0 :  std_logic;
signal bh7_w47_4_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid291_Out0_copy292_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid293_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid293_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid293_Out0_c0 :  std_logic_vector(2 downto 0);
signal bh7_w47_5_c0 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid293_Out0_copy294_c0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w26_13_c1 :  std_logic;
signal bh7_w27_15_c1 :  std_logic;
signal bh7_w28_13_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_Out0_copy296_c0, Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_Out0_copy296_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w29_16_c1 :  std_logic;
signal bh7_w30_13_c1 :  std_logic;
signal bh7_w31_16_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_Out0_copy298_c0, Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_Out0_copy298_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w31_17_c1 :  std_logic;
signal bh7_w32_13_c1 :  std_logic;
signal bh7_w33_16_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_Out0_copy300_c0, Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_Out0_copy300_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w33_17_c1 :  std_logic;
signal bh7_w34_13_c1 :  std_logic;
signal bh7_w35_16_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_Out0_copy302_c0, Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_Out0_copy302_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w35_17_c1 :  std_logic;
signal bh7_w36_13_c1 :  std_logic;
signal bh7_w37_16_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_Out0_copy304_c0, Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_Out0_copy304_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w37_17_c1 :  std_logic;
signal bh7_w38_13_c1 :  std_logic;
signal bh7_w39_16_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_Out0_copy306_c0, Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_Out0_copy306_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w39_17_c1 :  std_logic;
signal bh7_w40_13_c1 :  std_logic;
signal bh7_w41_14_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_Out0_copy308_c0, Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_Out0_copy308_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w41_15_c1 :  std_logic;
signal bh7_w42_12_c1 :  std_logic;
signal bh7_w43_14_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_Out0_copy310_c0, Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_Out0_copy310_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w43_15_c1 :  std_logic;
signal bh7_w44_8_c1 :  std_logic;
signal bh7_w45_10_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_Out0_copy312_c0, Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_Out0_copy312_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w45_11_c1 :  std_logic;
signal bh7_w46_6_c1 :  std_logic;
signal bh7_w47_6_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_Out0_copy314_c0, Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_Out0_copy314_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_In0_c0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_In1_c0 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w47_7_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_Out0_copy316_c0, Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_Out0_copy316_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w17_2_c1 :  std_logic;
signal bh7_w18_3_c1 :  std_logic;
signal bh7_w19_4_c1 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_Out0_copy318_c0, Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_Out0_copy318_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w19_5_c1 :  std_logic;
signal bh7_w20_7_c1 :  std_logic;
signal bh7_w21_8_c1 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_Out0_copy320_c0, Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_Out0_copy320_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w21_9_c1 :  std_logic;
signal bh7_w22_10_c1 :  std_logic;
signal bh7_w23_13_c1 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_Out0_copy322_c0, Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_Out0_copy322_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_In0_c0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_In1_c0 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w23_14_c1 :  std_logic;
signal bh7_w24_12_c1 :  std_logic;
signal bh7_w25_14_c1 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_Out0_copy324_c0, Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_Out0_copy324_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_In0_c0, Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w25_15_c1 :  std_logic;
signal bh7_w26_14_c1 :  std_logic;
signal bh7_w27_16_c1 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_Out0_copy326_c1 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid327_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid327_Out0_c1 :  std_logic_vector(1 downto 0);
signal bh7_w27_17_c1 :  std_logic;
signal bh7_w28_14_c1 :  std_logic;
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid327_Out0_copy328_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid329_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid329_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid329_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w28_15_c1 :  std_logic;
signal bh7_w29_17_c1 :  std_logic;
signal bh7_w30_14_c1 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid329_Out0_copy330_c1 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid331_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid331_Out0_c1 :  std_logic_vector(1 downto 0);
signal bh7_w30_15_c1 :  std_logic;
signal bh7_w31_18_c1 :  std_logic;
signal Compressor_3_2_Freq300_2_875333_uid160_bh7_uid331_Out0_copy332_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid333_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid333_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid333_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w31_19_c1 :  std_logic;
signal bh7_w32_14_c1 :  std_logic;
signal bh7_w33_18_c1 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid333_Out0_copy334_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid335_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid335_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid335_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w33_19_c1 :  std_logic;
signal bh7_w34_14_c1 :  std_logic;
signal bh7_w35_18_c1 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid335_Out0_copy336_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid337_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid337_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid337_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w35_19_c1 :  std_logic;
signal bh7_w36_14_c1 :  std_logic;
signal bh7_w37_18_c1 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid337_Out0_copy338_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid339_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid339_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid339_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w37_19_c1 :  std_logic;
signal bh7_w38_14_c1 :  std_logic;
signal bh7_w39_18_c1 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid339_Out0_copy340_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid341_In0_c1 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid341_In1_c1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid341_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w39_19_c1 :  std_logic;
signal bh7_w40_14_c1 :  std_logic;
signal bh7_w41_16_c1 :  std_logic;
signal Compressor_23_3_Freq300_2_875333_uid156_bh7_uid341_Out0_copy342_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid343_In0_c1 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid343_In1_c1 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid343_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w41_17_c1 :  std_logic;
signal bh7_w42_13_c1 :  std_logic;
signal bh7_w43_16_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid343_Out0_copy344_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid345_In0_c1 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid345_In1_c1 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid345_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w43_17_c1 :  std_logic;
signal bh7_w44_9_c1 :  std_logic;
signal bh7_w45_12_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid345_Out0_copy346_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid347_In0_c1 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid347_In1_c1 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid347_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w45_13_c1 :  std_logic;
signal bh7_w46_7_c1 :  std_logic;
signal bh7_w47_8_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid347_Out0_copy348_c1 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_In0_c1 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_In1_c0, Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_In1_c1 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_Out0_c1 :  std_logic_vector(2 downto 0);
signal bh7_w47_9_c1 :  std_logic;
signal Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_Out0_copy350_c1 :  std_logic_vector(2 downto 0);
signal tmp_bitheapResult_bh7_18_c1 :  std_logic_vector(18 downto 0);
signal bitheapFinalAdd_bh7_In0_c1 :  std_logic_vector(29 downto 0);
signal bitheapFinalAdd_bh7_In1_c1 :  std_logic_vector(29 downto 0);
signal bitheapFinalAdd_bh7_Cin_c0 :  std_logic;
signal bitheapFinalAdd_bh7_Out_c1 :  std_logic_vector(29 downto 0);
signal bitheapResult_bh7_c1 :  std_logic_vector(47 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               bh7_w0_0_c1 <= bh7_w0_0_c0;
               bh7_w1_0_c1 <= bh7_w1_0_c0;
               bh7_w2_0_c1 <= bh7_w2_0_c0;
               bh7_w3_0_c1 <= bh7_w3_0_c0;
               bh7_w4_0_c1 <= bh7_w4_0_c0;
               bh7_w5_0_c1 <= bh7_w5_0_c0;
               bh7_w6_0_c1 <= bh7_w6_0_c0;
               bh7_w7_0_c1 <= bh7_w7_0_c0;
               bh7_w8_0_c1 <= bh7_w8_0_c0;
               bh7_w9_0_c1 <= bh7_w9_0_c0;
               bh7_w10_0_c1 <= bh7_w10_0_c0;
               bh7_w11_0_c1 <= bh7_w11_0_c0;
               bh7_w12_0_c1 <= bh7_w12_0_c0;
               bh7_w13_0_c1 <= bh7_w13_0_c0;
               bh7_w14_0_c1 <= bh7_w14_0_c0;
               bh7_w15_0_c1 <= bh7_w15_0_c0;
               bh7_w16_0_c1 <= bh7_w16_0_c0;
               bh7_w26_0_c1 <= bh7_w26_0_c0;
               bh7_w27_0_c1 <= bh7_w27_0_c0;
               bh7_w28_0_c1 <= bh7_w28_0_c0;
               bh7_w29_0_c1 <= bh7_w29_0_c0;
               bh7_w30_0_c1 <= bh7_w30_0_c0;
               bh7_w31_0_c1 <= bh7_w31_0_c0;
               bh7_w32_0_c1 <= bh7_w32_0_c0;
               bh7_w33_0_c1 <= bh7_w33_0_c0;
               bh7_w34_0_c1 <= bh7_w34_0_c0;
               bh7_w35_0_c1 <= bh7_w35_0_c0;
               bh7_w36_0_c1 <= bh7_w36_0_c0;
               bh7_w37_0_c1 <= bh7_w37_0_c0;
               bh7_w38_0_c1 <= bh7_w38_0_c0;
               bh7_w39_0_c1 <= bh7_w39_0_c0;
               bh7_w40_0_c1 <= bh7_w40_0_c0;
               bh7_w28_12_c1 <= bh7_w28_12_c0;
               Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_Out0_copy296_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_Out0_copy296_c0;
               Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_Out0_copy298_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_Out0_copy298_c0;
               Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_Out0_copy300_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_Out0_copy300_c0;
               Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_Out0_copy302_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_Out0_copy302_c0;
               Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_Out0_copy304_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_Out0_copy304_c0;
               Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_Out0_copy306_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_Out0_copy306_c0;
               Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_Out0_copy308_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_Out0_copy308_c0;
               Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_Out0_copy310_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_Out0_copy310_c0;
               Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_Out0_copy312_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_Out0_copy312_c0;
               Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_Out0_copy314_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_Out0_copy314_c0;
               Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_Out0_copy316_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_Out0_copy316_c0;
               Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_Out0_copy318_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_Out0_copy318_c0;
               Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_Out0_copy320_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_Out0_copy320_c0;
               Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_Out0_copy322_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_Out0_copy322_c0;
               Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_Out0_copy324_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_Out0_copy324_c0;
               Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_In0_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_In0_c0;
               Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_In1_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_In1_c0;
            end if;
         end if;
      end process;
   XX_m6_c0 <= X ;
   YY_m6_c0 <= Y ;
   tile_0_X_c0 <= X(16 downto 0);
   tile_0_Y_c0 <= Y(23 downto 0);
   tile_0_mult: DSPBlock_17x24_Freq300_2_875333_uid9
      port map ( clk  => clk,
                 X => tile_0_X_c0,
                 Y => tile_0_Y_c0,
                 R => tile_0_output_c0);

   tile_0_filtered_output_c0 <= unsigned(tile_0_output_c0(40 downto 0));
   bh7_w0_0_c0 <= tile_0_filtered_output_c0(0);
   bh7_w1_0_c0 <= tile_0_filtered_output_c0(1);
   bh7_w2_0_c0 <= tile_0_filtered_output_c0(2);
   bh7_w3_0_c0 <= tile_0_filtered_output_c0(3);
   bh7_w4_0_c0 <= tile_0_filtered_output_c0(4);
   bh7_w5_0_c0 <= tile_0_filtered_output_c0(5);
   bh7_w6_0_c0 <= tile_0_filtered_output_c0(6);
   bh7_w7_0_c0 <= tile_0_filtered_output_c0(7);
   bh7_w8_0_c0 <= tile_0_filtered_output_c0(8);
   bh7_w9_0_c0 <= tile_0_filtered_output_c0(9);
   bh7_w10_0_c0 <= tile_0_filtered_output_c0(10);
   bh7_w11_0_c0 <= tile_0_filtered_output_c0(11);
   bh7_w12_0_c0 <= tile_0_filtered_output_c0(12);
   bh7_w13_0_c0 <= tile_0_filtered_output_c0(13);
   bh7_w14_0_c0 <= tile_0_filtered_output_c0(14);
   bh7_w15_0_c0 <= tile_0_filtered_output_c0(15);
   bh7_w16_0_c0 <= tile_0_filtered_output_c0(16);
   bh7_w17_0_c0 <= tile_0_filtered_output_c0(17);
   bh7_w18_0_c0 <= tile_0_filtered_output_c0(18);
   bh7_w19_0_c0 <= tile_0_filtered_output_c0(19);
   bh7_w20_0_c0 <= tile_0_filtered_output_c0(20);
   bh7_w21_0_c0 <= tile_0_filtered_output_c0(21);
   bh7_w22_0_c0 <= tile_0_filtered_output_c0(22);
   bh7_w23_0_c0 <= tile_0_filtered_output_c0(23);
   bh7_w24_0_c0 <= tile_0_filtered_output_c0(24);
   bh7_w25_0_c0 <= tile_0_filtered_output_c0(25);
   bh7_w26_0_c0 <= tile_0_filtered_output_c0(26);
   bh7_w27_0_c0 <= tile_0_filtered_output_c0(27);
   bh7_w28_0_c0 <= tile_0_filtered_output_c0(28);
   bh7_w29_0_c0 <= tile_0_filtered_output_c0(29);
   bh7_w30_0_c0 <= tile_0_filtered_output_c0(30);
   bh7_w31_0_c0 <= tile_0_filtered_output_c0(31);
   bh7_w32_0_c0 <= tile_0_filtered_output_c0(32);
   bh7_w33_0_c0 <= tile_0_filtered_output_c0(33);
   bh7_w34_0_c0 <= tile_0_filtered_output_c0(34);
   bh7_w35_0_c0 <= tile_0_filtered_output_c0(35);
   bh7_w36_0_c0 <= tile_0_filtered_output_c0(36);
   bh7_w37_0_c0 <= tile_0_filtered_output_c0(37);
   bh7_w38_0_c0 <= tile_0_filtered_output_c0(38);
   bh7_w39_0_c0 <= tile_0_filtered_output_c0(39);
   bh7_w40_0_c0 <= tile_0_filtered_output_c0(40);
   tile_1_X_c0 <= X(23 downto 23);
   tile_1_Y_c0 <= Y(23 downto 22);
   tile_1_mult: IntMultiplierLUT_1x2_Freq300_2_875333_uid11
      port map ( clk  => clk,
                 X => tile_1_X_c0,
                 Y => tile_1_Y_c0,
                 R => tile_1_output_c0);

   tile_1_filtered_output_c0 <= unsigned(tile_1_output_c0(1 downto 0));
   bh7_w45_0_c0 <= tile_1_filtered_output_c0(0);
   bh7_w46_0_c0 <= tile_1_filtered_output_c0(1);
   tile_2_X_c0 <= X(22 downto 20);
   tile_2_Y_c0 <= Y(23 downto 22);
   tile_2_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid13
      port map ( clk  => clk,
                 X => tile_2_X_c0,
                 Y => tile_2_Y_c0,
                 R => tile_2_output_c0);

   tile_2_filtered_output_c0 <= unsigned(tile_2_output_c0(4 downto 0));
   bh7_w42_0_c0 <= tile_2_filtered_output_c0(0);
   bh7_w43_0_c0 <= tile_2_filtered_output_c0(1);
   bh7_w44_0_c0 <= tile_2_filtered_output_c0(2);
   bh7_w45_1_c0 <= tile_2_filtered_output_c0(3);
   bh7_w46_1_c0 <= tile_2_filtered_output_c0(4);
   tile_3_X_c0 <= X(19 downto 17);
   tile_3_Y_c0 <= Y(23 downto 22);
   tile_3_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid18
      port map ( clk  => clk,
                 X => tile_3_X_c0,
                 Y => tile_3_Y_c0,
                 R => tile_3_output_c0);

   tile_3_filtered_output_c0 <= unsigned(tile_3_output_c0(4 downto 0));
   bh7_w39_1_c0 <= tile_3_filtered_output_c0(0);
   bh7_w40_1_c0 <= tile_3_filtered_output_c0(1);
   bh7_w41_0_c0 <= tile_3_filtered_output_c0(2);
   bh7_w42_1_c0 <= tile_3_filtered_output_c0(3);
   bh7_w43_1_c0 <= tile_3_filtered_output_c0(4);
   tile_4_X_c0 <= X(23 downto 23);
   tile_4_Y_c0 <= Y(21 downto 20);
   tile_4_mult: IntMultiplierLUT_1x2_Freq300_2_875333_uid23
      port map ( clk  => clk,
                 X => tile_4_X_c0,
                 Y => tile_4_Y_c0,
                 R => tile_4_output_c0);

   tile_4_filtered_output_c0 <= unsigned(tile_4_output_c0(1 downto 0));
   bh7_w43_2_c0 <= tile_4_filtered_output_c0(0);
   bh7_w44_1_c0 <= tile_4_filtered_output_c0(1);
   tile_5_X_c0 <= X(22 downto 20);
   tile_5_Y_c0 <= Y(21 downto 20);
   tile_5_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid25
      port map ( clk  => clk,
                 X => tile_5_X_c0,
                 Y => tile_5_Y_c0,
                 R => tile_5_output_c0);

   tile_5_filtered_output_c0 <= unsigned(tile_5_output_c0(4 downto 0));
   bh7_w40_2_c0 <= tile_5_filtered_output_c0(0);
   bh7_w41_1_c0 <= tile_5_filtered_output_c0(1);
   bh7_w42_2_c0 <= tile_5_filtered_output_c0(2);
   bh7_w43_3_c0 <= tile_5_filtered_output_c0(3);
   bh7_w44_2_c0 <= tile_5_filtered_output_c0(4);
   tile_6_X_c0 <= X(19 downto 17);
   tile_6_Y_c0 <= Y(21 downto 20);
   tile_6_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid30
      port map ( clk  => clk,
                 X => tile_6_X_c0,
                 Y => tile_6_Y_c0,
                 R => tile_6_output_c0);

   tile_6_filtered_output_c0 <= unsigned(tile_6_output_c0(4 downto 0));
   bh7_w37_1_c0 <= tile_6_filtered_output_c0(0);
   bh7_w38_1_c0 <= tile_6_filtered_output_c0(1);
   bh7_w39_2_c0 <= tile_6_filtered_output_c0(2);
   bh7_w40_3_c0 <= tile_6_filtered_output_c0(3);
   bh7_w41_2_c0 <= tile_6_filtered_output_c0(4);
   tile_7_X_c0 <= X(23 downto 23);
   tile_7_Y_c0 <= Y(19 downto 18);
   tile_7_mult: IntMultiplierLUT_1x2_Freq300_2_875333_uid35
      port map ( clk  => clk,
                 X => tile_7_X_c0,
                 Y => tile_7_Y_c0,
                 R => tile_7_output_c0);

   tile_7_filtered_output_c0 <= unsigned(tile_7_output_c0(1 downto 0));
   bh7_w41_3_c0 <= tile_7_filtered_output_c0(0);
   bh7_w42_3_c0 <= tile_7_filtered_output_c0(1);
   tile_8_X_c0 <= X(22 downto 20);
   tile_8_Y_c0 <= Y(19 downto 18);
   tile_8_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid37
      port map ( clk  => clk,
                 X => tile_8_X_c0,
                 Y => tile_8_Y_c0,
                 R => tile_8_output_c0);

   tile_8_filtered_output_c0 <= unsigned(tile_8_output_c0(4 downto 0));
   bh7_w38_2_c0 <= tile_8_filtered_output_c0(0);
   bh7_w39_3_c0 <= tile_8_filtered_output_c0(1);
   bh7_w40_4_c0 <= tile_8_filtered_output_c0(2);
   bh7_w41_4_c0 <= tile_8_filtered_output_c0(3);
   bh7_w42_4_c0 <= tile_8_filtered_output_c0(4);
   tile_9_X_c0 <= X(19 downto 17);
   tile_9_Y_c0 <= Y(19 downto 18);
   tile_9_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid42
      port map ( clk  => clk,
                 X => tile_9_X_c0,
                 Y => tile_9_Y_c0,
                 R => tile_9_output_c0);

   tile_9_filtered_output_c0 <= unsigned(tile_9_output_c0(4 downto 0));
   bh7_w35_1_c0 <= tile_9_filtered_output_c0(0);
   bh7_w36_1_c0 <= tile_9_filtered_output_c0(1);
   bh7_w37_2_c0 <= tile_9_filtered_output_c0(2);
   bh7_w38_3_c0 <= tile_9_filtered_output_c0(3);
   bh7_w39_4_c0 <= tile_9_filtered_output_c0(4);
   tile_10_X_c0 <= X(23 downto 23);
   tile_10_Y_c0 <= Y(17 downto 16);
   tile_10_mult: IntMultiplierLUT_1x2_Freq300_2_875333_uid47
      port map ( clk  => clk,
                 X => tile_10_X_c0,
                 Y => tile_10_Y_c0,
                 R => tile_10_output_c0);

   tile_10_filtered_output_c0 <= unsigned(tile_10_output_c0(1 downto 0));
   bh7_w39_5_c0 <= tile_10_filtered_output_c0(0);
   bh7_w40_5_c0 <= tile_10_filtered_output_c0(1);
   tile_11_X_c0 <= X(22 downto 20);
   tile_11_Y_c0 <= Y(17 downto 16);
   tile_11_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid49
      port map ( clk  => clk,
                 X => tile_11_X_c0,
                 Y => tile_11_Y_c0,
                 R => tile_11_output_c0);

   tile_11_filtered_output_c0 <= unsigned(tile_11_output_c0(4 downto 0));
   bh7_w36_2_c0 <= tile_11_filtered_output_c0(0);
   bh7_w37_3_c0 <= tile_11_filtered_output_c0(1);
   bh7_w38_4_c0 <= tile_11_filtered_output_c0(2);
   bh7_w39_6_c0 <= tile_11_filtered_output_c0(3);
   bh7_w40_6_c0 <= tile_11_filtered_output_c0(4);
   tile_12_X_c0 <= X(19 downto 17);
   tile_12_Y_c0 <= Y(17 downto 16);
   tile_12_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid54
      port map ( clk  => clk,
                 X => tile_12_X_c0,
                 Y => tile_12_Y_c0,
                 R => tile_12_output_c0);

   tile_12_filtered_output_c0 <= unsigned(tile_12_output_c0(4 downto 0));
   bh7_w33_1_c0 <= tile_12_filtered_output_c0(0);
   bh7_w34_1_c0 <= tile_12_filtered_output_c0(1);
   bh7_w35_2_c0 <= tile_12_filtered_output_c0(2);
   bh7_w36_3_c0 <= tile_12_filtered_output_c0(3);
   bh7_w37_4_c0 <= tile_12_filtered_output_c0(4);
   tile_13_X_c0 <= X(23 downto 23);
   tile_13_Y_c0 <= Y(15 downto 14);
   tile_13_mult: IntMultiplierLUT_1x2_Freq300_2_875333_uid59
      port map ( clk  => clk,
                 X => tile_13_X_c0,
                 Y => tile_13_Y_c0,
                 R => tile_13_output_c0);

   tile_13_filtered_output_c0 <= unsigned(tile_13_output_c0(1 downto 0));
   bh7_w37_5_c0 <= tile_13_filtered_output_c0(0);
   bh7_w38_5_c0 <= tile_13_filtered_output_c0(1);
   tile_14_X_c0 <= X(22 downto 20);
   tile_14_Y_c0 <= Y(15 downto 14);
   tile_14_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid61
      port map ( clk  => clk,
                 X => tile_14_X_c0,
                 Y => tile_14_Y_c0,
                 R => tile_14_output_c0);

   tile_14_filtered_output_c0 <= unsigned(tile_14_output_c0(4 downto 0));
   bh7_w34_2_c0 <= tile_14_filtered_output_c0(0);
   bh7_w35_3_c0 <= tile_14_filtered_output_c0(1);
   bh7_w36_4_c0 <= tile_14_filtered_output_c0(2);
   bh7_w37_6_c0 <= tile_14_filtered_output_c0(3);
   bh7_w38_6_c0 <= tile_14_filtered_output_c0(4);
   tile_15_X_c0 <= X(19 downto 17);
   tile_15_Y_c0 <= Y(15 downto 14);
   tile_15_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid66
      port map ( clk  => clk,
                 X => tile_15_X_c0,
                 Y => tile_15_Y_c0,
                 R => tile_15_output_c0);

   tile_15_filtered_output_c0 <= unsigned(tile_15_output_c0(4 downto 0));
   bh7_w31_1_c0 <= tile_15_filtered_output_c0(0);
   bh7_w32_1_c0 <= tile_15_filtered_output_c0(1);
   bh7_w33_2_c0 <= tile_15_filtered_output_c0(2);
   bh7_w34_3_c0 <= tile_15_filtered_output_c0(3);
   bh7_w35_4_c0 <= tile_15_filtered_output_c0(4);
   tile_16_X_c0 <= X(23 downto 23);
   tile_16_Y_c0 <= Y(13 downto 12);
   tile_16_mult: IntMultiplierLUT_1x2_Freq300_2_875333_uid71
      port map ( clk  => clk,
                 X => tile_16_X_c0,
                 Y => tile_16_Y_c0,
                 R => tile_16_output_c0);

   tile_16_filtered_output_c0 <= unsigned(tile_16_output_c0(1 downto 0));
   bh7_w35_5_c0 <= tile_16_filtered_output_c0(0);
   bh7_w36_5_c0 <= tile_16_filtered_output_c0(1);
   tile_17_X_c0 <= X(22 downto 20);
   tile_17_Y_c0 <= Y(13 downto 12);
   tile_17_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid73
      port map ( clk  => clk,
                 X => tile_17_X_c0,
                 Y => tile_17_Y_c0,
                 R => tile_17_output_c0);

   tile_17_filtered_output_c0 <= unsigned(tile_17_output_c0(4 downto 0));
   bh7_w32_2_c0 <= tile_17_filtered_output_c0(0);
   bh7_w33_3_c0 <= tile_17_filtered_output_c0(1);
   bh7_w34_4_c0 <= tile_17_filtered_output_c0(2);
   bh7_w35_6_c0 <= tile_17_filtered_output_c0(3);
   bh7_w36_6_c0 <= tile_17_filtered_output_c0(4);
   tile_18_X_c0 <= X(19 downto 17);
   tile_18_Y_c0 <= Y(13 downto 12);
   tile_18_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid78
      port map ( clk  => clk,
                 X => tile_18_X_c0,
                 Y => tile_18_Y_c0,
                 R => tile_18_output_c0);

   tile_18_filtered_output_c0 <= unsigned(tile_18_output_c0(4 downto 0));
   bh7_w29_1_c0 <= tile_18_filtered_output_c0(0);
   bh7_w30_1_c0 <= tile_18_filtered_output_c0(1);
   bh7_w31_2_c0 <= tile_18_filtered_output_c0(2);
   bh7_w32_3_c0 <= tile_18_filtered_output_c0(3);
   bh7_w33_4_c0 <= tile_18_filtered_output_c0(4);
   tile_19_X_c0 <= X(23 downto 23);
   tile_19_Y_c0 <= Y(11 downto 10);
   tile_19_mult: IntMultiplierLUT_1x2_Freq300_2_875333_uid83
      port map ( clk  => clk,
                 X => tile_19_X_c0,
                 Y => tile_19_Y_c0,
                 R => tile_19_output_c0);

   tile_19_filtered_output_c0 <= unsigned(tile_19_output_c0(1 downto 0));
   bh7_w33_5_c0 <= tile_19_filtered_output_c0(0);
   bh7_w34_5_c0 <= tile_19_filtered_output_c0(1);
   tile_20_X_c0 <= X(22 downto 20);
   tile_20_Y_c0 <= Y(11 downto 10);
   tile_20_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid85
      port map ( clk  => clk,
                 X => tile_20_X_c0,
                 Y => tile_20_Y_c0,
                 R => tile_20_output_c0);

   tile_20_filtered_output_c0 <= unsigned(tile_20_output_c0(4 downto 0));
   bh7_w30_2_c0 <= tile_20_filtered_output_c0(0);
   bh7_w31_3_c0 <= tile_20_filtered_output_c0(1);
   bh7_w32_4_c0 <= tile_20_filtered_output_c0(2);
   bh7_w33_6_c0 <= tile_20_filtered_output_c0(3);
   bh7_w34_6_c0 <= tile_20_filtered_output_c0(4);
   tile_21_X_c0 <= X(19 downto 17);
   tile_21_Y_c0 <= Y(11 downto 10);
   tile_21_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid90
      port map ( clk  => clk,
                 X => tile_21_X_c0,
                 Y => tile_21_Y_c0,
                 R => tile_21_output_c0);

   tile_21_filtered_output_c0 <= unsigned(tile_21_output_c0(4 downto 0));
   bh7_w27_1_c0 <= tile_21_filtered_output_c0(0);
   bh7_w28_1_c0 <= tile_21_filtered_output_c0(1);
   bh7_w29_2_c0 <= tile_21_filtered_output_c0(2);
   bh7_w30_3_c0 <= tile_21_filtered_output_c0(3);
   bh7_w31_4_c0 <= tile_21_filtered_output_c0(4);
   tile_22_X_c0 <= X(23 downto 23);
   tile_22_Y_c0 <= Y(9 downto 8);
   tile_22_mult: IntMultiplierLUT_1x2_Freq300_2_875333_uid95
      port map ( clk  => clk,
                 X => tile_22_X_c0,
                 Y => tile_22_Y_c0,
                 R => tile_22_output_c0);

   tile_22_filtered_output_c0 <= unsigned(tile_22_output_c0(1 downto 0));
   bh7_w31_5_c0 <= tile_22_filtered_output_c0(0);
   bh7_w32_5_c0 <= tile_22_filtered_output_c0(1);
   tile_23_X_c0 <= X(22 downto 20);
   tile_23_Y_c0 <= Y(9 downto 8);
   tile_23_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid97
      port map ( clk  => clk,
                 X => tile_23_X_c0,
                 Y => tile_23_Y_c0,
                 R => tile_23_output_c0);

   tile_23_filtered_output_c0 <= unsigned(tile_23_output_c0(4 downto 0));
   bh7_w28_2_c0 <= tile_23_filtered_output_c0(0);
   bh7_w29_3_c0 <= tile_23_filtered_output_c0(1);
   bh7_w30_4_c0 <= tile_23_filtered_output_c0(2);
   bh7_w31_6_c0 <= tile_23_filtered_output_c0(3);
   bh7_w32_6_c0 <= tile_23_filtered_output_c0(4);
   tile_24_X_c0 <= X(19 downto 17);
   tile_24_Y_c0 <= Y(9 downto 8);
   tile_24_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid102
      port map ( clk  => clk,
                 X => tile_24_X_c0,
                 Y => tile_24_Y_c0,
                 R => tile_24_output_c0);

   tile_24_filtered_output_c0 <= unsigned(tile_24_output_c0(4 downto 0));
   bh7_w25_1_c0 <= tile_24_filtered_output_c0(0);
   bh7_w26_1_c0 <= tile_24_filtered_output_c0(1);
   bh7_w27_2_c0 <= tile_24_filtered_output_c0(2);
   bh7_w28_3_c0 <= tile_24_filtered_output_c0(3);
   bh7_w29_4_c0 <= tile_24_filtered_output_c0(4);
   tile_25_X_c0 <= X(23 downto 23);
   tile_25_Y_c0 <= Y(7 downto 6);
   tile_25_mult: IntMultiplierLUT_1x2_Freq300_2_875333_uid107
      port map ( clk  => clk,
                 X => tile_25_X_c0,
                 Y => tile_25_Y_c0,
                 R => tile_25_output_c0);

   tile_25_filtered_output_c0 <= unsigned(tile_25_output_c0(1 downto 0));
   bh7_w29_5_c0 <= tile_25_filtered_output_c0(0);
   bh7_w30_5_c0 <= tile_25_filtered_output_c0(1);
   tile_26_X_c0 <= X(22 downto 20);
   tile_26_Y_c0 <= Y(7 downto 6);
   tile_26_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid109
      port map ( clk  => clk,
                 X => tile_26_X_c0,
                 Y => tile_26_Y_c0,
                 R => tile_26_output_c0);

   tile_26_filtered_output_c0 <= unsigned(tile_26_output_c0(4 downto 0));
   bh7_w26_2_c0 <= tile_26_filtered_output_c0(0);
   bh7_w27_3_c0 <= tile_26_filtered_output_c0(1);
   bh7_w28_4_c0 <= tile_26_filtered_output_c0(2);
   bh7_w29_6_c0 <= tile_26_filtered_output_c0(3);
   bh7_w30_6_c0 <= tile_26_filtered_output_c0(4);
   tile_27_X_c0 <= X(19 downto 17);
   tile_27_Y_c0 <= Y(7 downto 6);
   tile_27_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid114
      port map ( clk  => clk,
                 X => tile_27_X_c0,
                 Y => tile_27_Y_c0,
                 R => tile_27_output_c0);

   tile_27_filtered_output_c0 <= unsigned(tile_27_output_c0(4 downto 0));
   bh7_w23_1_c0 <= tile_27_filtered_output_c0(0);
   bh7_w24_1_c0 <= tile_27_filtered_output_c0(1);
   bh7_w25_2_c0 <= tile_27_filtered_output_c0(2);
   bh7_w26_3_c0 <= tile_27_filtered_output_c0(3);
   bh7_w27_4_c0 <= tile_27_filtered_output_c0(4);
   tile_28_X_c0 <= X(23 downto 23);
   tile_28_Y_c0 <= Y(5 downto 4);
   tile_28_mult: IntMultiplierLUT_1x2_Freq300_2_875333_uid119
      port map ( clk  => clk,
                 X => tile_28_X_c0,
                 Y => tile_28_Y_c0,
                 R => tile_28_output_c0);

   tile_28_filtered_output_c0 <= unsigned(tile_28_output_c0(1 downto 0));
   bh7_w27_5_c0 <= tile_28_filtered_output_c0(0);
   bh7_w28_5_c0 <= tile_28_filtered_output_c0(1);
   tile_29_X_c0 <= X(22 downto 20);
   tile_29_Y_c0 <= Y(5 downto 4);
   tile_29_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid121
      port map ( clk  => clk,
                 X => tile_29_X_c0,
                 Y => tile_29_Y_c0,
                 R => tile_29_output_c0);

   tile_29_filtered_output_c0 <= unsigned(tile_29_output_c0(4 downto 0));
   bh7_w24_2_c0 <= tile_29_filtered_output_c0(0);
   bh7_w25_3_c0 <= tile_29_filtered_output_c0(1);
   bh7_w26_4_c0 <= tile_29_filtered_output_c0(2);
   bh7_w27_6_c0 <= tile_29_filtered_output_c0(3);
   bh7_w28_6_c0 <= tile_29_filtered_output_c0(4);
   tile_30_X_c0 <= X(19 downto 17);
   tile_30_Y_c0 <= Y(5 downto 4);
   tile_30_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid126
      port map ( clk  => clk,
                 X => tile_30_X_c0,
                 Y => tile_30_Y_c0,
                 R => tile_30_output_c0);

   tile_30_filtered_output_c0 <= unsigned(tile_30_output_c0(4 downto 0));
   bh7_w21_1_c0 <= tile_30_filtered_output_c0(0);
   bh7_w22_1_c0 <= tile_30_filtered_output_c0(1);
   bh7_w23_2_c0 <= tile_30_filtered_output_c0(2);
   bh7_w24_3_c0 <= tile_30_filtered_output_c0(3);
   bh7_w25_4_c0 <= tile_30_filtered_output_c0(4);
   tile_31_X_c0 <= X(23 downto 23);
   tile_31_Y_c0 <= Y(3 downto 2);
   tile_31_mult: IntMultiplierLUT_1x2_Freq300_2_875333_uid131
      port map ( clk  => clk,
                 X => tile_31_X_c0,
                 Y => tile_31_Y_c0,
                 R => tile_31_output_c0);

   tile_31_filtered_output_c0 <= unsigned(tile_31_output_c0(1 downto 0));
   bh7_w25_5_c0 <= tile_31_filtered_output_c0(0);
   bh7_w26_5_c0 <= tile_31_filtered_output_c0(1);
   tile_32_X_c0 <= X(22 downto 20);
   tile_32_Y_c0 <= Y(3 downto 2);
   tile_32_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid133
      port map ( clk  => clk,
                 X => tile_32_X_c0,
                 Y => tile_32_Y_c0,
                 R => tile_32_output_c0);

   tile_32_filtered_output_c0 <= unsigned(tile_32_output_c0(4 downto 0));
   bh7_w22_2_c0 <= tile_32_filtered_output_c0(0);
   bh7_w23_3_c0 <= tile_32_filtered_output_c0(1);
   bh7_w24_4_c0 <= tile_32_filtered_output_c0(2);
   bh7_w25_6_c0 <= tile_32_filtered_output_c0(3);
   bh7_w26_6_c0 <= tile_32_filtered_output_c0(4);
   tile_33_X_c0 <= X(19 downto 17);
   tile_33_Y_c0 <= Y(3 downto 2);
   tile_33_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid138
      port map ( clk  => clk,
                 X => tile_33_X_c0,
                 Y => tile_33_Y_c0,
                 R => tile_33_output_c0);

   tile_33_filtered_output_c0 <= unsigned(tile_33_output_c0(4 downto 0));
   bh7_w19_1_c0 <= tile_33_filtered_output_c0(0);
   bh7_w20_1_c0 <= tile_33_filtered_output_c0(1);
   bh7_w21_2_c0 <= tile_33_filtered_output_c0(2);
   bh7_w22_3_c0 <= tile_33_filtered_output_c0(3);
   bh7_w23_4_c0 <= tile_33_filtered_output_c0(4);
   tile_34_X_c0 <= X(23 downto 23);
   tile_34_Y_c0 <= Y(1 downto 0);
   tile_34_mult: IntMultiplierLUT_1x2_Freq300_2_875333_uid143
      port map ( clk  => clk,
                 X => tile_34_X_c0,
                 Y => tile_34_Y_c0,
                 R => tile_34_output_c0);

   tile_34_filtered_output_c0 <= unsigned(tile_34_output_c0(1 downto 0));
   bh7_w23_5_c0 <= tile_34_filtered_output_c0(0);
   bh7_w24_5_c0 <= tile_34_filtered_output_c0(1);
   tile_35_X_c0 <= X(22 downto 20);
   tile_35_Y_c0 <= Y(1 downto 0);
   tile_35_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid145
      port map ( clk  => clk,
                 X => tile_35_X_c0,
                 Y => tile_35_Y_c0,
                 R => tile_35_output_c0);

   tile_35_filtered_output_c0 <= unsigned(tile_35_output_c0(4 downto 0));
   bh7_w20_2_c0 <= tile_35_filtered_output_c0(0);
   bh7_w21_3_c0 <= tile_35_filtered_output_c0(1);
   bh7_w22_4_c0 <= tile_35_filtered_output_c0(2);
   bh7_w23_6_c0 <= tile_35_filtered_output_c0(3);
   bh7_w24_6_c0 <= tile_35_filtered_output_c0(4);
   tile_36_X_c0 <= X(19 downto 17);
   tile_36_Y_c0 <= Y(1 downto 0);
   tile_36_mult: IntMultiplierLUT_3x2_Freq300_2_875333_uid150
      port map ( clk  => clk,
                 X => tile_36_X_c0,
                 Y => tile_36_Y_c0,
                 R => tile_36_output_c0);

   tile_36_filtered_output_c0 <= unsigned(tile_36_output_c0(4 downto 0));
   bh7_w17_1_c0 <= tile_36_filtered_output_c0(0);
   bh7_w18_1_c0 <= tile_36_filtered_output_c0(1);
   bh7_w19_2_c0 <= tile_36_filtered_output_c0(2);
   bh7_w20_3_c0 <= tile_36_filtered_output_c0(3);
   bh7_w21_4_c0 <= tile_36_filtered_output_c0(4);

   -- Adding the constant bits 
      -- All the constant bits are zero, nothing to add


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid157_In0_c0 <= "" & bh7_w18_1_c0 & "0" & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid157_In1_c0 <= "" & bh7_w19_1_c0 & bh7_w19_2_c0;
   bh7_w18_2_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid157_Out0_c0(0);
   bh7_w19_3_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid157_Out0_c0(1);
   bh7_w20_4_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid157_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid157: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid157_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid157_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid157_Out0_copy158_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid157_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid157_Out0_copy158_c0; -- output copy to hold a pipeline register if needed


   Compressor_3_2_Freq300_2_875333_uid160_bh7_uid161_In0_c0 <= "" & bh7_w20_1_c0 & bh7_w20_2_c0 & bh7_w20_3_c0;
   bh7_w20_5_c0 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid161_Out0_c0(0);
   bh7_w21_5_c0 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid161_Out0_c0(1);
   Compressor_3_2_Freq300_2_875333_uid160_uid161: Compressor_3_2_Freq300_2_875333_uid160
      port map ( X0 => Compressor_3_2_Freq300_2_875333_uid160_bh7_uid161_In0_c0,
                 R => Compressor_3_2_Freq300_2_875333_uid160_bh7_uid161_Out0_copy162_c0);
   Compressor_3_2_Freq300_2_875333_uid160_bh7_uid161_Out0_c0 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid161_Out0_copy162_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid165_In0_c0 <= "" & bh7_w21_1_c0 & bh7_w21_2_c0 & bh7_w21_3_c0 & bh7_w21_4_c0;
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid165_In1_c0 <= "" & bh7_w22_1_c0;
   bh7_w21_6_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid165_Out0_c0(0);
   bh7_w22_5_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid165_Out0_c0(1);
   bh7_w23_7_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid165_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid165: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid165_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid165_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid165_Out0_copy166_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid165_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid165_Out0_copy166_c0; -- output copy to hold a pipeline register if needed


   Compressor_3_2_Freq300_2_875333_uid160_bh7_uid167_In0_c0 <= "" & bh7_w22_2_c0 & bh7_w22_3_c0 & bh7_w22_4_c0;
   bh7_w22_6_c0 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid167_Out0_c0(0);
   bh7_w23_8_c0 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid167_Out0_c0(1);
   Compressor_3_2_Freq300_2_875333_uid160_uid167: Compressor_3_2_Freq300_2_875333_uid160
      port map ( X0 => Compressor_3_2_Freq300_2_875333_uid160_bh7_uid167_In0_c0,
                 R => Compressor_3_2_Freq300_2_875333_uid160_bh7_uid167_Out0_copy168_c0);
   Compressor_3_2_Freq300_2_875333_uid160_bh7_uid167_Out0_c0 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid167_Out0_copy168_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid171_In0_c0 <= "" & bh7_w23_1_c0 & bh7_w23_2_c0 & bh7_w23_3_c0 & bh7_w23_4_c0 & bh7_w23_5_c0 & bh7_w23_6_c0;
   bh7_w23_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid171_Out0_c0(0);
   bh7_w24_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid171_Out0_c0(1);
   bh7_w25_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid171_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid171: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid171_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid171_Out0_copy172_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid171_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid171_Out0_copy172_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid173_In0_c0 <= "" & bh7_w24_1_c0 & bh7_w24_2_c0 & bh7_w24_3_c0 & bh7_w24_4_c0 & bh7_w24_5_c0 & bh7_w24_6_c0;
   bh7_w24_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid173_Out0_c0(0);
   bh7_w25_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid173_Out0_c0(1);
   bh7_w26_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid173_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid173: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid173_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid173_Out0_copy174_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid173_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid173_Out0_copy174_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid175_In0_c0 <= "" & bh7_w25_1_c0 & bh7_w25_2_c0 & bh7_w25_3_c0 & bh7_w25_4_c0 & bh7_w25_5_c0 & bh7_w25_6_c0;
   bh7_w25_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid175_Out0_c0(0);
   bh7_w26_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid175_Out0_c0(1);
   bh7_w27_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid175_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid175: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid175_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid175_Out0_copy176_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid175_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid175_Out0_copy176_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid177_In0_c0 <= "" & bh7_w26_1_c0 & bh7_w26_2_c0 & bh7_w26_3_c0 & bh7_w26_4_c0 & bh7_w26_5_c0 & bh7_w26_6_c0;
   bh7_w26_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid177_Out0_c0(0);
   bh7_w27_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid177_Out0_c0(1);
   bh7_w28_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid177_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid177: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid177_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid177_Out0_copy178_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid177_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid177_Out0_copy178_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid179_In0_c0 <= "" & bh7_w27_1_c0 & bh7_w27_2_c0 & bh7_w27_3_c0 & bh7_w27_4_c0 & bh7_w27_5_c0 & bh7_w27_6_c0;
   bh7_w27_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid179_Out0_c0(0);
   bh7_w28_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid179_Out0_c0(1);
   bh7_w29_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid179_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid179: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid179_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid179_Out0_copy180_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid179_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid179_Out0_copy180_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid181_In0_c0 <= "" & bh7_w28_1_c0 & bh7_w28_2_c0 & bh7_w28_3_c0 & bh7_w28_4_c0 & bh7_w28_5_c0 & bh7_w28_6_c0;
   bh7_w28_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid181_Out0_c0(0);
   bh7_w29_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid181_Out0_c0(1);
   bh7_w30_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid181_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid181: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid181_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid181_Out0_copy182_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid181_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid181_Out0_copy182_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid183_In0_c0 <= "" & bh7_w29_1_c0 & bh7_w29_2_c0 & bh7_w29_3_c0 & bh7_w29_4_c0 & bh7_w29_5_c0 & bh7_w29_6_c0;
   bh7_w29_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid183_Out0_c0(0);
   bh7_w30_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid183_Out0_c0(1);
   bh7_w31_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid183_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid183: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid183_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid183_Out0_copy184_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid183_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid183_Out0_copy184_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid185_In0_c0 <= "" & bh7_w30_1_c0 & bh7_w30_2_c0 & bh7_w30_3_c0 & bh7_w30_4_c0 & bh7_w30_5_c0 & bh7_w30_6_c0;
   bh7_w30_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid185_Out0_c0(0);
   bh7_w31_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid185_Out0_c0(1);
   bh7_w32_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid185_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid185: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid185_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid185_Out0_copy186_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid185_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid185_Out0_copy186_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid187_In0_c0 <= "" & bh7_w31_1_c0 & bh7_w31_2_c0 & bh7_w31_3_c0 & bh7_w31_4_c0 & bh7_w31_5_c0 & bh7_w31_6_c0;
   bh7_w31_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid187_Out0_c0(0);
   bh7_w32_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid187_Out0_c0(1);
   bh7_w33_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid187_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid187: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid187_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid187_Out0_copy188_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid187_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid187_Out0_copy188_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid189_In0_c0 <= "" & bh7_w32_1_c0 & bh7_w32_2_c0 & bh7_w32_3_c0 & bh7_w32_4_c0 & bh7_w32_5_c0 & bh7_w32_6_c0;
   bh7_w32_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid189_Out0_c0(0);
   bh7_w33_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid189_Out0_c0(1);
   bh7_w34_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid189_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid189: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid189_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid189_Out0_copy190_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid189_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid189_Out0_copy190_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid191_In0_c0 <= "" & bh7_w33_1_c0 & bh7_w33_2_c0 & bh7_w33_3_c0 & bh7_w33_4_c0 & bh7_w33_5_c0 & bh7_w33_6_c0;
   bh7_w33_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid191_Out0_c0(0);
   bh7_w34_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid191_Out0_c0(1);
   bh7_w35_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid191_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid191: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid191_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid191_Out0_copy192_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid191_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid191_Out0_copy192_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid193_In0_c0 <= "" & bh7_w34_1_c0 & bh7_w34_2_c0 & bh7_w34_3_c0 & bh7_w34_4_c0 & bh7_w34_5_c0 & bh7_w34_6_c0;
   bh7_w34_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid193_Out0_c0(0);
   bh7_w35_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid193_Out0_c0(1);
   bh7_w36_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid193_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid193: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid193_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid193_Out0_copy194_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid193_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid193_Out0_copy194_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid195_In0_c0 <= "" & bh7_w35_1_c0 & bh7_w35_2_c0 & bh7_w35_3_c0 & bh7_w35_4_c0 & bh7_w35_5_c0 & bh7_w35_6_c0;
   bh7_w35_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid195_Out0_c0(0);
   bh7_w36_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid195_Out0_c0(1);
   bh7_w37_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid195_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid195: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid195_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid195_Out0_copy196_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid195_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid195_Out0_copy196_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid197_In0_c0 <= "" & bh7_w36_1_c0 & bh7_w36_2_c0 & bh7_w36_3_c0 & bh7_w36_4_c0 & bh7_w36_5_c0 & bh7_w36_6_c0;
   bh7_w36_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid197_Out0_c0(0);
   bh7_w37_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid197_Out0_c0(1);
   bh7_w38_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid197_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid197: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid197_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid197_Out0_copy198_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid197_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid197_Out0_copy198_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid199_In0_c0 <= "" & bh7_w37_1_c0 & bh7_w37_2_c0 & bh7_w37_3_c0 & bh7_w37_4_c0 & bh7_w37_5_c0 & bh7_w37_6_c0;
   bh7_w37_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid199_Out0_c0(0);
   bh7_w38_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid199_Out0_c0(1);
   bh7_w39_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid199_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid199: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid199_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid199_Out0_copy200_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid199_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid199_Out0_copy200_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid201_In0_c0 <= "" & bh7_w38_1_c0 & bh7_w38_2_c0 & bh7_w38_3_c0 & bh7_w38_4_c0 & bh7_w38_5_c0 & bh7_w38_6_c0;
   bh7_w38_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid201_Out0_c0(0);
   bh7_w39_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid201_Out0_c0(1);
   bh7_w40_7_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid201_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid201: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid201_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid201_Out0_copy202_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid201_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid201_Out0_copy202_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid203_In0_c0 <= "" & bh7_w39_1_c0 & bh7_w39_2_c0 & bh7_w39_3_c0 & bh7_w39_4_c0 & bh7_w39_5_c0 & bh7_w39_6_c0;
   bh7_w39_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid203_Out0_c0(0);
   bh7_w40_8_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid203_Out0_c0(1);
   bh7_w41_5_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid203_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid203: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid203_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid203_Out0_copy204_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid203_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid203_Out0_copy204_c0; -- output copy to hold a pipeline register if needed


   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid205_In0_c0 <= "" & bh7_w40_1_c0 & bh7_w40_2_c0 & bh7_w40_3_c0 & bh7_w40_4_c0 & bh7_w40_5_c0 & bh7_w40_6_c0;
   bh7_w40_9_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid205_Out0_c0(0);
   bh7_w41_6_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid205_Out0_c0(1);
   bh7_w42_5_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid205_Out0_c0(2);
   Compressor_6_3_Freq300_2_875333_uid170_uid205: Compressor_6_3_Freq300_2_875333_uid170
      port map ( X0 => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid205_In0_c0,
                 R => Compressor_6_3_Freq300_2_875333_uid170_bh7_uid205_Out0_copy206_c0);
   Compressor_6_3_Freq300_2_875333_uid170_bh7_uid205_Out0_c0 <= Compressor_6_3_Freq300_2_875333_uid170_bh7_uid205_Out0_copy206_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid207_In0_c0 <= "" & bh7_w41_0_c0 & bh7_w41_1_c0 & bh7_w41_2_c0 & bh7_w41_3_c0;
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid207_In1_c0 <= "" & bh7_w42_0_c0;
   bh7_w41_7_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid207_Out0_c0(0);
   bh7_w42_6_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid207_Out0_c0(1);
   bh7_w43_4_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid207_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid207: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid207_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid207_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid207_Out0_copy208_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid207_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid207_Out0_copy208_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid209_In0_c0 <= "" & bh7_w42_1_c0 & bh7_w42_2_c0 & bh7_w42_3_c0 & bh7_w42_4_c0;
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid209_In1_c0 <= "" & bh7_w43_0_c0;
   bh7_w42_7_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid209_Out0_c0(0);
   bh7_w43_5_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid209_Out0_c0(1);
   bh7_w44_3_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid209_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid209: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid209_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid209_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid209_Out0_copy210_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid209_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid209_Out0_copy210_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid211_In0_c0 <= "" & bh7_w43_1_c0 & bh7_w43_2_c0 & bh7_w43_3_c0;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid211_In1_c0 <= "" & bh7_w44_0_c0 & bh7_w44_1_c0;
   bh7_w43_6_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid211_Out0_c0(0);
   bh7_w44_4_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid211_Out0_c0(1);
   bh7_w45_2_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid211_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid211: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid211_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid211_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid211_Out0_copy212_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid211_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid211_Out0_copy212_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid213_In0_c0 <= "" & bh7_w45_0_c0 & bh7_w45_1_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid213_In1_c0 <= "" & bh7_w46_0_c0 & bh7_w46_1_c0;
   bh7_w45_3_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid213_Out0_c0(0);
   bh7_w46_2_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid213_Out0_c0(1);
   bh7_w47_0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid213_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid213: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid213_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid213_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid213_Out0_copy214_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid213_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid213_Out0_copy214_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid215_In0_c0 <= "" & bh7_w20_5_c0 & bh7_w20_4_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid215_In1_c0 <= "" & bh7_w21_6_c0 & bh7_w21_5_c0;
   bh7_w20_6_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid215_Out0_c0(0);
   bh7_w21_7_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid215_Out0_c0(1);
   bh7_w22_7_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid215_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid215: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid215_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid215_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid215_Out0_copy216_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid215_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid215_Out0_copy216_c0; -- output copy to hold a pipeline register if needed


   Compressor_3_2_Freq300_2_875333_uid160_bh7_uid217_In0_c0 <= "" & bh7_w22_6_c0 & bh7_w22_5_c0 & "0";
   bh7_w22_8_c0 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid217_Out0_c0(0);
   bh7_w23_10_c0 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid217_Out0_c0(1);
   Compressor_3_2_Freq300_2_875333_uid160_uid217: Compressor_3_2_Freq300_2_875333_uid160
      port map ( X0 => Compressor_3_2_Freq300_2_875333_uid160_bh7_uid217_In0_c0,
                 R => Compressor_3_2_Freq300_2_875333_uid160_bh7_uid217_Out0_copy218_c0);
   Compressor_3_2_Freq300_2_875333_uid160_bh7_uid217_Out0_c0 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid217_Out0_copy218_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid219_In0_c0 <= "" & bh7_w23_8_c0 & bh7_w23_7_c0 & bh7_w23_9_c0;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid219_In1_c0 <= "" & bh7_w24_8_c0 & bh7_w24_7_c0;
   bh7_w23_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid219_Out0_c0(0);
   bh7_w24_9_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid219_Out0_c0(1);
   bh7_w25_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid219_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid219: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid219_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid219_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid219_Out0_copy220_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid219_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid219_Out0_copy220_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid221_In0_c0 <= "" & bh7_w25_9_c0 & bh7_w25_8_c0 & bh7_w25_7_c0;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid221_In1_c0 <= "" & bh7_w26_9_c0 & bh7_w26_8_c0;
   bh7_w25_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid221_Out0_c0(0);
   bh7_w26_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid221_Out0_c0(1);
   bh7_w27_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid221_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid221: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid221_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid221_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid221_Out0_copy222_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid221_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid221_Out0_copy222_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid223_In0_c0 <= "" & bh7_w27_9_c0 & bh7_w27_8_c0 & bh7_w27_7_c0;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid223_In1_c0 <= "" & bh7_w28_9_c0 & bh7_w28_8_c0;
   bh7_w27_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid223_Out0_c0(0);
   bh7_w28_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid223_Out0_c0(1);
   bh7_w29_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid223_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid223: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid223_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid223_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid223_Out0_copy224_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid223_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid223_Out0_copy224_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid225_In0_c0 <= "" & bh7_w29_9_c0 & bh7_w29_8_c0 & bh7_w29_7_c0;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid225_In1_c0 <= "" & bh7_w30_9_c0 & bh7_w30_8_c0;
   bh7_w29_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid225_Out0_c0(0);
   bh7_w30_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid225_Out0_c0(1);
   bh7_w31_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid225_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid225: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid225_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid225_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid225_Out0_copy226_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid225_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid225_Out0_copy226_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid227_In0_c0 <= "" & bh7_w31_9_c0 & bh7_w31_8_c0 & bh7_w31_7_c0;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid227_In1_c0 <= "" & bh7_w32_9_c0 & bh7_w32_8_c0;
   bh7_w31_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid227_Out0_c0(0);
   bh7_w32_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid227_Out0_c0(1);
   bh7_w33_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid227_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid227: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid227_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid227_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid227_Out0_copy228_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid227_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid227_Out0_copy228_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid229_In0_c0 <= "" & bh7_w33_9_c0 & bh7_w33_8_c0 & bh7_w33_7_c0;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid229_In1_c0 <= "" & bh7_w34_9_c0 & bh7_w34_8_c0;
   bh7_w33_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid229_Out0_c0(0);
   bh7_w34_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid229_Out0_c0(1);
   bh7_w35_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid229_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid229: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid229_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid229_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid229_Out0_copy230_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid229_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid229_Out0_copy230_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid231_In0_c0 <= "" & bh7_w35_9_c0 & bh7_w35_8_c0 & bh7_w35_7_c0;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid231_In1_c0 <= "" & bh7_w36_9_c0 & bh7_w36_8_c0;
   bh7_w35_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid231_Out0_c0(0);
   bh7_w36_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid231_Out0_c0(1);
   bh7_w37_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid231_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid231: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid231_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid231_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid231_Out0_copy232_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid231_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid231_Out0_copy232_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid233_In0_c0 <= "" & bh7_w37_9_c0 & bh7_w37_8_c0 & bh7_w37_7_c0;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid233_In1_c0 <= "" & bh7_w38_9_c0 & bh7_w38_8_c0;
   bh7_w37_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid233_Out0_c0(0);
   bh7_w38_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid233_Out0_c0(1);
   bh7_w39_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid233_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid233: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid233_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid233_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid233_Out0_copy234_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid233_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid233_Out0_copy234_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid235_In0_c0 <= "" & bh7_w39_9_c0 & bh7_w39_8_c0 & bh7_w39_7_c0;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid235_In1_c0 <= "" & bh7_w40_9_c0 & bh7_w40_8_c0;
   bh7_w39_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid235_Out0_c0(0);
   bh7_w40_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid235_Out0_c0(1);
   bh7_w41_8_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid235_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid235: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid235_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid235_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid235_Out0_copy236_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid235_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid235_Out0_copy236_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid237_In0_c0 <= "" & bh7_w41_4_c0 & bh7_w41_7_c0 & bh7_w41_6_c0 & bh7_w41_5_c0;
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid237_In1_c0 <= "" & "0";
   bh7_w41_9_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid237_Out0_c0(0);
   bh7_w42_8_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid237_Out0_c0(1);
   bh7_w43_7_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid237_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid237: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid237_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid237_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid237_Out0_copy238_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid237_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid237_Out0_copy238_c0; -- output copy to hold a pipeline register if needed


   Compressor_3_2_Freq300_2_875333_uid160_bh7_uid239_In0_c0 <= "" & bh7_w42_7_c0 & bh7_w42_6_c0 & bh7_w42_5_c0;
   bh7_w42_9_c0 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid239_Out0_c0(0);
   bh7_w43_8_c0 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid239_Out0_c0(1);
   Compressor_3_2_Freq300_2_875333_uid160_uid239: Compressor_3_2_Freq300_2_875333_uid160
      port map ( X0 => Compressor_3_2_Freq300_2_875333_uid160_bh7_uid239_In0_c0,
                 R => Compressor_3_2_Freq300_2_875333_uid160_bh7_uid239_Out0_copy240_c0);
   Compressor_3_2_Freq300_2_875333_uid160_bh7_uid239_Out0_c0 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid239_Out0_copy240_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid241_In0_c0 <= "" & bh7_w43_6_c0 & bh7_w43_5_c0 & bh7_w43_4_c0;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid241_In1_c0 <= "" & bh7_w44_2_c0 & bh7_w44_4_c0;
   bh7_w43_9_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid241_Out0_c0(0);
   bh7_w44_5_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid241_Out0_c0(1);
   bh7_w45_4_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid241_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid241: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid241_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid241_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid241_Out0_copy242_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid241_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid241_Out0_copy242_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid243_In0_c0 <= "" & bh7_w45_3_c0 & bh7_w45_2_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid243_In1_c0 <= "" & bh7_w46_2_c0;
   bh7_w45_5_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid243_Out0_c0(0);
   bh7_w46_3_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid243_Out0_c0(1);
   bh7_w47_1_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid243_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid243: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid243_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid243_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid243_Out0_copy244_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid243_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid243_Out0_copy244_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid245_In0_c0 <= "" & bh7_w22_8_c0 & bh7_w22_7_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid245_In1_c0 <= "" & bh7_w23_10_c0 & bh7_w23_11_c0;
   bh7_w22_9_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid245_Out0_c0(0);
   bh7_w23_12_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid245_Out0_c0(1);
   bh7_w24_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid245_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid245: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid245_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid245_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid245_Out0_copy246_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid245_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid245_Out0_copy246_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid247_In0_c0 <= "" & bh7_w25_11_c0 & bh7_w25_10_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid247_In1_c0 <= "" & bh7_w26_7_c0 & bh7_w26_10_c0;
   bh7_w25_12_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid247_Out0_c0(0);
   bh7_w26_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid247_Out0_c0(1);
   bh7_w27_12_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid247_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid247: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid247_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid247_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid247_Out0_copy248_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid247_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid247_Out0_copy248_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid249_In0_c0 <= "" & bh7_w27_11_c0 & bh7_w27_10_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid249_In1_c0 <= "" & bh7_w28_7_c0 & bh7_w28_10_c0;
   bh7_w27_13_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid249_Out0_c0(0);
   bh7_w28_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid249_Out0_c0(1);
   bh7_w29_12_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid249_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid249: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid249_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid249_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid249_Out0_copy250_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid249_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid249_Out0_copy250_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid251_In0_c0 <= "" & bh7_w29_11_c0 & bh7_w29_10_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid251_In1_c0 <= "" & bh7_w30_7_c0 & bh7_w30_10_c0;
   bh7_w29_13_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid251_Out0_c0(0);
   bh7_w30_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid251_Out0_c0(1);
   bh7_w31_12_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid251_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid251: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid251_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid251_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid251_Out0_copy252_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid251_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid251_Out0_copy252_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid253_In0_c0 <= "" & bh7_w31_11_c0 & bh7_w31_10_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid253_In1_c0 <= "" & bh7_w32_7_c0 & bh7_w32_10_c0;
   bh7_w31_13_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid253_Out0_c0(0);
   bh7_w32_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid253_Out0_c0(1);
   bh7_w33_12_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid253_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid253: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid253_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid253_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid253_Out0_copy254_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid253_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid253_Out0_copy254_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid255_In0_c0 <= "" & bh7_w33_11_c0 & bh7_w33_10_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid255_In1_c0 <= "" & bh7_w34_7_c0 & bh7_w34_10_c0;
   bh7_w33_13_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid255_Out0_c0(0);
   bh7_w34_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid255_Out0_c0(1);
   bh7_w35_12_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid255_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid255: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid255_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid255_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid255_Out0_copy256_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid255_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid255_Out0_copy256_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid257_In0_c0 <= "" & bh7_w35_11_c0 & bh7_w35_10_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid257_In1_c0 <= "" & bh7_w36_7_c0 & bh7_w36_10_c0;
   bh7_w35_13_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid257_Out0_c0(0);
   bh7_w36_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid257_Out0_c0(1);
   bh7_w37_12_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid257_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid257: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid257_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid257_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid257_Out0_copy258_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid257_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid257_Out0_copy258_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid259_In0_c0 <= "" & bh7_w37_11_c0 & bh7_w37_10_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid259_In1_c0 <= "" & bh7_w38_7_c0 & bh7_w38_10_c0;
   bh7_w37_13_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid259_Out0_c0(0);
   bh7_w38_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid259_Out0_c0(1);
   bh7_w39_12_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid259_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid259: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid259_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid259_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid259_Out0_copy260_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid259_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid259_Out0_copy260_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid261_In0_c0 <= "" & bh7_w39_11_c0 & bh7_w39_10_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid261_In1_c0 <= "" & bh7_w40_7_c0 & bh7_w40_10_c0;
   bh7_w39_13_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid261_Out0_c0(0);
   bh7_w40_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid261_Out0_c0(1);
   bh7_w41_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid261_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid261: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid261_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid261_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid261_Out0_copy262_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid261_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid261_Out0_copy262_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid263_In0_c0 <= "" & bh7_w41_9_c0 & bh7_w41_8_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid263_In1_c0 <= "" & bh7_w42_8_c0 & bh7_w42_9_c0;
   bh7_w41_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid263_Out0_c0(0);
   bh7_w42_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid263_Out0_c0(1);
   bh7_w43_10_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid263_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid263: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid263_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid263_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid263_Out0_copy264_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid263_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid263_Out0_copy264_c0; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid265_In0_c0 <= "" & bh7_w43_7_c0 & bh7_w43_9_c0 & bh7_w43_8_c0;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid265_In1_c0 <= "" & bh7_w44_3_c0 & bh7_w44_5_c0;
   bh7_w43_11_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid265_Out0_c0(0);
   bh7_w44_6_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid265_Out0_c0(1);
   bh7_w45_6_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid265_Out0_c0(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid265: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid265_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid265_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid265_Out0_copy266_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid265_Out0_c0 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid265_Out0_copy266_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid267_In0_c0 <= "" & bh7_w45_5_c0 & bh7_w45_4_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid267_In1_c0 <= "" & bh7_w46_3_c0;
   bh7_w45_7_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid267_Out0_c0(0);
   bh7_w46_4_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid267_Out0_c0(1);
   bh7_w47_2_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid267_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid267: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid267_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid267_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid267_Out0_copy268_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid267_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid267_Out0_copy268_c0; -- output copy to hold a pipeline register if needed


   Compressor_3_2_Freq300_2_875333_uid160_bh7_uid269_In0_c0 <= "" & bh7_w47_0_c0 & bh7_w47_1_c0 & "0";
   bh7_w47_3_c0 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid269_Out0_c0(0);
   Compressor_3_2_Freq300_2_875333_uid160_uid269: Compressor_3_2_Freq300_2_875333_uid160
      port map ( X0 => Compressor_3_2_Freq300_2_875333_uid160_bh7_uid269_In0_c0,
                 R => Compressor_3_2_Freq300_2_875333_uid160_bh7_uid269_Out0_copy270_c0);
   Compressor_3_2_Freq300_2_875333_uid160_bh7_uid269_Out0_c0 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid269_Out0_copy270_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid271_In0_c0 <= "" & bh7_w24_9_c0 & bh7_w24_10_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid271_In1_c0 <= "" & bh7_w25_12_c0;
   bh7_w24_11_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid271_Out0_c0(0);
   bh7_w25_13_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid271_Out0_c0(1);
   bh7_w26_12_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid271_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid271: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid271_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid271_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid271_Out0_copy272_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid271_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid271_Out0_copy272_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid273_In0_c0 <= "" & bh7_w27_13_c0 & bh7_w27_12_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid273_In1_c0 <= "" & bh7_w28_11_c0;
   bh7_w27_14_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid273_Out0_c0(0);
   bh7_w28_12_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid273_Out0_c0(1);
   bh7_w29_14_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid273_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid273: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid273_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid273_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid273_Out0_copy274_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid273_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid273_Out0_copy274_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid275_In0_c0 <= "" & bh7_w29_13_c0 & bh7_w29_12_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid275_In1_c0 <= "" & bh7_w30_11_c0;
   bh7_w29_15_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid275_Out0_c0(0);
   bh7_w30_12_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid275_Out0_c0(1);
   bh7_w31_14_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid275_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid275: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid275_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid275_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid275_Out0_copy276_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid275_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid275_Out0_copy276_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid277_In0_c0 <= "" & bh7_w31_13_c0 & bh7_w31_12_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid277_In1_c0 <= "" & bh7_w32_11_c0;
   bh7_w31_15_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid277_Out0_c0(0);
   bh7_w32_12_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid277_Out0_c0(1);
   bh7_w33_14_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid277_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid277: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid277_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid277_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid277_Out0_copy278_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid277_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid277_Out0_copy278_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid279_In0_c0 <= "" & bh7_w33_13_c0 & bh7_w33_12_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid279_In1_c0 <= "" & bh7_w34_11_c0;
   bh7_w33_15_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid279_Out0_c0(0);
   bh7_w34_12_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid279_Out0_c0(1);
   bh7_w35_14_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid279_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid279: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid279_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid279_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid279_Out0_copy280_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid279_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid279_Out0_copy280_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid281_In0_c0 <= "" & bh7_w35_13_c0 & bh7_w35_12_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid281_In1_c0 <= "" & bh7_w36_11_c0;
   bh7_w35_15_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid281_Out0_c0(0);
   bh7_w36_12_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid281_Out0_c0(1);
   bh7_w37_14_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid281_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid281: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid281_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid281_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid281_Out0_copy282_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid281_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid281_Out0_copy282_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid283_In0_c0 <= "" & bh7_w37_13_c0 & bh7_w37_12_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid283_In1_c0 <= "" & bh7_w38_11_c0;
   bh7_w37_15_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid283_Out0_c0(0);
   bh7_w38_12_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid283_Out0_c0(1);
   bh7_w39_14_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid283_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid283: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid283_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid283_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid283_Out0_copy284_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid283_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid283_Out0_copy284_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid285_In0_c0 <= "" & bh7_w39_13_c0 & bh7_w39_12_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid285_In1_c0 <= "" & bh7_w40_11_c0;
   bh7_w39_15_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid285_Out0_c0(0);
   bh7_w40_12_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid285_Out0_c0(1);
   bh7_w41_12_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid285_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid285: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid285_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid285_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid285_Out0_copy286_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid285_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid285_Out0_copy286_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid287_In0_c0 <= "" & bh7_w41_11_c0 & bh7_w41_10_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid287_In1_c0 <= "" & bh7_w42_10_c0;
   bh7_w41_13_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid287_Out0_c0(0);
   bh7_w42_11_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid287_Out0_c0(1);
   bh7_w43_12_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid287_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid287: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid287_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid287_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid287_Out0_copy288_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid287_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid287_Out0_copy288_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid289_In0_c0 <= "" & bh7_w43_10_c0 & bh7_w43_11_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid289_In1_c0 <= "" & bh7_w44_6_c0;
   bh7_w43_13_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid289_Out0_c0(0);
   bh7_w44_7_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid289_Out0_c0(1);
   bh7_w45_8_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid289_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid289: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid289_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid289_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid289_Out0_copy290_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid289_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid289_Out0_copy290_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid291_In0_c0 <= "" & bh7_w45_6_c0 & bh7_w45_7_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid291_In1_c0 <= "" & bh7_w46_4_c0;
   bh7_w45_9_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid291_Out0_c0(0);
   bh7_w46_5_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid291_Out0_c0(1);
   bh7_w47_4_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid291_Out0_c0(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid291: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid291_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid291_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid291_Out0_copy292_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid291_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid291_Out0_copy292_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid293_In0_c0 <= "" & bh7_w47_3_c0 & bh7_w47_2_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid293_In1_c0 <= "" & "0";
   bh7_w47_5_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid293_Out0_c0(0);
   Compressor_14_3_Freq300_2_875333_uid164_uid293: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid293_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid293_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid293_Out0_copy294_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid293_Out0_c0 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid293_Out0_copy294_c0; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_In0_c0 <= "" & bh7_w26_11_c0 & bh7_w26_12_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_In1_c0 <= "" & bh7_w27_14_c0;
   bh7_w26_13_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_Out0_c1(0);
   bh7_w27_15_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_Out0_c1(1);
   bh7_w28_13_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_Out0_c1(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid295: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_Out0_copy296_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid295_Out0_copy296_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_In0_c0 <= "" & bh7_w29_15_c0 & bh7_w29_14_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_In1_c0 <= "" & bh7_w30_12_c0;
   bh7_w29_16_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_Out0_c1(0);
   bh7_w30_13_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_Out0_c1(1);
   bh7_w31_16_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_Out0_c1(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid297: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_Out0_copy298_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid297_Out0_copy298_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_In0_c0 <= "" & bh7_w31_15_c0 & bh7_w31_14_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_In1_c0 <= "" & bh7_w32_12_c0;
   bh7_w31_17_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_Out0_c1(0);
   bh7_w32_13_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_Out0_c1(1);
   bh7_w33_16_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_Out0_c1(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid299: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_Out0_copy300_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid299_Out0_copy300_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_In0_c0 <= "" & bh7_w33_15_c0 & bh7_w33_14_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_In1_c0 <= "" & bh7_w34_12_c0;
   bh7_w33_17_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_Out0_c1(0);
   bh7_w34_13_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_Out0_c1(1);
   bh7_w35_16_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_Out0_c1(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid301: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_Out0_copy302_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid301_Out0_copy302_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_In0_c0 <= "" & bh7_w35_15_c0 & bh7_w35_14_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_In1_c0 <= "" & bh7_w36_12_c0;
   bh7_w35_17_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_Out0_c1(0);
   bh7_w36_13_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_Out0_c1(1);
   bh7_w37_16_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_Out0_c1(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid303: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_Out0_copy304_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid303_Out0_copy304_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_In0_c0 <= "" & bh7_w37_15_c0 & bh7_w37_14_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_In1_c0 <= "" & bh7_w38_12_c0;
   bh7_w37_17_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_Out0_c1(0);
   bh7_w38_13_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_Out0_c1(1);
   bh7_w39_16_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_Out0_c1(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid305: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_Out0_copy306_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid305_Out0_copy306_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_In0_c0 <= "" & bh7_w39_15_c0 & bh7_w39_14_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_In1_c0 <= "" & bh7_w40_12_c0;
   bh7_w39_17_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_Out0_c1(0);
   bh7_w40_13_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_Out0_c1(1);
   bh7_w41_14_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_Out0_c1(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid307: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_Out0_copy308_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid307_Out0_copy308_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_In0_c0 <= "" & bh7_w41_13_c0 & bh7_w41_12_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_In1_c0 <= "" & bh7_w42_11_c0;
   bh7_w41_15_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_Out0_c1(0);
   bh7_w42_12_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_Out0_c1(1);
   bh7_w43_14_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_Out0_c1(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid309: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_Out0_copy310_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid309_Out0_copy310_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_In0_c0 <= "" & bh7_w43_12_c0 & bh7_w43_13_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_In1_c0 <= "" & bh7_w44_7_c0;
   bh7_w43_15_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_Out0_c1(0);
   bh7_w44_8_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_Out0_c1(1);
   bh7_w45_10_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_Out0_c1(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid311: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_Out0_copy312_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid311_Out0_copy312_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_In0_c0 <= "" & bh7_w45_8_c0 & bh7_w45_9_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_In1_c0 <= "" & bh7_w46_5_c0;
   bh7_w45_11_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_Out0_c1(0);
   bh7_w46_6_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_Out0_c1(1);
   bh7_w47_6_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_Out0_c1(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid313: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_Out0_copy314_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid313_Out0_copy314_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_In0_c0 <= "" & bh7_w47_4_c0 & bh7_w47_5_c0 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_In1_c0 <= "" & "0";
   bh7_w47_7_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_Out0_c1(0);
   Compressor_14_3_Freq300_2_875333_uid164_uid315: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_In0_c0,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_In1_c0,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_Out0_copy316_c0);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid315_Out0_copy316_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_In0_c0 <= "" & bh7_w17_1_c0 & bh7_w17_0_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_In1_c0 <= "" & bh7_w18_2_c0 & bh7_w18_0_c0;
   bh7_w17_2_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_Out0_c1(0);
   bh7_w18_3_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_Out0_c1(1);
   bh7_w19_4_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_Out0_c1(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid317: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_Out0_copy318_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_Out0_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid317_Out0_copy318_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_In0_c0 <= "" & bh7_w19_3_c0 & bh7_w19_0_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_In1_c0 <= "" & bh7_w20_6_c0 & bh7_w20_0_c0;
   bh7_w19_5_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_Out0_c1(0);
   bh7_w20_7_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_Out0_c1(1);
   bh7_w21_8_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_Out0_c1(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid319: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_Out0_copy320_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_Out0_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid319_Out0_copy320_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_In0_c0 <= "" & bh7_w21_7_c0 & bh7_w21_0_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_In1_c0 <= "" & bh7_w22_9_c0 & bh7_w22_0_c0;
   bh7_w21_9_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_Out0_c1(0);
   bh7_w22_10_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_Out0_c1(1);
   bh7_w23_13_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_Out0_c1(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid321: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_Out0_copy322_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_Out0_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid321_Out0_copy322_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_In0_c0 <= "" & bh7_w23_12_c0 & bh7_w23_0_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_In1_c0 <= "" & bh7_w24_11_c0 & bh7_w24_0_c0;
   bh7_w23_14_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_Out0_c1(0);
   bh7_w24_12_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_Out0_c1(1);
   bh7_w25_14_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_Out0_c1(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid323: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_In0_c0,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_In1_c0,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_Out0_copy324_c0);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_Out0_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid323_Out0_copy324_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_In0_c0 <= "" & bh7_w25_13_c0 & bh7_w25_0_c0 & "0";
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_In1_c1 <= "" & bh7_w26_0_c1 & bh7_w26_13_c1;
   bh7_w25_15_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_Out0_c1(0);
   bh7_w26_14_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_Out0_c1(1);
   bh7_w27_16_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_Out0_c1(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid325: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_In0_c1,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_In1_c1,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_Out0_copy326_c1);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_Out0_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid325_Out0_copy326_c1; -- output copy to hold a pipeline register if needed


   Compressor_3_2_Freq300_2_875333_uid160_bh7_uid327_In0_c1 <= "" & bh7_w27_0_c1 & bh7_w27_15_c1 & "0";
   bh7_w27_17_c1 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid327_Out0_c1(0);
   bh7_w28_14_c1 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid327_Out0_c1(1);
   Compressor_3_2_Freq300_2_875333_uid160_uid327: Compressor_3_2_Freq300_2_875333_uid160
      port map ( X0 => Compressor_3_2_Freq300_2_875333_uid160_bh7_uid327_In0_c1,
                 R => Compressor_3_2_Freq300_2_875333_uid160_bh7_uid327_Out0_copy328_c1);
   Compressor_3_2_Freq300_2_875333_uid160_bh7_uid327_Out0_c1 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid327_Out0_copy328_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid329_In0_c1 <= "" & bh7_w28_12_c1 & bh7_w28_0_c1 & bh7_w28_13_c1;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid329_In1_c1 <= "" & bh7_w29_0_c1 & bh7_w29_16_c1;
   bh7_w28_15_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid329_Out0_c1(0);
   bh7_w29_17_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid329_Out0_c1(1);
   bh7_w30_14_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid329_Out0_c1(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid329: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid329_In0_c1,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid329_In1_c1,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid329_Out0_copy330_c1);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid329_Out0_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid329_Out0_copy330_c1; -- output copy to hold a pipeline register if needed


   Compressor_3_2_Freq300_2_875333_uid160_bh7_uid331_In0_c1 <= "" & bh7_w30_0_c1 & bh7_w30_13_c1 & "0";
   bh7_w30_15_c1 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid331_Out0_c1(0);
   bh7_w31_18_c1 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid331_Out0_c1(1);
   Compressor_3_2_Freq300_2_875333_uid160_uid331: Compressor_3_2_Freq300_2_875333_uid160
      port map ( X0 => Compressor_3_2_Freq300_2_875333_uid160_bh7_uid331_In0_c1,
                 R => Compressor_3_2_Freq300_2_875333_uid160_bh7_uid331_Out0_copy332_c1);
   Compressor_3_2_Freq300_2_875333_uid160_bh7_uid331_Out0_c1 <= Compressor_3_2_Freq300_2_875333_uid160_bh7_uid331_Out0_copy332_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid333_In0_c1 <= "" & bh7_w31_0_c1 & bh7_w31_17_c1 & bh7_w31_16_c1;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid333_In1_c1 <= "" & bh7_w32_0_c1 & bh7_w32_13_c1;
   bh7_w31_19_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid333_Out0_c1(0);
   bh7_w32_14_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid333_Out0_c1(1);
   bh7_w33_18_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid333_Out0_c1(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid333: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid333_In0_c1,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid333_In1_c1,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid333_Out0_copy334_c1);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid333_Out0_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid333_Out0_copy334_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid335_In0_c1 <= "" & bh7_w33_0_c1 & bh7_w33_17_c1 & bh7_w33_16_c1;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid335_In1_c1 <= "" & bh7_w34_0_c1 & bh7_w34_13_c1;
   bh7_w33_19_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid335_Out0_c1(0);
   bh7_w34_14_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid335_Out0_c1(1);
   bh7_w35_18_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid335_Out0_c1(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid335: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid335_In0_c1,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid335_In1_c1,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid335_Out0_copy336_c1);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid335_Out0_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid335_Out0_copy336_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid337_In0_c1 <= "" & bh7_w35_0_c1 & bh7_w35_17_c1 & bh7_w35_16_c1;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid337_In1_c1 <= "" & bh7_w36_0_c1 & bh7_w36_13_c1;
   bh7_w35_19_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid337_Out0_c1(0);
   bh7_w36_14_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid337_Out0_c1(1);
   bh7_w37_18_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid337_Out0_c1(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid337: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid337_In0_c1,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid337_In1_c1,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid337_Out0_copy338_c1);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid337_Out0_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid337_Out0_copy338_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid339_In0_c1 <= "" & bh7_w37_0_c1 & bh7_w37_17_c1 & bh7_w37_16_c1;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid339_In1_c1 <= "" & bh7_w38_0_c1 & bh7_w38_13_c1;
   bh7_w37_19_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid339_Out0_c1(0);
   bh7_w38_14_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid339_Out0_c1(1);
   bh7_w39_18_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid339_Out0_c1(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid339: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid339_In0_c1,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid339_In1_c1,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid339_Out0_copy340_c1);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid339_Out0_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid339_Out0_copy340_c1; -- output copy to hold a pipeline register if needed


   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid341_In0_c1 <= "" & bh7_w39_0_c1 & bh7_w39_17_c1 & bh7_w39_16_c1;
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid341_In1_c1 <= "" & bh7_w40_0_c1 & bh7_w40_13_c1;
   bh7_w39_19_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid341_Out0_c1(0);
   bh7_w40_14_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid341_Out0_c1(1);
   bh7_w41_16_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid341_Out0_c1(2);
   Compressor_23_3_Freq300_2_875333_uid156_uid341: Compressor_23_3_Freq300_2_875333_uid156
      port map ( X0 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid341_In0_c1,
                 X1 => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid341_In1_c1,
                 R => Compressor_23_3_Freq300_2_875333_uid156_bh7_uid341_Out0_copy342_c1);
   Compressor_23_3_Freq300_2_875333_uid156_bh7_uid341_Out0_c1 <= Compressor_23_3_Freq300_2_875333_uid156_bh7_uid341_Out0_copy342_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid343_In0_c1 <= "" & bh7_w41_15_c1 & bh7_w41_14_c1 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid343_In1_c1 <= "" & bh7_w42_12_c1;
   bh7_w41_17_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid343_Out0_c1(0);
   bh7_w42_13_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid343_Out0_c1(1);
   bh7_w43_16_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid343_Out0_c1(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid343: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid343_In0_c1,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid343_In1_c1,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid343_Out0_copy344_c1);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid343_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid343_Out0_copy344_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid345_In0_c1 <= "" & bh7_w43_14_c1 & bh7_w43_15_c1 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid345_In1_c1 <= "" & bh7_w44_8_c1;
   bh7_w43_17_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid345_Out0_c1(0);
   bh7_w44_9_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid345_Out0_c1(1);
   bh7_w45_12_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid345_Out0_c1(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid345: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid345_In0_c1,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid345_In1_c1,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid345_Out0_copy346_c1);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid345_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid345_Out0_copy346_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid347_In0_c1 <= "" & bh7_w45_10_c1 & bh7_w45_11_c1 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid347_In1_c1 <= "" & bh7_w46_6_c1;
   bh7_w45_13_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid347_Out0_c1(0);
   bh7_w46_7_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid347_Out0_c1(1);
   bh7_w47_8_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid347_Out0_c1(2);
   Compressor_14_3_Freq300_2_875333_uid164_uid347: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid347_In0_c1,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid347_In1_c1,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid347_Out0_copy348_c1);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid347_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid347_Out0_copy348_c1; -- output copy to hold a pipeline register if needed


   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_In0_c1 <= "" & bh7_w47_6_c1 & bh7_w47_7_c1 & "0" & "0";
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_In1_c0 <= "" & "0";
   bh7_w47_9_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_Out0_c1(0);
   Compressor_14_3_Freq300_2_875333_uid164_uid349: Compressor_14_3_Freq300_2_875333_uid164
      port map ( X0 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_In0_c1,
                 X1 => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_In1_c1,
                 R => Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_Out0_copy350_c1);
   Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_Out0_c1 <= Compressor_14_3_Freq300_2_875333_uid164_bh7_uid349_Out0_copy350_c1; -- output copy to hold a pipeline register if needed

   tmp_bitheapResult_bh7_18_c1 <= bh7_w18_3_c1 & bh7_w17_2_c1 & bh7_w16_0_c1 & bh7_w15_0_c1 & bh7_w14_0_c1 & bh7_w13_0_c1 & bh7_w12_0_c1 & bh7_w11_0_c1 & bh7_w10_0_c1 & bh7_w9_0_c1 & bh7_w8_0_c1 & bh7_w7_0_c1 & bh7_w6_0_c1 & bh7_w5_0_c1 & bh7_w4_0_c1 & bh7_w3_0_c1 & bh7_w2_0_c1 & bh7_w1_0_c1 & bh7_w0_0_c1;

   bitheapFinalAdd_bh7_In0_c1 <= "0" & bh7_w47_8_c1 & bh7_w46_7_c1 & bh7_w45_12_c1 & bh7_w44_9_c1 & bh7_w43_16_c1 & bh7_w42_13_c1 & bh7_w41_17_c1 & bh7_w40_14_c1 & bh7_w39_19_c1 & bh7_w38_14_c1 & bh7_w37_19_c1 & bh7_w36_14_c1 & bh7_w35_19_c1 & bh7_w34_14_c1 & bh7_w33_19_c1 & bh7_w32_14_c1 & bh7_w31_19_c1 & bh7_w30_15_c1 & bh7_w29_17_c1 & bh7_w28_15_c1 & bh7_w27_17_c1 & bh7_w26_14_c1 & bh7_w25_14_c1 & bh7_w24_12_c1 & bh7_w23_14_c1 & bh7_w22_10_c1 & bh7_w21_9_c1 & bh7_w20_7_c1 & bh7_w19_5_c1;
   bitheapFinalAdd_bh7_In1_c1 <= "0" & bh7_w47_9_c1 & "0" & bh7_w45_13_c1 & "0" & bh7_w43_17_c1 & "0" & bh7_w41_16_c1 & "0" & bh7_w39_18_c1 & "0" & bh7_w37_18_c1 & "0" & bh7_w35_18_c1 & "0" & bh7_w33_18_c1 & "0" & bh7_w31_18_c1 & bh7_w30_14_c1 & "0" & bh7_w28_14_c1 & bh7_w27_16_c1 & "0" & bh7_w25_15_c1 & "0" & bh7_w23_13_c1 & "0" & bh7_w21_8_c1 & "0" & bh7_w19_4_c1;
   bitheapFinalAdd_bh7_Cin_c0 <= '0';

   bitheapFinalAdd_bh7: IntAdder_30_Freq300_2_875333_uid352
      port map ( clk  => clk,
                 ce_1 => ce_1,
                 Cin => bitheapFinalAdd_bh7_Cin_c0,
                 X => bitheapFinalAdd_bh7_In0_c1,
                 Y => bitheapFinalAdd_bh7_In1_c1,
                 R => bitheapFinalAdd_bh7_Out_c1);
   bitheapResult_bh7_c1 <= bitheapFinalAdd_bh7_Out_c1(28 downto 0) & tmp_bitheapResult_bh7_18_c1;
   R <= bitheapResult_bh7_c1(47 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                         IntAdder_33_Freq300_2_875333_uid355
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
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

entity IntAdder_33_Freq300_2_875333_uid355 is
    port (clk, ce_1, ce_2 : in std_logic;
          X : in  std_logic_vector(32 downto 0);
          Y : in  std_logic_vector(32 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of IntAdder_33_Freq300_2_875333_uid355 is
signal Rtmp_c2 :  std_logic_vector(32 downto 0);
signal X_c2 :  std_logic_vector(32 downto 0);
signal Y_c1, Y_c2 :  std_logic_vector(32 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               Y_c1 <= Y;
            end if;
            if ce_2 = '1' then
               X_c2 <= X;
               Y_c2 <= Y_c1;
            end if;
         end if;
      end process;
   Rtmp_c2 <= X_c2 + Y_c2 + Cin;
   R <= Rtmp_c2;
end architecture;

--------------------------------------------------------------------------------
--                          FloatingPointMultiplier
--                      (FPMult_8_23_uid2_Freq300_2_875333_uid3)
-- VHDL generated for Kintex7 @ 300MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin 2008-2021
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
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

entity FloatingPointMultiplier_32_2_875333 is
    port (clk, ce_1, ce_2 : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of FloatingPointMultiplier_32_2_875333 is
   component IntMultiplier_24x24_48_Freq300_2_875333_uid5 is
      port ( clk, ce_1 : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             Y : in  std_logic_vector(23 downto 0);
             R : out  std_logic_vector(47 downto 0)   );
   end component;

   component IntAdder_33_Freq300_2_875333_uid355 is
      port ( clk, ce_1, ce_2 : in std_logic;
             X : in  std_logic_vector(32 downto 0);
             Y : in  std_logic_vector(32 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(32 downto 0)   );
   end component;

signal sign_c0, sign_c1, sign_c2 :  std_logic;
signal expX_c0 :  std_logic_vector(7 downto 0);
signal expY_c0 :  std_logic_vector(7 downto 0);
signal expSumPreSub_c0 :  std_logic_vector(9 downto 0);
signal bias_c0 :  std_logic_vector(9 downto 0);
signal expSum_c0, expSum_c1 :  std_logic_vector(9 downto 0);
signal sigX_c0 :  std_logic_vector(23 downto 0);
signal sigY_c0 :  std_logic_vector(23 downto 0);
signal sigProd_c1 :  std_logic_vector(47 downto 0);
signal excSel_c0 :  std_logic_vector(3 downto 0);
signal exc_c0, exc_c1, exc_c2 :  std_logic_vector(1 downto 0);
signal norm_c1 :  std_logic;
signal expPostNorm_c1 :  std_logic_vector(9 downto 0);
signal sigProdExt_c1, sigProdExt_c2 :  std_logic_vector(47 downto 0);
signal expSig_c1 :  std_logic_vector(32 downto 0);
signal sticky_c1, sticky_c2 :  std_logic;
signal guard_c2 :  std_logic;
signal round_c2 :  std_logic;
signal expSigPostRound_c2 :  std_logic_vector(32 downto 0);
signal excPostNorm_c2 :  std_logic_vector(1 downto 0);
signal finalExc_c2 :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               sign_c1 <= sign_c0;
               expSum_c1 <= expSum_c0;
               exc_c1 <= exc_c0;
            end if;
            if ce_2 = '1' then
               sign_c2 <= sign_c1;
               exc_c2 <= exc_c1;
               sigProdExt_c2 <= sigProdExt_c1;
               sticky_c2 <= sticky_c1;
            end if;
         end if;
      end process;
   sign_c0 <= X(31) xor Y(31);
   expX_c0 <= X(30 downto 23);
   expY_c0 <= Y(30 downto 23);
   expSumPreSub_c0 <= ("00" & expX_c0) + ("00" & expY_c0);
   bias_c0 <= CONV_STD_LOGIC_VECTOR(127,10);
   expSum_c0 <= expSumPreSub_c0 - bias_c0;
   sigX_c0 <= "1" & X(22 downto 0);
   sigY_c0 <= "1" & Y(22 downto 0);
   SignificandMultiplication: IntMultiplier_24x24_48_Freq300_2_875333_uid5
      port map ( clk  => clk,
                 ce_1 => ce_1,
                 X => sigX_c0,
                 Y => sigY_c0,
                 R => sigProd_c1);
   excSel_c0 <= X(33 downto 32) & Y(33 downto 32);
   with excSel_c0  select  
   exc_c0 <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   norm_c1 <= sigProd_c1(47);
   -- exponent update
   expPostNorm_c1 <= expSum_c1 + ("000000000" & norm_c1);
   -- significand normalization shift
   sigProdExt_c1 <= sigProd_c1(46 downto 0) & "0" when norm_c1='1' else
                         sigProd_c1(45 downto 0) & "00";
   expSig_c1 <= expPostNorm_c1 & sigProdExt_c1(47 downto 25);
   sticky_c1 <= sigProdExt_c1(24);
   guard_c2 <= '0' when sigProdExt_c2(23 downto 0)="000000000000000000000000" else '1';
   round_c2 <= sticky_c2 and ( (guard_c2 and not(sigProdExt_c2(25))) or (sigProdExt_c2(25) ))  ;
   RoundingAdder: IntAdder_33_Freq300_2_875333_uid355
      port map ( clk  => clk,
                 ce_1 => ce_1,
                 ce_2=> ce_2,
                 Cin => round_c2,
                 X => expSig_c1,
                 Y => "000000000000000000000000000000000",
                 R => expSigPostRound_c2);
   with expSigPostRound_c2(32 downto 31)  select 
   excPostNorm_c2 <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc_c2  select  
   finalExc_c2 <= exc_c2 when  "11"|"10"|"00",
                       excPostNorm_c2 when others; 
   R <= finalExc_c2 & sign_c2 & expSigPostRound_c2(30 downto 0);
end architecture;




--------------------------------------------------------------------------------
--                RightShifterSticky24_by_max_26_Freq800_2_772000_uid4
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

entity RightShifterSticky24_by_max_26_Freq800_2_772000_uid4 is
    port (clk, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8 : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          S : in  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(25 downto 0);
          Sticky : out  std_logic   );
end entity;

architecture arch of RightShifterSticky24_by_max_26_Freq800_2_772000_uid4 is
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
--                          IntAdder_27_Freq800_2_772000_uid6
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

entity IntAdder_27_Freq800_2_772000_uid6 is
    port (clk, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17 : in std_logic;
          X : in  std_logic_vector(26 downto 0);
          Y : in  std_logic_vector(26 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of IntAdder_27_Freq800_2_772000_uid6 is
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
--                     Normalizer_Z_28_28_28_Freq800_2_772000_uid8
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

entity Normalizer_Z_28_28_28_Freq800_2_772000_uid8 is
    port (clk, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23 : in std_logic;
          X : in  std_logic_vector(27 downto 0);
          Count : out  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(27 downto 0)   );
end entity;

architecture arch of Normalizer_Z_28_28_28_Freq800_2_772000_uid8 is
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
--                         IntAdder_34_Freq800_2_772000_uid11
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

entity IntAdder_34_Freq800_2_772000_uid11 is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27, ce_28, ce_29, ce_30, ce_31, ce_32, ce_33, ce_34, ce_35 : in std_logic;
          X : in  std_logic_vector(33 downto 0);
          Y : in  std_logic_vector(33 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(33 downto 0)   );
end entity;

architecture arch of IntAdder_34_Freq800_2_772000_uid11 is
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
--                          FloatingPointSubtractor
--                         (FPAdd_8_23_Freq800_2_772000_uid2)
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

entity FloatingPointSubtractor_32_2_772000 is
    port (clk, ce_1, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23, ce_24, ce_25, ce_26, ce_27, ce_28, ce_29, ce_30, ce_31, ce_32, ce_33, ce_34, ce_35, ce_36 : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of FloatingPointSubtractor_32_2_772000 is
   component RightShifterSticky24_by_max_26_Freq800_2_772000_uid4 is
      port ( clk, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8 : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             S : in  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(25 downto 0);
             Sticky : out  std_logic   );
   end component;

   component IntAdder_27_Freq800_2_772000_uid6 is
      port ( clk, ce_2, ce_3, ce_4, ce_5, ce_6, ce_7, ce_8, ce_9, ce_10, ce_11, ce_12, ce_13, ce_14, ce_15, ce_16, ce_17 : in std_logic;
             X : in  std_logic_vector(26 downto 0);
             Y : in  std_logic_vector(26 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component Normalizer_Z_28_28_28_Freq800_2_772000_uid8 is
      port ( clk, ce_18, ce_19, ce_20, ce_21, ce_22, ce_23 : in std_logic;
             X : in  std_logic_vector(27 downto 0);
             Count : out  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(27 downto 0)   );
   end component;

   component IntAdder_34_Freq800_2_772000_uid11 is
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
   RightShifterComponent: RightShifterSticky24_by_max_26_Freq800_2_772000_uid4
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
   fracAdder: IntAdder_27_Freq800_2_772000_uid6
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
   LZCAndShifter: Normalizer_Z_28_28_28_Freq800_2_772000_uid8
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
   roundingAdder: IntAdder_34_Freq800_2_772000_uid11
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




