/*
	- Missing data must be indicated with a period
	- Max. length of a value is 8 characters
	- It does not properly handle date values
	- A whitespace between values is necessary
*/
data missingvalues;
input name$ sales_1-sales_4;
datalines;
Gregeeee 10 . 40 0
John 35 3 15 9
Lisa 68 4 17 3
Mark 8  9 1  1
;
run;