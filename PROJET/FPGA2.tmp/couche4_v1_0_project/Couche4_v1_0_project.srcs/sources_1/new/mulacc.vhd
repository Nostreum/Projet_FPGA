----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.01.2018 23:53:02
-- Design Name: 
-- Module Name: mulacc - Behavioral
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

entity mulacc is
  Port (    
            -- AXI_STREAM port
            clk :           in std_logic;
            resetn :        in std_logic;
            data :          in std_logic_vector(31 downto 0);
            strb :          in std_logic_vector(3 downto 0);
            last :          in std_logic;
            valid :         in std_logic;
            
            dout :          out std_logic_vector(15 downto 0));
end mulacc;

architecture Behavioral of mulacc is

signal data_1 : std_logic_vector(15 downto 0);
signal data_2 : std_logic_vector(15 downto 0);

signal data_mul : std_logic_vector(31 downto 0);
signal data_acc : std_logic_vector(31 downto 0);

signal cpt : unsigned(9 downto 0) := (others => '0');

signal ended : std_logic;

begin

    data_1 <= data(31 downto 16);
    data_2 <= data(15 downto 0);
    
    data_mul <= std_logic_vector(signed(data_1) * signed(data_2));

    accu : process(clk, resetn)
    begin
        if(resetn = '1') then
            data_mul <= X"0000";
            data_acc <= X"0000";
            cpt <= (others => '0');
            ended <= '0';
        else
            if (valid = '1') then
                data_acc <= std_logic_vector(signed(data_acc) + signed(data_mul));            
            end if;
            
            if (cpt = 10) then
                ended <= '1';
            end if;
            
        end if;
    end process;

    dout <= data_acc(23 downto 8)  when ended = '1' else X"00";

end Behavioral;
