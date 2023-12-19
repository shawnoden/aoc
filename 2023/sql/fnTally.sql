USE dev
GO

CREATE FUNCTION [dbo].[fnTally]
/**********************************************************************************************************************
 Purpose:
 Return a column of BIGINTs from @ZeroOrOne up to and including @MaxN with a max value of 10 Quadrillion.

 Usage:
--===== Syntax example
 SELECT t.N
   FROM dbo.fnTally(@ZeroOrOne,@MaxN) t
;
 @ZeroOrOne will internally conver to a 1 for any number other than 0 and a 0 for a 0.
 @MaxN has an operational domain from 0 to 4,294,967,296. Silent truncation occurs for larger numbers.

 Please see the following notes for other important information

 Notes:
 1. This code works for SQL Server 2008 and up.
 2. Based on Itzik Ben-Gan's cascading CTE (cCTE) method for creating a "readless" Tally Table source of BIGINTs.
    Refer to the following URL for how it works.
    https://www.itprotoday.com/sql-server/virtual-auxiliary-table-numbers
 3. To start a sequence at 0, @ZeroOrOne must be 0. Any other value that's convertable to the BIT data-type
    will cause the sequence to start at 1.
 4. If @ZeroOrOne = 1 and @MaxN = 0, no rows will be returned.
 5. If @MaxN is negative or NULL, a "TOP" error will be returned.
 6. @MaxN must be a positive number from >= the value of @ZeroOrOne up to and including 4,294,967,296. If a larger
    number is used, the function will silently truncate after that max. If you actually need a sequence with that many
    or more values, you should consider using a different tool. ;-)
 7. There will be a substantial reduction in performance if "N" is sorted in descending order.  If a descending sort is
    required, use code similar to the following. Performance will decrease by about 27% but it's still very fast 
    especially compared with just doing a simple descending sort on "N", which is about 20 times slower.
    If @ZeroOrOne is a 0, in this case, remove the "+1" from the code.

    DECLARE @MaxN BIGINT; 
     SELECT @MaxN = 1000;
     SELECT DescendingN = @MaxN-N+1 
       FROM dbo.fnTally(1,@MaxN);

 8. There is no performance penalty for sorting "N" in ascending order because the output is implicity sorted by
    ROW_NUMBER() OVER (ORDER BY (SELECT NULL))
 9. This will return 1-10,000,000 to a bit-bucket variable in about 986ms.
    This will return 0-10,000,000 to a bit-bucket variable in about 1091ms.
    This will return 1-4,294,967,296 to a bit-bucket variable in about 9:12( mi:ss).

 Revision History:
 Rev 00 - Unknown     - Jeff Moden 
        - Initial creation with error handling for @MaxN.
 Rev 01 - 09 Feb 2013 - Jeff Moden 
        - Modified to start at 0 or 1.
 Rev 02 - 16 May 2013 - Jeff Moden 
        - Removed error handling for @MaxN because of exceptional cases.
 Rev 03 - 07 Sep 2013 - Jeff Moden 
        - Change the max for @MaxN from 10 Billion to 10 Quadrillion to support an experiment. 
          This will also make it much more difficult for someone to actually get silent truncation in the future.
 Rev 04 - 04 Aug 2019 - Jeff Moden
        - Enhance performance by making the first CTE provide 256 values instead of 10, which limits the number of
          CrossJoins to just 2. Notice that this changes the maximum range of values to "just" 4,294,967,296, which
          is the entire range for INT and just happens to be an even power of 256. Because of the use of the VALUES
          clause, this code is "only" compatible with SQLServer 2008 and above.
        - Update old link from "SQLMag" to "ITPro". Same famous original article, just a different link because they
          changed the name of the company (twice, actually).
        - Update the flower box notes with the other changes.
**********************************************************************************************************************/        (@ZeroOrOne BIT, @MaxN BIGINT)
RETURNS TABLE WITH SCHEMABINDING AS 
 RETURN WITH
  H2(N) AS ( SELECT 1 
               FROM (VALUES
                     (1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    ,(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),(1)
                    )V(N))            --16^2 or 256 rows
, H4(N) AS (SELECT 1 FROM H2 a, H2 b) --16^4 or 65,536 rows
, H8(N) AS (SELECT 1 FROM H4 a, H4 b) --16^8 or 4,294,967,296 rows
            SELECT N = 0 WHERE @ZeroOrOne = 0 UNION ALL
            SELECT TOP(@MaxN)
                   N = ROW_NUMBER() OVER (ORDER BY N)
              FROM H8
;
GO
