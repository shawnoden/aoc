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
QQQJA 483
AAAAA 1
ABAAA 2
AABAA 2
AAABA 2
AAAA3 2
AAA33 4
3AA3A 3
43434 4
11223 5
44213 6
12345 7'


--SELECT  @inp
DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @CRLF2 varchar(10) = char(10) ;

DECLARE @inStr varchar(max) = REPLACE(@inp,@CRLF,'|')
SET @inStr = REPLACE(@inp,@CRLF2,'|')

--SELECT @inStr

/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instr varchar(max), cards varchar(10), bid int, type varchar(5) 
	, cA int, cK int, cQ int, cJ int, cT int, c9 int, c8 int, c7 int, c6 int, c5 int, c4 int, c3 int, c2 int 
	, card1 varchar(1), card2 varchar(1), card3 varchar(1), card4 varchar(1), card5 varchar(1)
)


INSERT INTO #tmpInstructions (instr)
SELECT value FROM STRING_SPLIT(@inStr,'|')

UPDATE #tmpInstructions
SET cards = PARSENAME(REPLACE(instr,' ','.'),2)
    , bid = PARSENAME(REPLACE(instr,' ','.'),1)


--SELECT * FROM #tmpInstructions

UPDATE #tmpInstructions
SET 
	  cA = 5 - LEN(REPLACE(cards,'A',''))
	, cK = 5 - LEN(REPLACE(cards,'K',''))
	, cQ = 5 - LEN(REPLACE(cards,'Q',''))
	, cJ = 5 - LEN(REPLACE(cards,'J',''))
	, cT = 5 - LEN(REPLACE(cards,'T',''))
	, c9 = 5 - LEN(REPLACE(cards,'9',''))
	, c8 = 5 - LEN(REPLACE(cards,'8',''))
	, c7 = 5 - LEN(REPLACE(cards,'7',''))
	, c6 = 5 - LEN(REPLACE(cards,'6',''))
	, c5 = 5 - LEN(REPLACE(cards,'5',''))
	, c4 = 5 - LEN(REPLACE(cards,'4',''))
	, c3 = 5 - LEN(REPLACE(cards,'3',''))
	, c2 = 5 - LEN(REPLACE(cards,'2',''))

	, card1 = SUBSTRING(cards,1,1)
	, card2 = SUBSTRING(cards,2,1)
	, card3 = SUBSTRING(cards,3,1)
	, card4 = SUBSTRING(cards,4,1)
	, card5 = SUBSTRING(cards,5,1)


-------------------------------------------------------------------------------------------------------------------------------
/*
1 = Five of a kind
2 = Four of a kind
3 = Full house
4 = Three of a kind
5 = Two pair
6 = One pair
9 = High card
*/


; WITH cards AS (
	SELECT id, cards
		, cA, cK, cQ, cJ, cT, c9, c8, c7, c6, c5, c4, c3, c2
	FROM #tmpInstructions
) 
, counts AS (
	SELECT id, cards, cardNums
	FROM (
		SELECT id, cards, cA,cK,cQ,cJ,cT,c9,c8,c7,c6,c5,c4,c3,c2
		FROM cards
	) p
	UNPIVOT (
		cardNums FOR cardCount IN (cA,cK,cQ,cJ,cT,c9,c8,c7,c6,c5,c4,c3,c2)
	) unpvt
)
, pv1 AS (
	SELECT pvt.cards, pvt.cardNums, ISNULL([1],0) AS f,ISNULL([2],0) AS s --, ISNULL(mc.cnt,0) AS cnt
	FROM (
		SELECT c.id, c.cards, c.cardNums, COUNT(*) AS cnt
		FROM counts c
		WHERE c.cardNums > 1
		GROUP BY c.id, c.cards, c.cardNums
	) src
	PIVOT (
		MAX(cnt) FOR cnt IN ([1],[2])
	) pvt
)

SELECT cards, f, s, [2],[3],[4],[5]
	, CASE 
		WHEN [5] = 5 THEN 1 /* 5 of a kind */
		WHEN [4] = 4 THEN 2 /* 4 of a kind */
		WHEN [3] = 3 AND [2] = 2 THEN 3 /* Full House */
		WHEN [3] = 3 AND [2] IS NULL THEN 4 /* 3 of a kind */
		WHEN f=0 AND s=2 AND [2] = 2 AND [3] IS NULL THEN 5 /* 2 pairs */  ----<<<<<<<<<<<
		WHEN f=1 AND s=0 AND [2] = 2 AND [3] IS NULL THEN 6 /* 2 of a kind */
		ELSE 9	/* No pairs */
	  END AS highCard
