--------------------------------------------------------------------------------
--                RightShifterSticky24_by_max_26_Freq100_uid4
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

entity RightShifterSticky24_by_max_26_Freq100_uid4 is
    port (clk : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          S : in  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(25 downto 0);
          Sticky : out  std_logic   );
end entity;

architecture arch of RightShifterSticky24_by_max_26_Freq100_uid4 is
signal ps_c0 :  std_logic_vector(4 downto 0);
signal Xpadded_c0 :  std_logic_vector(25 downto 0);
signal level5_c0 :  std_logic_vector(25 downto 0);
signal stk4_c0 :  std_logic;
signal level4_c0 :  std_logic_vector(25 downto 0);
signal stk3_c0 :  std_logic;
signal level3_c0 :  std_logic_vector(25 downto 0);
signal stk2_c0 :  std_logic;
signal level2_c0 :  std_logic_vector(25 downto 0);
signal stk1_c0 :  std_logic;
signal level1_c0 :  std_logic_vector(25 downto 0);
signal stk0_c0 :  std_logic;
signal level0_c0 :  std_logic_vector(25 downto 0);
begin
   ps_c0<= S;
   Xpadded_c0 <= X&(1 downto 0 => '0');
   level5_c0<= Xpadded_c0;
   stk4_c0 <= '1' when (level5_c0(15 downto 0)/="0000000000000000" and ps_c0(4)='1')   else '0';
   level4_c0 <=  level5_c0 when  ps_c0(4)='0'    else (15 downto 0 => '0') & level5_c0(25 downto 16);
   stk3_c0 <= '1' when (level4_c0(7 downto 0)/="00000000" and ps_c0(3)='1') or stk4_c0 ='1'   else '0';
   level3_c0 <=  level4_c0 when  ps_c0(3)='0'    else (7 downto 0 => '0') & level4_c0(25 downto 8);
   stk2_c0 <= '1' when (level3_c0(3 downto 0)/="0000" and ps_c0(2)='1') or stk3_c0 ='1'   else '0';
   level2_c0 <=  level3_c0 when  ps_c0(2)='0'    else (3 downto 0 => '0') & level3_c0(25 downto 4);
   stk1_c0 <= '1' when (level2_c0(1 downto 0)/="00" and ps_c0(1)='1') or stk2_c0 ='1'   else '0';
   level1_c0 <=  level2_c0 when  ps_c0(1)='0'    else (1 downto 0 => '0') & level2_c0(25 downto 2);
   stk0_c0 <= '1' when (level1_c0(0 downto 0)/="0" and ps_c0(0)='1') or stk1_c0 ='1'   else '0';
   level0_c0 <=  level1_c0 when  ps_c0(0)='0'    else (0 downto 0 => '0') & level1_c0(25 downto 1);
   R <= level0_c0;
   Sticky <= stk0_c0;
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_27_Freq100_uid6
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

