<cfscript>
    //https://adventofcode.com/2020/day/3
    if(url?.test==true) {
        try {
        pwInp = new cfc.day03("day03_test.txt") ;
        }
        catch(Any e) {
            writeDump(e);
        }
    } else {
        pwInp = new cfc.day03("day03_part1.txt") ;
    }
    //writedump(pwInp.parseInput_pt1(3,1));

    local.day3a = pwInp.showMe_pt1(3,1) ;

    day3bColl = [ [1,1],[3,1],[5,1],[7,1],[1,2] ] ;
    //day3bColl = [ [1,2] ] ;
    local.day3b = pwInp.showMe_pt2(day3bColl,true) ;

    // ANSWERS
    writeoutput( 
        "Day 3 - Part 1 Answer: " & local.day3a & "<br>"
        & 
        "Day 3 - Part 2 Answer: " & local.day3b & "<br>"
    ) ;
    
// Part 1
// Your puzzle answer was 54. Incorrect.
// Your puzzle answer was 148. Correct. --- Start at 1/1 instead of 0/1.
// Part 2
// Your puzzle answer was 1255040000. Incorrect. Too high.
// Your puzzle answer was 652620800. Incorrect. Too low.
// Your puzzle answer was 753024000. Incorrect. Too high.
// Your puzzle answer was 727923200. That's the right answer! -- Calc off on d>1
</cfscript>