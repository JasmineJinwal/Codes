----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/17/2018 04:36:59 PM
-- Design Name: 
-- Module Name: CLOCK_Gen - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CLOCK_Gen is
    Port ( CLK1 , CLK2, CLK3 : out STD_LOGIC);
end CLOCK_Gen;

architecture Behavioral of CLOCK_Gen is

begin

process                        -- process statement 1
begin
for i in 1 to 5 loop           -- clock 1 of time period  10 nano seconds
    CLK1 <= '0';
    wait for 10 NS;
    CLK1 <= '1';
    wait for 10 NS;
end loop;
end process;                   -- end of process statement 1

process                       -- process statement 2
begin
for i in 1 to 5 loop          -- clock 2 of time period  5 nano seconds
        CLK2 <= '0';
        wait for 5 NS;
        CLK2 <= '1';
        wait for 5 NS;
end loop;
end process;                   -- end of process statement 2

process                      -- process statement 3
begin       
for i in 1 to 5 loop          -- clock 3 of time period  2 nano seconds
            CLK3 <= '0';
            wait for 2 NS;
            CLK3 <= '1';
            wait for 2 NS;
end loop;
end process;                   -- end of process statement 3

end Behavioral;

