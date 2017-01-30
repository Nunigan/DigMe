-- Syntax
function <function_name> [(list of arguments with type declaration)] return <type> is
  [<Declarations>];
begin
  {<sequential statements,
  except wait statements>};
  return <return expression>;
end [function] <funcionname>;
-- Example
library ieee;
use ieee.std_logic_1164.all;
entity parity_gen8 is
  port( 
    A : in std_ulogic_vector(3 downto 0);
    B : in std_ulogic_vector(7 downto 0);
    POA, POB : out std_ulogic
  );
end entity parity_gen8;
architecture RTL of parity_gen8 is
  function PARGEN(AVECT : std_ulogic_vector) return std_ulogic is
    variable PO_VAR : std_ulogic;
  begin
    PO_VAR := '1';
    for I in AVECT'range loop
      if AVECT(I) = '1' then 
	    PO_VAR := not PO_VAR;
      end if;
   end loop;
    return PO_VAR;
  end function PARGEN;
begin
  POA <= PARGEN(A);
  POB <= PARGEN(B);
end architecture RTL;