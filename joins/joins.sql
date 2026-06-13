use [learn1.1]

--cross joins
/*
select * 
from users1 t1
cross join groups t2
*/
/*
--inner join

select * from membership t1
inner join users1 t2 
on t1.user_id = t2.user_id

--leftjoin

select * from membership t1
left join users1 t2 
on t1.user_id = t2.user_id

----right join

select * from membership t1
right join users1 t2 
on t1.user_id = t2.user_id




--full outer join

select * from membership t1
full outer join users1 t2 
on t1.user_id = t2.user_id
*/

/*
--self join
--compair 2 rows in same table

select c1.name ,c1.user_id , c1.emergency_contact , c2.name AS emergency_name
from users1 c1
join users1 c2
on c1.emergency_contact = c2.user_id

select *
from users1 c1
join users1 c2
on c1.emergency_contact = c2.user_id

*/

