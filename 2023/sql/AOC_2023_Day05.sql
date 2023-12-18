/***** --- Day 5: If You Give A Seed A Fertilizer --- *****/
/* https://adventofcode.com/2023/day/5 */
/* SETUP */
/*
DECLARE @inpSeeds varchar(max) = '1636419363 608824189 3409451394 227471750 12950548 91466703 1003260108 224873703 440703838 191248477 634347552 275264505 3673953799 67839674 2442763622 237071609 3766524590 426344831 1433781343 153722422'

DECLARE @inpSeedsSoil varchar(max) = '2067746708 2321931404 124423068
2774831547 3357841131 95865403
3776553292 3323317283 34523848
4167907733 3453706534 116376261
1190847573 767701596 554806188
2870696950 1975607604 173919437
1980384731 2612856575 87361977
3380570559 2987564153 335753130
3044616387 2451131599 21188806
3909556885 2167390152 154541252
3811077140 2149527041 17863111
4077167815 3804196813 90739918
2528751611 4222771775 72195521
4064098137 3894936731 13069678
4284283994 2700218552 10683302
2468832075 2472320405 59919536
3716323689 3570082795 60229603
1085396685 662250708 105450888
1030174777 1322507784 22912174
1975607604 2446354472 4777127
3828940251 2532239941 80616634
584992388 1930412346 7315040
592307428 0 437867349
1745653761 437867349 224383359
0 1345419958 584992388
2192169776 2710901854 276662299
2600947132 3630312398 173884415
1053086951 1937727386 32309734
3065805193 3908006409 314765366'
DECLARE @inpSoilFertilizer varchar(max) = '4148533839 3658735071 146433457
656556737 471425735 68165409
751630557 539591144 462446129
724722146 1002037273 26908411
0 24799538 226917727
4049709448 3143711443 98824391
412048729 251717265 219708470
3321838617 2645077606 72145759
3869354568 2464722726 180354880
2044900648 1380852911 42721698
226917727 1028945684 185131002
3111204505 2717223365 210634112
2129227343 1423574609 981977162
1380852911 2927857477 215853966
3393984376 2405551771 59170955
3453155331 3242535834 416199237
1596706877 3805168528 448193771
2087622346 4253362299 41604997
631757199 0 24799538'
DECLARE @inpFertilizerWater varchar(max) = '2679101382 2898500255 208361454
3672966601 3700867560 107718031
1764241275 4242224976 41519499
1018987051 346629037 49456831
518817716 396085868 3722249
1224466235 306138732 40490305
1068679130 947256497 122607155
1328820253 625833852 156797976
222363356 782631828 128136603
4106081288 2497628211 144953761
2887462836 1577782207 70654427
2453719866 2077230479 225381516
2177283137 3415053348 9638645
1485618229 910768431 36488066
1805760774 2833622399 32168430
482104460 0 36713256
4065926174 2480721173 16907038
118194361 213050410 93088322
1869091498 3106861709 308191639
1068443882 399808117 235248
2958117263 3926610020 315614956
1577782207 2324396806 156324367
1270677460 36713256 58142793
1264956540 586932982 5720920
1847306687 2302611995 21784811
843178107 411124038 175808944
1191286285 592653902 33179950
4251035049 4283744475 11222821
4262257870 2865790829 32709426
4082833212 2810374323 23248076
3273732219 2642581972 167792351
350499959 1069863652 131604501
3780684632 1859496740 217733739
3441524570 3808585591 118024429
3998418371 1791988937 67507803
1837929204 3691490077 9377483
1734106574 1761854236 30134701
211282683 400043365 11080673
2186921782 3424691993 266798084
522539965 1201468153 320638142
3559548999 1648436634 113417602
0 94856049 118194361'
DECLARE @inpWaterLight varchar(max) = '487890089 1253174910 48217379
1162866447 2295971038 331509140
3115016077 4085918002 209049294
3600618057 2743705059 694349239
3021490874 3712826169 26810261
2743705059 3739636430 3013944
3048301135 4019203060 66714942
1494375587 0 650888870
167398115 650888870 320491974
78943404 2207516327 88454711
3324065371 3742650374 276552686
881072381 1174877356 78297554
2690077973 2191170718 16345609
2746719003 3438054298 274771871
2145264457 1301392289 544813516
959369935 971380844 203496512
536107468 1846205805 344964913
0 2627480178 78943404'
DECLARE @inpLightTemp varchar(max) = '2934276762 3692860946 134937994
2222730788 3468116804 32924074
2030910720 3501040878 191820068
2876227610 3450265581 17851223
2821863146 1926340324 54364464
2894078833 3827798940 40197929
0 2499885250 950380331
3069214756 1312743837 613596487
950380331 232213448 1080530389
2302682684 2382183979 117701271
3682811243 47027822 185185626
2255654862 0 47027822
2420383955 1980704788 401479191'
DECLARE @inpTempHumidity varchar(max) = '3474899002 2152529659 335631613
1227362297 2657517973 1047434675
1147289328 4214894327 80072969
3069802422 3704952648 405096580
4233143053 2090705416 61824243
3979887316 1837449679 253255737
3810530615 2488161272 169356701
1042444229 4110049228 104845099
2274796972 1042444229 718141444
2992938416 1760585673 76864006'
DECLARE @inpHumidityyLocation varchar(max) = '2905941546 1669212802 106379169
3490393041 2571512629 24111360
3327134512 896350741 163258529
163044169 321738120 136537257
1794114599 1475899779 31051829
1155727752 771777629 98456450
3514504401 1890601528 199093442
3241757362 1290456090 8146812
3713597843 2595623989 446677438
2865335819 1388663285 15697510
3155553665 2166925308 86203697
26879537 567441866 52236777
421556320 59735378 198122323
4160275281 1059609270 134692015
1072793086 2488577963 82934666
2006477848 3530988938 680918581
1766297705 1528152733 5360386
1405780686 3214887893 74444149
3017788788 1533513119 135699683
977736160 4211907519 83059777
1771658091 2466121455 22456508
2687396429 870234079 26116662
79116314 547394430 20047436
2773054926 1506951608 21201125
1825166428 3289332042 181311420
2713513091 1404360795 59541835
3012320715 1213908249 5468073
3249904174 2089694970 77230338
2794256051 1219376322 71079768
1601513875 2253129005 74723447
3153488471 769712435 2065194
299581426 41300579 18434799
332437267 458275377 89119053
1273791166 2327852452 131989520
1676237322 1298602902 90060383
318016225 26879537 14421042
769712435 3470643462 60345476
2881033329 3042301427 24908217
1480224835 2459841972 6279483
99163750 257857701 63880419
1060795937 1463902630 11997149
830057911 3067209644 147678249
1254184202 1194301285 19606964
1486504318 1775591971 115009557';
*/
/**** TEST ****/

