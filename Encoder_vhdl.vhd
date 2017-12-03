library ieee; 
use IEEE.STD_logic_1164.all; 
use IEEE.STD_logic_unsigned.all;
use IEEE.numeric_std.all;

entity encoder_vhdl is 			-- Criação da entidade

port (	 A: in std_logic ;  -- Declaração das variáveis 
			  B: in std_logic; 
			  clk: in std_logic;
			  dir: out std_logic;
			  move: out std_logic;
			  conter: out integer range 0 to 127
			 );
end encoder_vhdl; 

architecture encoder of encoder_vhdl is 
	
	signal dir_si: std_logic := '0';
	signal moves: std_logic:='0';
	signal contador: integer range 0 to 127:=0;
	
begin 

analise: process (A, B, clk)

	variable a_ant: std_logic := A;
	variable b_ant: std_logic := B;
	variable ve_mov: std_logic := '1';
	

begin 
	
if rising_edge (clk) then 
	
	if (A = B) then 
		if(ve_mov='0') then
			moves<= not moves;
			ve_mov:='1';
			if contador<127 then
			contador<=contador+1;
			else
				contador<=0;
			end if;
		end if;
		a_ant:=A;
		b_ant:=B;
	end if;
	if (A/=a_ant) then
		dir_si<='0';
		ve_mov:='0';
	elsif (B/=b_ant)then 
		dir_si<='1';
		ve_mov:='0';
	end if ;
end if; 
	
end process ;
dir<=dir_si;
move<=moves;
conter<=contador;
end encoder ;




			  
