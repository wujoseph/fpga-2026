----------------------------------------------------------------------------------
-- Create Date: 2026/06/06 17:19:51
-- Design Name: Chung-Chuan Hou
-- Module Name: LED - LED
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LED is
Port ( 
    CLK :   in  std_logic;
    led :   out unsigned(3 downto 0)
);
end;

architecture LED of LED is
    signal  NUM     :  unsigned(3 downto 0);
    signal  DIV  :  unsigned(35 downto 0);
    signal  led1    :  unsigned(3 downto 0);

begin
    process(CLK,DIV)
    begin
        if (CLK'event and CLK='1') then
            DIV <= DIV+1;
        end if;    
    end process;
    
    NUM <= DIV(31 downto 28);
    led1 <= NUM;
    led <= led1;

end LED;
