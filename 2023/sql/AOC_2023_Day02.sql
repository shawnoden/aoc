/***** --- Day 2: Cube Conundrum --- *****/
/* https://adventofcode.com/2023/day/2 */
/* SETUP */

DECLARE @inp varchar(max) = 'Game 1: 7 blue, 4 red, 11 green; 2 red, 2 blue, 7 green; 2 red, 13 blue, 8 green; 18 blue, 7 green, 5 red
Game 2: 3 green, 4 red, 4 blue; 6 red, 4 green, 4 blue; 2 blue, 4 green, 3 red
Game 3: 1 red, 2 green, 3 blue; 1 red, 2 green; 2 green, 3 red; 1 blue, 2 red
Game 4: 1 red, 15 green; 1 green, 2 blue; 12 green, 1 red, 2 blue; 14 green; 2 green, 1 blue, 2 red
Game 5: 8 red; 7 red; 11 red, 4 green; 1 blue, 8 red; 6 red, 2 green, 1 blue; 8 green, 13 red, 1 blue
Game 6: 3 blue, 2 red, 6 green; 2 red, 8 green, 1 blue; 1 red, 3 blue
Game 7: 5 green, 1 red, 1 blue; 6 blue, 12 red; 6 red, 7 green; 3 green, 1 blue
Game 8: 10 red, 6 green; 4 blue, 6 green, 5 red; 8 green, 5 red, 5 blue; 2 red, 4 blue
Game 9: 11 blue, 13 red, 3 green; 13 red, 1 green, 6 blue; 8 blue, 4 green, 5 red; 16 red, 7 green, 10 blue; 16 red, 5 green, 6 blue; 17 red, 6 blue
Game 10: 16 blue, 8 green; 2 red, 4 green, 1 blue; 15 blue; 4 red, 5 green, 4 blue
Game 11: 3 blue, 8 red, 10 green; 10 red, 6 green; 1 red, 1 green; 13 red, 1 green, 1 blue; 3 green, 7 red; 2 blue, 6 green, 2 red
Game 12: 1 red, 10 green; 4 red, 6 green, 1 blue; 9 green, 1 blue, 7 red; 1 blue, 13 green, 2 red; 2 blue, 5 red, 11 green
Game 13: 1 red, 5 blue; 1 red, 6 green; 2 blue, 1 red; 2 blue, 1 red, 2 green; 5 green, 2 blue
Game 14: 4 green; 8 blue, 1 red, 2 green; 7 red, 2 green, 4 blue; 4 blue, 7 green; 7 blue, 2 green, 1 red; 7 blue, 5 red
Game 15: 10 green, 3 red; 8 blue, 14 green, 3 red; 4 red, 1 green, 12 blue
Game 16: 8 red, 4 blue, 6 green; 14 blue, 9 red, 10 green; 1 red, 5 blue, 8 green; 14 blue, 11 green, 3 red
Game 17: 20 blue, 5 red, 4 green; 3 red, 14 blue; 4 red, 4 blue, 4 green; 12 blue, 5 red, 3 green
Game 18: 7 blue, 8 red; 1 blue, 2 red; 1 green, 2 blue
Game 19: 14 green, 4 blue; 6 green; 12 green, 5 blue; 12 green, 1 red, 1 blue; 4 blue, 10 green
Game 20: 3 green, 4 blue, 4 red; 13 blue, 1 red, 2 green; 13 blue, 9 green, 9 red
Game 21: 4 green, 2 blue, 2 red; 3 green, 2 blue; 1 blue, 5 green; 1 blue, 2 red, 3 green; 1 green, 1 blue, 2 red; 6 blue, 1 green
Game 22: 4 red, 17 green; 15 green, 3 blue, 2 red; 4 blue, 7 red, 11 green; 16 green, 4 red; 3 blue, 2 red
Game 23: 19 green, 2 blue, 3 red; 1 red, 2 blue, 2 green; 2 blue, 10 green, 11 red
Game 24: 1 red, 3 blue; 2 blue; 1 green, 1 red, 3 blue; 1 red, 1 green
Game 25: 12 green, 2 red, 10 blue; 6 green, 3 red; 3 green, 18 blue, 3 red; 17 green, 3 red, 18 blue
Game 26: 4 red, 12 blue, 5 green; 3 green, 5 red, 1 blue; 6 blue, 4 green, 1 red; 6 blue, 7 green; 3 green, 5 red, 2 blue; 1 green, 2 blue, 9 red
Game 27: 1 red, 9 green; 3 green; 9 green, 2 blue, 1 red; 10 green, 1 blue; 1 red, 5 green, 3 blue
Game 28: 10 red, 8 green; 2 blue, 4 green, 7 red; 2 green, 9 red, 1 blue
Game 29: 5 blue, 5 green, 3 red; 1 green, 2 blue, 3 red; 2 green, 3 blue, 5 red; 3 red, 11 blue
Game 30: 11 red, 5 green; 4 blue, 3 green, 5 red; 6 blue, 3 green, 5 red
Game 31: 2 blue, 8 green, 14 red; 9 green; 1 red, 1 blue, 4 green; 2 green, 10 red; 1 red, 10 green, 2 blue; 8 green, 14 red
Game 32: 14 green, 6 red, 6 blue; 1 red, 2 blue, 15 green; 2 red, 18 green, 1 blue
Game 33: 16 green, 4 red; 18 green, 3 red; 5 red, 10 green; 5 red, 19 green; 11 green, 4 red; 11 red, 1 blue, 2 green
Game 34: 1 blue, 11 red; 5 red, 4 green; 4 green, 1 blue, 12 red; 2 blue, 1 green, 7 red; 3 green, 1 blue, 12 red
Game 35: 5 red, 1 blue; 1 blue, 1 red; 2 blue, 2 green, 15 red; 7 red, 2 green; 3 blue, 1 green, 1 red; 16 red, 3 blue, 1 green
Game 36: 10 green, 16 red; 2 blue, 14 green, 6 red; 1 blue, 8 green, 12 red
Game 37: 17 green, 14 blue; 10 green, 12 blue; 10 blue, 1 red, 8 green
Game 38: 9 blue, 2 green; 5 blue, 1 green, 5 red; 6 blue, 2 green, 7 red; 17 red, 1 green, 7 blue; 1 green, 9 blue, 16 red
Game 39: 2 red, 13 blue, 10 green; 5 blue, 15 green, 1 red; 13 blue, 5 green; 3 red, 6 blue, 2 green; 17 green, 1 blue, 4 red; 4 red, 1 blue, 11 green
Game 40: 4 green, 12 blue; 5 red, 13 blue, 1 green; 4 green, 7 red; 7 blue, 2 green
Game 41: 3 red, 1 green; 10 green, 4 blue, 5 red; 8 blue, 5 red
Game 42: 8 blue, 12 red, 5 green; 8 red, 5 green, 4 blue; 3 green, 13 red; 8 blue, 16 red; 12 red, 3 green, 1 blue; 2 blue, 2 green, 6 red
Game 43: 5 blue, 4 red; 10 red, 6 blue; 12 red, 2 blue, 1 green; 7 blue, 12 red, 1 green
Game 44: 11 blue, 5 red; 2 red, 13 green, 5 blue; 7 red, 7 blue, 11 green
Game 45: 7 red, 6 blue; 5 blue, 6 green; 5 green, 5 blue, 7 red; 4 red, 9 green, 12 blue; 9 blue, 12 green, 1 red
Game 46: 2 green, 7 blue, 20 red; 18 green, 2 blue; 8 blue, 1 red, 3 green; 6 green, 1 blue; 2 red, 6 blue, 4 green
Game 47: 6 red, 6 blue; 14 blue, 7 green, 2 red; 8 blue, 3 red
Game 48: 1 red, 5 blue; 3 blue, 15 green, 2 red; 6 blue, 1 red, 13 green; 6 green, 4 blue, 3 red; 11 green, 3 blue
Game 49: 1 green, 15 blue, 3 red; 15 green, 6 blue; 12 green, 2 red, 8 blue; 3 green, 16 blue
Game 50: 8 blue, 7 red, 1 green; 6 blue, 1 green, 2 red; 3 red, 7 blue; 4 blue, 6 red, 1 green
Game 51: 2 red, 5 blue; 2 red, 10 green; 11 green, 1 blue; 9 green, 1 blue, 2 red; 5 blue, 11 green; 1 red, 8 green, 1 blue
Game 52: 1 green, 1 red, 15 blue; 17 blue, 1 red; 5 red, 1 green; 19 blue, 6 red, 3 green; 5 blue, 1 green
Game 53: 1 blue, 12 red, 6 green; 3 red, 7 green, 3 blue; 2 blue, 7 red, 5 green; 4 red, 3 blue, 19 green; 10 red, 12 green, 2 blue; 5 blue, 7 red, 14 green
Game 54: 12 green, 1 red, 4 blue; 3 blue, 5 red, 8 green; 9 green, 6 blue; 3 green, 2 red, 11 blue; 3 green, 10 blue, 7 red; 2 red, 3 green, 4 blue
Game 55: 5 red, 3 blue; 4 blue, 6 green; 10 blue, 1 green; 7 green, 4 red, 14 blue; 2 red, 9 blue, 10 green; 5 red, 10 blue, 10 green
Game 56: 3 green, 11 blue; 4 blue, 10 green, 8 red; 2 blue, 5 green, 2 red; 1 blue, 1 green, 8 red; 5 green, 7 red, 3 blue
Game 57: 2 green, 2 blue, 3 red; 8 red, 5 green, 2 blue; 16 red, 12 blue, 7 green; 13 blue, 6 red, 2 green; 12 red, 1 green
Game 58: 2 green, 3 blue, 8 red; 3 green, 4 blue, 7 red; 2 blue, 11 red, 4 green; 4 green, 1 blue, 2 red; 3 green, 3 red, 2 blue
Game 59: 10 red, 6 blue, 2 green; 2 green, 6 blue, 14 red; 3 green, 11 red, 7 blue; 1 blue, 1 green
Game 60: 5 blue, 10 red; 4 blue, 12 red; 2 green, 3 red, 4 blue
Game 61: 4 blue, 1 green; 10 blue, 2 red; 6 blue, 1 red; 1 green, 7 red; 5 blue, 5 red
Game 62: 6 blue, 7 red, 1 green; 7 blue, 7 green, 15 red; 14 green, 16 red, 2 blue; 2 blue, 17 red; 4 red, 11 green, 6 blue; 13 green, 16 red, 5 blue
Game 63: 4 red, 13 green, 1 blue; 2 green, 5 blue, 10 red; 3 green, 8 red; 1 blue, 3 red, 11 green; 1 red, 7 blue
Game 64: 12 green, 1 blue; 8 red, 1 blue, 10 green; 11 green, 1 blue, 3 red; 10 green, 2 red, 1 blue; 1 blue, 9 green, 8 red
Game 65: 5 green, 2 red; 7 blue, 5 red, 10 green; 9 green, 8 blue; 3 blue, 4 red, 8 green; 11 green, 6 red, 16 blue
Game 66: 8 green, 1 red, 4 blue; 10 green, 5 blue, 7 red; 5 blue, 3 red, 6 green; 4 blue, 12 green, 6 red; 16 green, 3 red; 16 green, 7 red, 4 blue
Game 67: 6 green; 7 red, 1 green, 5 blue; 10 red, 13 green, 3 blue; 8 green, 11 red, 6 blue; 14 red, 5 green, 7 blue
Game 68: 1 red, 8 green, 3 blue; 1 green, 1 red, 1 blue; 1 green, 11 blue, 1 red
Game 69: 2 red, 4 green, 1 blue; 4 blue, 10 green; 4 green, 1 blue, 2 red; 12 green, 5 blue; 6 blue, 3 green
Game 70: 1 blue, 3 green, 2 red; 1 green, 2 blue; 5 green, 1 red; 2 blue, 4 green; 1 red, 5 green
Game 71: 6 blue, 3 red, 12 green; 2 red, 8 green, 3 blue; 8 green, 8 blue; 7 blue, 1 red, 9 green; 2 green, 4 blue, 1 red; 3 red, 7 blue, 8 green
Game 72: 8 red, 7 blue, 6 green; 2 red, 8 blue, 7 green; 2 red, 5 blue, 1 green; 4 green, 6 blue, 1 red; 11 green, 13 red, 3 blue; 8 green, 11 red, 2 blue
Game 73: 7 blue, 17 red, 4 green; 1 red, 4 green, 2 blue; 3 red, 4 blue, 4 green; 5 blue, 5 red; 6 red, 2 blue; 11 red, 1 green, 4 blue
Game 74: 3 red, 2 green; 4 red, 12 blue, 4 green; 7 red, 6 blue, 10 green
Game 75: 6 blue, 7 green; 8 green, 9 blue, 1 red; 6 red, 4 blue, 9 green; 10 red, 9 blue, 4 green; 6 red, 2 blue, 1 green; 7 green
Game 76: 10 red, 8 green; 2 red, 2 blue, 5 green; 1 red, 1 blue, 1 green; 9 red, 11 green, 2 blue; 2 blue, 9 green, 3 red; 6 green, 14 red
Game 77: 9 blue, 1 red, 3 green; 8 blue, 17 green, 4 red; 5 green, 1 blue, 2 red; 6 green, 1 red, 9 blue; 4 green, 10 red; 9 red, 3 blue
Game 78: 5 green, 10 blue; 2 green, 5 blue, 11 red; 1 red, 1 green, 6 blue; 1 red, 8 blue, 4 green
Game 79: 3 green, 1 blue, 2 red; 8 green, 1 blue, 2 red; 2 blue, 1 red, 11 green
Game 80: 12 blue, 3 green; 6 red, 4 green, 13 blue; 4 blue, 8 red; 3 green, 4 blue
Game 81: 1 green, 5 blue; 1 green, 3 blue, 1 red; 1 blue, 1 red, 3 green; 6 blue, 5 green
Game 82: 2 green, 1 blue; 10 blue, 1 red, 6 green; 4 green, 20 blue, 1 red; 20 blue, 2 green, 1 red
Game 83: 2 green, 9 blue, 10 red; 12 red, 11 blue, 4 green; 11 blue, 8 red, 3 green; 17 green, 4 blue; 12 green, 4 red, 6 blue; 1 red, 11 green, 8 blue
Game 84: 7 green, 15 red, 15 blue; 4 blue, 3 green, 18 red; 2 blue, 1 red, 2 green; 8 blue, 19 red, 5 green; 11 blue, 3 red; 9 red, 2 blue
Game 85: 14 green, 3 red, 16 blue; 3 blue, 6 green; 12 green, 6 blue, 2 red
Game 86: 5 red, 6 green; 9 red, 4 green; 7 green, 1 blue, 2 red
Game 87: 10 blue, 7 red, 1 green; 12 blue, 14 red; 7 blue, 7 red
Game 88: 5 red, 10 green, 5 blue; 10 green, 2 red, 8 blue; 2 red, 14 green, 4 blue
Game 89: 1 blue, 6 red, 12 green; 9 red, 13 green, 3 blue; 11 green, 6 red, 3 blue
Game 90: 1 green, 8 blue, 10 red; 10 blue, 7 green; 6 blue, 15 red, 1 green; 1 blue, 16 red, 4 green
Game 91: 8 red, 9 green, 2 blue; 2 red, 15 blue, 2 green; 15 blue, 1 red, 5 green; 1 green, 6 red, 10 blue
Game 92: 10 blue, 4 red; 9 blue, 3 red, 7 green; 8 blue, 16 green, 3 red; 16 green, 16 blue
Game 93: 1 blue, 2 green, 1 red; 4 red, 7 green, 12 blue; 6 green, 3 blue, 4 red; 8 blue, 4 red, 12 green; 5 red, 8 green; 1 red, 18 blue, 10 green
Game 94: 1 blue, 5 red, 6 green; 7 red, 6 green, 1 blue; 8 red, 11 green; 12 green, 7 red, 1 blue; 7 red, 8 green
Game 95: 10 red, 7 green; 2 green, 1 blue, 10 red; 6 green, 5 red, 1 blue
Game 96: 3 blue, 12 red, 3 green; 13 red, 9 blue; 2 green, 5 red, 13 blue; 2 red, 18 blue, 4 green; 6 red, 6 blue, 7 green; 3 green, 15 red, 18 blue
Game 97: 4 red, 3 green; 2 blue, 4 red, 5 green; 3 red, 3 green
Game 98: 2 red, 19 blue; 2 blue; 11 blue, 2 red; 3 green, 5 blue, 1 red; 2 red, 1 blue; 17 blue
Game 99: 2 red, 16 blue, 1 green; 2 green, 12 blue, 6 red; 1 red, 3 green, 3 blue; 8 red, 1 green; 2 red, 9 blue; 1 green, 7 red, 9 blue
Game 100: 8 green, 3 red; 7 green, 4 red; 1 red, 7 green, 2 blue; 1 green, 2 red';

