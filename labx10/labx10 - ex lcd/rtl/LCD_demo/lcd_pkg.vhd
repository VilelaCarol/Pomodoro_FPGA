--lcd_pkg.vhd
-- Escrito por Frederico Ferlini

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
package lcd_pkg is

	constant INFERIOR	: integer := 32;
	constant SUPERIOR	: integer := 253;
	constant MEIO_INF	: integer := 127;
	constant MEIO_SUP	: integer := 161;
	
	constant TAM_LINE	: integer := 16;
	constant TAM_CHAR	: integer := 8;

	constant TAM_CMD	: integer := 2;

	constant CMD_CLRLCD	: std_logic_vector := "01";
	constant CMD_CADDR	: std_logic_vector := "10";
	constant CMD_WRLCD	: std_logic_vector := "11";
	
	constant NRO_BITS	: integer := 9;	
	--constant NRO_PALV	: integer := 6;
   constant NRO_PALV	: integer := 8;
	
	type ROM is array (1 to NRO_PALV) of std_logic_vector (NRO_BITS-1 downto 0);
	constant cmd_table:  ROM := ROM'(	   
      "000111001",  -- comando 9'h039;	//function set
		"000010100",  -- comando 	9'h014;	//internal oscillator frequency
		"001010110",  -- comando 	9'h056;	//power control
		"001101101",  -- comando 	9'h06D;	//follower control
		"001110000",  -- comando 	9'h070;	//contrast
		"000001100",  -- comando 	9'h00C;	//display on
      "000000110",  -- comando  9'h006;	//entry mode
      "000000001"   -- comando  9'h001;	//clear
	);   
		-- "000111000",  -- comando 	Function Set  8 bits 2 linhas 5x8
		-- "000001100",  -- comando 	Display On    D=1 C=0 B=0   cursor apagado
		-- "000000110",  -- comando 	Entry Mode	  I/D=1 SH=1
		-- "000000001",  -- comando 	Clear Display
		-- "010000000",  -- comando 	DDRAM Address
		-- "000000000"   -- comando 	
	-- );
	
end package lcd_pkg;
