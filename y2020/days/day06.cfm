<cfscript>
    //https://adventofcode.com/2020/day/6
    if(url?.test==true) {
        try {
            local.dayInp = new cfc.day06("day06_test.txt") ;
        }
        catch(Any e) {
            writeOutput("<br><br>ERROR:") ;
            writeDump(e);
        }
    } else {
        local.dayInp = new cfc.day06("day06_part1.txt") ;
    }
    //writedump(local.dayInp.getPuzzleInput());

    local.day6a = local.dayInp.showMe_pt1(true) ;
    local.day6b = local.dayInp.showMe_pt2(false) ;

    // ANSWERS
    writeoutput(
        "Day 6 - Part 1 Answer: " & local.day6a & "<br>"
        &
        "Day 6 - Part 2 Answer: " & local.day6b & "<br>"
    ) ;

// Part 1
// Your puzzle answer was 6551. That's the right answer!
// Part 2
// Your puzzle answer was 3358. That's the right answer!
</cfscript>