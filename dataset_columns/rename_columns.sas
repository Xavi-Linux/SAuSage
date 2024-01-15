data newhomes;
infile '/home/u63740348/newhomes (2).txt';
input type$ price tax;
run;

data newcolumns;
set newhomes;
rename type=x price=y tax=z; /*<--rename*/
run;

data labels;
set newhomes;
label type='type of home' price='price of home' tax='tax % paid'; /*<--add a label*/
run;

proc freq data=labels; /*Retrieve 3 freq tables: one for each column. The columns' header will be the labels defined in the
	previous data statement;
*/
table type price tax;
run;