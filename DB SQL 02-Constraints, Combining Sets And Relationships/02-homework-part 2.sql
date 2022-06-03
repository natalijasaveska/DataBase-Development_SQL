DROP TABLE IF EXISTS [Student];
DROP TABLE IF EXISTS [Teacher];
DROP TABLE IF EXISTS [Grade];
DROP TABLE IF EXISTS [Course];
DROP TABLE IF EXISTS [GradeDetails];
DROP TABLE IF EXISTS [AchievementType];


-- Creating tables

CREATE TABLE [Student]
(
[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
[FirstName] [nvarchar](100),
[LastName] [nvarchar](100),
[DateOfBirth] [date],
[EnrolledDate] [date],
[Gender] [nchar](1),
[NationalIdNumber] [nvarchar](20)
);

CREATE TABLE [Teacher]
(
[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
[FirstName] [nvarchar](100),
[LastName] [nvarchar](100),
[DateOfBirth] [date],
[AcademicRank][nchar](2),
[HireDate] [date]
);

CREATE TABLE [Grade]
(
[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
[StudentId] [int],
[CourseId] [int],
[TeacherId] [int],
[Grade] [int],
[Comment] [nvarchar](MAX),
[CreatedDate] [datetime]
);

CREATE TABLE [Course]
(
[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
[Name] [nvarchar](100),
[Credit] [int],
[AcademicYear] [int],
[Semester] [nchar](2)
);

CREATE TABLE [GradeDetails]
(
[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
[GradeId] [int],
[AchievementId] [int],
[AchievementPoints] [int],
[AchievementMaxPoints] [int],
[AchievementDate] [date]
);

CREATE TABLE [AchievementType]
(
[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
[Name] [nvarchar](200),
[Description] [nvarchar](MAX),
[ParticipationRate] [int]
);


-- Inserting data into tables
-- TABLE Student

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Angela','Trajkovska','1999-02-11','2018-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Angel','Sotirovski','2000-06-12','2018-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Angela','Sotirovska','1997-08-25','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Angela','Mitrevska','2002-11-22','2020-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Andrea','Trajkovska','1998-02-22','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Andrea','Sotirovska','1996-04-11','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Andrea','Nikolovska','1997-12-11','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Andrej','Trajkovski','1998-02-11','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Andrej','Nikolovski','1998-02-11','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Andrej','Nikolovski','1996-12-01','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Andrej','Sovrevski','1989-07-13','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Andreja','Nisevska','1997-10-13','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Antonija','Ristevska','1989-07-13','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Antonio','Sovrevski','1998-07-22','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Antonio','Masakovski','1998-08-05','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Antonio','Nikolovski','1995-09-29','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Antonio','Trajcevski','1996-11-28','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Antonio','Ristov','1988-01-08','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Antonio','Risteski','1998-07-24','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Antonio','Kozareski','1995-07-17','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Jovan','Kozareski','1995-07-17','2016-09-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Jovana','Nikolovska','1995-07-17','2016-01-22');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Jovan','Gligorovski','1995-07-17','2016-01-22');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Jana','Nikolovska','1995-07-17','2016-01-30');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Jelena','Nikolikj','1995-07-17','2016-02-03');

INSERT INTO [Student] ([FirstName],[LastName],[DateOfBirth],[EnrolledDate])
VALUES ('Jovan','Trajkov','1995-07-17','2016-01-03');


-- TABLE Teacher

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Aneta','Ralevska');

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Anita','Sapkovska')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Andrea','Milosevska')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Aleksandar','Stojanov')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Aleksandar','Cvetanovski')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Aleksandra','Cvetkovska')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Olivera','Milevska')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Mitko','Panovski')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Grigor','Vukadinovski')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Mitra','Taskovska')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Sara','Ralevska')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Ljupco','Radevski')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Ljubomir','Trifunovski')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Violeta','Trifunovska')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Toni','Aleksovski')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Toni','Asalovski')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Zaneta','Milosevska')

INSERT INTO [Teacher] ([FirstName],[LastName])
VALUES ('Veronika','Pecakovska')


-- TABLE AchievementType

INSERT INTO [AchievementType] ([Name], [Description], [ParticipationRate]) 
VALUES (N'Domasni', NULL, 7)

INSERT INTO [AchievementType] ([Name], [Description], [ParticipationRate]) 
VALUES (N'Seminarska', NULL, 8)

INSERT INTO [AchievementType] ([Name], [Description], [ParticipationRate]) 
VALUES (N'Redovnost', NULL, 5)

INSERT INTO [AchievementType] ([Name], [Description], [ParticipationRate]) 
VALUES (N'Kolokvium1', NULL, 40)

INSERT INTO [AchievementType] ([Name], [Description], [ParticipationRate]) 
VALUES (N'Kolokvium2', NULL, 40)

INSERT INTO [AchievementType] ([Name], [Description], [ParticipationRate]) 
VALUES (N'Ispit', NULL, 80)


-- TABLE Course

