--------------------------------------------------------------------------------
--                     IntComparator_63_111_Freq800_uid4
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2021)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
-- Input signals: X Y
-- Output signals: XltY XeqY XgtY

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntComparator_63_111_Freq800_uid4 is
    port (clk, ce_1, ce_2 : in std_logic;
          X : in  std_logic_vector(62 downto 0);
          Y : in  std_logic_vector(62 downto 0);
          XltY : out  std_logic;
          XeqY : out  std_logic;
          XgtY : out  std_logic   );
end entity;

architecture arch of IntComparator_63_111_Freq800_uid4 is
signal XeqYi0_c0 :  std_logic;
signal XltYi0_c0 :  std_logic;
signal XX0_c0 :  std_logic;
signal YY0_c0 :  std_logic;
signal XeqYi1_c0 :  std_logic;
signal XltYi1_c0 :  std_logic;
signal XX1_c0 :  std_logic;
signal YY1_c0 :  std_logic;
signal XeqYi2_c0 :  std_logic;
signal XltYi2_c0 :  std_logic;
signal XX2_c0 :  std_logic;
signal YY2_c0 :  std_logic;
signal XeqYi3_c0 :  std_logic;
signal XltYi3_c0 :  std_logic;
signal XX3_c0 :  std_logic;
signal YY3_c0 :  std_logic;
signal XeqYi4_c0 :  std_logic;
signal XltYi4_c0 :  std_logic;
signal XX4_c0 :  std_logic;
signal YY4_c0 :  std_logic;
signal XeqYi5_c0 :  std_logic;
signal XltYi5_c0 :  std_logic;
signal XX5_c0 :  std_logic;
signal YY5_c0 :  std_logic;
signal XeqYi6_c0 :  std_logic;
signal XltYi6_c0 :  std_logic;
signal XX6_c0 :  std_logic;
signal YY6_c0 :  std_logic;
signal XeqYi7_c0 :  std_logic;
signal XltYi7_c0 :  std_logic;
signal XX7_c0 :  std_logic;
signal YY7_c0 :  std_logic;
signal XeqYi8_c0 :  std_logic;
signal XltYi8_c0 :  std_logic;
signal XX8_c0 :  std_logic;
signal YY8_c0 :  std_logic;
signal XeqYi9_c0 :  std_logic;
signal XltYi9_c0 :  std_logic;
signal XX9_c0 :  std_logic;
signal YY9_c0 :  std_logic;
signal XeqYi10_c0 :  std_logic;
signal XltYi10_c0 :  std_logic;
signal XX10_c0 :  std_logic;
signal YY10_c0 :  std_logic;
signal XXX_c0, XXX_c1 :  std_logic_vector(10 downto 0);
signal YYY_c0, YYY_c1 :  std_logic_vector(10 downto 0);
signal XltYi_c1, XltYi_c2 :  std_logic;
signal XeqYi_c1, XeqYi_c2 :  std_logic;
signal XgtYi_c2 :  std_logic;
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               XXX_c1 <= XXX_c0;
               YYY_c1 <= YYY_c0;
            end if;
            if ce_2 = '1' then
               XltYi_c2 <= XltYi_c1;
               XeqYi_c2 <= XeqYi_c1;
            end if;
         end if;
      end process;
   -- For this frequency we need to split the comparison into two levels
   XeqYi0_c0 <= '1' when X(5 downto 0)=Y(5 downto 0) else '0';
   XltYi0_c0 <= '1' when X(5 downto 0)<Y(5 downto 0) else '0';
   XX0_c0 <= not (XltYi0_c0 or XeqYi0_c0);
   YY0_c0 <= XltYi0_c0;
   XeqYi1_c0 <= '1' when X(11 downto 6)=Y(11 downto 6) else '0';
   XltYi1_c0 <= '1' when X(11 downto 6)<Y(11 downto 6) else '0';
   XX1_c0 <= not (XltYi1_c0 or XeqYi1_c0);
   YY1_c0 <= XltYi1_c0;
   XeqYi2_c0 <= '1' when X(17 downto 12)=Y(17 downto 12) else '0';
   XltYi2_c0 <= '1' when X(17 downto 12)<Y(17 downto 12) else '0';
   XX2_c0 <= not (XltYi2_c0 or XeqYi2_c0);
   YY2_c0 <= XltYi2_c0;
   XeqYi3_c0 <= '1' when X(23 downto 18)=Y(23 downto 18) else '0';
   XltYi3_c0 <= '1' when X(23 downto 18)<Y(23 downto 18) else '0';
   XX3_c0 <= not (XltYi3_c0 or XeqYi3_c0);
   YY3_c0 <= XltYi3_c0;
   XeqYi4_c0 <= '1' when X(29 downto 24)=Y(29 downto 24) else '0';
   XltYi4_c0 <= '1' when X(29 downto 24)<Y(29 downto 24) else '0';
   XX4_c0 <= not (XltYi4_c0 or XeqYi4_c0);
   YY4_c0 <= XltYi4_c0;
   XeqYi5_c0 <= '1' when X(35 downto 30)=Y(35 downto 30) else '0';
   XltYi5_c0 <= '1' when X(35 downto 30)<Y(35 downto 30) else '0';
   XX5_c0 <= not (XltYi5_c0 or XeqYi5_c0);
   YY5_c0 <= XltYi5_c0;
   XeqYi6_c0 <= '1' when X(41 downto 36)=Y(41 downto 36) else '0';
   XltYi6_c0 <= '1' when X(41 downto 36)<Y(41 downto 36) else '0';
   XX6_c0 <= not (XltYi6_c0 or XeqYi6_c0);
   YY6_c0 <= XltYi6_c0;
   XeqYi7_c0 <= '1' when X(47 downto 42)=Y(47 downto 42) else '0';
   XltYi7_c0 <= '1' when X(47 downto 42)<Y(47 downto 42) else '0';
   XX7_c0 <= not (XltYi7_c0 or XeqYi7_c0);
   YY7_c0 <= XltYi7_c0;
   XeqYi8_c0 <= '1' when X(53 downto 48)=Y(53 downto 48) else '0';
   XltYi8_c0 <= '1' when X(53 downto 48)<Y(53 downto 48) else '0';
   XX8_c0 <= not (XltYi8_c0 or XeqYi8_c0);
   YY8_c0 <= XltYi8_c0;
   XeqYi9_c0 <= '1' when X(59 downto 54)=Y(59 downto 54) else '0';
   XltYi9_c0 <= '1' when X(59 downto 54)<Y(59 downto 54) else '0';
   XX9_c0 <= not (XltYi9_c0 or XeqYi9_c0);
   YY9_c0 <= XltYi9_c0;
   XeqYi10_c0 <= '1' when X(62 downto 60)=Y(62 downto 60) else '0';
   XltYi10_c0 <= '1' when X(62 downto 60)<Y(62 downto 60) else '0';
   XX10_c0 <= not (XltYi10_c0 or XeqYi10_c0);
   YY10_c0 <= XltYi10_c0;
   -- XXX and YYX are two synthetic numbers such that comparing XX and YY is be equivalent to comparing X and Y
   XXX_c0 <= XX10_c0 & XX9_c0 & XX8_c0 & XX7_c0 & XX6_c0 & XX5_c0 & XX4_c0 & XX3_c0 & XX2_c0 & XX1_c0 & XX0_c0;
   YYY_c0 <= YY10_c0 & YY9_c0 & YY8_c0 & YY7_c0 & YY6_c0 & YY5_c0 & YY4_c0 & YY3_c0 & YY2_c0 & YY1_c0 & YY0_c0;
   XltYi_c1 <= '1' when XXX_c1<YYY_c1 else '0';
   XeqYi_c1 <= '1' when XXX_c1=YYY_c1 else '0';
   XgtYi_c2 <= not (XeqYi_c2 or XltYi_c2);
   XltY <= XltYi_c1;
   XeqY <= XeqYi_c1;
   XgtY <= XgtYi_c2;
