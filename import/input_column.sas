/*
	- Unlike list inputs, you do not need to leave whitespace between values; you need to specify a length for each column
*/

data column_input;
input name$1-4 sales_1-sales_4 @5;
* 1-4: take from the first to the forth chararacters to build the first column
* @5: take from the fifth characters onwards to build the remaining columns and use the whitespace as delimiter
datalines;
Greg10 . 40 0
John 35 3 15 9
Lisa 68 4 17 3
Mark 8  9 1  1
;
run;