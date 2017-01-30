-- Syntax
[<library und use statements>] -- Package Declaration
package <package_name> is
  <declarations>;
end <package_name>;
[<library und use statements>] -- Package Body
package body <package_name> is
  <list of definitions>;
end <package_name>;
-- Example
library ieee;
use ieee.std_logic_1164.all;
package parity_package is
  constant nibble : integer; -- Declaration and initialization optional
  constant word : integer; -- Declaration
  function PAR_GEN(AVECT : std_ulogic_vector) return std_ulogic;
end package parity_package;
package body parity_package is
  function PAR_GEN(AVECT : std_ulogic_vector) return std_ulogic is
    variable PO_VAR : std_ulogic;
  begin -- begin of function
    PO_VAR := '1';
    for I in AVECT'range loop
      if AVECT(I) = '1' then
        PO_VAR := not PO_VAR;
      end if;
    end loop;
    return PO_VAR;
  end function PAR_GEN; -- end of function
  constant nibble : integer := 4; -- Declaration and initialization
  constant word : integer := 8; -- Declaration and initialization
  --may contain more functions, procedures, etc.
end package body parity_package;