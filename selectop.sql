/*
INSERT INTO Employee VALUES (1, 'Abhi', 22, 'Male', 'IT', 45000, 'Bengaluru');
INSERT INTO Employee VALUES (2, 'Riya', 24, 'Female', 'HR', 38000, 'Mumbai');
INSERT INTO Employee VALUES (3, 'Neha', 23, 'Female', 'Finance', 50000, 'Delhi');
INSERT INTO Employee VALUES (4, 'Raju', 26, 'Male', 'Sales', 42000, 'Chennai');
INSERT INTO Employee VALUES (5, 'Amit', 28, 'Male', 'IT', 60000, 'Hyderabad');
*/


--EXEC sp_help 'Employee';


--select EmpName , Salary from Employee;

--select EmpName , Department from Employee where Department = 'IT';
--select EmpName , Department  , salary from Employee where department = 'IT' AND Salary > 38000;

--limit & orderby:

--select * from Employee order by salary ASC ; 
--select * from Employee order by Empname desc;

-- SELECT TOP 3 * FROM Employee;

--SELECT * FROM Employee;

/*
CREATE TABLE Employee ( EmpID INT PRIMARY KEY,
                        EmpName VARCHAR(50), 
                        Age INT, Gender VARCHAR(10), 
                        Department VARCHAR(50), 
                        Salary INT,
                        City VARCHAR(50) );

BULK INSERT Employee
FROM 'E:\SQL\sql\commands\import_csv\employee_data.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
*/

select * from employee;