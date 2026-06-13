--set operation

select * from person1
select * from person2

--union

select * from person1
union
select * from person2

--union all

select * from person1
union all
select * from person2



--intersection

select * from person1
intersect
select * from person2


--except

select * from person1
except
select * from person2


