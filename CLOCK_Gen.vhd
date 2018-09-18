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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CLOCK_Gen is
    Port ( CLK : out STD_LOGIC);
end CLOCK_Gen;

architecture Behavioral of CLOCK_Gen is

begin

process
begin
    clk <= '0';
    wait for 10 NS;
    clk <= '1';
    wait for 10 NS;
end process;

end Behavioral;
