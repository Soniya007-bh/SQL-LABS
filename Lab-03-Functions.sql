USE collegedb;
INSERT INTO students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Riya Sharma', 'Rajesh Sharma', 20, 'Data Science', '2006-05-15', 2025, 'riya@gmail.com', 'Delhi', 1, 1);
INSERT INTO students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Aarav Mehta', 'Rajiv Mehta', 19, 'Data Science', '2006-02-10', 2025, 'aarav@gmail.com', 'Delhi', 1, 1);

INSERT INTO students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Ananya Singh', 'Vijay Singh', 20, 'Data Science', '2005-08-21', 2025, 'ananya@gmail.com', 'Meerut', 1, 1);

INSERT INTO students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Kabir Verma', 'Suresh Verma', 19, 'Computer Science', '2006-01-17', 2025, 'kabir@gmail.com', 'Delhi', 2, 2);

INSERT INTO students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Mehak Gupta', 'Amit Gupta', 20, 'Data Science', '2005-11-05', 2025, 'mehak@gmail.com', 'Roorkee', 1, 1);

INSERT INTO students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Arjun Kumar', 'Manoj Kumar', 21, 'Cyber Security', '2004-07-12', 2025, 'arjun@gmail.com', 'Meerut', 3, 3);
INSERT INTO students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Simran Kapoor', 'Rakesh Kapoor', 19, 'Data Science', '2006-03-12', 2025, 'simran@gmail.com', 'Delhi', 1, 1),
('Rahul Joshi', 'Anil Joshi', 20, 'Computer Science', '2005-06-25', 2025, 'rahul@gmail.com', 'Roorkee', 2, 2),
('Ishita Jain', 'Sanjay Jain', 19, 'Cyber Security', '2006-09-18', 2025, 'ishita@gmail.com', 'Meerut', 3, 3);
INSERT INTO Employee
(EmployeeName, Salary, DepartmentID, ManagerID, JoiningDate)
VALUES
('Rahul Sharma', 45000, 1, NULL, '2025-07-10'),
('Priya Verma', 52000, 2, NULL, '2025-06-15'),
('Amit Kumar', 38000, 1, 1, '2025-08-20'),
('Neha Singh', 60000, 3, 2, '2025-05-12');
INSERT INTO Department
(DepartmentName)
VALUES
('Data Science'),
('Computer Science'),
('Cyber Security'),
('Artificial Intelligence');
INSERT INTO Product
(ProductName, Price, Quantity)
VALUES
('Laptop', 55000, 10),
('Mouse', 800, 25),
('Keyboard', 1500, 15),
('Monitor', 12000, 8);
INSERT INTO Customer
(CustomerName, City, Email)
VALUES
('Rohit Sharma', 'Delhi', 'rohit@gmail.com'),
('Priya Singh', 'Meerut', 'priya@gmail.com'),
('Karan Gupta', 'Roorkee', 'karan@gmail.com'),
('Neha Verma', 'Delhi', 'neha@gmail.com');
INSERT INTO Course
(CourseName, Fees)
VALUES
('Data Science', 60000),
('Computer Science', 55000),
('Cyber Security', 65000),
('Artificial Intelligence', 70000);
INSERT INTO Students
(StudentName, FatherName, Age, Branch, DOB, YearOfAdmission, Email, City, DepartmentID, CourseID)
VALUES
('Aditya Malhotra', 'Vikas Malhotra', 20, 'Data Science',
'2005-09-14', 2025, 'aditya@gmail.com', 'Delhi', 1, 1);
INSERT INTO Students
(StudentName, Age, Branch, City)
VALUES
('Sneha Kapoor', 19, 'Data Science', 'Roorkee');
UPDATE Students
SET City = 'Delhi'
WHERE StudentName = 'Sneha Kapoor';
UPDATE Employee
SET Salary = 50000
WHERE EmployeeName = 'Rahul Sharma';
Describe Students;
SELECT StudentID, StudentName, City
FROM Students
WHERE StudentName = 'Sneha Kapoor';
UPDATE Students
SET City = 'Delhi'
WHERE StudentID = 102;
SELECT StudentID, StudentName, City
FROM Students
WHERE StudentID = 102;
UPDATE Employee
SET Salary = 50000
WHERE EmployeeName = 'Rahul Sharma';
UPDATE Employee
SET Salary = Salary * 1.10;
UPDATE Product
SET Price = Price * 1.05;
SHOW WARNINGS;
DESCRIBE Product;
SELECT ProductID, ProductName, Price
FROM Product
LIMIT 10;
UPDATE Students
SET CourseID = 2
WHERE StudentName = 'Riya Sharma';
UPDATE Employee
SET DepartmentID = 2
WHERE EmployeeName = 'Amit Kumar';
UPDATE Students
SET City = 'Delhi'
WHERE City = 'Meerut';
UPDATE Course
SET Fees = 65000
WHERE CourseName = 'Data Science';
UPDATE Students
SET City = 'Roorkee',
Branch = 'Computer Science'
WHERE StudentName = 'Riya Sharma';
DELETE FROM Students
WHERE StudentID = 102;
DELETE FROM Students
WHERE City = 'Meerut';
DELETE FROM Employee
WHERE Salary < 40000;
DELETE FROM Product
WHERE Quantity = 0;
DELETE FROM Employee
WHERE Salary < 45000
OR DepartmentID = 3;
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


