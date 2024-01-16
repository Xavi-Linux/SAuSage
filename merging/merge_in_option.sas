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

/*If you want to merge, you first need to sort both sets by merging key*/

/*merge: stack vertically
 both sets must have the same attributes
*/
data mergedset;
merge hprices2 (in=A) nhomes2 (in=B);
by price; /*The columns must contain each set; otherwise, repeated values from the first dataset will be dropped */
if A; /*A way to say "only keep rows from hprices2 dataset"*/
run;

/* IN dataset option:
	it is a boolean variable (true=1, false=0) that indicates whether or not row in the resulting merged dataset belongs
	to that original data source
*/