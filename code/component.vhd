-- Begin Cut here for COMPONENT Declaration
component blk_mem_gen_0
  port (
    clka : in std_logic;
    ena : in std_logic;
    ...
    dinb : in std_logic_vector(15 downto 0);
    doutb : out std_logic_vector(15 downto 0)
  );
end component;
-- End COMPONENT Declaration ------------
-- Begin Cut here for INSTANTIATION Template
your_instance_name : blk_mem_gen_0
  port map (
    clka => clka,
    ena => ena,
    wea => wea,
    ...
    dinb => dinb
  );