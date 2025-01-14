# Write your MySQL query statement below
Select 
    e.name
from 
    Employee e
Join 
    (Select 
         managerId, 
         Count(*) as report_count
     from 
         Employee
     where 
         managerId is not null
     group by 
         managerId
     having 
         Count(*) >= 5
    ) m
on 
    e.id = m.managerId;