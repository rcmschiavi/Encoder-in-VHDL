---------------------------------------------------------------
--								PROJETO FPGA PARA TODOS
--
--         				 Comunica��o Serial (Transmiss�o) - RS232
--
--   O projeto trata da convers�o de um sinal seria  no protocolo RS232 para um sinal
--	  paralelo. O projeto recebeer� os dados via a porta Rx e a corverter� para um dado
--	  de oito bits. A velocidade de recep��o � de 9600 bits/s. A sa�da possu�ra um sinal
--	  de que o dado lido est� dispon�vel e um sinal de entrada para que seja sinalizada a
--	  leitura, caso chegue um segundo dado sem que o primeiro tenha sido lido ser� sina-
--	  lizado com um bit de erro de overram. Caso haja algum erro na transmiss�o do stop
--	  bit ou do start bit, o programa sinalizar� um erro e ir� parar de funcionar at� que
--	  o programa seja resetado.
--
--   Entradas: dado, Clock, Reset, solicita��o do envio de dados. 
--	  Sa�das: tx.
-- 
--	  Autores: Professor Edson Melo
--            Jo�o Marcos de Aguiar
--	
--	  Setembro de 2011.
--
--	  Para mais informa��es, acesse: fpgaparatodos.com.br
--
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity envia_serial is
port
(
	clock, resetn	: in std_logic;
	dado				: in	std_logic_vector (7 downto 0); -- Declara��o do dado de entrada
	sendn				: in std_logic;							 -- Sinal de requisi��o de envio de dado
	txd, busy		: out std_logic							 -- Declara��o da sa�da serial e da sa�da para o LED
);
end entity envia_serial;


architecture comportamento of envia_serial is
  signal palavra_transmitir:	std_logic_vector (9 downto 0) := "1111111111"; -- Vetor que guardar� a palavra a ser enviada via serial
  
  type transmissor is (disponivel, transmitindo, espera); -- Declara��o do tipo da m�quina de estados
  signal estado: transmissor;										 -- Declara��o da m�quina de estados

begin
	
	gera_controle_clock:
	process (clock, resetn)
		variable contagem : integer range 0 to 8191 := 0; -- Vari�vel usada para fazer a divis�o do clock para 9600 bits/s no momento da transmiss�o
		variable conta_bits : integer range 0 to 15 := 0; -- Vari�vel usada para registrar quantos bits j� foram enviados na transmiss�o

	begin
		if (resetn = '0') then -- Fun��o para quando o bot�o de reset for pressionado
			contagem := 0;
			estado <= disponivel;
			
		elsif  clock'event and clock = '1' then	-- Fun��o principal
			case estado is
				when disponivel =>
				-- Quando est� no estado dispon�vel e foi requisitado o envio de um dado, muda-se a m�quina de estados para
				--	o estado transmitindo, concatena-se o dado a ser enviado com o start bit e o stop bit e atribui-se zero 
				-- a vari�vel respons�vel pela divis�o do clock.
					if sendn = '0' then
						estado <= transmitindo;
						palavra_transmitir <= '1' & dado & '0';
						contagem := 0;
					end if;
		
				when transmitindo =>					
				-- Quando esta transmitindo, incrementa-se a vari�vel contagem e � verificado se ela chegou a 2500, caso  sim,
				--	rotaciona-se a vari�vel de sa�da, de forma ao pr�ximo bit a ser enviado v� para o LSB, incrementa-se a 
				-- vari�vel respons�vel pelo registro da quantidade de bits enviados e atribui-se zero a vari�vel contagem.
					contagem := contagem + 1;
					if contagem = 5208 then --velocidade para 50MHz e 9600 baudrate 50M/9600 
						for cont in 0 to 8 loop
							palavra_transmitir(cont) <= palavra_transmitir (cont + 1);
						end loop;
						conta_bits := conta_bits + 1;
						contagem := 0;
					end if;
				-- Quando termina de enviar os 10 bits, a m�quina vai para o estado de espera, utilizado para que a mesma palavra
				--	n�o seja enviada duas vezes e para diminuir as influencias devido a ru�dos.
					if conta_bits = 10 then
						conta_bits := 0;
						estado <= espera;
					end if;
					
			   when espera =>
				-- Quando est� em espera, aguarda at� o sinal de requisi��o voltar a 1 para voltar a ficar dispon�vel.
					if sendn = '1' then
						estado <= disponivel;
					end if;

			end case;
		end if;	
end process;
					-- O bit enviado � sempre o LSB da vari�vel contendo os bits de transmiss�o, que � rotacionado no estado transmitindo.
					txd <= palavra_transmitir (0);
					-- O sinal busy tem como fun��o apresentar um sinal visual para informar se o circuito esta transmitindo ou dispon�vel
					LED_TRANSMITINDO:	busy <= 
						'1' when estado = transmitindo else
						'0';
			
end architecture comportamento;