INSERT INTO  [Course] ([Name], [Credit], [AcademicYear], [Semester]) 
VALUES (N'Бизнис и менаџмент', 6, 1, 1)	   

INSERT INTO [Course] ([Name], [Credit], [AcademicYear], [Semester]) 
VALUES (N'Вовед во компјутерските науки', 6, 1, 1)

INSERT INTO [Course] ([Name], [Credit], [AcademicYear], [Semester]) 
VALUES (N'Калкулус', 6, 1, 1)

INSERT INTO [Course] ([Name], [Credit], [AcademicYear], [Semester]) 
VALUES (N'Професионални вештини', 6, 1, 1)

INSERT INTO [Course] ([Name], [Credit], [AcademicYear], [Semester]) 
VALUES (N'Структурно програмирање', 6, 1, 1)  

INSERT INTO [Course] ([Name], [Credit], [AcademicYear], [Semester]) 
VALUES (N'Основи на веб дизајн', 6, 1, 2)	   

INSERT INTO [Course] ([Name], [Credit], [AcademicYear], [Semester]) 
VALUES (N'Архитектура и организација на компјутери', 6, 1, 2)	   

INSERT INTO [Course] ([Name], [Credit], [AcademicYear], [Semester]) 
VALUES (N'Дискретна математика', 6, 1, 2)	   

INSERT INTO [Course] ([Name], [Credit], [AcademicYear], [Semester]) 
VALUES (N'Објектно ориентирана анализа и дизајн', 6, 1, 2)	   

INSERT INTO [Course] ([Name], [Credit], [AcademicYear], [Semester]) 
VALUES (N'Објектно-ориентирано програмирање', 6, 1, 2)	   

INSERT INTO [Course] ([Name], [Credit], [AcademicYear], [Semester]) 
VALUES (N'Спорт и здравје', 6, 1, 2)	   

INSERT INTO [Course] ([Name], [Credit], [AcademicYear], [Semester]) 
VALUES (N'Инженерска математика', 6, 2, 3)


-- TABLE Grade

INSERT INTO [Grade] ([StudentID], [CourseID], [TeacherID], [Grade], [Comment], [CreatedDate]) 
VALUES (111, 8, 11, 10, N'Dobar', CAST(N'1999-02-05T00:00:00.000' AS DateTime))

INSERT INTO [Grade] ([StudentID], [CourseID], [TeacherID], [Grade], [Comment], [CreatedDate]) 
VALUES (111, 1, 1, 9, N'Komunikativen', CAST(N'1999-03-19T00:00:00.000' AS DateTime))   

INSERT INTO [Grade] ([StudentID], [CourseID], [TeacherID], [Grade], [Comment], [CreatedDate]) 
VALUES (111, 2, 2, 10, N'Neredoven', CAST(N'1998-07-13T00:00:00.000' AS DateTime))

INSERT INTO [Grade] ([StudentID], [CourseID], [TeacherID], [Grade], [Comment], [CreatedDate]) 
VALUES (111, 3, 3, 10, N'Neispolnitelen', CAST(N'1998-11-08T00:00:00.000' AS DateTime))

INSERT INTO [Grade] ([StudentID], [CourseID], [TeacherID], [Grade], [Comment], [CreatedDate]) 
VALUES (111, 4, 4, 8, N'Snaodliv', CAST(N'1998-09-01T00:00:00.000' AS DateTime))

INSERT INTO [Grade] ([StudentID], [CourseID], [TeacherID], [Grade], [Comment], [CreatedDate]) 
VALUES (111, 5, 5, 10, N'Neredoven', CAST(N'1999-08-03T00:00:00.000' AS DateTime))

INSERT INTO [Grade] ([StudentID], [CourseID], [TeacherID], [Grade], [Comment], [CreatedDate]) 
VALUES (111, 6, 6, 10, N'Komunikativen', CAST(N'1999-07-16T00:00:00.000' AS DateTime))

INSERT INTO [Grade] ([StudentID], [CourseID], [TeacherID], [Grade], [Comment], [CreatedDate]) 
VALUES (111, 7, 7, 9, N'Dobar', CAST(N'1999-02-22T00:00:00.000' AS DateTime))

-- Homework - part 2

ALTER TABLE [Grade]
ADD CONSTRAINT [FK_Grade_Course] FOREIGN KEY([CourseId])
REFERENCES [Course]([Id]);

SELECT [Course].[Name]
FROM [Course]
UNION
SELECT [AchievementType].[Name]
FROM [AchievementType];



SELECT * FROM [Student];
SELECT * FROM [Teacher];
SELECT * FROM [AchievementType];
SELECT * FROM [Grade];
SELECT * FROM [GradeDetails];
SELECT * FROM [Course];

ALTER TABLE [Grade]
ADD CONSTRAINT [FK_Grade_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [Teacher]([Id]);


SELECT [Teacher].[FirstName], SUM([Grade].Grade) AS TotalGrade FROM [Grade]
JOIN [Teacher] ON [Grade].TeacherId = [Teacher].Id
GROUP BY [Teacher].[FirstName]
