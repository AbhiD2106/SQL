--sub query

use [learn1.2]


select name , rating , score
from movies
order by score desc


--OR

--find highest  rating movie

select * from movies
where score = 
(select max(score) from movies)


(select max(score) from movies) = inner query
select * from movies where score = outer query 

inner execute first

/*
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


--------------------------------------------------------------------------------------------------
--scalar sub
--1.. find the movie with higest profit 

select * from movies
where (gross - budget) = (select max( gross - budget ) from movies )

--2. find how many movies have a rating > the avg of all the movies ratings

select count(*) from movies where score > 
(select avg(score) from movies)

--3. find the highest rated movie in 2000

select * from movies
where year = 2000 and score = (
select max(score) from movies 
where year = 2000)

--4. find the highest rated movie among all movies whose num of votes are > the dataset avg vote


select * 
from movies 
where score = (select max(score) 
from movies 
where votes > (select avg(votes) 
from movies))


--------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------
--row subquery 

--1. find all the user who never ordered
distinct = remove duplicate and make it in ordered

select  * from users where user_id not in
(select distinct(user_id) from orders)

--2. find all the movies made by top 3 directors (terms of total gross income)

SELECT *
FROM movies
WHERE director IN (
    SELECT TOP 3 director
    FROM movies
    GROUP BY director
    ORDER BY SUM(gross) DESC
);

--3. find all movies of all those whose filmography's avg rating > 8.5 (take 25000 votes as countoff)

select * from movies where 
star in (
select star from movies
where votes > 25000
group by star
having AVG(score) > 8.5) 

--------------------------------------------------------------------------------------------------

--table subquery
--------------------------------------------------------------------------------------------------

--1. find most profitable movie of each  year

SELECT *
FROM movies m
WHERE (gross - budget) = (
    SELECT MAX(gross - budget)
    FROM movies
    WHERE year = m.year
);


--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--corelated subq

--both sub and outer are connected

--1. find all the movies that have a rating higher then the avg rating of movies in same genere


select * from movies m1
where score > (select avg(score) from movies m2 where m2.genre = m1.genre)

--2. find the fav food of each customer

;with fav_food AS(

    select t2.user_id , t1.name , t4.f_name , count(*) AS total_Num 
    from users t1
    join orders t2 on t1.user_id = t2.user_id
    join order_details t3 on t2.order_id = t3.order_id
    join food t4 on t3.f_id = t4.f_id
    group by t2.user_id ,  t1.name , t4.f_name

)

select * from fav_food f1
where  total_Num = ( select MAX(total_Num) from fav_food f2  
                        where f1.user_id = f2.user_id ) 

--------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------
--select
--1. get the percentage of votes or each movie compaired to rhe total  num of votes

select name , (votes/(select sum( votes ) from movies)) * 100 from movies
order by name asc

--2. dis movie name , genere , score , avg score of genere
select name , genre , score , 
(select avg(score) from movies m2 where m2.genre=m1.genre)  AS avg_score
from movies m1

--from

--1. dis avg rating of all resto

select r_name , avg_rating from
(
select r_id , avg(restaurant_rating) as avg_rating from orders
group by r_id
)t1 join restaurants t2
on t1.r_id = t2.r_id







