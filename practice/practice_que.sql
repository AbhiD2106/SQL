use J2D_learn;

--Q1. Query all columns for all American cities in theCITY table with populations larger than 100000.

select * from CITY 
where COUNTRYCODE = 'USA' and POPULATION > 100000

--Q2. Query the NAME field for all American cities inthe CITY table with populations larger than 120000.

select NAME from CITY
where COUNTRYCODE = 'USA' and POPULATION > 120000

--Q3.Query all columns (attributes) for every row in the CITY table

select * from CITY

--Q4. Query all columns for a city in CITY with theID 20.

select * from CITY 
where id = 20

--Q5. Query all attributes of every Japanese city in the CITY table. 

select * from CITY
where COUNTRYCODE = 'JPN'

--Q6.Query the names of all the Japanese cities inthe CITY table

select NAME from CITY
where  COUNTRYCODE = 'JPN'