/**** TEST */
/*
DECLARE @inp varchar(max) = 'Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green'
*/
DECLARE @baseline varchar(max) = '12 red cubes, 13 green cubes, and 14 blue cubes'

--SELECT  @inp
DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')

/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max), gameid int, colorList varchar(max), maxRed int, maxGreen int, maxBlue int, cubePower int)

/* Normalize string */
SET @inStr = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@inStr,'Game ',''),': ',':'),'; ',';'),', ',','),' ','')
/* Shorten strings by colors. */
SET @inStr = REPLACE(REPLACE(REPLACE(@inStr,'red','r'),'green','g'),'blue','b')

INSERT INTO #tmpInstructions (instr)
SELECT value FROM STRING_SPLIT(@inStr,'|')

/* PARSE out GameID */
UPDATE #tmpInstructions
SET gameID = LEFT(instr,CHARINDEX(':',instr)-1)
	, colorList = RIGHT(instr,LEN(instr)-CHARINDEX(':',instr))

/* .... */
; WITH colors AS (
	SELECT gameID, b, g, r
	FROM (
		/* MAX COLORS PER GAME */
			SELECT gameID, RIGHT(c2.value,1) AS color, CAST((LEFT(c2.value,LEN(c2.value)-1)) AS int) AS colorCount
			FROM (
				SELECT gameID, s1.rn, s1.value AS cl
				FROM (
					SELECT gameID, c1.value, colorList, ROW_NUMBER() OVER (PARTITION BY gameID ORDER BY gameID) AS rn
					FROM #tmpInstructions
					CROSS APPLY string_split(colorList,';') c1
				) s1
			) s2
			CROSS APPLY STRING_SPLIT(s2.cl,',') c2
	) s3
	PIVOT 
	(
		max(colorCount) FOR color IN ([b],[g],[r])
	) AS pt
)
UPDATE #tmpInstructions
SET maxBlue = c.b
	, maxGreen = c.g
	, maxRed = c.r
