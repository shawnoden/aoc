/***** DAY 9 *****/
/* SETUP */

DECLARE @inp varchar(max) = '';


/* TESTS */
/*
DECLARE @inp varchar(max) = ''
*/

DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')

DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (
      id int identity
    , baseInstructions varchar(max)
    , rowNum int
)

INSERT INTO #tmpInstructions (baseInstructions)
SELECT value FROM STRING_SPLIT(@inStr,'|')

UPDATE #tmpInstructions
SET rowNum = id

--SELECT * FROM #tmpInstructions

/* PART 1 */


/* PART 2 */

/*
NOTES:
Part 1:

Part 2:
*/

