# Write your MySQL query statement below
#replcing the employee Id with the unique Id using left join 
Select
EmployeeUNI.unique_id, Employees.name
from Employees
Left Join EmployeeUNI on Employees.id = EmployeeUNI.id;