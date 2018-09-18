----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2018 02:40:43 PM
-- Design Name: 
-- Module Name: half_adder - Behavioral
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

entity half_adder is
    Port ( a_in,b_in : in STD_LOGIC;
           sum_o,carry_o : out STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is

begin

sum_o <= a_in xor b_in;         -- sum of half adder
carry_o <= a_in and b_in;       -- carry of half adder

end Behavioral;
