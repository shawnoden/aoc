/***** DAY 7 *****/
/* SETUP */
/*
DECLARE @inp varchar(max) = '';
*/

/* TESTS */
DECLARE @inp varchar(max) = '$ cd /
$ ls
dir a
14848514 b.txt
8504156 c.dat
dir d
$ cd a
$ ls
dir e
29116 f
2557 g
62596 h.lst
$ cd e
$ ls
584 i
$ cd ..
$ cd ..
$ cd d
$ ls
4060174 j
8033020 d.log
5626152 d.ext
7214296 k'

DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')

DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (
      id int identity
    , baseInstructions varchar(max)
    , part1 varchar(1000)
    , part2 varchar(1000)
    , part3 varchar(1000)
    , parentDir int DEFAULT null
    , lineType int  /* 1=command, 2=directory, 3=file */
)

INSERT INTO #tmpInstructions (baseInstructions)
SELECT value FROM STRING_SPLIT(@inStr,'|')

UPDATE #tmpInstructions
SET baseInstructions =
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(baseInstructions,'dir','__'),'$ ls','$ ls |'),'..','^'), '.', '_'), ' ', '.')

UPDATE #tmpInstructions
SET
    part1 = PARSENAME(baseInstructions,3) ,
    part2 = PARSENAME(baseInstructions,2) ,
    part3 = PARSENAME(baseInstructions,1)

UPDATE #tmpInstructions
SET parentDir = s1.id
FROM (
    SELECT id, part1, part2, part3, parentDir
    FROM #tmpInstructions t2
) s1
WHERE #tmpInstructions.part2 = 'cd'
    AND #tmpInstructions.part3 <> '^'
    AND s1.part3 = #tmpInstructions.part3

UPDATE #tmpInstructions
SET parentDir = 0
WHERE part3 = '/'

DELETE FROM #tmpInstructions WHERE baseInstructions ='$.ls.|'


SELECT * FROM #tmpInstructions



/* GO UP DIRECTORIES */
SELECT ti.* , s1.dr /* dr=go up n directories */, s2.*
FROM #tmpInstructions ti
LEFT OUTER JOIN (
SELECT id, parentDir, part2, DENSE_RANK() OVER (PARTITION BY parentDir ORDER BY id) AS dr
FROM #tmpInstructions
WHERE part3 = '^'
)s1 ON ti.id = s1.id
LEFT OUTER JOIN (
   SELECT DISTINCT parentDir
   FROM #tmpInstructions
   WHERE part1 = '$'
) s2 ON s1.parentDir = s2.parentDir
    AND s1.part2 = '__'

/* GOTO DIR */
SELECT ti.part3, s1.*, LAG(ti.part3,s1.dr) OVER ( ORDER BY ti.id ) AS p3, ROW_NUMBER() OVER (ORDER BY ti.id) AS rn
FROM #tmpInstructions ti
LEFT OUTER JOIN (
    SELECT id, parentDir, part2, ROW_NUMBER() OVER (PARTITION BY parentDir ORDER BY id) AS dr
    FROM #tmpInstructions
    WHERE part3 = '^'
)s1 ON ti.id = s1.id
WHERE ti.part1 = '$' AND ti.part2='cd'








UPDATE #tmpInstructions
SET parentDir = t2.newparent
FROM #tmpInstructions
INNER JOIN (

    SELECT TOP 100 PERCENT id, parentDir, newparent=MIN(parentDir) OVER (PARTITION BY c)
    FROM
    (
        SELECT id, parentDir
            ,c=COUNT(parentDir) OVER (ORDER BY id)
        from #tmpInstructions
    ) t
    order by id
) t2 ON t2.id = #tmpInstructions.id

SELECT p1, prevDir = LAG(p1,1) OVER (ORDER BY p1)
FROM (
    SELECT DISTINCT parentDir AS p1
    FROM #tmpInstructions
) s1

SELECT * FROM #tmpInstructions




