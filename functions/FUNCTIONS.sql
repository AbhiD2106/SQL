--functions



--select upper(Empname) from employee;
--select lower(empname) from employee;

--select len(empname),empname from employee;

--select SUBSTRING(empname , 2 ,3),empname from employee;
 

--select CONCAT(empname , '  work in ' , department) from employee;

--SELECT EmpName, FORMAT(Salary, 'N0') FROM Employee;

--SELECT FORMAT(GETDATE(), 'dd-MM-yyyy');

--select empname, REPLACE(department,'IT','info Tech') from employee;

--trim : 
--SELECT EmpName, TRIM(EmpName) FROM Employee;


-- aggregate fun :

--select count(*) from employee;

--SELECT SUM(Salary) FROM Employee WHERE Department = 'Sales';

--SELECT MIN(Salary) FROM EMPLOYEE;
--SELECT MAX(Salary) FROM EMPLOYEE;
--SELECT AVG(Salary) FROM EMPLOYEE;

select top 2 * from employee;