# Network Latency
set_clock_latency 0.8 [get_clocks clkname]
# Source Latency
set_clock_latency 1.9 -source [get_clocks clkname]