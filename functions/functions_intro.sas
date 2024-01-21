/*
	Functions accept the following elements as arguments:
		- A variable
		- An Expression
		- A list of arguments
		- A Constant
*/

data summing;
sumthis = sum(4, 5, 6); /*constant*/
variable_arg = sum(sumthis);
expr_arg = sum(variable_arg * 2);
list_arg = sum(of var_1-var_6);
run;