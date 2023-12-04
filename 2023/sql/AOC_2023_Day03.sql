/***** --- Day 3: Gear Ratios --- *****/
/* https://adventofcode.com/2023/day/3 */
/* SETUP */
/*
DECLARE @inp varchar(max) = '';
*/
/**** TEST */
DECLARE @inp varchar(max) = '467..114..
...*......
..35..633.
......#...
617*......
.....+.58.
..592.....
......755.
...$.*....
.664.598..'

--SELECT  @inp
DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')

/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max))

INSERT INTO #tmpInstructions (instr)
SELECT value FROM STRING_SPLIT(@inStr,'|')

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

Part 2:

*/
