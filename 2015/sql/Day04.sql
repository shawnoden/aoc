/***** DAY 4 *****/
/* PART 1 */

DECLARE @inp varchar(max) = 'bgvyzdsv';
DECLARE @hashval varchar(max)

DECLARE @stillgo bit = 1
DECLARE @theNum int = 0
DECLARE @maxRun int = 10000000
DECLARE @thisval varchar(max)


WHILE @stillgo = 1
BEGIN
    SET @hashval = CONCAT(@inp,@theNum)
    SET @thisval = (SELECT CONVERT(VARCHAR(32), HashBytes('MD5', @hashval), 2))
    IF ( LEFT(@thisval,5) = '00000' )
    BEGIN
         SET @thisval = @theNum
         SET @stillgo = 0
    END
    IF ( @theNum = @maxRun )
    BEGIN
         SET @stillgo = 0
    END
    SET @thenum+=1
END

SELECT @thisVal

-- 254575


/* PART 2 */

DECLARE @inp varchar(max) = 'bgvyzdsv';
DECLARE @hashval varchar(max)

DECLARE @stillgo bit = 1
DECLARE @theNum int = 0
DECLARE @maxRun int = 10000000
DECLARE @thisval varchar(max)


WHILE @stillgo = 1
BEGIN
    SET @hashval = CONCAT(@inp,@theNum)
    SET @thisval = (SELECT CONVERT(VARCHAR(32), HashBytes('MD5', @hashval), 2))
    IF ( LEFT(@thisval,6) = '000000' )
    BEGIN
         SET @thisval = @theNum
         SET @stillgo = 0
    END
    IF ( @theNum = @maxRun )
    BEGIN
         SET @stillgo = 0
    END
    SET @thenum+=1
END

SELECT @thisVal

-- 1038736