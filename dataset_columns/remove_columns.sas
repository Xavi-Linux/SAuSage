data newhomes;
infile '/home/u63740348/newhomes (2).txt';
input type$ price tax;
run;

data keepcols;
set newhomes; /*read dataset*/
keep type price; /*<-- Keep columns*/
run;

data dropcols;
set newhomes;
drop tax; /*<-- Drop columns*/
run;