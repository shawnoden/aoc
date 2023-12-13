USE master
GO
SET NOCOUNT ON

DROP TABLE IF EXISTS dbo.Numbers
CREATE TABLE dbo.Numbers (num bigint)
INSERT INTO dbo.Numbers (num)
SELECT N FROM fnTally(0,4294967296)

