/*
Enter your query here.
*/

Select N, case when P is null then 'Root' when N not in (Select P from BST where P is not null) then 'Leaf' else 'Inner' end as Type from BST order by N;