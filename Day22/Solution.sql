# Write your MySQL query statement below
Select sell_date,
   count(Distinct product) as num_sold,
   group_concat(distinct product order by product asc separator ',') products
  from activities 
  group by sell_date
  order by sell_date; 