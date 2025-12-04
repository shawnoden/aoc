/***** DAY 3 *****/
/* https://adventofcode.com/2025/day/3 */
/* SETUP */

/*
DECLARE @inp varchar(max) = ''
*/

/** TEST **/

DECLARE @inp varchar(max) = ''

--SELECT  @inp

--DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,',','|')

--SELECT @inStr

/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max), startNum int, endNum int, dupes varchar(max) )

INSERT INTO #tmpInstructions (instr)
SELECT value FROM STRING_SPLIT(@inStr,'|')


/*** PARSE OUT START AND END NUMBERS ***/
UPDATE #tmpInstructions
SET   startNum =  SUBSTRING(instr,1,CHARINDEX('-',instr)-1)
	, endNum = SUBSTRING(instr,CHARINDEX('-',instr)+1, LEN(instr))


SELECT * FROM #tmpInstructions

/**********************************************************************/

/* PART 1 */

/* 
?? = INCORRECT. 
*/

/**********************************************************************/

/* PART 2 */


/* 
?? = INCORRECT. 


Should be 6554!
*/

/**********************************************************************/

/*
NOTES:


Part 1:


Part 2:


Lesson Learned:

*/

/**********************************************************************/

/********************


********************/