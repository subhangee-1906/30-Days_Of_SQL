# Write your MySQL query statement below
Select 
      s.student_id,
      s.student_name,
      sub.subject_name,
      COUNT(e.subject_name) as attended_exams
from Students s
cross join Subjects sub
Left Join Examinations e
on s.student_id = e.student_id && sub.subject_name = e.subject_name
group by s.student_id, s.student_name, sub.subject_name
order by s.student_id, sub.subject_name;