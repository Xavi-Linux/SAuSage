data null_ops;
	input a b;
	
	sm = a + b; /* VALUE + NULL = NULL */
	max_row = max(a, b); /*MAX (VALUE, NULL) = VALUE  --> remove nulls for computation */
	min_row = min(a, b); /*MIN (VALUE, NULL) = VALUE  --> remove nulls for computation */
	datalines;
		1 2
		. 12
		5 .
		. .
		10 20
	;
run;