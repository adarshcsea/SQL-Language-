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
INSERT INTO EMPLOYEE (emp_id,name,dept,salary,age,gender,city,experience)
VALUES 
(101,'RIYAS','IT',30000,21,'M','TRICHY',1),
(102,'RAHIL','HR',40000,19,'M','MADURAI',2),
(103,'RAJA','FINANCE',65000,20,'F','CHENNAI',5),
(104,'DEEPA','IT',120000,35,'F','BANGLORE',3),
(105,'HARINI','HR',20000,25,'F','KOCHI',2),
(106,'MADHAN','IT',70000,32,'M','PERAMBALUR',10),
(107,'BANU','FINANCE',450000,30,'F','ARIYALUR',11);


create view emp_details as 
select * from EMPLOYEE;
select * from emp_details;


create view emp_salary as 
SELECT name,salary FROM Employee;


create view emp_highsalaried as 
SELECT name,salary FROM EMPLOYEE where salary>60000;


create view emp_ITsalary as 
SELECT name,salary FROM EMPLOYEE where salary>40000 and dept='IT';


create view location_emp as 
select name, salary, city, dept from EMPLOYEE;
select * from location_emp where (city = 'CHENNAI' or 'BANGLORE') and salary > 55000;


create view female_emp as 
select name, salary, city, gender from EMPLOYEE;
select * from female_emp where gender = 'F' and city = 'CHENNAI' and salary > 60000;


create view avg_salary as 
select dept, avg(salary) as avg_salaries from EMPLOYEE
group by dept;


create view max_salary as 
select dept, max(salary) as max_salaries from EMPLOYEE
group by dept;


create view min_salary as 
select dept, min(salary) as min_salaries from EMPLOYEE
group by dept;


create view tot_salary as 
select dept, sum(salary) as tot_salaries from EMPLOYEE
group by dept;


create view emp_highavgsalaried as
SELECT dept, avg_salaries as high_avgsalaries FROM avg_salary where avg_salaries>60000;


create view tot_emp as 
select dept, count(name) as tot_employees from EMPLOYEE
group by dept;


create view emp_salary_updation as 
SELECT name, salary, dept FROM Employee;
select * from emp_salary_updation;


update emp_salary_updation
set salary = 1000000 
where dept = 'IT';
select salary as Updated_salary from emp_salary_updation;


select * from avg_salary;
select * from max_salary;
select * from min_salary;
select * from tot_salary;
select * from emp_highavgsalaried;
select * from tot_emp;


drop view emp_highavgsalaried;


create view info_view_one as 
select name, salary, dept from EMPLOYEE;


select name, salary from info_view_one
order by salary asc;


create view info_view_two as 
select name, salary, experience, dept from EMPLOYEE;


select * from info_view_two
where dept = 'IT' && salary > 45000
order by salary desc;