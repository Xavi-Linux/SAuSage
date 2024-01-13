data houseprices;
infile '/home/u63740348/newhomes (2).txt';
input type$ price tax;
actualAmount = ROUND (price * tax); /*variable = value*/
run;

data sales;
input year sales_1-sales_4; /*col_1-col_4 denotes a range of columns*/
total = sales_1+sales_2+sales_3+sales_4;
datalines;
1997 10 15 10 60
1998 25 2 27 90
1999 21 9 7 67
2000 6 9 9 54
;
run;