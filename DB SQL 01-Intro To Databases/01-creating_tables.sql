DROP TABLE IF EXISTS [OrderDetails];
DROP TABLE IF EXISTS [Order];
DROP TABLE IF EXISTS [BusinessEntity];
DROP TABLE IF EXISTS [Customer];
DROP TABLE IF EXISTS [Product];
DROP TABLE IF EXISTS [Employee];


CREATE TABLE [BusinessEntity]
(
[Id] [int] IDENTITY(1,1) NOT NULL,
[Name] [nvarchar](100),
[Region] [nvarchar](1000),
[Zipcode] [nvarchar](10),
[Size] [nvarchar](10)
);

CREATE TABLE [Employee]
(
[Id] [int] IDENTITY(1,1) NOT NULL,
[FirstName] [nvarchar](100) NOT NULL,
[LastName] [nvarchar](100) NOT NULL,
[DateOfBirth] [date],
[Gender] [nchar](1),
[HireDate] [date],
[NationalIdNumber] [nvarchar](20)
);

CREATE TABLE [Product]
(
[Id] [int] IDENTITY(1,1) NOT NULL,
[Code] [nvarchar](50),
[Name] [nvarchar](100),
[Description] [nvarchar](MAX),
[Weight] [decimal](18,2),
[Price] [decimal](18,2)
);

CREATE TABLE [Customer]
(
[Id] [int] IDENTITY(1,1) NOT NULL,
[Name] [nvarchar](100) NOT NULL,
[AccountNumber] [nvarchar](50),
[City] [nvarchar](100),
[RegionName] [nvarchar](100),
[CustomerSize] [nvarchar](10),
[PhoneNumber] [nvarchar](20),
[isActive] [bit]
);


CREATE TABLE [Order]
(
[Id] [int] IDENTITY(1,1) NOT NULL,
[OrderDate] [datetime],
[Status] [smallint],
[BusinessEntityId] [int],
[CustomerId] [int],
[EmployeeId] [int],
[TotalPrice] [decimal](18,2),
[Comment] [nvarchar](MAX)
);


