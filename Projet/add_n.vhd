LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity add_n is
	generic (N : integer);	
	Port(A, B : IN std_logic_vector(N-1 DOWNTO 0);
		  CIN : IN std_logic;
		  COUT : OUT std_logic;
		  S : OUT std_logic_vector(N-1 DOWNTO 0)
	);
end entity;

Architecture add_n_bhv of add_n is
	COMPONENT add_1 IS
		PORT (
			A, B, CIN : IN STD_LOGIC;
			COUT, S : OUT STD_LOGIC
		);
	END COMPONENT;
	signal C : std_logic_vector(N-2 DOWNTO 0); --last in COUT
BEGIN
	cell_array : FOR i in 0 TO N-1 GENERATE
		first_cell : if i = 0 GENERATE
			first_add : add_1 port map(A=>A(0), B=>B(0),CIN=>CIN, COUT=>C(i), S=>S(0));
		END GENERATE first_cell;
	
		int_cell : if (i > 0) AND (i < N-1) GENERATE
			add_i : add_1 port map(A=>A(i), B=>B(i), CIN=>C(i-1), COUT=>C(i), S=>S(i));
		end generate int_cell;
	
		last_cell : if i = N-1 GENERATE
			last_add : add_1 port map(A=>A(i), B=>B(i),CIN=>C(i-1), COUT=>COUT, S=>S(i));
		END GENERATE last_cell;
	END GENERATE cell_array;
	
END Architecture;