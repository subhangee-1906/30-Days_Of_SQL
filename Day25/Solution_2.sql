/*
Enter your query here.
*/
Select
    distinct company_code,
    founder,
    count(distinct lead_manager_code),
    count(distinct senior_manager_code),
    count(distinct manager_code),
    count(distinct employee_code)
from employee
left join company
using(company_code)
group by 1, 2
order by 1, 2