USE collegedb;
SELECT ABS(-25) AS AbsoluteValue;
-- Q2
SELECT ROUND(25.6789, 2) AS RoundedValue;
-- Q3
SELECT CEIL(25.3) AS CeilingValue,
       FLOOR(25.8) AS FloorValue;
       -- Q4
SELECT MOD(17, 5) AS Remainder;
-- Q5
SELECT EmployeeName,
       Salary,
       ROUND(Salary, -2) AS RoundedSalary
FROM Employee;
-- Q6
SELECT COUNT(*) AS TotalStudents
FROM Students;
-- Q7
SELECT SUM(Salary) AS TotalSalary
FROM Employee;
-- Q8
SELECT AVG(Salary) AS AverageSalary
FROM Employee;
-- Q9
SELECT MAX(Salary) AS HighestSalary
FROM Employee;
-- Q10
SELECT MIN(Salary) AS LowestSalary
FROM Employee;
-- Q11
SELECT StudentName,
       UPPER(StudentName) AS UpperName
FROM Students;
-- Q12
SELECT StudentName,
       LOWER(StudentName) AS LowerName
FROM Students;
-- Q13
SELECT StudentName,
       LENGTH(StudentName) AS NameLength
FROM Students;
-- Q14
SELECT StudentName,
       CONCAT('Student: ', StudentName) AS FullName
FROM Students;
-- Q15
SELECT StudentName,
       SUBSTRING(StudentName, 1, 4) AS FirstFourCharacters
FROM Students;
-- Q16
SELECT CAST(12345 AS CHAR) AS StringValue;
-- Q17
SELECT CAST('12345' AS UNSIGNED) AS NumericValue;
-- Q18
SELECT DATE_FORMAT('2026-09-27', '%d-%m-%Y') AS FormattedDate;
-- Q19
SELECT CAST(99.75 AS SIGNED) AS ConvertedValue;
-- Q20
SELECT CONVERT('2026-09-27', DATE) AS ConvertedDate;
-- Q21
SELECT CURRENT_DATE() AS CurrentDate;
-- Q22
SELECT
    YEAR(DOB) AS BirthYear,
    MONTH(DOB) AS BirthMonth,
    DAY(DOB) AS BirthDay
FROM Students;
-- Q23
SELECT StudentName,
       DATEDIFF(CURDATE(), DOB) AS DaysSinceBirth
FROM Students;
-- Q24
SELECT StudentName,
       DOB,
       DATE_ADD(DOB, INTERVAL 30 DAY) AS DateAfter30Days
FROM Students;
-- Q25
SELECT EmployeeName,
       JoiningDate,
       DATE_FORMAT(JoiningDate, '%d-%m-%Y') AS FormattedJoiningDate
FROM Employee;

