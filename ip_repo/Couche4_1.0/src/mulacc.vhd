----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.12.2017 17:56:24
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mulacc is
  Port (    clk : in std_logic;
            reset : in std_logic;
            init : in std_logic;
            op1 : in std_logic_vector(15 downto 0);
            op2 : in std_logic_vector(15 downto 0); 
            sum : in std_logic_vector(15 downto 0);
            sum_out : out std_logic_vector(15 downto 0);
            v : out std_logic
            
        );
end mulacc;

architecture Behavioral of mulacc is

signal mult_res : std_logic_vector(15 downto 0);

signal start : std_logic;
signal init_mult : std_logic;
signal valid : std_logic;
type Etat is (IDLE, MULT, ACC);
signal EP,EF : Etat;

begin

    mult0: entity work.mult
            port map(op1,op2,clk,reset,init_mult,valid,mult_res);

    accu0: entity work.accu
            port map(clk,reset,start,sum,mult_res,sum_out);
            
    update: process(clk, reset)
    begin
        if (reset = '1') then
            EP <= IDLE;
        elsif (rising_edge(clk)) then
            EP <= EF;
        end if;
    end process;

    transition: process(EP, init, valid)
    begin
        v <= '0';
        case EP is
            when IDLE => 
                init_mult<='0'; 
                start<='0';
                if (init = '1') then
                    EF <= MULT;
                else
                    EF <= IDLE;
                end if;
                         
            when MULT => 
                init_mult<='1';
                start <= '0';
                if ( valid = '1' ) then
                    EF <= ACC;
                else
                    EF <= MULT;
                end if;
                         
            when ACC =>  
                init_mult <= '0';
                start <= '1';
                v <= '1';
                EF <= IDLE;
        end case;
    end process;
    
end Behavioral;
