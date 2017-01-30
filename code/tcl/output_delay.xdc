create_clock -name CLKP -period 20 -waveform {0 15} [get_ports CLKQ]
set_output_delay -clock CLKQ -max 7.4 [get_ports OUTC]
set_output_delay -clock CLKQ -min -0.2 [get_ports OUTC]