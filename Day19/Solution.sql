# Write your MySQL query statement below
select round(sum(tiv_2016), 2) as tiv_2016
from insurance
where tiv_2015 in (
    select tiv_2015 
    from insurance
    group by 1
    having count(*) > 1
)
and concat(lat, lon) not in (
    select concat(lat, lon) as dup
    from insurance
    group by 1
    having count(dup) > 1
)