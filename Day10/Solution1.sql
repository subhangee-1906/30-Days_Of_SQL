select city, length(city) from station order by length(city) desc Limit 1;

select city, length(city) from station order by length(city), city asc Limit 1;