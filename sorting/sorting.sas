proc sort data=where_set out=sorted_where_set;
by ascending goals;

/*
	data = input dataset
	out = create a new dataset for the output
*/

/* ascending/descending BEFORE the sorting attributes*/

