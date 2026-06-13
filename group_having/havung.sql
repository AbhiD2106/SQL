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
/*
--Find the top 3 brands with the highest avg ram that has
--a refresh rate of at least 90 Hz and fast charging available and don't consider brands that have less than 10 phones

select top 3 brand_name,
avg(ram_capacity) AS avg_ram
from smartphones
where refresh_rate > 90 and fast_charging_available = 1
group by brand_name
having COUNT(*) > 10
order by avg_ram desc


--Find the avg price of all the phone brands with avg rating > 70 and num_phones more than 10 among all 5g enabled phones

select brand_name ,
avg(price) as avg_price
from smartphones
where has_5g = 'true'
group by brand_name
having avg(rating) > 70 AND COUNT(*)>10

*/
--select * from smartphones


--practice

--find the top 5 batsmen in IPL

select TOP 5 batter ,
sum(batsman_run) as run
from IPL
group by batter
order by run desc

--find the 2nd highest 6 hitters in IPL

select batter,
COUNT(*) as six
from IPL
where batsman_run = 6
group by batter
order by six desc
offset 1 Row
fetch next 1 row only

-- find the top 5 batsmen with the highest strike rate who have played a min of 1000 balls

SELECT TOP 5
    batter,
    SUM(batsman_run) AS runs,
    COUNT(*) AS balls,
    ROUND(SUM(batsman_run) * 100.0 / COUNT(*), 2) AS sr
FROM IPL
GROUP BY batter
HAVING COUNT(*) >= 1000
ORDER BY sr DESC;


