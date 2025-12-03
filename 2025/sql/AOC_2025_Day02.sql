/***** DAY 2 *****/
/* https://adventofcode.com/2025/day/2 */
/* SETUP */

--DECLARE @inp varchar(max) = '3737332285-3737422568,5858547751-5858626020,166911-236630,15329757-15423690,753995-801224,1-20,2180484-2259220,24-47,73630108-73867501,4052222-4199117,9226851880-9226945212,7337-24735,555454-591466,7777695646-7777817695,1070-2489,81504542-81618752,2584-6199,8857860-8922218,979959461-980003045,49-128,109907-161935,53514821-53703445,362278-509285,151-286,625491-681593,7715704912-7715863357,29210-60779,3287787-3395869,501-921,979760-1021259'

/** TEST **/

DECLARE @inp varchar(max) = '11-22,95-115,998-1012,1188511880-1188511890,222220-222224,1698522-1698528,446443-446449,38593856-38593862,565653-565659,824824821-824824827,2121212118-2121212124'

--SELECT  @inp

--DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,',','|')

--SELECT @inStr

/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max), startNum bigint, endNum bigint, dupes varchar(max) )

INSERT INTO #tmpInstructions (instr)
SELECT value FROM STRING_SPLIT(@inStr,'|')


/*** PARSE OUT START AND END NUMBERS ***/
UPDATE #tmpInstructions
SET   startNum =  SUBSTRING(instr,1,CHARINDEX('-',instr)-1)
	, endNum = SUBSTRING(instr,CHARINDEX('-',instr)+1, LEN(instr))


--SELECT * FROM #tmpInstructions

/**********************************************************************/

/* PART 1 */
/*
/*** Create temp table to hold our numbers. ***/
DROP TABLE IF EXISTS #tmpNumsInRange
CREATE TABLE #tmpNumsInRange (instr varchar(max), num bigint, numLength bigint, FirstHalf varchar(2000), SecondHalf varchar(2000), matches bit)


