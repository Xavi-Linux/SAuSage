/*
	- Merge does two things:
	
		+ Update values in existing rows
		
		+ Insert new ros into target tables
		
	- It works with the following servers: oracle, teradata, snowflake and SQL Server
*/

%let l = mytest;

data &l..marketproducts;
input id product$ price;
datalines;
4013 orange 0.5
4072 potatoe 1
4034 melon 3
;
run;

/*Use the second set to update the first one (orange, potatoe) and add new rows (cucumber, letuce)*/

data &l..marketproductsupdate;
input id product$ price;
datalines;
4013 Orange 0.75
4072 BigPotatoe 1
4062 Cucumber 0.6
4061 Letuce 1.88
;
run;

proc sort data= &l..marketproducts out= &l..marketproductss;
by id;
run;

proc sort data=&l..marketproductsupdate out=&l..marketproductsupdates;
by id;
run;

data &l..products;
merge &l..marketproductss (IN=A) &l..marketproductsupdates (IN=B);
by id; 
run;
