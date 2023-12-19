/***** --- Day 9: Mirage Maintenance --- *****/
/* https://adventofcode.com/2023/day/9 */
/* SETUP */
/*
DECLARE @inp varchar(max) = '';
*/
/**** TEST */

DECLARE @inp varchar(max) = '0 3 6 9 12 15
1 3 6 10 15 21
10 13 16 21 30 45'


--SELECT  @inp
DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')

--SELECT @inStr

/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max), numberList varchar(max) )

INSERT INTO #tmpInstructions (instr)
SELECT value FROM STRING_SPLIT(@inStr,'|')

SELECT * FROM #tmpInstructions

/* Instructions table. */
DROP TABLE IF EXISTS #tmpNums
CREATE TABLE #tmpNums (id int identity, instrNum int, instrNumPos int, instrRowNum int, instrBlockNum int, diffFromLast int )

INSERT INTO #tmpNums (instrNum, instrNumPos, instrRowNum, instrBlockNum, diffFromLast)
SELECT num, rn, id, 1, num - LAG(num) OVER (PARTITION BY id ORDER BY rn) AS diffFromLast
FROM (
	SELECT id, CAST(value AS int) AS num, ROW_NUMBER() OVER (PARTITION BY id ORDER BY (SELECT NULL)) AS rn
		--, instr
	FROM #tmpInstructions ti
	CROSS APPLY STRING_SPLIT(instr, ' ')
) s1

SELECT * FROM #tmpNums WHERE instrRowNum = 1 ORDER BY instrBlockNum, instrNumPos

DECLARE @rowPass int = 1
DECLARE @blockPass int = 2
DECLARE @endState int = 99

--WHILE @endState <> 0
--BEGIN
	
--	INSERT INTO #tmpNums (instrNum, instrNumPos, instrRowNum, instrBlockNum, diffFromLast)
	SELECT diffFromLast, ROW_NUMBER() OVER (PARTITION BY instrRowNum ORDER BY instrNumPos) AS rn, instrRowNum, @blockPass
		, diffFromLast - LAG(diffFromLast) OVER (PARTITION BY instrRowNum, instrBlockNum ORDER BY instrNumPos)
	FROM #tmpNums
	WHERE instrBlockNum = @blockPass-1
	
	SET @endState = (SELECT sum(diffFromLast) FROM #tmpNums WHERE instrRowNum = @rowPass AND instrBlockNum = @blockPass )
	
	SET @blockPass = @blockPass+1
--END








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
