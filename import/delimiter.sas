data salaries;
infile '/home/u63740348/salary_delimiter.txt' DLM=" "; /*<---specify the delimiter*/
input year salary;
run;