/*Sas internally stores dates as number of days since 01/01/1960*/
data dates;
input emp_name$ birthday date11.;
/*date11. = d Mon yyyy*/
datalines;
Xavi 1 Jan 1960
Lisa 1 Jan 1970
Bob 1 Jan 1970
George 1 Jan 1970
;
run;

proc print data=dates;
format birthday date9.;
run;
