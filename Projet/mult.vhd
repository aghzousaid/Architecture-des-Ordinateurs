library ieee;
use ieee.std_logic_1164.all;

Entity mult is 
	generic (N : integer);
	port (a,b: IN STD_LOGIC_VECTOR(N-1 downto 0); 
			cout: OUT STD_LOGIC;
			q: OUT STD_LOGIC_VECTOR(N-1 downto 0)
	);
end entity;

ARCHITECTURE mult_bhv of mult is 

component add_N
	generic (N : integer);	
	Port(A, B : IN std_logic_vector(N-1 DOWNTO 0);
		  CIN : IN std_logic;
		  COUT : OUT std_logic;
		  S : OUT std_logic_vector(N-1 DOWNTO 0));
end component;
	
type tableau is array (0 to N-1) of std_lOGIC_VECTOR(N-1 downto 0);
signal sa, sb, s : tableau; 
signal overflow : std_logic;
signal sig_q : std_logic_vector ((2*N)-1 downto 0);

begin
	ligne: for i in 0 to 3 generate 
	mem_C(i)(0)<= '0'; 
	colonne: for j in 0 to 3 generate 
		mem_ET(i)(j)<= (a(j) AND b(i)) ;
		
		prem1: if (i=0) generate
			mem_S(0)(j)<= mem_ET(0)(j); 
			mem_C(0)(4)<='0'; 
		end generate prem1; 
		
		prem2: if (i>0) generate
			add_N:add port map (a=> mem_S(i-1)(j), b=> mem_ET(i)(j), R => mem_S(i)(j),cin=>mem_C(i)(j), cout=>mem_C(i)(j+1)); 
		end generate prem2; 
	end generate colonne; 
	mem_S(i)(4)<= mem_C(i)(4); 
	end generate ligne;
	s(0)<= mem_S(0)(0); 
	s(1)<= mem_S(1)(0); 
	s(2)<= mem_S(2)(0); 
	s(3)<= mem_S(3)(0); 
	s(4)<= mem_S(3)(1); 
	s(5)<= mem_S(3)(2); 
	s(6)<= mem_S(3)(3); 
	s(7)<= mem_S(3)(4); 
	
end architecture;