/*** Setup Loop ***/
DECLARE @thisRow int = 1
DECLARE @totalRows int = (SELECT max(id) FROM #tmpInstructions)


WHILE @thisRow <= @totalRows
BEGIN
	/*** Create all numbers in range. ***/
	DECLARE @startNum bigint, @endNum bigint, @theInp varchar(max) 
	
	SELECT @startNum = startNum, @endNum = endNum, @theInp = instr
	FROM #tmpInstructions
	WHERE id = @thisRow

	INSERT INTO #tmpNumsInRange( instr,num, numLength, FirstHalf, SecondHalf )
	SELECT @theInp, value , len(value)
		, SUBSTRING(CAST(value AS varchar(2000)),1,len(value)/2)
		, SUBSTRING(CAST(value AS varchar(2000)), (len(value)/2)+1, len(value))
	FROM GENERATE_SERIES(@startNum,@endNum)
	WHERE LEN(value)%2 = 0

	/**** NEXT RECORD ****/
	SET @thisRow = @thisRow+1
END

--SELECT * FROM #tmpInstructions

--/*** Mark nums that can't match ***/
--UPDATE #tmpNumsInRange
--SET matches = 0
--WHERE numlength%2 = 1

/*** Mark other numbers as match or no match ***/
UPDATE #tmpNumsInRange
SET matches = 1
WHERE FirstHalf = SecondHalf


--SELECT count(*) FROM #tmpNumsInRange WHERE matches = 1
SELECT * FROM #tmpNumsInRange WHERE numlength%2 = 0  ORDER BY num

SELECT SUM(num) FROM #tmpNumsInRange WHERE matches = 1

/* 
38437576669 = That's the right answer!
*/
*/
/**********************************************************************/

/* PART 2 */

/*** Create temp table to hold our numbers. ***/
DROP TABLE IF EXISTS #tmpNumsInRange
CREATE TABLE #tmpNumsInRange (id int identity, instr varchar(max), num bigint, numLength bigint, FirstHalf varchar(2000), lenFirstHalf int, SecondHalf varchar(2000), matches bit)


/*** Setup Loop ***/
DECLARE @thisRow int = 1
DECLARE @totalRows int = (SELECT max(id) FROM #tmpInstructions)


WHILE @thisRow <= @totalRows
BEGIN
	/*** Create all numbers in range. ***/
	DECLARE @startNum bigint, @endNum bigint, @theInp varchar(max) 
	
	SELECT @startNum = startNum, @endNum = endNum, @theInp = instr
	FROM #tmpInstructions
	WHERE id = @thisRow

	INSERT INTO #tmpNumsInRange( instr,num, numLength, FirstHalf, lenFirstHalf, SecondHalf )
	SELECT @theInp, value , len(value)
		, SUBSTRING(CAST(value AS varchar(2000)),1,len(value)/2)
		, len(value)/2
		, SUBSTRING(CAST(value AS varchar(2000)), (len(value)/2)+1, len(value))
	FROM GENERATE_SERIES(@startNum,@endNum)
	--WHERE LEN(value)%2 = 0

/***
NOTES: This gives me all the possible numbers that need to be checked. I should be able to take the half-point of these 
numbers to determine the max length of the number I need to check for. Although my solution will begin straining the 
memory limits of the server. It already took about 1.7M rows just to create all of the numbers to check. I beleive the 
data went up to 10 digits, so that can be a lot to check. 
***/

	--DECLARE @innerThisRow int = 1
	----DECLARE @innerMaxRow int = len(@endNum)
	--DECLARE @innerHalfMax int = len(@endNum)/2
	
	--DECLARE @breakout bit = 0

	--WHILE @innerThisRow <= @innerHalfMax OR @breakout = 0
	--BEGIN
	--		DECLARE @v varchar(200) = (SELECT num FROM #tmpNumsInRange WHERE id = @innerThisRow)
	--		SELECT @v AS v
	

	----	DECLARE @singleValues TABLE (ID int identity, v int)
		
	----	INSERT INTO @singleValues (v)
	----	SELECT SUBSTRING(a.b,v.number+1,1)
	----	FROM ( SELECT @v b)a
	----	INNER JOIN master..spt_values v ON v.number < len(a.b)
	----	WHERE v.type = 'P'

		
	----	SELECT * FROM @singleValues


	--	SELECT @innerThisRow, @innerHalfMax


	--	/**** NEXT RECORD ****/
	--	SET @innerThisRow = @innerThisRow+1
	--END



	/**** NEXT RECORD ****/
	SET @thisRow = @thisRow+1
END

SELECT * FROM #tmpNumsInRange

/*** Check data for dupes. Start with simples. ***/
/*** Mark other numbers as match or no match for 2 ***/
UPDATE #tmpNumsInRange
SET matches = 1
WHERE FirstHalf = SecondHalf



/* 
?? = INCORRECT, TOO ???. 
*/

/**********************************************************************/

/*
NOTES:
After a quick look at the data and the initial instruction, I need to parse out each block of number ranges, then parse out the start and end numbers.

Part 1:
NOTE: To use GENERATE_SERIES(), you have to be at least Compat Level 160 (SQL 2022+)

After creating the horrible SQL loop again to iterate through the numbers generated, it was fairly simple to split the input strings into two 
characters to compare. And if the numbers that needed to be generated came from a string with an odd number of characters, then they couldn't match, 
so those were easy to eliminate right off the bat. I just needed to split the number string in half and compare the first half to the last half. 

My method is horribly inefficient, since it generates a bunch of unused rows, but I can optimize that later if I want. 

I also had to change to using bigint instead of just int for my numbers. The numbers were too big for ints in several rows. 

-----------------------------------

After going around in circles trying to figure out why I wasn't getting the right answer, I looked at the directions again and realized that I wasn't 
supposed to count the number of invalid codes, but I was supposed to SUM THE VALUES of those codes. Duh.

Part 1 is complete. 


Part 2:


Lesson Learned:
AGAIN, READ THE DIRECTIONS CAREFULLY!

*/

/**********************************************************************/

/********************
--- Day 2: Gift Shop ---
You get inside and take the elevator to its only other stop: the gift shop. "Thank you for visiting the North Pole!" gleefully exclaims a nearby sign. You aren't sure who is even allowed to visit the North Pole, but you know you can access the lobby through here, and from there you can access the rest of the North Pole base.

As you make your way through the surprisingly extensive selection, one of the clerks recognizes you and asks for your help.

As it turns out, one of the younger Elves was playing on a gift shop computer and managed to add a whole bunch of invalid product IDs to their gift shop database! Surely, it would be no trouble for you to identify the invalid product IDs for them, right?

They've even checked most of the product ID ranges already; they only have a few product ID ranges (your puzzle input) that you'll need to check. For example:

11-22,95-115,998-1012,1188511880-1188511890,222220-222224,
1698522-1698528,446443-446449,38593856-38593862,565653-565659,
824824821-824824827,2121212118-2121212124
(The ID ranges are wrapped here for legibility; in your input, they appear on a single long line.)

The ranges are separated by commas (,); each range gives its first ID and last ID separated by a dash (-).

Since the young Elf was just doing silly patterns, you can find the invalid IDs by looking for any ID which is made only of some sequence of digits repeated twice. So, 55 (5 twice), 6464 (64 twice), and 123123 (123 twice) would all be invalid IDs.

None of the numbers have leading zeroes; 0101 isn't an ID at all. (101 is a valid ID that you would ignore.)

Your job is to find all of the invalid IDs that appear in the given ranges. In the above example:

11-22 has two invalid IDs, 11 and 22.
95-115 has one invalid ID, 99.
998-1012 has one invalid ID, 1010.
1188511880-1188511890 has one invalid ID, 1188511885.
222220-222224 has one invalid ID, 222222.
1698522-1698528 contains no invalid IDs.
446443-446449 has one invalid ID, 446446.
38593856-38593862 has one invalid ID, 38593859.
The rest of the ranges contain no invalid IDs.
Adding up all the invalid IDs in this example produces 1227775554.

What do you get if you add up all of the invalid IDs?



********************/