/*
	Verify: VERIFY(source,excerpt-1<, …, excerpt-n> ) 
	
	+ The VERIFY function returns the position of the first character in source that is not present 
		in any excerpt. If VERIFY finds every character in source in at least one excerpt, it returns a 0. 
*/

data errors valid; /*Build two datasets in one step. Use output statement to direct results*/
input id$3 nota$6.;
if verify(nota, '1') = 1 then output errors;
else output valid;
datalines;
001 010101 
002 110110
003 654321
004 222222
;
run;

proc print data=errors;
title 'errors';
run;

proc print data=valid;
title 'valid';
run;