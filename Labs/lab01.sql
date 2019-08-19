-- Checkout Customer table
SELECT Top(10) *
FROM SalesLT.Customer
;

--Create a list of all customer contact names that includes the title, first name, middle name (if any), last
--name, and suffix (if any) of all customers
SELECT Title, FirstName, ISNULL(MiddleName, 'None') AS MiddleName , LastName, ISNULL(Suffix, 'None') AS Suffix
FROM SalesLT.Customer
;

--sales person, phone no, customer name + suffix
SELECT Title+ LastName AS CustomerName, SalesPerson, Phone
;

-- customer id + company name after converting the customer if using CAST func
SELECT CAST (CustomerID AS CHAR)+CompanyName AS idandname
FROM SalesLT.Customer
;

-- sales orders and revisions using cast 
SELECT SalesOrderNumber +'(' + CAST (RevisionNumber AS char)+ ')' AS SalesOrderandRevNo
FROM SalesLT.SalesOrderHeader
;

--convert oder DATE TO ANSSI date time format 
-- Couldnt get this one to work
SELECT TOP(1)  
CONVERT(DateTime(8), OrderDate(), 126)
FROM SalesLT.SalesOrderHeader


SELECT TOP(1)  
   SYSDATETIME() AS UnconvertedDateTime,  
   CAST(SYSDATETIME() AS nvarchar(30)) AS UsingCast,  
   CONVERT(nvarchar(30), SYSDATETIME(), 126) AS UsingConvertTo_ISO8601  
FROM SalesLT.Customer;
;

-- Full name
SELECT FirstName + ISNULL(MiddleName,' ') + LastName AS FullName
FROM SalesLT.Customer
;


SELECT TOP(10) *
FROM SalesLT.Customer
;

-- Retrieve Primary contact detail after modifying the data using update 
UPDATE SalesLT.Customer SET EmailAddress = NULL WHERE CustomerID % 7 = 1;

SELECT CustomerID, ISNULL(EmailAddress, [Phone]) AS PrimaryContact
FROM SalesLT.Customer;


-- Replace Shipping Status, after data update using update 
UPDATE SalesLT.SalesOrderHeader SET ShipDate = NULL WHERE SalesOrderID > 71899;

SELECT CustomerID, ISNULL(EmailAddress, [Phone]) AS PrimaryContact
FROM SalesLT.SalesOrderHeader;

SELECT TOP(10)*
FROM SalesLT.SalesOrderHeader
;


























