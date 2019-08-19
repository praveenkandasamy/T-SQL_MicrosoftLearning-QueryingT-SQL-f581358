/****** Script for SelectTopNRows command from SSMS  ******/
SELECT DISTINCT *
FROM [SalesLT].[Product]

SELECT TOP (1000) [ProductID]
      ,[Name]
      ,[ProductNumber]
      ,[Color]
      ,[StandardCost]
      ,[ListPrice]
      ,[Size]
      ,[Weight]
      ,[ProductCategoryID]
      ,[ProductModelID]
      ,[SellStartDate]
      ,[SellEndDate]
      ,[DiscontinuedDate]
      ,[ThumbNailPhoto]
      ,[ThumbnailPhotoFileName]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [SalesLT].[Product]












/**** is nul****/
SELECT ISNULL(Color,'None') AS Color
FROM SalesLT.Product


--get disctint values
SELECT DISTINCT ISNULL(Color,'None') AS Color
FROM SalesLT.Product
ORDER BY Color
;

--get disctint values
SELECT DISTINCT ISNULL(Color,'None') AS Color, ISNULL(Size, '-') AS Size
FROM SalesLT.Product
ORDER BY Color
;

--get disctint values, this is what happens when you dont exclude null values
SELECT DISTINCT ISNULL(Color,'None') AS Color, Size AS Size
FROM SalesLT.Product
ORDER BY Color
;

--Display the first ten products by prod number
SELECT Name, ListPrice
FROM SalesLT.Product
ORDER BY ProductNumber OFFSET 0 Rows FETCH NEXT 10 ROWS ONLY
;

--Display the second ten
SELECT Name, ListPrice
FROM SalesLT.Product
ORDER BY ProductNumber OFFSET 10 Rows FETCH NEXT 10 ROWS ONLY
;

