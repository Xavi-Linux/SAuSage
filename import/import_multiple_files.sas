/*
	Stack multiple files vertically
	
*/

/* FIRST METHOD */

filename sales '/home/u63740348/mon*.txt'; /*wildcard usage to refer to multiple files*/

data mytest.rollingquarter;
length sales$40;
infile sales dlm=',' filename=sales;
input Customer_ID$ Order_ID Order_Type Order_Date : date9. Delivery_Date : date9.; /*<---Set date format*/
f = sales; /*add the path of the file to the result*/
run; 

proc print data=mytest.rollingquarter; run;

/* SECOND METHOD */

data mytest.rollingquarter2;
drop i;
length Customer_ID$40 Order_ID 4 Order_Type 4 Order_Date 4 Delivery_Date 4;
do i=5 to 7;
	NextFile = cats('/home/u63740348/mon', i, '.txt'); /*cats: returns a concatenated string*/
	infile ORD filevar=NextFile dlm=',' end=LastObs; /*ORD is a placeholder to report to the log*/
	do while (not LastObjs);
		input Customer_ID$ Order_ID Order_Type Order_Date : date9. Delivery_Date : date9.;
		output;
	end;
end;
stop;
run;


