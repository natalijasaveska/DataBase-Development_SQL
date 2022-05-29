DROP TABLE IF EXISTS [Student];
DROP TABLE IF EXISTS [Teacher];
DROP TABLE IF EXISTS [Grade];
DROP TABLE IF EXISTS [Course];
DROP TABLE IF EXISTS [GradeDetails];
DROP TABLE IF EXISTS [AchievementType];


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
[Grade] [nchar](2),
[Comment] [nvarchar](MAX),
[CreatedDate] [date]
);

CREATE TABLE [Course]
(
[Id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
[Name] [nvarchar](100),
[Credit] [int],
[AcademicYear] [date],
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


--TABLE Student

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


--TABLE Teacher

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

--HOMEWORK 

SELECT *
FROM [Student]
WHERE FirstName = 'Antonio';

SELECT *
FROM [Student]
WHERE DateOfBirth > '1999-01-01';

SELECT *
FROM [Student]
WHERE FirstName LIKE 'J%' AND EnrolledDate LIKE '2016-01%';

SELECT * 
FROM [Student]
ORDER BY FirstName ASC;

SELECT LastName
FROM [Teacher]
UNION
SELECT LastName
FROM [Student];