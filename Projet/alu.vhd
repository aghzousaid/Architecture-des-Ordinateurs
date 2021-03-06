LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY alu is
		GENERIC (Na : INTEGER);
		PORT ( 	
			A,B: IN STD_LOGIC_VECTOR(Na-1 DOWNTO 0);
			sel: in std_logic_vector(2 downto 0);
			q: OUT STD_LOGIC_VECTOR(Na-1 DOWNTO 0);
			overflow: OUT STD_LOGIC
		);
END ENTITY;

ARCHITECTURE alu_bhv OF alu IS
		
--component mult 
	--generic (N : integer);
	--port (a,b: IN STD_LOGIC_VECTOR(N-1 downto 0); 
		--	cout : OUT STD_LOGIC;
		--	q: OUT STD_LOGIC_VECTOR(N-1 downto 0));
--end component;

COMPONENT add_n
	GENERIC (N : INTEGER);
	PORT (A, B : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
			CIN : IN STD_LOGIC;
			COUT : OUT STD_LOGIC;
			S : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END COMPONENT;

component sub_n
	GENERIC(n : IN INTEGER);
	PORT(	a, b : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			cin : IN STD_LOGIC;
			cout : OUT STD_LOGIC; 
			q : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0));
end component;

SIGNAL add_q, sub_q, mul_q: STD_LOGIC_VECTOR(Na-1 DOWNTO 0);
SIGNAL add_ovf, sub_ovf, mul_ovf: STD_LOGIC;
				
BEGIN
	add : add_n generic map(Na) port map(A, B, '0', add_ovf, add_q);
	sub : sub_n generic map(Na) port map(A, B, '0', sub_ovf, sub_q);
	--mul : mult generic map (16) port map(A, B, mul_ovf, mul_q);
	
	WITH sel SELECT q <= add_q WHEN "000",
								sub_q WHEN "001",	
								--mul_q WHEN "010",
								(OTHERS => 'X') WHEN OTHERS;

	WITH sel SELECT overflow <= add_ovf WHEN "000",
										 sub_ovf WHEN "001",
										 --mul_ovf WHEN "010",
										 'X' WHEN OTHERS;
	
END ARCHITECTURE;