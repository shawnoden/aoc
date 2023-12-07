/***** --- Day 7: Camel Cards --- *****/
/* https://adventofcode.com/2023/day/7 */
/*
STRENGTH: A, K, Q, J, T, 9, 8, 7, 6, 5, 4, 3, or 2
RULES:Every hand is exactly one type. From strongest to weakest, they are:

Five of a kind, where all five cards have the same label: AAAAA
Four of a kind, where four cards have the same label and one card has a different label: AA8AA
Full house, where three cards have the same label, and the remaining two cards share a different label: 23332
Three of a kind, where three cards have the same label, and the remaining two cards are each different from any other card in the hand: TTT98
Two pair, where two cards share one label, two other cards share a second label, and the remaining card has a third label: 23432
One pair, where two cards share one label, and the other three cards have a different label from the pair and each other: A23A4
High card, where all cards' labels are distinct: 23456
*/

/* SETUP */
/*
DECLARE @inp varchar(max) = '';
*/
/**** TEST ****/

DECLARE @inp varchar(max) = '32T3K 765
T55J5 684
KK677 28
KTJJT 220
QQQJA 483'


--SELECT  @inp
DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')

--SELECT @inStr

/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max), cards varchar(10), bid int )

INSERT INTO #tmpInstructions (instr)
SELECT value FROM STRING_SPLIT(@inStr,'|')

UPDATE #tmpInstructions
SET cards = PARSENAME(REPLACE(instr,' ','.'),2)
    , bid = PARSENAME(REPLACE(instr,' ','.'),1)


UPDATE #tmpInstructions
SET cards = ISNULL(STUFF(cards,CHARINDEX(cards,'2'),1,'2'),cards)
UPDATE #tmpInstructions
SET cards = ISNULL(STUFF(cards,CHARINDEX(cards,'3'),1,'3'),cards)
UPDATE #tmpInstructions
SET cards = ISNULL(STUFF(cards,CHARINDEX(cards,'4'),1,'4'),cards)
UPDATE #tmpInstructions
SET cards = ISNULL(STUFF(cards,CHARINDEX(cards,'5'),1,'5'),cards)
UPDATE #tmpInstructions
SET cards = ISNULL(STUFF(cards,CHARINDEX(cards,'6'),1,'6'),cards)
UPDATE #tmpInstructions
SET cards = ISNULL(STUFF(cards,CHARINDEX(cards,'7'),1,'7'),cards)
UPDATE #tmpInstructions
SET cards = ISNULL(STUFF(cards,CHARINDEX(cards,'8'),1,'8'),cards)
UPDATE #tmpInstructions
SET cards = ISNULL(STUFF(cards,CHARINDEX(cards,'9'),1,'9'),cards)
UPDATE #tmpInstructions
SET cards = ISNULL(STUFF(cards,CHARINDEX(cards,'T'),1,'T'),cards)
UPDATE #tmpInstructions
SET cards = ISNULL(STUFF(cards,CHARINDEX(cards,'J'),1,'J'),cards)
UPDATE #tmpInstructions
SET cards = ISNULL(STUFF(cards,CHARINDEX(cards,'Q'),1,'Q'),cards)
UPDATE #tmpInstructions
SET cards = ISNULL(STUFF(cards,CHARINDEX(cards,'K'),1,'K'),cards)
UPDATE #tmpInstructions
SET cards = ISNULL(STUFF(cards,CHARINDEX(cards,'A'),1,'A'),cards)

/* That didn't work. :-( */

SELECT * FROM #tmpInstructions

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



/*
https://www.reddit.com/r/SQL/comments/10fi96i/sort_a_string_by_its_characters/

Try this. This works in SQL Server, you will need to convert it to MySQL.
DROP TABLE IF EXISTS #Numbers;
GO
CREATE TABLE #Numbers
(
MyNumber INTEGER NOT NULL PRIMARY KEY
);
INSERT INTO #Numbers VALUES(1),(2),(3),(4),(5);
GO
WITH cte_Test as
(
SELECT 1 AS id, 'Super' as Word, LEN('Super') AS Length
UNION
SELECT 2, 'Fly', LEN('fly')
),
cte_SplitTable AS
(
SELECT *, SUBSTRING(Word,MyNumber,1) AS Character
FROM cte_Test a LEFT OUTER JOIN
#Numbers B ON b.MyNumber <= a.Length
)
SELECT
STRING_AGG(CONVERT(NVARCHAR(max), Character), '') WITHIN GROUP (ORDER BY Character ASC)
--string_agg(Character,'') WITHIN GROUP ( partition by (id), *
FROM cte_SplitTable
GROUP BY ID;

sequel-beagle
you can also use recursion. You will need to string aggregate this alphabetically as I did in the numbers table example, but I think you get the idea.
You don't need to use any type of loop for this, which your original code does.
Hope this helps.
-------------------------------
-------------------------------
DROP TABLE IF EXISTS #Example;
GO
-------------------------------
-------------------------------
CREATE TABLE #Example
(
Id INTEGER IDENTITY(1,1) PRIMARY KEY,
String VARCHAR(30) NOT NULL
);
GO
INSERT INTO #Example VALUES('32T3K'),('T55J5'),('KK677'),('KTJJT'),('QQQJA');
GO
-------------------------------
-------------------------------
;WITH cte_Recursion AS
(
SELECT Id,
String,
STUFF(String,1,1,'') AS String_Stuff,
LEFT(String,1) AS String_Left
FROM #Example
UNION ALL
SELECT Id,
String,
STUFF(String_Stuff,1,1,'') String_Stuff,
LEFT(String_Stuff,1) AS String_Left
FROM cte_Recursion
WHERE LEN(String_Stuff) > 0
)
SELECT
Id,
ROW_NUMBER() OVER (PARTITION BY Id ORDER BY CASE String_Left
	WHEN 'T' THEN 10
	WHEN 'J' THEN 11
	WHEN 'Q' THEN 12
	WHEN 'K' THEN 13
	WHEN 'A' THEN 14
	ELSE String_Left
END ) AS RowNumber,
String,
CASE String_Left
	WHEN 'T' THEN 10
	WHEN 'J' THEN 11
	WHEN 'Q' THEN 12
	WHEN 'K' THEN 13
	WHEN 'A' THEN 14
	ELSE String_Left
END AS String_Value,
ISNUMERIC(CASE String_Left
	WHEN 'T' THEN 10
	WHEN 'J' THEN 11
	WHEN 'Q' THEN 12
	WHEN 'K' THEN 13
	WHEN 'A' THEN 14
	ELSE String_Left
END ) AS [IsNumeric]
FROM cte_Recursion
ORDER BY 1,2 DESC ;

GO
*/