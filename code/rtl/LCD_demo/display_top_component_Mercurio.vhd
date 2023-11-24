--display_top.vhd
-- Adaptado de Frederico Ferlini por Lui Pillmann de Barros


--FUNCIONAMENTO:
--	 Apertar KEY(0) para resetar;
--	 KEY(9) para iniciar (start_lcd);
--	 SW(0) controla backlight

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	
entity display_top_component_Mercurio is
generic(
	TAM_RAM		: integer := 32;
	TAM_DATA	: integer := 8;
	NUM_DATA	: integer := 32;
	--LCD
	--Valores reais
	DIV_NUM		: integer := 500;	-- 50Mhz/500 = 100KHz = 10us
	BOOT_TIME	: integer := 2000;  -- 2000/100KHz = 20ms
	WR_TIME		: integer := 5;	-- alterado, era 5	-- 5*10us = 50us
   REFRESH     : integer := 10000000; -- taxa de atualizaçao do visor
	CLR_TIME	: integer := 200	-- 2ms 
);
port(	
	CLOCK_50MHz	: in	std_logic;
   RESET_50MHz	: in	std_logic;
	SW				: in 	std_logic_vector(3 downto 0);    --operandos(15 downto 8 => operando2, 7 downto 0 => operando1)
	KEY			: in 	std_logic_vector(11  downto 0);  --comando(3=>'start_send',0=>'rst');
	LCD_D		   : inout	std_logic_vector(7  downto 0); 	-- LCD data is a bidirectional bus...
	LCD_RS 		: out   std_logic;                		-- LCD register select
	LCD_RW  		: out   std_logic;                		-- LCD Read / nWrite
	LCD_EN  		: out   std_logic;                		-- LCD Enable
	LCD_BACKLIGHT	: out   std_logic
	);
end display_top_component_Mercurio;

architecture RTL of display_top_component_Mercurio is
	
	signal count: integer range 0 to BOOT_TIME+1;
	signal send_n 	: std_logic;
	signal start_lcd, start_leitura: std_logic;
	signal data_dec : std_logic_vector(TAM_DATA downto 1);
	signal idx 		: integer range 1 to TAM_RAM;
	signal indice: integer range 1 to TAM_RAM;
	signal Q, D, inc: std_logic;
		
	type MEM is array (1 to NUM_DATA) of std_logic_vector(TAM_DATA downto 1);
	signal word: MEM := MEM'(
			x"20", -- 	
			x"20", -- 	
			x"4D", -- M	
			x"41", -- A	
			x"43", -- C 
			x"4E", -- N	
			x"49", -- I	
			x"43", -- C	
			x"41", -- A	
			x"20", -- 	
			x"20", -- 	
			x"44", -- D
			x"48", -- H	
			x"57", -- W	
			x"20", -- 	
			x"20", -- 	   ultimo caractere da linha 1
			x"20", -- 	
			x"20", -- 	
			x"20", -- 
			x"20", -- 	
			x"20", -- 	
			x"41", -- A	
			x"4C", -- L	
			x"54", -- T	
			x"45", -- E	
			x"52", -- R	
			x"41", -- A	
			x"20", -- 	
			x"20", -- 	
			x"20", -- 	
			x"20", -- 
			x"20"  -- 
	);

	
		
begin

	-- start_lcd <= KEY(9);--KEY(9) OR SW(2); -- bit de controle do in�cio do processo
	LCD_BACKLIGHT <= SW(0);
	
	-- leitura da memória através do índice idx fornecido pelo controlador LCD
	data_dec <= word(idx);
		
   process (CLOCK_50MHz, RESET_50MHz)
   variable count_2: integer range 1 to REFRESH := 1;   
   begin
   if (RESET_50MHz = '1') then
      start_lcd <= '0';
      count_2 :=1;
   elsif (rising_edge(CLOCK_50MHz) and RESET_50MHz /= '1') then
      start_lcd <= '0';
      count_2 := count_2 + 1;
      if count_2 = (REFRESH - 4) then -- -4, tempo para o sinal ser interpretado com folga
         start_lcd <= '1';
      elsif count_2 = (REFRESH) then 
         count_2 := 1;
      end if;
   end if; 
   end process;
   
   
	inst_lcd_top : entity work.lcd_top
	generic map(
		TAM_DATA 	=> TAM_DATA,
		NUM_DATA	=> TAM_RAM,
		--LCD
		DIV_NUM		=> DIV_NUM,
		BOOT_TIME	=> BOOT_TIME,
		WR_TIME		=> WR_TIME,
		CLR_TIME	=> CLR_TIME
	)
	port map (
		CLK_50MHz_i	=> CLOCK_50Mhz,
		rst_i				=> RESET_50MHz,
		start_i			=> start_lcd,
		data_i			=> data_dec,
		idx_o				=> idx,
		--ready_o			=> ready_lcd,
		-- LCD
		LCD_DATA	=> LCD_D,
		LCD_RS 	=> LCD_RS,
		LCD_RW  	=> LCD_RW,
		LCD_EN  	=> LCD_EN,
		LCD_BLON => open
	);	
end RTL;
