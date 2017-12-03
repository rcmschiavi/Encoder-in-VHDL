library ieee;
use IEEE.STD_logic_1164.all; 
use IEEE.STD_logic_unsigned.all;
use IEEE.numeric_std.all;

entity tb_encoder is 
	
end entity tb_encoder;

architecture simulacao of tb_encoder is 
		signal A: std_logic ;  
		signal B:  std_logic; 
		signal clk: std_logic;
		signal dir: std_logic;
		signal move: std_logic;
		signal conter: integer range 0 to 127;
		
begin 

uut: entity work.encoder_vhdl 
port map (A,B,clk, dir, move, conter);

clock: process
begin 
		clk<='0';
	for cont in integer range 0 to 4000000 loop 
		wait for 10 ns;
		clk<= not clk;
	end loop;
	wait;
end process;

giro_a: process
begin 
		A<='0';
		wait for 500 ns;
	for cont in integer range 0 to 40000 loop
		A<=not A;
		wait for 500 ns;
	end loop;
	wait for 1000 ns;
	for cont in integer range 0 to 40000 loop
		A<=not A;
		wait for 500 ns;
	end loop;
	wait;
end process; 

giro_b: process
begin 
		B<='0';
	wait for 750 ns;
	for cont in integer range 0 to 40000 loop
		wait for 500 ns;
		B<=not B;
	end loop;
	wait for 500 ns; 
	for cont in integer range 0 to 40000 loop
		wait for 500 ns;
		B<=not B;
	end loop;
	wait;
end process;
 
end simulacao; 
	
	

 
