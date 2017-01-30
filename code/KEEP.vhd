signal sig1 : std_logic;
attribute keep : string;
attribute keep of sig1 : signal is "true";
begin
  sig1 <= in1 and in2;
  out1 <= sig1 and in3;