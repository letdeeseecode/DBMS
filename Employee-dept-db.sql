create database employeedept;
use employeedept;

#EmployeeTable
CREATE TABLE Employee (
empno INT NOT NULL,
empname VARCHAR(100) NOT NULL,
street VARCHAR(100) NOT NULL,
city VARCHAR(50) NOT NULL,
job VARCHAR(50) NOT NULL,
hire_date DATE NOT NULL,
salary INT NOT NULL,
deptno INT NOT NULL,
PRIMARY KEY (empno)
);

INSERT INTO Employee (empno, empname, street, city, job, hire_date, salary, deptno) VALUES
(201, 'Amit Sharma', '45 MG Road', 'Mumbai', 'Manager', '1988-07-10', 158700, 1),
(202, 'Priya Iyer', '12 Anna Salai', 'Chennai', 'Software Engineer', '2005-06-15', 95000, 2),
(203, 'Rajesh Gupta', '78 Park Street', 'Kolkata', 'Analyst', '1995-09-25', 85000, 3),
(204, 'Neha Verma', '22 Connaught Place', 'Delhi', 'Marketing Executive', '2012-04-20', 75000, 4),
(205, 'Suresh Reddy', '18 Jubilee Hills', 'Hyderabad', 'Sales Executive', '2016-10-30', 65000, 5),
(206, 'Ananya Nair', '34 MG Road', 'Bangalore', 'HR Associate', '2019-12-05', 60000, 1),
(211, 'Rohit Deshmukh', '15 Andheri East', 'Mumbai', 'HR Specialist', '2023-02-15', 72000, 1);

#DepartmentTable
CREATE TABLE Department (
deptno INT NOT NULL,
dname VARCHAR(50) NOT NULL,
location VARCHAR(50) NOT NULL,
PRIMARY KEY(deptno),
FOREIGN KEY(deptno) references Employee(deptno)
);

INSERT INTO Department (deptno, dname, location) VALUES
(1, 'HR', 'Mumbai'),
(2, 'IT', 'Bangalore'),
(3, 'Finance', 'Delhi'),
(4, 'Marketing', 'Hyderabad'),
(5, 'Sales', 'Ahmedabad'),
(6, 'Research & Development', 'Pune'),
(7, 'Legal', 'Chandigarh');

**Queries**

