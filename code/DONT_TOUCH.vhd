attribute DONT_TOUCH : string;
-- Preserve the hierarchy of instance CLK1_rst_sync
attribute DONT_TOUCH of CLK1_rst_sync: signal is "TRUE";
...
 CLK1_rst_sync : reset_sync
 PORT MAP (
   RST_IN => RST_LOCKED,
   CLK => clk1_100mhz,
   RST_OUT => rst_clk1
 );