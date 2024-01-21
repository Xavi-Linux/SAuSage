data randy;
call streaminit(24); /*<---- The seed*/
do i=1 to 30;
	x = rand('Normal');
	y = rand('Uniform');
	output;
end;
drop i;
run;