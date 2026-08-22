CREATE TABLE employee(
  emp_id int,
  Name varchar(20),
  Dept varchar(20),
  Salary int,
  Gender varchar(20),
  Age int,
  City varchar(20),
  exp int
);

INSERT INTO employee VALUES
(101, 'RAHUL', 'HR', 30000, 'M', 19, 'Chennai' , 2 ),
(101, 'PRIYA', 'IT', 40000, 'F', 20, 'BANGLORE' , 5 ),
(101, 'ASHA', 'FINANCE', 50000, 'F', 18, 'DUBAI' , 10 ),
(101, 'ANITHA', 'HR', 60000, 'F', 25 , 'MUMBAI' , 1 ),
(101, 'VEERTHI', 'IT', 25000, 'F', 30, 'DELHI' , 8 ),
(101, 'DIVYA', 'HR', 10000, 'F', 50 , 'HYDERABAD' , 7 ),
(101, 'HARINI', 'FINANCE', 70000, 'F', 25 , 'COIMBATORE' , 12 );
SELECT * FROM employee;


SELECT Salary FROM employee;
SELECT Name FROM employee WHERE Dept = 'HR';
SELECT * FROM employee WHERE Gender = 'F';
SELECT * FROM employee WHERE Age = 30;
SELECT * FROM employee WHERE Salary > 50000;
SELECT * FROM employee WHERE Salary < 60000;
SELECT * FROM employee WHERE  Age <> 25;
SELECT * FROM employee WHERE Gender = 'F' AND  City = 'BANGLORE';
SELECT * FROM employee WHERE  City = 'BANGLORE' OR City = 'CHENNAI';
SELECT * FROM employee WHERE Salary > 40000 AND Salary < 80000 ;
SELECT * FROM employee WHERE Dept = 'HR' AND Dept = 'IT';
SELECT * FROM employee WHERE Name LIKE'A%' AND Name LIKE '%A';
SELECT * FROM employee WHERE Name LIKE'%A%' AND Name LIKE '_A%';



SELECT Name, Exp,
CASE
  WHEN Exp >= 10 THEN 'SENIOR'
  WHEN EXP >= 5 THEN 'MID LEVEL'
ELSE 'JUNIOR'
END AS CATEGORY
FROM employee;



SELECT Name, Salary,
CASE
  WHEN Salary < 50000 THEN 'ELIGIBLE'
ELSE 'NOT ELIGIBLE'
END AS BONUS_ELIGIBILITY
FROM employee;
