/***** DAY 7 *****/
/* SETUP */
/*
DECLARE @inp varchar(max) = '';
*/

/**** TEST */
DECLARE @inp varchar(max) = '123 -> x
456 -> y
x AND y -> d
x OR y -> e
x LSHIFT 2 -> f
y RSHIFT 2 -> g
NOT x -> h
NOT y -> i'

--SELECT  @inp

DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')


/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max), i1 varchar(20), i2 varchar(20), logic varchar(50), result varchar(20), dest varchar(10))

INSERT INTO #tmpInstructions (instr)
SELECT value FROM STRING_SPLIT(@inStr,'|')

SELECT * FROM #tmpInstructions

/* Final State Table. */
DROP TABLE IF EXISTS #finalState
CREATE TABLE #finalState (wireID int identity, wireName varchar(10), wireValue int)



/* Parse instructions for bitwise operators and parts. */

/*
AND = &
OR = |
NOT = ~
LSHIFT = <
RSHIFT = >

EQUALS = =
*/

UPDATE #tmpInstructions
SET instr = 
	REPLACE(
		REPLACE(
			REPLACE(
				REPLACE(
					REPLACE(
						REPLACE(
							REPLACE(instr,'->','=')
							, 'AND', '&'
						)
						, 'OR', '|'
					)
					, 'NOT','^'
				)
				, 'LSHIFT','<'
			)
			, 'RSHIFT','>'
		)
		, ' ', ''
	)



/* SET KNOWN VALUES */
; WITH base AS (
	SELECT id
		, SUBSTRING( instr, 1, CHARINDEX('=', instr)-1) AS chrResult
		, SUBSTRING( instr, CHARINDEX('=', instr)+1,len(instr)) AS chrDest
	FROM #tmpInstructions
)
UPDATE #tmpInstructions
SET result = CASE WHEN TRY_CONVERT(int,base.chrResult) IS NOT NULL THEN base.chrResult ELSE NULL END
	, dest = base.chrDest
	, logic = CASE 
				WHEN CHARINDEX('&', instr) > 0 THEN '&'
				WHEN CHARINDEX('|', instr) > 0 THEN '|'
				WHEN CHARINDEX('^', instr) > 0 THEN '^'
				WHEN CHARINDEX('<', instr) > 0 THEN '<'
				WHEN CHARINDEX('>', instr) > 0 THEN '>'
				ELSE NULL
			END
FROM base	
WHERE #tmpInstructions.id = base.id
	AND logic IS NULL
	

UPDATE #tmpInstructions
SET 
	  i1 = SUBSTRING( instr, 1, PATINDEX('%[&|<>]%', instr)-1)
	, i2 = SUBSTRING( instr, PATINDEX('%[&|<>]%', instr)+1,PATINDEX('%[&|<>]%', instr) - CHARINDEX('=', instr)-2 + LEN(instr)  )
WHERE logic IN ('&','|','<','>')


UPDATE #tmpInstructions
SET 
	  i1 = NULL
	, i2 = SUBSTRING( instr, 2, 2 - CHARINDEX('=', instr)-2 + LEN(instr)  )
WHERE logic = '^'


SELECT * FROM  #tmpInstructions


; WITH fins AS (
	SELECT dest, result
	FROM #tmpInstructions
	WHERE result IS NOT NULL
)
UPDATE  #tmpInstructions
SET i1 = fins.result
FROM fins 
WHERE #tmpInstructions.i1 = fins.dest
	
; WITH fins AS (
	SELECT dest, result
	FROM #tmpInstructions
	WHERE result IS NOT NULL
)
UPDATE  #tmpInstructions
SET i2 = fins.result
FROM fins 
WHERE #tmpInstructions.i2 = fins.dest


SELECT * FROM  #tmpInstructions

/*  https://dataeducation.com/bitmask-handling-part-4-left-shift-and-right-shift/ */

UPDATE #tmpInstructions
SET result = 
	CASE 
		WHEN logic = '&' THEN TRY_CONVERT(int, i1) & TRY_CONVERT(int,i2)
		WHEN logic = '|' THEN TRY_CONVERT(int, i1) | TRY_CONVERT(int,i2)
		WHEN logic = '^' THEN ~ TRY_CONVERT(int,i2)

		WHEN logic = '<' THEN TRY_CONVERT(varbinary, i1) * 2^i2 
		WHEN logic = '>' THEN TRY_CONVERT(varbinary, i1) / 2^i2 

	END
WHERE result IS NULL



SELECT * FROM #tmpInstructions

















/* Replace non-numberic characters */
DECLARE @i int = 1
DECLARE @inpVal varchar(max) = ''
DECLARE @stuffChar varchar(10) = ''

WHILE @i <= len(@inStr)
BEGIN

	SET @stuffChar = (
		SELECT SUBSTRING(instr,PATINDEX('%[0-9]%', instr)+@i-1,1) AS c
		--SELECT PATINDEX('%[0-9]%', instr)+@i-1 AS q
		FROM #tmpString
		WHERE SUBSTRING(instr,PATINDEX('%[0-9]%', instr)+@i-1,1) LIKE '%[0-9|]%'
	)

	SET @inpVal = CONCAT(@inpVal,@stuffChar)
    
	SET @i = @i+1
END

DROP TABLE IF EXISTS #tmpEs
CREATE TABLE #tmpEs (instrID int identity, instr varchar(2000), f int, l int, fin int)

INSERT INTO #tmpEs (instr)
SELECT value FROM STRING_SPLIT(@inpVal,'|')

UPDATE #tmpES
SET  f = LEFT(instr,1)
	, l = RIGHT(instr,1)
	, fin = CAST( CONCAT(LEFT(instr,1), RIGHT(instr,1)) AS int)


SELECT * FROM #tmpEs

/* PART 1 */


/* ANSWER */


/* PART 2 */

/* ANSWER */

/*
NOTES:
Coming back to this one yet again. It's December 2023. This problem is Bitwise logic, and 
I have no idea why I abandoned it before. Probably becauase the logic was weird. Let's 
give it another go.

Part 1:
Part 1 seems to be a parsing then calculating thing. It doesn't seem to crazy, just a 
complex set of operations to follow. 

I'll start with parsing these instructions into a table, keeping in mind that SQL has 
no guarantee of order without ORDER BY. That hasn't bit me yet, but there's always a first
time.

I think I need an table for instructions and results. I probably also need a table for 
the final state of each wire in my set. I think the first thing I need to do is pull out
the wires that are assigned a value, so that I have an initial state. I can't do bitwise
logic on a wire that doesn't have a value. Then I think I need to work backwards from there 
and apply those values to the related wires. Let's see what that gets me. 

...

Most of the bit logic wasn't too bad, but I'm using SQL 2016, and Microsoft didn't 
introduce bit shifting until SQL 2022. It's possible with actual bit math, but that's 
out of where I'm at right now. Temporary roadblock. I'll work on it later. 

...



-- ATTEMPT 1: 

Part 2:

-- ATTEMPT 1: 
*/





