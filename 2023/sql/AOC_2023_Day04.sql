/***** --- Day 4: Scratchcards  --- *****/
/* https://adventofcode.com/2023/day/4 */
/* SETUP */
/*
DECLARE @inp varchar(max) = '';
*/
/**** TEST */
DECLARE @inp varchar(max) = 'Card 1: 41 48 83 86 17 | 83 86  6 31 17  9 48 53
Card 2: 13 32 20 16 61 | 61 30 68 82 17 32 24 19
Card 3:  1 21 53 59 44 | 69 82 63 72 16 21 14  1
Card 4: 41 92 73 84 69 | 59 84 76 51 58  5 54 83
Card 5: 87 83 26 28 32 | 88 30 70 12 93 22 82 36
Card 6: 31 18 13 56 72 | 74 77 10 23 35 67 36 11'

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
Day 4 looks like another parsing nightmare. I still haven't completed
Day 3 yet, so I guess I should tackle that one first. Don't want to get
too far behind this early. 

....




Part 1:

Part 2:

*/
