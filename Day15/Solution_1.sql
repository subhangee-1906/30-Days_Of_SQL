/*
Enter your query here.
*/
Select distinct CITY from STATION where 
LEFT (CITY,1) not in ('a','e','i','o','u','A','E','I','O','U');