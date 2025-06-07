create_clock -name clk -period ?CLOCK? -waveform {0.000 ?HALF_CLOCK?} [get_ports clk]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports clk]
