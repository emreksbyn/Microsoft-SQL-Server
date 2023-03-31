-- SIK KULLANDIGIMIZ SORGULARI SANAL TABLOLARDA TUTMAMIZA YARAR.

CREATE VIEW vSatisRaporu
AS
SELECT (SELECT FirstName + ' ' + LastName FROM Employees WHERE EmployeeID = O.EmployeeID) AS [Çalısan], 
	     (SELECT ProductName FROM Products WHERE ProductID = OD.ProductID) AS [Ürün], 
		    SUM(Quantity) AS [Toplam Satış Adeti], 
		    SUM(Quantity * UnitPrice) AS [Toplam Satış Geliri]
FROM [Order Details] AS OD
INNER JOIN Orders AS O
ON OD.OrderID = O.OrderID
GROUP BY EmployeeID, ProductID
GO

SELECT *
FROM vSatisRaporu
ORDER BY [Toplam Satış Geliri] DESC

GO

-- VIEW ICINDE ORDER BY KULLANABILMEK ICIN TOP IFADESI KULLANMALIYIZ
ALTER VIEW vSatisRaporu
AS
SELECT TOP 100 PERCENT (SELECT FirstName + ' ' + LastName FROM Employees WHERE EmployeeID = O.EmployeeID) AS [Çalısan],
                       (SELECT ProductName FROM Products WHERE ProductID = OD.ProductID) AS [Ürün], 
                        SUM(Quantity) AS [Toplam Satış Adeti], 
                        SUM(Quantity * UnitPrice) AS [Toplam Satış Geliri]
FROM [Order Details] AS OD
INNER JOIN Orders AS O
ON OD.OrderID = O.OrderID
GROUP BY EmployeeID, ProductID
ORDER BY Ürün

GO

DROP VIEW vSatisRaporu
GO

--> VIEW ' E INSERT ISLEMI YAPABILMEK ICIN TEK BIR TABLODAN OLUSUYOR OLMASI GEREKIR.
-- AYRICA TURETILMIS KOLONDA OLMAMALIDIR.

CREATE VIEW vUrunStokDurumu
AS
SELECT ProductName, (UnitsInStock - UnitsOnOrder) AS [Siparişlere Göre Stok]
FROM Products
GO
