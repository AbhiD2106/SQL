use learn


--clean

update smartphones set fast_charging = 0
where fast_charging IS NULL

update smartphones set extended_upto = 0
where extended_upto IS NULL

update smartphones set processor_brand = 'not mentioned' 
where processor_brand IS NULL 

update smartphones set os = 'ios'
where brand_name = 'apple'

update smartphones set primary_camera_front = 0
where primary_camera_front IS NULL 


--Grouping data

--1. Group smartphones by brand and get the count, average price, max rating, avg screen size, and avg battery capacity

select top 15 brand_name , count(model) AS num_phone , 
AVG(price) AS avg_price , 
max(rating) AS max_rating ,
round(avg(screen_size),2) AS avg_screensize , 
round(avg(battery_capacity),2) AS avg_battery
from smartphones
group by brand_name
order by num_phone desc;



--  Group smartphones by whether they have an NFC and get the average price and rating Avg price of 5g phones vs avg price of non 5g phones 


 select has_nfc,
avg(price) AS avg_price,
round(avg(rating),2) AS avg_rating
from smartphones
group by has_nfc

select has_5g,
avg(price) AS avg_price,
round(avg(rating),2) AS avg_rating
from smartphones
group by has_5g


--Analysis of Fast Charging Available

select fast_charging_available,avg(price) AS avg_price,
round(avg(rating),2) AS avg_rating
from smartphones
group by fast_charging_available


--Group smartphones by the extended memory available and get the average price

select extended_memory_available,
avg(price) as avg_price , 
round(avg(rating),2) AS avg_rating
from smartphones
group by extended_memory_available
*/

--GroupBY on multiple columns

--Group smartphones by the brand and processor brand and get the count of models and the average primary camera resolution (rear)

select brand_name,processor_brand,os,
count(*) AS num_phones,
round(avg(primary_camera_rear),2) AS avg_camera_resoulation
from smartphones
group by brand_name , processor_brand ,os
order by brand_name ASC;


--Find the top 5 most costly phone brands

select top 5 brand_name,
avg(price) AS avg_price
from smartphones
group by brand_name
order by avg_price desc


--Which brand makes the smallest-screen smartphones

select top 1 brand_name,
round(avg(screen_size),2) AS avg_screensize
from smartphones
group by brand_name
order by avg_screensize asc

--8. Group smartphones by the brand, and find the brand with the highest number of models that have both NFC and an IR blaster

select top 1 brand_name , count(*) AS count
from smartphones 
where has_nfc = 'True' AND has_ir_blaster = 'True'
group by brand_name
order by count desc 

--. Find all Samsung 5g enabled smartphones and find out the avg price for NFC and Non-NFC phones

select has_nfc,
avg(price) AS avg_price
from smartphones 
where brand_name = 'Samsung'
group by has_nfc


-- find the phone name , price of the costliest phones

select top 5 model , price 
from smartphones
order by price desc 


select top 5 brand_name  
from smartphones
order by price desc 

select * from smartphones