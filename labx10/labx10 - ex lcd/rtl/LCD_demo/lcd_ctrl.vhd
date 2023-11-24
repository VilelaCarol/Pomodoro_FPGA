--lcd_ctrl.vhd
-- Escrito por Frederico Ferlini

library ieee;
	use ieee.std_logic_1164.all;

library work;	
	use work.lcd_pkg.all; 
  
entity lcd_ctrl is
generic(
	DIV_NUM		: integer := 500;	-- 50Mhz/500 = 100KHz = 10us
	BOOT_TIME	: integer := 2000;  -- 2000/100KHz = 20ms
	WR_TIME		: integer := 5;		-- 5*10us = 50us
	CLR_TIME	   : integer := 200;	-- 2ms 
   PRESCALER   : integer := 500
);
port( 
   clk_i          : in  std_logic;
   rst_i          : in  std_logic;
	act_i            : in  std_logic;
   data_i         : in std_logic_vector(7 downto 0);
   cmd_i	         : in std_logic_vector(TAM_CMD-1 downto 0);
	ready_o        : out std_logic;
	-- LCD signals
	LCD_DATA       : inout	std_logic_vector(7 downto 0); 	-- LCD data is a bidirectional bus...
	LCD_RS 		   : out   std_logic;                		-- LCD register select
	LCD_RW  	      : out   std_logic;                		-- LCD Read / nWrite
	LCD_EN  	      : out   std_logic;                		-- LCD Enable
	LCD_ON  	      : out   std_logic;
	LCD_BLON  	   : out   std_logic       
);
end lcd_ctrl;
architecture RTL of lcd_ctrl is

	type LCD_STATES is (IDLE,BOOT,INIT,AWAIT,WRLCD,CLRLCD,CADDR);
   
	signal EA, PE : LCD_STATES;
   signal clk_en  : std_logic;
	signal count   : integer range 0 to BOOT_TIME+1;
	signal index   : integer range 1 to NRO_PALV;
	signal data	   : std_logic_vector(8 downto 0);
	
	
begin

	LCD_RW	<= '0';
	LCD_ON	<= '1';
	LCD_BLON<= '1';
	
   process(clk_i,rst_i)
	variable cnt: integer range 0 to PRESCALER := 0;
	begin
		if (rst_i = '1') then
			cnt := 0;
		elsif(rising_edge(clk_i)) then
			if	cnt = PRESCALER then
				clk_en <= '1';
				cnt := 0;
			else
				cnt := cnt + 1;
            clk_en <= '0';
			end if;			
		end if;
	end process;
   
   
   -- State gets Next State
	process(clk_i,rst_i)
	begin
		if rst_i = '1' then
			EA <= IDLE;
		elsif rising_edge(clk_i) then
         if (clk_en = '1') then
            if EA = IDLE then
               EA <= BOOT;
            else
               EA <= PE;
            end if;
         end if;
		end if;
	end process;
	
   -- Next State - PE
	process(EA,count,index,act_i,cmd_i)
	begin
		case EA is
		when IDLE  => PE <= IDLE;
		when BOOT  => PE <= BOOT;
			if count = BOOT_TIME then --20ms
				PE <= INIT;
			end if;
		when INIT => PE <= WRLCD;
			
		when AWAIT  => PE <= AWAIT;
			if act_i = '1' then
				case cmd_i is
               when CMD_WRLCD	 => PE <= WRLCD;
               when CMD_CADDR	 => PE <= CADDR;
               when CMD_CLRLCD => PE <= CLRLCD;
               when others		 => PE <= AWAIT;
				end case;
			end if;
		when WRLCD => PE <= WRLCD;
			if count = WR_TIME then
				if index < NRO_PALV-1 then
					PE <= INIT;
				elsif index = NRO_PALV-1 then
					PE <= CLRLCD;
				else
					PE <= AWAIT;
				end if;
			end if;
		when CLRLCD => PE <= CLRLCD;
			if count = CLR_TIME then
				PE <= AWAIT;
			end if;
		when CADDR => PE <= CADDR;
			if count = WR_TIME-1 then --40us
				PE <= AWAIT;
			end if;
		when others => PE <= IDLE;
		end case;
	end process;
	
   -- count
	process(clk_i,rst_i)
	begin
		if rst_i = '1' then
			count <= 0;
		elsif rising_edge(clk_i) then
         if (clk_en = '1') then
            case EA is
            when IDLE  => count <= 0;
            when BOOT  => count <= count + 1;
            when INIT  => count <= 0;
            when AWAIT => count <= 0;
            when WRLCD => count <= count + 1;
            when CLRLCD=> count <= count + 1;
            when CADDR => count <= count + 1;
            when others=> count <= 0;
            end case;
         end if;
		end if;
	end process;
	
   --data, index, ready_o
	process(clk_i,rst_i)
	begin
		if rst_i = '1' then
			data	<= (others=>'0');
			index	<= 1;
			ready_o	<= '0';
			
		elsif rising_edge(clk_i) then
         if (clk_en = '1') then
            data	<= (others=>'0');
            index	<= NRO_PALV;
            ready_o	<= '0';
            
            case EA is
            when IDLE  =>
            when BOOT  => index	<= 1;
            when INIT  =>
               data  <= cmd_table(index);
               index <= index + 1;
               
            when AWAIT =>
               data(7 downto 0) <= data_i(7 downto 0);
               ready_o <= '1';
               
            when WRLCD =>
               data	<= data;
               index	<= index;
               
            when CLRLCD =>
               data  <= cmd_table(4); --clr_cmd
               
            when CADDR =>
               data <= data;
               data(7) <= '1';
               
            when others=> 
            end case;
         end if;
		end if;
	end process;
	
	
	LCD_EN	<= '1'  when (EA = WRLCD or EA = CLRLCD or EA = CADDR) and count = 1 else '0';
	LCD_RS	<= '1'  when EA = WRLCD and index = NRO_PALV else '0';
	LCD_DATA<= data(7 downto 0) when EA = WRLCD or EA = CLRLCD or EA = CADDR else (others=>'Z');	
	
end RTL;