DECLARE @inpSeeds varchar(max) = '79 14 55 13'

DECLARE @inpSeedsSoil varchar(max) = '50 98 2
52 50 48'
DECLARE @inpSoilFertilizer varchar(max) = '0 15 37
37 52 2
39 0 15'
DECLARE @inpFertilizerWater varchar(max) = '49 53 8
0 11 42
42 0 7
57 7 4'
DECLARE @inpWaterLight varchar(max) = '88 18 7
18 25 70'
DECLARE @inpLightTemp varchar(max) = '45 77 23
81 45 19
68 64 13'
DECLARE @inpTempHumidity varchar(max) = '0 69 1
1 0 69'
DECLARE @inpHumidityyLocation varchar(max) = '60 56 37
56 93 4';


DECLARE @CRLF varchar(10) = char(13) + char(10) ;
DECLARE @inStr1 varchar(max) = REPLACE(@inpSeedsSoil,@CRLF,'|')
DECLARE @inStr2 varchar(max) = REPLACE(@inpSoilFertilizer,@CRLF,'|')
DECLARE @inStr3 varchar(max) = REPLACE(@inpFertilizerWater,@CRLF,'|')
DECLARE @inStr4 varchar(max) = REPLACE(@inpWaterLight,@CRLF,'|')
DECLARE @inStr5 varchar(max) = REPLACE(@inpLightTemp,@CRLF,'|')
DECLARE @inStr6 varchar(max) = REPLACE(@inpTempHumidity,@CRLF,'|')
DECLARE @inStr7 varchar(max) = REPLACE(@inpHumidityyLocation,@CRLF,'|')

