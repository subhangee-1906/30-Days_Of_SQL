/*
Enter your query here.
*/
Select distinct city from Station where 
right (city,1) not in ('a','e','i','o','u','A','E','I','O','U') 