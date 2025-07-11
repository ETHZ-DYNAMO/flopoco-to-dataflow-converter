--------------------------------------------------------------------------------
--                     IntComparator_63_111_Freq500_uid4
-- VHDL generated for Kintex7 @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2021)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 2
-- Target frequency (MHz): 500
-- Input signals: X Y
-- Output signals: XltY XeqY XgtY

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntComparator_63_111_Freq500_uid4 is
    port (clk : in std_logic;
          X : in  std_logic_vector(62 downto 0);
          Y : in  std_logic_vector(62 downto 0);
          XltY : out  std_logic;
          XeqY : out  std_logic;
          XgtY : out  std_logic   );
end entity;

architecture arch of IntComparator_63_111_Freq500_uid4 is
signal XltYi_c0 :  std_logic;
signal XeqYi_c0 :  std_logic;
signal XgtYi_c0 :  std_logic;
begin
   XltYi_c0 <= '1' when X<Y else '0';
   XeqYi_c0 <= '1' when X=Y else '0';
   XgtYi_c0 <= not (XeqYi_c0 or XltYi_c0);
   XltY <= XltYi_c0;
   XeqY <= XeqYi_c0;
   XgtY <= XgtYi_c0;
end architecture;

--------------------------------------------------------------------------------
--                          FloatingPointComparator
--                     (FPComparator_11_52_Freq500_uid2)
-- VHDL generated for Kintex7 @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2021)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles
-- Clock period (ns): 2
-- Target frequency (MHz): 500
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
    port (clk, ce_1 : in std_logic;
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
   component IntComparator_63_111_Freq500_uid4 is
      port ( clk : in std_logic;
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
signal isZeroX_c0, isZeroX_c1 :  std_logic;
signal isZeroY_c0, isZeroY_c1 :  std_logic;
signal isNormalX_c0, isNormalX_c1 :  std_logic;
signal isNormalY_c0, isNormalY_c1 :  std_logic;
signal isInfX_c0, isInfX_c1 :  std_logic;
signal isInfY_c0, isInfY_c1 :  std_logic;
signal isNaNX_c0 :  std_logic;
signal isNaNY_c0 :  std_logic;
signal negativeX_c0, negativeX_c1 :  std_logic;
signal positiveX_c0, positiveX_c1 :  std_logic;
signal negativeY_c0, negativeY_c1 :  std_logic;
signal positiveY_c0, positiveY_c1 :  std_logic;
signal ExpFracXeqExpFracY_c0 :  std_logic;
signal ExpFracXltExpFracY_c0, ExpFracXltExpFracY_c1 :  std_logic;
signal ExpFracXgtExpFracY_c0, ExpFracXgtExpFracY_c1 :  std_logic;
signal sameSign_c0 :  std_logic;
signal XeqYNum_c0, XeqYNum_c1 :  std_logic;
signal XltYNum_c1 :  std_logic;
signal XgtYNum_c1 :  std_logic;
signal unorderedR_c0, unorderedR_c1 :  std_logic;
signal XltYR_c1 :  std_logic;
signal XeqYR_c0 :  std_logic;
signal XgtYR_c1 :  std_logic;
signal XleYR_c1 :  std_logic;
signal XgeYR_c1 :  std_logic;
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
               ExpFracXltExpFracY_c1 <= ExpFracXltExpFracY_c0;
               ExpFracXgtExpFracY_c1 <= ExpFracXgtExpFracY_c0;
               XeqYNum_c1 <= XeqYNum_c0;
               unorderedR_c1 <= unorderedR_c0;
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
   ExpFracCmp: IntComparator_63_111_Freq500_uid4
      port map ( clk  => clk,
                 X => ExpFracX_c0,
                 Y => ExpFracY_c0,
                 XeqY => ExpFracXeqExpFracY_c0,
                 XgtY => ExpFracXgtExpFracY_c0,
                 XltY => ExpFracXltExpFracY_c0);
   -- -- and now the logic
   sameSign_c0 <= not (signX_c0 xor signY_c0) ;
   XeqYNum_c0 <= 
         (isZeroX_c0 and isZeroY_c0) -- explicitely stated by IEEE 754
      or (isInfX_c0 and isInfY_c0 and sameSign_c0)  -- bizarre but also explicitely stated by IEEE 754
      or (isNormalX_c0 and isNormalY_c0 and sameSign_c0 and ExpFracXeqExpFracY_c0)   ;
   XltYNum_c1 <=     -- case enumeration on Y
         ( (not (isInfX_c1 and positiveX_c1)) and (isInfY_c1  and positiveY_c1)) 
      or ((negativeX_c1 or isZeroX_c1) and (isNormalY_c1 and positiveY_c1)) 
      or ((negativeX_c1 and not isZeroX_c1) and isZeroY_c1) 
      or (isNormalX_c1 and isNormalY_c1 and positiveX_c1 and positiveY_c1 and ExpFracXltExpFracY_c1)
      or (isNormalX_c1 and isNormalY_c1 and negativeX_c1 and negativeY_c1 and ExpFracXgtExpFracY_c1)
      or ((isInfX_c1 and negativeX_c1) and (not (isInfY_c1 and negativeY_c1)))    ;
   XgtYNum_c1 <=     -- case enumeration on X
         ( (not (isInfY_c1 and positiveY_c1)) and (isInfX_c1  and positiveX_c1)) 
      or ((negativeY_c1 or isZeroY_c1) and (isNormalX_c1 and positiveX_c1)) 
      or ((negativeY_c1 and not isZeroY_c1) and isZeroX_c1) 
      or (isNormalX_c1 and isNormalY_c1 and positiveY_c1 and positiveX_c1 and ExpFracXgtExpFracY_c1)
      or (isNormalX_c1 and isNormalY_c1 and negativeY_c1 and negativeX_c1 and ExpFracXltExpFracY_c1)
      or ((isInfY_c1 and negativeY_c1) and (not (isInfX_c1 and negativeX_c1)))    ;
   unorderedR_c0 <=  isNaNX_c0 or isNaNY_c0;
   XltYR_c1 <= XltYNum_c1 and not unorderedR_c1;
   XeqYR_c0 <= XeqYNum_c0 and not unorderedR_c0;
   XgtYR_c1 <= XgtYNum_c1 and not unorderedR_c1;
   XleYR_c1 <= (XeqYNum_c1 or XltYNum_c1)	 and not unorderedR_c1;
   XgeYR_c1 <= (XeqYNum_c1 or XgtYNum_c1)	 and not unorderedR_c1;
   unordered <= unorderedR_c0;
   XltY <= XltYR_c1;
   XeqY <= XeqYR_c0;
   XgtY <= XgtYR_c1;
   XleY <= XleYR_c1;
   XgeY <= XgeYR_c1;
end architecture;



