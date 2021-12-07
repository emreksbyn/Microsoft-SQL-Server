-- DDL (CREATE - ALTER - DROP)

CREATE DATABASE TestDatabase
GO

-- > Nasıl bir database olacağını kendimiz belirlemek istediğimizde bu şekilde kodlarız.

CREATE DATABASE TestDatabase
ON PRIMARY
(
Name = 'TestDatabase_meta',
FileName = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TestDatabase.mdf',
Size = 10 MB,
MaxSize = UNLIMITED,
FileGrowth = 5 MB
)
LOG ON
(
Name = 'TestDatabase_log',
FileName = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TestDatabase.ldf',
Size = 2 MB,
MaxSize = 100 MB,
FileGrowth = 50 %
)
GO

ALTER DATABASE TestDatabase
MODIFY FILE
(
Name = 'TTestDatabase_meta',
Size = 20 MB
)
GO

DROP DATABASE TestDatabase
GO

CREATE TABLE Ogrenciler
(
OgrenciID int PRIMARY KEY IDENTITY(1,1),
Adi nvarchar(20) NOT NULL,
Soyadi nvarchar(20) NOT NULL,
Adresi nvarchar(255) NULL,
Telefonu char(14) NULL
)
GO

ALTER TABLE Ogrenciler
ADD GrupID int
GO

DROP TABLE Ogrenciler
GO


CREATE TABLE Gruplar
(
GrupID int IDENTITY(1,1),
Adi nvarchar(50) NOT NULL,
Suresi int NOT NULL CHECK(Suresi > 100),
LabSayisi int CHECK(LabSayisi > 0)
CONSTRAINT PK_GrupID PRIMARY KEY CLUSTERED (GrupID),
CONSTRAINT UQ_Adi UNIQUE (Adi)
)
GO

CREATE TABLE Ogrenciler
(
OgrenciID int IDENTITY(1,1),
Adi nvarchar(20) NOT NULL,
Soyadi nvarchar(20) NOT NULL,
Adresi nvarchar(255) NULL,
CepTelefonu char(14) NULL UNIQUE,
KayitTarihi datetime DEFAULT(GETDATE())
CONSTRAINT PK_OgrenciID PRIMARY KEY CLUSTERED (OgrenciID),
CONSTRAINT CK_KayitTarihi CHECK (KayitTarihi <= GETDATE())
)
GO

CREATE TABLE OgrencilerGruplar
(
GrupID int,
OgrenciID int,
CONSTRAINT PK_GrupID_OgrenciID PRIMARY KEY CLUSTERED (GrupID, OgrenciID),
CONSTRAINT FK_Gruplar_GrupID FOREIGN KEY (GrupID) REFERENCES Gruplar(GrupID),
CONSTRAINT FK_Ogrenciler_OgrenciID FOREIGN KEY (OgrenciID) REFERENCES Ogrenciler(OgrenciID)
)
GO

ALTER TABLE OgrencilerGruplar 
DROP CONSTRAINT FK_Ogrenciler_OgrenciID
GO

ALTER TABLE OgrencilerGruplar 
ADD CONSTRAINT FK_Ogrenciler_OgrenciID
FOREIGN KEY (OgrenciID) 
REFERENCES Ogrenciler(OgrenciID) 
ON DELETE CASCADE
ON UPDATE SET NULL
GO

ALTER TABLE Ogrenciler
ALTER COLUMN Adresi nvarchar(255) NOT NULL
GO
