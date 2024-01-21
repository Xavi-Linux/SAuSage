/*
	INPUT: convert from text to numeric
	PUT: convert from numeric to text
*/

data inputfunc;
input sales$9.;
value = input(sales, comma9.);
datalines;
6,756,123
;
run;

proc print data=inputfunc;
run;

proc contents data=inputfunc; run; /*it retrieves technical information about the 'table'*/


