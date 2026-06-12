use learn
--having clause = filter for group by
/*
-- find the avg rating of smartphone brands that have more than 20 phones

select brand_name , 
count(*) as  count, 
avg(rating) as avg_rating
from smartphones
group by brand_name
having count(*) > 40
order by avg_rating desc
*/

--Find the top 3 brands with the highest avg ram that has
--a refresh rate of at least 90 Hz and fast charging available and don't consider brands that have less than 10 phones
select top 3 brand_name,
avg(ram_capacity) AS avg_ram
from smartphones
where refresh_rate > 90 and fast_charging = 1
group by brand_name
having COUNT(*) > 10
order by avg_ram desc


select * from smartphones