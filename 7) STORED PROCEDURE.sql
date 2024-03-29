--STORED PROCEDURE
-- SUREKLI CALISTIRILMASI ISTENEN KODLARI TEK BIR CATI ALTINDA TOPLARIZ. COK SIK YAPTIGIMIZ ISLEMLERI SP ' LER UZERINDEN YAPARIZ.

CREATE PROC uspUrunZamYap
(
@UrunID int,
@oran float
)
AS
UPDATE Products
SET UnitPrice = UnitPrice + (UnitPrice * @oran / 100)
WHERE ProductID = @UrunID

GO

EXEC uspUrunZamYap 17, 5
GO 

--***********************************************************************************************************************************


CREATE PROC uspCalisanEkle
(
@ID int OUTPUT,
@Adi nvarchar(20),
@Soyadi nvarchar(20)
)
AS
INSERT INTO Employees
(
FirstName,
LastName
)
VALUES
(
@Adi,
@Soyadi
)
SELECT @ID = SCOPE_IDENTITY()

GO


DECLARE @gelenID int
EXEC uspCalisanEkle @Adi = 'Emre', @Soyadi = 'KISABOYUN', @ID = @gelenID OUTPUT
GO

--**************************************************************************************************************************************


CREATE PROC uspToplamSatisGeliri
(
@EmployeeID int
)
AS
DECLARE @toplamSatis money

SELECT @toplamSatis = SUM(Quantity * UnitPrice) FROM [Order Details] AS OD
INNER JOIN Orders AS O
ON OD.OrderID = O.OrderID
WHERE EmployeeID = @EmployeeID
GROUP BY EmployeeID

RETURN @toplamSatis

GO

DECLARE @sonuc money
EXEC @sonuc = uspToplamSatisGeliri 1
PRINT @sonuc
GO
