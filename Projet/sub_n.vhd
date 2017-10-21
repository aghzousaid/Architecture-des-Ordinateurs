LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sub_n IS
	GENERIC(n : IN INTEGER := 16);
	PORT(
		a, b : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		cin : IN STD_LOGIC; 
		cout : OUT STD_LOGIC;
		q : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)

	);
END;

ARCHITECTURE sub_n_bhv OF sub_n IS

	COMPONENT add_n IS
		generic (N : integer);	
		Port(	A, B : IN std_logic_vector(N-1 DOWNTO 0);
				CIN : IN std_logic;
				S : OUT std_logic_vector(N-1 DOWNTO 0);
				COUT : OUT std_logic
		);
	END COMPONENT add_n;

	SIGNAL b_inv, b_compl, tmp_b : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL tmp_cout : STD_LOGIC;

BEGIN
	b_inv <= (NOT b);
	tmp_b(n-1 DOWNTO 1) <= (OTHERS => '0');
	tmp_b(0) <= '1';
	
	add_compl : add_n GENERIC MAP (n) PORT MAP (b_inv, tmp_b, '0', b_compl, tmp_cout);
	add : add_n GENERIC MAP (n) PORT MAP (a, b_compl, cin, q, cout);

END;