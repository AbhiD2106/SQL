--sub query

use [learn1.2]

/*
select name , rating , score
from movies
order by score desc
*/

--OR
/*
--find highest  rating movie

select * from movies
where score = 
(select max(score) from movies)

*/

/*

(select max(score) from movies) = inner query
select * from movies where score = outer query 

inner execute first

types of subqueries :

1 . the result it returnsm - returnn in scaler = single value
										row = returns  valune in multiple row
										table = return table (metrix)
2 . based on working - independante = (select max(score) from movies) = runs without outer query
					   corelated = dependent on outer query


where we use subquery 

select , insert , update , delete

select = where , select , from , having

*/

/*
--------------------------------------------------------------------------------------------------
--scalar sub
1.. find the movie with higest profit 

select * from movies
where (gross - budget) = (select max( gross - budget ) from movies )

2. find how many movies have a rating > the avg of all the movies ratings

select count(*) from movies where score > 
(select avg(score) from movies)

3. find the highest rated movie in 2000

select * from movies
where year = 2000 and score = (
select max(score) from movies 
where year = 2000)

4. find the highest rated movie among all movies whose num of votes are > the dataset avg vote


select * 
from movies 
where score = (select max(score) 
from movies 
where votes > (select avg(votes) 
from movies))


--------------------------------------------------------------------------------------------------
*/


/*
--------------------------------------------------------------------------------------------------
--row subquery 
1. find all the user who never ordered


--------------------------------------------------------------------------------------------------
*/
select  * from 










