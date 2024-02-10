data log_ops;
	input v_1 v_2;
	
	cond_a = (v_1 > v_2) & (v_1 > 5); /* & = AND */
	cond_and = (v_1 > v_2) and (v_1 > 5); /* Equivalent to the code line right above */
	cond_o = (mod(v_1, 19) = 0) | (mod(v_1, 7) = 0); /* | = OR */
	cond_or = (mod(v_1, 19) = 0) or (mod(v_1, 7) = 0); /* Equivalent to the code line right above */
	cond_n = ~((v_1 + v_2) <= 10); /* ~ = NOT*/
	cond_not = not ((v_1 + v_2) <= 10); /* Equivalent to the code line right above */ 
	
	datalines;
		1 12
		19 6
		7  2
	;
run;