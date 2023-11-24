-- BOTÕES APERTADOS: NÍVEL LÓGICO ALTO

-- Entradas: Clock, 12 botões;
-- Saídas: 1 sinal de ready e 1 vetor 4 bits com valor digitado.

-- Funções: Faz a leitura dos botões permanentemente. A cada vez que um deles é pressionado sinaliza que
-- existe um dado pronto a ser lido pelo sinal ready_o. Esse sinal so sinaliza a disponibilidade depois
-- de decorrido o tempo de debounce


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity teclado_base is
generic
(
   DEBOUNCE : integer := 1000 -- Debounce para evitar que o ruido de trepidacao influencie no circuito
);
port(
		clk_i					:	in std_logic;
		push_button_i		:	in std_logic_vector (11 downto 0);
		key_o					: 	out std_logic_vector (3 downto 0);
      ready_o 				:	out std_logic
	);
end teclado_base;

architecture behavior of teclado_base is

	signal flag		: std_logic;
   signal key_int	: std_logic_vector (3 downto 0);
	
begin
	
	-- Lógica para saída de acordo com o valor digitado
	
   key_int <=	"0001" when push_button_i = "000000000001" else -- 1
               "0010" when push_button_i = "000000000010" else -- 2
               "0011" when push_button_i = "000000000100" else -- 3
               "0100" when push_button_i = "000000001000" else -- 4
               "0101" when push_button_i = "000000010000" else -- 5
               "0110" when push_button_i = "000000100000" else -- 6
               "0111" when push_button_i = "000001000000" else -- 7
               "1000" when push_button_i = "000010000000" else -- 8
               "1001" when push_button_i = "000100000000" else -- 9
               "1010" when push_button_i = "001000000000" else -- *
               "0000" when push_button_i = "010000000000" else -- 0
               "1011" when push_button_i = "100000000000" else -- #
               "1111"; -- saída padrão (nenhum botão pressionado)
					
	--Logica de Debounce, para filtrar o ruído de tripidação do botão
   process (clk_i)
      variable count : integer range 1 to DEBOUNCE := 1;
   begin
   if rising_edge(clk_i) then
      ready_o <= '0';
      if count < DEBOUNCE then
         count := count + 1;
      elsif key_int /= "1111"  then
         count := 1;
         ready_o <= '1';
         key_o <= key_int;
      end if;
      if  count < DEBOUNCE and key_int = "1111" then
         count := 1;
      end if;
   end if;
   end process;
end behavior;	