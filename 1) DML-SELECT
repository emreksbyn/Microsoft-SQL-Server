-- DML (DATA MANIPULATION LANGUAGE) (Veri Manipulasyon Dili)
-- SELECT , INSERT , UPDATE , DELETE


SELECT UPPER('emre')  --> hepsini büyük yapar.
SELECT LOWER('EMRE')  --> hepsini küçük yapar.
SELECT SUBSTRING('Emre KISABOYUN', 6, 9)   --> KISABOYUN
SELECT LEN('Emre KISABOYUN')  --> 14
SELECT SUBSTRING('Emre KISABOYUN', 1, LEN('Emre'))  --> Emre
SELECT TRIM('  EMRE  ') --> BASINDAKI VE SONUNDAKI BOSLUKLARI SILER
SELECT RTRIM('  EMRE  ') --> SAGINDAKI BOSLUKLARI SILER
SELECT LTRIM('  EMRE  ') --> SOLUNDAKI BOSLUKLARI SILER
SELECT REPLACE('EMRE KISABOYUN','KISABOYUN','UZUNBOYUN')  --> EMRE UZUNBOYUN
SELECT RIGHT('EMRE KISABOYUN',2) --> SAGDAN IKI KARAKTERI SECER
SELECT LEFT('EMRE KISABOYUN',2) --> SOLDAN IKI KARAKTERI SECER
SELECT REVERSE('EMRE KISABOYUN') --> TERSTEN YAZAR
GO



SELECT GETDATE()  -->  2021-12-07 09:54:04.757
SELECT YEAR(GETDATE())  --> 2021
SELECT MONTH(GETDATE())  --> 12
SELECT DAY(GETDATE()) --> 7
GO


SELECT CONVERT(VARCHAR, GETDATE()) --> Dec  7 2021  9:55AM

SELECT DATEADD(DAY, 10, GETDATE()) --> Bugüne 10 gün eklendi

SELECT DATEDIFF(YEAR, '06.08.1995', GETDATE())   --> 26  'mm.dd.yyyy'
GO


-- TABLO SORGULARI

SELECT FirstName+' '+LastName AS [AD SOYAD]
FROM Employees
GO



-- ISNULL('  ','   ')
SELECT FirstName + ' ' + LastName AS çalışan,
	   [Address] + ' - ' + City + ' - ' + ISNULL(Region, '') + ' / ' + UPPER(Country) AS Adresi
FROM Employees
GO


-- WHERE FILTRELEME
SELECT ProductID, ProductName,CategoryID
FROM Products
WHERE CategoryID = 1
GO


SELECT TOP 10 *
FROM Orders
WHERE DATEPART(YEAR, OrderDate) = 1998
GO


-- IN / BETWEEN / AND / OR / IS / NOT /LIKE
SELECT *
FROM Orders
WHERE Freight < 20 AND (EmployeeID = 1 OR EmployeeID = 3)
GO

SELECT *
FROM Orders
WHERE ShippedDate IS NOT NULL
GO


SELECT *
FROM Orders
WHERE ShipCountry IN('Germany', 'France', 'Italy')
GO


SELECT *
FROM Products
WHERE UnitPrice BETWEEN 20 AND 30
GO

SELECT FirstName + ' ' + LastName
FROM Employees WHERE FirstName LIKE '%an%'
GO

-- ORDER BY
SELECT ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC
GO

--                 AGGREGATE FUNCTIONS
-- COUNT() / SUM() / AVG() / MAX() / MIN()
SELECT COUNT(*)
FROM Orders
WHERE ShippedDate IS NULL
GO


SELECT SUM(UnitsInStock * UnitPrice)
FROM Products
GO

SELECT AVG(UnitPrice)
FROM Products
GO

SELECT MAX(UnitPrice)
FROM Products
GO

SELECT MIN(UnitPrice)
FROM Products
GO

--TOP
 SELECT TOP 3 OrderID, ProductID, Quantity
 FROM [order details] 
 ORDER BY quantity DESC
 GO
 -- WITH TIES
 SELECT TOP 3 WITH TIES OrderID, ProductID, Quantity
 FROM [order details] 
 ORDER BY Quantity DESC
 GO
 
 -- DISTINCT
SELECT DISTINCT Country
FROM Customers
GO

-- GROUP BY
SELECT TitleOfCourtesy, COUNT(EmployeeID)
FROM Employees
GROUP BY TitleOfCourtesy
GO

--HAVING 
SELECT ProductID, SUM(Quantity*UnitPrice) AS [Toplam Satış Geliri]
FROM [Order Details]
GROUP BY ProductID
HAVING SUM(UnitPrice*Quantity) > 15000
ORDER BY [Toplam Satış Geliri] DESC

