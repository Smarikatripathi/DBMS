/*
 * Create Database called office: */
CREATE DATABASE office;

/*
 * Use Database  office: */
USE office;

/* Create employee table */
CREATE TABLE employee(
	emp_name varchar(100) not null,
	street varchar(100),
	city varchar(100)
);

/* Create works table */
CREATE TABLE works(
	emp_name varchar (100) not null,
	company varchar(100) not null,
	salary int
);

/* Create company table */
CREATE TABLE company(
	comp_name varchar (100) not null,
	city varchar(100)
);

/* Create manages table */
CREATE TABLE manages(
	emp_name varchar(100) not null, 
	manager_name varchar(100) not null
);

/* Insert data into employee table */
INSERT INTO employee (emp_name, street, city) VALUES ('Ram Prasad Sharma', 'Bijaypur','Pokhara');
INSERT INTO employee (emp_name, street, city) VALUES ('Hari Aryal', 'Putalisadak','Kathmandu');
INSERT INTO employee (emp_name, street, city) VALUES ('Gita Paudel', 'Shantinagar','Kohalpur');
INSERT INTO employee (emp_name, street, city) VALUES ('Prakriti Paudel', 'Street 3','Kohalpur');


/* Insert data into company table */
INSERT INTO company (comp_name, city) VALUES ('ABC Pvt Ltd.', 'Kathmandu');
INSERT INTO company (comp_name, city) VALUES ('LP Consulting', 'Kathmandu');
INSERT INTO company (comp_name, city) VALUES ('XYZ Corporation', 'Kohalpur');
INSERT INTO company (comp_name, city) VALUES ('Softech Limited', 'Pokhara');


/* Insert data into works table */
INSERT INTO works (emp_name,company,salary) VALUES ('Ram Prasad Sharma', 'ABC Pvt Ltd', 10000);
INSERT INTO works (emp_name,company,salary) VALUES ('Gita Paudel', 'XYZ Corporation', 15000);
INSERT INTO works (emp_name,company,salary) VALUES ('Prakriti Paudel', 'Softech Limited', 15000);
INSERT INTO works (emp_name,company,salary) VALUES ('Hari Aryal', 'LP Consulting', 15000);

/* Insert data into manages table */
INSERT INTO manages (emp_name,manager_name) VALUES ('Gita Paudel','Ramesh Aryal');
INSERT INTO manages (emp_name,manager_name) VALUES ('Hari Aryal','Sita Sharma');
INSERT INTO manages (emp_name,manager_name) VALUES ('Ram Prasad Sharma','Safal Paudel');
INSERT INTO manages (emp_name,manager_name) VALUES ('Prakriti Paudel','Gita Pokhrel');
INSERT INTO manages (emp_name,manager_name) VALUES ('Hari Aryal','Ramesh Aryal');
INSERT INTO manages (emp_name,manager_name) VALUES ('Prakriti Paudel','Ramesh Aryal');



/* Find employee names that lives in the city same as the company city */
SELECT * FROM employee WHERE city IN (SELECT city FROM company);

/* List all employee details who earn more than 12000*/
SELECT employee.* FROM employee INNER JOIN works on employee.emp_name = works.emp_name WHERE salary > 12000;

/*Update salary of employee by 10% */

UPDATE works SET salary = salary + (salary * 10 / 100);

/*Create a view for which employee earns rs 12000 or more*/

/* METHOD 1 : because works and employee table has same field emp_name which may create error on calling both*/
CREATE VIEW uvw_EmployeeSalary
AS
SELECT employee.emp_name AS employee_name , works.* FROM employee INNER JOIN works ON employee.emp_name = works.emp_name WHERE works.salary >= 12000
GO

SELECT * FROM uvw_EmployeeSalary;

/* METHOD 2 : because works and employee table has same field emp_name which may create error on calling both*/
CREATE VIEW uvw_EmployeeSalary1
AS
SELECT employee.*, works.company, works.salary FROM employee INNER JOIN works ON employee.emp_name = works.emp_name WHERE works.salary >= 12000
GO

SELECT * FROM uvw_EmployeeSalary1;

/*DELETE those employee whose name starts from L*/
DELETE FROM employee WHERE emp_name LIKE 'L%';

SELECT * FROM employee ;
