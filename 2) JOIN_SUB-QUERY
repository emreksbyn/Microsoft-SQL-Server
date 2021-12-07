--INNER JOIN

SELECT O.OrderID, ProductName, CategoryName, CompanyName
FROM Orders AS O
INNER JOIN [Order Details] AS OD
ON OD.OrderID = O.OrderID
INNER JOIN Products AS P
ON OD.ProductID = P.ProductID
INNER JOIN Categories AS C
ON C.CategoryID = P.CategoryID
INNER JOIN Suppliers AS S
ON S.SupplierID = P.SupplierID
ORDER BY O.OrderID
GO

SELECT O.OrderID, FirstName + ' ' + LastName AS Employee, C.CompanyName, ProductName, OD.UnitPrice, Quantity, S.CompanyName
FROM Orders AS O
INNER JOIN Employees AS E
ON O.EmployeeID = E.EmployeeID
INNER JOIN Customers AS C
ON O.CustomerID = C.CustomerID
INNER JOIN Shippers AS S
ON O.ShipVia = S.ShipperID
INNER JOIN [Order Details] AS OD
ON OD.OrderID = O.OrderID
INNER JOIN Products AS P
ON P.ProductID = OD.ProductID
GO

-- LEFT OUTER JOIN
SELECT ProductName, CategoryName
FROM Products AS P
LEFT OUTER JOIN Categories AS C
ON P.CategoryID = C.CategoryID
GO

-- RIGHT OUTER JOIN
SELECT ProductName, CategoryName
FROM Products AS P
RIGHT OUTER JOIN Categories AS C
ON P.CategoryID = C.CategoryID
GO

-- FULL OUTER JOIN 
SELECT ProductName, CategoryName
FROM Products AS P
FULL OUTER JOIN Categories AS C
ON P.CategoryID = C.CategoryID
GO

-- CROSS JOIN
SELECT ProductName, CategoryName
FROM Categories
CROSS JOIN Products
GO

-- UNION 
--> UNION DISTINCT OLARAK EKLEME YAPAR DEVRE DISI YAPMAK ICIN ALL YAZILR
SELECT CompanyName, CustomerID
FROM Customers
UNION --ALL 
SELECT CompanyName, Phone
FROM Suppliers
UNION --ALL
SELECT FirstName + ' ' + LastName,  HomePhone
FROM Employees
GO

-- SUB-QUERY (ALT SORGU)
SELECT *
FROM Products
WHERE CategoryID = 
(
SELECT CategoryID 
FROM Categories
WHERE CategoryName = 'Seafood'
)
GO

SELECT *
FROM Products
WHERE CategoryID != (SELECT CategoryID 
					 FROM Categories 
					 WHERE CategoryName = 'Seafood') 
AND SupplierID = (SELECT SupplierID 
				  FROM Suppliers 
				  WHERE CompanyName = 'Karkki Oy')
GO


-- INNER JOIN
SELECT ProductName, CategoryName
FROM Products AS P
INNER JOIN Categories AS C
ON P.CategoryID = C.CategoryID
GO

-- SUB-QUERY

SELECT ProductName, 
(
SELECT CategoryName 
FROM Categories 
WHERE CategoryID = Products.CategoryID
)
FROM Products
GO

SELECT ProductName, (SELECT CategoryName 
					 FROM Categories 
					 WHERE CategoryID = P.CategoryID) AS CategoryName
FROM Products AS P
GO

-- INNER JOIN & SUB-QUERY
SELECT Ürün, Kategori
FROM
(
SELECT ProductName AS Ürün, CategoryName AS Kategori
FROM Products AS P
INNER JOIN Categories AS C
ON P.CategoryID = C.CategoryID
) AS Tablo
GO
