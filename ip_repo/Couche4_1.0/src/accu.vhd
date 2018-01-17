----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2017 17:40:28
-- Design Name: 
-- Module Name: accu - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity accu is
  Port (    clk : in std_logic;
            reset : in std_logic;
            start : in std_logic;
            acc : in std_logic_vector(15 downto 0);
            val : in std_logic_vector(15 downto 0); 
            acc_out : out std_logic_vector(15 downto 0)
        );
end accu;

architecture Behavioral of accu is

begin

    process(clk,reset)
    begin
        if (reset = '1') then
            acc_out <= X"0000";
        elsif (rising_edge(clk) and start = '1') then
            acc_out <= std_logic_vector(unsigned(acc) + unsigned(val));
        end if;
    end process;

end Behavioral;
