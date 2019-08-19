/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
  FROM [SalesLT].[Product]

  
  SELECT productnumber
  FROM [SalesLT].[Product]
  WHERE ProductNumber LIKE 'FR%';
