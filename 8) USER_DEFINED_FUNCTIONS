--SP' LER GIBIDIRLER. YUKSEK PERFORMANS SAGLARLAR.

CREATE FUNCTION ufnTopla
(
@sayi1 float,     --> bunlar functıon un parametreleridir.
@sayi2 float
)
RETURNS float
AS
BEGIN
	RETURN @sayi1 + @sayi2
END
GO

SELECT dbo.ufnTopla(15.5, 25.5)
GO

--**********************************************************

CREATE FUNCTION ufnKdvliFiyat
(
@fiyat money
)
RETURNS money
AS
BEGIN
	RETURN @fiyat * 1.18
END
GO


SELECT ProductName AS Ürün, dbo.ufnKdvliFiyat(UnitPrice) AS [Kdv Dahil Fiyati]
FROM Products
GO

--*******************************************************

CREATE FUNCTION ufnCalisanBilgi
(
@EmployeeID int
)
RETURNS TABLE
AS
RETURN SELECT * FROM Employees WHERE EmployeeID = @EmployeeID
GO

SELECT FirstName, LastName FROM ufnCalisanBilgi(6)
GO

SELECT * FROM ufnUrun(17)
GO

--*******************************************************

--Sorgu sonucu etkilenen satır sayısının hesaplanıp gösterilmesi istenmiyorsa :
SET NOCOUNT ON
