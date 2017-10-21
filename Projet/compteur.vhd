LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY compteur is
	PORT ( 	
		clock, reset_n: IN STD_LOGIC;
		addr: OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	); 
END compteur;

ARCHITECTURE Behavior OF compteur IS
	COMPONENT full_adder_generic
	GENERIC (SIZE : INTEGER);
	PORT ( 
		A, B : IN STD_LOGIC_VECTOR(SIZE - 1 DOWNTO 0);
		CIN : IN STD_LOGIC;
		COUT : OUT STD_LOGIC;
		S : OUT STD_LOGIC_VECTOR(SIZE - 1 DOWNTO 0));
	END COMPONENT;
	
	Signal currentAddr, nextAddr: STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL addOver2: STD_LOGIC;
BEGIN

	addTmp: full_adder_generic
		GENERIC MAP (5)
		PORT MAP (currentAddr, "00001", '0', addOver2, nextAddr); 
	
	addr <= currentAddr;
	
	p_cpt: process(clock, reset_n, nextAddr)
	BEGIN
		if(reset_n = '1')	then	--reset asynchrone
			currentAddr <= "00000";
		else if(rising_edge(clock)) then -- Front montant de l'horloge
				currentAddr <= nextAddr;
			end if;
		end if;
	END process;
	
END Behavior;