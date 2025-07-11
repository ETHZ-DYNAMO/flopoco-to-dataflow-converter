--------------------------------------------------------------------------------
--                     IntComparator_31_111_Freq500_uid4
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

entity IntComparator_31_111_Freq500_uid4 is
    port (clk : in std_logic;
          X : in  std_logic_vector(30 downto 0);
          Y : in  std_logic_vector(30 downto 0);
          XltY : out  std_logic;
          XeqY : out  std_logic;
          XgtY : out  std_logic   );
end entity;

architecture arch of IntComparator_31_111_Freq500_uid4 is
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
--                      (FPComparator_8_23_Freq500_uid2)
-- VHDL generated for Kintex7 @ 500MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2021)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
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
    port (clk : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          unordered : out  std_logic;
          XltY : out  std_logic;
          XeqY : out  std_logic;
          XgtY : out  std_logic;
          XleY : out  std_logic;
          XgeY : out  std_logic   );
end entity;

architecture arch of FloatingPointComparator is
   component IntComparator_31_111_Freq500_uid4 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(30 downto 0);
             Y : in  std_logic_vector(30 downto 0);
             XltY : out  std_logic;
             XeqY : out  std_logic;
             XgtY : out  std_logic   );
   end component;

signal excX_c0 :  std_logic_vector(1 downto 0);
signal excY_c0 :  std_logic_vector(1 downto 0);
signal signX_c0 :  std_logic;
signal signY_c0 :  std_logic;
signal ExpFracX_c0 :  std_logic_vector(30 downto 0);
signal ExpFracY_c0 :  std_logic_vector(30 downto 0);
signal isZeroX_c0 :  std_logic;
signal isZeroY_c0 :  std_logic;
signal isNormalX_c0 :  std_logic;
signal isNormalY_c0 :  std_logic;
signal isInfX_c0 :  std_logic;
signal isInfY_c0 :  std_logic;
signal isNaNX_c0 :  std_logic;
signal isNaNY_c0 :  std_logic;
signal negativeX_c0 :  std_logic;
signal positiveX_c0 :  std_logic;
signal negativeY_c0 :  std_logic;
signal positiveY_c0 :  std_logic;
signal ExpFracXeqExpFracY_c0 :  std_logic;
signal ExpFracXltExpFracY_c0 :  std_logic;
signal ExpFracXgtExpFracY_c0 :  std_logic;
signal sameSign_c0 :  std_logic;
signal XeqYNum_c0 :  std_logic;
signal XltYNum_c0 :  std_logic;
signal XgtYNum_c0 :  std_logic;
signal unorderedR_c0 :  std_logic;
signal XltYR_c0 :  std_logic;
signal XeqYR_c0 :  std_logic;
signal XgtYR_c0 :  std_logic;
signal XleYR_c0 :  std_logic;
signal XgeYR_c0 :  std_logic;
begin
   excX_c0 <= X(33 downto 32);
   excY_c0 <= Y(33 downto 32);
   signX_c0 <= X(31);
   signY_c0 <= Y(31);
   ExpFracX_c0 <= X(30 downto 0);
   ExpFracY_c0 <= Y(30 downto 0);
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
   ExpFracCmp: IntComparator_31_111_Freq500_uid4
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
   XltYNum_c0 <=     -- case enumeration on Y
         ( (not (isInfX_c0 and positiveX_c0)) and (isInfY_c0  and positiveY_c0)) 
      or ((negativeX_c0 or isZeroX_c0) and (isNormalY_c0 and positiveY_c0)) 
      or ((negativeX_c0 and not isZeroX_c0) and isZeroY_c0) 
      or (isNormalX_c0 and isNormalY_c0 and positiveX_c0 and positiveY_c0 and ExpFracXltExpFracY_c0)
      or (isNormalX_c0 and isNormalY_c0 and negativeX_c0 and negativeY_c0 and ExpFracXgtExpFracY_c0)
      or ((isInfX_c0 and negativeX_c0) and (not (isInfY_c0 and negativeY_c0)))    ;
   XgtYNum_c0 <=     -- case enumeration on X
         ( (not (isInfY_c0 and positiveY_c0)) and (isInfX_c0  and positiveX_c0)) 
      or ((negativeY_c0 or isZeroY_c0) and (isNormalX_c0 and positiveX_c0)) 
      or ((negativeY_c0 and not isZeroY_c0) and isZeroX_c0) 
      or (isNormalX_c0 and isNormalY_c0 and positiveY_c0 and positiveX_c0 and ExpFracXgtExpFracY_c0)
      or (isNormalX_c0 and isNormalY_c0 and negativeY_c0 and negativeX_c0 and ExpFracXltExpFracY_c0)
      or ((isInfY_c0 and negativeY_c0) and (not (isInfX_c0 and negativeX_c0)))    ;
   unorderedR_c0 <=  isNaNX_c0 or isNaNY_c0;
   XltYR_c0 <= XltYNum_c0 and not unorderedR_c0;
   XeqYR_c0 <= XeqYNum_c0 and not unorderedR_c0;
   XgtYR_c0 <= XgtYNum_c0 and not unorderedR_c0;
   XleYR_c0 <= (XeqYNum_c0 or XltYNum_c0)	 and not unorderedR_c0;
   XgeYR_c0 <= (XeqYNum_c0 or XgtYNum_c0)	 and not unorderedR_c0;
   unordered <= unorderedR_c0;
   XltY <= XltYR_c0;
   XeqY <= XeqYR_c0;
   XgtY <= XgtYR_c0;
   XleY <= XleYR_c0;
   XgeY <= XgeYR_c0;
end architecture;



