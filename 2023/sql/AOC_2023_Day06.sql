/***** --- Day 6: Wait For It --- *****/
/* https://adventofcode.com/2023/day/6 */

/*
Time:      7  15   30
Distance:  9  40  200
This document describes three races:

The first race lasts 7 milliseconds. The record distance in this race is 9 millimeters.
The second race lasts 15 milliseconds. The record distance in this race is 40 millimeters.
The third race lasts 30 milliseconds. The record distance in this race is 200 millimeters.
*/

/* SETUP */
/*
Time:        62     73     75     65
Distance:   644   1023   1240   1023
*/

DECLARE @inp varchar(max) = '62737565.644102312401023';

/**** TEST ****/
/*
DECLARE @inp varchar(max) = '7.9|15.40|30.200'
--DECLARE @inp varchar(max) = '71530.940200';
*/
/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max), timeMS bigint, recordMM bigint )

INSERT INTO #tmpInstructions (instr)
SELECT value FROM STRING_SPLIT(@inp,'|')

UPDATE #tmpInstructions
SET timeMS = PARSENAME(instr,2)
	, recordMM = PARSENAME(instr,1)


--SELECT * FROM #tmpInstructions

DROP TABLE IF EXISTS #numTable
CREATE TABLE #numTable (num int)
/* NUMBERS TABLE - up to 999K */
INSERT INTO #numTable (num)
SELECT * 
FROM (
	SELECT ones.n + 10*tens.n + 100*hundreds.n + 1000*thousands.n+10000*tenthousands.n+100000*hundredthousands.n+1000000*millions.n + 10000000*tenmillions.n
	FROM (VALUES (0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) ones(n),
		 (VALUES(0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) tens(n),
		 (VALUES(0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) hundreds(n),
		 (VALUES(0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) thousands(n),
		 (VALUES(0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) tenthousands(n),
		 (VALUES(0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) hundredthousands(n), 
		 (VALUES(0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) millions(n),
		 (VALUES(0),(1),(2),(3),(4),(5),(6),(7),(8),(9)) tenmillions(n)
) s1(num)
WHERE num > 0
ORDER BY num

--SELECT * FROM #numTable ORDER BY num

/* Create action table. */
DROP TABLE IF EXISTS #tmpActions
CREATE TABLE #tmpActions ( raceID int, timeMS bigint, recordMM bigint, holdMS bigint, distMM bigint)


--SELECT * FROM #tmpActions

INSERT INTO #tmpActions ( raceID, timeMS, recordMM, holdMS, distMM )
SELECT 1, ti.timeMS, ti.recordMM, ti.timeMS-nt.num, (ti.timeMS-nt.num)*nt.num
FROM #tmpInstructions ti
INNER JOIN #numTable nt ON nt.num < ti.timeMS



/* PART 1 */
/* https://stackoverflow.com/questions/30665719/how-to-multiply-all-values-within-a-column-with-sql-like-sum */
/*
SELECT ROUND(EXP(SUM(LOG(cnt))),1)
FROM (
	SELECT raceID, count(*) AS cnt
	FROM #tmpActions 
	WHERE distMM > recordMM
	GROUP BY raceID
) s1
*/

/* 
Attempt 1: 393120 <<< CORRECT!
*/

/* PART 2 */
SELECT count(*) AS cnt FROM #tmpActions WHERE distMM > recordMM



/* 
ATTEMPT 1:
*/

/*
NOTES:
Another one with a short input. I'm not parsing it again. I'll just manually decode these.
Part 1:
Number Table to the rescue again. I should be able to use this to calculate all posibilities for the wins. 

...

This one was fairly simple. It ultimately was a math problem. This one was very suited to SQL.

ATTEMPT 1: 


Part 2:
This one is very similar, but changes the input. Big numbers! I've had to expand my Numbers Table to about 
100M numbers. It took about 30 seconds to generate. 

Also, we're working with some massive numbers. And int datatype isn't going to work here. I'll change everything
to bigints. 

....

After making the changes and running the solution again, it came back in about 30 seconds. Then counting the 
correct numbers took about 2 seconds. There's a LOT of work I can do to optimize. 

ATTEMPT 1: 36872656 CORRECT!

SQL works well again today! But it was the Numbers Table that really did it. 

*/
