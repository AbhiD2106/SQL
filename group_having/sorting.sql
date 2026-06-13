--sorting data

use learn
/*

--top 5 mobile with big screen in desc order


select TOP 5 brand_name , screen_size , model 
from smartphones where brand_name = 'samsung'
order by screen_size desc


--sort all phones with desc order of num of total camaras 

select model , num_front_cameras , num_rear_cameras , num_front_cameras + num_rear_cameras AS total_Cameras
from smartphones 
order by total_Cameras desc;

*/
/*
--sort data on bases of ppi on desc order 
--ppi = pixcel per inch
--sqrt = square root

ALTER TABLE smartphones
ALTER COLUMN resolution_height BIGINT;
ALTER TABLE smartphones
ALTER COLUMN resolution_width BIGINT;

select model , 
ROUND(SQRT((resolution_width * resolution_width) + (resolution_height * resolution_height))/ screen_size ,2) AS PPI
from smartphones
order by PPI desc

*/


/*
OFFSET 1 ROWS
Means:
Skip first 1 row

FETCH NEXT 1 ROWS ONLY
Means:
Take only 1 row from remaining data


SELECT model, battery_capacity
FROM smartphones
ORDER BY battery_capacity DESC
OFFSET 0 ROWS
FETCH NEXT 1 ROWS ONLY;

--find the phone with 2nd largest battery

SELECT model, battery_capacity
FROM smartphones
ORDER BY battery_capacity DESC
OFFSET 1 ROWS
FETCH NEXT 1 ROWS ONLY;

SELECT model, battery_capacity
FROM smartphones
ORDER BY battery_capacity DESC


--2nd lowest battery

SELECT model, battery_capacity
FROM smartphones
ORDER BY battery_capacity ASC
OFFSET 1 ROWS
FETCH NEXT 1 ROWS ONLY;

*/


--find the name and rating of the worst rated apple phone 
/*
UPDATE smartphones
SET rating = 0
WHERE rating IS NULL;

select TOP 1 model , rating
from smartphones
where brand_name = 'apple'
order by rating ASC
*/

/*
--sort bases on 2 columns 
--sort peice and brand name

select *  from smartphones
order by brand_name ASC, price desc

*/

