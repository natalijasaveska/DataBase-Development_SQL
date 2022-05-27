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