FROM (
	SELECT ti.cards,ti.bid, pv1.cardNums, f, s
	FROM #tmpInstructions ti
	LEFT OUTER JOIN pv1 ON ti.cards = pv1.cards
) src
PIVOT (
	MAX(cardNums) FOR cardNums IN ([2],[3],[4],[5])
) pvt

ORDER BY highCard

-------------------------------------------------------------------------------------------------------------------------------


---  11223	1	0	2	NULL	NULL	NULL	6 <<< SHOULD BE 2 PAIR

--- Still need ID and Bid.






, matchCounts AS (
	SELECT id, count(cardNums) AS cnt
	FROM counts
	WHERE cardNums >1
	GROUP BY id, cardNums
)

SELECT pvt.id, pvt.cards, [1],[2] --, ISNULL(mc.cnt,0) AS cnt
FROM (
	SELECT mc.id, ti.cards, c2.cardNums AS cardNums, mc.cnt
	FROM matchCounts mc
	LEFT OUTER JOIN #tmpInstructions ti ON mc.id = ti.id	
	LEFT OUTER JOIN counts c2 ON ti.id = c2.id
		AND c2.cardNums > 1

) src
PIVOT (
	MAX(cardNums) FOR cnt IN ([1],[2])
) pvt
--


--FROM ( VALUES(cA),(cK),(cQ),(cJ),(cT),(C9),(c8),(c7),(c6),(c5),(c4),(c3),(c2))v(v) ) AS maxCount








SELECT cards
	, CASE 
		WHEN 
	  END AS type
FROM #tmpInstructions ti








------------------------------------------------

/*
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
*/
/* That didn't work. :-( */

/* ORDER HANDS */
UPDATE #tmpInstructions
SET 
	cards = CONCAT( 
	  REPLICATE('A',5 - LEN(REPLACE(cards,'A','')))
	, REPLICATE('K',5 - LEN(REPLACE(cards,'K','')))
	, REPLICATE('Q',5 - LEN(REPLACE(cards,'Q','')))
	, REPLICATE('J',5 - LEN(REPLACE(cards,'J','')))
	, REPLICATE('T',5 - LEN(REPLACE(cards,'T','')))
	, REPLICATE('9',5 - LEN(REPLACE(cards,'9','')))
	, REPLICATE('8',5 - LEN(REPLACE(cards,'8','')))
	, REPLICATE('7',5 - LEN(REPLACE(cards,'7','')))
	, REPLICATE('6',5 - LEN(REPLACE(cards,'6','')))
	, REPLICATE('5',5 - LEN(REPLACE(cards,'5','')))
	, REPLICATE('4',5 - LEN(REPLACE(cards,'4','')))
	, REPLICATE('3',5 - LEN(REPLACE(cards,'3','')))
	, REPLICATE('2',5 - LEN(REPLACE(cards,'2','')))
	)

UPDATE #tmpInstructions
SET 
	  cA = 5 - LEN(REPLACE(cards,'A',''))
	, cK = 5 - LEN(REPLACE(cards,'K',''))
	, cQ = 5 - LEN(REPLACE(cards,'Q',''))
	, cJ = 5 - LEN(REPLACE(cards,'J',''))
	, cT = 5 - LEN(REPLACE(cards,'T',''))
	, c9 = 5 - LEN(REPLACE(cards,'9',''))
	, c8 = 5 - LEN(REPLACE(cards,'8',''))
	, c7 = 5 - LEN(REPLACE(cards,'7',''))
	, c6 = 5 - LEN(REPLACE(cards,'6',''))
	, c5 = 5 - LEN(REPLACE(cards,'5',''))
	, c4 = 5 - LEN(REPLACE(cards,'4',''))
	, c3 = 5 - LEN(REPLACE(cards,'3',''))
	, c2 = 5 - LEN(REPLACE(cards,'2',''))



SELECT * 
FROM #tmpInstructions


DROP TABLE IF EXISTS #tmpCardList 
CREATE TABLE #tmpCardList (id int identity, cardFaces varchar(5), sortOrder int, sorter varchar(5) )

; WITH cards AS (
	SELECT *
	FROM ( VALUES ('A',1),('K',2),('Q',3),('J',4),('T',5),('9',6),('8',7),('7',8),('6',9),('5',10),('4',11),('3',12),('2',13) ) c(cardID,sortOrd)
)
INSERT INTO #tmpCardList (cardFaces)
SELECT CONCAT(c1.cardID, c2.cardID, c3.cardID, c4.cardID, c5.cardID)
FROM cards c1
CROSS APPLY cards c2
CROSS APPLY cards c3
CROSS APPLY cards c4
CROSS APPLY cards c5

UPDATE #tmpCardList SET sorter = cardFaces
UPDATE #tmpCardList SET sorter = REPLACE(sorter, 'A', 'E')
UPDATE #tmpCardList SET sorter = REPLACE(sorter, 'K', 'D')
UPDATE #tmpCardList SET sorter = REPLACE(sorter, 'Q', 'C')
UPDATE #tmpCardList SET sorter = REPLACE(sorter, 'J', 'B')
UPDATE #tmpCardList SET sorter = REPLACE(sorter, 'T', 'A')

