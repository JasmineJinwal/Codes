----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2018 03:25:41 PM
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

entity full_adder is
    Port ( a_in,b_in,c_in : in STD_LOGIC;
           sum_o,carry_o : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

component half_adder is
    Port ( a_in,b_in : in STD_LOGIC;
           sum_o,carry_o : out STD_LOGIC);
end component;

signal sum1,carry1,carry2 : std_logic;
begin

X1: half_adder port map(a_in,b_in,sum1,carry1);
X2 :half_adder port map(c_in,sum1,sum_o,carry2);

carry_o <= carry1 or carry2 ;

end Behavioral;
