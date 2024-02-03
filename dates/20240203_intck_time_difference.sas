/*
	Calculate the difference between two dates in different units.
	
	Available intervals:
	
		+ date values are:

			- YEAR
			
			- SEMIYEAR
			
			- QTR
			
			- MONTH
			
			- SEMIMONTH
			
			- TENDAY
			
			- WEEK
			
			- WEEKDAY
			
			- DAY

		+ datetime values are:
		
			- HOUR
			
			- MINUTE
			
			- SECOND
			
	WARNING: dates must be written in date9. format: "19Dec2024"d
	
*/

data dtint;
input start date9. end date9.;
years=intck('YEAR', start, end);
semiyears=intck('SEMIYEAR', start, end);
quarters=intck('QTR', start, end);
months=intck('MONTH', start, end);
semimonths=intck('SEMIMONTH', start, end);
tendays=intck('TENDAY', start, end);
weeks=intck('WEEK', start, end);
weekdays=intck('WEEKDAY', start, end);
days=intck('DAY', start, end);
datalines;
01Jan202131Jan2021
01Jan202101Feb2021
01Jan202101Jan2021
01Jan202130Sep2021
01Jan202131Dec2021
01Jan202101Feb2022
01Feb202408Feb2024
;run;

proc print data=dtint;
format start date9. end date9.;
run;