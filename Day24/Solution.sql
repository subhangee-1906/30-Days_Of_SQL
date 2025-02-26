/*
Enter your query here.
*/
Select distinct city from station where left(city,1) NOT IN ('a','e','i','o','u') and right(city,1) NOT IN ('a','e','i','o','u'); 