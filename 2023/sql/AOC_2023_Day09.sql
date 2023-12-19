/***** --- Day 9: Mirage Maintenance --- *****/
/* https://adventofcode.com/2023/day/9 */
/* SETUP */
/*
DECLARE @inp varchar(max) = '';
*/
/**** TEST ****/

DECLARE @inp varchar(max) = '0 3 6 9 12 15
1 3 6 10 15 21
10 13 16 21 30 45'


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

--SELECT * FROM #tmpInstructions


; WITH tmpInstr AS (
	SELECT id, CAST(value AS int) AS num, ROW_NUMBER() OVER (PARTITION BY id ORDER BY (SELECT NULL)) AS rn
		--, instr
	FROM #tmpInstructions ti
	CROSS APPLY STRING_SPLIT(instr, ' ')
	WHERE ti.id = 1
)


/* Nums table. */
DROP TABLE IF EXISTS #tmpNums
CREATE TABLE #tmpNums (id int identity, instrNum int, instrNumPos int, instrRowNum int, instrBlockNum int, diffFromLast int )

/* INSERT FIRST ROWS */
INSERT INTO #tmpNums (instrNum, instrNumPos, instrRowNum, instrBlockNum, diffFromLast)
SELECT num, rn, id, 1, num - LAG(num) OVER (PARTITION BY id ORDER BY rn) AS diffFromLast
FROM (
	SELECT id, CAST(value AS int) AS num, ROW_NUMBER() OVER (PARTITION BY id ORDER BY (SELECT NULL)) AS rn
	FROM #tmpInstructions ti
	CROSS APPLY STRING_SPLIT(instr, ' ')
) s1


--SELECT * FROM #tmpNums

DECLARE @thisRow int = 1
DECLARE @maxRow int = ( SELECT max(id) FROM #tmpInstructions )

/* LOOP THROUGH ROWS */
WHILE @thisRow <= @maxRow
BEGIN
	DECLARE @thisBlock int = 1

	WHILE 1=1
		BEGIN
		INSERT INTO #tmpNums (instrNum, instrNumPos, instrRowNum, instrBlockNum, diffFromLast)
		SELECT diffFromLast, ROW_NUMBER() OVER (PARTITION BY instrRowNum ORDER BY instrNumPos) AS rn, @thisRow, @thisBlock+1
			, diffFromLast - LAG(diffFromLast) OVER (PARTITION BY instrRowNum, instrBlockNum ORDER BY instrNumPos)
		FROM #tmpNums
		WHERE instrBlockNum = @thisBlock
			AND instrRowNum = @thisRow
			--AND ( SELECT SUM(diffFromLast) FROM #tmpNums WHERE instrRowNum = @thisRow AND instrBlockNum = @thisBlock ) > 0

		--SELECT @thisBlock, (SELECT SUM(diffFromLast) FROM #tmpNums WHERE instrRowNum = @thisRow AND instrBlockNum = @thisBlock)

		IF (SELECT SUM(diffFromLast) FROM #tmpNums WHERE instrRowNum = @thisRow AND instrBlockNum = @thisBlock) <= 0
		BEGIN
			SET @thisBlock = 1
		    break
		END
		ELSE 
		BEGIN
			SET @thisBlock = @thisBlock+1
		END
	END
	SET @thisRow = @thisRow+1
END

SELECT instrNum, nextNum
FROM (
	SELECT * 
		, LAG(instrNUM) OVER (PARTITION BY instrRowNum, instrBlockNum ORDER BY instrBlockNum DESC) AS prevDiff
		, instrNum + LAG(instrNUM) OVER (ORDER BY instrBlockNum DESC) AS nextNum
	FROM (
		SELECT * 
			, ROW_NUMBER() OVER ( PARTITION BY instrRowNum, instrBlockNum ORDER BY instrNumPos DESC) AS rn
		FROM #tmpNums  
		WHERE instrNum IS NOT NULL
	) s1
	WHERE s1.rn = 1
) s2
WHERE instrBlockNum = 1



SELECT *
	, LAG(instrNUM) OVER (PARTITION BY instrRowNum, instrBlockNum ORDER BY instrBlockNum DESC) AS prevDiff
	, LEAD(instrNUM,1,0) OVER (PARTITION BY instrRowNum ORDER BY instrBlockNum DESC)
	, instrNum + LAG(instrNUM,1,0) OVER (PARTITION BY instrRowNum ORDER BY instrBlockNum DESC) AS nextNum
FROM (
	SELECT * 
	FROM (
		SELECT * 
			, ROW_NUMBER() OVER ( PARTITION BY instrRowNum, instrBlockNum ORDER BY instrNumPos DESC) AS rn
		FROM #tmpNums  
		WHERE instrNum IS NOT NULL
	) s1
	WHERE s1.rn = 1
) s2
WHERE instrBlockNum = 1


	ORDER BY instrRowNum, instrBlockNum, instrNumPos




--ORDER BY instrRowNum, instrBlockNum, instrNumPos









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
This year has been full of parsing monsters. 

Part 1:
The first thing I need to do is to break these number sets down until they hit 0 results. Then I'll need
to figure out how to backfill the missing numbers. 

It sounds so easy. 

....



Part 2:

*/
