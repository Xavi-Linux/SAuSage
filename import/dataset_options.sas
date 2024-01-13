data salaries(keep=salary rename=salary=salry);
/*
	keep=colname: only keep some columns
	rename=old_name=new:_name: rename a column
*/
infile '/home/u63740348/salary (2).txt';
input year salary;
run;

proc print data=salaries(firstobs=2 obs=2);
/*
	firstobs: first row to print
	obs=num of rows to print
*/
run;