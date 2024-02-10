data concat;
	input name $2. surname $2.;
	full_name = name || '' || surname;
	datalines;
XaMa
ToSa
	;
run;