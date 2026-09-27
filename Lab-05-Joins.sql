USE collegedb;


-- Q1. Demonstrate an INNER JOIN between Student and Department.
SELECT s.StudentName, d.DepartmentName
FROM Students s
INNER JOIN Department d
ON s.DepartmentID = d.DepartmentID;


-- Q2. Display student names along with their department names using INNER JOIN.
SELECT s.StudentName, d.DepartmentName
FROM Students s
INNER JOIN Department d
ON s.DepartmentID = d.DepartmentID;


-- Q3. Display employee names along with their department names.
SELECT e.EmployeeName, d.DepartmentName
FROM Employee e
INNER JOIN Department d
ON e.DepartmentID = d.DepartmentID;


-- Q4. Display students along with their course details.
SELECT s.StudentName, c.CourseName, c.Fees
FROM Students s
INNER JOIN Course c
ON s.CourseID = c.CourseID;


-- Q5. Find students belonging to a particular department using INNER JOIN.
SELECT s.StudentName, d.DepartmentName
FROM Students s
INNER JOIN Department d
ON s.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Data Science';


-- Q6. Demonstrate a LEFT OUTER JOIN between Student and Department.
SELECT s.StudentName, d.DepartmentName
FROM Students s
LEFT JOIN Department d
ON s.DepartmentID = d.DepartmentID;


-- Q7. Display all students, including those who do not have a matching department.
SELECT s.StudentName, d.DepartmentName
FROM Students s
LEFT JOIN Department d
ON s.DepartmentID = d.DepartmentID;


-- Q8. Demonstrate a RIGHT OUTER JOIN between Student and Department.
SELECT s.StudentName, d.DepartmentName
FROM Students s
RIGHT JOIN Department d
ON s.DepartmentID = d.DepartmentID;


-- Q9. Display all departments, including departments having no students.
SELECT d.DepartmentName, s.StudentName
FROM Students s
RIGHT JOIN Department d
ON s.DepartmentID = d.DepartmentID;


-- Q10. Find students who are not assigned to any department using LEFT JOIN.
SELECT s.StudentName
FROM Students s
LEFT JOIN Department d
ON s.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL;


-- Q11. Find departments having no students using RIGHT/LEFT JOIN.
SELECT d.DepartmentName
FROM Department d
LEFT JOIN Students s
ON d.DepartmentID = s.DepartmentID
WHERE s.StudentID IS NULL;


-- Q12. Demonstrate a FULL OUTER JOIN concept using suitable queries/workaround
-- where supported.
SELECT s.StudentName, d.DepartmentName
FROM Students s
LEFT JOIN Department d
ON s.DepartmentID = d.DepartmentID

UNION

SELECT s.StudentName, d.DepartmentName
FROM Students s
RIGHT JOIN Department d
ON s.DepartmentID = d.DepartmentID;


-- Q13. Demonstrate a CROSS JOIN between Student and Course.
SELECT s.StudentName, c.CourseName
FROM Students s
CROSS JOIN Course c;


-- Q14. Calculate the number of possible Student-Course combinations using CROSS JOIN.
SELECT COUNT(*) AS TotalCombinations
FROM Students s
CROSS JOIN Course c;


-- Q15. Demonstrate a NATURAL JOIN between two suitable tables.
SELECT *
FROM Students
NATURAL JOIN Department;


-- Q16. Compare the result of NATURAL JOIN and INNER JOIN.
-- NATURAL JOIN
SELECT *
FROM Students
NATURAL JOIN Department;

-- INNER JOIN
SELECT s.StudentID, s.StudentName,
       d.DepartmentID, d.DepartmentName
FROM Students s
INNER JOIN Department d
ON s.DepartmentID = d.DepartmentID;


-- Q17. Perform a SELF JOIN on an Employee table to show employee-manager
-- relationships.
SELECT e.EmployeeName AS Employee,
       m.EmployeeName AS Manager
FROM Employee e
LEFT JOIN Employee m
ON e.ManagerID = m.EmployeeID;


-- Q18. Display employees along with their managers using SELF JOIN.
SELECT e.EmployeeName AS EmployeeName,
       m.EmployeeName AS ManagerName
FROM Employee e
LEFT JOIN Employee m
ON e.ManagerID = m.EmployeeID;


-- Q19. Join three tables—Student, Department and Course.
SELECT s.StudentName,
       d.DepartmentName,
       c.CourseName
FROM Students s
INNER JOIN Department d
ON s.DepartmentID = d.DepartmentID
INNER JOIN Course c
ON s.CourseID = c.CourseID;


-- Q20. Display student name, course name and department name using multiple joins.
SELECT s.StudentName,
       c.CourseName,
       d.DepartmentName
FROM Students s
INNER JOIN Course c
ON s.CourseID = c.CourseID
INNER JOIN Department d
ON s.DepartmentID = d.DepartmentID;


-- Q21. Find employees whose salary is greater than the average salary of their
-- department using joins/subqueries.
SELECT e.EmployeeName,
       e.Salary,
       d.DepartmentName
FROM Employee e
INNER JOIN Department d
ON e.DepartmentID = d.DepartmentID
WHERE e.Salary >
      (
          SELECT AVG(e2.Salary)
          FROM Employee e2
          WHERE e2.DepartmentID = e.DepartmentID
      );


-- Q22. Find the department having the maximum number of students using joins and aggregation.
SELECT d.DepartmentName,
       COUNT(s.StudentID) AS TotalStudents
FROM Department d
LEFT JOIN Students s
ON d.DepartmentID = s.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY TotalStudents DESC
LIMIT 1;


-- Q23. Display departments and the total number of students in each department.
SELECT d.DepartmentName,
       COUNT(s.StudentID) AS TotalStudents
FROM Department d
LEFT JOIN Students s
ON d.DepartmentID = s.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName;


-- Q24. Display courses along with the number of students enrolled in each course.
SELECT c.CourseName,
       COUNT(s.StudentID) AS TotalStudents
FROM Course c
LEFT JOIN Students s
ON c.CourseID = s.CourseID
GROUP BY c.CourseID, c.CourseName;


-- Q25. Create a complete query using INNER JOIN, LEFT JOIN, GROUP BY and
-- aggregate functions to generate a student-department-course report.
SELECT d.DepartmentName,
       c.CourseName,
       COUNT(s.StudentID) AS TotalStudents,
       AVG(c.Fees) AS AverageCourseFees
FROM Department d
INNER JOIN Course c
ON d.DepartmentID = c.CourseID
LEFT JOIN Students s
ON s.DepartmentID = d.DepartmentID
AND s.CourseID = c.CourseID
GROUP BY d.DepartmentID, d.DepartmentName,
         c.CourseID, c.CourseName;