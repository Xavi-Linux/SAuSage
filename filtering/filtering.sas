data houses;
set houseprices; /* read from a table in WORK library*/;
if price < 155000;
run;