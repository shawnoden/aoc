/***** DAY 5 *****/
/* SETUP */

/* This one requires manual entry of the starting stacks. */

DECLARE @inp varchar(max) = 'move 1 from 7 to 6
move 1 from 8 to 5
move 3 from 7 to 4
move 5 from 9 to 6
move 3 from 7 to 9
move 2 from 5 to 7
move 10 from 6 to 8
move 2 from 2 to 3
move 2 from 9 to 1
move 6 from 8 to 2
move 5 from 3 to 8
move 4 from 5 to 9
move 3 from 4 to 5
move 2 from 1 to 8
move 3 from 1 to 7
move 1 from 7 to 1
move 4 from 7 to 8
move 1 from 5 to 6
move 1 from 9 to 3
move 8 from 2 to 4
move 1 from 5 to 8
move 1 from 5 to 3
move 2 from 1 to 8
move 4 from 3 to 4
move 1 from 3 to 4
move 1 from 1 to 7
move 1 from 7 to 8
move 1 from 7 to 4
move 5 from 9 to 1
move 2 from 6 to 7
move 3 from 2 to 1
move 12 from 8 to 7
move 8 from 7 to 3
move 1 from 2 to 8
move 6 from 7 to 1
move 1 from 6 to 3
move 8 from 4 to 3
move 5 from 3 to 6
move 6 from 1 to 8
move 2 from 1 to 2
move 2 from 3 to 1
move 4 from 4 to 5
move 1 from 5 to 7
move 1 from 6 to 9
move 1 from 4 to 9
move 8 from 1 to 4
move 10 from 3 to 5
move 2 from 4 to 5
move 2 from 2 to 6
move 2 from 1 to 6
move 11 from 4 to 7
move 9 from 6 to 5
move 16 from 8 to 3
move 15 from 5 to 6
move 10 from 3 to 6
move 24 from 6 to 5
move 5 from 7 to 5
move 1 from 6 to 3
move 1 from 7 to 2
move 2 from 7 to 6
move 3 from 3 to 6
move 8 from 5 to 1
move 3 from 9 to 8
move 3 from 8 to 4
move 1 from 7 to 1
move 1 from 2 to 9
move 1 from 9 to 2
move 2 from 3 to 1
move 2 from 4 to 2
move 5 from 6 to 8
move 3 from 7 to 1
move 1 from 4 to 2
move 26 from 5 to 9
move 1 from 3 to 6
move 7 from 1 to 9
move 1 from 3 to 5
move 1 from 6 to 5
move 1 from 5 to 4
move 5 from 5 to 6
move 1 from 4 to 9
move 3 from 9 to 3
move 4 from 8 to 5
move 2 from 5 to 2
move 1 from 1 to 6
move 1 from 8 to 9
move 2 from 2 to 4
move 2 from 3 to 7
move 1 from 7 to 6
move 7 from 6 to 7
move 1 from 4 to 3
move 2 from 2 to 4
move 28 from 9 to 3
move 26 from 3 to 7
move 2 from 4 to 3
move 2 from 9 to 1
move 4 from 3 to 6
move 1 from 4 to 5
move 1 from 3 to 4
move 3 from 1 to 9
move 1 from 4 to 7
move 1 from 5 to 7
move 1 from 6 to 9
move 23 from 7 to 1
move 4 from 9 to 5
move 3 from 9 to 4
move 2 from 6 to 3
move 1 from 6 to 7
move 3 from 3 to 9
move 11 from 7 to 2
move 4 from 2 to 3
move 23 from 1 to 2
move 15 from 2 to 4
move 2 from 7 to 9
move 13 from 2 to 8
move 1 from 7 to 5
move 1 from 2 to 8
move 7 from 4 to 8
move 6 from 4 to 3
move 1 from 2 to 4
move 1 from 2 to 9
move 20 from 8 to 5
move 1 from 8 to 4
move 3 from 4 to 7
move 3 from 3 to 9
move 1 from 2 to 8
move 20 from 5 to 3
move 6 from 5 to 3
move 26 from 3 to 9
move 2 from 7 to 5
move 1 from 5 to 4
move 1 from 7 to 8
move 2 from 8 to 5
move 12 from 9 to 4
move 2 from 3 to 2
move 4 from 1 to 9
move 2 from 3 to 1
move 4 from 5 to 6
move 5 from 9 to 4
move 2 from 6 to 3
move 2 from 6 to 8
move 2 from 8 to 3
move 1 from 2 to 7
move 21 from 4 to 2
move 1 from 4 to 5
move 13 from 2 to 4
move 4 from 3 to 9
move 25 from 9 to 7
move 7 from 2 to 4
move 18 from 7 to 8
move 2 from 1 to 5
move 1 from 3 to 9
move 2 from 9 to 3
move 1 from 1 to 6
move 8 from 7 to 6
move 4 from 3 to 2
move 1 from 4 to 7
move 6 from 2 to 5
move 1 from 7 to 3
move 5 from 6 to 8
move 4 from 4 to 1
move 9 from 5 to 1
move 12 from 4 to 3
move 1 from 6 to 5
move 1 from 5 to 2
move 13 from 3 to 8
move 14 from 8 to 6
move 2 from 1 to 6
move 1 from 2 to 5
move 11 from 1 to 3
move 1 from 5 to 3
move 6 from 6 to 8
move 23 from 8 to 5
move 1 from 8 to 1
move 18 from 5 to 8
move 5 from 6 to 8
move 10 from 3 to 8
move 1 from 1 to 5
move 2 from 4 to 8
move 1 from 4 to 7
move 5 from 5 to 3
move 1 from 6 to 1
move 6 from 3 to 9
move 35 from 8 to 4
move 1 from 7 to 6
move 2 from 9 to 8
move 1 from 1 to 6
move 17 from 4 to 7
move 1 from 5 to 1
move 4 from 9 to 6
move 12 from 6 to 4
move 29 from 4 to 2
move 17 from 7 to 8
move 27 from 2 to 7
move 2 from 2 to 1
move 1 from 3 to 1
move 25 from 7 to 4
move 25 from 4 to 6
move 1 from 4 to 2
move 4 from 1 to 6
move 1 from 2 to 6
move 25 from 6 to 1
move 5 from 6 to 8
move 15 from 1 to 6
move 2 from 7 to 8
move 15 from 6 to 2
move 14 from 2 to 8
move 1 from 2 to 3
move 4 from 1 to 4
move 4 from 4 to 2
move 6 from 1 to 8
move 3 from 2 to 5
move 3 from 5 to 7
move 1 from 2 to 3
move 1 from 6 to 8
move 8 from 8 to 5
move 2 from 7 to 4
move 1 from 7 to 9
move 3 from 5 to 8
move 2 from 4 to 6
move 3 from 5 to 8
move 2 from 3 to 4
move 2 from 6 to 5
move 1 from 9 to 8
move 48 from 8 to 5
move 1 from 8 to 9
move 41 from 5 to 4
move 4 from 5 to 2
move 3 from 2 to 7
move 1 from 2 to 7
move 1 from 8 to 1
move 1 from 9 to 4
move 1 from 1 to 3
move 7 from 4 to 7
move 11 from 7 to 4
move 4 from 4 to 1
move 37 from 4 to 9
move 4 from 4 to 3
move 32 from 9 to 3
move 5 from 9 to 1
move 12 from 3 to 2
move 3 from 4 to 1
move 3 from 1 to 6
move 3 from 1 to 6
move 2 from 1 to 5
move 9 from 2 to 7
move 3 from 7 to 3
move 6 from 6 to 5
move 4 from 3 to 6
move 3 from 6 to 9
move 13 from 3 to 8
move 3 from 1 to 9
move 2 from 3 to 2
move 2 from 7 to 8
move 1 from 6 to 8
move 4 from 2 to 8
move 2 from 8 to 3
move 1 from 2 to 1
move 4 from 7 to 3
move 6 from 3 to 5
move 3 from 9 to 8
move 13 from 8 to 6
move 1 from 9 to 2
move 2 from 3 to 8
move 1 from 1 to 9
move 1 from 1 to 3
move 10 from 6 to 3
move 1 from 2 to 5
move 22 from 5 to 7
move 1 from 9 to 3
move 1 from 8 to 7
move 2 from 7 to 8
move 6 from 8 to 4
move 2 from 9 to 2
move 21 from 7 to 6
move 4 from 8 to 5
move 1 from 8 to 4
move 1 from 5 to 7
move 12 from 3 to 6
move 1 from 2 to 6
move 1 from 7 to 9
move 1 from 2 to 6
move 6 from 3 to 5
move 6 from 4 to 2
move 1 from 3 to 6
move 1 from 9 to 7
move 6 from 2 to 7
move 22 from 6 to 4
move 3 from 6 to 5
move 7 from 5 to 7
move 3 from 7 to 8
move 2 from 5 to 3
move 2 from 3 to 7
move 13 from 6 to 8
move 3 from 7 to 1
move 3 from 5 to 9
move 16 from 4 to 5
move 1 from 5 to 8
move 2 from 1 to 6
move 1 from 1 to 7
move 6 from 4 to 2
move 4 from 8 to 7
move 13 from 5 to 7
move 1 from 6 to 3
move 2 from 5 to 6
move 10 from 7 to 6
move 1 from 3 to 9
move 1 from 4 to 3
move 1 from 3 to 5
move 12 from 7 to 3
move 2 from 2 to 1
move 1 from 5 to 9
move 2 from 9 to 6
move 4 from 2 to 7
move 7 from 7 to 9
move 1 from 7 to 8
move 1 from 1 to 9
move 11 from 9 to 7
move 4 from 8 to 3
move 5 from 3 to 5
move 2 from 8 to 4
move 3 from 5 to 2
move 2 from 2 to 8
move 1 from 5 to 2
move 5 from 8 to 2
move 7 from 7 to 2
move 4 from 8 to 9
move 2 from 7 to 6
move 4 from 9 to 7
move 6 from 2 to 4
move 1 from 5 to 6
move 5 from 3 to 5
move 1 from 8 to 1
move 10 from 6 to 3
move 8 from 2 to 8
move 1 from 8 to 1
move 5 from 3 to 2
move 2 from 8 to 7
move 6 from 7 to 4
move 12 from 4 to 1
move 4 from 1 to 2
move 1 from 2 to 1
move 8 from 2 to 9
move 2 from 4 to 8
move 5 from 9 to 7
move 8 from 3 to 8
move 2 from 3 to 1
move 6 from 8 to 2
move 7 from 7 to 2
move 1 from 3 to 5
move 2 from 7 to 2
move 1 from 9 to 1
move 1 from 9 to 7
move 1 from 9 to 4
move 1 from 6 to 7
move 1 from 2 to 3
move 1 from 3 to 8
move 1 from 4 to 9
move 5 from 6 to 1
move 7 from 8 to 2
move 1 from 7 to 4
move 9 from 2 to 8
move 7 from 2 to 7
move 1 from 4 to 2
move 8 from 7 to 5
move 4 from 8 to 7
move 8 from 8 to 6
move 9 from 1 to 4
move 1 from 9 to 1
move 4 from 7 to 6
move 7 from 1 to 7
move 6 from 7 to 3
move 4 from 1 to 8
move 13 from 6 to 3
move 6 from 2 to 3
move 1 from 3 to 4
move 2 from 3 to 7
move 1 from 6 to 9
move 11 from 5 to 1
move 1 from 6 to 3
move 8 from 4 to 1
move 2 from 5 to 2
move 1 from 9 to 5
move 2 from 8 to 7
move 7 from 1 to 5
move 2 from 7 to 3
move 8 from 5 to 4
move 1 from 8 to 2
move 1 from 5 to 7
move 3 from 7 to 2
move 4 from 4 to 7
move 4 from 3 to 4
move 20 from 3 to 2
move 1 from 8 to 3
move 1 from 3 to 8
move 4 from 7 to 2
move 1 from 8 to 6
move 1 from 7 to 5
move 1 from 3 to 1
move 1 from 4 to 2
move 5 from 1 to 4
move 14 from 4 to 1
move 1 from 6 to 5
move 1 from 2 to 3
move 1 from 5 to 1
move 11 from 2 to 9
move 18 from 1 to 2
move 4 from 1 to 3
move 12 from 2 to 5
move 5 from 2 to 4
move 7 from 5 to 1
move 1 from 2 to 9
move 9 from 1 to 9
move 1 from 3 to 6
move 2 from 3 to 9
move 1 from 6 to 1
move 1 from 4 to 8
move 1 from 3 to 4
move 1 from 3 to 8
move 16 from 9 to 5
move 2 from 2 to 7
move 14 from 5 to 8
move 16 from 8 to 5
move 1 from 7 to 9
move 1 from 7 to 6
move 4 from 9 to 5
move 11 from 5 to 6
move 12 from 2 to 4
move 16 from 5 to 7
move 4 from 7 to 2
move 1 from 5 to 6
move 3 from 9 to 1
move 4 from 7 to 9
move 3 from 6 to 4
move 9 from 2 to 9
move 3 from 1 to 8
move 2 from 8 to 1
move 1 from 8 to 2
move 5 from 6 to 1
move 7 from 7 to 1
move 1 from 7 to 6
move 8 from 4 to 5
move 1 from 2 to 6
move 12 from 9 to 2
move 3 from 2 to 9
move 8 from 5 to 8
move 12 from 4 to 5
move 1 from 2 to 9
move 1 from 5 to 6
move 2 from 1 to 7
move 4 from 5 to 2
move 6 from 5 to 1
move 2 from 7 to 6
move 1 from 5 to 1
move 1 from 8 to 5
move 7 from 6 to 9
move 2 from 9 to 4
move 16 from 1 to 8
move 1 from 5 to 8
move 7 from 2 to 8
move 3 from 6 to 2
move 1 from 4 to 8
move 28 from 8 to 3
move 1 from 4 to 2
move 4 from 1 to 2
move 11 from 2 to 7
move 9 from 7 to 8
move 7 from 9 to 5
move 4 from 8 to 1
move 2 from 9 to 1
move 2 from 1 to 5
move 1 from 7 to 9
move 1 from 1 to 9
move 6 from 5 to 3
move 3 from 5 to 1
move 2 from 2 to 8
move 7 from 8 to 3
move 7 from 3 to 7
move 4 from 1 to 9
move 1 from 8 to 9
move 2 from 8 to 1
move 1 from 8 to 1
move 6 from 7 to 6
move 6 from 6 to 5
move 17 from 3 to 6
move 2 from 9 to 2
move 2 from 1 to 4
move 12 from 3 to 8
move 6 from 6 to 5
move 2 from 2 to 1
move 4 from 9 to 7
move 2 from 7 to 3
move 1 from 1 to 5
move 10 from 8 to 6
move 2 from 3 to 9
move 9 from 5 to 2
move 7 from 2 to 8
move 1 from 4 to 8
move 1 from 4 to 6
move 7 from 8 to 7
move 3 from 9 to 7
move 4 from 3 to 4';

