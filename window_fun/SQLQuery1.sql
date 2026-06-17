use [learn1.2]


--over()

select name,branch , avg(marks) over(partition by branch ) AS AVG_marks
from marks

--lowest and highest marks from branch

select * , min(marks) over(partition by branch) AS minmarks,
max(marks) over(partition by branch) aS maxmarks
from marks

--find the student who have marks higher then the avg marks of their respective branch

select * from 
(
select *,avg(marks) over(partition by branch) as avg_marks
from marks ) t
where t.marks > t.avg_marks
