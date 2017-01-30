signal DataBus : std_logic_vector(31 down to 0);
alias FirstNibble : std_logic_vector(0 to 3) is DataBus(31 downto 28);