USE collegedb;

-- LAB SHEET 2: DML COMMANDS

-- Q1. Insert one student record
INSERT INTO Students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Riya Sharma', 'Rajesh Sharma', 20, 'Data Science', '2006-05-15', 2025, 'riya@gmail.com', 'Delhi', 1, 1);

-- Q2. Insert five student records using separate INSERT statements
INSERT INTO Students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Aarav Mehta', 'Rajiv Mehta', 19, 'Data Science', '2006-02-10', 2025, 'aarav@gmail.com', 'Delhi', 1, 1);

INSERT INTO Students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Ananya Singh', 'Vijay Singh', 20, 'Data Science', '2005-08-21', 2025, 'ananya@gmail.com', 'Meerut', 1, 1);

INSERT INTO Students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Kabir Verma', 'Suresh Verma', 19, 'Computer Science', '2006-01-17', 2025, 'kabir@gmail.com', 'Delhi', 2, 2);

INSERT INTO Students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Mehak Gupta', 'Amit Gupta', 20, 'Data Science', '2005-11-05', 2025, 'mehak@gmail.com', 'Roorkee', 1, 1);

INSERT INTO Students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Arjun Kumar', 'Manoj Kumar', 21, 'Cyber Security', '2004-07-12', 2025, 'arjun@gmail.com', 'Meerut', 3, 3);

-- Q3. Insert multiple student records using a single INSERT statement
INSERT INTO Students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Simran Kapoor', 'Rakesh Kapoor', 19, 'Data Science', '2006-03-12', 2025, 'simran@gmail.com', 'Delhi', 1, 1),
('Rahul Joshi', 'Anil Joshi', 20, 'Computer Science', '2005-06-25', 2025, 'rahul@gmail.com', 'Roorkee', 2, 2),
('Ishita Jain', 'Sanjay Jain', 19, 'Cyber Security', '2006-09-18', 2025, 'ishita@gmail.com', 'Meerut', 3, 3);

-- Q4. Insert employee records
INSERT INTO Employee
(EmployeeName, Salary, DepartmentID, ManagerID, JoiningDate)
VALUES
('Rahul Sharma', 45000, 1, NULL, '2025-07-10'),
('Priya Verma', 52000, 2, NULL, '2025-06-15'),
('Amit Kumar', 38000, 1, 1, '2025-08-20'),
('Neha Singh', 60000, 3, 2, '2025-05-12');

-- Q5. Insert department records
INSERT INTO Department
(DepartmentName)
VALUES
('Data Science'),
('Computer Science'),
('Cyber Security'),
('Artificial Intelligence');

-- Q6. Insert product records
INSERT INTO Product
(ProductName, Price, Quantity)
VALUES
('Laptop', 55000, 10),
('Mouse', 800, 25),
('Keyboard', 1500, 15),
('Monitor', 12000, 8);

-- Q7. Insert customer records
INSERT INTO Customer
(CustomerName, City, Email)
VALUES
('Rohit Sharma', 'Delhi', 'rohit@gmail.com'),
('Priya Singh', 'Meerut', 'priya@gmail.com'),
('Karan Gupta', 'Roorkee', 'karan@gmail.com'),
('Neha Verma', 'Delhi', 'neha@gmail.com');

-- Q8. Insert course records
INSERT INTO Course
(CourseName, Fees)
VALUES
('Data Science', 60000),
('Computer Science', 55000),
('Cyber Security', 65000),
('Artificial Intelligence', 70000);

-- Q9. Insert student record with all non-auto-generated columns
INSERT INTO Students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Aditya Malhotra', 'Vikas Malhotra', 20, 'Data Science', '2005-09-14', 2025, 'aditya@gmail.com', 'Delhi', 1, 1);

-- Q10. Insert student record with selected columns
INSERT INTO Students
(StudentName, Age, Branch, City)
VALUES
('Sneha Kapoor', 19, 'Data Science', 'Roorkee');

-- Q11. Update city of a particular student
UPDATE Students
SET City = 'Delhi'
WHERE StudentID = 102;

-- Q12. Update salary of a particular employee
UPDATE Employee
SET Salary = 50000
WHERE EmployeeName = 'Rahul Sharma';

-- Q13. Increase salary of all employees by 10%
UPDATE Employee
SET Salary = Salary * 1.10;

-- Q14. Increase price of all products by 5%
UPDATE Product
SET Price = Price * 1.05;

-- Q15. Change course of a particular student
UPDATE Students
SET CourseID = 2
WHERE StudentName = 'Riya Sharma';

-- Q16. Update department of a particular employee
UPDATE Employee
SET DepartmentID = 2
WHERE EmployeeName = 'Amit Kumar';

-- Q17. Update city of all students from Meerut to Delhi
UPDATE Students
SET City = 'Delhi'
WHERE City = 'Meerut';

-- Q18. Update fees of a particular course
UPDATE Course
SET Fees = 65000
WHERE CourseName = 'Data Science';

-- Q19. Update multiple columns of a student simultaneously
UPDATE Students
SET City = 'Roorkee',
    Branch = 'Computer Science'
WHERE StudentName = 'Riya Sharma';

-- Q20. Delete a particular student using StudentID
DELETE FROM Students
WHERE StudentID = 102;

-- Q21. Delete all students belonging to a particular city
DELETE FROM Students
WHERE City = 'Meerut';

-- Q22. Delete employees whose salary is below a specified amount
DELETE FROM Employee
WHERE Salary < 40000;

-- Q23. Delete products whose quantity is zero
DELETE FROM Product
WHERE Quantity = 0;

-- Q24. Delete records satisfying multiple conditions using OR
DELETE FROM Employee
WHERE Salary < 45000
   OR DepartmentID = 3;

-- Q25. Complete INSERT, UPDATE, DELETE sequence on Students
INSERT INTO Students
(StudentName, Age, Branch, City)
VALUES
('Test Student', 20, 'Data Science', 'Delhi');

SELECT * FROM Students;

UPDATE Students
SET City = 'Roorkee'
WHERE StudentName = 'Test Student';

SELECT * FROM Students;

DELETE FROM Students
WHERE StudentName = 'Test Student';

SELECT * FROM Students;
