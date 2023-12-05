/***** --- Day NN: Title --- *****/
/* https://adventofcode.com/2023/day/NN */
/* SETUP */
DECLARE @inp varchar(max) = '';

/**** TEST */
/*
DECLARE @inp varchar(max) = ''
*/

--SELECT  @inp
DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')

--SELECT @inStr

/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max), numberList varchar(max) )

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

Part 1:

Part 2:

*/