entity IntAdder_27_Freq100_uid6 is
    port (clk, ce_1 : in std_logic;
          X : in  std_logic_vector(26 downto 0);
          Y : in  std_logic_vector(26 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of IntAdder_27_Freq100_uid6 is
signal Cin_1_c0, Cin_1_c1 :  std_logic;
signal X_1_c0, X_1_c1 :  std_logic_vector(27 downto 0);
signal Y_1_c0, Y_1_c1 :  std_logic_vector(27 downto 0);
signal S_1_c1 :  std_logic_vector(27 downto 0);
signal R_1_c1 :  std_logic_vector(26 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               Cin_1_c1 <= Cin_1_c0;
               X_1_c1 <= X_1_c0;
               Y_1_c1 <= Y_1_c0;
            end if;
         end if;
      end process;
   Cin_1_c0 <= Cin;
   X_1_c0 <= '0' & X(26 downto 0);
   Y_1_c0 <= '0' & Y(26 downto 0);
   S_1_c1 <= X_1_c1 + Y_1_c1 + Cin_1_c1;
   R_1_c1 <= S_1_c1(26 downto 0);
   R <= R_1_c1 ;
end architecture;

--------------------------------------------------------------------------------
--                     Normalizer_Z_28_28_28_Freq100_uid8
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

entity Normalizer_Z_28_28_28_Freq100_uid8 is
    port (clk : in std_logic;
          X : in  std_logic_vector(27 downto 0);
          Count : out  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(27 downto 0)   );
end entity;

architecture arch of Normalizer_Z_28_28_28_Freq100_uid8 is
signal level5_c1 :  std_logic_vector(27 downto 0);
signal count4_c1 :  std_logic;
signal level4_c1 :  std_logic_vector(27 downto 0);
signal count3_c1 :  std_logic;
signal level3_c1 :  std_logic_vector(27 downto 0);
signal count2_c1 :  std_logic;
signal level2_c1 :  std_logic_vector(27 downto 0);
signal count1_c1 :  std_logic;
signal level1_c1 :  std_logic_vector(27 downto 0);
signal count0_c1 :  std_logic;
signal level0_c1 :  std_logic_vector(27 downto 0);
signal sCount_c1 :  std_logic_vector(4 downto 0);
begin
   level5_c1 <= X ;
   count4_c1<= '1' when level5_c1(27 downto 12) = (27 downto 12=>'0') else '0';
   level4_c1<= level5_c1(27 downto 0) when count4_c1='0' else level5_c1(11 downto 0) & (15 downto 0 => '0');

   count3_c1<= '1' when level4_c1(27 downto 20) = (27 downto 20=>'0') else '0';
   level3_c1<= level4_c1(27 downto 0) when count3_c1='0' else level4_c1(19 downto 0) & (7 downto 0 => '0');

   count2_c1<= '1' when level3_c1(27 downto 24) = (27 downto 24=>'0') else '0';
   level2_c1<= level3_c1(27 downto 0) when count2_c1='0' else level3_c1(23 downto 0) & (3 downto 0 => '0');

   count1_c1<= '1' when level2_c1(27 downto 26) = (27 downto 26=>'0') else '0';
   level1_c1<= level2_c1(27 downto 0) when count1_c1='0' else level2_c1(25 downto 0) & (1 downto 0 => '0');

   count0_c1<= '1' when level1_c1(27 downto 27) = (27 downto 27=>'0') else '0';
   level0_c1<= level1_c1(27 downto 0) when count0_c1='0' else level1_c1(26 downto 0) & (0 downto 0 => '0');

   R <= level0_c1;
   sCount_c1 <= count4_c1 & count3_c1 & count2_c1 & count1_c1 & count0_c1;
   Count <= sCount_c1;
end architecture;

--------------------------------------------------------------------------------
--                         IntAdder_34_Freq100_uid11
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

entity IntAdder_34_Freq100_uid11 is
    port (clk, ce_1 : in std_logic;
          X : in  std_logic_vector(33 downto 0);
          Y : in  std_logic_vector(33 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(33 downto 0)   );
end entity;

architecture arch of IntAdder_34_Freq100_uid11 is
signal Rtmp_c1 :  std_logic_vector(33 downto 0);
signal Y_c1 :  std_logic_vector(33 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               Y_c1 <= Y;
            end if;
         end if;
      end process;
   Rtmp_c1 <= X + Y_c1 + Cin;
   R <= Rtmp_c1;
end architecture;

--------------------------------------------------------------------------------
--                             FloatingPointAdder
--                         (FPAdd_8_23_Freq100_uid2)
-- VHDL generated for Kintex7 @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2010-2017)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles
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

entity FloatingPointAdder is
    port (clk, ce_1 : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of FloatingPointAdder is
   component RightShifterSticky24_by_max_26_Freq100_uid4 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             S : in  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(25 downto 0);
             Sticky : out  std_logic   );
   end component;

   component IntAdder_27_Freq100_uid6 is
      port ( clk, ce_1 : in std_logic;
             X : in  std_logic_vector(26 downto 0);
             Y : in  std_logic_vector(26 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component Normalizer_Z_28_28_28_Freq100_uid8 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(27 downto 0);
             Count : out  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(27 downto 0)   );
   end component;

   component IntAdder_34_Freq100_uid11 is
      port ( clk, ce_1 : in std_logic;
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
signal EffSub_c0, EffSub_c1 :  std_logic;
signal sXsYExnXY_c0 :  std_logic_vector(5 downto 0);
signal sdExnXY_c0 :  std_logic_vector(3 downto 0);
signal fracY_c0 :  std_logic_vector(23 downto 0);
signal excRt_c0, excRt_c1 :  std_logic_vector(1 downto 0);
signal signR_c0, signR_c1 :  std_logic;
signal shiftedOut_c0 :  std_logic;
signal shiftVal_c0 :  std_logic_vector(4 downto 0);
signal shiftedFracY_c0 :  std_logic_vector(25 downto 0);
signal sticky_c0, sticky_c1 :  std_logic;
signal fracYpad_c0 :  std_logic_vector(26 downto 0);
signal EffSubVector_c0 :  std_logic_vector(26 downto 0);
signal fracYpadXorOp_c0 :  std_logic_vector(26 downto 0);
signal fracXpad_c0 :  std_logic_vector(26 downto 0);
signal cInSigAdd_c0 :  std_logic;
signal fracAddResult_c1 :  std_logic_vector(26 downto 0);
signal fracSticky_c1 :  std_logic_vector(27 downto 0);
signal nZerosNew_c1 :  std_logic_vector(4 downto 0);
signal shiftedFrac_c1 :  std_logic_vector(27 downto 0);
signal extendedExpInc_c0, extendedExpInc_c1 :  std_logic_vector(8 downto 0);
signal updatedExp_c1 :  std_logic_vector(9 downto 0);
signal eqdiffsign_c1 :  std_logic;
signal expFrac_c1 :  std_logic_vector(33 downto 0);
signal stk_c1 :  std_logic;
signal rnd_c1 :  std_logic;
signal lsb_c1 :  std_logic;
signal needToRound_c1 :  std_logic;
signal RoundedExpFrac_c1 :  std_logic_vector(33 downto 0);
signal upExc_c1 :  std_logic_vector(1 downto 0);
signal fracR_c1 :  std_logic_vector(22 downto 0);
signal expR_c1 :  std_logic_vector(7 downto 0);
signal exExpExc_c1 :  std_logic_vector(3 downto 0);
signal excRt2_c1 :  std_logic_vector(1 downto 0);
signal excR_c1 :  std_logic_vector(1 downto 0);
signal signR2_c1 :  std_logic;
signal computedR_c1 :  std_logic_vector(33 downto 0);
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
   RightShifterComponent: RightShifterSticky24_by_max_26_Freq100_uid4
      port map ( clk  => clk,
                 S => shiftVal_c0,
                 X => fracY_c0,
                 R => shiftedFracY_c0,
                 Sticky => sticky_c0);
   fracYpad_c0 <= "0" & shiftedFracY_c0;
   EffSubVector_c0 <= (26 downto 0 => EffSub_c0);
   fracYpadXorOp_c0 <= fracYpad_c0 xor EffSubVector_c0;
   fracXpad_c0 <= "01" & (newX_c0(22 downto 0)) & "00";
   cInSigAdd_c0 <= EffSub_c0 and not sticky_c0; -- if we subtract and the sticky was one, some of the negated sticky bits would have absorbed this carry 
   fracAdder: IntAdder_27_Freq100_uid6
      port map ( clk  => clk,
                 ce_1 => ce_1,
                 Cin => cInSigAdd_c0,
                 X => fracXpad_c0,
                 Y => fracYpadXorOp_c0,
                 R => fracAddResult_c1);
   fracSticky_c1<= fracAddResult_c1 & sticky_c1; 
   LZCAndShifter: Normalizer_Z_28_28_28_Freq100_uid8
      port map ( clk  => clk,
                 X => fracSticky_c1,
                 Count => nZerosNew_c1,
                 R => shiftedFrac_c1);
   extendedExpInc_c0<= ("0" & expX_c0) + '1';
   updatedExp_c1 <= ("0" &extendedExpInc_c1) - ("00000" & nZerosNew_c1);
   eqdiffsign_c1 <= '1' when nZerosNew_c1="11111" else '0';
   expFrac_c1<= updatedExp_c1 & shiftedFrac_c1(26 downto 3);
   stk_c1<= shiftedFrac_c1(2) or shiftedFrac_c1(1) or shiftedFrac_c1(0);
   rnd_c1<= shiftedFrac_c1(3);
   lsb_c1<= shiftedFrac_c1(4);
   needToRound_c1<= '1' when (rnd_c1='1' and stk_c1='1') or (rnd_c1='1' and stk_c1='0' and lsb_c1='1')
  else '0';
   roundingAdder: IntAdder_34_Freq100_uid11
      port map ( clk  => clk,
                 ce_1 => ce_1,
                 Cin => needToRound_c1,
                 X => expFrac_c1,
                 Y => "0000000000000000000000000000000000",
                 R => RoundedExpFrac_c1);
   -- possible update to exception bits
   upExc_c1 <= RoundedExpFrac_c1(33 downto 32);
   fracR_c1 <= RoundedExpFrac_c1(23 downto 1);
   expR_c1 <= RoundedExpFrac_c1(31 downto 24);
   exExpExc_c1 <= upExc_c1 & excRt_c1;
   with exExpExc_c1  select  
   excRt2_c1<= "00" when "0000"|"0100"|"1000"|"1100"|"1001"|"1101",
      "01" when "0001",
      "10" when "0010"|"0110"|"1010"|"1110"|"0101",
      "11" when others;
   excR_c1 <= "00" when (eqdiffsign_c1='1' and EffSub_c1='1'  and not(excRt_c1="11")) else excRt2_c1;
   signR2_c1 <= '0' when (eqdiffsign_c1='1' and EffSub_c1='1') else signR_c1;
   computedR_c1 <= excR_c1 & signR2_c1 & expR_c1 & fracR_c1;
   R <= computedR_c1;
end architecture;

--------------------------------------------------------------------------------
--                 TestBench_FloatingPointAdder_Freq100_uid13
-- VHDL generated for Kintex7 @ 100MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Cristian Klein, Nicolas Brunie (2007-2010)
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity TestBench_FloatingPointAdder_Freq100_uid13 is
end entity;

architecture behavorial of TestBench_FloatingPointAdder_Freq100_uid13 is
   component FloatingPointAdder is
      port ( clk, ce_1 : in std_logic;
             X : in  std_logic_vector(8+23+2 downto 0);
             Y : in  std_logic_vector(8+23+2 downto 0);
             R : out  std_logic_vector(8+23+2 downto 0)   );
   end component;
signal X :  std_logic_vector(33 downto 0);
signal Y :  std_logic_vector(33 downto 0);
signal R :  std_logic_vector(33 downto 0);
signal clk :  std_logic;
signal rst :  std_logic;
signal ce_1 :  std_logic;

 -- converts std_logic into a character
   function chr(sl: std_logic) return character is
      variable c: character;
   begin
      case sl is
         when 'U' => c:= 'U';
         when 'X' => c:= 'X';
         when '0' => c:= '0';
         when '1' => c:= '1';
         when 'Z' => c:= 'Z';
         when 'W' => c:= 'W';
         when 'L' => c:= 'L';
         when 'H' => c:= 'H';
         when '-' => c:= '-';
      end case;
      return c;
   end chr;

   -- converts bit to std_logic (1 to 1)
   function to_stdlogic(b : bit) return std_logic is
       variable sl : std_logic;
   begin
      case b is 
         when '0' => sl := '0';
         when '1' => sl := '1';
      end case;
      return sl;
   end to_stdlogic;

   -- converts std_logic into a string (1 to 1)
   function str(sl: std_logic) return string is
    variable s: string(1 to 1);
    begin
      s(1) := chr(sl);
      return s;
   end str;

   -- converts std_logic_vector into a string (binary base)
   -- (this also takes care of the fact that the range of
   --  a string is natural while a std_logic_vector may
   --  have an integer range)
   function str(slv: std_logic_vector) return string is
      variable result : string (1 to slv'length);
      variable r : integer;
   begin
      r := 1;
      for i in slv'range loop
         result(r) := chr(slv(i));
         r := r + 1;
      end loop;
      return result;
   end str;

   -- FP compare function (found vs. real)
   function fp_equal(a : std_logic_vector; b : std_logic_vector) return boolean is
   begin
      if b(b'high downto b'high-1) = "01" then
         return a = b;
      elsif b(b'high downto b'high-1) = "11" then
         return (a(a'high downto a'high-1)=b(b'high downto b'high-1));
      else
         return a(a'high downto a'high-2) = b(b'high downto b'high-2);
      end if;
   end;

   function fp_inf_or_equal(a : std_logic_vector; b : std_logic_vector) return boolean is
   begin
      if (b(b'high downto b'high-1) = "11") or (a(a'high downto a'high-1) = "11")  then
         return false; -- NaN always compare false
      else return true; -- TODO
      end if;
   end;

   -- FP subtypes for casting
   subtype fp34 is std_logic_vector(33 downto 0);
   function testLine(testCounter:integer; expectedOutputS: string(1 to 10000); expectedOutputSize: integer; R:  std_logic_vector(8+23+2 downto 0)) return boolean is
      variable expectedOutput: line;
      variable possibilityNumber : integer;
      variable testSuccess: boolean;
      variable errorMessage: string(1 to 10000);
      variable testSuccess_R: boolean;
      variable expected_R: bit_vector (33 downto 0); -- for list of values
      variable inf_R: bit_vector (33 downto 0); -- for intervals
      variable sup_R: bit_vector (33 downto 0); -- for intervals
   begin
      write(expectedOutput, expectedOutputS);
      read(expectedOutput, possibilityNumber); -- for R
      if possibilityNumber = 0 then
         -- TODO define what it means to have 0 possible output. Currently it means a test fails...
      end if;
      if possibilityNumber > 0 then -- a list of values
      testSuccess_R := false;
         for i in 1 to possibilityNumber loop
            read(expectedOutput, expected_R);
            if fp_equal(R, to_stdlogicvector(expected_R)) then
               testSuccess_R := true;
            end if;
            end loop;
      end if;
      if possibilityNumber < 0  then -- an interval
         read(expectedOutput, inf_R);
         read(expectedOutput, sup_R);
         if possibilityNumber =-1  then -- an unsigned interval
            testSuccess_R := (R >= to_stdlogicvector(inf_R)) and (R <= to_stdlogicvector(sup_R));
         elsif possibilityNumber =-2  then -- a signed interval
            testSuccess_R := (signed(R) >= signed(to_stdlogicvector(inf_R))) and (signed(R) <= signed(to_stdlogicvector(sup_R)));
         elsif possibilityNumber =-4  then -- a floating-point interval
            testSuccess_R := fp_inf_or_equal(to_stdlogicvector(inf_R), R) and fp_inf_or_equal(R, to_stdlogicvector(sup_R));
         end if;
      end if;
      if testSuccess_R = false then
         report("Test #" & integer'image(testCounter) & ", incorrect output for R: " & lf & " expected values: " & expectedOutputS(1 to expectedOutputSize) & lf  & "          result:    " & str(R) ) severity error;
      end if;
      
      testSuccess := true and testSuccess_R;
      return testSuccess;
   end testLine;

begin
   -- Ticking clock signal
   process
   begin
      clk <= '0';
      wait for 5 ns;
      clk <= '1';
      wait for 5 ns;
   end process;

   ce_1 <= '1';
   test: FloatingPointAdder
      port map ( clk  => clk,
                 ce_1 => ce_1,
                 X => X,
                 Y => Y,
                 R => R);
   -- Process that sets the inputs  (read from a file) 
   process
      variable input, expectedOutput : line; 
      variable tmpChar : character;
      file inputsFile : text is "test.input"; 
      variable V_X : bit_vector(33 downto 0);
      variable V_Y : bit_vector(33 downto 0);
      variable V_R : bit_vector(33 downto 0);
   begin
      -- Send reset
      rst <= '1';
      wait for 10 ns;
      rst <= '0';
      readline(inputsFile, input); -- skip the first line of advertising
      while not endfile(inputsFile) loop
         readline(inputsFile, input); -- skip the comment line
         readline(inputsFile, input);
         readline(inputsFile, expectedOutput); -- comment line, unused in this process
         readline(inputsFile, expectedOutput); -- unused in this process
         read(input ,V_X);
         read(input,tmpChar);
         X <= to_stdlogicvector(V_X);
         read(input ,V_Y);
         read(input,tmpChar);
         Y <= to_stdlogicvector(V_Y);
         wait for 10 ns;
      end loop;
         wait for 110 ns; -- wait for pipeline to flush (and some more)
   end process;

    -- Process that verifies the corresponding output
   process
      file inputsFile : text is "test.input"; 
      variable input, expectedOutput : line; 
      variable testCounter : integer := 1;
      variable errorCounter : integer := 0;
      variable expectedOutputString : string(1 to 10000);
      variable testSuccess: boolean;
   begin
      wait for 12 ns; -- wait for reset 
      wait for 10 ns; -- wait for pipeline to flush
      readline(inputsFile, input); -- skip the first line of advertising
      while not endfile(inputsFile) loop
         readline(inputsFile, input); -- input comment, unused
         readline(inputsFile, input); -- input line, unused
         readline(inputsFile, expectedOutput); -- comment line, unused in this process
         readline(inputsFile, expectedOutput);
         expectedOutputString := expectedOutput.all & (expectedOutput'Length+1 to 10000 => ' ');
         testSuccess := testLine(testCounter, expectedOutputString, expectedOutput'Length, R);
         if not testSuccess then 
               errorCounter := errorCounter + 1; -- incrementing global error counter
         end if;
            testCounter := testCounter + 1; -- incrementing global error counter
         wait for 10 ns;
      end loop;
      report integer'image(errorCounter) & " error(s) encoutered." severity note;
      report "End of simulation after " & integer'image(testCounter-1) & " tests" severity note;
   end process;

end architecture;

