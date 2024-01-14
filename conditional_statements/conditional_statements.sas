/*if statements can only have one action*/
data sales;
input name$ october_sales november_sales december_sales;
total=october_sales+november_sales+december_sales;
category='';
quality='';
if name='C' and november_sales > 8 then category='N';

/*if statements with multiple actions:*/

if name = 'M' and october_sales > 20 then do;
	category='X';
	quality='high';
end;

/*multiple conditions*/
if name='RB' then new='YES';
else if name='MB' then new='NO';
else new='MAYBE';

datalines;
C 10 11 9
M 32 8  27
RB 21 42 6
MB 5  5  5
;
run;