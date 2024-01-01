/***** --- Day 10: Pipe Maze --- *****/
/* https://adventofcode.com/2023/day/10 */
/*
| is a vertical pipe connecting north and south.
- is a horizontal pipe connecting east and west.
L is a 90-degree bend connecting north and east.
J is a 90-degree bend connecting north and west.
7 is a 90-degree bend connecting south and west.
F is a 90-degree bend connecting south and east.
. is ground; there is no pipe in this tile.
S is the starting position of the animal; there is a pipe on this tile, but your sketch doesn't show what shape the pipe has.
*/

USE dev
GO

/* SETUP */
---DECLARE @inp varchar(max) = '';

/**** TEST */

DECLARE @inp varchar(max) = '.....
.S-7.
.|.|.
.L-J.
.....'

--SET @inp = REPLACE(@inp,'|','1')

--SELECT  @inp
DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'=')

--SELECT @inStr

/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max))

INSERT INTO #tmpInstructions (instr)
SELECT value FROM STRING_SPLIT(@inStr,'=')

SELECT * FROM #tmpInstructions

/* Work table. */
DROP TABLE IF EXISTS #tmpWork
CREATE TABLE #tmpWork (id int identity, instr varchar(max)
	, chrVal varchar(1), chrPosX int, chrPosY int
	, connect1X int, connect1Y int
	, connect2X int, connect2Y int
	, connect3X int, connect3Y int
	, connect4X int, connect4Y int
	, fromStart int
)

/* PATHS */
DECLARE @maxRows int = ( SELECT MAX(id) FROM #tmpInstructions )
DECLARE @thisRow int = 1

DECLARE @maxCols int = ( SELECT TOP 1 LEN(instr) FROM #tmpInstructions )

WHILE @thisRow <= @maxRows
BEGIN
	DECLARE @thisCol int = 1
	WHILE @thisCol <= @maxCols
	BEGIN
		INSERT INTO #tmpWork ( instr, chrVal, chrPosX, chrPosY )
		SELECT instr, SUBSTRING(instr,@thisCol,1), @thisCol, @thisRow
		FROM #tmpInstructions ti
		WHERE id = @thisRow
			AND SUBSTRING(instr,@thisCol,1) <> '.'
				
		SET @thisCol = @thisCol+1
	END
	SET @thisRow = @thisRow+1
END

/*
| is a vertical pipe connecting north and south.
- is a horizontal pipe connecting east and west.
L is a 90-degree bend connecting north and east.
J is a 90-degree bend connecting north and west.
7 is a 90-degree bend connecting south and west.
F is a 90-degree bend connecting south and east.
. is ground; there is no pipe in this tile.
S is the starting position of the animal; there is a pipe on this tile, but your sketch doesn't show what shape the pipe has.
*/
/* 
CONNECT X (1-+) THEN Y (2-+)
*/
/*
| = x,y-1 & x,y+1
- = x-1,y & x+1,y
L = x+1,y & x,y-1
J = x-1,y & x,y-1
7 = x-1,y & x,y+1
F = x+1,y & x,y+1
S = x-1,y & x+1,y & x,y-1 & x,y+1
*/

/* SET X,Ys */
UPDATE #tmpWork
SET 
	connect1X = CASE 
					WHEN chrVal = '|' THEN chrPosX
					WHEN chrVal = '-' THEN chrPosX-1
					WHEN chrVal = 'L' THEN chrPosX+1
					WHEN chrVal = 'J' THEN chrPosX-1
					WHEN chrVal = '7' THEN chrPosX-1
					WHEN chrVal = 'F' THEN chrPosX+1
					WHEN chrVal = 'S' THEN chrPosX-1
					ELSE NULL
				END
	, connect1Y = CASE 
					WHEN chrVal = '|' THEN chrPosY-1
					WHEN chrVal = '.' THEN NULL
					ELSE chrPosY
				END
	, connect2X = CASE 
					WHEN chrVal = '-' THEN chrPosY+1
					WHEN chrVal = 'S' THEN chrPosY+1
					WHEN chrVal = '.' THEN NULL
					ELSE chrPosX
				END
	, connect2Y = CASE 
					WHEN chrVal = '|' THEN chrPosY+1
					WHEN chrVal = '-' THEN chrPosY
					WHEN chrVal = 'L' THEN chrPosY-1
					WHEN chrVal = 'J' THEN chrPosY-1
					WHEN chrVal = '7' THEN chrPosY+1
					WHEN chrVal = 'F' THEN chrPosY+1
					WHEN chrVal = 'S' THEN chrPosY
					ELSE NULL
				END
	, connect3X = CASE 
					WHEN chrVal = 'S' THEN chrPosX
					ELSE NULL
				END
	, connect3Y = CASE 
					WHEN chrVal = 'S' THEN chrPosY-1
					ELSE NULL
				END
	, connect4X = CASE 
					WHEN chrVal = 'S' THEN chrPosX
					ELSE NULL
				END
	, connect4Y = CASE 
					WHEN chrVal = 'S' THEN chrPosY+1
					ELSE NULL
				END
	, fromStart = CASE WHEN chrVal = 'S' THEN 0 ELSE NULL END

--SELECT * FROM #tmpWork

; WITH startPos AS (
	SELECT * FROM #tmpWork WHERE chrVal = 's'
)
SELECT w1.chrval, w1.chrPosX, w1.chrPosY, w2.chrVal, w2.chrPosX, w2.chrPosY, w2.fromStart
FROM startPos w1
INNER JOIN #tmpWork w2 ON 
	w2.chrVal <> 'S'
	AND (
		( w2.chrPosX = w1.connect1X AND w2.chrPosY = w1.connect1Y )
		OR 
		( w2.chrPosX = w1.connect2X AND w2.chrPosY = w1.connect2Y )
			OR 
		( w2.chrPosX = w1.connect3X AND w2.chrPosY = w1.connect3Y )
		OR 
		( w2.chrPosX = w1.connect3X AND w2.chrPosY = w1.connect4Y )
	)


--	AND w1.fromStart = 0

/* PART 1 */

/* 
Attempt 1: 
*/

/* PART 2 */

/* 
ATTEMPT 1:
*/

/*
NOTES:

Part 1:

Part 2:

*/
