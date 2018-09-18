----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/30/2018 04:08:24 PM
-- Design Name: 
-- Module Name: ripple_adder - Behavioral
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

entity ripple_adder is
    Port ( a_i,b_i : in STD_LOGIC_VECTOR (3 downto 0);
           c_i : in STD_LOGIC;
           sum_o : out STD_LOGIC_VECTOR (3 downto 0);
           carry_o : in STD_LOGIC);
end ripple_adder;

architecture Behavioral of ripple_adder is

begin

component full_adder is                            --importing full adder
    Port ( a_i,b_i,c_i : in  STD_LOGIC;
           sum_o,carry_o : out  STD_LOGIC);
end component;

signal y1,y2,y3 : std_logic;                       --declaration of signals used for temporary data storage

begin

X1: full_adder port map(a_in(0),b_in(0),c_in,sum_o(0),y1);     --port mapping of full adder and ripple carry adder
X2: full_adder port map(a_in(1),b_in(1),y1,sum_o(1),y2);
X3: full_adder port map(a_in(2),b_in(2),y2,sum_o(2),y3);
X4: full_adder port map(a_in(3),b_in(3),y3,sum_o(3),carry_o);


end Behavioral;