SELECT * FROM #tmpCardList


/* ORDER HANDS */
UPDATE #tmpCardList
SET 
	sorter = CONCAT( 
		  REPLICATE('E',5 - LEN(REPLACE(sorter,'E','')))
		, REPLICATE('D',5 - LEN(REPLACE(sorter,'D','')))
		, REPLICATE('C',5 - LEN(REPLACE(sorter,'C','')))
		, REPLICATE('B',5 - LEN(REPLACE(sorter,'B','')))
		, REPLICATE('A',5 - LEN(REPLACE(sorter,'A','')))
		, REPLICATE('9',5 - LEN(REPLACE(sorter,'9','')))
		, REPLICATE('8',5 - LEN(REPLACE(sorter,'8','')))
		, REPLICATE('7',5 - LEN(REPLACE(sorter,'7','')))
		, REPLICATE('6',5 - LEN(REPLACE(sorter,'6','')))
		, REPLICATE('5',5 - LEN(REPLACE(sorter,'5','')))
		, REPLICATE('4',5 - LEN(REPLACE(sorter,'4','')))
		, REPLICATE('3',5 - LEN(REPLACE(sorter,'3','')))
		, REPLICATE('2',5 - LEN(REPLACE(sorter,'2','')))
	)


SELECT * FROM #tmpCardList








; WITH fullHouse3 AS (
	SELECT sorter, count(*) AS cnt
	FROM #tmpCardList tcl
	WHERE LEN( REPLACE(sorter,LEFT(sorter,1),'') ) = 2 
	GROUP BY sorter
)
, fullHouse2 AS (
	SELECT sorter, count(*) AS cnt
	FROM #tmpCardList tcl
	WHERE LEN( REPLACE(sorter,LEFT(sorter,1),'') ) = 3
	GROUP BY sorter
)
, fullHouse AS (
	SELECT fh3.sorter
	FROM fullHouse3 fh3
	INNER JOIN fullHouse2 fh2 ON fh3.sorter = fh2.sorter
)
SELECT * FROM fullHouse


SELECT * , ROW_NUMBER() OVER (ORDER BY matched ASC, sorter DESC, cardFaces DESC ) AS rn, fh
FROM (
	SELECT t.*, LEN( REPLACE(t.cardFaces,LEFT(t.cardFaces,1),'') ) AS matched, fh.id AS fh
	FROM #tmpCardList t
	LEFT OUTER JOIN fullHouse fh ON t.id = fh.id
	--WHERE LEN( REPLACE(cardFaces,LEFT(cardFaces,1),'') ) = 0 /* 5 of a kind */
) s1


SELECT POWER(13,5) AS numCombos

SELECT 
		  REPLICATE('A',5 - LEN(REPLACE(cards,'A',''))) * 13
		, REPLICATE('K',5 - LEN(REPLACE(cards,'K',''))) * 12
		, REPLICATE('Q',5 - LEN(REPLACE(cards,'Q',''))) * 11
		, REPLICATE('J',5 - LEN(REPLACE(cards,'J',''))) * 10
		, REPLICATE('T',5 - LEN(REPLACE(cards,'T',''))) * 9
		, REPLICATE('9',5 - LEN(REPLACE(cards,'9',''))) * 8
		, REPLICATE('8',5 - LEN(REPLACE(cards,'8',''))) * 7
		, REPLICATE('7',5 - LEN(REPLACE(cards,'7',''))) * 6
		, REPLICATE('6',5 - LEN(REPLACE(cards,'6',''))) * 5
		, REPLICATE('5',5 - LEN(REPLACE(cards,'5',''))) * 4
		, REPLICATE('4',5 - LEN(REPLACE(cards,'4',''))) * 3
		, REPLICATE('3',5 - LEN(REPLACE(cards,'3',''))) * 2
		, REPLICATE('2',5 - LEN(REPLACE(cards,'2',''))) * 1
	
FROM #tmpCardList



1,220,703,125
371,293





; WITH cte_SplitTable AS
(
SELECT *, SUBSTRING(Word,MyNumber,1) AS Character
FROM cte_Test a LEFT OUTER JOIN
#Numbers B ON b.MyNumber <= a.Length
)
SELECT
STRING_AGG(CONVERT(NVARCHAR(max), Character), '') WITHIN GROUP (ORDER BY Character ASC)
--string_agg(Character,'') WITHIN GROUP ( partition by (id), *
FROM #tmpInstructions ti
LEFT OUTER JOIN cte_SplitTable c ON ti.
GROUP BY ID;



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

