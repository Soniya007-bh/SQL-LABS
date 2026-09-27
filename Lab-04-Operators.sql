USE collegedb;

-- Q1. Perform addition of two numbers using +.
SELECT 25 + 15 AS Addition;


-- Q2. Perform subtraction using -.
SELECT 25 - 15 AS Subtraction;


-- Q3. Perform multiplication using *.
SELECT 25 * 15 AS Multiplication;


-- Q4. Perform division using /.
SELECT 25 / 5 AS Division;


-- Q5. Calculate the total amount as Price × Quantity.
SELECT ProductName, Price, Quantity,
       Price * Quantity AS TotalAmount
FROM Product;


-- Q6. Demonstrate AND with two conditions.
SELECT *
FROM Students
WHERE Age > 18 AND City = 'Delhi';


-- Q7. Demonstrate OR with two conditions.
SELECT *
FROM Students
WHERE City = 'Delhi' OR City = 'Roorkee';


-- Q8. Demonstrate NOT with a condition.
SELECT *
FROM Students
WHERE NOT City = 'Delhi';


-- Q9. Find students belonging to a specific course AND city.
SELECT *
FROM Students
WHERE CourseID = 1 AND City = 'Delhi';


-- Q10. Find employees belonging to either of two departments.
SELECT *
FROM Employee
WHERE DepartmentID = 1 OR DepartmentID = 2;


-- Q11. Demonstrate the = operator.
SELECT *
FROM Students
WHERE City = 'Delhi';


-- Q12. Demonstrate the > operator.
SELECT *
FROM Employee
WHERE Salary > 50000;


-- Q13. Demonstrate the < operator.
SELECT *
FROM Employee
WHERE Salary < 50000;


-- Q14. Demonstrate >= and <=.
SELECT *
FROM Employee
WHERE Salary >= 45000 AND Salary <= 60000;


-- Q15. Demonstrate the <>/!= operator.
SELECT *
FROM Students
WHERE City <> 'Delhi';


-- Q16. Demonstrate BETWEEN for salary range.
SELECT *
FROM Employee
WHERE Salary BETWEEN 45000 AND 60000;


-- Q17. Demonstrate IN for selecting multiple cities.
SELECT *
FROM Students
WHERE City IN ('Delhi', 'Roorkee');


-- Q18. Demonstrate NOT IN.
SELECT *
FROM Students
WHERE City NOT IN ('Delhi', 'Roorkee');


-- Q19. Demonstrate LIKE for names beginning with a particular letter.
SELECT *
FROM Students
WHERE StudentName LIKE 'A%';


-- Q20. Demonstrate IS NULL and IS NOT NULL.
SELECT *
FROM Employee
WHERE ManagerID IS NULL;

SELECT *
FROM Employee
WHERE ManagerID IS NOT NULL;


-- Q21. Demonstrate UNION using two compatible queries.
SELECT StudentName AS Name
FROM Students
WHERE City = 'Delhi'
UNION
SELECT CustomerName AS Name
FROM Customer
WHERE City = 'Delhi';


-- Q22. Demonstrate UNION ALL.
SELECT StudentName AS Name
FROM Students
WHERE City = 'Delhi'
UNION ALL
SELECT CustomerName AS Name
FROM Customer
WHERE City = 'Delhi';


-- Q23. Demonstrate INTERSECT where supported by the DBMS.
SELECT City
FROM Students
INTERSECT
SELECT City
FROM Customer;


-- Q24. Demonstrate EXCEPT/MINUS where supported.
SELECT City
FROM Students
EXCEPT
SELECT City
FROM Customer;


-- Q25. Perform a suitable problem using multiple operators together, such as
-- Arithmetic + Logical + Comparison + Special operators.
SELECT ProductName,
       Price,
       Quantity,
       Price * Quantity AS TotalAmount
FROM Product
WHERE Price > 1000
  AND Quantity BETWEEN 5 AND 20
  AND ProductName LIKE '%o%';