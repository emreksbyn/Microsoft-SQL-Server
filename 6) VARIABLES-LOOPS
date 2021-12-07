-- VARIABLES

--1) SET 

DECLARE @isim nvarchar(20)
SET @isim = 'Emre'
PRINT @isim
GO


DECLARE @dogumTarihi datetime

--SET @dogumTarihi = BirthDate FROM Employees WHERE EmployeeID = 1 --HATA VERIR.

SET @dogumTarihi = (SELECT BirthDate FROM Employees WHERE EmployeeID = 1)

PRINT @dogumTarihi

GO


--2) SELECT
DECLARE @sayi int
SELECT @sayi = 15
PRINT @sayi
GO


DECLARE @dogumTarihi datetime

SELECT @dogumTarihi = BirthDate FROM Employees WHERE EmployeeID = 1

PRINT @dogumTarihi

GO



--LOOPS


-- IF

IF((SELECT AVG(UnitPrice) FROM Products) < 50)
	BEGIN
		UPDATE Products
		SET UnitPrice = UnitPrice + (UnitPrice * 0.05)
	END
ELSE
	BEGIN
		UPDATE Products
		SET UnitPrice = UnitPrice - (UnitPrice * 0.1)
	END

GO

DECLARE @ortalama money 
DECLARE @oran float

SELECT @ortalama = AVG(UnitPrice) FROM Products

IF(@ortalama < 50)
	BEGIN
		SET @oran = 1.05
	END
ELSE
	BEGIN
		SET @oran = 0.9
	END
UPDATE Products
SET UnitPrice = UnitPrice * @oran

GO

--> EXISTS IF ILE BIRLIKTE KULLANILIR TRUE YADA FALSE DONER.

IF(NOT EXISTS(SELECT * FROM Employees WHERE FirstName = 'Emre' AND LastName = 'KISABOYUN'))
	BEGIN
		INSERT INTO Employees
		(
		FirstName,
		LastName
		)
		VALUES
		(
		'Emre',
		'KISABOYUN'
		)
	END
ELSE
	BEGIN
		SELECT * FROM Employees WHERE FirstName = 'Emre' AND LastName = 'KISABOYUN'
	END

GO

-- CASE - WHEN

SELECT ProductName , UnitsInStock ,
		CASE
			WHEN UnitsInStock < 10
			THEN 'Kritik Stok'
			WHEN UnitsInStock >= 10
			THEN 'Problem Yok'
		END AS [ Stok Durumu]
FROM Products ;		
GO


-- WHILE

DECLARE @sayi int = 1 -- BU SEKILDE DOGRUDAN DEGISKENE DEGER ATANABILIR.
--SET @sayi = 1

WHILE(@sayi <= 10)
	BEGIN
		PRINT @sayi
		SET @sayi +=1
	END

GO
