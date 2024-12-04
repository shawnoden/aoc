/***** DAY 4 *****/
/* https://adventofcode.com/2024/day/4 */
/* SETUP */
/*
DECLARE @inp varchar(max) = '';
*/

/**** TEST */
/*Part1*/ 
DECLARE @inp varchar(max) = 'MMMSXXMASM
MSAMXMSMSA
AMXSXMAAMM
MSAMASMSMX
XMASAMXAMM
XXAMMXXAMA
SMSMSASXSS
SAXAMASAAA
MAMMMXMMMM
MXMXAXMASX'
/*Part2*/ --DECLARE @inp varchar(max) = ''
/**/

--SELECT  @inp

DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,'mul(','|')

SET @inStr = REPLACE(@inStr,@CRLF,'|')

--SELECT @inStr

/* Part 1 */
/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max), rowNum int
)

INSERT INTO #tmpInstructions (instr, rowNum)
SELECT value, ordinal FROM STRING_SPLIT(@inStr,'|',1)

/* CTE Tally Table to the rescue. */  
/** https://www.sqlservercentral.com/forums/topic/split-string-by-number-of-characters **/
/** https://www.sqlservercentral.com/articles/using-a-cte-as-a-tally-table **/

; WITH E(n) AS(
 SELECT n FROM (VALUES(0),(0),(0),(0),(0),(0),(0),(0),(0),(0))E(n)
),
E2(n) AS(
 SELECT a.n FROM E a, E b
),
E4(n) AS(
 SELECT a.n FROM E2 a, E2 b
),

cteTally(n) AS(
 SELECT TOP( CAST(CEILING(LEN(instr) / 5.) AS int))
  ROW_NUMBER() OVER(ORDER BY (SELECT NULL)) - 1 n
 FROM E4
)
SELECT SUBSTRING( instr, (5 * n) + 1, 5)
FROM cteTally;


/***********************************/

/* Instructions2 table. */
DROP TABLE IF EXISTS #tmpInstructions2
CREATE TABLE #tmpInstructions2 (id int identity, instr varchar(max)
, rowNum int, colNum int, charVal varchar(5)
, charsLeft varchar(5), charsRight varchar(5), charsUp varchar(5)
, charsDiagUpLeft varchar(5), charsDiagUpRight varchar(5), charsDiagDownLeft varchar(5), charsDiagDownRight varchar(5)
)

INSERT INTO #tmpInstructions2 (rowNum, colNum, charVal)
SELECT rowNum, c1.value, c1.ordinal 
FROM #tmpInstructions t1
CROSS APPLY (SELECT ordinal, value FROM STRING_SPLIT(instr,' ',1)) c1









SELECT SUM(m1) 
FROM (
	SELECT cast(n1 AS int)*cast(n2 AS int) AS m1
	FROM (
		SELECT SUBSTRING(instr,1,CHARINDEX(',',instr)-1) AS n1, SUBSTRING(instr,CHARINDEX(',',instr)+1, 8) AS n2
		FROM #tmpInstructions s1
	) s2
) s3


/* 196826776 = CORRECT! */

/* PART 2 */

/*
??? = CORRECT!
*/

/*
NOTES:
Part 1:
For part one, my initial thought is to split the string on each character and then compare characters in 
each direction to see which ones spell 'XMAS'.

I may need to add my numbers table finally. :-)

===================================
Part 2:


*/


/********************
--- Day 4: Ceres Search ---
"Looks like the Chief's not here. Next!" One of The Historians pulls out a device and pushes the only button on it. After a brief flash, you recognize the interior of the Ceres monitoring station!

As the search for the Chief continues, a small Elf who lives on the station tugs on your shirt; she'd like to know if you could help her with her word search (your puzzle input). She only has to find one word: XMAS.

This word search allows words to be horizontal, vertical, diagonal, written backwards, or even overlapping other words. It's a little unusual, though, as you don't merely need to find one instance of XMAS - you need to find all of them. Here are a few ways XMAS might appear, where irrelevant characters have been replaced with .:

..X...
.SAMX.
.A..A.
XMAS.S
.X....
The actual word search will be full of letters instead. For example:

MMMSXXMASM
MSAMXMSMSA
AMXSXMAAMM
MSAMASMSMX
XMASAMXAMM
XXAMMXXAMA
SMSMSASXSS
SAXAMASAAA
MAMMMXMMMM
MXMXAXMASX
In this word search, XMAS occurs a total of 18 times; here's the same word search again, but where letters not involved in any XMAS have been replaced with .:

....XXMAS.
.SAMXMS...
...S..A...
..A.A.MS.X
XMASAMX.MM
X.....XA.A
S.S.S.S.SS
.A.A.A.A.A
..M.M.M.MM
.X.X.XMASX
Take a look at the little Elf's word search. How many times does XMAS appear?
********************/