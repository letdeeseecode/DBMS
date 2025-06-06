create database Employeedb;
use Employeedb;

#Create EmployeeTable
CREATE TABLE Employee (
empname VARCHAR(100) NOT NULL,
street VARCHAR(50),
city VARCHAR(50),
PRIMARY KEY (empname)
);

INSERT INTO EmployeeAddress (empname, street, city) VALUES
('Arjun B', 'ST2', 'Mumbai'),
('Ashwathama J', 'ST10', 'Pondichery'),
('Bheem E', 'ST5', 'Bangalore'),
('Dhritarastra H', 'ST8', 'Cochin'),
('Dhuryodhan G', 'ST7', 'Kolkata'),
('Gandhari I', 'ST9', 'Mysore'),
('Karn A', 'ST1', 'Delhi'),
('Krishna K', 'ST11', 'Chennai'),
('Nakul D', 'ST4', 'Pune'),
('Sehdev F', 'ST6', 'Guwahati'),
('Yudhistir C', 'ST3', 'Jharkhand');

#Create ManagerTable
CREATE TABLE EmployeeManager (
empname VARCHAR(100),
managername VARCHAR(100),
PRIMARY KEY (empname),
FOREIGN KEY (empname) references Employee(empname)
);

INSERT INTO EmployeeManager (empname, managername) VALUES
('Arjun B', 'Sudharshan M'),
('Bheem E', 'Bhishm N'),
('Karn A', 'Kunti X'),
('Nakul D', 'Hardik Y'),
('Yudhistir C', 'Bhishm N');

#Create CompanyTable
CREATE TABLE Company (
companyname VARCHAR(100) NOT NULL,
city VARCHAR(50) NOT NULL,
PRIMARY KEY (companyname)
);

INSERT INTO Company (companyname, city) VALUES
('Amazon', 'Bangalore'),
('First Bank Corporation', 'Bangalore'),
('Flipkart', 'Bangalore'),
('JP Morgan', 'Hyderabad'),
('Small Bank Corporation', 'Hyderabad'),
('Zepto', 'Hyderabad'),
('Zomato', 'Bangalore');

#Create WorksTable
CREATE TABLE EmployeeCompany (
empname VARCHAR(100) NOT NULL,
companyname VARCHAR(100) NOT NULL,
salary INT NOT NULL,
PRIMARY KEY (empname, companyname),
FOREIGN KEY (empname) references Employee(empname),
FOREIGN KEY (companyname) references Company (companyname)
);

INSERT INTO EmployeeCompany (empname, companyname, salary) VALUES
('Arjun B', 'First Bank Corporation', 30000),
('Ashwathama J', 'Zepto', 10000),
('Bheem E', 'First Bank Corporation', 70000),
('Dhritarastra H', 'JP Morgan', 60000),
('Dhuryodhan G', 'Flipkart', 10000),
('Gandhari I', 'Zomato', 50000),
('Karn A', 'Flipkart', 10000),
('Krishna K', 'Zomato', 20000),
('Nakul D', 'Amazon', 100000),
('Sehdev F', 'First Bank Corporation', 40000),
('Yudhistir C', 'Small Bank Corporation', 50000);
