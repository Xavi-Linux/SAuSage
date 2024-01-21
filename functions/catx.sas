/* CATX
	
	- It does three things:
	
		1. Getting rid of leading blanks
		2. Getting rid of trailing blanks
		3. Concatenating variables with a separator inbetween
*/

data cat;
input firstname$ lastname$;
c = catx(', ', lastname, firstname);
drop firstname lastname;
datalines;
X MS
T TS
F VQ
;
run;

proc print data=cat; run;