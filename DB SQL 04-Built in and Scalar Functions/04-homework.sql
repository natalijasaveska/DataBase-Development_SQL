USE [SEDCACADEMYDB];

-- Ex.1 --

GO
DECLARE @FirstName NVARCHAR(100);
SET @FirstName = 'Antonio';

SELECT Id, FirstName, LastName FROM [Student]
WHERE FirstName = @FirstName;

-- Ex.2 --

GO
DECLARE @Student TABLE (ID INT, FirstName NVARCHAR(100), LastName NVARCHAR(100), DateOfBirth DATE);

INSERT INTO @Student 
SELECT [ID], [FirstName], [LastName], [DateOfBirth] FROM [Student]
WHERE [Student].Gender = 'F';

SELECT * FROM @Student
ORDER BY DateOfBirth;


-- Ex.3 --

GO
CREATE TABLE #MaleStudent (LastName NVARCHAR(100), EnrolledDate DATE);

INSERT INTO #MaleStudent
SELECT [LastName], [EnrolledDate] FROM [Student]
WHERE Gender = 'M' AND FirstName LIKE 'A%' AND LEN(LastName) = 7;

SELECT LastName FROM #MaleStudent;

-- CHECK IF THE RESULT IS CORRECT--

SELECT * FROM Student
ORDER BY LastName;


-- Ex.4 --

SELECT ID, FirstName, LastName FROM [Teacher]
WHERE LEN(FirstName) < 5 AND SUBSTRING(FirstName,1,3) = SUBSTRING(LastName,1,3); 