
SELECT * FROM Student
SELECT * FROM Course
SELECT * FROM Teacher
SELECT * FROM AchievementType
SELECT * FROM Grade
SELECT * FROM GradeDetails


-- Homework --

-- Ex.1 --
SELECT Teacher.ID,FirstName, COUNT(Grade) AS TotalGrades FROM Grade
JOIN Teacher ON TeacherID = Teacher.ID
GROUP BY  Teacher.ID,Teacher.FirstName
ORDER BY Teacher.ID ASC


-- Ex.2 --
SELECT Teacher.ID,Teacher.FirstName, COUNT(Grade) AS TotalGrades FROM Grade
JOIN Teacher ON TeacherID = Teacher.ID
WHERE StudentID < 100
GROUP BY  Teacher.ID,Teacher.FirstName
ORDER BY FirstName


-- Ex.3 --
SELECT Student.ID,Student.FirstName, MAX(Grade) AS MaxGrade, AVG(Grade) AS AverageGrade FROM Grade
JOIN Student ON Student.ID = Grade.StudentID
GROUP BY  Student.ID,Student.FirstName


--Ex.4 --

SELECT Teacher.ID,Teacher.FirstName, COUNT(Grade) AS TotalGrades FROM Grade
JOIN Teacher ON TeacherID = Teacher.ID
GROUP BY  Teacher.ID,Teacher.FirstName
HAVING  COUNT(Grade) > 200
ORDER BY ID;


-- Ex.5 --

SELECT Student.ID,Student.FirstName,COUNT(Grade) AS TotalGrades, MAX(Grade) AS [Max Grade], AVG(Grade) AS [Average Grade] FROM Grade
JOIN Student ON Student.ID = Grade.StudentID
GROUP BY  Student.ID,Student.FirstName
HAVING MAX(Grade) = AVG(Grade)


-- Ex.6 --

CREATE OR ALTER VIEW vv_StudentGrades
AS
SELECT Student.ID, Student.FirstName, COUNT(Grade) AS TotalGrades FROM [dbo].Grade
JOIN [dbo].Student ON Grade.StudentID = Student.ID
GROUP BY Student.ID, Student.FirstName

SELECT * FROM  [dbo].vv_StudentGrades;


-- Ex.7 --

CREATE OR ALTER VIEW vv_StudentGrades
AS
SELECT Student.FirstName,Student.LastName, COUNT(Grade) AS TotalGrades FROM [dbo].Grade
JOIN [dbo].Student ON Grade.StudentID = Student.ID
GROUP BY Student.FirstName,Student.LastName

SELECT * FROM  vv_StudentGrades  
ORDER BY TotalGrades DESC;