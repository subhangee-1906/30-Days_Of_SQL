/*
Enter your query here.
*/
Select round(MAX(lat_n)-min(lat_n) + max(long_w)-min(long_w), 4) from STATION;