--SELECT @inStr

/* Seeds table */
DROP TABLE IF EXISTS #tmpSeeds
CREATE TABLE #tmpSeeds (id int identity, seedNum bigint )

INSERT INTO #tmpSeeds (seedNum)
SELECT value FROM STRING_SPLIT(@inpSeeds,' ')

/* Instructions table. */
DROP TABLE IF EXISTS #tmpInstructions
CREATE TABLE #tmpInstructions (id int identity, instrType int, instr varchar(max), dest bigint, src bigint, span bigint )

INSERT INTO #tmpInstructions (instrType, instr)
SELECT 1, value FROM STRING_SPLIT(@inStr1,'|')
UNION ALL
SELECT 2, value FROM STRING_SPLIT(@inStr2,'|')
UNION ALL
SELECT 3, value FROM STRING_SPLIT(@inStr3,'|')
UNION ALL
SELECT 4, value FROM STRING_SPLIT(@inStr4,'|')
UNION ALL
SELECT 5, value FROM STRING_SPLIT(@inStr5,'|')
UNION ALL
SELECT 6, value FROM STRING_SPLIT(@inStr6,'|')
UNION ALL
SELECT 7, value FROM STRING_SPLIT(@inStr7,'|')

/* Normalize data */
UPDATE #tmpInstructions
SET instr = REPLACE(instr,' ' ,'.')


/* Parse out identifiers. */
UPDATE #tmpInstructions
SET   dest =  PARSENAME(instr,3)
	, src = PARSENAME(instr,2)
	, span = PARSENAME(instr,1)

--SELECT * FROM #tmpInstructions WHERE instrType = 1
/*
	SELECT max(s2.seedNum) AS seedSpread
	FROM #tmpSeeds s1
	INNER JOIN #tmpSeeds s2 ON s2.id = s1.id+1
	WHERE s1.id%2 = 1
*/
--4,192,869,421
--2,504,127,863
---608,824,189



SELECT * FROM #tmpSeeds


--SELECT * FROM #numTable


