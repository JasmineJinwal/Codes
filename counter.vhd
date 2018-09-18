----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/06/2018 05:09:08 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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
use ieee.std_logic_unsigned.all; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- UP-counter counting from 0 to 15
entity counter is
    Port ( clk,clr : in STD_LOGIC;                        --ports declaration
           q : out STD_LOGIC_VECTOR (3 downto 0));
end counter;

architecture Behavioral of counter is

signal temp: std_logic_vector(3 downto 0); 
  begin  
      process (clk, clr) 
        begin  
          if (clr='1') then               --if clr=1, set the output as 0
            temp <= "0000";               -- assigning a value "0000" if clr='1'
          elsif (clk'event and clk='1') then        --when the risisng edge of clock arises
            temp <= temp + 1;                       --incrementing he value by 1 after every clock cycle
          end if;  
      end process; 
      q <= temp; 
end Behavioral;