FROM colors c
WHERE #tmpInstructions.gameID = c.gameid


/* PART 1 */

; WITH baseLine AS (
	/* Should be @baseline */
	SELECT r=12,g=13,b=14
) 
SELECT sum(gameid) AS cnt
FROM #tmpInstructions ti
INNER JOIN baseLine bl ON 
	    ti.maxRed <= bl.r
	AND ti.maxGreen <= bl.g
	AND ti.maxBlue <= bl.b 

/* 
Attempt 1: 51 << INCORRECT
Attempt 2: 2476 <<< CORRECT!
*/

/* PART 2 */

UPDATE #tmpInstructions
SET cubePower = maxRed * maxGreen * maxBlue

SELECT sum(cubePower) 
FROM #tmpInstructions

/* 
ATTEMPT 1: 54911 << CORRECT!
*/

/*
NOTES:
Today we're playing a game with the elves using colored cubes. What
kind of trouble are they going to get us in. 

Part 1:
This actually looks like something SQL is made for: working with 
sets. Of course we still have to do some string parsing to get to 
the sets. 

One quick note: Each game is delimited by both semicolons and commas
to differentiate between subsets. This should be fun...

So watching TV while trying doing these problems isn't very conducive 
to completing them quickly. But I did get this one squared away. 

It required a bunch of parsing again to split the inputs out into 
something that I could use. STRING_SPLIT to the rescue again. And I
actually threw in a PIVOT. 

I built everything back into my base table so I could do the calcs 
on it and got my answer. 

ATTEMPT 1: 51 <<< INCORRECT

Oops. I counted my rows instead of SUMming the GameIDs. 

ATTEMPT 2: 2476 <<< CORRECT!

Part 1 complete. 


Part 2:
More funky logic. One more second...

The calcs I initially did for Part 1 should work for Part 2. Since
I already know which ones are the max for each set, I can just do 
my calcs from that. I'll add another column to the base table so 
that I can keep track in the table. 

.....

This was pretty simple in SQL, especially since I already put this
data into a table format. I just needed to multiple the max values
from all of the colors then sum those rows. 

Easy.

ATTEMPT 1: 54911 << CORRECT!

And despite the TV, Day 2 is complete. 

*/