/*
DECLARE @inp varchar(max) = 'move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2'
*/

DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')


/*
    [P]                 [Q]     [T]
[F] [N]             [P] [L]     [M]
[H] [T] [H]         [M] [H]     [Z]
[M] [C] [P]     [Q] [R] [C]     [J]
[T] [J] [M] [F] [L] [G] [R]     [Q]
[V] [G] [D] [V] [G] [D] [N] [W] [L]
[L] [Q] [S] [B] [H] [B] [M] [L] [D]
[D] [H] [R] [L] [N] [W] [G] [C] [R]
 1   2   3   4   5   6   7   8   9 
*/

DROP TABLE IF EXISTS #tmpCrates
CREATE TABLE #tmpCrates (
  id int identity
, crateStack int
, crateStackPosition int
, crateID varchar(10)
)

INSERT INTO #tmpCrates (crateStack, crateStackPosition, crateID)
/*
VALUES
    (1,1,'Z'),
    (1,2,'N'),

    (2,1,'M'),
    (2,2,'C'),
    (2,3,'D'),

    (3,1,'P')
*/

VALUES
    (1,1,'D'),
    (1,2,'L'),
    (1,3,'V'),
    (1,4,'T'),
    (1,5,'M'),
    (1,6,'H'),
    (1,7,'F'),
    
    (2,1,'H'),
    (2,2,'Q'),
    (2,3,'G'),
    (2,4,'J'),
    (2,5,'C'),
    (2,6,'T'),
    (2,7,'N'),
    (2,8,'P'),

    (3,1,'R'),
    (3,2,'S'),
    (3,3,'D'),
    (3,4,'M'),
    (3,5,'P'),
    (3,6,'H'),

    (4,1,'L'),
    (4,2,'B'),
    (4,3,'V'),
    (4,4,'F'),

    (5,1,'N'),
    (5,2,'H'),
    (5,3,'G'),
    (5,4,'L'),
    (5,5,'Q'),

    (6,1,'W'),
    (6,2,'B'),
    (6,3,'D'),
    (6,4,'G'),
    (6,5,'R'),
    (6,6,'M'),
    (6,7,'P'),

    (7,1,'G'),
    (7,2,'M'),
    (7,3,'N'),
    (7,4,'R'),
    (7,5,'C'),
    (7,6,'H'),
    (7,7,'L'),
    (7,8,'Q'),

    (8,1,'C'),
    (8,2,'L'),
    (8,3,'W'),

    (9,1,'R'),
    (9,2,'D'),
    (9,3,'L'),
    (9,4,'Q'),
    (9,5,'J'),
    (9,6,'Z'),
    (9,7,'M'),
    (9,8,'T')


DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (
      id int identity
    , baseInstructions varchar(max)
    , moveCount int
    , moveStackFrom int
    , moveStackTo int
)

INSERT INTO #tmpInstructions (baseInstructions)
SELECT value FROM STRING_SPLIT(@inStr,'|')

UPDATE #tmpInstructions
SET baseInstructions = 
REPLACE(
    REPLACE(
        REPLACE(baseInstructions, 'move ', '')
        ,' from ','.'
    ), ' to ', '.'
)


UPDATE #tmpInstructions
SET 
    moveCount     = PARSENAME(baseInstructions,3) ,
    moveStackFrom = PARSENAME(baseInstructions,2) ,
    moveStackTo   = PARSENAME(baseInstructions,1)

--SELECT * FROM #tmpCrates
--SELECT * FROM #tmpInstructions


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
