CREATE TABLE EMPLOYEE (
  emp_id INT,
  name varchar(15),
  dept varchar(10),
  salary INT,
  age INT,
  gender varchar(1),
  city varchar(20),
  experience INT
);
INSERT INTO EMPLOYEE(emp_id,name,dept,salary,age,gender,city,experience)
VALUES 
(101,'RIYAS','IT',30000,21,'M','TRICHY',1),
(102,'RAHIL','HR',40000,19,'M','MADURAI',2),
(103,'RAJA','FINANCE',65000,20,'M','CHENNAI',5),
(104,'DEEPA','IT',12000,35,'F','NAMAKKAL',3),
(105,'HARINI','HR',20000,25,'F','KOCHI',2),
(106,'MADHAN','IT',70000,32,'M','PERAMBALUR',10),
(107,'BANU','FINANCE',45000,30,'F','ARIYALUR',11);


SELECT * FROM EMPLOYEE
ORDER BY salary DESC;

SELECT * FROM EMPLOYEE
ORDER BY name ASC;

SELECT * FROM EMPLOYEE
ORDER BY dept ASC, salary DESC;

SELECT DISTINCT city
FROM EMPLOYEE;

SELECT DISTINCT dept, age
FROM EMPLOYEE;

SELECT * FROM EMPLOYEE
LIMIT 3;

SELECT age, MAX(age) AS OLDEST_EMP
FROM EMPLOYEE 
GROUP BY age;

SELECT * FROM EMPLOYEE
ORDER BY age DESC
LIMIT 2;

SELECT * FROM EMPLOYEE
ORDER BY salary ASC
LIMIT 3;

SELECT dept, COUNT(dept) AS total_emp
FROM EMPLOYEE
GROUP BY dept;

SELECT dept, SUM(salary) AS total_salary
FROM EMPLOYEE
GROUP BY dept;

SELECT dept, AVG(salary) AS avg_salary
FROM EMPLOYEE
GROUP BY dept;

SELECT dept, MAX(salary) AS total_salary
FROM EMPLOYEE
GROUP BY dept;


SELECT dept, MIN(salary) AS total_salary
FROM EMPLOYEE
GROUP BY dept;


SELECT dept, COUNT(dept) AS total_emp, SUM(salary) AS total_salary, avg(salary) AS avg_salary
FROM EMPLOYEE
GROUP BY dept;


SELECT dept, AVG(salary) AS avg_salary
FROM EMPLOYEE
GROUP BY dept
HAVING AVG(salary)>30000;







