------------------------------------------------------------------------------------------------

--timestamp

select CURRENT_TIMEZONE();
select CURRENT_DATE;
select CURRENT_TIMESTAMP as time;
select CURRENT_TIMEZONE_ID();
select SYSTEM_USER;

--extract fun

SELECT 
    YEAR(GETDATE()) AS YearValue,
    MONTH(GETDATE()) AS MonthValue,
    DAY(GETDATE()) AS DayValue,
    DATENAME(MONTH, GETDATE()) AS MonthName,
    DATENAME(WEEKDAY, GETDATE()) AS DayName,
    DATEPART(HOUR, GETDATE()) AS HourValue,
    DATEPART(MINUTE, GETDATE()) AS MinuteValue,
    DATEPART(SECOND, GETDATE()) AS SecondValue;


SELECT TOP 3 * FROM Employee;