LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY main is
	PORT ( 	
		SW: IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		KEY: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		LEDR: OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
		LEDG: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1 , HEX0: out STD_LOGIC_VECTOR(0 to 6)
	);
END main;

ARCHITECTURE Behavior OF main IS
	COMPONENT processeur
		PORT ( 	DIN	:	IN STD_LOGIC_VECTOR(15 DOWNTO 0);
				resetn, clock, run : IN STD_LOGIC;
				DONE	:	OUT STD_LOGIC;
				busWires	:	OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT;
	
	component decodeur
		port (C : in std_logic_vector(3 downto 0);
				S: out std_logic_vector(0 to 6));
	end component;
		
	BEGIN 	
	
		proc: processeur PORT MAP (SW(15 DOWNTO 0), KEY(0), KEY(1), '1', LEDR(17), LEDR(15 DOWNTO 0));
	
END Behavior;