-----------------------------------------------------------------------
-- FloatingPointPower, version 0.0
-----------------------------------------------------------------------

Library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity fpow_op is
Generic (
 INPUTS: integer := 2; 
 OUTPUTS: integer := 1; 
 DATA_SIZE_IN: integer := 32; --we default to single precision
 DATA_SIZE_OUT: integer := 32
);
port (
    -- inputs
    clk          : in std_logic;
    rst          : in std_logic;
     lhs          : in std_logic_vector(31 downto 0);
    lhs_valid    : in std_logic;
    rhs          : in std_logic_vector(31  downto 0);
    rhs_valid    : in std_logic;
    result_ready : in std_logic;
    -- outputs
     result       : out std_logic_vector(31  downto 0);
    result_valid : out std_logic;
    lhs_ready    : out std_logic;
    rhs_ready    : out std_logic
  );
end entity;

architecture arch of fpow_op is
    
    
    -- legacy comment : main_component went here in component based version

    signal join_valid : STD_LOGIC;

    signal buff_valid, oehb_valid, oehb_ready : STD_LOGIC;
    signal oehb_dataOut, oehb_datain : std_logic_vector(0 downto 0);

    --intermediate input signals for float conversion
    signal ip_lhs, ip_rhs : std_logic_vector(33 downto 0);

    --intermidiate output signal(s) for float conversion
    signal ip_result : std_logic_vector(33 downto 0);

    

    begin


          join_inputs : entity work.join(arch) generic map(2) 
    port map( 
      -- inputs 
      ins_valid(0) => lhs_valid,
      ins_valid(1) => rhs_valid,
      outs_ready   => oehb_ready,
      -- outputs 
      outs_valid   => join_valid, 
      ins_ready(0) => lhs_ready, 
      ins_ready(1) => rhs_ready
    );

        buff: entity work.delay_buffer(arch) generic map(210)
        port map(clk,
                rst,
                join_valid,
                oehb_ready,
                buff_valid);

        oehb: entity work.oehb_dataless(arch)
            port map(
            clk        => clk,
            rst        => rst,
            ins_valid  => buff_valid,
            outs_ready => result_ready,
            outs_valid => result_valid,
            ins_ready  => oehb_ready
            );

        ieee2nfloat_0: entity work.InputIEEE_32bit(arch)
                port map (
                    --input
                    X =>lhs,
                    --output
                    R => ip_lhs
                );

        ieee2nfloat_1: entity work.InputIEEE_32bit(arch)
                port map (
                    --input
                    X => rhs,
                    --output
                    R => ip_rhs
                );

        

        nfloat2ieee : entity work.OutputIEEE_32bit(arch)
                port map (
                    --input
                    X => ip_result,
                    --ouput
                    R => result
                );

        operator : entity work.FloatingPointPower(arch)
        port map (
            clk   => clk,
            ce_1 => oehb_ready,
            ce_2 => oehb_ready,
            ce_3 => oehb_ready,
            ce_4 => oehb_ready,
            ce_5 => oehb_ready,
            ce_6 => oehb_ready,
            ce_7 => oehb_ready,
            ce_8 => oehb_ready,
            ce_9 => oehb_ready,
            ce_10 => oehb_ready,
            ce_11 => oehb_ready,
            ce_12 => oehb_ready,
            ce_13 => oehb_ready,
            ce_14 => oehb_ready,
            ce_15 => oehb_ready,
            ce_16 => oehb_ready,
            ce_17 => oehb_ready,
            ce_18 => oehb_ready,
            ce_19 => oehb_ready,
            ce_20 => oehb_ready,
            ce_21 => oehb_ready,
            ce_22 => oehb_ready,
            ce_23 => oehb_ready,
            ce_24 => oehb_ready,
            ce_25 => oehb_ready,
            ce_26 => oehb_ready,
            ce_27 => oehb_ready,
            ce_28 => oehb_ready,
            ce_29 => oehb_ready,
            ce_30 => oehb_ready,
            ce_31 => oehb_ready,
            ce_32 => oehb_ready,
            ce_33 => oehb_ready,
            ce_34 => oehb_ready,
            ce_35 => oehb_ready,
            ce_36 => oehb_ready,
            ce_37 => oehb_ready,
            ce_38 => oehb_ready,
            ce_39 => oehb_ready,
            ce_40 => oehb_ready,
            ce_41 => oehb_ready,
            ce_42 => oehb_ready,
            ce_43 => oehb_ready,
            ce_44 => oehb_ready,
            ce_45 => oehb_ready,
            ce_46 => oehb_ready,
            ce_47 => oehb_ready,
            ce_48 => oehb_ready,
            ce_49 => oehb_ready,
            ce_50 => oehb_ready,
            ce_51 => oehb_ready,
            ce_52 => oehb_ready,
            ce_53 => oehb_ready,
            ce_54 => oehb_ready,
            ce_55 => oehb_ready,
            ce_56 => oehb_ready,
            ce_57 => oehb_ready,
            ce_58 => oehb_ready,
            ce_59 => oehb_ready,
            ce_60 => oehb_ready,
            ce_61 => oehb_ready,
            ce_62 => oehb_ready,
            ce_63 => oehb_ready,
            ce_64 => oehb_ready,
            ce_65 => oehb_ready,
            ce_66 => oehb_ready,
            ce_67 => oehb_ready,
            ce_68 => oehb_ready,
            ce_69 => oehb_ready,
            ce_70 => oehb_ready,
            ce_71 => oehb_ready,
            ce_72 => oehb_ready,
            ce_73 => oehb_ready,
            ce_74 => oehb_ready,
            ce_75 => oehb_ready,
            ce_76 => oehb_ready,
            ce_77 => oehb_ready,
            ce_78 => oehb_ready,
            ce_79 => oehb_ready,
            ce_80 => oehb_ready,
            ce_81 => oehb_ready,
            ce_82 => oehb_ready,
            ce_83 => oehb_ready,
            ce_84 => oehb_ready,
            ce_85 => oehb_ready,
            ce_86 => oehb_ready,
            ce_87 => oehb_ready,
            ce_88 => oehb_ready,
            ce_89 => oehb_ready,
            ce_90 => oehb_ready,
            ce_91 => oehb_ready,
            ce_92 => oehb_ready,
            ce_93 => oehb_ready,
            ce_94 => oehb_ready,
            ce_95 => oehb_ready,
            ce_96 => oehb_ready,
            ce_97 => oehb_ready,
            ce_98 => oehb_ready,
            ce_99 => oehb_ready,
            ce_100 => oehb_ready,
            ce_101 => oehb_ready,
            ce_102 => oehb_ready,
            ce_103 => oehb_ready,
            ce_104 => oehb_ready,
            ce_105 => oehb_ready,
            ce_106 => oehb_ready,
            ce_107 => oehb_ready,
            ce_108 => oehb_ready,
            ce_109 => oehb_ready,
            ce_110 => oehb_ready,
            ce_111 => oehb_ready,
            ce_112 => oehb_ready,
            ce_113 => oehb_ready,
            ce_114 => oehb_ready,
            ce_115 => oehb_ready,
            ce_116 => oehb_ready,
            ce_117 => oehb_ready,
            ce_118 => oehb_ready,
            ce_119 => oehb_ready,
            ce_120 => oehb_ready,
            ce_121 => oehb_ready,
            ce_122 => oehb_ready,
            ce_123 => oehb_ready,
            ce_124 => oehb_ready,
            ce_125 => oehb_ready,
            ce_126 => oehb_ready,
            ce_127 => oehb_ready,
            ce_128 => oehb_ready,
            ce_129 => oehb_ready,
            ce_130 => oehb_ready,
            ce_131 => oehb_ready,
            ce_132 => oehb_ready,
            ce_133 => oehb_ready,
            ce_134 => oehb_ready,
            ce_135 => oehb_ready,
            ce_136 => oehb_ready,
            ce_137 => oehb_ready,
            ce_138 => oehb_ready,
            ce_139 => oehb_ready,
            ce_140 => oehb_ready,
            ce_141 => oehb_ready,
            ce_142 => oehb_ready,
            ce_143 => oehb_ready,
            ce_144 => oehb_ready,
            ce_145 => oehb_ready,
            ce_146 => oehb_ready,
            ce_147 => oehb_ready,
            ce_148 => oehb_ready,
            ce_149 => oehb_ready,
            ce_150 => oehb_ready,
            ce_151 => oehb_ready,
            ce_152 => oehb_ready,
            ce_153 => oehb_ready,
            ce_154 => oehb_ready,
            ce_155 => oehb_ready,
            ce_156 => oehb_ready,
            ce_157 => oehb_ready,
            ce_158 => oehb_ready,
            ce_159 => oehb_ready,
            ce_160 => oehb_ready,
            ce_161 => oehb_ready,
            ce_162 => oehb_ready,
            ce_163 => oehb_ready,
            ce_164 => oehb_ready,
            ce_165 => oehb_ready,
            ce_166 => oehb_ready,
            ce_167 => oehb_ready,
            ce_168 => oehb_ready,
            ce_169 => oehb_ready,
            ce_170 => oehb_ready,
            ce_171 => oehb_ready,
            ce_172 => oehb_ready,
            ce_173 => oehb_ready,
            ce_174 => oehb_ready,
            ce_175 => oehb_ready,
            ce_176 => oehb_ready,
            ce_177 => oehb_ready,
            ce_178 => oehb_ready,
            ce_179 => oehb_ready,
            ce_180 => oehb_ready,
            ce_181 => oehb_ready,
            ce_182 => oehb_ready,
            ce_183 => oehb_ready,
            ce_184 => oehb_ready,
            ce_185 => oehb_ready,
            ce_186 => oehb_ready,
            ce_187 => oehb_ready,
            ce_188 => oehb_ready,
            ce_189 => oehb_ready,
            ce_190 => oehb_ready,
            ce_191 => oehb_ready,
            ce_192 => oehb_ready,
            ce_193 => oehb_ready,
            ce_194 => oehb_ready,
            ce_195 => oehb_ready,
            ce_196 => oehb_ready,
            ce_197 => oehb_ready,
            ce_198 => oehb_ready,
            ce_199 => oehb_ready,
            ce_200 => oehb_ready,
            ce_201 => oehb_ready,
            ce_202 => oehb_ready,
            ce_203 => oehb_ready,
            ce_204 => oehb_ready,
            ce_205 => oehb_ready,
            ce_206 => oehb_ready,
            ce_207 => oehb_ready,
            ce_208 => oehb_ready,
            ce_209 => oehb_ready,
            ce_210 => oehb_ready,
            ce_211 => oehb_ready,
            X     => ip_lhs,
            Y     => ip_rhs,
            R     => ip_result
        );
end architecture;



