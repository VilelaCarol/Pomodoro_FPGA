-- Funcionamento:
--  O diplay LCD mostrará os valores 
--  de minutos e segundos. A contagem
--  será controlada pelos botões:
--  KEY (1) : inicia/continua a contagem
--  KEY (2) : para a contagem
--  KEY (3) : rst (reinicia o valor da contagem)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Labx4 is
generic(
   DEBOUNCE    	: integer := 2500000;  -- filtro ruido de trepidaçao, 2500000*20ns = 50ms
   CICLES_SECOND 	: integer := 50000000  -- Frequencia do clock em Hz
   );
port(
		CLOCK_50MHz		: in std_logic;
		DISP0_D        : out std_logic_vector (7 downto 0);
		DISP1_D        : out std_logic_vector (7 downto 0);
		KEY				: in std_logic_vector (11 downto 0)
	);
end Labx4;

architecture behavior of Labx4 is

signal rst      : std_logic;
signal key_ready  : std_logic;
signal key_data   : std_logic_vector (3 downto 0);
signal var_seg		: std_logic_vector (7 downto 0);

-- Declaraçao do decodificador para display de 7 segmentos
component display_7seg is
	port(
		data_i		:	in std_logic_vector(3 downto 0);
		disp_7seg_o	:	out std_logic_vector(6 downto 0)

	);
end component;

-- Declaraçao do teclado
component teclado_base is
generic
(
   DEBOUNCE : integer
);
port(
		clk_i         :	in std_logic;
		push_button_i :	in std_logic_vector (11 downto 0);
		key_o         : 	out std_logic_vector (3 downto 0);
      ready_o       :	out std_logic
	);
end component;


-- Declaração sincronizador de reset
COMPONENT reset_sync
   PORT
	(
		i_clk	               :	 IN STD_LOGIC;
		i_external_reset_n	:	 IN STD_LOGIC;
		o_reset_n      		:	 OUT STD_LOGIC;
		o_reset		         :	 OUT STD_LOGIC
   );
END COMPONENT;   


   begin
   
   --rst <= KEY(2);
	reset_synch_50mhz_inst : reset_sync
	PORT MAP (
		i_clk                => CLOCK_50MHz,
		i_external_reset_n   => KEY(2),
		o_reset		         => open,
		o_reset_n            => rst
	);
   
	-- Processo de controle do Cronometro
   process (CLOCK_50MHz, rst)
      variable crono : integer range 1 to CICLES_SECOND := 1;
      variable flag  : std_logic := '0';
   begin
      if rst = '1' then 
         crono := 1;
         flag  := '0';
         var_seg <= "00000000";
      elsif rising_edge (CLOCK_50MHz) then
			-- Verificas as teclas para o controle do cronometro
         if key_ready = '1' then
            case key_data is
               when "0001" => flag := '1';
               when "0010" => flag := '0';
               when others => flag := flag;
            end case;
         end if;
         if flag = '1' then      -- enquanto a flag está em '0', o cronometro está parado
            crono := crono + 1;
            -- lógica para o incremento de minutos e segundos
            if crono = CICLES_SECOND then
               crono := 1;
               var_seg(3 downto 0) <= var_seg(3 downto 0) + 1; -- var_seg(3 downto 0) indica a unidade dos segundos
               if var_seg(3 downto 0) = "1001" then
                  var_seg(3 downto 0) <= "0000";
						var_seg(7 downto 4) <= var_seg(7 downto 4) + 1;	-- var_seg (7 downto 4) indica a dezena de segundos
						if var_seg(7 downto 4) = 1001 then
							var_seg(7 downto 4) <= "0000";
						end if;
               end if;
            end if;
         end if;
      end if;
 end process;

	-- Display de 7 segmentos da unidade
	conversor_7seg_1:
	display_7seg 
	port map
	(
		data_i		=> var_seg(3 downto 0),
		disp_7seg_o	=> DISP0_D(6 downto 0)
	);
	DISP0_D(7) <= '0';
	
	-- Display de 7 segmentos da dezena
	conversor_7seg_2:
	display_7seg 
	port map
	(
		data_i		=> var_seg(7 downto 4),
		disp_7seg_o	=> DISP1_D(6 downto 0)
	);
	DISP1_D(7) <= '0';
	
	-- Instanciação do Teclado
	teclado:
	teclado_base 
   generic map
   (
      DEBOUNCE => DEBOUNCE
   )
   port map
	(
		clk_i				=> CLOCK_50MHz,
		push_button_i 	=> KEY,
		key_o 			=> key_data,	
      ready_o        => key_ready
	);
    

			
end behavior;