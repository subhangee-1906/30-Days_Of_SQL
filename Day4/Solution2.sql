# Write your MySQL query statement below
Select today.id from Weather yesterday
cross join Weather today
where datediff(today.recordDate,yesterday.recordDate) = 1
  && today.temperature > yesterday.temperature;