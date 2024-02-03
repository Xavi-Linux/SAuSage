/*Uniform distribution [0, 1]*/

data rand(drop=i);
do i=1 by 1 until(i = 5);
	g = ranuni(19); /*param = seed*/
	output;
end;
run;

/*Gaussian mean=0 and std = 1*/

data rand_gaussian(drop=i);
do i=1 by 1 until(i = 5);
	g = rannor(19); /*param = seed*/
	output;
end;
run;