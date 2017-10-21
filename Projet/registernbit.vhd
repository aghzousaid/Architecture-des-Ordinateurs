LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity registernbit is
	generic (Nr : INTEGER);
	port( 
		Rin	:	IN STD_LOGIC_VECTOR(Nr-1 DOWNTO 0);
		Rout	:	OUT STD_LOGIC_VECTOR (Nr-1	DOWNTO 0);
		setR, clk, reset_n	:	in STD_LOGIC
	);
end entity;

ARCHITECTURE registernbit_bhv of registernbit is
BEGIN
	process(clk, reset_n)
	BEGIN
		if(reset_n = '0')	then
			Rout<=(others=> '0');
		else if(rising_edge(clk) AND setR = '1') then -- Front montant de l'horloge
				Rout <=Rin;
			END if;
		END if;
	END process;
END registernbit_bhv;