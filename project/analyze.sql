use PortfolioProject

--select * from Deaths;

select * from Deaths
where continent is not null
Order by 3,4;

select * from vaccine
order by 3,4; 

select location , date, total_cases , new_cases , total_deaths , population 
from Deaths
where continent is not null
order by 1,2;

--toatal cases VS total deaths 

select location ,  date , total_cases , population , (total_cases/population)*100 as Death_percentage
from Deaths where location = 'India'
and continent is not null
order by 1,2;

-- looking at countries with highest infaction tate compare to population

select location, MAX( total_cases ) as highest_infaction , population ,
max((total_cases/population))*100 as percent_population_infaction
from Deaths
where continent is not null
group by location, population
order by percent_population_infaction desc;


--showing countries with highest death percount population

select location, max(cast(total_deaths as int )) as deathcount 
from Deaths
where continent is not null
group by location
order by deathcount desc;


--break things down by containent 

select location, max(cast(total_deaths as int )) as deathcount 
from Deaths
where continent is null
group by location
order by deathcount desc;