--; WITH seeds AS ( /* PART 1 */
--	SELECT seedNum
--	FROM #tmpSeeds
--)
; WITH seedStarters AS ( /* PART 2 */
	SELECT s1.seedNum, s2.seedNum AS seedSpread
	FROM #tmpSeeds s1
	LEFT OUTER JOIN #tmpSeeds s2 ON s2.id = s1.id+1
	WHERE s1.id%2 = 1
)
, seeds AS (
	SELECT seedNum + c1.num AS seedNum
	FROM seedStarters ss
	CROSS APPLY (
		SELECT n.num
		FROM Numbers n
		WHERE n.num <= ss.seedSpread
	) c1
)
, SeedSoil AS (
	SELECT seedNum
		, ISNULL(soilDest,seedNum) AS soilNum
	FROM (
		SELECT s.seedNum
			, ti.dest+(s.seedNum-ti.src) AS soilDest
		FROM seeds s
		LEFT OUTER JOIN #tmpInstructions ti ON s.seedNum BETWEEN ti.src AND ti.src+ti.span
			AND ti.instrType = 1
	) s1
)
, SoilFertilizer AS ( 
	SELECT seedNum, soilNum
		, ISNULL(fertilizerDest,soilNum) AS fertilizerNum
	FROM (
		SELECT s.seedNum, s.soilNum
			, ti.dest+(s.soilNum-ti.src) AS fertilizerDest
		FROM SeedSoil s
		LEFT OUTER JOIN #tmpInstructions ti ON s.soilNum BETWEEN ti.src AND ti.src+ti.span
			AND ti.instrType = 2
	) s1
)
, FertilizerWater AS ( 
	SELECT seedNum, soilNum, fertilizerNum
		, ISNULL(waterDest,fertilizerNum) AS waterNum
	FROM (
		SELECT s.seedNum, s.soilNum, s.fertilizerNum
			, ti.dest+(s.fertilizerNum-ti.src) AS waterDest
		FROM SoilFertilizer s
		LEFT OUTER JOIN #tmpInstructions ti ON s.fertilizerNum BETWEEN ti.src AND ti.src+ti.span
			AND ti.instrType = 3
	) s1
)
, WaterLight AS ( 
	SELECT seedNum, soilNum, fertilizerNum, waterNum
		, ISNULL(lightDest,waterNum) AS lightNum
	FROM (
		SELECT s.seedNum, s.soilNum, s.fertilizerNum, s.waterNum
			, ti.dest+(s.waterNum-ti.src) AS lightDest
		FROM FertilizerWater s
		LEFT OUTER JOIN #tmpInstructions ti ON s.waterNum BETWEEN ti.src AND ti.src+ti.span
			AND ti.instrType = 4
	) s1
)
, LightTemp AS ( 
	SELECT seedNum, soilNum, fertilizerNum, waterNum, lightNum
		, ISNULL(tempDest,lightNum) AS tempNum
	FROM (
		SELECT s.seedNum, s.soilNum, s.fertilizerNum, s.waterNum,s.lightNum
			, ti.dest+(s.lightNum-ti.src) AS tempDest
		FROM WaterLight s
		LEFT OUTER JOIN #tmpInstructions ti ON s.lightNum BETWEEN ti.src AND ti.src+ti.span
			AND ti.instrType = 5
	) s1
)
, TempHumidity AS ( 
	SELECT seedNum, soilNum, fertilizerNum, waterNum, lightNum, tempNum
		, ISNULL(humidityDest,tempNum) AS humidityNum
	FROM (
		SELECT s.seedNum, s.soilNum, s.fertilizerNum, waterNum, lightNum, tempNum
			, ti.dest+(s.tempNum-ti.src) AS humidityDest
		FROM LightTemp s
		LEFT OUTER JOIN #tmpInstructions ti ON s.tempNum BETWEEN ti.src AND ti.src+ti.span
			AND ti.instrType = 6
	) s1
)
, HumidityLocation AS ( 
	SELECT seedNum, soilNum, fertilizerNum, waterNum, lightNum, tempNum, humidityNum
		, ISNULL(locationDest,humidityNum) AS LocationNum
	FROM (
		SELECT s.seedNum, s.soilNum, s.fertilizerNum, waterNum, lightNum, tempNum, humidityNum
			, ti.dest+(s.humidityNum-ti.src) AS locationDest
		FROM TempHumidity s
		LEFT OUTER JOIN #tmpInstructions ti ON s.humidityNum BETWEEN ti.src AND ti.src+ti.span
			AND ti.instrType = 7
	) s1
)
SELECT min(LocationNum) 
FROM HumidityLocation

-------------------------------------------------------------------------------------

/*
SEED 79 > SOIL 81 > FERTILIZER 81 > WATER 81 > LIGHT 74 > TEMP 78 > HUMIDITY 78 > LOCATION 82
? SEED 14 > SOIL 14 > FERTILIZER 53 > WATER 42 > LIGHT 35 > TEMP 35 > HUMIDITY 36 > LOCATION 36
SEED 55 > SOIL 57 > FERTILIZER 57 > WATER 53 > LIGHT 46 > TEMP 82 > HUMIDITY 82 > LOCATION 86
SEED 13 > SOIL 13 > FERTILIZER 52 > WATER 41 > LIGHT 34 > TEMP 34 > HUMIDITY 35 > LOCATION 35
*/

