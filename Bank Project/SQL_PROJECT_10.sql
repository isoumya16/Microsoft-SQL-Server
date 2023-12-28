/*
Convert the ER Diagram to Table.
*/

--Creating a Database

CREATE DATABASE my_DB;

--Selecting the Database
USE my_DB;

--Creating "Branch" Table

CREATE TABLE Branch (
    b_name VARCHAR(255) PRIMARY KEY,
    b_city VARCHAR(255),
    Assets DECIMAL(10, 2)
);

--Creating "Account" Table

CREATE TABLE Account (
    Ac_no INT PRIMARY KEY,
    Balance DECIMAL(10, 2),
    b_name VARCHAR(255),
    FOREIGN KEY (b_name) REFERENCES Branch(b_name)
);

--Creating "Customer" Table

CREATE TABLE Customer (
    C_name VARCHAR(255) PRIMARY KEY,
    C_street VARCHAR(255),
    C_city VARCHAR(255)
);

--Creating "Loan" Table

CREATE TABLE Loan (
    L_no INT PRIMARY KEY,
    Amt DECIMAL(10, 2),
    b_name VARCHAR(255),
    FOREIGN KEY (b_name) REFERENCES Branch(b_name)
);

--Creating "Depositor Table

CREATE TABLE Depositor (
    Ac_no INT,
    C_name VARCHAR(255),
    PRIMARY KEY (Ac_no, C_name),
    FOREIGN KEY (Ac_no) REFERENCES Account(Ac_no),
    FOREIGN KEY (C_name) REFERENCES Customer(C_name)
);

--Creating "Borrower" Table

CREATE TABLE Borrower (
    L_no INT,
    C_name VARCHAR(255),
    PRIMARY KEY (L_no, C_name),
    FOREIGN KEY (L_no) REFERENCES Loan(L_no),
    FOREIGN KEY (C_name) REFERENCES Customer(C_name)
);

-- Insert into Branch table
INSERT INTO Branch (b_name, b_city, Assets) 
VALUES ('SBI Delhi', 'Delhi', 2000000.00),
       ('SBI Mumbai', 'Mumbai', 2500000.00),
       ('SBI Kolkata', 'Kolkata', 1800000.00),
       ('SBI Chennai', 'Chennai', 2200000.00),
       ('SBI Bangalore', 'Bangalore', 2100000.00),
       ('SBI Hyderabad', 'Hyderabad', 2300000.00),
       ('SBI Pune', 'Pune', 1900000.00),
       ('SBI Jaipur', 'Jaipur', 1700000.00),
       ('SBI Lucknow', 'Lucknow', 1600000.00),
       ('SBI Patna', 'Patna', 1500000.00);

-- Insert into Account table
INSERT INTO Account (Ac_no, Balance, b_name) 
VALUES (1001, 15000.00, 'SBI Delhi'),
       (1002, 20000.00, 'SBI Mumbai'),
       (1003, 25000.00, 'SBI Kolkata'),
       (1004, 30000.00, 'SBI Chennai'),
       (1005, 35000.00, 'SBI Bangalore'),
       (1006, 40000.00, 'SBI Hyderabad'),
       (1007, 45000.00, 'SBI Pune'),
       (1008, 50000.00, 'SBI Jaipur'),
       (1009, 55000.00, 'SBI Lucknow'),
       (1010, 60000.00, 'SBI Patna');

-- Insert into Customer table
INSERT INTO Customer (C_name, C_street, C_city) 
VALUES ('Rajesh Kumar', 'Janakpuri', 'Delhi'),
       ('Suresh Sharma', 'Andheri', 'Mumbai'),
       ('Ramesh Singh', 'Salt Lake', 'Kolkata'),
       ('Mahesh Gupta', 'T Nagar', 'Chennai'),
       ('Suresh Patel', 'Indiranagar', 'Bangalore'),
       ('Rajesh Mehta', 'Banjara Hills', 'Hyderabad'),
       ('Mahesh Desai', 'Koregaon Park', 'Pune'),
       ('Ramesh Chauhan', 'Malviya Nagar', 'Jaipur'),
       ('Suresh Verma', 'Gomti Nagar', 'Lucknow'),
       ('Rajesh Tiwari', 'Boring Road', 'Patna');

-- Insert into Loan table
INSERT INTO Loan (L_no, Amt, b_name) 
VALUES (2001, 5000.00, 'SBI Delhi'),
       (2002, 6000.00, 'SBI Mumbai'),
       (2003, 7000.00, 'SBI Kolkata'),
       (2004, 8000.00, 'SBI Chennai'),
       (2005, 9000.00, 'SBI Bangalore'),
       (2006, 10000.00, 'SBI Hyderabad'),
       (2007, 11000.00, 'SBI Pune'),
       (2008, 12000.00, 'SBI Jaipur'),
       (2009, 13000.00, 'SBI Lucknow'),
       (2010, 14000.00, 'SBI Patna');

-- Insert into Depositor table
INSERT INTO Depositor (Ac_no, C_name) 
VALUES (1001, 'Rajesh Kumar'),
       (1002, 'Suresh Sharma'),
       (1003, 'Ramesh Singh'),
       (1004, 'Mahesh Gupta'),
       (1005, 'Suresh Patel'),
       (1006, 'Rajesh Mehta'),
       (1007, 'Mahesh Desai'),
       (1008, 'Ramesh Chauhan'),
       (1009, 'Suresh Verma'),
       (1010, 'Rajesh Tiwari');

-- Insert into Borrower table
INSERT INTO Borrower (L_no, C_name) 
VALUES (2001, 'Rajesh Kumar'),
       (2002, 'Suresh Sharma'),
       (2003, 'Ramesh Singh'),
       (2004, 'Mahesh Gupta'),
       (2005, 'Suresh Patel'),
       (2006, 'Rajesh Mehta'),
       (2007, 'Mahesh Desai'),
       (2008, 'Ramesh Chauhan'),
       (2009, 'Suresh Verma'),
       (2010, 'Rajesh Tiwari');

	   SELECT * FROM [dbo].[Account]
	   SELECT * FROM [dbo].[Borrower]
	   SELECT * FROM [dbo].[Branch]
	   SELECT * FROM [dbo].[Customer]
	   SELECT * FROM [dbo].[Depositor]
	   SELECT * FROM [dbo].[Loan]