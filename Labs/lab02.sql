--1. Retrieve a list of cities, has to be distinct
SELECT DISTINCT City, StateProvince
FROM [SalesLT].[Address]

--2. Retrieve the heaviest products, 10 %
SELECT TOP(10) Percent *
FROM SalesLT.Product
ORDER BY Weight DESC
;

--3. Retrieve the heaviest 100 products not including the heaviest ten
SELECT TOP(10) Percent *
FROM SalesLT.Product
ORDER BY Weight DESC
;






-- test code to view a table
SELECT TOP(10)*
FROM SalesLT.Product
;