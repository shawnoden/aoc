USE master
GO
IF OBJECT_ID('[dbo].[FastPrimes]','TF') IS NULL
    EXEC('CREATE FUNCTION [dbo].[FastPrimes]() RETURNS @t TABLE(n int) BEGIN RETURN END')
GO
-- *****************************************************************
-- Author:      Jonathan Roberts
-- Create date: 3/4/2017
-- Description: Table Valued Function to return all prime numbers within a range.
--
-- Sample Call:
-- To find the all the primes between 1 and 100,000:
--     SELECT * FROM dbo.FastPrimes(100000, 1) 
-- To find the all the primes between 900,000 and 1,000,000:
--     SELECT * FROM dbo.FastPrimes(1000000, 900000) 
-- To count the how many primes between 2 and 1,000,000
--      SELECT COUNT(*) CountPrimes FROM dbo.FastPrimes(1000000, 2) 
-- *****************************************************************
ALTER FUNCTION [dbo].[FastPrimes]
(
    @Max int = 10000000,
    @Min int = 2
)
RETURNS @Primes TABLE(Prime int NOT NULL)
AS
BEGIN

    DECLARE @N table (N int NOT NULL PRIMARY KEY CLUSTERED, SqrtN int NOT NULL);

    -- Populate @N with filter to some easy to find numbers that have factors
      WITH L0 AS (SELECT 'Anything' N FROM (VALUES(0),(0),(0),(0),(0),(0),(0),(0),(0),(0),(0),(0),(0),(0),(0),(0),(0),(0)) AS T(N)), -- 15 values
           L1 AS (SELECT A.N FROM L0 A, L0 B, L0 C, L0 D, L0 E, L0 F, L0 G), -- 15^8  values (2562890625 more than enough for max value of int (2^31-1)
           L2 AS (SELECT TOP(IIF(@Max<61,0,@Max-60)) A.N FROM L1 A),
           L3 AS (SELECT ROW_NUMBER() OVER (ORDER BY N) + 60 N FROM L2)
    INSERT INTO @N(N, SqrtN)
    SELECT L3.N, SQRT(N)
      FROM L3
     WHERE N%6 IN(1,5) -- All primes above 3 take the form 6*n +/- 1 (where n is an integer)
       AND 0 NOT IN (N%5,N%7,N%11,N%13,N%17,N%19,N%23,N%29,N%31,N%37,N%41,N%43,N%47,N%53,N%59)  -- Not interested in anything dividable by these low primes
    ORDER BY N

    ;WITH CTE AS
    (
       SELECT N FROM (VALUES(2),(3),(5),(7),(11),(13),(17),(19),(23),(29),(31),(37),(41),(43),(47),(53),(59)) T(N) -- Add the primes we factored out
        UNION ALL
       SELECT X.N
         FROM @N AS X
        WHERE NOT EXISTS (SELECT *
                            FROM @N AS C
                           WHERE C.N <= X.SqrtN -- Only interested in numbers less than the square root of X.N as we don't need to find any higher multiple
                             AND 0 = X.N%C.N)
          AND X.N BETWEEN @Min AND @Max
    )
    INSERT INTO @Primes
    SELECT N
      FROM CTE
     WHERE CTE.N BETWEEN @Min AND @Max
     ORDER BY N

    RETURN
END
GO