/*
14	14	53	49	42	42	43	43
14	14	53	42	35	35	36	36

14 has 2 legit paths, the first matching his Test data
*/




/* PART 1 */

/* 
Attempt 1: 12950548 << Too Low.
Attempt 2: 309796150  <<< CORRECT!!!!
*/

/* PART 2 */

/* 
ATTEMPT 1:
*/

/*
NOTES:
This one would be a parsing nightmare. But since there are only a few categories, I'll manually split them
without bothering with string manipulation. This is already going to be ugly enough.

Part 1:
My first step was to split up all the different parts of the Almanac. I'm using magic numbers, but I don't 
care right now. This is also another chance to use a Numbers Table. Those always come in so handy. 

....

I forgot about using PARSENAME to split some kinds of short lists. So much easier. 

I got to where I'm JOINing the temp Almanac tables, but it's breaking down somewhere. I can see the data, it's
just not joining. Argh... I'll look at it this evening. 

...

I still haven't got the Test data working, but I just noticed that my Numbers Table is way too small. It looks 
like I'm probably gonna have to expand it to at least a few 100M Numbers. I wanted to do these ad hoc, but it's
looking like I might need to just smack a ginormous Numbers Table into my database and just play off of that.

...

I got the parsing working and the tables are joined how they need to be. I can spit out the locations of
the seeds. There is a difference in my test data and the results listed on the website, but I think 
that's probably a typo on his site. I manually tracked the data flow, and it matches with what I 
calculated and not what's on the website. We'll see if that's some weird edge case that I'm not seeing. 

...

My first answer was wrong because my Tally Table wasn't large enough. Calculating the max numbers I need 
from my dataset, I come up with 4294967295, which is the max number of unsigned integers available. 

Since it takes several minutes to generate a Tally Table that large, I'm going to break down and actually
create a permanent table in my database. I was trying to avoid permanent objects, but I've seen this 
needed so many times that I feel foolish for not adding it. So away we go. Back in a bit. 

....

It's been several days (Day 16), but I've finally come back to this one. I've abandoned the idea of trying
to use a Tally Table as it will be way too large. But I don't really need one. I can accomplish this with
JOINs and then calculate the correct next number. I'll have to play with the algorithms a bit. 

...

I've got it working except for one case. I'm getting JOINs on 2 records at Water for #14 seed. I need to 
look at how I'm JOINing. 

...

Argh. 14 has two legit paths, because the Src columns under WaterLight have overlapping numbers. It works 
with the Test data because we are calculating the lowest number. But this could be a hint at Part 2. 

We'll see. 

ATTEMPT 2:309796150 <<< CORRECT!
.....

Finally. The numbers we were working with were huge, but I worked around that. And the multiple paths for
some seeds threw me off. But it's square. 

On to Part 2.

Part 2:
OK, this one doesn't look too difficult. Of course, that's what I said about Part 1. I just need to change
the Seed input and the rest should still work. 

...

And I was right. We've got another massive increase in scale. We've gone from planting 40 seeds to 
around 2.5B seeds. I'll have to noodle this one a bit. 

...

Even though I've been trying not to add database objects and only use what I can get from a query, I 
decided that I needed a large Tally Table. I've needed to use it rather often, and it was getting 
tiresome to regenerate numbers every time I needed them. This query needs about 610M numbers, so 
that's what I generated. It balooned my Docker Container that I'm running SQL Server in to about
18GB. I really need to go back through and optimize this. There's a way I can do this without a 
Tally Table, but I don't want to think it through just now. Maybe later. 



*/