end architecture;

--------------------------------------------------------------------------------
--                          FloatingPointComparator
--                     (FPComparator_11_52_Freq800_uid2)
-- VHDL generated for Kintex7 @ 800MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2021)
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles
-- Clock period (ns): 1.25
-- Target frequency (MHz): 800
-- Input signals: X Y
-- Output signals: unordered XltY XeqY XgtY XleY XgeY

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FloatingPointComparator is
    port (clk, ce_1, ce_2, ce_3 : in std_logic;
          X : in  std_logic_vector(11+52+2 downto 0);
          Y : in  std_logic_vector(11+52+2 downto 0);
          unordered : out  std_logic;
          XltY : out  std_logic;
          XeqY : out  std_logic;
          XgtY : out  std_logic;
          XleY : out  std_logic;
          XgeY : out  std_logic   );
end entity;

architecture arch of FloatingPointComparator is
   component IntComparator_63_111_Freq800_uid4 is
      port ( clk, ce_1, ce_2 : in std_logic;
             X : in  std_logic_vector(62 downto 0);
             Y : in  std_logic_vector(62 downto 0);
             XltY : out  std_logic;
             XeqY : out  std_logic;
             XgtY : out  std_logic   );
   end component;

signal excX_c0 :  std_logic_vector(1 downto 0);
signal excY_c0 :  std_logic_vector(1 downto 0);
signal signX_c0 :  std_logic;
signal signY_c0 :  std_logic;
signal ExpFracX_c0 :  std_logic_vector(62 downto 0);
signal ExpFracY_c0 :  std_logic_vector(62 downto 0);
signal isZeroX_c0, isZeroX_c1, isZeroX_c2, isZeroX_c3 :  std_logic;
signal isZeroY_c0, isZeroY_c1, isZeroY_c2, isZeroY_c3 :  std_logic;
signal isNormalX_c0, isNormalX_c1, isNormalX_c2, isNormalX_c3 :  std_logic;
signal isNormalY_c0, isNormalY_c1, isNormalY_c2, isNormalY_c3 :  std_logic;
signal isInfX_c0, isInfX_c1, isInfX_c2, isInfX_c3 :  std_logic;
signal isInfY_c0, isInfY_c1, isInfY_c2, isInfY_c3 :  std_logic;
signal isNaNX_c0 :  std_logic;
signal isNaNY_c0 :  std_logic;
signal negativeX_c0, negativeX_c1, negativeX_c2, negativeX_c3 :  std_logic;
signal positiveX_c0, positiveX_c1, positiveX_c2, positiveX_c3 :  std_logic;
signal negativeY_c0, negativeY_c1, negativeY_c2, negativeY_c3 :  std_logic;
signal positiveY_c0, positiveY_c1, positiveY_c2, positiveY_c3 :  std_logic;
signal ExpFracXeqExpFracY_c1, ExpFracXeqExpFracY_c2 :  std_logic;
signal ExpFracXltExpFracY_c1, ExpFracXltExpFracY_c2, ExpFracXltExpFracY_c3 :  std_logic;
signal ExpFracXgtExpFracY_c2, ExpFracXgtExpFracY_c3 :  std_logic;
signal sameSign_c0, sameSign_c1, sameSign_c2 :  std_logic;
signal XeqYNum_c2, XeqYNum_c3 :  std_logic;
signal XltYNum_c3 :  std_logic;
signal XgtYNum_c3 :  std_logic;
signal unorderedR_c0, unorderedR_c1, unorderedR_c2, unorderedR_c3 :  std_logic;
signal XltYR_c3 :  std_logic;
signal XeqYR_c2 :  std_logic;
signal XgtYR_c3 :  std_logic;
signal XleYR_c3 :  std_logic;
signal XgeYR_c3 :  std_logic;
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            if ce_1 = '1' then
               isZeroX_c1 <= isZeroX_c0;
               isZeroY_c1 <= isZeroY_c0;
               isNormalX_c1 <= isNormalX_c0;
               isNormalY_c1 <= isNormalY_c0;
               isInfX_c1 <= isInfX_c0;
               isInfY_c1 <= isInfY_c0;
               negativeX_c1 <= negativeX_c0;
               positiveX_c1 <= positiveX_c0;
               negativeY_c1 <= negativeY_c0;
               positiveY_c1 <= positiveY_c0;
               sameSign_c1 <= sameSign_c0;
               unorderedR_c1 <= unorderedR_c0;
            end if;
            if ce_2 = '1' then
               isZeroX_c2 <= isZeroX_c1;
               isZeroY_c2 <= isZeroY_c1;
               isNormalX_c2 <= isNormalX_c1;
               isNormalY_c2 <= isNormalY_c1;
               isInfX_c2 <= isInfX_c1;
               isInfY_c2 <= isInfY_c1;
               negativeX_c2 <= negativeX_c1;
               positiveX_c2 <= positiveX_c1;
               negativeY_c2 <= negativeY_c1;
               positiveY_c2 <= positiveY_c1;
               ExpFracXeqExpFracY_c2 <= ExpFracXeqExpFracY_c1;
               ExpFracXltExpFracY_c2 <= ExpFracXltExpFracY_c1;
               sameSign_c2 <= sameSign_c1;
               unorderedR_c2 <= unorderedR_c1;
            end if;
            if ce_3 = '1' then
               isZeroX_c3 <= isZeroX_c2;
               isZeroY_c3 <= isZeroY_c2;
               isNormalX_c3 <= isNormalX_c2;
               isNormalY_c3 <= isNormalY_c2;
               isInfX_c3 <= isInfX_c2;
               isInfY_c3 <= isInfY_c2;
               negativeX_c3 <= negativeX_c2;
               positiveX_c3 <= positiveX_c2;
               negativeY_c3 <= negativeY_c2;
               positiveY_c3 <= positiveY_c2;
               ExpFracXltExpFracY_c3 <= ExpFracXltExpFracY_c2;
               ExpFracXgtExpFracY_c3 <= ExpFracXgtExpFracY_c2;
               XeqYNum_c3 <= XeqYNum_c2;
               unorderedR_c3 <= unorderedR_c2;
            end if;
         end if;
      end process;
   excX_c0 <= X(65 downto 64);
   excY_c0 <= Y(65 downto 64);
   signX_c0 <= X(63);
   signY_c0 <= Y(63);
   ExpFracX_c0 <= X(62 downto 0);
   ExpFracY_c0 <= Y(62 downto 0);
   -- Comparing (as integers) excX & ExpFracX with excY & ExpFracY would almost work 
   --  since indeed inf>normal>0	
   -- However we wouldn't capture infinity equality in cases when the infinities have different ExpFracs (who knows)...	 
   -- Besides, expliciting the isXXX bits will help factoring code with a comparator for IEEE format (some day)
   isZeroX_c0 <= '1' when excX_c0="00" else '0' ;
   isZeroY_c0 <= '1' when excY_c0="00" else '0' ;
   isNormalX_c0 <= '1' when excX_c0="01" else '0' ;
   isNormalY_c0 <= '1' when excY_c0="01" else '0' ;
   isInfX_c0 <= '1' when excX_c0="10" else '0' ;
   isInfY_c0 <= '1' when excY_c0="10" else '0' ;
   isNaNX_c0 <= '1' when excX_c0="11" else '0' ;
   isNaNY_c0 <= '1' when excY_c0="11" else '0' ;
   -- Just for readability of the formulae below
   negativeX_c0 <= signX_c0 ;
   positiveX_c0 <= not signX_c0 ;
   negativeY_c0 <= signY_c0 ;
   positiveY_c0 <= not signY_c0 ;
   -- expfrac comparisons 
   ExpFracCmp: IntComparator_63_111_Freq800_uid4
      port map ( clk  => clk,
                 ce_1 => ce_1,
                 ce_2=> ce_2,
                 X => ExpFracX_c0,
                 Y => ExpFracY_c0,
                 XeqY => ExpFracXeqExpFracY_c1,
                 XgtY => ExpFracXgtExpFracY_c2,
                 XltY => ExpFracXltExpFracY_c1);
   -- -- and now the logic
   sameSign_c0 <= not (signX_c0 xor signY_c0) ;
   XeqYNum_c2 <= 
         (isZeroX_c2 and isZeroY_c2) -- explicitely stated by IEEE 754
      or (isInfX_c2 and isInfY_c2 and sameSign_c2)  -- bizarre but also explicitely stated by IEEE 754
      or (isNormalX_c2 and isNormalY_c2 and sameSign_c2 and ExpFracXeqExpFracY_c2)   ;
   XltYNum_c3 <=     -- case enumeration on Y
         ( (not (isInfX_c3 and positiveX_c3)) and (isInfY_c3  and positiveY_c3)) 
      or ((negativeX_c3 or isZeroX_c3) and (isNormalY_c3 and positiveY_c3)) 
      or ((negativeX_c3 and not isZeroX_c3) and isZeroY_c3) 
      or (isNormalX_c3 and isNormalY_c3 and positiveX_c3 and positiveY_c3 and ExpFracXltExpFracY_c3)
      or (isNormalX_c3 and isNormalY_c3 and negativeX_c3 and negativeY_c3 and ExpFracXgtExpFracY_c3)
      or ((isInfX_c3 and negativeX_c3) and (not (isInfY_c3 and negativeY_c3)))    ;
   XgtYNum_c3 <=     -- case enumeration on X
         ( (not (isInfY_c3 and positiveY_c3)) and (isInfX_c3  and positiveX_c3)) 
      or ((negativeY_c3 or isZeroY_c3) and (isNormalX_c3 and positiveX_c3)) 
      or ((negativeY_c3 and not isZeroY_c3) and isZeroX_c3) 
      or (isNormalX_c3 and isNormalY_c3 and positiveY_c3 and positiveX_c3 and ExpFracXgtExpFracY_c3)
      or (isNormalX_c3 and isNormalY_c3 and negativeY_c3 and negativeX_c3 and ExpFracXltExpFracY_c3)
      or ((isInfY_c3 and negativeY_c3) and (not (isInfX_c3 and negativeX_c3)))    ;
   unorderedR_c0 <=  isNaNX_c0 or isNaNY_c0;
   XltYR_c3 <= XltYNum_c3 and not unorderedR_c3;
   XeqYR_c2 <= XeqYNum_c2 and not unorderedR_c2;
   XgtYR_c3 <= XgtYNum_c3 and not unorderedR_c3;
   XleYR_c3 <= (XeqYNum_c3 or XltYNum_c3)	 and not unorderedR_c3;
   XgeYR_c3 <= (XeqYNum_c3 or XgtYNum_c3)	 and not unorderedR_c3;
   unordered <= unorderedR_c0;
   XltY <= XltYR_c3;
   XeqY <= XeqYR_c2;
   XgtY <= XgtYR_c3;
   XleY <= XleYR_c3;
   XgeY <= XgeYR_c3;
end architecture;



