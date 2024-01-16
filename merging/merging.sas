data hprices;
infile '/home/u63740348/houseprice (2).txt';
input type$ price tax;
run;

data nhomes;
infile '/home/u63740348/newhomes (2).txt';
input type$ price tax;
run;

proc sort data=hprices out=hprices2;
by price;
run;

proc sort data=nhomes out=nhomes2;
by price;
run;

/*merge: stack vertically
 both sets must have the same attributes
*/
data mergedset;
merge hprices2 nhomes2;
by price; /*The columns must contain each set of attributes; otherwise, repeated values from the first dataset will be dropped */
run;
