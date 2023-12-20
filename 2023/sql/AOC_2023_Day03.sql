USE dev
GO 

/***** --- Day 3: Gear Ratios --- *****/
/* https://adventofcode.com/2023/day/3 */
/* SETUP */
DECLARE @inp varchar(max) = '467..114..
...*......
..35..633.
......#...
617*......
.....+.58.
..592.....
......755.
...$.*....
.664.598..';

/**** TEST */
/*
DECLARE @inp varchar(max) = ''
*/



--SELECT  @inp
SET @inp = REPLACE(@inp,char(13),'')
DECLARE @CRLF varchar(10) = char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')

--SELECT @inStr

/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max), numberList varchar(max) )

INSERT INTO #tmpInstructions (instr)
SELECT value FROM STRING_SPLIT(@inStr,'|')

DROP TABLE IF EXISTS #tmpRowsCols
CREATE TABLE #tmpRowsCols (id int identity, charVal varchar(1), rowNum int, colNum int)

; WITH base AS (
	SELECT id, instr FROM #tmpInstructions
)
INSERT INTO #tmpRowsCols ( charVal, rowNum, colNum )
SELECT substring(a.b, v.number+1, 1)
	, id
    , ROW_NUMBER() OVER (PARTITION BY id ORDER BY (SELECT NULL) )
FROM (SELECT id,instr b FROM base) a
INNER JOIN master..spt_values v on v.number < len(a.b)
WHERE v.type = 'P'

SELECT * FROM #tmpRowsCols

; WITH markers AS (
	SELECT * 
	FROM #tmpRowsCols rc
	WHERE charVal LIKE '%[^1-9.]%'
)
SELECT *
FROM #tmpRowsCols rc
INNER JOIN markers m ON rc.rowNum BETWEEN m.rowNum-1 AND m.rowNum+1
	AND rc.colNum BETWEEN m.colNum-1 AND m.colNum+1
	AND rc.charVal LIKE '%[1-9]%'

	-------------------------------------------------------------------------------------------------------

DECLARE @rows int = ( SELECT max(id) FROM #tmpInstructions )
DECLARE @cols int = ( SELECT MAX(LEN(instr)) FROM #tmpInstructions )

DROP TABLE IF EXISTS #tmpNumbers
CREATE TABLE #tmpNumbers (id int identity, number int, rowNum int, colStart int, colEnd int)




SELECT ti.*, c.value, ROW_NUMBER() OVER ( PARTITION BY id ORDER BY (SELECT NULL) ) AS rn 
FROM #tmpInstructions ti
CROSS APPLY string_split(REPLACE(instr,'.','|'),'|') c 






; WITH Src AS
(    SELECT Row,
        SUBSTRING(Schematic, PATINDEX(N'%[0-9]%', Schematic), 3) Val,
        STUFF(Schematic, 3, PATINDEX(N'%[0-9]%', Schematic)+3, '') Txt,
		Schematic
    FROM #tmpInstructions ti
    WHERE PATINDEX(N'%[0-9]%', Schematic)>0
    UNION ALL
    SELECT Row,
        SUBSTRING(Txt, PATINDEX(N'%[0-9]%', Txt), 3),
	STUFF(Txt, 3, PATINDEX(N'%[0-9]%', Txt)+3, ''),
	Schematic
    FROM Src
    WHERE PATINDEX(N'%[0-9]%', Txt)>0
  )
select Row, REPLACE(Val, '.', '') AS Val, PATINDEX('%' + Val + '%', Schematic) AS Position
INTO #Day3Numbers
FROM Src























DECLARE @thisRow int = 1

WHILE @thisRow <= @rows
BEGIN 
	DECLARE @startNum int = 0
	DECLARE @numLen int = 0
	DECLARE @theNum int
	DECLARE @leftoverInstr varchar(200)

	WHILE @startNum+@numLen <= @cols
	BEGIN
		SELECT @startNum = PATINDEX('%[0-9]%',instr)
			, @numLen = CHARINDEX('.',instr,PATINDEX('%[0-9]%',instr))-1
			, @theNum = TRY_CONVERT(int,
				CASE 
					WHEN TRY_CONVERT(int, SUBSTRING(instr,PATINDEX('%[0-9]%',instr), CHARINDEX('.',instr,PATINDEX('%[0-9]%',instr))-1)) IS NOT NULL 
						THEN SUBSTRING(instr,PATINDEX('%[0-9]%',instr), CHARINDEX('.',instr,PATINDEX('%[0-9]%',instr))-1)
					ELSE SUBSTRING(instr,PATINDEX('%[0-9]%',instr), CHARINDEX('.',instr,PATINDEX('%[0-9]%',instr))-2)
					END
			)
			, @leftoverInstr = SUBSTRING(instr,(PATINDEX('%[0-9]%',instr) + CHARINDEX('.',instr,PATINDEX('%[0-9]%',instr))-1),LEN(instr) )
		FROM #tmpInstructions
		WHERE id = @thisRow

		SELECT @startNum, @numLen, @theNum, @leftoverInstr

		UPDATE #tmpInstructions
		SET instr = @leftoverInstr
			
		WHERE id = @thisRow
	END
	SET @thisRow = @thisRow + 1
END
	






--SELECT @cols, @rows


/* Identify numbers and characters */
DECLARE @thisRow int = 1
DECLARE @thisCol int = 1

DECLARE @thisNum varchar(100) = ''
DECLARE @thisLen int = 0
DECLARE @isNum bit = 0
DECLARE @thisChar varchar(1)

wHILE @thisRow <= @rows
BEGIN
	WHILE @thisCol <= @cols
	BEGIN
		
		SET @thisCol = @thisCol+1
		IF @isNum = 1 
		BEGIN
			SET @thisNum = CONCAT(@thisNum,@thisChar)	
			SET @thisLen = LEN(@thisNum)
		END
		ELSE
		BEGIN
			IF @thisLen > 0 
			BEGIN
				INSERT INTO #tmpNumbers ( number, rowNum, colStart, colEnd )
				VALUES ( @thisNum, @thisRow, @thisCol - @thisLen + 1, @thisCol )
			END

			SET @thisNum = ''
			SET @isNum = 0
		END
	END
	SET @thisRow = @thisRow+1
END


SELECT * FROM #tmpNumbers



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
Day 3 looks like a parsing nightmare. Definitely not something suited for SQL.
I'll look at it tomorrow...

Part 1:
I think I'm overthinking this one. I'm trying to use a WHILE loop to iterate over each row and each number inside those rows. 
I figured I could find the start/end position of each number, calculate the position of the markers, then find which numbers
are adjacent. On the same row would be easy. On the row before or after wouldn't be much more difficult. Diagonal may be a 
pain, but I think that also may not be all that hard. 

That is if I can figure out how to pull these numbers out of the rows. 

I think I may go look at Day 4 for a minute.

.....

Coming back to this one, I'm certain I'm overthinking it. It shouldn't be as hard as I'm making it. 

My current solution seems to be a Gaps and Islands Problem. Or rather the Islands portion of it. I've gone around in some more 
circles and still haven't solved it. 

I'll come back to this one later. 

....

Part 2:

*/