CREATE TABLE [OrderDetails]
(
[Id] [int] IDENTITY(1,1) NOT NULL,
[OrderId] [bigint],
[ProductId] [int],
[Quantity] [int],
[Price] [decimal](18,2)
);
 
 
 --Inserting data into BusinessEntity
 INSERT INTO  [BusinessEntity] (Name,Region,Zipcode,Size)
 VALUES ('Migros Bitola', 'Bitolski', 7000, 'Large')

 INSERT INTO  [BusinessEntity] (Name,Region,Zipcode,Size)
 VALUES ('Migros 2', 'Bitolski', 7000, 'Medium')

 INSERT INTO  [BusinessEntity] (Name,Region,Zipcode,Size)
 VALUES ('Migros T', 'Tetovski', 1200, 'Large')

 INSERT INTO  [BusinessEntity] (Name,Region,Zipcode,Size)
 VALUES ('Migros K', 'Kicevski', 1650, 'Large')


  --Inserting data into Customer--

  INSERT INTO [Customer] (Name,AccountNumber,City,RegionName,CustomerSize,PhoneNumber,isActive)
  VALUES ('KAM Bitola',143532,'Bitola','Bitolski','Large',075467098,1)

  INSERT INTO [Customer] (Name,AccountNumber,City,RegionName,CustomerSize,PhoneNumber,isActive)
  VALUES ('Vero Centar',112587,'Bitola','Bitolski','Large',075721438,1)

  INSERT INTO [Customer] (Name,AccountNumber,City,RegionName,CustomerSize,PhoneNumber,isActive)
  VALUES ('Vero 2',112588,'Bitola','Bitolski','Large',075477098,1)

  INSERT INTO [Customer] (Name,AccountNumber,City,RegionName,CustomerSize,PhoneNumber,isActive)
  VALUES ('Angro Market 1',147589,'Bitola','Bitolski','Large',076859222,1)

  INSERT INTO [Customer] (Name,AccountNumber,City,RegionName,CustomerSize,PhoneNumber,isActive)
  VALUES ('Angro Market Dovledzik',156984,'Bitola','Bitolski','Medium',077255639,1)

  INSERT INTO [Customer] (Name,AccountNumber,City,RegionName,CustomerSize,PhoneNumber,isActive)
  VALUES ('TE-NI',258741,'Bitola','Bitolski','Small',075467098,1)


  --Inserting data into Employee

  INSERT INTO [Employee] (FirstName,LastName,DateOfBirth,Gender,HireDate,NationalIdNumber)
  VALUES ('Aneta','Atanasovska','1976-09-18','F','2005-06-07',6021)

  INSERT INTO [Employee] (FirstName,LastName,DateOfBirth,Gender,HireDate,NationalIdNumber)
  VALUES ('Biljana','Saveska','1994-12-01','F','2010-01-22',6035)

  INSERT INTO [Employee] (FirstName,LastName,DateOfBirth,Gender,HireDate,NationalIdNumber)
  VALUES ('Bojan','Arsovski','1977-11-11','M','2012-10-02',6066)

  INSERT INTO [Employee] (FirstName,LastName,DateOfBirth,Gender,HireDate,NationalIdNumber)
  VALUES ('Filip','Adzievski','1989-02-05','M','2018-01-25',6098)

  INSERT INTO [Employee] (FirstName,LastName,DateOfBirth,Gender,HireDate,NationalIdNumber)
  VALUES ('Violeta','Borisovska','1985-08-20','F','2018-01-27',6099)

  INSERT INTO [Employee] (FirstName,LastName,DateOfBirth,Gender,HireDate,NationalIdNumber)
  VALUES ('Svetlana','Jovanovska','1974-06-19','F','2018-02-09',6100)

  INSERT INTO [Employee] (FirstName,LastName,DateOfBirth,Gender,HireDate,NationalIdNumber)
  VALUES ('Goran','Trajkovski','1968-03-30','M','2016-08-20',6058)

  INSERT INTO [Employee] (FirstName,LastName,DateOfBirth,Gender,HireDate,NationalIdNumber)
  VALUES ('Zoran','Stojanovski','1995-09-02','M','2017-04-11',6068)

  INSERT INTO [Employee] (FirstName,LastName,DateOfBirth,Gender,HireDate,NationalIdNumber)
  VALUES ('Pece','Gorgievski','1980-12-28','M','2009-05-14',6100)


  --Inserting data into Product

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('White bread','WRB-01','White rolled bread',470,1.4)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('White bread','WSB-02','White sliced bread',470,1.4)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('White bread','WRSB-04','White rolled and sliced bread',470,1.5)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('White bread','WRTSB-06','White bread - thicker slices',470,1.3)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('White bread','WRFB-01','White sliced bread',400,1.1)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('White bread','WREFB-01','White bread with extended freshness',470,1.6)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('White bread','SWB-01','Small white bread',250,0.5)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('White bread','WBP-01','White bread paper',470,1.2)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('White bread','WRBP-01','White rolled bread paper',470,1.3)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('Half-White bread','HWB-01','Half white bread',470,1.3)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('Half-White bread','HWRB-01','Half white rolled bread',470,1.34)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('Half-White bread','HWSB-01','Half white sliced bread',470,1.34)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('Half-White bread','HWRSB-01','Half white rolled and sliced bread',470,1.36)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('Half-White bread','HWBP-01','Half white bread paper',470,1.28)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('Half-White bread','HWBPR-01','Half white rolled bread paper',470,1.31)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('Half-White bread','HWRBF-03','Half white bread',400,1.25)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('Half-White bread','HWRB-01','Half white rolled bread',470,1.34)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('Dietary bread','DFB-01','Dietary fibers sliced bread',470,1.7)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('Bakery bread','BCB-01','Bakery Classic bread',470,1.5)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('Bakery bread','BIB-01','Bakery Integral bread',470,1.5)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('Bakery bread','BVB-01','Bakery Village bread',470,1.5)

  INSERT INTO [Product] ([Name],Code,[Description],[Weight],Price)
  VALUES ('Bakery bread','BRB-01','Bakery Rustica bread',470,1.5)


  --Inserting data into Order
  --*github code*

  INSERT INTO [Order] ([OrderDate],[Status],[BusinessEntityId],[CustomerId],[EmployeeId],[TotalPrice],[Comment])
  SELECT '2019.05.01' as OrderDate, 0 as Status, b.Id , c.Id, e.Id, 0 as TotalPrice, N'' as comment
  FROM dbo.BusinessEntity b
  CROSS APPLY dbo.Customer c
  CROSS APPLY dbo.Employee e
  WHERE b.Id NOT IN (13,15)
  AND c.Id % 10 >3
  AND e.Id % 10 <7
  AND b.Region = c.RegionName

  UPDATE o SET OrderDate =  DATEADD(DD,-(Id%120),OrderDate)
  FROM [Order] o
  GO

  
  --Inserting data into OrderDetails
  --*github code*

  INSERT INTO [OrderDetails] (OrderId, ProductId,Quantity,Price)
  SELECT o.id,p.Id, 1 + (p.id + o.id) % 13,p.Price
  FROM [Order] o
  CROSS APPLY Product p 
  WHERE (o.id %2 + o.id %3 )= p.id % 11
  AND p.id % 10 NOT IN (3,4)
  AND o.id % 10 < 7
  GO

  ; WITH cte AS (
  SELECT o.Id, SUM(d.Quantity * d.Price) AS TotalPrice
  FROM [Order] o
  INNER JOIN [OrderDetails] d on o.Id = d.OrderId
  GROUP BY o.id 
 )
  UPDATE o SET TotalPrice = c.TotalPrice
  FROM dbo.[Order] o
  INNER JOIN cte c ON c.Id = o.id

 GO


 SELECT * FROM [BusinessEntity];
 SELECT * FROM [Customer];
 SELECT * FROM [Product];
 SELECT * FROM [Employee];
 SELECT * FROM [Order];
 SELECT * FROM [OrderDetails];


  






