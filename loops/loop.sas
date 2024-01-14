/*No for loop; do loop instead*/
data A;
do i=1 to 5;
	y= i * 2;
	output; /*two-column table: one column for i's values and another column for y's values*/
end;
run;

/*0.5 increment*/
data B;
do x=1 to 10 by 0.5;
	z = x * 2;
	output;
end;
run;

/*do while*/
data C;
do i=1 by 1 while(i < 11);
	h = i * 3;
	output;
end;
run;

/*do until*/
data D;
do i=1 by 2 until(i = 5);
	g = i / 2;
	output;
end;
run;

/*loop through an array*/
data E;
do v=1,3,5,7,9,11;
	s = v * 2;
	output;
end;
run;

/*counter variable*/
data F;
n = 0;
do while (n < 6);
	output;
	put n=; /* send to log and print "n=current_value"*/
	n+1; /* increment variable */
end;
run;

data G;
set A; /* read dataset A */
run;

