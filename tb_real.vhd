library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;


LIBRARY std;
USE std.textio.all;

use work.txt_util.all;

entity tb_real is
generic (
  i : integer := 1;
  r : real := 1.0
);
end tb_real;

architecture tb of tb_real is

begin

  process
  variable l : line;
  begin
    wait for 1 ms;
    print("Test");
    write(l,now, unit => 1 ms);
    writeline(OUTPUT,l);
    print(integer'image(i));
    print(real'image(r));
    wait;
  end process;

end architecture;
