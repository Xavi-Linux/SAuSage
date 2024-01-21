/*
	SUBSTR (SOURCE, START_POSITION,NUM_CHAR_TO_EXTRACT)
*/

data s;
date = '19121991';
month = substr(date, 3, 2);
run;

proc print data=s;run;

/*Replace part of an existing string*/

data rep;
date = '19121991';
substr(date, length(date) - 1, 2) = '94';
run;