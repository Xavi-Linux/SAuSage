data datef;
input start date9.;

	tdy=date(); /*retrieve today's date*/

	dy=day(start);

	mth=month(start);

	yrs=year(start);

	quarter=qtr(start);

	new_dt=mdy(mth, 15, yrs); /*build a date from a: month, day and year*/

	year_quarter=yyq(yrs, quarter); /* start of the quarter */
	
	/* Date shifts */
	
	/* see 20240203_intck_time_difference for all available time periods*/
	
	som=intnx('MONTH', start, 0, 'B');
	half_month=intnx('MONTH', start, 0, 'M');
	eom=intnx('MONTH', start, 0, 'E');

	
	soy=intnx('YEAR', start, 0, 'B');
	half_year=intnx('YEAR', start, 0, 'M');
	eoy=intnx('YEAR', start, 0, 'E');	
	
datalines;
31Jan2021
01Feb2021
01Jan2021
30Sep2021
31Dec2021
01Feb2022
08Feb2024
;run;

proc print data=datef;
format start date9.
	   tdy date9.
	   new_dt date9.
	   year_quarter date9.
	   som date9.
	   half_month date9.
	   eom date9.
	   soy date9.
	   half_year date9.
	   eoy date9.
;
run;