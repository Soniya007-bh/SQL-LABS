USE collegedb;
--Q1 Demonstrate ABS() with suitable examples.
SELECT ABS(-25) AS AbsoluteValue;
-- Q2 Demonstrate ROUND() with suitable examples.
SELECT ROUND(25.6789, 2) AS RoundedValue;
-- Q3 Demonstrate CEIL() and FLOOR().
SELECT CEIL(25.3) AS CeilingValue,
       FLOOR(25.8) AS FloorValue;
 -- Q4 Demonstrate MOD() with suitable examples.
SELECT MOD(17, 5) AS Remainder;
-- Q5 Calculate the rounded salary of employees.
SELECT EmployeeName,
       Salary,
       ROUND(Salary, -2) AS RoundedSalary
FROM Employee;
-- Q6 Find the total number of students using COUNT().
SELECT COUNT(*) AS TotalStudents
FROM Students;
-- Q7 Find the total salary of all employees using SUM().
SELECT SUM(Salary) AS TotalSalary
FROM Employee;
-- Q8 Find the average salary using AVG().
SELECT AVG(Salary) AS AverageSalary
FROM Employee;
-- Q9 Find the highest salary using MAX().
SELECT MAX(Salary) AS HighestSalary
FROM Employee;
-- Q10 Find the lowest salary using MIN().
SELECT MIN(Salary) AS LowestSalary
FROM Employee;
-- Q11 Demonstrate UPPER() on student names.
SELECT StudentName,
       UPPER(StudentName) AS UpperName
FROM Students;
-- Q12 Demonstrate LOWER() on student names.
SELECT StudentName,
       LOWER(StudentName) AS LowerName
FROM Students;
-- Q13 Demonstrate LENGTH() on student names.
SELECT StudentName,
       LENGTH(StudentName) AS NameLength
FROM Students;
-- Q14 Demonstrate CONCAT() using first and last names.
SELECT StudentName,
       CONCAT('Student: ', StudentName) AS FullName
FROM Students;
-- Q15 Demonstrate SUBSTRING()/SUBSTR() with suitable examples.
SELECT StudentName,
       SUBSTRING(StudentName, 1, 4) AS FirstFourCharacters
FROM Students;
-- Q16 Convert a number into a character/string value.
SELECT CAST(12345 AS CHAR) AS StringValue;
-- Q17 Convert a string into a numeric value.
SELECT CAST('12345' AS UNSIGNED) AS NumericValue;
-- Q18 Convert a date value into a different format.
SELECT DATE_FORMAT('2026-09-27', '%d-%m-%Y') AS FormattedDate;
-- Q19 Demonstrate CAST() with suitable examples.
SELECT CAST(99.75 AS SIGNED) AS ConvertedValue;
-- Q20 Demonstrate CONVERT() where supported by the DBMS.
SELECT CONVERT('2026-09-27', DATE) AS ConvertedDate;
-- Q21 Display the current date using a suitable date function.
SELECT CURRENT_DATE() AS CurrentDate;
-- Q22 Extract the year, month and day from a date.
SELECT
    YEAR(DOB) AS BirthYear,
    MONTH(DOB) AS BirthMonth,
    DAY(DOB) AS BirthDay
FROM Students;
-- Q23 Find the difference between two dates.
SELECT StudentName,
       DATEDIFF(CURDATE(), DOB) AS DaysSinceBirth
FROM Students;
-- Q24 Add a specified number of days to a date.
SELECT StudentName,
       DOB,
       DATE_ADD(DOB, INTERVAL 30 DAY) AS DateAfter30Days
FROM Students;
-- Q25 Display employees' joining dates in a required date format.
SELECT EmployeeName,
       JoiningDate,
       DATE_FORMAT(JoiningDate, '%d-%m-%Y') AS FormattedJoiningDate
FROM Employee;

