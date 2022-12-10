/***** DAY 10 *****/
/* SETUP */

DECLARE @inp varchar(max) = 'noop
noop
noop
addx 5
noop
addx 1
addx 2
addx 5
addx 2
addx 1
noop
addx 5
noop
addx -1
noop
addx 5
noop
noop
addx 5
addx 1
noop
noop
addx 3
addx 2
noop
addx -38
noop
addx 3
addx 2
addx -5
addx 12
addx 2
addx 27
addx -40
addx 19
addx 2
addx 19
addx -18
addx 2
addx 5
addx 2
addx -23
addx 22
addx 4
addx -34
addx -1
addx 5
noop
addx 2
addx 1
addx 20
addx -17
noop
addx 25
addx -17
addx -2
noop
addx 3
addx 19
addx -12
addx 3
addx -2
addx 3
addx 1
noop
addx 5
noop
noop
addx -37
addx 3
addx 4
noop
addx 24
addx -6
addx -15
addx 2
noop
addx 6
addx -2
addx 6
addx -12
addx -2
addx 19
noop
noop
noop
addx 3
noop
addx 7
addx -2
addx -24
addx -11
addx 4
addx 3
addx -2
noop
addx 7
addx -2
addx 2
noop
addx 3
addx 7
noop
addx -2
addx 5
addx 2
addx 5
noop
noop
noop
addx 3
addx -35
addx 35
addx -21
addx -14
noop
addx 5
addx 2
addx 33
addx -7
addx -23
addx 5
addx 2
addx 1
noop
noop
addx 5
addx -1
noop
addx 3
addx -23
addx 30
addx 1
noop
addx 4
addx -17
addx 11
noop
noop';

/* TESTS */
/*
DECLARE @inp varchar(max) = 'addx 15
addx -11
addx 6
addx -3
addx 5
addx -1
addx -8
addx 13
addx 4
noop
addx -1
addx 5
addx -1
addx 5
addx -1
addx 5
addx -1
addx 5
addx -1
addx -35
addx 1
addx 24
addx -19
addx 1
addx 16
addx -11
noop
noop
addx 21
addx -15
noop
noop
addx -3
addx 9
addx 1
addx -3
addx 8
addx 1
addx 5
noop
noop
noop
noop
noop
addx -36
noop
addx 1
addx 7
noop
noop
noop
addx 2
addx 6
noop
noop
noop
noop
noop
addx 1
noop
noop
addx 7
addx 1
noop
addx -13
addx 13
addx 7
noop
addx 1
addx -33
noop
noop
noop
addx 2
noop
noop
noop
addx 8
noop
addx -1
addx 2
addx 1
noop
addx 17
addx -9
addx 1
addx 1
addx -3
addx 11
noop
noop
addx 1
noop
addx 1
noop
noop
addx -13
addx -19
addx 1
addx 3
addx 26
addx -30
addx 12
addx -1
addx 3
addx 1
noop
noop
noop
addx -9
addx 18
addx 1
addx 2
noop
noop
addx 9
noop
noop
noop
addx -1
addx 2
addx -37
addx 1
addx 3
noop
addx 15
addx -21
addx 22
addx -6
addx 1
noop
addx 2
addx 1
noop
addx -10
noop
noop
addx 20
addx 1
addx 2
addx 2
addx -6
addx -11
noop
noop
noop'
*/

/* 
RULES:
addx V takes two cycles to complete. After two cycles, the X register is increased by the value V. (V can be negative.)
noop takes one cycle to complete. It has no other effect.
*/

DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')

DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (
      id int identity
    , baseInstructions varchar(max)
    , instruction varchar(10)
	, increment int
	, cycle int
	, x int
	, signalStrength int
	, specialRow bit
)

INSERT INTO #tmpInstructions (baseInstructions)
SELECT value FROM STRING_SPLIT(@inStr,'|')

/* PART 1 */

/* Split instructions. */
UPDATE #tmpInstructions
SET baseInstructions = REPLACE(baseInstructions,' ','.')

UPDATE #tmpInstructions
SET instruction = CASE WHEN baseInstructions = 'noop' THEN 'noop' ELSE PARSENAME(baseInstructions,2) END
, increment = CASE WHEN baseInstructions = 'noop' THEN 0 ELSE PARSENAME(baseInstructions,1) END ;
GO

/* Set first row cycle. */
UPDATE #tmpInstructions 
SET cycle = CASE WHEN instruction = 'addx' THEN 2 ELSE 1 END
    , x = CASE WHEN instruction = 'addx' THEN increment+1 ELSE 1 END
WHERE id = 1

/* Calculate cycle */
DECLARE @thisRow int = 2
DECLARE @maxRow int = (SELECT count(*) FROM #tmpInstructions)

WHILE ( @thisRow <= @maxRow )
BEGIN

UPDATE t1
SET 
	  t1.cycle = ( CASE WHEN ISNULL(t1.instruction,'')='noop' THEN 1 ELSE 2 END ) + t2.cycle
	, t1.x = t2.x + t1.increment
FROM #tmpInstructions t1
LEFT OUTER JOIN #tmpInstructions t2 ON t2.id = t1.id-1
where t1.id >1

SET @thisRow+=1
END

/*
/* Calculate signalStrength. */
UPDATE #tmpInstructions
SET signalStrength = cycle*x
*/


DROP TABLE IF EXISTS #tmpCycleList
CREATE TABLE #tmpCycleList (id int identity, cycle int, xval int, signalStrength int)

; WITH cycleList AS (
    SELECT c
	FROM ( VALUES(20),(60),(100),(140),(180),(220) )v(c)
)
INSERT INTO #tmpCycleList (cycle, xval)
SELECT cl.c, t1.x 
FROM cycleList cl
LEFT OUTER JOIN #tmpInstructions t1 ON t1.cycle = cl.c

UPDATE tcl
SET tcl.xval = COALESCE(ti1.x,ti2.x)
FROM #tmpCycleList tcl
LEFT OUTER JOIN #tmpInstructions ti1 ON ti1.cycle = tcl.cycle
LEFT OUTER JOIN #tmpInstructions ti2 ON ti2.cycle = tcl.cycle-1

--SELECT * FROM #tmpCycleList
--SELECT * FROM #tmpInstructions

/* UPDATE Signal Strength */
UPDATE #tmpCycleList 
SET signalStrength = cycle*xval


SELECT SUM(CASE WHEN instruction='addx' THEN 2 ELSE 1 END) FROM #tmpInstructions

/* GET ANSWER */
SELECT sum(signalStrength) FROM #tmpCycleList

--14800 = TOO HIGH


/* PART 2 */


/*
NOTES:
Part 1:
This one looks easy. Lets see. 

Part 2:
*/

