/*

+ Libraries:

	- Work: it is a temporary library whose content is wiped out once a user ends his sas session.
	
		+ It is the default library: if you do not specify any library when querying a table, SAS attempts to fetch
			the requested data from the Work Library:

				data myset;
				set table; <-- = work.table
				
	-  Sashelp: it is a permanent library that contains sample code.

+ A library's name (libref) is a shortcut for its physical path.

	- Librefs must abide by the following conventions:
	
		+ 1-8 characters
		
		+ Beginning with a letter or underscore
		
		+ No blanks allowed
		
		+ The remaining letters must be letters, numbers or underscores
		
+ To associate a library name to a physical path, you need to state:

	libname libref path;
	
+ This associate only lasts for the duration of the SAS session. Hence, it must be executed everytime a user sets up a session

+ You can create an autoexec.sas folder with linking instructions and store it in your home folder. It is executed everytime
	you start a new SAS session.

*/

libname mytest '/home/u63740348/libraries/mytest'; /*The folder must exist before the code is executed*/

data mytest.cars;
set sashelp.cars;
where origin = 'Europe';
run;

data mytest.carsif;
set sashelp.cars;
IF origin = 'Europe';
run;

proc sql;
	SELECT *
	FROM mytest.cars
  EXCEPT
  	SELECT *
  	FROM mytest.carsif
;quit;