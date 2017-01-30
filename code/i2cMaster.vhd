library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity i2cMaster is 
  port(
    SDA : inout std_logic;
    SCL : inout std_logic
  );
end i2cMaster;
architecture behavioral of i2cMaster is
  signal SDAin  : std_logic;
  signal SDAout : std_logic;
  signal SCLena : std_logic;
  signal SCLclk : std_logic;
begin
  SDA <= '0' when SDAout = '0' else 'Z';
  SDAin <= SDA;
  SCL <= '0' when (SCLena = '1' and SCLclk = '0') else 'Z';
end behavioral; 