/* PART 1 */
/*
DECLARE @thisRow int = 1
DECLARE @maxRow int = ( SELECT count(*) FROM #tmpInstructions )


WHILE @thisRow <= @maxRow
BEGIN
/* INSTRUCTIONS */

    DECLARE @moveCount int     = ( SELECT moveCount FROM #tmpInstructions WHERE id = @thisRow )
    DECLARE @moveStackFrom int = ( SELECT moveStackFrom FROM #tmpInstructions WHERE id = @thisRow )
    DECLARE @moveStackTo int   = ( SELECT moveStackTo FROM #tmpInstructions WHERE id = @thisRow )

    --SELECT @thisRow, @moveCount AS howMany, @moveStackFrom AS moveFrom, @moveStackTo AS moveTo

    DECLARE @thisMove int = 1

    WHILE @thisMove <= @moveCount /* 1 from 2 to 1 */
    BEGIN
       
        DECLARE @posMoveTo int   = ( SELECT ISNULL(max(crateStackPosition),0) FROM #tmpCrates WHERE crateStack = @moveStackTo )+1
        DECLARE @maxPosFrom int = ( SELECT ISNULL(max(crateStackPosition),0) FROM #tmpCrates WHERE crateStack = @moveStackFrom )
        DECLARE @crateName varchar(1) = ( SELECT crateID FROM #tmpCrates WHERE crateStack = @moveStackFrom AND crateStackPosition = @maxPosFrom )
       
        INSERT INTO #tmpCrates (crateStack, crateStackPosition, CrateID)
        VALUES ( @moveStackTo , @posMoveTo, @crateName )
       
        DELETE FROM #tmpCrates WHERE crateStack = @moveStackFrom AND crateStackPosition = @maxPosFrom
       
        SET @thisMove += 1
    END
   
    SET @thisRow += 1

/* INSTRUCTIONS */
END

DECLARE @FinalString varchar(max)

SELECT @FinalString = COALESCE(@FinalString, '')+CrateID
FROM (
    SELECT CrateID, crateStack, ROW_NUMBER() OVER ( PARTITION BY crateStack ORDER BY crateStackPosition DESC) AS rn  
    FROM #tmpCrates
) s1
WHERE rn = 1
ORDER BY crateStack

SELECT @FinalString

-- HNSNMTLHQ = correct
*/


/* PART 2 */
/*
DECLARE @thisRow int = 1
DECLARE @maxRow int = ( SELECT count(*) FROM #tmpInstructions )

WHILE @thisRow <= @maxRow
BEGIN
/* INSTRUCTIONS */

    DECLARE @moveCount int     = ( SELECT moveCount FROM #tmpInstructions WHERE id = @thisRow )
    DECLARE @moveStackFrom int = ( SELECT moveStackFrom FROM #tmpInstructions WHERE id = @thisRow )
    DECLARE @moveStackTo int   = ( SELECT moveStackTo FROM #tmpInstructions WHERE id = @thisRow )

    --SELECT @moveCount AS cnt, @moveStackFrom AS mfm, @moveStackTo AS mto

    DROP TABLE IF EXISTS #moveList
    CREATE TABLE #moveList (id int identity, crateID varchar(1), crateStackPosition int, crateStack int )
       
    INSERT INTO #moveList (crateID, crateStack, crateStackPosition)
    SELECT crateID, @moveStackTo, (SELECT ISNULL(max(crateStackPosition),0) FROM #tmpCrates WHERE crateStack  = @moveStackTo) + @moveCount+1-rn
    FROM (
        SELECT crateID, crateStackPosition, ROW_NUMBER() OVER (ORDER BY crateStackPosition DESC) AS rn
        FROM #tmpCrates
        WHERE crateStack = @moveStackFrom
    ) s1
    WHERE rn <= @moveCount
    ORDER BY crateStackPosition DESC

    --SELECT * FROM #moveList

    INSERT INTO #tmpCrates (crateStack, crateStackPosition, CrateID)
    SELECT crateStack, crateStackPosition, CrateID FROM #moveList

    DELETE FROM #tmpCrates WHERE crateStack = @moveStackFrom AND crateStackPosition > (
        SELECT Max(crateStackPosition)-@moveCount
        FROM #tmpCrates
        WHERE crateStack = @moveStackFrom
    )
       
    --SELECT * FROM #tmpCrates ORDER BY crateStack, crateStackPosition

    SET @thisRow += 1
END

DECLARE @FinalString varchar(max)

SELECT @FinalString = COALESCE(@FinalString, '')+CrateID
FROM (
    SELECT CrateID, crateStack, ROW_NUMBER() OVER ( PARTITION BY crateStack ORDER BY crateStackPosition DESC) AS rn  
    FROM #tmpCrates
) s1
WHERE rn = 1
ORDER BY crateStack

SELECT @FinalString

--RNLFDJMCT = CORRECT

DROP TABLE IF EXISTS #tmpSections
*/

/*
NOTES:
This one will take some brain work. How am I going to parse this?
It's definitly a heirarchy, but how am I going to assign parents.

--- Track THIS.Parent and THIS.Item?

12/8/2022 - Still working on this one. Moved ahead to Day 8. :-(
Part 1:


Part 2: