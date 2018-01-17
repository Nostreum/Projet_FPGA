library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mult is
    port ( op1			: in Std_Logic_Vector(15 downto 0);
           op2			: in Std_Logic_Vector(15 downto 0);
           clk			: in Std_Logic;
           reset		: in Std_Logic;
	       init 		: in std_logic;
	       valid        : out std_logic;
           res			: out Std_Logic_Vector(15 downto 0)
	);

end mult;

architecture archi OF mult is
--signal adder : std_logic_vector(31 downto 0);
signal op1_32 :std_logic_vector(31 downto 0);
signal tmp_out : std_logic_vector(15 downto 0);
signal tmp_valid:std_logic;
begin
    op1_32<=std_logic_vector(to_unsigned (to_integer(unsigned(op1) ),32));
    process(clk,reset)
    variable sum,adder :std_logic_vector(31 downto 0);
    begin
        if (reset='1' or init='0') then
            sum:=X"00000000";
            adder:=op1_32;
            tmp_out <= op2;
            tmp_valid <= '0';
        elsif (rising_edge (clk) and init = '1') then 
            tmp_valid <= '0';
            for i in 0 to 15 loop
                if (tmp_out(i)='1') then
                    sum := adder+sum;
                end if;
                adder:= adder(30 downto 0)&'0';
            end loop;
            tmp_valid <= '1';
            res<=sum(15 downto 0);	
        end if;
    end process;
valid<=tmp_valid;

end archi;
